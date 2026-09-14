# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 5 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | SteveSandersonMS, github-actions[bot], dependabot[bot], dereklegenzoff, ellismg, jmoseley |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2469](https://github.com/github/copilot-sdk/issues/2469) — Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers （Issue / open / briandunnington）
  BYOK の Azure OpenAI など厳密な chat-completions provider で session resume を使う利用者は、空の assistant turn があると 400 で再開不能になるため、修正までは該当履歴を避けるか事前正規化が必要です。
- **⚠ 破壊的変更** [#1129](https://github.com/github/copilot-sdk/issues/1129) — `copilot_mcp_server_name` field leaks into `tools[]` in outbound chat-completion requests, breaking strict OpenAI-compatible providers (e.g. Gemini) （Issue / closed / siarheidudko）
  MCP と strict OpenAI-compatible provider を併用する利用者は、古い CLI／SDK では非標準フィールドにより 400 になるため更新してください。報告者は修正済みを確認しており、Issue はクローズされています。

## このリポジトリの要点

`@github/copilot` 1.0.83-2／1.0.83-3 への追従で、completion receipt、fusion phase、hook discovery、persisted event 読み取り、experimental skill provider などの生成 SDK surface が各言語へ追加されました。内部 client-session callback が公開 handler に漏れる codegen 不具合も修正されています。  
一方、空の assistant turn を含む session resume が strict provider で失敗する [Issue #2469](https://github.com/github/copilot-sdk/issues/2469) は未解決で、BYOK 利用時の継続監視が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2495](https://github.com/github/copilot-sdk/pull/2495) — Update @github/copilot to 1.0.83-3

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +813 / -138
- マージ日時 (UTC): `2026-09-03 02:02:07`

**変更概要**

組み込み `@github/copilot` を 1.0.83-3 へ更新し、最新 schema から .NET、Go、Java、Node.js、Python、Rust の型と RPC bindings を再生成します。  
主な追加は experimental skill provider の descriptor／list／read 型、`SkillSource.Sdk`、skill invocation event の拡張、session option の `hasSkillProvider` です。  
1.0.83-2 で追加された SDK surface に続き、host が提供する skill を session とイベントで扱うための生成契約を揃えています。

<details><summary>変更ファイル (32 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 7 | 3 |
| `dotnet/src/Generated/SessionEvents.cs` | 12 | 4 |
| `go/rpc/zrpc.go` | 83 | 4 |
| `go/rpc/zrpc_encoding.go` | 4 | 0 |
| `go/rpc/zsession_events.go` | 5 | 3 |
| `go/zsession_events.go` | 1 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SkillInvokedEvent.java` | 4 | 2 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SkillSource.java` | 4 | 2 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SkillsLoadedSkill.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SessionOpenOptions.java` | 4 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SessionOptionsUpdateParams.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SkillProviderDescriptor.java` | 35 | 0 |
| _... 他 17 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `de72258` Update @github/copilot to 1.0.83-3

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`SkillProviderDescriptor`、list/read request・result、`SkillsInvokedSkill` の追加フィールド、`SessionOpenOptions.hasSkillProvider` などが各言語の生成コードへ追加されました。skill provider callback の一部は internal／experimental と明記され、公開利用を前提としない型も含みます。既存フィールド削除を伴う破壊的変更は確認されませんでした。

**既存利用者への影響**

通常の SDK 利用者に必須の移行はありません。生成 record の positional constructor を直接呼ぶ Java などのコードは、追加された optional field によるシグネチャ変化を確認してください。

### [#2494](https://github.com/github/copilot-sdk/pull/2494) — Fix internal client-session handler codegen

- 作者: ellismg / 状態: MERGED
- ラベル: —
- 変更行数: +144 / -20
- マージ日時 (UTC): `2026-09-03 00:57:38`

**変更概要**

client-session 向けの internal RPC method が、TypeScript、Go、Python の公開 handler interface と登録処理へ誤って生成される問題を修正します。  
1.0.83-3 schema の internal skill-provider callback が公開型を参照したことで、TypeScript codegen が失敗して発覚しました。  
生成前に client-session API tree を public method へ絞り込みつつ、SDK hook dispatch に必要な internal client-global plumbing は維持します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/test/client-api-codegen.test.ts` | 115 | 0 |
| `scripts/codegen/go.ts` | 20 | 14 |
| `scripts/codegen/python.ts` | 3 | 2 |
| `scripts/codegen/typescript.ts` | 6 | 4 |

</details>

<details><summary>コミット (2 件)</summary>

- `efc46a0` Fix internal client-session handler codegen
- `6ed6f38` Preserve empty client handler scaffolding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Go／Python／TypeScript generator の handler 抽出条件を修正し、internal-only group の場合も空の handler scaffolding を正しく保持します。これは本来公開されるべきでない method を生成面から除く修正であり、サポート済みの公開 API を削除する破壊的変更ではありません。

**既存利用者への影響**

再生成済み SDK の利用者に移行は不要です。独自に generator を利用している場合は更新し、internal callback が公開 handler に混入しないことを確認してください。

### [#2483](https://github.com/github/copilot-sdk/pull/2483) — Update @github/copilot to 1.0.83-2

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +4026 / -662
- マージ日時 (UTC): `2026-09-02 23:31:14`

**変更概要**

組み込み `@github/copilot` を 1.0.83-2 へ更新し、全言語の RPC／session event bindings を新しい schema から再生成します。  
completion receipt、assistant fusion phase、agent model policy、hook discovery、persisted event 読み取り、session model switch、network proxy policy、subagent settings など幅広い型と method が追加されました。  
Java／Rust の handwritten code とテストも生成シグネチャに合わせ、macOS .NET test shard の hang 分離も同時に行っています。

<details><summary>変更ファイル (60 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-sdk-tests.yml` | 93 | 3 |
| `dotnet/src/Generated/Rpc.cs` | 485 | 152 |
| `dotnet/src/Generated/SessionEvents.cs` | 570 | 98 |
| `dotnet/test/E2E/RpcMcpAndSkillsE2ETests.cs` | 10 | 10 |
| `go/rpc/zrpc.go` | 190 | 17 |
| `go/rpc/zsession_encoding.go` | 16 | 0 |
| `go/rpc/zsession_events.go` | 153 | 4 |
| `go/zsession_events.go` | 24 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AgentModelPolicy.java` | 35 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantFusionPhaseActivityEvent.java` | 57 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/CompletionReceiptEventRange.java` | 29 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/CompletionReceiptFinalTool.java` | 33 | 0 |
| _... 他 45 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `d6a001c` Update @github/copilot to 1.0.83-2
- `174940c` Fix Java tests for generated schema changes
- `7bcc153` Fix Rust checks for generated schema changes
- `0cc1b2c` Split hanging macOS .NET test shard
- `e372b87` Further isolate macOS .NET tests
- `6156e6c` Isolate macOS RPC test groups
- `7cba9b9` Fully isolate macOS .NET test groups
- `9956454` Isolate flaky .NET test hosts
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

.NET では `HooksDiscoverResult`、`DiscoverAsync(...)`、`ReadPersistedEventsAsync(...)`、`SessionCompletionReceiptEvent`、`AssistantFusionPhaseActivityEvent` と関連 enum／data type が生成されています。他言語にも同等の RPC・event 型が追加され、Java record の追加 field や enum case に handwritten code を追従させています。主として追加的な schema 更新で、明示された破壊的削除はありません。

**既存利用者への影響**

一般利用者の必須移行はありません。生成型を網羅的に switch しているコードや positional constructor を使うコードは、新 event／field を扱えるか確認してください。

### [#2484](https://github.com/github/copilot-sdk/pull/2484) — Reduce merge queue flakiness

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +151 / -19
- マージ日時 (UTC): `2026-09-02 15:56:25`

**変更概要**

直近 48 時間の merge queue で多発した .NET test hang、Java rerun artifact 不整合、Rust proxy 起動 timeout、npm／Maven の一時失敗を分析して対策します。  
replay proxy teardown 時に接続・upstream request・streaming response を確実に閉じ、Java artifact 名を rerun 間で安定化しました。  
package fetch には限定的な retry を追加し、Rust CAPI proxy の起動猶予を 30 秒へ延長して、実障害を隠さず CI の偶発失敗を減らします。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-sdk-tests.yml` | 19 | 1 |
| `.github/workflows/java-sdk-tests.yml` | 17 | 8 |
| `.github/workflows/nodejs-sdk-tests.yml` | 5 | 0 |
| `.github/workflows/python-sdk-tests.yml` | 2 | 2 |
| `justfile` | 6 | 2 |
| `rust/tests/e2e/support.rs` | 3 | 2 |
| `test/harness/capturingHttpProxy.test.ts` | 42 | 0 |
| `test/harness/capturingHttpProxy.ts` | 49 | 4 |
| `test/harness/replayingCapiProxy.test.ts` | 8 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `a0d78f2` ci: reduce merge queue flakiness
- `fe1805d` fix(test): prevent replay proxy teardown hangs
- `3c44320` ci: preserve existing .NET timeout budgets
- `b28a9d4` test: run harness regression tests in CI
- `5a87773` test: isolate replay writes from CI environment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 SDK API の変更はありません。test harness の `capturingHttpProxy` に active resource の明示的な終了処理を追加し、workflow の artifact／retry 設定と Rust test support の timeout を調整しています。timeout budget 自体は維持されています。

**既存利用者への影響**

利用者の移行はありません。コントリビューターには merge queue の再実行成功率と診断ログの取得率が改善します。

### [#2471](https://github.com/github/copilot-sdk/pull/2471) — Fix Windows unused-variable warning in rust/build/in_process.rs

- 作者: dmytrostruk / 状態: MERGED
- ラベル: —
- 変更行数: +6 / -0
- マージ日時 (UTC): `2026-09-02 13:58:08`

**変更概要**

Rust crate を Windows で `RUSTFLAGS=-D warnings` 付きビルドした際、Unix でのみ使う `executable` parameter が未使用 warning となり downstream build を失敗させる問題を修正します。  
非 Unix build では `let _ = executable;` として明示的に使用済みにし、Unix 側の `chmod` 処理は変更しません。  
Windows を含む警告エラー運用での source build 互換性を改善する限定的な修正です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/build/in_process.rs` | 6 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `11c6db9` Fix unused variable warning on Windows in rust/build/in_process.rs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`rust/build/in_process.rs` の内部実装に `#[cfg(not(unix))]` 分岐を追加しただけで、function signature や公開 API、Unix の実行権限設定は変わりません。

**既存利用者への影響**

移行は不要です。Windows で main から直接 crate をビルドし、warning を error 扱いしていた利用者は更新で失敗が解消します。

### [#2472](https://github.com/github/copilot-sdk/pull/2472) — test: update replay harness default to Claude Sonnet 5

- 作者: dereklegenzoff / 状態: MERGED
- ラベル: —
- 変更行数: +705 / -666
- マージ日時 (UTC): `2026-09-02 13:57:36`

**変更概要**

SDK の test、replay fixture、fixture 作成 template で使う既定モデルを `claude-sonnet-4.5` から `claude-sonnet-5` へ移行します。  
Node、Python、Go、.NET、Rust、Java の session、catalog、vision test、snapshot を同じモデル識別子へ揃え、暫定的な 4.5 互換 shim を削除しました。  
変更はテスト資産に限定され、SDK の production default、runtime policy、利用者向け API 例は変更しません。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/skills/new-java-e2e-test-yaml-and-test/SKILL.md` | 1 | 1 |
| `.github/skills/new-java-e2e-test-yaml-and-test/examples.md` | 2 | 2 |
| `dotnet/test/E2E/ClientOptionsE2ETests.cs` | 6 | 6 |
| `dotnet/test/E2E/CopilotRequestE2EProvider.cs` | 7 | 7 |
| `dotnet/test/E2E/CopilotRequestSessionIdE2ETests.cs` | 3 | 3 |
| `dotnet/test/E2E/CopilotRequestWebSocketE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RewindE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RpcServerE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RpcSessionStateE2ETests.cs` | 11 | 11 |
| `dotnet/test/E2E/RpcSessionStateExtrasE2ETests.cs` | 4 | 4 |
| `dotnet/test/E2E/SessionConfigE2ETests.cs` | 13 | 13 |
| `dotnet/test/E2E/SessionE2ETests.cs` | 1 | 1 |
| `dotnet/test/Harness/E2ETestBackend.cs` | 1 | 1 |
| `dotnet/test/Unit/E2ETestBackendTests.cs` | 1 | 1 |
| `go/internal/e2e/client_options_e2e_test.go` | 2 | 2 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `570d132` test: update replay harness default to Claude Sonnet 5
- `91cd730` test: preserve legacy selection in catalog and vision fixtures
- `1322535` test: use Sonnet 5 for both vision capability turns
- `a3af5e6` test: migrate all Sonnet 4.5 fixtures to Sonnet 5
- `05a6ed2` test: fix migration formatting and fixture-authoring examples
- `267020c` test: trim replay coverage to the Sonnet 5 default

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

実装 API の変更はなく、fixture 内の model ID／display label と test expectation を機械的に更新しています。vision test は session 作成と `setModel` の両方を Sonnet 5 に統一し、catalog 未設定時の harness default も更新しました。

**既存利用者への影響**

SDK 利用者の移行は不要です。独自 replay fixture やテスト補助をリポジトリの既定値に合わせている保守者のみ、Sonnet 5 への更新を検討してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2470 | Improve Rust permission confirmation reliability | jmoseley | <https://github.com/github/copilot-sdk/pull/2470> |
| #2482 | Use application terminology for client info | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2482> |
| #2406 | build(deps): bump the java-maven-deps group across 1 directory with 4 updates | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2406> |
| #2479 | build(deps): bump tsx from 4.23.12 to 4.23.13 in /java/scripts/codegen in the java-codegen-deps group | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2479> |
| #2480 | ci: reduce SDK CI critical paths and runner saturation | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2480> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2486 | Preserve typed catalogue unions in SDK codegen | open | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2486> |
| PR | #2490 | Testing | open | ncamaraljrai | <https://github.com/github/copilot-sdk/pull/2490> |
| PR | #2491 | Add nested copilot-sdk directory (embedded repo) | open | ncamaraljr7219 | <https://github.com/github/copilot-sdk/pull/2491> |
| PR | #2487 | build(deps-dev): bump js-yaml from 4.2.0 to 4.3.2 in /nodejs | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2487> |
| PR | #2488 | build(deps-dev): bump fast-uri from 3.1.5 to 3.1.7 in /test/harness | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2488> |
| PR | #2478 | [go] Add test CLI setup helper | open | qmuntal | <https://github.com/github/copilot-sdk/pull/2478> |
| PR | #2265 | Bump the "all" group with 7 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2265> |
| PR | #2408 | Bump the "all" group with 5 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2408> |
| PR | #2474 | Add selected collaborators to session visibility | closed | pierceboggan | <https://github.com/github/copilot-sdk/pull/2474> |
| PR | #2481 | Generate catalogue SDK bindings from CLI 1.0.83-2 | closed | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2481> |
| Issue | #2493 | [aw] Issue Classification Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2493> |
| Issue | #2492 | Python: no way to answer mcp.headers_refresh_required, so MCP auth headers are fixed for the life of a session | open | jsmith13 | <https://github.com/github/copilot-sdk/issues/2492> |
| Issue | #2489 | [aw] Java Codegen Agentic Fix failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2489> |
| Issue | #2485 | chat sessions from previous build are missing field agentDisplayName | open | amunger | <https://github.com/github/copilot-sdk/issues/2485> |
| Issue | #2477 | Host-provided plugin directories trigger read permission prompts for plugin customizations | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2477> |
| Issue | #2106 | Expose catalogue APIs in the Copilot SDK | closed | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2106> |
