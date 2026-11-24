# Azure/azure-functions-dotnet-worker

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#3542](https://github.com/Azure/azure-functions-dotnet-worker/issues/3542) — Microsoft.Azure.Functions.Worker.Extensions.ServiceBus still depends on pre-breaking change Azure.Identity （Issue / open / tebeco）
  Service Bus拡張利用者はAzure.Identityの推移的依存と移行ガイドを確認してください。1.21.xへの更新または依存除去を求める未解決Issueであり、今回workerに破壊的変更がマージされたわけではありません。

## 主要な変更点

- [Azure/azure-functions-dotnet-worker#3539](https://github.com/Azure/azure-functions-dotnet-worker/pull/3539)がマージされ、長さ0のZIPデプロイ応答を空として扱い、非同期デプロイのポーリングへ進めるよう修正されました。
- 不正形式の失敗応答はHTTPエラーを`DeploymentException`として維持し、再試行経路を保ちます。不正形式の成功応答ではJSONエラーを引き続き通知し、失敗を握りつぶしません。
- 対応するVisual Studio ZIP Deployの`JsonException`報告Azure/azure-functions-dotnet-worker#3537がクローズ。マージとSDKの配布済みバージョンは区別してください。
- Azure/azure-functions-dotnet-worker#3542はService Bus拡張のAzure.Identity依存更新要求です。依存の下限が1.16.0以上であることと、実際に解決されるバージョンは区別して調査する必要があります。
- ビルドSDKを10.0.404へ更新するAzure/azure-functions-dotnet-worker#3543はオープンで、採用済みではありません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3539 | fix(sdk): handle empty zip deployment responses | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3539> |
| PR | #3543 | build(deps): bump dotnet-sdk from 10.0.403 to 10.0.404 | open | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3543> |
| Issue | #3542 | Microsoft.Azure.Functions.Worker.Extensions.ServiceBus still depends on pre-breaking change Azure.Identity | open | tebeco | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3542> |
| Issue | #3537 | Visual Studio Zip Deploy task fails with `JsonException` | closed | DL444 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3537> |
