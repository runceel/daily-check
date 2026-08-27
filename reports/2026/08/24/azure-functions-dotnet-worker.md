# Azure/azure-functions-dotnet-worker

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- CI パイプラインを Windows 2025 イメージへ移行する変更が進んでいます。
- Azure.Functions.Sdk 1.0.0 のリリース準備がオープン中です。
- 自動判定で重要変更は検出されておらず、期間内の動きは CI と SDK の整備が中心です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3483 | ci: migrate pipelines to Windows 2025 image | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3483> |
| PR | #3488 | build(sdk): release Azure.Functions.Sdk 1.0.0 | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3488> |
| PR | #3486 | build(deps): bump dotnet-sdk from 10.0.302 to 10.0.400 | open | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3486> |
| Issue | #3490 | Upgrading Microsoft.Azure.Functions.Worker.Extensions.Storage.Queues from version 5.5.4 to 5.5.5 in a .NET 10 dotnet-isolated project breaks compilation / local host execution. | open | bryantlikes | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3490> |
| Issue | #3487 | UseFunctionsWorkerDefaults() prevents worker logs from appearing in console/log stream while logs are still exported to Application Insights | open | JulioGPena | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3487> |
| Issue | #3489 | Worker logs not routed to console/host output when using OpenTelemetry schema v1.37.0 | open | Atxec | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3489> |
| Issue | #3481 | Missing Microsoft.Azure.Functions.Worker.Sdk 2.1.0 Release Notes | closed | tebeco | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3481> |
