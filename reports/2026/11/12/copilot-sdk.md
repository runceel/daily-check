# github/copilot-sdk *(詳細モード)*

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 13 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2527](https://github.com/github/copilot-sdk/issues/2527) — [v2] Publish the breaking-change inventory and migration guide （Issue / open / SteveSandersonMS）
  未解決の文書公開タスクです。v2 導入予定者は言語別 API 差分・動作変更・runtime / CLI 要件と before / after 例の公開を待ち、tracker の close だけで移行完了と判断しないでください。

## このリポジトリの要点

- 期間内マージ済み PR は0件。v2 tracker（github/copilot-sdk#2522）と lifecycle 作業（github/copilot-sdk#2525）はクローズしましたが、言語別の破壊的変更・移行ガイド公開（github/copilot-sdk#2527）は未解決です。
- 新規報告は cross-session prompt caching、.NET MCP tool deferral、Node external-tool 結果 RPC の失敗通知、Python / OpenTelemetry の trace context、runtime 切断イベント不足などです。
- 新たな API シグネチャや commit 差分を説明できる期間内 PR はなく、これらの Issue は修正済みではありません。SDK の major v2 と CLI wire protocol v2 も区別してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #2917 | Allow configuring the assistant command runner shell | open | tohagan | <https://github.com/github/copilot-sdk/issues/2917> |
| Issue | #2916 | 3fcd863f5d736a12a785222e49f169794220c234 | open | andriusasukys-source | <https://github.com/github/copilot-sdk/issues/2916> |
| Issue | #2915 | <current_datetime> and random prompt_cache_key still block cross-session prompt caching (SDK 1.0.19 / runtime 1.0.95) | open | ClemoAcevedo | <https://github.com/github/copilot-sdk/issues/2915> |
| Issue | #2913 | .NET SDK: MCP server config has no way to set per-server tool deferral (deferTools) | open | vikramriyer | <https://github.com/github/copilot-sdk/issues/2913> |
| Issue | #2908 | gitHubTokenProvider: runtime does not refresh/preflight the token between LLM calls of one user message | closed | AbdelHamdi | <https://github.com/github/copilot-sdk/issues/2908> |
| Issue | #2911 | Extension commands: let `CommandDefinition` declare an input hint and choices | open | MatthewMWR | <https://github.com/github/copilot-sdk/issues/2911> |
| Issue | #2907 | On open project in visual code | open | marioserra50 | <https://github.com/github/copilot-sdk/issues/2907> |
| Issue | #2906 | Node.js: external-tool result-delivery RPC failures are silently swallowed | open | keyrun | <https://github.com/github/copilot-sdk/issues/2906> |
| Issue | #2905 | [Python/OpenTelemetry] Runtime 1.0.105 omits trace context on BYOK Responses and native MCP HTTP requests | open | santiagxf | <https://github.com/github/copilot-sdk/issues/2905> |
| Issue | #2901 | Node SDK managed native runtime fails to start from a long Windows package path | closed | Soulike | <https://github.com/github/copilot-sdk/issues/2901> |
| Issue | #2904 | Expose a public connection-loss / runtime-exit event on CopilotClient and CopilotSession | open | Ataxiea | <https://github.com/github/copilot-sdk/issues/2904> |
| Issue | #2903 | C# build targets duplicate the Copilot CLI bundle per source path: no shared cache, archive kept, payload copied twice | open | matthewcorven | <https://github.com/github/copilot-sdk/issues/2903> |
| Issue | #2900 | Rust: ElicitationRequest drops the tool call id from elicitation.requested | open | emadabdulrahim | <https://github.com/github/copilot-sdk/issues/2900> |
| Issue | #2525 | [v2] Complete in-process lifecycle and platform reliability work | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2525> |
| Issue | #1805 | Rust SDK hard-codes native-tls (OpenSSL); offer a rustls TLS backend so musl/static builds work | closed | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1805> |
| Issue | #2881 | incorrect link in README | closed | arunrab | <https://github.com/github/copilot-sdk/issues/2881> |
| Issue | #2510 | Rust: bound JSON-RPC frames and transport queues while preserving cancellation | closed | aurokin | <https://github.com/github/copilot-sdk/issues/2510> |
| Issue | #2048 | [v2][Python] Make generated implementation modules private | closed | brettcannon | <https://github.com/github/copilot-sdk/issues/2048> |
| Issue | #2522 | Copilot SDK v2.0 | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2522> |
