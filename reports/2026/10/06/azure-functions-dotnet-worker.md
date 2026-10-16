# Azure/azure-functions-dotnet-worker

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- [Azure/azure-functions-dotnet-worker#3510](https://github.com/Azure/azure-functions-dotnet-worker/pull/3510) でビルド用 .NET SDK を10.0.400から10.0.401へ更新しました。アプリの target framework 変更を意味するものではありません。
- ServiceBus の生成拡張に含まれる Newtonsoft.Json 11.0.2 が [Azure/azure-functions-dotnet-worker#3515](https://github.com/Azure/azure-functions-dotnet-worker/issues/3515) で報告されています。依存スキャン結果と `.azurefunctions` の実際の成果物を確認し、修正・見解を追跡してください。
- Grpc.Net.Client 2.49.0 が成果物に含まれる報告 [Azure/azure-functions-dotnet-worker#3512](https://github.com/Azure/azure-functions-dotnet-worker/issues/3512) と .NET 11 tooling／IDE 検証 [Azure/azure-functions-dotnet-worker#3440](https://github.com/Azure/azure-functions-dotnet-worker/issues/3440) はクローズしました。クローズだけで依存修正の公開を断定しません。
- 今回の取得一覧では worker API の破壊的変更・GA の新規告知は確認できませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3510 | build(deps): bump dotnet-sdk from 10.0.400 to 10.0.401 | merged | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3510> |
| Issue | #3515 | ServiceBus Extension Includes Newtonsoft.Json 11.0.2 | open | chadcotton1 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3515> |
| Issue | #3440 | .NET 11 Tooling feed updates & IDE validation | closed | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3440> |
| Issue | #3512 | ServiceBus WorkerExtensions output includes Grpc.Net.Client 2.49.0 in .azurefunctions artifacts | closed | Thel3rain | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3512> |
