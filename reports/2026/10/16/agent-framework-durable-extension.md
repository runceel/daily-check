# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 1 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) — [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x （PR / open / ahmedmuhsin）
Python Azure Functions ホスティング利用者は Durable Functions 2.x への移行提案を確認し、未マージのため現行環境は維持しつつ、マージ後の互換性要件に備えてください。
- **⚠ 破壊的変更** [#135](https://github.com/microsoft/agent-framework-durable-extension/pull/135) — [BREAKING] Python: constrain standalone agent entity operations （PR / open / ahmedmuhsin）
standalone agent entity を操作する Python 利用者は、許可される操作が制限される提案を確認し、未マージのため現在の API 変更はありませんが、今後の利用制約を追跡してください。
- **⚠ 破壊的変更** [#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) — Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x （PR / open / ahmedmuhsin）
Azure Functions 上の Python durable host 利用者は `azure-functions-durable` 2.x 移行案の依存・host API 変更を確認してください。PR は未マージで、現時点の移行は不要です。
- **GA 昇格** [#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) — [GA] Update Agent Framework dependencies （PR / merged / tamirdresher）
Durable Extension 利用者は Agent Framework の複数バージョンとの互換性修正を含む依存更新を確認し、利用中の SDK と extension の組み合わせを再テストしてください。
- **GA 昇格** [#115](https://github.com/microsoft/agent-framework-durable-extension/issues/115) — [GA] Align extension with latest Agent Framework dependencies （Issue / closed / tamirdresher）
この依存整合性 Issue はクローズ済みで PR #116 による更新がマージされています。利用者は最新の extension／Agent Framework 組み合わせを確認してください。

## このリポジトリの要点

Agent Framework の依存更新（#116）で複数 SDK 世代との互換性修正が入り、extension の GA に向けた基盤が整いました。HTTP API は camelCase を優先する変更（#103）がマージされ、旧 alias からの移行案内も追加されています。耐久履歴の retention サンプルが追加され、Functions 2.x 移行など Python 側の大きな変更案は引き続き未マージです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) — [GA] Update Agent Framework dependencies

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +5378 / -3149
- マージ日時 (UTC): `2026-10-06 16:27:26`

**変更概要**

Agent Framework の依存を更新し、core／runner の API 変更に伴う Durable Task と Azure Functions hosting の互換性を調整します。
agent 実装、履歴プロバイダー、entity wrapper、CI pin、ログ・履歴テストを更新し、複数の SDK 世代との動作を修正しました。
ラベル上 GA を掲げる依存更新であり、.NET／Python の両拡張利用者に関わります。

<details><summary>変更ファイル (43 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-merge-tests.yml` | 2 | 2 |
| `docs/features/python-durable-json-boundaries.md` | 28 | 1 |
| `dotnet/Directory.Packages.props` | 27 | 27 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/DurableAIAgent.cs` | 100 | 1 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/DurableChatHistoryProviderChatClient.cs` | 54 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/EntityAgentWrapper.cs` | 9 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/AgentLoggingTests.cs` | 114 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/ExternalClientTests.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/Logging/TestLoggerProvider.cs` | 9 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/TestHelper.cs` | 5 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/AgentEntityHistoryTests.cs` | 12 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/DurableAIAgentTests.cs` | 287 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/EntityAgentWrapperTests.cs` | 172 | 2 |
| _... 他 28 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `f570820` deps: update Agent Framework dependencies (#115)
- `3f8c23e` fix: support Agent Framework core 1.18 runner context (#116)
- `a86173b` fix: align CI dependency pins and Azure context API (#116)
- `3c14573` fix: preserve durable orchestration context across agent calls
- `e023a3f` Merge main into PR116 and stage SDK compatibility repairs
- `ffe67aa` Fix integration agent log capture for normalized entity names
- `56759eb` Fix durable history override lifetime for Agent Framework 1.23
- `c48599f` Fix Python durable compatibility with Agent Framework 1.19
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

コミットでは Agent Framework core 1.18／1.19／1.23 などとの runner context、Azure context API、durable orchestration context、history override lifetime の互換性修正が含まれます。依存 pin と内部利用 API の更新が中心で、見出し上は GA 関連の依存整合です。

**既存利用者への影響**

拡張利用者は対応する Agent Framework と Durable Extension のバージョン組み合わせを確認し、アップグレード後に orchestration と履歴保持の統合テストを実施してください。

### [#141](https://github.com/microsoft/agent-framework-durable-extension/pull/141) — Fix deferred sample and retention test checks

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +114 / -102
- マージ日時 (UTC): `2026-10-13 19:24:46`

**変更概要**

Durable Extension の deferred sample と履歴保持テストのチェックを修正します。
automatic retention sample の段階的ロールアウト案内を整理し、product test へ内部検証を移すほか、agent logging test の選択条件を調整しました。
Python の conversation compaction sample の request 例も更新されます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/AgentLoggingTests.cs` | 2 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/AgentEntityHistoryTests.cs` | 103 | 92 |
| `python/samples/azure_functions/14_conversation_compaction/README.md` | 2 | 2 |
| `python/samples/azure_functions/14_conversation_compaction/demo.http` | 6 | 6 |
| `python/samples/azure_functions/14_conversation_compaction/function_app.py` | 1 | 1 |

</details>

<details><summary>コミット (17 件)</summary>

- `a8efac6` Add automatic durable history retention sample
- `0ab99cf` Add opt-in durable history retention sample
- `497bf34` Gate automatic retention sample for draft rollout
- `dbd52f4` Correct automatic retention sample guidance
- `894bd85` Refresh PR branch for reopening
- `85c4da3` Move retention sample internals into product tests
- `add37eb` Fix integration agent log capture for normalized entity names
- `de80a3b` test: select durable agent logs by full session category
- _... 他 9 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更は示されていません。主な差分はサンプルの HTTP request／README と .NET retention／logging tests の修正で、retention 機能自体の公開範囲はガイドに従います。

**既存利用者への影響**

利用者の移行作業は不要です。サンプルを参照する場合は更新された request 例を使い、retention の利用可否は現行の公開ガイダンスを確認してください。

### [#104](https://github.com/microsoft/agent-framework-durable-extension/pull/104) — Add automatic durable history retention sample

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +823 / -2
- マージ日時 (UTC): `2026-10-13 11:06:48`

**変更概要**

Durable Agent の会話履歴を自動整理する .NET のサンプルと検証を追加します。
専用の `10_AutoHistoryRetention` console sample、履歴保持の probe tests、agent history unit tests と sample validation を整備しました。
長期会話の履歴保持を検討する Durable Task 利用者が動作例を参照できます。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-durable-extension.slnx` | 2 | 0 |
| `dotnet/eng/verify-samples/DurableAgentSamples.cs` | 22 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/10_AutoHistoryRetention.csproj` | 27 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/HistoryRetentionDemo.cs` | 159 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/Program.cs` | 7 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/README.md` | 134 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/tests/10_AutoHistoryRetention.Tests.csproj` | 28 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/tests/RetentionProbeTests.cs` | 316 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/README.md` | 2 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/AgentLoggingTests.cs` | 4 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/AgentEntityHistoryTests.cs` | 121 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/Microsoft.Agents.AI.DurableTask.UnitTests.csproj` | 1 | 0 |

</details>

<details><summary>コミット (11 件)</summary>

- `a8efac6` Add automatic durable history retention sample
- `0ab99cf` Add opt-in durable history retention sample
- `497bf34` Gate automatic retention sample for draft rollout
- `dbd52f4` Correct automatic retention sample guidance
- `894bd85` Refresh PR branch for reopening
- `85c4da3` Move retention sample internals into product tests
- `add37eb` Fix integration agent log capture for normalized entity names
- `de80a3b` test: select durable agent logs by full session category
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい公開 API シグネチャ変更は示されておらず、サンプルとテストによる利用例の追加です。コミットには automatic／opt-in retention の両案があり、最終的な利用方法はサンプルと公開ガイドに従います。

**既存利用者への影響**

既存アプリの移行は不要です。履歴を自動保持・整理したい利用者はサンプルを参考にし、保持期間と削除条件を自身の要件に合わせて検証してください。

### [#103](https://github.com/microsoft/agent-framework-durable-extension/pull/103) — Prefer camelCase for agent HTTP APIs

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +1023 / -261
- マージ日時 (UTC): `2026-10-09 04:10:42`

**変更概要**

Agent HTTP API の JSON property 名を camelCase に統一し、言語間の呼び出しや一般的な HTTP クライアントとの整合性を高めます。
Azure Functions の built-in endpoints、サンプル、テストを更新し、旧名の deprecation signal と移行互換ルールを文書化しました。
生成 agent endpoint を呼び出すクライアントに影響する API 形式変更です。

<details><summary>変更ファイル (34 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/durable-agents/README.md` | 2 | 2 |
| `docs/features/durable-agents/http-api-camelcase-migration.md` | 43 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/01_SingleAgent/README.md` | 10 | 3 |
| `dotnet/samples/DurableAgents/AzureFunctions/06_LongRunningTools/README.md` | 7 | 7 |
| `dotnet/samples/DurableAgents/AzureFunctions/06_LongRunningTools/demo.http` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/BuiltInFunctions.cs` | 196 | 47 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/AgentLoggingTests.cs` | 123 | 32 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/ExternalClientTests.cs` | 4 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/Logging/TestLoggerProvider.cs` | 6 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/TestHelper.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.UnitTests/BuiltInFunctionsAgentOutcomeTests.cs` | 40 | 12 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.UnitTests/BuiltInFunctionsSessionIdAliasTests.cs` | 100 | 25 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.UnitTests/BuiltInFunctionsWorkflowRoutingTests.cs` | 42 | 7 |
| `python/packages/azurefunctions/README.md` | 13 | 7 |
| _... 他 19 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `4cc6fa5` Prefer camelCase for agent HTTP APIs
- `d166155` Signal deprecated agent HTTP aliases
- `8deff9f` Update sample response examples to camelCase
- `970f527` Use sessionId in reliable streaming demo requests
- `1cbefca` Make sample run requests match their documented responses
- `10d9bb0` Scope the wait-for-response note to the generated agent endpoints
- `7a11283` Narrow the session field comment to the fields responses actually emit
- `f848666` Clarify agent HTTP migration compatibility rules
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

HTTP request／response の session などの JSON field を camelCase に変更し、旧 alias に deprecated signal を追加しています。移行ガイドでは互換性ルールを示しており、API 消費側の property 名が変わるため **⚠ 破壊的変更** として扱います。

**既存利用者への影響**

HTTP API の snake_case field を前提とする利用者は camelCase へ更新してください。旧 alias の猶予・互換条件を移行ガイドで確認し、request／response とサンプルを合わせてテストしてください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #142 | Add public opt-in automatic durable history retention | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/142> |
| PR | #144 | Document schema-v2 deployment and history retention | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/144> |
| PR | #145 | Prototype Python compatibility-first schema rollout | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/145> |
| PR | #140 | Python: support opt-in Blob payload offloading | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/140> |
| PR | #136 | [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/136> |
| PR | #135 | [BREAKING] Python: constrain standalone agent entity operations | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/135> |
| PR | #134 | Python: prepare shared durable runtime for Functions 2.x | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/134> |
| PR | #139 | Bump multidict from 6.7.1 to 6.9.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/139> |
| PR | #138 | Bump werkzeug from 3.1.8 to 3.1.9 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/138> |
| Issue | #143 | External history-provider failures can cause at-least-once execution | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/143> |
| Issue | #51 | Consider unifying public HTTP API surfaces on camelCase | closed | cgillum | <https://github.com/microsoft/agent-framework-durable-extension/issues/51> |
| Issue | #115 | [GA] Align extension with latest Agent Framework dependencies | closed | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/115> |
