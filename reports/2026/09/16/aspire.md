# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-15 00:08:57 〜 2026-09-16 01:35:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 12 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | eerhardt, JamesNK, dotnet-maestro[bot], sebastienros, maddymontaquila, karolz-ms |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20152](https://github.com/microsoft/aspire/pull/20152) — Prevent Edge compatibility relaunch from breaking browser debugging （PR / open / Copilot）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#20135](https://github.com/microsoft/aspire/pull/20135) — Support environment-specific Aspire secrets for deployment （PR / open / davidfowl）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration （PR / merged / eerhardt）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / merged / nellshamrell）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#11760](https://github.com/microsoft/aspire/issues/11760) — ResourceUrlAnnotation.DisplayOrder is a field, not a property （Issue / open / JamesNK）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ セキュリティ** [#20052](https://github.com/microsoft/aspire/pull/20052) — Configure NuGet audit sources and non-fatal vulnerability warnings （PR / merged / joperezr）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。

## このリポジトリの要点
対象期間は機能改善、セキュリティ強化、互換性確認に関する変更が中心でした。重要変更は各 PR の詳細と既存利用者への影響を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-app-model` `breaking-change`
- 変更行数: +4 / -3847
- マージ日時 (UTC): `2026-09-15 23:57:19`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (59 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 0 | 6 |
| `docs/specs/connection-properties.md` | 2 | 2 |
| `eng/github-ci/test-trigger-map.yml` | 0 | 1 |
| `playground/AspireWithMaui/AspireWithMaui.slnx` | 0 | 6 |
| `playground/GitHubModelsEndToEnd/.vscode/launch.json` | 0 | 11 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/AppHost.cs` | 0 | 25 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/GitHubModelsEndToEnd.AppHost.csproj` | 0 | 25 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/Properties/launchSettings.json` | 0 | 36 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/aspire-manifest.json` | 0 | 70 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/env-acr.module.bicep` | 0 | 17 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/env.module.bicep` | 0 | 84 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/webstory-containerapp.module.bicep` | 0 | 101 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/webstory.module.bicep` | 0 | 101 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.WebStory/Components/App.razor` | 0 | 22 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.WebStory/Components/Layout/MainLayout.razor` | 0 | 9 |
| _... 他 44 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `78f0842` Remove retired GitHub Models integration
- `8a1c898` Remove active GitHub Models component guidance
- `e20a05a` Remove stale GitHub Models test mapping

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#20052](https://github.com/microsoft/aspire/pull/20052) — Configure NuGet audit sources and non-fatal vulnerability warnings

- 作者: joperezr / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +593 / -31
- マージ日時 (UTC): `2026-09-15 21:07:41`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Build.props` | 3 | 0 |
| `NuGet.config` | 4 | 0 |
| `build.sh` | 1 | 1 |
| `docs/contributing.md` | 4 | 0 |
| `eng/WarningPolicy.proj` | 4 | 0 |
| `eng/build.ps1` | 92 | 17 |
| `eng/build.sh` | 95 | 12 |
| `eng/github-ci/test-trigger-map.yml` | 5 | 0 |
| `restore.sh` | 1 | 1 |
| `tests/Infrastructure.Tests/BuildWarningPolicyTests.cs` | 338 | 0 |
| `tests/Infrastructure.Tests/NuGetConfigTests.cs` | 29 | 0 |
| `tests/Infrastructure.Tests/TestTriggerMap/TestTriggerMapTests.cs` | 17 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `e107fb5` Configure NuGet audit sources and non-fatal vulnerability warnings
- `beed1f5` Forward evaluated warning exemptions to Arcade builds
- `80aaa7e` Preserve SDK-free clean and public Bash argument forwarding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#20140](https://github.com/microsoft/aspire/pull/20140) — Clean up stale dashboard run locks

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +74 / -2
- マージ日時 (UTC): `2026-09-16 01:15:29`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/ServiceClient/DashboardRunStore.cs` | 23 | 2 |
| `tests/Aspire.Dashboard.Tests/Model/DashboardDataSourceTests.cs` | 51 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `3e96f41` Clean up stale dashboard run locks
- `723a197` Skip current run lock during cleanup
- `6e1fede` Clean up stale temporary dashboard locks
- `0f387eb` Test temporary lock name filtering

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#20139](https://github.com/microsoft/aspire/pull/20139) — Improve dashboard scroll-to-bottom behavior and lifecycle

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +761 / -288
- マージ日時 (UTC): `2026-09-16 01:09:20`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/App.razor` | 3 | 3 |
| `src/Aspire.Dashboard/Components/Controls/LogViewer.razor` | 1 | 0 |
| `src/Aspire.Dashboard/Components/Controls/LogViewer.razor.cs` | 5 | 0 |
| `src/Aspire.Dashboard/Components/Pages/StructuredLogs.razor` | 1 | 0 |
| `src/Aspire.Dashboard/Components/Pages/Traces.razor` | 1 | 0 |
| `src/Aspire.Dashboard/wwwroot/css/layout.css` | 3 | 2 |
| `src/Aspire.Dashboard/wwwroot/js/app-scroll.js` | 352 | 0 |
| `src/Aspire.Dashboard/wwwroot/js/app.js` | 0 | 221 |
| `tests/Aspire.Dashboard.Components.Tests/Controls/LogViewerTests.cs` | 4 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/StructuredLogsTests.cs` | 4 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/TracesTests.cs` | 4 | 0 |
| `tests/Aspire.Dashboard.Tests/Integration/Playwright/DashboardInteractionsTests.cs` | 382 | 62 |
| `tests/Aspire.Dashboard.Tests/Integration/ResponseCompressionTests.cs` | 1 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `dc41d62` Improve dashboard scroll-to-bottom behavior and performance
- `d14cde5` Use web component lifecycle for dashboard scroll button
- `2231512` Localize scroll button labels on the web component
- `e59a90f` Add final newline to dashboard scroll module
- `9b7fb63` Test scroll button positioning during ancestor scrolling
- `0af0582` Constrain dashboard scroll button to clipping ancestors
- `bd9aa16` Defer dashboard scroll button layout until reveal
- `6f1038b` Observe dashboard scroll content resizing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#19675](https://github.com/microsoft/aspire/pull/19675) — Add polyglot Azure provisioning proxy SDKs

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +9385 / -245
- マージ日時 (UTC): `2026-09-15 23:36:21`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 15 | 0 |
| `docs/ci/test-trigger-map.md` | 5 | 0 |
| `docs/list-of-diagnostics.md` | 12 | 0 |
| `docs/specs/cli-output-formats.md` | 2 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 3 | 0 |
| `src/Aspire.Cli/Commands/Sdk/SdkDumpCommand.cs` | 1 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.ApplicationInsights/Aspire.Hosting.Azure.Provisioning.ApplicationInsights.csproj` | 25 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.ApplicationInsights/AtsTypeMappings.cs` | 7 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.ApplicationInsights/README.md` | 49 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.CognitiveServices/Aspire.Hosting.Azure.Provisioning.CognitiveServices.csproj` | 25 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.CognitiveServices/AtsTypeMappings.cs` | 15 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.CognitiveServices/README.md` | 49 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.ContainerRegistry/Aspire.Hosting.Azure.Provisioning.ContainerRegistry.csproj` | 25 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.ContainerRegistry/AtsTypeMappings.cs` | 10 | 0 |
| `src/Aspire.Hosting.Azure.Provisioning.ContainerRegistry/README.md` | 49 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (25 件)</summary>

