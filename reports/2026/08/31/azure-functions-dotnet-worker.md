# Azure/azure-functions-dotnet-worker

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#3492](https://github.com/Azure/azure-functions-dotnet-worker/issues/3492) — Microsoft.Azure.Functions.Worker.Extensions.SignalRService 2.0.1 transitively pulls vulnerable MessagePack 2.5.192 (CVE-2026-48109, CVE-2026-48506) （Issue / closed / thealanagrace）
  SignalR Service 拡張 2.0.1 を利用するアプリは脆弱な MessagePack の依存を確認し、修正版の 2.2.0 など安全なバージョンへ更新してください。

## 主要な変更点

- SignalR Service 拡張が 2.2.0 に更新され、既知の脆弱な MessagePack 依存への対応が進みました。
- Azure Functions SDK 1.0.0 のリリース PR がマージされました。
- ビルド SDK が .NET 10.0.302 から 10.0.400 に更新されました。
- Kafka OAuth HTTPS CA 設定の追加と GitHub Actions の SHA 固定が継続中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3494 | Update SignalRService extensions to 2.2.0 | merged | Copilot | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3494> |
| PR | #3488 | build(sdk): release Azure.Functions.Sdk 1.0.0 | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3488> |
| PR | #3486 | build(deps): bump dotnet-sdk from 10.0.302 to 10.0.400 | merged | dependabot[bot] | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3486> |
| PR | #3493 | fix: repair Kafka attribute tests | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3493> |
| PR | #3491 | feat: add Kafka OAuth HTTPS CA settings | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3491> |
| PR | #3496 | Pin GitHub Actions to full-length commit SHAs | open | danfiedler-msft | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3496> |
| PR | #3495 | feat: add Kafka OAuth HTTPS CA settings | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3495> |
| Issue | #3492 | Microsoft.Azure.Functions.Worker.Extensions.SignalRService 2.0.1 transitively pulls vulnerable MessagePack 2.5.192 (CVE-2026-48109, CVE-2026-48506) | closed | thealanagrace | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3492> |
