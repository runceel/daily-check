# 差分レポート — 2026-10-29 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-29 03:43:14` |
| レポート生成日時 (JST) | `2026-10-29 12:43:14` |
| 前回チェック時刻 (UTC) | `2026-10-28 00:23:35` |
| 対象期間 (UTC) | `2026-10-28 00:23:35 〜 2026-10-29 03:43:14` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9611](https://github.com/microsoft/agent-framework/pull/9611) | Python: [BREAKING] Guard Copilot runtime connections | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9461](https://github.com/microsoft/agent-framework/pull/9461) | [BREAKING] Python: Preserve Redis context scope identity | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8840](https://github.com/microsoft/agent-framework/pull/8840) | .NET: [BREAKING] Allow a custom ChatHistoryProvider for workflows hosted as agents | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9652](https://github.com/microsoft/agent-framework/pull/9652) | Python: Harden FIDES security state and policy enforcement | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9251](https://github.com/microsoft/agent-framework/issues/9251) | Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools | open |
| 非推奨/廃止 | microsoft/agent-framework | [PR#9402](https://github.com/microsoft/agent-framework/pull/9402) | Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m | open |
| ⚠ セキュリティ | runceel/ReactiveProperty | [PR#568](https://github.com/runceel/ReactiveProperty/pull/568) | Fix vulnerable build and test dependencies | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#21360](https://github.com/microsoft/aspire/pull/21360) | Deprecate AddProject and complete Project V2 migration | open |
| GA 昇格 | microsoft/aspire | [Issue#21115](https://github.com/microsoft/aspire/issues/21115) | [Epic] Go AppHost GA | open |
| ⚠ セキュリティ | Azure/azure-functions-agents-runtime | [PR#286](https://github.com/Azure/azure-functions-agents-runtime/pull/286) | Update hosted-skill evaluator for 0.2.0 | merged |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2469](https://github.com/github/copilot-sdk/issues/2469) | Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers | closed |
| 非推奨/廃止 | github/copilot-sdk | [Issue#1557](https://github.com/github/copilot-sdk/issues/1557) | Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=576547) | [Launched] Generally Available: Marketplace private offer enhancements  | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-28-security-extension-for-the-github-copilot-app) | Security extension for the GitHub Copilot app | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-28-github-agentic-workflows-generally-available) | GitHub Agentic Workflows generally available | — |

## エグゼクティブサマリー

- Python Redis context のスコープ識別が厳密化されました。**既存の非互換 Redis index と context hash の削除・再作成、データ再投入が必要な破壊的変更**です（[Agent Framework #9461](https://github.com/microsoft/agent-framework/pull/9461)）。
- **Hosted-skill evaluator 0.2.0 で MSAL Node 脆弱性に対処**し、Vally executor 登録名も変更されました。利用側の設定更新に加え、依存導入だけでは npm override が伝播しない点に注意してください（[agents-runtime #286](https://github.com/Azure/azure-functions-agents-runtime/pull/286)）。
- Azure Container Apps の Log Analytics ログ出力先はレガシー扱いとなり、Azure Monitor への移行が推奨されています。既存環境は現時点で動作を継続しますが、管理者は移行計画を立ててください（[Azure 更新](https://azure.microsoft.com/updates?id=577689)）。
- GitHub Copilot は Fusion の一般提供、Agentic Workflows の一般提供、Security extension のプレビューを発表しました。利用組織は各機能の提供条件・権限・ワークフロー実行範囲を確認してください（[Fusion](https://github.blog/changelog/2026-10-28-route-and-orchestrate-models-with-github-copilot-fusion)、[Agentic Workflows](https://github.blog/changelog/2026-10-28-github-agentic-workflows-generally-available)、[Security extension](https://github.blog/changelog/2026-10-28-security-extension-for-the-github-copilot-app)）。
- Aspire では Go API docs、グローバルテンプレートソース、polyglot AppHost の Entra ID hosting が進展しました。一方、Go AppHost の GA は 17.0 目標の未完了エピックで、`AddProject` 非推奨化も提案段階です（[Go GA #21115](https://github.com/microsoft/aspire/issues/21115)、[Project V2 #21360](https://github.com/microsoft/aspire/pull/21360)）。

## 主要トレンド

エージェント基盤では、Redis scope の分離、FIDES の fail-closed 強化提案、MSAL 脆弱性修正など、データ境界と実行時セキュリティに関する変更・検討が続いています。
各種 CLI / SDK では、Go や polyglot の対応拡大とともに、引数・出力・テンプレートなどの利用境界を明確にする改善が見られました。Azure/GitHub の告知では GA とプレビュー機能が混在するため、提供段階を区別して導入判断する必要があります。

## 次回チェックに向けたメモ

- Agent Framework: Redis context identity（[#9461](https://github.com/microsoft/agent-framework/pull/9461)）の再作成・再投入案内、vNext の MCP 互換 API 削除（#9452）、Foundry Local SDK 2.2.1（#9322）、FIDES の tool identity／fail-closed 対応（#9492、[#9251](https://github.com/microsoft/agent-framework/issues/9251)）と今回の新しい breaking proposal（[#9722](https://github.com/microsoft/agent-framework/pull/9722)、[#8840](https://github.com/microsoft/agent-framework/pull/8840)）を追跡する。Computer Tool の GA も継続確認する。
- Durable Extension: #136／#135 の互換性検証と Blob payload offloading の運用影響を確認する。Functions Agents Runtime の checkpoint/reference 契約（#282）と Durable Entity authority（#284）も次回確認する。
- Aspire: `IInteractionService`、`WithAzdResourceNaming`、AKS node pool OS SKU、cert-manager EAB、MessagePack／Next.js／PyJWT の更新を追跡する。Go AppHost GA（[#21115](https://github.com/microsoft/aspire/issues/21115)）と Project V2 の `AddProject`／AppHost SDK 移行（[#21360](https://github.com/microsoft/aspire/pull/21360)）、polyglot Entra integration の利用状況を確認する。
- GitHub: CLI OAuth preview、Copilot deprecated models、package firewall を追跡する。secret scanning audit event の **2026-11-12** 移行期限に向けた準備状況も確認する。Copilot SDK の Anthropic Bedrock Opus `temperature` 問題（[#1557](https://github.com/github/copilot-sdk/issues/1557)）も継続確認する。
- Azure: Managed HSM、Cosmos DB、Monitor、Front Door、DNS の継続更新を確認し、今回 GA となった Marketplace private offer の適用条件と Cross-Tenant Restore のプレビュー状況を追う。Azure Container Apps の Log Analytics から Azure Monitor への移行時期・手順に新情報がないか確認する。
- ReactiveProperty / Agents Runtime: ReactiveProperty の依存脆弱性修正（[#568](https://github.com/runceel/ReactiveProperty/pull/568)）の対象範囲と、Hosted Skills evaluator の MSAL override が Azure Identity に取り込まれ consumer 側で不要になる時期を確認する。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-10-28 00:23:35","schema":1,"generatedAtUtc":"2026-10-29 03:43:14"} -->