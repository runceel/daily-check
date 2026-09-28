# dotnet/extensions

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 10.10.1 の servicing release 準備がマージされました。また、AI Evaluation Reporting の TypeScript テスト依存関係（Vitest / `@vitest/mocker`）が更新されました。
- HybridCache の遅延 tag invalidation 修正がレビュー中です。遅延無効化を使う利用者はマージ後の挙動を確認してください。
- AI Chat Web の vector store key 型整合、Markdown reader の autolink / HTML entity 対応、Responses の system / developer メッセージにおける raw content 表現の尊重が提案されています。
- ツール呼び出し拒否後にモデルが再承認を求める問題（#7783）を受け、拒否メッセージを最終判断と明示する修正がオープン中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7745 | Bump @vitest/mocker and vitest in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7745> |
| PR | #7785 | Prepare 10.10.1 Servicing Release | merged | adamsitnik | <https://github.com/dotnet/extensions/pull/7785> |
| PR | #7789 | Match the aichatweb vector store key type to the ingested keys | open | Laurianti | <https://github.com/dotnet/extensions/pull/7789> |
| PR | #7788 | Support autolinks and HTML entities in the Markdown reader | open | Laurianti | <https://github.com/dotnet/extensions/pull/7788> |
| PR | #7787 | Honor raw content representations in Responses system and developer messages | open | Laurianti | <https://github.com/dotnet/extensions/pull/7787> |
| PR | #7786 | Fix deferred HybridCache tag invalidation | open | svick | <https://github.com/dotnet/extensions/pull/7786> |
| PR | #7784 | Make the default tool-rejection message state that the decision is final | open | manjunathshiva | <https://github.com/dotnet/extensions/pull/7784> |
| Issue | #7783 | FunctionInvokingChatClient: default rejection message causes models to re-request approval for an already-rejected tool call | open | manjunathshiva | <https://github.com/dotnet/extensions/issues/7783> |
