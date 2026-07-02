# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 9 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | Copilot, github-actions[bot], stephentoub, MackinnonBuck, coleflennikenmsft, szabta89 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1881](https://github.com/github/copilot-sdk/pull/1881) — [Java] Add replay-proxy E2E coverage for inline lambda-defined tools

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +47 / -1
- マージ日時 (UTC): `2026-07-01 22:48:44`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md` | 1 | 1 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicToolDefinitionIT.java` | 46 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `fa8421e` Initial plan
- `ad92d81` Add Java lambda-based E2E tool definition coverage
- `e56e880` Merge remote-tracking branch 'origin/copilot/add-java-e2e-integration…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1879](https://github.com/github/copilot-sdk/pull/1879) — [Java] Tool-as-lambda 4.4: Add unit tests for API behavior and validation

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +614 / -1
- マージ日時 (UTC): `2026-07-01 21:08:02`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md` | 1 | 1 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionLambdaTest.java` | 613 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `a94a2db` Initial plan
- `2b0a521` Merge upstream branch (Phases 4.1-4.3): Param<T>, from* factories, fl…
- `76a77dd` Phase 4.4: Add ToolDefinitionLambdaTest – unit tests for lambda tool …
- `6060205` Address Copilot review: tighten test assertions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1877](https://github.com/github/copilot-sdk/pull/1877) — feat(java): implement ParamSchema + ParamCoercion internals for Param (Phase 4.3)

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +386 / -1
- マージ日時 (UTC): `2026-07-01 19:54:52`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md` | 1 | 1 |
| `java/src/main/java/com/github/copilot/tool/ParamCoercion.java` | 196 | 0 |
| `java/src/main/java/com/github/copilot/tool/ParamSchema.java` | 189 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `8e171e7` Initial plan
- `0e0b97c` Merge remote-tracking branch 'origin/edburns/1810-java-tool-ergonomic…
- `4dffb97` feat(java): implement schema + coercion internals for Param (Phase 4.3)
- `f5de66c` fix(java): address Copilot code review comments on ParamSchema/ParamC…
- `a51a40f` fix(java): correct ParamSchema Javadoc - arrays do produce items schema

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1871](https://github.com/github/copilot-sdk/pull/1871) — [changelog] Add changelog for java/v1.0.5-01

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: `automation` `changelog`
- 変更行数: +18 / -0
- マージ日時 (UTC): `2026-07-01 17:21:53`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CHANGELOG.md` | 18 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `0f20b07` Add changelog for java/v1.0.5-01

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1869](https://github.com/github/copilot-sdk/pull/1869) — [changelog] Add changelog for v1.0.5

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: `automation` `changelog`
- 変更行数: +58 / -0
- マージ日時 (UTC): `2026-07-01 17:24:00`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CHANGELOG.md` | 58 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `bc984d9` Add changelog for v1.0.5
- `ed55fca` Merge branch 'main' into changelog/v1.0.5-dcbc92ecff742d13

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1868](https://github.com/github/copilot-sdk/pull/1868) — Stream Anthropic /messages responses in E2E fake handlers

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +302 / -4
- マージ日時 (UTC): `2026-07-01 16:17:38`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/CopilotRequestE2EProvider.cs` | 17 | 1 |
| `go/internal/e2e/copilot_request_helpers_test.go` | 44 | 0 |
| `java/src/test/java/com/github/copilot/CopilotRequestTestSupport.java` | 55 | 0 |
| `nodejs/test/e2e/session_config.e2e.test.ts` | 58 | 1 |
| `python/e2e/_copilot_request_helpers.py` | 51 | 0 |
| `rust/tests/e2e/session_config.rs` | 77 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `1fefa1d` Stream Anthropic /messages responses in E2E fake handlers
- `e62adb5` Format E2E streaming handler updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1865 | Expose new session options across SDKs | stephentoub | <https://github.com/github/copilot-sdk/pull/1865> |
| #1863 | Bump @github/copilot to ^1.0.66 and regenerate protocol types | Copilot | <https://github.com/github/copilot-sdk/pull/1863> |
| #1861 | Fix MCP OAuth resume order in Node.js SDK | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1861> |
| #1860 | Update @github/copilot to 1.0.67 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1860> |
| #1856 | docs: add session limits guidance | szabta89 | <https://github.com/github/copilot-sdk/pull/1856> |
| #1854 | docs: update billing information for GitHub Copilot SDK usage | coleflennikenmsft | <https://github.com/github/copilot-sdk/pull/1854> |
| #1835 | Add experimental GitHub telemetry redirection across all SDKs | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1835> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1880 | Enable built-in issue intent safe outputs on issue-triage | open | lukewar | <https://github.com/github/copilot-sdk/pull/1880> |
| PR | #1878 | docs: document sub-agent event attribution | open | loganrosen | <https://github.com/github/copilot-sdk/pull/1878> |
| PR | #1866 | Bump org.sonatype.central:central-publishing-maven-plugin from 0.10.0 to 0.11.0 in /java in the java-maven-deps group | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1866> |
| PR | #1864 | Add opaque _meta passthrough to SDK tool definitions | open | belaltaher8 | <https://github.com/github/copilot-sdk/pull/1864> |
| PR | #1883 | [WIP] Update Java documentation and ADR cross-links | closed | Copilot | <https://github.com/github/copilot-sdk/pull/1883> |
| Issue | #1884 | [Java] Tool-as-lambda 4.6: Update Java docs and ADR cross-links | open | edburns | <https://github.com/github/copilot-sdk/issues/1884> |
| Issue | #1882 | Remove ToolExecutionCompleteContentTerminal | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/1882> |
| Issue | #1876 | [Java] Tool-as-lambda 4.3: Implement schema + coercion internals for Param<T> | closed | edburns | <https://github.com/github/copilot-sdk/issues/1876> |
| Issue | #1875 | Seek review of implementation | open | edburns | <https://github.com/github/copilot-sdk/issues/1875> |
| Issue | #1874 | Implement plan | open | edburns | <https://github.com/github/copilot-sdk/issues/1874> |
| Issue | #1873 | Request review of planned action | open | edburns | <https://github.com/github/copilot-sdk/issues/1873> |
| Issue | #1872 | Ignorance reduction: Evaluate current state of affairs | open | edburns | <https://github.com/github/copilot-sdk/issues/1872> |
| Issue | #1870 | Unify `publish.yml` so all languages are included | open | edburns | <https://github.com/github/copilot-sdk/issues/1870> |
| Issue | #1867 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1867> |
| Issue | #1844 | ABORTED [Java] Tool-as-lambda 4.6: Update Java docs and ADR cross-links | closed | edburns | <https://github.com/github/copilot-sdk/issues/1844> |
| Issue | #1843 | [Java] Tool-as-lambda 4.5: Add Java E2E integration test with replay proxy | closed | edburns | <https://github.com/github/copilot-sdk/issues/1843> |
| Issue | #1842 | [Java] Tool-as-lambda 4.4: Add unit tests for API behavior and validation | closed | edburns | <https://github.com/github/copilot-sdk/issues/1842> |
| Issue | #1841 | ABORTED [Java] Tool-as-lambda 4.3: Implement schema + coercion internals for Param<T> | closed | edburns | <https://github.com/github/copilot-sdk/issues/1841> |
| Issue | #1803 | Built in shell tool does not emit terminal content with exitCode on tool.execution_complete | closed | anthonykim1 | <https://github.com/github/copilot-sdk/issues/1803> |
