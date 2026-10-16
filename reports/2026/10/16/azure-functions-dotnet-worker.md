# Azure/azure-functions-dotnet-worker

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#3322](https://github.com/Azure/azure-functions-dotnet-worker/issues/3322) — Microsoft.ApplicationInsights.WorkerService 3.0.0 incompatible with Azure Functions Worker - Breaking change （Issue / open / paulyuk）
Application Insights WorkerService 3.0.0 への更新を検討する Functions .NET Worker 利用者は、互換性問題が未解決の Issue を確認し、修正や回避策が明らかになるまでアップグレードを慎重に判断してください。

## 主要な変更点

- Application Insights `WorkerService` 3.0.0 が Azure Functions Worker と互換性を持たないという未解決の報告があり、依存更新前の確認が必要です（[#3322](https://github.com/Azure/azure-functions-dotnet-worker/issues/3322)）。
- `JsonPocoConverter` が boolean 文字列を大文字・小文字を区別せず処理する変更案がオープン PR で提示されています（[#3518](https://github.com/Azure/azure-functions-dotnet-worker/pull/3518)）。
- 複数出力 property の `HttpResult` に未対応 response type を指定した場合の診断不足が報告されました（[#3517](https://github.com/Azure/azure-functions-dotnet-worker/issues/3517)）。
- Worker Storage extensions の WebJobs Storage 5.3.10 対応・リリースが要望されています（[#3516](https://github.com/Azure/azure-functions-dotnet-worker/issues/3516)）。
- 対象期間にマージ済み PR はなく、ここに挙げた機能変更はいずれも提案・調査段階です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3519 | Align protobuf code owners with upstream and remove anatolib | open | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3519> |
| PR | #3518 | fix: accept case-insensitive boolean strings in JsonPocoConverter (#3169) | open | olehgerus | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3518> |
| Issue | #3517 | [HttpResult] on a multi-output property with an unsupported response type is not diagnosed | open | fzankl | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3517> |
| Issue | #3516 | Update and release worker Storage extensions for WebJobs Storage 5.3.10 | open | fabiocav | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3516> |
| Issue | #3515 | ServiceBus Extension Includes Newtonsoft.Json 11.0.2 | closed | chadcotton1 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3515> |
