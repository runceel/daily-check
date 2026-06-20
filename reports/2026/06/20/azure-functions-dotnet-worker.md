# Azure/azure-functions-dotnet-worker

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 08:27:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定できる破壊的変更・セキュリティ修正・非推奨・GA は確認できませんでした。

## 主要な変更点

- 対象期間の PR 活動はなく、メンテナー側のマージやクローズもありませんでした。
- 新規 Issue は [#3433](https://github.com/Azure/azure-functions-dotnet-worker/issues/3433) の 1 件で、in-process から isolated へ移行した Function App で Service Bus メッセージが dead letter queue に入りやすいという報告です。
- 継続中の open PR では [#3431](https://github.com/Azure/azure-functions-dotnet-worker/pull/3431) が `ExtensionInformationAttribute` を複数付与可能にする変更を進めており、複数拡張の自動ロード改善が次の確認点です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 補足 |
| ---- | ---- | -------- | ---- | ---- |
| Issue | [#3433](https://github.com/Azure/azure-functions-dotnet-worker/issues/3433) | Message frequently getting into service bus dead letter queue after migrating Azure function from in-process to Isolated model | open | isolated 移行後の Service Bus 運用問題 |
| PR | [#3431](https://github.com/Azure/azure-functions-dotnet-worker/pull/3431) | Allow multiple `ExtensionInformationAttribute` per assembly | open | 対象期間中に更新された継続 PR |
