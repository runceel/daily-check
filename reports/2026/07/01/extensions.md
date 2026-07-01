# dotnet/extensions

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

## 主要な変更点

- CI 関連では、MSBuild グラフベースビルドの有効化（#7594）を一度導入した後に revert（#7595）するというやり取りがあり、Correctness CI ステージの統合は見送りになりました。
- `dotnet/arcade` からの依存関係更新（#7590）や、OTel GenAI 規約が独立の semconv-genai リポジトリに移行したことに伴うスキル更新（#7519）がマージされています。
- オープン中の PR では、関数・パラメータの AI 向け表示名を上書きできる `AINameAttribute` の追加（#7599）が注目です。また Copilot を使ったドキュメント整備（#7597, #7598, #7600, #7601）が複数の名前空間で並行して進められています。
- Issue では `ISpeechToTextClient` の Experimental 解除時期を問う質問（#7596）と、AI Evaluation の HTML レポート再設計の要望（#7593）が上がっています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7595 | Revert "Enable MSBuild graph-based builds" from #7594 | merged | Copilot | <https://github.com/dotnet/extensions/pull/7595> |
| PR | #7594 | Eliminate redundant Correctness CI stage by merging into Build  | merged | Copilot | <https://github.com/dotnet/extensions/pull/7594> |
| PR | #7590 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7590> |
| PR | #7519 | Update OTel GenAI conventions skill for standalone semconv-genai repo | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7519> |
| PR | #7601 | Fix up docs with Copilot | open | gewarren | <https://github.com/dotnet/extensions/pull/7601> |
| PR | #7600 | Fix up docs with Copilot (MEAI) | open | gewarren | <https://github.com/dotnet/extensions/pull/7600> |
| PR | #7599 | Add AINameAttribute to override the AI-facing name of a function or parameter | open | jozkee | <https://github.com/dotnet/extensions/pull/7599> |
| PR | #7598 | Fix up docs with Copilot (M.E.ServiceDiscovery) | open | gewarren | <https://github.com/dotnet/extensions/pull/7598> |
| PR | #7597 | Fix up docs with Copilot (MEVD) | open | gewarren | <https://github.com/dotnet/extensions/pull/7597> |
| Issue | #7596 | When will `ISpeechToTextClient` stop being experimental? | open | aradalvand | <https://github.com/dotnet/extensions/issues/7596> |
| Issue | #7593 | [AI Evaluation] Redesign the generated HTML report | open | grafanaKibana | <https://github.com/dotnet/extensions/issues/7593> |
