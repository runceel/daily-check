# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- `FunctionsEnableWorkerIndexing` が有効な環境で `AZFW0110` 警告を出すようにする変更が提案されており、インデクシング有効時の構成確認をしやすくなっています。
- 今回の差分は主に SDK の警告強化で、既存の実行挙動そのものを変えるものではなく、運用時の診断性向上が中心です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3449 | feat(sdk): emit AZFW0110 warning when FunctionsEnableWorkerIndexing is set | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3449> |
