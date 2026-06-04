[CmdletBinding()]
param(
    [switch]$DryRun,
    [switch]$SkipCommit,
    [switch]$SkipPush,
    [string]$GeneratedAtUtc
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-PreviousCheckAtUtc {
    param([string]$TimestampPath)

    if (Test-Path -LiteralPath $TimestampPath) {
        $value = (Get-Content -LiteralPath $TimestampPath -TotalCount 1).Trim()
        if ([string]::IsNullOrWhiteSpace($value)) {
            throw 'timestamp.md is empty.'
        }

        return [DateTime]::ParseExact($value, 'yyyy-MM-dd HH:mm:ss', [System.Globalization.CultureInfo]::InvariantCulture, [System.Globalization.DateTimeStyles]::AssumeUniversal)
    }

    return (Get-Date).ToUniversalTime().AddHours(-24)
}

function Get-FeedXml {
    param([string]$Uri, [string]$OutFile)

    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $OutFile) | Out-Null
    Invoke-RestMethod -Uri $Uri -Method Get -OutFile $OutFile | Out-Null
    return [xml](Get-Content -LiteralPath $OutFile -Raw)
}

function ConvertTo-UtcDateTime {
    param(
        [string]$Value,
        [DateTime]$Fallback
    )

    if ([string]::IsNullOrWhiteSpace($Value)) {
        return $Fallback
    }

    try {
        return [DateTime]::Parse($Value, [System.Globalization.CultureInfo]::InvariantCulture, [System.Globalization.DateTimeStyles]::AssumeUniversal)
    }
    catch {
        return $Fallback
    }
}

