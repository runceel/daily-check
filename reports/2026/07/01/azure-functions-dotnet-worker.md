# Azure/azure-functions-dotnet-worker

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

## 主要な変更点

対象期間中に目立った変更はありませんでした。オープン中の PR として、`BlobStorageConverter` を型ごとに分割する改善（#3445）が進行中です。クローズした Issue は 2 件あり、`Microsoft.Azure.Functions.Worker.Sdk` 2.X 系へのアップグレード後にコードカバレッジが下がる問題（#3432）と、`ConfigureFunctionsApplicationInsights` を複数回呼び出すとランタイムがクラッシュしうる冪等性の問題（#3416）が対応・クローズされています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3445 | Split BlobStorageConverter into per-type converters (#1512) | open | NiteshVarman | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3445> |
| Issue | #3432 | Auto-generated classes reduce code coverage after upgrading Microsoft.Azure.Functions.Worker.Sdk to 2.X | closed | hz-git-oss | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3432> |
| Issue | #3416 | `ConfigureFunctionsApplicationInsights` is not idempotent and multiple calls can lead to runtime crashes | closed | yasmoradi | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3416> |
