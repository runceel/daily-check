[CmdletBinding()]
param(
    [switch]$DryRun,
    [switch]$SkipCommit,
    [switch]$SkipPush,
    [switch]$SkipGitHub,
    [switch]$Finalize,
    [switch]$ValidateOnly,
    [switch]$Status,
    [switch]$Force,
    [string]$GeneratedAtUtc
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8NoBOM'

# gh CLI などの外部プロセス出力を UTF-8 で受け取る（emoji 入りラベルの mojibake 対策）
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

# 対象リポジトリ定義（収集モードと出力ファイル名）
$script:RepoConfigs = @(
    [PSCustomObject]@{ Owner='microsoft';   Name='agent-framework';              File='agent-framework.md';              Mode='detail' },
    [PSCustomObject]@{ Owner='dotnet';      Name='aspnetcore';                   File='aspnetcore.md';                   Mode='summary' },
    [PSCustomObject]@{ Owner='Azure';       Name='azure-functions-dotnet-worker';File='azure-functions-dotnet-worker.md';Mode='summary' },
    [PSCustomObject]@{ Owner='dotnet';      Name='extensions';                   File='extensions.md';                   Mode='summary' },
    [PSCustomObject]@{ Owner='runceel';     Name='ReactiveProperty';             File='reactiveproperty.md';             Mode='summary' },
    [PSCustomObject]@{ Owner='microsoft';   Name='aspire';                       File='aspire.md';                       Mode='detail' }
)

# 骨組みに残ってはならない「未執筆」マーカー（-Finalize / -ValidateOnly で検査）
$script:SkeletonMarkers = @('<!-- TODO', '{{', '原文:')

function Get-PreviousCheckAtUtc {
    param([string]$TimestampPath)

    if (Test-Path -LiteralPath $TimestampPath) {
        $value = (Get-Content -LiteralPath $TimestampPath -TotalCount 1).Trim()
        if ([string]::IsNullOrWhiteSpace($value)) {
            throw 'timestamp.md is empty.'
        }
        $styles = [System.Globalization.DateTimeStyles]::AssumeUniversal -bor [System.Globalization.DateTimeStyles]::AdjustToUniversal
        return [DateTime]::ParseExact($value, 'yyyy-MM-dd HH:mm:ss', [System.Globalization.CultureInfo]::InvariantCulture, $styles)
    }
    return (Get-Date).ToUniversalTime().AddHours(-24)
}

function Get-FeedXml {
    param([string]$Uri, [string]$OutFile)

    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $OutFile) | Out-Null
    Invoke-RestMethod -Uri $Uri -Method Get -OutFile $OutFile | Out-Null
    return [xml](Get-Content -LiteralPath $OutFile -Raw -Encoding UTF8)
}

function ConvertTo-UtcDateTime {
    param([string]$Value, [DateTime]$Fallback)

    if ([string]::IsNullOrWhiteSpace($Value)) { return $Fallback }
    try {
        $styles = [System.Globalization.DateTimeStyles]::AssumeUniversal -bor [System.Globalization.DateTimeStyles]::AdjustToUniversal
        return [DateTime]::Parse($Value, [System.Globalization.CultureInfo]::InvariantCulture, $styles)
    }
    catch { return $Fallback }
}

function ConvertFrom-IsoDate {
    param([string]$Value)

    if ([string]::IsNullOrWhiteSpace($Value)) { return $null }
    try {
        $styles = [System.Globalization.DateTimeStyles]::AssumeUniversal -bor [System.Globalization.DateTimeStyles]::AdjustToUniversal
        return [DateTime]::Parse($Value, [System.Globalization.CultureInfo]::InvariantCulture, $styles)
    }
    catch { return $null }
}

function Save-Utf8File {
    param([string]$Path, [string[]]$Lines)

    # 配列を改行で結合し UTF-8 (BOM なし) で書き出す。Set-Content の配列引数挙動を避ける。
    $content = ($Lines -join [Environment]::NewLine)
    [System.IO.File]::WriteAllText($Path, $content, (New-Object System.Text.UTF8Encoding($false)))
}

function Get-RepoActivity {
    <#
      gh search prs / gh search issues を呼び出し、対象期間内に動きのあった
      PR / Issue を取得して返す。失敗時は $null を返す（呼び出し側で TODO 表示）。
    #>
    param(
        [string]$Repo,
        [DateTime]$Since,
        [DateTime]$Until,
        [int]$Limit = 80,
        [string]$CacheDir
    )

    $sinceDate = $Since.ToUniversalTime().ToString('yyyy-MM-dd')
    $repoSlug = $Repo -replace '/', '_'

    $prCache = Join-Path $CacheDir ($repoSlug + '_prs.json')
    $issueCache = Join-Path $CacheDir ($repoSlug + '_issues.json')

    try {
        # stderr は捨てる。混ぜると JSON パース時に化ける（gh のプログレス出力混入対策）
        $prsJson = & gh search prs "repo:$Repo" "updated:>=$sinceDate" `
            --limit $Limit `
            --json number,title,author,state,isDraft,createdAt,updatedAt,closedAt,labels,url 2>$null
        if ($LASTEXITCODE -ne 0) {
            Write-Host ('  [warn] gh search prs failed for ' + $Repo + ' (exit ' + $LASTEXITCODE + ')') -ForegroundColor Yellow
            return $null
        }
        $prsJsonText = ($prsJson -join "`n")
        $prsJsonText | Set-Content -LiteralPath $prCache -Encoding UTF8

        $issuesJson = & gh search issues "repo:$Repo" "updated:>=$sinceDate" "is:issue" `
            --limit $Limit `
            --json number,title,author,state,createdAt,updatedAt,closedAt,labels,url 2>$null
        if ($LASTEXITCODE -ne 0) {
            Write-Host ('  [warn] gh search issues failed for ' + $Repo + ' (exit ' + $LASTEXITCODE + ')') -ForegroundColor Yellow
            return $null
        }
        $issuesJsonText = ($issuesJson -join "`n")
        $issuesJsonText | Set-Content -LiteralPath $issueCache -Encoding UTF8

        $prs = $prsJsonText | ConvertFrom-Json
        $issues = $issuesJsonText | ConvertFrom-Json
    }
    catch {
        Write-Host ('  [warn] gh search exception for ' + $Repo + ': ' + $_.Exception.Message) -ForegroundColor Yellow
        return $null
    }

    # PR をカテゴリ分け
    # gh search prs の state は 'open' / 'closed' / 'merged' の 3 値。
    # 'closed' はマージされなかったクローズ、'merged' はマージ済み。
    $mergedPrs = @()
    $closedUnmergedPrs = @()
    $openedPrs = @()
    foreach ($pr in $prs) {
        $createdAt = ConvertFrom-IsoDate $pr.createdAt
        $closedAt  = ConvertFrom-IsoDate $pr.closedAt

        if ($pr.state -eq 'merged' -and $closedAt -ne $null -and $closedAt -ge $Since -and $closedAt -le $Until) {
            $mergedPrs += $pr
        }
        elseif ($pr.state -eq 'closed' -and $closedAt -ne $null -and $closedAt -ge $Since -and $closedAt -le $Until) {
            $closedUnmergedPrs += $pr
        }

        if ($pr.state -eq 'open' -and $createdAt -ne $null -and $createdAt -ge $Since -and $createdAt -le $Until) {
            $openedPrs += $pr
        }
    }

    # Issue をカテゴリ分け
    $newIssues = @()
    $closedIssues = @()
    foreach ($issue in $issues) {
        $createdAt = ConvertFrom-IsoDate $issue.createdAt
        $closedAt  = ConvertFrom-IsoDate $issue.closedAt
        if ($createdAt -ne $null -and $createdAt -ge $Since -and $createdAt -le $Until) {
            $newIssues += $issue
        }
        if ($closedAt -ne $null -and $closedAt -ge $Since -and $closedAt -le $Until) {
            $closedIssues += $issue
        }
    }

    return [PSCustomObject]@{
        Repo               = $Repo
        AllPrs             = $prs
        AllIssues          = $issues
        MergedPrs          = $mergedPrs
        ClosedUnmergedPrs  = $closedUnmergedPrs
        OpenedPrs          = $openedPrs
        NewIssues          = $newIssues
        ClosedIssues       = $closedIssues
        Truncated          = (@($prs).Count -ge $Limit -or @($issues).Count -ge $Limit)
        Limit              = $Limit
    }
}

