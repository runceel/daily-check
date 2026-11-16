# Azure/azure-functions-dotnet-worker

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 5 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Azure/azure-functions-dotnet-worker#3522 は `WorkerInitResponse` で host configuration を送る対応、Azure/azure-functions-dotnet-worker#3525 は BYOC の `ExtensionPayload` 対応を追加しました。
- Azure/azure-functions-dotnet-worker#3528 は worker stream を開く前の初期 host 接続を再試行し、Azure/azure-functions-dotnet-worker#3532 はアプリケーションディレクトリの解決を統一します。
- Azure/azure-functions-dotnet-worker#3447 は内側の TFM を SDK と互換な net10.0 以下から選ぶ修正です。対象アプリの TFM を一律 net10.0 に変更する告知ではありません。
- worker パッケージの preview release 準備がマージ済みですが、standalone container publish（Azure/azure-functions-dotnet-worker#3535）と Cosmos DB trigger batch size（Azure/azure-functions-dotnet-worker#3529）は未マージです。
- Azure 側では [.NET 11 対応が GA](azure.md) になった一方、.NET 11 の Chiseled image / Container Apps 配布に関する Azure/azure-functions-dotnet-worker#3534、Azure/azure-functions-dotnet-worker#3533 は未解決で、コンテナー経路は別途確認が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3531 | Prepare worker packages for preview release | merged | brettsam | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3531> |
| PR | #3532 | Use consistent application directory resolution | merged | fabiocav | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3532> |
| PR | #3522 | [APP-01] Send host configuration from the .NET isolated worker in WorkerInitResponse | merged | RohitRanjanMS | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3522> |
| PR | #3525 | adding ExtensionPayload support for BYOC | merged | brettsam | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3525> |
| PR | #3528 | Retry initial host connection before opening the worker stream | merged | brettsam | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3528> |
| PR | #3500 | build(deps): bump the github-actions group across 1 directory with 2 updates | merged | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3500> |
| PR | #3447 | fix(sdk): select an SDK-compatible inner TFM up to net10.0 | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3447> |
| PR | #3524 | build(deps): bump dotnet-sdk from 10.0.401 to 10.0.403 | merged | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3524> |
| PR | #3535 | feat(sdk): support standalone container publishing | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3535> |
| PR | #3529 | Configure Cosmos DB trigger batch size in .NET isolated apps | open | mariusmuntean | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3529> |
| Issue | #3530 | Update gRPC client dependencies to 2.85.0 | open | FinVamp1 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3530> |
| Issue | #3534 | Fix .NET 11 SDK container publishing to use the published Chiseled image | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3534> |
| Issue | #3533 | Error deploying .NET 11 function app to Azure Container apps, container not in registry | open | mip1983 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3533> |
| Issue | #3527 | [SDK] Generate extension payload ZIP during build and publish | open | brettsam | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3527> |
| Issue | #3526 | ASP.NET Core integration: coordinate HttpUri advertisement with Kestrel listener readiness | open | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3526> |
| Issue | #3442 | .NET 11 Docs update | closed | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3442> |
| Issue | #3444 | WorkerExtension still uses .NET 8 | closed | pregress | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3444> |
