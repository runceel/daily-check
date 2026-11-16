# 差分レポート — 2026-10-30 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-30 00:23:04` |
| レポート生成日時 (JST) | `2026-10-30 09:23:04` |
| 前回チェック時刻 (UTC) | `2026-10-29 03:43:14` |
| 対象期間 (UTC) | `2026-10-29 03:43:14 〜 2026-10-30 00:23:04` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9841](https://github.com/microsoft/agent-framework/pull/9841) | .NET: [BREAKING] fix(dotnet): require allowed HTTP hosts | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9721](https://github.com/microsoft/agent-framework/pull/9721) | [BREAKING] .NET: Update AgentServer dependencies | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9452](https://github.com/microsoft/agent-framework/issues/9452) | Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9652](https://github.com/microsoft/agent-framework/pull/9652) | Python: Harden FIDES security state and policy enforcement | open |
| ⚠ セキュリティ | runceel/ReactiveProperty | [PR#568](https://github.com/runceel/ReactiveProperty/pull/568) | Fix vulnerable build and test dependencies | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21407](https://github.com/microsoft/aspire/pull/21407) | Migrate Azure Functions integration to Project V2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20481](https://github.com/microsoft/aspire/pull/20481) | Unify experimental polyglot AppHost feature keys | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#21404](https://github.com/microsoft/aspire/pull/21404) | Bump the npm_and_yarn group across 18 directories with 5 updates | open |
| 非推奨/廃止 | microsoft/aspire | [PR#21360](https://github.com/microsoft/aspire/pull/21360) | Deprecate AddProject and complete Project V2 migration | open |
| GA 昇格 | microsoft/aspire | [Issue#21115](https://github.com/microsoft/aspire/issues/21115) | [Epic] Go AppHost GA | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2469](https://github.com/github/copilot-sdk/issues/2469) | Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers | closed |
| 非推奨/廃止 | github/copilot-sdk | [Issue#1557](https://github.com/github/copilot-sdk/issues/1557) | Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578850) | [Launched] Generally Available: Large OS Disk Encryption for Azure Confidential VM migrations | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578681) | [Launched] Generally Available: HTTP DDoS ruleset for Azure Front Door Premium WAF | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578662) | [Launched] Generally Available: Azure MCP Server 3.0 | — |

## エグゼクティブサマリー

- **Azure の GA 更新:** Confidential VM 移行時の Large OS Disk Encryption、Front Door Premium WAF の HTTP DDoS ruleset、Azure MCP Server 3.0 が GA になりました。該当する移行・セキュリティ・AI 開発環境の担当者は [Azure 更新](./azure.md)で対象と導入条件を確認してください。
- **Agent Framework の互換性・安全性:** Foundry AgentServer 依存更新では登録 API と Responses ローカル永続形式に変更が入りました（[#9721](https://github.com/microsoft/agent-framework/pull/9721)）。宣言型 HTTP の許可ホスト必須化（[#9841](https://github.com/microsoft/agent-framework/pull/9841)）、Python MCP 互換 API の次期メジャー削除計画（[#9452](https://github.com/microsoft/agent-framework/issues/9452)）、FIDES セキュリティ強化（[#9652](https://github.com/microsoft/agent-framework/pull/9652)）も要確認です。
- **Durable Agent の schema v2 移行:** .NET / Python と Azure Functions で新規 entity 名・保存 schema が変わり、旧 entity は旧 worker 停止後の二段階移行が必要です（[.NET](./agent-framework-durable-extension.md)、[#155](https://github.com/microsoft/agent-framework-durable-extension/pull/155)、[#165](https://github.com/microsoft/agent-framework-durable-extension/pull/165)）。
- **Aspire の移行と設定変更:** Project V2 に伴う Azure Functions / `AddProject` の移行提案、polyglot feature key の旧設定からの変更、Go AppHost の 17.0 GA 計画を確認してください（[#21407](https://github.com/microsoft/aspire/pull/21407)、[#21360](https://github.com/microsoft/aspire/pull/21360)、[#20481](https://github.com/microsoft/aspire/pull/20481)、[#21115](https://github.com/microsoft/aspire/issues/21115)）。playground の npm 依存更新もレビュー中です（[#21404](https://github.com/microsoft/aspire/pull/21404)）。
- **セキュリティと統合互換性:** ReactiveProperty はビルド / テスト依存の脆弱性を修正しました（[#568](https://github.com/runceel/ReactiveProperty/pull/568)）。Copilot SDK では再開時の空 turn に関するクローズ済み報告（[#2469](https://github.com/github/copilot-sdk/issues/2469)）と Bedrock Opus の `temperature` 問題（[#1557](https://github.com/github/copilot-sdk/issues/1557)）を追跡し、GitHub webhook の静的 IP 許可リスト利用者は [追加された Meta API 範囲](./github-changelog.md)を反映してください。

## 主要トレンド

今回の更新では、Agent Framework と Durable Extension の永続状態・登録契約、Aspire の Project V2 など、既存利用者の移行計画を要する変更が複数のリポジトリで進行しています。
一方、FIDES や ReactiveProperty の依存更新、Front Door WAF の HTTP DDoS 保護など、セキュリティと運用耐性を高める変更も目立ちます。GitHub webhook の静的 allowlist は追加 IP 範囲への更新が必要です。

## 次回チェックに向けたメモ

- **Agent Framework:** #9841 の許可ホスト必須化案、#9452 の Python MCP 互換 API 削除、#9652 の FIDES 強化のマージ状況を追跡する。既存メモの Redis context identity（[#9461](https://github.com/microsoft/agent-framework/pull/9461)）再作成・再投入案内、Foundry Local SDK 2.2.1（#9322）、FIDES tool identity / fail-closed（#9492、[#9251](https://github.com/microsoft/agent-framework/issues/9251)）、#9722 / #8840 の提案、Computer Tool GA も確認する。
- **Durable Extension / Agents Runtime:** #136 / #135 の互換性検証、Blob payload offloading の運用影響、checkpoint/reference 契約（[#282](https://github.com/Azure/azure-functions-agents-runtime/issues/282)）と Durable Entity authority（[#284](https://github.com/Azure/azure-functions-agents-runtime/issues/284)）を追跡する。schema v2 の二段階移行と Functions work-item filtering の実運用条件も確認する。
- **Aspire:** `IInteractionService`、`WithAzdResourceNaming`、AKS node pool OS SKU、cert-manager EAB、MessagePack / Next.js / PyJWT の更新を継続確認する。Go AppHost GA（[#21115](https://github.com/microsoft/aspire/issues/21115)）、Project V2 / `AddProject`（[#21360](https://github.com/microsoft/aspire/pull/21360)）、Azure Functions 移行（[#21407](https://github.com/microsoft/aspire/pull/21407)）、polyglot Entra integration を追う。
- **GitHub:** CLI OAuth preview、Copilot deprecated models、package firewall を追跡する。secret scanning audit event の **2026-11-12** 移行期限に向けた準備と、Copilot SDK の Bedrock Opus `temperature` 問題（[#1557](https://github.com/github/copilot-sdk/issues/1557)）を確認する。
- **Azure:** Managed HSM、Cosmos DB、Monitor、Front Door、DNS の継続更新を確認し、Marketplace private offer の条件、Cross-Tenant Restore のプレビュー、Azure Container Apps の Log Analytics から Azure Monitor への移行時期・手順を追う。
- **その他:** ReactiveProperty の脆弱性修正（[#568](https://github.com/runceel/ReactiveProperty/pull/568)）について未スキャンの UWP project を再確認する。Hosted Skills evaluator の MSAL override が Azure Identity に取り込まれ consumer 側で不要になる時期も追跡する。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-10-30 00:23:04","previousCheckAtUtc":"2026-10-29 03:43:14"} -->