function Get-PrDetail {
    <#
      gh pr view で詳細メタデータを取得する（agent-framework の詳細モード用）。
    #>
    param([string]$Repo, [int]$PrNumber)

    try {
        $json = & gh pr view $PrNumber --repo $Repo `
            --json number,title,author,state,mergedAt,closedAt,additions,deletions,files,commits,url,labels,body 2>$null
        if ($LASTEXITCODE -ne 0) {
            Write-Host ('  [warn] gh pr view failed for ' + $Repo + ' #' + $PrNumber) -ForegroundColor Yellow
            return $null
        }
        return (($json -join "`n") | ConvertFrom-Json)
    }
    catch {
        return $null
    }
}

function Format-LabelList {
    param($Labels)
    if (-not $Labels) { return '—' }
    return ((@($Labels) | ForEach-Object { '`' + $_.name + '`' }) -join ' ')
}

function Format-AuthorName {
    param($Author)
    if (-not $Author) { return '—' }
    if ($Author.PSObject.Properties['login']) { return $Author.login }
    return [string]$Author
}

function Get-XmlChildText {
    <#
      XmlElement の子要素テキストを StrictMode 安全に取得する。子要素が無ければ空文字を返す。
      ($node.child 形式の直接参照は StrictMode 下で存在しない要素にアクセスすると例外になるため、
       任意要素（description 等）を欠く RSS アイテムでも生成が中断しないようにする。)
    #>
    param($Node, [string]$Name)
    if ($null -eq $Node) { return '' }
    $child = $Node.SelectSingleNode($Name)
    if ($null -eq $child) { return '' }
    return [string]$child.InnerText
}

function Get-FeedItemText {
    <#
      RSS の description / summary を、String でも XmlElement (HTML 子ノード入り) でも
      安全にプレーンテキスト化する。タグ除去・HTML エンティティ復号・空白圧縮・末尾切り詰め。
      HTML コメントに埋め込むため "-->" / "<!--" / 改行を無害化する。
    #>
    param($Node, [int]$MaxLength = 280)

    if ($null -eq $Node) { return '' }

    $raw = if ($Node -is [string]) { $Node }
           elseif ($Node.PSObject.Properties['InnerText']) { [string]$Node.InnerText }
           else { [string]$Node }

    if ([string]::IsNullOrWhiteSpace($raw)) { return '' }

    $text = [System.Net.WebUtility]::HtmlDecode($raw)          # 1st decode (&lt;p&gt; -> <p>)
    $text = ($text -replace '<[^>]+>', ' ')                     # strip tags
    $text = [System.Net.WebUtility]::HtmlDecode($text)          # 2nd decode (&amp; -> &)
    $text = ($text -replace '\s+', ' ').Trim()                  # collapse whitespace
    $text = ($text -replace '-->', '→' -replace '<!--', '<-')   # HTML コメント破壊防止

    if ($text.Length -gt $MaxLength) {
        $text = $text.Substring(0, $MaxLength).TrimEnd() + ' …'
    }
    return $text
}

function Get-ChangeImportance {
    <#
      PR/Issue のタイトルとラベルから重要度タグを判定する。該当なしは $null。
      優先度: 破壊的変更 > セキュリティ > 非推奨/廃止 > GA 昇格。
      自動判定なので誤検出はあり得る（過剰検出の上、執筆者が取捨選択する方針）。
    #>
    param([string]$Title, $Labels)

    $hay = [string]$Title
    if ($Labels) { $hay += ' ' + ((@($Labels) | ForEach-Object { $_.name }) -join ' ') }
    $hay = $hay.ToLowerInvariant()

    if ($hay -match 'breaking|破壊的|backward[- ]?incompat') { return '⚠ 破壊的変更' }
    if ($hay -match 'security|vulnerab|\bcve-|セキュリティ|exploit') { return '⚠ セキュリティ' }
    if ($hay -match 'deprecat|obsolete|retirement|非推奨|廃止') { return '非推奨/廃止' }
    if ($hay -match 'generally available|\bga\b|\[ga\]|一般提供') { return 'GA 昇格' }
    return $null
}

function Get-ImportantItems {
    <#
      Activity から重要度タグの付いた PR / Issue を抽出して配列で返す。
      ウィンドウ内で「作成」されたものだけでなく、収集対象（updated 基準）の
      全 PR / Issue を走査するため、以前作成され期間内に更新された重要 PR も拾える。
    #>
    param([PSCustomObject]$Activity)

    $items = New-Object System.Collections.Generic.List[object]
    if ($null -eq $Activity) { return @() }

    $seen = @{}
    foreach ($pr in @($Activity.AllPrs)) {
        $tag = Get-ChangeImportance -Title $pr.title -Labels $pr.labels
        if (-not $tag) { continue }
        $key = 'pr#' + $pr.number
        if ($seen.ContainsKey($key)) { continue }
        $seen[$key] = $true
        $items.Add([PSCustomObject]@{
            Tag = $tag; Kind = 'PR'; Number = $pr.number; Title = $pr.title
            State = $pr.state; Author = (Format-AuthorName $pr.author); Url = $pr.url
        }) | Out-Null
    }
    foreach ($issue in @($Activity.AllIssues)) {
        $tag = Get-ChangeImportance -Title $issue.title -Labels $issue.labels
        if (-not $tag) { continue }
        $key = 'issue#' + $issue.number
        if ($seen.ContainsKey($key)) { continue }
        $seen[$key] = $true
        $items.Add([PSCustomObject]@{
            Tag = $tag; Kind = 'Issue'; Number = $issue.number; Title = $issue.title
            State = $issue.state; Author = (Format-AuthorName $issue.author); Url = $issue.url
        }) | Out-Null
    }

    # 重要度の高い順に並べる
    $order = @{ '⚠ 破壊的変更' = 0; '⚠ セキュリティ' = 1; '非推奨/廃止' = 2; 'GA 昇格' = 3 }
    return @($items | Sort-Object @{ Expression = { $order[$_.Tag] } }, @{ Expression = { [int]$_.Number }; Descending = $true })
}