function New-ReportUnit {
    param(
        [string]$Path,
        [string]$Title,
        [string]$Body
    )

    Set-Content -LiteralPath $Path -Value (@(('# ' + $Title), '', $Body) -join [Environment]::NewLine) -NoNewline
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..' '..' '..' '..')
Push-Location $repoRoot
try {
    Write-Host 'Preparing temporary workspace...'
    New-Item -ItemType Directory -Force -Path '.tmp' | Out-Null

    $nowUtc = if ([string]::IsNullOrWhiteSpace($GeneratedAtUtc)) {
        (Get-Date).ToUniversalTime()
    }
    else {
        [DateTime]::ParseExact($GeneratedAtUtc, 'yyyy-MM-dd HH:mm:ss', [System.Globalization.CultureInfo]::InvariantCulture, [System.Globalization.DateTimeStyles]::AssumeUniversal)
    }

    $previousCheckAtUtc = Get-PreviousCheckAtUtc -TimestampPath (Join-Path $repoRoot 'timestamp.md')
    $year = $nowUtc.ToString('yyyy')
    $month = $nowUtc.ToString('MM')
    $day = $nowUtc.ToString('dd')
    $reportDir = Join-Path 'reports' (Join-Path $year (Join-Path $month $day))

    New-Item -ItemType Directory -Force -Path $reportDir | Out-Null

    $azureXml = Get-FeedXml -Uri 'https://www.microsoft.com/releasecommunications/api/v2/azure/rss' -OutFile '.tmp/azure-rss.xml'
    $githubChangelogXml = Get-FeedXml -Uri 'https://github.blog/changelog/feed/' -OutFile '.tmp/github-changelog.xml'

    $azureItems = @($azureXml.rss.channel.item | Where-Object {
        $pubDate = ConvertTo-UtcDateTime -Value $_.pubDate -Fallback ([DateTime]::MinValue)
        $pubDate -gt $previousCheckAtUtc -and $pubDate -le $nowUtc
    })

    $githubItems = @($githubChangelogXml.rss.channel.item | Select-Object -First 8)

    $indexBody = @(
        ('# 差分レポート — ' + $nowUtc.ToString('yyyy-MM-dd') + ' 版'),
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
        ''
    ) -join [Environment]::NewLine

    $azureBody = @(
        '# Azure 更新',
        '',
        '取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>',
        '',
        ('対象期間: ' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss')),
        '',
        ('Azure RSS による新着項目は ' + $azureItems.Count + ' 件です。'),
        ''
    )

    $azureBody += '> このファイルは骨組みです。各項目に **2〜4 行の日本語解説** を追記してから commit してください (references/report-template.md の 2 節)。'
    $azureBody += ''

    foreach ($item in $azureItems | Select-Object -First 10) {
        $pubDate = ConvertTo-UtcDateTime -Value $item.pubDate -Fallback $nowUtc
        $title = [string]($item.title)
        $link = [string]($item.link)
        $description = [string]($item.description)
        $azureBody += '## ' + $title
        $azureBody += ''
        $azureBody += '- 公開日 (UTC): `' + $pubDate.ToString('yyyy-MM-dd HH:mm:ss') + '`'
        $azureBody += '- リンク: <' + $link + '>'
        $azureBody += ''
        $azureBody += '**原文 (要約前)**:'
        $azureBody += ''
        $azureBody += ([System.Net.WebUtility]::HtmlDecode(($description -replace '<[^>]+>', ' ').Trim()))
        $azureBody += ''
        $azureBody += '<!-- TODO: 何が変わるか / 誰に影響するか / どう使い始める・移行するか を 2〜4 行で日本語要約 -->'
        $azureBody += ''
    }

    $githubBody = @(
        '# GitHub Changelog',
        '',
        '取得元: <https://github.blog/changelog/feed/>',
        '',
        ('対象期間: ' + $previousCheckAtUtc.ToString('yyyy-MM-dd HH:mm:ss') + ' 〜 ' + $nowUtc.ToString('yyyy-MM-dd HH:mm:ss')),
        '',
        ('GitHub Changelog フィードから ' + $githubItems.Count + ' 件を取り込みました。'),
        ''
    )

    $githubBody += '> このファイルは骨組みです。重要度の高い項目を選び、**日本語の解説**（変更内容と利用者への影響）を追記してから commit してください。'
    $githubBody += ''

    foreach ($item in $githubItems) {
        $published = ConvertTo-UtcDateTime -Value $item.pubDate -Fallback $nowUtc
        $title = [string]($item.title)
        $link = [string]($item.link)
        $description = [string]($item.description)
        $githubBody += '## ' + $title
        $githubBody += ''
        $githubBody += '- 公開日 (UTC): `' + $published.ToString('yyyy-MM-dd HH:mm:ss') + '`'
        $githubBody += '- リンク: <' + $link + '>'
        $githubBody += ''
        $githubBody += '**原文 (要約前)**:'
        $githubBody += ''
        $githubBody += ([System.Net.WebUtility]::HtmlDecode(($description -replace '<[^>]+>', ' ').Trim()))
        $githubBody += ''
        $githubBody += '<!-- TODO: 機能の概要・対象ユーザー・移行/有効化方法を日本語で 2〜3 行 -->'
        $githubBody += ''
    }

    $repoBody = @(
        '> このファイルは **骨組み** です。`references/report-template.md` の対応セクションに従って本文を執筆してから commit してください。',
        '',
        '## 執筆ガイド',
        '',
        '- `gh search prs` / `gh search issues` で対象期間の PR / Issue を取得し、`.tmp/` に保存する。',
        '- 統計サマリー表（マージ済み PR / 新規 / クローズ / Issue 等の件数）を埋める。',
        '- サマリーモードのリポジトリ: 主要な変更点を 3〜8 行で日本語要約し、変化のあった PR / Issue をテーブルに列挙する。',
        '- 詳細モード (`microsoft/agent-framework` のみ): API シグネチャ変更・破壊的変更・新規抽象・依存パッケージのバージョン変更を中心に、コミットレベルで深掘りする。可能ならビフォー/アフターのコードを示す。',
        '- 期間内に変更が無い場合は、その旨を 1 行で書き、テーブルは省略してよい。',
        ''
    ) -join [Environment]::NewLine

    @(
        @{ Path = (Join-Path $reportDir 'index.md'); Title = '差分レポート — ' + $nowUtc.ToString('yyyy-MM-dd') + ' 版 (インデックス)'; Body = $indexBody },
        @{ Path = (Join-Path $reportDir 'azure.md'); Title = 'Azure 更新'; Body = ($azureBody -join [Environment]::NewLine) },
        @{ Path = (Join-Path $reportDir 'github-changelog.md'); Title = 'GitHub Changelog'; Body = ($githubBody -join [Environment]::NewLine) },
        @{ Path = (Join-Path $reportDir 'agent-framework.md'); Title = 'microsoft/agent-framework'; Body = $repoBody },
        @{ Path = (Join-Path $reportDir 'aspnetcore.md'); Title = 'dotnet/aspnetcore'; Body = $repoBody },
        @{ Path = (Join-Path $reportDir 'azure-functions-dotnet-worker.md'); Title = 'Azure/azure-functions-dotnet-worker'; Body = $repoBody },
        @{ Path = (Join-Path $reportDir 'extensions.md'); Title = 'dotnet/extensions'; Body = $repoBody },
        @{ Path = (Join-Path $reportDir 'reactiveproperty.md'); Title = 'runceel/ReactiveProperty'; Body = $repoBody },
        @{ Path = (Join-Path $reportDir 'aspire.md'); Title = 'microsoft/aspire'; Body = $repoBody }
    ) | ForEach-Object {
        $content = @(('# ' + $_.Title), '', $_.Body) -join [Environment]::NewLine
        Set-Content -LiteralPath $_.Path -Value $content -NoNewline
    }

    if ($DryRun) {
        Write-Host ('Dry-run complete. Report output would be under ' + $reportDir)
        return
    }

    $timestampValue = $nowUtc.ToString('yyyy-MM-dd HH:mm:ss')
    Set-Content -LiteralPath 'timestamp.md' -Value $timestampValue -NoNewline

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
