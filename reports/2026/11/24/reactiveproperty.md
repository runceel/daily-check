# runceel/ReactiveProperty

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- **UWP と Xamarin 統合を除去**する変更がマージされました（#572）。これらのターゲットから利用する場合は、移行先のフレームワークや別実装への切り替えを確認する必要があります。
- 検証処理とコレクション操作のアロケーションを削減する性能改善（#574）がマージされ、頻繁に検証・収集を行う利用箇所での割り当て量低減が見込まれます。
- プロパティパスアクセサーの初回呼び出しコスト改善（#575）はクローズされ、追加の性能検証が必要なまま今回は未採用です。
- リリース作成、サンプルテスト、単体テストの GitHub Actions ワークフロー権限を制限するセキュリティ改善が3件マージされ、不要な書き込み権限を持たない構成へ強化されています。
- UWP/Xamarin対応の除去 Issue（#571）もクローズされ、現行コード・設定・ドキュメントから対象記述が整理されたことを確認できます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #567 | Restrict unit test workflow token permissions | merged | github-agentic-autofix[bot] | <https://github.com/runceel/ReactiveProperty/pull/567> |
| PR | #566 | Restrict sample test workflow token permissions | merged | github-agentic-autofix[bot] | <https://github.com/runceel/ReactiveProperty/pull/566> |
| PR | #565 | Restrict permissions for the release-creation job | merged | github-agentic-autofix[bot] | <https://github.com/runceel/ReactiveProperty/pull/565> |
| PR | #574 | Reduce validation and collection allocations | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/574> |
| PR | #572 | Remove retired UWP and Xamarin integrations | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/572> |
| PR | #575 | Optimize property-path accessor invocation (first-use cost under evaluation) | closed | runceel | <https://github.com/runceel/ReactiveProperty/pull/575> |
| Issue | #571 | 現行コード・設定・ドキュメントからUWP/Xamarin対応を除去する | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/571> |
