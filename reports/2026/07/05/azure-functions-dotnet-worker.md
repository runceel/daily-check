# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-03 04:00:53 〜 2026-07-05 04:03:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#3322](https://github.com/Azure/azure-functions-dotnet-worker/issues/3322) — Microsoft.ApplicationInsights.WorkerService 3.0.0 incompatible with Azure Functions Worker - Breaking change （Issue / open / paulyuk）
  Functions Worker で Application Insights 3.0 系を使う既存デプロイでは互換性確認が必要です。

## 主要な変更点

- 期間内に新規 PR や Issue の追加は見られず、静かな週次だったと見てよいです。
- 既知の互換性懸念として Application Insights 3.0 系との不整合が 1 件残っており、依存関係の見直しが必要です。
- 今回の差分では機能追加よりも、既存環境での移行・検証の観点が中心です。

## 変化のあった PR / Issue

期間内に変化はありませんでした。