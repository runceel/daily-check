# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-13 00:02:03 〜 2026-08-14 00:21:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 31 |
| オープン中の新規 PR     | 13 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 20 |
| クローズ Issue          | 23 |
| 主要コントリビューター  | aspire-repo-bot[bot], adamint, sebastienros, karolz-ms, IEvangelist, danegsta |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 （PR / open / sebastienros）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ 破壊的変更** [#19301](https://github.com/microsoft/aspire/pull/19301) — [automated] feat(cli): report installations with aspire --info （PR / open / radical）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ 破壊的変更** [#19077](https://github.com/microsoft/aspire/pull/19077) — Expose resolved environment variables to debug launch producers （PR / merged / adamint）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ セキュリティ** [#19248](https://github.com/microsoft/aspire/pull/19248) — Redact owning resource's own secret env var in `describe` （PR / open / IEvangelist）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ セキュリティ** [#19052](https://github.com/microsoft/aspire/pull/19052) — [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) （PR / open / IEvangelist）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **非推奨/廃止** [#19295](https://github.com/microsoft/aspire/pull/19295) — Show AppHosts from every VS Code workspace root （PR / merged / adamint）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19077](https://github.com/microsoft/aspire/pull/19077) — Expose resolved environment variables to debug launch producers

- 作者: adamint / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +753 / -166
- マージ日時 (UTC): `2026-08-13 18:00:41`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

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

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#19295](https://github.com/microsoft/aspire/pull/19295) — Show AppHosts from every VS Code workspace root

- 作者: adamint / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +2032 / -114
- マージ日時 (UTC): `2026-08-13 00:46:37`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

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

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#19364](https://github.com/microsoft/aspire/pull/19364) — [release/13.5] Ensure Aspire CLI bundle resolution

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +2203 / -137
- マージ日時 (UTC): `2026-08-13 23:59:34`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/scripts/get-aspire-cli.ps1` | 37 | 0 |
| `eng/scripts/get-aspire-cli.sh` | 37 | 0 |
| `src/Aspire.Cli/Bundles/BundleService.cs` | 3 | 2 |
| `src/Aspire.Cli/Layout/LayoutDiscovery.cs` | 10 | 4 |
| `src/Aspire.Cli/Projects/AppHostInfoResolver.cs` | 3 | 3 |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 31 | 35 |
| `src/Aspire.Cli/Resources/RunCommandStrings.Designer.cs` | 1 | 0 |
| `src/Aspire.Hosting.AppHost/build/Aspire.Hosting.AppHost.in.targets` | 177 | 7 |
| `src/Aspire.Hosting.Tasks/ResolveAspireCliBundle.cs` | 34 | 4 |
| `src/Aspire.Hosting.Tasks/ResolveAspireCliInvocation.cs` | 13 | 0 |
| `src/Aspire.Hosting.Tasks/RunAspireCliCommand.cs` | 358 | 0 |
| `src/Aspire.Hosting/Dcp/DcpOptions.cs` | 3 | 3 |
| `tests/Aspire.Acquisition.Tests/Scripts/ReleaseScriptFunctionTests.cs` | 30 | 0 |
| `tests/Aspire.Acquisition.Tests/Scripts/ReleaseScriptPSFunctionTests.cs` | 66 | 0 |
| `tests/Aspire.Acquisition.Tests/Scripts/ReleaseScriptPowerShellTests.cs` | 21 | 0 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `bb0c5aa` Ensure Aspire CLI bundle resolution
- `d6ae117` Address code review findings and test breaks
- `ffa638b` Address code review findings
- `c11f7b6` Fix Aspire CLI discovery from PATH
- `3dd4c8e` Address code review findings
- `5aa846b` Fix CI test failures
- `7a9b73a` Address code review findings and fix CI test failures
- `d7622f8` Improve process cleanup with .NET 4.7.2
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#19365](https://github.com/microsoft/aspire/pull/19365) — [release/13.5] Ensure the typescript app host trusts the dev cert

- 作者: danegsta / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +937 / -86
- マージ日時 (UTC): `2026-08-13 23:58:42`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Certificates/CertificateCacheWriter.cs` | 81 | 0 |
| `src/Aspire.Cli/Certificates/CertificateService.cs` | 35 | 1 |
| `src/Aspire.Cli/Certificates/ICertificateToolRunner.cs` | 9 | 0 |
| `src/Aspire.Cli/Certificates/NativeCertificateToolRunner.cs` | 72 | 7 |
| `src/Aspire.Cli/Projects/GuestAppHostProject.cs` | 127 | 6 |
| `src/Aspire.Cli/Projects/GuestRuntime.cs` | 5 | 0 |
| `src/Aspire.Cli/Projects/TypeScriptAppHostToolchainResolver.cs` | 1 | 0 |
| `src/Aspire.Hosting.CodeGeneration.TypeScript/TypeScriptLanguageSupport.cs` | 4 | 0 |
| `src/Aspire.Hosting/DeveloperCertificateService.cs` | 1 | 50 |
| `src/Aspire.TypeSystem/ILanguageSupport.cs` | 16 | 0 |
| `src/Aspire.TypeSystem/RuntimeSpec.cs` | 15 | 0 |
| `src/Shared/X509Certificate2Extensions.cs` | 65 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/TypeScriptEmptyAppHostTemplateTests.cs` | 26 | 4 |
| `tests/Aspire.Cli.Tests/Certificates/CertificateServiceTests.cs` | 119 | 2 |
| `tests/Aspire.Cli.Tests/Certificates/NativeCertificateToolRunnerTests.cs` | 94 | 4 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `46748de` Ensure the typescript app host trusts the dev cert (#15634)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#19332](https://github.com/microsoft/aspire/pull/19332) — [release/13.5] Match dark accent buttons to hyperlinks

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-dashboard` `Servicing-approved`
- 変更行数: +11 / -15
- マージ日時 (UTC): `2026-08-13 23:05:50`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/wwwroot/css/app.css` | 11 | 15 |

</details>

<details><summary>コミット (3 件)</summary>

- `ac3bed3` Match dark accent buttons to hyperlinks
- `c03ab1f` Darken accent button hover state
- `2b9c523` Remove accent hover luminance assertion

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#19346](https://github.com/microsoft/aspire/pull/19346) — [release/13.5] Remove dashboard dependency on Microsoft.OpenApi

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-dashboard` `Servicing-approved`
- 変更行数: +59 / -42
- マージ日時 (UTC): `2026-08-13 23:05:27`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 0 | 1 |
| `src/Aspire.Dashboard/Aspire.Dashboard.csproj` | 0 | 1 |
| `src/Aspire.Dashboard/Model/GenAI/GenAIMessages.cs` | 1 | 2 |
| `src/Aspire.Dashboard/Model/GenAI/GenAISchemaHelpers.cs` | 7 | 12 |
| `src/Aspire.Dashboard/Model/GenAI/GenAIVisualizerDialogViewModel.cs` | 3 | 2 |
| `src/Aspire.Dashboard/Model/GenAI/ToolDefinitionSchema.cs` | 28 | 0 |
| `tests/Aspire.Dashboard.Tests/Model/GenAISchemaHelpersTests.cs` | 18 | 22 |
| `tests/Aspire.Dashboard.Tests/Model/GenAIVisualizerDialogViewModelTests.cs` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `25a05c3` Remove dashboard Microsoft.OpenApi dependency

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
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
| PR | #19367 | Bound Aspire CLI process termination wait | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19367> |
| PR | #19335 | DO NOT MERGE: Test Sigstore/Tuf 1.0.0-alpha packages | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19335> |
| PR | #19344 | Handle SIGTERM in terminal host and GC orphaned sockets (#19302) | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19344> |
| PR | #19351 | Honor --source during template discovery | open | adamint | <https://github.com/microsoft/aspire/pull/19351> |
| PR | #19352 | Support advanced dotnet invocation options | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19352> |
| PR | #19359 | Fix remembered AppHost folder in multi-root workspaces | open | adamint | <https://github.com/microsoft/aspire/pull/19359> |
| PR | #19343 | Tolerate NuGet credential-provider stdout preamble in package search parsing | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19343> |
| PR | #19347 | Add custom NuGet source setting to VS Code extension | open | adamint | <https://github.com/microsoft/aspire/pull/19347> |
| PR | #19358 | Self-heal stale community-contribution flags in milestone changelog | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19358> |
| PR | #19349 | Add IServiceProvider support to Cosmos DB extensions | open | AdamDotNet | <https://github.com/microsoft/aspire/pull/19349> |
| PR | #19336 | Stop redisplaying dismissed unresolved parameters notification | open | JamesNK | <https://github.com/microsoft/aspire/pull/19336> |
| PR | #19337 | Revert "Bound the NuGet package search timeout" | open | adamint | <https://github.com/microsoft/aspire/pull/19337> |
| PR | #19333 | Simplify dashboard design token scope | open | JamesNK | <https://github.com/microsoft/aspire/pull/19333> |
| PR | #19353 | [Automated] Update Aspire skills bundle | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19353> |
| PR | #18875 | Add publication root to pipeline output service | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18875> |
| Issue | #19368 | ASPIRE010: add a forward link in the warning and publish a doc explaining AspireUseCliBundle | open | joperezr | <https://github.com/microsoft/aspire/issues/19368> |
| Issue | #19366 | Handle Deployment-to-StatefulSet transitions when adding a persistent volume | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19366> |
| Issue | #19350 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19350> |
| Issue | #19357 | Make AppHost start and stop operations worktree-aware | open | adamint | <https://github.com/microsoft/aspire/issues/19357> |
| Issue | #19363 | [CI Failure] Flaky: DashboardClientTests.WatchWithRecovery_RepeatedFailures_FiresMultipleDisconnectedEvents times out waiting for disconnected events | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19363> |
| Issue | #19341 | `change-location` dev-time command silently deletes & recreates location-immutable Azure resources (data loss) with no warning | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19341> |
| Issue | #19362 | [CI Failure] Flaky: XUnit_V2_NewUpAndBuildSupportProjectTemplatesTests.CanNewAndBuild times out after 300s running 'dotnet new aspire-apphost' on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19362> |
| Issue | #19361 | [CI Failure] Polyglot SDK Validation: TypeScript SDK Validation (Node 24.x) job fails with exit code 1, unrelated to PR-changed Hosting/C# files; job logs unavailable for detailed diagnosis | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19361> |
| Issue | #19342 | recently, in a multi-repo workspace, Aspire tenaciously picks the wrong repo to search for AppHosts | open | burtonrodman | <https://github.com/microsoft/aspire/issues/19342> |
| Issue | #19354 | Allow resource command results to customize dialog actions | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/19354> |
| Issue | #19356 | Use unique Docker volumes for isolated AppHost instances | open | adamint | <https://github.com/microsoft/aspire/issues/19356> |
| Issue | #19355 | Allow parameters to opt out of isolated user-secrets copying | open | adamint | <https://github.com/microsoft/aspire/issues/19355> |
| Issue | #19340 | VS Code extension: add a custom NuGet source setting for new/add commands | open | adamint | <https://github.com/microsoft/aspire/issues/19340> |
| Issue | #19338 | `aspire new --source` still contacts NuGet.org during template discovery | open | adamint | <https://github.com/microsoft/aspire/issues/19338> |
| Issue | #19339 | Version check and `aspire add` fail when NuGet credential-provider output pollutes `dotnet package search --format json` stdout (JsonReaderException) | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19339> |
| Issue | #19328 | [CI Failure] Flaky: VS Code extension command palette E2E test 'observes multiple AppHost candidates without selecting the wrong one' fails intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19328> |
| Issue | #19330 | [CI Failure] Flaky: VS Code extension E2E 'rediscovers workspace AppHost candidates when config changes' fails due to config file read/write race | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19330> |
| Issue | #19323 | [aw] Milestone Changelog Generator failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19323> |
| Issue | #19327 | [CI Failure] GitHub artifact upload fails with 403 Forbidden from intermediary during FinalizeArtifact | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19327> |
| Issue | #19326 | VS Code Marketplace publish rejects the release managed identity | closed | adamint | <https://github.com/microsoft/aspire/issues/19326> |
| Issue | #19227 | [AspireE2E] AppHost throws unhandled System.AggregateException when AspireUseCliBundle=true and CLI bundle dependencies are unavailable | closed | maitan11 | <https://github.com/microsoft/aspire/issues/19227> |
| Issue | #15489 | TypeScript AppHost Node process does not trust dev certs | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/15489> |
| Issue | #19250 | aspire stop leaves session-lifetime containers running | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19250> |
| Issue | #18956 | Expose the resolved environment variables to the `WithDebugSupport` launch configuration callback | closed | afscrome | <https://github.com/microsoft/aspire/issues/18956> |
| Issue | #19299 | Custom IDE project launches receive a dotnet argument separator and invalid process fallback | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19299> |
| Issue | #19314 | Remove Aspire.Dashboard dependency on Microsoft.OpenApi by vendoring schema model types | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/19314> |
| Issue | #9311 | [nit]: "Operation cancelled by user action" log is too incessant | closed | captainsafia | <https://github.com/microsoft/aspire/issues/9311> |
| Issue | #13383 | [AspireE2E] The structured logs displayed in the results list do not match the set Level | closed | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/13383> |
| Issue | #16185 | [AspireE2E]`aspire update` will downgrading Aspire SDK higher version from 13.3-preview1 to 13.2.2 for  Aspire Express/React Starter App | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/16185> |
| Issue | #18657 | Test failures: Outerloop Tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18657> |
| Issue | #18324 | Agents should prefer VS Code APIs over the Aspire CLI when the extension is active | closed | adamint | <https://github.com/microsoft/aspire/issues/18324> |
| Issue | #19252 | [CI Failure] GitHub artifact upload fails with ENOTFOUND DNS resolution error | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19252> |
| Issue | #19279 | [CI Failure] Git checkout fails with server certificate verification failed against github.com | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19279> |
| Issue | #19311 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19311> |
| Issue | #19284 | [Regression] Azure Functions resource fails because the generated func task type is unregistered | closed | adamint | <https://github.com/microsoft/aspire/issues/19284> |
| Issue | #19287 | [VS Code] Multi-root workspace only shows the first discovered AppHost | closed | adamint | <https://github.com/microsoft/aspire/issues/19287> |
| Issue | #13905 | [macOS] Cannot launch dashboard | closed | universorum | <https://github.com/microsoft/aspire/issues/13905> |
