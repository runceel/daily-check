# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 6 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | edburns, stephentoub, aymenfurter, lutzroeder, github-actions[bot], MRayermannMSFT |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Java のテスト・npm レジストリ対応、Rust CLI プロセスの後始末、全言語 SDK の permission decisionContext 転送が進みました。  
Anthropic replay の正規化と `@github/copilot` 1.0.80 更新も入り、SDK の実行安定性と依存更新が中心です。  
新 API を利用する場合は各言語の permission 型とセッション ライフサイクルを確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2340](https://github.com/github/copilot-sdk/pull/2340) — I assert this is necessary to enable the Java tests to run.

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -496
- マージ日時 (UTC): `2026-08-15 22:37:30`

**変更概要**

Java テストが scoped npm registry 環境でも実行できるよう、npm レジストリ解決と lockfile 方針を修正しました。  
Java POM と Node.js／harness の設定・lockfile を整理し、不要な依存固定を削除しています。  
SDK 利用者の API 変更ではなく、ビルドとテスト環境の再現性を改善する変更です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/pom.xml` | 0 | 2 |
| `nodejs/.npmrc` | 1 | 0 |
| `nodejs/package-lock.json` | 0 | 284 |
| `test/harness/.npmrc` | 1 | 0 |
| `test/harness/package-lock.json` | 0 | 210 |

</details>

<details><summary>コミット (2 件)</summary>

- `25b1ae0` Fix npm registry resolution for Copilot updates
- `c1f5a77` Apply project npm lockfile policy

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

npm レジストリ設定と lockfile の更新のみで、Java SDK の公開 API シグネチャや新規抽象は変更されていません。

**既存利用者への影響**

利用者の移行は不要です。Java SDK をビルドする CI では scoped registry と lockfile の解決結果を確認してください。

### [#2343](https://github.com/github/copilot-sdk/pull/2343) — Fix Anthropic replay normalization for adjacent text blocks

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +85 / -4
- マージ日時 (UTC): `2026-08-15 20:42:30`

**変更概要**

Anthropic の replay で隣接する text block を正規化する処理を修正し、同じ内容が分割・結合されてもモデル プロトコルを再現できるようにしました。  
共有アダプターと replay proxy の変換を更新し、回帰テストを追加しています。  
Anthropic replay を使うテスト harness や互換性検証の安定性が向上します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `test/harness/anthropicMessagesAdapter.ts` | 2 | 1 |
| `test/harness/modelProtocolAdapterShared.ts` | 2 | 0 |
| `test/harness/modelProtocolAdapters.test.ts` | 76 | 0 |
| `test/harness/replayingCapiProxy.ts` | 5 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `6f31be7` Fix Anthropic replay content block normalization

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は replay harness 内の text block 正規化ロジックに限定され、SDK 公開 API の変更はありません。

**既存利用者への影響**

移行は不要です。Anthropic の会話再生テストを持つ利用者は、隣接 text block の期待値を更新後に再確認してください。

### [#2338](https://github.com/github/copilot-sdk/pull/2338) — Fix Java builds with scoped npm registries on macOS

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +71 / -18
- マージ日時 (UTC): `2026-08-14 23:09:03`

**変更概要**

macOS の scoped npm registry で Java ビルドが外部プロセス待ちに依存して失敗する問題を修正しました。  
POM の依存設定とテスト用プロセス起動を見直し、ブロッキング処理を SDK 内のテストヘルパーへ置き換えています。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/pom.xml` | 2 | 0 |
| `java/sdk/src/test/java/com/github/copilot/CliServerManagerTest.java` | 1 | 8 |
| `java/sdk/src/test/java/com/github/copilot/JsonRpcClientTest.java` | 3 | 10 |
| `java/sdk/src/test/java/com/github/copilot/TestProcess.java` | 65 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `63a8478` Fix Java builds with scoped npm registries on macOS
- `d86a54a` Merge branch 'main' into edburns/java-macos-test-changes-from-linux-x…
- `d453dce` Test: replace external blocking processes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Java テスト補助のプロセス起動と POM 設定を変更した内部修正で、SDK 公開 API の変更はありません。

**既存利用者への影響**

利用者の移行は不要です。macOS で Java SDK のテストを実行する CI は scoped registry 環境の再現テストを推奨します。

### [#2292](https://github.com/github/copilot-sdk/pull/2292) — fix(rust): prevent orphaned CLI processes

- 作者: lukehoban / 状態: MERGED
- ラベル: —
- 変更行数: +103 / -3
- マージ日時 (UTC): `2026-08-14 19:32:50`

**変更概要**

Rust の Copilot CLI 起動時に生成したプロセス ツリーをクライアント破棄後も残してしまう問題を修正しました。  
子プロセスを含めて確実に reap する処理と、遅い起動を許容する回帰テストを追加しています。  
Rust／インプロセス利用者の終了時に孤児プロセスやポート残留が発生しにくくなります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/src/lib.rs` | 103 | 3 |

</details>

<details><summary>コミット (5 件)</summary>

- `5ac6b1f` fix(rust): reap spawned process trees
- `0f89915` style(rust): group Windows process imports
- `05544d9` fix(rust): prevent orphaned CLI processes
- `143dd3f` test(rust): reproduce orphaned CLI on client drop
- `4b67f3e` test(rust): tolerate slow child startup

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Rust ランタイムのプロセス終了処理と子プロセス ツリー回収を更新しました。公開 SDK の API シグネチャ変更はありません。

**既存利用者への影響**

移行は不要です。クライアント破棄後の CLI 終了を監視する利用者は、更新後にプロセスと一時ファイルが確実に解放されることを確認してください。

### [#2334](https://github.com/github/copilot-sdk/pull/2334) — Update @github/copilot to 1.0.80

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +113 / -113
- マージ日時 (UTC): `2026-08-14 16:32:58`

**変更概要**

Node.js、Java、サンプル、テスト harness の `@github/copilot` 依存を 1.0.80 に更新しました。  
関連する package.json／lockfile と Java コード生成用依存を揃え、SDK と CLI のバージョン差を抑えています。

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

- `c45ae3d` Update @github/copilot to 1.0.80

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存パッケージと lockfile のバージョン更新のみで、SDK の公開 API や新規抽象は変更されていません。

**既存利用者への影響**

アプリケーション コードの移行は不要です。SDK の依存を個別固定している場合は、1.0.80 との互換性を確認してください。

### [#2294](https://github.com/github/copilot-sdk/pull/2294) — sdk: Forward decisionContext on permission replies across languages

- 作者: aymenfurter / 状態: MERGED
- ラベル: —
- 変更行数: +1477 / -93
- マージ日時 (UTC): `2026-08-14 13:25:29`

**変更概要**

権限応答で decisionContext を Rust から .NET、Go、Java、Node.js など各 SDK へ転送できるようにしました。  
言語ごとの permission 型、コンテキスト設定メソッド、RPC シリアライズを追加し、null や attribution の扱いも統一しています。  
承認結果に追加文脈を返すエージェント統合が、言語をまたいで同じ契約を利用できます。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/troubleshooting/compatibility.md` | 1 | 1 |
| `dotnet/src/PermissionDecision.cs` | 9 | 0 |
| `dotnet/src/Session.cs` | 1 | 1 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 206 | 0 |
| `go/permission_context_test.go` | 260 | 0 |
| `go/permissions.go` | 56 | 0 |
| `go/session.go` | 7 | 2 |
| `go/types.go` | 41 | 0 |
| `java/sdk/src/main/java/com/github/copilot/CopilotSession.java` | 1 | 1 |
| `java/sdk/src/main/java/com/github/copilot/rpc/PermissionRequestResult.java` | 42 | 0 |
| `java/sdk/src/test/java/com/github/copilot/rpc/PermissionRequestResultDecisionContextTest.java` | 97 | 0 |
| `nodejs/src/index.ts` | 6 | 0 |
| `nodejs/src/session.ts` | 13 | 2 |
| `nodejs/src/types.ts` | 49 | 2 |
| `nodejs/test/client.test.ts` | 86 | 0 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `c507819` feat(rust): forward decisionContext on permission replies
- `c162ce7` sdk: Forward decisionContext on permission replies across languages
- `c1a784f` sdk(java): Reject null in withContext to match the other SDKs
- `5d74762` sdk: Unwrap value-form attribution in Go and seal the Rust enum
- `7ed8892` sdk(dotnet): Drop fluent WithContext in favor of the settable property
- `8df7154` sdk: Name attribution helpers after each SDK's own conventions
- `575f6aa` sdk(go): Centralize attribution unwrapping in one helper
- `549c30e` sdk(java): Rename withContext to setDecisionContext
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

各 SDK の permission result に decision context を保持するフィールドと設定 API を追加しました。Java の `setDecisionContext` など名称変更や、.NET の fluent API から settable property への整理があるため、該当 API を直接使うコードは確認が必要です。

**既存利用者への影響**

既存の権限応答だけなら移行不要です。decisionContext を使う場合は各言語の新しい設定 API へ移行し、null と value-form のシリアライズをテストしてください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2330 | Add built-in plugin directory support | lutzroeder | <https://github.com/github/copilot-sdk/pull/2330> |
| #2315 | [SDK/Factories] Add argsSchema To The Factory Authoring Surface | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2315> |
| #2331 | Fix codegen for internal runtime schemas | stephentoub | <https://github.com/github/copilot-sdk/pull/2331> |
| #2325 | test(java): skip linux runtime tests on other platforms | edburns | <https://github.com/github/copilot-sdk/pull/2325> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2345 | [Java] Clean-up: make it so interim time during implementation produces correct artifacts | open | edburns | <https://github.com/github/copilot-sdk/pull/2345> |
| PR | #2339 | Add Azure Artifacts npm authentication refresh | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2339> |
| PR | #2336 | fix(node): reject sendAndWait on session shutdown | open | connor4312 | <https://github.com/github/copilot-sdk/pull/2336> |
| PR | #2333 | Expose large output config on custom agents | open | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2333> |
| PR | #2328 | Document persistent-file MCP OAuth storage in Rust | open | dy-hu | <https://github.com/github/copilot-sdk/pull/2328> |
| PR | #2332 | Update @github/copilot to 1.0.80-0 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2332> |
| Issue | #2344 | [Java] Clean-up: make it so interim time during implementation produces correct artifacts | open | edburns | <https://github.com/github/copilot-sdk/issues/2344> |
| Issue | #2341 | New | open | Amepten | <https://github.com/github/copilot-sdk/issues/2341> |
| Issue | #2337 | Flaky: Reload_Picks_Up_Extension_Added_After_Session_Create only tolerates one of two transient post-create errors | closed | jbayardo | <https://github.com/github/copilot-sdk/issues/2337> |
| Issue | #2335 | [changelog] Add changelog for v1.0.11 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2335> |
| Issue | #2327 | Add SDK support for registering built-in plugin directories | closed | lutzroeder | <https://github.com/github/copilot-sdk/issues/2327> |
| Issue | #2326 | Add SDK support for registering built-in plugin directories | open | lutzroeder | <https://github.com/github/copilot-sdk/issues/2326> |
| Issue | #2279 | [aw] SDK Consistency Review Agent hit AI credits rate limit | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2279> |
| Issue | #2278 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2278> |
