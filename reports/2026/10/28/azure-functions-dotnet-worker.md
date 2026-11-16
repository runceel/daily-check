# Azure/azure-functions-dotnet-worker

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内にマージ済み PR はなく、進行中の変更提案が 2 件あります。
- PR #3522 は .NET isolated worker から host configuration を `WorkerInitResponse` で送る Preview 提案です。採用された場合の host／worker 初期化動作を確認してください。
- PR #3523 は、インデントされた呼び出しを含むコードで AZFW0014 analyzer が `NullReferenceException` を起こす問題の修正提案です。現時点では未マージです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3522 | [Preview][APP-01] Send host configuration from the .NET isolated worker in WorkerInitResponse | open | RohitRanjanMS | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3522> |
| PR | #3523 | Fix NullReferenceException in the AZFW0014 analyzer for indented calls | open | AsadIqbal-Dev | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3523> |
