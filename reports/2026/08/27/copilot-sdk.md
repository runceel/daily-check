# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 17 |
| オープン中の新規 PR     | 13 |
| クローズ (未マージ) PR  | 8 |
| 新規 Issue              | 11 |
| クローズ Issue          | 10 |
| 主要コントリビューター  | edburns, dependabot[bot], roji, github-actions[bot], rinceyuan, OllieinCanada |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2381](https://github.com/github/copilot-sdk/issues/2381) — [Python] `pydantic` unconditionally imported in `tools.py`, breaking low-level Tool API users （Issue / closed / scordio）
  Python の低レベル Tool API 利用者は、`pydantic` の依存関係と修正版への更新要否を確認してください。

## このリポジトリの要点

Copilot SDK は全言語バインディングのイベント契約更新、セッション単位の GitHub token provider、Empty モードのスキル分離を進めました。
Java / Python の E2E と in-process transport の実テストも安定化され、公開・検証経路が強化されています。
低レベル Python Tool API の `pydantic` 必須 import 問題は、利用者が依存関係を確認すべき注意点です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2409](https://github.com/github/copilot-sdk/pull/2409) — Update @github/copilot to 1.0.81-11

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +864 / -208
- マージ日時 (UTC): `2026-08-26 21:43:40`

**変更概要**

`@github/copilot` を 1.0.81-11 に更新し、生成 RPC / セッションイベント定義を各 SDK に反映しました。
permission response capability の公開と autopilot continuation の idle 処理を .NET、Go、Java、Node.js などで同期しています。
SDK 利用者は新しいイベント・権限応答の型とクライアントセッション寿命の挙動を確認してください。

<details><summary>変更ファイル (44 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 81 | 0 |
| `dotnet/src/Generated/SessionEvents.cs` | 69 | 64 |
| `dotnet/src/Session.cs` | 1 | 1 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 60 | 0 |
| `go/rpc/zrpc.go` | 23 | 0 |
| `go/rpc/zsession_events.go` | 2 | 0 |
| `go/session.go` | 3 | 0 |
| `go/session_test.go` | 132 | 0 |
| `go/types.go` | 11 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionIdleEvent.java` | 3 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/GitHubTelemetryClientInfo.java` | 5 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/PermissionDecisionContext.java` | 3 | 1 |
| _... 他 29 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `82a5530` Update @github/copilot to 1.0.81-11
- `81eab84` Update permission context call sites
- `0511ea7` Handle autopilot continuation idles
- `59e707a` Handle autopilot continuation idles across SDKs
- `5535008` Export permission response capability
- `3433381` Export Rust permission response capability

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成 RPC / SessionEvents にイベント型と permission response capability が追加され、SDK 共通のセッションイベント契約が更新されています。
autopilot continuation の idle 処理が各言語に追加されましたが、既存メソッドを削除する変更は示されていません。

**既存利用者への影響**

通常は依存更新のみで移行不要です。イベントや権限応答を型で処理する利用者は、生成コード更新後にビルドと回帰テストを実行してください。

### [#2412](https://github.com/github/copilot-sdk/pull/2412) — Add session-scoped GitHub token providers

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +3931 / -175
- マージ日時 (UTC): `2026-08-26 20:46:52`

**変更概要**

セッションごとに GitHub token provider を設定できる機能を .NET、Go などの SDK に追加しました。
provider のライフサイクル、クリーンアップ、マルチテナンシー向け認証手順をドキュメントとテストで整理しています。
複数セッションや顧客単位で異なる GitHub 認証を扱うアプリが主な対象です。

<details><summary>変更ファイル (54 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CHANGELOG.md` | 8 | 0 |
| `docs/auth/authenticate.md` | 125 | 0 |
| `docs/setup/multi-tenancy.md` | 3 | 1 |
| `dotnet/README.md` | 19 | 0 |
| `dotnet/src/Client.cs` | 142 | 36 |
| `dotnet/src/GitHubTokenProvider.cs` | 77 | 0 |
| `dotnet/src/JsonRpc.cs` | 19 | 7 |
| `dotnet/src/Session.cs` | 15 | 0 |
| `dotnet/src/Types.cs` | 11 | 0 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 255 | 3 |
| `go/README.md` | 19 | 0 |
| `go/client.go` | 206 | 60 |
| `go/github_token_provider.go` | 84 | 0 |
| `go/github_token_provider_test.go` | 344 | 0 |
| `go/session.go` | 69 | 39 |
| _... 他 39 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `4b9d7d9` Add session GitHub token providers
- `57ab421` Clarify GitHub token provider lifecycle
- `4840175` Fix GitHub token provider cleanup
- `d531885` Fix Rust import formatting

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

各 SDK に session-scoped token provider 抽象と設定経路が追加され、Client / Session の初期化・JSON-RPC 認証処理が拡張されています。
既存の固定認証経路を削除する変更ではなく、セッション単位の provider を選べる新機能です。

**既存利用者への影響**

既存の認証方法は通常そのまま利用できます。新機能を使う場合は provider の寿命をセッション終了まで管理し、不要になった token を破棄してください。

### [#2411](https://github.com/github/copilot-sdk/pull/2411) — Stabilize Python and Java E2E harnesses

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +222 / -41
- マージ日時 (UTC): `2026-08-26 19:13:30`

**変更概要**

Python / Java の E2E ハーネスで、シェル RPC、保留作業の再開、Java fixture の扱いを安定化しました。
PowerShell の入れ子実行を避け、cold-resume のロック解放待ちと作業ディレクトリ検証を追加しています。
SDK 実装 API ではなく、E2E テスト基盤の信頼性が影響範囲です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/src/test/java/com/github/copilot/CapiProxy.java` | 6 | 7 |
| `java/sdk/src/test/java/com/github/copilot/CapiProxyTest.java` | 21 | 0 |
| `java/sdk/src/test/java/com/github/copilot/E2ETestContext.java` | 100 | 16 |
| `java/sdk/src/test/java/com/github/copilot/E2ETestContextTest.java` | 39 | 0 |
| `python/e2e/test_pending_work_resume_e2e.py` | 38 | 1 |
| `python/e2e/test_rpc_shell_and_fleet_e2e.py` | 18 | 17 |

</details>

<details><summary>コミット (4 件)</summary>

- `e84e4b9` fix(python): avoid nested PowerShell in shell RPC test
- `99ad937` fix(python): await cold-resume lock release
- `9e70dd5` test(python): verify shell RPC working directory
- `4550721` Stabilize Java E2E fixture handling

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、Python / Java のテスト fixture と E2E 検証タイミングを調整しています。

**既存利用者への影響**

利用者の移行は不要です。E2E を拡張している場合は、明示的なロック解放待ちと作業ディレクトリ検証を参考にしてください。

### [#2414](https://github.com/github/copilot-sdk/pull/2414) — Test real turns over Java in-process transport

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +32 / -6
- マージ日時 (UTC): `2026-08-26 19:00:50`

**変更概要**

Java の in-process transport 上で実際の turn を送受信する統合テストを追加しました。
従来のモック中心の確認よりも、セッション通信と応答処理を実運用に近い経路で検証できます。
Java SDK のテスト品質向上が目的で、公開 API は対象外です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/src/test/java/com/github/copilot/e2e/InProcessTransportIT.java` | 32 | 6 |

</details>

<details><summary>コミット (2 件)</summary>

- `e4362ab` Test real turns over Java in-process transport
- `d0407e9` Merge branch 'main' into edburns/java-strengthen-inprocess-it-test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`InProcessTransportIT` のテストケース追加のみで、SDK API のシグネチャ変更はありません。

**既存利用者への影響**

移行は不要です。Java の in-process transport を実装・検証する開発者は実 turn のテスト例を利用できます。

### [#2413](https://github.com/github/copilot-sdk/pull/2413) — ci(java): show Maven coordinates in publish summaries

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +41 / -1
- マージ日時 (UTC): `2026-08-26 18:46:43`

**変更概要**

Java の Maven 公開ワークフローで、公開した成果物の Maven coordinates をサマリーに表示するようにしました。
release と snapshot の両方で座標を確認でき、利用者が依存指定を確認しやすくなります。
変更は CI の表示処理に限定され、成果物自体の API は変わりません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 24 | 1 |
| `.github/workflows/java-publish-snapshot.yml` | 17 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `8aa0d24` ci(java): show Maven coordinates in publish summaries

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Java SDK のコードや Maven 座標は変更せず、GitHub Actions のサマリー出力を追加しています。

**既存利用者への影響**

利用者の移行は不要です。公開後の座標確認を CI サマリーから行えるようになります。

### [#2410](https://github.com/github/copilot-sdk/pull/2410) — Default ClientMode::Empty to no built-in skills

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +891 / -22
- マージ日時 (UTC): `2026-08-26 14:59:35`

**変更概要**

`ClientMode::Empty` の既定動作を、組み込みスキルを持たない分離モードに変更しました。
各 SDK の Client / Session 設定、スキルポリシー、ドキュメントとテストを更新し、必要な場合だけ組み込みスキルを明示的に許可できます。
既定スキルに依存する利用者はモード設定と実行結果を確認してください。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/skills.md` | 16 | 0 |
| `docs/setup/multi-tenancy.md` | 3 | 0 |
| `dotnet/src/Client.cs` | 7 | 2 |
| `dotnet/src/Types.cs` | 9 | 0 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 144 | 0 |
| `go/client.go` | 2 | 0 |
| `go/client_test.go` | 175 | 1 |
| `go/mode_empty.go` | 12 | 1 |
| `go/types.go` | 8 | 0 |
| `java/sdk/src/main/java/com/github/copilot/CopilotClient.java` | 26 | 7 |
| `java/sdk/src/main/java/com/github/copilot/rpc/ResumeSessionConfig.java` | 26 | 0 |
| `java/sdk/src/main/java/com/github/copilot/rpc/SessionConfig.java` | 26 | 0 |
| `java/sdk/src/test/java/com/github/copilot/UpdateSessionOptionsForModeTest.java` | 27 | 1 |
| `nodejs/src/client.ts` | 5 | 1 |
| `nodejs/src/types.ts` | 7 | 0 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `2f77b18` Add ClientMode::Empty built-in-skill isolation across SDK bindings
- `e24ed24` Fix Python Empty skill policy update
- `eaf960d` Fix Java Empty skill patch after rebase
- `e9bd7ee` Address Empty mode documentation review
- `e50a383` Allow explicit built-in skills in Empty mode
- `86e76b6` Fix Java mode patch Javadoc

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ClientMode::Empty` の意味が「組み込みスキルなし」に変わり、明示的な組み込みスキル許可の設定経路が追加されました。
**⚠ 破壊的変更**: Empty モードで暗黙に提供されていたスキルを前提にするアプリは、必要なスキルを明示設定する必要があります。

**既存利用者への影響**

Empty モードを使う利用者は、従来利用していた組み込みスキルを明示的に有効化してください。ほかのモードや SDK 既定値だけを使う場合は影響を確認するだけで済みます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2401 | Update @github/copilot to 1.0.81-10 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2401> |
| #2402 | Java: add Apple Silicon macOS in-process runtime and native classifier publishing | edburns | <https://github.com/github/copilot-sdk/pull/2402> |
| #2393 | Java: add Windows x64 in-process runtime and native classifier publishing | edburns | <https://github.com/github/copilot-sdk/pull/2393> |
| #2300 | build(deps-dev): bump hono from 4.12.32 to 4.13.1 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2300> |
| #2345 | [Java] Clean-up: make it so interim time during implementation produces correct artifacts | edburns | <https://github.com/github/copilot-sdk/pull/2345> |
| #2374 | fix(python): serialize native values in tool results | OllieinCanada | <https://github.com/github/copilot-sdk/pull/2374> |
| #2359 | build(deps): bump the java-maven-deps group in /java with 3 updates | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2359> |
| #2316 | build(deps): bump tsx from 4.23.1 to 4.23.12 in /java/scripts/codegen in the java-codegen-deps group across 1 directory | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2316> |
| #2312 | docs: note the minimum language runtimes in the bundled CLI quick start | rinceyuan | <https://github.com/github/copilot-sdk/pull/2312> |
| #2286 | build(deps): bump js-yaml from 4.2.0 to 4.3.1 in /scripts/codegen in the npm_and_yarn group across 1 directory | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2286> |
| #2382 | docs(python): convert bold title to heading | scordio | <https://github.com/github/copilot-sdk/pull/2382> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2418 | Update @github/copilot to 1.0.81-12 and refresh view replays | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2418> |
| PR | #2421 | Java: add linux-arm64 native runtime support | open | Copilot | <https://github.com/github/copilot-sdk/pull/2421> |
| PR | #2417 | docs: remove false 30-minute idle timeout claim from deployment guides | open | examon | <https://github.com/github/copilot-sdk/pull/2417> |
| PR | #2415 | Add shared session watch APIs | open | toliaqat | <https://github.com/github/copilot-sdk/pull/2415> |
| PR | #2395 | Launch managed SDK servers through the Rust runtime wrapper | open | roji | <https://github.com/github/copilot-sdk/pull/2395> |
| PR | #2404 | Node: Guard synthetic model list compatibility | open | andysalerno | <https://github.com/github/copilot-sdk/pull/2404> |
| PR | #2408 | Bump the "all" group with 5 updates across multiple ecosystems | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2408> |
| PR | #2407 | build(deps): bump @github/copilot from 1.0.81-6 to 1.0.81-7 in /java/scripts/codegen in the java-codegen-deps group | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2407> |
| PR | #2406 | build(deps): bump the java-maven-deps group in /java with 4 updates | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2406> |
| PR | #2398 | Expose contextual model discovery in Node.js and Rust | open | andysalerno | <https://github.com/github/copilot-sdk/pull/2398> |
| PR | #2397 | Fix .NET in-process callback lifetime | open | minyitang | <https://github.com/github/copilot-sdk/pull/2397> |
| PR | #2386 | Node: expose MCP server instruction policy | open | OllieinCanada | <https://github.com/github/copilot-sdk/pull/2386> |
| PR | #2394 | Support experimental model picker categories | open | andysalerno | <https://github.com/github/copilot-sdk/pull/2394> |
| PR | #2390 | Update @github/copilot to 1.0.81-9 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2390> |
| PR | #2375 | Update @github/copilot to 1.0.81-7 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2375> |
| PR | #2357 | [Test] Update Permission Denial Snapshots for the New Runtime Message | closed | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2357> |
| PR | #2384 | fix(python): make pydantic imports lazy | closed | green3sf | <https://github.com/github/copilot-sdk/pull/2384> |
| PR | #2378 | feat(nodejs): add Session.searchMessages() to query session history (#2376) | closed | Anvith433 | <https://github.com/github/copilot-sdk/pull/2378> |
| PR | #2285 | build(deps-dev): bump js-yaml from 4.2.0 to 4.3.1 in /nodejs | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2285> |
| PR | #2317 | Bump the "all" group with 5 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2317> |
| PR | #2313 | Circleci project setup | closed | dariandawnblixtleo-hue | <https://github.com/github/copilot-sdk/pull/2313> |
| Issue | #2420 | [Java] Add support for linux-arm64 | open | edburns | <https://github.com/github/copilot-sdk/issues/2420> |
| Issue | #2419 | [Java] Add support for linux-arm64, win32-arm64 and darwin-x64 | open | edburns | <https://github.com/github/copilot-sdk/issues/2419> |
| Issue | #2403 | Validate native in process using BRK206 demo | closed | edburns | <https://github.com/github/copilot-sdk/issues/2403> |
| Issue | #2416 | docs: scaling.md and backend-services.md claim a 30-minute session idle timeout that does not exist | open | examon | <https://github.com/github/copilot-sdk/issues/2416> |
| Issue | #2396 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2396> |
| Issue | #2405 | Cold resume can replay undecryptable encrypted reasoning without a safe fallback | open | pmella | <https://github.com/github/copilot-sdk/issues/2405> |
| Issue | #2391 | Expose full-output artifact locations in shell exit events | closed | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2391> |
| Issue | #2399 | [Java] darwin-arm64 Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | closed | edburns | <https://github.com/github/copilot-sdk/issues/2399> |
| Issue | #2400 | [Java] Initial implementation for darwin-arm64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2400> |
| Issue | #2392 | [Java] Initial implementation of win32-x64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2392> |
| Issue | #2389 | SDK: Promote catalogue search and planning APIs to stable | open | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2389> |
| Issue | #2323 | [Java] windows-x64 Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | closed | edburns | <https://github.com/github/copilot-sdk/issues/2323> |
| Issue | #2344 | [Java] Clean-up: make it so interim time during implementation produces correct artifacts | closed | edburns | <https://github.com/github/copilot-sdk/issues/2344> |
| Issue | #2203 | Python: tool results containing datetime/UUID/Decimal/Enum are reported to the model as a tool failure | closed | thejesh23 | <https://github.com/github/copilot-sdk/issues/2203> |
| Issue | #2293 | Python SDK example code failed with  'Callable' has no attribute 'approve_all' | closed | shangerxin | <https://github.com/github/copilot-sdk/issues/2293> |
| Issue | #2381 | [Python] `pydantic` unconditionally imported in `tools.py`, breaking low-level Tool API users | closed | scordio | <https://github.com/github/copilot-sdk/issues/2381> |
