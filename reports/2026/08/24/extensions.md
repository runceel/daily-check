# dotnet/extensions

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 8 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7705](https://github.com/dotnet/extensions/pull/7705) — [Infrastructure] Update vulnerable npm dependencies （PR / merged / wtgodbe）
  npm 依存関係を利用する開発者は脆弱性修正を取り込み、CI の監査結果を再確認してください。

## 主要な変更点

- 脆弱性のある npm 依存関係を更新するセキュリティ修正がマージされました。
- TfxInstaller への Node インストール追加と、PowerShell・Arcade 由来依存関係の更新が行われています。
- OpenTelemetry GenAI セマンティック規約の選択機能に関する変更も確認対象です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7703 | Add Node installation for TfxInstaller | merged | peterwald | <https://github.com/dotnet/extensions/pull/7703> |
| PR | #7705 | [Infrastructure] Update vulnerable npm dependencies | merged | wtgodbe | <https://github.com/dotnet/extensions/pull/7705> |
| PR | #7700 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7700> |
| PR | #7702 | Bump PowerShell from 7.6.4 to 7.6.5 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7702> |
| PR | #7710 | [MEAI] Add OpenTelemetry GenAI semantic convention selection | closed | rogerbarreto | <https://github.com/dotnet/extensions/pull/7710> |
| PR | #7711 | Publish VSIX using publish task instead of output | open | peterwald | <https://github.com/dotnet/extensions/pull/7711> |
| PR | #7708 | Bump dotnet-coverage from 18.9.0 to 18.10.0 | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7708> |
| Issue | #7714 | OpenAIResponsesChatClient.ToChatMessages never surfaces reasoning.content — only reads GetSummaryText() | open | bitorel | <https://github.com/dotnet/extensions/issues/7714> |
| Issue | #7712 | [API Proposal]: Add CascadingChatClient for response-quality routing | open | WittBen | <https://github.com/dotnet/extensions/issues/7712> |
| Issue | #7713 | Stripping function declarations on the last iteration when the history contains tool calls causes a ValidationError | open | JeffinSiby | <https://github.com/dotnet/extensions/issues/7713> |
| Issue | #7707 | OpenAIHostedFileClient: the removed openai-dotnet#733 workaround defended two fields, upstream fixed one | closed | tufantunc | <https://github.com/dotnet/extensions/issues/7707> |
| Issue | #7709 | [MEAI] Support OpenTelemetry GenAI semantic convention version selection | closed | rogerbarreto | <https://github.com/dotnet/extensions/issues/7709> |
| Issue | #7706 | Content-harm safety evaluators (Violence, Sexual, SelfHarm, HateAndUnfairness) return a severity score that contradicts their own stated reasoning | open | RichOwenMercury | <https://github.com/dotnet/extensions/issues/7706> |
| Issue | #7704 | [Microsoft.Extensions.AI.OpenAI] Intermittent 400 previous_response_not_found when chaining Responses API turns with function invocation | open | Licantrop0 | <https://github.com/dotnet/extensions/issues/7704> |
| Issue | #7701 | Standard HTTP resilience pipeline waits for Retry-After beyond total request timeout | open | scharnyw | <https://github.com/dotnet/extensions/issues/7701> |
