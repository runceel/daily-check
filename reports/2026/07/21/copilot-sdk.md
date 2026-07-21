# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 9 |
| オープン中の新規 PR     | 10 |
| クローズ (未マージ) PR  | 5 |
| 新規 Issue              | 8 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | stephentoub, roji, dependabot[bot], devm33, MackinnonBuck, github-actions[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#2007](https://github.com/github/copilot-sdk/issues/2007) — hono dev dependency has 5 known security advisories (1 high, 4 medium) （Issue / open / aaf091）
  `nodejs/package.json` の開発依存 `hono` 4.12.23 が該当し、4.12.25 で全件修正済みです。runtime 依存ではありませんが、repository maintainer は更新して local tooling / dev server の露出を解消する必要があります。

## このリポジトリの要点

全6言語 SDK の内部 `expAssignments` が具体型になり、wire contract を維持したまま型安全性が向上しました（[#2033](https://github.com/github/copilot-sdk/pull/2033)）。Node SDK の公開 npm package を社内 Azure Artifacts に同一 artifact で mirror する release flow（[#2025](https://github.com/github/copilot-sdk/pull/2025)）と、.NET の3種類の BYOK protocol E2E（[#2010](https://github.com/github/copilot-sdk/pull/2010)）も追加されています。一方、開発依存 `hono` の既知脆弱性5件は未解消の Issue [#2007](https://github.com/github/copilot-sdk/issues/2007) として追跡中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2033](https://github.com/github/copilot-sdk/pull/2033) — Strongly type expAssignments session config across all SDKs

- 作者: devm33 / 状態: MERGED
- ラベル: —
- 変更行数: +796 / -110
- マージ日時 (UTC): `2026-07-20 21:49:20`

**変更概要**

Node、Go、Python、Rust、.NET、Java の全 SDK で、session config の内部 `expAssignments` を opaque JSON から `CopilotExpAssignmentResponse` と `ExpConfigEntry` の具体型へ置き換えました。create / resume、copy 処理、serialization test まで同じ runtime contract に揃えています。PascalCase の wire key と null 時の省略規則は維持されるため、CLI / runtime との通信形式は変わりません。

<details><summary>変更ファイル (22 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 2 | 2 |
| `dotnet/src/Types.cs` | 61 | 1 |
| `dotnet/test/Unit/SerializationTests.cs` | 21 | 18 |
| `go/client_test.go` | 50 | 6 |
| `go/internal/e2e/client_options_e2e_test.go` | 4 | 4 |
| `go/types.go` | 71 | 4 |
| `java/src/main/java/com/github/copilot/rpc/CopilotExpAssignmentResponse.java` | 195 | 0 |
| `java/src/main/java/com/github/copilot/rpc/CreateSessionRequest.java` | 3 | 4 |
| `java/src/main/java/com/github/copilot/rpc/ExpConfigEntry.java` | 72 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionConfig.java` | 7 | 7 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionRequest.java` | 3 | 4 |
| `java/src/main/java/com/github/copilot/rpc/SessionConfig.java` | 6 | 7 |
| `java/src/test/java/com/github/copilot/SessionRequestBuilderTest.java` | 10 | 5 |
| `nodejs/src/index.ts` | 3 | 0 |
| `nodejs/src/types.ts` | 40 | 1 |
| _... 他 7 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `15d9513` Strongly type expAssignments session config across all SDKs
- `562a187` Address review: normalize required exp-assignment fields
- `69ab40f` Default ExpConfigEntry.Id to "" in Java
- `0584916` Fix stale "opaque JSON" comment in Python exp wiring
- `5bda401` Fix nightly rustfmt import grouping in types.rs tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

各言語に `Features`、`Flights`、`Configs`、`AssignmentContext` などを持つ `CopilotExpAssignmentResponse` と、scalar parameter を表す `ExpConfigEntry` が導入されました。必須 collection は空配列 / 空 object、Java の必須 string は空文字として serialise され、言語間の zero-value 差異も正規化されます。**⚠ 内部 API の `expAssignments` に任意 JSON / map を渡していたコードには source-breaking な型変更**ですが、wire JSON schema の破壊的変更ではありません。

**既存利用者への影響**

通常の公開 SDK 利用者に移行は不要です。内部 field を直接設定している利用者は、任意 JSON ではなく新しい response / config entry 型を構築するよう変更してください。

### [#2029](https://github.com/github/copilot-sdk/pull/2029) — Harden MCP OAuth cancel E2E tests against create/interest race

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +83 / -15
- マージ日時 (UTC): `2026-07-18 03:32:50`

**変更概要**

MCP OAuth cancel E2E が `session.create` と event interest 登録の競合で intermittently fail する問題を、callback 到着まで bounded wait する方式に変更しました。C#、Go、Java、Python、Rust の5 suite に同じ対策を適用し、Go の潜在 data race と C# の callback thread 間同期も修正しています。製品 runtime / SDK source ではなく test robustness の改善です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/McpOAuthE2ETests.cs` | 12 | 5 |
| `go/internal/e2e/mcp_oauth_e2e_test.go` | 34 | 5 |
| `java/src/test/java/com/github/copilot/McpOAuthE2ETest.java` | 11 | 5 |
| `python/e2e/test_mcp_oauth_e2e.py` | 14 | 0 |
| `rust/tests/e2e/mcp_oauth.rs` | 12 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `4ae594b` Harden MCP OAuth cancel E2E tests against create/interest race
- `15a1bad` Use TaskCompletionSource for thread-safe callback wait in C# cancel test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

public API の変更はありません。各 suite の既存 wait helper を再利用し、C# は `TaskCompletionSource`、Go は mutex で callback result を安全に受け渡すようになりました。既存の `reason == initial` と cancel path の assertion は維持されています。

**既存利用者への影響**

SDK 利用者の移行は不要です。MCP OAuth callback を扱う独自 E2E がある場合は、`needs-auth` 到達と callback 実行を同時と仮定せず、timeout 付きで callback を待つ設計が参考になります。

### [#2025](https://github.com/github/copilot-sdk/pull/2025) — Mirror Node SDK releases to internal feed

- 作者: MackinnonBuck / 状態: MERGED
- ラベル: —
- 変更行数: +321 / -13
- マージ日時 (UTC): `2026-07-20 16:38:19`

**変更概要**

stable / prerelease / unstable の Node SDK release を、public npm への authoritative publish 後に社内 Azure Artifacts feed へ mirror する workflow を追加しました。package は prerequisite job で一度だけ build / pack され、同一 tarball が両 feed に公開されます。既存 version の誤再公開は packaging 前に fail closed とし、failed-job retry では immutable artifact を再利用して既知の version conflict だけを成功扱いします。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/publish.yml` | 141 | 13 |
| `nodejs/scripts/npm-release.js` | 92 | 0 |
| `nodejs/test/npm-release.test.ts` | 88 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `69c1b33` Mirror Node SDK releases internally
- `5e72985` Simplify release retry handling
- `ed64363` Handle Azure feed conflict prefix
- `db07b55` Fix Windows release helper parsing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

SDK API / package contents の変更はありません。`publish.yml` に Azure OIDC を使う必須 internal publish job が加わり、`npm-release.js` が public npm の preflight、npm / Azure feed の immutable-version conflict 判定、Windows 上の helper output 解析を担当します。

**既存利用者への影響**

public npm から利用する既存ユーザーへの影響はありません。release maintainer は、fresh rerun では既存 version を再packできず、failed jobs の再実行でのみ既存 artifact を再利用する retry semantics に留意してください。

### [#2023](https://github.com/github/copilot-sdk/pull/2023) — Update SDK E2E tests for canonical exit_plan_mode action order

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +7 / -7
- マージ日時 (UTC): `2026-07-17 13:37:43`

**変更概要**

runtime の Rust 実装が `exit_plan_mode` の action を `[autopilot, interactive, exit_only]` に canonicalize するようになったため、全5言語 SDK の E2E expectation と共有 snapshot を同じ順序へ更新しました。`recommendedAction` は引き続き `interactive` で、mode selection の意味は変わりません。runtime HEAD に対する canary failure を解消する test-only の追随です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/ModeHandlersE2ETests.cs` | 1 | 1 |
| `go/internal/e2e/mode_handlers_e2e_test.go` | 1 | 1 |
| `nodejs/test/e2e/mode_handlers.e2e.test.ts` | 1 | 1 |
| `python/e2e/test_mode_handlers_e2e.py` | 1 | 1 |
| `rust/tests/e2e/mode_handlers.rs` | 2 | 2 |
| `test/snapshots/mode_handlers/should_invoke_exit_plan_mode_handler_when_model_uses_tool.yaml` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `b959952` Update SDK E2E tests for canonical exit_plan_mode action order
- `c65e8da` Update mode_handlers snapshot to canonical exit_plan_mode action order

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

public API と handler contract の変更はありません。C#、Go、Node.js、Python、Rust の assertion と replay snapshot 内の action 配列だけを、runtime が返す canonical order に統一しています。

**既存利用者への影響**

SDK 利用者の移行は不要です。action 配列の順序を固定値として検証する独自 test がある場合のみ、canonical order に expectation を更新してください。

### [#2013](https://github.com/github/copilot-sdk/pull/2013) — Harden replay-proxy "Available tools" normalization against built-in tool set changes

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +147 / -30
- マージ日時 (UTC): `2026-07-17 01:23:17`

**変更概要**

runtime の built-in tool 追加により、存在しない tool の error message に含まれる「利用可能な tool 一覧」が変わるたび replay snapshot が不一致になる問題を修正しました。live request と保存済み snapshot の両方で一覧全体を `${available_tools}` に正規化し、tool set や platform 差異から test を切り離しています。これにより canary が retry を続けて45分 timeout する事象を防ぎます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `test/harness/replayingCapiProxy.test.ts` | 120 | 0 |
| `test/harness/replayingCapiProxy.ts` | 27 | 30 |

</details>

<details><summary>コミット (1 件)</summary>

- `e51149e` Collapse built-in tool list in replay-proxy snapshot matching

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は TypeScript 製 replay harness の内部 normalizer のみで、SDK の API 変化はありません。live 側の `normalizeAvailableToolNames` に加え、load 時に旧 snapshot を再正規化する `normalizeStoredToolMessages` を導入し、snapshot の再収録を不要にしました。

**既存利用者への影響**

SDK 利用者の移行は不要です。既存 snapshot は読み込み時に互換正規化されるため、test maintainer も再生成する必要はありません。

### [#2010](https://github.com/github/copilot-sdk/pull/2010) — Add .NET BYOK E2E coverage

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +2254 / -205
- マージ日時 (UTC): `2026-07-17 14:13:17`

**変更概要**

.NET SDK の E2E を CAPI だけでなく Anthropic Messages、OpenAI Responses、OpenAI Chat Completions の3種類の BYOK protocol へ拡張しました。protocol adapter が request を既存の canonical snapshot 形式へ正規化し、各 provider の JSON / SSE response を再構成します。同じ conceptual snapshot corpus を再利用しつつ、3つの Ubuntu CI leg を並列追加しています。

<details><summary>変更ファイル (44 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/dotnet-e2e.instructions.md` | 9 | 0 |
| `.github/workflows/dotnet-sdk-tests.yml` | 24 | 3 |
| `dotnet/test/AssemblyInfo.cs` | 1 | 1 |
| `dotnet/test/E2E/ByokBearerTokenProviderE2ETests.cs` | 1 | 0 |
| `dotnet/test/E2E/ClientE2ETests.cs` | 9 | 7 |
| `dotnet/test/E2E/ClientOptionsE2ETests.cs` | 16 | 13 |
| `dotnet/test/E2E/CopilotRequestCancelErrorE2ETests.cs` | 2 | 2 |
| `dotnet/test/E2E/CopilotRequestSessionIdE2ETests.cs` | 4 | 2 |
| `dotnet/test/E2E/CopilotRequestWebSocketE2ETests.cs` | 2 | 1 |
| `dotnet/test/E2E/GitHubTelemetryForwardingE2ETests.cs` | 4 | 1 |
| `dotnet/test/E2E/ModeEmptyE2ETests.cs` | 6 | 6 |
| `dotnet/test/E2E/ModeHandlersE2ETests.cs` | 3 | 2 |
| `dotnet/test/E2E/MultiClientCommandsElicitationE2ETests.cs` | 7 | 7 |
| `dotnet/test/E2E/MultiClientE2ETests.cs` | 11 | 11 |
| `dotnet/test/E2E/MultiProviderRegistryE2ETests.cs` | 1 | 0 |
| _... 他 29 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `09d4896` Add .NET BYOK E2E coverage
- `551fa02` Normalize Anthropic adjacent user turns
- `97a7c05` Document potential BYOK E2E gaps
- `6b6c00e` Restore workflow path quoting
- `25645be` Preserve the .NET test matrix
- `581fc1d` Clarify replay harness test leg
- `34b6a60` Use existing replay harness test coverage
- `818f289` Simplify BYOK replay harness
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 SDK の public API 変更ではなく、test harness に `E2ETestBackend` と Anthropic / Responses adapter を追加したものです。backend ごとに protocol descriptor を一度選び、routing、canonical matching、error、JSON / SSE delivery を共通化しました。BYOK replay は read-only、CAPI は引き続き snapshot capture の唯一の経路です。

**既存利用者への影響**

既存利用者の移行は不要です。.NET E2E の追加・保守時は CAPI 固有 test を明示的に分類し、可能な test は全 provider で成立する前提に合わせる必要があります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2002 | [changelog] Add changelog for v1.0.7 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2002> |
| #1981 | Add custom agent reasoning effort across SDKs | roji | <https://github.com/github/copilot-sdk/pull/1981> |
| #1947 | Bump tsx from 4.22.4 to 4.23.1 in /java/scripts/codegen in the java-codegen-deps group across 1 directory | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1947> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2038 | Use dependency groups for Python dev deps | open | brettcannon | <https://github.com/github/copilot-sdk/pull/2038> |
| PR | #2036 | Report authoritative cwd in recordContextChange E2E tests | open | ellismg | <https://github.com/github/copilot-sdk/pull/2036> |
| PR | #2035 | Update @github/copilot to 1.0.72 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2035> |
| PR | #2034 | Fix `ask_user` starving the Rust SDK per-session event loop | open | pallaviraiturkar0 | <https://github.com/github/copilot-sdk/pull/2034> |
| PR | #2032 | test(java): re-enable ModeHandlers exit_plan_mode E2E assertions | open | arimu1 | <https://github.com/github/copilot-sdk/pull/2032> |
| PR | #2019 | docs: fix EnableConfigDiscovery summary to accurately describe agent discovery behavior | open | smz202000 | <https://github.com/github/copilot-sdk/pull/2019> |
| PR | #2018 | Fix consistency review PR delta detection | open | roji | <https://github.com/github/copilot-sdk/pull/2018> |
| PR | #2017 | Bump com.fasterxml.jackson.core:jackson-databind from 2.22.0 to 2.22.1 in /java | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2017> |
| PR | #2016 | fix(dotnet): recover from dropped session idle events | open | hydraxman | <https://github.com/github/copilot-sdk/pull/2016> |
| PR | #2015 | Rust: Add Scoped Main-Turn Interruption | open | SlowGreek | <https://github.com/github/copilot-sdk/pull/2015> |
| PR | #2031 | Update @github/copilot to 1.0.72-1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2031> |
| PR | #2024 | Update @github/copilot to 1.0.72-0 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2024> |
| PR | #2014 | SDK: Add scoped main-turn interruption | closed | SlowGreek | <https://github.com/github/copilot-sdk/pull/2014> |
| PR | #2009 | Add Agent Factories Authoring Surface | closed | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2009> |
| PR | #1846 | Forward selfFetchManagedSettings in session.create | closed | joshspicer | <https://github.com/github/copilot-sdk/pull/1846> |
| Issue | #2037 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2037> |
| Issue | #2030 | New issue | open | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2030> |
| Issue | #2028 | New issueCplt | open | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2028> |
| Issue | #2027 | Rust: public per-session API to add / replace / remove client tools on a live `Session` | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/2027> |
| Issue | #2026 | Need Copilot Pro to Work with CLI | closed | RespawnedCode22 | <https://github.com/github/copilot-sdk/issues/2026> |
| Issue | #2022 | UI/UX Improvement: Maintain scroll position when navigating back to repository search results
 | closed | andykale-ak | <https://github.com/github/copilot-sdk/issues/2022> |
| Issue | #2021 | I want a code for banning. | open | aabomouawya-cmd | <https://github.com/github/copilot-sdk/issues/2021> |
| Issue | #2020 | I want a code for banning | open | aabomouawya-cmd | <https://github.com/github/copilot-sdk/issues/2020> |
| Issue | #1121 | [aw] Release Changelog Generator failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1121> |
| Issue | #1058 | [aw] Issue Classification Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1058> |
| Issue | #828 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/828> |
| Issue | #282 | [agentics] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/282> |
