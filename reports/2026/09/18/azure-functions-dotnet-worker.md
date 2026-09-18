# Azure/azure-functions-dotnet-worker

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 今週は `Azure/azure-functions-dotnet-worker` の変更が小さく、メインの動きは依存パッケージ更新と ServiceBus 系パッケージの出力問題の確認でした。
- 破壊的変更やセキュリティ修正は検出されず、運用上の優先度は品質・依存解消の観点が中心です。
- open issue では `.azurefunctions` 配下に `Grpc.Net.Client` が混入している事象が報告されており、デプロイメント時のアーティファクト内容確認が求められます。
- これにより、依存の重複や出力物の余分なパッケージが意図せず含まれるケースに注意する必要があります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3510 | build(deps): bump dotnet-sdk from 10.0.400 to 10.0.401 | open | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3510> |
| Issue | #3512 | ServiceBus WorkerExtensions output includes Grpc.Net.Client 2.49.0 in .azurefunctions artifacts | open | Thel3rain | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3512> |
| Issue | #3511 | ServiceBus WorkerExtensions output includes Grpc.Net.Client 2.49.0 in .azurefunctions artifacts | open | Thel3rain | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3511> |
