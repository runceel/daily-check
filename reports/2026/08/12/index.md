# 差分レポート — 2026-08-12 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-11 23:30:11` |
| レポート生成日時 (JST) | `2026-08-12 08:30:11` |
| 前回チェック時刻 (UTC) | `2026-08-03 02:16:33` |
| 対象期間 (UTC) | `2026-08-03 02:16:33 〜 2026-08-11 23:30:11` |

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

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7567](https://github.com/microsoft/agent-framework/pull/7567) | .NET: [BREAKING] Rename to AgentIsolationKeyProvider | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7534](https://github.com/microsoft/agent-framework/issues/7534) | Python: [Bug]: Breaking for non-reasoning Foundry model deployment (gpt 4.1).`FoundryChatClient` unconditionally requests `reasoning.encrypted_content` | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7533](https://github.com/microsoft/agent-framework/pull/7533) | [BREAKING] Python: Migrate FHA to responses==2.0.0b1 and add Foundry state store | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7521](https://github.com/microsoft/agent-framework/pull/7521) | Python: [BREAKING] Update functional workflow continuation handling | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7517](https://github.com/microsoft/agent-framework/pull/7517) | Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7384](https://github.com/microsoft/agent-framework/issues/7384) | .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7156](https://github.com/microsoft/agent-framework/issues/7156) | .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7466](https://github.com/microsoft/agent-framework/issues/7466) | Python: Security: 64 official samples ingest untrusted content without SecureAgentConfig (of 357 that omit it entirely) | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7463](https://github.com/microsoft/agent-framework/issues/7463) | [Feature]: Support security copilot | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7383](https://github.com/microsoft/agent-framework/issues/7383) | Python: Bind tool-approval responses to surfaced approval requests | open |
| GA 昇格 | microsoft/agent-framework | [Issue#4254](https://github.com/microsoft/agent-framework/issues/4254) | .NET: A2A Hosting GA | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#68214](https://github.com/dotnet/aspnetcore/pull/68214) | Fix extra `\n` in resourceManagement for breaking change announcement | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67077](https://github.com/dotnet/aspnetcore/pull/67077) | Remove long-obsolete MVC APIs targeted for removal | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#64020](https://github.com/dotnet/aspnetcore/pull/64020) | Delete deprecated ConcurrencyLimiter middleware | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#61726](https://github.com/dotnet/aspnetcore/issues/61726) | Breaking changes in identity hashing algorythms check | closed |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#47571](https://github.com/dotnet/aspnetcore/pull/47571) | Obsolete concurrency limiter middleware. | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68233](https://github.com/dotnet/aspnetcore/pull/68233) | [Infrastructure] Update vulnerable npm dependencies | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68232](https://github.com/dotnet/aspnetcore/pull/68232) | [release/10.0] Update vulnerable npm dependencies | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68231](https://github.com/dotnet/aspnetcore/pull/68231) | [release/9.0] Update RepoTasksSystemSecurityCryptographyXmlVersion to 8.0.4 | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68187](https://github.com/dotnet/aspnetcore/pull/68187) | [release/2.3] Add direct PackageReference to System.Security.Cryptography.Xml | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#48299](https://github.com/dotnet/aspnetcore/issues/48299) | SecurityStampValidator forces sign out of TwoFactorRememberMeScheme, which throws exception when no sign-out authentication handler is registered | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#47368](https://github.com/dotnet/aspnetcore/issues/47368) | [Upgrade to .Net7] `SecurityStampValidator<TUser>` forces signout of `TwoFactorRememberMeScheme` which leads to InvalidOperationException in case scheme is not registered | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67134](https://github.com/dotnet/aspnetcore/issues/67134) | Deprecate Microsoft.AspNetCore.Grpc.Swagger | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64858](https://github.com/dotnet/aspnetcore/issues/64858) | Feedback / Concerns on Deprecation of OpenAPI Analyzers in .NET 10 Controllers | open |
| 非推奨/廃止 | dotnet/extensions | [Issue#6594](https://github.com/dotnet/extensions/issues/6594) | [API Proposal]: Obsolete HybridCache compression options | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19077](https://github.com/microsoft/aspire/pull/19077) | Expose resolved environment variables to debug launch producers | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18991](https://github.com/microsoft/aspire/pull/18991) | Remove misleading TerminalOptions.Shell no-op | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18692](https://github.com/microsoft/aspire/pull/18692) | Update Foundry hosted agent protocol payload | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19248](https://github.com/microsoft/aspire/pull/19248) | Redact owning resource's own secret env var in `describe` | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19231](https://github.com/microsoft/aspire/pull/19231) | [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19123](https://github.com/microsoft/aspire/pull/19123) | [auto-sec] remove js-yaml from 9 npm manifests (GHSA-5p4m-2wfm-xmqj); 2 deferred | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19122](https://github.com/microsoft/aspire/pull/19122) | [auto-sec] aspire npm low-risk batch: fast-uri 3.1.5, nanoid 3.3.17, hono 4.12.34 | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19053](https://github.com/microsoft/aspire/pull/19053) | [auto-sec] npm: @angular 21.2.19 + brace-expansion 5.0.9 (frontend cluster) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19052](https://github.com/microsoft/aspire/pull/19052) | [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19006](https://github.com/microsoft/aspire/pull/19006) | Bump the uv group across 2 directories with 1 update | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18995](https://github.com/microsoft/aspire/pull/18995) | [auto-sec] Consolidate aspire low-risk dependency security remediations (npm/pip/yarn) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18983](https://github.com/microsoft/aspire/pull/18983) | Bump the npm_and_yarn group across 9 directories with 9 updates | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18858](https://github.com/microsoft/aspire/pull/18858) | [auto-sec] Consolidate Aspire JavaScript template dependency security remediations | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#17902](https://github.com/microsoft/aspire/pull/17902) | [security] Bump aiohttp and starlette in FoundryAgentBasic playground | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#14882](https://github.com/microsoft/aspire/pull/14882) | Add File input type to the Interaction Service | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19090](https://github.com/microsoft/aspire/pull/19090) | Mark ResourceUrlAnnotation.DisplayOrder as obsolete | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19022](https://github.com/microsoft/aspire/pull/19022) | Bump the npm_and_yarn group across 1 directory with 2 updates | closed |
| 非推奨/廃止 | microsoft/aspire | [Issue#18650](https://github.com/microsoft/aspire/issues/18650) | [AspireE2E] AppHost fails to resolve Aspire CLI bundle until Aspire CLI is initialized via 'aspire new' | closed |
| ⚠ 破壊的変更 | microsoft/mxc | [PR#732](https://github.com/microsoft/mxc/pull/732) | Block breaking changes to the dev schema at pull-request time | closed |
| ⚠ セキュリティ | microsoft/mxc | [PR#803](https://github.com/microsoft/mxc/pull/803) | fix(logger): stop writing security warnings to stderr | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#634](https://github.com/microsoft/mxc/pull/634) | [Bubblewrap/LXC] Address network policy gaps - schema | closed |
| ⚠ セキュリティ | microsoft/mxc | [PR#632](https://github.com/microsoft/mxc/pull/632) | [LXC] Address network policy gaps - model 2 (deny-all-except-proxy) | closed |
| 非推奨/廃止 | microsoft/mxc | [Issue#777](https://github.com/microsoft/mxc/issues/777) | LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported | open |
| 非推奨/廃止 | microsoft/mxc | [PR#575](https://github.com/microsoft/mxc/pull/575) | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | open |
| 非推奨/廃止 | github/copilot-sdk | [PR#2129](https://github.com/github/copilot-sdk/pull/2129) | Add `history.clearContext` and `Tool.isTerminal` across all SDKs | merged |
| 非推奨/廃止 | github/copilot-sdk | [Issue#1557](https://github.com/github/copilot-sdk/issues/1557) | Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569256) | [Launched] Generally Available: 2.2X IDPS performance optimization in Azure Firewall | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568905) | [Launched] Generally Available: SharePoint Connector for Azure Databricks | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568910) | [Launched] Generally Available: Unity AI Gateway on Azure Databricks | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568825) | [Launched] Generally Available: Explicit proxy in Azure Firewall  | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568661) | Retirement: Nested confidential (cc_v5) VMs will be retired on September 1, 2026 | — |
| ⚠ セキュリティ | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568837) | [In preview] Public Preview: Perimeter link feature in network security perimeter  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568605) | [Launched] Generally Available: Azure Virtual Network routing appliance | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568600) | [Launched] Generally Available: Trusted Launch as Default | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568339) | [Launched] Generally Available: Immutability to the most recent seven days of backups on Azure SQL Database and Azure SQL Managed Instance  | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-11-upcoming-deprecation-of-mai-code-1-flash) | Upcoming deprecation of MAI-Code-1-Flash | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-10-custom-thread-subscriptions-are-being-deprecated) | Custom thread subscriptions are being deprecated | — |

## エグゼクティブサマリー

- **破壊的変更**: [Agent Framework の .NET/Python API 移行](./agent-framework.md)（`AgentIsolationKeyProvider` 改名、FHA の Responses/state store 移行）と、[ASP.NET Core の antiforgery・旧 MVC API・ConcurrencyLimiter 整理](./aspnetcore.md)を確認してください。
- **セキュリティ対応**: [Aspire の JavaScript/Python 依存修正](./aspire.md)、[mxc の sandbox/network policy 強化](./mxc.md)、[ASP.NET Core の依存更新](./aspnetcore.md)が進みました。
- **Azure の一般提供**: [Azure Firewall の性能向上・explicit proxy](./azure.md)、[Databricks の SharePoint Connector / Unity AI Gateway](./azure.md)、Trusted Launch と SQL バックアップ不変性が利用可能になりました。
- **要移行**: [cc_v5 confidential VM の 2026-09-01 廃止](./azure.md)と、[MAI-Code-1-Flash の 2026-09-10 非推奨化](./github-changelog.md)に向けた切り替えが必要です。
- [Copilot SDK の多言語 API 拡張](./copilot-sdk.md)では `history.clearContext` と `Tool.isTerminal` が追加され、Bedrock の非推奨 `temperature` 問題も継続監視対象です。

## 主要トレンド

AI エージェント基盤では、セッション・状態ストア・ツール承認などの契約整備が進む一方、破壊的変更の追随が必要です。  
複数リポジトリで npm/pip/yarn 依存の脆弱性修正が集中し、テンプレートと生成 lockfile の更新が共通課題になっています。  
Azure ではネットワーク性能・セキュリティ・AI ガバナンス機能の GA がまとまり、既存環境への適用判断が増えています。

## 次回チェックに向けたメモ

- Agent Framework の [#7384](https://github.com/microsoft/agent-framework/issues/7384)、[#7466](https://github.com/microsoft/agent-framework/issues/7466)、[#7521](https://github.com/microsoft/agent-framework/pull/7521)、[#7517](https://github.com/microsoft/agent-framework/pull/7517) のワークフロー状態・SecureAgentConfig・継続処理変更を確認します。
- Aspire の [#19248](https://github.com/microsoft/aspire/pull/19248)、[#19052](https://github.com/microsoft/aspire/pull/19052) と、延期された JavaScript 依存修正の適用状況を追跡します。
- MXC の [#803](https://github.com/microsoft/mxc/pull/803)、RHEL 10 の [#777](https://github.com/microsoft/mxc/issues/777)、network policy 修正の最終状態を確認します。
- Azure は cc_v5 廃止（2026-09-01）、MAI-Code-1-Flash 廃止（2026-09-10）、Fabric Item Recovery の既定有効化（2026-08-23）を重点確認します。
- 前回メモの Azure AI Gateway / Claude Opus 5 / Firewall ヘッダー挿入、GitHub Changelog の JetBrains MCP・OpenTelemetry・enterprise settings も継続確認します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-08-11 23:30:11","previousCheckAtUtc":"2026-08-03 02:16:33"} -->