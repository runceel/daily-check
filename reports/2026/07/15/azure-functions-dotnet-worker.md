# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-14 01:26:38 〜 2026-07-15 04:59:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- SDK ジェネレーターが常に function metadata provider と executor を出力するよう修正されました。
- 拡張機能の restore source 解決を安定化する修正がオープン中です。
- SignalR の auth-refresh binding と ServerlessHub の refresh API が提案されています。
- 関数宣言が 0 件のアプリが動作しない問題がクローズされました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3446 | fix(sdk-generators): always emit function metadata provider and executor | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3446> |
| PR | #3452 | fix(sdk): reliably resolve extension restore sources | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3452> |
| PR | #3451 | [SignalR] Add serverless auth-refresh binding and ServerlessHub refresh APIs | open | MoChilia | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3451> |
| Issue | #3418 | [SDK] Apps do not work with 0 functions declarations | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3418> |
