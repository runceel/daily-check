# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- dotnet SDK の依存バージョンが 10.0.300 → 10.0.301 に更新されました（#3428、マージ済み）。
- SDK 側で、ZipDeploy 実行時のログから機密情報をリダクト（マスキング）する修正が提案されています（#3448、オープン中）。ログ出力に認証情報等が漏れる可能性があったための対応で、セキュリティ上の観点からマージ状況を注視する価値があります。
- WorkerExtension プロジェクトのひな型生成を net10.0 に更新する変更（#3447）や、Function Metadata Provider/Executor を常に出力するよう SDK ジェネレーターを修正する変更（#3446）がオープン中で、.NET 10 対応の整備が進んでいます。
- 全体として自動判定による重要変更（破壊的変更/セキュリティ/非推奨/GA）の検出はゼロ件で、期間中の活動量も少なめでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3428 | Bump dotnet-sdk from 10.0.300 to 10.0.301 | merged | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3428> |
| PR | #3448 | fix(sdk): redact sensitive info from ZipDeploy logs | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3448> |
| PR | #3447 | Update WorkerExtension project generation to net10.0 in SDK | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3447> |
| PR | #3446 | fix(sdk-generators): always emit function metadata provider and executor | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3446> |
| Issue | #2377 | Worker failing without raising error | closed | winterlimelight | <https://github.com/Azure/azure-functions-dotnet-worker/issues/2377> |
