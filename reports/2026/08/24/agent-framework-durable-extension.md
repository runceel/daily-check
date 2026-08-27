# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 4 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) — Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x （PR / open / ahmedmuhsin）
  Azure Functions のホスト実装を利用する Python 利用者は azure-functions-durable 2.x の API と移行手順を確認してください。

## このリポジトリの要点

Azure Functions ホストを azure-functions-durable 2.x へ移行する破壊的変更 PR がオープン中です。併せて、MaxSupersteps の扱いやイベントストリームのペイロード上限に関する .NET の課題も継続確認が必要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #72 | Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/72> |
| Issue | #71 | .NET: Hitting MaxSupersteps silently truncates the workflow and reports success | open | mgoelz | <https://github.com/microsoft/agent-framework-durable-extension/issues/71> |
| Issue | #69 | .NET: `DurableWorkflowResult.Events` retains the full workflow event stream and can exceed payload limits | open | mgoelz | <https://github.com/microsoft/agent-framework-durable-extension/issues/69> |
| Issue | #73 | Python: Azure Functions samples each hand-roll an orchestration status endpoint | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/issues/73> |
| Issue | #70 | .NET: Published packages are still built from `microsoft/agent-framework`, so fixes merged here don't reach NuGet | open | mgoelz | <https://github.com/microsoft/agent-framework-durable-extension/issues/70> |
