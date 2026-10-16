# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 8 |
| 新規 Issue              | 20 |
| クローズ Issue          | 15 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

- **⚠ セキュリティ関連の未マージ提案** [github/copilot-sdk#2807](https://github.com/github/copilot-sdk/pull/2807): Go の JSON-RPC 診断を application-owned `ProtocolLogger` に opt-in 化します。合成データでの開示経路を扱う提案で、実際の credential 漏洩が確認されたとの告知ではありません。採用時はログ先・redaction を利用者が管理してください。
- **メモリ安全性の未確認報告** [github/copilot-sdk#2793](https://github.com/github/copilot-sdk/issues/2793): Rust in-process transport の failed-open cleanup で potential use-after-free が報告されています。報告者の対象版は v1.0.14／v1.0.15 で、公式判断・修正・C ABI の保証を追跡してください。確定脆弱性や修正済みとは断定しません。

## このリポジトリの要点

- 対象期間の取得結果ではマージ済み PR は0件です。Go ProtocolLogger、Rust TLS backend feature、Python ModelLimits の `max_output_tokens` 保持、Java Jackson 更新は未マージで、提供開始と解釈しません。
- native runtime／in-process transport の構成と Rust の callback lifetime・resume error・hook decode、`session.idle` の完了境界が継続論点です。メモリ安全性報告は公式確認待ちとして重要欄へ手動補足しました。
- Java runtime bundling／各 OS 対応や Rust routing の Issue はクローズしましたが、関連 PR の closed は必ずしも merged ではなく、利用する公開版の changelog で収録を確認してください。
- runtime architecture 文書化と tracing、custom agent dispatch／approval hook の要求が増えています。既存連携のモデル非推奨化は別途 GitHub Changelog も確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2807 | fix(go): make JSON-RPC diagnostics opt-in | open | timreimherr | <https://github.com/github/copilot-sdk/pull/2807> |
| PR | #2811 | rust: make the request-handler TLS backend a feature (default rustls) | open | achicu | <https://github.com/github/copilot-sdk/pull/2811> |
| PR | #2805 | Clarify SDK runtime architecture | open | KalebCole | <https://github.com/github/copilot-sdk/pull/2805> |
| PR | #2802 | build(deps): bump com.fasterxml.jackson.core:jackson-databind from 2.22.2 to 2.22.3 in /java/sdk in the maven group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2802> |
| PR | #2799 | fix(python): preserve max_output_tokens in ModelLimits | open | HDMowri | <https://github.com/github/copilot-sdk/pull/2799> |
| PR | #2797 | Add generated Rust account.getManagedSettings API | open | ellismg | <https://github.com/github/copilot-sdk/pull/2797> |
| PR | #2784 | build(deps-dev): bump ip-address from 10.4.0 to 10.7.2 in /test/harness in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2784> |
| PR | #2778 | Reduce first session event latency | closed | davkean | <https://github.com/github/copilot-sdk/pull/2778> |
| PR | #2801 | Allow the Rust SDK to bundle the native runtime without the Node CLI | closed | dmytrostruk | <https://github.com/github/copilot-sdk/pull/2801> |
| PR | #2630 | [wip] Add canvas launch authorization and session retention | closed | ulugbekna | <https://github.com/github/copilot-sdk/pull/2630> |
| PR | #2637 | [WIP] Node SDK canvas launch admission for persisted chats | closed | ulugbekna | <https://github.com/github/copilot-sdk/pull/2637> |
| PR | #2792 | fix(rust): route messages to current session owner | closed | gimenete | <https://github.com/github/copilot-sdk/pull/2792> |
| PR | #2775 | Intake SDK snapshot for Copilot CLI 1.0.89-4 | closed | aurokin | <https://github.com/github/copilot-sdk/pull/2775> |
| PR | #2648 | Fix the Go samples module build | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2648> |
| PR | #2647 | Correct how SdkProtocolVersion.java is described | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2647> |
| Issue | #2812 | No way to restrict which agent types the task tool can dispatch per custom agent. | open | BeyondImaginati0n | <https://github.com/github/copilot-sdk/issues/2812> |
| Issue | #2810 | Hook inputs: expose the active agent and the approval mode that applies to the call | open | michaelmasse | <https://github.com/github/copilot-sdk/issues/2810> |
| Issue | #2809 | Is session.idle a causal accounting/event-completeness boundary in the native/headless protocol? | open | alescim17 | <https://github.com/github/copilot-sdk/issues/2809> |
| Issue | #2808 | MCP subprocess stderr and logging notifications are not surfaced in VS Code | closed | ormasoftchile | <https://github.com/github/copilot-sdk/issues/2808> |
| Issue | #2806 | [aw] Release Notes Generator is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2806> |
| Issue | #2804 | Clarify SDK architecture and in-process runtime transport | open | KalebCole | <https://github.com/github/copilot-sdk/issues/2804> |
| Issue | #2803 | Missing parent trace activities (spans) when switching context between SDK and CLI | open | alexander-ivanov-ds | <https://github.com/github/copilot-sdk/issues/2803> |
| Issue | #2800 | rust: `Client::resume_session` errors do not say which stage failed, or whether the session's history could not be loaded | open | Lukaze | <https://github.com/github/copilot-sdk/issues/2800> |
| Issue | #2798 | Python ModelLimits drops max_output_tokens from model metadata | open | mowree | <https://github.com/github/copilot-sdk/issues/2798> |
| Issue | #2796 | [aw] Documentation Handler produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2796> |
| Issue | #2795 | [Java] [Docs] Java documentation here is still saying the Java SDK does not bundle the CLI at all: | open | edburns | <https://github.com/github/copilot-sdk/issues/2795> |
| Issue | #2788 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2788> |
| Issue | #2794 | rust: `errorOccurred` / `sessionEnd` hook inputs fail to deserialize: the CLI sends `error` as an object, the SDK declares `String` | open | Lukaze | <https://github.com/github/copilot-sdk/issues/2794> |
| Issue | #2793 | rust: in-process transport frees the connection callback state immediately when `copilot_runtime_connection_open` returns 0 (possible use-after-free) | open | Lukaze | <https://github.com/github/copilot-sdk/issues/2793> |
| Issue | #2790 | Feature Request: Enable dynamic agents with live system prompt updates via `session.systemMessage.set()` | open | jgbradley1 | <https://github.com/github/copilot-sdk/issues/2790> |
| Issue | #2791 | Rust router can send requests to a replaced session registration | closed | gimenete | <https://github.com/github/copilot-sdk/issues/2791> |
| Issue | #2789 | [Python] No supported install-time delivery of the native runtime via pip/uv | open | larohra | <https://github.com/github/copilot-sdk/issues/2789> |
| Issue | #2787 | Feature Request: administrator-approved custom MCP servers available to hosted sessions | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2787> |
| Issue | #2786 | Feature Request: trigger and read external CI/CD pipeline runs from a session | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2786> |
| Issue | #2785 | Feature Request: long-running, steerable sessions that pause for human input and resume in the same workspace | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2785> |
| Issue | #1917 | [Java] Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | closed | edburns | <https://github.com/github/copilot-sdk/issues/1917> |
| Issue | #2727 | [Java] Add support for `linuxmusl-arm64` | closed | edburns | <https://github.com/github/copilot-sdk/issues/2727> |
| Issue | #2577 | [Java] `linuxmusl-x64`, or `linuxmusl-arm64`: Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | closed | edburns | <https://github.com/github/copilot-sdk/issues/2577> |
| Issue | #2419 | [Java] Add support for linux-arm64, win32-arm64 and darwin-x64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2419> |
| Issue | #2766 | Shouldn't NO_PROXY include 127.0.0.1 by default? | closed | gpotter2 | <https://github.com/github/copilot-sdk/issues/2766> |
| Issue | #2750 | `send_and_wait` resolves on a sub-agent's `session.idle` / `session.error` | closed | Lukaze | <https://github.com/github/copilot-sdk/issues/2750> |
| Issue | #2749 | `session.create` deadlocks when a `SessionFsProvider` is bound | closed | Lukaze | <https://github.com/github/copilot-sdk/issues/2749> |
| Issue | #2743 | mifare | closed | waskahativan2-wq | <https://github.com/github/copilot-sdk/issues/2743> |
| Issue | #2704 | co | closed | Azayed10 | <https://github.com/github/copilot-sdk/issues/2704> |
| Issue | #2644 | Local | closed | dipsetdon | <https://github.com/github/copilot-sdk/issues/2644> |
| Issue | #2607 | Password | closed | 7ijv | <https://github.com/github/copilot-sdk/issues/2607> |
| Issue | #2606 | password | closed | 7ijv | <https://github.com/github/copilot-sdk/issues/2606> |
| Issue | #2605 | Fahdd923@gmail.com | closed | 7ijv | <https://github.com/github/copilot-sdk/issues/2605> |
