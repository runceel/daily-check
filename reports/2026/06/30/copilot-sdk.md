# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-29 01:00:01 〜 2026-06-30 01:54:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 13 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | Copilot, github-actions[bot], pallaviraiturkar0, roji |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

## このリポジトリの要点

**Java SDK のツール定義まわりが活発**な期間。ツール引数アノテーション `@Param` を `@CopilotToolParam` にリネーム（[#1838](https://github.com/github/copilot-sdk/pull/1838)）、`@CopilotTool` メソッドへの隠し `ToolInvocation` 注入対応（[#1832](https://github.com/github/copilot-sdk/pull/1832)）に加え、ラムダ定義ツール向けの `Param<T>` 公開 API（Tool-as-lambda Phase 4、[#1845](https://github.com/github/copilot-sdk/pull/1845) と一連の Issue #1839–1844）が進行中。ほかに `@github/copilot` を 1.0.66-2 へ更新して各言語の生成 RPC を再生成（[#1828](https://github.com/github/copilot-sdk/pull/1828)）、Rust の `Attachment` enum に GitHub アンカー付きバリアント追加（[#1823](https://github.com/github/copilot-sdk/pull/1823)）。破壊的変更・セキュリティの自動検出はなし。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1838](https://github.com/github/copilot-sdk/pull/1838) — Rename `Param` annotation to `CopilotToolParam` in Java SDK

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +150 / -141
- マージ日時 (UTC): `2026-06-30 00:39:31`

**変更概要**

Java SDK のツール引数アノテーション `@Param` を `@CopilotToolParam` にリネームする PR。命名衝突を避け SDK 規約に沿った明確な名前にし、後継の lambda 定義ツール向け `Param<T>` 公開型のために `Param` 名を空ける狙いもある。`CopilotToolParam.java` / `CopilotToolProcessor` / `SchemaGenerator` と多数のテスト fixture を一括更新し、ADR-005 もあわせて改訂。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/README.md` | 4 | 4 |
| `java/docs/adr/adr-005-tool-definition.md` | 13 | 12 |
| `java/src/main/java/com/github/copilot/tool/CopilotTool.java` | 2 | 1 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolParam.java` | 4 | 3 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 19 | 18 |
| `java/src/main/java/com/github/copilot/tool/SchemaGenerator.java` | 1 | 1 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicTestTools.java` | 3 | 3 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/ArgCoercionTools.java` | 3 | 3 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DateTimeTools.java` | 2 | 2 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/DefaultValueTools.java` | 3 | 3 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/InvocationAwareTools.java` | 6 | 6 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/OptionalParamTools.java` | 8 | 5 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/OverrideTools.java` | 2 | 2 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/SimpleTools.java` | 4 | 3 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/StaticInvocationTools.java` | 2 | 2 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `6e2a5f5` Initial plan
- `4d714f4` Rename Param annotation to CopilotToolParam across Java SDK
- `f86535f` Fix remaining Param type declarations to CopilotToolParam
- `890bd8b` Spotless apply On branch edburns/review-copilot-pr-1838
- `74f8f57` Fix ADR-005 Option 2 example: @CopilotToolParam cannot target record …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Java の公開アノテーション名が `@Param` → `@CopilotToolParam` に変更される事実上の **API リネーム**。型宣言・import を全面置換し、アノテーションは record コンポーネントには付けられない旨も ADR-005 の例で明確化。

**既存利用者への影響**

Java SDK で `@Param` を使ってツール引数を定義していた利用者は `@CopilotToolParam` への置換が必要。なお lambda 定義ツール向けには別途 `Param<T>` 公開型が追加予定（[#1845](https://github.com/github/copilot-sdk/pull/1845)）。

### [#1832](https://github.com/github/copilot-sdk/pull/1832) — [Java] Support hidden `ToolInvocation` injection in `@CopilotTool` methods

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +643 / -12
- マージ日時 (UTC): `2026-06-29 23:23:03`

**変更概要**

Java の `@CopilotTool` メソッドで、引数リストに **隠しパラメータとして `ToolInvocation` を注入**できるようにする PR。ツール実装が呼び出しコンテキスト（`ToolInvocation`）へアクセスでき、引数の位置に依存せず注入される。`CopilotToolProcessor` を拡張し、生成メタ（`$$CopilotToolMeta`）と位置非依存テストを多数追加。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/README.md` | 33 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ToolInvocation.java` | 6 | 0 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 51 | 12 |
| `java/src/test/java/com/github/copilot/rpc/RecordInvocationArgs.java` | 8 | 0 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionFromObjectTest.java` | 159 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/InvocationAwareTools$$CopilotToolMeta.java` | 74 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/InvocationAwareTools.java` | 56 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/StaticInvocationTools$$CopilotToolMeta.java` | 29 | 0 |
| `java/src/test/java/com/github/copilot/rpc/fixtures/StaticInvocationTools.java` | 21 | 0 |
| `java/src/test/java/com/github/copilot/tool/CopilotToolProcessorTest.java` | 206 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `58c3889` Initial plan
- `727c410` Add hidden ToolInvocation injection for Java @CopilotTool methods
- `5f83750` Polish ToolInvocation fixture parameter annotations
- `0cec94c` Merge branch 'main' into copilot/add-hidden-toolinvocation-support
- `ea6656b` Add Java ToolInvocation position-independence coverage

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新機能。`ToolInvocation` をツールメソッドのシグネチャに含めると自動で注入される（スキーマには露出しない hidden パラメータ）。オプトインの追加機能のため破壊的変更なし。

**既存利用者への影響**

既存ツールへの影響はなし（任意機能）。呼び出しコンテキストを使いたい Java SDK 利用者は `ToolInvocation` パラメータを追加するだけで利用できる。

### [#1828](https://github.com/github/copilot-sdk/pull/1828) — Update @github/copilot to 1.0.66-2

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +4312 / -4576
- マージ日時 (UTC): `2026-06-29 20:23:52`

**変更概要**

バンドルする `@github/copilot` を 1.0.66-2 に更新し、各言語 SDK の **生成 RPC コード（.NET / Go / Rust など）を再生成**する自動更新 PR。hooks 関連の RPC / セッションイベント定義が更新され、各言語の hooks E2E テストが大幅に整理（削減）されている。差分は +4312/-4576 と大きいが、大半が生成コードとテスト。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 350 | 12 |
| `dotnet/src/Generated/SessionEvents.cs` | 88 | 21 |
| `dotnet/test/E2E/HookLifecycleAndOutputE2ETests.cs` | 37 | 368 |
| `dotnet/test/E2E/HooksE2ETests.cs` | 27 | 147 |
| `dotnet/test/E2E/PreMcpToolCallHookE2ETests.cs` | 6 | 142 |
| `dotnet/test/E2E/SubagentHooksE2ETests.cs` | 8 | 52 |
| `go/internal/e2e/hooks_e2e_test.go` | 47 | 252 |
| `go/internal/e2e/hooks_extended_e2e_test.go` | 56 | 394 |
| `go/internal/e2e/pre_mcp_tool_call_hook_e2e_test.go` | 11 | 181 |
| `go/internal/e2e/subagent_hooks_e2e_test.go` | 11 | 75 |
| `go/rpc/zrpc.go` | 397 | 13 |
| `go/rpc/zrpc_encoding.go` | 19 | 2 |
| `go/rpc/zsession_encoding.go` | 23 | 0 |
| `go/rpc/zsession_events.go` | 37 | 5 |
| `go/zsession_events.go` | 5 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `779167b` Update @github/copilot to 1.0.66-2
- `e896500` Fix SDK checks for Copilot 1.0.66-2
- `3ea68c8` Fix Java hook test formatting
- `abde94e` Address Rust hook CodeQL comments
- `59c6965` Fix remaining callback hook CI failures

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成コード（`Rpc.cs` / `zrpc.go` / `SessionEvents` 等）の更新で、hooks 周りの RPC スキーマが変化。手書き公開 API の破壊的変更ではないが、hooks を使う場合は新しい生成型に追従する必要がある。Java hook テストの整形や Rust の CodeQL 指摘対応も含む。

**既存利用者への影響**

更新版に上げる際、hooks 関連の生成型 / イベントが変わっている点に留意。通常のアプリコードへの直接の移行作業は基本的に不要。

### [#1827](https://github.com/github/copilot-sdk/pull/1827) — Fix flaky C# permission E2E assertions

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +60 / -20
- マージ日時 (UTC): `2026-06-29 17:58:01`

**変更概要**

.NET の `PermissionE2ETests` で不安定だったアサーションを修正する PR。テストの安定化のみが目的で、製品コードの挙動は変わらない。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/PermissionE2ETests.cs` | 60 | 20 |

</details>

<details><summary>コミット (1 件)</summary>

- `b09a73e` Fix flaky permission E2E assertions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変化なし。E2E テストのアサーション修正のみで、破壊的変更なし。

**既存利用者への影響**

利用者側の対応は不要。

### [#1823](https://github.com/github/copilot-sdk/pull/1823) — Add GitHub-anchored attachment variants to Attachment enum

- 作者: pallaviraiturkar0 / 状態: MERGED
- ラベル: —
- 変更行数: +337 / -3
- マージ日時 (UTC): `2026-06-29 14:33:56`

**変更概要**

Rust SDK の `Attachment` enum に **GitHub にアンカーされた添付バリアント**を追加する PR。GitHub 上のリソースを指す添付種別を表現できるようにし、match アームを明示化、重複型テストも強化。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/src/types.rs` | 337 | 3 |

</details>

<details><summary>コミット (2 件)</summary>

- `0fe915f` Add GitHub-anchored attachment variants to Attachment enum
- `04451ae` Make attachment match arms explicit and harden duplicate-type test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Rust 公開型 `Attachment` enum にバリアントを追加（後方互換の追加）。match を網羅的（explicit）にする変更を含む。

**既存利用者への影響**

既存の添付処理は概ねそのまま動作。Rust で `Attachment` を網羅的に match している利用者は、新バリアントの分岐追加が必要になる場合がある。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1846 | Forward selfFetchManagedSettings in session.create | open | joshspicer | <https://github.com/github/copilot-sdk/pull/1846> |
| PR | #1845 | [Java] Add `Param<T>` public API type for lambda-defined tools | open | Copilot | <https://github.com/github/copilot-sdk/pull/1845> |
| PR | #1835 | Add experimental GitHub telemetry redirection across all SDKs | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1835> |
| PR | #1833 | Update Java JaCoCo coverage badge | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1833> |
| PR | #1829 | fix(python): terminate owned CLI process trees on stop | open | syf2211 | <https://github.com/github/copilot-sdk/pull/1829> |
| PR | #1826 | Remove Java JaCoCo badge auto-update pipeline | open | Copilot | <https://github.com/github/copilot-sdk/pull/1826> |
| PR | #1822 | docs: document EnableSessionStore and one-shot session guidance | open | syf2211 | <https://github.com/github/copilot-sdk/pull/1822> |
| PR | #1785 | Update Java JaCoCo coverage badge | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1785> |
| Issue | #1844 | [Java] Tool-as-lambda 4.6: Update Java docs and ADR cross-links | open | edburns | <https://github.com/github/copilot-sdk/issues/1844> |
| Issue | #1843 | [Java] Tool-as-lambda 4.5: Add Java E2E integration test with replay proxy | open | edburns | <https://github.com/github/copilot-sdk/issues/1843> |
| Issue | #1842 | [Java] Tool-as-lambda 4.4: Add unit tests for API behavior and validation | open | edburns | <https://github.com/github/copilot-sdk/issues/1842> |
| Issue | #1841 | [Java] Tool-as-lambda 4.3: Implement schema + coercion internals for Param<T> | open | edburns | <https://github.com/github/copilot-sdk/issues/1841> |
| Issue | #1840 | [Java] Tool-as-lambda 4.2: Implement ToolDefinition from*/fromAsync* overloads | open | edburns | <https://github.com/github/copilot-sdk/issues/1840> |
| Issue | #1839 | [Java] Tool-as-lambda 4.1: Add public API types for lambda-defined tools | open | edburns | <https://github.com/github/copilot-sdk/issues/1839> |
| Issue | #1837 | [Java] Rename: `./src/main/java/com/github/copilot/tool/Param.java` to be `CopilotToolParam` | closed | edburns | <https://github.com/github/copilot-sdk/issues/1837> |
| Issue | #1836 | [Java] `@CopilotTool` ergonomics: Enforce non-blank @Param description at compile time | open | edburns | <https://github.com/github/copilot-sdk/issues/1836> |
| Issue | #1834 | [aw] Detection Runs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1834> |
| Issue | #1831 | [Java] `@CopilotTool` ergonomics: Support hidden ToolInvocation parameter injection | closed | edburns | <https://github.com/github/copilot-sdk/issues/1831> |
| Issue | #1830 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1830> |
| Issue | #1825 | Remove the Java JaCoCo coverage badge and automated workflow | open | brunoborges | <https://github.com/github/copilot-sdk/issues/1825> |
| Issue | #1824 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1824> |
| Issue | #1817 | Create sub-issues, assignable to copilot, for implementation phases in Phase 4 | closed | edburns | <https://github.com/github/copilot-sdk/issues/1817> |
| Issue | #1816 | Fill in details of phases 1 - 3 of plan | closed | edburns | <https://github.com/github/copilot-sdk/issues/1816> |
