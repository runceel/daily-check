# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-23 06:00:53 〜 2026-06-25 00:23:12 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 17 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 16 |
| 新規 Issue              | 6 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | Copilot, SteveSandersonMS, stephentoub, Morabbin, redsun82, edburns |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1787](https://github.com/github/copilot-sdk/pull/1787) — Add E2E integration test for ergonomic @CopilotTool + ToolDefinition.fromObject() API

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +208 / -5
- マージ日時 (UTC): `2026-06-24 20:36:45`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 7 | 3 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicTestTools$$CopilotToolMeta.java` | 49 | 0 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicTestTools.java` | 32 | 0 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicToolDefinitionIT.java` | 85 | 0 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionFromObjectTest.java` | 3 | 2 |
| `test/snapshots/tools/ergonomic_tool_definition.yaml` | 32 | 0 |

</details>

<details><summary>コミット (9 件)</summary>

- `f1c0897` Initial plan
- `aeb9f24` Initial plan
- `ccb2a33` Initial plan
- `9906986` Add E2E integration test for ergonomic @CopilotTool + ToolDefinition.…
- `141b5ac` spotless
- `1a919f2` fix: use passed ObjectMapper for record-parameter conversion
- `bdc3c69` fix: exclude Optional types from required list in generated schema
- `a277021` fix: correct misleading Javadoc in ToolDefinitionFromObjectTest
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1784](https://github.com/github/copilot-sdk/pull/1784) — Clean up HTTP passthrough API

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +92 / -132
- マージ日時 (UTC): `2026-06-24 12:07:04`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/CopilotRequestHandler.cs` | 30 | 21 |
| `dotnet/test/E2E/CopilotRequestWebSocketE2ETests.cs` | 3 | 4 |
| `java/src/main/java/com/github/copilot/CopilotRequestContext.java` | 31 | 0 |
| `java/src/main/java/com/github/copilot/CopilotWebSocketForwarder.java` | 3 | 35 |
| `java/src/test/java/com/github/copilot/CopilotRequestHandlerE2ETest.java` | 1 | 2 |
| `nodejs/src/copilotRequestHandler.ts` | 4 | 6 |
| `nodejs/test/e2e/copilot_request_handler.e2e.test.ts` | 14 | 58 |
| `python/copilot/copilot_request_handler.py` | 2 | 3 |
| `python/e2e/test_copilot_request_handler_e2e.py` | 4 | 3 |

</details>

<details><summary>コミット (5 件)</summary>

- `74f78c4` Clean up HTTP passthrough API
- `4f61701` Node cleanup
- `73022f1` Python cleanup
- `0a3a362` Java cleanup
- `bebee84` Fix request handler E2E comment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1783](https://github.com/github/copilot-sdk/pull/1783) — Document Java memory section and add Copilot Memory links across SDK READMEs

- 作者: Morabbin / 状態: MERGED
- ラベル: —
- 変更行数: +39 / -1
- マージ日時 (UTC): `2026-06-24 12:38:31`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/README.md` | 1 | 0 |
| `go/README.md` | 1 | 0 |
| `java/README.md` | 34 | 1 |
| `nodejs/README.md` | 1 | 0 |
| `python/README.md` | 1 | 0 |
| `rust/README.md` | 1 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `89fce52` Document memory configuration in Java SDK README
- `e8d1a5a` Fix Java memory README example handlers and import
- `190e121` Add Copilot Memory docs links across SDK READMEs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1779](https://github.com/github/copilot-sdk/pull/1779) — feat(java): Add ToolDefinition.fromObject() and fromClass() registration API

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +774 / -2
- マージ日時 (UTC): `2026-06-24 18:03:33`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/main/java/com/github/copilot/rpc/ToolDefinition.java` | 107 | 0 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolMetadataProvider.java` | 42 | 0 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 5 | 2 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionFromObjectTest.java` | 227 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/ArgCoercionTools$$CopilotToolMeta.java` | 50 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/ArgCoercionTools.java` | 24 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DateTimeTools$$CopilotToolMeta.java` | 38 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DateTimeTools.java` | 24 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DefaultValueTools$$CopilotToolMeta.java` | 45 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DefaultValueTools.java` | 20 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/MultiReturnTools$$CopilotToolMeta.java` | 29 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/MultiReturnTools.java` | 30 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/OverrideTools$$CopilotToolMeta.java` | 39 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/OverrideTools.java` | 19 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/SimpleTools$$CopilotToolMeta.java` | 51 | 0 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `0ca2b6c` Initial plan
- `4d7efa0` feat(java): Add ToolDefinition.fromObject() and fromClass() static me…
- `cbae3b1` fix: replace misleading generated-file comment in test fixtures
- `eb472c6` fix: introduce CopilotToolMetadataProvider interface to eliminate set…
- `2a4707c` fix: validate fromClass() rejects instance @CopilotTool methods
- `8a58f51` fix: use parsed JSON tree for defer-absence assertion

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1778](https://github.com/github/copilot-sdk/pull/1778) — Strong-name sign .NET SDK

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +5 / -0
- マージ日時 (UTC): `2026-06-23 20:46:01`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Build.props` | 5 | 0 |
| `dotnet/Open.snk` | 0 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `452c730` Strong-name sign .NET SDK

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1777](https://github.com/github/copilot-sdk/pull/1777) — feat(java): Add CopilotToolProcessor annotation processor (task 4.3)

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +6541 / -3
- マージ日時 (UTC): `2026-06-24 02:43:12`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/1682-low-level-tool-definition.md` | 94 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260615-prompts.md` | 613 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260616-prompts.md` | 218 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260617-prompts.md` | 374 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260618-prompts.md` | 135 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260622-prompts.md` | 1010 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/20260623-prompts.md` | 689 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/add-tests-that-use-low_level_tool_definition.yaml.md` | 151 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd-3018003-ignorance-reduction-for-implementation-plan.md` | 504 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd3021192/dependency-reduced-pom.xml` | 39 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd3021192/pom.xml` | 55 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd3021192/src/main/java/com/github/dd3021192/Main.java` | 58 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd3021192/src/main/java/com/github/dd3021192/MyTools$$CopilotToolMeta.java` | 40 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd3021192/src/main/java/com/github/dd3021192/MyTools.java` | 20 | 0 |
| `1682-java-tool-ergonomics-prompts-remove-before-merge/dd3021192/src/main/java/module-info.java` | 9 | 0 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (29 件)</summary>

- `cd461cd` Resume 1682 iterating
- `edf457c` Phase 03 answer questions
- `6d42a43` On branch edburns/1682-java-tool-ergonomics
- `0751844` WIP: Phase 3. Question 3.4
- `9441d48` WIP: Phase 3. Question 3.6
- `cfe0874` WIP: Phase 3. Question 3.6: Answer
- `e8408fa` Answer 3.7
- `ba84711` Resolve 3.8
- _... 他 21 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1776 | fix(rust): backdate extracted CLI mtime to stop build.rs self-invalidation | redsun82 | <https://github.com/github/copilot-sdk/pull/1776> |
| #1775 | Address stephentoub review feedback on HTTP request callback support (+ cross-SDK parity) | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1775> |
| #1766 | feat(java): add SchemaGenerator compile-time type-to-JSON-Schema utility | Copilot | <https://github.com/github/copilot-sdk/pull/1766> |
| #1750 | Expose exp_assignments injection on session create/resume across all SDKs | ellismg | <https://github.com/github/copilot-sdk/pull/1750> |
| #1729 | normalize-sharing-prompts-during-iteration | edburns | <https://github.com/github/copilot-sdk/pull/1729> |
| #1713 | Add preamble section and preserve action to SDKs | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1713> |
| #1689 | HTTP request callback support | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1689> |
| #1677 | Add embeddedcli.Path() accessor for the resolved CLI path | tbrady77 | <https://github.com/github/copilot-sdk/pull/1677> |
| #1635 | Harden bundled Copilot CLI extraction against corrupt/partial installs | jmoseley | <https://github.com/github/copilot-sdk/pull/1635> |
| #1584 | fix(nodejs): handle stdio stdin errors | sjh9714 | <https://github.com/github/copilot-sdk/pull/1584> |
| #1066 | docs: add system message customization section to Python README | Halcyonhal9 | <https://github.com/github/copilot-sdk/pull/1066> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1793 | Update @github/copilot to 1.0.65 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1793> |
| PR | #1792 | Implement `@CopilotTool` ergonomics | open | edburns | <https://github.com/github/copilot-sdk/pull/1792> |
| PR | #1785 | Update Java JaCoCo coverage badge | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1785> |
| PR | #1774 | Node: Add post user prompt hook | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1774> |
| PR | #1791 | Bump org.sonatype.central:central-publishing-maven-plugin | closed | 6402003757 | <https://github.com/github/copilot-sdk/pull/1791> |
| PR | #1786 | feat(java): Ergonomic tool definition via @CopilotTool and @Param annotations | closed | Copilot | <https://github.com/github/copilot-sdk/pull/1786> |
| PR | #1780 | Bump @github/copilot from 1.0.64-3 to 1.0.64 in /java/scripts/codegen in the java-codegen-deps group | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1780> |
| PR | #1746 | Add getBearerToken callback for BYOK providers (Managed Identity v1) | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1746> |
| PR | #1745 | Add Azure Managed Identity support for BYOK providers | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1745> |
| PR | #1700 | fix(nodejs): validate sendAndWait timeout to fix malformed error message | closed | gimenete | <https://github.com/github/copilot-sdk/pull/1700> |
| PR | #1698 | Bump org.sonatype.central:central-publishing-maven-plugin from 0.10.0 to 0.11.0 in /java in the java-maven-deps group across 1 directory | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1698> |
| PR | #1693 | Add per-call tool context provider to Python SDK | closed | idryzhov | <https://github.com/github/copilot-sdk/pull/1693> |
| PR | #1665 | Dependabot/npm and yarn/java/scripts/codegen/esbuild 0.28.1 | closed | andriusasukys-source | <https://github.com/github/copilot-sdk/pull/1665> |
| PR | #1626 | [changelog] Add changelog for java/v1.0.1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1626> |
| PR | #1625 | [changelog] Add changelog for v1.0.1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1625> |
| PR | #1602 | Update Java JaCoCo coverage badge | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1602> |
| PR | #1502 | Add session.extensions.sendAttachmentsToMessage SDK wrapper | closed | jmoseley | <https://github.com/github/copilot-sdk/pull/1502> |
| PR | #1404 | Python SDK: add ToolError exception to surface tool failures to the LLM | closed | idryzhov | <https://github.com/github/copilot-sdk/pull/1404> |
| PR | #1303 | fix(python): isolate per-entry parse failures in list_models() (#1302) | closed | jrob5756 | <https://github.com/github/copilot-sdk/pull/1303> |
| PR | #1128 | docs: fix Python examples passing dict to session.send() instead of positional str + keyword args | closed | Akhand-99 | <https://github.com/github/copilot-sdk/pull/1128> |
| Issue | #1794 | Java: Add schema attribute to @Param for custom type schema override | open | edburns | <https://github.com/github/copilot-sdk/issues/1794> |
| Issue | #1790 | [Java] @CopilotTool ergonomics: Validate @Param defaultValue parseability at compile time | open | edburns | <https://github.com/github/copilot-sdk/issues/1790> |
| Issue | #1789 | [Java] @CopilotTool ergonomics: Validate @Param defaultValue parseability at compile time | open | edburns | <https://github.com/github/copilot-sdk/issues/1789> |
| Issue | #1788 | Setting `LargeOutput` doesn't seem to have any effect | open | aelij | <https://github.com/github/copilot-sdk/issues/1788> |
| Issue | #1782 | [aw] Java Codegen Agentic Fix failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1782> |
| Issue | #1781 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1781> |
| Issue | #1762 | [Java] @CopilotTool ergonomics 4.5: E2E integration test with replay proxy | closed | edburns | <https://github.com/github/copilot-sdk/issues/1762> |
| Issue | #1761 | [Java] @CopilotTool ergonomics 4.4: ToolDefinition.fromObject(Object) registration API | closed | edburns | <https://github.com/github/copilot-sdk/issues/1761> |
| Issue | #1760 | [Java] @CopilotTool ergonomics 4.3: Annotation processor (CopilotToolProcessor) | closed | edburns | <https://github.com/github/copilot-sdk/issues/1760> |
| Issue | #1759 | [Java] @CopilotTool ergonomics 4.2: Schema generation utility (TypeMirror to JSON Schema) | closed | edburns | <https://github.com/github/copilot-sdk/issues/1759> |
| Issue | #1709 | Verify release 1.0.2 publishes to docs.rs without error | closed | edburns | <https://github.com/github/copilot-sdk/issues/1709> |
| Issue | #1658 | API docs parity: Rust | closed | edburns | <https://github.com/github/copilot-sdk/issues/1658> |
| Issue | #1427 | `CopilotClient` stdin error handler re-throws inside an EventEmitter callback, causing `uncaughtException` | closed | sergiou87 | <https://github.com/github/copilot-sdk/issues/1427> |
