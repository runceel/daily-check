# Azure/azure-functions-dotnet-worker

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内のマージ済み PR はなく、確定した SDK／worker の機能変更は特筆すべき変更なしです。
- Azure/azure-functions-dotnet-worker#3539 は ZIP デプロイの空レスポンス処理、Azure/azure-functions-dotnet-worker#3540 はアセンブリとデプロイ ZIP のハンドル解放を修正する提案です。
- Azure/azure-functions-dotnet-worker#3541 は生成する拡張プロジェクトにバージョンを含める修正です。3 件とも未マージであり、SDK リリースへの反映後に利用環境への影響を確認します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3539 | fix(sdk): handle empty zip deployment responses | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3539> |
| PR | #3541 | fix(sdk): include version in generated extension projects | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3541> |
| PR | #3540 | fix(sdk): release assembly and deployment zip handles | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3540> |
