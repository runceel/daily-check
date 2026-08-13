# Azure/azure-functions-dotnet-worker

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- テスト用 `ReferenceAssemblies` の復元をリポジトリの NuGet.Config 経由に統一し、依存解決の再現性を高めました。
- CI では v1.x の nightly build を削除し、main 向け nightly build を追加しています。
- Core Tools CLI のフィードを `cdn.functions.azure.com` に切り替え、配布元の安定性を改善しました。
- FunctionsStartupAttribute のスキャンと .NET isolated worker の統合テスト支援がオープン PR で進行中です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3479 | test(analyzers): route ReferenceAssemblies restore through repo NuGet.Config | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3479> |
| PR | #3476 | ci: remove nightly scheduled build for v1.x | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3476> |
| PR | #3477 | ci: add nightly scheduled build for main | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3477> |
| PR | #3478 | ci: use cdn.functions.azure.com for Core Tools CLI feed | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3478> |
| PR | #3431 | Allow multiple ExtensionInformationAttribute per assembly | closed | Copilot | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3431> |
| PR | #3482 | feat(sdk): support FunctionsStartupAttribute scanning | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3482> |
| PR | #3480 | Add integration testing support for .NET isolated worker | open | vladyslav-panasenko | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3480> |
| Issue | #3481 | Missing Microsoft.Azure.Functions.Worker.Sdk 2.1.0 Release Notes | open | tebeco | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3481> |
