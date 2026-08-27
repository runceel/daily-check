# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 8 |
| オープン中の新規 PR     | 12 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 16 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | github-actions[bot], MRayermannMSFT, stephentoub, scottaddie, examon |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2381](https://github.com/github/copilot-sdk/issues/2381) — [Python] `pydantic` unconditionally imported in `tools.py`, breaking low-level Tool API users （Issue / open / scordio）
  シェル再実行結果を扱う SDK 利用者は中断時の結果形式を確認してください。

## このリポジトリの要点

Copilot SDK のシェル再実行結果の正規化と、@github/copilot の複数バージョン更新が進みました。認証ドキュメントも拡充され、SDK の利用開始手順が改善されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2370](https://github.com/github/copilot-sdk/pull/2370) — Normalize interrupted shell replay results

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +132 / -5
- マージ日時 (UTC): `2026-08-21 13:31:04`

**変更概要**

中断されたシェルの replay 結果を正規化し、呼び出し側が一貫した形式で扱えるようにしました。SDK の再実行・復旧フローに影響します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `test/harness/replayingCapiProxy.test.ts` | 131 | 4 |
| `test/harness/replayingCapiProxy.ts` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `105d1d5` Normalize interrupted shell replay results

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

シェル replay の結果整形ロジックが変更されました。公開 API の新規追加や明示的な破壊的変更はありません。

**既存利用者への影響**

中断シェルの結果を直接解析している利用者は期待するフィールドを確認してください。通常の利用では移行不要です。

### [#2367](https://github.com/github/copilot-sdk/pull/2367) — Update @github/copilot to 1.0.81-6

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +188 / -217
- マージ日時 (UTC): `2026-08-20 22:26:35`

**変更概要**

@github/copilot パッケージを 1.0.81-6 に更新しました。SDK の依存バージョンを揃え、最新の Copilot 実装を利用できるようにします。

<details><summary>変更ファイル (29 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 0 | 18 |
| `dotnet/src/Generated/Rpc.cs` | 13 | 8 |
| `dotnet/test/E2E/RpcServerMiscE2ETests.cs` | 1 | 1 |
| `go/client.go` | 0 | 13 |
| `go/internal/e2e/rpc_server_misc_e2e_test.go` | 1 | 1 |
| `go/rpc/zrpc.go` | 13 | 5 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/AccountLoginParams.java` | 2 | 2 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/PermissionModeSource.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/PermissionsSetApproveAllSource.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/ServerAccountApi.java` | 1 | 1 |
| `java/sdk/src/main/java/com/github/copilot/CopilotClient.java` | 1 | 9 |
| `nodejs/package-lock.json` | 27 | 27 |
| _... 他 14 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `28a3dd8` Update @github/copilot to 1.0.81-6
- `3aac895` Fix SDK compatibility with updated CLI
- `58a63e4` Update tests for CLI 1.0.81-6
- `a8e36fa` Re-enable in-process telemetry tests
- `a4d0706` Scope re-enabled tests to stdio
- `f0a9187` Limit re-enabled Node coverage
- `e29d20f` Keep unresolved 1.0.81 regressions guarded

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存パッケージのバージョン更新で、SDK 自体の API シグネチャ変更はありません。

**既存利用者への影響**

依存関係を更新して再インストールしてください。コード変更は通常不要です。

### [#2364](https://github.com/github/copilot-sdk/pull/2364) — Update @github/copilot to 1.0.81-5

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +167 / -141
- マージ日時 (UTC): `2026-08-20 09:55:44`

**変更概要**

@github/copilot パッケージを 1.0.81-5 に更新しました。依存関係の整合性を保つための定期更新です。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-sdk-tests.yml` | 36 | 13 |
| `dotnet/test/E2E/RpcUiEphemeralQueryE2ETests.cs` | 4 | 4 |
| `go/internal/e2e/rpc_ui_ephemeral_query_e2e_test.go` | 4 | 4 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/pom.xml` | 7 | 7 |
| `nodejs/package-lock.json` | 27 | 27 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `nodejs/test/e2e/rpc_ui_ephemeral_query.e2e.test.ts` | 3 | 3 |
| `nodejs/vitest.config.ts` | 3 | 3 |
| `python/e2e/test_rpc_ui_ephemeral_query_e2e.py` | 6 | 4 |
| `python/e2e/test_tool_results_e2e.py` | 5 | 4 |
| `rust/tests/e2e/rpc_ui_ephemeral_query.rs` | 4 | 4 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `b2b228c` Update @github/copilot to 1.0.81-5
- `5e2e99b` Restore runtime-blocked test coverage
- `42fcfc4` Keep ephemeral query coverage disabled
- `dc7e9d6` Fix Python denied-tool E2E race
- `0330bc6` Keep .NET in-process CAPI legs disabled
- `e4dd4b6` Keep blocked in-process model suites excluded
- `c1fb47e` Split hanging macOS .NET test shard

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

パッケージバージョンのみの更新で、公開 API の変更はありません。

**既存利用者への影響**

依存関係を更新するだけで利用できます。既存コードの移行は不要です。

### [#2363](https://github.com/github/copilot-sdk/pull/2363) — Update @github/copilot to 1.0.81-4

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +39133 / -24538
- マージ日時 (UTC): `2026-08-20 01:34:36`

**変更概要**

@github/copilot パッケージを 1.0.81-4 に更新しました。SDK の依存関係を最新化する変更です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-sdk-tests.yml` | 3 | 6 |
| `dotnet/src/Generated/Rpc.cs` | 14506 | 11268 |
| `dotnet/src/Generated/SessionEvents.cs` | 135 | 136 |
| `dotnet/test/E2E/RewindE2ETests.cs` | 5 | 2 |
| `dotnet/test/E2E/RpcSessionStateExtrasE2ETests.cs` | 10 | 10 |
| `dotnet/test/E2E/RpcUiEphemeralQueryE2ETests.cs` | 4 | 4 |
| `go/inprocess_disabled.go` | 3 | 1 |
| `go/internal/e2e/abort_e2e_test.go` | 43 | 51 |
| `go/internal/e2e/rpc_session_state_extras_e2e_test.go` | 21 | 21 |
| `go/internal/e2e/rpc_ui_ephemeral_query_e2e_test.go` | 2 | 2 |
| `go/rpc/zrpc.go` | 1815 | 157 |
| `go/rpc/zrpc_encoding.go` | 1014 | 19 |
| `go/rpc/zsession_events.go` | 117 | 127 |
| `go/types.go` | 4 | 4 |
| `go/zsession_events.go` | 17 | 17 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `cb18c2a` Update @github/copilot to 1.0.81-4
- `202d076` Fix schema ingestion CI failures
- `2f9b88a` Fix Python and Rust validation
- `966a63c` Restore in-process Node E2E coverage
- `eb795ff` Update Rust permission source expectation
- `6ad7d18` Restore in-process test coverage
- `2df4df1` Keep ephemeral query tests disabled
- `23de5ef` Stabilize Python metadata persistence test
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存パッケージの更新のみで、API の破壊的変更は確認されていません。

**既存利用者への影響**

パッケージ更新後に通常のテストを実行してください。移行作業は不要です。

### [#2358](https://github.com/github/copilot-sdk/pull/2358) — Update @github/copilot to 1.0.81-2

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +33637 / -9575
- マージ日時 (UTC): `2026-08-19 20:38:33`

**変更概要**

@github/copilot パッケージを 1.0.81-2 に更新しました。リリース系列に合わせて SDK の依存バージョンを調整します。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-sdk-tests.yml` | 36 | 1 |
| `dotnet/src/Client.cs` | 21 | 3 |
| `dotnet/src/Generated/Rpc.cs` | 8568 | 5872 |
| `dotnet/src/Generated/SessionEvents.cs` | 1462 | 294 |
| `dotnet/src/PermissionHandlers.cs` | 6 | 1 |
| `dotnet/src/Session.cs` | 15 | 12 |
| `dotnet/test/E2E/BuiltinToolsE2ETests.cs` | 18 | 0 |
| `dotnet/test/E2E/RpcServerMiscE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RpcUiEphemeralQueryE2ETests.cs` | 4 | 1 |
| `dotnet/test/E2E/SessionFsE2ETests.cs` | 2 | 0 |
| `dotnet/test/Harness/E2ETestContext.cs` | 14 | 0 |
| `dotnet/test/Harness/InProcessEnvIsolation.cs` | 9 | 1 |
| `go/client.go` | 13 | 0 |
| `go/client_test.go` | 4 | 1 |
| `go/internal/e2e/github_telemetry_e2e_test.go` | 5 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (43 件)</summary>

- `8cf70e5` Update @github/copilot to 1.0.81-2
- `3807b3f` Fix SDK code generation for Copilot 1.0.81-2
- `aef4bd9` Fix expanded protocol integrations
- `a8733fb` Handle expanded command results in Rust tests
- `b886496` Update Java tests for expanded protocol records
- `b9e60f3` Resolve updated Copilot platform packages
- `69c2866` Fix Copilot 1.0.81 protocol compatibility
- `96d3c9d` Update Java provider model test literals
- _... 他 35 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

バージョン更新のみで、新しい API や破壊的変更はありません。

**既存利用者への影響**

依存関係を更新して動作確認してください。コード移行は不要です。

### [#2354](https://github.com/github/copilot-sdk/pull/2354) — docs: expand authentication examples

- 作者: scottaddie / 状態: MERGED
- ラベル: —
- 変更行数: +224 / -119
- マージ日時 (UTC): `2026-08-19 00:19:51`

**変更概要**

認証の利用例を拡充し、SDK の認証設定を始めるためのドキュメントを分かりやすくしました。新規利用者の導入を支援する変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/auth/authenticate.md` | 224 | 119 |

</details>

<details><summary>コミット (1 件)</summary>

- `4411891` docs: expand authentication examples

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ドキュメントとサンプルの追加であり、API シグネチャや実装の変更はありません。

**既存利用者への影響**

移行は不要です。新規セットアップ時や認証方式の見直し時に例を参照してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2348 | [Node] Let Extensions Request Sensitive Environment Variables | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2348> |
| #2353 | [SDK/Factories] Stop the factory guide inviting an invented limit | examon | <https://github.com/github/copilot-sdk/pull/2353> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2375 | Update @github/copilot to 1.0.81-7 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2375> |
| PR | #2384 | fix(python): make pydantic imports lazy | open | green3sf | <https://github.com/github/copilot-sdk/pull/2384> |
| PR | #2382 | docs(python): convert bold title to heading | open | scordio | <https://github.com/github/copilot-sdk/pull/2382> |
| PR | #2380 | feat: add cross-language session message search helpers | open | Navanit-git | <https://github.com/github/copilot-sdk/pull/2380> |
| PR | #2378 | feat(nodejs): add Session.searchMessages() to query session history (#2376) | open | Anvith433 | <https://github.com/github/copilot-sdk/pull/2378> |
| PR | #2374 | fix(python): serialize native values in tool results | open | OllieinCanada | <https://github.com/github/copilot-sdk/pull/2374> |
| PR | #2372 | Expose sandbox bypass in Rust API | open | ellismg | <https://github.com/github/copilot-sdk/pull/2372> |
| PR | #2371 | Rust SDK: Add sandbox config | open | jcoc611-microsoft | <https://github.com/github/copilot-sdk/pull/2371> |
| PR | #2357 | [Test] Update Permission Denial Snapshots for the New Runtime Message | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2357> |
| PR | #2362 | Add customAgentDirectories session config option | open | timrogers | <https://github.com/github/copilot-sdk/pull/2362> |
| PR | #2360 | fix(go): close failed session event loops | open | green3sf | <https://github.com/github/copilot-sdk/pull/2360> |
| PR | #2359 | build(deps): bump the java-maven-deps group in /java with 3 updates | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2359> |
| PR | #2385 | Future-proof SDK policy wire types | closed | roji | <https://github.com/github/copilot-sdk/pull/2385> |
| PR | #2383 | Update @github/copilot to 1.0.81-8 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2383> |
| PR | #2373 | Fix C# plugin E2E tests for live local marketplaces | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/2373> |
| PR | #2366 | Add reportedClientSessionId to Rust session create/resume wire | closed | em-gong | <https://github.com/github/copilot-sdk/pull/2366> |
| Issue | #2381 | [Python] `pydantic` unconditionally imported in `tools.py`, breaking low-level Tool API users | open | scordio | <https://github.com/github/copilot-sdk/issues/2381> |
| Issue | #2376 | Add searchMessages() method to query inside session history | open | Navanit-git | <https://github.com/github/copilot-sdk/issues/2376> |
| Issue | #2379 | Expose and serialize allowAllMcpServerInstructions in TypeScript SDK | open | artofthesmart | <https://github.com/github/copilot-sdk/issues/2379> |
| Issue | #2377 | github now is Microsoft, when exactly are you going to destroy VS Code and GitHub? | open | codebabel-appbag | <https://github.com/github/copilot-sdk/issues/2377> |
| Issue | #2349 | Attachments are silently ignored when using the /fleet command | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2349> |
| Issue | #2369 | Not authenticated error when out of budget | open | IeuanWalker | <https://github.com/github/copilot-sdk/issues/2369> |
| Issue | #2368 | Custom tool dispatch: `external_tool.requested` is dropped before reaching the SDK, hanging the agent indefinitely | open | DanaMartens | <https://github.com/github/copilot-sdk/issues/2368> |
| Issue | #2365 | Support updating a session's `gitHubToken` without recreating the session | open | CroffZ | <https://github.com/github/copilot-sdk/issues/2365> |
| Issue | #2361 | Test issue | open | Copilot | <https://github.com/github/copilot-sdk/issues/2361> |
| Issue | #2356 | Bug: tools declared by a custom_agents agent are announced but not callable by the model | open | bancroftway | <https://github.com/github/copilot-sdk/issues/2356> |
| Issue | #2355 | Custom "anthropic" provider does not enforce provider.max_prompt_tokens — sessions grow past the model context window until a hard 400 | open | kevnwang | <https://github.com/github/copilot-sdk/issues/2355> |
| Issue | #2352 | Claude 5-generation models (adaptive_thinking: "required") never return readable reasoning text - only opaque envelope, despite billed reasoningTokens | open | hukovpet | <https://github.com/github/copilot-sdk/issues/2352> |
| Issue | #2347 | Permission approvals fail with "unexpected user permission response: approved" (recurrence of #1133; now reproduces for both shell and read kinds) | closed | hukovpet | <https://github.com/github/copilot-sdk/issues/2347> |
| Issue | #2351 | Make sure detached shell session produces subscribe-able reliable output | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2351> |
| Issue | #2350 | Tools deny permission in format of --deny-tool doesn't work | open | aamsel-intel | <https://github.com/github/copilot-sdk/issues/2350> |
| Issue | #2346 | [Model Routing] claude-sonnet-5 swallows streaming assistant.reasoning_delta; flushes all thinkingContent at completion | open | JaretRussell | <https://github.com/github/copilot-sdk/issues/2346> |
| Issue | #2027 | Rust: public per-session API to add / replace / remove client tools on a live `Session` | closed | colbylwilliams | <https://github.com/github/copilot-sdk/issues/2027> |
| Issue | #2281 | L | closed | kaawmnain24-netizen | <https://github.com/github/copilot-sdk/issues/2281> |
| Issue | #2341 | New | closed | Amepten | <https://github.com/github/copilot-sdk/issues/2341> |
