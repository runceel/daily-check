# runceel/ReactiveProperty

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内にマージ済み PR はありませんが、テスト・サンプル・リリース作成 workflow の権限を制限する PR が 3 件オープンです（#567、#566、#565）。
- いずれも GitHub Actions の `GITHUB_TOKEN` 権限を必要な範囲に絞る変更で、CI／リリースの権限最小化を進める内容です。
- まだ未マージのため、リポジトリ保守者は workflow の動作とリリース作成に必要な権限が維持されているかレビューしてください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #567 | Restrict unit test workflow token permissions | open | github-agentic-autofix[bot] | <https://github.com/runceel/ReactiveProperty/pull/567> |
| PR | #566 | Restrict sample test workflow token permissions | open | github-agentic-autofix[bot] | <https://github.com/runceel/ReactiveProperty/pull/566> |
| PR | #565 | Restrict permissions for the release-creation job | open | github-agentic-autofix[bot] | <https://github.com/runceel/ReactiveProperty/pull/565> |
