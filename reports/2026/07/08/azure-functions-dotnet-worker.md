# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 対象期間中はソースコードの変更（マージ済み PR）はなく、**特筆すべき変更なし**。
- 唯一の動きは Issue [#3427](https://github.com/Azure/azure-functions-dotnet-worker/issues/3427)（Worker.Sdk で `ServerGarbageCollection=true` を既定化、またはホストが `DOTNET_gcServer=1` を注入する提案）が**クローズ**されたこと。GC 設定に関する要望のため、パフォーマンスを気にする利用者は動向を確認しておくとよい。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #3427 | Default ServerGarbageCollection=true in Microsoft.Azure.Functions.Worker.Sdk (or have the host inject DOTNET_gcServer=1) | closed | MarcPow | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3427> |
