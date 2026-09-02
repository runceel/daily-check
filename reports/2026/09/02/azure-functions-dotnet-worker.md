# Azure/azure-functions-dotnet-worker

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Kafka 拡張 4.3.3 のリリース準備が進み、OAuth 接続時の HTTPS CA 設定が追加されました。
- GitHub Actions の参照を完全なコミット SHA に固定し、CI の再現性とサプライチェーン対策を強化しています。
- Storage.Blobs 6.8.2 で Blob trigger の連続実行や `BlobOutputAttribute` のパス整形に関する Issue が報告されており、利用者は更新影響を確認してください。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3496 | Pin GitHub Actions to full-length commit SHAs | merged | danfiedler-msft | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3496> |
| PR | #3498 | Prepare Kafka extension 4.3.3 release | merged | TsuyoshiUshio | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3498> |
| PR | #3495 | feat: add Kafka OAuth HTTPS CA settings | merged | TsuyoshiUshio | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3495> |
| PR | #3501 | test: modernize analyzer testing packages | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3501> |
| PR | #3500 | build(deps): bump the github-actions group with 2 updates | open | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3500> |
| Issue | #3499 | Blobtrigger continous triggering on blobs broken in 6.8.2 of Microsoft.Azure.Functions.Worker.Extensions.Storage.Blobs | open | nedimhadz | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3499> |
| Issue | #3497 | `BlobOutputAttribute` formats path with quoted string values | open | bzd3y | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3497> |
