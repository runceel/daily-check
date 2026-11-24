# Azure/azure-functions-dotnet-worker

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- マージ済み 2 件はいずれも SDK 周辺の修正で、生成プロジェクトへのバージョン情報付与と、リリース時のアセンブリおよび ZIP ハンドル解放を改善しました。
- SDK のリリース準備として Azure.Functions.Sdk 1.1.1 のビルド PR がオープン中です。利用者はパッケージ更新時に生成物のバージョンとリリース資産を確認できます。
- .NET 11 サポートと関連するコールドスタート SLA サイトの Issue はクローズされ、対象環境のサポート状況は前進しています。
- MSBuild SDK で外側ビルド外に生成プロジェクトをビルドした際の MSB4236 と、発行ウィザードで GPv1 Storage Account が拒否される問題もクローズ済みです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3541 | fix(sdk): include version in generated extension projects | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3541> |
| PR | #3540 | fix(sdk): release assembly and deployment zip handles | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3540> |
| PR | #3544 | build(sdk): release Azure.Functions.Sdk 1.1.1 | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3544> |
| Issue | #3436 | .NET 11 support | closed | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3436> |
| Issue | #3441 | .NET 11 Add cold start SLA sites | closed | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3441> |
| Issue | #3506 | [MSBUILD SDK] Building `azure_functions.g.csproj` outside the outer build fails with MSB4236 instead of AZFW0109 | closed | fzankl | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3506> |
| Issue | #3538 | Creating a Storage Account with the publish wizard fails due to unsupported GPv1 account type | closed | DL444 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3538> |
