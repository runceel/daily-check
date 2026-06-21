# Azure/azure-functions-dotnet-worker

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

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

- この期間は PR の増減がなく、コード変更ベースでは大きな進展は確認されませんでした。  
- 新規 Issue #3433 で、in-process から Isolated へ移行した Azure Functions が Service Bus の dead letter queue に入りやすい事象が報告されています。  
- 既に Isolated 移行を進めているチームは、Service Bus トリガー処理の例外ハンドリング・再試行設定・バインディング構成を重点確認するのがよさそうです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #3433 | Message frequently getting into service bus dead letter queue after migrating Azure function from in-process to Isolated model | open | ashgit24 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3433> |
