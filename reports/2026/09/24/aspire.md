# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 71 |
| オープン中の新規 PR     | 36 |
| クローズ (未マージ) PR  | 34 |
| 新規 Issue              | 107 |
| クローズ Issue          | 80 |
| 主要コントリビューター  | JamesNK, aspire-repo-bot[bot], eerhardt, danegsta, karolz-ms, mitchdenny |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20261](https://github.com/microsoft/aspire/pull/20261) — Move terminal APIs into Aspire.Hosting.ApplicationModel （PR / merged / mitchdenny）
  ⚠ 破壊的変更: terminal API が `Aspire.Hosting.ApplicationModel` に移動しました。terminal を利用する AppHost は namespace と型参照を更新してください。
- **⚠ 破壊的変更** [#20047](https://github.com/microsoft/aspire/pull/20047) — Breaking change: update StackExchange.Redis to 3.2.0 （PR / open / joperezr）
  StackExchange.Redis 3.2.0 更新を提案するオープン PR で breaking change が示されています。Redis 利用者は互換性を確認し、採用済み更新を待ってください。
- **⚠ セキュリティ** [#20032](https://github.com/microsoft/aspire/pull/20032) — [auto-sec] Consolidate aspire dependency security remediations (75 alerts) （PR / merged / IEvangelist）
  Aspire の依存 security alert 75 件をまとめて修正しました。複数の JavaScript package 更新を含むため CI と lockfile を検証してください。
- **非推奨/廃止** [#20257](https://github.com/microsoft/aspire/issues/20257) — [Homebrew] Deprecation notice for "the `verified` parameter in the `url` stanza is deprecated" （Issue / open / tebeco）
  Homebrew `url` stanza の `verified` parameter 非推奨を報告する issue です。formula 保守者は現行構文を確認し更新してください。

## このリポジトリの要点

Aspire 13.6 では Dashboard の app ごとの状態分離（#20407）、空 OTLP key の拒否（#20408）、terminal API の namespace 移動（#20261）が利用者影響の大きな変更です。
Project v2 migration skill bundle と Dashboard UI も更新され、依存 security alert 75 件の修正がマージされました（#20405、#20410、#20032）。
agent／dependency の一部提案と SQL Server testcontainer 問題はオープンまたは未採用で、状態を区別して追跡してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20261](https://github.com/microsoft/aspire/pull/20261) — Move terminal APIs into Aspire.Hosting.ApplicationModel

- 作者: mitchdenny / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +59 / -60
- マージ日時 (UTC): `2026-09-21 04:52:24`

**変更概要**

Aspire terminal の型と API を `Aspire.Hosting.ApplicationModel` へ移し、terminal model／automation／client stream を再配置します。  
関連 playground と文書も更新し、terminal 操作を application model に統合します。

<details><summary>変更ファイル (43 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/with-terminal.md` | 3 | 2 |
| `playground/Terminals/Terminals.AppHost/TerminalInteractionCommands.cs` | 0 | 1 |
| `src/Aspire.Hosting/ApplicationModel/AspireTerminal.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/AspireTerminalKey.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/Hex1bAspireTerminal.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/ITerminalBackend.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/ResourceAspireTerminal.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/ResourceTerminalCatalog.cs` | 1 | 2 |
| `src/Aspire.Hosting/ApplicationModel/TerminalAnnotation.cs` | 0 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalAutomation.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalChange.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalClientStream.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalDiagnostics.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalLaunchOptions.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalOwner.cs` | 1 | 1 |
| _... 他 28 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `d26a225` Move terminal APIs into Aspire.Hosting.ApplicationModel

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: terminal 型の namespace が移動し、旧 namespace からの参照は解決できなくなります。複数の terminal model/interface が対象ですが、全メンバーのシグネチャ変更までは一覧から特定できません。

**既存利用者への影響**



terminal API 利用者は `Aspire.Hosting.ApplicationModel` namespace に using／型参照を更新してください。terminal を使わない利用者は移行不要です。

### [#20032](https://github.com/microsoft/aspire/pull/20032) — [auto-sec] Consolidate aspire dependency security remediations (75 alerts)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label` `automated-security`
- 変更行数: +301 / -228
- マージ日時 (UTC): `2026-09-21 16:20:42`

**変更概要**

Aspire 依存関係に関する 75 security alert をまとめて修正し、複数の npm／pnpm／Yarn manifest と lockfile を更新します。  
upstream 競合を解消し、starter lockfile の public npm registry 設定も維持します。  
変更の中心は extension／playground の front-end dependencies です。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/package.json` | 5 | 3 |
| `extension/yarn.lock` | 66 | 57 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package-lock.json` | 34 | 28 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package.json` | 4 | 1 |
| `playground/AspireWithNode/NodeFrontend/package-lock.json` | 14 | 13 |
| `playground/AspireWithNode/NodeFrontend/package.json` | 2 | 1 |
| `playground/AspireWithNode/NodeFrontend/pnpm-lock.yaml` | 21 | 19 |
| `playground/BrowserTelemetry/BrowserTelemetry.Web/package-lock.json` | 23 | 20 |
| `playground/BrowserTelemetry/BrowserTelemetry.Web/package.json` | 3 | 1 |
| `playground/JavaAppHost/api/package-lock.json` | 3 | 3 |
| `playground/JavaAppHost/api/package.json` | 3 | 0 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.NodeService/package-lock.json` | 13 | 12 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.NodeService/package.json` | 2 | 1 |
| `playground/TypeScriptAppHost/express-api/package-lock.json` | 13 | 12 |
| `playground/TypeScriptAppHost/express-api/package.json` | 2 | 1 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `1f91553` [auto-sec] Consolidate aspire npm/pnpm/yarn dependency security remed…
- `683298c` Merge upstream main and resolve dependency security conflicts
- `2771a92` Preserve public npm registry in shipped starter lockfiles

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


依存 manifest／lockfile 更新であり、公開 .NET API シグネチャ変更は示されていません。複数 JavaScript package の security remediation を扱います。

**既存利用者への影響**



通常はアプリコード移行不要です。extension／sample をビルドする場合は lockfile を更新し、install・build・security scan を確認してください。

### [#20405](https://github.com/microsoft/aspire/pull/20405) — [release/13.6] Prepare Project v2 migration skill bundle integration

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +416 / -38
- マージ日時 (UTC): `2026-09-24 02:57:48`

**変更概要**

Aspire CLI に Project v2 migration skill bundle を統合し、埋め込み bundle を v0.0.3 に更新します。  
installer／metadata、telemetry hook の更新と bundle 内容検証を実装し、関連テストを追加します。  
CLI の agent init／migration skill 利用者が対象です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/verify-telemetry-hook-changes.yml` | 24 | 1 |
| `src/Aspire.Cli/Agents/AspireSkills/AspireSkillsInstaller.cs` | 1 | 1 |
| `src/Aspire.Cli/Agents/AspireSkills/Embedded/aspire-skills-v0.0.2.tgz` | 0 | 0 |
| `src/Aspire.Cli/Agents/AspireSkills/Embedded/aspire-skills-v0.0.3.tgz` | 0 | 0 |
| `src/Aspire.Cli/Agents/AspireSkills/Embedded/aspire-skills.metadata.json` | 7 | 7 |
| `src/Aspire.Cli/Agents/Hooks/TelemetryHookConfigurator.cs` | 1 | 1 |
| `src/Aspire.Cli/Agents/Hooks/track-telemetry.ps1` | 3 | 1 |
| `src/Aspire.Cli/Agents/Hooks/track-telemetry.sh` | 3 | 1 |
| `src/Aspire.Cli/Aspire.Cli.csproj` | 1 | 1 |
| `src/Aspire.Hosting.Dotnet/README.md` | 8 | 0 |
| `tests/Aspire.Cli.Tests/Agents/AspireSkillsInstallerTests.cs` | 30 | 2 |
| `tests/Aspire.Cli.Tests/Agents/TelemetryHookScriptTests.cs` | 35 | 20 |
| `tests/Aspire.Cli.Tests/Commands/AgentInitCommandTests.cs` | 64 | 2 |
| `tests/Aspire.Cli.Tests/TestServices/FakePlaywrightServices.cs` | 15 | 1 |
| `tests/Infrastructure.Tests/WorkflowScripts/VerifyTelemetryHookChangesWorkflowTests.cs` | 224 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `d515305` Prepare Project v2 migration skill bundle integration
- `6b97a37` Address Project v2 skill review feedback
- `e275409` Update to consume release 0.0.3 of Aspire skills
- `a923a36` Validate embedded migration skill contents
- `ffa9553` Allow complete bundle refreshes to update hooks
- `8be8c03` Test telemetry hook bundle update policy

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


CLI の埋め込み skill bundle と hook 更新検証の動作変更です。一般の AppHost public API シグネチャ変更は示されていませんが、CLI が配布する skill の版・内容が更新されます。

**既存利用者への影響**



Project v2 migration skill を CLI 経由で使う場合、新しい bundle と hook 更新ルールを確認してください。通常の AppHost 利用では移行不要です。

### [#20410](https://github.com/microsoft/aspire/pull/20410) — [release/13.6] Fix Dashboard tests and popup behavior

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +1055 / -803
- マージ日時 (UTC): `2026-09-24 02:52:04`

**変更概要**

Aspire Dashboard の popup 挙動を修正し、関連 UI／Playwright tests を安定化します。  
chart filter、menu、resource action、terminal 表示など多数の UI とテストを更新しています。  
Dashboard の表示・操作改善が対象です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Versions.props` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Controls/AspireMenu.razor.cs` | 22 | 2 |
| `src/Aspire.Dashboard/Components/Controls/AspireMenuButton.razor` | 1 | 1 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartContainer.razor` | 2 | 2 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilterPopover.razor` | 30 | 37 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilterPopover.razor.cs` | 19 | 3 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilterPopover.razor.css` | 8 | 25 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilterTags.razor` | 1 | 1 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilterTags.razor.cs` | 4 | 5 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilters.razor` | 25 | 2 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilters.razor.cs` | 25 | 0 |
| `src/Aspire.Dashboard/Components/Controls/Chart/ChartFilters.razor.css` | 23 | 0 |
| `src/Aspire.Dashboard/Components/Controls/ResourceActions.razor` | 1 | 1 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor` | 2 | 2 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.cs` | 0 | 3 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `25774fa` Fix AngleSharp warning in dashboard component tests (#20360)
- `c83b354` Fix dashboard Playwright tests after Fluent UI v5 migration (#20341)
- `e358195` Fix Dashboard popup positioning and persistence (#20362)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


変更は Dashboard UI と tests に集中し、公開 API シグネチャ変更は示されていません。popup の位置・永続化や chart filter の期待動作を修正します。

**既存利用者への影響**



Dashboard の通常利用は移行不要です。popup の位置・状態に依存する独自 UI automation は期待値を再確認してください。

### [#20408](https://github.com/microsoft/aspire/pull/20408) — [release/13.6] Reject empty OTLP API keys

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +140 / -2
- マージ日時 (UTC): `2026-09-24 02:50:54`

**変更概要**

Dashboard の OTLP API key 認証で空 key を拒否します。  
options validation と authentication handler を更新し、null／empty secondary key を含む tests を追加します。  
OTLP endpoint に API key を設定する運用が対象です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Authentication/OtlpApiKey/OtlpApiKeyAuthenticationHandler.cs` | 8 | 2 |
| `src/Aspire.Dashboard/Configuration/ValidateDashboardOptions.cs` | 4 | 0 |
| `tests/Aspire.Dashboard.Tests/DashboardOptionsTests.cs` | 41 | 0 |
| `tests/Aspire.Dashboard.Tests/Integration/OtlpHttpServiceTests.cs` | 73 | 0 |
| `tests/Aspire.Dashboard.Tests/OtlpApiKeyAuthenticationHandlerTests.cs` | 14 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `f0c1402` Reject empty OTLP API keys
- `9bf9a58` Test null and empty JSON OTLP secondary keys

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


認証入力の検証を強化し、空文字 credential を有効な key と扱わなくなります。公開 API シグネチャではなく認証動作の変更です。

**既存利用者への影響**



OTLP API key には空白・空文字ではなく有効な secret を設定してください。空 key に依存する構成は修正が必要です。

### [#20407](https://github.com/microsoft/aspire/pull/20407) — [release/13.6] Scope dashboard cookies and resource state by application name

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +345 / -67
- マージ日時 (UTC): `2026-09-24 02:49:11`

**変更概要**

Dashboard の auth／antiforgery cookie と resource state を application name ごとに分離します。  
application name の正規化、browser storage key、run metadata と browser authentication tests を更新し、複数アプリ間の状態混在を防ぎます。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Authentication/DashboardAuthenticationCookieNames.cs` | 19 | 0 |
| `src/Aspire.Dashboard/Configuration/DashboardOptions.cs` | 7 | 0 |
| `src/Aspire.Dashboard/DashboardWebApplication.cs` | 9 | 8 |
| `src/Aspire.Dashboard/README.md` | 1 | 1 |
| `src/Aspire.Dashboard/ServiceClient/DashboardClient.cs` | 3 | 3 |
| `src/Aspire.Dashboard/ServiceClient/DashboardRunStore.cs` | 4 | 3 |
| `src/Aspire.Dashboard/ServiceClient/SelectedDashboardClient.cs` | 5 | 1 |
| `src/Aspire.Dashboard/Utils/BrowserStorageKeys.cs` | 1 | 14 |
| `src/Aspire.Dashboard/Utils/DashboardApplicationNameKey.cs` | 44 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/ResourcesTests.cs` | 2 | 3 |
| `tests/Aspire.Dashboard.Tests/BrowserStorageKeysTests.cs` | 21 | 0 |
| `tests/Aspire.Dashboard.Tests/DashboardOptionsTests.cs` | 55 | 4 |
| `tests/Aspire.Dashboard.Tests/Integration/FrontendBrowserTokenAuthTests.cs` | 10 | 5 |
| `tests/Aspire.Dashboard.Tests/Integration/Playwright/BrowserTokenAuthenticationTests.cs` | 47 | 0 |
| `tests/Aspire.Dashboard.Tests/Integration/Playwright/Infrastructure/DashboardServerFixture.cs` | 20 | 12 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `51e7006` Scope dashboard auth cookies by application name
- `207c96b` Test dashboard auth cookie scoping
- `b6d7756` Update dashboard auth cookie integration tests
- `d38686e` Scope dashboard antiforgery cookies and resource storage by application
- `bdba502` Clarify dashboard application-name storage scoping
- `10f9a0f` Normalize application names in dashboard run metadata
- `6f83c99` Normalize resource service application names in dashboard client
- `25ea23d` Simplify dashboard client test helper overloads

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


cookie 名と browser storage key に application name のスコープを導入し、resource state／run metadata の識別も統一します。既存 storage key から動作が変わりますが、外部 API シグネチャ変更は示されていません。

**既存利用者への影響**


複数 application を切り替える場合、cookie の再発行や Dashboard state の再作成が起きる可能性があります。独自 browser automation は application-scoped storage を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20026 | Add CLI shell completion generation and installer integration | DamianEdwards | <https://github.com/microsoft/aspire/pull/20026> |
| #20070 | Roll out "Manage" link pattern to remaining management UI integrations | afscrome | <https://github.com/microsoft/aspire/pull/20070> |
| #20363 | Reject empty OTLP API keys | JamesNK | <https://github.com/microsoft/aspire/pull/20363> |
| #20299 | Scope dashboard cookies and resource state by application name | JamesNK | <https://github.com/microsoft/aspire/pull/20299> |
| #20403 | Change StabilizePackageVersion to false condition | joperezr | <https://github.com/microsoft/aspire/pull/20403> |
| #20158 | Prepare Project v2 migration skill bundle integration | karolz-ms | <https://github.com/microsoft/aspire/pull/20158> |
| #20334 | Improve startup error reporting | karolz-ms | <https://github.com/microsoft/aspire/pull/20334> |
| #20391 | [release/13.6] Move bundled NuGet operations into Aspire CLI | eerhardt | <https://github.com/microsoft/aspire/pull/20391> |
| #20390 | Assign 14.0 milestone to PRs merged to main | Copilot | <https://github.com/microsoft/aspire/pull/20390> |
| #19847 | Move bundled NuGet operations into Aspire CLI | eerhardt | <https://github.com/microsoft/aspire/pull/19847> |
| #20368 | Change StabilizePackageVersion condition to true | joperezr | <https://github.com/microsoft/aspire/pull/20368> |
| #20148 | Bump Radius installation pins to v0.60.2 | nellshamrell | <https://github.com/microsoft/aspire/pull/20148> |
| #20362 | Fix Dashboard popup positioning and persistence | JamesNK | <https://github.com/microsoft/aspire/pull/20362> |
| #20210 | Port Firefox NSS certificate support to the CLI | danegsta | <https://github.com/microsoft/aspire/pull/20210> |
| #20214 | Support executable references to container-network endpoints | danegsta | <https://github.com/microsoft/aspire/pull/20214> |
| #20294 | Improve Project V2 builds with unified restore | karolz-ms | <https://github.com/microsoft/aspire/pull/20294> |
| #20243 | Run file-based C# resources outside legacy IDE sessions | karolz-ms | <https://github.com/microsoft/aspire/pull/20243> |
| #20341 | Fix dashboard Playwright tests after Fluent UI v5 migration | JamesNK | <https://github.com/microsoft/aspire/pull/20341> |
| #20360 | Fix AngleSharp warning in dashboard component tests | JamesNK | <https://github.com/microsoft/aspire/pull/20360> |
| #20366 | Merge release/14.0 back into main after the 13.6 branch snap | joperezr | <https://github.com/microsoft/aspire/pull/20366> |
| #20364 | [Automated] Sync main to release/14.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20364> |
| #20339 | Update Blazor playgrounds to OpenTelemetry 1.19 | danroth27 | <https://github.com/microsoft/aspire/pull/20339> |
| #20252 | [Automated] Sync main to release/14.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20252> |
| #20314 | Fix source indexing and template test build failures | joperezr | <https://github.com/microsoft/aspire/pull/20314> |
| #20306 | Add application icon to Aspire Dashboard | JamesNK | <https://github.com/microsoft/aspire/pull/20306> |
| #19729 | Normalize connection string environment variable aliases | sebastienros | <https://github.com/microsoft/aspire/pull/19729> |
| #20317 | Fix log streaming for terminal-backed executables | karolz-ms | <https://github.com/microsoft/aspire/pull/20317> |
| #20298 | Configure NSS trust paths through Aspire config | danegsta | <https://github.com/microsoft/aspire/pull/20298> |
| #20326 | Prevent pending DCP events from regressing allocated addresses | danegsta | <https://github.com/microsoft/aspire/pull/20326> |
| #20325 | Fix dashboard build-only reference in hosting tests | eerhardt | <https://github.com/microsoft/aspire/pull/20325> |
| #20295 | Update repository CLI manifests with aspire update | eerhardt | <https://github.com/microsoft/aspire/pull/20295> |
| #20319 | Fix auxiliary backchannel shutdown handling | danegsta | <https://github.com/microsoft/aspire/pull/20319> |
| #20307 | Build dashboard for Aspire.Hosting tests | JamesNK | <https://github.com/microsoft/aspire/pull/20307> |
| #19565 | Enable Native AOT dashboard with Fluent UI v5 | JamesNK | <https://github.com/microsoft/aspire/pull/19565> |
| #20293 | Fix PR documentation workflow inputs and completion | IEvangelist | <https://github.com/microsoft/aspire/pull/20293> |
| #19455 | Fix main CI failure attribution and classification | Copilot | <https://github.com/microsoft/aspire/pull/19455> |
| #20282 | Teach Copilot review to catch pinned GitHub Action SHA allow-list changes | Copilot | <https://github.com/microsoft/aspire/pull/20282> |
| #20303 | Clarify beta version deployment strategy in comments | eerhardt | <https://github.com/microsoft/aspire/pull/20303> |
| #20131 | Complete Azure provisioning SDK integration coverage | sebastienros | <https://github.com/microsoft/aspire/pull/20131> |
| #20289 | Fix Windows dynamic debug E2E teardown race | ellahathaway | <https://github.com/microsoft/aspire/pull/20289> |
| #20300 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/20300> |
| #20169 | Increase dashboard console log, structured log, and trace limits | JamesNK | <https://github.com/microsoft/aspire/pull/20169> |
| #20296 | Fix /deployment-test authorization for repository writers | mitchdenny | <https://github.com/microsoft/aspire/pull/20296> |
| #20223 | Avoid racing dashboard lock initialization | JamesNK | <https://github.com/microsoft/aspire/pull/20223> |
| #20192 | fix(team-app): Watch Aspire 1P’s Proxima repository | radical | <https://github.com/microsoft/aspire/pull/20192> |
| #20279 | Fix duplicate resource stopped events during restart | JamesNK | <https://github.com/microsoft/aspire/pull/20279> |
| #20116 | Isolate WinUI E2E design-time build outputs | ellahathaway | <https://github.com/microsoft/aspire/pull/20116> |
| #20127 | Collect VS Code E2E diagnostics from explicit inputs | ellahathaway | <https://github.com/microsoft/aspire/pull/20127> |
| #20242 | Update dotnet/extensions dependencies to 10.10.0 and OpenAI to 2.13.0 | eerhardt | <https://github.com/microsoft/aspire/pull/20242> |
| #20273 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20273> |
| #20262 | Force WebGL2 for Firefox dashboard terminals | mitchdenny | <https://github.com/microsoft/aspire/pull/20262> |
| #20249 | Improve Azure hosting test logging and stability | JamesNK | <https://github.com/microsoft/aspire/pull/20249> |
| #20244 | Bump the uv group across 4 directories with 1 update | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20244> |
| #19393 | [Automated] Update Aspire skills bundle | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19393> |
| #20156 | Update PackageValidationBaselineVersion to 13.5.4 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20156> |
| #20240 | Merge release/13.5 to main after v13.5.4 (supersedes #20154) | joperezr | <https://github.com/microsoft/aspire/pull/20240> |
| #20236 | [Automated] Sync main to release/14.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20236> |
| #20195 | Add opt-in volume cleanup to aspire stop | danegsta | <https://github.com/microsoft/aspire/pull/20195> |
| #20138 | [Automated] Sync main to release/14.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20138> |
| #20209 | Modernize agentic workflows with gh-aw v0.88.7 | IEvangelist | <https://github.com/microsoft/aspire/pull/20209> |
| #20230 | Fix dashboard terminal documentation link | mitchdenny | <https://github.com/microsoft/aspire/pull/20230> |
| #19887 | Add AppHost terminals, dashboard docking, and terminal automation | mitchdenny | <https://github.com/microsoft/aspire/pull/19887> |
| #20197 | Update Fluent UI to fix tall dashboard submenu overflow | JamesNK | <https://github.com/microsoft/aspire/pull/20197> |
| #20220 | Fix metric filter tag overflow | JamesNK | <https://github.com/microsoft/aspire/pull/20220> |
| #20211 | Disable Azure SQL principal reconciliation tests | sebastienros | <https://github.com/microsoft/aspire/pull/20211> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20380 | Add Sisyphus to Proxima dashboard defaults | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20380> |
| PR | #20333 | fix(ci): Publish multi-test flaky causes to one issue | open | radical | <https://github.com/microsoft/aspire/pull/20333> |
| PR | #20414 | Animate terminal dock on first open | open | JamesNK | <https://github.com/microsoft/aspire/pull/20414> |
| PR | #20416 | Match dashboard brand hover to Aspire website | open | JamesNK | <https://github.com/microsoft/aspire/pull/20416> |
| PR | #20406 | Fix Windows test shutdown file lock failures | open | danegsta | <https://github.com/microsoft/aspire/pull/20406> |
| PR | #20324 | Add weekly CI test-selection audit workflow | open | radical | <https://github.com/microsoft/aspire/pull/20324> |
| PR | #20413 | Fix dashboard shortcut availability | open | JamesNK | <https://github.com/microsoft/aspire/pull/20413> |
| PR | #20399 | Add one-time Aspire usefulness feedback in VS Code | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/20399> |
| PR | #20337 | Enable multithreaded .NET project builds | open | karolz-ms | <https://github.com/microsoft/aspire/pull/20337> |
| PR | #20411 | [outerloop-tests] Fix Radius MongoDB outerloop test selectors | open | Copilot | <https://github.com/microsoft/aspire/pull/20411> |
| PR | #20322 | fix(ci): tighten PR test selection to avoid unnecessary full runs | open | radical | <https://github.com/microsoft/aspire/pull/20322> |
| PR | #20345 | fix(ci): Automatically rerun failed current-main jobs | open | radical | <https://github.com/microsoft/aspire/pull/20345> |
| PR | #20287 | Configure native agent plugins and independent assets | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20287> |
| PR | #20404 | [DO NOT MERGE] Investigate Windows native WASM attachment (#20117) | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20404> |
| PR | #20400 | Fix AppHost tree E2E row recycling race | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20400> |
| PR | #20387 | Reduce agent telemetry hook overhead without reducing coverage | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20387> |
| PR | #20395 | Update Arcade to 10.0.0-beta.26472.2 | open | joperezr | <https://github.com/microsoft/aspire/pull/20395> |
| PR | #20388 | Add daily API surface review workflows for release branches | open | sebastienros | <https://github.com/microsoft/aspire/pull/20388> |
| PR | #20255 | Upgrade Hex1b and improve dashboard terminal navigation and metadata | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20255> |
| PR | #20382 | Bump the GitHub Actions group to current major versions | open | Evangelink | <https://github.com/microsoft/aspire/pull/20382> |
| PR | #20330 | Set local socket directory and endpoint permissions consistently | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20330> |
| PR | #20231 | Add docked REPL commands for database and cache integrations | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20231> |
| PR | #20383 | Fail fast on empty PR docs drafts | open | Evangelink | <https://github.com/microsoft/aspire/pull/20383> |
| PR | #20233 | Bump the github-actions group across 1 directory with 10 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20233> |
| PR | #20381 | Compress agent review guidance | open | Evangelink | <https://github.com/microsoft/aspire/pull/20381> |
| PR | #20328 | Roll back Google.Protobuf to 3.35.1 to unblock official signing | open | joperezr | <https://github.com/microsoft/aspire/pull/20328> |
| PR | #20312 | Stabilize Blazor browser debugger E2E setup and profile isolation | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20312> |
| PR | #20318 | Fix stale AppHost telemetry context in the VS Code extension | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20318> |
| PR | #20305 | Fix RemoteHost test restore warning in CI | open | Copilot | <https://github.com/microsoft/aspire/pull/20305> |
| PR | #20308 | Treat MTP "zero tests ran" exit code as success in Deployment E2E workflow | open | Copilot | <https://github.com/microsoft/aspire/pull/20308> |
| PR | #20283 | Separate telemetry hook maintenance from skills bundles | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20283> |
| PR | #20278 | Prototype fork-backed documentation PRs | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20278> |
| PR | #20281 | [Automated] Update dependencies | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20281> |
| PR | #20269 | Test NativeAOT dashboard with .NET 11 daily signal-handler fix | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20269> |
| PR | #20260 | Hide UTC timestamps option when timestamps are disabled | open | joshi-07 | <https://github.com/microsoft/aspire/pull/20260> |
| PR | #20254 | Show project evaluation diagnostics when aspire update fails | open | PatrickMatthiesen | <https://github.com/microsoft/aspire/pull/20254> |
| PR | #20412 | [release/13.6] Roll out "Manage" link pattern to remaining management UI integrations | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20412> |
| PR | #19751 | Retry failed rolling CI builds once | closed | Copilot | <https://github.com/microsoft/aspire/pull/19751> |
| PR | #20396 | [Automated] Update Aspire skills bundle | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20396> |
| PR | #20042 | Breaking change: update OpenTelemetry to 1.18.0 | closed | joperezr | <https://github.com/microsoft/aspire/pull/20042> |
| PR | #19804 | fix(ci): Prevent duplicate recurring CI failure issues | closed | radical | <https://github.com/microsoft/aspire/pull/19804> |
| PR | #16889 | EXPERIMENT Dashboard: Aspire brand kit visual refresh | closed | maddymontaquila | <https://github.com/microsoft/aspire/pull/16889> |
| PR | #20161 | Fix Foundry deployment tests | closed | karolz-ms | <https://github.com/microsoft/aspire/pull/20161> |
| PR | #20302 | Update Azure.Provisioning.Cdn from 1.0.0-beta.2 to 1.0.0-beta.3 | closed | eerhardt | <https://github.com/microsoft/aspire/pull/20302> |
| PR | #18809 | Draft mirror: Fix Radius service discovery for deployment testing | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18809> |
| PR | #19731 | Make staging self-update persistence E2E hermetic | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19731> |
| PR | #19928 | [Investigation] CI infrastructure failures — npm public-registry slowdown | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19928> |
| PR | #18759 | Add Radius TypeScript AppHost support | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18759> |
| PR | #20280 | fix(pipelines): sign Native AOT Dashboard dylibs on macOS | closed | radical | <https://github.com/microsoft/aspire/pull/20280> |
| PR | #20290 | Add Aspire.Kafka.Dekaf client integration | closed | thomhurst | <https://github.com/microsoft/aspire/pull/20290> |
| PR | #20251 | Redesign agent init around selected assets and clients | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/20251> |
| PR | #19513 | Bump the npm group across 1 directory with 23 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19513> |
| PR | #20196 | Bump the npm_and_yarn group across 6 directories with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20196> |
| PR | #20194 | Bump the npm_and_yarn group across 11 directories with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20194> |
| PR | #20193 | Bump browserslist from 4.28.2 to 4.28.9 in /extension | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20193> |
| PR | #19863 | Bump @humanfs/node from 0.16.7 to 0.16.8 in /extension | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19863> |
| PR | #13938 | Improve Console Logs download discoverability and reduce destructive button appearance | closed | Copilot | <https://github.com/microsoft/aspire/pull/13938> |
| PR | #19642 | Update Nix flake manifest to v13.5.3 | closed | av-leschinskiy | <https://github.com/microsoft/aspire/pull/19642> |
| PR | #19812 | Add dashboard run timeline annotations | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19812> |
| PR | #20225 | Quarantine flaky Service Bus emulator configuration tests | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/20225> |
| PR | #20248 | Quarantine flaky Service Bus emulator configuration test | closed | eerhardt | <https://github.com/microsoft/aspire/pull/20248> |
| PR | #19486 | Install Aspire extensions alongside agent skills | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/19486> |
| PR | #18406 | [Automated] Update dependencies | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18406> |
| PR | #20154 | Merge release/13.5 to main after v13.5.4 release | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20154> |
| PR | #19589 | Update PackageValidationBaselineVersion to 13.5.2 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19589> |
| PR | #19482 | Update PackageValidationBaselineVersion to 13.5.0 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19482> |
| PR | #19684 | Update PackageValidationBaselineVersion to 13.5.3 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19684> |
| PR | #19558 | Update PackageValidationBaselineVersion to 13.5.1 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19558> |
| PR | #19852 | Bump the github-actions group across 1 directory with 13 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19852> |
| PR | #18519 | Add Aspire.Hosting.Azure.Azd: import existing azd projects | closed | davidfowl | <https://github.com/microsoft/aspire/pull/18519> |
| Issue | #20417 | Hosted Blazor (ProxyBlazorService/ProxyBlazorTelemetry) crashes the AppHost on .NET 10 SDK: ResolveWebAssemblyProjectReferences target missing | open | eerhardt | <https://github.com/microsoft/aspire/issues/20417> |
| Issue | #20418 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20418> |
| Issue | #20361 | [AspireE2E]Browser does not update automatically to reflect the change, and the browser will disconnect a while when `dotnet watch` for Aspire 13.6 project | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/20361> |
| Issue | #20415 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20415> |
| Issue | #20393 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20393> |
| Issue | #20409 | [automated] Track current-main CI rerun decision history for reporting | open | radical | <https://github.com/microsoft/aspire/issues/20409> |
| Issue | #20367 | CI failing on `release/13.6` | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20367> |
| Issue | #20402 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20402> |
| Issue | #20394 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20394> |
| Issue | #20397 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20397> |
| Issue | #20398 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20398> |
| Issue | #20340 | [automated] Add automatic reruns for current main CI failures | open | radical | <https://github.com/microsoft/aspire/issues/20340> |
| Issue | #20401 | Update Azure AI client integrations: retire OpenAI and Inference packages and add Extensions.OpenAI and Projects | open | eerhardt | <https://github.com/microsoft/aspire/issues/20401> |
| Issue | #20392 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20392> |
| Issue | #20389 | Only warn about CLI/SDK version skew when the CLI is older than the SDK | open | eerhardt | <https://github.com/microsoft/aspire/issues/20389> |
| Issue | #20386 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20386> |
| Issue | #20385 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20385> |
| Issue | #20384 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20384> |
| Issue | #20376 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20376> |
| Issue | #20329 | Claude Code telemetry hook runs (blocking) on every tool call — register with a narrow matcher and async | open | ASallergard-Magnet | <https://github.com/microsoft/aspire/issues/20329> |
| Issue | #20379 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20379> |
| Issue | #20378 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20378> |
| Issue | #20377 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20377> |
| Issue | #20285 | [CI Failure] Flaky: CanNewAndBuild(aspire-xunit, Net8) fails with Roslyn Method not found EncodingExtensions.TryGetMaxCharCount on macOS | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20285> |
| Issue | #20375 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20375> |
| Issue | #20373 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20373> |
| Issue | #20374 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20374> |
| Issue | #20372 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20372> |
| Issue | #20370 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20370> |
| Issue | #20331 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20331> |
| Issue | #20327 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20327> |
| Issue | #20371 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20371> |
| Issue | #20357 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20357> |
| Issue | #20343 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20343> |
| Issue | #20323 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20323> |
| Issue | #20369 | Scheduled workflow failing: Sync Main to Release 14.0 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20369> |
| Issue | #20227 | [CI Failure] Flaky: AzureServiceBusExtensionsTests.AzureServiceBusEmulatorResourceGeneratesConfigJsonOnlyChangedProperties times out during host shutdown (TaskCanceledException in DistributedApplication.StopAsync) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20227> |
| Issue | #20304 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20304> |
| Issue | #20365 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20365> |
| Issue | #20359 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20359> |
| Issue | #20358 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20358> |
| Issue | #20355 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20355> |
| Issue | #20352 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20352> |
| Issue | #20347 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20347> |
| Issue | #20346 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20346> |
| Issue | #20336 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20336> |
| Issue | #20321 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20321> |
| Issue | #20313 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20313> |
| Issue | #20310 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20310> |
| Issue | #20309 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20309> |
| Issue | #20297 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20297> |
| Issue | #20274 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20274> |
| Issue | #20271 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20271> |
| Issue | #20351 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20351> |
| Issue | #20350 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20350> |
| Issue | #20356 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20356> |
| Issue | #20353 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20353> |
| Issue | #20348 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20348> |
| Issue | #20349 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20349> |
| Issue | #20354 | [aw] Failure cascade detected | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20354> |
| Issue | #20344 | Add end-to-end coverage for NuGet credential providers in bundled CLI search and restore | open | eerhardt | <https://github.com/microsoft/aspire/issues/20344> |
| Issue | #20342 | Remove Aspire CLI Native AOT workarounds for NuGet's Newtonsoft.Json dependency | open | eerhardt | <https://github.com/microsoft/aspire/issues/20342> |
| Issue | #20338 | [automated] CI health: recurring main-branch failure patterns | open | radical | <https://github.com/microsoft/aspire/issues/20338> |
| Issue | #20332 | [automated] CI failure analysis rejects grouped flaky causes and skips issue updates | open | radical | <https://github.com/microsoft/aspire/issues/20332> |
| Issue | #20335 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) 'discovers the workspace AppHost' test observes transient 'Deploy AppHost' tree label instead of settled csproj name | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20335> |
| Issue | #20316 | `aspire stop` hangs indefinitely in CI, causing ~half of our main-branch test failures over the past 2 weeks | closed | afscrome | <https://github.com/microsoft/aspire/issues/20316> |
| Issue | #20320 | [Main CI Failure] Main branch CI failure at d6bd440a74f3445fcc7a26b1ea055d7967cd0b0e | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20320> |
| Issue | #20315 | AuxiliaryBackchannelService leaks the client socket (and hangs the connecting CLI) when a connection handler races AppHost shutdown | closed | afscrome | <https://github.com/microsoft/aspire/issues/20315> |
| Issue | #20272 | [CI Failure] Flaky: Hex1bNativePublishingTests.NativeAssetsKeepTheirLayoutAndContents fails parsing truncated/corrupted MSBuild JSON item output | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20272> |
| Issue | #20311 | [CLI] Debug output wraps Azure DevOps logging commands from child processes | open | eerhardt | <https://github.com/microsoft/aspire/issues/20311> |
| Issue | #20301 | Unable to use Pipeline API to add step dependent on dynamically generated resource provisioning step | open | tonyzahnle | <https://github.com/microsoft/aspire/issues/20301> |
| Issue | #20291 | Track potential macOS NativeAOT service launch failure | closed | danegsta | <https://github.com/microsoft/aspire/issues/20291> |
| Issue | #20275 | [AspireE2E] Failed to create Aspire 13.6 project with `error NU1102: Unable to find package Hex1b with version (>= 0.168.0)` | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/20275> |
| Issue | #20250 | Scheduled workflow failing: Labeler Cache Retention | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20250> |
| Issue | #20270 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20270> |
| Issue | #20245 | [Epic] Simplify Aspire agent setup and asset delivery | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20245> |
| Issue | #20246 | Synchronize canonical telemetry hooks from released source | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20246> |
| Issue | #20292 | Bind `RedisCacheOptions` to config section when using `Aspire.StackExchange.Redis.DistributedCaching` | open | julealgon | <https://github.com/microsoft/aspire/issues/20292> |
| Issue | #20286 | Validate .NET 11 RC1 file-new and basic Aspire scenarios for 13.6 | open | joperezr | <https://github.com/microsoft/aspire/issues/20286> |
| Issue | #20232 | Support Dev Tunnel login, account switching, and reauthentication through dashboard terminals | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20232> |
| Issue | #20253 | Blazor WASM Aspire specific port and base ref config options. | open | SNiedinger | <https://github.com/microsoft/aspire/issues/20253> |
| Issue | #20229 | [AspireE2E][macOS][aspire CLI] `dotnet watch` failed to connect the AppHost after 120s timed out on macOS | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/20229> |
| Issue | #20259 | [automated] Signed Native AOT Dashboard fails to load bundled libraries on macOS 26 | open | radical | <https://github.com/microsoft/aspire/issues/20259> |
| Issue | #20284 | [CI Failure] Flaky: MauiBuildQueueTests.CancelQueuedResource_CompletesGracefullyAndDoesNotAcquireSemaphore asserts exact exception type but sometimes gets TaskCanceledException instead of OperationCanceledException | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20284> |
| Issue | #20277 | Labeller Job Failing | closed | afscrome | <https://github.com/microsoft/aspire/issues/20277> |
| Issue | #20256 | Azure App Service managed dashboard displays 9.5.2 instead of expected 13.5 | open | chuanboz | <https://github.com/microsoft/aspire/issues/20256> |
| Issue | #20276 | Keycloak resource should configure OpenTelemetry export by default | open | afscrome | <https://github.com/microsoft/aspire/issues/20276> |
| Issue | #20264 | Preserve callable semantics and type relationships in ATS | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20264> |
| Issue | #20265 | Make the ATS JSON dump preserve captured public metadata | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20265> |
| Issue | #20267 | Expose ATS export completeness, exclusions, and diagnostics | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20267> |
| Issue | #20266 | Complete structured metadata in the canonical TypeScript API export | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20266> |
| Issue | #20268 | Include the complete public TypeScript SDK surface in API exports | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20268> |
| Issue | #20263 | Preserve ATS documentation during capture and SDK generation | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20263> |
| Issue | #20258 | [Epic] Complete ATS API exports | open | IEvangelist | <https://github.com/microsoft/aspire/issues/20258> |
| Issue | #20257 | [Homebrew] Deprecation notice for "the `verified` parameter in the `url` stanza is deprecated" | open | tebeco | <https://github.com/microsoft/aspire/issues/20257> |
| Issue | #20224 | [Failing tests]: Service Bus emulator configuration tests fail during shutdown (OnlyChangedProperties and WithCustomizations) | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20224> |
| Issue | #20247 | Redesign agent init around independent assets and selected clients | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20247> |
| Issue | #20241 | [CI Failure] Flaky: Aspire.Azure.Storage.Queues.Tests ConformanceTests.TracingEnablesTheRightActivitySource(_Keyed) RemoteExecutor hangs due to Azure Identity IMDS credential probes on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20241> |
| Issue | #20239 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20239> |
| Issue | #20238 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20238> |
| Issue | #20237 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20237> |
| Issue | #20235 | [aw] Repo Pulse — Daily Report reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20235> |
| Issue | #20234 | [CI Failure] SQL Server 2022 Testcontainer exits with code 1 via handle-crash.sh, breaking EF Core/SqlClient tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20234> |
| Issue | #20228 | [AspireE2E][macOS]` dev.localhost` URL can't be open on Safari browser on macOS | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/20228> |
| Issue | #20226 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20226> |
| Issue | #20222 | Fine-tune terminal scrollbars and the “Return to live” UI | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20222> |
| Issue | #20221 | Polish terminal focus borders and show the F6 hint only while focused | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20221> |
| Issue | #20000 | [CLI] Add shell completions and configure them during installation | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/20000> |
| Issue | #19593 | Better error message needed for too old Docker CLI after updating to Aspire 13.5.0 | closed | normj | <https://github.com/microsoft/aspire/issues/19593> |
| Issue | #18652 | Unclear error if executable working directory does not exist | closed | afscrome | <https://github.com/microsoft/aspire/issues/18652> |
| Issue | #19663 | Aspire 13.4.x fails to run in CI servers running RHEL 8.10 (/lib64/libc.so.6: version `GLIBC_2.32' not found) | closed | almostchristian | <https://github.com/microsoft/aspire/issues/19663> |
| Issue | #20204 | System.InvalidOperationException: Step 'publish-manifest' failed: Collection was modified; enumeration operation may not execute. | closed | paulomorgado | <https://github.com/microsoft/aspire/issues/20204> |
| Issue | #11603 | Have Mangement UIs add `Manage` links to the resources they manage | closed | afscrome | <https://github.com/microsoft/aspire/issues/11603> |
| Issue | #19606 | WithTerminal executables produce DcpExecutor errors when stdout log streaming starts | closed | davidfowl | <https://github.com/microsoft/aspire/issues/19606> |
| Issue | #18962 | ` Service XYZ should have valid address at this point` | closed | afscrome | <https://github.com/microsoft/aspire/issues/18962> |
| Issue | #15252 | `aspire update --self` doesn't update `.config/dotnet-tools.json` | closed | ElanHasson | <https://github.com/microsoft/aspire/issues/15252> |
| Issue | #1719 | Aspire dashboard + AOT | closed | JamesNK | <https://github.com/microsoft/aspire/issues/1719> |
| Issue | #20215 | Visual Studio cannot launch file-based C# resources after fallback removal | closed | Copilot | <https://github.com/microsoft/aspire/issues/20215> |
| Issue | #14828 | Polyglot ConfigureInfrastructure for Azure resources | closed | eerhardt | <https://github.com/microsoft/aspire/issues/14828> |
| Issue | #19454 | [automated] Fix main CI failures being filed as PR infrastructure issues | closed | radical | <https://github.com/microsoft/aspire/issues/19454> |
| Issue | #20122 | [CI Failure] Flaky: VS Code extension E2E dynamic debug configuration test teardown fails with EBUSY resource busy/locked on Windows temp workspace rmdir | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20122> |
| Issue | #19896 | Project resource waits on itself when referencing its own container-to-host endpoint | closed | Niksson | <https://github.com/microsoft/aspire/issues/19896> |
| Issue | #19976 | Sign and bundle hex1bpty.exe for AppHost-owned terminals | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19976> |
| Issue | #18828 | Provide client side intégration to Kafka with Dekaf | closed | g7ed6e | <https://github.com/microsoft/aspire/issues/18828> |
| Issue | #17745 | Race condition in resource eventing - OnResourceStopped fires twice and breaks lifecycle handlers | closed | Lexy2 | <https://github.com/microsoft/aspire/issues/17745> |
| Issue | #19935 | [CI Failure] Flaky: VS Code extension E2E (Windows, winui-debug) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19935> |
| Issue | #19576 | [CI Failure] Flaky: VS Code extension E2E (Windows, dynamic-debug-configuration) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19576> |
| Issue | #18982 | Resources context menu adds invalid aria-expanded to layout container | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18982> |
| Issue | #13937 | Update icon for downloading Console Logs in dashboard | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/13937> |
| Issue | #20185 | [CI Failure] Flaky: VS Code extension dynamic debug configuration E2E teardown fails with EBUSY resource busy/locked on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20185> |
| Issue | #20101 | [CI Failure] Aspire.Cli.Tests (macos-latest) job fails with generic exit code 2, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20101> |
| Issue | #19783 | [Dashboard] Mark historical resource states and endpoint links as snapshots | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19783> |
| Issue | #19602 | [Dashboard] FluentMenu null JS object reference intermittently terminates Blazor circuit in 13.5.2 | closed | davidfowl | <https://github.com/microsoft/aspire/issues/19602> |
| Issue | #19546 | Upgrading from 13.2.4 to 13.5 yields dashboard warning about LocalBrowserStorage | closed | oising | <https://github.com/microsoft/aspire/issues/19546> |
| Issue | #19013 | Install GHCP App canvases with `aspire agent init` | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19013> |
| Issue | #19569 | `aspire stop --force` not wiping volumes | closed | humleflue | <https://github.com/microsoft/aspire/issues/19569> |
| Issue | #19888 | Add Aspire-owned terminal service and dashboard terminal experience | closed | Copilot | <https://github.com/microsoft/aspire/issues/19888> |
