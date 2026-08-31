# Azure/azure-functions-dotnet-worker

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#3492](https://github.com/Azure/azure-functions-dotnet-worker/issues/3492) — Microsoft.Azure.Functions.Worker.Extensions.SignalRService 2.0.1 transitively pulls vulnerable MessagePack 2.5.192 (CVE-2026-48109, CVE-2026-48506) （Issue / open / thealanagrace）
  SignalR Service 拡張を利用する開発者は MessagePack の脆弱な推移依存と CVE-2026-48109 / CVE-2026-48506 の影響を確認し、修正版の提供まで利用可否を判断してください。

## 主要な変更点

- **セキュリティ**: SignalR Service 拡張 2.0.1 が脆弱な MessagePack 2.5.192 を推移的に取り込む Issue が未解決です。
- Kafka OAuth の HTTPS CA 設定を追加する PR がオープンしており、Kafka 接続の証明書構成が改善される見込みです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3491 | feat: add Kafka OAuth HTTPS CA settings | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3491> |
| Issue | #3492 | Microsoft.Azure.Functions.Worker.Extensions.SignalRService 2.0.1 transitively pulls vulnerable MessagePack 2.5.192 (CVE-2026-48109, CVE-2026-48506) | open | thealanagrace | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3492> |
