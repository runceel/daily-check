# Azure/azure-functions-dotnet-worker *(サマリーモード)*

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0    |
| オープン中の新規 PR     | 3    |
| クローズ (未マージ) PR  | 0    |
| 新規 Issue              | 2    |
| クローズ Issue          | —    |

## 主要な変更点

- **期間内のマージ済み PR はなし**。3 件の PR がオープン中で、CI インフラの更新・HTTP キャンセルハンドリングの改善・暗黙的パッケージ参照挙動の改善が進行中。
- **ServiceBus のリトライポリシー対応リクエスト** (#3425): EventHub・Timer・Kafka・Cosmos には既にリトライポリシーが存在するが ServiceBus には未実装という Issue が新規起票。トリガー信頼性を高めたいユーザーへの影響あり。
- **Azure DevOps パイプライン経由デプロイで Worker プロセスが終了コード 1 で落ちる** (#3424): .NET 10 + Windows 環境で VS からは正常動作するが Azure DevOps パイプライン経由だと失敗するという回帰報告。

## 変化のあった PR / Issue

| 種別  | 番号  | タイトル                                                          | 状態  | 1 行説明                                    | リンク |
| ----- | ----- | ----------------------------------------------------------------- | ----- | ------------------------------------------- | ------ |
| PR    | #3426 | ci: update to 1es-ubuntu-24.04-min                                | OPEN  | CI ランナーのイメージ更新                   | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3426> |
| PR    | #3415 | Improve handling of cancelled HTTP requests                       | OPEN  | HTTP リクエストキャンセル時のハンドリング改善 | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3415> |
| PR    | #3409 | feat(sdk): improve implicit package reference behavior            | OPEN  | 暗黙的パッケージ参照の挙動改善              | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3409> |
| Issue | #3425 | [ServiceBus] Implement RetryPolicies                              | OPEN  | ServiceBus トリガーへのリトライポリシー追加要求 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3425> |
| Issue | #3424 | Worker process exits with code 1 in Azure DevOps pipeline         | OPEN  | .NET 10 + Windows + DevOps デプロイ問題    | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3424> |