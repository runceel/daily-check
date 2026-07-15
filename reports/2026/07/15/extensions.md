# dotnet/extensions

対象期間: 2026-07-14 01:26:38 〜 2026-07-15 04:59:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7628](https://github.com/dotnet/extensions/issues/7628) — OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume （Issue / open / rogerbarreto）
  `store=false` の暗号化 reasoning を再開する利用者は、ID の往復保持に関する修正（#7629）の取り込み状況を確認してください。

## 主要な変更点

- OpenAI Responses の reasoning item ID 欠落により、`store=false` の再開が壊れる問題が報告されています。
- 修正 PR では reasoning item ID を往復保持する対応が進行中です。
- JSON.stringify 済みの引数を受け取る `AIFunctionFactory` の許容範囲拡張が提案されています。
- `MarkItDownMcpReader` のエラー時に `InvalidOperationException` を投げる修正も提案されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7631 | Merge published release into release/10.8 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7631> |
| PR | #7621 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7621> |
| PR | #7632 | Merge release/10.8 into main | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7632> |
| PR | #7630 | Tolerate JsonElement string-wrapped (double-encoded) JSON tool-call arguments in AIFunctionFactory | open | flaviocdc | <https://github.com/dotnet/extensions/pull/7630> |
| PR | #7629 | Roundtrip OpenAI Responses reasoning item id for stateless (store=false) encrypted reasoning | open | rogerbarreto | <https://github.com/dotnet/extensions/pull/7629> |
| PR | #7627 | fix: throw InvalidOperationException when MarkItDownMcpReader encounters IsError. | open | aaleemsolutions | <https://github.com/dotnet/extensions/pull/7627> |
| Issue | #7628 | OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume | open | rogerbarreto | <https://github.com/dotnet/extensions/issues/7628> |
| Issue | #7626 | [Microsoft.Extensions.AI] AIFunctionFactory does not tolerate a JsonElement of ValueKind String as a JSON-stringified argument (gap in #6572) | open | flaviocdc | <https://github.com/dotnet/extensions/issues/7626> |
