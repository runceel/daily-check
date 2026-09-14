# 差分レポート — 2026-09-14 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-14 03:34:25` |
| レポート生成日時 (JST) | `2026-09-14 12:34:25` |
| 前回チェック時刻 (UTC) | `2026-09-08 00:54:17` |
| 対象期間 (UTC) | `2026-09-08 00:54:17 〜 2026-09-14 03:34:25` |

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
| Azure/azure-functions-agents-runtime | [azure-functions-agents-runtime.md](./azure-functions-agents-runtime.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8305](https://github.com/microsoft/agent-framework/pull/8305) | Python: [BREAKING] Require committed finish reason for tool calls | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8290](https://github.com/microsoft/agent-framework/pull/8290) | .Net + Python: [BREAKING] Limit MCP skill archives to the ZIP format | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8236](https://github.com/microsoft/agent-framework/pull/8236) | Python: [BREAKING] Scope Redis history storage keys | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8222](https://github.com/microsoft/agent-framework/pull/8222) | Python: Bump package versions for 1.18.0 release | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8188](https://github.com/microsoft/agent-framework/pull/8188) | [BREAKING] Python: support Projects 2.6 by isolating Lab | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8159](https://github.com/microsoft/agent-framework/pull/8159) | [BREAKING] .NET: Isolate LocalCodeAct subprocess environment | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8127](https://github.com/microsoft/agent-framework/pull/8127) | [BREAKING] Python: Refine SecretString handling | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8123](https://github.com/microsoft/agent-framework/pull/8123) | [BREAKING] Python: Move path normalization to common shared code | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8045](https://github.com/microsoft/agent-framework/pull/8045) | [BREAKING] Python: restrict checkpoint deserialization in FoundryCheckpointStore | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7991](https://github.com/microsoft/agent-framework/pull/7991) | .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7669](https://github.com/microsoft/agent-framework/pull/7669) | Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7517](https://github.com/microsoft/agent-framework/pull/7517) | Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8238](https://github.com/microsoft/agent-framework/pull/8238) | Python: Tighten security label enforcement | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8179](https://github.com/microsoft/agent-framework/pull/8179) | .NET: chore: updates source link dependency due to transitive vulnerability | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8141](https://github.com/microsoft/agent-framework/pull/8141) | Python: preserve confidentiality through FIDES security tools | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8138](https://github.com/microsoft/agent-framework/pull/8138) | Python: isolate FIDES security state per session | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8137](https://github.com/microsoft/agent-framework/pull/8137) | Python: isolate FIDES security state per session | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#2254](https://github.com/microsoft/agent-framework/issues/2254) | .NET: Feature Request: Built-in Security & Validation Middleware for AI Function Tools | open |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#8245](https://github.com/microsoft/agent-framework/issues/8245) | Python: [Feature]: Support the stateless MCP 2026-07-28 revision alongside 2025-era peers | open |
| ⚠ セキュリティ | microsoft/agent-framework-durable-extension | [PR#98](https://github.com/microsoft/agent-framework-durable-extension/pull/98) | Fix SourceLink advisory and pin patched .NET SDK | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#69257](https://github.com/dotnet/aspnetcore/pull/69257) | Drop MVC F# project template support | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#67730](https://github.com/dotnet/aspnetcore/pull/67730) | Rename private static fields to use s_ prefix (part 1) | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#64280](https://github.com/dotnet/aspnetcore/issues/64280) | Microsoft.AspNetCore.Razor.Design package contains vulnerable Newtonsoft.Json.dll CVE-2024-21907 | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#69114](https://github.com/dotnet/aspnetcore/pull/69114) | Update MVC F# project template to resolve deprecated warnings | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#69113](https://github.com/dotnet/aspnetcore/issues/69113) | MVC F# project build with warning "FS0044: This construct is deprecated", should update the project template. | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#69107](https://github.com/dotnet/aspnetcore/issues/69107) | Kestrel Libuv Transport NuGet package is not marked deprecated | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20051](https://github.com/microsoft/aspire/pull/20051) | Breaking change: Update Foundry agent dependencies | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20047](https://github.com/microsoft/aspire/pull/20047) | Breaking change: update StackExchange.Redis to 3.2.0 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20045](https://github.com/microsoft/aspire/pull/20045) | Update ModelContextProtocol to 2.2.0 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20043](https://github.com/microsoft/aspire/pull/20043) | Update NATS.Net to 3.2.0 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20042](https://github.com/microsoft/aspire/pull/20042) | Breaking change: update OpenTelemetry to 1.18.0 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20041](https://github.com/microsoft/aspire/pull/20041) | Update MongoDB driver and EF providers | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20035](https://github.com/microsoft/aspire/pull/20035) | Derive Azure Front Door origin names from backend hostnames | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#20034](https://github.com/microsoft/aspire/issues/20034) | Normalize container image reference representation in Aspire 14 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.1 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19077](https://github.com/microsoft/aspire/pull/19077) | Expose resolved environment variables to debug launch producers | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18991](https://github.com/microsoft/aspire/pull/18991) | Remove misleading TerminalOptions.Shell no-op | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#15807](https://github.com/microsoft/aspire/issues/15807) | Internal build breaking on `yarn install` | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#20052](https://github.com/microsoft/aspire/pull/20052) | Configure NuGet audit sources and non-fatal vulnerability warnings | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20032](https://github.com/microsoft/aspire/pull/20032) | [auto-sec] Consolidate aspire dependency security remediations (75 alerts) | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19845](https://github.com/microsoft/aspire/pull/19845) | Bump the npm_and_yarn group across 5 directories with 3 updates | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#19513](https://github.com/microsoft/aspire/pull/19513) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19231](https://github.com/microsoft/aspire/pull/19231) | [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19123](https://github.com/microsoft/aspire/pull/19123) | [auto-sec] remove js-yaml from 9 npm manifests (GHSA-5p4m-2wfm-xmqj); 2 deferred | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19122](https://github.com/microsoft/aspire/pull/19122) | [auto-sec] aspire npm low-risk batch: fast-uri 3.1.5, nanoid 3.3.17, hono 4.12.34 | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#17949](https://github.com/microsoft/aspire/pull/17949) | feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings | open |
| 非推奨/廃止 | microsoft/aspire | [PR#19965](https://github.com/microsoft/aspire/pull/19965) | Fix deprecated Homebrew cask DSL usage | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#19715](https://github.com/microsoft/aspire/issues/19715) | Aspire CLI DNX acquisition failure hard to troubleshoot in CI | open |
| 非推奨/廃止 | microsoft/aspire | [PR#19295](https://github.com/microsoft/aspire/pull/19295) | Show AppHosts from every VS Code workspace root | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#14211](https://github.com/microsoft/aspire/issues/14211) | [VS Code Extension] Add support for `aspire mcp` command (deprecated) | closed |
| 非推奨/廃止 | microsoft/aspire | [Issue#12873](https://github.com/microsoft/aspire/issues/12873) | Obsolete debugger extensions as a concept after adding new WithDebugSupport api | closed |
| ⚠ 破壊的変更 | microsoft/mxc | [Issue#1110](https://github.com/microsoft/mxc/issues/1110) | macOS: Seatbelt baseline omits the active developer directory, breaking /usr/bin xcrun shims | closed |
| ⚠ 破壊的変更 | microsoft/mxc | [PR#732](https://github.com/microsoft/mxc/pull/732) | Block breaking changes to the dev schema at pull-request time | closed |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#1168](https://github.com/github/copilot-sdk/issues/1168) | Subagent sessions don't inherit parent SessionFs state, breaking spill-then-delegate flows | closed |
| ⚠ セキュリティ | github/copilot-sdk | [PR#2601](https://github.com/github/copilot-sdk/pull/2601) | build(deps-dev): bump hono from 4.13.1 to 4.13.7 in /test/harness | merged |
| ⚠ セキュリティ | github/copilot-sdk | [PR#2587](https://github.com/github/copilot-sdk/pull/2587) | Fix vulnerable SourceLink dependency in .NET SDK | merged |
| ⚠ セキュリティ | github/copilot-sdk | [Issue#2007](https://github.com/github/copilot-sdk/issues/2007) | hono dev dependency has 5 known security advisories (1 high, 4 medium) | closed |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571257) | Retirement: Azure Linux with OS Guard in Azure Kubernetes Service | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570940) | [Launched] Generally Available: TLS/SSL certificate and end-to-end TLS encryption support for Azure Functions Flex Consumption  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570980) | [Launched] Generally Available: Azure Copilot Troubleshooting Agent | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569241) | [Launched] Generally Available: User-bound user delegation SAS for Azure Storage  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570551) | [Launched] Generally Available: Azure Ephemeral OS Disk with full caching for VM/VMSS  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570919) | [Launched] Generally Available: Playwright Workspaces in Australia East, Japan East, and Switzerland North | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570881) | [Launched] Generally Available: Azure Developer CLI (azd) Extension Framework | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-10-mai-code-1-flash-deprecated) | MAI-Code-1-Flash deprecated | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-09-npm-extends-recovery-code-security-holds-to-all-accounts) | npm extends recovery-code security holds to all accounts | — |

## エグゼクティブサマリー

対象期間の変更内容を確認し、利用者への影響と必要な対応を整理しました。

## 主要トレンド

Azure の GA 発表と開発者向け機能拡張が目立ち、既存環境では認証・暗号化・運用自動化の見直しが中心です。
GitHub 側では Copilot の運用可視化・レビュー自動化と、セキュリティ／最小権限設定の強化が進んでいます。
複数リポジトリで API・依存関係・実行環境に関する変更が続いているため、SDK 更新時は互換性確認を優先します。

## 次回チェックに向けたメモ

- Azure Linux with OS Guard の 2026年12月10日サポート終了に向けた移行案内を継続確認する。
- agent-framework の MCP アーカイブ、Redis 履歴キー、SecretString などの破壊的変更を利用側で再確認する。
- MAI-Code-1-Flash の代替モデルと、CodeQL 2.27.0 の CI 適用状況を次回重点確認する。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-09-08 00:54:17","generatedAtUtc":"2026-09-14 03:34:25"} -->

