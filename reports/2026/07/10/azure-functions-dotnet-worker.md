# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-08 06:31:54 〜 2026-07-10 00:28:22 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 新規 PR やマージ済み PR はなく、期間内の変化は Issue #3450 の 1 件でした。
- Azure Functions .NET worker の新しい Azure MSBuild SDK 0.4.0 ベースプロジェクトで、OpenTelemetry 利用時に `System.MissingMethodException` が発生する報告です。
- OpenTelemetry と新 SDK を組み合わせる利用者は、Issue の回避策・修正版の進展を確認し、更新前にビルドと起動テストを行ってください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #3450 | OpenTelemetry breaks new Azure MSBuild SDK 0.4.0 based project (System.MissingMethodException) | open | sherman89 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3450> |
