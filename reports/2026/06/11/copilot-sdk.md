# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-09 23:05:02 〜 2026-06-11 00:49:32 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 5 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | dependabot[bot], edburns, jmoseley, sunbrye, github-actions[bot] |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1623](https://github.com/github/copilot-sdk/pull/1623) — Java codegen: clean output directory before generating to prevent orphan accumulation

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +6 / -8492
- マージ日時 (UTC): `2026-06-10 16:31:47`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/scripts/codegen/java.ts` | 6 | 0 |
| `java/src/generated/java/com/github/copilot/generated/McpServerStatusChangedStatus.java` | 0 | 43 |
| `java/src/generated/java/com/github/copilot/generated/McpServersLoadedServerStatus.java` | 0 | 43 |
| `java/src/generated/java/com/github/copilot/generated/PermissionApproved.java` | 0 | 30 |
| `java/src/generated/java/com/github/copilot/generated/PermissionApprovedForLocation.java` | 0 | 44 |
| `java/src/generated/java/com/github/copilot/generated/PermissionApprovedForSession.java` | 0 | 37 |
| `java/src/generated/java/com/github/copilot/generated/PermissionCancelled.java` | 0 | 37 |
| `java/src/generated/java/com/github/copilot/generated/PermissionCompletedKind.java` | 0 | 47 |
| `java/src/generated/java/com/github/copilot/generated/PermissionCompletedResult.java` | 0 | 27 |
| `java/src/generated/java/com/github/copilot/generated/PermissionDeniedByContentExclusionPolicy.java` | 0 | 44 |
| `java/src/generated/java/com/github/copilot/generated/PermissionDeniedByPermissionRequestHook.java` | 0 | 44 |
| `java/src/generated/java/com/github/copilot/generated/PermissionDeniedByRules.java` | 0 | 38 |
| `java/src/generated/java/com/github/copilot/generated/PermissionDeniedInteractivelyByUser.java` | 0 | 44 |
| `java/src/generated/java/com/github/copilot/generated/PermissionDeniedNoApprovalRuleAndCouldNotRequestFromUser.java` | 0 | 30 |
| `java/src/generated/java/com/github/copilot/generated/PermissionPromptRequest.java` | 0 | 44 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `ac9b036` # Java codegen: clean output directory before generating to prevent o…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1614](https://github.com/github/copilot-sdk/pull/1614) — Bump the java-codegen-deps group in /java/scripts/codegen with 2 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `javascript`
- 変更行数: +113 / -135
- マージ日時 (UTC): `2026-06-10 17:33:24`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/scripts/codegen/package-lock.json` | 112 | 134 |
| `java/scripts/codegen/package.json` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `579e166` Bump the java-codegen-deps group in /java/scripts/codegen with 2 updates
- `b5b8fb1` Regenerate Java codegen output
- `b53fb51` Merge branch 'main' into dependabot/npm_and_yarn/java/scripts/codegen…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1613](https://github.com/github/copilot-sdk/pull/1613) — Bump the java-maven-deps group in /java with 3 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `java`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-06-10 17:17:56`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/pom.xml` | 3 | 3 |

</details>

<details><summary>コミット (2 件)</summary>

- `ea06a5b` Bump the java-maven-deps group in /java with 3 updates
- `8509635` Merge branch 'main' into dependabot/maven/java/java-maven-deps-26d4d0…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1612](https://github.com/github/copilot-sdk/pull/1612) — Update @github/copilot to 1.0.61

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +2196 / -1451
- マージ日時 (UTC): `2026-06-10 13:34:58`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (43 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 473 | 346 |
| `dotnet/src/Generated/SessionEvents.cs` | 33 | 2 |
| `dotnet/test/E2E/RpcMcpLifecycleE2ETests.cs` | 2 | 118 |
| `go/internal/e2e/rpc_mcp_lifecycle_e2e_test.go` | 0 | 120 |
| `go/rpc/zrpc.go` | 350 | 201 |
| `go/rpc/zsession_events.go` | 14 | 2 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/HookProgressEvent.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/SessionResumeEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionScheduleCreatedEvent.java` | 7 | 1 |
| `java/src/generated/java/com/github/copilot/generated/SessionShutdownEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/AgentsDiscoverParams.java` | 33 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/AgentsDiscoverResult.java` | 31 | 0 |
| _... 他 28 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `46f86cb` Update @github/copilot to 1.0.61
- `a98944a` Fix E2E CI for @github/copilot 1.0.61
- `372d1a5` Fix abort streaming E2E race in Node, Rust, and Python
- `76fac96` Delete stale Java generated files orphaned by InstructionsSources->In…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1606](https://github.com/github/copilot-sdk/pull/1606) — Add open-canvases snapshot tracking to the Java SDK

- 作者: jmoseley / 状態: MERGED
- ラベル: —
- 変更行数: +365 / -6
- マージ日時 (UTC): `2026-06-10 18:13:54`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/main/java/com/github/copilot/CopilotClient.java` | 2 | 0 |
| `java/src/main/java/com/github/copilot/CopilotSession.java` | 129 | 4 |
| `java/src/main/java/com/github/copilot/rpc/CreateSessionResponse.java` | 9 | 1 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionResponse.java` | 9 | 1 |
| `java/src/test/java/com/github/copilot/SessionCanvasSnapshotTest.java` | 216 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `c439188` Add open-canvases snapshot tracking to the Java SDK
- `6a39b6f` Address review: @since versioning for new API and strengthen snapshot…
- `d210a20` Merge branch 'main' into jmoseley/java-open-canvases-snapshot

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1236](https://github.com/github/copilot-sdk/pull/1236) — Add docs style instructions for copilot agents

- 作者: sunbrye / 状態: MERGED
- ラベル: —
- 変更行数: +163 / -0
- マージ日時 (UTC): `2026-06-10 18:24:38`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/copilot-instructions.md` | 1 | 0 |
| `.github/instructions/docs-style.instructions.md` | 162 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `5c032c6` Add docs style instructions for copilot agents
- `88a63f0` Potential fix for pull request finding
- `4ac0405` updates
- `ba870a7` Merge branch 'main' into sunbrye/docs-instructions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1626 | [changelog] Add changelog for java/v1.0.1 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1626> |
| PR | #1625 | [changelog] Add changelog for v1.0.1 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1625> |
| PR | #1622 | [E2E] session.todos_changed event + readSqlTodosWithDependencies | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1622> |
| PR | #1621 | Add E2E test for session.providerEndpoint.get | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1621> |
| PR | #1620 | Handle empty Go tool names as failed tool results | open | slegarraga | <https://github.com/github/copilot-sdk/pull/1620> |
| PR | #1617 | SDK: add optional memory configuration to session create and resume | open | Morabbin | <https://github.com/github/copilot-sdk/pull/1617> |
| PR | #1624 | Add optional `header` field to ask_user across all SDKs | closed | patniko | <https://github.com/github/copilot-sdk/pull/1624> |
| PR | #1569 | Bump the "all" group with 7 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1569> |
| PR | #1455 | Rust SDK: add typed per-session capability controls | closed | Morabbin | <https://github.com/github/copilot-sdk/pull/1455> |
| Issue | #1627 | ProviderConfig.maxOutputTokens not applied to the request for a custom provider + unknown model | open | robsteen | <https://github.com/github/copilot-sdk/issues/1627> |
| Issue | #1619 | Java codegen leaves stale orphaned generated files (codegen does not clean its output dir) | closed | stephentoub | <https://github.com/github/copilot-sdk/issues/1619> |
| Issue | #1618 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1618> |
| Issue | #1616 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1616> |
| Issue | #1615 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1615> |
| Issue | #1611 | Workflow checkpoints are not restorable across version upgrades | closed | saikir1994 | <https://github.com/github/copilot-sdk/issues/1611> |
| Issue | #1607 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1607> |
| Issue | #1603 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1603> |
| Issue | #1573 | Java: Bring "experimental feature flagging" to parity with C# | closed | edburns | <https://github.com/github/copilot-sdk/issues/1573> |
