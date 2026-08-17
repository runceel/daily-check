# Azure/azure-functions-dotnet-worker

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- `FunctionsStartupAttribute` を走査してスタートアップ構成を検出する SDK 対応がマージされました。
- ストレージ拡張の更新とリリース ノート整理が行われ、配布情報が最新化されています。
- CI では PowerShell Gallery のパッケージ検索を避ける修正が入り、外部依存による不安定さを抑えています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3485 | Clear storage extension release notes | merged | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3485> |
| PR | #3484 | fix(ci): avoid PowerShell Gallery package lookup | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3484> |
| PR | #3482 | feat(sdk): support FunctionsStartupAttribute scanning | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3482> |
| PR | #3470 | Update storage extensions | merged | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3470> |
