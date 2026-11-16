# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 140 |
| オープン中の新規 PR     | 109 |
| クローズ (未マージ) PR  | 36 |
| 新規 Issue              | 110 |
| クローズ Issue          | 147 |
| 主要コントリビューター  | davidfowl, IEvangelist, JamesNK, eerhardt, mitchdenny, radical |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#21407](https://github.com/microsoft/aspire/pull/21407) — Migrate Azure Functions integration to Project V2 （PR / open / karolz-ms）
  Azure Functions を Aspire Project V2 で統合する移行案です。既存の Functions AppHost 構成を利用する開発者は、オープン中の PR の移行範囲と互換性を確認してください。
- **⚠ 破壊的変更** [#21260](https://github.com/microsoft/aspire/pull/21260) — Add browser-facing origin references for CORS and redirect configuration （PR / open / danegsta）
  ブラウザー起点の CORS / redirect 設定に origin reference を追加する提案です。該当設定を構成する利用者は、変更案の API と origin 解決方法を確認してください（PR はオープン中）。
- **⚠ 破壊的変更** [#21230](https://github.com/microsoft/aspire/pull/21230) — Mark WithAzdResourceNaming obsolete （PR / closed / mitchdenny）
  `WithAzdResourceNaming` は非推奨化案がクローズ済みです。同 API を利用する開発者は、採用済みの後継 API や非推奨化状況を確認してください。
- **⚠ 破壊的変更** [#20608](https://github.com/microsoft/aspire/pull/20608) — Remove Aspire.RabbitMQ.Client.v6 and Aspire.MongoDB.Driver.v2 （PR / merged / eerhardt）
  Aspire.RabbitMQ.Client.v6 と Aspire.MongoDB.Driver.v2 の integration package は削除済みです。該当バージョンを利用しているアプリは、後継 integration package への移行が必要です。
- **⚠ セキュリティ** [#21761](https://github.com/microsoft/aspire/pull/21761) — Bump node-forge from 1.4.0 to 1.4.1 in /extension （PR / open / dependabot[bot]）
  VS Code extension を配布する保守担当者は、オープン中の `node-forge` 更新をレビューし、脆弱性修正を含む版への更新を確認してください。
- **⚠ セキュリティ** [#21455](https://github.com/microsoft/aspire/pull/21455) — Fix Next.js publish fixture security dependencies （PR / open / IEvangelist）
  Next.js publish fixture の依存関係を修正する提案です。該当 fixture と CI を維持する担当者は、PR がマージされた後に脆弱な依存が残らないことを確認してください。
- **⚠ セキュリティ** [#20703](https://github.com/microsoft/aspire/pull/20703) — Fix critical and high dependency vulnerabilities （PR / merged / joperezr）
  重大度 Critical / High の依存脆弱性修正がマージされました。Aspire SDK / template の利用者は修正を含む依存バージョンを利用し、独自 lockfile の残存脆弱性も確認してください。
- **⚠ セキュリティ** [#20661](https://github.com/microsoft/aspire/pull/20661) — fix(ci): scope automatic workflow token permissions （PR / merged / radical）
  自動 workflow の token 権限が必要範囲に制限されました。リポジトリ保守担当者は、変更後の CI が必要な権限内で正常に動くことを確認してください。
- **⚠ セキュリティ** [#20659](https://github.com/microsoft/aspire/pull/20659) — fix(ci): restrict GitHub App tokens to required permissions （PR / merged / radical）
  GitHub App token の権限が必要最小限に制限されました。CI や自動化を保守する担当者は、権限変更後の workflow を確認してください。
- **⚠ セキュリティ** [#20627](https://github.com/microsoft/aspire/pull/20627) — fix(ci): prevent command injection in privileged workflows （PR / merged / radical）
  特権 workflow での command injection を防ぐ修正がマージされました。利用者側の移行は通常不要ですが、保守担当者は修正を含む workflow を使っていることを確認してください。
- **⚠ セキュリティ** [#20603](https://github.com/microsoft/aspire/pull/20603) — Update Testcontainers to resolve SSH.NET vulnerabilities （PR / merged / mitchdenny）
  SSH.NET の脆弱性解消を目的に Testcontainers が更新されました。Testcontainers / SSH.NET を含む Aspire 利用者は、修正済み依存を含むバージョンを確認してください。
- **⚠ セキュリティ** [#15987](https://github.com/microsoft/aspire/pull/15987) — ci: add Zizmor security analysis for GitHub Actions （PR / merged / radical）
  GitHub Actions の Zizmor security analysis が導入されました。リポジトリ保守担当者は、新しい静的解析で workflow の指摘を継続確認してください。
- **非推奨/廃止** [#21360](https://github.com/microsoft/aspire/pull/21360) — Deprecate AddProject and complete Project V2 migration （PR / merged / karolz-ms）
  `AddProject` が非推奨となり Project V2 への移行が完了しました。従来 API を使う AppHost の開発者は、移行ガイドを確認して Project V2 API へ移行してください。
- **非推奨/廃止** [#20594](https://github.com/microsoft/aspire/issues/20594) — Deprecate the Aspire.AppHost.Sdk （Issue / closed / DamianEdwards）
  `Aspire.AppHost.Sdk` の非推奨化に関する Issue はクローズ済みです。同 SDK を使うプロジェクトは、現行の SDK 構成と移行ガイドを確認してください。
- **非推奨/廃止** [#20576](https://github.com/microsoft/aspire/pull/20576) — Remove obsolete ASPIREATS001 suppression （PR / merged / eerhardt）
  obsolete な `ASPIREATS001` suppression が削除されました。該当警告を抑制していた Aspire のコードや拡張は、警告の解消または suppression の更新を確認してください。

## このリポジトリの要点

この期間の大きな変更は `AddProject` を非推奨化した Project V2 移行（#21360）と、名前付き integration source の設定対応（#21366）です。
セキュリティ面では依存脆弱性の修正、GitHub Actions の権限縮小・command injection 防止、Zizmor 解析導入がマージされました（#20703、#20661、#20659、#20627、#15987）。
CLI には Go API reference exporter が追加され（#21195）、Dashboard / integration test の安定化も継続しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#21366](https://github.com/microsoft/aspire/pull/21366) — Support configurable named integration sources

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +6785 / -989
- マージ日時 (UTC): `2026-11-04 14:24:44`

**変更概要**

Aspire CLI で名前付き integration source を構成し、NuGet package の発見・復元に利用できるようにする変更です。
設定スキーマ、CLI の add / new コマンド、NuGet feed の永続化・更新処理、信頼性警告と診断を追加・更新しました。複数の設定源を使う AppHost 開発者や拡張機能が対象です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-config-sources-1p-scenarios.md` | 1 | 1 |
| `docs/specs/cli-config-sources.md` | 48 | 3 |
| `docs/specs/polyglot-integration-restore.md` | 2 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 1 | 0 |
| `eng/scripts/config-sources-demo/README.md` | 86 | 0 |
| `eng/scripts/config-sources-demo/run-aspire-add.ps1` | 23 | 0 |
| `eng/scripts/config-sources-demo/run-aspire-new.ps1` | 97 | 0 |
| `extension/schemas/aspire-config.schema.json` | 34 | 0 |
| `extension/schemas/aspire-global-settings.schema.json` | 34 | 0 |
| `extension/schemas/aspire-settings.schema.json` | 34 | 0 |
| `src/Aspire.Cli/Agents/AspireSkills/SkillSource.cs` | 3 | 1 |
| `src/Aspire.Cli/Certificates/CertificateService.cs` | 5 | 5 |
| `src/Aspire.Cli/Commands/AddCommand.cs` | 121 | 11 |
| `src/Aspire.Cli/Commands/AgentInitCommand.cs` | 11 | 11 |
| `src/Aspire.Cli/Commands/AgentMcpCommand.cs` | 4 | 4 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (25 件)</summary>

- `24400c8` Support configurable named integration sources
- `ac257c2` Add E2E coverage for local integration source configuration
- `cb26f64` Adapt integration source persistence to current NuGet configuration APIs
- `1c9f17e` Preserve configured integration feeds during NuGet updates
- `d610725` Use configured integration source keys for NuGet feeds
- `1e13f41` Polish configuration source UX and share NuGet targeting
- `ca94145` Render source trust warnings in yellow
- `829cdf7` Scope integration searches and log discovery diagnostics
- _... 他 17 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新たに名前付き integration source を表す設定形式と、その CLI / NuGet 連携が導入されています。設定 schema や config source の永続化 API に影響するため、独自に Aspire 設定や integration source を生成するツールは新形式との互換性を確認してください。既存 API の削除を示す変更は一覧から確認できません。

**既存利用者への影響**

標準の CLI 利用者に必須の移行は示されていません。複数の integration feed を管理する場合は新しい名前付き設定へ移し、ソース信頼警告と NuGet 更新時の保持動作を確認してください。

### [#21360](https://github.com/microsoft/aspire/pull/21360) — Deprecate AddProject and complete Project V2 migration

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +7410 / -2205
- マージ日時 (UTC): `2026-10-30 22:30:50`

**変更概要**

Aspire の Project V2 への移行を完了し、従来の `AddProject` API を非推奨化する変更です。
移行ガイドを追加し、AppHost、extension runner、テンプレート、テスト、ドキュメントを V2 のモデルに合わせて更新しています。Aspire でプロジェクトリソースを登録する既存アプリが対象です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/client-readme.instructions.md` | 15 | 2 |
| `.github/instructions/hosting-readme.instructions.md` | 18 | 2 |
| `.github/workflows/extension-e2e-tests.yml` | 2 | 0 |
| `docs/ci/azdo-public-pipeline.md` | 24 | 6 |
| `docs/migrate-from-addproject.md` | 518 | 0 |
| `docs/migrate-from-apphost-sdk.md` | 35 | 13 |
| `docs/specs/aks-support.md` | 8 | 3 |
| `docs/specs/appmodel.md` | 27 | 15 |
| `docs/specs/cli-output-formats.md` | 11 | 1 |
| `docs/specs/manifest-spec.md` | 14 | 5 |
| `docs/specs/with-terminal.md` | 5 | 1 |
| `eng/github-ci/test-trigger-map.yml` | 1 | 1 |
| `extension/loc/xlf/aspire-vscode.xlf` | 3 | 0 |
| `extension/package.nls.json` | 1 | 0 |
| `extension/scripts/run-e2e.js` | 55 | 14 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (16 件)</summary>

- `82897df` Deprecate AddProject and complete Project V2 migration
- `98d1615` Fix Project V2 review findings
- `f92da24` Address code review feedback
- `aaab8c9` Merge remote-tracking branch 'origin/main' into dev/karolz/addproject…
- `50b9f72` Merge latest main into Project V2 migration
- `31cf152` Fix V2 extension runner fixture regressions
- `8636afe` Fix attaching to directly launched Project V2 resources
- `46bd3ca` Merge latest main and preserve Project V2 TestShop resources
- _... 他 8 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**非推奨化:** `AddProject` は引き続き非推奨 API として扱われ、Project V2 の新しいプロジェクト登録方式への移行が推奨されます。大規模な API / AppHost モデル変更を伴い、専用の移行ガイドが追加されています。

**既存利用者への影響**

既存 AppHost で `AddProject` を利用する場合は移行ガイドを参照し、Project V2 の API と resource model へ移行してください。移行後は参照、起動、IDE / extension 実行を検証してください。

### [#21195](https://github.com/microsoft/aspire/pull/21195) — Add `aspire sdk export -l go` (Go API reference exporter)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +4466 / -11
- マージ日時 (UTC): `2026-10-30 01:12:10`

**変更概要**

`aspire sdk export -l go` コマンドに Go API reference exporter を追加し、Aspire の API surface を Go 向け参照コードとして出力できるようにしました。
型スキャン、API projection、writer、SDK コマンド連携と大規模な生成テストを追加し、CLI の対応言語にも Go を加えています。Go から Aspire API を扱う利用者や SDK 生成者が対象です。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-output-formats.md` | 2 | 0 |
| `src/Aspire.Cli/Commands/Sdk/SdkExportCommand.cs` | 1 | 1 |
| `src/Aspire.Hosting.CodeGeneration.Go/Aspire.Hosting.CodeGeneration.Go.csproj` | 1 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoApiReferenceExporter.cs` | 66 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.ApiProjection.cs` | 1128 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.cs` | 1 | 1 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoApiExportWriter.cs` | 256 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoApiModel.cs` | 454 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoDeclarationScanner.cs` | 549 | 0 |
| `src/Aspire.Hosting.RemoteHost/Aspire.Hosting.RemoteHost.csproj` | 1 | 0 |
| `src/Shared/CodeGeneration/AtsTypeSystemCompatibility.cs` | 24 | 0 |
| `tests/Aspire.Cli.Tests/Commands/Sdk/SdkExportCommandTests.cs` | 32 | 1 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/AtsGoDerivedBuilderTests.cs` | 19 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/GoApiExportTests.cs` | 1037 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/GoApiExportTests.AugmentingPackage.verified.json` | 109 | 0 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `c43ec86` Add a Go API reference exporter for `aspire sdk export -l go`
- `9845663` Test the Go API reference exporter
- `ef01361` Document Go as a supported `aspire sdk export` language
- `4cd35e5` Share the ATS version-skew probe with the Go generator
- `f66329b` Keep the Go export variable parity test independent of comment lines
- `7d33810` Accept non-ASCII uppercase identifiers in the Go declaration scanner
- `d36053a` Merge remote-tracking branch 'origin/main' into ievangelist-go-api-ex…
- `7e3948a` Fix Go API export runtime declarations and error models
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `aspire sdk export -l go` CLI 選択肢と Go API projection / export model が追加されています。既存 exporter のシグネチャを変更したとの記載はありません。Go の宣言スキャンと生成出力を検証するテスト・snapshot も追加されました。

**既存利用者への影響**

既存 SDK 利用者の移行は不要です。Go 向け API 参照が必要な場合は新しい `aspire sdk export -l go` を利用し、生成結果が必要な API を網羅するか確認してください。

### [#21451](https://github.com/microsoft/aspire/pull/21451) — Preserve stdout/stderr order in Acquisition script test output

- 作者: davidfowl / 状態: MERGED
- ラベル: `needs-area-label` `flaky-test`
- 変更行数: +38 / -2
- マージ日時 (UTC): `2026-11-05 00:01:20`

**変更概要**

Acquisition の `ScriptToolCommand` テスト出力で stdout と stderr の発生順が失われないようにする修正です。
出力処理を更新し、順序を検証するテストを追加しました。対象は Aspire.Acquisition のテストコードで、製品 API や利用時の挙動変更ではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Acquisition.Tests/Scripts/Common/ScriptToolCommand.cs` | 5 | 2 |
| `tests/Aspire.Acquisition.Tests/Scripts/ScriptToolCommandTests.cs` | 33 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `b159c3d` Preserve stdout/stderr order in Acquisition ScriptToolCommand output

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API の変更はありません。テスト用 `ScriptToolCommand` の標準出力・標準エラー取り扱いとそのテストだけが更新されています。

**既存利用者への影響**

利用者の移行は不要です。リポジトリ保守担当者は、修正で flaky test の出力順序が安定することを CI で確認してください。

### [#21524](https://github.com/microsoft/aspire/pull/21524) — Fix flaky Hex1bNativePublishingTests: read MSBuild query results from -getResultOutputFile

- 作者: davidfowl / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +78 / -17
- マージ日時 (UTC): `2026-11-05 00:00:19`

**変更概要**

`Hex1bNativePublishingTests` の不安定さを解消するため、MSBuild query の結果を標準出力ではなく `-getResultOutputFile` の出力ファイルから読み取るよう変更しました。
Windows の dotnet wrapper 起動も `ProcessStartInfoHelper` 経由にし、テスト基盤の結果取得と起動処理を安定化しています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Infrastructure.Tests/Hex1bNativePublishingTests.cs` | 77 | 17 |
| `tests/Infrastructure.Tests/Infrastructure.Tests.csproj` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `3555614` Read Hex1b MSBuild query results from -getResultOutputFile
- `2d31170` Launch the Windows dotnet wrapper through ProcessStartInfoHelper

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `Infrastructure.Tests` のテスト処理と project 設定に限られ、製品 API や実行時機能に変更はありません。MSBuild query の結果ファイルを読むテスト実装に切り替わっています。

**既存利用者への影響**

利用者の移行は不要です。テスト基盤を保守する場合は Windows / dotnet wrapper を含む CI で回帰を確認してください。

### [#21522](https://github.com/microsoft/aspire/pull/21522) — Wait for transport readiness in Java ReferenceExpression cancellation probe

- 作者: davidfowl / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +37 / -15
- マージ日時 (UTC): `2026-11-04 23:59:35`

**変更概要**

Java の `ReferenceExpression` cancellation probe test で、transport の準備完了を待ってから検証するようにし、起動タイミングに依存するテスト失敗を防ぐ修正です。
変更は Java code generator のテストファイル1件に限定されています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Hosting.CodeGeneration.Java.Tests/AtsJavaCodeGeneratorTests.cs` | 37 | 15 |

</details>

<details><summary>コミット (1 件)</summary>

- `278b9ac` Wait for transport readiness in Java ReferenceExpression cancellation…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API や生成コードの変更はありません。テストの準備完了待機と cancellation 検証方法だけを更新しています。

**既存利用者への影響**

利用者の移行は不要です。Java code generation のテストを実行する保守担当者は、準備待ち変更後のテスト安定性を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #21480 | Fix Dashboard Playwright tab-navigation race in DesktopNavMenu and ResourcePane tests | davidfowl | <https://github.com/microsoft/aspire/pull/21480> |
| #21516 | Fix flaky ResourcesLayoutTests grouping-menu clicks racing the renderer dispatcher | davidfowl | <https://github.com/microsoft/aspire/pull/21516> |
| #21426 | Avoid timeout and retry-delay deadline tie in SignalingFakeTimeProvider test | davidfowl | <https://github.com/microsoft/aspire/pull/21426> |
| #21502 | Fix flaky ComputeRunArgumentsPopulatesRunPropertiesForSdkProject (NuGet audit warning on stderr) | davidfowl | <https://github.com/microsoft/aspire/pull/21502> |
| #21573 | Fix DcpStartupPublishesDevTunnelUrls cold-start timeout flake | davidfowl | <https://github.com/microsoft/aspire/pull/21573> |
| #21143 | Re-initialize metric charts when instrument unit, type or monotonicity changes | sebastienros | <https://github.com/microsoft/aspire/pull/21143> |
| #21526 | Run ServiceBus component tests sequentially to avoid Azure.Core AzureEventSourceListener race | davidfowl | <https://github.com/microsoft/aspire/pull/21526> |
| #21549 | Avoid Add-Type compile in detached Windows null-stdin CLI test | davidfowl | <https://github.com/microsoft/aspire/pull/21549> |
| #21618 | Make EnvironmentChecker timeout tests deterministic with TimeProvider | davidfowl | <https://github.com/microsoft/aspire/pull/21618> |
| #21614 | Remove hidden 5s watch budget from MAUI build-queue state waits | davidfowl | <https://github.com/microsoft/aspire/pull/21614> |
| #21657 | Retry VS Code unit-test yarn install on dnceng npm 429 | davidfowl | <https://github.com/microsoft/aspire/pull/21657> |
| #21773 | Explain Team App card tags with accessible tooltips | sebastienros | <https://github.com/microsoft/aspire/pull/21773> |
| #21423 | [automated] test(templates): Fix child-project SDK isolation and dashboard checks | radical | <https://github.com/microsoft/aspire/pull/21423> |
| #21726 | Order Team App Needs attention by first readiness | joperezr | <https://github.com/microsoft/aspire/pull/21726> |
| #21774 | fix(ci): Fix internal build | radical | <https://github.com/microsoft/aspire/pull/21774> |
| #21759 | Remove Cards from dashboard overview layouts | IEvangelist | <https://github.com/microsoft/aspire/pull/21759> |
| #21602 | Treat backchannel close during RequestStopAsync as a completed stop | davidfowl | <https://github.com/microsoft/aspire/pull/21602> |
| #21660 | Pin public npm registry for Dependabot in template and JsPublish lockfile directories | davidfowl | <https://github.com/microsoft/aspire/pull/21660> |
| #21644 | Add Windows CI resource telemetry to test and extension E2E jobs | davidfowl | <https://github.com/microsoft/aspire/pull/21644> |
| #21734 | [automated] test: keep simulated CI analysis out of Actions summaries | radical | <https://github.com/microsoft/aspire/pull/21734> |
| #21643 | Wait for resource lifecycle command outcomes instead of the 10s E2E control apply timeout | davidfowl | <https://github.com/microsoft/aspire/pull/21643> |
| #21640 | Wait for C# project initialization before coordinated-build E2E fixtures | davidfowl | <https://github.com/microsoft/aspire/pull/21640> |
| #20551 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20551> |
| #20765 | Honor nested AppHost launch profiles without the C# extension | ellahathaway | <https://github.com/microsoft/aspire/pull/20765> |
| #21632 | Hold storage-diagnostics test locks in-process instead of via PowerShell | davidfowl | <https://github.com/microsoft/aspire/pull/21632> |
| #21191 | Record default hosting packages when scaffolding a guest AppHost | IEvangelist | <https://github.com/microsoft/aspire/pull/21191> |
| #21323 | Fix malformed secrets diagnostics and side-effect-free path lookup | IEvangelist | <https://github.com/microsoft/aspire/pull/21323> |
| #21430 | Fix lost cancellation signal in RPC cancellation tests | davidfowl | <https://github.com/microsoft/aspire/pull/21430> |
| #19664 | Add Azure API Management hosting integration | tommasodotNET | <https://github.com/microsoft/aspire/pull/19664> |
| #21750 | Fix native AppHost server factory test in Release | JamesNK | <https://github.com/microsoft/aspire/pull/21750> |
| #21727 | Add an expandable resource pane and contextual resource actions | IEvangelist | <https://github.com/microsoft/aspire/pull/21727> |
| #21531 | Signal RemoteHost JSON-RPC listener readiness instead of polling connects in tests | davidfowl | <https://github.com/microsoft/aspire/pull/21531> |
| #21547 | Fix race publishing the built app in DistributedApplicationFactory (CrashTests after-build) | davidfowl | <https://github.com/microsoft/aspire/pull/21547> |
| #21691 | Improve responsive dashboard overviews and hide empty resource panels | IEvangelist | <https://github.com/microsoft/aspire/pull/21691> |
| #21690 | Keep telemetry navigation stable for resources without data | IEvangelist | <https://github.com/microsoft/aspire/pull/21690> |
| #21519 | Serialize synchronous capability invocations per polyglot guest connection | davidfowl | <https://github.com/microsoft/aspire/pull/21519> |
| #21694 | Make dashboard resource scope icon clearly decorative | IEvangelist | <https://github.com/microsoft/aspire/pull/21694> |
| #21689 | Make dashboard Select all a visible labeled action | IEvangelist | <https://github.com/microsoft/aspire/pull/21689> |
| #21686 | Allow slow OpenSSH startup during unattended Git verification | JamesNK | <https://github.com/microsoft/aspire/pull/21686> |
| #21724 | Expose Entra Graph provisioning models for ConfigureInfrastructure | eerhardt | <https://github.com/microsoft/aspire/pull/21724> |
| #20921 | Support existing Azure Kubernetes environments | mitchdenny | <https://github.com/microsoft/aspire/pull/20921> |
| #21636 | Wait for the settings command outcome instead of the 10s E2E control apply timeout | davidfowl | <https://github.com/microsoft/aspire/pull/21636> |
| #21730 | Merge release/13.6 into main with release-only fixes preserved | joperezr | <https://github.com/microsoft/aspire/pull/21730> |
| #21729 | Address component governance alerts | joperezr | <https://github.com/microsoft/aspire/pull/21729> |
| #21723 | [telemetry] Sync telemetry with microsoft/aspire-skills#111 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21723> |
| #21437 | Fix Npgsql EF retry setup TypeLoadException with Npgsql.EntityFrameworkCore.PostgreSQL 11 rc.2 | davidfowl | <https://github.com/microsoft/aspire/pull/21437> |
| #21566 | Don't start the app in AzureFunctions host-storage model tests | davidfowl | <https://github.com/microsoft/aspire/pull/21566> |
| #21594 | Wait for MongoDB replica set primary before reconfiguring to fix rs0 FailedToStart flake | davidfowl | <https://github.com/microsoft/aspire/pull/21594> |
| #21474 | Remove flaky Go goroutine-count test from GeneratedRuntime_PassesGoRuntimeHardeningTests | davidfowl | <https://github.com/microsoft/aspire/pull/21474> |
| #21681 | Detect drift in generated pipeline output | MattKotsenas | <https://github.com/microsoft/aspire/pull/21681> |
| #21579 | Forward AppHost --artifacts-path to project resource launches | davidfowl | <https://github.com/microsoft/aspire/pull/21579> |
| #21347 | Replace CI failure analysis scripts with a typed analyzer | radical | <https://github.com/microsoft/aspire/pull/21347> |
| #21424 | Stop DevTunnel test monitor before disposing its host | davidfowl | <https://github.com/microsoft/aspire/pull/21424> |
| #21445 | Wait for Functions host storage before stopping multi-project test | davidfowl | <https://github.com/microsoft/aspire/pull/21445> |
| #21623 | Fix coordinated .NET build path casing that breaks Blazor WebAssembly builds | davidfowl | <https://github.com/microsoft/aspire/pull/21623> |
| #21703 | Stabilize Aspire.Hosting.Dotnet for Aspire 17 | karolz-ms | <https://github.com/microsoft/aspire/pull/21703> |
| #21574 | Fix HistogramAllocationTests phantom allocation from background GC voiding allocation contexts | davidfowl | <https://github.com/microsoft/aspire/pull/21574> |
| #21608 | Pin Windows CI container runtime to Docker to stop DCP wslc probes (#21570) | davidfowl | <https://github.com/microsoft/aspire/pull/21608> |
| #21706 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/21706> |
| #21508 | Clean up stranded telemetry hook temp files and name the script on failure | davidfowl | <https://github.com/microsoft/aspire/pull/21508> |
| #21626 | Don't discard completed process output when the thread pool is backlogged after exit | davidfowl | <https://github.com/microsoft/aspire/pull/21626> |
| #21617 | Gate JavaScript runtime CLI E2E checks on AppHost readiness | davidfowl | <https://github.com/microsoft/aspire/pull/21617> |
| #21505 | Don't apply the AppHost server's build configuration to guest AppHost projects | davidfowl | <https://github.com/microsoft/aspire/pull/21505> |
| #21297 | Resolve EndpointProperty.TlsEnabled in Docker Compose and Kubernetes publishers | johnkaram02 | <https://github.com/microsoft/aspire/pull/21297> |
| #21511 | Allow pipeline steps to depend on deployment-target steps materialized during before-start | davidfowl | <https://github.com/microsoft/aspire/pull/21511> |
| #21702 | Disable session-dependent actions in sidebar Aspire Team App canvases | DamianEdwards | <https://github.com/microsoft/aspire/pull/21702> |
| #21512 | Serialize Swarm UpdateConfig.MaxFailureRatio as a YAML number | davidfowl | <https://github.com/microsoft/aspire/pull/21512> |
| #21596 | Fix flaky MetricsTests exemplars dialog assertion | davidfowl | <https://github.com/microsoft/aspire/pull/21596> |
| #20895 | Launch Windows Java build wrappers with an explicit .\ path | flojon | <https://github.com/microsoft/aspire/pull/20895> |
| #21453 | Isolate deployment state in DistributedApplicationPipelineTests (fixes Windows 'destroy' access-denied flake) | davidfowl | <https://github.com/microsoft/aspire/pull/21453> |
| #21682 | Address CLI configuration-source threat model follow-ups | JamesNK | <https://github.com/microsoft/aspire/pull/21682> |
| #21654 | Fix K8s PV E2E race waiting for recreated StatefulSet pod | davidfowl | <https://github.com/microsoft/aspire/pull/21654> |
| #21647 | Stop Infrastructure.Tests pwsh processes from racing on the shared startup profile | davidfowl | <https://github.com/microsoft/aspire/pull/21647> |
| #20947 | Retire embedded Aspire skills bundle | ellahathaway | <https://github.com/microsoft/aspire/pull/20947> |
| #21701 | Fix Aspire Team App CLI discovery in desktop environments | danegsta | <https://github.com/microsoft/aspire/pull/21701> |
| #21477 | Isolate OpenAI model WaitFor test from live status.openai.com health check | davidfowl | <https://github.com/microsoft/aspire/pull/21477> |
| #21629 | Fail fast when a VS Code E2E AppHost debug session ends before startup | davidfowl | <https://github.com/microsoft/aspire/pull/21629> |
| #21630 | Gate the shared ps refresh in the apphost-tree loading E2E test | davidfowl | <https://github.com/microsoft/aspire/pull/21630> |
| #21569 | Wait for each distinct dependency once to avoid duplicate 'Waiting for resource' logs | davidfowl | <https://github.com/microsoft/aspire/pull/21569> |
| #21498 | Add explicit Entra app-role assignments for managed identities | eerhardt | <https://github.com/microsoft/aspire/pull/21498> |
| #21597 | Treat DCP FailedToStart as stopped and restart Starting/no-state replicas after rebuild | davidfowl | <https://github.com/microsoft/aspire/pull/21597> |
| #21546 | Make WithBindMount idempotent and fail fast on conflicting mount targets | davidfowl | <https://github.com/microsoft/aspire/pull/21546> |
| #21656 | Target dashboard resource cards in DashboardUrlTests breakpoint test | davidfowl | <https://github.com/microsoft/aspire/pull/21656> |
| #21428 | Fix flaky IntegrationHostLauncherTests discovery timeout on Windows | davidfowl | <https://github.com/microsoft/aspire/pull/21428> |
| #21595 | Accept natural ps leader exit racing a failed Windows taskkill (Fixes #20869) | davidfowl | <https://github.com/microsoft/aspire/pull/21595> |
| #21425 | Support Key Vault resource references for Entra certificate credentials | eerhardt | <https://github.com/microsoft/aspire/pull/21425> |
| #21364 | Support configurable named skill sources | JamesNK | <https://github.com/microsoft/aspire/pull/21364> |
| #21493 | Reject registration-only configuration on existing Entra references | eerhardt | <https://github.com/microsoft/aspire/pull/21493> |
| #21572 | Fix array-aware CLI configuration editing | JamesNK | <https://github.com/microsoft/aspire/pull/21572> |
| #21679 | Limit configuration sources to project-local settings | JamesNK | <https://github.com/microsoft/aspire/pull/21679> |
| #21677 | Report configuration source availability in aspire doctor | JamesNK | <https://github.com/microsoft/aspire/pull/21677> |
| #21678 | Support config source adoption and explicit project opt-out | JamesNK | <https://github.com/microsoft/aspire/pull/21678> |
| #21649 | Unquarantine 2 CLI E2E tests that pass 100% in the quarantine lane | davidfowl | <https://github.com/microsoft/aspire/pull/21649> |
| #21561 | Only show 'Stopping Aspire' when canceling aspire run | davidfowl | <https://github.com/microsoft/aspire/pull/21561> |
| #21662 | Unquarantine PersistentContainersPreserveDataAcrossAppHostRuns | davidfowl | <https://github.com/microsoft/aspire/pull/21662> |
| #21653 | Unquarantine StopNonInteractive E2E tests | davidfowl | <https://github.com/microsoft/aspire/pull/21653> |
| #21605 | Surface ResourceReadyEvent subscriber failures in resource logs and dependent waits | davidfowl | <https://github.com/microsoft/aspire/pull/21605> |
| #21507 | Fix telemetry watch test timeouts hiding watch failures | davidfowl | <https://github.com/microsoft/aspire/pull/21507> |
| #21548 | Pick an available non-ephemeral host port in DockerCompose dashboard deploy test | davidfowl | <https://github.com/microsoft/aspire/pull/21548> |
| #21554 | Fix host-pids race in IntegrationHostProcessTests | davidfowl | <https://github.com/microsoft/aspire/pull/21554> |
| #21613 | Give RemoteHost tests thread-pool headroom above xunit's synchronous slots | davidfowl | <https://github.com/microsoft/aspire/pull/21613> |
| #21553 | Make IInteractionService unavailable during BeforeStart to prevent deadlock | davidfowl | <https://github.com/microsoft/aspire/pull/21553> |
| #21616 | Unquarantine AppHostServerSession exited-server RPC test | davidfowl | <https://github.com/microsoft/aspire/pull/21616> |
| #21525 | Resolve relative dashboard data directory against the AppHost directory | davidfowl | <https://github.com/microsoft/aspire/pull/21525> |
| #21609 | Remap *.localhost host names in HostUrl for containers | davidfowl | <https://github.com/microsoft/aspire/pull/21609> |
| #21533 | Reserve proxyless endpoint ports process-wide to avoid cross-app port collisions | davidfowl | <https://github.com/microsoft/aspire/pull/21533> |
| #21388 | Inherit template sources from explicit init configuration | mitchdenny | <https://github.com/microsoft/aspire/pull/21388> |
| #21590 | Lower minimum Helm version to 4.0.0 | davidfowl | <https://github.com/microsoft/aspire/pull/21590> |
| #21591 | Make ADC rejected-create cancellation test deterministic | davidfowl | <https://github.com/microsoft/aspire/pull/21591> |
| #21588 | Log AppHost startup information before BeforeStartEvent | davidfowl | <https://github.com/microsoft/aspire/pull/21588> |
| #21584 | Style markdown code blocks in interaction notifications and dialogs | davidfowl | <https://github.com/microsoft/aspire/pull/21584> |
| #21577 | Wait for resources to respond before attaching in resource debug E2E | davidfowl | <https://github.com/microsoft/aspire/pull/21577> |
| #21583 | Fix StopNonInteractiveTests launch-port collision between generated AppHosts | davidfowl | <https://github.com/microsoft/aspire/pull/21583> |
| #21599 | Fix flaky NuGetPackagePrefetcher cancellation logging test | davidfowl | <https://github.com/microsoft/aspire/pull/21599> |
| #21581 | Cancel blocked graceful signaler once the child process exits | davidfowl | <https://github.com/microsoft/aspire/pull/21581> |
| #21222 | Register core output caching services in Redis output cache integration | curllog | <https://github.com/microsoft/aspire/pull/21222> |
| #21427 | Fix flaky ExecuteCommandAsync_RebuildCommand_ReturnsBuildOutput build count | davidfowl | <https://github.com/microsoft/aspire/pull/21427> |
| #21520 | Configure OTLP for Kubernetes resources referenced before they are processed | davidfowl | <https://github.com/microsoft/aspire/pull/21520> |
| #21452 | Forward ValueProviderContext in Blazor GatewayOriginReference | davidfowl | <https://github.com/microsoft/aspire/pull/21452> |
| #21483 | Fix flaky VS Code storage diagnostics lock tests killed by the holder timeout | davidfowl | <https://github.com/microsoft/aspire/pull/21483> |
| #21484 | Update CLI NuGet dependencies to 8.0.0-rc.133 | eerhardt | <https://github.com/microsoft/aspire/pull/21484> |
| #21472 | Leave the DCP session folder for DCP to delete once it has started | davidfowl | <https://github.com/microsoft/aspire/pull/21472> |
| #21444 | Wait for breakpoint removal before detaching in resource debug attach proof | davidfowl | <https://github.com/microsoft/aspire/pull/21444> |
| #21429 | Trust local tap cask before brew audit in Homebrew validation | davidfowl | <https://github.com/microsoft/aspire/pull/21429> |
| #21435 | Complete DCP stop when the API server exits before acknowledging the stop request | davidfowl | <https://github.com/microsoft/aspire/pull/21435> |
| #21454 | Stop dotnet CLI from exporting its own OTLP telemetry for project resources | davidfowl | <https://github.com/microsoft/aspire/pull/21454> |
| #21432 | Fall back to default container host name when DCP reports an empty one | davidfowl | <https://github.com/microsoft/aspire/pull/21432> |
| #21373 | Stop persisting ambient NuGet policy into AppHost configs | danegsta | <https://github.com/microsoft/aspire/pull/21373> |
| #21420 | Show project-derived defaults in template prompts | mitchdenny | <https://github.com/microsoft/aspire/pull/21420> |
| #21382 | Add local developer certificate credentials for Entra applications | eerhardt | <https://github.com/microsoft/aspire/pull/21382> |
| #21412 | Modernize the dashboard experience | sebastienros | <https://github.com/microsoft/aspire/pull/21412> |
| #21418 | Require trust confirmation when adding template sources | mitchdenny | <https://github.com/microsoft/aspire/pull/21418> |
| #21187 | Launch and debug Go AppHosts from the VS Code extension | IEvangelist | <https://github.com/microsoft/aspire/pull/21187> |
| #21197 | Emit godoc from ATS documentation metadata in the Go SDK generator | IEvangelist | <https://github.com/microsoft/aspire/pull/21197> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #21770 | Clarify dotnet-inspect requirements in agent init help | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21770> |
| PR | #21543 | Serialize Infrastructure.Tests classes that build Aspire.TestTools | open | davidfowl | <https://github.com/microsoft/aspire/pull/21543> |
| PR | #21624 | Coordinate project builds when the IDE cannot launch projects (fix VS Code E2E tree-actions flake) | open | davidfowl | <https://github.com/microsoft/aspire/pull/21624> |
| PR | #21767 | Update dashboard feedback welcome message | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21767> |
| PR | #21766 | Address deferred review feedback for the modern dashboard | open | sebastienros | <https://github.com/microsoft/aspire/pull/21766> |
| PR | #21768 | fix intermittent internal build failures | open | radical | <https://github.com/microsoft/aspire/pull/21768> |
| PR | #21754 | Show configured templates in the initial aspire new picker | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21754> |
| PR | #21769 | Show agent init warnings during skills selection | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21769> |
| PR | #21720 | Add untagged manifest cleanup options to ACR purge tasks | open | codebytes | <https://github.com/microsoft/aspire/pull/21720> |
| PR | #21740 | Focus Team App review queue on the first ten PRs | open | joperezr | <https://github.com/microsoft/aspire/pull/21740> |
| PR | #21764 | Update DCP to 0.26.7 | open | karolz-ms | <https://github.com/microsoft/aspire/pull/21764> |
| PR | #21538 | Fix Azure conformance tracing tests timing out in RemoteExecutor credential probing | open | davidfowl | <https://github.com/microsoft/aspire/pull/21538> |
| PR | #21604 | Give the Deno AppHost inspector attach the AppHost startup budget | open | davidfowl | <https://github.com/microsoft/aspire/pull/21604> |
| PR | #21732 | fix(ci): Analyze failures despite oversized diagnostic artifacts | open | radical | <https://github.com/microsoft/aspire/pull/21732> |
| PR | #21763 | Prepare VS Code extension release v1.25.0 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21763> |
| PR | #21758 | Add cancel-safe dashboard primary-view transitions | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21758> |
| PR | #21761 | Bump node-forge from 1.4.0 to 1.4.1 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21761> |
| PR | #21695 | Show endpoint addresses alongside friendly names in resource overview | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21695> |
| PR | #21692 | Keep dashboard resource filters within the viewport | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21692> |
| PR | #21711 | Scope pinned metric instruments to resources | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21711> |
| PR | #21762 | Bump the npm_and_yarn group across 2 directories with 1 update | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21762> |
| PR | #21756 | Test MongoDB child readiness across persistent container reuse | open | wycliffemwimali | <https://github.com/microsoft/aspire/pull/21756> |
| PR | #21693 | Add Aspire Outage game to the dashboard resource graph | open | sebastienros | <https://github.com/microsoft/aspire/pull/21693> |
| PR | #21749 | Fix Text file busy race for fake executables in Infrastructure.Tests | open | davidfowl | <https://github.com/microsoft/aspire/pull/21749> |
| PR | #21738 | Bump @vitest/mocker from 5.0.0 to 5.0.5 in /playground/TypeScriptApps/AzureFunctionsWithStorage/Frontend in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21738> |
| PR | #21737 | Bump the npm_and_yarn group across 2 directories with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21737> |
| PR | #21736 | Bump the npm group across 1 directory with 25 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21736> |
| PR | #21739 | Aspire Team App: hide approved PRs from Needs attention, add Close PR action | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21739> |
| PR | #21552 | Bump the npm_and_yarn group across 1 directory with 1 update | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21552> |
| PR | #21422 | [automated] test(cli): Find Radius MongoDB pods in their application namespace | open | radical | <https://github.com/microsoft/aspire/pull/21422> |
| PR | #21721 | Terminate orphaned aspire --follow processes when their host dies | open | IsmailHassani | <https://github.com/microsoft/aspire/pull/21721> |
| PR | #21615 | Ignore just-published npm releases in Docker CLI E2E shells | open | davidfowl | <https://github.com/microsoft/aspire/pull/21615> |
| PR | #21638 | Wait for MongoDB single-member primary to accept writes before reporting healthy | open | davidfowl | <https://github.com/microsoft/aspire/pull/21638> |
| PR | #21556 | Keep captured output when ProcessCaptureRunner's post-exit drain bound expires | open | davidfowl | <https://github.com/microsoft/aspire/pull/21556> |
| PR | #21707 | Refactor dashboard browser-token authentication into a handler | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/21707> |
| PR | #21485 | Bridge polyglot resource handles to non-resource interface parameters | open | davidfowl | <https://github.com/microsoft/aspire/pull/21485> |
| PR | #21675 | Add Maven JUnit support to aspire test | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21675> |
| PR | #21565 | Dismiss VS Code E2E notifications without depending on hover | open | davidfowl | <https://github.com/microsoft/aspire/pull/21565> |
| PR | #21585 | Add experimental Go test resources and raw output capture | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21585> |
| PR | #21646 | Surface test results in the Aspire dashboard | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21646> |
| PR | #21564 | Enable WSLC container tests on existing Windows CI runners | open | afscrome | <https://github.com/microsoft/aspire/pull/21564> |
| PR | #21601 | Prompt for omitted resource command inputs in interactive CLI | open | davidfowl | <https://github.com/microsoft/aspire/pull/21601> |
| PR | #21587 | Add experimental built-in Cargo testing integration | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21587> |
| PR | #21481 | Treat the configured AppHost as in scope when resolving running AppHosts | open | davidfowl | <https://github.com/microsoft/aspire/pull/21481> |
| PR | #21559 | Add experimental MSTest executable test resources and TRX collection | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21559> |
| PR | #21580 | Add experimental pytest testing integration | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21580> |
| PR | #21450 | Build the CLI before MCP initialization in McpDocsE2ETests | open | davidfowl | <https://github.com/microsoft/aspire/pull/21450> |
| PR | #21527 | Add resource-bound aspire test with experimental live collectors | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21527> |
| PR | #21648 | Fix Kubernetes publish for parameter-based container args (unquarantine DeployK8sWithNats) | open | davidfowl | <https://github.com/microsoft/aspire/pull/21648> |
| PR | #21651 | Capture CLI diagnostics when an E2E command hangs | open | davidfowl | <https://github.com/microsoft/aspire/pull/21651> |
| PR | #21642 | Dump AppHost resource state and logs when Nuxt validation health wait times out | open | davidfowl | <https://github.com/microsoft/aspire/pull/21642> |
| PR | #21517 | Close owned AppHost backchannel connections before the CLI exits | open | davidfowl | <https://github.com/microsoft/aspire/pull/21517> |
| PR | #21571 | Make MAUI build-queue cancellation surface a consistent OperationCanceledException | open | davidfowl | <https://github.com/microsoft/aspire/pull/21571> |
| PR | #21562 | Bound GitRepository's post-exit output drain so git commands can't hang | open | davidfowl | <https://github.com/microsoft/aspire/pull/21562> |
| PR | #21528 | Don't fail AppHost stop on a no-op terminal teardown after the shutdown budget is exhausted | open | davidfowl | <https://github.com/microsoft/aspire/pull/21528> |
| PR | #21634 | Ignore just-published npm releases in polyglot TypeScript validation | open | davidfowl | <https://github.com/microsoft/aspire/pull/21634> |
| PR | #21622 | Wait for an orphaned coordinated build before building again | open | davidfowl | <https://github.com/microsoft/aspire/pull/21622> |
| PR | #21661 | Auto-rerun artifact transfer steps that fail with artifact service network errors | open | davidfowl | <https://github.com/microsoft/aspire/pull/21661> |
| PR | #21611 | Warn when the Aspire dashboard stops unexpectedly | open | davidfowl | <https://github.com/microsoft/aspire/pull/21611> |
| PR | #21610 | Improve Kubernetes publisher error reporting | open | davidfowl | <https://github.com/microsoft/aspire/pull/21610> |
| PR | #21586 | aspire update: update Aspire.AppHost.Sdk in other projects of the AppHost's solution | open | davidfowl | <https://github.com/microsoft/aspire/pull/21586> |
| PR | #21598 | Describe NuGet.config preview as proposed changes in aspire update | open | davidfowl | <https://github.com/microsoft/aspire/pull/21598> |
| PR | #21592 | Warn when AspireCliPath overrides a DNX AspireCliInvocationMode | open | davidfowl | <https://github.com/microsoft/aspire/pull/21592> |
| PR | #21575 | Add logging defaults to single-file AppHost templates | open | davidfowl | <https://github.com/microsoft/aspire/pull/21575> |
| PR | #21545 | Warn on unsupported AspireCliInvocationMode values | open | davidfowl | <https://github.com/microsoft/aspire/pull/21545> |
| PR | #21551 | Bump follow-redirects from 1.16.1 to 1.16.2 in /.agents/skills/create-video/scripts/tts | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21551> |
| PR | #21542 | Fix aspire doctor dev-cert version warning citing the wrong version | open | davidfowl | <https://github.com/microsoft/aspire/pull/21542> |
| PR | #21541 | Avoid SIGPIPE false failures in the extension changelog finalized gate | open | davidfowl | <https://github.com/microsoft/aspire/pull/21541> |
| PR | #21534 | Fix AzureSql test fixture Docker port collisions and re-enable reconciliation tests | open | davidfowl | <https://github.com/microsoft/aspire/pull/21534> |
| PR | #21536 | Order Azure resource preparation after compute environment validation | open | davidfowl | <https://github.com/microsoft/aspire/pull/21536> |
| PR | #21537 | Reserve DownloadNativeArchives mock server port atomically to fix 'Address already in use' flake | open | davidfowl | <https://github.com/microsoft/aspire/pull/21537> |
| PR | #21530 | Use TimeProvider for SealedSecret sync-wait budget to fix SealedSecretApplyStepTests flake | open | davidfowl | <https://github.com/microsoft/aspire/pull/21530> |
| PR | #21523 | Use IPv4 loopback for Kusto emulator health checks to avoid Linux multi-connect failure | open | davidfowl | <https://github.com/microsoft/aspire/pull/21523> |
| PR | #21521 | Don't overwrite Kubernetes templates when objects share a name | open | davidfowl | <https://github.com/microsoft/aspire/pull/21521> |
| PR | #21518 | Keep the legacy Resources filter popup inside the viewport when the resource graph is disabled | open | davidfowl | <https://github.com/microsoft/aspire/pull/21518> |
| PR | #21514 | Fix multi-platform project container builds (RuntimeIdentifiers passed as one RID) | open | davidfowl | <https://github.com/microsoft/aspire/pull/21514> |
| PR | #21504 | Defer JavaScript installer when the app uses WithExplicitStart | open | davidfowl | <https://github.com/microsoft/aspire/pull/21504> |
| PR | #21456 | Add regression test for reading the file-app sentinel while a writer holds it open | open | davidfowl | <https://github.com/microsoft/aspire/pull/21456> |
| PR | #21510 | Emit only the configured metric source for Kubernetes HPA v2 metrics | open | davidfowl | <https://github.com/microsoft/aspire/pull/21510> |
| PR | #21506 | Restore Visual Studio Aspire version discovery in empty template | open | joperezr | <https://github.com/microsoft/aspire/pull/21506> |
| PR | #21503 | Fix bUnit JS timeout flakes in StructuredLogs/Traces/TraceDetails tests | open | davidfowl | <https://github.com/microsoft/aspire/pull/21503> |
| PR | #21434 | Complete IconCheckbox JS interop in ManageDataDialog tests | open | davidfowl | <https://github.com/microsoft/aspire/pull/21434> |
| PR | #21439 | Wait for a writable MongoDB single-member primary | open | davidfowl | <https://github.com/microsoft/aspire/pull/21439> |
| PR | #21442 | Release native socket listener slot before closing the connection | open | davidfowl | <https://github.com/microsoft/aspire/pull/21442> |
| PR | #21446 | Fix lost resource logger announcements for concurrent subscriber watchers | open | davidfowl | <https://github.com/microsoft/aspire/pull/21446> |
| PR | #21448 | Fix Text file busy race when exec'ing the mock gh script in Acquisition tests | open | davidfowl | <https://github.com/microsoft/aspire/pull/21448> |
| PR | #21497 | Fix flaky RemoteHost StartupExit test: avoid crash dumps for expected test-server failures | open | davidfowl | <https://github.com/microsoft/aspire/pull/21497> |
| PR | #21499 | Fix CLI telemetry persistence tests racing the exporter's eager storage drain | open | davidfowl | <https://github.com/microsoft/aspire/pull/21499> |
| PR | #21500 | Fix flaky terminal WebSocket close handshake abort (ProducerDisconnect test) | open | davidfowl | <https://github.com/microsoft/aspire/pull/21500> |
| PR | #21495 | fix(ci): avoid full test runs for shared test fixture changes | open | radical | <https://github.com/microsoft/aspire/pull/21495> |
| PR | #21486 | Keep the interaction file input browse button after uploading files | open | davidfowl | <https://github.com/microsoft/aspire/pull/21486> |
| PR | #21492 | Fix MauiBuildQueueTests hang when a resource state is published after 5s | open | davidfowl | <https://github.com/microsoft/aspire/pull/21492> |
| PR | #21433 | Keep terminal host shutdown connection open until the notification is delivered | open | davidfowl | <https://github.com/microsoft/aspire/pull/21433> |
| PR | #21471 | Fix flaky TerminalWebSocketTests final-output drain: deliver queued producer output before ending | open | davidfowl | <https://github.com/microsoft/aspire/pull/21471> |
| PR | #21487 | Keep Azure DevOps logging commands unwrapped in CLI pipeline output | open | davidfowl | <https://github.com/microsoft/aspire/pull/21487> |
| PR | #21478 | Let canonical TypeScript capabilities own method-named options interfaces | open | davidfowl | <https://github.com/microsoft/aspire/pull/21478> |
| PR | #21476 | Don't abort AppHost discovery when a process check is access-denied | open | davidfowl | <https://github.com/microsoft/aspire/pull/21476> |
| PR | #21473 | Use a version-specific CLI bundle for pinned DNX AppHost invocations | open | davidfowl | <https://github.com/microsoft/aspire/pull/21473> |
| PR | #21475 | Keep metrics filter popover within the viewport | open | davidfowl | <https://github.com/microsoft/aspire/pull/21475> |
| PR | #21458 | Serialize container registry logins to avoid credential overwrite races | open | davidfowl | <https://github.com/microsoft/aspire/pull/21458> |
| PR | #21461 | Align JavaScript Dockerfile run-script validator with Go and Python pipeline registration | open | davidfowl | <https://github.com/microsoft/aspire/pull/21461> |
| PR | #21459 | Preserve dashboard data during bundle legacy layout cleanup | open | davidfowl | <https://github.com/microsoft/aspire/pull/21459> |
| PR | #21457 | Merge App Service sticky slot settings into user-defined SlotConfigNames | open | davidfowl | <https://github.com/microsoft/aspire/pull/21457> |
| PR | #21455 | Fix Next.js publish fixture security dependencies | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21455> |
| PR | #21447 | Forward Redis WithArgs to redis-server in publish mode | open | davidfowl | <https://github.com/microsoft/aspire/pull/21447> |
| PR | #21443 | Bump the create-video group with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21443> |
| PR | #21440 | Serialize integral numbers as JSON integers in Java ATS client | open | davidfowl | <https://github.com/microsoft/aspire/pull/21440> |
| PR | #21436 | Return 400 for OTLP JSON requests with malformed ids | open | tahakocal | <https://github.com/microsoft/aspire/pull/21436> |
| PR | #21431 | Dashboard: preserve resource selection in telemetry pages and metric charts | open | davidfowl | <https://github.com/microsoft/aspire/pull/21431> |
| PR | #17788 | Extract TemplateRenderer + ITemplateSource seam for CLI scaffolding | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/17788> |
| PR | #21555 | Fail non-interactive aspire add when no integration name is given | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21555> |
| PR | #21744 | [main] Update dependencies from microsoft/dcp | closed | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/21744> |
| PR | #21627 | Add regression tests for the SSH probe timeout fix from #21686 | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21627> |
| PR | #21558 | Fix Text file busy race for fake executables in Infrastructure.Tests | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21558> |
| PR | #18876 | Add publish output verification | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18876> |
| PR | #21394 | Wait for exemplars dialog in metrics component test | closed | JamesNK | <https://github.com/microsoft/aspire/pull/21394> |
| PR | #21404 | Bump the npm_and_yarn group across 18 directories with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21404> |
| PR | #21342 | Bump the npm_and_yarn group across 14 directories with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21342> |
| PR | #21354 | Bump the npm_and_yarn group across 14 directories with 4 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21354> |
| PR | #20588 | Merge release/13.6 to main after v13.6.0 release | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20588> |
| PR | #21383 | Bump the npm_and_yarn group across 13 directories with 4 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21383> |
| PR | #21286 | Bump the npm group across 1 directory with 24 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21286> |
| PR | #14254 | Fix WithReference to only use IResourceWithEndpoints | closed | Falco20019 | <https://github.com/microsoft/aspire/pull/14254> |
| PR | #21044 | aspire docs api: read the API catalog from the sitemap index | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/21044> |
| PR | #20971 | Stabilize Kubernetes create-recovery retry-delay tests | closed | Copilot | <https://github.com/microsoft/aspire/pull/20971> |
| PR | #20486 | [release/13.6] Reduce agent telemetry hook overhead without reducing coverage | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/20486> |
| PR | #20796 | Retry MongoDB replica-set configuration during member recovery | closed | Copilot | <https://github.com/microsoft/aspire/pull/20796> |
| PR | #21230 | Mark WithAzdResourceNaming obsolete | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/21230> |
| PR | #20570 | Sync Aspire 17 release branch with main and release metadata | closed | maddymontaquila | <https://github.com/microsoft/aspire/pull/20570> |
| PR | #21441 | Treat FailedToStart executables as stopped in DcpExecutor.StopResourceAsync | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21441> |
| PR | #21513 | [telemetry] Register terminal skill telemetry and cover canonical MCP tools | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21513> |
| PR | #21544 | Preserve JSON arrays when aspire config set edits indexed keys | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21544> |
| PR | #21685 | [DO NOT MERGE] Investigate Windows OpenSSH verification failures | closed | JamesNK | <https://github.com/microsoft/aspire/pull/21685> |
| PR | #21466 | Fix flaky DockerCompose dashboard deploy test host port collision | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21466> |
| PR | #21438 | Fix prefetcher shutdown-cancellation test race on the outer token | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21438> |
| PR | #21417 | test: synchronize rejected-create cancellation with response observation | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21417> |
| PR | #21576 | Don't count [sys] lines toward aspire logs --tail | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21576> |
| PR | #21355 | Add annotations to allow customization of output directories | closed | MattKotsenas | <https://github.com/microsoft/aspire/pull/21355> |
| PR | #21343 | Separate EF migration bundle build contexts from published output | closed | MattKotsenas | <https://github.com/microsoft/aspire/pull/21343> |
| PR | #21658 | Treat any non-dumb TERM as ANSI capable in the CLI on Unix | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21658> |
| PR | #21391 | docs: latest Aspire standup report | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21391> |
| PR | #21316 | Fix empty DCP container host name breaking container OTLP endpoint | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21316> |
| PR | #21578 | Apply default AppHost logging levels to C# file-based AppHosts | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21578> |
| PR | #21311 | test: wait for Kubernetes pods to become ready | closed | nazicenn | <https://github.com/microsoft/aspire/pull/21311> |
| PR | #21479 | fix(homebrew): avoid success messages when the installed CLI fails | closed | radical | <https://github.com/microsoft/aspire/pull/21479> |
| Issue | #21765 | [CI Failure] Aspire.Cli.Tests (macos-latest) test host crashes with exit code 3 despite no failed tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21765> |
| Issue | #21515 | [CI Failure] Flaky: ResourcesLayoutTests grouping-menu tests read menu items before the queued Click runs | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21515> |
| Issue | #21494 | [Failing test]: Aspire.Hosting.Maui.Tests.MauiBuildQueueTests.SingleResource\_ShowsBuildingState | closed | radical | <https://github.com/microsoft/aspire/issues/21494> |
| Issue | #21772 | Consider enabling session affinity by default for Azure Front Door and Container Apps | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21772> |
| Issue | #21771 | [CI Failure] DCP dependency check times out running docker --version on Windows runners | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21771> |
| Issue | #21659 | Dependabot npm PRs write internal dnceng resolved URLs into public-registry lockfiles (templates, JsPublish fixtures), failing CI with E401 | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21659> |
| Issue | #21697 | [CI Failure] Flaky: apphost-tree E2E ps follower test times out waiting for E2E control revision | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21697> |
| Issue | #21641 | Windows extension E2E: resource lifecycle commands time out on the 10s E2E control apply wait (resource-debug-tools-negative) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21641> |
| Issue | #21639 | [CI Failure] Flaky: VS Code coordinated-build E2E (Windows) EBUSY removing CoordinatedResource_cs while Roslyn loads it | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21639> |
| Issue | #21600 | CI flaky-test burndown: driving flaky tests to 0 (live metrics) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21600> |
| Issue | #21663 | AspireAgent standup (living report, updated 4×/day) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21663> |
| Issue | #21760 | [CI Failure] Flaky: DcpStartupPublishesDevTunnelUrls times out waiting for URL callback to start on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21760> |
| Issue | #21757 | Radius ATS collision on CSharpAppResource removes withContainerImage from unrelated DotnetProjectResource SDK | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21757> |
| Issue | #21755 | [AspireE2E]New Aspire Dashboard resource filter changes are applied and retained before clicking OK | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21755> |
| Issue | #21753 | Aspire Dashboard on Windows Server 2016 falls back to UTC: "Couldn't find time zone 'Asia/Shanghai'" | closed | beligg | <https://github.com/microsoft/aspire/issues/21753> |
| Issue | #21752 | Show templates from configured sources in the aspire new template picker | open | JamesNK | <https://github.com/microsoft/aspire/issues/21752> |
| Issue | #21751 | CLI: only treat a backchannel disconnect during RequestStopAsync as a completed stop when the AppHost exits | open | davidfowl | <https://github.com/microsoft/aspire/issues/21751> |
| Issue | #21748 | Hosting.Testing: follow-ups from #21547 (OnBuilt timeout coverage and throwing OnBuilt test) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21748> |
| Issue | #21747 | RemoteHost: remove unnecessary try/finally in JsonRpcServer.StartAsync | open | davidfowl | <https://github.com/microsoft/aspire/issues/21747> |
| Issue | #21746 | Polyglot capability invocation gate: share it across integration-host connections, gate RunSyncOnBackgroundThread exports, and test async release | open | davidfowl | <https://github.com/microsoft/aspire/issues/21746> |
| Issue | #21745 | [Main CI Failure] Main branch CI failure at b19f9323737b0e6e045ab8134a15302c5f2e0fa5 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21745> |
| Issue | #21743 | Support configuration editing for dotted template source names | open | JamesNK | <https://github.com/microsoft/aspire/issues/21743> |
| Issue | #21742 | [CI Failure] Flaky: VS Code extension E2E diagnostic-logs times out waiting for element to become visible | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21742> |
| Issue | #21731 | [CI Failure] Flaky: VS Code extension E2E (Linux, tree-actions) routes commands test times out waiting for resource e2e-terminal to reach Running | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21731> |
| Issue | #21635 | [VS Code E2E] CLI-independent settings edge-case test times out on the 10s control wait while the first Settings editor open is slow | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21635> |
| Issue | #21735 | Generated TypeScript integration project fails in SHA-256 worktrees and hides the SourceLink error | open | joperezr | <https://github.com/microsoft/aspire/issues/21735> |
| Issue | #21733 | Add a fluent API for configuring the package installer resource for JavaScript apps | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/21733> |
| Issue | #21728 | Expose a reusable browser-origin reference matching Entra's friendly local redirect URI selection | open | joperezr | <https://github.com/microsoft/aspire/issues/21728> |
| Issue | #21716 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21716> |
| Issue | #21713 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21713> |
| Issue | #21683 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21683> |
| Issue | #21668 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21668> |
| Issue | #21628 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21628> |
| Issue | #21532 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21532> |
| Issue | #21501 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21501> |
| Issue | #21593 | MongoDB replica set initialization fails intermittently with InterruptedDueToReplStateChange (Hosting.MongoDB functional tests flaky) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21593> |
| Issue | #21664 | DCP never creates named container volumes on Docker 29.8: "volume ... not found" is treated as an error | closed | thomhurst | <https://github.com/microsoft/aspire/issues/21664> |
| Issue | #21621 | [CI Failure] Flaky: VS Code browser-debugger E2E (Windows) - standalone-gateway FailedToStart after coordinated build | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21621> |
| Issue | #21722 | dcp run-controllers memory grows unbounded to ~17 GB over a multi-day aspire start session (Windows) | open | guillaumefugere | <https://github.com/microsoft/aspire/issues/21722> |
| Issue | #21718 | Preserve private transitive dependency restore when adding named-source integrations | open | JamesNK | <https://github.com/microsoft/aspire/issues/21718> |
| Issue | #21717 | Honor the selected integration feed when package-source mapping was previously disabled | open | JamesNK | <https://github.com/microsoft/aspire/issues/21717> |
| Issue | #21715 | [AspireE2E] Previous Aspire Dashboard returns 404 when switching language | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21715> |
| Issue | #21684 | [aw] Analyze CI Failure is missing required data | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21684> |
| Issue | #21714 | [AspireE2E] An unhandled error occurs when navigating back to the Metrics page after viewing Traces or Structured Logs on Aspire 17.0 new Dashboard | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21714> |
| Issue | #21625 | [CI Failure] Flaky: ConfigSourceServiceGitTests.AcquireAndCheck_MatchRepositoryObjectFormat loses completed git output when the post-exit drain bound expires under thread-pool backlog (Windows) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21625> |
| Issue | #21708 | [Epic] Dashboard vNext user-study follow-up for Aspire 17 | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21708> |
| Issue | #21712 | Dashboard: add contextual documentation links to resource empty states | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21712> |
| Issue | #21710 | Dashboard: scope pinned metric instruments to the selected resource | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21710> |
| Issue | #21709 | Dashboard: add transitions between primary views | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21709> |
| Issue | #21674 | Add a Testing experience to the Aspire dashboard | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21674> |
| Issue | #21673 | Add Rust Cargo testing integration for aspire test | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21673> |
| Issue | #21672 | Add Go testing integration for aspire test | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21672> |
| Issue | #21671 | Add Python pytest integration for aspire test | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21671> |
| Issue | #21670 | Add .NET MSTest integration for aspire test | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21670> |
| Issue | #21669 | Add core abstractions and CLI support for resource-based test runs | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21669> |
| Issue | #21652 | Flaky: KubernetesDeployTypeScriptWithPersistentVolumeTests fails with NotFound when waiting for the recreated StatefulSet pod | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21652> |
| Issue | #21705 | [CI Failure] Flaky: DashboardTestingBuilderTests.DashboardTestingPreservesInteractivityAfterAppHostStart times out on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21705> |
| Issue | #21698 | [Main CI Failure] Main branch CI failure at 1b2640341430f83d74c472de559bcf780ebc4c3c | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21698> |
| Issue | #21704 | [CI Failure] Flaky: NewCommandLocalTemplateTests.RepositoryTemplate_ResolvesRefsAndReusesPinnedCheckoutsAcrossInvocations times out after 30s on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21704> |
| Issue | #21645 | Provide a way to tell which Container Runtime is being used | open | afscrome | <https://github.com/microsoft/aspire/issues/21645> |
| Issue | #21488 | Support wslc container runtime when Aspire runs inside WSL | open | marshalhayes | <https://github.com/microsoft/aspire/issues/21488> |
| Issue | #21563 | `Waiting for resource` logged multiple times | closed | afscrome | <https://github.com/microsoft/aspire/issues/21563> |
| Issue | #21449 | Require WSLC 3.0.4 or newer to avoid pre-start file-copy failures with bind mounts | open | afscrome | <https://github.com/microsoft/aspire/issues/21449> |
| Issue | #21419 | Dashboard: preserve resource selection in telemetry pages and metrics charts | open | joperezr | <https://github.com/microsoft/aspire/issues/21419> |
| Issue | #21700 | [CI Failure] VS Code extension unit tests (Windows) exit code 1 with no failing test or diagnostic | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21700> |
| Issue | #21699 | [CI Failure] Flaky: DevTunnelMonitorTests.ReconciliationRetriesUntilUnrecognizedOutputCanBeReplacedByServiceStatus ObjectDisposedException | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21699> |
| Issue | #21464 | Stop resources in reverse dependency order on AppHost shutdown | open | thomhurst | <https://github.com/microsoft/aspire/issues/21464> |
| Issue | #21603 | [CI Failure] Flaky: VS Code E2E (Windows, launch-profiles) Deno AppHost debug times out because js-debug's 10s attach timeout expires | open | davidfowl | <https://github.com/microsoft/aspire/issues/21603> |
| Issue | #21462 | Ship DCP stdout/stderr cleanup fix (Windows) in 13.6 servicing | closed | thomhurst | <https://github.com/microsoft/aspire/issues/21462> |
| Issue | #21696 | [Main CI Failure] Main branch CI failure at 25935214f31928dd58118449a2fe2f96da09ac70 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21696> |
| Issue | #21655 | DashboardUrlTests.DashboardDisplaysResourceUpdatesWhileAppHostIsPausedAtBreakpoint fails since dashboard Cards layout became default | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21655> |
| Issue | #21540 | Clean up Hosting's IProcessRunner and ProcessUtil | open | MattKotsenas | <https://github.com/microsoft/aspire/issues/21540> |
| Issue | #21688 | Breakpoint for Azure Function App not hit | open | mwiedemeyer | <https://github.com/microsoft/aspire/issues/21688> |
| Issue | #21687 | Add support for choosing channel in the Nix flake | open | KennethHoff | <https://github.com/microsoft/aspire/issues/21687> |
| Issue | #21535 | aspire config set replaces JSON arrays with objects when editing indexed values | closed | JamesNK | <https://github.com/microsoft/aspire/issues/21535> |
| Issue | #21620 | [CI Failure] Flaky: AzureFunctionsTests.AddAzureFunctionsProject_WorksWithMultipleProjects TaskCanceledException in DistributedApplication.StopAsync | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21620> |
| Issue | #21680 | [CI Failure] Flaky: MongoDbReplicaSetFunctionalTests.VerifyMongoDBReplicaSetResource fails to become healthy | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21680> |
| Issue | #21550 | Flaky: IntegrationHostProcessTests.ShutdownDuringRegistration_ReapsTheUnregisteredHost reads host-pids before the PID is written | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21550> |
| Issue | #21667 | [CI Failure] Flaky: VS Code extension E2E (Windows) tree action commands test times out waiting for E2E control revision | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21667> |
| Issue | #21666 | [CI Failure] VS Code extension E2E (Windows, launch-profiles): Deno AppHost debug startup timeout followed by EBUSY teardown | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21666> |
| Issue | #21665 | [CI Failure] Flaky: TestingPublicApiTests.DefaultEndpointSelectionPrefersHttpsOverHttp host start times out after 2 minutes on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21665> |
| Issue | #21612 | [Failing test]: Aspire.Hosting.RemoteHost.Tests.IntegrationHostLauncherTests.InitializeHostsAsync_WaitsForEveryRegistrationBeforeDiscovery | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21612> |
| Issue | #21650 | [CI] SecretDotNetAppHostTests: aspire secret set hangs silently; hung-command failures capture no CLI diagnostics | open | davidfowl | <https://github.com/microsoft/aspire/issues/21650> |
| Issue | #21637 | [CI Failure] Flaky: SingleMemberReplicaSetFunctionalTests write fails with NotWritablePrimary after MongoDB reports healthy | open | davidfowl | <https://github.com/microsoft/aspire/issues/21637> |
| Issue | #21633 | Polyglot TypeScript SDK Validation fails with npm E404 right after upstream npm publishes | open | davidfowl | <https://github.com/microsoft/aspire/issues/21633> |
| Issue | #21631 | Azure Kusto emulator: ARM64 development support on Microsoft Surface; QEMU startup SIGSEGV reproduction | open | nootn | <https://github.com/microsoft/aspire/issues/21631> |
| Issue | #21619 | [CI Failure] Flaky: AtsGoCodeGeneratorTests.GeneratedRuntime_PassesGoRuntimeHardeningTests goroutine count assertion on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21619> |
| Issue | #21589 | Flaky test: AzureSandboxesTests.AzureDevComputeClientKeepsCancellationAfterRejectedCreateDefinite races a 10ms timeout | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21589> |
| Issue | #21582 | Flaky: StopNonInteractiveTests two-AppHost tests collide on template-generated launch ports (address already in use) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21582> |
| Issue | #21607 | [aw] Failed jobs: Milestone Changelog Generator | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21607> |
| Issue | #21606 | [aw] Milestone Changelog Generator reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21606> |
| Issue | #21570 | Windows CI runners lose communication during test steps since the windows-2025-vs2026 20261007 image (not test hangs) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21570> |
| Issue | #21567 | Notify AppHost code when the container runtime is unhealthy | open | afscrome | <https://github.com/microsoft/aspire/issues/21567> |
| Issue | #21568 | Expose which container runtime Aspire is using | open | afscrome | <https://github.com/microsoft/aspire/issues/21568> |
| Issue | #21557 | [CI Failure] Flaky: Infrastructure.Tests fake executables fail with exit 126 (Text file busy) – LastSuccessfulMainRunFallsBackToOlderWindow | open | davidfowl | <https://github.com/microsoft/aspire/issues/21557> |
| Issue | #21529 | Ship the Nix manifest bump separately from PackageValidationBaselineVersion so it isn't blocked by full-matrix CI | open | av-leschinskiy | <https://github.com/microsoft/aspire/issues/21529> |
| Issue | #21509 | [aw] Analyze CI Failure is missing required data | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21509> |
| Issue | #21496 | [Failing test]: Aspire.Hosting.Tests.DistributedApplicationTests.BeforeResourceStartedEvent\_NotFiredForExplicitStartOnInitialCreation | open | radical | <https://github.com/microsoft/aspire/issues/21496> |
| Issue | #21491 | Make Dev Cert setup easier on windows CI | open | afscrome | <https://github.com/microsoft/aspire/issues/21491> |
| Issue | #21490 | Allow DNX CLI Acquisition to specify an exact version | open | afscrome | <https://github.com/microsoft/aspire/issues/21490> |
| Issue | #21489 | Windows extension E2E jobs lose runner communication and extend CI by tens of minutes | open | radical | <https://github.com/microsoft/aspire/issues/21489> |
| Issue | #21465 | DCP session folder deleted by managed disposal before DCP apiserver cleanup reads kubeconfig | closed | thomhurst | <https://github.com/microsoft/aspire/issues/21465> |
| Issue | #21482 | [aw] Analyze CI Failure could not verify daily AI credits | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21482> |
| Issue | #21470 | [automated] CI analyzer splits identical shared fixture failures into separate test causes | open | radical | <https://github.com/microsoft/aspire/issues/21470> |
| Issue | #21468 | [automated] Track CI hook and log-only job failures without fabricated test references | open | radical | <https://github.com/microsoft/aspire/issues/21468> |
| Issue | #21469 | [automated] Keep structured CI results accessible when diagnostic archives exceed the analyzer budget | open | radical | <https://github.com/microsoft/aspire/issues/21469> |
| Issue | #21467 | [automated] Track incomplete CI evidence when uploads or artifact collection fail | open | radical | <https://github.com/microsoft/aspire/issues/21467> |
| Issue | #21463 | AppHost silently uses a DCP bundle that doesn't match its SDK version (Path default; DnxPinned accepts shared-home layout) | open | thomhurst | <https://github.com/microsoft/aspire/issues/21463> |
| Issue | #21460 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21460> |
| Issue | #21421 | Follow up on deferred review feedback for the modern dashboard experience | open | sebastienros | <https://github.com/microsoft/aspire/issues/21421> |
| Issue | #20272 | [CI Failure] Flaky: Hex1bNativePublishingTests.NativeAssetsKeepTheirLayoutAndContents fails parsing truncated/corrupted MSBuild JSON item output | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20272> |
| Issue | #20799 | [CI Failure] Flaky: Hex1bNativePublishingTests.NativeAssetsKeepTheirLayoutAndContents(win-x64, singleFile:False) fails parsing truncated/corrupted MSBuild JSON item output | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20799> |
| Issue | #20017 | [CI Failure] Flaky: AtsJavaCodeGeneratorTests probe times out waiting for transport message on ubuntu-latest | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20017> |
| Issue | #21139 | [CI Failure] Flaky: SignalingFakeTimeProviderTests.TimerCreatedOnlySignalsRetryDelayAfterPollyTimeoutIsArmed expects a Polly timeout exception that is not always thrown | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21139> |
| Issue | #20706 | [CI Failure] Flaky: DevTunnelResourceBuilderExtensionsTests.DcpStartupPublishesDevTunnelUrls times out with TaskCanceledException in DistributedApplication.StopAsync | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20706> |
| Issue | #18815 | [CI Failure] Flaky: AspireServiceBusExtensionsTests.NamespaceWorksInConnectionStrings fails with Collection was modified in AzureEventSourceListener | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18815> |
| Issue | #20844 | [CI Failure] Flaky: ProcessExecutionDetachedTests.StartAsync_OnWindows_ProvidesValidNullStdin times out | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20844> |
| Issue | #983 | [Preview] .NET Aspire - Incorrect configuration when "Place project and solution in same folder" was used | closed | PieterjanDeClippel | <https://github.com/microsoft/aspire/issues/983> |
| Issue | #19039 | [CI Failure] Flaky: EnvironmentCheckerTests.CheckAllAsync_TimedOutCheckReportsWarningAndContinues - check completes too slowly under CI load | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19039> |
| Issue | #18691 | [CI Failure] NPM registry rate limiting (HTTP 429 Too Many Requests) from dnceng feed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18691> |
| Issue | #21413 | Local .NET 11 starter-template validation fails during coordinated project build | closed | radical | <https://github.com/microsoft/aspire/issues/21413> |
| Issue | #21180 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) 'select and execute run and debug pipeline steps' times out waiting for picker prompt | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21180> |
| Issue | #21198 | SSL_CERT_DIR injected for project resources breaks TLS for Go 1.27+ tools on macOS (public CAs no longer trusted) | closed | aarsethio | <https://github.com/microsoft/aspire/issues/21198> |
| Issue | #16357 | aspire add with non-interactive and no package argument adds the first alphabetical found package | closed | adamint | <https://github.com/microsoft/aspire/issues/16357> |
| Issue | #20665 | VS Code extension ignores launch.json debugger configuration for apphost (13.6.0) | closed | aDisplayName | <https://github.com/microsoft/aspire/issues/20665> |
| Issue | #21322 | bug: aspire secrets crashes on every operation when one of the already set secrets contains an escape character | closed | HugoVG | <https://github.com/microsoft/aspire/issues/21322> |
| Issue | #20903 | [CI Failure] Flaky: TerminalHostControlJsonSerializerContextTests.CancellationReachesServer times out after 30s on Linux | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20903> |
| Issue | #18690 | [CI Failure] Flaky: TestingBuilderTests.CrashTests fails intermittently with unhandled InvalidOperationException | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18690> |
| Issue | #18840 | [CI Failure] Flaky: JsonRpcAuthenticationTests.FailedAuthentication_ClosesConnection_AndPreventsFurtherCalls times out connecting to named pipe RPC server | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18840> |
| Issue | #19901 | aspire agent init reports success without indicating selected skills are already installed | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19901> |
| Issue | #17711 | Add AsExisting(...) support for AddAzureKubernetesEnviroment (ACR parity) | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17711> |
| Issue | #19726 | Maintain agent registrations during `aspire update` | closed | joperezr | <https://github.com/microsoft/aspire/issues/19726> |
| Issue | #21152 | Aspire.Npgsql.EntityFrameworkCore.PostgreSQL: TypeLoadException with Npgsql.EntityFrameworkCore.PostgreSQL 11.0.0-rc.2 (NpgsqlExecutionStrategy no longer exists) | closed | buvinghausen | <https://github.com/microsoft/aspire/issues/21152> |
| Issue | #18794 | [CI Failure] Flaky: ParentProcessLifetimeReusesResourcesAcrossAppRestartsAndStopsWhenParentExits fails due to DCP timestamp parsing BadRequest | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18794> |
| Issue | #18755 | [CI Failure] Flaky: ParentProcessLifetimeScopesExecutableAndContainerToParentProcess fails due to DCP timestamp parsing BadRequest | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18755> |
| Issue | #21032 | [CI Failure] Flaky: TrayWatchStreamTests.UnacknowledgedDashboardCancellationCannotAccumulateRequestsAcrossSnapshots(saturateSlots: True) asserts wrong reconciliation count | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21032> |
| Issue | #20929 | [CI Failure] Flaky: TrayWatchStreamTests.UnacknowledgedDashboardCancellationCannotAccumulateRequestsAcrossSnapshots asserts wrong reconciliation count | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20929> |
| Issue | #20707 | [CI Failure] Flaky: TrayWatchStreamTests.StalledResourceWatchDoesNotBlockReconciliationOrQuit asserts wrong reconciliation count | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20707> |
| Issue | #20749 | [CI Failure] Flaky: TrayWatchStreamTests.RemovedHostCancelsItsResourceWatchAndReplacementDoesNotReuseHealth reconciliation count race | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20749> |
| Issue | #20772 | [CI Failure] Flaky: TrayWatchStreamTests.StalledResourceWatchDoesNotBlockReconciliationOrQuit (removeFirst: False) asserts wrong reconciliation count | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20772> |
| Issue | #21390 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21390> |
| Issue | #21356 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21356> |
| Issue | #21320 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21320> |
| Issue | #21310 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21310> |
| Issue | #21299 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21299> |
| Issue | #21275 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21275> |
| Issue | #21248 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21248> |
| Issue | #21217 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21217> |
| Issue | #20563 | [aw] Analyze CI Failure produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20563> |
| Issue | #19463 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19463> |
| Issue | #21245 | [Failing test]: Azure Functions multi-project test times out during shutdown on Linux | closed | radical | <https://github.com/microsoft/aspire/issues/21245> |
| Issue | #19743 | [CI Failure] SqlServerContainerFixture InitializeAsync fails with Docker port 1433 already in use on shared CI runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19743> |
| Issue | #20760 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppDirectExecutionWorks fixture InitializeAsync fails with 'denoscript' endpoint not allocated | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20760> |
| Issue | #20761 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppTaskScriptWorks fixture InitializeAsync fails with 'denoscript' endpoint not allocated | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20761> |
| Issue | #21184 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppDirectExecutionWorks fixture InitializeAsync times out after 2 minutes via Polly.Timeout | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21184> |
| Issue | #21185 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppTaskScriptWorks fixture InitializeAsync times out after 2 minutes via Polly.Timeout | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21185> |
| Issue | #6887 | Project Resource fails to start if AppHost started with `--artifacts-path` | closed | afscrome | <https://github.com/microsoft/aspire/issues/6887> |
| Issue | #20587 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20587> |
| Issue | #21224 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21224> |
| Issue | #21016 | [aw] Analyze CI Failure is missing required tool | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21016> |
| Issue | #21257 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21257> |
| Issue | #21293 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21293> |
| Issue | #21312 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21312> |
| Issue | #21339 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21339> |
| Issue | #21415 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21415> |
| Issue | #20332 | [automated] CI failure analysis rejects grouped flaky causes and skips issue updates | closed | radical | <https://github.com/microsoft/aspire/issues/20332> |
| Issue | #19881 | CI failure cause issues show the wrong job for multi-job runs | closed | radical | <https://github.com/microsoft/aspire/issues/19881> |
| Issue | #20935 | [CI Failure] Flaky: DevTunnelMonitorTests.AnotherHostCannotEstablishUnknownLocalReadiness throws ObjectDisposedException on disposed IServiceProvider | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20935> |
| Issue | #21142 | [CI Failure] Flaky: DevTunnelMonitorTests.EndpointCallbackCanStopAndRestartParentWithoutBlockingMonitor throws ObjectDisposedException on disposed IServiceProvider | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21142> |
| Issue | #21134 | [CI Failure] Flaky: DevTunnelMonitorTests.RestartRejectsReadinessFromPreviousRun throws ObjectDisposedException on disposed IServiceProvider | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21134> |
| Issue | #21172 | [CI Failure] Flaky: DevTunnelMonitorTests.OlderReconciliationCannotUndoNewerLogObservations throws ObjectDisposedException on disposed IServiceProvider | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21172> |
| Issue | #18833 | Add `aspire publish --verify` to detect drift between checked-in generated artifacts and the AppHost | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/18833> |
| Issue | #20246 | Synchronize canonical telemetry hooks from released source | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20246> |
| Issue | #21094 | [CI Failure] Flaky: HistogramAllocationTests.Create_UnchangedCumulativeSnapshot_DoesNotAllocate observes incidental GC allocation on windows-latest | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21094> |
| Issue | #19945 | Agent init cannot refresh a locked telemetry hook and reports an unclear access error | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19945> |
| Issue | #16444 | TypeScript AppHost runs project resource with Release configuration during local development | closed | jozefizso | <https://github.com/microsoft/aspire/issues/16444> |
| Issue | #21296 | Docker Compose and Kubernetes publishers throw NotSupportedException for EndpointProperty.TlsEnabled | closed | johnkaram02 | <https://github.com/microsoft/aspire/issues/21296> |
| Issue | #20301 | Unable to use Pipeline API to add step dependent on dynamically generated resource provisioning step | closed | tonyzahnle | <https://github.com/microsoft/aspire/issues/20301> |
| Issue | #21126 | [CI Failure] Flaky: MetricsTests.ChartContainer_UnavailableHistogramPercentiles_TablePreservesExemplars fails with empty exemplars dialog collection on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21126> |
| Issue | #19000 | [Aspire.Hosting.Docker] UpdateConfig.MaxFailureRatio serializes as a quoted string and produces invalid Compose YAML | closed | SheepReaper | <https://github.com/microsoft/aspire/issues/19000> |
| Issue | #17303 | [AspireE2E] The AI Agents dialog on the dashboard are not localized | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/17303> |
| Issue | #18885 | [AspireE2E] Localized: Console Logs Filter tooltip is not localized in non-English UI | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18885> |
| Issue | #19992 | [CI Failure] PowerShell script pack-cli-npm-package.ps1 fails with FileLoadException on System.Collections.Specialized (Linux) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19992> |
| Issue | #21386 | Invalid remote skill sources block embedded skill and MCP setup | closed | JamesNK | <https://github.com/microsoft/aspire/issues/21386> |
| Issue | #21387 | Embedded skill conflict detection misses disabled custom sources | closed | JamesNK | <https://github.com/microsoft/aspire/issues/21387> |
| Issue | #21378 | [CI Failure] VS Code extension E2E (Linux, apphost-lifecycle-tools) shard fails with long stalls and no Mocha failure details | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21378> |
| Issue | #21095 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) 'global refresh clears loading after switching to the workspace view' times out waiting for shared ps refresh loading state | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21095> |
| Issue | #21069 | Configure Entra downstream API references from the AppHost model | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21069> |
| Issue | #21083 | Model and provision Entra application roles and role assignments | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21083> |
| Issue | #21074 | Evaluate and implement a local OIDC emulator for Entra development and tests | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21074> |
| Issue | #20594 | Deprecate the Aspire.AppHost.Sdk | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/20594> |
| Issue | #20698 | Finalize Project Resource v2 adoption for Aspire 17.0 | closed | joperezr | <https://github.com/microsoft/aspire/issues/20698> |
| Issue | #20227 | [CI Failure] Flaky: AzureServiceBusExtensionsTests.AzureServiceBusEmulatorResourceGeneratesConfigJsonOnlyChangedProperties times out during host shutdown (TaskCanceledException in DistributedApplication.StopAsync) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20227> |
| Issue | #17312 | Localization is not running | closed | JamesNK | <https://github.com/microsoft/aspire/issues/17312> |
| Issue | #11981 | Make `WithBindMount` idempotent | closed | afscrome | <https://github.com/microsoft/aspire/issues/11981> |
| Issue | #20869 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) times out waiting to own a single 'ps' follower after a taskkill-based watcher-stop failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20869> |
| Issue | #20833 | Support Key Vault resource references for Entra certificate credentials | closed | eerhardt | <https://github.com/microsoft/aspire/issues/20833> |
| Issue | #17635 | aspire ls dedupes settings vs walk using case-sensitive comparison on macOS | closed | adamint | <https://github.com/microsoft/aspire/issues/17635> |
| Issue | #21256 | Entra ID: throw when registration-only APIs are used with existing registrations | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21256> |
| Issue | #17699 | aspire logs --tail/-n counts [sys] orchestration lines against the limit, not just app output | closed | joperezr | <https://github.com/microsoft/aspire/issues/17699> |
| Issue | #17625 | [13.4] `ctrl+c` on `aspire describe` shows `Stopping Aspire` message | closed | afscrome | <https://github.com/microsoft/aspire/issues/17625> |
| Issue | #21269 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21269> |
| Issue | #18234 | Aspire CLI killing all processes | closed | KSemenenko | <https://github.com/microsoft/aspire/issues/18234> |
| Issue | #21331 | Template integration into init config source | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/21331> |
| Issue | #21330 | Custom template search | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/21330> |
| Issue | #17995 | [Failing test]: Aspire.Cli.EndToEnd.Tests.PersistentContainerEndToEndTests.PersistentContainersPreserveDataAcrossAppHostRuns | closed | JamesNK | <https://github.com/microsoft/aspire/issues/17995> |
| Issue | #16643 | Flaky: StopNonInteractiveTests E2E timeouts | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/16643> |
| Issue | #7590 | Improve logging of `ResourceReadyEvent` failures | closed | afscrome | <https://github.com/microsoft/aspire/issues/7590> |
| Issue | #21317 | [Failing test] WatchSpansAsync_DisabledFiltersAreIgnored times out on windows-latest | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21317> |
| Issue | #18719 | [CI Failure] Flaky: DockerComposeTests.DeployWithDashboard_PrintsDashboardAndServiceEndpoints fails due to port already in use | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18719> |
| Issue | #11371 | Using `InteractionSerivce` in `BeforeStart` deadlocks | closed | afscrome | <https://github.com/microsoft/aspire/issues/11371> |
| Issue | #19150 | [CI Failure] Flaky: AppHostServerSessionTests.GetRpcClientAsync_WhenServerExitsBeforeSocketIsAvailable_FailsWithoutWaitingForConnectionTimeout takes longer than expected on Windows runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19150> |
| Issue | #19782 | [Dashboard] Resolve relative persistence directories from the AppHost | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19782> |
| Issue | #13130 | Should `HostUrl` remap `*.dev.localhost` urls? | closed | afscrome | <https://github.com/microsoft/aspire/issues/13130> |
| Issue | #20009 | [CI Failure] Flaky: DashboardUrlTests.GetDashboardUrlAsyncAuthenticatesDashboardBrowser expects HTTP Found but gets RedirectKeepVerb | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20009> |
| Issue | #20533 | Minimum Required Hem version is incompatible with github windows images | closed | afscrome | <https://github.com/microsoft/aspire/issues/20533> |
| Issue | #6144 | No logs before `BeforeStartEvent` | closed | afscrome | <https://github.com/microsoft/aspire/issues/6144> |
| Issue | #14414 | Markdown Code block in Interaction Service notification looks odd | closed | afscrome | <https://github.com/microsoft/aspire/issues/14414> |
| Issue | #20507 | [CI Failure] Flaky: NuGetPackagePrefetcherTests.PrefetchingCancellationDueToShutdownLogsCleanMessage times out after 30s | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20507> |
| Issue | #18880 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_WithGracefulServices_BlockingSignalerDoesNotConsumeGracefulBudget times out intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18880> |
| Issue | #9769 | Exceptions in `ResourceEndpointsAllocatedEvent` are swallowed | closed | afscrome | <https://github.com/microsoft/aspire/issues/9769> |
| Issue | #13728 | `StartAsync` swallows `OperationCancelledException`s | closed | afscrome | <https://github.com/microsoft/aspire/issues/13728> |
| Issue | #20662 | [CI Failure] Flaky: ResourceCommandServiceTests.ExecuteCommandAsync_RebuildCommand_ReturnsBuildOutput build-count line mismatch on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20662> |
| Issue | #18306 | OTLP env vars silently dropped from ConfigMap when a project is referenced by others (Kubernetes publisher) | closed | ximenchuifeng | <https://github.com/microsoft/aspire/issues/18306> |
| Issue | #21067 | Blazor: GatewayOriginReference drops ValueProviderContext, causing Container Apps deployment to hang | closed | mip1983 | <https://github.com/microsoft/aspire/issues/21067> |
| Issue | #21221 | `AddRedisOutputCache` crashes at startup on .NET 11: unable to resolve `IOutputCachePolicyProvider` | closed | curllog | <https://github.com/microsoft/aspire/issues/21221> |
| Issue | #20885 | .Net 11 adds unattributed `dotnet-cli` otel resources / spans | closed | afscrome | <https://github.com/microsoft/aspire/issues/20885> |
| Issue | #21362 | aspire new persists machine-specific NuGet source mappings into generated projects | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/21362> |
| Issue | #21071 | Provision secure local credentials for created Entra confidential-client registrations | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21071> |
