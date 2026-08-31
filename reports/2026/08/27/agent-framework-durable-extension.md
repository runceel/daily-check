# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 3 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | kshyju |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Durable Agent / Workflow の構成 API 合成、重複ワークフロー名の検出、Functions HTTP 応答の JSON 化が進みました。
特に #67 では複数の登録経路を自然に組み合わせられるよう実装・サンプル・テストを大幅に更新しています。
今後は HITL の入力保持や異なるワークフロー間の executor 名衝突に関する Issue が継続監視対象です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#67](https://github.com/microsoft/agent-framework-durable-extension/pull/67) — [.NET] Fix ConfigureDurableAgents and ConfigureDurableWorkflows not composing

- 作者: kshyju / 状態: MERGED
- ラベル: —
- 変更行数: +844 / -100
- マージ日時 (UTC): `2026-08-25 20:32:54`

**変更概要**

`ConfigureDurableAgents` と `ConfigureDurableWorkflows` を複数回呼び出した際に設定が合成されない問題を修正しました。
サービス登録、エージェントスナップショット、Functions メタデータ変換を整理し、各構成メソッドから同じエントリーポイントを利用できるようにしています。
Azure Functions とコンソールの Durable サンプル、関連テスト・ドキュメントも更新されました。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/durable-agents/README.md` | 14 | 0 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/05_WorkflowAndAgents/Program.cs` | 13 | 11 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/05_WorkflowAndAgents/README.md` | 24 | 2 |
| `dotnet/samples/DurableWorkflows/ConsoleApps/04_WorkflowAndAgents/Program.cs` | 8 | 7 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/DurableAgentsOptions.cs` | 56 | 7 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/DurableServicesMarker.cs` | 23 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/ServiceCollectionExtensions.cs` | 61 | 27 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/Workflows/DurableWorkflowOptions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/DurableAgentFunctionMetadataTransformer.cs` | 29 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/FunctionsApplicationBuilderExtensions.cs` | 60 | 39 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/DurableConfigurationCompositionTests.cs` | 214 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.UnitTests/FunctionsDurableConfigurationCompositionTests.cs` | 339 | 0 |

</details>

<details><summary>コミット (10 件)</summary>

- `af0f077` Add failing tests for durable agent/workflow configuration composition
- `fab1a17` Fix durable agent and workflow configuration composition
- `1d1d773` Update samples and docs to show composable durable configuration
- `12f59bd` Use case-insensitive comparer for the agent snapshot set
- `7a00115` Give agents the same entry points from every configuration method
- `1e09465` Consolidate the Functions changelog entry and cover every built-in en…
- `23e2194` Merge remote-tracking branch 'origin/main' into kshyju-symmetrical-sn…
- `cd78be7` Promote a workflow-registered agent instead of throwing
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存の構成 API を置き換えるのではなく、登録済み設定を合成する実装へ変更しました。エージェント登録の重複判定には大文字小文字を区別しない集合を用います。
新規の `DurableServicesMarker` と構成メソッド間の共通エントリーポイントが追加され、Functions のエージェント昇格処理も整合しました。

**既存利用者への影響**

既存の単一構成は通常そのまま動作します。複数の構成メソッドを組み合わせていた利用者は、重複登録が意図どおり合成されるか確認してください。

### [#66](https://github.com/microsoft/agent-framework-durable-extension/pull/66) — [.NET] Throw when AddWorkflow is given a duplicate workflow name

- 作者: kshyju / 状態: MERGED
- ラベル: —
- 変更行数: +145 / -2
- マージ日時 (UTC): `2026-08-24 19:59:48`

**変更概要**

`AddWorkflow` に同じ名前のワークフローを渡すと既存登録を黙って上書きする問題を修正しました。
重複名を検出した時点で例外を送出し、登録順序に依存した不意の実行先変更を防ぎます。
ワークフロー名を動的に生成・共有する .NET 利用者は、名前の一意性を確認する必要があります。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/Workflows/DurableWorkflowOptions.cs` | 23 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/Workflows/DurableWorkflowOptionsTests.cs` | 121 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `9a95e75` Fix AddWorkflow silently overwriting a workflow with a duplicate name
- `a30e927` Encode new test file as UTF-8 with BOM to satisfy dotnet format
- `55cb2a2` Address PR review: link CHANGELOG entry to the PR and assert registry…
- `1ed4d03` Tag changelog entry as breaking and register executors before adding …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: 重複名の `AddWorkflow` は上書きせず例外になります。`DurableWorkflowOptions` の登録検証と実行者登録順序を変更しています。

**既存利用者への影響**

同名ワークフローを意図的に上書きしていたコードは、名前を一意にするか既存登録を整理してください。

### [#60](https://github.com/microsoft/agent-framework-durable-extension/pull/60) — [.NET] Always return JSON from workflow status and respond endpoints

- 作者: kshyju / 状態: MERGED
- ラベル: —
- 変更行数: +311 / -9
- マージ日時 (UTC): `2026-08-24 17:19:44`

**変更概要**

ワークフローの status / respond エンドポイントが常に JSON を返すよう応答契約を統一しました。
Azure Functions の組み込みエンドポイントとテストを更新し、従来の `text/plain` 応答によるクライアント側の解析失敗を防ぎます。
HTTP レスポンス本文を直接扱うクライアントと監視が影響を受けます。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/BuiltInFunctions.cs` | 19 | 9 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.UnitTests/BuiltInFunctionsWorkflowJsonEndpointTests.cs` | 291 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `59e24d8` Add failing tests for workflow status/respond JSON response contract
- `2519746` Always return JSON from workflow status and respond endpoints

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

status / respond の Content-Type と本文形式が JSON に固定される契約変更です。専用の公開メソッドシグネチャは変更されていません。

**既存利用者への影響**

JSON を前提にするクライアントは変更不要です。`text/plain` を期待していたクライアントは JSON パースと Content-Type 判定へ移行してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #78 | .NET: Add opt-in HITL response merge to preserve pre-suspension executor input | open | safal207 | <https://github.com/microsoft/agent-framework-durable-extension/issues/78> |
| Issue | #74 | Executor instances with the same name in different workflows silently collide | open | kshyju | <https://github.com/microsoft/agent-framework-durable-extension/issues/74> |
| Issue | #75 | Docs: hosting-only Azure Functions apps get no agent routes without an orchestration trigger | open | he-yufeng | <https://github.com/microsoft/agent-framework-durable-extension/issues/75> |
| Issue | #27 | Make Durable Agent and Durable Workflow configuration APIs compose naturally | closed | greenie-msft | <https://github.com/microsoft/agent-framework-durable-extension/issues/27> |
| Issue | #76 | .NET: [Bug]: HITL in Durable workflows the Executor TInput state is lost after approval is granted. | closed | Sachin-Nand | <https://github.com/microsoft/agent-framework-durable-extension/issues/76> |
| Issue | #50 | AddWorkflow silently overwrites an existing workflow registered under the same name | closed | kshyju | <https://github.com/microsoft/agent-framework-durable-extension/issues/50> |
| Issue | #56 | .NET Functions host returns unparsable text/plain from workflow HTTP endpoints | closed | kshyju | <https://github.com/microsoft/agent-framework-durable-extension/issues/56> |
