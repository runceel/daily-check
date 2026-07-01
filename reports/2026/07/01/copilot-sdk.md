# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 6 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | Copilot, roji, github-actions[bot] |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1859](https://github.com/github/copilot-sdk/pull/1859) — Update @github/copilot to 1.0.66

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +3083 / -420
- マージ日時 (UTC): `2026-06-30 20:39:12`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (56 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 336 | 14 |
| `dotnet/src/Generated/SessionEvents.cs` | 221 | 29 |
| `go/rpc/zrpc.go` | 218 | 19 |
| `go/rpc/zrpc_encoding.go` | 4 | 2 |
| `go/rpc/zsession_encoding.go` | 24 | 6 |
| `go/rpc/zsession_events.go` | 91 | 16 |
| `go/zsession_events.go` | 15 | 3 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantMessageEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionEvent.java` | 8 | 2 |
| `java/src/generated/java/com/github/copilot/generated/SessionLimitsConfig.java` | 3 | 3 |
| `java/src/generated/java/com/github/copilot/generated/SessionLimitsExhaustedCompletedEvent.java` | 43 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionLimitsExhaustedRequestedEvent.java` | 45 | 0 |
| _... 他 41 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `8106bb2` Update @github/copilot to 1.0.66
- `481d101` Adapt Java handwritten code to generated schema
- `2a05dcd` Update Java tests for generated type arity

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1857](https://github.com/github/copilot-sdk/pull/1857) — feat(java): implement ToolDefinition.from* lambda overloads (Phase 4.2)

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +850 / -3
- マージ日時 (UTC): `2026-06-30 23:33:45`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/main/java/com/github/copilot/rpc/ToolDefinition.java` | 849 | 2 |
| `java/src/main/java/com/github/copilot/tool/Param.java` | 1 | 1 |

</details>

<details><summary>コミット (7 件)</summary>

- `705cebe` Initial plan
- `0d351d7` feat(java): implement ToolDefinition.from* overloads for lambda-defin…
- `4896d7e` Merge branch 'edburns/1810-java-tool-ergonomics-tool-as-lambda' into …
- `50e213d` Fix review comments: typed defaults, array items schema, primitive cast
- `ae466e8` Fix review round 3: ToolResultObject passthrough, Optional* schema
- `2b7d4e1` Fix review round 4: Optional* coercion in coerceArg
- `789933d` Fix review round 5: null-future guards, Optional* cast safety, @since…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1845](https://github.com/github/copilot-sdk/pull/1845) — [Java] Add `Param<T>` public API type for lambda-defined tools

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +519 / -1
- マージ日時 (UTC): `2026-06-30 17:52:01`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md` | 1 | 1 |
| `java/src/main/java/com/github/copilot/tool/Param.java` | 242 | 0 |
| `java/src/test/java/com/github/copilot/tool/ParamTest.java` | 276 | 0 |

</details>

<details><summary>コミット (14 件)</summary>

- `84414c5` ADR-006
- `ad89a0f` Plan
- `9ad6c2b` GUTDODP
- `5ecb2bb` GUTDODP
- `5af172e` On branch edburns/1810-java-tool-ergonomics-tool-as-lambda GOTDODP
- `dce5e82` On branch edburns/1810-java-tool-ergonomics-tool-as-lambda Completed …
- `584400b` GUTDODP
- `a302632` GUTDODP
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1669](https://github.com/github/copilot-sdk/pull/1669) — Add SDK MCP OAuth host token handlers

- 作者: roji / 状態: MERGED
- ラベル: `dependencies`
- 変更行数: +5508 / -41
- マージ日時 (UTC): `2026-06-30 02:27:11`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (49 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 10 | 0 |
| `dotnet/src/Session.cs` | 124 | 0 |
| `dotnet/src/Types.cs` | 75 | 0 |
| `dotnet/test/E2E/McpOAuthE2ETests.cs` | 302 | 0 |
| `dotnet/test/Harness/E2ETestContext.cs` | 2 | 0 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 207 | 0 |
| `dotnet/test/Unit/PublicDtoTests.cs` | 19 | 0 |
| `dotnet/test/Unit/SessionEventSerializationTests.cs` | 70 | 0 |
| `go/client.go` | 21 | 0 |
| `go/client_test.go` | 287 | 0 |
| `go/internal/e2e/mcp_oauth_e2e_test.go` | 340 | 0 |
| `go/internal/e2e/testharness/context.go` | 2 | 0 |
| `go/session.go` | 96 | 0 |
| `go/session_test.go` | 199 | 0 |
| `go/types.go` | 71 | 0 |
| _... 他 34 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `f78c387` Add MCP OAuth lifecycle SDK support

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1863 | [Java] Implement Phase 4.3 Param schema/coercion internals for tool-as-lambda | open | Copilot | <https://github.com/github/copilot-sdk/pull/1863> |
| PR | #1862 | Surface Pydantic ValidationError to LLM in tool arg validation | open | idryzhov | <https://github.com/github/copilot-sdk/pull/1862> |
| PR | #1861 | Fix MCP OAuth resume order in Node.js SDK | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1861> |
| PR | #1860 | Update @github/copilot to 1.0.67 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1860> |
| PR | #1856 | feat: add session limits support | open | szabta89 | <https://github.com/github/copilot-sdk/pull/1856> |
| PR | #1854 | docs: update billing information for GitHub Copilot SDK usage | open | coleflennikenmsft | <https://github.com/github/copilot-sdk/pull/1854> |
| PR | #1851 | rust: default to rustls TLS backend, add native-tls opt-in | open | colbylwilliams | <https://github.com/github/copilot-sdk/pull/1851> |
| PR | #1848 | Add host-side canvas declaration API and canvasProvider to Java SDK | open | jmoseley | <https://github.com/github/copilot-sdk/pull/1848> |
| PR | #1847 | Add session-level canvasProvider field to Rust, Node, .NET, Go, and Python SDKs | open | jmoseley | <https://github.com/github/copilot-sdk/pull/1847> |
| PR | #1806 | rust: default to rustls TLS backend, add native-tls opt-in | closed | colbylwilliams | <https://github.com/github/copilot-sdk/pull/1806> |
| Issue | #1858 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1858> |
| Issue | #1855 | [Agentic]: Define skill(s) for iterating a child-issue task all the way from "assigned to copilot" to "merged to specified base" | open | edburns | <https://github.com/github/copilot-sdk/issues/1855> |
| Issue | #1853 | Prompt caching | open | georges-nasrallah | <https://github.com/github/copilot-sdk/issues/1853> |
| Issue | #1852 | Prompt Caching | closed | georges-nasrallah | <https://github.com/github/copilot-sdk/issues/1852> |
| Issue | #1850 | Expose `disableModelInvocation` on `session.skills_loaded` skill entries | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1850> |
| Issue | #1849 | getBundledCliPath() resolves @github/index.js (one dir too high) on Node with import.meta.resolve | open | MichaelEns | <https://github.com/github/copilot-sdk/issues/1849> |
| Issue | #1840 | [Java] Tool-as-lambda 4.2: Implement ToolDefinition from*/fromAsync* overloads | closed | edburns | <https://github.com/github/copilot-sdk/issues/1840> |
| Issue | #1839 | [Java] Tool-as-lambda 4.1: Add public API types for lambda-defined tools | closed | edburns | <https://github.com/github/copilot-sdk/issues/1839> |
