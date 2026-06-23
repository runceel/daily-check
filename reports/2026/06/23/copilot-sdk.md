# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-20 10:51:22 〜 2026-06-23 06:00:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 23 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | github-actions[bot], dependabot[bot], Copilot, SteveSandersonMS, dereklegenzoff |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1763](https://github.com/github/copilot-sdk/pull/1763) — feat(java): create @CopilotTool and @Param annotations

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +301 / -16
- マージ日時 (UTC): `2026-06-23 00:48:16`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260622-prompts.md` | 271 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ToolDefer.java` | 15 | 8 |
| `java/src/main/java/com/github/copilot/tool/CopilotTool.java` | 1 | 1 |
| `java/src/main/java/com/github/copilot/tool/Param.java` | 1 | 1 |
| `java/src/test/java/com/github/copilot/tool/CopilotToolAnnotationTest.java` | 13 | 6 |

</details>

<details><summary>コミット (5 件)</summary>

- `85a7134` WIP Phase 4.1
- `a4fe9b2` Remove prompts, pre-merge
- `529c898` fix(java): correct ToolDefer.NONE Javadoc on @JsonValue null semantics
- `89b209d` fix(java): address three review comments
- `f56ee20` Revert "Remove prompts, pre-merge"

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1752](https://github.com/github/copilot-sdk/pull/1752) — Update @github/copilot to 1.0.64-3

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +5241 / -3417
- マージ日時 (UTC): `2026-06-23 02:08:40`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (51 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 6 | 1 |
| `dotnet/src/Generated/Rpc.cs` | 2473 | 2235 |
| `dotnet/src/Generated/SessionEvents.cs` | 45 | 0 |
| `dotnet/src/JsonRpc.cs` | 6 | 1 |
| `dotnet/test/Unit/SerializationTests.cs` | 13 | 9 |
| `go/rpc/zrpc.go` | 196 | 26 |
| `go/rpc/zrpc_encoding.go` | 206 | 148 |
| `go/rpc/zsession_events.go` | 22 | 0 |
| `go/zsession_events.go` | 1 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/java.ts` | 87 | 21 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/ModelCallFailureEvent.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/ModelCallFailureRequestFingerprint.java` | 39 | 0 |
| _... 他 36 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `dff7f14` Update @github/copilot to 1.0.64-3
- `3abf38a` Fix CI failures for Copilot update
- `98477ff` Fix Java account users RPC generation
- `3c48d14` Fix Rust model billing test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1744](https://github.com/github/copilot-sdk/pull/1744) — Python: switch from bundled CLI wheels to downloading explicitly or at runtime

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +601 / -409
- マージ日時 (UTC): `2026-06-22 22:39:16`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/publish.yml` | 4 | 2 |
| `docs/getting-started.md` | 1 | 1 |
| `docs/setup/bundled-cli.md` | 10 | 2 |
| `docs/setup/local-cli.md` | 1 | 1 |
| `python/.gitignore` | 0 | 3 |
| `python/README.md` | 27 | 0 |
| `python/copilot/__main__.py` | 6 | 0 |
| `python/copilot/_cli_download.py` | 386 | 0 |
| `python/copilot/_cli_version.py` | 95 | 0 |
| `python/copilot/client.py` | 15 | 24 |
| `python/pyproject.toml` | 0 | 3 |
| `python/scripts/build-wheels.mjs` | 0 | 373 |
| `python/scripts/inject-cli-version.mjs` | 56 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `75d4a8b` python: switch from bundled CLI wheels to download-at-first-use

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1742](https://github.com/github/copilot-sdk/pull/1742) — Bump undici from 6.24.1 to 6.27.0 in /scripts/corrections in the npm_and_yarn group across 1 directory

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `javascript`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-06-22 01:17:46`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `scripts/corrections/package-lock.json` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `8f0f0b2` Bump undici

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1739](https://github.com/github/copilot-sdk/pull/1739) — Update @github/copilot to 1.0.64-1

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +5067 / -803
- マージ日時 (UTC): `2026-06-21 01:56:53`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (72 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/actions/setup-copilot/action.yml` | 10 | 1 |
| `.github/workflows/java-sdk-tests.yml` | 1 | 1 |
| `docs/features/image-input.md` | 2 | 2 |
| `dotnet/src/Generated/Rpc.cs` | 290 | 5 |
| `dotnet/src/Generated/SessionEvents.cs` | 543 | 64 |
| `dotnet/test/Harness/E2ETestContext.cs` | 19 | 4 |
| `go/client_test.go` | 13 | 15 |
| `go/internal/e2e/session_e2e_test.go` | 1 | 1 |
| `go/internal/e2e/testharness/context.go` | 16 | 5 |
| `go/rpc/zrpc.go` | 372 | 13 |
| `go/rpc/zrpc_encoding.go` | 85 | 0 |
| `go/rpc/zsession_encoding.go` | 106 | 127 |
| `go/rpc/zsession_events.go` | 196 | 46 |
| `go/test.sh` | 5 | 3 |
| `go/zsession_events.go` | 25 | 6 |
| _... 他 57 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `2de50eb` Update @github/copilot to 1.0.64-1
- `4c6cd17` Fix CI failures for @github/copilot 1.0.64-1 package layout
- `5645cb7` Address CodeQL findings in dotnet E2E harness
- `6d35625` Fix SDK test check failures
- `acec587` Update Node permission RPC test
- `f1242cf` Align Java E2E harness CLI resolution with other SDKs
- `9d176b7` Enable third-party MCP in e2e replay proxy for 1.0.64-1 runtime
- `9d696d2` test(e2e): route GitHub API to replay proxy in SDK harnesses
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1711](https://github.com/github/copilot-sdk/pull/1711) — Add capi.enableWebSocketResponses and provider.transport session options

- 作者: dereklegenzoff / 状態: MERGED
- ラベル: —
- 変更行数: +992 / -4
- マージ日時 (UTC): `2026-06-22 20:21:53`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 5 | 0 |
| `dotnet/src/Types.cs` | 37 | 0 |
| `dotnet/test/Unit/CloneTests.cs` | 28 | 0 |
| `dotnet/test/Unit/SerializationTests.cs` | 74 | 1 |
| `go/client.go` | 2 | 0 |
| `go/client_test.go` | 152 | 0 |
| `go/types.go` | 26 | 0 |
| `java/src/main/java/com/github/copilot/SessionRequestBuilder.java` | 2 | 0 |
| `java/src/main/java/com/github/copilot/rpc/CapiSessionOptions.java` | 63 | 0 |
| `java/src/main/java/com/github/copilot/rpc/CreateSessionRequest.java` | 12 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ProviderConfig.java` | 28 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionConfig.java` | 28 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionRequest.java` | 12 | 0 |
| `java/src/main/java/com/github/copilot/rpc/SessionConfig.java` | 28 | 0 |
| `java/src/test/java/com/github/copilot/CapiSessionOptionsTest.java` | 131 | 0 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `40c456c` Add capi.disableWebSocketResponses session option
- `91ec4c8` Add provider.transport BYOK option
- `cdabefd` Merge remote-tracking branch 'origin/main' into dereklegenzoff/capi-d…
- `111b756` Lead with spelled-out 'Copilot API (CAPI)' on first mention
- `1b6db8b` Invert capi flag to enableWebSocketResponses (default true)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1766 | feat(java): add SchemaGenerator compile-time type-to-JSON-Schema utility | open | Copilot | <https://github.com/github/copilot-sdk/pull/1766> |
| PR | #1750 | Expose exp_assignments injection on session create/resume across all SDKs | open | ellismg | <https://github.com/github/copilot-sdk/pull/1750> |
| PR | #1748 | Add getBearerToken callback for BYOK providers (Managed Identity) | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1748> |
| PR | #1746 | Add getBearerToken callback for BYOK providers (Managed Identity v1) | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1746> |
| PR | #1745 | Add Azure Managed Identity support for BYOK providers | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1745> |
| PR | #1743 | Code | closed | Huynhthuongg | <https://github.com/github/copilot-sdk/pull/1743> |
| Issue | #1773 | Add a way to disable built-in sub-agents (kill-switch / allow-list) | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1773> |
| Issue | #1772 | Allow a custom agent to declare a default execution mode (sync/background) | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1772> |
| Issue | #1771 | Add a `reasoningEffort` field to the custom-agent definition | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1771> |
| Issue | #1770 | Configurable execution limits: max turns / sub-agent depth / wall-clock timeout | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1770> |
| Issue | #1769 | Allow extending (appending to) a built-in agent's system prompt | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1769> |
| Issue | #1768 | Cross-provider sub-agent model override routes to the single session provider and fails | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1768> |
| Issue | #1767 | `task` tool: built-in agent list isn't customizable + description hardcodes model-family wording | open | CallMeCJ | <https://github.com/github/copilot-sdk/issues/1767> |
| Issue | #1765 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1765> |
| Issue | #1764 | Code-generate inbound (server→client) RPC dispatch for the Rust SDK | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/1764> |
| Issue | #1762 | [Java] @CopilotTool ergonomics 4.5: E2E integration test with replay proxy | open | edburns | <https://github.com/github/copilot-sdk/issues/1762> |
| Issue | #1761 | [Java] @CopilotTool ergonomics 4.4: ToolDefinition.fromObject(Object) registration API | open | edburns | <https://github.com/github/copilot-sdk/issues/1761> |
| Issue | #1760 | [Java] @CopilotTool ergonomics 4.3: Annotation processor (CopilotToolProcessor) | open | edburns | <https://github.com/github/copilot-sdk/issues/1760> |
| Issue | #1759 | [Java] @CopilotTool ergonomics 4.2: Schema generation utility (TypeMirror to JSON Schema) | open | edburns | <https://github.com/github/copilot-sdk/issues/1759> |
| Issue | #1758 | [Java] @CopilotTool ergonomics 4.1: Create @CopilotTool and @Param annotations | closed | edburns | <https://github.com/github/copilot-sdk/issues/1758> |
| Issue | #1757 | Create sub-issues, assignable to copilot, for implementation phases in Phase 4. | closed | edburns | <https://github.com/github/copilot-sdk/issues/1757> |
| Issue | #1756 | New issue | open | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/1756> |
| Issue | #1755 | Complete Phases 1 - 3 of plan. | closed | edburns | <https://github.com/github/copilot-sdk/issues/1755> |
| Issue | #1754 | Create implementation plan | closed | edburns | <https://github.com/github/copilot-sdk/issues/1754> |
| Issue | #1753 | RFC: SDK-native evaluation harness (local + Azure/OTel sinks, LLM-as-judge, analysis agent, suite runner) | open | garrettlondon1 | <https://github.com/github/copilot-sdk/issues/1753> |
| Issue | #1751 | Python SDK version 1.0.3 only has wheels for macos | open | TaoChenOSU | <https://github.com/github/copilot-sdk/issues/1751> |
| Issue | #1749 | SessionMetadataSnapshot.AlreadyInUse is always false for SDK-resumed sessions (never reflects concurrent use by another process) | open | BenPryor | <https://github.com/github/copilot-sdk/issues/1749> |
| Issue | #1747 | [Observation]: Copilot SDK 1.0.x is less willing to load skills | open | JasonYeMSFT | <https://github.com/github/copilot-sdk/issues/1747> |
| Issue | #1741 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1741> |
| Issue | #1740 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1740> |
