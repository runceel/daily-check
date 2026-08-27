# 差分レポート — 2026-08-24 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-24 00:06:51` |
| レポート生成日時 (JST) | `2026-08-24 09:06:51` |
| 前回チェック時刻 (UTC) | `2026-08-17 01:53:51` |
| 対象期間 (UTC) | `2026-08-17 01:53:51 〜 2026-08-24 00:06:51` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| microsoft/agent-framework-durable-extension | [agent-framework-durable-extension.md](./agent-framework-durable-extension.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7812](https://github.com/microsoft/agent-framework/pull/7812) | [BREAKING] Python: Bump package versions for 1.15.0 release | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7774](https://github.com/microsoft/agent-framework/pull/7774) | .NET: [BREAKING] Migrate MCP long-running task support to the 2026-07-28 Tasks extension | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7673](https://github.com/microsoft/agent-framework/pull/7673) | [BREAKING] Python: Consolidate OTel GenAI Semantic Conventions versions | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7669](https://github.com/microsoft/agent-framework/pull/7669) | Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#3790](https://github.com/microsoft/agent-framework/issues/3790) | .NET: [Bug]: AG-UI hosting drops FinishReason on RunFinishedEvent, breaking client-side tool execution | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7828](https://github.com/microsoft/agent-framework/pull/7828) | .NET: Bump Aspire.Microsoft.Azure.Cosmos from 13.1.0 to 13.5.2 | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7827](https://github.com/microsoft/agent-framework/pull/7827) | .NET: Bump Aspire.Hosting.Azure.CognitiveServices from 13.1.0 to 13.5.2 | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7826](https://github.com/microsoft/agent-framework/pull/7826) | .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 | open |
| GA 昇格 | microsoft/agent-framework | [Issue#4254](https://github.com/microsoft/agent-framework/issues/4254) | .NET: A2A Hosting GA | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) | Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#68465](https://github.com/dotnet/aspnetcore/pull/68465) | Harden chunked encoding parsing | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#47410](https://github.com/dotnet/aspnetcore/issues/47410) | Only call AddDataProtection in Authentication Services that require it | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68694](https://github.com/dotnet/aspnetcore/issues/68694) | Consider clock skew for Identity security stamp validation intervals | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68666](https://github.com/dotnet/aspnetcore/issues/68666) | Blazor Web App OpenID Connect sign-in fails with "failed antiforgery validation" on the form_post callback under .NET 11 automatic CSRF protection | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68486](https://github.com/dotnet/aspnetcore/issues/68486) | [Validation] A new Blazor Web App under a strict Content Security Policy | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67721](https://github.com/dotnet/aspnetcore/issues/67721) | SNI parsing accepts malformed server names | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67559](https://github.com/dotnet/aspnetcore/issues/67559) | Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#64952](https://github.com/dotnet/aspnetcore/issues/64952) | WebAssembly.Authentication breaks content security policy, requires unsafe-eval | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#47368](https://github.com/dotnet/aspnetcore/issues/47368) | [Upgrade to .Net7] `SecurityStampValidator<TUser>` forces signout of `TwoFactorRememberMeScheme` which leads to InvalidOperationException in case scheme is not registered | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68575](https://github.com/dotnet/aspnetcore/pull/68575) | [release/11.0-rc1] Obsolete Bootstrap 4 Identity UI support | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68477](https://github.com/dotnet/aspnetcore/pull/68477) | Obsolete Bootstrap 4 Identity UI support | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#64400](https://github.com/dotnet/aspnetcore/pull/64400) | Obsolete IdentityUserContext.SchemaVersion property | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#64059](https://github.com/dotnet/aspnetcore/pull/64059) | Add comprehensive ObsoletionReport.md tracking all obsolete APIs across the codebase | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#63494](https://github.com/dotnet/aspnetcore/issues/63494) | OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#62728](https://github.com/dotnet/aspnetcore/issues/62728) | Obsolete ResponseCaching | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#62552](https://github.com/dotnet/aspnetcore/pull/62552) | Remove all SYSLIB0057 suppressions and replace obsolete X509Certificate2 constructors with X509CertificateLoader | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7705](https://github.com/dotnet/extensions/pull/7705) | [Infrastructure] Update vulnerable npm dependencies | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19510](https://github.com/microsoft/aspire/pull/19510) | Update Cosmos DB emulator defaults | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18698](https://github.com/microsoft/aspire/pull/18698) | Flatten single optional DTO 'options' parameter in Go polyglot generator | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19513](https://github.com/microsoft/aspire/pull/19513) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18812](https://github.com/microsoft/aspire/pull/18812) | [auto-sec] Consolidate aspire dependency security remediations | merged |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18484](https://github.com/microsoft/aspire/issues/18484) | aspire start process remains vulnerable to launcher process group cleanup | closed |
| 非推奨/廃止 | microsoft/aspire | [PR#19519](https://github.com/microsoft/aspire/pull/19519) | Reference only: Aspire.Hosting.Chaos pilot for the smart-proxy spike (not for merge) | open |
| 非推奨/廃止 | microsoft/aspire | [PR#18810](https://github.com/microsoft/aspire/pull/18810) | Bump mcp from 1.23.3 to 1.28.1 in /playground/FoundryAgentBasic/app in the uv group across 1 directory | closed |
| 非推奨/廃止 | microsoft/aspire | [Issue#17993](https://github.com/microsoft/aspire/issues/17993) | Add Java hosting integration | closed |
| 非推奨/廃止 | microsoft/mxc | [PR#956](https://github.com/microsoft/mxc/pull/956) | [Bubblewrap] Enforce network.enforcementMode='firewall' and reject unhonorable network elements at schema 0.8+ | merged |
| 非推奨/廃止 | microsoft/mxc | [Issue#777](https://github.com/microsoft/mxc/issues/777) | LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported | closed |
| GA 昇格 | microsoft/mxc | [Issue#1002](https://github.com/microsoft/mxc/issues/1002) | LXC E2E: the GA egress allow-path test depends on unauthenticated api.github.com | open |
| GA 昇格 | microsoft/mxc | [PR#974](https://github.com/microsoft/mxc/pull/974) | Realign Seatbelt with the official 0.8 GA networking schema | merged |
| GA 昇格 | microsoft/mxc | [Issue#655](https://github.com/microsoft/mxc/issues/655) | [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2381](https://github.com/github/copilot-sdk/issues/2381) | [Python] `pydantic` unconditionally imported in `tools.py`, breaking low-level Tool API users | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569743) | [Launched] Generally Available: Summarized advertised gateway prefixes for route advertisement | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569684) | [Launched] Generally Available: Azure Databricks Lakebase in four additional regions | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569145) | [Launched] Generally Available: Azure SQL updates for mid-August 2026  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569160) | [Launched] Generally Available: Azure SQL Database provisioning in MSSQL extension  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569051) | [Launched] Generally Available: vCore Customization: Disable Multithreading and Configurable Constrained Cores   | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569515) | [Launched] Generally Available: BYON (Bring Your Own NIC) in Azure Site Recovery | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569535) | Retirement: Azure VMware Solution License-included service will be retired August 30, 2027 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568952) | [Launched] Generally Available: Managed Instance on Azure App Service | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=557775) | [Launched] Generally Available: Dragon Copilot Physician Apps and Agents on Microsoft Marketplace  | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-20-pin-projects-views-and-milestones-to-the-repository-sidebar) | Pinning saved views to the repository issues sidebar is generally available and more | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-20-windows-11-arm64-vs2026-image-generally-available) | Windows 11 arm64 VS2026 image generally available | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更**: [MCP 長時間タスクの Tasks 拡張移行](https://github.com/microsoft/agent-framework/pull/7774) と [Python 1.15.0](https://github.com/microsoft/agent-framework/pull/7812) を利用者は確認してください。
- **Azure VMware Solution の廃止予定**: [ライセンス込みサービスが 2027-08-30 に廃止](https://azure.microsoft.com/updates?id=569535)されるため、VCF ポータブルライセンスへの移行計画が必要です。
- **セキュリティ強化**: [ASP.NET Core の解析・認証関連課題](https://github.com/dotnet/aspnetcore/pulls) と [依存 npm 更新](https://github.com/dotnet/extensions/pull/7705)を確認してください。
- **開発者体験の GA/プレビュー**: [Azure Firewall IPv6](https://azure.microsoft.com/updates?id=569520)、[Azure SQL Database provisioning](https://azure.microsoft.com/updates?id=569160)、[GitHub Copilot の Slack/Teams 連携](https://github.blog/changelog/2026-08-21-the-new-github-copilot-experience-in-slack)が追加されました。

## 主要トレンド

エージェント基盤では長時間実行・観測性・復旧性を高める一方、API と依存関係の互換性確認が増えています。Azure と GitHub では、ネットワーク／セキュリティ管理と開発者向けツールの GA・プレビューが並行して進みました。

## 次回チェックに向けたメモ

Agent Framework の AgentFileStore 行読み取り契約、A2A Hosting GA、Durable Extension の durable 2.x 移行を継続確認します。Azure VMware Solution は 2027-08-30 の廃止に向けた BYOL 計画、ASP.NET Core と mxc はセキュリティ／スキーマ変更の進展を次回重点確認します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-08-24 00:06:51","previousCheckAtUtc":"2026-08-17 01:53:51"} -->