function Add-ImportanceSection {
    <#
      「## ⚠ 重要な変更（要確認）」セクションの行を $Lines に追加する。
      summary / detail 両モード共通。重要項目が無ければ「検出なし」を明記する。
    #>
    param(
        [System.Collections.Generic.List[string]]$Lines,
        [object[]]$Items,
        [bool]$Truncated
    )

    $Lines.Add('## ⚠ 重要な変更（要確認）') | Out-Null
    $Lines.Add('') | Out-Null

    if ($Truncated) {
        $Lines.Add('> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。') | Out-Null
        $Lines.Add('') | Out-Null
    }

    if (-not $Items -or @($Items).Count -eq 0) {
        $Lines.Add('自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。') | Out-Null
        $Lines.Add('') | Out-Null
        return
    }

    $Lines.Add('<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->') | Out-Null
    foreach ($it in $Items) {
        $title = ($it.Title -replace '\|', '\|')
        $Lines.Add('- **' + $it.Tag + '** [#' + $it.Number + '](' + $it.Url + ') — ' + $title + ' （' + $it.Kind + ' / ' + $it.State + ' / ' + $it.Author + '）') | Out-Null
        $Lines.Add('  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->') | Out-Null
    }
    $Lines.Add('') | Out-Null
}

function New-RepoSummaryBody {
    <#
      サマリーモード用の Markdown 骨組みを生成する。
    #>
    param(
        [PSCustomObject]$RepoConfig,
        [PSCustomObject]$Activity,
        [DateTime]$Since,
        [DateTime]$Until,
        [object[]]$Important = @()
    )

    $repo = $RepoConfig.Owner + '/' + $RepoConfig.Name
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('# ' + $repo) | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('対象期間: ' + $Since.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $Until.ToString('yyyy-MM-dd HH:mm:ss') + ' (UTC)') | Out-Null
    $lines.Add('') | Out-Null

    if ($null -eq $Activity) {
        $lines.Add('> [warn] gh CLI による収集に失敗しました。`gh search prs repo:' + $repo + '` を手動で実行してから本文を執筆してください。') | Out-Null
        $lines.Add('') | Out-Null
        $lines.Add('<!-- TODO: 統計サマリーと PR/Issue 一覧を手動で埋める -->') | Out-Null
        return $lines.ToArray()
    }

    $lines.Add('## 統計サマリー') | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('| 区分                       | 件数 |') | Out-Null
    $lines.Add('| -------------------------- | ---- |') | Out-Null
    $lines.Add('| マージ済み PR              | ' + $Activity.MergedPrs.Count + ' |') | Out-Null
    $lines.Add('| クローズ (未マージ) PR     | ' + $Activity.ClosedUnmergedPrs.Count + ' |') | Out-Null
    $lines.Add('| 新規 PR (オープン中)       | ' + $Activity.OpenedPrs.Count + ' |') | Out-Null
    $lines.Add('| 新規 Issue                 | ' + $Activity.NewIssues.Count + ' |') | Out-Null
    $lines.Add('| クローズ Issue             | ' + $Activity.ClosedIssues.Count + ' |') | Out-Null
    $lines.Add('') | Out-Null

    Add-ImportanceSection -Lines $lines -Items $Important -Truncated ([bool]$Activity.Truncated)

    $lines.Add('## 主要な変更点') | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('<!-- TODO: 上の「重要な変更」と下の一覧から、主要な変更点を 3〜8 行の箇条書きで日本語要約。重要項目があれば必ず含める -->') | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('- ') | Out-Null
    $lines.Add('') | Out-Null

    $lines.Add('## 変化のあった PR / Issue') | Out-Null
    $lines.Add('') | Out-Null

    if ($Activity.MergedPrs.Count -eq 0 -and $Activity.ClosedUnmergedPrs.Count -eq 0 -and $Activity.OpenedPrs.Count -eq 0 -and $Activity.NewIssues.Count -eq 0 -and $Activity.ClosedIssues.Count -eq 0) {
        $lines.Add('期間内に変化はありませんでした。') | Out-Null
        return $lines.ToArray()
    }

    $lines.Add('| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |') | Out-Null
    $lines.Add('| ---- | ---- | -------- | ---- | ---- | ------ |') | Out-Null

    foreach ($pr in $Activity.MergedPrs) {
        $title = ($pr.title -replace '\|', '\|')
        $author = Format-AuthorName $pr.author
        $lines.Add('| PR | #' + $pr.number + ' | ' + $title + ' | merged | ' + $author + ' | <' + $pr.url + '> |') | Out-Null
    }
    foreach ($pr in $Activity.ClosedUnmergedPrs) {
        $title = ($pr.title -replace '\|', '\|')
        $author = Format-AuthorName $pr.author
        $lines.Add('| PR | #' + $pr.number + ' | ' + $title + ' | closed | ' + $author + ' | <' + $pr.url + '> |') | Out-Null
    }
    foreach ($pr in $Activity.OpenedPrs) {
        $title = ($pr.title -replace '\|', '\|')
        $author = Format-AuthorName $pr.author
        $lines.Add('| PR | #' + $pr.number + ' | ' + $title + ' | open | ' + $author + ' | <' + $pr.url + '> |') | Out-Null
    }
    foreach ($issue in $Activity.NewIssues) {
        $title = ($issue.title -replace '\|', '\|')
        $author = Format-AuthorName $issue.author
        $lines.Add('| Issue | #' + $issue.number + ' | ' + $title + ' | ' + $issue.state + ' | ' + $author + ' | <' + $issue.url + '> |') | Out-Null
    }
    foreach ($issue in $Activity.ClosedIssues) {
        if ($Activity.NewIssues -contains $issue) { continue }
        $title = ($issue.title -replace '\|', '\|')
        $author = Format-AuthorName $issue.author
        $lines.Add('| Issue | #' + $issue.number + ' | ' + $title + ' | closed | ' + $author + ' | <' + $issue.url + '> |') | Out-Null
    }

    $lines.Add('') | Out-Null
    return $lines.ToArray()
}

