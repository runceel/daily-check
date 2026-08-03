# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 53 |
| オープン中の新規 PR     | 20 |
| クローズ (未マージ) PR  | 33 |
| 新規 Issue              | 39 |
| クローズ Issue          | 37 |
| 主要コントリビューター  | examon, Copilot, dependabot[bot], SteveSandersonMS, github-actions[bot], syf2211 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#2095](https://github.com/github/copilot-sdk/pull/2095) — Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs （PR / merged / dependabot[bot]）
  Node.js SDK 利用者は brace-expansion の脆弱性修正版を取り込み、package-lock.json を更新してください。
- **非推奨/廃止** [#1557](https://github.com/github/copilot-sdk/issues/1557) — Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models （Issue / open / mikhailmokhov）
  Anthropic Bedrock で Opus を使う利用者は、非推奨の temperature パラメーター送信により失敗する Issue #1557 を確認し、修正版まで回避してください。

## このリポジトリの要点

CLI 1.0.78-2 / 1.0.77 の更新で、.NET・Go・Java・Python の生成 RPC / session モデルが大きく同期されました。  
Python の permission approval codegen と binary tool result 転送も修正され、各言語 SDK の互換性が改善されています。  
Node.js 依存の brace-expansion 脆弱性と、Bedrock Opus の deprecated temperature 送信は引き続き要確認です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2095](https://github.com/github/copilot-sdk/pull/2095) — Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `javascript`
- 変更行数: +7 / -7
- マージ日時 (UTC): `2026-07-28 09:50:22`

**変更概要**

Node.js SDK の `brace-expansion` を 1.1.14 から 1.1.16 に更新し、依存脆弱性を修正しました。  
変更は `package-lock.json` の解決バージョンに限定されています。  
Node.js SDK をインストールする利用者と CI は lockfile 更新を取り込んでください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/package-lock.json` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `3546044` Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャや SDK の公開抽象は変更されていません。package-lock.json の依存解決だけが更新されています。

**既存利用者への影響**

コード移行は不要です。Node.js プロジェクトで lockfile を更新して再インストールし、監査結果を確認してください。

### [#2193](https://github.com/github/copilot-sdk/pull/2193) — Update @github/copilot to 1.0.78-2

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +4247 / -194
- マージ日時 (UTC): `2026-08-02 15:50:23`

**変更概要**

@github/copilot を 1.0.78-2 に更新し、CLI スキーマ変更に合わせて .NET、Go、Java、Python の生成コードとイベントモデルを再生成しました。  
permission request、session event、MCP tool 設定など複数言語の RPC 契約が同期されています。  
SDK を各言語で利用するアプリは、型・イベント名・シリアライズ結果の差分を確認して更新してください。

<details><summary>変更ファイル (50 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 460 | 14 |
| `dotnet/src/Generated/SessionEvents.cs` | 402 | 0 |
| `go/rpc/permission_request_managed_approval.go` | 6 | 0 |
| `go/rpc/zrpc.go` | 373 | 9 |
| `go/rpc/zrpc_encoding.go` | 68 | 0 |
| `go/rpc/zsession_encoding.go` | 51 | 0 |
| `go/rpc/zsession_events.go` | 159 | 0 |
| `go/zsession_events.go` | 17 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantMessageEvent.java` | 4 | 0 |
| `java/src/generated/java/com/github/copilot/generated/GitHubMcpToolConfig.java` | 34 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionStartEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/DiscoveredExtension.java` | 37 | 0 |
| _... 他 35 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `545a011` Update @github/copilot to 1.0.78-2
- `c7c63ab` Fix CI breaks from the CLI 1.0.78-2 schema update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ API 契約変更**。CLI 1.0.78-2 のスキーマに伴い生成 RPC、SessionEvents、permission approval、MCP 設定モデルが追加・変更されています。生成コードを直接編集せず、各言語の codegen と型互換性を確認してください。

**既存利用者への影響**

SDK を同梱する利用者は CLI と SDK のバージョンを揃え、イベント・RPC の型変更をコンパイルと E2E で確認してください。生成コードの独自差分がある場合は再適用が必要です。

### [#2183](https://github.com/github/copilot-sdk/pull/2183) — Update @github/copilot to 1.0.77

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +370 / -184
- マージ日時 (UTC): `2026-08-01 04:14:52`

**変更概要**

@github/copilot を 1.0.77 に更新し、各言語の session event、MCP 状態、abort reason、tool 実行モデルを同期しました。  
Java のモデル カバレッジ テストも修正され、生成モデルの漏れを検出できます。  
1.0.77 を利用する SDK 実装はイベント型とシリアライズ互換性を確認してください。

<details><summary>変更ファイル (33 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 9 | 9 |
| `dotnet/src/Generated/SessionEvents.cs` | 39 | 3 |
| `go/rpc/zrpc.go` | 21 | 7 |
| `go/rpc/zsession_events.go` | 17 | 2 |
| `go/zsession_events.go` | 2 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AbortReason.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantUsageEvent.java` | 8 | 0 |
| `java/src/generated/java/com/github/copilot/generated/McpServerStatus.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/McpServersLoadedServer.java` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/SessionMcpServerStatusChangedEvent.java` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/ToolExecutionStartShellToolInfo.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/AbortReason.java` | 3 | 1 |
| _... 他 18 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `7e1765c` Update @github/copilot to 1.0.77
- `77791ce` Fix Java model coverage test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI スキーマに合わせて生成型の列挙値・イベント型・MCP 状態モデルが更新されています。全面的な破壊的変更の記載はありませんが、未知のイベントや enum 値を許容する実装が必要です。

**既存利用者への影響**

SDK の更新と再ビルドが必要です。イベント型や enum を網羅的に処理する利用者は、新しい値を追加して回帰テストを実行してください。

### [#2190](https://github.com/github/copilot-sdk/pull/2190) — Deflake background task removal E2E tests

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +44 / -27
- マージ日時 (UTC): `2026-08-01 03:45:35`

**変更概要**

バックグラウンド タスク削除 E2E テストの競合を解消し、完了クリーンアップをポーリングより先に扱うようにしました。  
.NET と Python の双方で race coverage を強化し、Python 側の lint 失敗も修正しています。  
SDK 実装の API 変更ではなく、タスクライフサイクル検証の安定化が目的です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/RpcTasksAndHandlersE2ETests.cs` | 24 | 15 |
| `python/e2e/test_rpc_tasks_and_handlers_e2e.py` | 20 | 12 |

</details>

<details><summary>コミット (4 件)</summary>

- `e4ed36c` Fix background task removal E2E race
- `a240bb1` Strengthen task removal race coverage
- `d6531df` Handle completion cleanup before task polling
- `ea6e145` Fix Python E2E lint failure

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。E2E テストの待機順序と完了後クリーンアップの検証条件を変更しています。

**既存利用者への影響**

利用者の移行は不要です。SDK の開発・CI で E2E を実行する場合は、再現性の高いタスク削除確認が得られます。

### [#1652](https://github.com/github/copilot-sdk/pull/1652) — Fix Python codegen synthetic permission approval names

- 作者: abhinavgautam01 / 状態: MERGED
- ラベル: —
- 変更行数: +122 / -171
- マージ日時 (UTC): `2026-07-31 16:38:09`

**変更概要**

Python codegen が permission approval の合成名を誤って生成する問題を修正しました。  
生成スクリプトと RPC 生成結果を整理し、型名テストを壊れにくい検査へ置き換えています。  
Python SDK で権限承認イベントを扱う利用者は生成モデルの名前と import を確認してください。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/copilot/generated/rpc.py` | 0 | 171 |
| `python/test_codegen_type_names.py` | 29 | 0 |
| `scripts/codegen/python.ts` | 93 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `43d1207` Fix Python codegen synthetic permission approval names
- `b746c30` Address Python codegen cleanup review feedback
- `4aa1f83` Regenerate python rpc after rebase
- `901cbc2` Replace brittle python codegen symbol test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Python の生成 RPC から誤った合成 permission approval 名を除去し、codegen が正しいシンボルを生成するようにしました。公開プロトコルの意図的な変更ではありませんが、生成型の名前が変わる可能性があります。

**既存利用者への影響**

permission approval の生成型を直接 import している利用者は、再生成後の名前へ更新してください。通常の SDK API 利用者はコードを変更せず再ビルドできます。

### [#1821](https://github.com/github/copilot-sdk/pull/1821) — fix(python): forward binary tool results in HandlePendingToolCall RPC

- 作者: syf2211 / 状態: MERGED
- ラベル: —
- 変更行数: +101 / -9
- マージ日時 (UTC): `2026-07-31 17:30:29`

**変更概要**

Python の `HandlePendingToolCall` RPC で、バイナリのツール結果を LLM へ転送できるようにしました。  
Go の session 層でも `binary_results_for_llm` と `session_log` を引き継ぎ、Python の tool 処理とテストを補強しています。  
画像などバイナリ結果を返すツールを使う利用者が対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `go/session.go` | 14 | 0 |
| `python/copilot/session.py` | 8 | 9 |
| `python/copilot/tools.py` | 33 | 0 |
| `python/test_tools.py` | 46 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `d9058f0` fix(python): forward binary tool results in HandlePendingToolCall RPC
- `2c7c733` fix(go): forward binary_results_for_llm and session_log in HandlePend…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

HandlePendingToolCall の結果処理にバイナリ転送フィールドを通し、Python tools / session と Go session の実装を同期しました。既存のテキスト結果 API は維持されます。

**既存利用者への影響**

バイナリ ツール結果を利用する場合は SDK を更新して転送結果を確認してください。テキストのみのツール利用者に移行は不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2112 | sdk: Expose githubMcpToolConfig across languages | connor4312 | <https://github.com/github/copilot-sdk/pull/2112> |
| #2080 | Expose managed approval requirement on permission requests | joshspicer | <https://github.com/github/copilot-sdk/pull/2080> |
| #2177 | [Codegen] Honor internal flag on session event types in Node codegen | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2177> |
| #1899 | forward CustomAgentsLocalOnly in session.create and session.resume | syf2211 | <https://github.com/github/copilot-sdk/pull/1899> |
| #1720 | Add usage and billing metrics docs page | andyfeller | <https://github.com/github/copilot-sdk/pull/1720> |
| #2032 | test(java): re-enable ModeHandlers exit_plan_mode E2E assertions | arimu1 | <https://github.com/github/copilot-sdk/pull/2032> |
| #2123 | python: decode boolean-discriminated unions | examon | <https://github.com/github/copilot-sdk/pull/2123> |
| #1822 | docs: document EnableSessionStore and one-shot session guidance | syf2211 | <https://github.com/github/copilot-sdk/pull/1822> |
| #2172 | docs: correct the ephemeral labels on four persisted session events | examon | <https://github.com/github/copilot-sdk/pull/2172> |
| #2179 | docs: correct the remote sessions client option name | examon | <https://github.com/github/copilot-sdk/pull/2179> |
| #2181 | Fix CAPI reasoning E2E fixtures | ellismg | <https://github.com/github/copilot-sdk/pull/2181> |
| #2173 | [Java] Add `PlatformDetector` for runtime classifier selection | Copilot | <https://github.com/github/copilot-sdk/pull/2173> |
| #2170 | [Java] Task 4.1: Convert single-module java/ into multi-module Maven reactor | Copilot | <https://github.com/github/copilot-sdk/pull/2170> |
| #2017 | Bump com.fasterxml.jackson.core:jackson-databind from 2.22.0 to 2.22.1 in /java | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2017> |
| #2114 | Add the Agent Factories authoring surface | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2114> |
| #2119 | build(deps): bump the java-maven-deps group across 1 directory with 6 updates | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2119> |
| #2019 | docs: fix EnableConfigDiscovery summary to accurately describe agent discovery behavior | smz202000 | <https://github.com/github/copilot-sdk/pull/2019> |
| #2101 | Document MCP tool filter naming across SDKs | syedkazmi14 | <https://github.com/github/copilot-sdk/pull/2101> |
| #1986 | Fix .NET in-process E2E transport coverage | roji | <https://github.com/github/copilot-sdk/pull/1986> |
| #2126 | Rebrand Azure AI Foundry references to Microsoft Foundry | scottaddie | <https://github.com/github/copilot-sdk/pull/2126> |
| #2142 | docs: fix non-compiling Rust external-transport example | examon | <https://github.com/github/copilot-sdk/pull/2142> |
| #2117 | fix(python): select the current platform's CLI package in the E2E harness | nytron88 | <https://github.com/github/copilot-sdk/pull/2117> |
| #2160 | docs: correct the Python and Go event data model tip | examon | <https://github.com/github/copilot-sdk/pull/2160> |
| #2157 | [Java] Add PlatformDetector and NativeRuntimeLoader for native binary extraction and caching (tasks 4.2 + 4.3) | Copilot | <https://github.com/github/copilot-sdk/pull/2157> |
| #2140 | Update @github/copilot to 1.0.76-5 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2140> |
| #2156 | [WIP] Add PlatformDetector utility for platform classification | Copilot | <https://github.com/github/copilot-sdk/pull/2156> |
| #2155 | [WIP] Convert single-module pom.xml to multi-module Maven reactor | Copilot | <https://github.com/github/copilot-sdk/pull/2155> |
| #2153 | Revert "[WIP] Add PlatformDetector utility class for platform detection" | edburns | <https://github.com/github/copilot-sdk/pull/2153> |
| #2152 | [WIP] Add PlatformDetector utility class for platform detection | Copilot | <https://github.com/github/copilot-sdk/pull/2152> |
| #2005 | docs: add server-to-server token guide | patniko | <https://github.com/github/copilot-sdk/pull/2005> |
| #2125 | docs: tighten server-to-server auth guidance | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2125> |
| #2054 | sdk: Expose AgentStop session hook across languages | belaltaher8 | <https://github.com/github/copilot-sdk/pull/2054> |
| #2110 | Version-independent SDK test and codegen fixes split from the 1.0.76-0 bump | stephentoub | <https://github.com/github/copilot-sdk/pull/2110> |
| #2047 | dotnet: release oversized JSON-RPC receive buffers | adirh3 | <https://github.com/github/copilot-sdk/pull/2047> |
| #2109 | Fix flaky .NET session resume E2E test | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2109> |
| #2108 | ci: add stable required SDK checks | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2108> |
| #2107 | Fix flaky .NET ask-user E2E tests | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2107> |
| #2064 | docs: fix inaccurate SDK/runtime claims found in docs audit | patniko | <https://github.com/github/copilot-sdk/pull/2064> |
| #2066 | Add StartupTimings per-phase breakdown to Client::start | jmoseley | <https://github.com/github/copilot-sdk/pull/2066> |
| #2063 | Refresh agentic workflows to gh-aw v0.83.1; issue-intent on issue-triage | alondahari | <https://github.com/github/copilot-sdk/pull/2063> |
| #2072 | docs: document complete sub-agent event data fields | rinceyuan | <https://github.com/github/copilot-sdk/pull/2072> |
| #2074 | docs: add missing assistant.usage event fields to streaming-events reference | rinceyuan | <https://github.com/github/copilot-sdk/pull/2074> |
| #2096 | Bump hono from 4.12.23 to 4.12.32 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2096> |
| #2094 | Bump fast-uri from 3.1.2 to 3.1.4 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2094> |
| #2097 | docs: rename Azure AI Foundry to Microsoft Foundry in BYOK guide | scottaddie | <https://github.com/github/copilot-sdk/pull/2097> |
| #2099 | Fix the Python list_sessions docstring example to use session_id | examon | <https://github.com/github/copilot-sdk/pull/2099> |
| #2105 | docs: correct the delta field the MAF streaming example reads | examon | <https://github.com/github/copilot-sdk/pull/2105> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2180 | feat: add support for additional directories in session configuration | open | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2180> |
| PR | #2223 | docs: fix the Node.js inbound trace-context example to use a real tool-registration API | open | examon | <https://github.com/github/copilot-sdk/pull/2223> |
| PR | #2129 | Add `history.clearContext` and `Tool.isTerminal` across all SDKs | open | examon | <https://github.com/github/copilot-sdk/pull/2129> |
| PR | #2212 | docs: remove the nonexistent toolName field from tool.execution_complete | open | examon | <https://github.com/github/copilot-sdk/pull/2212> |
| PR | #2208 | dotnet: update README attachment examples to current API (fixes #2196) | open | HindzStark | <https://github.com/github/copilot-sdk/pull/2208> |
| PR | #2186 | Fix active Node and replay E2E flakes | open | roji | <https://github.com/github/copilot-sdk/pull/2186> |
| PR | #2206 | Stop sendAndWait from emitting an unhandled rejection | open | thejesh23 | <https://github.com/github/copilot-sdk/pull/2206> |
| PR | #2204 | Serialize tool results with Pydantic's JSON mode | open | thejesh23 | <https://github.com/github/copilot-sdk/pull/2204> |
| PR | #2202 | python: make generated package private | open | omidsaffari | <https://github.com/github/copilot-sdk/pull/2202> |
| PR | #2201 | docs(dotnet): clarify working directory fallback | open | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2201> |
| PR | #2200 | fix: support bracketed IPv6 runtime URLs | open | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2200> |
| PR | #2199 | fix(dotnet): tolerate numeric ping timestamps | open | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2199> |
| PR | #2198 | fix(go): tolerate numeric ping timestamps | open | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2198> |
| PR | #2197 | docs: fix non-compiling attachment examples in the .NET README | open | examon | <https://github.com/github/copilot-sdk/pull/2197> |
| PR | #2195 | docs: add Chinese translation (README.zh-CN.md) | open | sunz93926-debug | <https://github.com/github/copilot-sdk/pull/2195> |
| PR | #2191 | build(deps): bump brace-expansion from 5.0.6 to 5.0.9 in /scripts/docs-validation in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2191> |
| PR | #2139 | Add managed permission settings to session startup | open | joshspicer | <https://github.com/github/copilot-sdk/pull/2139> |
| PR | #2175 | [Java] Embed Rust CLI runtime 4.3: NativeRuntimeLoader — native binary extraction and caching | open | Copilot | <https://github.com/github/copilot-sdk/pull/2175> |
| PR | #2163 | fix(go): select the host CLI package in E2E tests | open | Pybsama | <https://github.com/github/copilot-sdk/pull/2163> |
| PR | #2127 | sdk: Surface verbose MCP diagnostics (mcp.diagnostic) | open | connor4312 | <https://github.com/github/copilot-sdk/pull/2127> |
| PR | #2194 | Enhance type safety and tracking logic in corrections script | closed | krataratha | <https://github.com/github/copilot-sdk/pull/2194> |
| PR | #2192 | dotnet: wait for terminal task status in E2E test | closed | ellismg | <https://github.com/github/copilot-sdk/pull/2192> |
| PR | #2185 | Test extension canvas forwarding | closed | jmoseley | <https://github.com/github/copilot-sdk/pull/2185> |
| PR | #1704 | dotnet: plumb CancellationToken through ToolInvocation for cooperative cancellation | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1704> |
| PR | #1707 | java: plumb AbortSignal through ToolInvocation for cooperative cancellation | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1707> |
| PR | #1701 | feat(nodejs): plumb AbortSignal through ToolInvocation (#1433) | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1701> |
| PR | #1705 | go: plumb context cancellation through ToolInvocation for session.Abort() | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1705> |
| PR | #1706 | feat(rust): plumb CancellationToken through ToolInvocation for handler cancellation | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1706> |
| PR | #1703 | feat(python): plumb AbortSignal through ToolInvocation for handler cancellation | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1703> |
| PR | #790 | Add shell notification types and handlers across all SDKs | closed | jmoseley | <https://github.com/github/copilot-sdk/pull/790> |
| PR | #892 | fix: add onPermissionRequest handler to sessions across various docum… | closed | horihiro | <https://github.com/github/copilot-sdk/pull/892> |
| PR | #962 | feat(go): support custom tools in subagents | closed | ductrung-nguyen | <https://github.com/github/copilot-sdk/pull/962> |
| PR | #1122 | feat(python): add support for persistent_memory in SessionConfig | closed | EaCognitive | <https://github.com/github/copilot-sdk/pull/1122> |
| PR | #1142 | fix: Windows process tree cleanup in client.stop() (#1132) | closed | Yogesh1290 | <https://github.com/github/copilot-sdk/pull/1142> |
| PR | #2001 | [changelog] Add changelog for java/v1.0.7 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2001> |
| PR | #1508 | fix: make spawn() work when host is an Electron main process | closed | Copilot | <https://github.com/github/copilot-sdk/pull/1508> |
| PR | #1829 | fix(python): terminate owned CLI process trees on stop | closed | syf2211 | <https://github.com/github/copilot-sdk/pull/1829> |
| PR | #2176 | Update .NET extension reload E2E contract | closed | dmytrostruk | <https://github.com/github/copilot-sdk/pull/2176> |
| PR | #2039 | Bump brace-expansion from 5.0.6 to 5.0.7 in /scripts/docs-validation in the npm_and_yarn group across 1 directory | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2039> |
| PR | #2052 | build(deps): bump @github/copilot from 1.0.72 to 1.0.73 in /java/scripts/codegen in the java-codegen-deps group | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2052> |
| PR | #2120 | Bump the "all" group with 7 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2120> |
| PR | #2162 | fix(python): preserve boolean const discriminators in RPC codegen | closed | syf2211 | <https://github.com/github/copilot-sdk/pull/2162> |
| PR | #2115 | chore: bump @github/copilot to ^1.0.75 and regenerate all SDKs | closed | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2115> |
| PR | #2100 | Update @github/copilot to 1.0.76-0 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2100> |
| PR | #2113 | Update @github/copilot to 1.0.76-1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2113> |
| PR | #2118 | Update @github/copilot to 1.0.76-2 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2118> |
| PR | #2124 | Closing temporary forward-compatibility gap for a new MCP server event  | closed | almaleksia | <https://github.com/github/copilot-sdk/pull/2124> |
| PR | #1992 | build(deps): bump the java-maven-deps group across 1 directory with 5 updates | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1992> |
| PR | #1945 | Add host-mediated GitHub API requests for extensions | closed | jchuerva | <https://github.com/github/copilot-sdk/pull/1945> |
| PR | #1996 | Add Rust runtime lock settings | closed | SlowGreek | <https://github.com/github/copilot-sdk/pull/1996> |
| PR | #2051 | rust: re-export ModelPolicyState and ModelPickerCategory from crate root | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2051> |
| PR | #2065 | Fix Critical Privilege / Permission Bypass in Rust | closed | DrHazemAli | <https://github.com/github/copilot-sdk/pull/2065> |
| PR | #2102 | Support raw view output in replay fixtures | closed | erik-krogh | <https://github.com/github/copilot-sdk/pull/2102> |
| Issue | #2224 | Th | open | thejaskk222-dev | <https://github.com/github/copilot-sdk/issues/2224> |
| Issue | #2222 | docs: Node.js inbound trace-context example calls session.registerTool(), which is not a public API | open | examon | <https://github.com/github/copilot-sdk/issues/2222> |
| Issue | #2209 | Java README Maven install snippet is stuck at 1.0.5-01; release sed regex can't match numeric qualifiers | open | HoneyTyagii | <https://github.com/github/copilot-sdk/issues/2209> |
| Issue | #2211 | Node.js docs: `tool.execution_complete` is documented with a `toolName` field it does not have | open | examon | <https://github.com/github/copilot-sdk/issues/2211> |
| Issue | #2207 | Support reasoningEffort: max | open | Stono | <https://github.com/github/copilot-sdk/issues/2207> |
| Issue | #2205 | Node: sendAndWait can emit an unhandled rejection and terminate the host process when session.error arrives mid-send | open | thejesh23 | <https://github.com/github/copilot-sdk/issues/2205> |
| Issue | #2203 | Python: tool results containing datetime/UUID/Decimal/Enum are reported to the model as a tool failure | open | thejesh23 | <https://github.com/github/copilot-sdk/issues/2203> |
| Issue | #2196 | .NET README attachment examples reference types that no longer exist | open | examon | <https://github.com/github/copilot-sdk/issues/2196> |
| Issue | #2189 | <img src="https://octodex.github.com/images/supportcat.png" align="right" height="100px" /> | open | mohamadhosenzademohamad-oss | <https://github.com/github/copilot-sdk/issues/2189> |
| Issue | #2158 | Setting `LargeOutput` but if subagent started, it won't inherit the LargeOutput but use the operating system's default tmp directory | open | AngryBerryMS | <https://github.com/github/copilot-sdk/issues/2158> |
| Issue | #2188 | [aw] Java Handwritten Code Adaptation After CLI Upgrade failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2188> |
| Issue | #2187 | cwrp poco c75
 | closed | Sengong | <https://github.com/github/copilot-sdk/issues/2187> |
| Issue | #2184 | Responses API should support native `previous_response_id` chaining | open | is-nullable | <https://github.com/github/copilot-sdk/issues/2184> |
| Issue | #2122 | python: boolean-discriminated unions never decode - sessions.list() raises for any non-empty result | closed | examon | <https://github.com/github/copilot-sdk/issues/2122> |
| Issue | #2171 | docs: streaming-events.md marks four persisted events as "Ephemeral" | closed | examon | <https://github.com/github/copilot-sdk/issues/2171> |
| Issue | #2178 | Remote sessions guide documents a client option that does not exist | closed | examon | <https://github.com/github/copilot-sdk/issues/2178> |
| Issue | #2169 | [Java] Embed Rust CLI runtime 4.3: Native binary extraction and caching | open | edburns | <https://github.com/github/copilot-sdk/issues/2169> |
| Issue | #2168 | [Java] Embed Rust CLI runtime 4.2: Platform detection utility | closed | edburns | <https://github.com/github/copilot-sdk/issues/2168> |
| Issue | #2167 | [Java] Embed Rust CLI runtime 4.1: Parent POM restructure to multi-module reactor | closed | edburns | <https://github.com/github/copilot-sdk/issues/2167> |
| Issue | #2146 | [Java] Embed Rust CLI runtime 4.4: JNA binding interface and implementation | open | edburns | <https://github.com/github/copilot-sdk/issues/2146> |
| Issue | #2151 | [Java] Embed Rust CLI runtime 4.9: CI workflow updates | open | edburns | <https://github.com/github/copilot-sdk/issues/2151> |
| Issue | #2150 | [Java] Embed Rust CLI runtime 4.8: E2E integration test | open | edburns | <https://github.com/github/copilot-sdk/issues/2150> |
| Issue | #2149 | [Java] Embed Rust CLI runtime 4.7: Native binary download and classifier JAR module | open | edburns | <https://github.com/github/copilot-sdk/issues/2149> |
| Issue | #2148 | [Java] Embed Rust CLI runtime 4.6: Transport integration with CopilotClient | open | edburns | <https://github.com/github/copilot-sdk/issues/2148> |
| Issue | #2147 | [Java] Embed Rust CLI runtime 4.5: FFI runtime host and transport streams | open | edburns | <https://github.com/github/copilot-sdk/issues/2147> |
| Issue | #2166 | [Java] Embed rust: Agentic run 02 | open | edburns | <https://github.com/github/copilot-sdk/issues/2166> |
| Issue | #2165 | FAILED [Java] Embed rust: Agentic run 01 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2165> |
| Issue | #2164 | [Java] Embed Rust: Prepare for agentic runs | closed | edburns | <https://github.com/github/copilot-sdk/issues/2164> |
| Issue | #2145 | ABORTED [Java] Embed Rust CLI runtime 4.3: Native binary extraction and caching | closed | edburns | <https://github.com/github/copilot-sdk/issues/2145> |
| Issue | #2154 | ABORTED [Java] Embed Rust CLI runtime 4.2: Platform detection utility | closed | edburns | <https://github.com/github/copilot-sdk/issues/2154> |
| Issue | #2143 | ABORTED [Java] Embed Rust CLI runtime 4.1: Parent POM restructure to multi-module reactor | closed | edburns | <https://github.com/github/copilot-sdk/issues/2143> |
| Issue | #2144 | ABORTED [Java] Embed Rust CLI runtime 4.2: Platform detection utility | closed | edburns | <https://github.com/github/copilot-sdk/issues/2144> |
| Issue | #2141 | Rust example in "Connecting to an external CLI server" does not compile (missing connection_token) | closed | examon | <https://github.com/github/copilot-sdk/issues/2141> |
| Issue | #2159 | docs: streaming events tip describes a single Data class for Python and Go, but both use per-event data types | closed | examon | <https://github.com/github/copilot-sdk/issues/2159> |
| Issue | #2161 | LargeToolOutputConfig handler is not used in sub agents | open | assing | <https://github.com/github/copilot-sdk/issues/2161> |
| Issue | #2128 | [Java] Create issues for agentic implementation | closed | edburns | <https://github.com/github/copilot-sdk/issues/2128> |
| Issue | #2121 | How to retrieve the AI Consumption of AI Credits of the opened session | open | matteo-ladrat-Legrand | <https://github.com/github/copilot-sdk/issues/2121> |
| Issue | #2116 | [Go][tests] E2E harness picks the first @github/copilot-* package instead of the current platform package | open | nytron88 | <https://github.com/github/copilot-sdk/issues/2116> |
| Issue | #2111 | Support resumable sub-agent conversations (stateful custom agents) | open | vishal061994-hue | <https://github.com/github/copilot-sdk/issues/2111> |
| Issue | #2021 | I want a code for banning. | closed | aabomouawya-cmd | <https://github.com/github/copilot-sdk/issues/2021> |
| Issue | #2020 | I want a code for banning | closed | aabomouawya-cmd | <https://github.com/github/copilot-sdk/issues/2020> |
| Issue | #2004 | what 
 | closed | sshivamma7712-creator | <https://github.com/github/copilot-sdk/issues/2004> |
| Issue | #2006 | new issueSdkCpil | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2006> |
| Issue | #2012 | crimson tide  | closed | teejaymaxxx77-cmyk | <https://github.com/github/copilot-sdk/issues/2012> |
| Issue | #2011 | new issue | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2011> |
| Issue | #2028 | New issueCplt | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2028> |
| Issue | #2030 | New issue | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2030> |
| Issue | #1644 | Binary tool results not passed to ExternalToolTextResultForLlm | closed | sophiehenning | <https://github.com/github/copilot-sdk/issues/1644> |
| Issue | #1125 | Python codegen: quicktype mangles long type names | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/1125> |
| Issue | #1888 | CustomAgentsLocalOnly - Incorrect Behaviour | closed | shudles | <https://github.com/github/copilot-sdk/issues/1888> |
| Issue | #1547 | ModeHandlersTest.shouldInvokeExitPlanModeHandlerWhenModelUsesTool fails after CLI 1.0.57 upgrade | closed | edburns | <https://github.com/github/copilot-sdk/issues/1547> |
| Issue | #1814 | SDK 1.0.4 default session persistence can fail with SQLite "database is locked" in one-shot hosted  sessions | closed | hahahahahaiyiwen | <https://github.com/github/copilot-sdk/issues/1814> |
| Issue | #2062 | [aw] Bug Handler is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2062> |
| Issue | #1887 | EnableConfigDiscovery - Incorrect Behaviour | closed | shudles | <https://github.com/github/copilot-sdk/issues/1887> |
| Issue | #869 | Documentation missing: MCP tools are prefixed with <server-key>- in available_tools / custom_agents[].tools | closed | ayushjai-ui | <https://github.com/github/copilot-sdk/issues/869> |
| Issue | #2103 | [Python][tests] E2E harness picks the first @github/copilot-* package instead of the current platform package | closed | syedkazmi14 | <https://github.com/github/copilot-sdk/issues/2103> |
| Issue | #2076 | Setting `LargeOutput` but if subagent started, it won't inherit the LargeOutput but use the operating system's default tmp directory | closed | AngryBerryMS | <https://github.com/github/copilot-sdk/issues/2076> |
| Issue | #2050 | Review ignorance reduction plan | closed | edburns | <https://github.com/github/copilot-sdk/issues/2050> |
| Issue | #2059 | s | closed | awsloT-bot | <https://github.com/github/copilot-sdk/issues/2059> |
| Issue | #2098 | Python `list_sessions` docstring example uses a nonexistent `sessionId` attribute | closed | examon | <https://github.com/github/copilot-sdk/issues/2098> |
| Issue | #2104 | Microsoft Agent Framework guide: the Node.js streaming example reads a nonexistent `delta` field | closed | examon | <https://github.com/github/copilot-sdk/issues/2104> |
