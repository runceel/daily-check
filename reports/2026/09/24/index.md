# 差分レポート — 2026-09-24 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-24 03:39:59` |
| レポート生成日時 (JST) | `2026-09-24 12:39:59` |
| 前回チェック時刻 (UTC) | `2026-09-18 03:05:52` |
| 対象期間 (UTC) | `2026-09-18 03:05:52 〜 2026-09-24 03:39:59` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8641](https://github.com/microsoft/agent-framework/pull/8641) | .NET: [BREAKING] Enforce approval response binding consistently | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8593](https://github.com/microsoft/agent-framework/pull/8593) | [BREAKING] Python: Persist Foundry invocation sessions | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8589](https://github.com/microsoft/agent-framework/pull/8589) | Python: [BREAKING] Preserve MCP runtime and approval context | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8588](https://github.com/microsoft/agent-framework/pull/8588) | Python: [BREAKING] Normalize workflow HTTP request URLs | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8579](https://github.com/microsoft/agent-framework/pull/8579) | [BREAKING] Python: Treat matched function results as terminal | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8511](https://github.com/microsoft/agent-framework/pull/8511) | Python: [BREAKING] bound PowerFx state construction | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8509](https://github.com/microsoft/agent-framework/pull/8509) | Python: [BREAKING] preserve expression results in SendActivity output | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8423](https://github.com/microsoft/agent-framework/pull/8423) | .NET: [BREAKING] Fix DevUI approval continuation | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8372](https://github.com/microsoft/agent-framework/pull/8372) | [BREAKING] Python: Add request-scoped Foundry agent factories | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8200](https://github.com/microsoft/agent-framework/pull/8200) | .NET: [BREAKING] fix: use allow list for configuration keys | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#5735](https://github.com/microsoft/agent-framework/pull/5735) | .NET: Bump GitHub.Copilot.SDK and forward session config properties | merged |
| GA 昇格 | microsoft/agent-framework | [Issue#4254](https://github.com/microsoft/agent-framework/issues/4254) | .NET: A2A Hosting GA | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) | [BREAKING] Python: Activate isolated v2 runtime and workflow protocol | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) | [BREAKING] Python: Add read-only shared agent state consumers | open |
| GA 昇格 | microsoft/agent-framework-durable-extension | [PR#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) | [GA] Update Agent Framework dependencies | open |
| GA 昇格 | microsoft/agent-framework-durable-extension | [Issue#115](https://github.com/microsoft/agent-framework-durable-extension/issues/115) | [GA] Align extension with latest Agent Framework dependencies | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#69277](https://github.com/dotnet/aspnetcore/pull/69277) | [Identity] Use ordinal equality for external login keys | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69394](https://github.com/dotnet/aspnetcore/pull/69394) | Rotate security stamp on passkey removal | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69312](https://github.com/dotnet/aspnetcore/pull/69312) | Unify claims principal cache identity | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#69385](https://github.com/dotnet/aspnetcore/pull/69385) | [release/11.0] Stop shipping the obsolete Components.AI package | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67134](https://github.com/dotnet/aspnetcore/issues/67134) | Deprecate Microsoft.AspNetCore.Grpc.Swagger | closed |
| ⚠ セキュリティ | dotnet/extensions | [PR#7705](https://github.com/dotnet/extensions/pull/7705) | [Infrastructure] Update vulnerable npm dependencies | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20261](https://github.com/microsoft/aspire/pull/20261) | Move terminal APIs into Aspire.Hosting.ApplicationModel | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20047](https://github.com/microsoft/aspire/pull/20047) | Breaking change: update StackExchange.Redis to 3.2.0 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20032](https://github.com/microsoft/aspire/pull/20032) | [auto-sec] Consolidate aspire dependency security remediations (75 alerts) | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#20257](https://github.com/microsoft/aspire/issues/20257) | [Homebrew] Deprecation notice for "the `verified` parameter in the `url` stanza is deprecated" | open |
| ⚠ セキュリティ | microsoft/mxc | [Issue#1233](https://github.com/microsoft/mxc/issues/1233) | ProcessContainer: legacy network.proxy + deniedPaths falls back to Tier 3 and fails on WRITE_DAC | open |
| 非推奨/廃止 | microsoft/mxc | [PR#705](https://github.com/microsoft/mxc/pull/705) | Fix npm audit advisories and deprecated packages in Node projects | merged |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2527](https://github.com/github/copilot-sdk/issues/2527) | [v2] Publish the breaking-change inventory and migration guide | open |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=572770) | Retirement: Support for PowerShell 7.4 ends on November 10, 2026 | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=572838) | Retirement: Support for .NET 8 and .NET 9 ends on November 10, 2026—upgrade your apps to .NET 10   | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=572771) | Retirement: Support for Node.js 22 ends on April 30, 2027 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=572579) | [Launched] Generally Available: Azure Sphere OS version 26.09 is now available | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=572219) | [Launched] Generally Available: Azure Functions support for PowerShell 7.6 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571826) | [Launched] Generally Available: Enable and disable controls for Microsoft Foundry agents in Agent 365 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571816) | [Launched] Generally Available: Publishing Microsoft Foundry agents to Microsoft 365 Copilot and Teams | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568414) | [Launched] Generally Available: Logical replication slot sync status metric for Azure PostgreSQL Flexible Server  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571042) | [Launched] Generally Available: New and improved troubleshooting guides for Azure Database for PostgreSQL  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571047) | [Launched] Generally Available: PG18 support for Azure Database for PostgreSQL elastic clusters  | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-22-security-improvements-for-ssh) | Security improvements for SSH | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-22-deprecation-notice-all-platform-codeql-bundle) | Deprecation notice: All-platform CodeQL bundle | — |

## エグゼクティブサマリー

- **実行環境の移行期限:** Azure Functions の PowerShell 7.4 と .NET 8／9 は 2026年11月10日にサポート終了、Node.js 22 は 2027年4月30日に終了します。GitHub Actions runner も Node 20 を廃止し Node 24 で JavaScript Action を実行するため、対象アプリ／workflow を順次更新してください（[Azure 更新](./azure.md)、[GitHub Changelog](./github-changelog.md)）。
- **Microsoft Foundry の本番展開・ガバナンスが拡大:** Foundry Routines と hosted-agent egress 制御が preview、Microsoft 365 Copilot／Teams 公開と Agent 365 の enable／disable が GA です（[Routines](https://azure.microsoft.com/updates?id=563536)、[egress controls](https://azure.microsoft.com/updates?id=571821)、[Copilot／Teams 公開](https://azure.microsoft.com/updates?id=571816)、[Agent 365 controls](https://azure.microsoft.com/updates?id=571826)）。
- **既存 agent workflow の互換性確認が必要:** approval binding と continuation（[.NET #8641](https://github.com/microsoft/agent-framework/pull/8641)、[#8423](https://github.com/microsoft/agent-framework/pull/8423)）、MCP context／URL／function result／PowerFx／SendActivity（[Python #8589](https://github.com/microsoft/agent-framework/pull/8589)、[#8588](https://github.com/microsoft/agent-framework/pull/8588)、[#8579](https://github.com/microsoft/agent-framework/pull/8579)、[#8511](https://github.com/microsoft/agent-framework/pull/8511)、[#8509](https://github.com/microsoft/agent-framework/pull/8509)）に動作変更が入り、Aspire terminal API も移動しました（[#20261](https://github.com/microsoft/aspire/pull/20261)）。
- **セキュリティと設定境界の強化:** GitHub は SSH algorithms／RSA key 要件を変更し、CodeQL all-platform bundle を非推奨化します（[SSH](https://github.blog/changelog/2026-09-22-security-improvements-for-ssh)、[CodeQL bundle](https://github.blog/changelog/2026-09-22-deprecation-notice-all-platform-codeql-bundle)）。Aspire の 75 件の依存 alert 修正（[#20032](https://github.com/microsoft/aspire/pull/20032)）、ASP.NET Identity の passkey／principal-cache security proposals（[#69394](https://github.com/dotnet/aspnetcore/pull/69394)、[#69312](https://github.com/dotnet/aspnetcore/pull/69312)）、MXC の sandbox 設定 issue（[#1233](https://github.com/microsoft/mxc/issues/1233)）も要確認です。
- **ワークフロー機能と運用改善:** Azure Functions Agents Runtime に async tool handlers と task timeout／failure continuation が追加されました（[#233](https://github.com/Azure/azure-functions-agents-runtime/pull/233)、[#222](https://github.com/Azure/azure-functions-agents-runtime/pull/222)）。Azure Database for PostgreSQL の PG18 elastic clusters と replication-slot metric、Functions PowerShell 7.6、Azure Sphere OS 26.09 も GA です（[Azure 更新一覧](./azure.md)）。

## 主要トレンド

- Agent Framework／Aspire では approval、session、workflow state、設定キー、Dashboard の分離など、状態と境界を明示して安全に扱う変更が目立ちました。
- ランタイム／依存の更新も進みましたが、サポート終了や preview／GA の段階が異なるため、期限・適用状態を区別した移行確認が重要です。

## 次回チェックに向けたメモ

- 継続監視: Agent Framework の open breaking-change PR（[#8593](https://github.com/microsoft/agent-framework/pull/8593)）と Durable Extension の v2 runtime／shared state／GA 依存更新（[#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112)、[#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108)、[#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116)）。Aspire の StackExchange.Redis 3.2.0 変更案（[#20047](https://github.com/microsoft/aspire/pull/20047)）も互換性と merge 状態を確認。
- Azure の次段階: Foundry Routines／egress-control preview の提供範囲と GA 時期を確認し、Azure Functions の PowerShell 7.4／.NET 8・9（2026-11-10）および Node.js 22（2027-04-30）の移行計画を追跡。
- セキュリティ／運用: GitHub SSH の適用日と CodeQL bundle 移行手順、ASP.NET passkey／claims-cache PR、MXC `network.proxy` + `deniedPaths` issue の修正状況を確認。
- 前回メモを継続: Agent Framework の session isolation／approval continuation／MCP security、Aspire の Azure provisioning／dependency updates、Ubuntu 26 migration と GitHub Actions protection rollout をウォッチ。今回の差分では後二者の進捗を確認できないため次回も継続確認する。

<!-- daily-check-meta: {"generatedAtUtc":"2026-09-24 03:39:59","schema":1,"previousCheckAtUtc":"2026-09-18 03:05:52"} -->