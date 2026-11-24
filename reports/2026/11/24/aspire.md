# microsoft/aspire *(詳細モード)*

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 48 |
| オープン中の新規 PR     | 55 |
| クローズ (未マージ) PR  | 17 |
| 新規 Issue              | 77 |
| クローズ Issue          | 31 |
| 主要コントリビューター  | JamesNK, aspire-repo-bot[bot], IEvangelist, radical, dotnet-oneloc-localization[bot], karolz-ms |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更候補** [#22452](https://github.com/microsoft/aspire/pull/22452) — MySqlConnector を 3.0.0へ更新。AppHost の MySQL 依存を更新する利用者は互換性と接続 API を確認してください。
- **⚠ 移行対象** [#22458](https://github.com/microsoft/aspire/pull/22458) — obsolete AppHost SDK を `aspire update`で移行する変更。package-based AppHostを使う開発者は更新前に移行差分とビルド警告 ASPIRE012 を確認してください。
- **⚠ 破壊的変更候補** [#22189](https://github.com/microsoft/aspire/pull/22189) — `Aspire.Hosting.Dotnet` に正規 .NET CLI tool API を追加。新旧 API の扱いが変わる可能性があるため、該当拡張を使う開発者は PR の互換性を確認してください。
- [#21118](https://github.com/microsoft/aspire/pull/21118) — AKS ノードプールの OS SKU を設定可能にした変更は、AKS 向け AppHost を保守するチームの確認対象です。

## このリポジトリの要点

対象期間はダッシュボードの改善と操作性の統一が中心です。テレメトリ API の制限検証、概要画面の読み込み高速化、サイドバーとステータスカードの統一がマージされました。
AppHost の SDK 移行、MySqlConnector 3.0、静的サイトの SPA fallback など、利用者側で互換性確認が必要な変更も継続中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#22527](https://github.com/microsoft/aspire/pull/22527) — Restore dashboard text visualizer controls

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +85 / -79
- マージ日時 (UTC): `2026-11-23 23:56:26`

**変更概要**

ダッシュボードのテキストビジュアライザーで、操作コントロールとスタイルを再追加しました。ダイアログと翻訳リソースを含む UI 層の変更で、テキスト表示機能を使う開発者の操作性が改善されます。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Dialogs/TextVisualizerDialog.razor` | 20 | 22 |
| `src/Aspire.Dashboard/Components/Dialogs/TextVisualizerDialog.razor.css` | 4 | 0 |
| `src/Aspire.Dashboard/README.md` | 2 | 1 |
| `src/Aspire.Dashboard/Resources/Dialogs.Designer.cs` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/Dialogs.resx` | 2 | 2 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.cs.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.de.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.es.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.fr.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.it.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ja.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ko.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.pl.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.pt-BR.xlf` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ru.xlf` | 3 | 3 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `9f87d3b` Restore dashboard text visualizer controls

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 C# API の変更はありません。Razor コンポーネントとローカライズリソースの表示制御を復元する UI 内変更で、破壊的変更はありません。

**既存利用者への影響**

既存利用者は移行不要です。更新後にテキストビジュアライザーを操作し、表示と操作が復元されているか確認してください。

### [#22533](https://github.com/microsoft/aspire/pull/22533) — Validate dashboard telemetry API limits

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +107 / -0
- マージ日時 (UTC): `2026-11-23 23:35:44`

**変更概要**

テレメトリ API に件数や期間などの制限値検証を追加し、不正なリクエストが予期せぬ負荷や例外を引き起こさないよう堅牢化しました。境界値を検証するテストも追加されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/DashboardEndpointsBuilder.cs` | 30 | 0 |
| `tests/Aspire.Dashboard.Tests/DashboardEndpointsBuilderTests.cs` | 77 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `9661370` Validate dashboard telemetry API limits

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

外部公開 API のシグネチャ変更はありません。エンドポイントの入力検証とテスト追加が中心です。

**既存利用者への影響**

通常利用者は移行不要です。独自クライアントが API を直接使う場合は、許容上限とエラー応答を確認してください。

### [#22534](https://github.com/microsoft/aspire/pull/22534) — Reduce dashboard Summary and resource Overview load times

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +1139 / -317
- マージ日時 (UTC): `2026-11-23 23:34:16`

**変更概要**

Summary と Resource Overview の読み込み処理を高速化し、選択時のテレメトリ取得を前倒ししながら不要な更新を削減しました。ブラウザー保存やログ深刻度集計、削除済みログの処理も見直されています。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/dashboard-http-api.md` | 1 | 1 |
| `src/Aspire.Dashboard/Components/Controls/ApplicationSummary.razor.cs` | 170 | 135 |
| `src/Aspire.Dashboard/Components/Controls/Chart/LiveMetricTiles.razor` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Controls/Chart/LiveSparklinesBase.cs` | 40 | 8 |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor.cs` | 24 | 17 |
| `src/Aspire.Dashboard/Components/Pages/ResourceOverview.razor.cs` | 91 | 89 |
| `src/Aspire.Dashboard/Model/BrowserStorage/ILocalStorage.cs` | 13 | 0 |
| `src/Aspire.Dashboard/Model/BrowserStorage/LocalBrowserStorage.cs` | 57 | 7 |
| `src/Aspire.Dashboard/Model/StructuredLogsViewModel.cs` | 0 | 4 |
| `src/Aspire.Dashboard/Otlp/Storage/ITelemetryRepository.cs` | 1 | 0 |
| `src/Aspire.Dashboard/Otlp/Storage/OverviewLogs.cs` | 13 | 0 |
| `src/Aspire.Dashboard/Otlp/Storage/SqliteTelemetryRepository.Logs.cs` | 110 | 16 |
| `src/Aspire.Dashboard/Otlp/Storage/SqliteTelemetryRepository.cs` | 2 | 0 |
| `src/Aspire.Dashboard/Serialization/DashboardJsonSerializerContext.cs` | 1 | 0 |
| `src/Aspire.Dashboard/wwwroot/js/app.js` | 4 | 0 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `da097db` Load overview telemetry immediately on selection
- `87b99a2` Reduce dashboard overview loading work
- `c33e6a9` Make local storage snapshot lookups synchronous
- `744275a` Coalesce concurrent resource overview refreshes
- `3193716` Exclude unspecified severities from dashboard error counts
- `8c64c05` Explain why Graph reload limitation is left unchanged
- `77e17f8` Exclude unspecified logs from severity thresholds
- `1cfac40` Skip log preview rows for deleted resources
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開インターフェイスを置き換える大規模な API 変更ではなく、内部リポジトリとブラウザー保存処理の最適化が中心です。破壊的変更はありません。

**既存利用者への影響**

ダッシュボード利用者は移行不要です。概要画面のロード時間とフィルター結果を確認してください。

### [#22524](https://github.com/microsoft/aspire/pull/22524) — Unify dashboard sidebar group headers

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +466 / -384
- マージ日時 (UTC): `2026-11-23 23:20:39`

**変更概要**

リソース一覧のサイドバーでグループヘッダーを統一し、選択解除や範囲選択の挙動を整合させました。グループ選択と行順序が一貫して処理されます。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor` | 164 | 211 |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor.cs` | 109 | 48 |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor.css` | 7 | 113 |
| `src/Aspire.Dashboard/Model/ResourceMenuBuilder.cs` | 13 | 3 |
| `src/Aspire.Dashboard/README.md` | 9 | 2 |
| `tests/Aspire.Dashboard.Components.Tests/Layout/ResourcesLayoutTests.cs` | 159 | 2 |
| `tests/Aspire.Dashboard.Playwright.Tests/Integration/Playwright/ResourcePaneInteractionTests.cs` | 5 | 5 |

</details>

<details><summary>コミット (3 件)</summary>

- `29bf3ed` Unify dashboard sidebar group headers
- `a10a05d` Preserve dashboard group deselection
- `fda6c41` Match dashboard range selection to sidebar row order

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。Razor コンポーネントと `ResourceMenuBuilder` を中心に UI モデルとテストを更新しています。

**既存利用者への影響**

移行作業は不要です。リソースグループの選択・解除と範囲選択を確認してください。

### [#22517](https://github.com/microsoft/aspire/pull/22517) — Share the Status card across resource and parameter Overview

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +596 / -388
- マージ日時 (UTC): `2026-11-23 23:13:15`

**変更概要**

リソースとパラメーターの Overviewで共通の Statusカードを利用し、表示を統一しました。メタデータやソース情報の露出も制限し、拡張ターミナルとの整合性を改善しています。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/GridValue.razor` | 3 | 2 |
| `src/Aspire.Dashboard/Components/Controls/GridValue.razor.css` | 3 | 3 |
| `src/Aspire.Dashboard/Components/Controls/OverviewStatusCard.razor` | 55 | 0 |
| `src/Aspire.Dashboard/Components/Controls/OverviewStatusCard.razor.cs` | 139 | 0 |
| `src/Aspire.Dashboard/Components/Controls/OverviewStatusCard.razor.css` | 73 | 0 |
| `src/Aspire.Dashboard/Components/Controls/ParameterOverview.razor` | 1 | 92 |
| `src/Aspire.Dashboard/Components/Controls/ParameterOverview.razor.cs` | 1 | 27 |
| `src/Aspire.Dashboard/Components/Controls/ParameterOverview.razor.css` | 2 | 129 |
| `src/Aspire.Dashboard/Components/Controls/PropertyGrid.razor` | 4 | 2 |
| `src/Aspire.Dashboard/Components/Controls/PropertyGrid.razor.cs` | 7 | 0 |
| `src/Aspire.Dashboard/Components/Controls/PropertyGrid.razor.css` | 46 | 0 |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor` | 11 | 6 |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor.cs` | 1 | 0 |
| `src/Aspire.Dashboard/Components/Pages/ResourceOverview.Details.cs` | 1 | 7 |
| `src/Aspire.Dashboard/Components/Pages/ResourceOverview.razor` | 3 | 68 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `06d6b0a` Share the Status card across resource and parameter Overview
- `37796c4` Show raw Status values and widen Overview value columns
- `1ef7669` Hide property grid visualizers after mouse focus
- `2468213` Limit metadata in parameter Status
- `2bae400` Hide resource Status in expanded terminal mode
- `37865e9` Fix Status row keys and sensitive Source tooltips
- `bbe170a` Preserve Source reveal state across resource updates
- `51ce6b9` Fix Native AOT publishing for the Overview Status card

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

主に Razor UI コンポーネントと CSS の再構成で、新しい `OverviewStatusCard` を追加しています。公開ライブラリ API の変更は確認できません。破壊的変更はありません。

**既存利用者への影響**

移行作業は不要です。リソースとパラメーターの Status表示を確認し、独自レイアウトへの影響だけ確認してください。

### [#22514](https://github.com/microsoft/aspire/pull/22514) — Color resource icons in the dashboard resource list

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +6 / -1
- マージ日時 (UTC): `2026-11-23 23:12:49`

**変更概要**

ダッシュボードのリソース一覧アイコンにリソース種別に応じた色を付けました。識別しやすさを向上させる小規模な UI 変更です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor` | 5 | 1 |
| `src/Aspire.Dashboard/Components/Layout/ResourcesLayout.razor.css` | 1 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `248103d` Color resource icons in the dashboard resource list

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。Razor と CSS の表示スタイルだけを更新しています。

**既存利用者への影響**

移行作業は不要です。アイコン色を独自テーマやスタイルで上書きしている場合のみ見た目への影響を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #22468 | Fix Homebrew cask style validation in CI | radical | <https://github.com/microsoft/aspire/pull/22468> |
| #22219 | [release/17.0] Fix AppHost channel updates and restore diagnostics | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22219> |
| #22401 | [release/17.0] Fix Visual Studio debugging for Azure Functions projects | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22401> |
| #22515 | Hide dashboard hover controls after mouse clicks | JamesNK | <https://github.com/microsoft/aspire/pull/22515> |
| #22526 | Avoid unsupported WebAssembly task hosting in Windows coordinated builds | radical | <https://github.com/microsoft/aspire/pull/22526> |
| #22546 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3143436 | dotnet-oneloc-localization[bot] | <https://github.com/microsoft/aspire/pull/22546> |
| #22423 | Enable MapStaticAssets for fingerprinted immutable Dashboard static assets | 4dwaffle | <https://github.com/microsoft/aspire/pull/22423> |
| #22541 | Dashboard vNext: Allow resource to show multiple URLs if it fits the column | thimok | <https://github.com/microsoft/aspire/pull/22541> |
| #22496 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3143074 | dotnet-oneloc-localization[bot] | <https://github.com/microsoft/aspire/pull/22496> |
| #22529 | Select the latest telemetry in SQLite for /api/telemetry reads | IEvangelist | <https://github.com/microsoft/aspire/pull/22529> |
| #22391 | [release/17.0] Default the dashboard resource list to Comfortable | JamesNK | <https://github.com/microsoft/aspire/pull/22391> |
| #22388 | [release/17.0] Avoid highlighting dashboard menu items on pointer open | JamesNK | <https://github.com/microsoft/aspire/pull/22388> |
| #22494 | Upgrade gh-aw to v1.2.2 and recompile agentic workflows | IEvangelist | <https://github.com/microsoft/aspire/pull/22494> |
| #22295 | Use consistent tray quit label | IEvangelist | <https://github.com/microsoft/aspire/pull/22295> |
| #22428 | [automated] Prioritize fixes-ci and urgent-review PRs in the team canvas | radical | <https://github.com/microsoft/aspire/pull/22428> |
| #21431 | Dashboard: preserve resource selection in telemetry pages and metric charts | davidfowl | <https://github.com/microsoft/aspire/pull/21431> |
| #22155 | Document Npgsql EF major-version dependency transitions | eerhardt | <https://github.com/microsoft/aspire/pull/22155> |
| #22482 | [release/17.0] Update DCP to 0.27.5 for Aspire 17.0.1 | karolz-ms | <https://github.com/microsoft/aspire/pull/22482> |
| #22459 | [automated] Reacquire the CLI path rejection notification before clicking | radical | <https://github.com/microsoft/aspire/pull/22459> |
| #22478 | [release/17.0] Keep the dashboard on home when the window narrows | IEvangelist | <https://github.com/microsoft/aspire/pull/22478> |
| #22463 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/22463> |
| #22444 | [release/17.0] Suppress AppHost CLI run hook for MTP tests | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22444> |
| #22424 | [release/17.0] Fix dashboard tooltips over non-localhost HTTP | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22424> |
| #22409 | [release/17.0] Stabilize CLI update E2E tests | karolz-ms | <https://github.com/microsoft/aspire/pull/22409> |
| #22395 | Keep the dashboard on home when the window narrows | IEvangelist | <https://github.com/microsoft/aspire/pull/22395> |
| #22469 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3141445 | dotnet-oneloc-localization[bot] | <https://github.com/microsoft/aspire/pull/22469> |
| #22420 | Improve tag grouping in the Dashboard resource graph | JamesNK | <https://github.com/microsoft/aspire/pull/22420> |
| #22413 | Add an overview for telemetry sources in the dashboard | JamesNK | <https://github.com/microsoft/aspire/pull/22413> |
| #22305 | Improve CLI configuration and template source logging | JamesNK | <https://github.com/microsoft/aspire/pull/22305> |
| #22399 | Show relative time in dashboard capture-paused indicators | MuhammadBilal64 | <https://github.com/microsoft/aspire/pull/22399> |
| #22434 | [release/17.0] Bump version to 17.0.1 | karolz-ms | <https://github.com/microsoft/aspire/pull/22434> |
| #22350 | Use conventional Redis TLS and non-TLS target ports | danegsta | <https://github.com/microsoft/aspire/pull/22350> |
| #22397 | Update dashboard to FluentUI 5.1 | sebastienros | <https://github.com/microsoft/aspire/pull/22397> |
| #22059 | Clarify CLI source validation intent | JamesNK | <https://github.com/microsoft/aspire/pull/22059> |
| #22133 | Fix native code generation during design-time builds | JamesNK | <https://github.com/microsoft/aspire/pull/22133> |
| #22381 | Suppress AppHost CLI run hook for MTP tests | afscrome | <https://github.com/microsoft/aspire/pull/22381> |
| #22372 | [telemetry] Sync telemetry with microsoft/aspire-skills#168 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22372> |
| #22375 | Merge release/17.0 to main after v17.0.0 release | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22375> |
| #22403 | Merge release/17.0 back into main | joperezr | <https://github.com/microsoft/aspire/pull/22403> |
| #22408 | Update OpenTelemetry packages to 1.21.0 | eerhardt | <https://github.com/microsoft/aspire/pull/22408> |
| #22351 | Surface staging channel guidance during CLI self-update | JamesNK | <https://github.com/microsoft/aspire/pull/22351> |
| #22414 | Fix dashboard tooltips over non-localhost HTTP | JamesNK | <https://github.com/microsoft/aspire/pull/22414> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #22462 | Resolve the Aspire CLI bundle at runtime and harden bundle setup failures | open | danegsta | <https://github.com/microsoft/aspire/pull/22462> |
| PR | #22532 | Polish the dashboard resource selector | open | JamesNK | <https://github.com/microsoft/aspire/pull/22532> |
| PR | #22556 | Avoid managed PDB conversion for Windows CLI bundles | open | radical | <https://github.com/microsoft/aspire/pull/22556> |
| PR | #22547 | Dashboard: render header resource tabs as links and move narrow tabs into the nav menu | open | JamesNK | <https://github.com/microsoft/aspire/pull/22547> |
| PR | #22587 | [release/17.0] fix(release): Allow WinGet submission from any release-pipeline branch, matching NuGet/npm/Homebrew | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22587> |
| PR | #22551 | Link Overview activity to traces and speed up telemetry time filters | open | JamesNK | <https://github.com/microsoft/aspire/pull/22551> |
| PR | #22493 | fix(release): Allow WinGet submission from any release-pipeline branch, matching NuGet/npm/Homebrew | open | radical | <https://github.com/microsoft/aspire/pull/22493> |
| PR | #22561 | Improve telemetry navigation on the dashboard resource overview | open | JamesNK | <https://github.com/microsoft/aspire/pull/22561> |
| PR | #22579 | Flag OTLP-configured resources that have sent no telemetry in describe and MCP list_resources | open | sebastienros | <https://github.com/microsoft/aspire/pull/22579> |
| PR | #22586 | Fix release browser-debugger E2E restore failing on unstabilized Aspire.Hosting.Blazor | open | radical | <https://github.com/microsoft/aspire/pull/22586> |
| PR | #22450 | Regenerate resource designer files | open | JamesNK | <https://github.com/microsoft/aspire/pull/22450> |
| PR | #22584 | [release/17.0] Fix Homebrew cask style validation in CI | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22584> |
| PR | #22583 | Add aspire stop --wait to wait for resource teardown | open | sebastienros | <https://github.com/microsoft/aspire/pull/22583> |
| PR | #22576 | [release/17.0] Avoid unsupported WebAssembly task hosting in Windows coordinated builds | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22576> |
| PR | #22582 | Write an AGENTS.md start flow from aspire new and aspire agent init | open | sebastienros | <https://github.com/microsoft/aspire/pull/22582> |
| PR | #22580 | MCP: compact default responses for list_traces, list_structured_logs, list_console_logs and list_resources | open | sebastienros | <https://github.com/microsoft/aspire/pull/22580> |
| PR | #22581 | CLI: drop table borders and row dashboard links when stdout is not a terminal | open | sebastienros | <https://github.com/microsoft/aspire/pull/22581> |
| PR | #22553 | Centralize temporary storage allocation behind an internal helper | open | mitchdenny | <https://github.com/microsoft/aspire/pull/22553> |
| PR | #22487 | Fix flaky File.Replace failure in CLI agent init on Windows | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22487> |
| PR | #22471 | Keep dashboard resource ordering stable and protect saved customizations | open | JamesNK | <https://github.com/microsoft/aspire/pull/22471> |
| PR | #22573 | Go SDK: send an empty collection for a nil required slice or map | open | MustafaSabur | <https://github.com/microsoft/aspire/pull/22573> |
| PR | #22574 | Store the resource when a polyglot callback adds a resource builder | open | MustafaSabur | <https://github.com/microsoft/aspire/pull/22574> |
| PR | #22460 | Show active Azure provisioning in the dashboard | open | sebastienros | <https://github.com/microsoft/aspire/pull/22460> |
| PR | #22516 | Dashboard: Share row actions and show up to two highlighted parameter commands | open | JamesNK | <https://github.com/microsoft/aspire/pull/22516> |
| PR | #22568 | Parallelize independent browser storage reads during Dashboard initialization | open | 4dwaffle | <https://github.com/microsoft/aspire/pull/22568> |
| PR | #22557 | [automated] Await the dashboard message bar close callback independently | open | radical | <https://github.com/microsoft/aspire/pull/22557> |
| PR | #22554 | Document how to run playground apps from source | open | JamesNK | <https://github.com/microsoft/aspire/pull/22554> |
| PR | #22555 | Update Hex1b to 0.176.0 | open | mitchdenny | <https://github.com/microsoft/aspire/pull/22555> |
| PR | #22470 | Update milestone changelog for 17.1 | open | JamesNK | <https://github.com/microsoft/aspire/pull/22470> |
| PR | #22548 | Update Npgsql dependencies to stable .NET 11-aligned versions | open | ndavidson7 | <https://github.com/microsoft/aspire/pull/22548> |
| PR | #22512 | Avoid highlighting dashboard menu items on pointer open | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22512> |
| PR | #22513 | Default the dashboard resource list to Comfortable | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22513> |
| PR | #22446 | DO NOT MERGE: Investigate Windows Blazor WebAssembly task host selection | open | radical | <https://github.com/microsoft/aspire/pull/22446> |
| PR | #22520 | [automated] DO NOT MERGE: Diagnose Ubuntu Go codegen timeouts | open | radical | <https://github.com/microsoft/aspire/pull/22520> |
| PR | #22521 | [automated] Wait for native provider cleanup in replacement test | open | radical | <https://github.com/microsoft/aspire/pull/22521> |
| PR | #22519 | [DO NOT MERGE] Reproduce native provider capability cleanup on Windows | open | radical | <https://github.com/microsoft/aspire/pull/22519> |
| PR | #22445 | Support wildcard Aspire.Hosting package versions in the CLI | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/22445> |
| PR | #22475 | Bump the github-actions group across 1 directory with 10 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22475> |
| PR | #22501 | Update System.CommandLine to 3.0.0 | open | eerhardt | <https://github.com/microsoft/aspire/pull/22501> |
| PR | #22492 | Use .slnx solution files in project templates | open | eerhardt | <https://github.com/microsoft/aspire/pull/22492> |
| PR | #22495 | pr-docs-check: deterministic docs PR assignees, reviewers, and mentions | open | IEvangelist | <https://github.com/microsoft/aspire/pull/22495> |
| PR | #22499 | DO NOT MERGE: Trace Windows Go fixture listener lifecycle | open | radical | <https://github.com/microsoft/aspire/pull/22499> |
| PR | #22458 | Migrate obsolete AppHost SDK during aspire update | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/22458> |
| PR | #22436 | Preserve unmodeled nested settings when rewriting aspire.config.json | open | karolz-ms | <https://github.com/microsoft/aspire/pull/22436> |
| PR | #22452 | Update MySqlConnector to 3.0.0 | open | eerhardt | <https://github.com/microsoft/aspire/pull/22452> |
| PR | #22479 | Fix dashboard toolbar overlapping resource name in constrained layouts | open | MuhammadBilal64 | <https://github.com/microsoft/aspire/pull/22479> |
| PR | #22474 | Bump the create-video group with 8 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22474> |
| PR | #22461 | Update French dashboard localization | open | sebastienros | <https://github.com/microsoft/aspire/pull/22461> |
| PR | #22447 | [automated] Wait for Stop delivery in the Windows tray smoke test | open | radical | <https://github.com/microsoft/aspire/pull/22447> |
| PR | #22433 | DO NOT MERGE: Trace Windows browser-debugger fixture build | open | radical | <https://github.com/microsoft/aspire/pull/22433> |
| PR | #22457 | [automated] [DO NOT MERGE] Diagnose Windows debugger VSIX downloads | open | radical | <https://github.com/microsoft/aspire/pull/22457> |
| PR | #22454 | Expose AppHost SDK version during project evaluation | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/22454> |
| PR | #22432 | Split automated dependency updates into OpenTelemetry, Azure, and other PRs | open | eerhardt | <https://github.com/microsoft/aspire/pull/22432> |
| PR | #22440 | [DO NOT MERGE] Diagnose Windows tray smoke Stop scheduling | open | radical | <https://github.com/microsoft/aspire/pull/22440> |
| PR | #22435 | Bump the npm group across 1 directory with 24 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22435> |
| PR | #22530 | Load resource summary and overview telemetry without the first refresh delay | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/22530> |
| PR | #22476 | DO NOT MERGE: Capture Go exit details on Windows debugger test failure | closed | radical | <https://github.com/microsoft/aspire/pull/22476> |
| PR | #22238 | [main] Ignore legacy nested feature flags in CLI configuration | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/22238> |
| PR | #22453 | [automated] [DO NOT MERGE] Diagnose Windows CLI-path rejection notification | closed | radical | <https://github.com/microsoft/aspire/pull/22453> |
| PR | #22451 | [automated] DO NOT MERGE: Diagnose Windows DCP startup timeout | closed | radical | <https://github.com/microsoft/aspire/pull/22451> |
| PR | #22477 | [automated] [DO NOT MERGE] Reproduce Windows rebuild stop failure | closed | radical | <https://github.com/microsoft/aspire/pull/22477> |
| PR | #22245 | Build(deps): Bump the github-actions group across 1 directory with 9 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22245> |
| PR | #22244 | Bump the create-video group with 8 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22244> |
| PR | #21406 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3121159 | closed | dotnet-oneloc-localization[bot] | <https://github.com/microsoft/aspire/pull/21406> |
| PR | #19771 | Fix dashboard run discovery and retention | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19771> |
| PR | #17074 | Added support for Custom Resources / CRDs to the Kubernetes publisher. | closed | cdbrown2018 | <https://github.com/microsoft/aspire/pull/17074> |
| PR | #22443 | Avoid Aspire CLI interception for MTP test applications | closed | DamianEdwards | <https://github.com/microsoft/aspire/pull/22443> |
| PR | #21839 | Detect Copilot AppImages before first launch | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/21839> |
| PR | #21736 | Build(deps): Bump the npm group across 1 directory with 25 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21736> |
| PR | #22227 | Build(deps): Bump node-forge from 1.4.0 to 1.4.3 in /extension | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22227> |
| PR | #18896 | Show unresolved parameters in resource state | closed | JamesNK | <https://github.com/microsoft/aspire/pull/18896> |
| PR | #22396 | Add a telemetry overview to the standalone dashboard | closed | 4dwaffle | <https://github.com/microsoft/aspire/pull/22396> |
| Issue | #22415 | Visual Studio run throws unhandled OptionsValidationException | open | thimok | <https://github.com/microsoft/aspire/issues/22415> |
| Issue | #22589 | Enable auto-update for aspire-skills marketplace registrations | open | ellahathaway | <https://github.com/microsoft/aspire/issues/22589> |
| Issue | #22588 | [CI Failure] VS Code resource-debug-tools E2E Go resource fails applying E2E control after traffic timeout on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22588> |
| Issue | #22538 | [CI Failure] Flaky: DashboardMessageBarTests.LinkAsAction_CloseOnLinkClick bUnit WaitForFailedException timeout | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22538> |
| Issue | #22490 | DnxPinned CLI bundle setup fails in Windows CI due to concurrent first-use sentinel access | open | afscrome | <https://github.com/microsoft/aspire/issues/22490> |
| Issue | #22455 | CI factory board: active work and items needing a human | open | radical | <https://github.com/microsoft/aspire/issues/22455> |
| Issue | #22585 | [CI Failure] release/17.0 VS Code extension E2E browser-debugger fixture restore fails: stable Aspire.Hosting.Blazor 17.0.1 not found (NU1103) | open | radical | <https://github.com/microsoft/aspire/issues/22585> |
| Issue | #22491 | ASPIRE009 fails build-only CI when Aspire CLI bundle is unavailable in Aspire 17 | open | afscrome | <https://github.com/microsoft/aspire/issues/22491> |
| Issue | #22441 | The 17.0 dashboard is not fully localized | open | Atulin | <https://github.com/microsoft/aspire/issues/22441> |
| Issue | #22549 | [Bug] Aspire 17.0 rejects WSLc container runtime during AppHost startup | open | Varorbc | <https://github.com/microsoft/aspire/issues/22549> |
| Issue | #22550 | AddDotnetProject fails with azd provision (DevOps Pipelines) | open | austinw-fineart | <https://github.com/microsoft/aspire/issues/22550> |
| Issue | #22486 | [VS Code] MCP server provider registers one `aspire agent mcp` per AppHost candidate, leaking hundreds of processes | open | IsmailHassani | <https://github.com/microsoft/aspire/issues/22486> |
| Issue | #22560 | Coordinated .NET build fails with MSB4166 on every second `aspire start` when MSBuild node reuse is on (Windows) | open | barclayadam | <https://github.com/microsoft/aspire/issues/22560> |
| Issue | #22510 | `aspire stop` returns before teardown; a start right after it adopts containers that are then removed | open | sebastienros | <https://github.com/microsoft/aspire/issues/22510> |
| Issue | #22506 | `aspire new` and `aspire agent init`: write an AGENTS.md beside the AppHost with the start flow (start, describe, wait <resource-name>) | open | sebastienros | <https://github.com/microsoft/aspire/issues/22506> |
| Issue | #22508 | CLI: drop table borders and dashboard links when stdout is not a terminal | open | sebastienros | <https://github.com/microsoft/aspire/issues/22508> |
| Issue | #22507 | MCP: list_traces and list_structured_logs fill the 8k-token budget on every call, and `search` does not shrink them | open | sebastienros | <https://github.com/microsoft/aspire/issues/22507> |
| Issue | #22509 | JavaScript resources get OTLP settings but export nothing until the app adds an SDK, and nothing says so | open | sebastienros | <https://github.com/microsoft/aspire/issues/22509> |
| Issue | #22497 | [CI Failure] Homebrew cask audit fails because /opt/homebrew/Library/Taps/homebrew/homebrew-cask is missing on runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22497> |
| Issue | #22578 | [CI Failure] Flaky: AspireRabbitMQLoggingTests.EndToEndLoggingTest fails with expected log filter not matched | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22578> |
| Issue | #22483 | [Azure Front Door] Add WAF policy support (WithWebApplicationFirewall) | open | thomhurst | <https://github.com/microsoft/aspire/issues/22483> |
| Issue | #22448 | DCP crashes when an existing state store is not owned by the administrator group | closed | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/22448> |
| Issue | #22559 | [13.6.5] Azure AppContainers deployment generates mismatched Bicep module filename for Redis Container App | open | amren1502129 | <https://github.com/microsoft/aspire/issues/22559> |
| Issue | #22569 | Go AppHost: AddExecutable with a nil args slice fails with "Missing required argument 'args'" | open | MustafaSabur | <https://github.com/microsoft/aspire/issues/22569> |
| Issue | #22570 | Polyglot AppHost: a parameter added in withArgsCallback or withEnvironmentCallback breaks Docker Compose publish | open | MustafaSabur | <https://github.com/microsoft/aspire/issues/22570> |
| Issue | #22571 | Support --launch-profile for Go and other guest AppHosts | open | MustafaSabur | <https://github.com/microsoft/aspire/issues/22571> |
| Issue | #22572 | Go AppHost: resources looked up from the app model come back as handles with no methods | open | MustafaSabur | <https://github.com/microsoft/aspire/issues/22572> |
| Issue | #22480 | [CI] Build broken on main — 20261119.9 | open | joperezr | <https://github.com/microsoft/aspire/issues/22480> |
| Issue | #22563 | Kafka `WithDataVolume` sets `KAFKA_LOG_DIRS` to the mount point; on a persistent volume with `lost+found` at its root the broker never starts | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22563> |
| Issue | #22564 | Kubernetes publish: the pod template carries no checksum of its ConfigMap and Secret, so `helm upgrade` with a changed value leaves the pods on the old one | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22564> |
| Issue | #22565 | Probes: no way to probe a port that is not an endpoint, and no TCP probe — two common containers end up with no readiness probe | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22565> |
| Issue | #22566 | Probes: no request headers on `WithHttpProbe`, so a service that filters hosts answers the kubelet's probe with 400 and is restarted forever | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22566> |
| Issue | #22567 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22567> |
| Issue | #22562 | SQL Database Container for SQL integration | open | hansmbakker | <https://github.com/microsoft/aspire/issues/22562> |
| Issue | #22558 | When will Aspire.Npgsql.EntityFrameworkCore.PostgreSQL support EF Core 11 GA? | open | bielu | <https://github.com/microsoft/aspire/issues/22558> |
| Issue | #22552 | [CI Failure] Windows native CLI build fails in SymStore Pdb2Pdb because aspire.pdb is used by another process | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22552> |
| Issue | #22466 | [CI Failure] Homebrew cask preparation fails when the Homebrew cask tap is missing | closed | radical | <https://github.com/microsoft/aspire/issues/22466> |
| Issue | #22537 | [CI Failure] VS Code extension E2E (Windows) Blazor browser-debugger test times out as resource enters FailedToStart | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22537> |
| Issue | #22543 | Kubernetes publish: an environment variable name that contains a dot produces a chart Helm cannot render | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22543> |
| Issue | #22545 | Kubernetes resource model: members the user did not set are serialized, and the API server rejects the manifest (Recreate strategy, lifecycle handlers) | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22545> |
| Issue | #22544 | Kubernetes publish: a deploy-time value that contains a secret is written to the ConfigMap (Azure PostgreSQL with password authentication) | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/22544> |
| Issue | #22542 | Add strongly typed Fluent UI icon names to AppHost APIs | open | thimok | <https://github.com/microsoft/aspire/issues/22542> |
| Issue | #22540 | A pre-connect resize can be stored after the connection is already live and never applied | open | soarkit | <https://github.com/microsoft/aspire/issues/22540> |
| Issue | #22536 | Feature: Add Workflow for Manual Version Bumps | open | taj54 | <https://github.com/microsoft/aspire/issues/22536> |
| Issue | #22539 | UTF-8 characters printed in console do not appear correctly | open | mostmand | <https://github.com/microsoft/aspire/issues/22539> |
| Issue | #22535 | TRX failures are missed when UnitTestResult is self-closing | open | soarkit | <https://github.com/microsoft/aspire/issues/22535> |
| Issue | #22430 | [CI Failure] VS Code extension E2E (Windows) Blazor browser-debugger hook times out waiting for resource to reach Running | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22430> |
| Issue | #22523 | AddDotnetProject calculates project relative path to AppHost executable path | closed | Lexy2 | <https://github.com/microsoft/aspire/issues/22523> |
| Issue | #22525 | [CI] Build broken on release/17.0 — 20261120.5 | open | joperezr | <https://github.com/microsoft/aspire/issues/22525> |
| Issue | #22426 | [Main CI Failure] Main branch CI failure at 4ad3cfe685bcf47d79c8d16d64fc4be6363280dd | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22426> |
| Issue | #22438 | [CI Failure] VS Code extension E2E prerequisite pinned VSIX download fails with connection forcibly closed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22438> |
| Issue | #22464 | [CI Failure] Windows resource-debug-tools E2E control command fails during debugger attach test | open | radical | <https://github.com/microsoft/aspire/issues/22464> |
| Issue | #22465 | [CI Failure] TypeScript SDK validation fails when npm cutoff excludes a required dependency | open | radical | <https://github.com/microsoft/aspire/issues/22465> |
| Issue | #22467 | [CI Failure] Linux analyzer build cannot restore pinned Microsoft.DotNet.Tar from dotnet-eng | open | radical | <https://github.com/microsoft/aspire/issues/22467> |
| Issue | #22504 | [CI Failure] VS Code resource-debug-tools E2E apphost start fails and resource waits time out on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22504> |
| Issue | #22503 | [CI Failure] VS Code WinUI debug E2E C# definition probe times out on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22503> |
| Issue | #22502 | [CI Failure] Intermittent NativeProviderClientTests replacement provider capability count mismatch on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22502> |
| Issue | #22505 | aspire describe: a `connect` entry per resource with the command that reaches it with its own client | open | sebastienros | <https://github.com/microsoft/aspire/issues/22505> |
| Issue | #22511 | [EPIC] Agent-facing CLI, MCP and run-mode improvements measured in the aspire-bench telemetry suite | open | sebastienros | <https://github.com/microsoft/aspire/issues/22511> |
| Issue | #22489 | Service Bus subscription rules are additive to $Default on Azure, so filters have no effect | open | thomhurst | <https://github.com/microsoft/aspire/issues/22489> |
| Issue | #22488 | Azure PostgreSQL: every referencing resource becomes a server Entra administrator | open | thomhurst | <https://github.com/microsoft/aspire/issues/22488> |
| Issue | #22431 | [CI Failure] Flaky: CLI path rejection E2E fails with Selenium stale element reference on notification action | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22431> |
| Issue | #22484 | [Azure Front Door] Support custom domains with managed certificates | open | thomhurst | <https://github.com/microsoft/aspire/issues/22484> |
| Issue | #22485 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22485> |
| Issue | #22481 | Allow configuring the default dashboard resource grouping through the AppHost | open | Chicoo | <https://github.com/microsoft/aspire/issues/22481> |
| Issue | #22473 | The CI/CD environment variable Parameters__nacos_password is not correctly mapped to Parameters:nacos-password. | open | youkezan | <https://github.com/microsoft/aspire/issues/22473> |
| Issue | #22472 | [CI Failure] Flaky: IntegrationHostProcessTests restart fails with exit-code file in use during process scope cleanup on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22472> |
| Issue | #22456 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22456> |
| Issue | #22449 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22449> |
| Issue | #22442 | Use `dotnet dnx` to acquire the Aspire CLI when the `dnx` shim isn't on PATH | open | afscrome | <https://github.com/microsoft/aspire/issues/22442> |
| Issue | #22422 | Validate resource tag names consistently in AppHost and Dashboard | open | JamesNK | <https://github.com/microsoft/aspire/issues/22422> |
| Issue | #22421 | 24 hours French translation | open | agriffard | <https://github.com/microsoft/aspire/issues/22421> |
| Issue | #22419 | Inherit resource tags from parent resources | open | adamint | <https://github.com/microsoft/aspire/issues/22419> |
| Issue | #22439 | Aspire 17 secrets file silently shadows .NET user secrets. `Manage User Secrets` and `dotnet user-secrets` no longer work for the AppHost. | open | Xen0byte | <https://github.com/microsoft/aspire/issues/22439> |
| Issue | #22425 | [CI] Build broken on main — 20261118.4 | closed | joperezr | <https://github.com/microsoft/aspire/issues/22425> |
| Issue | #22429 | [VSCode] Cannot set breakpoint in Aspire app | open | jtsom-do | <https://github.com/microsoft/aspire/issues/22429> |
| Issue | #22412 | Remove support for the legacy skillSources configuration key | open | JamesNK | <https://github.com/microsoft/aspire/issues/22412> |
| Issue | #22302 | [cif] CI automation group status | closed | radical | <https://github.com/microsoft/aspire/issues/22302> |
| Issue | #20478 | [CI Failure] Flaky: MongoDbReplicaSetFunctionalTests.VerifyMongoDBMultiNodeReplicaWithDataShouldWorkAcrossUsages fails to become healthy | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20478> |
| Issue | #20467 | [CI Failure] Flaky: NodeFunctionalTests.VerifyNpmAppWorks fails with NodeAppFixture InitializeAsync timeout on windows-latest | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20467> |
| Issue | #20488 | [CI Failure] Flaky: VS Code extension Java AppHost E2E breakpoint test times out waiting for 'catalog' resource endpoint | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20488> |
| Issue | #20172 | DcpOptions.CliPath and DashboardPath resolve to Linux package path although running on Windows | closed | wertzui | <https://github.com/microsoft/aspire/issues/20172> |
| Issue | #17175 | Graduate experimental Aspire APIs | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17175> |
| Issue | #20520 | [13.6] Community Toolkit upgrade issues | closed | afscrome | <https://github.com/microsoft/aspire/issues/20520> |
| Issue | #17608 | `aspire docs api get` returns stale signatures for TypeScript APIs | closed | joperezr | <https://github.com/microsoft/aspire/issues/17608> |
| Issue | #15576 | `aspire ps` hangs if app host has no url or on breakpoint | closed | afscrome | <https://github.com/microsoft/aspire/issues/15576> |
| Issue | #22366 | [17.0] Fix SDK response-file regression test isolation and test-selection routing | closed | joperezr | <https://github.com/microsoft/aspire/issues/22366> |
| Issue | #20959 | Container tunnel: after the tunnel-server's stream ends mid-session, DCP removes the client proxy container and never recreates it, so `aspire.dev.internal` stops resolving for the rest of the run | closed | MasteRaven | <https://github.com/microsoft/aspire/issues/20959> |
| Issue | #22406 | [automated] CI health work queue | closed | radical | <https://github.com/microsoft/aspire/issues/22406> |
| Issue | #20338 | [automated] CI health: recurring main-branch failure patterns | closed | radical | <https://github.com/microsoft/aspire/issues/20338> |
| Issue | #22270 | Dashboard vNext: show all URLs when this fits the screen | closed | thimok | <https://github.com/microsoft/aspire/issues/22270> |
| Issue | #21239 | [13.6.1] Dashboard metrics filter popup extends below viewport and hidden options cannot be scrolled into view | closed | shenxianovo | <https://github.com/microsoft/aspire/issues/21239> |
| Issue | #21419 | Dashboard: preserve resource selection in telemetry pages and metrics charts | closed | joperezr | <https://github.com/microsoft/aspire/issues/21419> |
| Issue | #22369 | [ci] Tracking work queue | closed | radical | <https://github.com/microsoft/aspire/issues/22369> |
| Issue | #22181 | Show relative time in dashboard capture-paused indicators | closed | JamesNK | <https://github.com/microsoft/aspire/issues/22181> |
| Issue | #22382 | MTP test projects referencing AppHost package launch Aspire CLI instead of tests | closed | afscrome | <https://github.com/microsoft/aspire/issues/22382> |
| Issue | #19862 | `aspire agent init` does not detect portable GitHub Copilot AppImage installations | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19862> |
| Issue | #22247 | Dashboard feedback notification asks why the user is switching back | closed | JamesNK | <https://github.com/microsoft/aspire/issues/22247> |
| Issue | #22120 | [Main CI Failure] Main branch CI failure at ec6206117c22b12ce677e09941199b196bea5bde | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22120> |
| Issue | #22191 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) tree action commands test cannot locate .monaco-menu | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22191> |
