# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-08 01:26:03 〜 2026-06-08 23:35:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 23 |
| クローズ Issue          | 35 |
| 主要コントリビューター  | JamesNK, Copilot, sliekens |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18003](https://github.com/microsoft/aspire/issues/18003) — Source Breaking Change - `networkID` --> `networkId` （Issue / open / afscrome）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ 破壊的変更** [#17924](https://github.com/microsoft/aspire/pull/17924) — Add proxyless endpoint port allocator （PR / open / danegsta）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **非推奨/廃止** [#18022](https://github.com/microsoft/aspire/pull/18022) — Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation （PR / merged / sliekens）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 4 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18022](https://github.com/microsoft/aspire/pull/18022) — Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation

- 作者: sliekens / 状態: MERGED
- ラベル: —
- 変更行数: +5 / -3
- マージ日時 (UTC): `2026-06-08 21:06:27`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/appmodel.md` | 5 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `72f9f54` Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#17997](https://github.com/microsoft/aspire/pull/17997) — Quarantine PersistentContainersPreserveDataAcrossAppHostRuns test

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -0
- マージ日時 (UTC): `2026-06-08 07:53:01`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.EndToEnd.Tests/PersistentContainerEndToEndTests.cs` | 2 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `c837677` Quarantine PersistentContainersPreserveDataAcrossAppHostRuns test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#17970](https://github.com/microsoft/aspire/pull/17970) — Disable markdown option when JSON or XML is detected in TextVisualizerDialog

- 作者: Copilot / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +9 / -4
- マージ日時 (UTC): `2026-06-08 09:47:07`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Dialogs/TextVisualizerDialog.razor.cs` | 6 | 1 |
| `tests/Aspire.Dashboard.Components.Tests/Controls/TextVisualizerDialogTests.cs` | 3 | 3 |

</details>

<details><summary>コミット (3 件)</summary>

- `436f74a` Disable markdown option when JSON or XML is detected in TextVisualize…
- `c2d86b3` Refactor: only enable markdown when no structured format is detected
- `08cb563` Add comment explaining why markdown is enabled for unknown content

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#17828](https://github.com/microsoft/aspire/pull/17828) — Refactor IdentityChannelReader to Try pattern and log CLI channel at startup

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +112 / -83
- マージ日時 (UTC): `2026-06-08 09:39:24`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Acquisition/IdentityChannelReader.cs` | 41 | 32 |
| `src/Aspire.Cli/Acquisition/InstallationDiscovery.cs` | 8 | 10 |
| `src/Aspire.Cli/Program.cs` | 18 | 4 |
| `src/Aspire.Cli/Utils/EnvironmentChecker/AspireVersionCheck.cs` | 7 | 9 |
| `tests/Aspire.Cli.Tests/Acquisition/IdentityChannelReaderTests.cs` | 14 | 12 |
| `tests/Aspire.Cli.Tests/CliBootstrapTests.cs` | 5 | 3 |
| `tests/Aspire.Cli.Tests/Commands/DoctorCommandTests.cs` | 1 | 1 |
| `tests/Aspire.Cli.Tests/Telemetry/TelemetryConfigurationTests.cs` | 3 | 1 |
| `tests/Aspire.Cli.Tests/TestServices/FakeIdentityChannelReader.cs` | 15 | 11 |

</details>

<details><summary>コミット (1 件)</summary>

- `06b5595` Refactor IdentityChannelReader to Try pattern and log CLI channel at …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18029 | [main] Update dependencies from microsoft/dcp | open | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18029> |
| PR | #18026 | Update PackageValidationBaselineVersion to 13.4.3 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18026> |
| PR | #18025 | add `WithModule` extension methods to `IResourceBuilder<RedisResource>` | open | aradalvand | <https://github.com/microsoft/aspire/pull/18025> |
| PR | #18024 | Fix addParameter error classification for invalid option combo | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18024> |
| PR | #18016 | Add JavaScript workspace (monorepo) support | open | vsantele | <https://github.com/microsoft/aspire/pull/18016> |
| PR | #18011 | Refactor health check to resolve URI directly from an endpoint rather… | open | afscrome | <https://github.com/microsoft/aspire/pull/18011> |
| PR | #18009 | Collect AI agent skill-usage telemetry (CLI command + agent init hooks) | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18009> |
| PR | #17974 | Allow either required npm publish owner | closed | adamint | <https://github.com/microsoft/aspire/pull/17974> |
| PR | #17642 | Fix guest AppHost Ctrl+C shutdown | closed | danegsta | <https://github.com/microsoft/aspire/pull/17642> |
| PR | #16655 | Use staging feed for dotnet tool smoke tests | closed | radical | <https://github.com/microsoft/aspire/pull/16655> |
| Issue | #18027 | E2E Deployment Test Failure: Aspire.Deployment.EndToEnd.Tests.AcaStarterDeploymentTests.DeployStarterTemplateToAzureContainerApps | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18027> |
| Issue | #18028 | E2E Deployment Test Failure: Aspire.Deployment.EndToEnd.Tests.FrontDoorDeploymentTests.DeployReactTemplateWithFrontDoor | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18028> |
| Issue | #18021 | VS Code Extension shouldn't kill a debug session if broken on a Breakpoint for over 2 minutes | open | afscrome | <https://github.com/microsoft/aspire/issues/18021> |
| Issue | #18020 | RID - use https://github.com/dotnet/aspire/blob/main/src/Aspire.AppHost.Sdk/Aspire.RuntimeIdentifier.Tool/Program.cs to see which RID to map to! | open | radical | <https://github.com/microsoft/aspire/issues/18020> |
| Issue | #18019 | aspire ps cannot discover AppHosts started outside a Windows sandbox because backchannel discovery is tied to UserProfile | open | PatrickMatthiesen | <https://github.com/microsoft/aspire/issues/18019> |
| Issue | #18018 | Update extension publishing to use secure publish as microsoft | open | adamint | <https://github.com/microsoft/aspire/issues/18018> |
| Issue | #18017 | aspire deploy/publish fail in Aspire terminal | open | adamint | <https://github.com/microsoft/aspire/issues/18017> |
| Issue | #18015 | Support private container registry for all pulled images | open | TylerReid | <https://github.com/microsoft/aspire/issues/18015> |
| Issue | #18014 | Some Parameters are not read from Aspire Host User Secrets | open | januszj | <https://github.com/microsoft/aspire/issues/18014> |
| Issue | #18013 | Improve the @microsoft/aspire-cli npm README | open | IEvangelist | <https://github.com/microsoft/aspire/issues/18013> |
| Issue | #18012 | pnpm-workspace allowBuilds reset on aspire run | open | maxime-louellette | <https://github.com/microsoft/aspire/issues/18012> |
| Issue | #18010 | Weird alignment if `--apphost` argument is longer than console width | open | afscrome | <https://github.com/microsoft/aspire/issues/18010> |
| Issue | #18008 | Collect AI agent skill-usage telemetry for Aspire skills and MCP tools | open | IEvangelist | <https://github.com/microsoft/aspire/issues/18008> |
| Issue | #18007 | Using AddBlazorWasmApp in AppHost results in 404 despite correct path | open | MdeBruin93 | <https://github.com/microsoft/aspire/issues/18007> |
| Issue | #18006 | Add C# / `DistributedApplicationTestingBuilder` API to access telemetry data | open | afscrome | <https://github.com/microsoft/aspire/issues/18006> |
| Issue | #18005 | `DistributedApplicationTestingBuilder` should disable interaction service by deault | open | afscrome | <https://github.com/microsoft/aspire/issues/18005> |
| Issue | #18004 | Add `Wait` method to `IContainerRuntime` | open | afscrome | <https://github.com/microsoft/aspire/issues/18004> |
| Issue | #18003 | Source Breaking Change - `networkID` --> `networkId` | open | afscrome | <https://github.com/microsoft/aspire/issues/18003> |
| Issue | #18002 | TypeScript addParameter fails with secret and publishValueAsDefault | open | davidfowl | <https://github.com/microsoft/aspire/issues/18002> |
| Issue | #18001 | Serilog.Sinks.File 7.0.0 can trigger FileNotFoundException for Serilog.Sinks.PeriodicBatching with Serilog.Settings.Configuration auto-discovery | closed | gimmickj | <https://github.com/microsoft/aspire/issues/18001> |
| Issue | #18000 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18000> |
| Issue | #17999 | [Failing test]: Aspire.Qdrant.Client.Tests.ConformanceTests.HealthCheckReportsExpectedStatus\(key: null\) | open | davidfowl | <https://github.com/microsoft/aspire/issues/17999> |
| Issue | #17998 | [Deployment E2E] Nightly test failure - 2026-06-08 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17998> |
| Issue | #17909 | Winget based install self-extracts to the wrong directory | closed | radical | <https://github.com/microsoft/aspire/issues/17909> |
| Issue | #17593 | [AspireE2E] When using azd to publish an Aspire empty project that has added some code and packages, an error occurred: empty dotnet configuration output. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/17593> |
| Issue | #16974 | Quarantine RustPolyglotTests: needs bake time after migration from continue-on-error workflow job | closed | radical | <https://github.com/microsoft/aspire/issues/16974> |
| Issue | #16813 | [Acquisition PR 1] Channel binding (assembly metadata + readers + writers + reseed) | closed | radical | <https://github.com/microsoft/aspire/issues/16813> |
| Issue | #16765 | [Acquisition PR 3 ★] CLI bug fix + BundleService generalization | closed | radical | <https://github.com/microsoft/aspire/issues/16765> |
| Issue | #16764 | [Acquisition PR 2] Route primitives (build-side + IInstallPathResolver) | closed | radical | <https://github.com/microsoft/aspire/issues/16764> |
| Issue | #16544 | Consider signing Aspire CLI once before archive and dotnet-tool packing | closed | radical | <https://github.com/microsoft/aspire/issues/16544> |
| Issue | #16058 | /create-issue: support multiple test names and fix underscore escaping in issue titles | closed | radical | <https://github.com/microsoft/aspire/issues/16058> |
| Issue | #15889 | /create-issue: Add dedup check to prevent duplicate issue creation on concurrent runs | closed | radical | <https://github.com/microsoft/aspire/issues/15889> |
| Issue | #15830 | [tests] `CLI Starter Validation` test getting terminated after 20mins | closed | radical | <https://github.com/microsoft/aspire/issues/15830> |
| Issue | #15817 | [CI] Add a new dedicated pipeline for publishing the install scripts | closed | radical | <https://github.com/microsoft/aspire/issues/15817> |
| Issue | #15816 | Dogfood installation from PRs should be self-contained | closed | radical | <https://github.com/microsoft/aspire/issues/15816> |
| Issue | #15797 | Make the Aspire CLI dotnet tool package use the NativeAOT binary | closed | radical | <https://github.com/microsoft/aspire/issues/15797> |
| Issue | #15615 | [CI] macOS runner scarcity is delaying rolling builds for hours and leading to cancellations | closed | radical | <https://github.com/microsoft/aspire/issues/15615> |
| Issue | #15604 | `aspire update` says 'up to date' when `dev` CLI checks `stable` project — potentially confusing UX | closed | radical | <https://github.com/microsoft/aspire/issues/15604> |
| Issue | #15538 | [CI] Add validation of bundles generated for the various OS/arch combinations | closed | radical | <https://github.com/microsoft/aspire/issues/15538> |
| Issue | #15079 | Track non-image Azure DevOps failures from build 1325767 | closed | radical | <https://github.com/microsoft/aspire/issues/15079> |
| Issue | #13975 | Missing docker `buildx` throws an unclear `Container runtime Docker is not running or is unhealthy` message | closed | radical | <https://github.com/microsoft/aspire/issues/13975> |
| Issue | #13942 | CI Improvements | closed | radical | <https://github.com/microsoft/aspire/issues/13942> |
| Issue | #13854 | Failing test: Aspire.Cli.Tests.Commands.ExecCommandTests.ExecCommand_WhenProjectFileDoesNotExist_ReturnsFailedToFindProject | closed | radical | <https://github.com/microsoft/aspire/issues/13854> |
| Issue | #13494 | "launchBrowser": true not working (dashboard does not launch) | closed | nogginbox | <https://github.com/microsoft/aspire/issues/13494> |
| Issue | #12386 | Failing test: Aspire.Hosting.Azure.Tests.AzureDeployerTests.DeployAsync_ShowsEndpointOnlyForExternalEndpoints | closed | radical | <https://github.com/microsoft/aspire/issues/12386> |
| Issue | #12322 | [tests] Follow up tasks for templates for .NET 10 | closed | radical | <https://github.com/microsoft/aspire/issues/12322> |
| Issue | #12207 | Failing test: Aspire.Hosting.Tests.Pipelines.DistributedApplicationPipelineTests.ExecuteAsync_WithMixOfSuccessfulAndFailingStepsAtSameLevel_ThrowsAggregateException | closed | radical | <https://github.com/microsoft/aspire/issues/12207> |
| Issue | #12203 | Failing test: Aspire.Hosting.Azure.Tests.AzureDeployerTests.DeployAsync_ShowsEndpointOnlyForExternalEndpoints | closed | radical | <https://github.com/microsoft/aspire/issues/12203> |
| Issue | #12154 | Failing test: Aspire.Hosting.Tests.Pipelines.DistributedApplicationPipelineTests.ExecuteAsync_WithLongAndShortBranches_DoesNotBlockShortBranch | closed | radical | <https://github.com/microsoft/aspire/issues/12154> |
| Issue | #11815 | Tracking issue for test failures on AzDO pipeline | closed | radical | <https://github.com/microsoft/aspire/issues/11815> |
| Issue | #11143 | Failing test: Aspire.Hosting.Tests.Backchannel.Exec.ProjectResourceExecTests.Exec_DotnetInfo_ProducesLogs_Success | closed | radical | <https://github.com/microsoft/aspire/issues/11143> |
| Issue | #10288 | CLI Bundling follow up tasks | closed | radical | <https://github.com/microsoft/aspire/issues/10288> |
| Issue | #10099 | Failing test: Microsoft.Extensions.ServiceDiscovery.Dns.Resolver.Tests.TcpFailoverTests.TcpFailover_ServerClosesWithoutData_EmptyResult | closed | radical | <https://github.com/microsoft/aspire/issues/10099> |
| Issue | #10098 | Failing test: Microsoft.Extensions.ServiceDiscovery.Dns.Resolver.Tests.TcpFailoverTests.TcpFailover_Simple_Success | closed | radical | <https://github.com/microsoft/aspire/issues/10098> |
| Issue | #9641 | Figure out where do we need to distribute the Aspire CLI bundle | closed | joperezr | <https://github.com/microsoft/aspire/issues/9641> |
| Issue | #9595 | [CI] CLI tool bundling tasks | closed | radical | <https://github.com/microsoft/aspire/issues/9595> |
| Issue | #9594 | [CI] Consider adding a Github App to enable a bot for build/test analysis | closed | radical | <https://github.com/microsoft/aspire/issues/9594> |
