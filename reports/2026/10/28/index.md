# 差分レポート — 2026-10-28 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-28 00:23:35` |
| レポート生成日時 (JST) | `2026-10-28 09:23:35` |
| 前回チェック時刻 (UTC) | `2026-10-22 00:21:02` |
| 対象期間 (UTC) | `2026-10-22 00:21:02 〜 2026-10-28 00:23:35` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9722](https://github.com/microsoft/agent-framework/pull/9722) | .NET: [BREAKING] fix: scope workflow MCP clients to invocations | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9721](https://github.com/microsoft/agent-framework/pull/9721) | [BREAKING] .NET: Update AgentServer dependencies | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9711](https://github.com/microsoft/agent-framework/pull/9711) | .NET: fix(dotnet): [BREAKING] reject redirect client changes | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9661](https://github.com/microsoft/agent-framework/pull/9661) | Python: [BREAKING] Reject caller-supplied tool execution context in Responses requests | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9655](https://github.com/microsoft/agent-framework/pull/9655) | .NET [Breaking]: Remove old MCP skill functionality | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9634](https://github.com/microsoft/agent-framework/issues/9634) | Python: [BREAKING] Simplify ShellEnvironmentProvider configuration | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9628](https://github.com/microsoft/agent-framework/issues/9628) | Python: [BREAKING] Standardize preview connector exception and ownership contracts | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9626](https://github.com/microsoft/agent-framework/issues/9626) | Python: [BREAKING] Review preview behavioral ABCs for Protocol-compatible contracts | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9624](https://github.com/microsoft/agent-framework/issues/9624) | Python: [BREAKING] Replace generic kwargs in preview public APIs | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9611](https://github.com/microsoft/agent-framework/pull/9611) | Python: [BREAKING] Guard Copilot runtime connections | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9461](https://github.com/microsoft/agent-framework/pull/9461) | [BREAKING] Python: Preserve Redis context scope identity | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9452](https://github.com/microsoft/agent-framework/issues/9452) | Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9322](https://github.com/microsoft/agent-framework/pull/9322) | Python: [BREAKING] Migrate Foundry Local integration to SDK 2.2.1 | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9652](https://github.com/microsoft/agent-framework/pull/9652) | Python: Harden FIDES security state and policy enforcement | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9492](https://github.com/microsoft/agent-framework/issues/9492) | Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9251](https://github.com/microsoft/agent-framework/issues/9251) | Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#61123](https://github.com/dotnet/aspnetcore/issues/61123) | Microsoft.OpenAPI 2.0.0.0 has breaking changes | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69953](https://github.com/dotnet/aspnetcore/issues/69953) | Negotiate LDAP: do not traverse parents of groups that are not security-enabled | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69867](https://github.com/dotnet/aspnetcore/issues/69867) | Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67876](https://github.com/dotnet/aspnetcore/issues/67876) | @microsoft/signalr@10.0.0 has vulnerable package ws@7.5.11 - needs upgrade to 8.21.1 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67407](https://github.com/dotnet/aspnetcore/issues/67407) | SingalR 8.* version has vulnerable package ws 7.5.10 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#64301](https://github.com/dotnet/aspnetcore/issues/64301) | Validating the security stamp is extending the session if allowRefresh is false | open |
| 非推奨/廃止 | dotnet/extensions | [Issue#6594](https://github.com/dotnet/extensions/issues/6594) | [API Proposal]: Obsolete HybridCache compression options | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20261](https://github.com/microsoft/aspire/pull/20261) | Move terminal APIs into Aspire.Hosting.ApplicationModel | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#21273](https://github.com/microsoft/aspire/pull/21273) | Update dependencies flagged by Component Governance | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20032](https://github.com/microsoft/aspire/pull/20032) | [auto-sec] Consolidate aspire dependency security remediations (75 alerts) | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#21360](https://github.com/microsoft/aspire/pull/21360) | Deprecate AddProject and complete Project V2 migration | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#20594](https://github.com/microsoft/aspire/issues/20594) | Deprecate the Aspire.AppHost.Sdk | open |
| GA 昇格 | microsoft/aspire | [Issue#21115](https://github.com/microsoft/aspire/issues/21115) | [Epic] Go AppHost GA | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578358) | [Launched] Generally Available: Higher limit of Azure Blob Storage accounts per region per subscription | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577260) | [Launched] Generally Available: Cost management and tagging for Claude models in Microsoft Foundry | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578153) | [Launched] Generally Available: Azure Front Door profile and route level WAF policies  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577782) | [Launched] Generally Available: Network Watcher VNet flow logs filtering | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577963) | [Launched] Generally Available: Item Level Recovery for Azure VMs with Premium SSDv2 and Ultra Disks in Azure Backup | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577618) | [Launched] Generally Available: ABFS Vectored Read for Azure Data Lake Storage | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-26-github-copilot-assisted-permissions-generally-available) | GitHub Copilot assisted permissions generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-23-enterprise-installations-for-github-apps-generally-available) | Enterprise installations for GitHub Apps generally available | — |

## エグゼクティブサマリー

- **Agent Framework の互換性・安全性:** .NET では [リダイレクト拒否](./agent-framework.md)と[旧 MCP skill 機能の削除](./agent-framework.md)がマージ済みです。Python の Responses、preview API、Redis scope に関する破壊的変更提案と FIDES のセキュリティ改善も継続確認が必要です。
- **認証・依存関係のセキュリティ:** [ASP.NET Core の Pkcs／SignalR `ws` 脆弱性報告と Negotiate LDAP・security stamp の課題](./aspnetcore.md)、および Aspire の[75 件の依存関係セキュリティ修正](./aspire.md)を確認してください。
- **Aspire の移行と Go AppHost:** [Project V2 に伴う `AddProject`／`Aspire.AppHost.Sdk` 非推奨化案、Go AppHost の GA 検討、terminal API の名前空間移動](./aspire.md)が利用者の移行判断に関わります。
- **Azure の GA 更新:** [Storage アカウント上限、Foundry Claude のコスト管理、Front Door WAF、VNet flow logs、Azure Backup の ILR、ADLS vectored read](./azure.md)が GA になりました。利用要件に応じて各サービスの設定・運用への適用を検討できます。
- **GitHub の Copilot／認証機能:** [Copilot assisted permissions と Enterprise 向け GitHub App installation の GA](./github-changelog.md)、Copilot server-to-server authentication の preview、usage metrics の対象拡大を確認してください。

## 主要トレンド

クラウド各社の機能では GA が相次ぎ、運用者がコスト・アクセス制御・ログ・バックアップをより細かく管理できる範囲が広がりました。一方、Agent Framework／Aspire／Functions Agents Runtime では checkpoint、telemetry、agent plugin といったエージェント実行基盤の整備が進み、API／設定契約の互換性確認が重要です。セキュリティ面では依存関係の修正に加え、認証・sandbox 境界の厳格化が継続しています。

## 次回チェックに向けたメモ

- Agent Framework: Redis context identity（#9461）、vNext の MCP 互換 API 削除（#9452）、Foundry Local SDK 2.2.1（#9322）、FIDES の tool identity／fail-closed 対応（#9492、#9251）と今回の新しい breaking proposal を追跡する。Computer Tool の GA も継続確認する。
- Durable Extension: #136／#135 の互換性検証と Blob payload offloading の運用影響を確認する。Functions Agents Runtime の checkpoint/reference 契約（#282）と Durable Entity authority（#284）も次回確認する。
- Aspire: `IInteractionService`、`WithAzdResourceNaming`、AKS node pool OS SKU、cert-manager EAB、MessagePack／Next.js／PyJWT の更新を追跡し、Go AppHost GA と Project V2 の `AddProject`／AppHost SDK 移行方針を確認する。
- GitHub: CLI OAuth preview、Copilot deprecated models、package firewall を追跡する。secret scanning audit event の **2026-11-12** 移行期限に向けた準備状況も確認する。
- Azure: Managed HSM、Cosmos DB、Monitor、Front Door、DNS の継続更新を確認し、今回 GA となった Azure サービス機能の適用条件・運用影響に新情報がないか確認する。

<!-- daily-check-meta: {"generatedAtUtc":"2026-10-28 00:23:35","previousCheckAtUtc":"2026-10-22 00:21:02","schema":1} -->