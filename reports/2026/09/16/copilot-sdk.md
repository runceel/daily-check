# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-15 00:08:57 〜 2026-09-16 01:35:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 14 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | stephentoub, github-actions[bot], jpbufe3, MackinnonBuck, ellismg, SandraAhlgrimm |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点
対象期間は機能改善、セキュリティ強化、互換性確認に関する変更が中心でした。重要変更は各 PR の詳細と既存利用者への影響を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2512](https://github.com/github/copilot-sdk/pull/2512) — Add Rust SDK model allowlist support

- 作者: jpbufe3 / 状態: MERGED
- ラベル: —
- 変更行数: +403 / -6
- マージ日時 (UTC): `2026-09-16 01:09:45`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/src/test/java/com/github/copilot/generated/rpc/GeneratedRpcApiCoverageTest.java` | 58 | 2 |
| `java/sdk/src/test/java/com/github/copilot/generated/rpc/GeneratedRpcRecordsCoverageTest.java` | 74 | 0 |
| `rust/src/types.rs` | 82 | 0 |
| `rust/src/wire.rs` | 4 | 0 |
| `rust/tests/api_types_test.rs` | 40 | 3 |
| `rust/tests/e2e/session.rs` | 67 | 0 |
| `rust/tests/session_test.rs` | 78 | 1 |

</details>

<details><summary>コミット (10 件)</summary>

- `0ae1065` Add Rust model allowlist support
- `494c1ef` Merge main and document model allowlist constraints
- `103a7cb` Keep Rust allowlist RPC in codegen
- `0a51b31` Merge latest main into model allowlist branch
- `55da834` Merge latest main into draft allowlist branch
- `23c4e3f` Generate SDK model allowlists from the released runtime contract
- `e0eabe1` Merge main into model allowlist support
- `8e7e91a` Merge main's CLI 1.0.84-6 adoption into model allowlist branch
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#2614](https://github.com/github/copilot-sdk/pull/2614) — Publish .NET SDK packages to the internal feed

- 作者: MackinnonBuck / 状態: MERGED
- ラベル: —
- 変更行数: +53 / -0
- マージ日時 (UTC): `2026-09-15 22:20:50`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/publish.yml` | 53 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `365269f` Publish .NET SDK to the internal feed

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#2659](https://github.com/github/copilot-sdk/pull/2659) — Rust: Isolate hostless runtime cache

- 作者: ellismg / 状態: MERGED
- ラベル: —
- 変更行数: +119 / -75
- マージ日時 (UTC): `2026-09-15 20:06:36`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/README.md` | 13 | 9 |
| `rust/build/in_process.rs` | 4 | 37 |
| `rust/src/cache_paths.rs` | 93 | 0 |
| `rust/src/lib.rs` | 2 | 0 |
| `rust/src/resolve.rs` | 6 | 28 |
| `rust/tests/cli_resolution_test.rs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `57ff609` Isolate hostless runtime cache

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#2661](https://github.com/github/copilot-sdk/pull/2661) — Stabilize C# rewind E2E initialization

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +12 / -0
- マージ日時 (UTC): `2026-09-15 02:58:11`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/RewindE2ETests.cs` | 12 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `e7e7843` Stabilize C# rewind E2E initialization

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#2662](https://github.com/github/copilot-sdk/pull/2662) — Update Copilot CLI to 1.0.84-8

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +1387 / -69
- マージ日時 (UTC): `2026-09-15 02:57:44`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (31 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 174 | 10 |
| `dotnet/src/Generated/SessionEvents.cs` | 17 | 0 |
| `go/rpc/zrpc.go` | 196 | 9 |
| `go/rpc/zsession_events.go` | 10 | 0 |
| `go/zsession_events.go` | 1 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/ToolExecutionCompleteEvent.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/ToolExecutionCompleteShellExecution.java` | 27 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/AdaptiveThinkingSupport.java` | 3 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/ModelCapabilitiesOverrideSupports.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/ModelCapabilitiesSupports.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/PermissionModeSource.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SessionShutdownParams.java` | 3 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SessionWorkspacesApi.java` | 64 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SessionWorkspacesCreateDirectoryParams.java` | 34 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SessionWorkspacesCreateFileParams.java` | 1 | 1 |
| _... 他 16 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `0498b46` Update Copilot CLI to 1.0.84-8
- `fca06d7` Fix Rust shutdown test after CLI schema update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#2603](https://github.com/github/copilot-sdk/pull/2603) — [Java] Replace maven-release-plugin with CI-friendly versions

- 作者: SandraAhlgrimm / 状態: MERGED
- ラベル: —
- 変更行数: +707 / -565
- マージ日時 (UTC): `2026-09-15 02:28:54`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 122 | 344 |
| `.github/workflows/java-publish-snapshot.yml` | 1 | 1 |
| `.github/workflows/java-sdk-tests.yml` | 22 | 12 |
| `.github/workflows/java-smoke-test.yml` | 2 | 2 |
| `.github/workflows/publish.yml` | 72 | 2 |
| `.github/workflows/required-checks.yml` | 1 | 1 |
| `docs/developer-docs/secrets.md` | 2 | 5 |
| `java/README.md` | 26 | 0 |
| `java/copilot-native/pom.xml` | 1 | 25 |
| `java/copilot-native/scripts/validate-local-publication.mjs` | 54 | 12 |
| `java/copilot-native/scripts/validate-native-artifact.test.mjs` | 156 | 154 |
| `java/pom.xml` | 12 | 6 |
| `java/scripts/resolve-release-source.mjs` | 79 | 0 |
| `java/scripts/resolve-release-source.test.mjs` | 156 | 0 |
| `java/sdk/pom.xml` | 1 | 1 |

</details>

<details><summary>コミット (7 件)</summary>

- `223d7eb` Java: replace maven-release-plugin with CI-friendly versions
- `46a1cf0` [Java] Address release pipeline review feedback
- `d503567` [Java] Fix local publication and release cache isolation
- `8042f4f` [Java] Validate release sources against main history
- `c4ee18c` docs: update Java publishing secrets
- `71aa04c` Java: separate publication from test execution
- `9f486dc` Java: make release tagging retryable

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2678 | perf(rust): speed up bundled gzip decompression with zlib-rs | open | mohamedmansour | <https://github.com/github/copilot-sdk/pull/2678> |
| PR | #2676 | perf(rust): bound bundled runtime installation memory | open | mohamedmansour | <https://github.com/github/copilot-sdk/pull/2676> |
| PR | #2686 | Update Copilot CLI to 1.0.84-9 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2686> |
| PR | #2660 | rust: forward cached models during session creation | open | Chuxel | <https://github.com/github/copilot-sdk/pull/2660> |
| PR | #2670 | Preserve image replay compatibility across CLI image limits | open | stephentoub | <https://github.com/github/copilot-sdk/pull/2670> |
| PR | #2669 | Complete Fast Auto-tier support across SDKs | open | andyfeller | <https://github.com/github/copilot-sdk/pull/2669> |
| PR | #2672 | .NET: add experimental session-scoped skill providers | open | adirh3 | <https://github.com/github/copilot-sdk/pull/2672> |
| PR | #2674 | fix: acquire _sessions_lock in TCP notification handler | open | ArshVermaGit | <https://github.com/github/copilot-sdk/pull/2674> |
| PR | #2671 | Fix runtime triage issue payload construction | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2671> |
| PR | #2663 | Harden Rust CLI download retries | open | gimenete | <https://github.com/github/copilot-sdk/pull/2663> |
| PR | #2664 | Preserve structured JSON-RPC error data | open | ellismg | <https://github.com/github/copilot-sdk/pull/2664> |
| PR | #2513 | Add Rust model allowlist support on pinned SDK base | closed | jpbufe3 | <https://github.com/github/copilot-sdk/pull/2513> |
| PR | #2623 | Fix replay race in Python persisted-session RPC test | closed | roji | <https://github.com/github/copilot-sdk/pull/2623> |
| Issue | #2667 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2667> |
| Issue | #2668 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2668> |
| Issue | #2685 | Feature Request: preserve structured entities in prompts and responses | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2685> |
| Issue | #2684 | Feature Request: discoverable and configurable execution environment capacity | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2684> |
| Issue | #2683 | Feature Request: user-delegated authentication for MCP servers and external resources | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2683> |
| Issue | #2682 | Feature Request: support fetching content from authenticated URLs supplied in a prompt | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2682> |
| Issue | #2681 | Feature Request: allow the host application to supply files and documents as session context | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2681> |
| Issue | #2680 | Feature Request: support repositories hosted on external Git providers (for example Azure DevOps Repos) | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2680> |
| Issue | #2679 | Feature Request: support multiple repositories in a single session | open | gagarwal | <https://github.com/github/copilot-sdk/issues/2679> |
| Issue | #2677 | Rust bundled runtime installation spends avoidable CPU time decompressing gzip archives | open | mohamedmansour | <https://github.com/github/copilot-sdk/issues/2677> |
| Issue | #2675 | Rust bundled runtime installation retains large native-image buffers on cold and warm startup | open | mohamedmansour | <https://github.com/github/copilot-sdk/issues/2675> |
| Issue | #2673 | _connect_via_tcp notification handler reads self._sessions without _sessions_lock | open | ArshVermaGit | <https://github.com/github/copilot-sdk/issues/2673> |
| Issue | #2666 | [aw] SDK Runtime Triage reported incomplete result | open | patniko | <https://github.com/github/copilot-sdk/issues/2666> |
| Issue | #2665 | Extension command.execute can be accepted but never delivered, hanging slash-command invocation | open | Arithmomaniac | <https://github.com/github/copilot-sdk/issues/2665> |
| Issue | #2588 | Support full project URLs in ProviderConfig when type is azure | closed | ankitbko | <https://github.com/github/copilot-sdk/issues/2588> |
| Issue | #2579 | [Java] Cease using `maven-release-plugin` due to its opinionated mutations of git history | closed | edburns | <https://github.com/github/copilot-sdk/issues/2579> |



