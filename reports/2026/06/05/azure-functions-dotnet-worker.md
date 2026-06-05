# Azure/azure-functions-dotnet-worker

対象期間: 2026-06-04 02:26:50 〜 2026-06-05 04:03:36 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 1 |

## 主要な変更点

- SDK の暗黙的パッケージ参照 (implicit package reference) の挙動を改善 (#3409, jviau)。関連 Issue #3392「`IsImplicitlyDefined=true` の再評価」をクローズ。
- CI のビルドイメージを `1es-ubuntu-24.04-min` へ更新 (#3426)。
- 新規 Issue #3427: Worker SDK で `ServerGarbageCollection=true` をデフォルト化する（または host が `DOTNET_gcServer=1` を注入する）提案。パフォーマンス挙動に関わるため次回ウォッチ対象。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3426 | ci: update to 1es-ubuntu-24.04-min | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3426> |
| PR | #3409 | feat(sdk): improve implicit package reference behavior | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3409> |
| Issue | #3427 | Default ServerGarbageCollection=true in Microsoft.Azure.Functions.Worker.Sdk (or have the host inject DOTNET_gcServer=1) | open | MarcPow | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3427> |
| Issue | #3392 | [SDK] Re-evaluate using `IsImplicitlyDefined=true` for Microsoft.Azure.Functions.Worker | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3392> |
