# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 54 |
| オープン中の新規 PR     | 26 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 45 |
| クローズ Issue          | 32 |
| 主要コントリビューター  | aspire-repo-bot[bot], adamint, IEvangelist, JamesNK, joperezr, karolz-ms |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 （PR / open / sebastienros）
  ConfluentKafka 計測を使う利用者は alpha 版 API とメトリック名の差分を確認し、更新前に依存バージョンを固定して評価してください。
- **⚠ 破壊的変更** [#19301](https://github.com/microsoft/aspire/pull/19301) — [automated] feat(cli): report installations with aspire --info （PR / open / radical）
  `aspire --info` の出力を機械解析する利用者は、インストール情報追加による形式変更を確認し、パーサーを更新してください。
- **⚠ 破壊的変更** [#19077](https://github.com/microsoft/aspire/pull/19077) — Expose resolved environment variables to debug launch producers （PR / merged / adamint）
  デバッグ起動プロデューサーの実装者は解決済み環境変数の新しい公開契約と、シークレットをログへ出さない扱いを確認してください。
- **⚠ 破壊的変更** [#11795](https://github.com/microsoft/aspire/issues/11795) — `LogLine` should provide Timestamp as a seperate field, rather than fudge it into the log content （Issue / open / afscrome）
  `LogLine` のログ時刻を本文から抽出する利用者は、将来の Timestamp フィールド化に備えてログ処理を分離してください。
- **⚠ セキュリティ** [#19248](https://github.com/microsoft/aspire/pull/19248) — Redact owning resource's own secret env var in `describe` （PR / merged / IEvangelist）
  `aspire describe` の出力を保存・共有する運用では、所有リソース自身の secret 環境変数も秘匿される挙動を確認してください。
- **⚠ セキュリティ** [#19052](https://github.com/microsoft/aspire/pull/19052) — [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) （PR / merged / IEvangelist）
  Aspire の Python playground を利用する場合は cryptography 50.0.0 へ更新し、GHSA の影響とロックファイルを再確認してください。
- **⚠ セキュリティ** [#18919](https://github.com/microsoft/aspire/issues/18919) — [AspireE2E]Build aspire project with warning "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" （Issue / open / Susie-1989）
  Microsoft.OpenApi 2.0.0 の高深刻度警告が残る E2E 構成は、脆弱性修正版へ更新するまで本番利用を避けてください。
- **⚠ セキュリティ** [#18804](https://github.com/microsoft/aspire/pull/18804) — [auto-sec] consolidate aspire security dependency remediations （PR / merged / IEvangelist）
  Aspire の依存関係を利用する開発者は、マージ済みの統合セキュリティ修正を取り込み、NuGet/npm の監査結果を再確認してください。
- **⚠ セキュリティ** [#18735](https://github.com/microsoft/aspire/pull/18735) — [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) （PR / merged / IEvangelist）
  npm 依存関係を利用する開発者は、vite、Angular、undici などの修正版を取り込み、ビルドと監査結果を再確認してください。
- **非推奨/廃止** [#19295](https://github.com/microsoft/aspire/pull/19295) — Show AppHosts from every VS Code workspace root （PR / merged / adamint）
  Aspire の VS Code 拡張利用者は、複数ワークスペース ルートから AppHost が表示される挙動と選択状態を確認してください。
- **非推奨/廃止** [#18806](https://github.com/microsoft/aspire/pull/18806) — Bump the uv group across 3 directories with 10 updates （PR / merged / dependabot[bot]）
  uv を使う playground 利用者は依存更新後のロックファイルを再生成し、既存の Python サンプルが動作することを確認してください。
- **非推奨/廃止** [#10638](https://github.com/microsoft/aspire/issues/10638) — [Aspire 10] - Obsolete AddProject<>, replace with AddDotnetApp （Issue / open / maddymontaquila）
  Aspire 10 で `AddProject<>` を利用しているアプリは、非推奨 API から `AddDotnetApp` への移行計画を立ててください。

## このリポジトリの要点

デバッグ起動の環境変数公開、`describe` の secret 秘匿、VS Code のマルチルート AppHost 検出が進みました。  
CLI 出力や `AddProject<>` の契約変更候補に加え、OpenAPI／Python／npm 依存のセキュリティ対応が続いています。  
利用者はデバッグ自動化と依存関係更新の互換性を重点確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19077](https://github.com/microsoft/aspire/pull/19077) — Expose resolved environment variables to debug launch producers

- 作者: adamint / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +753 / -166
- マージ日時 (UTC): `2026-08-13 18:00:41`

**変更概要**

デバッグ起動構成の callback context を追加し、解決済み環境変数を launch producer へ渡せるようにしました。  
各種リソースの producer 移行、再起動時の状態リセット、DCP 実行処理を整理しています。  
デバッグ起動を拡張する AppHost／言語プロバイダー実装者が影響を受けます。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/DebugSupportExtensions.cs` | 63 | 9 |
| `src/Aspire.Hosting/ApplicationModel/ExecutableLaunchConfiguration.cs` | 3 | 4 |
| `src/Aspire.Hosting/ApplicationModel/LaunchConfigurationCallbackContext.cs` | 58 | 0 |
| `src/Aspire.Hosting/Dcp/DcpExecutor.cs` | 1 | 1 |
| `src/Aspire.Hosting/Dcp/ExecutableCreator.cs` | 61 | 60 |
| `src/Aspire.Hosting/ResourceBuilderExtensions.cs` | 85 | 26 |
| `src/Aspire.Hosting/SupportsDebuggingAnnotation.cs` | 21 | 19 |
| `tests/Aspire.Hosting.Dotnet.Tests/DotnetProjectResourceTests.cs` | 10 | 2 |
| `tests/Aspire.Hosting.Go.Tests/AddGoAppTests.cs` | 2 | 1 |
| `tests/Aspire.Hosting.JavaScript.Tests/AddBunAppTests.cs` | 2 | 1 |
| `tests/Aspire.Hosting.JavaScript.Tests/AddNodeAppTests.cs` | 2 | 1 |
| `tests/Aspire.Hosting.Maui.Tests/MauiPlatformExtensionsTests.cs` | 5 | 1 |
| `tests/Aspire.Hosting.Python.Tests/AddPythonAppTests.cs` | 2 | 1 |
| `tests/Aspire.Hosting.TestUtilities/Utils/LaunchConfigurationTestHelpers.cs` | 34 | 0 |
| `tests/Aspire.Hosting.Tests/Dcp/DcpExecutorTests.cs` | 302 | 19 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (33 件)</summary>

- `36a5310` Document launch configuration callback context design
- `fc48eb7` docs: add launch configuration callback plan
- `ad326ea` Add launch configuration callback context
- `bfb9027` Fix launch producer restart handling
- `9a8c99a` Reset debug execution before rebuilding arguments
- `e9ea853` Migrate debug launch configuration producers
- `9efdff8` Finalize debug callback context API
- `65a56a7` Migrate debug support playground
- _... 他 25 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `LaunchConfigurationCallbackContext` と解決済み環境変数を扱う callback 契約が追加され、既存の launch producer 実装は新しい context への対応が必要です。

**既存利用者への影響**

カスタム launch producer を実装している場合は callback 引数と環境変数の扱いを更新してください。標準の AppHost 利用だけなら通常のアップグレードで対応できます。

### [#19248](https://github.com/microsoft/aspire/pull/19248) — Redact owning resource's own secret env var in `describe`

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +1158 / -72
- マージ日時 (UTC): `2026-08-14 17:13:13`

**変更概要**

`aspire describe` が所有リソース自身の secret 環境変数を出力しないよう、AppHost 単位・スナップショット単位の秘匿履歴を導入しました。  
依存関係を一度走査して secret を発見し、同名 secret を保持しながら fail-closed で再計算します。  
診断出力をログや共有資料に保存する全利用者の情報漏えいリスクを低減します。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/CommandLineArgsCallbackAnnotation.cs` | 9 | 0 |
| `src/Aspire.Hosting/ApplicationModel/EnvironmentCallbackAnnotation.cs` | 9 | 0 |
| `src/Aspire.Hosting/ApplicationModel/ICallbackResourceAnnotation.cs` | 19 | 0 |
| `src/Aspire.Hosting/ApplicationModel/LaunchToolArgsCallbackAnnotation.cs` | 9 | 0 |
| `src/Aspire.Hosting/ApplicationModel/ResourceDependencyDiscoveryOptions.cs` | 14 | 0 |
| `src/Aspire.Hosting/ApplicationModel/ResourceExtensions.cs` | 65 | 22 |
| `src/Aspire.Hosting/Backchannel/AuxiliaryBackchannelRpcTarget.cs` | 129 | 33 |
| `src/Aspire.Hosting/Backchannel/SecretRedactionHistory.cs` | 92 | 0 |
| `src/Aspire.Hosting/DistributedApplicationBuilder.cs` | 13 | 1 |
| `src/Aspire.Hosting/Orchestrator/ParameterProcessor.cs` | 26 | 0 |
| `tests/Aspire.Hosting.Tests/Backchannel/AuxiliaryBackchannelRpcTargetTests.cs` | 680 | 13 |
| `tests/Aspire.Hosting.Tests/Orchestrator/ParameterProcessorTests.cs` | 54 | 3 |
| `tests/Aspire.Hosting.Tests/ResourceDependencyTests.cs` | 39 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `dece9d8` Redact owning resource's own secret env var in `describe`
- `f053261` Preserve same-named secrets during redaction
- `7866483` Recompute secret redaction set per snapshot and fail closed on discov…
- `0f2b417` Discover secret parameters with a single multi-root dependency walk
- `93ba27c` Make describe secret discovery peek-only and accumulate the redaction…
- `b43bfdd` Accumulate resolved secret values add-only, not just parameter objects
- `7f64ebb` Scope describe secret redaction history to the AppHost
- `e0eb89c` Bind describe/watch secret redaction to each snapshot and record at a…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`SecretRedactionHistory` と callback annotation 群を追加し、describe/watch のスナップショットへ秘匿状態を関連付けました。公開 API の削除はありません。

**既存利用者への影響**

必須の移行はありませんが、describe 出力を解析するツールは secret が常にマスクされる前提でテストし、機密値を復元しないようにしてください。

### [#19052](https://github.com/microsoft/aspire/pull/19052) — [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label` `automated-security`
- 変更行数: +90 / -96
- マージ日時 (UTC): `2026-08-14 16:00:13`

**変更概要**

Python playground の `cryptography` を 48.0.1 から 50.0.0 へ更新し、既知の GHSA 対応を取り込みました。  
2 つの uv.lock だけを更新する依存関係修正で、Aspire 本体の API は変更していません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/FoundryAgentBasic/app/uv.lock` | 45 | 48 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.PythonService/uv.lock` | 45 | 48 |

</details>

<details><summary>コミット (1 件)</summary>

- `17d5aae` [auto-sec] playground: bump cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ロックファイルの依存バージョン変更のみで、Aspire の公開 API や新規抽象はありません。

**既存利用者への影響**

playground を実行する場合は依存を再同期し、暗号ライブラリの互換性を確認してください。通常の利用者にコード移行は不要です。

### [#19295](https://github.com/microsoft/aspire/pull/19295) — Show AppHosts from every VS Code workspace root

- 作者: adamint / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +2032 / -114
- マージ日時 (UTC): `2026-08-13 00:46:37`

**変更概要**

VS Code 拡張がワークスペースの全ルートから AppHost を検出・表示できるようになりました。  
AppHost データ リポジトリ、デバッグ構成、ツリー表示をマルチルート対応に更新し、Windows の大文字小文字も保持します。  
複数フォルダーを開く開発者が各ルートの AppHost を同じパネルで扱えます。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/dcp/types.ts` | 3 | 1 |
| `extension/src/debugger/AspireDebugConfigurationMetadata.ts` | 2 | 0 |
| `extension/src/debugger/AspireDebugSession.ts` | 16 | 1 |
| `extension/src/extension.ts` | 1 | 1 |
| `extension/src/services/AppHostLaunchService.ts` | 141 | 26 |
| `extension/src/test/appHostDataRepository.test.ts` | 712 | 9 |
| `extension/src/test/appHostDiscovery.test.ts` | 78 | 2 |
| `extension/src/test/appHostLaunchService.test.ts` | 436 | 4 |
| `extension/src/test/appHostTreeView.test.ts` | 151 | 2 |
| `extension/src/test/aspireDebugConfigurationProvider.test.ts` | 17 | 1 |
| `extension/src/test/dotnetDebugger.test.ts` | 119 | 0 |
| `extension/src/utils/appHostDiscovery.ts` | 51 | 10 |
| `extension/src/views/AppHostDataRepository.ts` | 297 | 50 |
| `extension/src/views/AspireAppHostTreeProvider.ts` | 8 | 7 |

</details>

<details><summary>コミット (18 件)</summary>

- `ace8874` Add plan for multi-root AppHost discovery
- `7034ba7` Refine multi-root discovery plan
- `6066574` Fix multi-root AppHost discovery
- `e185755` Handle every workspace root in the Aspire panel
- `28d58f7` Plan multi-root discovery review fixes
- `38badbd` Harden multi-root AppHost discovery
- `8710fdc` Remove implementation planning artifacts
- `cfad7f3` Preserve case-sensitive Windows AppHosts
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

AppHost discovery とデータ リポジトリにワークスペース ルートの集合を扱う内部 API を追加しました。既存の単一ルート利用向け公開 API の削除はありません。

**既存利用者への影響**

移行は不要です。マルチルート利用者は各 AppHost の起動・デバッグ選択が期待どおりか確認してください。

### [#19382](https://github.com/microsoft/aspire/pull/19382) — Move progress prompt title to options

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +144 / -78
- マージ日時 (UTC): `2026-08-16 23:12:56`

**変更概要**

進捗プロンプトのタイトルを対話オプションへ移し、複数言語の interaction API で同じ値を扱えるようにしました。  
引数順序と互換性抑制を修正し、各言語のコード生成スナップショットと回帰テストを更新しています。  
カスタム interaction を利用する実装者はタイトル指定方法を確認してください。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/Stress/Stress.AppHost/InteractionCommands.cs` | 5 | 6 |
| `playground/TypeScriptAppHost/apphost.mts` | 4 | 6 |
| `src/Aspire.Hosting/ApplicationModel/ResourceCommandService.cs` | 2 | 1 |
| `src/Aspire.Hosting/Ats/InteractionExports.cs` | 7 | 2 |
| `src/Aspire.Hosting/CompatibilitySuppressions.xml` | 1 | 1 |
| `src/Aspire.Hosting/IInteractionService.cs` | 6 | 2 |
| `src/Aspire.Hosting/InteractionService.cs` | 2 | 2 |
| `src/Aspire.Hosting/api/Aspire.Hosting.tscompat.suppression.txt` | 1 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 2 | 2 |
| `tests/Aspire.Hosting.CodeGeneration.Java.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.java` | 8 | 13 |
| `tests/Aspire.Hosting.CodeGeneration.Python.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.py` | 2 | 3 |
| `tests/Aspire.Hosting.CodeGeneration.Rust.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.rs` | 6 | 4 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 8 | 16 |
| `tests/Aspire.Hosting.Tests/AtsInteractionExportsTests.cs` | 63 | 0 |
| `tests/Aspire.Hosting.Tests/InteractionServiceTests.cs` | 15 | 8 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `f285a59` Fix progress prompt parameter order
- `30115b5` Address progress prompt review feedback
- `9f209de` Suppress prompt progress API compatibility warnings
- `2dc0ab4` Move progress title to polyglot options
- `5b39f23` Move native progress title to options
- `1d75756` Update progress API compatibility suppression
- `6b0afcb` Add regression tests for progress prompt title mapping

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

進捗タイトルを options に移す API 変更と、各言語の InteractionExports／互換性抑制を追加しました。旧引数順を直接呼ぶ拡張は新しい options 形式へ合わせる必要があります。

**既存利用者への影響**

interaction API を直接利用する場合は、新しい progress options とタイトル設定へ移行してください。標準コマンドだけを使う利用者には影響ありません。

### [#19412](https://github.com/microsoft/aspire/pull/19412) — Fix deployment E2E test matrix enumeration

- 作者: mitchdenny / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +0 / -1
- マージ日時 (UTC): `2026-08-15 17:15:44`

**変更概要**

AKS の永続ボリューム デプロイ E2E テストで、デプロイ マトリックスを誤って二重列挙するガードを削除しました。  
実行対象の列挙を単純化するテスト専用修正で、製品ランタイムの挙動は変わりません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksPersistentVolumeDeploymentTests.cs` | 0 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `c3b8494` Fix deployment E2E test matrix enumeration
- `d6452ac` Remove redundant deployment matrix guard
- `b735153` Remove unrelated whitespace change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テストのマトリックス列挙と冗長なガードを削除しただけで、公開 API やリソース モデルの変更はありません。

**既存利用者への影響**

利用者の移行は不要です。AKS デプロイの E2E 実行基盤を保守する場合は、対象ケースが一度ずつ実行されることを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19417 | [release/13.5] Fix npm registry hard-coded to internal dnceng feed (#19370) | joperezr | <https://github.com/microsoft/aspire/pull/19417> |
| #19401 | [release/13.5] Set a default fsGroup for Kubernetes persistent volumes | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19401> |
| #19388 | Fix npm registry hard-coded to internal dnceng feed (#19370) | IEvangelist | <https://github.com/microsoft/aspire/pull/19388> |
| #19399 | [release/13.5] Report actionable errors when DotnetProjectResource is published | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19399> |
| #19245 | Update dependencies from latest .NET Servicing and bump SDK to 10.0.400 | joperezr | <https://github.com/microsoft/aspire/pull/19245> |
| #19415 | [release/13.5] Surface ASPIRE010 help link inline in warning text | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19415> |
| #19375 | Surface ASPIRE010 help link inline in warning text | joperezr | <https://github.com/microsoft/aspire/pull/19375> |
| #19344 | Handle SIGTERM in terminal host and GC orphaned sockets (#19302) | IEvangelist | <https://github.com/microsoft/aspire/pull/19344> |
| #19373 | Update gRPC packages to 2.83.0 | JamesNK | <https://github.com/microsoft/aspire/pull/19373> |
| #19411 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19411> |
| #19374 | Set a default fsGroup for Kubernetes persistent volumes | mitchdenny | <https://github.com/microsoft/aspire/pull/19374> |
| #19190 | Report actionable errors when DotnetProjectResource is published | karolz-ms | <https://github.com/microsoft/aspire/pull/19190> |
| #18906 | Add Rust hosting package and VS Code debugger wiring | afscrome | <https://github.com/microsoft/aspire/pull/18906> |
| #19333 | Simplify dashboard design token scope | JamesNK | <https://github.com/microsoft/aspire/pull/19333> |
| #19351 | Honor --source during template discovery | adamint | <https://github.com/microsoft/aspire/pull/19351> |
| #19378 | [release/13.5] Honor --source during template discovery | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19378> |
| #19371 | Fix template catalog member paths | danegsta | <https://github.com/microsoft/aspire/pull/19371> |
| #19372 | [release/13.5] Fix template catalog member paths | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19372> |
| #19369 | Color statuses in aspire ps output | JamesNK | <https://github.com/microsoft/aspire/pull/19369> |
| #19364 | [release/13.5] Ensure Aspire CLI bundle resolution | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19364> |
| #19365 | [release/13.5] Ensure the typescript app host trusts the dev cert | danegsta | <https://github.com/microsoft/aspire/pull/19365> |
| #19332 | [release/13.5] Match dark accent buttons to hyperlinks | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19332> |
| #19346 | [release/13.5] Remove dashboard dependency on Microsoft.OpenApi | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19346> |
| #19251 | Ensure Aspire CLI bundle resolution | karolz-ms | <https://github.com/microsoft/aspire/pull/19251> |
| #19345 | Require confirmation before change-location deletes Azure resources | IEvangelist | <https://github.com/microsoft/aspire/pull/19345> |
| #15634 | Ensure the typescript app host trusts the dev cert | danegsta | <https://github.com/microsoft/aspire/pull/15634> |
| #19360 | [release/13.5] Use catalog signing for template JS files instead of Authenticode | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19360> |
| #16842 | Add command to show dev tunnel URLs | maddymontaquila | <https://github.com/microsoft/aspire/pull/16842> |
| #17811 | Use catalog signing for template JS files instead of Authenticode | jesuszarate | <https://github.com/microsoft/aspire/pull/17811> |
| #19246 | [release/13.5] Update dependencies from latest .NET Servicing and bump SDK to 10.0.400 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19246> |
| #19334 | [release/13.5] Clean up uploaded interaction files | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19334> |
| #19348 | [release/13.5] Fix custom IDE project launch | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19348> |
| #19202 | Update Aspire Team App ship milestone to 13.5 | joperezr | <https://github.com/microsoft/aspire/pull/19202> |
| #19312 | [release/13.5] [main] Update dependencies from microsoft/dcp | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19312> |
| #19315 | [release/13.5] Support local tool manifests for AppHost DNX invocation | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19315> |
| #19320 | Sync ASP.NET Core certificate generation sources | sebastienros | <https://github.com/microsoft/aspire/pull/19320> |
| #19306 | Fix custom IDE project launch | karolz-ms | <https://github.com/microsoft/aspire/pull/19306> |
| #19316 | Remove inert OpenTelemetry shared source | sebastienros | <https://github.com/microsoft/aspire/pull/19316> |
| #19325 | Remove dashboard dependency on Microsoft.OpenApi | sebastienros | <https://github.com/microsoft/aspire/pull/19325> |
| #19303 | Use SHA-512 for Aspire Skills bundle integrity checks and hide the remote-fetch preview toggle | IEvangelist | <https://github.com/microsoft/aspire/pull/19303> |
| #19178 | Bound the NuGet package search timeout | adamint | <https://github.com/microsoft/aspire/pull/19178> |
| #19322 | Clean up uploaded interaction files | JamesNK | <https://github.com/microsoft/aspire/pull/19322> |
| #19331 | Fix Dashboard HTML language under invariant culture | adamint | <https://github.com/microsoft/aspire/pull/19331> |
| #19329 | [automated] Fix AppHost discovery E2E synchronization | adamint | <https://github.com/microsoft/aspire/pull/19329> |
| #19134 | Let agents start and stop AppHosts through VS Code | adamint | <https://github.com/microsoft/aspire/pull/19134> |
| #19324 | [release/13.5] Tighten deployment test dispatch | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19324> |
| #19321 | Tighten deployment test dispatch | mitchdenny | <https://github.com/microsoft/aspire/pull/19321> |
| #19313 | Fix Azure Functions task launch in VS Code | adamint | <https://github.com/microsoft/aspire/pull/19313> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19424 | [release/13.5] Move progress prompt title to options | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19424> |
| PR | #19426 | Fix mixed-quality staging package discovery | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19426> |
| PR | #19384 | Isolate AppHost launches in linked git worktrees. | open | Shaurya2k06 | <https://github.com/microsoft/aspire/pull/19384> |
| PR | #19404 | Add portable volume path environment variables | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19404> |
| PR | #19393 | [Automated] Update Aspire skills bundle | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19393> |
| PR | #19414 | Add Aspire editor assistance language model tools | open | adamint | <https://github.com/microsoft/aspire/pull/19414> |
| PR | #19377 | Update Plotly.js to 4.0.0-rc.0 | open | JamesNK | <https://github.com/microsoft/aspire/pull/19377> |
| PR | #19337 | Revert "Bound the NuGet package search timeout" | open | adamint | <https://github.com/microsoft/aspire/pull/19337> |
| PR | #19418 | [release/13.5] Fix deployment E2E test matrix enumeration | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19418> |
| PR | #19352 | Support advanced dotnet invocation options | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19352> |
| PR | #19413 | Make ProjectTemplates replacement incremental | open | crutkas | <https://github.com/microsoft/aspire/pull/19413> |
| PR | #19400 | Honor selected AppHost launch profile in VS Code | open | adamint | <https://github.com/microsoft/aspire/pull/19400> |
| PR | #19403 | Fix enum values in YARP environment configuration | open | air-hand | <https://github.com/microsoft/aspire/pull/19403> |
| PR | #19402 | Bound Dotnet project pipeline tests | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19402> |
| PR | #19392 | Support default NuGet sources in Aspire configuration | open | adamint | <https://github.com/microsoft/aspire/pull/19392> |
| PR | #19359 | Fix remembered AppHost folder in multi-root workspaces | open | adamint | <https://github.com/microsoft/aspire/pull/19359> |
| PR | #19367 | Bound Aspire CLI process termination wait | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19367> |
| PR | #19349 | Add IServiceProvider support to Cosmos DB extensions | open | AdamDotNet | <https://github.com/microsoft/aspire/pull/19349> |
| PR | #19394 | Preserve the default AppHost for explicit runs | open | adamint | <https://github.com/microsoft/aspire/pull/19394> |
| PR | #19386 | Fix MAUI OTLP dev tunnel resolution | open | jfversluis | <https://github.com/microsoft/aspire/pull/19386> |
| PR | #19343 | Tolerate NuGet credential-provider stdout preamble in package search parsing | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19343> |
| PR | #19383 | Fix MAUI launch queue handoff | open | jfversluis | <https://github.com/microsoft/aspire/pull/19383> |
| PR | #19381 | Delete .agents/skills/api-review/SKILL.md | open | 7kkv8xtw6m-ctrl | <https://github.com/microsoft/aspire/pull/19381> |
| PR | #19335 | DO NOT MERGE: Test Sigstore/Tuf 1.0.0 packages | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19335> |
| PR | #19358 | Self-heal stale community-contribution flags in milestone changelog | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19358> |
| PR | #19336 | Stop redisplaying dismissed unresolved parameters notification | open | JamesNK | <https://github.com/microsoft/aspire/pull/19336> |
| PR | #19420 | Re-enable Docker Compose CLI E2E deployment tests | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19420> |
| PR | #19317 | Document current MCP machine information source | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19317> |
| PR | #19347 | Add custom NuGet source setting to VS Code extension | closed | adamint | <https://github.com/microsoft/aspire/pull/19347> |
| PR | #19318 | Update bundled Plotly to 2.35.3 | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19318> |
| PR | #19353 | [Automated] Update Aspire skills bundle | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19353> |
| PR | #18875 | Add publication root to pipeline output service | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18875> |
| Issue | #19425 | [aw] Milestone Changelog Generator failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19425> |
| Issue | #19423 | TypeScript aspire add omits prerelease-only integrations from stable-shaped staging builds | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19423> |
| Issue | #19422 | Docker Compose: project resources cannot write to their own persistent volume (no fsGroup equivalent) | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19422> |
| Issue | #19416 | [aw] Milestone Changelog Generator failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19416> |
| Issue | #19421 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19421> |
| Issue | #19419 | Allow IAspireStore paths to be rooted in a durable, AppHost-scoped location | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19419> |
| Issue | #19380 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-lifecycle-tools) shard fails, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19380> |
| Issue | #19376 | Add watch/restart support for Rust AppHosts | open | adamint | <https://github.com/microsoft/aspire/issues/19376> |
| Issue | #19395 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19395> |
| Issue | #19391 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19391> |
| Issue | #19408 | [VS Code] Add debugger support for Java resources | open | adamint | <https://github.com/microsoft/aspire/issues/19408> |
| Issue | #19385 | [aw] Milestone Changelog Generator failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19385> |
| Issue | #19389 | Azure SQL: api-roles-* deployment script fails with MissingMethodException (SqlServer PS 22.3.0 on Az PS 14.0) | open | sfmskywalker | <https://github.com/microsoft/aspire/issues/19389> |
| Issue | #19407 | [VS Code] Surface deploy, publish, and pipeline actions in the Aspire pane | open | adamint | <https://github.com/microsoft/aspire/issues/19407> |
| Issue | #19409 | [VS Code] Add a command to scaffold Aspire integration test projects | open | adamint | <https://github.com/microsoft/aspire/issues/19409> |
| Issue | #19410 | Teach Copilot code review to flag missing localization | open | adamint | <https://github.com/microsoft/aspire/issues/19410> |
| Issue | #19396 | Harden persisted NuGet source handling | open | adamint | <https://github.com/microsoft/aspire/issues/19396> |
| Issue | #19387 | VS Code extension ignores launch.json debugger configuration for apphost (13.4.6) | open | aDisplayName | <https://github.com/microsoft/aspire/issues/19387> |
| Issue | #19405 | Tracking: Complete the end-to-end Aspire experience in VS Code | open | adamint | <https://github.com/microsoft/aspire/issues/19405> |
| Issue | #19406 | [VS Code] Define and validate Aspire support in remote workspaces | open | adamint | <https://github.com/microsoft/aspire/issues/19406> |
| Issue | #19342 | [VS Code] Persist the correct AppHost selection in multi-root workspaces | open | burtonrodman | <https://github.com/microsoft/aspire/issues/19342> |
| Issue | #19356 | Use unique Docker volumes for isolated AppHost instances | open | adamint | <https://github.com/microsoft/aspire/issues/19356> |
| Issue | #19354 | Allow resource command results to customize dialog actions | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/19354> |
| Issue | #19355 | Allow parameters to opt out of isolated user-secrets copying | open | adamint | <https://github.com/microsoft/aspire/issues/19355> |
| Issue | #19398 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19398> |
| Issue | #19397 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19397> |
| Issue | #19370 | npm registry hard-coded to internal dnceng feed — breaks `aspire agent init`, and ships as the customer default | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19370> |
| Issue | #19338 | `aspire new --source` still contacts NuGet.org during template discovery | closed | adamint | <https://github.com/microsoft/aspire/issues/19338> |
| Issue | #19340 | Aspire configuration: support a default NuGet source | open | adamint | <https://github.com/microsoft/aspire/issues/19340> |
| Issue | #19350 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19350> |
| Issue | #19390 | Azure SQL: contained user for managed identity is created from the principal (object) id, but SQL matches on client id | open | sfmskywalker | <https://github.com/microsoft/aspire/issues/19390> |
| Issue | #19357 | Make AppHost start and stop operations worktree-aware | open | adamint | <https://github.com/microsoft/aspire/issues/19357> |
| Issue | #19379 | [CI Failure] Dashboard (ubuntu-latest) test run fails with exit code 2, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19379> |
| Issue | #19366 | Handle Deployment-to-StatefulSet transitions when adding a persistent volume | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19366> |
| Issue | #19368 | ASPIRE010: add a forward link in the warning and publish a doc explaining AspireUseCliBundle | open | joperezr | <https://github.com/microsoft/aspire/issues/19368> |
| Issue | #19363 | [CI Failure] Flaky: DashboardClientTests.WatchWithRecovery_RepeatedFailures_FiresMultipleDisconnectedEvents times out waiting for disconnected events | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19363> |
| Issue | #19341 | `change-location` dev-time command silently deletes & recreates location-immutable Azure resources (data loss) with no warning | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19341> |
| Issue | #19362 | [CI Failure] Flaky: XUnit_V2_NewUpAndBuildSupportProjectTemplatesTests.CanNewAndBuild times out after 300s running 'dotnet new aspire-apphost' on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19362> |
| Issue | #19361 | [CI Failure] Polyglot SDK Validation: TypeScript SDK Validation (Node 24.x) job fails with exit code 1, unrelated to PR-changed Hosting/C# files; job logs unavailable for detailed diagnosis | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19361> |
| Issue | #19339 | Version check and `aspire add` fail when NuGet credential-provider output pollutes `dotnet package search --format json` stdout (JsonReaderException) | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19339> |
| Issue | #19328 | [CI Failure] Flaky: VS Code extension command palette E2E test 'observes multiple AppHost candidates without selecting the wrong one' fails intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19328> |
| Issue | #19330 | [CI Failure] Flaky: VS Code extension E2E 'rediscovers workspace AppHost candidates when config changes' fails due to config file read/write race | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19330> |
| Issue | #19323 | [aw] Milestone Changelog Generator failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19323> |
| Issue | #19327 | [CI Failure] GitHub artifact upload fails with 403 Forbidden from intermediary during FinalizeArtifact | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19327> |
| Issue | #19326 | VS Code Marketplace publish rejects the release managed identity | closed | adamint | <https://github.com/microsoft/aspire/issues/19326> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #19302 | WithTerminal(): graceful `aspire stop` leaks {id}.dcp.sock and {id}.host.sock in ~/.aspire/trmnl (child re-binds UDS after cleanup runs) | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19302> |
| Issue | #17417 | [VS Code] Resolve Aspire CLI installations when the extension host and terminal have different environments | closed | burtonrodman | <https://github.com/microsoft/aspire/issues/17417> |
| Issue | #7593 | Visual Studio Warning after upgrading SDK to 9.1 | closed | afscrome | <https://github.com/microsoft/aspire/issues/7593> |
| Issue | #9450 | Aspire CLI --watch large environment variables | closed | evozniak | <https://github.com/microsoft/aspire/issues/9450> |
| Issue | #19228 | VS Code emits DEP0169 warning when PR installer installs the extension | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19228> |
| Issue | #18777 | Scheduled workflow failing: Deployment Cleanup | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18777> |
| Issue | #19241 | describe: "aspire describe --format json" leaks a generated secret in plaintext via the owning resource's own env var (gap in #18089; dependent-resource redaction works) | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19241> |
| Issue | #19227 | [AspireE2E] AppHost throws unhandled System.AggregateException when AspireUseCliBundle=true and CLI bundle dependencies are unavailable | closed | maitan11 | <https://github.com/microsoft/aspire/issues/19227> |
| Issue | #15489 | TypeScript AppHost Node process does not trust dev certs | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/15489> |
| Issue | #19250 | aspire stop leaves session-lifetime containers running | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19250> |
| Issue | #18956 | Expose the resolved environment variables to the `WithDebugSupport` launch configuration callback | closed | afscrome | <https://github.com/microsoft/aspire/issues/18956> |
| Issue | #19299 | Custom IDE project launches receive a dotnet argument separator and invalid process fallback | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19299> |
| Issue | #19314 | Remove Aspire.Dashboard dependency on Microsoft.OpenApi by vendoring schema model types | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/19314> |
| Issue | #9311 | [nit]: "Operation cancelled by user action" log is too incessant | closed | captainsafia | <https://github.com/microsoft/aspire/issues/9311> |
| Issue | #13383 | [AspireE2E] The structured logs displayed in the results list do not match the set Level | closed | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/13383> |
| Issue | #16185 | [AspireE2E]`aspire update` will downgrading Aspire SDK higher version from 13.3-preview1 to 13.2.2 for  Aspire Express/React Starter App | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/16185> |
| Issue | #18324 | Agents should prefer VS Code APIs over the Aspire CLI when the extension is active | closed | adamint | <https://github.com/microsoft/aspire/issues/18324> |
| Issue | #19252 | [CI Failure] GitHub artifact upload fails with ENOTFOUND DNS resolution error | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19252> |
| Issue | #19279 | [CI Failure] Git checkout fails with server certificate verification failed against github.com | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19279> |
| Issue | #19311 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19311> |
| Issue | #19284 | [Regression] Azure Functions resource fails because the generated func task type is unregistered | closed | adamint | <https://github.com/microsoft/aspire/issues/19284> |
| Issue | #19287 | [VS Code] Multi-root workspace only shows the first discovered AppHost | closed | adamint | <https://github.com/microsoft/aspire/issues/19287> |
| Issue | #13905 | [macOS] Cannot launch dashboard | closed | universorum | <https://github.com/microsoft/aspire/issues/13905> |