- `f7c239e` Add polyglot Azure provisioning proxies
- `42fb523` Fix provisioning proxy boundaries
- `1389231` Harden provisioning proxy generation
- `e342bf6` Generate shared Azure provisioning proxies
- `37811c9` Exclude provisioning metadata members natively
- `e8f780e` Document provisioning proxy exclusions
- `aedb64d` Generate Azure resource identifier proxies
- `d3374dc` Address provisioning proxy review feedback
- _... 他 17 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#20012](https://github.com/microsoft/aspire/pull/20012) — Pass execution context to Bicep parameter value providers

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +94 / -94
- マージ日時 (UTC): `2026-09-15 22:24:26`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure/Provisioning/BicepUtilities.cs` | 6 | 50 |
| `src/Aspire.Hosting.Azure/Provisioning/Provisioners/BicepProvisioner.cs` | 2 | 2 |
| `tests/Aspire.Hosting.Azure.Tests/AzureBicepProvisionerTests.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Azure.Tests/BicepUtilitiesTests.cs` | 68 | 41 |
| `tests/Aspire.Hosting.Azure.Tests/TestContextValueProvider.cs` | 17 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `e0ef699` Pass execution context to Bicep parameter value providers

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20150 | Align telemetry CI detection with dotnet CLI | DamianEdwards | <https://github.com/microsoft/aspire/pull/20150> |
| #20146 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/20146> |
| #20133 | Preserve explicit Kestrel certificate configuration | karolz-ms | <https://github.com/microsoft/aspire/pull/20133> |
| #20143 | Remove InternalsVisibleTo from Aspire.Hosting to Aspire.Hosting.Radius | eerhardt | <https://github.com/microsoft/aspire/pull/20143> |
| #20120 | Add missing hosting project READMEs | eerhardt | <https://github.com/microsoft/aspire/pull/20120> |
| #20007 | Handle SQLite errors during dashboard read cancellation | JamesNK | <https://github.com/microsoft/aspire/pull/20007> |
| #20011 | Use cloud icon for Azure environment | maddymontaquila | <https://github.com/microsoft/aspire/pull/20011> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20158 | Prepare Project v2 migration skill bundle integration | open | karolz-ms | <https://github.com/microsoft/aspire/pull/20158> |
| PR | #20161 | Fix Foundry deployment tests | open | karolz-ms | <https://github.com/microsoft/aspire/pull/20161> |
| PR | #20131 | Complete Azure provisioning SDK integration coverage | open | sebastienros | <https://github.com/microsoft/aspire/pull/20131> |
| PR | #20156 | Update PackageValidationBaselineVersion to 13.5.4 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20156> |
| PR | #20157 | Make Project v2 options polyglot-friendly | open | karolz-ms | <https://github.com/microsoft/aspire/pull/20157> |
| PR | #20148 | Bump Radius installation pins to v0.60.2 | open | nellshamrell | <https://github.com/microsoft/aspire/pull/20148> |
| PR | #20155 | Visually distinguish hidden resources in the dashboard grid | open | afscrome | <https://github.com/microsoft/aspire/pull/20155> |
| PR | #20152 | Prevent Edge compatibility relaunch from breaking browser debugging | open | Copilot | <https://github.com/microsoft/aspire/pull/20152> |
| PR | #20154 | Merge release/13.5 to main after v13.5.4 release | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20154> |
| PR | #20153 | Wait for tunnel health before asserting in ContainerTunnelTests | open | afscrome | <https://github.com/microsoft/aspire/pull/20153> |
| PR | #20149 | [WIP] Extend the Aspire Dashboard to reflect AppHost topology and publish an Azure Monitor Health Model | open | james-gould | <https://github.com/microsoft/aspire/pull/20149> |
| PR | #20141 | Fix dashboard selection indicators | open | JamesNK | <https://github.com/microsoft/aspire/pull/20141> |
| PR | #20138 | [Automated] Sync main to release/14.0 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20138> |
| PR | #20134 | Add deployment pipeline input arguments and discovery | open | davidfowl | <https://github.com/microsoft/aspire/pull/20134> |
| PR | #20135 | Support environment-specific Aspire secrets for deployment | open | davidfowl | <https://github.com/microsoft/aspire/pull/20135> |
| PR | #20126 | Fix CI analysis misclassifying setup failures | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/20126> |
| Issue | #20165 | [CI Failure] Windows Package tests job fails: hosted runner lost communication with the server | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20165> |
| Issue | #20164 | Error when running dotnet test: The JSON-RPC connection with the remote party was lost before the request could complete. | open | duckblaster | <https://github.com/microsoft/aspire/issues/20164> |
| Issue | #20163 | Improve CLI telemetry durability and shutdown policies using Azure Monitor exporter 1.9.0 | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/20163> |
| Issue | #20162 | Support custom MSBuild settings in Aspire EF Core migration operations | open | karolz-ms | <https://github.com/microsoft/aspire/issues/20162> |
| Issue | #20160 | CLI: Browser debug start/stop logs critical connection-reset errors | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20160> |
| Issue | #20151 | VS Code: Blazor "Debug in Browser" fails when Edge relaunches under Windows compatibility settings | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20151> |
| Issue | #20147 | [CI Failure] Flaky: PeerInstallProbeTests fallback-to-version test fails on Windows with generated batch script | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20147> |
| Issue | #20142 | Investigate making visually confusable Unicode distinguishable in the dashboard | open | JamesNK | <https://github.com/microsoft/aspire/issues/20142> |
| Issue | #20145 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20145> |
| Issue | #20144 | [aw] Repo Pulse — Daily Report reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20144> |
| Issue | #20137 | [CI Failure] Azure.Search.Documents (ubuntu-latest) test run crashes with exit code 134 (SIGABRT), triggering hang dump check | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20137> |
| Issue | #20136 | Stable Aspire CLI 13.5.3 installation downloads from a preview URL | open | davidfowl | <https://github.com/microsoft/aspire/issues/20136> |
| Issue | #18953 | Remove `Github Model` resources | closed | afscrome | <https://github.com/microsoft/aspire/issues/18953> |
| Issue | #19884 | [Aspire CLI] aspire stop --force failing due to race condition | closed | tjwald | <https://github.com/microsoft/aspire/issues/19884> |
| Issue | #20019 | `WithProjectDefaults()` can end up with TLS config mixing PEM and PFX certs | closed | afscrome | <https://github.com/microsoft/aspire/issues/20019> |
| Issue | #19120 | Dashboard search inputs drop and reorder characters while typing | closed | ma225tq | <https://github.com/microsoft/aspire/issues/19120> |
| Issue | #19742 | [CI Failure] Flaky: MetricsTests.ChangeResource_MeterAndInstrumentNotOnNewResources_InstrumentCleared fails with SQLite 'expected 0 columns' error on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19742> |
| Issue | #19639 | [CI Failure] Flaky: VS Code extension E2E (Linux, azure-functions) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19639> |
| Issue | #20065 | [AspireE2E] Run Aspire project with `aspire run -lp http` meet error "The 'applicationUrl' setting must be an https address" | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/20065> |



