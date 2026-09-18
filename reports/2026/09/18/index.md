# 差分レポート — 2026-09-18 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-18 03:05:52` |
| レポート生成日時 (JST) | `2026-09-18 12:05:52` |
| 前回チェック時刻 (UTC) | `2026-09-16 01:35:40` |
| 対象期間 (UTC) | `2026-09-16 01:35:40 〜 2026-09-18 03:05:52` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8434](https://github.com/microsoft/agent-framework/pull/8434) | .NET: [BREAKING] Make Foundry delegated user identity sticky on AgentSession | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8425](https://github.com/microsoft/agent-framework/pull/8425) | .NET: [BREAKING] Scope provider-backed MCP sessions per invocation | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8423](https://github.com/microsoft/agent-framework/pull/8423) | .NET: [BREAKING] Fix DevUI approval continuation | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8417](https://github.com/microsoft/agent-framework/pull/8417) | .NET: [BREAKING] Consolidate in-memory agent session storage | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8375](https://github.com/microsoft/agent-framework/pull/8375) | .NET: [BREAKING] Improve replay support with Approval Binding | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8372](https://github.com/microsoft/agent-framework/pull/8372) | [BREAKING] Python: Add request-scoped Foundry agent factories | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8305](https://github.com/microsoft/agent-framework/pull/8305) | Python: [BREAKING] Require committed finish reason for tool calls | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8200](https://github.com/microsoft/agent-framework/pull/8200) | .NET: [BREAKING] fix: use allow list for configuration keys | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7673](https://github.com/microsoft/agent-framework/pull/7673) | [BREAKING] Python: Consolidate OTel GenAI Semantic Conventions versions | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7533](https://github.com/microsoft/agent-framework/pull/7533) | [BREAKING] Python: Migrate FHA to responses==2.0.0b1 and add Foundry state store | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7374](https://github.com/microsoft/agent-framework/pull/7374) | [BREAKING] Python: Allow workflow checkpoint full replayability | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7347](https://github.com/microsoft/agent-framework/pull/7347) | [BREAKING] Python: Allow workflow checkpoint full replayability | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7158](https://github.com/microsoft/agent-framework/pull/7158) | [BREAKING] Python: Ensure session isolation for FHA invocation impl | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6811](https://github.com/microsoft/agent-framework/pull/6811) | [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6489](https://github.com/microsoft/agent-framework/pull/6489) | Python: [Breaking] Additional bug fix for declarative workflows | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `reset` to workflow | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#5865](https://github.com/microsoft/agent-framework/pull/5865) | [BREAKING] Python: Enable instrumentation by default | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#5750](https://github.com/microsoft/agent-framework/pull/5750) | .NET: [Breaking Change] Auto-wire ChatClient with OpenTelemetryChatClient in OpenTelemetryAgent | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#5423](https://github.com/microsoft/agent-framework/pull/5423) | .NET: [Breaking] Migrate A2A agent and hosting to A2A SDK v1 | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#4903](https://github.com/microsoft/agent-framework/pull/4903) | .NET: [BREAKING] Update type names and source generator to reduce conflicts | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#4730](https://github.com/microsoft/agent-framework/pull/4730) | .NET: [BREAKING] Fix FileSystemJsonCheckpointStore support for sessionIds with path-forbidden or special characters | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8179](https://github.com/microsoft/agent-framework/pull/8179) | .NET: chore: updates source link dependency due to transitive vulnerability | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8141](https://github.com/microsoft/agent-framework/pull/8141) | Python: preserve confidentiality through FIDES security tools | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8138](https://github.com/microsoft/agent-framework/pull/8138) | Python: isolate FIDES security state per session | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7245](https://github.com/microsoft/agent-framework/pull/7245) | Python: Add MCPStreamableHTTPTool security guidance for custom http client | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6983](https://github.com/microsoft/agent-framework/pull/6983) | Python: Add multi-tenant hosting hosting security consideration to a2a sample | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6510](https://github.com/microsoft/agent-framework/pull/6510) | Python: Clarify identifier security guidance | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6295](https://github.com/microsoft/agent-framework/pull/6295) | Python: [Generated by SRE Agent] docs: clarify checkpoint storage security model and deserialization trust boundaries | merged |
| 非推奨/廃止 | microsoft/agent-framework | [PR#8401](https://github.com/microsoft/agent-framework/pull/8401) | Python: Deprecate MCP sampling callback | merged |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#8400](https://github.com/microsoft/agent-framework/issues/8400) | Python: Deprecate MCP sampling in line with the 2026-07-28 specification | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) | [BREAKING] Python: Add read-only shared agent state consumers | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#69323](https://github.com/dotnet/aspnetcore/issues/69323) | Blazor: RendererSynchronizationContext can be left installed on an unrelated thread-pool thread, breaking Dispatcher mutual exclusion | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#69257](https://github.com/dotnet/aspnetcore/pull/69257) | Drop MVC F# project template support | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20188](https://github.com/microsoft/aspire/pull/20188) | Update Azure provisioning CDN and Kusto to beta.3 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20152](https://github.com/microsoft/aspire/pull/20152) | Prevent Edge compatibility relaunch from breaking browser debugging | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19848](https://github.com/microsoft/aspire/pull/19848) | Remove retired GitHub Models integration | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.1 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20196](https://github.com/microsoft/aspire/pull/20196) | Bump the npm_and_yarn group across 6 directories with 5 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20194](https://github.com/microsoft/aspire/pull/20194) | Bump the npm_and_yarn group across 11 directories with 5 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19513](https://github.com/microsoft/aspire/pull/19513) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#1178](https://github.com/microsoft/mxc/pull/1178) | [refactor] Move 'security environment' code into 'process_container' backend | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#1171](https://github.com/microsoft/mxc/pull/1171) | Address npm package vulnerabilities | merged |
| GA 昇格 | microsoft/mxc | [Issue#1101](https://github.com/microsoft/mxc/issues/1101) | [LXC] runtimeConfig.networkProxy is rejected: the backend never declares RUNTIME_PROXY, so GA model 2 cannot be expressed | closed |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571572) | [Launched] Generally Available: High-scale mesh in Azure Virtual Network Manager | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571342) | Retirement Update: SAP container images removed October 14, 2026 | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-17-ubuntu-26-generally-available-and-latest-migration) | Ubuntu 26 generally available and latest migration | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-17-workflow-execution-protections-in-github-actions-generally-available) | Workflow execution protections in GitHub Actions generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-16-copilot-budget-increase-requests-are-generally-available) | Copilot budget increase requests are generally available | — |

## エグゼクティブサマリー

- Microsoft/agent-framework では、session isolation、approval continuation、MCP scoping、replay support の整理が進み、長期的な session contract と状態管理の厳密化が進行しています。
- Aspire では Edge デバッグ修正、Azure Container Apps Express の experimental support、依存の整理が見られ、機能追加と保守性向上が同時に進んでいます。
- GitHub と Azure のプラットフォーム側では、Ubuntu 26 GA、GitHub Actions の workflow protection GA、そして Azure の High-scale mesh in VNet Manager GA があり、基盤側の安定性が強化されています。
- その一方で GitHub Models の整理や依存脆弱性修正は、利用者および運用担当者に移行確認の必要があるため注視が必要です。

## 主要トレンド

- セッション境界と状態のスコープ管理が、生成AI / agent 系のリポジトリで共通テーマになっており、実行コンテキストの明確化が進んでいます。
- Azure と GitHub の基盤更新では、GA 化と保守対応が中心で、安定運用を前提にした依存・運用整理が進んでいます。
- 依存更新やセキュリティ修正は広範に行われており、特に npm / extension / Azure provisioning ではリリース前レビューが重要です。
- 今回の主役は「機能の追加」よりも「デバッグ安定化・状態分離・依存整理」であり、既存利用者の確認工数が高い傾向がありました。

## 次回チェックに向けたメモ

- agent-framework の session isolation / approval continuation / MCP security 周りは継続的に確認すべきため、特に Open 状態の BREAKING PR をウォッチする価値があります。
- Aspire では Azure provisioning と dependency updates を中心に、Edge debugging と Express support の運用影響を次回に確認するのが良いです。
- Azure / GitHub 関連では、Ubuntu 26 migration と GitHub Actions protection の rollout を追跡し、インフラ利用者の対応余地があるかを確認します。
- 次回は「既存利用者への影響」「マイグレーションが必要か」を意識して、重要な変更の実運用影響を再評価するのが適切です。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-09-16 01:35:40","generatedAtUtc":"2026-09-18 03:05:52"} -->