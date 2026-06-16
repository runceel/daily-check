# Azure/azure-functions-dotnet-worker

対象期間: 2026-06-15 00:59:51 〜 2026-06-16 04:07:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 重要度の高い破壊的変更・セキュリティ変更は検出されていません。
- マージ済み PR はテスト更新 [#3430](https://github.com/Azure/azure-functions-dotnet-worker/pull/3430) のみで、ランタイム API や利用者向け挙動の変更は読み取れません。
- 新規 Issue [#3432](https://github.com/Azure/azure-functions-dotnet-worker/issues/3432) では `Microsoft.Azure.Functions.Worker.Sdk` 2.x への更新後に自動生成クラスがコードカバレッジを下げる問題が報告されています。SDK 2.x 移行中のプロジェクトはカバレッジ閾値への影響を確認するとよいです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3430 | Update Tests | merged | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3430> |
| Issue | #3432 | Auto-generated classes reduce code coverage after upgrading Microsoft.Azure.Functions.Worker.Sdk to 2.X | open | hz-git-oss | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3432> |