function New-RepoDetailBody {
    <#
      詳細モード用 (agent-framework)。マージされた PR について gh pr view で
      変更ファイル一覧と差分行数、コミット一覧を取得し、<details> ブロックに展開する。
    #>
    param(
        [PSCustomObject]$RepoConfig,
        [PSCustomObject]$Activity,
        [DateTime]$Since,
        [DateTime]$Until,
        [object[]]$Important = @(),
        [int]$DetailPrLimit = 6
    )

    $repo = $RepoConfig.Owner + '/' + $RepoConfig.Name
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('# ' + $repo + ' *(詳細モード)*') | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('対象期間: ' + $Since.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $Until.ToString('yyyy-MM-dd HH:mm:ss') + ' (UTC)') | Out-Null
    $lines.Add('') | Out-Null

    if ($null -eq $Activity) {
        $lines.Add('> [warn] gh CLI による収集に失敗しました。`gh search prs repo:' + $repo + '` を手動で実行してから本文を執筆してください。') | Out-Null
        $lines.Add('') | Out-Null
        $lines.Add('<!-- TODO: 統計サマリーと PR/Issue 一覧、PR 詳細を手動で埋める -->') | Out-Null
        return $lines.ToArray()
    }

    # 詳細モード: gh search prs の state 値で merged / closed を直接分類
    $mergedPrs = $Activity.MergedPrs
    $closedUnmergedPrs = $Activity.ClosedUnmergedPrs

    # コントリビューター集計（マージ済 PR の author）
    $contributors = @{}
    foreach ($pr in $mergedPrs) {
        $author = Format-AuthorName $pr.author
        if ($author -eq '—') { continue }
        if ($contributors.ContainsKey($author)) {
            $contributors[$author] = $contributors[$author] + 1
        } else {
            $contributors[$author] = 1
        }
    }
    $topContribs = (($contributors.GetEnumerator() | Sort-Object Value -Descending | Select-Object -First 6 | ForEach-Object { $_.Key }) -join ', ')
    if ([string]::IsNullOrWhiteSpace($topContribs)) { $topContribs = '—' }

    $lines.Add('## 統計サマリー') | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('| 区分                    | 件数 |') | Out-Null
    $lines.Add('| ----------------------- | ---- |') | Out-Null
    $lines.Add('| マージ済み PR           | ' + $mergedPrs.Count + ' |') | Out-Null
    $lines.Add('| オープン中の新規 PR     | ' + $Activity.OpenedPrs.Count + ' |') | Out-Null
    $lines.Add('| クローズ (未マージ) PR  | ' + $closedUnmergedPrs.Count + ' |') | Out-Null
    $lines.Add('| 新規 Issue              | ' + $Activity.NewIssues.Count + ' |') | Out-Null
    $lines.Add('| クローズ Issue          | ' + $Activity.ClosedIssues.Count + ' |') | Out-Null
    $lines.Add('| 主要コントリビューター  | ' + $topContribs + ' |') | Out-Null
    $lines.Add('') | Out-Null

    Add-ImportanceSection -Lines $lines -Items $Important -Truncated ([bool]$Activity.Truncated)

    if ($mergedPrs.Count -gt 0) {
        $lines.Add('## 主要な PR (詳細)') | Out-Null
        $lines.Add('') | Out-Null
        $lines.Add('> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 ' + [Math]::Min($DetailPrLimit, $mergedPrs.Count) + ' 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。') | Out-Null
        $lines.Add('') | Out-Null

        $topPrs = $mergedPrs |
            Sort-Object -Stable @{ Expression = { if (Get-ChangeImportance -Title $_.title -Labels $_.labels) { 0 } else { 1 } } } |
            Select-Object -First $DetailPrLimit
        foreach ($pr in $topPrs) {
            $detail = Get-PrDetail -Repo $repo -PrNumber $pr.number
            $title = ($pr.title -replace '\|', '\|')
            $author = Format-AuthorName $pr.author
            $labels = Format-LabelList $pr.labels

            $lines.Add('### [#' + $pr.number + '](' + $pr.url + ') — ' + $title) | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('- 作者: ' + $author + ' / 状態: MERGED') | Out-Null
            $lines.Add('- ラベル: ' + $labels) | Out-Null

            if ($detail) {
                $lines.Add('- 変更行数: +' + $detail.additions + ' / -' + $detail.deletions) | Out-Null
                if ($detail.mergedAt) {
                    $lines.Add('- マージ日時 (UTC): `' + (ConvertFrom-IsoDate $detail.mergedAt).ToString('yyyy-MM-dd HH:mm:ss') + '`') | Out-Null
                }
            }
            $lines.Add('') | Out-Null
            $lines.Add('**変更概要**') | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->') | Out-Null
            $lines.Add('') | Out-Null

            if ($detail -and $detail.files) {
                $lines.Add('<details><summary>変更ファイル (' + @($detail.files).Count + ' 件)</summary>') | Out-Null
                $lines.Add('') | Out-Null
                $lines.Add('| ファイル | +追加 | -削除 |') | Out-Null
                $lines.Add('| -------- | ----- | ----- |') | Out-Null
                foreach ($file in ($detail.files | Select-Object -First 15)) {
                    $lines.Add('| `' + $file.path + '` | ' + $file.additions + ' | ' + $file.deletions + ' |') | Out-Null
                }
                if (@($detail.files).Count -gt 15) {
                    $lines.Add('| _... 他 ' + (@($detail.files).Count - 15) + ' 件_ | | |') | Out-Null
                }
                $lines.Add('') | Out-Null
                $lines.Add('</details>') | Out-Null
                $lines.Add('') | Out-Null
            }

            if ($detail -and $detail.commits) {
                $lines.Add('<details><summary>コミット (' + @($detail.commits).Count + ' 件)</summary>') | Out-Null
                $lines.Add('') | Out-Null
                foreach ($commit in ($detail.commits | Select-Object -First 8)) {
                    $msg = ($commit.messageHeadline -replace '\|', '\|')
                    $sha = if ($commit.oid) { $commit.oid.Substring(0, [Math]::Min(7, $commit.oid.Length)) } else { '???????' }
                    $lines.Add('- `' + $sha + '` ' + $msg) | Out-Null
                }
                if (@($detail.commits).Count -gt 8) {
                    $lines.Add('- _... 他 ' + (@($detail.commits).Count - 8) + ' 件_') | Out-Null
                }
                $lines.Add('') | Out-Null
                $lines.Add('</details>') | Out-Null
                $lines.Add('') | Out-Null
            }

            $lines.Add('**コミットレベルの詳細 (API 変化・破壊的変更)**') | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->') | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('**既存利用者への影響**') | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->') | Out-Null
            $lines.Add('') | Out-Null
        }

        if ($mergedPrs.Count -gt $DetailPrLimit) {
            $topNumbers = @($topPrs | ForEach-Object { $_.number })
            $lines.Add('## その他のマージ済み PR') | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('| 番号 | タイトル | 作者 | リンク |') | Out-Null
            $lines.Add('| ---- | -------- | ---- | ------ |') | Out-Null
            foreach ($pr in ($mergedPrs | Where-Object { $topNumbers -notcontains $_.number })) {
                $title = ($pr.title -replace '\|', '\|')
                $author = Format-AuthorName $pr.author
                $lines.Add('| #' + $pr.number + ' | ' + $title + ' | ' + $author + ' | <' + $pr.url + '> |') | Out-Null
            }
            $lines.Add('') | Out-Null
        }
    }

    if ($Activity.OpenedPrs.Count -gt 0 -or $Activity.NewIssues.Count -gt 0 -or $closedUnmergedPrs.Count -gt 0 -or $Activity.ClosedIssues.Count -gt 0) {
        $lines.Add('## その他の変更') | Out-Null
        $lines.Add('') | Out-Null
        $lines.Add('| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |') | Out-Null
        $lines.Add('| ---- | ---- | -------- | ---- | ---- | ------ |') | Out-Null
        foreach ($pr in $Activity.OpenedPrs) {
            $t = ($pr.title -replace '\|', '\|'); $a = Format-AuthorName $pr.author
            $lines.Add('| PR | #' + $pr.number + ' | ' + $t + ' | open | ' + $a + ' | <' + $pr.url + '> |') | Out-Null
        }
        foreach ($pr in $closedUnmergedPrs) {
            $t = ($pr.title -replace '\|', '\|'); $a = Format-AuthorName $pr.author
            $lines.Add('| PR | #' + $pr.number + ' | ' + $t + ' | closed | ' + $a + ' | <' + $pr.url + '> |') | Out-Null
        }
        foreach ($issue in $Activity.NewIssues) {
            $t = ($issue.title -replace '\|', '\|'); $a = Format-AuthorName $issue.author
            $lines.Add('| Issue | #' + $issue.number + ' | ' + $t + ' | ' + $issue.state + ' | ' + $a + ' | <' + $issue.url + '> |') | Out-Null
        }
        foreach ($issue in $Activity.ClosedIssues) {
            if ($Activity.NewIssues -contains $issue) { continue }
            $t = ($issue.title -replace '\|', '\|'); $a = Format-AuthorName $issue.author
            $lines.Add('| Issue | #' + $issue.number + ' | ' + $t + ' | closed | ' + $a + ' | <' + $issue.url + '> |') | Out-Null
        }
        $lines.Add('') | Out-Null
    }

    return $lines.ToArray()
}

