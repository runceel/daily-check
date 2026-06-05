# dotnet/extensions

対象期間: 2026-06-04 02:26:50 〜 2026-06-05 04:03:36 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## 主要な変更点

- FICC (FunctionInvocationContextChannel) から後方互換の `InformationalOnly` ケースを削除し、ミドルウェアによる回避策を提示 (#7538, jozkee)。挙動が変わるため該当箇所を利用している場合は確認が必要。
- Issue #7057「Abstract ToolResult Class」の API 提案がクローズ。Microsoft.Extensions.AI のツール結果抽象に関する議論。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7538 | Remove backward-compat InformationalOnly case from FICC; suggest middleware workaround | merged | jozkee | <https://github.com/dotnet/extensions/pull/7538> |
| Issue | #7057 | [API Proposal]: Abstract ToolResult Class. | closed | rogerbarreto | <https://github.com/dotnet/extensions/issues/7057> |
