# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- .NET SDK が 10.0.302 へ更新され、依存するビルド環境が進みました。
- プレースホルダー再利用時の作業ディレクトリ設定が修正され、特殊化後の実行環境が安定します。
- net11.0 向けに `Azure.Functions.Sdk` へ移行を促す警告、Worker パッケージ参照の整理が進行中です。
- gRPC ワーカーストリームで短命な `SynchronizationContext` を捕捉しない修正が提案されています。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3453 | Bump dotnet-sdk from 10.0.301 to 10.0.302 | merged | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3453> |
| PR | #3413 | Set working directory during placeholder reuse specialization | merged | Tonewall | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3413> |
| PR | #3459 | feat(sdk): warn to migrate to Azure.Functions.Sdk when targeting net11.0 | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3459> |
| PR | #3457 | fix(sdk): remove implicit Worker package reference | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3457> |
| PR | #3456 | refactor(sdk): expand removed props and pin release config for generated extension project | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3456> |
| PR | #3455 | fix(grpc): avoid capturing ambient SynchronizationContext in worker stream loops | open | feiqian | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3455> |
| Issue | #3458 | [SDK] Update docs for `Azure.Functions.Sdk` | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3458> |
| Issue | #3454 | Isolated .NET worker's outbound gRPC write pump can hang indefinitely when it captures a short-lived single-threaded SynchronizationContext | open | feiqian | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3454> |
| Issue | #3374 | [HOST] Functions native host is running worker with wrong CWD after specialization | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3374> |
