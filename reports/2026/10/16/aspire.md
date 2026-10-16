# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 102 |
| オープン中の新規 PR     | 60 |
| クローズ (未マージ) PR  | 23 |
| 新規 Issue              | 140 |
| クローズ Issue          | 34 |
| 主要コントリビューター  | mitchdenny, JamesNK, Copilot, radical, davidfowl, ellahathaway |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20919](https://github.com/microsoft/aspire/pull/20919) — Fix AKS AcrPull for existing cross-resource-group registries （PR / open / mitchdenny）
AKS に別リソースグループの ACR から pull させる利用者は修正提案を確認してください。未マージの修正であり、利用者向け API の変更は現時点でありません。
- **⚠ 破壊的変更** [#20918](https://github.com/microsoft/aspire/pull/20918) — Support ACME External Account Binding in cert-manager （PR / open / mitchdenny）
cert-manager で ACME External Account Binding を必要とする利用者は、新しい設定支援の提案を確認してください。PR は未マージです。
- **⚠ 破壊的変更** [#20825](https://github.com/microsoft/aspire/pull/20825) — Obsolete AddCSharpApp in favor of AddDotnetProject （PR / merged / mitchdenny）
`AddCSharpApp` を使う AppHost 開発者は非推奨警告に従い、`AddDotnetProject` へ移行してください。
- **⚠ 破壊的変更** [#20756](https://github.com/microsoft/aspire/pull/20756) — Hide terminal hosts by default without a visibility option （PR / merged / mitchdenny）
terminal host の表示を明示的に切り替えていた利用者は、visibility option がなくなり既定で非表示となる挙動に合わせ、Dashboard の表示とテストを確認してください。
- **⚠ 破壊的変更** [#20730](https://github.com/microsoft/aspire/pull/20730) — Migrate Dashboard product telemetry and add CLI Azure Monitor log export （PR / merged / JamesNK）
Dashboard telemetry の送信先・opt-out や CLI の Azure Monitor log export を利用する運用者は、新しい telemetry 設定とデータ送信先を確認してください。
- **⚠ 破壊的変更** [#20614](https://github.com/microsoft/aspire/pull/20614) — Raise Aspire's minimum supported .NET version to .NET 10 （PR / merged / DamianEdwards）
Aspire 開発者は .NET 10 を最低サポート対象とする変更を踏まえ、SDK／target framework を更新し、対応外の古い .NET 環境から移行してください。
- **⚠ 破壊的変更** [#20521](https://github.com/microsoft/aspire/issues/20521) — [13.6] Breaking change to `IInteractionService` （Issue / open / afscrome）
`IInteractionService` 実装を拡張・利用する開発者は、13.6 の破壊的変更案を追跡し、未確定の API 変更に備えてください。
- **⚠ 破壊的変更** [#20287](https://github.com/microsoft/aspire/pull/20287) — Configure native agent plugins and independent assets （PR / merged / ellahathaway）
native agent plugin と独立 asset 構成に依存する利用者は、PR の変更契約と現在の agent／asset 設定を照合してください。変更ファイル情報が収集されていないため詳細はリンク先で確認が必要です。
- **⚠ 破壊的変更** [#20135](https://github.com/microsoft/aspire/pull/20135) — Support environment-specific Aspire secrets for deployment （PR / merged / davidfowl）
環境ごとの deployment secrets を使う利用者は CLI の secret 選択・保存仕様を確認し、既存 secrets と deployment state の移行が必要か検証してください。
- **⚠ 破壊的変更** [#20035](https://github.com/microsoft/aspire/pull/20035) — Derive Azure Front Door origin names from backend hostnames （PR / merged / eerhardt）
Azure Front Door origin を Aspire で生成する利用者は origin 名が backend hostname 由来に変わるため、既存リソースとの照合や再デプロイ時の差分を確認してください。
- **⚠ 破壊的変更** [#20034](https://github.com/microsoft/aspire/issues/20034) — Normalize container image reference representation in Aspire 17 （Issue / open / danegsta）
container image reference を解析・比較する利用者は Aspire 17 の正規化案を追跡し、独自文字列処理との互換性を確認してください。Issue はオープン中です。
- **⚠ 破壊的変更** [#19922](https://github.com/microsoft/aspire/issues/19922) — [17.0] Redesign PublishAsDockerFile argument handling （Issue / open / danegsta）
`PublishAsDockerFile` の引数を利用する開発者は Aspire 17 の設計変更を追跡し、現行呼び出しの移行が必要となる可能性を見込んでください。
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / merged / nellshamrell）
Project Radius recipe を利用する開発者は、recipe output から backing resource connection を解決する新方式と Radius 0.60 への更新を確認してください。
- **⚠ セキュリティ** [#20854](https://github.com/microsoft/aspire/pull/20854) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
Aspire extension の npm 依存を保守する担当者は、23 件の更新案を確認し、脆弱性修正の取り込みと回帰テストを行ってください。PR は未マージです。
- **⚠ セキュリティ** [#20829](https://github.com/microsoft/aspire/pull/20829) — fix(deps): update Next.js, multidict, and PyJWT for security advisories （PR / open / radical）
Next.js／multidict／PyJWT の security advisory 対応を必要とする利用者は、依存更新案のマージ状況を確認し、該当パッケージの脆弱性有無を評価してください。
- **⚠ セキュリティ** [#20789](https://github.com/microsoft/aspire/pull/20789) — Bump source-map-js from 1.2.1 to 1.2.2 in /extension （PR / merged / dependabot[bot]）
Aspire VS Code extension の保守者は、lockfile で source-map-js 1.2.2 が利用されることを確認してください。
- **⚠ セキュリティ** [#20786](https://github.com/microsoft/aspire/pull/20786) — Make user secrets deployment state log messages accurate （PR / open / erenemrearik）
User secrets deployment state のログを監視する利用者は、状態表示の正確性を改善する提案を確認してください。PR は未マージです。
- **⚠ セキュリティ** [#20757](https://github.com/microsoft/aspire/pull/20757) — Bump proxy-addr from 2.0.7 to 2.0.8 in /extension （PR / merged / dependabot[bot]）
Aspire extension の proxy-addr 依存を管理する担当者は、マージ済み更新後の lockfile が 2.0.8 を解決することを確認してください。
- **⚠ セキュリティ** [#20716](https://github.com/microsoft/aspire/pull/20716) — Bump the npm group across 1 directory with 23 updates （PR / closed / dependabot[bot]）
この npm 依存一括更新 PR はクローズ済みです。extension の保守者は現行 lockfile の依存状態を確認し、脆弱な旧バージョンが残る場合は別 PR で対応してください。
- **⚠ セキュリティ** [#20693](https://github.com/microsoft/aspire/pull/20693) — Add auto-sec agentic workflow for dependency security reconciliation （PR / open / IEvangelist）
リポジトリ保守者は依存セキュリティ更新を自動調整する agentic workflow 提案をレビューし、権限・自動変更の承認境界を確認してください。未マージです。
- **⚠ セキュリティ** [#19845](https://github.com/microsoft/aspire/pull/19845) — Bump the npm_and_yarn group across 5 directories with 3 updates （PR / closed / dependabot[bot]）
5 ディレクトリの npm／Yarn 依存更新 PR はクローズ済みです。対象アプリの保守者は lockfile を確認し、脆弱性が残る場合は現行の更新案を適用してください。
- **⚠ セキュリティ** [#19231](https://github.com/microsoft/aspire/pull/19231) — [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) （PR / merged / IEvangelist）
Aspire extension の `js-yaml` 利用者は GHSA-5p4m-2wfm-xmqj 対応として 4.3.1 への更新が含まれる版を使用してください。
AppHost Server v2 を CLI bundle で試す利用者は opt-in のプレビュー提案を確認してください。PR は未マージで、既定動作は変更されていません。
- **非推奨/廃止** [#20867](https://github.com/microsoft/aspire/pull/20867) — Deprecate Aspire.AppHost.Sdk (ASPIRE012) （PR / merged / davidfowl）
`Aspire.AppHost.Sdk` を使う AppHost 開発者は ASPIRE012 の診断と移行ガイドを確認し、package-based AppHost 方式へ移行してください。
- **非推奨/廃止** [#20837](https://github.com/microsoft/aspire/issues/20837) — Migrate the Blazor gateway off obsolete AddCSharpApp （Issue / open / mitchdenny）
Blazor gateway を `AddCSharpApp` で構成する利用者は `AddDotnetProject` への移行状況を追跡し、廃止 API への依存を解消してください。
- **非推奨/廃止** [#20594](https://github.com/microsoft/aspire/issues/20594) — Deprecate the Aspire.AppHost.Sdk （Issue / open / DamianEdwards）
AppHost SDK の移行を予定する利用者は、この未解決 Issue とマージ済み ASPIRE012 診断を合わせて確認し、移行ガイドに沿って更新してください。
- **非推奨/廃止** [#20536](https://github.com/microsoft/aspire/issues/20536) — `AspireUseCliBundle` unexpectedly impacts CodeQL workflows. （Issue / open / afscrome）
`AspireUseCliBundle` を有効にする CI 管理者は CodeQL workflow への影響を確認し、Issue の修正状況を追跡してください。
- **非推奨/廃止** [#20257](https://github.com/microsoft/aspire/issues/20257) — [Homebrew] Deprecation notice for "the `verified` parameter in the `url` stanza is deprecated" （Issue / open / tebeco）
Homebrew formula／cask を管理する担当者は `url` stanza の `verified` parameter を使わない構文へ更新し、Issue の対応状況を確認してください。
- **非推奨/廃止** [#20119](https://github.com/microsoft/aspire/pull/20119) — [release/13.5] Fix deprecated Homebrew cask DSL usage （PR / merged / joperezr）
Aspire 13.5 Homebrew cask の保守者は、deprecated DSL を置き換えた release 修正が含まれる版を使用してください。
- **非推奨/廃止** [#19965](https://github.com/microsoft/aspire/pull/19965) — Fix deprecated Homebrew cask DSL usage （PR / merged / askpt）
Homebrew で Aspire を配布する利用者は、マージ済みの cask DSL 修正を取り込み、非推奨記法を残さないようにしてください。

## このリポジトリの要点

AppHost の C# project registration と SDK を新しい方式へ移行する変更が続き、`AddCSharpApp`／`Aspire.AppHost.Sdk` の利用者には移行が必要です（#20825、#20867）。最低サポート .NET は 10 へ引き上げられ、Dashboard telemetry と環境別 secrets の CLI も大きく変更されました。polyglot hosting／native agent plugin といった AppHost 拡張も進展しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20825](https://github.com/microsoft/aspire/pull/20825) — Obsolete AddCSharpApp in favor of AddDotnetProject

- 作者: mitchdenny / 状態: MERGED
- ラベル: `breaking-change` `needs-area-label`
- 変更行数: +82 / -26
- マージ日時 (UTC): `2026-10-09 00:27:36`

**変更概要**

実験的だった `AddCSharpApp` を非推奨化し、.NET project を登録する `AddDotnetProject` を推奨します。
Project resource builder と Blazor gateway、playground、テストを更新し、移行ガイドと計画文書も整備しました。
既存 AppHost の API 利用者に対する **破壊的変更／移行告知** です。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/plans/project-v2-csharpprogram-watch.md` | 14 | 9 |
| `playground/FileBasedApps/Directory.Build.props` | 0 | 4 |
| `playground/FileBasedApps/apphost.cs` | 2 | 0 |
| `playground/Terminals/Terminals.AppHost/AppHost.cs` | 4 | 2 |
| `src/Aspire.Hosting.Blazor/BlazorGatewayExtensions.cs` | 2 | 1 |
| `src/Aspire.Hosting.Dotnet/README.md` | 11 | 0 |
| `src/Aspire.Hosting/ProjectResourceBuilderExtensions.cs` | 9 | 3 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/AtsTypeScriptCodeGeneratorTests.cs` | 3 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 3 | 3 |
| `tests/Aspire.Hosting.Dotnet.Tests/DotnetProjectResourceTests.cs` | 2 | 1 |
| `tests/Aspire.Hosting.Tests/DebugSupportExtensionsTests.cs` | 4 | 1 |
| `tests/Aspire.Hosting.Tests/ProjectResourceTests.cs` | 26 | 1 |
| `tests/Aspire.Hosting.Tests/Publishing/ResourceContainerImageManagerTests.cs` | 2 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `6b22faf` Graduate AddCSharpApp APIs from experimental
- `3755bbb` Obsolete AddCSharpApp in favor of AddDotnetProject
- `578d222` Clarify AddCSharpApp obsoletion throughout the project v2 plan

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `AddCSharpApp` が obsolete となり、`AddDotnetProject` へ誘導されます。コミットで API の実験段階からの移行、obsolete 指定、Project v2 計画の修正が行われています。

**既存利用者への影響**

`AddCSharpApp` 利用者は対応 package／SDK の移行ガイドに沿って `AddDotnetProject` へ切り替え、AppHost の resource graph と publish を再検証してください。

### [#20756](https://github.com/microsoft/aspire/pull/20756) — Hide terminal hosts by default without a visibility option

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-app-model` `breaking-change`
- 変更行数: +110 / -96
- マージ日時 (UTC): `2026-10-07 13:46:10`

**変更概要**

terminal host は既定で非表示となり、表示を切り替える visibility option は削除されます。
terminal builder／annotation、host telemetry、仕様書と関連テストを合わせて変更し、Dashboard 無効時の telemetry も止めます。
terminal host を AppHost／Dashboard に表示していた利用者に影響する **破壊的変更** です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/with-terminal.md` | 7 | 0 |
| `playground/Terminals/Terminals.AppHost/AppHost.cs` | 3 | 7 |
| `src/Aspire.Hosting/ApplicationModel/TerminalAnnotation.cs` | 0 | 20 |
| `src/Aspire.Hosting/TerminalResourceBuilderExtensions.cs` | 21 | 21 |
| `src/Aspire.TerminalHost/TerminalHostApp.cs` | 2 | 2 |
| `src/Aspire.TerminalHost/TerminalHostTelemetry.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Tests/WithTerminalTests.cs` | 76 | 45 |

</details>

<details><summary>コミット (5 件)</summary>

- `0854c14` Hide terminal hosts by default without a visibility option
- `8b09270` Allow intentional removal of experimental terminal visibility option
- `8c61e4c` Disable terminal host telemetry when dashboard is disabled
- `b5f7888` Merge main for current framework baseline
- `0549a86` Remove obsolete net8 compatibility suppressions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** terminal visibility option と関連 annotation が削除され、host の表示既定値が非表示になります。コミットでは experimental option の削除と Dashboard 無効時の terminal telemetry 抑止を明記しています。

**既存利用者への影響**

terminal host の可視性 option を指定していた AppHost やテストは更新が必要です。既定の Dashboard 表示を前提とする運用者は、新しい非表示動作を確認してください。

### [#20730](https://github.com/microsoft/aspire/pull/20730) — Migrate Dashboard product telemetry and add CLI Azure Monitor log export

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard` `breaking-change`
- 変更行数: +3670 / -1998
- マージ日時 (UTC): `2026-10-09 00:52:27`

**変更概要**

Dashboard product telemetry を Azure Monitor へ移行し、Aspire CLI から Azure Monitor へログを export する機能を追加します。
telemetry の privacy／opt-out、event recording、resource collection、startup failure 時の耐性を整理し、Dashboard・CLI・extension とテストを広く更新しました。
Telemetry の出力先や設定に依存する組織・運用者に影響します。

<details><summary>変更ファイル (79 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/open-telemetry-architecture.md` | 1 | 15 |
| `docs/specs/aspire-product-telemetry.md` | 182 | 0 |
| `extension/src/dcp/DashboardTelemetryPassthrough.ts` | 7 | 10 |
| `src/Aspire.Cli/Agents/AspireSkills/AspireSkillsInstaller.cs` | 8 | 8 |
| `src/Aspire.Cli/Aspire.Cli.csproj` | 1 | 0 |
| `src/Aspire.Cli/Commands/AgentTelemetryCommand.cs` | 4 | 9 |
| `src/Aspire.Cli/Commands/RunCommand.cs` | 13 | 13 |
| `src/Aspire.Cli/Program.cs` | 8 | 5 |
| `src/Aspire.Cli/Telemetry/AgentTelemetryUploader.cs` | 3 | 2 |
| `src/Aspire.Cli/Telemetry/AspireCliTelemetry.cs` | 30 | 115 |
| `src/Aspire.Cli/Telemetry/CliTagEnrichmentProcessor.cs` | 6 | 3 |
| `src/Aspire.Cli/Telemetry/TelemetryManager.cs` | 98 | 66 |
| `src/Aspire.Cli/Utils/SdkInstallHelper.cs` | 6 | 3 |
| `src/Aspire.Dashboard/Aspire.Dashboard.csproj` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Dialogs/SettingsDialog.razor` | 1 | 1 |
| _... 他 64 件_ | | |

</details>

<details><summary>コミット (25 件)</summary>

- `5fc54c7` Migrate dashboard product telemetry to Azure Monitor
- `0f68ef8` Fix dashboard telemetry export filtering and resource type collections
- `48d8156` Remove obsolete dashboard debug-session options
- `084a3db` Keep dashboard startup resilient to product telemetry failures
- `ade9123` Forward numeric dashboard telemetry opt-out from AppHost
- `d7d81df` Restrict shared event recording to product-specific telemetry APIs
- `85aff55` Centralize product telemetry privacy and activity property setters
- `dc9e2d2` Trim redundant dashboard telemetry tests and strengthen behavior cove…
- _... 他 17 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard の product telemetry SDK／pipeline が Azure Monitor ベースとなり、CLI には agent log export が加わります。既存 debug-session option は削除され、privacy・opt-out 設定の扱いも変わるため **⚠ 破壊的変更** として設定・出力の互換性を確認してください。

**既存利用者への影響**

独自 telemetry の収集・送信先に依存する利用者は、新しい opt-out と Azure Monitor export の設定を確認してください。利用者側の API 移行要否は導入済みの telemetry 構成によります。

### [#20614](https://github.com/microsoft/aspire/pull/20614) — Raise Aspire's minimum supported .NET version to .NET 10

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `area-templates` `breaking-change`
- 変更行数: +611 / -1368
- マージ日時 (UTC): `2026-10-06 22:02:25`

**変更概要**

Aspire の最低サポート対象を .NET 10 に引き上げ、repository の target framework、SDK、templates、CI、package versions を更新します。
移行に伴う analyzer／compiler failure や RID content packaging を修正し、テスト・開発環境も新しい baseline に揃えました。
古い .NET target を使う Aspire 開発者は更新が必要な **破壊的変更** です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.agents/skills/dependency-update/SKILL.md` | 3 | 5 |
| `.devcontainer/devcontainer.json` | 2 | 2 |
| `.github/workflows/ci.yml` | 16 | 25 |
| `.github/workflows/copilot-setup-steps.yml` | 0 | 7 |
| `.github/workflows/generate-api-diffs.yml` | 9 | 3 |
| `.github/workflows/run-tests.yml` | 4 | 5 |
| `.github/workflows/typescript-api-compat.yml` | 2 | 2 |
| `Directory.Build.props` | 1 | 1 |
| `Directory.Packages.props` | 65 | 88 |
| `docs/ci/azdo-public-pipeline.md` | 1 | 1 |
| `docs/ci/ci-failure-issues.md` | 5 | 3 |
| `docs/ci/template-component-governance.md` | 1 | 1 |
| `docs/contributing.md` | 2 | 0 |
| `eng/ContentPackage.targets` | 17 | 0 |
| `eng/SpecializedTestRunsheetBuilderBase.targets` | 1 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `ea5b976` Raise Aspire's minimum target framework to .NET 10
- `6a3ea62` Merge main and preserve .NET 10/11 target policy
- `66df184` Fix framework migration compiler and analyzer failures
- `ede845e` Address framework migration review feedback
- `a506d92` Remove stale Npgsql override comments
- `c75be34` Merge latest main into .NET 10 baseline migration
- `d9c2998` Repair RID content packaging after framework migration
- `4af26cb` Document supported SDK payloads for Helix template tests
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

repository の project target と開発・CI 基盤の最低 framework が .NET 10 になりました。コミットでは .NET 10／11 target policy を維持し、移行時の analyzer、compiler、RID packaging の修正も含みます。

**既存利用者への影響**

Aspire の SDK／AppHost を .NET 10 以降へ更新し、.NET 10 未満の環境での build／test を前提とするパイプラインを見直してください。

### [#20287](https://github.com/microsoft/aspire/pull/20287) — Configure native agent plugins and independent assets

- 作者: ellahathaway / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +0 / -0
- マージ日時 (UTC): `2026-10-13 00:17:42`

**変更概要**

Native agent plugin と独立した asset を構成するための設定・統合を Aspire に追加します。
この PR は収集された変更ファイル・コミット差分が 0 件のため、公開 API や具体的な runtime 挙動の詳細はこのレポートだけでは確認できません。
agent plugin／asset 構成を利用する場合はリンク先の PR 説明を確認してください。

**コミットレベルの詳細 (API 変化・破壊的変更)**

取得された差分情報が 0 行のため、API signature の追加・変更や破壊的変更の内容は特定できません。PR 本文・設計資料で実際の契約を確認してください。

**既存利用者への影響**

実際に native agent plugin／independent asset を利用する構成のみ、PR 本文に記載された設定変更を確認してください。差分の収集情報がないため一律の移行要否は断定できません。

### [#20135](https://github.com/microsoft/aspire/pull/20135) — Support environment-specific Aspire secrets for deployment

- 作者: davidfowl / 状態: MERGED
- ラベル: `breaking-change` `area-cli`
- 変更行数: +3013 / -284
- マージ日時 (UTC): `2026-10-14 09:11:31`

**変更概要**

Aspire CLI の deploy pipeline で環境ごとの secrets を選択・管理できるようにします。
secret の set／get／list／delete、path、deployment state の JSON 型と環境識別を更新し、CLI end-to-end テストを追加しました。
複数環境へ deploy する利用者の secret 管理と state に関わる **破壊的変更** です。

<details><summary>変更ファイル (50 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-output-formats.md` | 9 | 1 |
| `src/Aspire.Cli/Aspire.Cli.csproj` | 1 | 0 |
| `src/Aspire.Cli/Commands/DeployCommand.cs` | 3 | 2 |
| `src/Aspire.Cli/Commands/DestroyCommand.cs` | 3 | 2 |
| `src/Aspire.Cli/Commands/DoCommand.cs` | 3 | 2 |
| `src/Aspire.Cli/Commands/PipelineCommandBase.cs` | 48 | 1 |
| `src/Aspire.Cli/Commands/PublishCommand.cs` | 3 | 2 |
| `src/Aspire.Cli/Commands/RenderCommand.cs` | 6 | 1 |
| `src/Aspire.Cli/Commands/RunCommand.cs` | 8 | 0 |
| `src/Aspire.Cli/Commands/SecretCommand.cs` | 16 | 0 |
| `src/Aspire.Cli/Commands/SecretDeleteCommand.cs` | 20 | 6 |
| `src/Aspire.Cli/Commands/SecretGetCommand.cs` | 7 | 5 |
| `src/Aspire.Cli/Commands/SecretListCommand.cs` | 88 | 5 |
| `src/Aspire.Cli/Commands/SecretPathCommand.cs` | 7 | 5 |
| `src/Aspire.Cli/Commands/SecretSetCommand.cs` | 8 | 8 |
| _... 他 35 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `b0cf164` Support deployment environment secrets
- `8fc1f23` Add deployment secrets CLI E2E coverage
- `d20a06e` Preserve environment secret selection and migration
- `6908859` Fix environment secret identity and configuration isolation
- `c45707c` Preserve custom host environments and typed deployment state
- `989aba6` Preserve caller-owned secrets directory permissions
- `bb8695e` Merge main and integrate deployment secrets with current CLI services
- `85ce514` Preserve deployment state JSON types during secret edits and migration
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI に環境別 secret の操作・選択を導入し、secret identity／configuration isolation と migration、deployment state の型保持を追加しています。既存 secret の path／選択規則と state の移行互換性を確認してください。

**既存利用者への影響**

環境別 secrets を使う場合は CLI の新しい環境指定と移行規則に合わせ、既存 secrets／deployment state のバックアップ後に deploy・destroy・secret 操作を検証してください。

### [#20789](https://github.com/microsoft/aspire/pull/20789) — Bump source-map-js from 1.2.1 to 1.2.2 in /extension

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `area-codeflow` `javascript` `dependencies`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-10-07 18:05:14`

**変更概要**

Aspire extension の `source-map-js` を 1.2.1 から 1.2.2 に更新する依存修正です。
変更は Yarn lockfile に限定され、extension の公開機能・API には影響しません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/yarn.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `91fe3b1` Bump source-map-js from 1.2.1 to 1.2.2 in /extension

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`extension/yarn.lock` の依存バージョンのみが変わり、公開 API やアプリケーションコードの変更はありません。

**既存利用者への影響**

移行作業は不要です。extension の依存を再インストールして lockfile の更新を反映してください。

### [#20757](https://github.com/microsoft/aspire/pull/20757) — Bump proxy-addr from 2.0.7 to 2.0.8 in /extension

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `area-codeflow` `javascript` `dependencies`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-10-07 20:38:21`

**変更概要**

Aspire extension の `proxy-addr` を 2.0.7 から 2.0.8 に更新します。
Yarn lockfile のみの変更で、Aspire の API や extension の利用方法は変わりません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/yarn.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `6624651` Bump proxy-addr from 2.0.7 to 2.0.8 in /extension

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存 lockfile の更新のみで、API signature の変更やコード上の挙動変更はありません。

**既存利用者への影響**

移行作業は不要です。extension をビルドする際に lockfile を同期してください。

### [#20867](https://github.com/microsoft/aspire/pull/20867) — Deprecate Aspire.AppHost.Sdk (ASPIRE012)

- 作者: davidfowl / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +1903 / -410
- マージ日時 (UTC): `2026-10-12 23:50:37`

**変更概要**

`Aspire.AppHost.Sdk` を非推奨化し、package-based C# AppHost へ移行するための診断、CLI project discovery、テンプレートとガイドを整備します。
ASPIRE012 警告を適切な SDK marker に限定し、初回 restore や package-only AppHost の検出を改善しました。
同 SDK を直接使うプロジェクトには移行が必要です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/list-of-diagnostics.md` | 3 | 2 |
| `docs/migrate-from-apphost-sdk.md` | 168 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 10 | 0 |
| `extension/scripts/run-e2e.js` | 28 | 0 |
| `extension/src/test-e2e/denoDebugger.e2e.test.ts` | 1 | 4 |
| `extension/src/test-e2e/edgeCases.e2e.test.ts` | 0 | 3 |
| `src/Aspire.AppHost.Sdk/SDK/Sdk.in.props` | 4 | 0 |
| `src/Aspire.AppHost.Sdk/SDK/Sdk.in.targets` | 15 | 0 |
| `src/Aspire.Cli/Commands/InitCommand.cs` | 4 | 10 |
| `src/Aspire.Cli/DotNet/DotNetCliRunner.cs` | 4 | 66 |
| `src/Aspire.Cli/Projects/AppHostInfoResolver.cs` | 7 | 4 |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 12 | 13 |
| `src/Aspire.Cli/Projects/FallbackProjectParser.cs` | 78 | 14 |
| `src/Aspire.Cli/Projects/ProjectUpdater.cs` | 206 | 21 |
| `src/Aspire.Cli/README.md` | 20 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (19 件)</summary>

- `4a7123d` Deprecate Aspire.AppHost.Sdk (ASPIRE012)
- `4e6d1ad` Gate ASPIRE012 obsolete-SDK warning on the real SDK marker
- `90d9b0d` Fix package-only AppHost activation and staged SDK migration
- `e82f4e7` Complete package-based C# AppHost defaults and required bundle integr…
- `75e78ef` Validate native template package lookup and graph-free runtime routing
- `c90fbb0` Handle first-restore AppHost discovery and test metadata run hooks
- `1ed3f18` Address package discovery and required-bundle review findings
- `bf9f791` Align archive E2E fixtures with package-based AppHosts
- _... 他 11 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ASPIRE012 の obsolete SDK 警告を追加し、package-based AppHost の既定値・discovery・runtime routing と CLI migration を整備します。`Aspire.AppHost.Sdk` の既存プロジェクト構成は **⚠ 非推奨** であり、移行先と SDK marker の判定に注意してください。

**既存利用者への影響**

`Aspire.AppHost.Sdk` を参照するプロジェクトは `docs/migrate-from-apphost-sdk.md` に沿って package-based C# AppHost へ移行し、restore と CLI discovery を確認してください。

### [#20782](https://github.com/microsoft/aspire/pull/20782) — Remove obsolete ASP.NET policy links from issue templates

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -10
- マージ日時 (UTC): `2026-10-10 00:14:12`

**変更概要**

Aspire repository の issue template から廃止済み ASP.NET policy へのリンクを削除します。
変更対象は bug／feature request template と設定ファイルで、利用者向け CLI／SDK の動作や公開 API は変更しません。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/ISSUE_TEMPLATE/10_bug_report.yml` | 1 | 3 |
| `.github/ISSUE_TEMPLATE/20_feature-request.yml` | 0 | 4 |
| `.github/ISSUE_TEMPLATE/config.yml` | 0 | 3 |

</details>

<details><summary>コミット (2 件)</summary>

- `1ada9f0` Initial plan
- `25f2de2` Remove obsolete issue policy links

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

GitHub issue template のリンク削除のみで、製品 API や runtime の変更はありません。

**既存利用者への影響**

利用者・開発者の移行作業は不要です。issue 作成時の古い policy リンクが表示されなくなります。

### [#16110](https://github.com/microsoft/aspire/pull/16110) — Add polyglot hosting integrations through ATS projection

- 作者: davidfowl / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +21814 / -1685
- マージ日時 (UTC): `2026-10-09 21:41:12`

**変更概要**

Aspire CLI の ATS projection を通じて polyglot hosting integration を追加し、C# 以外のアプリケーションを AppHost graph に接続できるようにします。
TypeScript／Nuxt などの検証、AppHost／integration の仕様、process management、CLI 設定 schema と test を追加しました。
既存 AppHost を保ったまま異種言語のサービスを統合する新しい拡張領域です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/polyglot-validation/Dockerfile.typescript` | 6 | 2 |
| `.github/workflows/polyglot-validation/test-nuxt-integration.sh` | 94 | 0 |
| `.github/workflows/polyglot-validation/test-typescript-integrations.sh` | 44 | 0 |
| `docs/specs/polyglot-apphost.md` | 47 | 15 |
| `docs/specs/polyglot-integrations.md` | 810 | 0 |
| `docs/specs/process-management.md` | 116 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 16 | 2 |
| `extension/schemas/aspire-config.schema.json` | 70 | 2 |
| `extension/schemas/aspire-global-settings.schema.json` | 16 | 0 |
| `extension/schemas/aspire-settings.schema.json` | 16 | 0 |
| `extension/scripts/generate-schema.js` | 23 | 0 |
| `extension/src/test/generateSchema.test.ts` | 86 | 0 |
| `playground/NuxtApp/api/package.json` | 9 | 0 |
| `playground/NuxtApp/api/server.mjs` | 23 | 0 |
| `playground/NuxtApp/apphost.mts` | 17 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (37 件)</summary>

- `fa8afe6` Spike polyglot integrations through ATS projection
- `b142ebb` Address PR review feedback
- `691145a` Fix CI: regenerate codegen snapshots and parse .csproj package shorth…
- `83951f7` Merge main and update polyglot integrations for the current CLI
- `e695ad4` Fix integration host argument boundaries and clean restore
- `09a4725` Address integration host compatibility and lifecycle feedback
- `bb76416` Merge main into davidfowl/ts-integration
- `3ec3fa4` Fix polyglot integration bootstrap and callback handling
- _... 他 29 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ATS projection と polyglot AppHost／integration の設定 schema を追加し、CLI が integration host の起動・callback・process lifecycle を扱う仕組みを導入しています。新しい設定と起動契約を使う場合は仕様書を参照してください。

**既存利用者への影響**

既存の .NET-only AppHost には移行不要です。新たに TypeScript／Nuxt 等を統合する場合は polyglot integration の仕様に沿って project と process 設定を追加してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20932 | Select supported agent clients and configuration scope | ellahathaway | <https://github.com/microsoft/aspire/pull/20932> |
| #21025 | Update Azure.Provisioning.ContainerService to 1.0.0-beta.7 | eerhardt | <https://github.com/microsoft/aspire/pull/21025> |
| #21021 | Bound async disposal in process shutdown tests | JamesNK | <https://github.com/microsoft/aspire/pull/21021> |
| #21004 | Recognize WSLc in Aspire doctor and clarify runtime selection | danegsta | <https://github.com/microsoft/aspire/pull/21004> |
| #21020 | Repair existing deployment E2E tests for current templates | mitchdenny | <https://github.com/microsoft/aspire/pull/21020> |
| #20712 | Fix Foundry SDK compatibility and update Azure AI client integrations | tommasodotNET | <https://github.com/microsoft/aspire/pull/20712> |
| #21019 | Use Web PubSub emulator beta.2 health checks and HTTPS in playground | vicancy | <https://github.com/microsoft/aspire/pull/21019> |
| #19763 | Standardize NuGet restore and channel-update policy across AppHosts | danegsta | <https://github.com/microsoft/aspire/pull/19763> |
| #20966 | Fix FileSystemService delegation in testing builders | Copilot | <https://github.com/microsoft/aspire/pull/20966> |
| #20877 | [release/13.6] Bump version to 13.6.2 | Copilot | <https://github.com/microsoft/aspire/pull/20877> |
| #19989 | Label unassigned Copilot-authored PRs | ellahathaway | <https://github.com/microsoft/aspire/pull/19989> |
| #21006 | Replace Azure Npgsql's flagged JWT test literal with dummy claims | radical | <https://github.com/microsoft/aspire/pull/21006> |
| #20722 | Restrict GitHub workflows to microsoft/aspire | Copilot | <https://github.com/microsoft/aspire/pull/20722> |
| #20992 | Stabilize DCP timing tests and use shared async timeout helpers | JamesNK | <https://github.com/microsoft/aspire/pull/20992> |
| #20956 | Add Azure Web PubSub RunAsEmulator support | vicancy | <https://github.com/microsoft/aspire/pull/20956> |
| #20981 | Add integration coverage for terminal WebSocket authentication | mitchdenny | <https://github.com/microsoft/aspire/pull/20981> |
| #20943 | Add VS Code debugging for Node Azure Functions | mitchdenny | <https://github.com/microsoft/aspire/pull/20943> |
| #20906 | Disable dashboard telemetry in Docker and Kubernetes deployments | JamesNK | <https://github.com/microsoft/aspire/pull/20906> |
| #20972 | Keep DCP watches draining and close abandoned connections | danegsta | <https://github.com/microsoft/aspire/pull/20972> |
| #20905 | Align dashboard and CLI telemetry metadata and enrichment | JamesNK | <https://github.com/microsoft/aspire/pull/20905> |
| #20642 | test(dashboard): run Playwright tests as non-blocking outerloop | radical | <https://github.com/microsoft/aspire/pull/20642> |
| #20855 | Update Azure.Provisioning.Cdn to beta.4 | eerhardt | <https://github.com/microsoft/aspire/pull/20855> |
| #20880 | Fix Azure Npgsql username resolution for Base64Url token payloads | enhancer13 | <https://github.com/microsoft/aspire/pull/20880> |
| #20771 | Add test that a fully cached run does not create a provisioning context | mauri0686 | <https://github.com/microsoft/aspire/pull/20771> |
| #20888 | Fix dashboard command failure toasts containing HTML-like output | JamesNK | <https://github.com/microsoft/aspire/pull/20888> |
| #20840 | Fix stale overflow indexes in trace resource tooltips | JamesNK | <https://github.com/microsoft/aspire/pull/20840> |
| #17980 | Add TypeScript Azure Functions app support | davidfowl | <https://github.com/microsoft/aspire/pull/17980> |
| #14668 | Entra ID integration API proposal for discussion | jmprieur | <https://github.com/microsoft/aspire/pull/14668> |
| #19349 | Add IServiceProvider support to Cosmos DB extensions | AdamDotNet | <https://github.com/microsoft/aspire/pull/19349> |
| #19878 | Remove dead Playwright scanner applicators | ellahathaway | <https://github.com/microsoft/aspire/pull/19878> |
| #20851 | Improve CLI and Dashboard product telemetry shutdown durability | JamesNK | <https://github.com/microsoft/aspire/pull/20851> |
| #20112 | Fix VS Code extension re-adding nonexistent configured AppHost path | SankeerthNara | <https://github.com/microsoft/aspire/pull/20112> |
| #20916 | Fix flaky chart filter popover assertion | JamesNK | <https://github.com/microsoft/aspire/pull/20916> |
| #20775 | Ship TerminalHost as a standalone Native AOT bundle executable | mitchdenny | <https://github.com/microsoft/aspire/pull/20775> |
| #20177 | Migrate dashboard consumers to canonical Aspire images | IEvangelist | <https://github.com/microsoft/aspire/pull/20177> |
| #20907 | Pre-acquire selected Azure deployment token audiences | mitchdenny | <https://github.com/microsoft/aspire/pull/20907> |
| #20917 | Default AKS clusters to the Standard control-plane tier | mitchdenny | <https://github.com/microsoft/aspire/pull/20917> |
| #20155 | Visually distinguish hidden resources in the dashboard grid | afscrome | <https://github.com/microsoft/aspire/pull/20155> |
| #18108 | Add optional parameters and programmatic value setting | davidfowl | <https://github.com/microsoft/aspire/pull/18108> |
| #20910 | Fix Release compilation of CLI bootstrap tests | mitchdenny | <https://github.com/microsoft/aspire/pull/20910> |
| #20812 | Use anonymous ingress in DotnetProject Sandbox deployment test | mitchdenny | <https://github.com/microsoft/aspire/pull/20812> |
| #20818 | Disable App Configuration provisioning deployment test | mitchdenny | <https://github.com/microsoft/aspire/pull/20818> |
| #20847 | Add Kubernetes fileKeyRef environment variable support | mitchdenny | <https://github.com/microsoft/aspire/pull/20847> |
| #20889 | Fix 10 second dispose delay in dashboard component tests using FluentDataGrid | afscrome | <https://github.com/microsoft/aspire/pull/20889> |
| #20846 | Add dashboard startup telemetry | JamesNK | <https://github.com/microsoft/aspire/pull/20846> |
| #20755 | Fix dashboard histogram temporality, resets, and bucket aggregation | JamesNK | <https://github.com/microsoft/aspire/pull/20755> |
| #20874 | Update Microsoft Developer Control Plane to 0.27.0 | Copilot | <https://github.com/microsoft/aspire/pull/20874> |
| #20843 | Consolidate RESX generator metadata and align resource visibility | JamesNK | <https://github.com/microsoft/aspire/pull/20843> |
| #20849 | Update milestone changelog for 17.0 | JamesNK | <https://github.com/microsoft/aspire/pull/20849> |
| #20811 | Fix dashboard graph initialization and circuit teardown errors | JamesNK | <https://github.com/microsoft/aspire/pull/20811> |
| #20819 | Add Markdown descriptions to dashboard text visualizer dialogs | JamesNK | <https://github.com/microsoft/aspire/pull/20819> |
| #20752 | Recover ambiguous DCP creates with configurable timeouts | danegsta | <https://github.com/microsoft/aspire/pull/20752> |
| #20830 | fix(java): update Log4j in Spring Boot samples and starter | radical | <https://github.com/microsoft/aspire/pull/20830> |
| #20857 | Remove ASPIREAZURE003 from Azure role-assignment APIs | eerhardt | <https://github.com/microsoft/aspire/pull/20857> |
| #20086 | [WIP] Fix Go AppHost start timeout error | Copilot | <https://github.com/microsoft/aspire/pull/20086> |
| #20557 | Fix TypeScript Bicep parameter expressions on enum Azure properties | sebastienros | <https://github.com/microsoft/aspire/pull/20557> |
| #20831 | fix(deps): patch JavaScript proxy, source-map and database telemetry | radical | <https://github.com/microsoft/aspire/pull/20831> |
| #20763 | Fix VS Code AppHost watcher lifecycle and duplicate startup RPCs | ellahathaway | <https://github.com/microsoft/aspire/pull/20763> |
| #20823 | Graduate Dockerfile builder APIs | mitchdenny | <https://github.com/microsoft/aspire/pull/20823> |
| #20795 | ci: prevent checkout-dependent agentic workflow schedule drift | radical | <https://github.com/microsoft/aspire/pull/20795> |
| #20538 | Use hardened Sigstore cache configuration | mitchdenny | <https://github.com/microsoft/aspire/pull/20538> |
| #20816 | Graduate deployment-state APIs (ASPIREPIPELINES002) to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20816> |
| #20817 | Graduate user secrets APIs from experimental to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20817> |
| #20814 | Graduate pipeline output service APIs to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20814> |
| #20820 | Graduate core Azure deployment APIs to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20820> |
| #20809 | Graduate core pipeline APIs to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20809> |
| #20798 | Avoid flaky Blazor test temp-directory cleanup | Copilot | <https://github.com/microsoft/aspire/pull/20798> |
| #20808 | Graduate filesystem APIs from experimental to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20808> |
| #20813 | Graduate HTTP probe APIs to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20813> |
| #20806 | Graduate Azure Container Apps resource naming APIs to stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20806> |
| #20788 | Improve Git test diagnostics and process cleanup | JamesNK | <https://github.com/microsoft/aspire/pull/20788> |
| #20783 | Fix dashboard selection of shortened resource instance IDs | JamesNK | <https://github.com/microsoft/aspire/pull/20783> |
| #20779 | Disable sandbox .NET deployment test after endpoint authentication failure | mitchdenny | <https://github.com/microsoft/aspire/pull/20779> |
| #20780 | Disable Foundry toolbox deployment test | mitchdenny | <https://github.com/microsoft/aspire/pull/20780> |
| #20754 | Add SQL highlighting to the dashboard text visualizer | JamesNK | <https://github.com/microsoft/aspire/pull/20754> |
| #20753 | Format dashboard record counts for the active culture | Copilot | <https://github.com/microsoft/aspire/pull/20753> |
| #20793 | Prepare VS Code extension release v1.24.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20793> |
| #20658 | Improve dev tunnel startup and lifecycle tracking | DamianEdwards | <https://github.com/microsoft/aspire/pull/20658> |
| #20785 | Update PackageValidationBaselineVersion to 13.6.1 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20785> |
| #20610 | ci: enforce actionlint for handwritten workflows | radical | <https://github.com/microsoft/aspire/pull/20610> |
| #17885 | Allow choosing the Service Bus emulator SQL instance | thomhurst | <https://github.com/microsoft/aspire/pull/17885> |
| #20776 | Regenerate strongly typed string resource classes | JamesNK | <https://github.com/microsoft/aspire/pull/20776> |
| #20748 | Add Terminals keyboard shortcut and improve dashboard shortcut help | JamesNK | <https://github.com/microsoft/aspire/pull/20748> |
| #20571 | Use a direct connection for Mongo Express with single-member replica sets | sebastienros | <https://github.com/microsoft/aspire/pull/20571> |
| #20734 | Clarify dashboard and CLI application review guidance | JamesNK | <https://github.com/microsoft/aspire/pull/20734> |
| #20705 | Configure Windows NuGet package paths in GitHub Actions | sebastienros | <https://github.com/microsoft/aspire/pull/20705> |
| #20762 | [release/13.6] metrics tree scroll issue fixed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20762> |
| #20747 | [release/13.6] Reduce dashboard CPU under sustained metric ingestion | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20747> |
| #19414 | Add Aspire editor assistance language model tools | adamint | <https://github.com/microsoft/aspire/pull/19414> |
| #20758 | metrics tree scroll issue fixed | heyysiri | <https://github.com/microsoft/aspire/pull/20758> |
| #20746 | Add Mermaid resource graph export to the dashboard and CLI | mitchdenny | <https://github.com/microsoft/aspire/pull/20746> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20921 | Support existing Azure Kubernetes environments | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20921> |
| PR | #20937 | Provision Microsoft Entra registrations using Azure.Provisioning | open | eerhardt | <https://github.com/microsoft/aspire/pull/20937> |
| PR | #20936 | Mark Kubernetes hosting packages as stable | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20936> |
| PR | #20946 | Configure native agent plugins | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20946> |
| PR | #20919 | Fix AKS AcrPull for existing cross-resource-group registries | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20919> |
| PR | #21009 | Add initial WSLc publish/deploy support with explicit capability limits | open | danegsta | <https://github.com/microsoft/aspire/pull/21009> |
| PR | #21013 | Persist stable AppHost ports and add worktree isolation | open | danegsta | <https://github.com/microsoft/aspire/pull/21013> |
| PR | #20977 | Update to .NET 11 RC2 | open | JamesNK | <https://github.com/microsoft/aspire/pull/20977> |
| PR | #20947 | Retire embedded Aspire skills bundle | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20947> |
| PR | #21022 | Automate agentic workflow recompilation after gh-aw updates | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21022> |
| PR | #21034 | fix(ci): Let CodeQL bootstrap the pinned prerelease .NET SDK | open | radical | <https://github.com/microsoft/aspire/pull/21034> |
| PR | #21033 | Fix template injection in handwritten GitHub workflows | open | radical | <https://github.com/microsoft/aspire/pull/21033> |
| PR | #21029 | Improve error guidance for compute resources in Foundry projects | open | Mr444-dev | <https://github.com/microsoft/aspire/pull/21029> |
| PR | #20976 | fix(installer): prevent cross-build CLI checksum failures | open | radical | <https://github.com/microsoft/aspire/pull/20976> |
| PR | #20901 | [ci] Fix possible template injection in workflows | open | Copilot | <https://github.com/microsoft/aspire/pull/20901> |
| PR | #21012 | fix(build): build Dashboard once for native CLI bundles | open | radical | <https://github.com/microsoft/aspire/pull/21012> |
| PR | #20897 | Add opt-in AppHost Server v2 to the CLI bundle | open | davidfowl | <https://github.com/microsoft/aspire/pull/20897> |
| PR | #21018 | ci: avoid downloading full diagnostics for test summaries | open | radical | <https://github.com/microsoft/aspire/pull/21018> |
| PR | #21017 | ci: start extension E2E as each platform becomes ready | open | radical | <https://github.com/microsoft/aspire/pull/21017> |
| PR | #20989 | Allow 500 trace log tooltips per span | open | JamesNK | <https://github.com/microsoft/aspire/pull/20989> |
| PR | #21002 | [release/13.6] Keep DCP watches draining and close abandoned connections | open | danegsta | <https://github.com/microsoft/aspire/pull/21002> |
| PR | #20764 | Add native Linux tray support with StatusNotifierItem menus | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/20764> |
| PR | #20856 | Update Azure.Provisioning.Storage to 1.2.0-beta.2 | open | eerhardt | <https://github.com/microsoft/aspire/pull/20856> |
| PR | #20868 | [release/13.6] Recover ambiguous DCP creates with configurable timeouts | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20868> |
| PR | #20950 | Add launch groups for partial application runs | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/20950> |
| PR | #20973 | fix(ci): fix test selection - determining changes | open | radical | <https://github.com/microsoft/aspire/pull/20973> |
| PR | #20993 | Fix Redis graceful shutdown by replacing the shell with exec | open | Pattrigue | <https://github.com/microsoft/aspire/pull/20993> |
| PR | #20988 | Add OSC 7501 terminal status panel and default auto-fit | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20988> |
| PR | #20984 | Support environment and interactive input for CLI secrets | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20984> |
| PR | #20971 | Stabilize Kubernetes create-recovery retry-delay tests | open | Copilot | <https://github.com/microsoft/aspire/pull/20971> |
| PR | #20829 | fix(deps): update Next.js, multidict, and PyJWT for security advisories | open | radical | <https://github.com/microsoft/aspire/pull/20829> |
| PR | #20969 | test: Disable DCP confirmation retry-delay test pending investigation | open | radical | <https://github.com/microsoft/aspire/pull/20969> |
| PR | #20970 | Clarify infrastructure-test evaluation guidance | open | Copilot | <https://github.com/microsoft/aspire/pull/20970> |
| PR | #20961 | [release/13.6] Fix dashboard command failure toasts containing HTML-like output | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20961> |
| PR | #20960 | [release/13.6] Fix stale overflow indexes in trace resource tooltips | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20960> |
| PR | #20958 | Preserve package-only AppHost nesting and use starter directory paths | open | davidfowl | <https://github.com/microsoft/aspire/pull/20958> |
| PR | #20952 | Reduce allocations in resource dependency discovery | open | chansharp | <https://github.com/microsoft/aspire/pull/20952> |
| PR | #20924 | [Spike] Add GitHub Pages static hosting and bundle generation | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20924> |
| PR | #20765 | Honor nested AppHost launch profiles without the C# extension | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20765> |
| PR | #20801 | Add temporary Agent Merge pilot artifact | open | Copilot | <https://github.com/microsoft/aspire/pull/20801> |
| PR | #20918 | Support ACME External Account Binding in cert-manager | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20918> |
| PR | #20914 | ci: cap blind PR CI auto-reruns at 2 | open | austenstone | <https://github.com/microsoft/aspire/pull/20914> |
| PR | #20909 | Bump http-cache-semantics from 4.2.0 to 4.3.0 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20909> |
| PR | #20892 | Improve display of Urls in main dashboard grid. | open | afscrome | <https://github.com/microsoft/aspire/pull/20892> |
| PR | #20898 | Share Java wrapper discovery and launch between the CLI and Aspire.Hosting.Java | open | flojon | <https://github.com/microsoft/aspire/pull/20898> |
| PR | #20896 | Add opt-in HTTPS for Quarkus apps | open | flojon | <https://github.com/microsoft/aspire/pull/20896> |
| PR | #20893 | Add opt-in HTTPS for Spring Boot apps | open | flojon | <https://github.com/microsoft/aspire/pull/20893> |
| PR | #20895 | Launch Windows Java build wrappers with an explicit .\ path | open | flojon | <https://github.com/microsoft/aspire/pull/20895> |
| PR | #20887 | Skip initdb fsync for ephemeral PostgreSQL containers in run mode | open | thomhurst | <https://github.com/microsoft/aspire/pull/20887> |
| PR | #20767 | [release/13.6] Fix TypeScript Bicep parameter expressions on enum Azure properties | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20767> |
| PR | #20854 | Bump the npm group across 1 directory with 23 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20854> |
| PR | #20852 | Add first-class resource volume reset | open | davidfowl | <https://github.com/microsoft/aspire/pull/20852> |
| PR | #20841 | Added Kubernetes Gateway API GRPCRoute Support | open | adam8797 | <https://github.com/microsoft/aspire/pull/20841> |
| PR | #20824 | added "seb just built this!" authorship analyzer | open | heyysiri | <https://github.com/microsoft/aspire/pull/20824> |
| PR | #20797 | Investigate intermittent StartCommand timeouts on macOS | open | Copilot | <https://github.com/microsoft/aspire/pull/20797> |
| PR | #20796 | Retry MongoDB replica-set configuration during member recovery | open | Copilot | <https://github.com/microsoft/aspire/pull/20796> |
| PR | #20805 | Add CLI config sources design spec | open | JamesNK | <https://github.com/microsoft/aspire/pull/20805> |
| PR | #20786 | Make user secrets deployment state log messages accurate | open | erenemrearik | <https://github.com/microsoft/aspire/pull/20786> |
| PR | #20787 | Increment release version to 13.6.2 | open | joperezr | <https://github.com/microsoft/aspire/pull/20787> |
| PR | #20766 | Enable VS Code usefulness feedback through January 4, 2027 | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/20766> |
| PR | #20677 | Validate deployment defaults after subscription cutover | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/20677> |
| PR | #21035 | Investigate macOS child-process shutdown timeout — no validated fix | closed | Copilot | <https://github.com/microsoft/aspire/pull/21035> |
| PR | #21036 | [WIP] Diagnose and validate issue microsoft/aspire#20938 | closed | Copilot | <https://github.com/microsoft/aspire/pull/21036> |
| PR | #21039 | Investigate macOS child-process shutdown timeout | closed | Copilot | <https://github.com/microsoft/aspire/pull/21039> |
| PR | #21027 | No validated fix to describe | closed | Copilot | <https://github.com/microsoft/aspire/pull/21027> |
| PR | #21011 | No validated fix for macOS child-process shutdown timeout | closed | Copilot | <https://github.com/microsoft/aspire/pull/21011> |
| PR | #20615 | ci: run Infrastructure.Tests for covered CI inputs | closed | radical | <https://github.com/microsoft/aspire/pull/20615> |
| PR | #20983 | Investigate intermittent ChildProcess shutdown timeout (no code change) | closed | Copilot | <https://github.com/microsoft/aspire/pull/20983> |
| PR | #17757 | Add agent resource support | closed | tommasodotNET | <https://github.com/microsoft/aspire/pull/17757> |
| PR | #18433 | Introduce `NatsClusterResource` | closed | aradalvand | <https://github.com/microsoft/aspire/pull/18433> |
| PR | #21003 | Share Homebrew cask validation across official builds and the tap | closed | radical | <https://github.com/microsoft/aspire/pull/21003> |
| PR | #21000 | [DO NOT MERGE] Verify DCP clock isolation and health shutdown | closed | JamesNK | <https://github.com/microsoft/aspire/pull/21000> |
| PR | #20996 | [DO NOT MERGE] Verify DCP timing helper hardening | closed | JamesNK | <https://github.com/microsoft/aspire/pull/20996> |
| PR | #20991 | [DO NOT MERGE] Verify deterministic Kubernetes retry-delay tests | closed | JamesNK | <https://github.com/microsoft/aspire/pull/20991> |
| PR | #20974 | [WIP] Diagnose and repair flaky test defects | closed | Copilot | <https://github.com/microsoft/aspire/pull/20974> |
| PR | #20962 | [DO NOT MERGE] Investigate Windows DCP recovery-budget main baseline | closed | davidfowl | <https://github.com/microsoft/aspire/pull/20962> |
| PR | #20283 | Separate telemetry hook maintenance from skills bundles | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/20283> |
| PR | #20927 | No PR proposed: no validated fix | closed | Copilot | <https://github.com/microsoft/aspire/pull/20927> |
| PR | #20875 | Diagnose CLI channel-update E2E timeout | closed | Copilot | <https://github.com/microsoft/aspire/pull/20875> |
| PR | #20862 | No code change proposed for the daily CLI smoke failure | closed | Copilot | <https://github.com/microsoft/aspire/pull/20862> |
| PR | #20790 | Mark MongoDB example credentials as placeholders | closed | radical | <https://github.com/microsoft/aspire/pull/20790> |
| PR | #20716 | Bump the npm group across 1 directory with 23 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20716> |
| PR | #20807 | Migrate deployment dashboard images to the Aspire repository | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/20807> |
| Issue | #21043 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21043> |
| Issue | #21042 | Support parameter-backed redirect URIs in the Entra ID hosting integration | open | eerhardt | <https://github.com/microsoft/aspire/issues/21042> |
| Issue | #21041 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21041> |
| Issue | #20866 | [Main CI Failure] Main branch CI failure at 943f0ff96f05ec93cd9f073406ba02fd651fa0ce | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20866> |
| Issue | #21040 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21040> |
| Issue | #21038 | AspireUI on Unraid Aborts Docker Deploy After 5 Minutes | open | farbraum | <https://github.com/microsoft/aspire/issues/21038> |
| Issue | #21037 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21037> |
| Issue | #20938 | [CI Failure] Flaky: ChildProcessTests.Shutdown_UsesSharedGracefulBudgetAndEscalates times out on macOS under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20938> |
| Issue | #20900 | aspire doctor doesn't account for WSL | closed | afscrome | <https://github.com/microsoft/aspire/issues/20900> |
| Issue | #21031 | Track gh-aw upgrade blocked by undefined daily-credit outputs in generated workflows | open | radical | <https://github.com/microsoft/aspire/issues/21031> |
| Issue | #21032 | [CI Failure] Flaky: TrayWatchStreamTests.UnacknowledgedDashboardCancellationCannotAccumulateRequestsAcrossSnapshots(saturateSlots: True) asserts wrong reconciliation count | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21032> |
| Issue | #21030 | Support explicit owners for provisioned Microsoft Entra application registrations and service principals | open | eerhardt | <https://github.com/microsoft/aspire/issues/21030> |
| Issue | #21028 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21028> |
| Issue | #20978 | Forward Core Tools stdout/stderr to resource logs for .NET and TypeScript Functions in VS Code | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20978> |
| Issue | #20859 | [CI Failure] Flaky: DevTunnelMonitorTests.CancellingAHealthCallerDoesNotCancelTheSharedObserver throws ObjectDisposedException on disposed IServiceProvider | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20859> |
| Issue | #20935 | [CI Failure] Flaky: DevTunnelMonitorTests.AnotherHostCannotEstablishUnknownLocalReadiness throws ObjectDisposedException on disposed IServiceProvider | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20935> |
| Issue | #21026 | [CI Failure] Flaky: DistributedApplicationTests.BeforeResourceStartedEvent_NotFiredForExplicitStartOnInitialCreation times out with TaskCanceledException in DistributedApplication.StopAsync | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21026> |
| Issue | #20844 | [CI Failure] Flaky: ProcessExecutionDetachedTests.StartAsync_OnWindows_ProvidesValidNullStdin times out | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20844> |
| Issue | #20772 | [CI Failure] Flaky: TrayWatchStreamTests.StalledResourceWatchDoesNotBlockReconciliationOrQuit (removeFirst: False) asserts wrong reconciliation count | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20772> |
| Issue | #20986 | Support masked secret prompts with reveal/hide in the VS Code extension | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20986> |
| Issue | #21024 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21024> |
| Issue | #21023 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21023> |
| Issue | #20967 | aspire docs api: read the API catalog from the sitemap index so on-demand API pages on aspire.dev stay discoverable | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20967> |
| Issue | #21015 | Reduce GitHub CI wall time by removing unnecessary dependency waits | open | radical | <https://github.com/microsoft/aspire/issues/21015> |
| Issue | #21016 | [aw] Analyze CI Failure is missing required tool | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21016> |
| Issue | #21014 | Adopt shared bounded-name helper across deployment-generated names | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21014> |
| Issue | #20955 | FileSystemService throws NotImplementedException on testing builders | closed | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20955> |
| Issue | #21010 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21010> |
| Issue | #21008 | Allow configuring how long a container gets to stop (DCP stops containers after a fixed 10 s) | open | jurby | <https://github.com/microsoft/aspire/issues/21008> |
| Issue | #21007 | [CI Failure] Flaky: ChildProcessTests.Shutdown_UsesSharedGracefulBudgetAndEscalates(signalFailure: True) times out on macOS under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21007> |
| Issue | #20891 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Dashboard) RemoteExecutor times out on macOS under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20891> |
| Issue | #20871 | [CI Failure] Flaky: ChildProcessTests.Windows_GracefulTimeoutPreservesAppHostCleanupWorkerButReapsOwnedTrees throws when reading ExitCode on a process not started by the object | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20871> |
| Issue | #21005 | [dnceng-bot] Branch `aspire/main` can't be mirrored to Azdo fast forward branch | open | dotnet-mirroring[bot] | <https://github.com/microsoft/aspire/issues/21005> |
| Issue | #21001 | Can't run/debug AppHost in Visual Studio 18.11.0: "IDE returned a response indicating failure" | open | bgrainger | <https://github.com/microsoft/aspire/issues/21001> |
| Issue | #20999 | Kubernetes publish: WithHttpProbe without endpointName picks the https endpoint scheme but the http port | open | ras3pilot | <https://github.com/microsoft/aspire/issues/20999> |
| Issue | #20998 | [CI Failure] Flaky: Aspire Node Functions debugger E2E times out waiting for HTTP breakpoint on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20998> |
| Issue | #20997 | [AspireE2E] dotnet watch reports project not found in the project graph in Aspire 17.0 Preview 1 | open | sab1n311 | <https://github.com/microsoft/aspire/issues/20997> |
| Issue | #20994 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20994> |
| Issue | #20995 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20995> |
| Issue | #20990 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20990> |
| Issue | #20987 | [AspireE2E] dotnet watch does not detect file changes or trigger Hot Reload in Aspire 17.0 Preview 1 | open | Chakolito | <https://github.com/microsoft/aspire/issues/20987> |
| Issue | #20985 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20985> |
| Issue | #20982 | [CI Failure] GitHub artifact upload fails with ECONNRESET during FinalizeArtifact | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20982> |
| Issue | #20980 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20980> |
| Issue | #20872 | [Main CI Failure] Main branch CI failure at 785cf4c7d38f54cacaf71cd35ceec04d83534679 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20872> |
| Issue | #20979 | Support --envvar-source for aspire secret set | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20979> |
| Issue | #20975 | [automated] Daily CLI installer can download an archive and checksum from different builds | open | radical | <https://github.com/microsoft/aspire/issues/20975> |
| Issue | #20968 | [automated] [Failing test]: KubernetesServiceTests.CreateAsync_RecoveryBudgetIncludesConfirmationRetryDelay fails on Windows | open | radical | <https://github.com/microsoft/aspire/issues/20968> |
| Issue | #20965 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20965> |
| Issue | #20804 | Add support for ACME providers other than LetsEncrypt in cert manager K8S extension | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20804> |
| Issue | #20964 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Local) RemoteExecutor times out on macOS under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20964> |
| Issue | #20963 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20963> |
| Issue | #20959 | Container tunnel: after the tunnel-server's stream ends mid-session, DCP removes the client proxy container and never recreates it, so `aspire.dev.internal` stops resolving for the rest of the run | open | MasteRaven | <https://github.com/microsoft/aspire/issues/20959> |
| Issue | #20957 | Dashboard telemetry API returns HTTP 500 when SQLite database cannot be opened, while dashboard reports healthy | open | davidfowl | <https://github.com/microsoft/aspire/issues/20957> |
| Issue | #20839 | [CI Failure] Flaky: VS Code extension E2E (Linux, deno-debugger) times out waiting for Aspire AppHost debug startup | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20839> |
| Issue | #20954 | [CI Failure] Flaky: WithUrlsTests.WithUrlForEndpointCanLinkToAnotherResourcesEndpoint host shutdown times out with TaskCanceledException in DistributedApplication.StopAsync | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20954> |
| Issue | #20953 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Agent) RemoteExecutor times out on macOS under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20953> |
| Issue | #20951 | Azure Functions follow-up: restore npm dependencies before local startup | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20951> |
| Issue | #20944 | Add ArchiMate resource graph export to the dashboard and CLI | open | MedAnd | <https://github.com/microsoft/aspire/issues/20944> |
| Issue | #20949 | Azure Functions follow-up: deduplicate host-storage relationships for multiple Functions resources | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20949> |
| Issue | #20945 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20945> |
| Issue | #20941 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20941> |
| Issue | #20942 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20942> |
| Issue | #20940 | [CI Failure] Flaky: SdkInstallerTests.RunCommand_WhenSdkNotInstalled_ReturnsCorrectExitCode times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20940> |
| Issue | #20911 | [CI Failure] Flaky: SdkInstallerTests.PublishCommand_WhenSdkNotInstalled_ReturnsCorrectExitCode times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20911> |
| Issue | #20939 | [CI Failure] Flaky: SdkInstallerTests.DeployCommand_WhenSdkNotInstalled_ReturnsCorrectExitCode times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20939> |
| Issue | #20761 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppTaskScriptWorks fixture InitializeAsync fails with 'denoscript' endpoint not allocated | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20761> |
| Issue | #20760 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppDirectExecutionWorks fixture InitializeAsync fails with 'denoscript' endpoint not allocated | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20760> |
| Issue | #20933 | Use directory paths with trailing slashes in template-generated AddDotnetProject calls | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/20933> |
| Issue | #20934 | Preserve Visual Studio file nesting capabilities in package-only AppHosts | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/20934> |
| Issue | #20931 | [CI Failure] Flaky: AzureSandboxesTests.AzureDevComputeClientKeepsCancellationAfterRejectedCreateDefinite races a 10ms cancellation against an immediate mocked response | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20931> |
| Issue | #20930 | [CI Failure] Flaky: VS Code extension E2E (Windows, launch-profiles) 'forwards launch profiles...' test times out probing process command lines via PowerShell | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20930> |
| Issue | #20903 | [CI Failure] Flaky: TerminalHostControlJsonSerializerContextTests.CancellationReachesServer times out after 30s on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20903> |
| Issue | #20902 | [CI Failure] Flaky: TerminalHostSignalTests.TerminalHostSubcommandStopsWhenOwningAppHostIsGone times out (aspire-managed exit code 124) on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20902> |
| Issue | #20929 | [CI Failure] Flaky: TrayWatchStreamTests.UnacknowledgedDashboardCancellationCannotAccumulateRequestsAcrossSnapshots asserts wrong reconciliation count | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20929> |
| Issue | #20928 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20928> |
| Issue | #20913 | [CI Failure] Flaky: ChartContainer_ParametersAndActiveView_OnlyRefreshAndRenderWhenChanged races on popover 'opened' attribute after click | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20913> |
| Issue | #20926 | CLI update notification displays build metadata for official releases | open | JamesNK | <https://github.com/microsoft/aspire/issues/20926> |
| Issue | #20923 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20923> |
| Issue | #20922 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20922> |
| Issue | #20920 | Improve Aspire.Hosting filesystem abstractions for cross-volume staging and file operations | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20920> |
| Issue | #20915 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_NoOptions_OnCancellation_ForceKillsProcessTreeAndReturns times out on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20915> |
| Issue | #20912 | [CI Failure] Flaky: DotnetProjectBuildCoordinatorTests.FileAppRebuildCommandBuildsEditedSourceAndRestartsResource hits a Windows file-lock race reading worker-ran.txt | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20912> |
| Issue | #20908 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20908> |
| Issue | #20845 | [13.6.1 regression] DCP cannot write kubeconfig on Windows with encryption software | open | niltor | <https://github.com/microsoft/aspire/issues/20845> |
| Issue | #20904 | Support optional parameters in the Aspire manifest schema | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20904> |
| Issue | #20899 | WSL Unsupported Version error not clear | open | afscrome | <https://github.com/microsoft/aspire/issues/20899> |
| Issue | #20894 | Race condition when downloading daily builds | open | afscrome | <https://github.com/microsoft/aspire/issues/20894> |
| Issue | #20890 | [CI Failure] Flaky: AgentInitCommandTests.AgentInitCommand_NonInteractive_InstallsProjectV2MigrationSkillWithReferences times out after 30s on macOS under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20890> |
| Issue | #20886 | Skip initdb fsync for ephemeral PostgreSQL containers in run mode | open | thomhurst | <https://github.com/microsoft/aspire/issues/20886> |
| Issue | #20885 | .Net 11 adds unattributed `dotnet-cli` otel resources / spans | open | afscrome | <https://github.com/microsoft/aspire/issues/20885> |
| Issue | #20884 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20884> |
| Issue | #20883 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20883> |
| Issue | #20882 | Missing musl support for WithRepl and AppHost-based terminal PTY APIs | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20882> |
| Issue | #20881 | Vet the WSLc (WSL Container) product experience | open | Copilot | <https://github.com/microsoft/aspire/issues/20881> |
| Issue | #20873 | Build an ATS-native integration runtime while preserving existing AppHost and integration compatibility | open | davidfowl | <https://github.com/microsoft/aspire/issues/20873> |
| Issue | #20879 | [Tracking] Pause further investment in Deno support (Deno staff joining Cloudflare) | open | Copilot | <https://github.com/microsoft/aspire/issues/20879> |
| Issue | #20870 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20870> |
| Issue | #20869 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) times out waiting to own a single 'ps' follower after a taskkill-based watcher-stop failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20869> |
| Issue | #20781 | Remove obsolete ASP.NET issue-policy links from issue templates | closed | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20781> |
| Issue | #20865 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20865> |
| Issue | #20864 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20864> |
| Issue | #20863 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20863> |
| Issue | #20861 | [CI Failure] Flaky: DevTunnelMonitorTests.HostOutputAllocatesPortsWithoutQueryingServiceStatus throws ObjectDisposedException on disposed IServiceProvider | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20861> |
| Issue | #20860 | Psychological | open | kali9ark-ops | <https://github.com/microsoft/aspire/issues/20860> |
| Issue | #20858 | Add the container tunnel domain to allowed hosts in AddViteApp in run mode | open | danegsta | <https://github.com/microsoft/aspire/issues/20858> |
| Issue | #20853 | [17.0] Changelog feedback | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20853> |
| Issue | #20850 | [CI Failure] Flaky: DenoTelemetryFunctionalTests.VerifyDenoAppExportsNativeTelemetryToDashboard fixture InitializeAsync fails with 'denoapp' endpoint not allocated | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20850> |
| Issue | #20848 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20848> |
| Issue | #20826 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20826> |
| Issue | #20842 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20842> |
| Issue | #20838 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20838> |
| Issue | #20837 | Migrate the Blazor gateway off obsolete AddCSharpApp | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20837> |
| Issue | #20836 | CLI 13.6.1: aspire ps reports no running AppHosts when one process check throws Access is denied | open | demyte | <https://github.com/microsoft/aspire/issues/20836> |
| Issue | #20835 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20835> |
| Issue | #20834 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20834> |
| Issue | #20833 | Support Key Vault resource references for Entra certificate credentials | open | eerhardt | <https://github.com/microsoft/aspire/issues/20833> |
| Issue | #20832 | CI: Specialized PR test selection omits coverage for shared runner changes | open | danegsta | <https://github.com/microsoft/aspire/issues/20832> |
| Issue | #20774 | [CI Failure] Flaky: AddBlazorGatewayTests.GetPublishPropertiesAsync_UsesReleaseConfiguration fails deleting a Windows temp directory locked by another process | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20774> |
| Issue | #20828 | Support installed Maven executables for Java apps | open | Pattrigue | <https://github.com/microsoft/aspire/issues/20828> |
| Issue | #20827 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20827> |
| Issue | #20822 | From version 13.6.0 the dashboard filter menu shows to the left and gets cut when Dashboard:UI:DisableResourceGraph is false | open | fvilches17 | <https://github.com/microsoft/aspire/issues/20822> |
| Issue | #20821 | Project v2 startup stalls after successful coordinated builds in Linux CI with Aspire 13.6.1 | open | Skovvart | <https://github.com/microsoft/aspire/issues/20821> |
| Issue | #20815 | [Failing test]: TypeScript App Configuration provisioning has failed since introduction in #20131 | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20815> |
| Issue | #20777 | [Failing test]: DeployDotnetProjectResourcesWithEndpointsAndAzureStorageToAzureSandbox returns HTTP 401 | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20777> |
| Issue | #20810 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20810> |
| Issue | #20803 | Add support for DNS-01 challenges in cert manager K8S extension | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20803> |
| Issue | #20778 | [Failing test]: Aspire.Deployment.EndToEnd.Tests.FoundryHostedAgentDeploymentTests.DeployFoundryToolboxToAzure | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20778> |
| Issue | #20773 | DCP Container/ContainerExec watch tasks time out (Polly 00:01:00) in Aspire 13.6.0 on a blank starter with no containers, even with Docker running (Windows ARM64) | closed | raj-oo8 | <https://github.com/microsoft/aspire/issues/20773> |
| Issue | #20802 | Add Npgsql multihost data source support | open | Clockwork-Muse | <https://github.com/microsoft/aspire/issues/20802> |
| Issue | #20800 | [automated] TEST: Validate upstream Copilot issue-to-PR and Agent Merge tracking | open | radical | <https://github.com/microsoft/aspire/issues/20800> |
| Issue | #20799 | [CI Failure] Flaky: Hex1bNativePublishingTests.NativeAssetsKeepTheirLayoutAndContents(win-x64, singleFile:False) fails parsing truncated/corrupted MSBuild JSON item output | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20799> |
| Issue | #20794 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20794> |
| Issue | #20792 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20792> |
| Issue | #20791 | NativeAOT dashboard size reduction oppotunities | open | sebastienros | <https://github.com/microsoft/aspire/issues/20791> |
| Issue | #20784 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20784> |
| Issue | #20770 | Implement launch groups for partial application runs in Aspire 17.0 | open | joperezr | <https://github.com/microsoft/aspire/issues/20770> |
| Issue | #20769 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20769> |
| Issue | #20768 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20768> |
| Issue | #20759 | [CI Failure] Flaky: ManageDataDialogTests(dashboardClientIsReadOnly: True) bUnit JSInterop hang on IconCheckbox.initializeIconCheckboxKeyboard call | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20759> |
| Issue | #20621 | Re-enable source indexing in official builds after publishing access is restored | closed | joperezr | <https://github.com/microsoft/aspire/issues/20621> |
| Issue | #20710 | Foundry prompt agent Send Message fails with MissingMethodException for ResponsesClient constructor | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/20710> |
| Issue | #17752 | Aspire Agent Awarness | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/17752> |
| Issue | #20107 | [dnceng-bot] Branch `aspire/main` can't be mirrored to Azdo fast forward branch | closed | dotnet-mirroring[bot] | <https://github.com/microsoft/aspire/issues/20107> |
| Issue | #17184 | Support aspire secret set for deployment environments | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17184> |
| Issue | #13271 | Aspire: FormatException with Azure PostgreSQL Flexible Server and Entra ID Authentication | closed | SigurdEEspersen | <https://github.com/microsoft/aspire/issues/13271> |
| Issue | #20013 | VS Code extension re-adds nonexistent AppHost omitted by `aspire ls` | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20013> |
| Issue | #19560 | Token audiences acquired lazily during deployment fail with short-lived federated credentials | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19560> |
| Issue | #17715 | Look at standard tier selection for AKS resources being provisioned. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17715> |
| Issue | #17712 | Reduce the amount of boilerplate required to do an end-to-end app deployment via AddAzureKubernetes that exposes an endpoint with TLS. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17712> |
| Issue | #17710 | Add `ParameterProcessor.SetValueAsync` and `ParameterResource.TryGetCurrentValue` for programmatic parameter value management | closed | sliekens | <https://github.com/microsoft/aspire/issues/17710> |
| Issue | #17717 | In k8s deployment dashboard is using :latest image tag. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17717> |
| Issue | #19756 | Add support for fileKeyRef to the Kubernetes Publisher | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19756> |
| Issue | #20567 | Hosting-1 and Hosting-5 Windows test shards frequently lose runner communication | closed | radical | <https://github.com/microsoft/aspire/issues/20567> |
| Issue | #17865 | Support for WSLC | closed | Varorbc | <https://github.com/microsoft/aspire/issues/17865> |
| Issue | #20163 | Improve CLI telemetry durability and shutdown policies using Azure Monitor exporter 1.9.0 | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/20163> |
| Issue | #16220 | Complete polyglot integration host support and cross-language integration exports | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16220> |
| Issue | #20691 | A single timed-out or 504 DCP `Create` call permanently fails the resource (`FailedToStart`); not retried since 13.6.0 | closed | bart-vmware | <https://github.com/microsoft/aspire/issues/20691> |
| Issue | #20056 | Go AppHost Fails To Start | closed | andrewbabbittdev | <https://github.com/microsoft/aspire/issues/20056> |
| Issue | #20552 | VS Code extension accumulates aspire ps --follow processes and amplifies AppHost startup RPCs | closed | JamesNK | <https://github.com/microsoft/aspire/issues/20552> |
| Issue | #20593 | Drop support for .NET 8 and .NET 9 in next major version | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/20593> |
| Issue | #20745 | Dashboard record counts don't use regional number formatting | closed | Copilot | <https://github.com/microsoft/aspire/issues/20745> |
| Issue | #11440 | Devtunnel port resources can take a long time to move to "Running" state after tunnel is established | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/11440> |
| Issue | #9279 | Allow to choose Service Bus emulator SQL instance | closed | AdrianCanadasSC | <https://github.com/microsoft/aspire/issues/9279> |
| Issue | #20556 | Mongo Express fails with WithReplicaSet(): missing directConnection causes connection to localhost inside the UI container | closed | eerhardt | <https://github.com/microsoft/aspire/issues/20556> |
| Issue | #19037 | Coordinate Project Resource v2 builds for file-based apps with shared project references | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/19037> |
| Issue | #19460 | [VS Code] Expose editor-owned Aspire state and UI handoffs to agents | closed | adamint | <https://github.com/microsoft/aspire/issues/19460> |
| Issue | #20728 | Metrics don't offer a scrollbar, can't scroll down. | closed | koenbeuk | <https://github.com/microsoft/aspire/issues/20728> |
