# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-11 23:30:11 〜 2026-08-13 00:02:03 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 5 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | edburns, stephentoub |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Copilot SDK では Java の Maven 公開処理と Linux x64 のインプロセス Copilot CLI 実装が整備されました。  
全 SDK に rewind 機能が追加され、セッション状態を巻き戻す共通機能が各言語へ広がっています。  
Windows x64 のネイティブ ランタイム、Rust の起動イベント購読、AG-UI 対応なども継続して検討されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2324](https://github.com/github/copilot-sdk/pull/2324) — [Java] Fix java publish to maven

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +8 / -2
- マージ日時 (UTC): `2026-08-12 23:55:08`

**変更概要**

Java SDK の Maven 公開時に、ドキュメントのバージョン更新対象を適切に限定するようスクリプトを修正しました。  
これにより、公開処理で関係のないドキュメントまで書き換えることを防ぎ、Maven 配布物の更新を安定させます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/scripts/test-update-documentation-versions.sh` | 5 | 0 |
| `java/scripts/update-documentation-versions.sh` | 3 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `736bca8` fix(java): scope documentation version updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更はドキュメント バージョン更新スクリプトの対象範囲に限定され、SDK の API シグネチャや新しい公開抽象は追加されていません。  
利用者向けの **破壊的変更** は確認できません。

**既存利用者への影響**

Java SDK の利用者に移行作業は不要です。  
Maven 公開を自動化している開発者は、更新対象のドキュメントが期待どおりに限定されることを確認してください。

### [#2301](https://github.com/github/copilot-sdk/pull/2301) — [java] Add linux-x64 implementation of in process Copilot CLI

- 作者: edburns / 状態: MERGED
- ラベル: `dependencies`
- 変更行数: +7019 / -982
- マージ日時 (UTC): `2026-08-12 19:57:27`

**変更概要**

Java SDK に Linux x64 向けのインプロセス Copilot CLI 実装を追加しました。  
Rust CLI ランタイムをネイティブ モジュールとして組み込み、自己完結した Maven POM、JNA 依存、ネイティブ長さ型などを整備しています。  
Linux x64 の Java 利用者は Node.js に依存せず、同一プロセス内で CLI を起動できる構成を利用できます。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.githooks/pre-commit` | 3 | 3 |
| `.github/actions/java-test-report/action.yml` | 3 | 3 |
| `.github/copilot-instructions.md` | 7 | 7 |
| `.github/skills/new-java-e2e-test-yaml-and-test/SKILL.md` | 4 | 4 |
| `.github/workflows/codegen-check.yml` | 2 | 2 |
| `.github/workflows/docs-validation.yml` | 2 | 1 |
| `.github/workflows/java-adapt-handwritten-code-to-accept-upgrade-changes.lock.yml` | 1 | 1 |
| `.github/workflows/java-adapt-handwritten-code-to-accept-upgrade-changes.md` | 6 | 6 |
| `.github/workflows/java-codegen-check.yml` | 2 | 2 |
| `.github/workflows/java-codegen-fix.lock.yml` | 1 | 1 |
| `.github/workflows/java-codegen-fix.md` | 10 | 10 |
| `.github/workflows/java-publish-maven.yml` | 2 | 2 |
| `.github/workflows/java-sdk-tests.yml` | 52 | 7 |
| `.github/workflows/java-smoke-test.yml` | 2 | 2 |
| `.github/workflows/sdk-consistency-review.lock.yml` | 1 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `0adc11f` feat(java): embed Rust CLI runtime as native module
- `d4fbb39` java: add flatten-maven-plugin to produce self-contained deployed POMs
- `e3117ce` java: only release callback GC root after successful connection_close
- `ba36c85` java: remove spike test library references, use real native runtime
- `0f4fbc9` docs: add JNA dependency to in-process mode README snippet
- `5bfd11f` java: add empty javadoc and sources JARs for copilot-native module
- `f6ee1a0` java: use size_t-width type for native length parameters
- `be2d70b` java: remove global JNA callback exception handler
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Java 配布物に `copilot-native` と埋め込み Rust ランタイムを加え、ネイティブ接続と Maven の自己完結 POM を導入しました。  
インプロセス実装を使うための依存関係・リソース管理が追加されていますが、既存 API を削除する **破壊的変更** は記録されていません。

**既存利用者への影響**

既存の Java SDK 利用者に必須の移行はありません。  
Linux x64 のインプロセス モードを使う場合は、JNA とネイティブ モジュールを含む Maven 配布物へ切り替え、Node.js 不要の起動経路を検証してください。

### [#2321](https://github.com/github/copilot-sdk/pull/2321) — Add rewind support across all SDKs

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +920 / -12
- マージ日時 (UTC): `2026-08-12 17:52:38`

**変更概要**

全 SDK でセッションを過去の状態へ巻き戻す rewind 機能を追加しました。  
.NET、Go、Java などのクライアント・セッション設定・RPC 型を更新し、E2E テストと Windows パス正規化も追加しています。  
会話や実行状態を直前の時点へ戻して再試行したい SDK 利用者が、言語をまたいで同じ機能を利用できます。

<details><summary>変更ファイル (30 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 4 | 0 |
| `dotnet/src/Types.cs` | 12 | 0 |
| `dotnet/test/E2E/RewindE2ETests.cs` | 81 | 0 |
| `dotnet/test/Unit/CloneTests.cs` | 2 | 0 |
| `dotnet/test/Unit/SerializationTests.cs` | 4 | 0 |
| `go/client.go` | 2 | 0 |
| `go/client_test.go` | 14 | 8 |
| `go/internal/e2e/rewind_e2e_test.go` | 152 | 0 |
| `go/types.go` | 9 | 0 |
| `java/src/main/java/com/github/copilot/SessionRequestBuilder.java` | 2 | 0 |
| `java/src/main/java/com/github/copilot/rpc/CreateSessionRequest.java` | 18 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionConfig.java` | 37 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ResumeSessionRequest.java` | 18 | 0 |
| `java/src/main/java/com/github/copilot/rpc/SessionConfig.java` | 36 | 0 |
| `java/src/test/java/com/github/copilot/ConfigCloneTest.java` | 4 | 2 |
| _... 他 15 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `e3efa1e` Add rewind support across SDKs
- `0817de8` Fix rewind E2E formatting
- `da4a36a` Normalize rewind paths on Windows
- `680946e` Harden rewind test path construction

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

各 SDK のセッション作成・再開設定に rewind 情報を追加し、Java では `ResumeSessionConfig`／`ResumeSessionRequest` などの RPC 型を拡張しました。  
既存フィールドを削除する **破壊的変更** は記録されておらず、追加フィールドを使わない既存呼び出しは継続利用できます。

**既存利用者への影響**

既存利用者に必須の移行はありません。  
rewind を利用する場合は、各 SDK の新しい設定・セッション API と、状態を巻き戻した後の再実行動作をテストしてください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2319 | [Rust] Add PreparedSession for loss-free startup event subscription | open | jmoseley | <https://github.com/github/copilot-sdk/pull/2319> |
| PR | #2317 | Bump the "all" group with 5 updates across multiple ecosystems | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2317> |
| PR | #2316 | build(deps): bump tsx from 4.23.1 to 4.23.11 in /java/scripts/codegen in the java-codegen-deps group | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2316> |
| PR | #2315 | [SDK/Factories] Add argsSchema To The Factory Authoring Surface | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2315> |
| PR | #1987 | [Rust] Add wrapper for reading managed settings | closed | jbrown1618 | <https://github.com/github/copilot-sdk/pull/1987> |
| Issue | #2323 | [Java] windows-x64 Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | open | edburns | <https://github.com/github/copilot-sdk/issues/2323> |
| Issue | #2322 | Differentiate SDK traffic from CLI: default integration ID / mandatory integrator ID for SDK consumers | closed | salamichobani | <https://github.com/github/copilot-sdk/issues/2322> |
| Issue | #2320 | Go SDK: CreateSession failure leaks the pre-registered session's processEvents goroutine (non-cloud path) | open | timreimherr | <https://github.com/github/copilot-sdk/issues/2320> |
| Issue | #2318 | Make Copilot SDK consumable for end-users by adding first-class AG-UI protocol support | open | ArlindNocaj | <https://github.com/github/copilot-sdk/issues/2318> |
| Issue | #2314 | Telemetry: add an in-process span sink | open | noamkeidar | <https://github.com/github/copilot-sdk/issues/2314> |
