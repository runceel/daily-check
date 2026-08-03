# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内にマージされたのは SDK release preparation の PR #3467 のみで、利用者向けの機能変更や破壊的変更はありませんでした。
- function completion と `RequestAborted` cancellation の連携を修正する PR #3472 がオープン中です。
- SDK 内部で Mono.Cecil を `System.Reflection.Metadata` に置き換える PR #3469 と、Storage extensions 更新 PR #3470 もレビュー中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3467 | chore: prep for SDK releases | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3467> |
| PR | #3471 | Fix: Register RequestAborted cancellation on function completion task | closed | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3471> |
| PR | #3468 | refactor(sdk): replace Mono.Cecil with System.Reflection.MetadataLoadContext | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3468> |
| PR | #3472 | Fix: Register RequestAborted cancellation on function completion task | open | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3472> |
| PR | #3473 | chore: bump generators implicit package to 1.4.0 | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3473> |
| PR | #3469 | refactor(sdk): replace Mono.Cecil with System.Reflection.Metadata | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3469> |
| PR | #3470 | Update storage extensions | open | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3470> |
