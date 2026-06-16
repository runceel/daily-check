# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-15 00:59:51 〜 2026-06-16 04:07:33 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 12 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 6 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | scottaddie, dependabot[bot], SteveSandersonMS, edburns, github-actions[bot], stephentoub |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1685](https://github.com/github/copilot-sdk/pull/1685) — Fix Dependabot security alerts: bump esbuild, tsx, js-yaml （PR / open / Copilot）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1684](https://github.com/github/copilot-sdk/pull/1684) — Add ADR-005: Ergonomic tool definition via annotation processor

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +0 / -0
- マージ日時 (UTC): `2026-06-15 23:29:15`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/docs/adr/adr-005-tool-definition.md` | 0 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `3b45f7d` Add ADR-005: Ergonomic tool definition via annotation processor

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1681](https://github.com/github/copilot-sdk/pull/1681) — Bump the npm_and_yarn group across 2 directories with 2 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `javascript`
- 変更行数: +126 / -138
- マージ日時 (UTC): `2026-06-16 02:21:29`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `scripts/codegen/package-lock.json` | 13 | 3 |
| `scripts/docs-validation/package-lock.json` | 112 | 134 |
| `scripts/docs-validation/package.json` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `e766550` Bump the npm_and_yarn group across 2 directories with 2 updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1678](https://github.com/github/copilot-sdk/pull/1678) — Update .NET SDK contribution prerequisite

- 作者: scottaddie / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-06-16 02:23:42`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CONTRIBUTING.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `73e291f` Update .NET SDK contribution prerequisite

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1672](https://github.com/github/copilot-sdk/pull/1672) — Update @github/copilot to 1.0.62

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +3491 / -255
- マージ日時 (UTC): `2026-06-15 10:04:41`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (62 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 435 | 4 |
| `dotnet/src/Generated/SessionEvents.cs` | 178 | 14 |
| `dotnet/test/E2E/BuiltinToolsE2ETests.cs` | 1 | 1 |
| `go/internal/e2e/builtin_tools_e2e_test.go` | 1 | 1 |
| `go/rpc/zrpc.go` | 266 | 4 |
| `go/rpc/zrpc_encoding.go` | 4 | 0 |
| `go/rpc/zsession_encoding.go` | 6 | 0 |
| `go/rpc/zsession_events.go` | 62 | 8 |
| `go/zsession_events.go` | 11 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 105 | 37 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantMessageEvent.java` | 2 | 4 |
| `java/src/generated/java/com/github/copilot/generated/AssistantMessageServerTools.java` | 32 | 0 |
| `java/src/generated/java/com/github/copilot/generated/ExtensionsLoadedExtension.java` | 1 | 1 |
| _... 他 47 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `a115246` Update @github/copilot to 1.0.62

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1668](https://github.com/github/copilot-sdk/pull/1668) — fix(python): round sub-millisecond durations in to_timedelta_int

- 作者: idryzhov / 状態: MERGED
- ラベル: —
- 変更行数: +6 / -4
- マージ日時 (UTC): `2026-06-15 20:24:46`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/copilot/generated/session_events.py` | 3 | 2 |
| `scripts/codegen/python.ts` | 3 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `30c4dd7` fix(python): round sub-millisecond durations in to_timedelta_int
- `11da840` docs(python): clarify banker's rounding in to_timedelta_int comment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1667](https://github.com/github/copilot-sdk/pull/1667) — Add graceful runtime shutdown to SDK clients

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +978 / -226
- マージ日時 (UTC): `2026-06-15 15:24:24`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 80 | 11 |
| `dotnet/test/E2E/TelemetryExportE2ETests.cs` | 12 | 38 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 114 | 0 |
| `go/client.go` | 75 | 5 |
| `go/client_test.go` | 84 | 0 |
| `go/internal/e2e/telemetry_e2e_test.go` | 19 | 33 |
| `java/src/main/java/com/github/copilot/CopilotClient.java` | 61 | 18 |
| `java/src/test/java/com/github/copilot/CopilotClientTest.java` | 81 | 1 |
| `nodejs/src/client.ts` | 108 | 11 |
| `nodejs/test/client.test.ts` | 74 | 0 |
| `nodejs/test/e2e/telemetry.e2e.test.ts` | 12 | 32 |
| `python/copilot/client.py` | 109 | 14 |
| `python/e2e/test_telemetry_e2e.py` | 9 | 25 |
| `python/test_client.py` | 68 | 1 |
| `rust/src/lib.rs` | 63 | 7 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `ca49647` Add graceful runtime shutdown to SDK clients

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1649 | Bump esbuild from 0.28.0 to 0.28.1 in /java/scripts/codegen | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1649> |
| #1648 | Add OTLP protocol telemetry options | loganrosen | <https://github.com/github/copilot-sdk/pull/1648> |
| #1636 | Standardize README prerequisites across all SDK languages | scottaddie | <https://github.com/github/copilot-sdk/pull/1636> |
| #1622 | [E2E] session.todos_changed event + readSqlTodosWithDependencies (6 languages) | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1622> |
| #1621 | Add E2E test for session.providerEndpoint.get | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1621> |
| #1617 | SDK: add optional memory configuration to session create and resume | Morabbin | <https://github.com/github/copilot-sdk/pull/1617> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1686 | Update @github/copilot to 1.0.63 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1686> |
| PR | #1685 | Fix Dependabot security alerts: bump esbuild, tsx, js-yaml | open | Copilot | <https://github.com/github/copilot-sdk/pull/1685> |
| PR | #1683 | Rename SystemPromptSections → SystemMessageSections for cross-SDK consistency | open | edburns | <https://github.com/github/copilot-sdk/pull/1683> |
| PR | #1677 | Add embeddedcli.Path() accessor for the resolved CLI path | open | tbrady77 | <https://github.com/github/copilot-sdk/pull/1677> |
| PR | #1676 | Fix to_timedelta_int comment to accurately describe banker's rounding | open | Copilot | <https://github.com/github/copilot-sdk/pull/1676> |
| PR | #1664 | Bump esbuild from 0.27.2 to 0.28.1 in /scripts/docs-validation in the npm_and_yarn group across 1 directory | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1664> |
| PR | #1634 | Add explicit session reset APIs | closed | redsun82 | <https://github.com/github/copilot-sdk/pull/1634> |
| PR | #1583 | TypeScript SDK: update client API to add model token pricing | closed | sergiou87 | <https://github.com/github/copilot-sdk/pull/1583> |
| PR | #1564 | TypeScript SDK: Use generated types for model info and remove duplicates | closed | sergiou87 | <https://github.com/github/copilot-sdk/pull/1564> |
| Issue | #1682 | Java: Ergonomics: Defining tools | open | edburns | <https://github.com/github/copilot-sdk/issues/1682> |
| Issue | #1680 | Java: Consistency: ToolDefinition → Tool | closed | edburns | <https://github.com/github/copilot-sdk/issues/1680> |
| Issue | #1679 | Java: Consistency: SystemPromptSections → SystemMessageSections | open | edburns | <https://github.com/github/copilot-sdk/issues/1679> |
| Issue | #1675 | Surface per-server MCP Apps capability on McpServersLoadedServer / SessionMcpServerStatusChangedData | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1675> |
| Issue | #1674 | Re-export ModelPolicyState and ModelPickerCategory from the crate root alongside Model/ModelPolicy | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1674> |
| Issue | #1673 | [aw] Java Handwritten Code Adaptation After CLI Upgrade failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1673> |
| Issue | #1666 | Tak | closed | andriusasukys-source | <https://github.com/github/copilot-sdk/issues/1666> |
| Issue | #1637 | [dotnet][1.0.1] Custom client tool (AIFunction) never invoked - runtime returns opaque "Tool execution failed" without dispatching to the registered handler | closed | mit2nil | <https://github.com/github/copilot-sdk/issues/1637> |
