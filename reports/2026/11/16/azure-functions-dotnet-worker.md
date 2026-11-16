# Azure/azure-functions-dotnet-worker

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- #3535 がマージされ、Functions .NET Worker SDK から standalone container を publish できるようになりました。
- 新規 Issue #3538 では publish wizard による Storage Account 作成時の GPv1 非対応が報告されています。
- 新規 Issue #3537 は Visual Studio の Zip Deploy task の `JsonException`、#3536 は SDK の build / publish が assembly や deploy zip のファイルハンドルを閉じない問題を報告しています。修正状況を継続確認してください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3535 | feat(sdk): support standalone container publishing | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3535> |
| Issue | #3538 | Creating a Storage Account with the publish wizard fails due to unsupported GPv1 account type | open | DL444 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3538> |
| Issue | #3537 | Visual Studio Zip Deploy task fails with `JsonException` | open | DL444 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3537> |
| Issue | #3536 | SDK build and publish tasks leave file handles open on assemblies and the deploy zip | open | rabuckley | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3536> |
