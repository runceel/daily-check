# dotnet/extensions

対象期間: 2026-06-29 01:00:01 〜 2026-06-30 01:54:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- マージはなく、新規のオープン PR / Issue が中心の静かな期間。コード変更としては Arcade からの依存更新 PR（[#7590](https://github.com/dotnet/extensions/pull/7590)）のみ。
- **Microsoft.Extensions.AI 関連の不具合報告**が 2 件: `DiskBasedResultStore` が複数 `AIContent` を含む `EvaluationContext` のシリアライズでクラッシュする（[#7592](https://github.com/dotnet/extensions/issues/7592)）、チャンク分割の出力に画像アドレスを含めたい要望（[#7591](https://github.com/dotnet/extensions/issues/7591)）。AI Evaluation / チャンク分割を使う利用者は今後の修正を要ウォッチ。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7590 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7590> |
| Issue | #7592 | [AI Evaluation] DiskBasedResultStore crashes serializing EvaluationContext with multiple AIContent items | open | ypyl | <https://github.com/dotnet/extensions/issues/7592> |
| Issue | #7591 | Include image address in the produced chunk | open | adamsitnik | <https://github.com/dotnet/extensions/issues/7591> |
