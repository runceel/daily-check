# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 18 |
| クローズ (未マージ) PR  | 5 |
| 新規 Issue              | 25 |
| クローズ Issue          | 10 |
| 主要コントリビューター  | edburns, github-actions[bot], pallaviraiturkar0, brettcannon, ellismg, roji |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的な検証強化** [#1980](https://github.com/github/copilot-sdk/pull/1980) — java: enforce non-blank @CopilotToolParam description at compile time （PR / merged / rinceyuan）
  Java SDK 利用者は、空または空白のみの `@CopilotToolParam` description が compile error になるため、LLM が理解できる具体的な説明へ更新してください。
- **互換性修正の確認** [#1129](https://github.com/github/copilot-sdk/issues/1129) — `copilot_mcp_server_name` field leaks into `tools[]` in outbound chat-completion requests, breaking strict OpenAI-compatible providers (e.g. Gemini) （Issue / closed / siarheidudko）
  Gemini など厳格な OpenAI 互換 provider を BYOK で利用するユーザーは、現行 CLI で再テストし、成功を確認してから tool payload を書き換える暫定 proxy を外してください。
- **⚠ セキュリティ** [#465](https://github.com/github/copilot-sdk/issues/465) — [Request] Digitally sign .NET versions of binaries （Issue / open / Davsterl）
  .NET SDK は strong-name signing 済みですが Authenticode signing は未対応のため、署名を必須とする組織は strong name で要件を満たすか、内部証明書での追加署名が必要かを確認してください。

## このリポジトリの要点

- Java SDK は PR #2069 で custom type 用 JSON Schema override を追加し、PR #1980 で空の tool parameter description を compile error にする検証を導入しました。
- Rust SDK は PR #2034 で `ask_user` 待機中も同一 turn の sibling tool call を処理できるよう、session の JSON-RPC request dispatch を並行化しました。
- `@github/copilot` 1.0.73 への更新で各言語の生成 RPC 型に `agentInvocationId` が追加され、BYOK の厳格 provider 互換性問題 #1129 は修正済みと確認されました。
- 一方、Rust request handler の lifecycle / panic 応答、権限 bypass 修正、Windows の CLI process-tree 終了などは引き続き open PR / Issue です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2069](https://github.com/github/copilot-sdk/pull/2069) — java: add schema attribute to @CopilotToolParam and lambda for custom type schema override

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +834 / -15
- マージ日時 (UTC): `2026-07-24 17:49:25`

**変更概要**

- Java の自動 schema generator が解釈できない custom / third-party type に対して、明示的な JSON Schema を指定できるようにします。
- annotation ベースの `@CopilotToolParam` と lambda ベースの `Param<T>` の両 API に schema override を追加し、生成時と runtime tool metadata 作成時の双方で利用します。
- JSON object の妥当性、`defaultValue` との競合、single-record wrapper での誤用を検証し、description / required metadata を維持するテストも追加されました。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.vscode/settings.json` | 1 | 0 |
| `java/pom.xml` | 6 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ParamSchema.java` | 16 | 1 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolParam.java` | 18 | 0 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 339 | 4 |
| `java/src/main/java/com/github/copilot/tool/Param.java` | 43 | 9 |
| `java/src/test/java/com/github/copilot/rpc/ParamSchemaTest.java` | 85 | 0 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionLambdaTest.java` | 20 | 0 |
| `java/src/test/java/com/github/copilot/tool/CopilotToolProcessorTest.java` | 260 | 1 |
| `java/src/test/java/com/github/copilot/tool/ParamTest.java` | 46 | 0 |

</details>

<details><summary>コミット (11 件)</summary>

- `2b4c8c4` java: add schema attribute to @CopilotToolParam for custom type schem…
- `9eb4ce1` fix: validate schema on single-record wrappers and reject trailing JS…
- `feaf490` Merge branch 'main' into feat/java-param-schema-override
- `2b08d63` # Commit message
- `f9042d2` Merge remote-tracking branch 'upstream/main' into edburns/review-rinc…
- `7ab10a6` fix(java): harden custom schema overrides
- `548d6ba` test(java): cover custom schema integration
- `be0d5e0` fix(java): handle schema parser edge cases
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 annotation に `String schema() default ""`、immutable な `Param<T>` に `schema(String)` fluent method と `schema()` getter が追加され、`equals()` / `hashCode()` も schema 値を含むようになりました。空文字なら従来の型ベース生成を使う追加 API であり、既存シグネチャの破壊的変更はありません。

**既存利用者への影響**

既存コードの変更は不要です。custom type の schema を指定する場合は JSON object 文字列を設定し、同じ parameter で `defaultValue` と併用しないでください。

### [#1980](https://github.com/github/copilot-sdk/pull/1980) — java: enforce non-blank @CopilotToolParam description at compile time

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +118 / -0
- マージ日時 (UTC): `2026-07-23 15:11:10`

**変更概要**

- LLM が tool parameter の意味を判断できるよう、Java annotation processor が `@CopilotToolParam.value()` の空文字・空白のみを compile time に拒否します。
- error には parameter、method、class 名を含め、修正箇所を特定しやすくしました。
- record component 側の annotation へ metadata を委譲する single-record wrapper は対象外で、既存の wrapper behavior は維持されます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 18 | 0 |
| `java/src/test/java/com/github/copilot/tool/CopilotToolProcessorTest.java` | 100 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `d249726` java: enforce non-blank @CopilotToolParam description at compile time
- `018d676` Merge branch 'main' into feat/java-blank-param-validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ追加・削除はありません。**⚠ 破壊的な検証強化:** これまで compile できた空または空白のみの `@CopilotToolParam` description は、single-record wrapper を除いて compile error になります。

**既存利用者への影響**

該当 annotation の `value` を LLM が理解できる具体的な説明へ置き換えてください。annotation を付けていない parameter と single-record wrapper の利用者には対応不要です。

### [#2055](https://github.com/github/copilot-sdk/pull/2055) — Update @github/copilot to 1.0.73

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +148 / -115
- マージ日時 (UTC): `2026-07-22 23:12:37`

**変更概要**

- bundled CLI / reference implementation の `@github/copilot` を 1.0.73 へ更新し、Node.js、test harness、Java codegen の依存を同期しました。
- 新しい RPC schema から .NET、Go、Java、Node.js、Python、Rust の生成型を再生成しています。
- persistent transport で body chunk を正しい agentic loop に帰属できるよう、HTTP request chunk に optional な `agentInvocationId` が追加されました。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 4 | 0 |
| `go/rpc/zrpc.go` | 8 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/LlmInferenceHttpRequestChunkRequest.java` | 3 | 1 |
| `nodejs/package-lock.json` | 36 | 36 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `nodejs/src/generated/rpc.ts` | 4 | 0 |
| `python/copilot/generated/rpc.py` | 13 | 1 |
| `rust/src/generated/api_types.rs` | 3 | 0 |
| `test/harness/package-lock.json` | 36 | 36 |
| `test/harness/package.json` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `39d1f48` Update @github/copilot to 1.0.73

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

experimental な `LlmInferenceHttpRequestChunkRequest` に nullable / optional の `agentInvocationId` が各言語で追加されました。**⚠ Java の source compatibility:** 生成 Java 型は record constructor の末尾に `String agentInvocationId` が加わるため、この型を直接構築するコードは引数追加が必要です。他言語では optional field / property の追加です。

**既存利用者への影響**

通常の SDK 利用者に変更は不要です。生成 Java record を直接 new している場合のみ末尾へ適切な invocation ID、または未指定を表す `null` を渡してください。

### [#2018](https://github.com/github/copilot-sdk/pull/2018) — Fix consistency review PR delta detection

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +12 / -5
- マージ日時 (UTC): `2026-07-22 22:21:23`

**変更概要**

- SDK consistency review agent が shallow checkout の `HEAD^` を PR base と誤認し、main 由来の変更まで対象 PR の差分として報告する問題を修正します。
- review prompt に GitHub API の `pull_request_read` で changed files と diff を取得することを必須化し、その結果を authoritative source としました。
- 正しい差分を取得できない場合は local history から推測せず `missing_data` で fail-closed とし、workflow lock metadata も gh-aw v0.82.10 で更新しました。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/sdk-consistency-review.lock.yml` | 1 | 1 |
| `.github/workflows/sdk-consistency-review.md` | 11 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `a6ad2b4` Fix consistency review PR delta detection

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

SDK の公開 API や runtime code に変更はありません。変更は consistency review workflow の prompt contract と生成 lock metadata に限定され、review agent の差分取得方法を GitHub API に固定します。

**既存利用者への影響**

SDK 利用者・コントリビューターとも移行は不要です。今後の自動 consistency review は、取得データ不足時に推測結果ではなく `missing_data` を返す場合があります。

### [#2038](https://github.com/github/copilot-sdk/pull/2038) — Use dependency groups for Python dev deps

- 作者: brettcannon / 状態: MERGED
- ラベル: —
- 変更行数: +8 / -6
- マージ日時 (UTC): `2026-07-22 22:20:32`

**変更概要**

- Python の開発用依存を project extra から PEP 735 dependency group へ移し、runtime package metadata と contributor tooling を分離します。
- `python/pyproject.toml` に `dev` group を定義し、CONTRIBUTING、Copilot instructions、`justfile` の install command を `uv pip install -e . --group dev` へ更新しました。
- SDK の runtime dependency や配布 API は変わらず、開発環境のセットアップ方法だけが対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/copilot-instructions.md` | 1 | 1 |
| `CONTRIBUTING.md` | 1 | 1 |
| `justfile` | 1 | 1 |
| `python/pyproject.toml` | 5 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `606c378` Use dependency groups for Python dev deps

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 Python API の変更はありません。`pyproject.toml` の開発用依存宣言が `project.optional-dependencies.dev` から PEP 735 の `dependency-groups.dev` に移り、従来の `.[dev]` extra を使う contributor 向け install contract が変わりました。

**既存利用者への影響**

SDK package の通常利用者は対応不要です。repository の Python 開発環境を作る場合は従来の dev extra ではなく `uv pip install -e . --group dev` を使用してください。

### [#2034](https://github.com/github/copilot-sdk/pull/2034) — Fix `ask_user` starving the Rust SDK per-session event loop

- 作者: pallaviraiturkar0 / 状態: MERGED
- ラベル: —
- 変更行数: +223 / -21
- マージ日時 (UTC): `2026-07-22 20:04:28`

**変更概要**

- Rust SDK の session event loop が `ask_user` の応答待ちを inline await し、同じ turn で発行された sibling tool call を処理できず UI が停止する問題を修正します。
- `requests.recv()` で受けた各 JSON-RPC request を child task として dispatch し、長時間の user input、permission、hook、transform、provider request 中も loop が次の message を処理できるようにしました。
- `set_marker` と `ask_user` を同時に発行する E2E test と replay snapshot を追加し、待機中にも sibling tool が実行されることを検証しています。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/src/session.rs` | 48 | 18 |
| `rust/tests/e2e/ask_user.rs` | 145 | 3 |
| `test/snapshots/ask_user/ask_user_does_not_block_sibling_tool_call_in_same_turn.yaml` | 30 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `d2a0bb8` Fix ask_user starving the Rust SDK per-session event loop

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はありません。内部 dispatch は session ごとの直列 await から request 単位の `tokio::spawn` へ変わり、JSON-RPC response は規格どおり request 順と異なる順序で返り得ます。request handler の lifecycle と panic 時の未応答は Issue #2053 で follow-up 中です。

**既存利用者への影響**

通常の Rust SDK 利用者にコード移行は不要です。ただし custom request handler が暗黙の逐次実行に依存していた場合は、共有状態の同期と並行実行時の安全性を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1878 | docs: document sub-agent event attribution | loganrosen | <https://github.com/github/copilot-sdk/pull/1878> |
| #2046 | Durably document required secrets | edburns | <https://github.com/github/copilot-sdk/pull/2046> |
| #1995 | docs: expand Azure Managed Identity BYOK guidance | scottaddie | <https://github.com/github/copilot-sdk/pull/1995> |
| #2036 | Report authoritative cwd in recordContextChange E2E tests | ellismg | <https://github.com/github/copilot-sdk/pull/2036> |
| #2035 | Update @github/copilot to 1.0.72 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2035> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2088 | Fix the Node.js tool-definition example in the Microsoft Agent Framework guide | open | examon | <https://github.com/github/copilot-sdk/pull/2088> |
| PR | #2086 | Fix Go telemetry examples: NewClient takes *ClientOptions and returns one value | open | examon | <https://github.com/github/copilot-sdk/pull/2086> |
| PR | #2058 | Enable BYOK coverage for .NET E2E tests | open | roji | <https://github.com/github/copilot-sdk/pull/2058> |
| PR | #2082 | docs: fix non-compiling Rust session-limits example | open | examon | <https://github.com/github/copilot-sdk/pull/2082> |
| PR | #2049 | WIP: Base branch for epic 1917-java-embed-rust | open | edburns | <https://github.com/github/copilot-sdk/pull/2049> |
| PR | #2080 | Expose managed approval requirement on permission requests | open | joshspicer | <https://github.com/github/copilot-sdk/pull/2080> |
| PR | #2065 | Fix Critical Privilege / Permission Bypass in Rust | open | DrHazemAli | <https://github.com/github/copilot-sdk/pull/2065> |
| PR | #2051 | rust: re-export ModelPolicyState and ModelPickerCategory from crate root | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2051> |
| PR | #2074 | docs: add missing assistant.usage event fields to streaming-events reference | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2074> |
| PR | #2073 | fix: kill entire CLI process tree on stop/forceStop (Windows) | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2073> |
| PR | #2072 | docs: document complete sub-agent event data fields | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2072> |
| PR | #2066 | Add StartupTimings per-phase breakdown to Client::start | open | jmoseley | <https://github.com/github/copilot-sdk/pull/2066> |
| PR | #2064 | docs: fix inaccurate SDK/runtime claims found in docs audit | open | patniko | <https://github.com/github/copilot-sdk/pull/2064> |
| PR | #2063 | Refresh agentic workflows to gh-aw v0.83.1; issue-intent on issue-triage | open | alondahari | <https://github.com/github/copilot-sdk/pull/2063> |
| PR | #2054 | nodejs: Expose onAgentStop session hook | open | belaltaher8 | <https://github.com/github/copilot-sdk/pull/2054> |
| PR | #2052 | build(deps): bump @github/copilot from 1.0.72 to 1.0.73 in /java/scripts/codegen in the java-codegen-deps group | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2052> |
| PR | #2047 | dotnet: release oversized JSON-RPC receive buffers | open | adirh3 | <https://github.com/github/copilot-sdk/pull/2047> |
| PR | #2039 | Bump brace-expansion from 5.0.6 to 5.0.7 in /scripts/docs-validation in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2039> |
| PR | #2077 | fix(rust): respond when request handlers panic | closed | hogeheer499-commits | <https://github.com/github/copilot-sdk/pull/2077> |
| PR | #2079 | fix(node): exclude internal events from public union | closed | hogeheer499-commits | <https://github.com/github/copilot-sdk/pull/2079> |
| PR | #1999 | java: add schema attribute to @CopilotToolParam for custom type schema override | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/1999> |
| PR | #2071 | feat(rust): expose quota credits used metadata | closed | meagancojocar | <https://github.com/github/copilot-sdk/pull/2071> |
| PR | #1848 | Add host-side canvas declaration API and canvasProvider to Java SDK | closed | jmoseley | <https://github.com/github/copilot-sdk/pull/1848> |
| Issue | #2087 | Docs: Node.js tool example in the Microsoft Agent Framework guide imports a DefineTool export that does not exist | open | examon | <https://github.com/github/copilot-sdk/issues/2087> |
| Issue | #2085 | Go telemetry examples do not compile: NewClient takes *ClientOptions and returns a single value | open | examon | <https://github.com/github/copilot-sdk/issues/2085> |
| Issue | #2084 | شركة خبراء الساندوتش بانل في المنطقة الشرقية:  من الموردين البارزين للألواح والملحقات الخاص | closed | aszazs534 | <https://github.com/github/copilot-sdk/issues/2084> |
| Issue | #2083 | شركة خبراء الساندوتش بانل في المنطقة الشرقية:  من الموردين البارزين للألواح والملحقات الخاص | closed | aszazs534 | <https://github.com/github/copilot-sdk/issues/2083> |
| Issue | #2081 | docs: Rust session-limits example does not compile (SessionConfig::new does not exist) | open | examon | <https://github.com/github/copilot-sdk/issues/2081> |
| Issue | #2078 | 1.0.8 breaks typing on events | open | Stono | <https://github.com/github/copilot-sdk/issues/2078> |
| Issue | #2076 | Setting `LargeOutput` but if subagent started, it won't inherit the LargeOutput but use the operating system's default tmp directory | open | AngryBerryMS | <https://github.com/github/copilot-sdk/issues/2076> |
| Issue | #2075 | Persue procedures for personal and /or business restoration and reimbursement compliance  from mishandled individuals or assets | open | networkingllc4223-gif | <https://github.com/github/copilot-sdk/issues/2075> |
| Issue | #2070 | Support company announcements in SDK sessions | open | meagancojocar | <https://github.com/github/copilot-sdk/issues/2070> |
| Issue | #2068 | add schema attribute to @CopilotToolParam and inline tools for custom type schema override | closed | edburns | <https://github.com/github/copilot-sdk/issues/2068> |
| Issue | #2067 | PackAsTool: Copilot CLI binary not included in NuGet tool package (cross-platform) | open | Marcus-Kanon | <https://github.com/github/copilot-sdk/issues/2067> |
| Issue | #2061 | Assistant message "refusal": null in outbound chat-completion request breaks strict OpenAI-compatible providers (e.g. Gemini) | open | badsgahhl | <https://github.com/github/copilot-sdk/issues/2061> |
| Issue | #2062 | [aw] Bug Handler is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2062> |
| Issue | #2060 | Why is the `OnPermissionRequest` event triggered twice for the same `PermissionRequestKindWrite` request? | open | wangyang1749 | <https://github.com/github/copilot-sdk/issues/2060> |
| Issue | #2059 | s | open | awsloT-bot | <https://github.com/github/copilot-sdk/issues/2059> |
| Issue | #2057 | [changelog] Add changelog for v1.0.8 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2057> |
| Issue | #2056 | [changelog] Add changelog for java/v1.0.8 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2056> |
| Issue | #2045 | [CHORE]: Make it so the secrets we require are durably documented | closed | edburns | <https://github.com/github/copilot-sdk/issues/2045> |
| Issue | #2053 | Rust SDK: follow-ups from #2034 — spawned request handlers can outlive stop_event_loop, and a panicking handler leaves the request unanswered | open | pallaviraiturkar0 | <https://github.com/github/copilot-sdk/issues/2053> |
| Issue | #2041 | Expose typed Agent Finder search, plan, and apply APIs in Copilot SDK | open | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2041> |
| Issue | #2043 | Ask: A supported way to disable built-in sub-agents | open | AbeGeMS | <https://github.com/github/copilot-sdk/issues/2043> |
| Issue | #2050 | Review ignorance reduction plan | open | edburns | <https://github.com/github/copilot-sdk/issues/2050> |
| Issue | #2048 | [python] `copilot.generated` exposed as part of the public API | open | brettcannon | <https://github.com/github/copilot-sdk/issues/2048> |
| Issue | #2042 | Ask: Fall back to the parent model when a sub-agent's model fails at call-time | open | AbeGeMS | <https://github.com/github/copilot-sdk/issues/2042> |
| Issue | #2040 | Add per-session env overrides for built-in shell tool child processes | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2040> |
| Issue | #1384 | Feature Request: Support Azure Managed Identities for BYOK-style Auth | closed | SSSanghvi | <https://github.com/github/copilot-sdk/issues/1384> |
| Issue | #1794 | [Java] `@CopilotTool` ergonomics: Add schema attribute to @Param for custom type schema override | closed | edburns | <https://github.com/github/copilot-sdk/issues/1794> |
| Issue | #2000 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2000> |
| Issue | #1836 | [Java] `@CopilotTool` ergonomics: Enforce non-blank @Param description at compile time | closed | edburns | <https://github.com/github/copilot-sdk/issues/1836> |
| Issue | #1991 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1991> |
| Issue | #1977 | Create ignorance reduction plan | closed | edburns | <https://github.com/github/copilot-sdk/issues/1977> |
