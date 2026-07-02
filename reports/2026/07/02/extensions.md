# dotnet/extensions

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- `IngestionDocumentImage` への `Address` プロパティ追加とチャンカーの Markdown 処理統一化（#7604）がオープン中で、ドキュメント抽出（Ingestion）パイプラインの機能拡張が進んでいます。
- HTTP リクエストのレイテンシをログに記録する enricher が実験的機能として提案されています（#7602）。可観測性を強化したい利用者は動向を追う価値があります。
- MSBuild グラフビルド（`/graph`）を CI パイプラインに使う調査 PR（#7603）はクローズされました（採用は見送りの可能性）。
- `MEAI.Evaluation.Quality` 関連で、判定（judge）モデルの対応表記不備や HTTP エラーが握りつぶされてテストが成功扱いになる問題（#7581, #7580）がクローズされており、評価パイプラインの信頼性改善が進んでいます。
- 全体として自動判定による重要変更（破壊的変更/セキュリティ/非推奨/GA）は検出されず、期間中の活動量も少なめでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7603 | Investigate MSBuild graph-based builds (/graph) for CI pipeline | closed | Copilot | <https://github.com/dotnet/extensions/pull/7603> |
| PR | #7604 | Add Address property to IngestionDocumentImage and unify chunker markdown handling | open | Copilot | <https://github.com/dotnet/extensions/pull/7604> |
| PR | #7602 | Add HTTP request latency log enricher (experimental) | open | EasyL0ver | <https://github.com/dotnet/extensions/pull/7602> |
| Issue | #7581 | Docs: MEAI.Evaluation.Quality should specify supported judge model families (reasoning models are silently incompatible) | closed | leslierichardson95 | <https://github.com/dotnet/extensions/issues/7581> |
| Issue | #7580 | MEAI.Evaluation.Quality: judge HTTP errors recorded as silent per-metric error rows; tests exit 0 with operationally-useless report | closed | leslierichardson95 | <https://github.com/dotnet/extensions/issues/7580> |
