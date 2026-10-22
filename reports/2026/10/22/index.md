# 差分レポート — 2026-10-22 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-22 00:21:02` |
| レポート生成日時 (JST) | `2026-10-22 09:21:02` |
| 前回チェック時刻 (UTC) | `2026-10-19 00:32:32` |
| 対象期間 (UTC) | `2026-10-19 00:32:32 〜 2026-10-22 00:21:02` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9461](https://github.com/microsoft/agent-framework/pull/9461) | [BREAKING] Python: Preserve Redis context scope identity | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9452](https://github.com/microsoft/agent-framework/issues/9452) | Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9322](https://github.com/microsoft/agent-framework/pull/9322) | Python: [BREAKING] Migrate Foundry Local integration to SDK 2.2.1 | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9492](https://github.com/microsoft/agent-framework/issues/9492) | Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines | open |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#9587](https://github.com/microsoft/agent-framework/issues/9587) | .NET: Remove deprecated Azure Persistent v1 integration tests | closed |
| GA 昇格 | microsoft/agent-framework | [PR#8756](https://github.com/microsoft/agent-framework/pull/8756) | .NET: Add GA computer tool support to Foundry and Foundry hosting | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) | [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#135](https://github.com/microsoft/agent-framework-durable-extension/pull/135) | [BREAKING] Python: constrain standalone agent entity operations | merged |
| 非推奨/廃止 | microsoft/agent-framework-durable-extension | [PR#129](https://github.com/microsoft/agent-framework-durable-extension/pull/129) | Bump urllib3 from 2.7.0 to 2.8.0 in /python | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#69605](https://github.com/dotnet/aspnetcore/issues/69605) | Cookie name matching is case-insensitive, diverging from RFC 6265's case-sensitive semantics | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69955](https://github.com/dotnet/aspnetcore/pull/69955) | Do not emit or traverse non-security-enabled groups in Negotiate LDAP claims | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69953](https://github.com/dotnet/aspnetcore/issues/69953) | Negotiate LDAP: do not traverse parents of groups that are not security-enabled | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69559](https://github.com/dotnet/aspnetcore/pull/69559) | [Security] Avoid boxing the authorization metrics tag | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#57023](https://github.com/dotnet/aspnetcore/issues/57023) | Net 8 Blazor Web App (Interactive server w/ prerendering ) - multiple schemes doesn't work | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21260](https://github.com/microsoft/aspire/pull/21260) | Add browser-facing origin references for CORS and redirect configuration | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21230](https://github.com/microsoft/aspire/pull/21230) | Mark WithAzdResourceNaming obsolete | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21118](https://github.com/microsoft/aspire/pull/21118) | Make AKS node pool OS SKU configurable | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20918](https://github.com/microsoft/aspire/pull/20918) | Support ACME External Account Binding in cert-manager | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#20521](https://github.com/microsoft/aspire/issues/20521) | [13.6] Breaking change to `IInteractionService` | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#11760](https://github.com/microsoft/aspire/issues/11760) | ResourceUrlAnnotation.DisplayOrder is a field, not a property | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#21250](https://github.com/microsoft/aspire/pull/21250) | Update SystemSecurityCryptographyPkcsNet10Version to 10.0.13 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#21156](https://github.com/microsoft/aspire/pull/21156) | [release/13.6] Pin MessagePack to 2.5.307 for security fixes | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#21051](https://github.com/microsoft/aspire/pull/21051) | Pin MessagePack to 2.5.307 for security fixes | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20829](https://github.com/microsoft/aspire/pull/20829) | fix(deps): update Next.js, multidict, and PyJWT for security advisories | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20693](https://github.com/microsoft/aspire/pull/20693) | Add auto-sec agentic workflow for dependency security reconciliation | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#21195](https://github.com/microsoft/aspire/pull/21195) | Add `aspire sdk export -l go` (Go API reference exporter) | open |
| GA 昇格 | microsoft/aspire | [Issue#21203](https://github.com/microsoft/aspire/issues/21203) | Go AppHost support policy: decisions to record before GA | open |
| GA 昇格 | microsoft/aspire | [Issue#21115](https://github.com/microsoft/aspire/issues/21115) | [Epic] Go AppHost GA | open |
| GA 昇格 | microsoft/aspire | [Issue#21108](https://github.com/microsoft/aspire/issues/21108) | [Go AppHost GA] CLI end-to-end and publish/deploy coverage | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=576716) | [Launched] Generally Available: Azure Cosmos DB Safe Key Rotation | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577156) | [Launched] Generally Available: Service tag match condition for Azure Front Door Premium WAF | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577130) | [Launched] Generally Available: Keyless TLS on Application Gateway with Azure Key Vault Managed HSM | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=575329) | [Launched] Generally Available: Advanced platform metrics for Azure Monitor | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577165) | [Launched] Generally Available: Metrics usage insights for Azure Monitor workspace | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=573917) | [Launched] Generally Available: Azure DNS enables DNS-based load balancing through Traffic Manager linked records | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-19-github-copilot-models-deprecated-on-october-19-2026) | GitHub Copilot models deprecated on October 19, 2026 | — |

## エグゼクティブサマリー

- [Agent Framework の Durable Functions 2.x 移行](./agent-framework-durable-extension.md) は Python ホスティングの互換性に大きく影響します。Standalone Entity 操作の制約も併せて確認してください。
- [Azure Cosmos DB Safe Key Rotation の GA](./azure.md) はアカウントキーのローテーション運用に、[Copilot モデル廃止](./github-changelog.md) は固定モデル利用者に影響します。
- [Aspire のセキュリティ更新と Go AppHost GA準備](./aspire.md) は依存関係更新、AKS ノードプール構成、cert-manager EAB の変更を含みます。
- [Azure Functions Agents Runtime の Copilot hosted／multi-worker対応](./azure-functions-agents-runtime.md) と Durable Agent Loop FRD は次世代実行基盤の方向性を示します。
- [ASP.NET Core の Negotiate LDAP グループ処理](./aspnetcore.md) は認可クレームを扱う環境でセキュリティ影響の確認が必要です。

## 主要トレンド

今回の横断テーマは、Agent／Azure Functions 基盤の堅牢化、セキュリティ依存関係の更新、GA／廃止に伴う移行準備です。特に Durable Functions、Copilot model、Key Vault Managed HSM、cert-manager、MessagePack/PyJWT の更新は利用者影響を確認すべきです。
全体として大規模な破壊的変更よりも、依存更新、運用設計、ホスティング設定、テスト基盤の改善が中心です。

## 次回チェックに向けたメモ

Agent Framework の Redis context identity、廃止予定 MCP API、Foundry Local SDK 2.2.1 移行、FIDES tool-name 承認、GA Computer Tool を継続確認する。Durable Extension #136/#135 の互換性検証と Blob payload offloading の運用影響も確認する。
Aspire の `IInteractionService`、`WithAzdResourceNaming`、AKS node pool OS SKU、cert-manager EAB、Go AppHost GA、MessagePack／Next.js／PyJWT 更新を追跡する。
GitHub CLI OAuth preview、Copilot deprecated models、secret scanning audit event の 11月12日移行、package firewall を確認し、Azure RSS の Managed HSM、Cosmos DB、Monitor、Front Door、DNS の運用影響を次回チェックする。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-10-19 00:32:32","schema":1,"generatedAtUtc":"2026-10-22 00:21:02"} -->