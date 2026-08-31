# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 10 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | Copilot, github-actions[bot], edburns |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#1557](https://github.com/github/copilot-sdk/issues/1557) — Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models （Issue / open / mikhailmokhov）
Anthropic Bedrock の Opus モデル利用者は、SDK が非推奨の `temperature` を送信する問題を確認し、修正版が提供されるまで該当パラメーターを避けるか更新を待ってください。

## このリポジトリの要点

@github/copilot の 1.0.81／1.0.82 更新に伴い、.NET・Go・Java・Node.js の生成 RPC／イベント定義が同期されました。  
Java SDK では macOS Intel と Windows ARM64 のネイティブランタイム対応が追加され、配布検証も強化されています。  
Anthropic Bedrock の Opus 向け非推奨 `temperature` 送信は未解決 Issue として継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2442](https://github.com/github/copilot-sdk/pull/2442) — Update @github/copilot to 1.0.82

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +1051 / -138
- マージ日時 (UTC): `2026-08-30 04:20:09`

**変更概要**

@github/copilot 1.0.82 に合わせて SDK の各言語バインディングと生成スキーマを更新しました。  
.NET／Go／Java の RPC・セッションイベント生成コードを同期し、互換性回帰を修正しています。  
複数言語 SDK のイベントモデルを利用するアプリは、更新後の生成型とシリアライズ互換性を確認してください。

<details><summary>変更ファイル (38 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 71 | 2 |
| `dotnet/src/Generated/SessionEvents.cs` | 151 | 0 |
| `go/rpc/zrpc.go` | 58 | 0 |
| `go/rpc/zsession_events.go` | 21 | 0 |
| `go/zsession_events.go` | 7 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantMessageToolRequest.java` | 3 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantMessageToolRequestCaller.java` | 29 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantMessageToolRequestCallerType.java` | 33 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AutoTier.java` | 37 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionResumeEvent.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionStartEvent.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/AutoTier.java` | 37 | 0 |
| _... 他 23 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `7423842` Update @github/copilot to 1.0.82
- `15735f3` Fix generated schema compatibility regressions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成された RPC／SessionEvents に新しいイベントや型が追加・更新されました。スキーマ互換性回帰の修正を含みますが、既存 API の破壊的変更は明示されていません。

**既存利用者への影響**

通常は依存パッケージの更新のみで移行不要です。生成型を直接利用している場合は、コンパイルとイベント処理の回帰テストを実行してください。

### [#2434](https://github.com/github/copilot-sdk/pull/2434) — Update @github/copilot to 1.0.82-0

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +169 / -154
- マージ日時 (UTC): `2026-08-28 03:54:28`

**変更概要**

@github/copilot 1.0.82-0 のプレリリースに合わせて各言語 SDK の生成コードと依存関係を更新しました。  
Telemetry の E2E テストと SandboxConfig、セッションイベントの定義も同期しています。  
プレリリースを検証する利用者は、テレメトリ収集とイベント互換性を確認してください。

<details><summary>変更ファイル (25 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 1 | 1 |
| `dotnet/src/Generated/SessionEvents.cs` | 5 | 0 |
| `dotnet/test/E2E/TelemetryExportE2ETests.cs` | 4 | 3 |
| `go/internal/e2e/telemetry_e2e_test.go` | 10 | 11 |
| `go/rpc/zrpc.go` | 10 | 14 |
| `go/rpc/zsession_events.go` | 2 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionCompactionCompleteEvent.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/rpc/SandboxConfig.java` | 1 | 1 |
| `nodejs/package-lock.json` | 27 | 27 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `nodejs/src/generated/rpc.ts` | 1 | 1 |
| _... 他 10 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `1b3e199` Update @github/copilot to 1.0.82-0
- `1a92bb6` Fix telemetry trace assertions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

SessionCompactionCompleteEvent や SandboxConfig など生成型が更新され、RPC 定義とテレメトリ検証が同期されました。プレリリースのため、確定版まで API 安定性は保証されません。

**既存利用者への影響**

1.0.82-0 の検証利用者は依存関係を更新してください。安定版利用者は本 PR に追随せず、確定版リリースを待つ運用が安全です。

### [#2430](https://github.com/github/copilot-sdk/pull/2430) — Update @github/copilot to 1.0.81

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: `post-to-slack`
- 変更行数: +6737 / -503
- マージ日時 (UTC): `2026-08-27 23:09:31`

**変更概要**

@github/copilot 1.0.81 に合わせて SDK の RPC、セッションイベント、rewind 関連の生成コードを更新しました。  
GitHub MCP 初期化、ファイル出力、rewind の E2E テストとスナップショットも新しい CLI 挙動に適応しています。  
1.0.81 を利用する各言語 SDK 利用者は、セッションイベントと rewind の回帰を確認してください。

<details><summary>変更ファイル (95 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 137 | 14 |
| `dotnet/src/Generated/SessionEvents.cs` | 1231 | 4 |
| `dotnet/test/E2E/RewindE2ETests.cs` | 5 | 1 |
| `go/internal/e2e/rewind_e2e_test.go` | 10 | 3 |
| `go/rpc/zrpc.go` | 127 | 10 |
| `go/rpc/zsession_encoding.go` | 48 | 0 |
| `go/rpc/zsession_events.go` | 483 | 7 |
| `go/zsession_events.go` | 48 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantFusionPhaseCompletedEvent.java` | 67 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantFusionPhaseFailedEvent.java` | 63 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantFusionPhaseStartedEvent.java` | 53 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantMessageEvent.java` | 3 | 1 |
| _... 他 80 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `08b6e5c` Update @github/copilot to 1.0.81
- `2e4e84e` Adapt handwritten tests to CLI 1.0.81
- `f3ada90` Refresh replay snapshots for CLI file output
- `fde9539` Adapt GitHub MCP initialization expectation
- `bf9e0cd` Stabilize eager GitHub MCP assertion
- `9099b55` Preserve GitHub MCP first-turn assertion
- `874103f` Wait for restorable rewind points
- `201b04a` Apply Rust rewind test formatting
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

RPC／SessionEvents に大量の生成型と rewind・fusion phase 関連イベントが追加され、Go にはセッションエンコーディング処理が追加されました。既存シグネチャの削除は一覧から確認できません。

**既存利用者への影響**

1.0.81 に更新する利用者は通常の依存更新で対応できます。イベントを網羅的に処理する実装では、新しいイベント種別を未知値として安全に扱えるか確認してください。

### [#2429](https://github.com/github/copilot-sdk/pull/2429) — [Java] Add darwin-x64 native runtime support

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +290 / -15
- マージ日時 (UTC): `2026-08-27 21:39:00`

**変更概要**

Java SDK のネイティブランタイムに macOS Intel（darwin-x64）向け成果物を追加しました。  
Maven 設定、取得・検証スクリプト、CI、README、ネイティブバンドリング ADR を更新しています。  
Intel Mac 上で Java SDK を利用するユーザーが、対応するネイティブバイナリを自動取得できるようになります。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-sdk-tests.yml` | 76 | 0 |
| `java/README.md` | 7 | 7 |
| `java/copilot-native/pom.xml` | 118 | 1 |
| `java/copilot-native/scripts/fetch-native.test.mjs` | 1 | 1 |
| `java/copilot-native/scripts/validate-local-publication.mjs` | 2 | 0 |
| `java/copilot-native/scripts/validate-native-artifact.test.mjs` | 43 | 0 |
| `java/copilot-native/scripts/validate-native-host.mjs` | 5 | 3 |
| `java/copilot-native/scripts/validate-native-host.test.mjs` | 23 | 0 |
| `java/docs/adr/adr-007-native-bundling-strategy.md` | 3 | 3 |
| `java/sdk/pom.xml` | 12 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `10e768d` Initial plan
- `fd2c137` Add Java darwin-x64 native support

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Java SDK の配布メタデータとネイティブ成果物検証が拡張されました。Java の公開 API シグネチャ変更や破壊的変更はありません。

**既存利用者への影響**

既存 Java アプリの移行は不要です。Intel Mac では SDK とネイティブランタイムを更新し、Maven の成果物取得を確認してください。

### [#2427](https://github.com/github/copilot-sdk/pull/2427) — Java: add win32-arm64 native runtime support

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +475 / -17
- マージ日時 (UTC): `2026-08-27 19:42:54`

**変更概要**

Java SDK のネイティブランタイムに Windows ARM64（win32-arm64）対応を追加しました。  
Maven 公開ワークフロー、取得・検証スクリプト、テスト、ドキュメントを更新しています。  
Windows on ARM で Java SDK を実行する環境が正式なネイティブ成果物を利用できます。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 87 | 0 |
| `.github/workflows/java-publish-snapshot.yml` | 94 | 0 |
| `.github/workflows/java-sdk-tests.yml` | 75 | 0 |
| `java/README.md` | 5 | 5 |
| `java/copilot-native/pom.xml` | 122 | 5 |
| `java/copilot-native/scripts/fetch-native.test.mjs` | 1 | 1 |
| `java/copilot-native/scripts/validate-local-publication.mjs` | 2 | 0 |
| `java/copilot-native/scripts/validate-native-artifact.test.mjs` | 46 | 0 |
| `java/copilot-native/scripts/validate-native-host.mjs` | 5 | 3 |
| `java/copilot-native/scripts/validate-native-host.test.mjs` | 23 | 0 |
| `java/docs/adr/adr-007-native-bundling-strategy.md` | 3 | 3 |
| `java/sdk/pom.xml` | 12 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `b3924ce` Initial plan
- `dfdd52b` [Java] Add win32-arm64 native runtime support (#2423)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Windows ARM64 用のネイティブ artifact と公開・検証パイプラインが追加されました。SDK の Java API 変更や破壊的変更はありません。

**既存利用者への影響**

既存利用者に移行は不要です。Windows ARM64 環境では依存解決後にネイティブ artifact が選択されることを確認してください。

### [#2423](https://github.com/github/copilot-sdk/pull/2423) — [Java] Add win32-arm64 native runtime support

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +475 / -17
- マージ日時 (UTC): `2026-08-27 16:44:11`

**変更概要**

Java SDK の Windows ARM64 ネイティブランタイム対応を追加し、公開・スナップショット・テストの各ワークフローを整備しました。  
ネイティブ取得とローカル公開の検証を強化し、バンドリング方針のドキュメントも更新しています。  
対象アーキテクチャの利用者は、対応版 SDK の依存解決と実行時ロードを確認してください。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 87 | 0 |
| `.github/workflows/java-publish-snapshot.yml` | 94 | 0 |
| `.github/workflows/java-sdk-tests.yml` | 75 | 0 |
| `java/README.md` | 5 | 5 |
| `java/copilot-native/pom.xml` | 122 | 5 |
| `java/copilot-native/scripts/fetch-native.test.mjs` | 1 | 1 |
| `java/copilot-native/scripts/validate-local-publication.mjs` | 2 | 0 |
| `java/copilot-native/scripts/validate-native-artifact.test.mjs` | 46 | 0 |
| `java/copilot-native/scripts/validate-native-host.mjs` | 5 | 3 |
| `java/copilot-native/scripts/validate-native-host.test.mjs` | 23 | 0 |
| `java/docs/adr/adr-007-native-bundling-strategy.md` | 3 | 3 |
| `java/sdk/pom.xml` | 12 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `5af6bb3` Initial plan
- `b8fd916` Add Java win32-arm64 native support

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は Windows ARM64 のネイティブ成果物、Maven メタデータ、CI 検証の追加に限定され、Java API の破壊的変更はありません。

**既存利用者への影響**

既存アプリの移行は不要です。Windows ARM64 環境でネイティブ依存を固定している場合のみ、対応 artifact の座標を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2421 | Java: add linux-arm64 native runtime support | Copilot | <https://github.com/github/copilot-sdk/pull/2421> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2432 | [SDK] Expose Ask User Variant Session Option | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2432> |
| PR | #2431 | [SDK/Factories] Add Factory Pagination And Completion Options | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2431> |
| PR | #2439 | Add reverse RPC and hook callback timing traces | open | aurokin | <https://github.com/github/copilot-sdk/pull/2439> |
| PR | #2438 | Add managedSettings.clearCache RPC bindings (force-clear managed settings cache) | open | joshspicer | <https://github.com/github/copilot-sdk/pull/2438> |
| PR | #2437 | Add Auto routing tier options across all SDKs | open | dereklegenzoff | <https://github.com/github/copilot-sdk/pull/2437> |
| PR | #2436 | Add managed MCP support across SDKs | open | mattdholloway | <https://github.com/github/copilot-sdk/pull/2436> |
| PR | #2435 | Copilot/investigate fix task sub agents | open | sehyun-hwang | <https://github.com/github/copilot-sdk/pull/2435> |
| PR | #2407 | build(deps): bump @github/copilot from 1.0.81-6 to 1.0.81-7 in /java/scripts/codegen in the java-codegen-deps group | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2407> |
| PR | #2418 | Update @github/copilot to 1.0.81-12 and refresh view replays | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2418> |
| PR | #2425 | Log handler dispatch failures in the SDKs | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/2425> |
| PR | #2426 | Update view replay captures after line numbers were removed | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/2426> |
| Issue | #2446 | Complete shared Auto preference support in the Copilot SDK | open | andyfeller | <https://github.com/github/copilot-sdk/issues/2446> |
| Issue | #2445 | Expose Auto tier configuration across SDKs | open | andyfeller | <https://github.com/github/copilot-sdk/issues/2445> |
| Issue | #2444 | Expose Auto tier switching and authoritative state across SDKs | open | andyfeller | <https://github.com/github/copilot-sdk/issues/2444> |
| Issue | #2443 | Fix mobile navbar | open | hbano7510-debug | <https://github.com/github/copilot-sdk/issues/2443> |
| Issue | #2441 | HANGARsteel0508009068 | open | aszazs534 | <https://github.com/github/copilot-sdk/issues/2441> |
| Issue | #2440 | #هناجر #مقاول_هناجر #شركة_هناجر #تركيب_هناجر #تنفيذ_هناجر #صيانة_هناجر #حداد_هناجر #ورشة_حدادة #مصنع_هناجر #تصميم_هناجر #بناء_هناجر #توريد_هناجر #مظلات_وسواتر #مستودعات #حدادة #مقاولات_السعودية #هناجر_حديد | open | aszazs534 | <https://github.com/github/copilot-sdk/issues/2440> |
| Issue | #2433 | Take a look!  | open | kaawmnain24-netizen | <https://github.com/github/copilot-sdk/issues/2433> |
| Issue | #2428 | [Java] Add support for darwin-x64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2428> |
| Issue | #2422 | [Java] Add support for win32-arm64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2422> |
| Issue | #2424 | Isolate Rust GitHub token callbacks from the global request router | open | dmytrostruk | <https://github.com/github/copilot-sdk/issues/2424> |
| Issue | #861 | AI: MCP server tools not exposed with expected naming when using AvailableTools | closed | KnicKnic | <https://github.com/github/copilot-sdk/issues/861> |
| Issue | #860 | AI: Agent Tools with bare MCP server name not expanded — agent sees zero MCP tools | closed | KnicKnic | <https://github.com/github/copilot-sdk/issues/860> |
| Issue | #1917 | [Java] Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | closed | edburns | <https://github.com/github/copilot-sdk/issues/1917> |
| Issue | #2419 | [Java] Add support for linux-arm64, win32-arm64 and darwin-x64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2419> |
| Issue | #2420 | [Java] Add support for linux-arm64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2420> |
