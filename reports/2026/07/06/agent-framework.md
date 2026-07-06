# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-05 04:03:53 〜 2026-07-06 01:30:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 5 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

- 期間内はマージ済み PR がなく、オープン PR 1 件と Issue 5 件が確認され、AG-UI や harness のセッション状態管理に関する報告が中心でした。
- 特に `AG-UI` host がリクエストごとに新しい `AgentSession` を作るため状態が失われる問題、frontend tool call と sibling backend tool call が同時に出た際の実行漏れ、そして per-executor forwarding hook の要望が注目されます。
- その一方で Python 側の docstring 修正 PR が出ており、ドキュメント整備も継続して進んでいます。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6924 | Python: docs: fix removed ChatAgent references in _clients.py docstrings | open | sumesh-ramasamy | <https://github.com/microsoft/agent-framework/pull/6924> |
| Issue | #6923 | [Feature]: Add a Db2 Vector Store Implementation for Microsoft Agent Framework | open | DhruvChaturvediIBM | <https://github.com/microsoft/agent-framework/issues/6923> |
| Issue | #6922 | Python: .NET: [Bug]: FunctionInvokingChatClient drops sibling backend tool calls when a frontend (declaration-only) tool call appears in the same iteration | open | pjmagee | <https://github.com/microsoft/agent-framework/issues/6922> |
| Issue | #6921 | .NET: Python: [Feature]: expose harness session state (todos, mode) as AG-UI shared state out of the box | open | antsok | <https://github.com/microsoft/agent-framework/issues/6921> |
| Issue | #6920 | .NET: Python: [Bug]: AG-UI host builds a fresh AgentSession per request — session-stateful harness features silently lose their state between runs | open | antsok | <https://github.com/microsoft/agent-framework/issues/6920> |
| Issue | #6918 | .NET: Per-executor chat-client forwarding hook for InProcessExecution workflows (observability) | open | joslat | <https://github.com/microsoft/agent-framework/issues/6918> |