function Test-OutputFile {
    <#
      生成された Markdown ファイルを読み戻し、エンコーディングと先頭行を検証する。
      失敗時は throw（呼び出し側が commit を中止）。
    #>
    param([string]$Path, [string]$ExpectedHeaderPrefix, [string]$RequiredMarker)

    if (-not (Test-Path -LiteralPath $Path)) {
        throw 'Validation failed: file does not exist: ' + $Path
    }

    $text = [System.IO.File]::ReadAllText($Path, [System.Text.UTF8Encoding]::new($false))
    if ([string]::IsNullOrEmpty($text)) {
        throw 'Validation failed: file is empty: ' + $Path
    }

    $firstLine = $text -split "(\r\n|\r|\n)" | Select-Object -First 1
    if (-not $firstLine.StartsWith($ExpectedHeaderPrefix)) {
        throw 'Validation failed: ' + $Path + ' first line does not start with "' + $ExpectedHeaderPrefix + '". Actual: "' + $firstLine + '"'
    }

    if ($RequiredMarker -and ($text -notmatch [regex]::Escape($RequiredMarker))) {
        throw 'Validation failed: ' + $Path + ' is missing required marker: ' + $RequiredMarker
    }

    # よくある mojibake パターン（UTF-8 → Shift-JIS 誤読時に出る文字）
    if ($text -match '[\u30FB][\uFF65-\uFF9F]' -or $text -match '繝[\u30FB-\u30FF]') {
        throw 'Validation failed: ' + $Path + ' appears to contain mojibake. Re-check file encoding.'
    }
}

function Get-LeftoverMarkers {
    <#
      ファイル内に残っている骨組みマーカー（未記入の TODO / プレースホルダ）を
      検出して、見つかった行番号付きの文字列配列を返す。なければ空配列。
    #>
    param([string]$Path)

    $found = New-Object System.Collections.Generic.List[string]
    if (-not (Test-Path -LiteralPath $Path)) { return @() }

    $allLines = [System.IO.File]::ReadAllLines($Path, [System.Text.UTF8Encoding]::new($false))
    for ($i = 0; $i -lt $allLines.Count; $i++) {
        foreach ($marker in $script:SkeletonMarkers) {
            if ($allLines[$i].Contains($marker)) {
                $found.Add('  L' + ($i + 1) + ': ' + $allLines[$i].Trim()) | Out-Null
                break
            }
        }
    }
    return $found.ToArray()
}

function Write-ReportFile {
    <#
      レポートファイルを書き出す。ただし「既に存在し、骨組みマーカーが残っていない
      （= 執筆済みと判断できる）」ファイルは、上書きで成果物を失わないよう既定でスキップする。
      -Force 指定時は無条件で上書きする。スキップした場合は大きく警告する。
      戻り値: 実際に書き込んだら $true、保護スキップしたら $false。
    #>
    param([string]$Path, [string[]]$Lines, [switch]$Force)

    if ((Test-Path -LiteralPath $Path) -and -not $Force) {
        $leftover = Get-LeftoverMarkers -Path $Path
        if (@($leftover).Count -eq 0) {
            Write-Host ''
            Write-Host ('[warn] 既存の「執筆済み」ファイルを保護のためスキップしました: ' + $Path) -ForegroundColor Yellow
            Write-Host '       骨組みマーカーが残っていないため、上書きすると記入済みの内容を失う恐れがあります。' -ForegroundColor Yellow
            Write-Host '       意図的に再生成する場合は -Force を付けて実行してください。' -ForegroundColor Yellow
            Write-Host ''
            $script:SkippedFiles.Add($Path) | Out-Null
            return $false
        }
    }

    Save-Utf8File -Path $Path -Lines $Lines
    return $true
}

function Get-ReportMetaGeneratedAt {
    <#
      index.md 末尾の <!-- daily-check-meta: {...} --> から generatedAtUtc を読み取る。
      見つからなければ $null。-Finalize で timestamp.md を進める基準に使う。
    #>
    param([string]$IndexPath)

    if (-not (Test-Path -LiteralPath $IndexPath)) { return $null }
    $text = [System.IO.File]::ReadAllText($IndexPath, [System.Text.UTF8Encoding]::new($false))
    $m = [regex]::Match($text, '<!--\s*daily-check-meta:\s*(\{.*?\})\s*-->')
    if (-not $m.Success) { return $null }
    try {
        $meta = $m.Groups[1].Value | ConvertFrom-Json
        return [string]$meta.generatedAtUtc
    } catch {
        return $null
    }
}

function Get-LatestReportDir {
    <#
      reports/yyyy/MM/dd 配下で index.md を持つ最新のディレクトリ（相対パス）を返す。
      無ければ $null。-Finalize / -ValidateOnly で当日ディレクトリが無い場合の対象解決に使う。
    #>
    param([string]$Root = 'reports')

    if (-not (Test-Path -LiteralPath $Root)) { return $null }
    $candidates = Get-ChildItem -Path $Root -Recurse -Filter 'index.md' -ErrorAction SilentlyContinue |
        Sort-Object FullName
    if (-not $candidates) { return $null }
    return (Resolve-Path -Relative (Split-Path -Parent $candidates[-1].FullName))
}

