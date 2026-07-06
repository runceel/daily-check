# dotnet/extensions

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- VectorData の conformance テストを virtual 化し、テストの拡張性と将来の xUnit v3 移行対応をしやすくしています。
- `IngestionDocumentImage` に `Source` プロパティを追加し、チャンク生成時の markdown 処理を統一する変更で、画像を含むドキュメントの取り扱いが整理されています。
- OpenAI SDK の依存関係を 2.12.0 へ更新し、将来の API 変更に追従しやすくしています。
- xUnit v3 移行に伴うコンパイルエラー修正が進んでおり、今後のテスト基盤更新に向けた下準備が進んでいます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7606 | Make all test methods virtual in VectorData.ConformanceTests | merged | Copilot | <https://github.com/dotnet/extensions/pull/7606> |
| PR | #7604 | Add Source property to IngestionDocumentImage and unify chunker markdown handling | merged | Copilot | <https://github.com/dotnet/extensions/pull/7604> |
| PR | #7608 | Upgrade OpenAI dependency to 2.12.0 | open | Copilot | <https://github.com/dotnet/extensions/pull/7608> |
| PR | #7607 | Fix compilation errors for xUnit v3 migration | open | Copilot | <https://github.com/dotnet/extensions/pull/7607> |
| Issue | #7605 | MEVD ConformanceTests are not conditional | open | adamsitnik | <https://github.com/dotnet/extensions/issues/7605> |
| Issue | #7591 | Include image address in the produced chunk | closed | adamsitnik | <https://github.com/dotnet/extensions/issues/7591> |
