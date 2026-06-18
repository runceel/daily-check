# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 9 |
| オープン中の新規 PR     | 14 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 8 |
| クローズ Issue          | 5 |
| 主要コントリビューター  | Copilot, github-actions[bot], edburns, scottaddie, MackinnonBuck |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1685](https://github.com/github/copilot-sdk/pull/1685) — Fix Dependabot security alerts: bump esbuild, tsx, js-yaml （PR / merged / Copilot）
  Node / codegen / test harness 周辺の依存脆弱性対応で、SDK 利用者・メンテナーは更新後の lockfile を取り込んで supply-chain 警告が解消するか確認してください。

## このリポジトリの要点

Copilot SDK は依存脆弱性対応 (#1685) に加え、`@github/copilot` 1.0.63 / 1.0.64-0 への更新で各言語の generated RPC / session event 型と E2E snapshot が大きく更新されました。
Java generated package の `package-info.java` 生成 (#1695) や cross-SDK E2E テスト移植 (#1691) により、複数言語 SDK の整合性確認が強化されています。
オープン PR では tool invocation の cancellation を各言語へ通す作業 (#1701〜#1707) が並行しており、次回も cross-SDK API 変更候補として追跡対象です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1685](https://github.com/github/copilot-sdk/pull/1685) — Fix Dependabot security alerts: bump esbuild, tsx, js-yaml

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +580 / -654
- マージ日時 (UTC): `2026-06-16 16:00:16`

**変更概要**

Dependabot security alerts に対応するため、`esbuild`、`tsx`、`js-yaml` など Node 系依存を更新しています。
Node SDK、本体サンプル、Java / docs-validation / test harness / codegen 用の lockfile が広く更新され、開発・生成・テスト環境の脆弱性警告を減らす変更です。
SDK の公開機能追加ではなく、ビルド・検証ツールチェーンを安全な依存バージョンへ寄せるメンテナンスです。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/scripts/codegen/package-lock.json` | 107 | 107 |
| `nodejs/package-lock.json` | 125 | 139 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 112 | 136 |
| `scripts/codegen/package-lock.json` | 13 | 3 |
| `scripts/docs-validation/package-lock.json` | 111 | 133 |
| `test/harness/package-lock.json` | 111 | 135 |

</details>

<details><summary>コミット (1 件)</summary>

- `96a40e9` Fix Dependabot security alerts: bump esbuild, tsx, js-yaml

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `package.json` / `package-lock.json` に集中しており、生成済み SDK API のシグネチャ変更はありません。
破壊的変更ではなく、依存パッケージのセキュリティ更新です。

**既存利用者への影響**

通常はコード移行不要ですが、SDK をソースからビルド・生成している利用者は lockfile 更新後に install / test を再実行してください。
古い lockfile を固定している派生環境では、Dependabot 警告が残らないよう更新が必要です。

### [#1712](https://github.com/github/copilot-sdk/pull/1712) — Update Azure managed identity setup docs

- 作者: scottaddie / 状態: MERGED
- ラベル: —
- 変更行数: +106 / -58
- マージ日時 (UTC): `2026-06-17 21:45:52`

**変更概要**

Azure managed identity setup ドキュメントを更新し、Copilot SDK を Azure Managed Identity で構成する手順を整理しています。
変更は `docs/setup/azure-managed-identity.md` のみで、前提条件、設定手順、説明の明確化が中心です。
Azure 上で SDK を運用する利用者や導入手順を参照するチームに影響します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/setup/azure-managed-identity.md` | 106 | 58 |

</details>

<details><summary>コミット (1 件)</summary>

- `9956416` Update Azure managed identity docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ドキュメント更新のみで、API シグネチャや生成コードの変更はありません。
破壊的変更はありません。

**既存利用者への影響**

既存コードの移行は不要です。
Azure Managed Identity でのセットアップを行う場合は、更新後の手順に沿って構成値や権限付与を確認してください。

### [#1697](https://github.com/github/copilot-sdk/pull/1697) — Update @github/copilot to 1.0.64-0

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +5795 / -1274
- マージ日時 (UTC): `2026-06-17 14:54:48`

**変更概要**

`@github/copilot` を 1.0.64-0 に更新し、それに伴う各言語 SDK の generated schema / RPC / session event 型を再生成しています。
Dotnet、Go、Java、Node、Python、Rust など広範な generated code と E2E snapshot が更新され、CI failure 修正や cross-platform snapshot 調整も含まれます。
セッション todo、hook lifecycle、permissions、snapshot matching など runtime protocol 連携のテスト期待値にも影響しています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 490 | 10 |
| `dotnet/src/Generated/SessionEvents.cs` | 568 | 5 |
| `dotnet/test/E2E/HookLifecycleAndOutputE2ETests.cs` | 5 | 6 |
| `dotnet/test/E2E/SessionTodosChangedE2ETests.cs` | 3 | 1 |
| `go/internal/e2e/hooks_extended_e2e_test.go` | 12 | 10 |
| `go/internal/e2e/permissions_e2e_test.go` | 1 | 1 |
| `go/internal/e2e/session_todos_changed_e2e_test.go` | 3 | 1 |
| `go/rpc/zrpc.go` | 324 | 5 |
| `go/rpc/zrpc_encoding.go` | 6 | 0 |
| `go/rpc/zsession_encoding.go` | 205 | 5 |
| `go/rpc/zsession_events.go` | 212 | 42 |
| `go/zsession_events.go` | 26 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `45b29bc` Update @github/copilot to 1.0.64-0
- `7f9faa7` Fix CI failures from 1.0.64-0 schema regeneration
- `f91adab` Fix remaining CI failures from schema regeneration
- `469dbb2` Regenerate Node E2E snapshots for 1.0.64-0
- `8ce33c6` Normalize platform-specific shell tool names in snapshot matching
- `15f3461` Make vision_disabled snapshot cross-platform
- `d54ddfb` Make session_todos_changed deterministic via single sql call
- `acb410f` Fix Go E2E tests for 1.0.64-0 (report_intent removal)
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

generated RPC / session event 型が大きく更新され、Go では `zrpc` / `zsession_events`、.NET では `Generated/Rpc.cs` / `SessionEvents.cs` が大幅に増えています。
コミットには `report_intent` removal に伴う Go E2E 修正や snapshot 再生成が含まれます。破壊的変更として明示された PR ではありませんが、protocol 追従による型・イベント差分が大きい変更です。

**既存利用者への影響**

SDK の generated 型やイベントを直接参照している利用者は、1.0.64-0 への更新時にコンパイル差分と snapshot 差分を確認してください。
高レベル API だけを使う場合も、E2E で session / hook / permission 周辺の挙動確認を推奨します。

### [#1695](https://github.com/github/copilot-sdk/pull/1695) — Generate package-info.java for generated packages

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +184 / -0
- マージ日時 (UTC): `2026-06-16 23:33:51`

**変更概要**

Java の generated package に `package-info.java` を生成するよう codegen を拡張しています。
`java.ts` の codegen に生成処理が追加され、`com.github.copilot.generated` と `com.github.copilot.generated.rpc` に package-level 情報ファイルが追加されました。
Java SDK のドキュメント生成や package metadata の整備に関する改善です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/scripts/codegen/java.ts` | 101 | 0 |
| `java/src/generated/java/com/github/copilot/generated/package-info.java` | 45 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/package-info.java` | 38 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `2c74ffa` Generate package-info.java for generated packages

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい runtime API ではなく、Java generated package に package-level metadata を出力する codegen 拡張です。
既存クラスのシグネチャ変更や破壊的変更は確認できません。

**既存利用者への影響**

Java SDK 利用者のコード移行は不要です。
docs / javadoc / package metadata を検査するビルドでは、新しい `package-info.java` が含まれることを前提に確認してください。

### [#1691](https://github.com/github/copilot-sdk/pull/1691) — Port `shouldUseReplacedIdentitySectionInResponse` E2E test to dotnet, go, nodejs, python, and rust

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +243 / -0
- マージ日時 (UTC): `2026-06-16 22:08:53`

**変更概要**

Java のみで確認されていた `shouldUseReplacedIdentitySectionInResponse` E2E テストを、.NET、Go、Node.js、Python、Rust に移植しています。
各言語の E2E テストファイルが追加され、system message sections の replaced identity section 応答が SDK 横断で同じように検証されるようになりました。
機能追加ではなく、言語間の挙動差を検出するテストカバレッジ強化です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/SystemMessageSectionsE2ETests.cs` | 43 | 0 |
| `go/internal/e2e/system_message_sections_e2e_test.go` | 57 | 0 |
| `nodejs/test/e2e/system_message_sections.e2e.test.ts` | 38 | 0 |
| `python/e2e/test_system_message_sections_e2e.py` | 44 | 0 |
| `rust/tests/e2e.rs` | 2 | 0 |
| `rust/tests/e2e/system_message_sections.rs` | 59 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `33ab44a` Initial plan
- `ce2857c` Port shouldUseReplacedIdentitySectionInResponse E2E test to all 5 non…
- `c67f56f` fix(python): fix ruff format and lint violations in system_message_se…
- `807cb85` Merge branch 'main' into copilot/port-java-test-to-multiple-languages

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変更はなく、E2E テスト追加が中心です。
`SystemMessageSections` 周辺の応答構造を各言語で検証するため、SDK 実装間の互換性保証が強くなります。

**既存利用者への影響**

利用者側の移行は不要です。
SDK 実装者は、system message sections / identity replacement の挙動が全言語で揃っているかを今後の変更時にも確認できます。

### [#1686](https://github.com/github/copilot-sdk/pull/1686) — Update @github/copilot to 1.0.63

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +330 / -138
- マージ日時 (UTC): `2026-06-16 16:00:01`

**変更概要**

`@github/copilot` を 1.0.63 に更新し、generated code と関連 E2E テストを再生成しています。
各言語の RPC / session event 型、Java generated class、Node / Python / Rust 側の依存や schema 追従が更新されています。
特に WorkspacesDiffResponse の `ignore_whitespace` field に伴う Rust E2E 修正が含まれ、protocol 追従の色が強い変更です。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 11 | 2 |
| `dotnet/src/Generated/SessionEvents.cs` | 15 | 0 |
| `go/rpc/zrpc.go` | 23 | 0 |
| `go/rpc/zrpc_encoding.go` | 14 | 10 |
| `go/rpc/zsession_encoding.go` | 6 | 4 |
| `go/rpc/zsession_events.go` | 6 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantUsageEvent.java` | 5 | 1 |
| `java/src/generated/java/com/github/copilot/generated/ToolExecutionCompleteResult.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SessionWorkspacesDiffParams.java` | 3 | 1 |
| `nodejs/package-lock.json` | 36 | 36 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `9d6fb21` Update @github/copilot to 1.0.63
- `6e0894a` Fix Rust E2E test for new ignore_whitespace field on WorkspacesDiffRe…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

generated 型に field 追加・エンコード差分が入り、`AssistantUsageEvent`、`ToolExecutionCompleteResult`、`SessionWorkspacesDiffParams` などが更新されています。
明示的な破壊的変更ではありませんが、generated model を直接扱うコードでは新 field や encoding 変更への追従が必要になる可能性があります。

**既存利用者への影響**

SDK 利用者は通常のバージョン更新として扱えますが、generated 型を直接参照する場合はコンパイル差分を確認してください。
Rust / workspace diff 周辺の snapshot や期待値を持つテストは更新が必要になる可能性があります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1683 | Rename SystemPromptSections → SystemMessageSections for cross-SDK consistency | edburns | <https://github.com/github/copilot-sdk/pull/1683> |
| #1660 | fix: skip CLI download in build.rs when DOCS_RS env var is set | Copilot | <https://github.com/github/copilot-sdk/pull/1660> |
| #1633 | Surface ModelBilling.tokenPrices on public SDK types | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1633> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1713 | Add preamble section and preserve action to SDKs | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1713> |
| PR | #1711 | Add capi.disableWebSocketResponses session option | open | dereklegenzoff | <https://github.com/github/copilot-sdk/pull/1711> |
| PR | #1710 | ci(rust): add docs.rs simulation step to prevent publish regressions | open | Copilot | <https://github.com/github/copilot-sdk/pull/1710> |
| PR | #1707 | java: plumb AbortSignal through ToolInvocation for cooperative cancellation | open | gimenete | <https://github.com/github/copilot-sdk/pull/1707> |
| PR | #1706 | feat(rust): plumb CancellationToken through ToolInvocation for handler cancellation | open | gimenete | <https://github.com/github/copilot-sdk/pull/1706> |
| PR | #1705 | go: plumb context cancellation through ToolInvocation for session.Abort() | open | gimenete | <https://github.com/github/copilot-sdk/pull/1705> |
| PR | #1704 | dotnet: plumb CancellationToken through ToolInvocation for cooperative cancellation | open | gimenete | <https://github.com/github/copilot-sdk/pull/1704> |
| PR | #1703 | feat(python): plumb AbortSignal through ToolInvocation for handler cancellation | open | gimenete | <https://github.com/github/copilot-sdk/pull/1703> |
| PR | #1701 | feat(nodejs): plumb AbortSignal through ToolInvocation (#1433) | open | gimenete | <https://github.com/github/copilot-sdk/pull/1701> |
| PR | #1700 | fix(nodejs): validate sendAndWait timeout to fix malformed error message | open | gimenete | <https://github.com/github/copilot-sdk/pull/1700> |
| PR | #1698 | Bump org.sonatype.central:central-publishing-maven-plugin from 0.10.0 to 0.11.0 in /java in the java-maven-deps group | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1698> |
| PR | #1693 | Add per-call tool context provider to Python SDK | open | idryzhov | <https://github.com/github/copilot-sdk/pull/1693> |
| PR | #1692 | Start iterating on #1682 On branch edburns/1682-java-tool-ergonomics | open | edburns | <https://github.com/github/copilot-sdk/pull/1692> |
| PR | #1689 | LLM inference callback support | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1689> |
| PR | #1676 | Fix to_timedelta_int comment to accurately describe banker's rounding | closed | Copilot | <https://github.com/github/copilot-sdk/pull/1676> |
| Issue | #1709 | Verify release 1.0.2 publishes to docs.rs without error | open | edburns | <https://github.com/github/copilot-sdk/issues/1709> |
| Issue | #1708 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1708> |
| Issue | #1702 | Add additionalContentExclusionPolicies to SessionConfig (public high-level API) | open | wolfgangcolsman | <https://github.com/github/copilot-sdk/issues/1702> |
| Issue | #1699 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1699> |
| Issue | #1694 | Java: no `package-info.java` for generated packages | closed | edburns | <https://github.com/github/copilot-sdk/issues/1694> |
| Issue | #1690 | Make it so functionality of Java-only test `shouldUseReplacedIdentitySectionInResponse` is replicated in other languages | closed | edburns | <https://github.com/github/copilot-sdk/issues/1690> |
| Issue | #1688 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1688> |
| Issue | #1687 | Support Google Agent Platform (Vertex AI) as a BYOK provider | open | gael-ft | <https://github.com/github/copilot-sdk/issues/1687> |
| Issue | #1679 | Java: Consistency: SystemPromptSections → SystemMessageSections | closed | edburns | <https://github.com/github/copilot-sdk/issues/1679> |
| Issue | #1659 | Fix error in docs.rs: `docs.rs failed to build github-copilot-sdk-1.0.1` | closed | edburns | <https://github.com/github/copilot-sdk/issues/1659> |
| Issue | #1641 | SDK built-in tool set differs from the Copilot CLI — `todo` (and others) missing in `.NET` SDK sessions | closed | NiceAsiv | <https://github.com/github/copilot-sdk/issues/1641> |
