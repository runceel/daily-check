# Azure/azure-functions-dotnet-worker

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

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

- マージ済み PR はなく、対象期間の更新は Issue #3520 の新規報告 1 件のみです。
- `ConfigureFunctionsWorkerDefaults` 呼び出しがインデントされた文で始まる場合、ASP.NET 統合テストの `RegistrationExpectedInASPNetIntegration` が `NullReferenceException`（AD0001）を起こすという報告です。
- 該当する統合テスト構成を使う利用者は、Issue の再現条件と修正状況を確認してください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #3520 | `RegistrationExpectedInASPNetIntegration` throws NullReferenceException (AD0001) when a `ConfigureFunctionsWorkerDefaults` call starts an indented statement | open | AdCodicem | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3520> |
