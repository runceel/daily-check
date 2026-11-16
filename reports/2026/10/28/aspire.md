# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 41 |
| オープン中の新規 PR     | 38 |
| クローズ (未マージ) PR  | 41 |
| 新規 Issue              | 34 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | mitchdenny, aspire-repo-bot[bot], radical, joperezr, JamesNK, dependabot[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20261](https://github.com/microsoft/aspire/pull/20261) — Move terminal APIs into Aspire.Hosting.ApplicationModel （PR / merged / mitchdenny）
  `Aspire.Hosting.ApplicationModel` の terminal API 移動を取り込む利用者は、旧名前空間を参照するコードの更新が必要です。移行時に参照箇所を確認してください。
- **⚠ セキュリティ** [#21273](https://github.com/microsoft/aspire/pull/21273) — Update dependencies flagged by Component Governance （PR / merged / joperezr）
  Component Governance が指摘した依存関係の更新です。Aspire 利用者は該当バージョンと互換性を確認し、更新済みパッケージを使っていることを確認してください。
- **⚠ セキュリティ** [#20032](https://github.com/microsoft/aspire/pull/20032) — [auto-sec] Consolidate aspire dependency security remediations (75 alerts) （PR / merged / IEvangelist）
  Aspire を組み込む開発者は、75 件の依存関係セキュリティアラートに対する修正がマージ済みであることを踏まえ、利用中のパッケージを最新の修正版へ更新してください。
- **非推奨/廃止** [#21360](https://github.com/microsoft/aspire/pull/21360) — Deprecate AddProject and complete Project V2 migration （PR / open / karolz-ms）
  `AddProject` を利用する AppHost 開発者は、Project V2 移行と非推奨化の提案が未マージであることを踏まえ、移行方針・代替 API の確定を追跡してください。
- **非推奨/廃止** [#20594](https://github.com/microsoft/aspire/issues/20594) — Deprecate the Aspire.AppHost.Sdk （Issue / open / DamianEdwards）
  `Aspire.AppHost.Sdk` に依存する利用者は、非推奨化の提案を追跡し、SDK 移行の要否と移行先が決まり次第対応してください。
- **GA 昇格** [#21115](https://github.com/microsoft/aspire/issues/21115) — [Epic] Go AppHost GA （Issue / open / IEvangelist）
  Go AppHost の GA 化を検討する Epic がオープンです。Go AppHost の早期利用者は、GA 条件・サポート範囲の確定を引き続き確認してください。

## このリポジトリの要点

Aspire CLI の agent plugin 設定機能が大幅に拡充され、複数エージェントの構成・プラグイン管理を扱う実装がマージされました（PR #20946）。Go AppHost はシステム証明書信頼を既定とする変更が入り、Project V2 移行に伴う `AddProject`／`Aspire.AppHost.Sdk` の非推奨化案と Go AppHost GA 化が継続検討されています。依存関係のセキュリティ修正と開発テスト基盤の安定化も進んでいます。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#21291](https://github.com/microsoft/aspire/pull/21291) — test: Fix MSBuild diagnostics breaking property evaluation

- 作者: radical / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +26 / -6
- マージ日時 (UTC): `2026-10-25 13:15:06`

**変更概要**

MSBuild diagnostics がテスト内の property evaluation を壊す問題を解消するテスト基盤の修正です。build warning policy と Microsoft Testing Platform の評価テストを更新し、評価結果ファイル名の扱いと timeout／注入診断の説明を整えています。製品 API やアプリ実行時の動作を変える変更ではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Infrastructure.Tests/BuildWarningPolicyTests.cs` | 4 | 1 |
| `tests/Infrastructure.Tests/MicrosoftTestingPlatformTests.cs` | 22 | 5 |

</details>

<details><summary>コミット (3 件)</summary>

- `7d66a17` test: Fix MSBuild diagnostics breaking property evaluation
- `5066c5d` test: Use underscores in evaluation result filenames
- `ed92794` test: Explain timeout evaluation and injected diagnostics

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は `Infrastructure.Tests` のテストコードであり、コミットも評価結果ファイル名と診断・timeout テストの修正に限定されています。公開 API、製品の MSBuild property 契約に対する変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。リポジトリのテスト実行・診断検証の安定性に関する修正です。

### [#21273](https://github.com/microsoft/aspire/pull/21273) — Update dependencies flagged by Component Governance

- 作者: joperezr / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +45 / -56
- マージ日時 (UTC): `2026-10-23 21:39:34`

**変更概要**

Component Governance で指摘された依存関係を更新し、NuGet／Java／Python のバージョンロックを調整しています。更新対象は `Directory.Packages.props`、`eng/Versions.props`、各 playground の lockfile です。製品 API を変更する機能追加ではなく、依存関係の保守更新です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 1 | 1 |
| `eng/Versions.props` | 33 | 33 |
| `playground/FoundryAgentBasic/app/uv.lock` | 3 | 3 |
| `playground/JavaSpringBoot/catalog/pom.xml` | 2 | 13 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.PythonService/uv.lock` | 3 | 3 |
| `playground/python/uvicorn_app/uv.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `869dc93` Update dependencies flagged by Component Governance

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

NuGet、Maven、Python lockfile の依存バージョン更新で、Aspire の公開 API シグネチャや新しい抽象の追加はありません。個別パッケージのバージョン変更に伴う互換性確認が中心です。

**既存利用者への影響**

通常はアプリコードの移行不要ですが、依存関係を直接固定している利用者は更新バージョンと互換性を確認してください。

### [#21200](https://github.com/microsoft/aspire/pull/21200) — Default Go apps to System certificate trust

- 作者: aarsethio / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +100 / -0
- マージ日時 (UTC): `2026-10-28 00:02:47`

**変更概要**

Go AppHost のアプリが OS のシステム証明書ストアを信頼する構成を既定にし、プラットフォーム別の信頼スコープを明確にしています。コミットでは macOS／Windows で OS ルート証明書を維持し、Linux では従来どおり `Append` を既定とする調整と説明・テストを加えました。独自 CA を使う Go アプリの HTTPS 接続に影響します。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Go/GoHostingExtensions.cs` | 21 | 0 |
| `src/Aspire.Hosting.Go/README.md` | 6 | 0 |
| `tests/Aspire.Hosting.Go.Tests/AddGoAppTests.cs` | 73 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `2357948` Don't inject SSL_CERT_DIR into .NET projects on macOS by default
- `6233bc2` Keep system roots trusted with Append scope on macOS and Windows
- `7423a48` Default Go apps to System certificate trust instead of changing Append
- `a9917b5` Explain why Go apps use System certificate trust on every OS
- `0b6483b` Keep Append as the Go default on Linux and document certificate trust

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`GoHostingExtensions` に Go アプリの既定証明書信頼設定が追加されています。公開 API のシグネチャ変更ではなく、証明書ストアの既定値を調整する動作変更です（macOS／Windows は system trust、Linux は Append を維持）。

**既存利用者への影響**

通常の HTTPS 利用では移行不要です。独自 CA や証明書ディレクトリを前提とする Go アプリは、各 OS で信頼される証明書セットが意図どおりか確認してください。

### [#20946](https://github.com/microsoft/aspire/pull/20946) — Configure agent plugins

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +6999 / -1884
- マージ日時 (UTC): `2026-10-27 23:31:35`

**変更概要**

Aspire CLI で Claude Code、GitHub Copilot、OpenCode などの agent plugin を設定・選択する機能を拡張します。agent configuration／path のモデルを追加し、ローカル Aspire skills とリモート設定、プラグイン単位の上書き、設定公開時の権限検証を実装しています。CLI を通じてエージェントや skills を構成する開発者に関係する大規模変更です。

<details><summary>変更ファイル (76 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-config-sources.md` | 1 | 1 |
| `src/Aspire.Cli/Agents/AgentClient.cs` | 0 | 133 |
| `src/Aspire.Cli/Agents/AgentConfiguration.cs` | 262 | 0 |
| `src/Aspire.Cli/Agents/AgentEnvironment.cs` | 1 | 1 |
| `src/Aspire.Cli/Agents/AgentEnvironmentScanContext.cs` | 1 | 14 |
| `src/Aspire.Cli/Agents/AgentPath.cs` | 72 | 0 |
| `src/Aspire.Cli/Agents/AspireSkills/AspireSkillsRemoteConfiguration.cs` | 260 | 0 |
| `src/Aspire.Cli/Agents/AspireSkills/LocalAspireSkills.cs` | 101 | 0 |
| `src/Aspire.Cli/Agents/ClaudeCode/ClaudeCodeAgentClient.cs` | 288 | 0 |
| `src/Aspire.Cli/Agents/ClaudeCode/ClaudeCodePaths.cs` | 1 | 1 |
| `src/Aspire.Cli/Agents/Copilot/CopilotAgentClient.cs` | 177 | 0 |
| `src/Aspire.Cli/Agents/Hooks/TelemetryHookConfigurator.cs` | 16 | 348 |
| `src/Aspire.Cli/Agents/IAgentClient.cs` | 52 | 0 |
| `src/Aspire.Cli/Agents/McpConfigFileHelper.cs` | 26 | 50 |
| `src/Aspire.Cli/Agents/OpenCode/OpenCodeAgentClient.cs` | 292 | 0 |
| _... 他 61 件_ | | |

</details>

<details><summary>コミット (16 件)</summary>

- `c3f1773` Add Aspire plugin and catalog setup for agents
- `1f5f371` Polish agent setup warnings and registration output
- `da833f6` Align agent source selection with template prompts
- `d81d439` Honor effective agent configuration paths
- `9043f37` Guard agent settings publication and honor scoped plugin overrides
- `a230b5a` Revalidate Unix settings permissions before publication
- `8376ab1` Support BusyBox agent settings publication safely
- `31d8188` Consolidate agent configuration ownership
- _... 他 8 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新たに `AgentConfiguration`、`AgentPath`、`IAgentClient` とエージェント別クライアント／plugin 設定型が導入され、旧 `AgentClient` 実装と telemetry hook 設定経路が再編されています。設定ファイルの公開前検証や plugin override のスコープも追加されました。CLI の agent 構成モデルに変更があるため、独自設定・連携を実装する場合は新しい構成形式を確認してください。

**既存利用者への影響**

通常の Aspire アプリ実行に移行は不要ですが、CLI の agent client／plugin 設定や独自 agent integration を利用する場合は新しい構成モデルへの適合確認が必要です。設定公開前のファイル権限検証も含め、既存の agent 設定を再確認してください。

### [#20909](https://github.com/microsoft/aspire/pull/20909) — Bump http-cache-semantics from 4.2.0 to 4.3.0 in /extension

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `area-codeflow` `javascript` `dependencies`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-10-27 21:40:34`

**変更概要**

Aspire extension の `http-cache-semantics` を 4.2.0 から 4.3.0 に更新しています。変更は `extension/yarn.lock` の依存バージョン更新に限定され、extension の HTTP cache semantics に関する依存保守です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/yarn.lock` | 3 | 3 |

</details>

<details><summary>コミット (2 件)</summary>

- `7045481` Bump http-cache-semantics from 4.2.0 to 4.3.0 in /extension
- `57c9b7c` Merge branch 'main' of https://github.com/microsoft/aspire into depen…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

lockfile 上のパッケージ更新のみで、Aspire の公開 API や extension の構成形式に関する変更はありません。

**既存利用者への影響**

利用者による移行は不要です。extension を利用する場合は更新後の依存関係を取得してください。

### [#21349](https://github.com/microsoft/aspire/pull/21349) — Update Project V2 implementation and watch plan

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +612 / -497
- マージ日時 (UTC): `2026-10-27 19:36:17`

**変更概要**

Project V2 実装と C# program watch に関する設計計画文書を更新しています。変更ファイルは `docs/plans/project-v2-csharpprogram-watch.md` のみで、計画の内容を整理・改訂するドキュメント変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/plans/project-v2-csharpprogram-watch.md` | 612 | 497 |

</details>

<details><summary>コミット (1 件)</summary>

- `7508eda` Update Project V2 implementation and watch plan

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

文書の計画記述のみで、API シグネチャや実装コードは変更されていません。

**既存利用者への影響**

移行作業はありません。Project V2 の実装・watch 機能に関する今後の変更計画を把握するための更新です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #21346 | Enable OneLoc localization pull requests | joperezr | <https://github.com/microsoft/aspire/pull/21346> |
| #21214 | Add the create-video agent skill | sebastienros | <https://github.com/microsoft/aspire/pull/21214> |
| #21252 | Write aspire.config.json with the OS line endings and a final newline | IEvangelist | <https://github.com/microsoft/aspire/pull/21252> |
| #21318 | Share CLI Git acquisition and improve process diagnostics | JamesNK | <https://github.com/microsoft/aspire/pull/21318> |
| #21321 | Autofocus the interaction dialog's first input to avoid a circuit crash | flojon | <https://github.com/microsoft/aspire/pull/21321> |
| #20952 | Reduce allocations in resource dependency discovery | chansharp | <https://github.com/microsoft/aspire/pull/20952> |
| #21116 | Enable terminal configuration callbacks in TypeScript AppHosts | mitchdenny | <https://github.com/microsoft/aspire/pull/21116> |
| #21175 | Remove unused TransactionalAction helper | JamesNK | <https://github.com/microsoft/aspire/pull/21175> |
| #21319 | Disable MSBuild server in template restore tests | davidfowl | <https://github.com/microsoft/aspire/pull/21319> |
| #21301 | [automated] fix(ci): keep CLI payloads out of NuGet-only artifacts | radical | <https://github.com/microsoft/aspire/pull/21301> |
| #21302 | [ci] Add instructions for the test trigger map and simplify it | radical | <https://github.com/microsoft/aspire/pull/21302> |
| #21263 | Add directory and Git template engine support to aspire new | mitchdenny | <https://github.com/microsoft/aspire/pull/21263> |
| #20805 | Implement project-bound Git configuration sources for Aspire CLI | JamesNK | <https://github.com/microsoft/aspire/pull/20805> |
| #20936 | Mark Kubernetes hosting packages as stable | mitchdenny | <https://github.com/microsoft/aspire/pull/20936> |
| #21306 | Remove Node dependency from guest launch lifecycle test | JamesNK | <https://github.com/microsoft/aspire/pull/21306> |
| #21270 | Prevent extension E2E fan-out when VSIX packaging fails | ellahathaway | <https://github.com/microsoft/aspire/pull/21270> |
| #21295 | Avoid duplicate Bicep identifiers for Azure Storage services | johnkaram02 | <https://github.com/microsoft/aspire/pull/21295> |
| #21294 | Fix standalone Aspire Team App credential discovery | DamianEdwards | <https://github.com/microsoft/aspire/pull/21294> |
| #21268 | Update Aspire Tray startup message | sebastienros | <https://github.com/microsoft/aspire/pull/21268> |
| #21272 | Increase macOS native build timeout to 90 minutes | joperezr | <https://github.com/microsoft/aspire/pull/21272> |
| #20767 | [release/13.6] Fix TypeScript Bicep parameter expressions on enum Azure properties | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20767> |
| #20868 | [release/13.6] Recover ambiguous DCP creates with configurable timeouts | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20868> |
| #21282 | [release/13.6] Use shared helper for CLI log creation | mitchdenny | <https://github.com/microsoft/aspire/pull/21282> |
| #20168 | Resolve stable Aspire CLI script installs via GitHub release redirect, not rate-limited REST API | Copilot | <https://github.com/microsoft/aspire/pull/20168> |
| #21283 | Escape braces in ReferenceExpressionBuilder string appends | Laurianti | <https://github.com/microsoft/aspire/pull/21283> |
| #21227 | Provision Entra federation trust from Aspire managed identities | eerhardt | <https://github.com/microsoft/aspire/pull/21227> |
| #21281 | Surface DNX acquisition errors in AppHost bundle setup diagnostics | DamianEdwards | <https://github.com/microsoft/aspire/pull/21281> |
| #21276 | Use shared helper for CLI log creation | mitchdenny | <https://github.com/microsoft/aspire/pull/21276> |
| #21240 | Suppress registry analysis for nonshipping Compose web sample | joperezr | <https://github.com/microsoft/aspire/pull/21240> |
| #21148 | fix(playground): update shell-quote to address command injection | radical | <https://github.com/microsoft/aspire/pull/21148> |
| #21258 | Aspire Tray: align the flyout on one grid and place text by baseline on macOS and Windows | sebastienros | <https://github.com/microsoft/aspire/pull/21258> |
| #18725 | [Automated] Update Azure VM Sizes | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18725> |
| #21225 | Update PackageValidationBaselineVersion to 13.6.2 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21225> |
| #20715 | Bump serialize-javascript from 7.1.1 to 7.1.2 in /playground/AspireWithJavaScript/AspireJavaScript.Angular in the npm_and_yarn group across 1 directory | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20715> |
| #21162 | Bump the uv group across 1 directory with 2 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21162> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #21352 | Catch up localizations from OneLoc build 20261027.3 | open | joperezr | <https://github.com/microsoft/aspire/pull/21352> |
| PR | #21343 | Separate EF migration bundle build contexts from published output | open | MattKotsenas | <https://github.com/microsoft/aspire/pull/21343> |
| PR | #21279 | Add resource service display names to Dashboard and CLI | open | sebastienros | <https://github.com/microsoft/aspire/pull/21279> |
| PR | #21359 | [main] Update dependencies from microsoft/dcp | open | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/21359> |
| PR | #21278 | Provision Entra API identifier URIs, scopes, and caller permissions | open | eerhardt | <https://github.com/microsoft/aspire/pull/21278> |
| PR | #21357 | Declare Entra application roles on provisioned registrations | open | eerhardt | <https://github.com/microsoft/aspire/pull/21357> |
| PR | #21347 | Replace CI failure analysis scripts with a typed analyzer | open | radical | <https://github.com/microsoft/aspire/pull/21347> |
| PR | #21355 | Add annotations to allow customization of output directories | open | MattKotsenas | <https://github.com/microsoft/aspire/pull/21355> |
| PR | #21361 | Export Entra ID hosting integration to polyglot AppHosts | open | eerhardt | <https://github.com/microsoft/aspire/pull/21361> |
| PR | #21360 | Deprecate AddProject and complete Project V2 migration | open | karolz-ms | <https://github.com/microsoft/aspire/pull/21360> |
| PR | #21351 | Reduce VS Code polling and CLI log growth | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21351> |
| PR | #21354 | Bump the npm_and_yarn group across 14 directories with 4 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21354> |
| PR | #21348 | [release/13.6] Update .NET servicing dependencies for Aspire 13.6.5 | open | joperezr | <https://github.com/microsoft/aspire/pull/21348> |
| PR | #21353 | Bump the uv group across 2 directories with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21353> |
| PR | #21337 | Keep reconnect dialog above interaction dialogs | open | JamesNK | <https://github.com/microsoft/aspire/pull/21337> |
| PR | #21261 | Fix nil resource builder in Go AppHost callbacks | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21261> |
| PR | #21304 | ci: centralize native bundle publishing and signing | open | radical | <https://github.com/microsoft/aspire/pull/21304> |
| PR | #21342 | Bump the npm_and_yarn group across 14 directories with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21342> |
| PR | #21341 | Bump the create-video group with 8 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21341> |
| PR | #21285 | Bump the github-actions group across 1 directory with 8 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21285> |
| PR | #21286 | Bump the npm group across 1 directory with 24 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21286> |
| PR | #21329 | Spike: Manage and search global template sources in the CLI | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21329> |
| PR | #21336 | Add Trustabl agent reliability check to CI | open | Trustabl-Je | <https://github.com/microsoft/aspire/pull/21336> |
| PR | #21307 | Update PackageValidationBaselineVersion to 13.6.4 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21307> |
| PR | #21327 | Fix Azure Functions Node debugger E2E startup race | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21327> |
| PR | #21274 | Harden VS Code dashboard debug browser launch | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21274> |
| PR | #21323 | Fix malformed secrets diagnostics and side-effect-free path lookup | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21323> |
| PR | #21316 | Fix empty DCP container host name breaking container OTLP endpoint | open | davidfowl | <https://github.com/microsoft/aspire/pull/21316> |
| PR | #21313 | Evaluate Vite+ in React starter templates | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21313> |
| PR | #21311 | test: wait for Kubernetes pods to become ready | open | nazicenn | <https://github.com/microsoft/aspire/pull/21311> |
| PR | #21288 | Preserve ASPIRE010 and add ASPIRE013 for required CLI bundles | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21288> |
| PR | #21297 | Resolve EndpointProperty.TlsEnabled in Docker Compose and Kubernetes publishers | open | johnkaram02 | <https://github.com/microsoft/aspire/pull/21297> |
| PR | #21292 | Add polyglot support for Azure Entra ID hosting | open | sebastienros | <https://github.com/microsoft/aspire/pull/21292> |
| PR | #21289 | Launch Android MAUI resources with dotnet run to track the app and stream logcat | open | michalpobuta | <https://github.com/microsoft/aspire/pull/21289> |
| PR | #21267 | Emit valid HTTP probe schemes in Kubernetes publish | open | Laurianti | <https://github.com/microsoft/aspire/pull/21267> |
| PR | #21266 | Bump the npm_and_yarn group across 15 directories with 4 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21266> |
| PR | #21262 | Update PackageValidationBaselineVersion to 13.6.3 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21262> |
| PR | #21264 | Update Web PubSub emulator to beta.3 | open | vicancy | <https://github.com/microsoft/aspire/pull/21264> |
| PR | #21326 | Preserve Go system certificate trust on Windows and macOS | closed | danegsta | <https://github.com/microsoft/aspire/pull/21326> |
| PR | #21277 | Configure Entra downstream API references from the AppHost model | closed | eerhardt | <https://github.com/microsoft/aspire/pull/21277> |
| PR | #21298 | Bump the uv group across 2 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21298> |
| PR | #21247 | feat(ci): reproduce exact test candidates without editing workflows | closed | radical | <https://github.com/microsoft/aspire/pull/21247> |
| PR | #21231 | refactor(ci): Make CI failure validation rules explicit in C# | closed | radical | <https://github.com/microsoft/aspire/pull/21231> |
| PR | #20797 | Investigate intermittent StartCommand timeouts on macOS | closed | Copilot | <https://github.com/microsoft/aspire/pull/20797> |
| PR | #19805 | fix(ci): Reconcile duplicate automated failure issues | closed | radical | <https://github.com/microsoft/aspire/pull/19805> |
| PR | #21017 | ci: start extension E2E as each platform becomes ready | closed | radical | <https://github.com/microsoft/aspire/pull/21017> |
| PR | #20199 | Add a way to inject msbuild properties at build time and run time | closed | frederikstonge | <https://github.com/microsoft/aspire/pull/20199> |
| PR | #21338 | Add Playwright test for interaction input dialog initial focus | closed | flojon | <https://github.com/microsoft/aspire/pull/21338> |
| PR | #21314 | Spike a docked dashboard docs panel | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/21314> |
| PR | #19604 | Re-restore integrations when another CLI replaced the assets | closed | flojon | <https://github.com/microsoft/aspire/pull/19604> |
| PR | #21012 | ci: Speed up native builds by avoiding a repeat dashboard build | closed | radical | <https://github.com/microsoft/aspire/pull/21012> |
| PR | #21092 | Centralize native bundle build and signing orchestration | closed | radical | <https://github.com/microsoft/aspire/pull/21092> |
| PR | #21235 | Bump the github-actions group across 1 directory with 7 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21235> |
| PR | #20854 | Bump the npm group across 1 directory with 23 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20854> |
| PR | #20047 | Breaking change: update StackExchange.Redis to 3.2.0 | closed | joperezr | <https://github.com/microsoft/aspire/pull/20047> |
| PR | #20074 | Update quarantined third-party dependencies | closed | joperezr | <https://github.com/microsoft/aspire/pull/20074> |
| PR | #20787 | Increment release version to 13.6.2 | closed | joperezr | <https://github.com/microsoft/aspire/pull/20787> |
| PR | #20333 | fix(ci): Publish multi-test flaky causes to one issue | closed | radical | <https://github.com/microsoft/aspire/pull/20333> |
| PR | #21018 | ci: avoid downloading full diagnostics for test summaries | closed | radical | <https://github.com/microsoft/aspire/pull/21018> |
| PR | #20969 | test: Disable DCP confirmation retry-delay test pending investigation | closed | radical | <https://github.com/microsoft/aspire/pull/20969> |
| PR | #20643 | test(infrastructure): replace source checks with behavior coverage | closed | radical | <https://github.com/microsoft/aspire/pull/20643> |
| PR | #20624 | fix(ci): Publish main CI failure analysis without PR numbers | closed | radical | <https://github.com/microsoft/aspire/pull/20624> |
| PR | #20502 | ci: show agentic validation fixes directly on pull requests | closed | radical | <https://github.com/microsoft/aspire/pull/20502> |
| PR | #19790 | fix(ci): PR test selector could silently mis-attribute changed paths containing tabs or newlines | closed | radical | <https://github.com/microsoft/aspire/pull/19790> |
| PR | #17532 | Validate published Aspire CLI builds end-to-end from AzDO + GH | closed | radical | <https://github.com/microsoft/aspire/pull/17532> |
| PR | #19911 | Add minimal Copilot code review setup | closed | Copilot | <https://github.com/microsoft/aspire/pull/19911> |
| PR | #20970 | Clarify infrastructure-test evaluation guidance | closed | Copilot | <https://github.com/microsoft/aspire/pull/20970> |
| PR | #20050 | Fix flaky TestProgramFixture initialization due to shared timeout budget and sequential waits | closed | Copilot | <https://github.com/microsoft/aspire/pull/20050> |
| PR | #20049 | Stabilize multiple-replica service test | closed | Copilot | <https://github.com/microsoft/aspire/pull/20049> |
| PR | #20048 | Fix ProxylessEndpointWorks port assertion | closed | Copilot | <https://github.com/microsoft/aspire/pull/20048> |
| PR | #21168 | [automated] Experiment: measure native CLI packaging without duplicate compilation | closed | radical | <https://github.com/microsoft/aspire/pull/21168> |
| PR | #21167 | [automated] Experiment: describe artifact demand separately from selected PR tests | closed | radical | <https://github.com/microsoft/aspire/pull/21167> |
| PR | #21166 | [automated] Experiment: compare shared test payloads with per-shard builds | closed | radical | <https://github.com/microsoft/aspire/pull/21166> |
| PR | #20801 | Add temporary Agent Merge pilot artifact | closed | Copilot | <https://github.com/microsoft/aspire/pull/20801> |
| PR | #20744 | IGNORE — DO NOT MERGE: enhanced dependency review control | closed | radical | <https://github.com/microsoft/aspire/pull/20744> |
| PR | #20743 | IGNORE — DO NOT MERGE: PR 20716 npm dependency evidence experiment | closed | radical | <https://github.com/microsoft/aspire/pull/20743> |
| PR | #20742 | IGNORE — DO NOT MERGE: reduced dependency-review reproduction of #20281 | closed | radical | <https://github.com/microsoft/aspire/pull/20742> |
| PR | #20741 | IGNORE — DO NOT MERGE: dependency review evidence pilot | closed | radical | <https://github.com/microsoft/aspire/pull/20741> |
| PR | #20675 | Port analyze-ci-failure output validation from bash/jq to C# | closed | radical | <https://github.com/microsoft/aspire/pull/20675> |
| Issue | #21358 | Access to Azure Network Security Group Resource internal property SecurityRules | open | ghorner2 | <https://github.com/microsoft/aspire/issues/21358> |
| Issue | #21356 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21356> |
| Issue | #21350 | Add support for DotnetProjectResource (a.k.a. Project V2) to MAUI integration | open | karolz-ms | <https://github.com/microsoft/aspire/issues/21350> |
| Issue | #21345 | Migrate Azure Functions integration from ProjectResource to DotnetProjectResource (a.k.a. Project v2) | open | karolz-ms | <https://github.com/microsoft/aspire/issues/21345> |
| Issue | #21339 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21339> |
| Issue | #21344 | [Java AppHost] addParameterWithGeneratedValue fails because GenerateParameterDefault int fields are generated as double | open | marshalhayes | <https://github.com/microsoft/aspire/issues/21344> |
| Issue | #21320 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21320> |
| Issue | #21312 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21312> |
| Issue | #21335 | [Failing test] Cli macOS: multiple 30s timeouts (ProcessGuestLauncher, NewCommandLocalTemplate, RunCommand) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21335> |
| Issue | #21334 | Move inbox tempaltes to file based templates bundled with CLI. | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21334> |
| Issue | #21333 | Template index on aspire.dev? | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21333> |
| Issue | #21331 | Template integration into init config source | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21331> |
| Issue | #21332 | Custom templates threat model | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21332> |
| Issue | #21330 | Custom template search | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21330> |
| Issue | #21328 | [Failing test] DistributedApplicationTests.BeforeResourceStartedEvent_NotFiredForExplicitStartOnInitialCreation StopAsync cancelled on Windows | open | davidfowl | <https://github.com/microsoft/aspire/issues/21328> |
| Issue | #21325 | [Failing test] ChildProcessTests.Shutdown_UsesSharedGracefulBudgetAndEscalates times out on macOS | open | davidfowl | <https://github.com/microsoft/aspire/issues/21325> |
| Issue | #21324 | [Java AppHost] `withUrlForEndpoint` removes the endpoint's URL | open | marshalhayes | <https://github.com/microsoft/aspire/issues/21324> |
| Issue | #21322 | bug: aspire secrets crashes on every operation when one of the already set secrets contains an escape character | open | HugoVG | <https://github.com/microsoft/aspire/issues/21322> |
| Issue | #21310 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21310> |
| Issue | #21317 | [Failing test] WatchSpansAsync_DisabledFiltersAreIgnored times out on windows-latest | open | davidfowl | <https://github.com/microsoft/aspire/issues/21317> |
| Issue | #21309 | DCP create recovery still exhausts its two-minute budget in Aspire 13.6.4 integration tests | open | afscrome | <https://github.com/microsoft/aspire/issues/21309> |
| Issue | #21299 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21299> |
| Issue | #21308 | [aw] Update aspire.dev support page for a new Aspire release reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21308> |
| Issue | #21305 | Reduce internal native build time after bundle component additions | open | radical | <https://github.com/microsoft/aspire/issues/21305> |
| Issue | #21303 | Clarify signing requirements for Windows Dashboard SQLite and PTY dependencies | open | radical | <https://github.com/microsoft/aspire/issues/21303> |
| Issue | #21293 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21293> |
| Issue | #21296 | Docker Compose and Kubernetes publishers throw NotSupportedException for EndpointProperty.TlsEnabled | open | johnkaram02 | <https://github.com/microsoft/aspire/issues/21296> |
| Issue | #21275 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21275> |
| Issue | #21290 | Aspire development allows new Aspire release to be made without updating release notes | open | willdean | <https://github.com/microsoft/aspire/issues/21290> |
| Issue | #21287 | Support Azure Service Bus Emulator with an external/local SQL Server instead of a dedicated SQL container | closed | roel-charita | <https://github.com/microsoft/aspire/issues/21287> |
| Issue | #21280 | Dashboard Type column sorting disconnects the page with EnumerableGridSort exception | open | sebastienros | <https://github.com/microsoft/aspire/issues/21280> |
| Issue | #21284 | [AspireE2E] Debugging a new Aspire Starter App fails because ApiService.exe does not exist until running aspire run | open | maitan11 | <https://github.com/microsoft/aspire/issues/21284> |
| Issue | #21271 | [CI] Validate published Aspire CLI builds through public channels | open | radical | <https://github.com/microsoft/aspire/issues/21271> |
| Issue | #21269 | CI failing on `main` | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21269> |
| Issue | #20247 | Redesign agent init around independent assets and selected clients | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20247> |
| Issue | #21249 | aspire.config.json line endings and final newline differ by command and platform | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21249> |
| Issue | #21102 | [Regression 13.6] Dashboard circuit crashes with JSException: reading 'focus' in InteractionsInputDialog when a choice prompt opens | closed | BogdanPetranivskyyGL | <https://github.com/microsoft/aspire/issues/21102> |
| Issue | #19119 | UnsafeAccessor for s_maximumTimeout will be broken in .NET 11 RC1 | closed | Youssef1313 | <https://github.com/microsoft/aspire/issues/19119> |
| Issue | #19744 | [CI Failure] VS Code extension E2E tests fail to download aspire-extension VSIX artifact after upstream packaging job failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19744> |
| Issue | #16273 | Bicep codegen: duplicate identifier when blob container resource is named 'blobs'; CLI swallows bicep errors | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/16273> |
| Issue | #20136 | Stable Aspire CLI 13.5.3 installation downloads from a preview URL | closed | davidfowl | <https://github.com/microsoft/aspire/issues/20136> |
| Issue | #18951 | ReferenceExpressionBuilder.Append throws FormatException when processing raw strings with single braces (JSON) | closed | dlyz | <https://github.com/microsoft/aspire/issues/18951> |
| Issue | #19715 | Aspire CLI DNX acquisition failure hard to troubleshoot in CI | closed | afscrome | <https://github.com/microsoft/aspire/issues/19715> |
| Issue | #21072 | Provision Entra federation trust from Aspire user-assigned managed identities | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21072> |
| Issue | #21001 | Can't run/debug AppHost in Visual Studio 18.11.0: "IDE returned a response indicating failure" | closed | bgrainger | <https://github.com/microsoft/aspire/issues/21001> |
| Issue | #20609 | Aspire 13.6.0 always errors with "Watch task over Kubernetes ContainerExec resources terminated unexpectedly" | closed | andrew-maksymiuk-finys | <https://github.com/microsoft/aspire/issues/20609> |
