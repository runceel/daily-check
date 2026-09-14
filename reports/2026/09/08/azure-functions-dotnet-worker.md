# Azure/azure-functions-dotnet-worker

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- ZipDeploy の公開処理を復旧する修正（#3504）がマージされ、クリーンなツリーでの発行失敗に対応しました。
- 関連 Issue では、出力ディレクトリ未作成や `Azure.Functions.Sdk` タスクの shadowing が原因として整理されています（#3502、#3503）。
- Isolated worker の Service Bus バッチトリガーで `maxConcurrentCalls` が適用される範囲について確認が続いています（#3505）。
- 今回は破壊的変更・セキュリティ修正・非推奨化に該当する変更は検出されていません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3504 | fix(sdk): restore ZipDeploy publishing | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3504> |
| Issue | #3505 | Does maxConcurrentCalls apply to IsBatched=true Service Bus triggers in the isolated worker? | open | Ssyba | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3505> |
| Issue | #3502 | CreateFuncZipFile does not create its output directory, failing ZipDeploy publish on a clean tree | closed | raymondBporter | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3502> |
| Issue | #3503 | ZipDeploy publish fails: Azure.Functions.Sdk task shadowed by Microsoft.NET.Sdk.Publish | closed | raymondBporter | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3503> |
