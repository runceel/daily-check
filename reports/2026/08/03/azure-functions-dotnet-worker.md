# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 依存関係の復元を CFS に取り込む変更（#3475）がマージされ、ビルド復元経路の運用が更新されました。
- Generators の暗黙的パッケージが 1.4.0 に更新されました（#3473）。
- NuGet.Config の nuget.org 置き換え（#3474）はクローズされ、採用状況を確認する必要があります。
- RequestAborted のキャンセル登録修正（#3472）はクローズされました。
- CI/CD の Azure Functions 公開手順に関する Issue #3460 はクローズ済みです。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3475 | Onboard dependency restores to CFS | merged | fabiocav | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3475> |
| PR | #3473 | chore: bump generators implicit package to 1.4.0 | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3473> |
| PR | #3474 | build: replace nuget.org in NuGet.Config | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3474> |
| PR | #3472 | Fix: Register RequestAborted cancellation on function completion task | closed | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3472> |
| Issue | #3460 | Request for Guidance on publishing azure functions in cd/ci pipeline (yml) | closed | HenrikGustafsson | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3460> |
