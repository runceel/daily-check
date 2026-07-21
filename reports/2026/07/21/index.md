# 差分レポート — 2026-07-21 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-21 00:15:24` |
| レポート生成日時 (JST) | `2026-07-21 09:15:24` |
| 前回チェック時刻 (UTC) | `2026-07-17 00:36:43` |
| 対象期間 (UTC) | `2026-07-17 00:36:43 〜 2026-07-21 00:15:24` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7201](https://github.com/microsoft/agent-framework/issues/7201) | Python: OpenAIChatCompletionClient(credential=...) hardcodes token scope to cognitiveservices.azure.com, breaking Foundry project endpoints that require the ai.azure.com audience | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7158](https://github.com/microsoft/agent-framework/pull/7158) | [BREAKING] Python: Ensure session isolation for FHA invocation impl | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7156](https://github.com/microsoft/agent-framework/issues/7156) | .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7120](https://github.com/microsoft/agent-framework/pull/7120) | Python: [BREAKING] Graduate create_harness_agent out of experimental | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7119](https://github.com/microsoft/agent-framework/pull/7119) | .NET: [BREAKING] Graduate HarnessAgent | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7111](https://github.com/microsoft/agent-framework/pull/7111) | .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67097](https://github.com/dotnet/aspnetcore/pull/67097) | Update default OpenApi version to 3.2 | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67902](https://github.com/dotnet/aspnetcore/issues/67902) | Failed to restore dogfooding tests due to error NU1902: Package 'AngleSharp' 0.9.9 has a known moderate severity vulnerability | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67876](https://github.com/dotnet/aspnetcore/issues/67876) | @microsoft/signalr@10.0.0 has vulnerable package ws@7.5.11 - needs upgrade to 8.21.1 | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67862](https://github.com/dotnet/aspnetcore/pull/67862) | Deprecate the Blazor WebAssembly DevServer package | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67861](https://github.com/dotnet/aspnetcore/pull/67861) | Deprecate UseWebAssemblyDebugging and remove it from Blazor templates | merged |
| ⚠ 破壊的変更 | Azure/azure-functions-dotnet-worker | [PR#3457](https://github.com/Azure/azure-functions-dotnet-worker/pull/3457) | Remove implicit Worker package reference from Azure.Functions.Sdk | merged |
| ⚠ セキュリティ | Azure/azure-functions-dotnet-worker | [PR#3448](https://github.com/Azure/azure-functions-dotnet-worker/pull/3448) | Redact credentials and tokens from ZipDeploy logs | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18270](https://github.com/microsoft/aspire/issues/18270) | C# AppHosts will require the aspire CLI to run | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18114](https://github.com/microsoft/aspire/issues/18114) | `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18812](https://github.com/microsoft/aspire/pull/18812) | [auto-sec] Consolidate aspire dependency security remediations | merged |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18484](https://github.com/microsoft/aspire/issues/18484) | aspire start process remains vulnerable to launcher process group cleanup | closed |
| ⚠ セキュリティ | microsoft/mxc | [PR#650](https://github.com/microsoft/mxc/pull/650) | Reject nested deniedPaths overlaps that WSLC cannot mask | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#630](https://github.com/microsoft/mxc/pull/630) | Harden LXC denied-path masking and policy precedence | merged |
| ⚠ セキュリティ | github/copilot-sdk | [Issue#2007](https://github.com/github/copilot-sdk/issues/2007) | hono dev dependency has 5 known security advisories (1 high, 4 medium) | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567847) | [Launched] Generally Available: IPv6 support for Azure VPN Gateway | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567646) | [Launched] Generally Available: Azure Functions support for Python 3.14 | — |
| ⚠ セキュリティ | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567527) | [Launched] Generally Available: Microsoft Defender security assessments for Azure Database for PostgreSQL Flexible Server  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567787) | [Launched] Generally Available: Encryption in Transit for Azure Files NFS Shares in Azure Kubernetes Service (AKS) | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-20-github-code-quality-is-now-generally-available) | GitHub Code Quality is now generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-17-repository-level-github-copilot-usage-metrics-generally-available) | Repository-level GitHub Copilot usage metrics generally available | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更が集中**: Python の `create_harness_agent` が experimental を卒業した [#7120](https://github.com/microsoft/agent-framework/pull/7120) 一方、FHA session isolation [#7158](https://github.com/microsoft/agent-framework/pull/7158)、.NET session 更新不具合 [#7156](https://github.com/microsoft/agent-framework/issues/7156)、tool approval の相関強制 [#7111](https://github.com/microsoft/agent-framework/pull/7111) は継続確認が必要です。
- **.NET Web / Functions の既定・参照モデルが変化**: ASP.NET Core は既定 OpenAPI を 3.2 に変更 [#67097](https://github.com/dotnet/aspnetcore/pull/67097)し、`UseWebAssemblyDebugging` を非推奨化 [#67861](https://github.com/dotnet/aspnetcore/pull/67861)しました。Azure Functions も暗黙の Worker 参照を削除 [#3457](https://github.com/Azure/azure-functions-dotnet-worker/pull/3457)したため、upgrade 前の build / tooling compatibility 確認が必要です。
- **依存・sandbox・ログのセキュリティ対応**: Aspire の dependency remediation [#18812](https://github.com/microsoft/aspire/pull/18812)、MXC の WSLC policy gap 修正 [#650](https://github.com/microsoft/mxc/pull/650)、Functions ZipDeploy の secret redaction [#3448](https://github.com/Azure/azure-functions-dotnet-worker/pull/3448)が入りました。未解消の SignalR `ws` 脆弱性 [#67876](https://github.com/dotnet/aspnetcore/issues/67876)と Copilot SDK の `hono` 脆弱性 [#2007](https://github.com/github/copilot-sdk/issues/2007)は要追跡です。
- **GitHub の GA と課金確認**: [GitHub Code Quality](https://github.blog/changelog/2026-07-20-github-code-quality-is-now-generally-available) は GA と同時に Public Preview 利用組織の課金が開始されました。管理者は有効化状況を監査し、[repository-level Copilot metrics](https://github.blog/changelog/2026-07-17-repository-level-github-copilot-usage-metrics-generally-available)も導入効果測定へ取り込めます。
- **Azure は network / runtime / data protection を GA**: [VPN Gateway の IPv6](https://azure.microsoft.com/updates?id=567847)、[Functions の Python 3.14](https://azure.microsoft.com/updates?id=567646)、[AKS 上 Azure Files NFS の転送中暗号化](https://azure.microsoft.com/updates?id=567787)、[PostgreSQL Flexible Server の Defender 評価](https://azure.microsoft.com/updates?id=567527)が利用可能になりました。

## 主要トレンド

今回は、experimental / preview 機能の昇格とともに、既定値・暗黙参照・実行環境前提を明示化する変更が複数リポジトリで進みました。AI / agent 関連では session isolation、approval correlation、BYOK test、usage / billing visibility が強化されています。並行して dependency 更新、sandbox policy、secret redaction、転送中暗号化など、supply chain と運用境界の hardening が目立ちます。

## 次回チェックに向けたメモ

- Agent Framework の FHA session isolation [#7158](https://github.com/microsoft/agent-framework/pull/7158)、.NET `HarnessAgent` 昇格 [#7119](https://github.com/microsoft/agent-framework/pull/7119)、tool approval 相関 [#7111](https://github.com/microsoft/agent-framework/pull/7111)、Skills 利用時の session 更新 [#7156](https://github.com/microsoft/agent-framework/issues/7156)について、マージ結果と移行手順を確認します。
- ASP.NET Core の SignalR `ws` 脆弱性 [#67876](https://github.com/dotnet/aspnetcore/issues/67876)、Copilot SDK の `hono` 更新 [#2007](https://github.com/github/copilot-sdk/issues/2007)、MXC の denied-path follow-up [#662](https://github.com/microsoft/mxc/pull/662)と state-aware daemon hardening [#658](https://github.com/microsoft/mxc/pull/658)を継続追跡します。
- dotnet/extensions の reasoning item ID / MessagePack 対応後の安定性と `IChatClient` routing 提案 [#7647](https://github.com/dotnet/extensions/issues/7647)、Aspire の Native AOT Dashboard・構造化ログ契約・C# AppHost の CLI 必須化を引き続き確認します。
- Azure Monitor の高度な platform metrics、Azure SQL 更新、Azure Front Door edge actions の対象範囲に加え、今回 Public Preview の [生成 AI telemetry 保護](https://azure.microsoft.com/updates?id=567594)と [Functions PowerShell 7.6](https://azure.microsoft.com/updates?id=567651)の GA 進展を確認します。
- GitHub は Code Quality の課金 / opt-out 状況、Xcode 27 runner、secret scanning 強化、および新しい Copilot usage metrics field を使う既存集計の schema compatibility を確認します。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-07-17 00:36:43","schema":1,"generatedAtUtc":"2026-07-21 00:15:24"} -->