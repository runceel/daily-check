# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 6 |
| クローズ Issue          | 5 |
| 主要コントリビューター  | github-actions[bot], Copilot, edburns |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

GitHub Copilot SDK は、Java でのツール定義の使いやすさと、生成コード・依存関係の更新を通じて SDK の実装基盤を整備しています。今週は、Java で lambda ベースのツール定義に近づく改善と、`@github/copilot` の取り込みが中心でした。利用者視点では、既存の API を壊さずに実装の表現力を広げる方向です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1897](https://github.com/github/copilot-sdk/pull/1897) — test(java): add arity 0 and arity 2 coverage to ErgonomicToolDefinitionIT

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +186 / -0
- マージ日時 (UTC): `2026-07-03 03:29:36`

**変更概要**

この PR は、Java SDK の ErgonomicToolDefinition において、arity 0 と arity 2 のツール定義を E2E テストでカバーするためのものです。ゼロ引数・2引数のツールが期待どおり生成・解釈されることを確認し、snapshot でも挙動差異が出ないようにしています。補助的に、手書きテストツールに不足していた `get_status` / `combine_values` も追加されています。対象はテスト・fixture で、既存の公開 API 仕様そのものは変えません。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicTestTools$$CopilotToolMeta.java` | 19 | 0 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicTestTools.java` | 11 | 0 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicToolDefinitionIT.java` | 114 | 0 |
| `test/snapshots/tools/ergonomic_tool_arity0.yaml` | 21 | 0 |
| `test/snapshots/tools/ergonomic_tool_arity2.yaml` | 21 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `5596a39` test(java): add arity 0 and arity 2 coverage to ErgonomicToolDefiniti…
- `bf053b0` fix(java): add missing get_status and combine_values to hand-written …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャの変更はなく、`ToolDefinition` 周辺のユーザー向け公開 API には新しい契約が追加されていません。代わりに、Java 側のテスト用ツールメタデータと snapshot が補強され、lambda ベースの ergonomics 実装に対する回帰防止が強化されています。

**既存利用者への影響**

移行作業は不要です。Java でツール定義を使う開発者は、今後の挙動変更に備えてテストカバレッジが増えたことを確認すれば十分です。

### [#1895](https://github.com/github/copilot-sdk/pull/1895) — Edburns/1810 java tool ergonomics tool as lambda seeking review

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +3123 / -2
- マージ日時 (UTC): `2026-07-02 22:46:33`

**変更概要**

この PR は、Java でツール定義をより自然な lambda 形式で書けるようにする大規模な ergonomics 改善です。`ToolDefinition` と `Param` の実装が整理され、パラメータの型変換・スキーマ生成に関する新しい抽象が導入されています。README と ADR も更新され、今後の API の標準的な使い方が文書化されています。既存実装を壊すのではなく、新しい記法を追加する形です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/README.md` | 67 | 0 |
| `java/docs/adr/adr-006-tool-definition-inline.md` | 118 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ParamCoercion.java` | 197 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ParamSchema.java` | 190 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ToolDefinition.java` | 571 | 2 |
| `java/src/main/java/com/github/copilot/tool/Param.java` | 261 | 0 |
| `java/src/test/java/com/github/copilot/e2e/ErgonomicToolDefinitionIT.java` | 46 | 0 |
| `java/src/test/java/com/github/copilot/rpc/ParamCoercionTest.java` | 362 | 0 |
| `java/src/test/java/com/github/copilot/rpc/ParamSchemaTest.java` | 436 | 0 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionLambdaTest.java` | 613 | 0 |
| `java/src/test/java/com/github/copilot/tool/ParamTest.java` | 262 | 0 |

</details>

<details><summary>コミット (58 件)</summary>

- `beeaa2a` ADR-006
- `37c3bc3` Plan
- `f98bd15` GUTDODP
- `88ab0b4` GUTDODP
- `ae642e4` On branch edburns/1810-java-tool-ergonomics-tool-as-lambda GOTDODP
- `6bb0044` On branch edburns/1810-java-tool-ergonomics-tool-as-lambda Completed …
- `ddf691e` GUTDODP
- `4fdb0c1` GUTDODP
- _... 他 50 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Java 向けの公開 API が拡張され、inline tool definition をより簡潔に表現できるようになっています。新しい `Param` / coercion / schema の概念が追加され、lambda からツール定義を生成する際の基盤が強化されています。破壊的な削除は見当たらず、既存のスタイルは維持できます。

**既存利用者への影響**

既存の Java コードはそのまま動作する見込みですが、今後の実装では新しい lambda ベースの記法を採用する選択肢が増えます。特に新規実装では、従来の明示的な定義スタイルと比較しながら移行検討する価値があります。

### [#1892](https://github.com/github/copilot-sdk/pull/1892) — Update @github/copilot to 1.0.69-0

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +113 / -113
- マージ日時 (UTC): `2026-07-02 15:26:22`

**変更概要**

`@github/copilot` の依存バージョンを `1.0.69-0` へ更新する PR です。Java / Node / harness 関連の package-lock と依存関係が更新され、生成コードやサンプルのベースラインが揃えられています。差分は主に依存関係の更新と整合性確保で、機能追加そのものは限定的です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `nodejs/package-lock.json` | 36 | 36 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `test/harness/package-lock.json` | 36 | 36 |
| `test/harness/package.json` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b307c51` Update @github/copilot to 1.0.69-0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更は直接的な API 追加・削除ではなく、SDK の依存バージョン更新です。対象のパッケージ定義や lockfile が更新されるため、生成コードの再生成や依存解決の再確認を行うと安全です。

**既存利用者への影響**

通常の利用者には大きな移行作業は不要ですが、依存関係をロックしている環境では再解決が必要になる場合があります。特に CI で固定バージョンを使っている場合は、更新後の挙動差分を確認するとよいです。

### [#1886](https://github.com/github/copilot-sdk/pull/1886) — Update @github/copilot to 1.0.68

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +1549 / -626
- マージ日時 (UTC): `2026-07-02 12:52:45`

**変更概要**

`@github/copilot` を `1.0.68` に更新し、生成コード側に新しい RPC/モデル定義を取り込んでいます。Java では `SessionMetadata` や context attribution / slash command 系の型が追加・更新されており、SDK から利用可能な RPC の表現が広がりました。依存関係と generated files が一括で更新されるため、差分のスコープはやや大きめです。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 166 | 50 |
| `go/rpc/zrpc.go` | 158 | 56 |
| `go/rpc/zrpc_encoding.go` | 2 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/ContextHeaviestMessage.java` | 33 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/ServerSessionsApi.java` | 0 | 11 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SessionMetadataApi.java` | 27 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SessionMetadataGetContextAttributionParams.java` | 6 | 3 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SessionMetadataGetContextAttributionResult.java` | 72 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SessionMetadataGetContextHeaviestMessagesParams.java` | 6 | 7 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SessionMetadataGetContextHeaviestMessagesResult.java` | 33 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SlashCommandInput.java` | 3 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SlashCommandInputChoice.java` | 29 | 0 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `ff69593` Update @github/copilot to 1.0.68

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成コードの追加・更新が中心で、Java では `SessionMetadataApi` / `ContextAttribution` / `SlashCommandInput` 系の型が新たに組み込まれています。これらは新しい RPC 機能に対応するための型追加であり、直接的な削除はありませんが、生成コードを直接参照している実装は再確認が必要です。

**既存利用者への影響**

既存の利用者に対して即時の破壊的変更はありませんが、generated classes を直接扱っている場合は再ビルドや型の差分確認が必要です。特に SDK 構成をカスタム生成しているケースでは、差分を見ながら更新するのが安全です。

### [#1885](https://github.com/github/copilot-sdk/pull/1885) — [Java] Align inline tool docs with final lambda API and ADR links

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +82 / -6
- マージ日時 (UTC): `2026-07-02 01:55:50`

**変更概要**

この PR は、Java 側の inline tool docs を final lambda API と ADR リンクに合わせて整える文書更新です。実装コードの挙動変更ではなく、サンプルや説明文を最新の設計に寄せています。Java ユーザーが新しい tool-as-lambda 方式を読んだときに迷わないようにするための品質改善です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md` | 1 | 1 |
| `java/README.md` | 67 | 0 |
| `java/docs/adr/adr-006-tool-definition-inline.md` | 14 | 5 |

</details>

<details><summary>コミット (4 件)</summary>

- `63801e8` Initial plan
- `2c30fd9` Merge base branch edburns/1810-java-tool-ergonomics-tool-as-lambda
- `6c5d86c` [Java] Align inline tool docs with final lambda API and ADR links
- `aaa934b` fix: add CompletableFuture import to async snippet and remove invalid…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャや実装ロジックの変更はなく、README / ADR の参照先とサンプルコードが更新されています。ドキュメントと実装のズレを埋めるためのメンテナンス対応です。

**既存利用者への影響**

移行作業は不要です。新規利用者が読み手として迷わないようになるため、導入時の理解コストを下げる効果があります。

### [#1833](https://github.com/github/copilot-sdk/pull/1833) — Update Java JaCoCo coverage badge

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +6 / -6
- マージ日時 (UTC): `2026-07-02 12:53:03`

**変更概要**

Java の JaCoCo カバレッジバッジを更新するメンテナンス PR です。実装自体の挙動変更はなく、カバレッジ表示の値を最新の生成結果へ更新しています。CI やレポートの可視性を保つための軽微な保守作業です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/badges/jacoco-generated.svg` | 3 | 3 |
| `.github/badges/jacoco-handwritten.svg` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `137618b` Update Java JaCoCo coverage badge

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や挙動の変更はありません。バッジ生成対象の SVG だけが更新されており、実行コード・テストロジックへの影響はありません。

**既存利用者への影響**

移行や対応は不要です。開発者がカバレッジ状況を確認する際の表示が最新状態に更新されるだけです。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1826 | Remove Java JaCoCo badge auto-update pipeline | Copilot | <https://github.com/github/copilot-sdk/pull/1826> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1898 | Restrict block-remove-before-merge check to PRs targeting main | open | edburns | <https://github.com/github/copilot-sdk/pull/1898> |
| PR | #1891 | Update Java JaCoCo coverage badge | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1891> |
| Issue | #1896 | Feature Request: mutate the active tool list on a live session (SDK re-triage of #735) | open | ChrisKrawczyk | <https://github.com/github/copilot-sdk/issues/1896> |
| Issue | #1894 | Seeking review: tool-as-lambda | closed | edburns | <https://github.com/github/copilot-sdk/issues/1894> |
| Issue | #1893 | Improve velocity of agentic feature development | open | edburns | <https://github.com/github/copilot-sdk/issues/1893> |
| Issue | #1889 | CustomAgents - Ignores agents loaded from .github/agents folder | open | shudles | <https://github.com/github/copilot-sdk/issues/1889> |
| Issue | #1888 | CustomAgentsLocalOnly - Incorrect Behaviour | open | shudles | <https://github.com/github/copilot-sdk/issues/1888> |
| Issue | #1887 | EnableConfigDiscovery - Incorrect Behaviour | open | shudles | <https://github.com/github/copilot-sdk/issues/1887> |
| Issue | #1884 | [Java] Tool-as-lambda 4.6: Update Java docs and ADR cross-links | closed | edburns | <https://github.com/github/copilot-sdk/issues/1884> |
| Issue | #1825 | Remove the Java JaCoCo coverage badge and automated workflow | closed | brunoborges | <https://github.com/github/copilot-sdk/issues/1825> |
| Issue | #1810 | [Java] `@CopilotTool` ergonomics: Define tool with lambda | closed | edburns | <https://github.com/github/copilot-sdk/issues/1810> |
| Issue | #1790 | [Java] @CopilotTool ergonomics: Validate @Param defaultValue parseability at compile time | closed | edburns | <https://github.com/github/copilot-sdk/issues/1790> |
