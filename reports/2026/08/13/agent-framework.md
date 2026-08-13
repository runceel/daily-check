# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-11 23:30:11 〜 2026-08-13 00:02:03 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 7 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | vaibhav-patel, westey-m |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7521](https://github.com/microsoft/agent-framework/pull/7521) — Python: [BREAKING] Require building functional workflow instances （PR / open / moonbox3）
  Python のワークフロー利用者は、functional workflow instance の構築要件と既存コードへの影響を確認し、マージ前に必要な移行手順を整理してください。
- **⚠ 破壊的変更** [#7384](https://github.com/microsoft/agent-framework/issues/7384) — .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration （Issue / open / MirkoMattioliSacmi）
  .NET で HarnessAgent と Handoff orchestration を使う利用者は、永続化された ChatHistoryProvider state による構築破損の影響を確認し、修正版が出るまで該当構成を重点監視してください。

## このリポジトリの要点

microsoft/agent-framework では、Python の AG-UI ワークフローにチェックポイント保存・再開機能が追加されました。  
.NET では BackgroundAgentsProvider のセッション単位タスクをキャンセル・解放する API が加わり、長時間実行時の後始末を改善しています。  
一方、Python の functional workflow 構築要件変更と .NET Handoff の状態管理問題は、既存利用者が継続確認すべき重要事項です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6646](https://github.com/microsoft/agent-framework/pull/6646) — Python: add checkpointing support to AgentFrameworkWorkflow.run() in agent-framework-ag-ui

- 作者: vaibhav-patel / 状態: MERGED
- ラベル: `python`
- 変更行数: +5770 / -5157
- マージ日時 (UTC): `2026-08-12 22:11:33`

**変更概要**

AG-UI の `AgentFrameworkWorkflow.run()` にチェックポイントの保存・再開を組み込み、途中状態からワークフローを再開できるようにしました。  
エンドポイント、ワークフロー実行状態、スレッドスナップショットの扱いを更新し、再開時の応答変換や二重復元を整理しています。  
AG-UI 連携で中断・再試行を扱う Python 利用者が、実行状態を永続化した運用を構築できます。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_endpoint.py` | 18 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow.py` | 49 | 5 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 83 | 8 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 56 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_agent.py` | 239 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 185 | 0 |
| `python/uv.lock` | 5140 | 5140 |

</details>

<details><summary>コミット (14 件)</summary>

- `f2c5ee7` Python: add checkpointing support to AgentFrameworkWorkflow.run() in …
- `b7f3384` Import Executor from the public agent_framework API in ag-ui workflow…
- `41e9510` Merge branch 'main' into fix/6632-agui-workflow-checkpointing
- `13332cf` Merge branch 'main' into fix/6632-agui-workflow-checkpointing
- `84d8613` Merge branch 'main' into fix/6632-agui-workflow-checkpointing
- `5b6dc4c` Fix ag-ui checkpoint resume: preserve thread snapshot, coerce resume …
- `9afe841` Merge branch 'main' into fix/6632-agui-workflow-checkpointing
- `4c3c3af` Coerce ag-ui resume responses without a second checkpoint restore
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentFrameworkWorkflow.run()` 周辺に checkpoint／resume の状態を受け渡す処理と、スレッドスナップショットを保持する実行モデルが追加されました。  
公開 `agent_framework` API から `Executor` を参照する変更も含まれます。今回の記録上、既存 API を削除する **破壊的変更** は確認できません。

**既存利用者への影響**

既存の AG-UI ワークフローを通常実行するだけなら必須の移行はありません。  
チェックポイント再開を使う場合は、永続化ストレージと resume 時のスレッド状態の扱いを確認し、テストを追加してください。

### [#7602](https://github.com/microsoft/agent-framework/pull/7602) — .NET: Add BackgroundAgentsProvider.ReleaseSessionAsync to cancel and release per-session background tasks

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +1133 / -30
- マージ日時 (UTC): `2026-08-12 14:39:24`

**変更概要**

BackgroundAgentsProvider に、セッションごとに保持しているバックグラウンド タスクをキャンセルして解放する仕組みを追加しました。  
`ReleaseSessionAsync` と実行時状態管理を導入し、解放前にタスクを停止する順序や引数検証を整えています。  
セッション終了時のリソース残留を抑えたい .NET の Harness 利用者が、明示的な後処理を実行できる変更です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/Harness/BackgroundAgents/BackgroundAgentRuntimeState.cs` | 48 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/BackgroundAgents/BackgroundAgentsProvider.cs` | 385 | 30 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/BackgroundAgents/BackgroundAgentsProviderTests.cs` | 700 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `32ace65` Add the abilty for the caller to release and cancel background tasks
- `0bd4605` Improve param validation
- `89bed19` Address PR comments
- `660cc04` Merge branch 'main' into dotnet-add-background-task-releasing
- `0fc3da4` Address PR comments.
- `7509bae` Address PR comments: cancel tasks before publishing the release

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `BackgroundAgentsProvider.ReleaseSessionAsync` API と、セッション単位のランタイム状態を表す `BackgroundAgentRuntimeState` が追加されました。  
既存の API を削除・変更した記録はなく、今回の変更自体に利用者向けの **破壊的変更** は確認できません。

**既存利用者への影響**

既存利用者に必須の移行はありません。  
セッション終了時にバックグラウンド処理を確実に止めたい場合は、`ReleaseSessionAsync` の呼び出しをライフサイクル処理へ追加してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7636 | Python: Add a global workflow checkpoint type registry | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7636> |
| PR | #7625 | Python: fix(github-copilot): forward telemetry config to client | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7625> |
| PR | #7635 | Python: Fix Cosmos memory provider calling renamed add_cosmos toolkit API | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7635> |
| PR | #7631 | Python: Add approval storage and improve truth checks | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7631> |
| PR | #7626 | Python: Allow checkpoint deserialization for orchestrations | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7626> |
| PR | #7611 | .NET: [Bug]: Request processing fails when web search is enabled beca… | closed | feiyun0112 | <https://github.com/microsoft/agent-framework/pull/7611> |
| PR | #7616 | Python: Add a read-only TaskMarket delegation sample | closed | dacode-dev | <https://github.com/microsoft/agent-framework/pull/7616> |
| Issue | #7633 | Python: Cosmos memory provider still calls add_cosmos after toolkit API rename | open | coding-totoro | <https://github.com/microsoft/agent-framework/issues/7633> |
| Issue | #7632 | Python: .NET: [Bug]: | open | bingbing-gui | <https://github.com/microsoft/agent-framework/issues/7632> |
| Issue | #7629 | .NET: [Bug]: AGUI Client does not map RUN_STARTED.threadId to ChatResponseUpdate.ConversationId | open | mip1983 | <https://github.com/microsoft/agent-framework/issues/7629> |
| Issue | #7630 | Python: [Bug]: Foundry Hosting - User messages added to conversation chat history for failed requests | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7630> |
| Issue | #7627 | Possible complementary direction: LongHorizon-Harness for sustained agent tasks | open | Upper9527 | <https://github.com/microsoft/agent-framework/issues/7627> |
| Issue | #7623 | .NET: Update AG-UI samples to current SDK patterns | open | danroth27 | <https://github.com/microsoft/agent-framework/issues/7623> |
| Issue | #7624 | Python: [Bug]: GitHubCopilotAgent drops telemetry config when starting the CLI | open | noamkeidar | <https://github.com/microsoft/agent-framework/issues/7624> |
| Issue | #6632 | Python: [Feature]: Add Checkpointing Support to AgentFrameworkWorkflow.run() in agent-framework-ag-ui | closed | mjod | <https://github.com/microsoft/agent-framework/issues/6632> |
| Issue | #7596 | .NET: BackgroundAgentsProvider should provide a way to clear per-session runtime tasks | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7596> |
| Issue | #7615 | Python: Add a read-only TaskMarket delegation sample | closed | dacode-dev | <https://github.com/microsoft/agent-framework/issues/7615> |
| Issue | #7613 | .NET: [Bug]: code definition skills,agent returning an empty response | closed | dalangtk | <https://github.com/microsoft/agent-framework/issues/7613> |
