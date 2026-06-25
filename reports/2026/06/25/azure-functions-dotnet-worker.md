# Azure/azure-functions-dotnet-worker

対象期間: 2026-06-23 06:00:53 〜 2026-06-25 00:23:12 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内にマージされた PR はなく、主要な動きは .NET 11 対応に関する Issue 群の整理と、isolated worker 向け DocumentDB 対応のドラフト実装でした。
- .NET 11 の Core Tools、ドキュメント、ツールチェーン、コンテナ、Worker SDK、Portal/Stack API などに関する Issue が複数起票されており、今後の対応範囲が広がっている状態です。
- オープン中の PR / Issue からは、既存の isolated worker 体験を拡張する作業が進んでいる一方で、.NET 11 への追随が優先タスクとして扱われていることが分かります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3434 | Draft version for dotnet-isolated for AF extension for documentdb | open | xingfan-git | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3434> |
| Issue | #3443 | .NET 11 Core Tools updates | closed | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3443> |
| Issue | #3442 | .NET 11 Docs update | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3442> |
| Issue | #3441 | .NET 11 Add cold start SLA sites | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3441> |
| Issue | #3440 | .NET 11 Tooling feed updates & IDE validation | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3440> |
| Issue | #3439 | .NET 11 Portal/Stack API updates | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3439> |
| Issue | #3438 | .NET 11 Docker images - Flex Consumption | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3438> |
| Issue | #3437 | .NET 11 Docker images - Dedicated | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3437> |
| Issue | #3436 | .NET 11 support | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3436> |
| Issue | #3435 | .NET 11 Worker Sdk updates | open | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3435> |
| Issue | #2465 | Is there a replacement for src/Microsoft.Azure.WebJobs.Extensions.Kafka/Trigger/KafkaTriggerAttributeBindingProvider.cs in the isolated worker process? | closed | NARESHARADHYULA | <https://github.com/Azure/azure-functions-dotnet-worker/issues/2465> |
