# Azure/azure-functions-dotnet-worker

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 対象期間にマージ済み／オープン PR はなく、重要度の高い変更も自動検出されませんでした。
- OpenTelemetry の Function invocation が `AppDependencies/InProc` として出力され、`AppRequests` と Invocations blade に現れない問題が報告されています（[#3513](https://github.com/Azure/azure-functions-dotnet-worker/issues/3513)）。
- Application Insights の invocation telemetry を利用する運用者は、issue の調査・修正状況を継続確認してください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #3513 | OpenTelemetry function invocations are exported as AppDependencies/InProc, leaving AppRequests and the Invocations blade empty | open | bchebrou | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3513> |
