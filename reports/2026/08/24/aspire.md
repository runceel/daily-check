# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 75 |
| オープン中の新規 PR     | 47 |
| クローズ (未マージ) PR  | 36 |
| 新規 Issue              | 93 |
| クローズ Issue          | 51 |
| 主要コントリビューター  | adamint, aspire-repo-bot[bot], JamesNK, karolz-ms, mitchdenny, IEvangelist |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19510](https://github.com/microsoft/aspire/pull/19510) — Update Cosmos DB emulator defaults （PR / merged / eerhardt）
  Cosmos DB エミュレーター利用者は新しい既定値を確認し、ローカル開発環境を必要に応じて更新してください。
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 （PR / open / sebastienros）
  Aspire Dashboard 利用者はフィルター入力の操作変更を確認してください。
- **⚠ 破壊的変更** [#18698](https://github.com/microsoft/aspire/pull/18698) — Flatten single optional DTO 'options' parameter in Go polyglot generator （PR / merged / ellahathaway）
  Aspire CLI 利用者は起動プロファイル選択の新しいオプションを確認してください。
- **⚠ セキュリティ** [#19513](https://github.com/microsoft/aspire/pull/19513) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
  CLI の利用者は各 PR プラットフォームでのスモークテスト結果を確認してください。
- **⚠ セキュリティ** [#18812](https://github.com/microsoft/aspire/pull/18812) — [auto-sec] Consolidate aspire dependency security remediations （PR / merged / IEvangelist）
  Python SDK 利用者は中央集約された検証ルールとの互換性を確認してください。
- **⚠ セキュリティ** [#18484](https://github.com/microsoft/aspire/issues/18484) — aspire start process remains vulnerable to launcher process group cleanup （Issue / closed / davidfowl）
  TypeScript codegen 利用者は Promise ラッパーが保持される生成結果を確認してください。
- **非推奨/廃止** [#19519](https://github.com/microsoft/aspire/pull/19519) — Reference only: Aspire.Hosting.Chaos pilot for the smart-proxy spike (not for merge) （PR / open / brrusino）
  Aspire の開発者は各 PR のテストと生成コードの変更を確認してください。
- **非推奨/廃止** [#18810](https://github.com/microsoft/aspire/pull/18810) — Bump mcp from 1.23.3 to 1.28.1 in /playground/FoundryAgentBasic/app in the uv group across 1 directory （PR / closed / dependabot[bot]）
  Aspire の利用者は今回の CLI、Dashboard、SDK の挙動変更を必要に応じて検証してください。
- **非推奨/廃止** [#17993](https://github.com/microsoft/aspire/issues/17993) — Add Java hosting integration （Issue / closed / marshalhayes）
  既存の Aspire ワークロードは更新前に関連する互換性を確認してください。

## このリポジトリの要点

Cosmos DB エミュレーター既定値、Dashboard フィルター、CLI の起動プロファイル選択など開発体験の改善が進みました。TypeScript codegen の Promise 保持や Python SDK 検証の集約も、生成コードとツールチェーンの安定性を高めています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19510](https://github.com/microsoft/aspire/pull/19510) — Update Cosmos DB emulator defaults

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +189 / -137
- マージ日時 (UTC): `2026-08-21 16:50:46`

**変更概要**

Cosmos DB エミュレーターの既定値を更新し、ローカル開発時の初期構成を現行仕様に合わせました。対象リソースを使う開発者はエミュレーター設定を確認してください。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/CosmosEndToEnd/CosmosEndToEnd.AppHost/AppHost.cs` | 0 | 2 |
| `playground/deployers/Deployers.AppHost/AppHost.cs` | 1 | 3 |
| `src/Aspire.Hosting.Azure.CosmosDB/AzureCosmosDBExtensions.cs` | 28 | 18 |
| `src/Aspire.Hosting.Azure.CosmosDB/CosmosDBEmulatorContainerImageTags.cs` | 4 | 4 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBConnectionPropertiesTests.cs` | 10 | 4 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBContainerConnectionPropertiesTests.cs` | 10 | 4 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBDatabaseConnectionPropertiesTests.cs` | 10 | 4 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBEmulatorFunctionalTests.cs` | 12 | 14 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBExtensionsTests.cs` | 89 | 54 |
| `tests/Aspire.Hosting.Azure.Tests/AzureRunAsEmulatorModeTests.cs` | 1 | 3 |
| `tests/Aspire.Hosting.Azure.Tests/PublicApiTests/CosmosDBPublicApiTests.cs` | 2 | 5 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.CosmosDB/Go/apphost.go` | 9 | 9 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.CosmosDB/Java/AppHost.java` | 5 | 5 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.CosmosDB/Python/apphost.py` | 3 | 3 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.CosmosDB/TypeScript/apphost.mts` | 5 | 5 |

</details>

<details><summary>コミット (5 件)</summary>

- `3b2629a` Update Cosmos DB emulator defaults
- `cc4a3c2` Finalize Cosmos emulator API transition
- `9f6389a` Fix Cosmos emulator compatibility coverage
- `19481d1` Apply suggestions from code review
- `9dd52ec` PR feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

エミュレーターの既定設定が変わりましたが、公開 API のシグネチャ変更はありません。

**既存利用者への影響**

既存プロジェクトは必要に応じてローカル設定を更新してください。運用中の Azure Cosmos DB には影響しません。

### [#19044](https://github.com/microsoft/aspire/pull/19044) — Disable autocomplete for dashboard filters

- 作者: vivekjm / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +29 / -0
- マージ日時 (UTC): `2026-08-24 00:01:17`

**変更概要**

Dashboard フィルターのオートコンプリートを無効化し、入力時の意図しない候補選択を防ぎました。Dashboard の利用者はフィルター操作を確認してください。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Pages/ConsoleLogs.razor` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Pages/Resources.razor` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Pages/StructuredLogs.razor` | 1 | 0 |
| `src/Aspire.Dashboard/Components/Pages/TraceDetail.razor` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Pages/Traces.razor` | 1 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/StructuredLogsTests.cs` | 21 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `1ce2ee4` Disable autocomplete for structured log filters
- `4cc76a2` Disable autocomplete across dashboard filters

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard UI の入力補助挙動のみを変更しており、API シグネチャの変更はありません。

**既存利用者への影響**

移行作業は不要です。既存のフィルター値は手入力または既存の選択操作で利用できます。

### [#19494](https://github.com/microsoft/aspire/pull/19494) — Add launch profile selection to Aspire CLI

- 作者: prom3theu5 / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +3505 / -195
- マージ日時 (UTC): `2026-08-22 04:15:28`

**変更概要**

Aspire CLI に起動プロファイルを選択する機能を追加しました。複数プロファイルを持つアプリでも、実行時に対象を明示できます。

<details><summary>変更ファイル (63 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/loc/xlf/aspire-vscode.xlf` | 34 | 1 |
| `extension/package.json` | 11 | 0 |
| `extension/package.nls.json` | 12 | 1 |
| `extension/src/dcp/types.ts` | 1 | 0 |
| `extension/src/debugger/AspireDebugConfigurationProvider.ts` | 63 | 3 |
| `extension/src/debugger/AspireDebugSession.ts` | 20 | 4 |
| `extension/src/debugger/languages/dotnet.ts` | 216 | 33 |
| `extension/src/debugger/launchProfiles.ts` | 321 | 43 |
| `extension/src/lm/appHostLifecycleToolAdapters.ts` | 20 | 3 |
| `extension/src/lm/appHostLifecycleToolContracts.ts` | 7 | 3 |
| `extension/src/lm/appHostLifecycleToolService.ts` | 2 | 1 |
| `extension/src/loc/strings.ts` | 9 | 0 |
| `extension/src/services/AppHostLaunchService.ts` | 59 | 7 |
| `extension/src/test-e2e/launchProfiles.e2e.test.ts` | 137 | 3 |
| `extension/src/test-e2e/packageSurface.e2e.test.ts` | 17 | 2 |
| _... 他 48 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `3b81523` Add launch profile selection to Aspire CLI
- `cf50587` Address launch profile review feedback
- `6e5b5a4` Validate SDK launch profile fields
- `f2facaa` Fix launch profile handling across CLI and VS Code
- `c3cf3fc` Merge upstream main into feat/aspire-launch-profile
- `8126be8` Fix launch profile fallback regressions
- `401cde2` Address final launch profile review feedback
- `96bd97f` Co-authored-by: Copilot App <223556219+Copilot@users.noreply.github.com>
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI のオプションと選択処理が追加されましたが、既存の既定起動フローを壊す変更ではありません。

**既存利用者への影響**

既存の CLI 利用者は移行不要です。プロファイルを使い分ける場合のみ新しい選択オプションを利用してください。

### [#19516](https://github.com/microsoft/aspire/pull/19516) — Run CLI smoke tests across all PR platforms

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +429 / -156
- マージ日時 (UTC): `2026-08-22 05:18:38`

**変更概要**

CLI のスモークテストを PR の全対象プラットフォームで実行するよう CI を拡張しました。OS ごとの起動回帰を早期検出する変更です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/ci.yml` | 6 | 4 |
| `.github/workflows/cli-starter-validation.yml` | 109 | 0 |
| `.github/workflows/scratch-cli-platform-smoke.yml` | 101 | 0 |
| `.github/workflows/tests.yml` | 98 | 84 |
| `docs/ci/test-trigger-map.md` | 2 | 7 |
| `eng/github-ci/test-trigger-map.yml` | 2 | 15 |
| `eng/scripts/cli-starter-validation.ps1` | 111 | 44 |
| `tests/Infrastructure.Tests/TestTriggerMap/TestTriggerMapTests.cs` | 0 | 2 |

</details>

<details><summary>コミット (4 件)</summary>

- `af5d43f` Add cross-platform CLI smoke workflow
- `c9c1ec9` Run CLI smoke validation on every PR
- `e3433e9` Fix CLI smoke validation diagnostics
- `a7b59ff` Allow CLI smoke jobs to read artifacts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テスト対象と CI 設定の拡張であり、製品 API の変更はありません。

**既存利用者への影響**

利用者の移行は不要です。開発者は PR の CI 結果で対象プラットフォームの差異を確認できます。

### [#19584](https://github.com/microsoft/aspire/pull/19584) — Centralize Python SDK validation

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +535 / -367
- マージ日時 (UTC): `2026-08-22 04:48:28`

**変更概要**

Python SDK の検証処理を中央集約し、複数箇所で重複していたチェックを一貫したルールで実行するようにしました。

<details><summary>変更ファイル (49 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/polyglot-validation/Dockerfile.python` | 5 | 0 |
| `.github/workflows/polyglot-validation/pyrightconfig.json` | 9 | 0 |
| `.github/workflows/polyglot-validation/test-python-playground.sh` | 17 | 13 |
| `src/Aspire.Hosting.CodeGeneration.Python/AtsPythonCodeGenerator.cs` | 20 | 4 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.AppConfiguration/Python/apphost.py` | 5 | 2 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.AppContainers/Python/apphost.py` | 12 | 8 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.AppService/Python/apphost.py` | 6 | 6 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.ApplicationInsights/Python/apphost.py` | 1 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.CognitiveServices/Python/apphost.py` | 2 | 2 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.ContainerRegistry/Python/apphost.py` | 4 | 4 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.CosmosDB/Python/apphost.py` | 1 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.EventHubs/Python/apphost.py` | 3 | 3 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.Functions/Python/apphost.py` | 3 | 3 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.KeyVault/Python/apphost.py` | 16 | 16 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.Kusto/Python/apphost.py` | 2 | 2 |
| _... 他 34 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `881c2e3` Centralize Python SDK validation
- `5151744` Strengthen Python callback validation
- `a731a01` Avoid canceling Python progress validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

検証ロジックの配置を整理する変更で、公開 API のシグネチャ変更はありません。

**既存利用者への影響**

通常の利用者に移行は不要です。独自の SDK 検証フックを持つ場合は結果を確認してください。

### [#19577](https://github.com/microsoft/aspire/pull/19577) — Fix TypeScript codegen dropping Promise wrapper for zero-capability resource builders

- 作者: flojon / 状態: MERGED
- ラベル: `area-ats`
- 変更行数: +2974 / -671
- マージ日時 (UTC): `2026-08-22 04:05:13`

**変更概要**

TypeScript codegen が capability のないリソースビルダーで Promise ラッパーを落としていた問題を修正しました。生成コードの非同期契約が一貫します。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.CodeGeneration.TypeScript/AtsTypeScriptCodeGenerator.cs` | 140 | 33 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/AtsGeneratedAspire.verified.go` | 120 | 10 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 120 | 10 |
| `tests/Aspire.Hosting.CodeGeneration.Java.Tests/Snapshots/AtsGeneratedAspire.verified.java` | 140 | 3 |
| `tests/Aspire.Hosting.CodeGeneration.Java.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.java` | 140 | 3 |
| `tests/Aspire.Hosting.CodeGeneration.Python.Tests/Snapshots/AtsGeneratedAspire.verified.py` | 87 | 3 |
| `tests/Aspire.Hosting.CodeGeneration.Python.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.py` | 87 | 3 |
| `tests/Aspire.Hosting.CodeGeneration.Rust.Tests/Snapshots/AtsGeneratedAspire.verified.rs` | 156 | 2 |
| `tests/Aspire.Hosting.CodeGeneration.Rust.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.rs` | 156 | 2 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/AtsTypeScriptCodeGeneratorTests.cs` | 409 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/AtsGeneratedAspire.verified.ts` | 334 | 23 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 888 | 577 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/TestTypes/TestExtensions.cs` | 70 | 2 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/TestTypes/TestGeneratedNameCollisionResources.cs` | 14 | 0 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `0996c25` Fix TypeScript codegen skipping Promise wrapper for zero-capability r…
- `31bca08` Strengthen Promise wrapper test coverage
- `69110d5` Ignore comments when scanning Promise declarations
- `05c5f0a` Update polyglot snapshots for marker resource
- `5bf8388` Avoid unused Promise wrapper collisions
- `ffa4615` Avoid unused Promise wrapper collisions
- `9f7a202` Handle Promise wrapper aliases
- `5a34b42` Use canonical Promise wrapper handles
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成される TypeScript の Promise 型保持を修正したもので、新しい公開 API の追加はありません。

**既存利用者への影響**

codegen を再実行して生成物を更新してください。手書きコードの移行は通常不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19300 | Retry invalid project locations and require matching local templates | adamint | <https://github.com/microsoft/aspire/pull/19300> |
| #19131 | Show debugger setup hints for missing VS Code extensions | adamint | <https://github.com/microsoft/aspire/pull/19131> |
| #19580 | Prepare VS Code extension release v1.19.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19580> |
| #19579 | Fix dashboard graph rendering for multi-path icons | sebastienros | <https://github.com/microsoft/aspire/pull/19579> |
| #19552 | Simplify and improve Executable launch argument computation | karolz-ms | <https://github.com/microsoft/aspire/pull/19552> |
| #19559 | Fix dashboard browser launch blocking AppHost startup | adamint | <https://github.com/microsoft/aspire/pull/19559> |
| #18339 | [Automated] Update ATS API Surface Area | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18339> |
| #19026 | Export Dotnet Blazor gateway APIs to polyglot AppHosts | karolz-ms | <https://github.com/microsoft/aspire/pull/19026> |
| #19557 | [release/13.5] Exclude unused hex1bpty.exe from published CLI archives | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19557> |
| #19466 | Surface deploy, publish, and pipeline actions in Aspire pane | SankeerthNara | <https://github.com/microsoft/aspire/pull/19466> |
| #19539 | Expose Aspire project creation workflows | SankeerthNara | <https://github.com/microsoft/aspire/pull/19539> |
| #19541 | Prompt for an AppHost when a directory launch is ambiguous | SankeerthNara | <https://github.com/microsoft/aspire/pull/19541> |
| #19532 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19532> |
| #19484 | Harden dashboard Blazor WebSocket origin validation | JamesNK | <https://github.com/microsoft/aspire/pull/19484> |
| #19469 | Persist CLI channel across installs and self-updates | mitchdenny | <https://github.com/microsoft/aspire/pull/19469> |
| #19554 | Exclude unused hex1bpty.exe from published CLI archives | mitchdenny | <https://github.com/microsoft/aspire/pull/19554> |
| #19551 | fix(release): Restore WinGet publication with .NET 9 wingetcreate | radical | <https://github.com/microsoft/aspire/pull/19551> |
| #19525 | Update Aspire Dashboard README | JamesNK | <https://github.com/microsoft/aspire/pull/19525> |
| #19545 | Revert "Update parent resource state from replicas (#18642)" | adamint | <https://github.com/microsoft/aspire/pull/19545> |
| #19509 | [release/13.5] fix(release): Restore WinGet publication with .NET 9 wingetcreate | radical | <https://github.com/microsoft/aspire/pull/19509> |
| #19533 | [automated] Enable WinGet publishing by default in release pipeline | radical | <https://github.com/microsoft/aspire/pull/19533> |
| #19238 | Improve process fallback failure diagnostics | karolz-ms | <https://github.com/microsoft/aspire/pull/19238> |
| #19534 | Fix dashboard resource subscription race | JamesNK | <https://github.com/microsoft/aspire/pull/19534> |
| #19335 | Update Sigstore and Tuf to 1.0.0 | mitchdenny | <https://github.com/microsoft/aspire/pull/19335> |
| #18928 | Blazor hosting changes for WebAssembly debugging | maraf | <https://github.com/microsoft/aspire/pull/18928> |
| #19524 | [release/13.5] Preserve TypeSystem compatibility with older CLIs | adamint | <https://github.com/microsoft/aspire/pull/19524> |
| #19488 | Harden interaction file uploads | JamesNK | <https://github.com/microsoft/aspire/pull/19488> |
| #19523 | [release/13.5] Remove pipeline-scoped Publish-Build-Assets group | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19523> |
| #19528 | [release/13.5] [main] Update dependencies from microsoft/dcp | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19528> |
| #19531 | Increment patch version from 0 to 1 | joperezr | <https://github.com/microsoft/aspire/pull/19531> |
| #19163 | Remove Publish-Build-Assets variable group from release/13.5 | missymessa | <https://github.com/microsoft/aspire/pull/19163> |
| #19336 | Stop redisplaying dismissed unresolved parameters notification | JamesNK | <https://github.com/microsoft/aspire/pull/19336> |
| #19527 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/19527> |
| #19506 | Preserve TypeSystem compatibility with older CLIs | adamint | <https://github.com/microsoft/aspire/pull/19506> |
| #19518 | Remove pipeline-scoped Publish-Build-Assets group | adamint | <https://github.com/microsoft/aspire/pull/19518> |
| #19205 | Harden Azure Functions VS Code launch lifecycle | ellahathaway | <https://github.com/microsoft/aspire/pull/19205> |
| #19501 | Pin GitHub Actions to full-length commit SHAs | danfiedler-msft | <https://github.com/microsoft/aspire/pull/19501> |
| #19508 | Make AppHost tree E2E startup deterministic under CI contention | ellahathaway | <https://github.com/microsoft/aspire/pull/19508> |
| #19237 | Fix Azure Functions E2E polling after reload | ellahathaway | <https://github.com/microsoft/aspire/pull/19237> |
| #18063 | Detect principal type from credential in BicepProvisioner | denisivan0v | <https://github.com/microsoft/aspire/pull/18063> |
| #19474 | Stabilize the Java extension E2E shards: cache the Maven distribution, bound the recorder install, and fix a cleanup race | adamint | <https://github.com/microsoft/aspire/pull/19474> |
| #19479 | Prepare VS Code extension release v1.18.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19479> |
| #19135 | Support running the Aspire dashboard from tests | adamint | <https://github.com/microsoft/aspire/pull/19135> |
| #19394 | Preserve the default AppHost for explicit runs | adamint | <https://github.com/microsoft/aspire/pull/19394> |
| #18554 | Add health check to Azure Cosmos DB client integration | thomhurst | <https://github.com/microsoft/aspire/pull/18554> |
| #19068 | Harden Aspire skills bundle loading, validation, and caching | ellahathaway | <https://github.com/microsoft/aspire/pull/19068> |
| #19367 | Bound Aspire CLI process termination wait | karolz-ms | <https://github.com/microsoft/aspire/pull/19367> |
| #18642 | Update parent resource state from replicas | adamint | <https://github.com/microsoft/aspire/pull/18642> |
| #18068 | Switch release flow to draft-then-publish for immutable releases | joperezr | <https://github.com/microsoft/aspire/pull/18068> |
| #19384 | Scope AppHost lifecycle by worktree and forward launch arguments | Shaurya2k06 | <https://github.com/microsoft/aspire/pull/19384> |
| #19377 | Update Plotly.js to 4.0.0-rc.0 | JamesNK | <https://github.com/microsoft/aspire/pull/19377> |
| #19461 | Document dashboard unsecured access risks | JamesNK | <https://github.com/microsoft/aspire/pull/19461> |
| #19352 | Support advanced dotnet invocation options | karolz-ms | <https://github.com/microsoft/aspire/pull/19352> |
| #19359 | Fix remembered AppHost folder in multi-root workspaces | adamint | <https://github.com/microsoft/aspire/pull/19359> |
| #19402 | Bound Dotnet project pipeline tests | karolz-ms | <https://github.com/microsoft/aspire/pull/19402> |
| #19445 | Fix gh-aw v0.86.2 safe-output base parsing | IEvangelist | <https://github.com/microsoft/aspire/pull/19445> |
| #18033 | Add Java hosting integration | marshalhayes | <https://github.com/microsoft/aspire/pull/18033> |
| #19337 | Revert "Bound the NuGet package search timeout" | adamint | <https://github.com/microsoft/aspire/pull/19337> |
| #19424 | [release/13.5] Move progress prompt title to options | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19424> |
| #19440 | Update available external dependencies | joperezr | <https://github.com/microsoft/aspire/pull/19440> |
| #19418 | [release/13.5] Fix deployment E2E test matrix enumeration | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19418> |
| #19427 | [release/13.5] Fix mixed-quality staging package discovery | mitchdenny | <https://github.com/microsoft/aspire/pull/19427> |
| #19448 | [release/13.5] Use SHA-512 for Aspire Skills bundle integrity checks and hide the remote-fetch preview toggle | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19448> |
| #19446 | Fix docs safe-output base resolution | IEvangelist | <https://github.com/microsoft/aspire/pull/19446> |
| #19400 | Honor selected AppHost launch profile in VS Code | adamint | <https://github.com/microsoft/aspire/pull/19400> |
| #19343 | Tolerate NuGet credential-provider stdout preamble in package search parsing | IEvangelist | <https://github.com/microsoft/aspire/pull/19343> |
| #19438 | Upgrade gh-aw compiler to v0.86.2 | IEvangelist | <https://github.com/microsoft/aspire/pull/19438> |
| #19041 | [Azure App Configuration] - Add health check endpoint for app config emulator | zhiyuanliang-ms | <https://github.com/microsoft/aspire/pull/19041> |
| #19426 | Fix mixed-quality staging package discovery | mitchdenny | <https://github.com/microsoft/aspire/pull/19426> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19520 | Add run-mode deployment E2E coverage for role assignments under a service principal credential | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19520> |
| PR | #19614 | fix(cli): show resource command help for invalid arguments | open | Aedwon | <https://github.com/microsoft/aspire/pull/19614> |
| PR | #19613 | Avoid duplicate dashboard connection metadata | open | sebastienros | <https://github.com/microsoft/aspire/pull/19613> |
| PR | #19605 | [Automated] Update ATS API Surface Area | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19605> |
| PR | #19607 | Add BuildKit cache support to Docker Compose generation and container image builds | open | sliekens | <https://github.com/microsoft/aspire/pull/19607> |
| PR | #19565 | Enable Native AOT dashboard with Fluent UI v5 | open | JamesNK | <https://github.com/microsoft/aspire/pull/19565> |
| PR | #19608 | Add trusted fast path for extension release PRs | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/19608> |
| PR | #19600 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19600> |
| PR | #19590 | Fix DevTunnel endpoint URL publication | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19590> |
| PR | #19592 | Stabilize VS Code extension E2E state assertions | open | adamint | <https://github.com/microsoft/aspire/pull/19592> |
| PR | #19604 | Re-restore integrations when another CLI replaced the assets | open | flojon | <https://github.com/microsoft/aspire/pull/19604> |
| PR | #19521 | Add terminal-driven CLI smoke scenarios | open | sebastienros | <https://github.com/microsoft/aspire/pull/19521> |
| PR | #19431 | Migrate dashboard to Fluent UI Blazor v5 | open | JamesNK | <https://github.com/microsoft/aspire/pull/19431> |
| PR | #19601 | Fix Oracle initialization script handling | open | sebastienros | <https://github.com/microsoft/aspire/pull/19601> |
| PR | #19514 | Bump the github-actions group across 1 directory with 12 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19514> |
| PR | #19595 | Update Tuf and Sigstore to 1.0.1 beta | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19595> |
| PR | #19585 | [release/13.5] Fix dashboard graph rendering for multi-path icons | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19585> |
| PR | #19582 | [automated] fix(ci): Prevent duplicate CI failure cause issues | open | radical | <https://github.com/microsoft/aspire/pull/19582> |
| PR | #19583 | Add dotnet-tools feed for diagnostics dependencies | open | adamint | <https://github.com/microsoft/aspire/pull/19583> |
| PR | #19589 | Update PackageValidationBaselineVersion to 13.5.2 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19589> |
| PR | #19555 | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | open | nellshamrell | <https://github.com/microsoft/aspire/pull/19555> |
| PR | #19572 | Expose through extension methods maui build and launch arguments | open | frederikstonge | <https://github.com/microsoft/aspire/pull/19572> |
| PR | #19462 | Restore dashboard unsecured endpoint FWLink | open | JamesNK | <https://github.com/microsoft/aspire/pull/19462> |
| PR | #19481 | Merge release/13.5 to main after v13.5.0 release | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19481> |
| PR | #19567 | Make CLI resource observation reusable | open | adamint | <https://github.com/microsoft/aspire/pull/19567> |
| PR | #19513 | Bump the npm group across 1 directory with 23 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19513> |
| PR | #19556 | [automated] fix(ci): select installer jobs and loose CI dependencies correctly | open | radical | <https://github.com/microsoft/aspire/pull/19556> |
| PR | #19439 | Enable Native AOT for Aspire Dashboard | open | javiercn | <https://github.com/microsoft/aspire/pull/19439> |
| PR | #19558 | Update PackageValidationBaselineVersion to 13.5.1 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19558> |
| PR | #19549 | Add global Azure Front Door support for regional app stamps | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19549> |
| PR | #19538 | Remove flaky duplicate child log path test | open | JamesNK | <https://github.com/microsoft/aspire/pull/19538> |
| PR | #19519 | Reference only: Aspire.Hosting.Chaos pilot for the smart-proxy spike (not for merge) | open | brrusino | <https://github.com/microsoft/aspire/pull/19519> |
| PR | #19447 | Fix VS Code AppHost startup with legacy Aspire on Linux | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19447> |
| PR | #19512 | Add Azure Front Door global entry point over regional stamps | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19512> |
| PR | #19486 | Generalize Aspire-skills bundle assets | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19486> |
| PR | #19498 | Replace JsonPatch.Net with local implementation | open | eerhardt | <https://github.com/microsoft/aspire/pull/19498> |
| PR | #19478 | Don't count AppHost builds against CLI startup timeout | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19478> |
| PR | #19490 | Render Kitty graphics in the dashboard web terminal | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19490> |
| PR | #19429 | Fix Kubernetes values for embedded environment parameters | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19429> |
| PR | #19430 | Fix Kubernetes hostname publishing and routing | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19430> |
| PR | #19482 | Update PackageValidationBaselineVersion to 13.5.0 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19482> |
| PR | #19483 | Fix release-notes generation for draft releases (list-and-match instead of get-by-tag) | open | joperezr | <https://github.com/microsoft/aspire/pull/19483> |
| PR | #19455 | Fix main CI failure attribution and classification | open | Copilot | <https://github.com/microsoft/aspire/pull/19455> |
| PR | #19465 | Fix docs safe-output base fallback | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19465> |
| PR | #19432 | Use Blazor gateway CLI during development | open | javiercn | <https://github.com/microsoft/aspire/pull/19432> |
| PR | #19443 | Update deferred external dependencies | open | joperezr | <https://github.com/microsoft/aspire/pull/19443> |
| PR | #19434 | Add human review gates to code review skill | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19434> |
| PR | #17524 | Allow test result uploads to continue on error | closed | Copilot | <https://github.com/microsoft/aspire/pull/17524> |
| PR | #17996 | Add TS AppHost CI pipeline shadow | closed | davidfowl | <https://github.com/microsoft/aspire/pull/17996> |
| PR | #17873 | Add Azure sandbox deployment target | closed | davidfowl | <https://github.com/microsoft/aspire/pull/17873> |
| PR | #18486 | Detach Unix start process from launcher group | closed | davidfowl | <https://github.com/microsoft/aspire/pull/18486> |
| PR | #17955 | Stream AppHost discovery in VS Code extension | closed | davidfowl | <https://github.com/microsoft/aspire/pull/17955> |
| PR | #19108 | Remove Publish-Build-Assets variable group from release/9.5 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19108> |
| PR | #19107 | Remove Publish-Build-Assets variable group from release/9.4 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19107> |
| PR | #19106 | Remove Publish-Build-Assets variable group from release/9.3 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19106> |
| PR | #19105 | Remove Publish-Build-Assets variable group from release/9.2 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19105> |
| PR | #19104 | Remove Publish-Build-Assets variable group from release/9.1 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19104> |
| PR | #19103 | Remove Publish-Build-Assets variable group from release/9.0-rc1 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19103> |
| PR | #19102 | Remove Publish-Build-Assets variable group from release/9.0-efnpgsql | closed | missymessa | <https://github.com/microsoft/aspire/pull/19102> |
| PR | #19101 | Remove Publish-Build-Assets variable group from release/9.0 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19101> |
| PR | #19100 | Remove Publish-Build-Assets variable group from release/8.2 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19100> |
| PR | #19099 | Remove Publish-Build-Assets variable group from release/8.1 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19099> |
| PR | #19098 | Remove Publish-Build-Assets variable group from release/8.0 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19098> |
| PR | #19096 | Remove Publish-Build-Assets variable group from release/13.3 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19096> |
| PR | #19095 | Remove Publish-Build-Assets variable group from release/13.2 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19095> |
| PR | #19094 | Remove Publish-Build-Assets variable group from release/13.1 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19094> |
| PR | #19093 | Remove Publish-Build-Assets variable group from release/13.0 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19093> |
| PR | #18757 | [main] Update dependencies from dotnet/arcade | closed | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18757> |
| PR | #19563 | Enable Native AOT dashboard with Fluent UI v5 | closed | JamesNK | <https://github.com/microsoft/aspire/pull/19563> |
| PR | #19253 | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | closed | nellshamrell | <https://github.com/microsoft/aspire/pull/19253> |
| PR | #19550 | [main] fix(release): Restore WinGet publication with .NET 9 wingetcreate | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19550> |
| PR | #18428 | Add `aspire test` testing-loop spec and Phase 0 walking skeleton | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18428> |
| PR | #19040 | Add experimental Azure VMSS compute environment | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19040> |
| PR | #18936 | Make the vNext image the only Azure Cosmos DB emulator | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18936> |
| PR | #18135 | docs: capture how to test the AzDO release pipeline (previewRun + DryRun read-only) | closed | radical | <https://github.com/microsoft/aspire/pull/18135> |
| PR | #16448 | Unify quarantine and outerloop CI with the main test pipeline | closed | radical | <https://github.com/microsoft/aspire/pull/16448> |
| PR | #18411 | ci: enforce selective test selection on PRs | closed | radical | <https://github.com/microsoft/aspire/pull/18411> |
| PR | #17461 | Add `aspire --info` to enumerate the running CLI's install + discovered installs + hives | closed | radical | <https://github.com/microsoft/aspire/pull/17461> |
| PR | #18996 | Pin GitHub Actions to full-length commit SHAs | closed | OssSecurityBot | <https://github.com/microsoft/aspire/pull/18996> |
| PR | #19451 | [release/13.5] Respect project server ready action overrides | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19451> |
| PR | #17272 | Follow-up cleanup on AppHost RID selection (#17259) | closed | joperezr | <https://github.com/microsoft/aspire/pull/17272> |
| PR | #19436 | Update agentic workflows to gh-aw v0.86.2 | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/19436> |
| PR | #19381 | Delete .agents/skills/api-review/SKILL.md | closed | 7kkv8xtw6m-ctrl | <https://github.com/microsoft/aspire/pull/19381> |
| Issue | #19610 | Show help test on invalid argument to CLI resource command | open | afscrome | <https://github.com/microsoft/aspire/issues/19610> |
| Issue | #19611 | Aspire CLI warns that CLI is required... | open | afscrome | <https://github.com/microsoft/aspire/issues/19611> |
| Issue | #19612 | 13.5.2 Aspire Foundry Integration: Foundry project produces ' Duplicate property 'resource.connectionString' found in resource [project]' | open | mip1983 | <https://github.com/microsoft/aspire/issues/19612> |
| Issue | #19591 | `TryAddEventingSubscriber` on Windows / Aspire 13.4+ (includes 13.5.2) prevents DCP from reconciling executables, silent hang | open | AlexeyIsupovST | <https://github.com/microsoft/aspire/issues/19591> |
| Issue | #19609 | Aspire.Hosting.Orleans: model grain journaling providers | open | ReubenBond | <https://github.com/microsoft/aspire/issues/19609> |
| Issue | #19569 | `aspire stop --force` not wiping volumes | open | humleflue | <https://github.com/microsoft/aspire/issues/19569> |
| Issue | #19581 | [VS Code] Reduce extension release friction | open | adamint | <https://github.com/microsoft/aspire/issues/19581> |
| Issue | #19594 | Block Git.arsepiso.Debugs.readmi | closed | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/19594> |
| Issue | #19606 | WithTerminal executables produce DcpExecutor errors when stdout log streaming starts | open | davidfowl | <https://github.com/microsoft/aspire/issues/19606> |
| Issue | #19588 | [CI Failure] Flaky: VS Code extension E2E (Linux, debug-dashboard) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19588> |
| Issue | #19597 | [CI Failure] Flaky: VS Code extension E2E (Linux, workspace-target-proof) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19597> |
| Issue | #19568 | Aspire Azure Storage fails with The template output 'dataLakeEndpoint' is not valid | open | AndreiLazarescu | <https://github.com/microsoft/aspire/issues/19568> |
| Issue | #19603 | aspire restore skips re-restore when an older CLI replaced the integration assets, silently reusing the old code generator | open | flojon | <https://github.com/microsoft/aspire/issues/19603> |
| Issue | #19602 | [Dashboard] FluentMenu null JS object reference intermittently terminates Blazor circuit in 13.5.2 | open | davidfowl | <https://github.com/microsoft/aspire/issues/19602> |
| Issue | #19473 | Don't clean up extension if extension isntall fails | open | afscrome | <https://github.com/microsoft/aspire/issues/19473> |
| Issue | #19547 | [CI Failure] Flaky: VS Code extension E2E (Windows, edge-cases) shard fails with generic exit code, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19547> |
| Issue | #19596 | [CI Failure] CLI smoke test (aspire new + restore) fails during Homebrew/WinGet installer artifact preparation | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19596> |
| Issue | #19598 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19598> |
| Issue | #19599 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19599> |
| Issue | #19505 | aspire do push to an existing container registry requires a full provisioning context and silently creates a resource group | open | k-schneider | <https://github.com/microsoft/aspire/issues/19505> |
| Issue | #19507 | TypeScript AppHost codegen omits *Promise/*PromiseImpl wrapper for exports returning a bare Aspire interface | closed | flojon | <https://github.com/microsoft/aspire/issues/19507> |
| Issue | #19593 | Better error message needed for too old Docker CLI after updating to Aspire 13.5.0 | open | normj | <https://github.com/microsoft/aspire/issues/19593> |
| Issue | #19536 | Allow setting multiple parameters at once at runtime | open | hansmbakker | <https://github.com/microsoft/aspire/issues/19536> |
| Issue | #19575 | [aw] Generate release notes for a new stable Aspire release failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19575> |
| Issue | #19574 | [aw] Update aspire.dev support page for a new Aspire release failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19574> |
| Issue | #19586 | [aw] PR Documentation Check produced no safe outputs | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19586> |
| Issue | #19587 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19587> |
| Issue | #19489 | Graph view crashes with 'multiple root elements' on AddBlobs | closed | MaikelOrisha | <https://github.com/microsoft/aspire/issues/19489> |
| Issue | #19496 | DevTunnel port resources are Running but Dashboard URLs are empty in 13.5.0 | open | Vladipz | <https://github.com/microsoft/aspire/issues/19496> |
| Issue | #19497 | `aspire describe`/dashboard report a stale endpoint URL for `.WithHttpsEndpoint()` project resources — actual Kestrel bind port differs every run | open | malisancube | <https://github.com/microsoft/aspire/issues/19497> |
| Issue | #19576 | [CI Failure] Flaky: VS Code extension E2E (Windows, dynamic-debug-configuration) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19576> |
| Issue | #19578 | [automated] Analyze CI Failure opens duplicates when prior-cause context is truncated | open | radical | <https://github.com/microsoft/aspire/issues/19578> |
| Issue | #19477 | [CI Failure] Windows test host process init failure (exit code -1073741502 / 0xC0000142) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19477> |
| Issue | #19570 | [13.5.1] Parallel tests are no longer stable | open | afscrome | <https://github.com/microsoft/aspire/issues/19570> |
| Issue | #19573 | [aw] Repo Pulse — Daily Report reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19573> |
| Issue | #19571 | [Aspire.Hosting.Maui] Expose build and launch arguments for more flexibility | open | frederikstonge | <https://github.com/microsoft/aspire/issues/19571> |
| Issue | #19553 | [VS Code] Automatically expand the only AppHost in the Aspire pane | closed | adamint | <https://github.com/microsoft/aspire/issues/19553> |
| Issue | #19566 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19566> |
| Issue | #19564 | Support project-specific aspire doctor checks | open | johanndev | <https://github.com/microsoft/aspire/issues/19564> |
| Issue | #19499 | [VS Code] Expose Aspire project creation workflows from the Aspire pane | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19499> |
| Issue | #19544 | STOP bugging me to enable hot-reload | open | burtonrodman | <https://github.com/microsoft/aspire/issues/19544> |
| Issue | #19561 | [VS Code] Complete setup and project creation workflows | open | adamint | <https://github.com/microsoft/aspire/issues/19561> |
| Issue | #19562 | [VS Code] Complete AppHost run and resource debugging workflows | open | adamint | <https://github.com/microsoft/aspire/issues/19562> |
| Issue | #19560 | Token audiences acquired lazily during deployment fail with short-lived federated credentials | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19560> |
| Issue | #19546 | Upgrading from 13.2.4 to 13.5 yields dashboard warning about LocalBrowserStorage | open | oising | <https://github.com/microsoft/aspire/issues/19546> |
| Issue | #19542 | [CI Failure] Flaky: AddPythonAppTests.PythonResourceSupportsWithReference fails to create Python virtual environment on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19542> |
| Issue | #19515 | [CI Failure] Flaky: DashboardClientTests.SubscribeResources_ReplicaStartedAtChanged_EmitsParentChange sees duplicate resource change events | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19515> |
| Issue | #19540 | E2E tests: AspireRunReadyTimeout is applied to dotnet run sites where ASPIRE_CLI_START_TIMEOUT is never set, inverting its documented relationship | open | tufantunc | <https://github.com/microsoft/aspire/issues/19540> |
| Issue | #19537 | [CLI] [Regression] `aspire update` succeeds silently but leaves CPM projects broken with NU1109 package downgrade on `aspire run` | open | indcoder | <https://github.com/microsoft/aspire/issues/19537> |
| Issue | #19535 | Run mode: Azure PostgreSQL Entra auth is unusable under an app-only credential (CI service principal) | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19535> |
| Issue | #19511 | [VS Code] Open CLI diagnostic logs automatically after command failures | open | adamint | <https://github.com/microsoft/aspire/issues/19511> |
| Issue | #19530 | [CI Failure] Templates-BuildAndRunStarterTemplateBuiltInTest 'Build and archive test project' step fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19530> |
| Issue | #19529 | [CI Failure] Flaky: DashboardClientTests.SubscribeResources_ReplicaStateOwnedPropertyMetadataChanged_EmitsParentChange fails with Assert.True() Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19529> |
| Issue | #19502 | aspire start crashes TypeScript AppHosts on macOS after DCP fork-process launch | closed | adamint | <https://github.com/microsoft/aspire/issues/19502> |
| Issue | #19526 | [CI Failure] Flaky: DashboardClientTests.SubscribeResources_NonProjectedReplicaUpdate_EmitsReplicaOnly fails with replica naming/ordering race condition | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19526> |
| Issue | #19522 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19522> |
| Issue | #19503 | CLI 13.4.6 fails TypeScript code generation with SDK 13.5 due to frozen TypeSystem contract | closed | adamint | <https://github.com/microsoft/aspire/issues/19503> |
| Issue | #19517 | [CI Failure] Flaky: AppHostSdkTargetsTests full-framework MSBuild test times out locating MSBuild via vswhere.exe | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19517> |
| Issue | #19500 | Configuration using TOML | closed | brunoborges | <https://github.com/microsoft/aspire/issues/19500> |
| Issue | #19504 | [VS Code] Make Aspire errors specific and actionable | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19504> |
| Issue | #19485 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19485> |
| Issue | #19476 | [CI Failure] VS Code extension E2E jobs cancelled after exceeding max execution time during 'Install E2E recorder' step | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19476> |
| Issue | #19491 | [CI] Internal pipeline 1602 cannot expand after Publish-Build-Assets variable group removal | closed | adamint | <https://github.com/microsoft/aspire/issues/19491> |
| Issue | #19450 | [CI Failure] VS Code extension E2E test (Linux, zero-to-running) exceeds max job execution time (1h15m) and is cancelled | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19450> |
| Issue | #19493 | JsonPatch.Net licence upgrade requires Aspire users to purchase a commercial maitnenance agreement. | open | afscrome | <https://github.com/microsoft/aspire/issues/19493> |
| Issue | #19475 | Daily VS Code extension installs bypass signature verification | open | adamint | <https://github.com/microsoft/aspire/issues/19475> |
| Issue | #19495 | addDevTunnel polyglot binding missing region option (Node.js app host) | open | cpizzato | <https://github.com/microsoft/aspire/issues/19495> |
| Issue | #19492 | Provisioning: no supported way to bind a ParameterResource to a non-string bicep parameter (int/bool) | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19492> |
| Issue | #19487 | Add run-mode deployment E2E coverage for role assignments under a service principal credential | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19487> |
| Issue | #19480 | [CI Failure] GitHub codeload.github.com rate limiting (429) when downloading actions/download-artifact action archive | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19480> |
| Issue | #19457 | [CI Failure] Flaky: VS Code extension E2E (Linux, java-apphost) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19457> |
| Issue | #19460 | [VS Code] Expose editor-owned Aspire state and UI handoffs to agents | open | adamint | <https://github.com/microsoft/aspire/issues/19460> |
| Issue | #19472 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19472> |
| Issue | #19471 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19471> |
| Issue | #19470 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19470> |
| Issue | #19468 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19468> |
| Issue | #19467 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19467> |
| Issue | #19464 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19464> |
| Issue | #19463 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19463> |
| Issue | #19435 | "Unable to launch browser" | closed | burtonrodman | <https://github.com/microsoft/aspire/issues/19435> |
| Issue | #19453 | [CI Failure] Flaky: VS Code extension E2E (Linux, settings-files) shard fails, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19453> |
| Issue | #19459 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19459> |
| Issue | #19458 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19458> |
| Issue | #19456 | [CI Failure] Flaky: TestingFactoryTests.HttpClientGetTest times out intermittently | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19456> |
| Issue | #19454 | [automated] Fix main CI failures being filed as PR infrastructure issues | open | radical | <https://github.com/microsoft/aspire/issues/19454> |
| Issue | #19452 | [CI Failure] Polyglot SDK Validation: Java SDK Validation job fails building validation image with exit code 1, unrelated to PR changes; job logs unavailable for detailed diagnosis | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19452> |
| Issue | #19449 | [CI Failure] Flaky: DownloadNativeArchivesTests.FailsWhenOneArtifactDownloadFails_ButReportsAllResults fails with 'Address already in use' port conflict | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19449> |
| Issue | #19444 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19444> |
| Issue | #19442 | [CI Failure] Flaky: ContainerTunnelTests.ProxylessEndpointWorksWithContainerTunnel times out with socket cancellation | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19442> |
| Issue | #19441 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19441> |
| Issue | #19437 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19437> |
| Issue | #19433 | source.dot.net "Web Access" broken links to Aspire on GitHub | open | KalleOlaviNiemitalo | <https://github.com/microsoft/aspire/issues/19433> |
| Issue | #19428 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19428> |
| Issue | #19015 | [main] Auto Completion on Structured Logs filter | closed | afscrome | <https://github.com/microsoft/aspire/issues/19015> |
| Issue | #15482 | Support launch profile in Aspire run command | closed | chuanboz | <https://github.com/microsoft/aspire/issues/15482> |
| Issue | #19283 | [AspireE2E][VSCode][UX] New Project collects project name before destination directory, leading to folder name collisions | closed | joniel-bolocon | <https://github.com/microsoft/aspire/issues/19283> |
| Issue | #17845 | Show install-suggestion notification when a language debug extension is missing | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/17845> |
| Issue | #19149 | [automated] [Main CI Failure] AzureBicepResourceScopeTests did not compile after scope factory merges | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19149> |
| Issue | #19143 | [CI Failure] Flaky: JsonRpcAuthenticationTests.FailedAuthentication_ClosesConnection_AndPreventsFurtherCalls times out connecting to test RPC server on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19143> |
| Issue | #15579 | VS Code shouldn't show code lens on commented out resources | closed | afscrome | <https://github.com/microsoft/aspire/issues/15579> |
| Issue | #19171 | CI failing on `release/13.5` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19171> |
| Issue | #15575 | VS Code Extension + `DistributedApplicationTestingBuilder` | closed | afscrome | <https://github.com/microsoft/aspire/issues/15575> |
| Issue | #19407 | [VS Code] Surface deploy, publish, and pipeline actions in the Aspire pane | closed | adamint | <https://github.com/microsoft/aspire/issues/19407> |
| Issue | #14516 | Aspire 13.1.1 not detected | closed | sdudnic-ingerop | <https://github.com/microsoft/aspire/issues/14516> |
| Issue | #12737 | Extension debugging not working Ubuntu/Linux daily builds | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/12737> |
| Issue | #19342 | [VS Code] Persist the correct AppHost selection in multi-root workspaces | closed | burtonrodman | <https://github.com/microsoft/aspire/issues/19342> |
| Issue | #19280 | VS Code Aspire debug adapter should prompt to select an AppHost when multiple are discovered | closed | adamint | <https://github.com/microsoft/aspire/issues/19280> |
| Issue | #18285 | Bot / automation PR shepherd — daily triage of Dependabot / maestro / winget / homebrew PRs | closed | radical | <https://github.com/microsoft/aspire/issues/18285> |
| Issue | #18761 | The issue "CLI: Add --no-color option[...]" should not have been closed ? | closed | ilan-schemoul | <https://github.com/microsoft/aspire/issues/18761> |
| Issue | #14061 | Urls for endpoints on other resources render inconsistently | closed | afscrome | <https://github.com/microsoft/aspire/issues/14061> |
| Issue | #10650 | [AspireE2E] After using WithReplicas(2), when restarting a resource in the dashboard, the status of another resource changes to waiting, and starting it again does not make it run. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/10650> |
| Issue | #17617 | [13.4] Aspire CLI Can't discriminate between app hosts if running concurrent `DistributedApplicationTestingBuilder` in same test project | closed | afscrome | <https://github.com/microsoft/aspire/issues/17617> |
| Issue | #16267 | Retry cleanup after updating CLI | closed | afscrome | <https://github.com/microsoft/aspire/issues/16267> |
| Issue | #13761 | `AuxiliaryBackchannelService` concurrency error with parallel tests | closed | afscrome | <https://github.com/microsoft/aspire/issues/13761> |
| Issue | #13438 | `aspire new --version 9.5.2` does not work | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/13438> |
| Issue | #16754 | Validate `aspire update` for C# AppHosts by performing restore | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/16754> |
| Issue | #19138 | Harden Azure Functions VS Code launch lifecycle and E2E coverage | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19138> |
| Issue | #19151 | VS Code extension E2E azure-functions shard times out waiting for e2e-functions | closed | adamint | <https://github.com/microsoft/aspire/issues/19151> |
| Issue | #13933 | Tests with DistributedApplicationTestingBuilder fail in CI/CD due to principalType: 'User' | closed | mip1983 | <https://github.com/microsoft/aspire/issues/13933> |
| Issue | #12934 | Add healthcheck to CosmosDB integration | closed | Meir017 | <https://github.com/microsoft/aspire/issues/12934> |
| Issue | #19083 | Scheduled workflow failing: Update Aspire Skills Bundle | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19083> |
| Issue | #19025 | Invalidate cached Aspire skills bundles when archive content changes | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19025> |
| Issue | #19357 | Make AppHost start and stop operations worktree-aware | closed | adamint | <https://github.com/microsoft/aspire/issues/19357> |
| Issue | #19387 | VS Code extension ignores launch.json debugger configuration for apphost (13.4.6) | closed | aDisplayName | <https://github.com/microsoft/aspire/issues/19387> |
| Issue | #19408 | [VS Code] Add debugger support for Java resources | closed | adamint | <https://github.com/microsoft/aspire/issues/19408> |
| Issue | #19023 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19023> |
| Issue | #17993 | Add Java hosting integration | closed | marshalhayes | <https://github.com/microsoft/aspire/issues/17993> |
| Issue | #19339 | Version check and `aspire add` fail when NuGet credential-provider output pollutes `dotnet package search --format json` stdout (JsonReaderException) | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19339> |
| Issue | #18993 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18993> |
| Issue | #19389 | Azure SQL: api-roles-* deployment script fails with MissingMethodException (SqlServer PS 22.3.0 on Az PS 14.0) | closed | sfmskywalker | <https://github.com/microsoft/aspire/issues/19389> |
| Issue | #19423 | TypeScript aspire add omits prerelease-only integrations from stable-shaped staging builds | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19423> |