# ===================== Main =====================
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..' '..' '..' '..')).Path
Push-Location $repoRoot
try {
    $script:SkippedFiles = New-Object System.Collections.Generic.List[string]

    $nowUtc = if ([string]::IsNullOrWhiteSpace($GeneratedAtUtc)) {
        (Get-Date).ToUniversalTime()
    } else {
        $styles = [System.Globalization.DateTimeStyles]::AssumeUniversal -bor [System.Globalization.DateTimeStyles]::AdjustToUniversal
        [DateTime]::ParseExact($GeneratedAtUtc, 'yyyy-MM-dd HH:mm:ss', [System.Globalization.CultureInfo]::InvariantCulture, $styles)
    }

    $previousCheckAtUtc = Get-PreviousCheckAtUtc -TimestampPath (Join-Path $repoRoot 'timestamp.md')
    $year  = $nowUtc.ToString('yyyy')
    $month = $nowUtc.ToString('MM')
    $day   = $nowUtc.ToString('dd')
    $reportDir = Join-Path 'reports' (Join-Path $year (Join-Path $month $day))

    # 単位ファイルと先頭ヘッダの対応（構造検証・finalize 検証に共用）
    $unitFileHeaders = [ordered]@{
        'index.md'                          = '# 差分レポート'
        'azure.md'                          = '# Azure 更新'
        'github-changelog.md'               = '# GitHub Changelog'
        'agent-framework.md'                = '# microsoft/agent-framework'
        'aspnetcore.md'                     = '# dotnet/aspnetcore'
        'azure-functions-dotnet-worker.md'  = '# Azure/azure-functions-dotnet-worker'
        'extensions.md'                     = '# dotnet/extensions'
        'reactiveproperty.md'               = '# runceel/ReactiveProperty'
        'aspire.md'                         = '# microsoft/aspire'
    }

    # -ValidateOnly / -Status は読み取り専用なので、当日ディレクトリが無ければ最新レポートへフォールバックする。
    # -Finalize は破壊的（timestamp 更新 + commit/push）なので、別日のレポートを誤って確定しないよう
    # フォールバックしない（当日 or 明示 -GeneratedAtUtc の日付のみを対象にする）。
    if ($ValidateOnly -or $Status) {
        if (-not (Test-Path -LiteralPath (Join-Path $reportDir 'index.md'))) {
            $latest = Get-LatestReportDir
            if ($latest) {
                $reportDir = $latest
                Write-Host ('[info] 当日のレポートが無いため最新レポートを対象にします: ' + $reportDir) -ForegroundColor Cyan
            }
        }
    }

    # ===== -Status: 編集が必要か（残マーカーの有無）を読み取り専用で表示する。エラー扱いにしない =====
    # 終了コード: 0 = すべて記入済み（確定可）/ 1 = 編集が必要 / 2 = レポート未生成
    if ($Status) {
        Write-Host ('Report status under ' + $reportDir + ' :')
        if (-not (Test-Path -LiteralPath (Join-Path $reportDir 'index.md'))) {
            Write-Host '  レポートが見つかりません。先に骨組みを生成してください（オプション無しで実行）。' -ForegroundColor Yellow
            exit 2
        }
        $statusTotal = 0
        $statusPending = New-Object System.Collections.Generic.List[string]
        foreach ($f in $unitFileHeaders.Keys) {
            $p = Join-Path $reportDir $f
            if (-not (Test-Path -LiteralPath $p)) {
                Write-Host ('  [欠落 ] ' + $f) -ForegroundColor Red
                $statusPending.Add($f) | Out-Null
                continue
            }
            $left = @(Get-LeftoverMarkers -Path $p)
            if ($left.Count -gt 0) {
                $statusTotal += $left.Count
                $statusPending.Add($f) | Out-Null
                Write-Host ('  [要編集] ' + $f + ' — 残り ' + $left.Count + ' 箇所') -ForegroundColor Yellow
            } else {
                Write-Host ('  [記入済] ' + $f) -ForegroundColor Green
            }
        }
        Write-Host ''
        if ($statusPending.Count -eq 0) {
            Write-Host '結果: すべて記入済みです。編集は不要です。' -ForegroundColor Green
            Write-Host ('次の手順:  pwsh ' + $PSCommandPath + ' -Finalize   （timestamp 更新 + commit/push）')
            exit 0
        } else {
            Write-Host ('結果: 編集が必要です。' + $statusPending.Count + ' ファイル / 残り ' + $statusTotal + ' 箇所。') -ForegroundColor Yellow
            Write-Host '各ファイルの <!-- TODO: ... --> を日本語解説に置き換えてから、再度 -Status で確認してください。'
            exit 1
        }
    }

    # ===== -ValidateOnly: 未記入マーカーの検査のみ（ファイル書き込みなし） =====
    if ($ValidateOnly) {
        Write-Host ('Validating report markers under ' + $reportDir + ' ...')
        if (-not (Test-Path -LiteralPath $reportDir)) {
            throw ('Report directory does not exist: ' + $reportDir + '（先に骨組みを生成してください）')
        }
        $leftoverTotal = 0
        foreach ($f in $unitFileHeaders.Keys) {
            $p = Join-Path $reportDir $f
            if (-not (Test-Path -LiteralPath $p)) { continue }
            $left = Get-LeftoverMarkers -Path $p
            if (@($left).Count -gt 0) {
                $leftoverTotal += @($left).Count
                Write-Host ('[未記入] ' + $f) -ForegroundColor Yellow
                $left | ForEach-Object { Write-Host $_ }
            }
        }
        if ($leftoverTotal -gt 0) {
            throw ('未記入の骨組みマーカーが ' + $leftoverTotal + ' 件残っています。日本語解説に置き換えてください。')
        }
        Write-Host '  すべての単位ファイルが記入済みです（残存マーカーなし）。' -ForegroundColor Green
        return
    }

    # ===== -Finalize: 生成は行わず、記入完了を検証して timestamp 更新 + commit/push =====
    if ($Finalize) {
        Write-Host ('Finalizing report under ' + $reportDir + ' ...')
        if (-not (Test-Path -LiteralPath (Join-Path $reportDir 'index.md'))) {
            throw ('Finalize 対象のレポートが見つかりません: ' + $reportDir + "`n" +
                '当日のディレクトリが無い場合は、確定したい日付を明示してください: -GeneratedAtUtc "yyyy-MM-dd HH:mm:ss"（先に骨組み生成・記入が必要です）')
        }

        $leftoverTotal = 0
        foreach ($f in $unitFileHeaders.Keys) {
            $p = Join-Path $reportDir $f
            if (-not (Test-Path -LiteralPath $p)) {
                throw ('Required report file is missing: ' + $p)
            }
            $left = Get-LeftoverMarkers -Path $p
            if (@($left).Count -gt 0) {
                $leftoverTotal += @($left).Count
                Write-Host ('[未記入] ' + $f) -ForegroundColor Yellow
                $left | ForEach-Object { Write-Host $_ }
            }
        }
        if ($leftoverTotal -gt 0) {
            throw ('未記入の骨組みマーカーが ' + $leftoverTotal + ' 件残っているため finalize できません。すべて埋めてから再実行してください。')
        }

        foreach ($f in $unitFileHeaders.Keys) {
            Test-OutputFile -Path (Join-Path $reportDir $f) -ExpectedHeaderPrefix $unitFileHeaders[$f] -RequiredMarker ''
        }
        Write-Host '  記入済み・エンコーディング検証 OK。' -ForegroundColor Green

        $genAt = Get-ReportMetaGeneratedAt -IndexPath (Join-Path $reportDir 'index.md')
        if ([string]::IsNullOrWhiteSpace($genAt)) {
            if (-not [string]::IsNullOrWhiteSpace($GeneratedAtUtc)) {
                $genAt = $nowUtc.ToString('yyyy-MM-dd HH:mm:ss')
                Write-Host ('[info] index.md に meta が無いため、明示指定の -GeneratedAtUtc を timestamp に使用します: ' + $genAt) -ForegroundColor Cyan
            } else {
                throw ('index.md に daily-check-meta が見つからないため finalize を中止しました（timestamp を誤った時刻に進めないため）。' + "`n" +
                    'スクリプトで生成した骨組みには meta が埋め込まれます。旧形式のレポートを確定する場合は確定時刻を明示してください: -GeneratedAtUtc "yyyy-MM-dd HH:mm:ss"')
            }
        }

        if ($DryRun) {
            Write-Host ('Dry-run: timestamp.md would be set to ' + $genAt + ' and the report committed.')
            return
        }

        [System.IO.File]::WriteAllText((Join-Path $repoRoot 'timestamp.md'), $genAt, (New-Object System.Text.UTF8Encoding($false)))
        Write-Host ('timestamp.md updated to ' + $genAt)

        if (-not $SkipCommit) {
            git add $reportDir 'timestamp.md'
            if ($LASTEXITCODE -ne 0) { throw ('git add に失敗しました (exit ' + $LASTEXITCODE + ')。timestamp.md は更新済みです。解消後に手動で add/commit してください。') }
            $commitMessage = 'Daily check report: ' + $genAt + ' UTC'
            git commit -m $commitMessage
            if ($LASTEXITCODE -ne 0) { throw ('git commit に失敗しました (exit ' + $LASTEXITCODE + ')。timestamp.md は更新済みです。変更内容を確認のうえ手動で commit してください。') }
            if (-not $SkipPush) {
                git push
                if ($LASTEXITCODE -ne 0) { throw ('git push に失敗しました (exit ' + $LASTEXITCODE + ')。commit は完了済みです。ネットワーク等を確認のうえ手動で push してください。') }
            }
        }
        Write-Host ('Report finalized: ' + $reportDir) -ForegroundColor Green
        return
    }

    # ===== 既定: 骨組み生成 (scaffold) — timestamp 更新・commit は行わない =====
    if ($Force) {
        Write-Host '============================================================' -ForegroundColor Red
        Write-Host '[警告] -Force 指定: 記入済みファイルも上書きされ、手作業の記入が失われます。' -ForegroundColor Red
        Write-Host '       通常の生成に -Force は不要です。意図的な再生成でなければ中止してください。' -ForegroundColor Red
        Write-Host '============================================================' -ForegroundColor Red
    }
    Write-Host 'Preparing temporary workspace...'
    New-Item -ItemType Directory -Force -Path '.tmp' | Out-Null
    New-Item -ItemType Directory -Force -Path '.tmp/gh' | Out-Null
    New-Item -ItemType Directory -Force -Path $reportDir | Out-Null

    Write-Host 'Fetching Azure / GitHub Changelog RSS...'
    $azureXml = Get-FeedXml -Uri 'https://www.microsoft.com/releasecommunications/api/v2/azure/rss' -OutFile '.tmp/azure-rss.xml'
    $githubChangelogXml = Get-FeedXml -Uri 'https://github.blog/changelog/feed/' -OutFile '.tmp/github-changelog.xml'

    $azureItems = @($azureXml.rss.channel.item | Where-Object {
        $pubDate = ConvertTo-UtcDateTime -Value (Get-XmlChildText $_ 'pubDate') -Fallback ([DateTime]::MinValue)
        $pubDate -gt $previousCheckAtUtc -and $pubDate -le $nowUtc
    })
    $githubItems = @($githubChangelogXml.rss.channel.item | Where-Object {
        $pubDate = ConvertTo-UtcDateTime -Value (Get-XmlChildText $_ 'pubDate') -Fallback ([DateTime]::MinValue)
        $pubDate -gt $previousCheckAtUtc -and $pubDate -le $nowUtc
    } | Select-Object -First 15)

    # Azure / Changelog の重要項目 (GA / リタイア / 破壊的変更等) を index 横断表へ集約する
    $feedImportant = New-Object System.Collections.Generic.List[object]

    # ----- azure.md -----
    $azureLines = New-Object System.Collections.Generic.List[string]
    $azureLines.Add('# Azure 更新') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('対象期間: ' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' (UTC)') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('対象期間内の Azure RSS 新着は **' + $azureItems.Count + ' 件** です。各見出し下の `<!-- TODO ... -->` を日本語解説に置き換えてください（原文要約は TODO コメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。') | Out-Null
    $azureLines.Add('') | Out-Null

    foreach ($item in ($azureItems | Select-Object -First 20)) {
        $pubDate = ConvertTo-UtcDateTime -Value (Get-XmlChildText $item 'pubDate') -Fallback $nowUtc
        $title = Get-XmlChildText $item 'title'
        $link = Get-XmlChildText $item 'link'
        $src = Get-FeedItemText -Node $item.SelectSingleNode('description')
        $impTag = Get-ChangeImportance -Title $title -Labels @()
        if ($impTag) { $feedImportant.Add([PSCustomObject]@{ Source = 'Azure 更新'; Tag = $impTag; Title = $title; Url = $link }) | Out-Null }

        $azureLines.Add('## ' + $title) | Out-Null
        $azureLines.Add('') | Out-Null
        $azureLines.Add('- 公開日 (UTC): `' + $pubDate.ToString('yyyy-MM-dd HH:mm:ss') + '`') | Out-Null
        $azureLines.Add('- リンク: <' + $link + '>') | Out-Null
        $azureLines.Add('') | Out-Null
        $azureLines.Add('<!-- TODO: 何が変わるか / 誰に影響するか / どう使い始める・移行するか を 2〜4 行で日本語要約。この行ごと置換すること。原文: ' + $src + ' -->') | Out-Null
        $azureLines.Add('') | Out-Null
    }
    Write-ReportFile -Path (Join-Path $reportDir 'azure.md') -Lines $azureLines.ToArray() -Force:$Force | Out-Null

    # ----- github-changelog.md -----
    $ghLines = New-Object System.Collections.Generic.List[string]
    $ghLines.Add('# GitHub Changelog') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('取得元: <https://github.blog/changelog/feed/>') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('対象期間: ' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' (UTC)') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('対象期間内の GitHub Changelog 新着は **' + $githubItems.Count + ' 件** です。各見出し下の `<!-- TODO ... -->` を日本語解説に置き換えてください（原文要約は TODO コメント内に保持しています）。') | Out-Null
    $ghLines.Add('') | Out-Null

    foreach ($item in $githubItems) {
        $published = ConvertTo-UtcDateTime -Value (Get-XmlChildText $item 'pubDate') -Fallback $nowUtc
        $title = Get-XmlChildText $item 'title'
        $link = Get-XmlChildText $item 'link'
        $src = Get-FeedItemText -Node $item.SelectSingleNode('description')
        $impTag = Get-ChangeImportance -Title $title -Labels @()
        if ($impTag) { $feedImportant.Add([PSCustomObject]@{ Source = 'GitHub Changelog'; Tag = $impTag; Title = $title; Url = $link }) | Out-Null }

        $ghLines.Add('## ' + $title) | Out-Null
        $ghLines.Add('') | Out-Null
        $ghLines.Add('- 公開日 (UTC): `' + $published.ToString('yyyy-MM-dd HH:mm:ss') + '`') | Out-Null
        $ghLines.Add('- リンク: <' + $link + '>') | Out-Null
        $ghLines.Add('') | Out-Null
        $ghLines.Add('<!-- TODO: 機能の概要・対象ユーザー・移行/有効化方法を日本語で 2〜3 行。この行ごと置換すること。原文: ' + $src + ' -->') | Out-Null
        $ghLines.Add('') | Out-Null
    }
    Write-ReportFile -Path (Join-Path $reportDir 'github-changelog.md') -Lines $ghLines.ToArray() -Force:$Force | Out-Null

    # ----- リポジトリ別 + 横断重要項目の集約 -----
    $allImportant = New-Object System.Collections.Generic.List[object]
    foreach ($cfg in $script:RepoConfigs) {
        $repoSlug = $cfg.Owner + '/' + $cfg.Name
        Write-Host ('Collecting GitHub activity for ' + $repoSlug + '...')

        if ($SkipGitHub) {
            $activity = $null
            Write-Host '  (-SkipGitHub: gh CLI is bypassed)'
        } else {
            $activity = Get-RepoActivity -Repo $repoSlug -Since $previousCheckAtUtc -Until $nowUtc -CacheDir '.tmp/gh'
        }

        $important = @()
        if ($activity) {
            if ($activity.Truncated) {
                Write-Host ('  [warn] ' + $repoSlug + ': 取得件数が上限 (' + $activity.Limit + ') に達しました。重要項目が漏れている可能性があります。') -ForegroundColor Yellow
            }
            $important = @(Get-ImportantItems -Activity $activity)
            foreach ($it in $important) {
                $allImportant.Add([PSCustomObject]@{ Repo = $repoSlug; File = $cfg.File; Item = $it }) | Out-Null
            }
        }

        if ($cfg.Mode -eq 'detail') {
            $bodyLines = New-RepoDetailBody -RepoConfig $cfg -Activity $activity -Since $previousCheckAtUtc -Until $nowUtc -Important $important
        } else {
            $bodyLines = New-RepoSummaryBody -RepoConfig $cfg -Activity $activity -Since $previousCheckAtUtc -Until $nowUtc -Important $important
        }
        Write-ReportFile -Path (Join-Path $reportDir $cfg.File) -Lines $bodyLines -Force:$Force | Out-Null
    }

    # ----- index.md（リポジトリ走査後に生成し、横断重要項目と meta を埋め込む） -----
    $indexLines = New-Object System.Collections.Generic.List[string]
    $indexLines.Add('# 差分レポート — ' + $nowUtc.ToString('yyyy-MM-dd') + ' 版 (インデックス)') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('| 項目 | 値 |') | Out-Null
    $indexLines.Add('| --- | --- |') | Out-Null
    $indexLines.Add('| レポート生成日時 (UTC) | `' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + '` |') | Out-Null
    $indexLines.Add('| レポート生成日時 (JST) | `' + $nowUtc.ToLocalTime().ToString('yyyy-MM-dd HH:mm:ss') + '` |') | Out-Null
    $indexLines.Add('| 前回チェック時刻 (UTC) | `' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + '` |') | Out-Null
    $indexLines.Add('| 対象期間 (UTC) | `' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + '` |') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('| 単位 | ファイル |') | Out-Null
    $indexLines.Add('| --- | --- |') | Out-Null
    $indexLines.Add('| Azure 更新 | [azure.md](./azure.md) |') | Out-Null
    $indexLines.Add('| GitHub Changelog | [github-changelog.md](./github-changelog.md) |') | Out-Null
    $indexLines.Add('| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |') | Out-Null
    $indexLines.Add('| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |') | Out-Null
    $indexLines.Add('| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |') | Out-Null
    $indexLines.Add('| dotnet/extensions | [extensions.md](./extensions.md) |') | Out-Null
    $indexLines.Add('| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |') | Out-Null
    $indexLines.Add('| microsoft/aspire | [aspire.md](./aspire.md) |') | Out-Null
    $indexLines.Add('') | Out-Null

    # 横断重要サマリー（GitHub リポジトリ群 + Azure / GitHub Changelog から自動集約）
    $indexLines.Add('## ⚠ 全体の重要な変更（要確認）') | Out-Null
    $indexLines.Add('') | Out-Null
    if ($allImportant.Count -gt 0 -or $feedImportant.Count -gt 0) {
        $indexLines.Add('GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。') | Out-Null
        $indexLines.Add('') | Out-Null
        $indexLines.Add('| 種別 | ソース | 参照 | タイトル | 状態 |') | Out-Null
        $indexLines.Add('| ---- | ------ | ---- | -------- | ---- |') | Out-Null
        foreach ($e in $allImportant) {
            $it = $e.Item
            $t = ($it.Title -replace '\|', '\|')
            $repoLink = '[' + $it.Kind + '#' + $it.Number + '](' + $it.Url + ')'
            $indexLines.Add('| ' + $it.Tag + ' | ' + $e.Repo + ' | ' + $repoLink + ' | ' + $t + ' | ' + $it.State + ' |') | Out-Null
        }
        foreach ($e in $feedImportant) {
            $t = ($e.Title -replace '\|', '\|')
            $srcLink = '[原文](' + $e.Url + ')'
            $indexLines.Add('| ' + $e.Tag + ' | ' + $e.Source + ' | ' + $srcLink + ' | ' + $t + ' | — |') | Out-Null
        }
        $indexLines.Add('') | Out-Null
    } else {
        $indexLines.Add('自動判定された重要変更（破壊的変更 / セキュリティ / 非推奨 / GA）はありません。Azure 更新と GitHub Changelog は各ファイルで要確認です。') | Out-Null
        $indexLines.Add('') | Out-Null
    }

    $indexLines.Add('## エグゼクティブサマリー') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('<!-- TODO: 上の「全体の重要な変更」と Azure / GitHub Changelog を横断し、「特に注目すべきトピック」を 3〜5 件リンク付きの箇条書きで。重要変更があれば必ず含める -->') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('## 主要トレンド') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('<!-- TODO: 今回の差分から見える横断的なテーマを 2〜4 行で日本語要約 -->') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('## 次回チェックに向けたメモ') | Out-Null
    $indexLines.Add('') | Out-Null
    $indexLines.Add('<!-- TODO: 継続ウォッチ中の PR/Issue、Azure の次の段階待ちアイテム、次回の重点確認事項 -->') | Out-Null
    $indexLines.Add('') | Out-Null

    # finalize 時に timestamp.md を進める基準（可視テーブルではなくこの meta を参照）
    $metaJson = (@{ generatedAtUtc = $nowUtc.ToString('yyyy-MM-dd HH:mm:ss'); previousCheckAtUtc = $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss'); schema = 1 } | ConvertTo-Json -Compress)
    $indexLines.Add('<!-- daily-check-meta: ' + $metaJson + ' -->') | Out-Null

    Write-ReportFile -Path (Join-Path $reportDir 'index.md') -Lines $indexLines.ToArray() -Force:$Force | Out-Null

    # ----- 構造検証（先頭行・エンコーディング） -----
    Write-Host 'Validating output files...'
    $expectedDateMarker = $nowUtc.ToString('yyyy-MM-dd')
    foreach ($f in $unitFileHeaders.Keys) {
        $marker = if ($f -eq 'index.md') { $expectedDateMarker } else { '' }
        Test-OutputFile -Path (Join-Path $reportDir $f) -ExpectedHeaderPrefix $unitFileHeaders[$f] -RequiredMarker $marker
    }
    Write-Host '  All 9 output files passed structure validation.' -ForegroundColor Green

    if ($DryRun) {
        Write-Host ('Dry-run complete. Report skeleton would be under ' + $reportDir)
        return
    }

    # ----- 完了案内（timestamp 更新・commit はここでは行わない） -----
    Write-Host ''
    Write-Host ('骨組みを生成しました: ' + $reportDir) -ForegroundColor Green
    if ($script:SkippedFiles.Count -gt 0) {
        Write-Host ('  ※ 保護のためスキップした既存ファイル: ' + $script:SkippedFiles.Count + ' 件（再生成するには -Force を付与）') -ForegroundColor Yellow
    }
    Write-Host '次の手順:'
    Write-Host '  1) 各単位ファイルの <!-- TODO ... --> を日本語解説に置き換える（「重要な変更」を最優先）'
    Write-Host ('  2) 記入状況を検証:  pwsh ' + $PSCommandPath + ' -ValidateOnly')
    Write-Host ('  3) 確定 (timestamp 更新 + commit/push):  pwsh ' + $PSCommandPath + ' -Finalize')
    Write-Host '     ※ 既定の再実行では記入済みファイルは保護され、timestamp 更新・commit は行いません。'
}
finally {
    Pop-Location
}
