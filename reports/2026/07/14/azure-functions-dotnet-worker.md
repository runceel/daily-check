# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-10 00:28:22 〜 2026-07-14 01:26:38 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#3395](https://github.com/Azure/azure-functions-dotnet-worker/issues/3395) — [SDK] Emit SDK warning when`FunctionsEnableWorkerIndexing` is used, announcing it is deprecated. （Issue / closed / jviau）
  `FunctionsEnableWorkerIndexing` を設定している .NET isolated worker 利用者は、ビルド警告 AZFW0110 を確認し、代替構成と廃止時期を追跡してください。

## 主要な変更点

- `FunctionsEnableWorkerIndexing` の非推奨化を知らせる SDK 警告 AZFW0110 が追加されました。
- 該当設定を使うアプリケーションは、警告を無視せず移行方針を確認する必要があります。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3449 | feat(sdk): emit AZFW0110 warning when FunctionsEnableWorkerIndexing is set | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3449> |
| Issue | #3395 | [SDK] Emit SDK warning when`FunctionsEnableWorkerIndexing` is used, announcing it is deprecated. | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3395> |
