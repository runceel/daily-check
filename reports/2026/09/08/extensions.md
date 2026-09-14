# dotnet/extensions

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 品質メトリックに有効なスコアがない場合に fail closed とする修正がマージされ、評価結果の安全側の扱いが明確になりました（#7735）。
- AI Evaluation Reporting では、コンテキストとメトリック解釈の可視化を修正する PR がレビュー中です（#7738）。
- AI Evaluation の再設計に関する複数の不具合と、拡張 HTTP クライアントログのパス区切り重複が報告されています（#7736、#7737）。
- 今回は破壊的変更・セキュリティ修正・非推奨化に該当する変更は検出されていません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7735 | Fail closed when a quality metric has no valid score | merged | thaildhe172591 | <https://github.com/dotnet/extensions/pull/7735> |
| PR | #7738 | [M.E.AI.Evaluation.Reporting] Fix context and metric interpretation visualization | open | grafanaKibana | <https://github.com/dotnet/extensions/pull/7738> |
| PR | #7739 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7739> |
| Issue | #7736 | #7609 AI Evaluation Redesign bugs | open | RickS-jpg | <https://github.com/dotnet/extensions/issues/7736> |
| Issue | #7737 | Extended HTTP client logging doubles the slash between host and path when `RequestPathParameterRedactionMode = None` | open | iikuzmychov | <https://github.com/dotnet/extensions/issues/7737> |
| Issue | #7665 | [Evaluation.Quality] InterpretScore(NumericMetric) marks unparseable (null) and out-of-range scores as not-failed | closed | ANcpLua | <https://github.com/dotnet/extensions/issues/7665> |
