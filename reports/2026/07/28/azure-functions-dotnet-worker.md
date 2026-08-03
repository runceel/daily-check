# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- gRPC の worker stream loop が短命な単一スレッド `SynchronizationContext` を捕捉し、書き込みポンプが停止する可能性を修正しました。
- #3455 の修正により、周辺の実行コンテキストに依存せずストリーム処理を継続できるようになりました。
- 対象は Isolated .NET worker の gRPC 通信を利用するアプリで、通常の関数コード変更は不要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3455 | fix(grpc): avoid capturing ambient SynchronizationContext in worker stream loops | merged | feiqian | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3455> |
| Issue | #3454 | Isolated .NET worker's outbound gRPC write pump can hang indefinitely when it captures a short-lived single-threaded SynchronizationContext | closed | feiqian | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3454> |
