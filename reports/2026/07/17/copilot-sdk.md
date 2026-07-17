# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 10 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 7 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | stephentoub, belaltaher8, lukewar, sunbrye, github-actions[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#2007](https://github.com/github/copilot-sdk/issues/2007) — hono dev dependency has 5 known security advisories (1 high, 4 medium) （Issue / open / aaf091）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1998](https://github.com/github/copilot-sdk/pull/1998) — Update @github/copilot to 1.0.71

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +2253 / -380
- マージ日時 (UTC): `2026-07-16 13:49:28`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (50 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 110 | 2 |
| `dotnet/src/Generated/SessionEvents.cs` | 191 | 6 |
| `dotnet/src/UnixMillisecondsDateTimeOffsetConverter.cs` | 8 | 2 |
| `go/client.go` | 48 | 16 |
| `go/rpc/zrpc.go` | 135 | 2 |
| `go/rpc/zsession_encoding.go` | 12 | 0 |
| `go/rpc/zsession_events.go` | 171 | 96 |
| `go/zsession_events.go` | 10 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantServerToolProgressEvent.java` | 45 | 0 |
| `java/src/generated/java/com/github/copilot/generated/HeaderEntry.java` | 29 | 0 |
| `java/src/generated/java/com/github/copilot/generated/ManagedSettingsResolvedSource.java` | 37 | 0 |
| `java/src/generated/java/com/github/copilot/generated/McpOauthHttpResponse.java` | 32 | 0 |
| _... 他 35 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `8f39116` Update @github/copilot to 1.0.71
- `bc82988` Route Python hooks.invoke through generated client-global handler
- `c6cc326` Route Node hooks.invoke through generated client-global handler
- `8062497` Route Go hooks.invoke through generated client-global handler
- `6e748a5` Fix Rust hook input deserialization for float timestamps
- `1e119c1` Fix .NET build break and float hook timestamps for hooks.invoke

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1997](https://github.com/github/copilot-sdk/pull/1997) — Avoid Windows in-process test teardown deadlock

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +11 / -3
- マージ日時 (UTC): `2026-07-16 02:14:54`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/test/e2e/harness/sdkTestContext.ts` | 11 | 3 |

</details>

<details><summary>コミット (9 件)</summary>

- `b7e86b5` Instrument Node in-process test stalls
- `2add015` Trace runtime and proxy during Node stalls
- `9f19df2` Create focused Windows in-process stress run
- `57d1304` Measure Windows test resource pressure
- `d4c997a` Preserve runtime diagnostics on failure
- `977de35` Trace Windows session database locks
- `a4f17fb` Avoid perturbing runtime lock timing
- `5e60dad` Avoid Windows in-process teardown deadlock
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1994](https://github.com/github/copilot-sdk/pull/1994) — Remove HMAC key authentication method from public SDK auth docs

- 作者: sunbrye / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -2
- マージ日時 (UTC): `2026-07-15 19:02:36`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/auth/README.md` | 1 | 1 |
| `docs/auth/authenticate.md` | 0 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `952a110` Remove HMAC key authentication method from public SDK auth docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1880](https://github.com/github/copilot-sdk/pull/1880) — Enable built-in issue intent safe outputs on issue-triage

- 作者: lukewar / 状態: MERGED
- ラベル: —
- 変更行数: +5161 / -2551
- マージ日時 (UTC): `2026-07-16 17:34:06`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (28 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/agents/agentic-workflows.md` | 71 | 16 |
| `.github/aw/actions-lock.json` | 20 | 25 |
| `.github/skills/agentic-workflows/SKILL.md` | 94 | 0 |
| `.github/workflows/agentics-maintenance.yml` | 633 | 0 |
| `.github/workflows/copilot-setup-steps.yml` | 2 | 2 |
| `.github/workflows/cross-repo-issue-analysis.lock.yml` | 391 | 220 |
| `.github/workflows/cross-repo-issue-analysis.md` | 1 | 0 |
| `.github/workflows/handle-bug.lock.yml` | 393 | 216 |
| `.github/workflows/handle-bug.md` | 1 | 0 |
| `.github/workflows/handle-documentation.lock.yml` | 393 | 216 |
| `.github/workflows/handle-documentation.md` | 1 | 0 |
| `.github/workflows/handle-enhancement.lock.yml` | 393 | 216 |
| `.github/workflows/handle-enhancement.md` | 1 | 0 |
| `.github/workflows/handle-question.lock.yml` | 393 | 216 |
| `.github/workflows/handle-question.md` | 1 | 0 |
| _... 他 13 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `1750471` Enable issue intents on issue-triage workflow
- `22e2809` Bump verify-compiled gh-aw pin to v0.82.1 and recompile locks
- `b97adf5` chore(aw): upgrade aw workflows with latest pre-release
- `c2f55e1` fix(ci): align verify workflow gh-aw toolchain
- `cd0b1a8` Add generated agentics-maintenance workflow (gh-aw v0.82.10)
- `66fc319` Enable org billing (copilot-requests) for agentic workflows

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1864](https://github.com/github/copilot-sdk/pull/1864) — Add opaque `metadata` passthrough to SDK tool definitions

- 作者: belaltaher8 / 状態: MERGED
- ラベル: —
- 変更行数: +716 / -49
- マージ日時 (UTC): `2026-07-15 20:31:43`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (31 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 6 | 2 |
| `dotnet/src/CopilotTool.cs` | 15 | 1 |
| `dotnet/test/Unit/CopilotToolTests.cs` | 29 | 0 |
| `go/client_test.go` | 47 | 0 |
| `go/types.go` | 5 | 0 |
| `java/docs/adr/adr-005-tool-definition.md` | 32 | 1 |
| `java/src/main/java/com/github/copilot/rpc/ToolDefinition.java` | 91 | 18 |
| `java/src/main/java/com/github/copilot/tool/CopilotTool.java` | 83 | 0 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 39 | 1 |
| `java/src/test/java/com/github/copilot/ToolDefinitionTest.java` | 69 | 0 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicTestTools$$CopilotToolMeta.java` | 4 | 4 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionFromObjectTest.java` | 15 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/ArgCoercionTools$$CopilotToolMeta.java` | 1 | 1 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DateTimeTools$$CopilotToolMeta.java` | 1 | 1 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DefaultValueTools$$CopilotToolMeta.java` | 1 | 1 |
| _... 他 16 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `0d575bc` Add opaque metadata passthrough to SDK tool definitions
- `71c6fb4` Address review feedback on tool metadata passthrough
- `addebe1` Merge remote-tracking branch 'origin/main' into belaltaher8/tool-meta…
- `dac4fff` Java: enable tool metadata for @CopilotTool + compat constructor
- `9aa5e0a` Apply spotless formatting to Java metadata changes
- `010840f` Merge branch 'main' into belaltaher8/tool-meta-passthrough
- `d959b21` test: assert null metadata arg in generated tool definition
- `9806296` Merge pull request #1 from edburns/edburns/review-belaltaher8-pr-1864
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2013 | Harden replay-proxy "Available tools" normalization against built-in tool set changes | open | stephentoub | <https://github.com/github/copilot-sdk/pull/2013> |
| PR | #2010 | Add .NET BYOK E2E coverage | open | roji | <https://github.com/github/copilot-sdk/pull/2010> |
| PR | #2009 | Add Agent Orchestrations Authoring Surface | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2009> |
| PR | #2005 | docs: add server-to-server token guide | open | patniko | <https://github.com/github/copilot-sdk/pull/2005> |
| PR | #2002 | [changelog] Add changelog for v1.0.7 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2002> |
| PR | #2001 | [changelog] Add changelog for java/v1.0.7 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2001> |
| PR | #1999 | java: add schema attribute to @CopilotToolParam for custom type schema override | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/1999> |
| PR | #1996 | Add Rust runtime lock settings | open | SlowGreek | <https://github.com/github/copilot-sdk/pull/1996> |
| PR | #1995 | docs: expand Azure Managed Identity BYOK guidance | open | scottaddie | <https://github.com/github/copilot-sdk/pull/1995> |
| PR | #1992 | Bump the java-maven-deps group across 1 directory with 5 updates | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1992> |
| PR | #2003 | Enable org billing (copilot-requests) for agentic workflows | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2003> |
| PR | #1993 | Solution (#1934): [Tracking] In-process (FFI) items to be cleaned up | closed | TFGSUMIT | <https://github.com/github/copilot-sdk/pull/1993> |
| PR | #1982 | Fix Go E2E SA5011 nil-deref staticcheck findings | closed | roji | <https://github.com/github/copilot-sdk/pull/1982> |
| PR | #1866 | Bump org.sonatype.central:central-publishing-maven-plugin from 0.10.0 to 0.11.0 in /java in the java-maven-deps group | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1866> |
| Issue | #2012 | crimson tide  | open | teejaymaxxx77-cmyk | <https://github.com/github/copilot-sdk/issues/2012> |
| Issue | #2011 | new issue | open | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2011> |
| Issue | #2008 | .NET: runtime logs forwarding session.idle, but SDK callback never delivers it | open | nicolasdossantos | <https://github.com/github/copilot-sdk/issues/2008> |
| Issue | #2007 | hono dev dependency has 5 known security advisories (1 high, 4 medium) | open | aaf091 | <https://github.com/github/copilot-sdk/issues/2007> |
| Issue | #2006 | new issueSdkCpil | open | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2006> |
| Issue | #2004 | what 
 | open | sshivamma7712-creator | <https://github.com/github/copilot-sdk/issues/2004> |
| Issue | #2000 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2000> |
| Issue | #1939 | Request help in internal slack: Solve the problem where the Copilot cloud agent does not reliably select the specified topic branch as the base for its work when it starts working. | closed | edburns | <https://github.com/github/copilot-sdk/issues/1939> |
| Issue | #1893 | Improve velocity of agentic feature development | closed | edburns | <https://github.com/github/copilot-sdk/issues/1893> |
| Issue | #1855 | [Agentic]: Define skill(s) for iterating a child-issue task all the way from "assigned to copilot" to "merged to specified base" | closed | edburns | <https://github.com/github/copilot-sdk/issues/1855> |
