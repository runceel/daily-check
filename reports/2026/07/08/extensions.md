# dotnet/extensions

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 破壊的変更やセキュリティ修正はなく、**ドキュメントと AI 連携の整備**が中心。
- **ドキュメント修正**: Copilot によるドキュメント修正が 2 件マージ（#7601、および MEVD 向けの #7597）。
- **Microsoft.Extensions.AI の OpenTelemetry 整合**: GenAI セマンティック規約（semantic-conventions）と `Microsoft.Extensions.AI` を揃え続けるエージェント型ワークフローの追加（#7611, open）、関数・パラメータ識別子向けの AI 命名属性の採用（#7610, open）。AI 計装の標準化を進める動き。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7601 | Fix up docs with Copilot | merged | gewarren | <https://github.com/dotnet/extensions/pull/7601> |
| PR | #7597 | Fix up docs with Copilot (MEVD) | merged | gewarren | <https://github.com/dotnet/extensions/pull/7597> |
| PR | #7611 | Add agentic workflows that keep Microsoft.Extensions.AI aligned with OpenTelemetry GenAI semantic-conventions | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7611> |
| PR | #7610 | Adopt targeted AI naming attributes for function and parameter identifiers | open | Copilot | <https://github.com/dotnet/extensions/pull/7610> |
