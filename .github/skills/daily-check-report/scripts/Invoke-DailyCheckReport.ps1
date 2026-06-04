[CmdletBinding()]
param(
    [switch]$DryRun,
    [switch]$SkipCommit,
    [switch]$SkipPush,
    [switch]$SkipGitHub,
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
    [PSCustomObject]@{ Owner='microsoft';   Name='aspire';                       File='aspire.md';                       Mode='summary' }
)

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
        [int]$Limit = 50,
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

function New-RepoSummaryBody {
    <#
      サマリーモード用の Markdown 骨組みを生成する。
    #>
    param(
        [PSCustomObject]$RepoConfig,
        [PSCustomObject]$Activity,
        [DateTime]$Since,
        [DateTime]$Until
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

    $lines.Add('## 主要な変更点') | Out-Null
    $lines.Add('') | Out-Null
    $lines.Add('<!-- TODO: 上の統計と下の一覧から、主要な変更点を 3〜8 行の箇条書きで日本語要約 -->') | Out-Null
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

    if ($mergedPrs.Count -gt 0) {
        $lines.Add('## 主要な PR (詳細)') | Out-Null
        $lines.Add('') | Out-Null
        $lines.Add('> 上位 ' + [Math]::Min($DetailPrLimit, $mergedPrs.Count) + ' 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。') | Out-Null
        $lines.Add('') | Out-Null

        $topPrs = $mergedPrs | Select-Object -First $DetailPrLimit
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
                foreach ($file in ($detail.files | Select-Object -First 30)) {
                    $lines.Add('| `' + $file.path + '` | ' + $file.additions + ' | ' + $file.deletions + ' |') | Out-Null
                }
                if (@($detail.files).Count -gt 30) {
                    $lines.Add('| _... 他 ' + (@($detail.files).Count - 30) + ' 件_ | | |') | Out-Null
                }
                $lines.Add('') | Out-Null
                $lines.Add('</details>') | Out-Null
                $lines.Add('') | Out-Null
            }

            if ($detail -and $detail.commits) {
                $lines.Add('<details><summary>コミット (' + @($detail.commits).Count + ' 件)</summary>') | Out-Null
                $lines.Add('') | Out-Null
                foreach ($commit in ($detail.commits | Select-Object -First 10)) {
                    $msg = ($commit.messageHeadline -replace '\|', '\|')
                    $sha = if ($commit.oid) { $commit.oid.Substring(0, [Math]::Min(7, $commit.oid.Length)) } else { '???????' }
                    $lines.Add('- `' + $sha + '` ' + $msg) | Out-Null
                }
                if (@($detail.commits).Count -gt 10) {
                    $lines.Add('- _... 他 ' + (@($detail.commits).Count - 10) + ' 件_') | Out-Null
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
            $lines.Add('## その他のマージ済み PR') | Out-Null
            $lines.Add('') | Out-Null
            $lines.Add('| 番号 | タイトル | 作者 | リンク |') | Out-Null
            $lines.Add('| ---- | -------- | ---- | ------ |') | Out-Null
            foreach ($pr in ($mergedPrs | Select-Object -Skip $DetailPrLimit)) {
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

# ===================== Main =====================
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..' '..' '..' '..')).Path
Push-Location $repoRoot
try {
    Write-Host 'Preparing temporary workspace...'
    New-Item -ItemType Directory -Force -Path '.tmp' | Out-Null
    New-Item -ItemType Directory -Force -Path '.tmp/gh' | Out-Null

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

    New-Item -ItemType Directory -Force -Path $reportDir | Out-Null

    Write-Host 'Fetching Azure / GitHub Changelog RSS...'
    $azureXml = Get-FeedXml -Uri 'https://www.microsoft.com/releasecommunications/api/v2/azure/rss' -OutFile '.tmp/azure-rss.xml'
    $githubChangelogXml = Get-FeedXml -Uri 'https://github.blog/changelog/feed/' -OutFile '.tmp/github-changelog.xml'

    $azureItems = @($azureXml.rss.channel.item | Where-Object {
        $pubDate = ConvertTo-UtcDateTime -Value $_.pubDate -Fallback ([DateTime]::MinValue)
        $pubDate -gt $previousCheckAtUtc -and $pubDate -le $nowUtc
    })
    $githubItems = @($githubChangelogXml.rss.channel.item | Select-Object -First 8)

    # ----- index.md -----
    $indexLines = @(
        ('# 差分レポート — ' + $nowUtc.ToString('yyyy-MM-dd') + ' 版 (インデックス)'),
        '',
        '| 項目 | 値 |',
        '| --- | --- |',
        ('| レポート生成日時 (UTC) | `' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + '` |'),
        ('| レポート生成日時 (JST) | `' + $nowUtc.ToLocalTime().ToString('yyyy-MM-dd HH:mm:ss') + '` |'),
        ('| 前回チェック時刻 (UTC) | `' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + '` |'),
        ('| 対象期間 (UTC) | `' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + '` |'),
        '',
        'このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。',
        '',
        '| 単位 | ファイル |',
        '| --- | --- |',
        '| Azure 更新 | [azure.md](./azure.md) |',
        '| GitHub Changelog | [github-changelog.md](./github-changelog.md) |',
        '| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |',
        '| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |',
        '| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |',
        '| dotnet/extensions | [extensions.md](./extensions.md) |',
        '| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |',
        '| microsoft/aspire | [aspire.md](./aspire.md) |',
        '',
        '## エグゼクティブサマリー',
        '',
        '<!-- TODO: Azure 更新と GitHub 横断で「特に注目すべきトピック」を 3〜5 件、リンク付きの箇条書きで -->',
        '',
        '- ',
        '',
        '## 主要トレンド',
        '',
        '<!-- TODO: 今回の差分から見える横断的なテーマを 2〜4 行で日本語要約 -->',
        '',
        '## 次回チェックに向けたメモ',
        '',
        '<!-- TODO: 継続ウォッチ中の PR/Issue、Azure の次の段階待ちアイテム、次回の重点確認事項 -->',
        ''
    )
    Save-Utf8File -Path (Join-Path $reportDir 'index.md') -Lines $indexLines

    # ----- azure.md -----
    $azureLines = New-Object System.Collections.Generic.List[string]
    $azureLines.Add('# Azure 更新') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('対象期間: ' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' (UTC)') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('Azure RSS による新着項目は **' + $azureItems.Count + ' 件** です。') | Out-Null
    $azureLines.Add('') | Out-Null
    $azureLines.Add('> このファイルは骨組みです。各項目の `<!-- TODO -->` を **2〜4 行の日本語解説** に置き換えてから commit してください。') | Out-Null
    $azureLines.Add('') | Out-Null

    foreach ($item in ($azureItems | Select-Object -First 20)) {
        $pubDate = ConvertTo-UtcDateTime -Value $item.pubDate -Fallback $nowUtc
        $title = [string]($item.title)
        $link = [string]($item.link)
        $description = [string]($item.description)
        $cleanDescription = [System.Net.WebUtility]::HtmlDecode(($description -replace '<[^>]+>', ' ').Trim())

        $azureLines.Add('## ' + $title) | Out-Null
        $azureLines.Add('') | Out-Null
        $azureLines.Add('- 公開日 (UTC): `' + $pubDate.ToString('yyyy-MM-dd HH:mm:ss') + '`') | Out-Null
        $azureLines.Add('- リンク: <' + $link + '>') | Out-Null
        $azureLines.Add('') | Out-Null
        $azureLines.Add('**原文 (要約前)**:') | Out-Null
        $azureLines.Add('') | Out-Null
        $azureLines.Add($cleanDescription) | Out-Null
        $azureLines.Add('') | Out-Null
        $azureLines.Add('<!-- TODO: 何が変わるか / 誰に影響するか / どう使い始める・移行するか を 2〜4 行で日本語要約 -->') | Out-Null
        $azureLines.Add('') | Out-Null
    }
    Save-Utf8File -Path (Join-Path $reportDir 'azure.md') -Lines $azureLines.ToArray()

    # ----- github-changelog.md -----
    $ghLines = New-Object System.Collections.Generic.List[string]
    $ghLines.Add('# GitHub Changelog') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('取得元: <https://github.blog/changelog/feed/>') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('対象期間: ' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' (UTC)') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('GitHub Changelog フィードから ' + $githubItems.Count + ' 件を取り込みました。') | Out-Null
    $ghLines.Add('') | Out-Null
    $ghLines.Add('> このファイルは骨組みです。重要度の高い項目を選び、**日本語の解説**（変更内容と利用者への影響）を追記してから commit してください。') | Out-Null
    $ghLines.Add('') | Out-Null

    foreach ($item in $githubItems) {
        $published = ConvertTo-UtcDateTime -Value $item.pubDate -Fallback $nowUtc
        $title = [string]($item.title)
        $link = [string]($item.link)
        $description = [string]($item.description)
        $cleanDescription = [System.Net.WebUtility]::HtmlDecode(($description -replace '<[^>]+>', ' ').Trim())

        $ghLines.Add('## ' + $title) | Out-Null
        $ghLines.Add('') | Out-Null
        $ghLines.Add('- 公開日 (UTC): `' + $published.ToString('yyyy-MM-dd HH:mm:ss') + '`') | Out-Null
        $ghLines.Add('- リンク: <' + $link + '>') | Out-Null
        $ghLines.Add('') | Out-Null
        $ghLines.Add('**原文 (要約前)**:') | Out-Null
        $ghLines.Add('') | Out-Null
        $ghLines.Add($cleanDescription) | Out-Null
        $ghLines.Add('') | Out-Null
        $ghLines.Add('<!-- TODO: 機能の概要・対象ユーザー・移行/有効化方法を日本語で 2〜3 行 -->') | Out-Null
        $ghLines.Add('') | Out-Null
    }
    Save-Utf8File -Path (Join-Path $reportDir 'github-changelog.md') -Lines $ghLines.ToArray()

    # ----- リポジトリ別 -----
    foreach ($cfg in $script:RepoConfigs) {
        $repoSlug = $cfg.Owner + '/' + $cfg.Name
        Write-Host ('Collecting GitHub activity for ' + $repoSlug + '...')

        if ($SkipGitHub) {
            $activity = $null
            Write-Host '  (-SkipGitHub: gh CLI is bypassed)'
        } else {
            $activity = Get-RepoActivity -Repo $repoSlug -Since $previousCheckAtUtc -Until $nowUtc -CacheDir '.tmp/gh'
        }

        if ($cfg.Mode -eq 'detail') {
            $bodyLines = New-RepoDetailBody -RepoConfig $cfg -Activity $activity -Since $previousCheckAtUtc -Until $nowUtc
        } else {
            $bodyLines = New-RepoSummaryBody -RepoConfig $cfg -Activity $activity -Since $previousCheckAtUtc -Until $nowUtc
        }
        Save-Utf8File -Path (Join-Path $reportDir $cfg.File) -Lines $bodyLines
    }

    # ----- Validation -----
    Write-Host 'Validating output files...'
    $expectedDateMarker = $nowUtc.ToString('yyyy-MM-dd')
    Test-OutputFile -Path (Join-Path $reportDir 'index.md')                          -ExpectedHeaderPrefix '# 差分レポート'                              -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'azure.md')                          -ExpectedHeaderPrefix '# Azure 更新'                                -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'github-changelog.md')               -ExpectedHeaderPrefix '# GitHub Changelog'                          -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'agent-framework.md')                -ExpectedHeaderPrefix '# microsoft/agent-framework'                 -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'aspnetcore.md')                     -ExpectedHeaderPrefix '# dotnet/aspnetcore'                         -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'azure-functions-dotnet-worker.md')  -ExpectedHeaderPrefix '# Azure/azure-functions-dotnet-worker'       -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'extensions.md')                     -ExpectedHeaderPrefix '# dotnet/extensions'                         -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'reactiveproperty.md')               -ExpectedHeaderPrefix '# runceel/ReactiveProperty'                  -RequiredMarker $expectedDateMarker
    Test-OutputFile -Path (Join-Path $reportDir 'aspire.md')                         -ExpectedHeaderPrefix '# microsoft/aspire'                          -RequiredMarker $expectedDateMarker
    Write-Host '  All 9 output files passed validation.' -ForegroundColor Green

    if ($DryRun) {
        Write-Host ('Dry-run complete. Report output would be under ' + $reportDir)
        return
    }

    $timestampValue = $nowUtc.ToString('yyyy-MM-dd HH:mm:ss')
    [System.IO.File]::WriteAllText((Join-Path $repoRoot 'timestamp.md'), $timestampValue, (New-Object System.Text.UTF8Encoding($false)))

    if (-not $SkipCommit) {
        git add $reportDir 'timestamp.md'
        $commitMessage = 'Daily check report: ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' UTC'
        git commit -m $commitMessage

        if (-not $SkipPush) {
            git push
        }
    }

    Write-Host ('Report generated at ' + $reportDir)
}
finally {
    Pop-Location
}
