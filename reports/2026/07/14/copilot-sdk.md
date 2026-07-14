# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-10 00:28:22 〜 2026-07-14 01:26:38 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 6 |
| クローズ Issue          | 17 |
| 主要コントリビューター  | github-actions[bot], SteveSandersonMS, edburns, almaleksia, stephentoub, MackinnonBuck |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#1557](https://github.com/github/copilot-sdk/issues/1557) — Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models （Issue / open / mikhailmokhov）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1975](https://github.com/github/copilot-sdk/pull/1975) — python: add in-process (FFI) transport

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +1678 / -179
- マージ日時 (UTC): `2026-07-13 12:01:51`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-sdk-tests.yml` | 7 | 1 |
| `dotnet/src/Client.cs` | 11 | 0 |
| `dotnet/test/Harness/E2ETestContext.cs` | 21 | 1 |
| `dotnet/test/Harness/InProcessEnvIsolation.cs` | 18 | 0 |
| `nodejs/README.md` | 4 | 2 |
| `nodejs/src/client.ts` | 33 | 1 |
| `nodejs/src/index.ts` | 1 | 0 |
| `nodejs/src/types.ts` | 25 | 11 |
| `nodejs/test/client.test.ts` | 71 | 0 |
| `nodejs/test/e2e/harness/sdkTestContext.ts` | 52 | 17 |
| `nodejs/test/e2e/session.e2e.test.ts` | 3 | 4 |
| `nodejs/test/e2e/streaming_fidelity.e2e.test.ts` | 4 | 6 |
| `nodejs/test/e2e/telemetry.e2e.test.ts` | 89 | 91 |
| `python/README.md` | 58 | 3 |
| `python/copilot/__init__.py` | 2 | 0 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `b3bee0e` dotnet: reject per-client WorkingDirectory with in-process transport
- `1275871` python: add in-process (FFI) transport
- `e7a9879` node: add per-connection env + in-process env/telemetry guards
- `8d22c9d` Fix inprocess CI failures for .NET and Python E2E
- `ff3186f` Fix Node inprocess CI failures for secondary-client and telemetry E2E…
- `7b5d503` Apply prettier formatting to Node E2E harness changes
- `ea27bb6` Address PR review comments for Python in-process transport

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1968](https://github.com/github/copilot-sdk/pull/1968) — Update @github/copilot to 1.0.71-0

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +311 / -117
- マージ日時 (UTC): `2026-07-12 00:28:43`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 26 | 0 |
| `go/rpc/zrpc.go` | 20 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/ModelBilling.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/ModelBillingPromo.java` | 33 | 0 |
| `java/src/test/java/com/github/copilot/generated/rpc/GeneratedRpcRecordsCoverageTest.java` | 6 | 1 |
| `nodejs/package-lock.json` | 36 | 36 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `nodejs/src/generated/rpc.ts` | 26 | 0 |
| `python/copilot/generated/rpc.py` | 57 | 2 |
| `rust/src/generated/api_types.rs` | 27 | 0 |
| `test/harness/package-lock.json` | 36 | 36 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `a154626` Update @github/copilot to 1.0.71-0
- `2874854` Fix Java billing coverage test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1966](https://github.com/github/copilot-sdk/pull/1966) — [Java] Embed Rust-based Copilot CLI Runtime and cease requiring Node.js: Update ADR with decision after discussion

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +188 / -3
- マージ日時 (UTC): `2026-07-10 20:24:45`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/docs/adr/adr-007-native-bundling-strategy.md` | 188 | 3 |

</details>

<details><summary>コミット (5 件)</summary>

- `1c64f63` docs(java): add ADR-007 native runtime bundling strategy
- `073529c` Potential fix for pull request finding
- `47317c2` Update adr-007 to address decision to not use Panama
- `f6fc95a` Select Option 2 and Option 1
- `4738c5b` Remove before merge

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1964](https://github.com/github/copilot-sdk/pull/1964) — rust: use native-tls for the build-time CLI download

- 作者: Shivam60 / 状態: MERGED
- ラベル: —
- 変更行数: +14 / -24
- マージ日時 (UTC): `2026-07-11 01:00:59`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/Cargo.lock` | 2 | 23 |
| `rust/Cargo.toml` | 2 | 1 |
| `rust/build/in_process.rs` | 5 | 0 |
| `rust/build/out_of_process.rs` | 5 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `8b5b1e3` rust: use native-tls for the build-time CLI download

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1963](https://github.com/github/copilot-sdk/pull/1963) — Clean up Node session E2E test lifecycle

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +85 / -152
- マージ日時 (UTC): `2026-07-10 09:42:02`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/test/e2e/session.e2e.test.ts` | 85 | 124 |
| `test/snapshots/session/should_abort_a_session.yaml` | 0 | 28 |

</details>

<details><summary>コミット (1 件)</summary>

- `92447d0` Clean up Node session E2E lifecycle

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1962](https://github.com/github/copilot-sdk/pull/1962) — Update @github/copilot to 1.0.70

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +3019 / -186
- マージ日時 (UTC): `2026-07-10 05:05:28`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (45 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 353 | 10 |
| `dotnet/src/Generated/SessionEvents.cs` | 75 | 3 |
| `go/rpc/zrpc.go` | 266 | 11 |
| `go/rpc/zsession_encoding.go` | 18 | 0 |
| `go/rpc/zsession_events.go` | 34 | 0 |
| `go/zsession_events.go` | 6 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/McpPromptsListChangedEvent.java` | 41 | 0 |
| `java/src/generated/java/com/github/copilot/generated/McpResourcesListChangedEvent.java` | 41 | 0 |
| `java/src/generated/java/com/github/copilot/generated/McpToolsListChangedEvent.java` | 41 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionEvent.java` | 6 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/McpAppsResourceContent.java` | 3 | 3 |
| `java/src/generated/java/com/github/copilot/generated/rpc/McpResource.java` | 47 | 0 |
| _... 他 30 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `4bdd205` Update @github/copilot to 1.0.70
- `f8a81b6` Merge branch 'main' into update-copilot-1.0.70
- `391ae18` Fix generated C# leading underscore names

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1950 | Add SDK canary pipeline | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1950> |
| #1949 | Propagate request handler agent metadata | stephentoub | <https://github.com/github/copilot-sdk/pull/1949> |
| #1948 | [changelog] Add changelog for java/v1.0.6 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1948> |
| #1933 | Tool search configuration support | almaleksia | <https://github.com/github/copilot-sdk/pull/1933> |
| #1915 | Add in-process FFI transport for Rust SDK | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1915> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1976 | Add in-process (FFI) transport to the Go SDK | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1976> |
| PR | #1973 | rust: forward intercepted HTTP via hyper+native-tls to drop ring | open | Shivam60 | <https://github.com/github/copilot-sdk/pull/1973> |
| PR | #1967 | Add opt-in public npm publish target to SDK canary pipeline | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1967> |
| PR | #1969 | Pull Request | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/pull/1969> |
| PR | #1928 | Draft: use-after-free guards | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1928> |
| PR | #1719 | Add experimental-API enforcement tooling for TS, Python, Go, and Rust | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/1719> |
| Issue | #1977 | Create ignorance reduction plan | open | edburns | <https://github.com/github/copilot-sdk/issues/1977> |
| Issue | #1974 | Feature request: per-tool `eager_input_streaming` so `assistant.tool_call_delta` fires early for Anthropic models | open | chiz-ms | <https://github.com/github/copilot-sdk/issues/1974> |
| Issue | #1972 | DJ,MV,36..  YETUBE | closed | volwatermarcel0-lab | <https://github.com/github/copilot-sdk/issues/1972> |
| Issue | #1971 | Does onPostToolUse hook additionalContext get injected into sub-agent context? | open | victorlopezsalazar | <https://github.com/github/copilot-sdk/issues/1971> |
| Issue | #1970 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1970> |
| Issue | #1965 | Research question (spike): Is it possible to do Option 2 and Option 1 using only maven magic? | closed | edburns | <https://github.com/github/copilot-sdk/issues/1965> |
| Issue | #1960 | [aw] No-Op Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1960> |
| Issue | #1957 | [Question] Difference between SDK and CLI behavior. | closed | mrhartvig | <https://github.com/github/copilot-sdk/issues/1957> |
| Issue | #1956 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1956> |
| Issue | #1955 | [aw] Java Handwritten Code Adaptation After CLI Upgrade failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1955> |
| Issue | #1944 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1944> |
| Issue | #1924 | [Java] Collect feedback on adr-007 Java embeds Copilot CLI Rust runtime | closed | edburns | <https://github.com/github/copilot-sdk/issues/1924> |
| Issue | #1903 | bank 512 0239 | closed | satoshi0239 | <https://github.com/github/copilot-sdk/issues/1903> |
| Issue | #1867 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1867> |
| Issue | #1858 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1858> |
| Issue | #1834 | [aw] Detection Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1834> |
| Issue | #1830 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1830> |
| Issue | #1824 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1824> |
| Issue | #1756 | New issue | closed | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/1756> |
| Issue | #1355 | Is 1.1.0-beta4 a stable release? When will 1.0.0 be officially released? | closed | TYW-0203 | <https://github.com/github/copilot-sdk/issues/1355> |
