# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 2 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2469](https://github.com/github/copilot-sdk/issues/2469) — Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers （Issue / closed / briandunnington）
Azure OpenAI など厳格な Chat Completions provider を使う利用者は、再開時の空 assistant turn が不正 payload となる報告を確認してください。Issue はクローズ済みですが、クローズ理由や修正リリースはこの一覧からは判別できません。
- **非推奨/廃止** [#1557](https://github.com/github/copilot-sdk/issues/1557) — Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models （Issue / open / mikhailmokhov）
Bedrock Mantle 経由で Claude Opus 4.7 / 4.8 を使う利用者は、SDK が送る `temperature` を上流 API が拒否する報告が未解決のため、Issue の進展と回避策を確認してください（SDK の廃止告知ではありません）。

## このリポジトリの要点

対象期間にコード変更 PR はなく、Copilot SDK のプロバイダー互換性とサインイン要件に関する利用者報告が中心でした。
セッション再開時の空 assistant turn が Azure OpenAI で拒否される報告はクローズ済みですが、修正内容・リリース状況は一覧から確認できません（[#2469](https://github.com/github/copilot-sdk/issues/2469)）。
Bedrock Mantle の Claude Opus 4.7 / 4.8 で deprecated `temperature` が拒否される未解決報告があり、Microsoft 365 Copilot の Entra sign-in 対応要望も起票されています（[#1557](https://github.com/github/copilot-sdk/issues/1557)、[#2882](https://github.com/github/copilot-sdk/issues/2882)）。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #2882 | Can the SDK use an existing Microsoft 365 Copilot subscription via Entra sign-in, without registering an Entra app? | open | SJSudharshan | <https://github.com/github/copilot-sdk/issues/2882> |
| Issue | #2881 | incorrect link in README | open | arunrab | <https://github.com/github/copilot-sdk/issues/2881> |
| Issue | #2774 | Bug: OpenTelemetry export duplicates token usage and captured messages for one inference | closed | RealAnna | <https://github.com/github/copilot-sdk/issues/2774> |
