# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-08 06:31:54 〜 2026-07-10 00:28:22 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 8 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | agoncal, github-actions[bot], sunbrye, SteveSandersonMS, Copilot, idryzhov |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1954](https://github.com/github/copilot-sdk/pull/1954) — Update @github/copilot to 1.0.70-0

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +2036 / -540
- マージ日時 (UTC): `2026-07-09 14:24:56`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (37 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 365 | 235 |
| `dotnet/src/Generated/SessionEvents.cs` | 120 | 0 |
| `go/rpc/zrpc.go` | 208 | 60 |
| `go/rpc/zrpc_encoding.go` | 71 | 0 |
| `go/rpc/zsession_encoding.go` | 6 | 0 |
| `go/rpc/zsession_events.go` | 79 | 40 |
| `go/zsession_events.go` | 6 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantMessageEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/AutoModeResolvedReasoningBucket.java` | 37 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionAutoModeResolvedEvent.java` | 53 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/CommandsListResult.java` | 31 | 0 |
| _... 他 22 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `124aadb` Update @github/copilot to 1.0.70-0
- `6a68cda` Fix Java test for new citations field on AssistantMessageEventData

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1953](https://github.com/github/copilot-sdk/pull/1953) — Add in-process (FFI) transport for the Node.js SDK

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +1329 / -379
- マージ日時 (UTC): `2026-07-09 22:35:43`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (31 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/nodejs-sdk-tests.yml` | 7 | 1 |
| `dotnet/src/FfiRuntimeHost.cs` | 3 | 0 |
| `nodejs/package-lock.json` | 251 | 0 |
| `nodejs/package.json` | 1 | 0 |
| `nodejs/src/client.ts` | 195 | 49 |
| `nodejs/src/ffiRuntimeHost.ts` | 338 | 0 |
| `nodejs/src/index.ts` | 1 | 0 |
| `nodejs/src/types.ts` | 33 | 0 |
| `nodejs/test/client.test.ts` | 116 | 105 |
| `nodejs/test/e2e/client.e2e.test.ts` | 20 | 14 |
| `nodejs/test/e2e/client_api.e2e.test.ts` | 1 | 0 |
| `nodejs/test/e2e/client_options.e2e.test.ts` | 7 | 7 |
| `nodejs/test/e2e/copilot_request_cancel_error.e2e.test.ts` | 29 | 19 |
| `nodejs/test/e2e/harness/sdkTestContext.ts` | 113 | 8 |
| `nodejs/test/e2e/inprocess_ffi.e2e.test.ts` | 26 | 0 |
| _... 他 16 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `f359df7` Add in-process (FFI) transport for the Node.js SDK
- `7982b26` Address review: run checkpoint test on all transports; drop .NET refe…
- `51a204f` Revalidate FFI host workarounds against fixed runtime; drop the ones …
- `0296b1b` Fix e2e auth so tests run locally without an HMAC key
- `f642bd6` Use graceful stop in session.e2e teardown to avoid Windows worker lock
- `4f8f8cb` Abort in-flight session turns before shutdown to release session.db h…
- `5ccfc9f` fix: scope teardown abort to owned runtimes; gate inproc-only e2e tests
- `d2c1f6c` test: use graceful stop() instead of forceStop() in Node test teardowns
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1952](https://github.com/github/copilot-sdk/pull/1952) — GPT-4.1 is not available anymore

- 作者: agoncal / 状態: MERGED
- ラベル: —
- 変更行数: +118 / -118
- マージ日時 (UTC): `2026-07-09 14:20:56`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/auth/byok.md` | 2 | 2 |
| `docs/features/custom-agents.md` | 7 | 7 |
| `docs/features/image-input.md` | 12 | 12 |
| `docs/features/skills.md` | 5 | 5 |
| `docs/features/steering-and-queueing.md` | 12 | 12 |
| `docs/features/streaming-events.md` | 2 | 2 |
| `docs/getting-started.md` | 20 | 20 |
| `docs/integrations/microsoft-agent-framework.md` | 12 | 12 |
| `docs/setup/backend-services.md` | 11 | 11 |
| `docs/setup/bundled-cli.md` | 8 | 8 |
| `docs/setup/github-oauth.md` | 7 | 7 |
| `docs/setup/local-cli.md` | 6 | 6 |
| `docs/setup/multi-tenancy.md` | 10 | 10 |
| `docs/setup/scaling.md` | 4 | 4 |

</details>

<details><summary>コミット (3 件)</summary>

- `75dd675` GPT-4.1 is not available anymore
- `8525cd6` Updating the model to all the other docs
- `88dc1c3` Merge branch 'main' into agoncal/update_model_getting_started

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1951](https://github.com/github/copilot-sdk/pull/1951) — Adding Intellij IDEA directories to the .gitignore

- 作者: agoncal / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -0
- マージ日時 (UTC): `2026-07-09 08:27:48`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitignore` | 3 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `8a3e08e` Adding Intellij IDEA directories to the .gitignore

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1941](https://github.com/github/copilot-sdk/pull/1941) — Update @github/copilot to 1.0.69

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +162 / -117
- マージ日時 (UTC): `2026-07-08 15:02:24`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 9 | 1 |
| `go/rpc/zrpc.go` | 7 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `nodejs/package-lock.json` | 36 | 36 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `nodejs/src/generated/rpc.ts` | 4 | 0 |
| `nodejs/test/e2e/pending_work_resume.e2e.test.ts` | 17 | 2 |
| `python/copilot/generated/rpc.py` | 9 | 1 |
| `rust/src/generated/api_types.rs` | 3 | 0 |
| `test/harness/package-lock.json` | 36 | 36 |
| `test/harness/package.json` | 1 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `8add542` Update @github/copilot to 1.0.69
- `a21926a` Fix pending permission resume test
- `665203c` Wait for pending permission hydration
- `6193809` Use hydrated pending permission id

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1938](https://github.com/github/copilot-sdk/pull/1938) — Unify publish.yml to include Java via workflow_call

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +51 / -5
- マージ日時 (UTC): `2026-07-08 16:50:03`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 31 | 3 |
| `.github/workflows/publish.yml` | 20 | 2 |

</details>

<details><summary>コミット (5 件)</summary>

- `e44e3e9` Initial plan
- `b543a06` feat: unify publish.yml to include Java via workflow_call
- `589bb12` Fix review comments: declare workflow_call secrets, gate Java publish…
- `c1f7b14` Tighten version regex: use unified alternation to prevent ambiguous s…
- `d11e33c` Merge branch 'main' into copilot/implement-plan-unify-publish-yml

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1931 | Make tool schema & mcp_servers serialization deterministic (HashMap -> IndexMap) | stephentoub | <https://github.com/github/copilot-sdk/pull/1931> |
| #1925 | Forward enableManagedSettings in session.create (all SDKs) | devm33 | <https://github.com/github/copilot-sdk/pull/1925> |
| #1862 | Surface Pydantic ValidationError to LLM in tool arg validation | idryzhov | <https://github.com/github/copilot-sdk/pull/1862> |
| #1847 | Add session-level canvasProvider field to Rust, Node, .NET, Go, and Python SDKs | jmoseley | <https://github.com/github/copilot-sdk/pull/1847> |
| #1800 | Fix docs formatting for docs.github.com publishing (model name, lists, table cell) | sunbrye | <https://github.com/github/copilot-sdk/pull/1800> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1950 | Add SDK canary pipeline | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1950> |
| PR | #1949 | Propagate request handler agent metadata | open | stephentoub | <https://github.com/github/copilot-sdk/pull/1949> |
| PR | #1948 | [changelog] Add changelog for java/v1.0.6 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1948> |
| PR | #1947 | Bump tsx from 4.22.4 to 4.23.0 in /java/scripts/codegen in the java-codegen-deps group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1947> |
| PR | #1945 | Add host-mediated GitHub API requests for extensions | open | jchuerva | <https://github.com/github/copilot-sdk/pull/1945> |
| PR | #1961 | fix(dotnet): abort in-flight turns before disposing sessions on in-process shutdown | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1961> |
| PR | #1943 | Bump the java-codegen-deps group in /java/scripts/codegen with 2 updates | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1943> |
| PR | #1927 | SDK: add sessionless commands.list API to retrieve built-in slash commands | closed | DonJayamanne | <https://github.com/github/copilot-sdk/pull/1927> |
| Issue | #1960 | [aw] No-Op Runs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1960> |
| Issue | #1959 | [.NET 1.0.6][FFI][Windows] In-process host loads global user-profile package and can hit ABI mismatch | open | mit2nil | <https://github.com/github/copilot-sdk/issues/1959> |
| Issue | #1958 | [.NET 1.0.6][FFI] CreateSessionAsync can hang after successful startup in Linux/Kubernetes | open | mit2nil | <https://github.com/github/copilot-sdk/issues/1958> |
| Issue | #1957 | [Question] Difference between SDK and CLI behavior. | open | mrhartvig | <https://github.com/github/copilot-sdk/issues/1957> |
| Issue | #1956 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1956> |
| Issue | #1955 | [aw] Java Handwritten Code Adaptation After CLI Upgrade failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1955> |
| Issue | #1946 | What 's the new usage of get_quota? | open | zeerd | <https://github.com/github/copilot-sdk/issues/1946> |
| Issue | #1944 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1944> |
| Issue | #1875 | Seek review of implementation | closed | edburns | <https://github.com/github/copilot-sdk/issues/1875> |
| Issue | #1874 | Implement plan | closed | edburns | <https://github.com/github/copilot-sdk/issues/1874> |
