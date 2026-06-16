# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-12 02:03:55 〜 2026-06-15 00:59:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 24 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 23 |
| 新規 Issue              | 16 |
| クローズ Issue          | 19 |
| 主要コントリビューター  | JamesNK, mitchdenny, radical, davidfowl, aspire-repo-bot[bot], nanookclaw |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle （PR / open / DamianEdwards）
  AppHost の既定実行経路が CLI bundle 前提へ寄るため、ローカル実行・テンプレート・CI で CLI の配布形態に依存している環境は動作確認が必要です。
- **⚠ セキュリティ** [#18153](https://github.com/microsoft/aspire/issues/18153) — [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project （Issue / open / jinzhao1127）
  Aspire project 作成時に MessagePack 2.5.192 の高 severity 脆弱性警告が出るため、テンプレート生成物と依存固定の更新状況を追跡してください。
- **⚠ セキュリティ** [#17949](https://github.com/microsoft/aspire/pull/17949) — feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings （PR / open / PlaySkyHD）
  Azure Key Vault integration の health check を使う利用者は、`AzureSecurityKeyVaultSettings` で health check option を明示できるようになるか確認してください。
- **GA 昇格** [#18161](https://github.com/microsoft/aspire/pull/18161) — Align Azure Cosmos DB emulator with GA vnext-latest image （PR / open / guanzhousongmicrosoft）
  Cosmos DB emulator を使う開発・テスト環境は、GA vnext-latest image への整合でタグや起動挙動が変わらないか確認が必要です。

## このリポジトリの要点

Aspire は 24 件のマージ済み PR と多数の CI / release pipeline 変更があり、取得件数上限に達するほど動きが多い期間でした。
ユーザー向けでは CLI / agent initialization の prompt binding と `--skills`、Dashboard の service connection error 診断リンク、Cosmos DB emulator の GA image 整合が注目です。
一方で MessagePack 脆弱性警告や AppHost の CLI bundle 既定化など未マージの重要項目も残っており、次回はセキュリティ対応と CLI 配布経路の変更を重点確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18194](https://github.com/microsoft/aspire/pull/18194) — Add troubleshooting link to dashboard resource service connection error logs

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +48 / -4
- マージ日時 (UTC): `2026-06-14 00:20:24`

**変更概要**

Dashboard が AppHost の resource service へ接続できない場合のエラーログに、トラブルシューティングリンクを追加する改善です。
`DashboardClient.cs` の接続エラー生成部分を更新し、`aka.ms/dashboard-apphost-connection-failed` へ誘導できるようにしています。
テストも追加され、エラー文にリンクが含まれることを確認しています。
影響範囲は Dashboard の診断メッセージで、接続処理そのものの挙動変更ではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/ServiceClient/DashboardClient.cs` | 4 | 3 |
| `tests/Aspire.Dashboard.Tests/Model/DashboardClientTests.cs` | 44 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `fbcff1f` Add troubleshooting link to dashboard resource service connection errors
- `960dbe3` Rename aka.ms link to dashboard-apphost-connection-failed
- `7213b1f` Extract troubleshooting URL into a private const
- `2b89b69` Extract repeated troubleshooting URL into a private const field

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の破壊的変更はありません。
Dashboard client の内部エラーメッセージに troubleshooting URL を定数として持たせる整理で、ユーザーに表示される診断情報が増える変更です。

**既存利用者への影響**

移行作業は不要です。
Dashboard 接続失敗時に追加リンクが表示されるため、運用・サポート手順ではこのリンク先を案内に含められます。

### [#18192](https://github.com/microsoft/aspire/pull/18192) — Thread PromptBindings through AgentInitCommand and NewCommand

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +193 / -48
- マージ日時 (UTC): `2026-06-15 00:12:47`

**変更概要**

CLI の `AgentInitCommand` と `NewCommand` に PromptBindings を通す変更です。
`InitCommand`、`NewCommand`、template factory、テストが更新され、agent initialization と project creation の両方で skill location などの prompt binding 情報を一貫して扱えるようになります。
XML doc も `skillLocationsBinding` parameter に言及するよう更新されており、CLI 内部のテンプレート生成経路の整合性を高める内容です。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/AgentInitCommand.cs` | 28 | 37 |
| `src/Aspire.Cli/Commands/InitCommand.cs` | 6 | 2 |
| `src/Aspire.Cli/Commands/NewCommand.cs` | 7 | 3 |
| `src/Aspire.Cli/Templating/CliTemplateFactory.cs` | 1 | 1 |
| `src/Aspire.Cli/Templating/DotNetTemplateFactory.cs` | 1 | 1 |
| `tests/Aspire.Cli.Tests/Commands/AgentInitCommandTests.cs` | 52 | 2 |
| `tests/Aspire.Cli.Tests/Commands/InitCommandTests.cs` | 43 | 0 |
| `tests/Aspire.Cli.Tests/Commands/NewCommandTests.cs` | 53 | 0 |
| `tests/Aspire.Cli.Tests/Templating/DotNetTemplateFactoryTests.cs` | 1 | 1 |
| `tests/Aspire.Cli.Tests/TestServices/TestNewCommandPrompter.cs` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `818cf44` Thread PromptBindings through AgentInitCommand and NewCommand
- `9045115` Update XML doc to mention skillLocationsBinding parameter

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

破壊的変更は示されていませんが、CLI コマンド内部の constructor / 呼び出し経路に PromptBindings を渡す API 境界の変更があります。
`CliTemplateFactory` と `DotNetTemplateFactory` の生成引数も合わせて更新され、agent init と new のテンプレート解決が同じ binding 情報を参照します。

**既存利用者への影響**

通常の CLI 利用者に移行作業は不要です。
CLI を拡張・テストしている開発者は、AgentInit / New command のテストダブルや factory 呼び出しに PromptBindings を渡す更新が必要になる可能性があります。

### [#18191](https://github.com/microsoft/aspire/pull/18191) — Add --skills flag to aspire init

- 作者: nanookclaw / 状態: MERGED
- ラベル: —
- 変更行数: +53 / -10
- マージ日時 (UTC): `2026-06-13 04:18:47`

**変更概要**

`aspire init` に `--skills` フラグを追加する CLI 機能です。
`AgentInitCommand` と `InitCommand` が更新され、初期化時に skill location を指定できる経路が追加されています。
テストも追加され、CLI からスキル指定付きの初期化が通ることを確認しています。
Agent / Skill ベースの開発体験を AppHost 初期化に組み込みやすくする変更です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/AgentInitCommand.cs` | 27 | 9 |
| `src/Aspire.Cli/Commands/InitCommand.cs` | 4 | 1 |
| `tests/Aspire.Cli.Tests/Commands/InitCommandTests.cs` | 22 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `a0baa91` Add --skills flag to aspire init

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

破壊的変更はありません。
CLI オプションとして `--skills` が追加され、`AgentInitCommand` へ skill location 情報を渡す経路が増えています。

**既存利用者への影響**

既存コマンド利用者の移行は不要です。
スキルを含む初期化を自動化している場合は、`aspire init --skills ...` を使うことで後続の手動設定を減らせます。

### [#18174](https://github.com/microsoft/aspire/pull/18174) — Upgrade gh-aw to v0.79.6 and recompile workflows

- 作者: IEvangelist / 状態: MERGED
- ラベル: —
- 変更行数: +1991 / -702
- マージ日時 (UTC): `2026-06-12 20:58:53`

**変更概要**

GitHub Actions Workflow tooling (`gh-aw`) を v0.79.6 へ更新し、関連 workflow lock files を再生成する engineering systems 変更です。
agentics maintenance、daily repo status、extension changelog、release notes など複数のロック済み workflow が大きく更新されています。
また、gh-aw workflow files のみが変わる場合は CI を skip する trigger pattern も追加され、不要な CI 実行を抑える意図があります。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/aw/actions-lock.json` | 8 | 3 |
| `.github/workflows/agentics-maintenance-microsoft-aspire.dev.yml` | 65 | 14 |
| `.github/workflows/agentics-maintenance.yml` | 607 | 0 |
| `.github/workflows/daily-repo-status.lock.yml` | 178 | 71 |
| `.github/workflows/extension-changelog.lock.yml` | 181 | 114 |
| `.github/workflows/milestone-changelog.lock.yml` | 176 | 68 |
| `.github/workflows/pr-docs-check.lock.yml` | 211 | 142 |
| `.github/workflows/release-notes-generate.lock.yml` | 177 | 83 |
| `.github/workflows/release-update-support-mdx.lock.yml` | 208 | 140 |
| `.github/workflows/repo-pulse.lock.yml` | 173 | 67 |
| `eng/testing/github-ci-trigger-patterns.txt` | 7 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `ff033cf` Upgrade gh-aw to v0.79.6 and recompile workflows
- `7beba8f` Skip CI when only gh-aw workflow files change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API の変更はありません。
`.github/aw/actions-lock.json` と各 `.lock.yml` の再生成が中心で、CI trigger pattern に gh-aw workflow 変更時の skip 条件が追加されています。

**既存利用者への影響**

Aspire 利用者の移行作業は不要です。
リポジトリ運用者は、gh-aw 生成 workflow の差分と CI skip 条件が期待通りかを監視してください。

### [#18171](https://github.com/microsoft/aspire/pull/18171) — ci: temporarily force-rerun all failed CI jobs

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +396 / -16
- マージ日時 (UTC): `2026-06-12 21:06:37`

**変更概要**

CI の一時的な安定化策として、失敗した CI jobs をすべて強制 rerun する設定を追加しています。
`auto-rerun-transient-ci-failures` の workflow / script / docs が更新され、`FORCE_RERUN_ALL` の動作をテストする infrastructure tests も追加されました。
flaky / transient failure が多い期間に CI を通しやすくするための運用変更で、製品コードではなくリポジトリの CI automation が対象です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/auto-rerun-transient-ci-failures.js` | 128 | 6 |
| `.github/workflows/auto-rerun-transient-ci-failures.yml` | 68 | 2 |
| `docs/ci/auto-rerun-transient-ci-failures.md` | 27 | 2 |
| `tests/Infrastructure.Tests/WorkflowScripts/AutoRerunTransientCiFailuresTests.cs` | 167 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/auto-rerun-transient-ci-failures.harness.js` | 6 | 6 |

</details>

<details><summary>コミット (1 件)</summary>

- `9cf1b43` ci: temporarily force-rerun all failed CI jobs (FORCE_RERUN_ALL)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API の変更はありません。
GitHub Actions script に force-rerun-all 相当の制御を追加し、docs と harness test でその挙動を固定しています。

**既存利用者への影響**

Aspire アプリ利用者の移行は不要です。
コントリビューターは、CI 失敗が自動 rerun されることで失敗原因の見え方や rerun 回数が変わる点を理解しておくとよいです。

### [#18164](https://github.com/microsoft/aspire/pull/18164) — Port npm release pipeline fixes to main

- 作者: adamint / 状態: MERGED
- ラベル: —
- 変更行数: +1096 / -206
- マージ日時 (UTC): `2026-06-12 20:16:48`

**変更概要**

npm release pipeline の修正を main に取り込む大きめの release engineering 変更です。
NuGet publish pipeline、npm CLI package packing script、release docs、alias validation script、関連 tests が更新されています。
CLI npm package の pointer / RID packaging と alias validation を明文化・自動検証することで、npm 配布経路の信頼性を上げる内容です。
利用者向け機能そのものより、Aspire CLI のリリース成果物生成・検証に影響します。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitignore` | 1 | 0 |
| `docs/release-process.md` | 8 | 11 |
| `docs/specs/npm-cli-package.md` | 3 | 3 |
| `eng/pipelines/common-variables.yml` | 0 | 4 |
| `eng/pipelines/release-publish-nuget.yml` | 172 | 92 |
| `eng/scripts/pack-cli-npm-package.pointer.README.md` | 99 | 0 |
| `eng/scripts/pack-cli-npm-package.ps1` | 31 | 23 |
| `eng/scripts/pack-cli-npm-package.rid.README.md` | 5 | 0 |
| `eng/scripts/validate-npm-release-aliases.ps1` | 148 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/ChannelUpdateWorkflowTests.cs` | 30 | 8 |
| `tests/Aspire.Cli.EndToEnd.Tests/Helpers/CliInstallStrategyTests.cs` | 11 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/Helpers/KubernetesDeployTestHelpers.cs` | 2 | 2 |
| `tests/Infrastructure.Tests/Pipelines/NpmCliPackageTests.cs` | 210 | 43 |
| `tests/Infrastructure.Tests/Pipelines/ReleasePublishNugetPipelineTests.cs` | 177 | 20 |
| `tests/Infrastructure.Tests/PowerShellScripts/ValidateNpmReleaseAliasesTests.cs` | 185 | 0 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `74493de` Port npm release pipeline changes to main
- `fb58ca8` Address npm port review feedback
- `21244d4` Apply npm alias validation review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API の破壊的変更はありません。
`pack-cli-npm-package.ps1`、npm release aliases validation、release publish pipeline の構造が更新され、CLI npm package の alias / pointer / RID 取り扱いがテストで固定されました。

**既存利用者への影響**

通常の Aspire 利用者に移行作業は不要です。
CLI を npm 経由で配布・検証する運用では、alias validation と packaging script の更新に合わせて内部手順を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18159 | Fix flaky GetRpcClientAsync server-exit timing test | JamesNK | <https://github.com/microsoft/aspire/pull/18159> |
| #18158 | Update Cosmos DB preview emulator tag to vnext-latest | guanzhousongmicrosoft | <https://github.com/microsoft/aspire/pull/18158> |
| #18154 | Update Spectre.Console to 0.57.0 | JamesNK | <https://github.com/microsoft/aspire/pull/18154> |
| #18151 | Fix race condition in RepeatedFailureEvents_OnlyDiagnoseOnce test | JamesNK | <https://github.com/microsoft/aspire/pull/18151> |
| #18150 | [release/13.4] Filter resources with resource.excludeFromMcp from CLI MCP tools | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18150> |
| #18146 | Fix trace detail span pane on navigation and improve stress/playground apps | JamesNK | <https://github.com/microsoft/aspire/pull/18146> |
| #18142 | Fix flaky StaticUriHealthCheck_ReturnsStatusCodeMessage test | JamesNK | <https://github.com/microsoft/aspire/pull/18142> |
| #18139 | Use aligned grid for DisplayIncompatibleVersionError | JamesNK | <https://github.com/microsoft/aspire/pull/18139> |
| #18138 | Log custom creation script execution in resource logger for `WithCreationScript(...)` | mitchdenny | <https://github.com/microsoft/aspire/pull/18138> |
| #18136 | Fix ProcessSignaler.AreClose flaky tolerance on second boundaries | JamesNK | <https://github.com/microsoft/aspire/pull/18136> |
| #18132 | Improve Azure provisioning diagnostics | davidfowl | <https://github.com/microsoft/aspire/pull/18132> |
| #18116 | Fix PythonResourceFinishesSuccessfully test timeout (#8466) | mitchdenny | <https://github.com/microsoft/aspire/pull/18116> |
| #18113 | [tests] Stabilize TestEndpointsReturnOk startup waits | mitchdenny | <https://github.com/microsoft/aspire/pull/18113> |
| #18111 | Dashboard: gracefully handle resource service connection errors | JamesNK | <https://github.com/microsoft/aspire/pull/18111> |
| #18060 | ci: Skip Homebrew validation by default in release pipeline | radical | <https://github.com/microsoft/aspire/pull/18060> |
| #18057 | [ci] Make internal build robust to download failures | radical | <https://github.com/microsoft/aspire/pull/18057> |
| #18026 | Update PackageValidationBaselineVersion to 13.4.3 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18026> |
| #17988 | Add Azure resource scope support | davidfowl | <https://github.com/microsoft/aspire/pull/17988> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18202 | Move resource property metadata to producers | open | davidfowl | <https://github.com/microsoft/aspire/pull/18202> |
| PR | #18199 | make dashboard metrics filter value clickable | open | inlineHamed | <https://github.com/microsoft/aspire/pull/18199> |
| PR | #18196 | Introduce `MongoDBReplicaSetResource` | open | aradalvand | <https://github.com/microsoft/aspire/pull/18196> |
| PR | #18190 | ci: cross-compile osx-x64 CLI archive on Apple Silicon runner | open | radical | <https://github.com/microsoft/aspire/pull/18190> |
| PR | #18189 | Bump the uv group across 1 directory with 9 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18189> |
| PR | #18188 | Default AppHosts to use the CLI bundle | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/18188> |
| PR | #18176 | Update extension issue label references | open | adamint | <https://github.com/microsoft/aspire/pull/18176> |
| PR | #18161 | Align Azure Cosmos DB emulator with GA vnext-latest image | open | guanzhousongmicrosoft | <https://github.com/microsoft/aspire/pull/18161> |
| PR | #18160 | Freeze Aspire.TypeSystem AssemblyVersion at 13.4.4.0 to fix cross-ALC codegen binding | open | sebastienros | <https://github.com/microsoft/aspire/pull/18160> |
| PR | #18155 | Bump StreamJsonRpc to 2.25.25 to clear MessagePack NU1903 | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18155> |
| PR | #18149 | Reference Microsoft.Data.SqlClient.Extensions.Azure in SqlServer client integrations for Entra ID auth | open | 0xharkirat | <https://github.com/microsoft/aspire/pull/18149> |
| PR | #18195 | Introduce `MongoDBReplicaSetResource` | closed | aradalvand | <https://github.com/microsoft/aspire/pull/18195> |
| PR | #18187 | ci-probe: winget-only triggers CI + winget installer (B) | closed | radical | <https://github.com/microsoft/aspire/pull/18187> |
| PR | #18186 | ci-probe: combination (winget+homebrew+source, installer bools + skip interaction) | closed | radical | <https://github.com/microsoft/aspire/pull/18186> |
| PR | #18185 | ci-probe: requires_cli_archive bucket (Cli.EndToEnd.Tests) | closed | radical | <https://github.com/microsoft/aspire/pull/18185> |
| PR | #18184 | ci-probe: requires_nugets bucket (ProjectTemplates) | closed | radical | <https://github.com/microsoft/aspire/pull/18184> |
| PR | #18183 | ci-probe: force-all token (full matrix) | closed | radical | <https://github.com/microsoft/aspire/pull/18183> |
| PR | #18182 | ci-probe: prepare_for_ci skip (docs-only) | closed | radical | <https://github.com/microsoft/aspire/pull/18182> |
| PR | #18181 | ci-probe: Layer 2 job routing (extension) | closed | radical | <https://github.com/microsoft/aspire/pull/18181> |
| PR | #18180 | ci-probe: ALL backstop (Directory.Build.props) | closed | radical | <https://github.com/microsoft/aspire/pull/18180> |
| PR | #18179 | ci-probe: core fan-out closure (Aspire.Hosting) | closed | radical | <https://github.com/microsoft/aspire/pull/18179> |
| PR | #18178 | ci-probe: Layer 1 narrowing (Redis component) | closed | radical | <https://github.com/microsoft/aspire/pull/18178> |
| PR | #18173 | perf(ci): cache class-mode test class lists in enumerate-tests | closed | radical | <https://github.com/microsoft/aspire/pull/18173> |
| PR | #18172 | perf(ci): drop wasted setup-dotnet + cache .dotnet on eval-only enumerate | closed | radical | <https://github.com/microsoft/aspire/pull/18172> |
| PR | #18170 | perf(ci): cache repo-local .dotnet in setup_for_tests | closed | radical | <https://github.com/microsoft/aspire/pull/18170> |
| PR | #18169 | perf(ci): drop redundant setup-dotnet in setup_for_tests | closed | radical | <https://github.com/microsoft/aspire/pull/18169> |
| PR | #18167 | [EXPERIMENT] eval-only enumerate: restore/build only class-mode split projects (ALL-case restore drop) | closed | radical | <https://github.com/microsoft/aspire/pull/18167> |
| PR | #18166 | [EXPERIMENT] restrict enumerate restore to selected projects (selective whole-job <60s) | closed | radical | <https://github.com/microsoft/aspire/pull/18166> |
| PR | #18165 | [EXPERIMENT] validate selection needs no full restore (minimal SDK only) | closed | radical | <https://github.com/microsoft/aspire/pull/18165> |
| PR | #18163 | [EXPERIMENT] cache repo-local .dotnet toolsets (bootstrap lever) | closed | radical | <https://github.com/microsoft/aspire/pull/18163> |
| PR | #18162 | [EXPERIMENT] restrict setup_for_tests restore to the test-project graph | closed | radical | <https://github.com/microsoft/aspire/pull/18162> |
| PR | #18147 | [EXPERIMENT] enumerate partition-mode split tests from source (skip god-edge compile) | closed | radical | <https://github.com/microsoft/aspire/pull/18147> |
| PR | #18145 | [EXPERIMENT] NuGet cache in setup_for_tests — REJECTED (net loss) | closed | radical | <https://github.com/microsoft/aspire/pull/18145> |
| PR | #18144 | ci: force-rerun all failed CI jobs (FORCE_RERUN_ALL) | closed | radical | <https://github.com/microsoft/aspire/pull/18144> |
| Issue | #18203 | E2E Deployment Test Failure: Aspire.Deployment.EndToEnd.Tests.KubernetesGatewayTlsDeploymentTests.DeployStarterWithGatewayTlsToKubernetes | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18203> |
| Issue | #18201 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18201> |
| Issue | #18200 | Azure recovery diagnostics follow-ups from Bicep playground testing | open | davidfowl | <https://github.com/microsoft/aspire/issues/18200> |
| Issue | #18198 | [Deployment E2E] Nightly test failure - 2026-06-14 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18198> |
| Issue | #18197 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18197> |
| Issue | #18193 | [Deployment E2E] Nightly test failure - 2026-06-13 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18193> |
| Issue | #18177 | Baseline-version release workflow opens a new PR per release instead of updating the existing open one | open | radical | <https://github.com/microsoft/aspire/issues/18177> |
| Issue | #18175 | Avoid executing msbuild when running aspire ls via extension for apphost discovery | open | adamint | <https://github.com/microsoft/aspire/issues/18175> |
| Issue | #18168 | 'aspire add' search feature does not provide a way to go to next matched one | open | inlineHamed | <https://github.com/microsoft/aspire/issues/18168> |
| Issue | #18157 | Improve dashboard console log text selection | open | weitzhandler | <https://github.com/microsoft/aspire/issues/18157> |
| Issue | #18156 | Enable better navigation when viewing console logs | open | weitzhandler | <https://github.com/microsoft/aspire/issues/18156> |
| Issue | #18153 | [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18153> |
| Issue | #18148 | SqlServer client integrations missing Microsoft.Data.SqlClient.Extensions.Azure for Entra ID auth | open | 0xharkirat | <https://github.com/microsoft/aspire/issues/18148> |
| Issue | #18143 | [Deployment E2E] Nightly test failure - 2026-06-12 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18143> |
| Issue | #18141 | Add a golden-set evaluation for Aspire docs search relevance | open | davidfowl | <https://github.com/microsoft/aspire/issues/18141> |
| Issue | #18140 | [Failing test]: Aspire.Hosting.Tests.Health.FriendlyHealthCheckErrorMessagesTests.StaticUriHealthCheck\_ReturnsStatusCodeMessage | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18140> |
| Issue | #18137 | [Failing test]: Aspire.Hosting.Tests.Lifecycle.TerminalHostFailureDiagnosticServiceTests.RepeatedFailureEvents\_OnlyDiagnoseOnce | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18137> |
| Issue | #18109 | Improve Azure provisioning recovery diagnostics and AppHost restart resilience | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18109> |
| Issue | #18095 | Add `--skills` flag to `aspire init` | closed | acchiang | <https://github.com/microsoft/aspire/issues/18095> |
| Issue | #18090 | DisplayIncompatibleVersionError should use a borderless table for aligned name/value display | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18090> |
| Issue | #18055 | download-native-archives.ps1 has no retry on transient download failures, failing the assemble stage | closed | radical | <https://github.com/microsoft/aspire/issues/18055> |
| Issue | #17967 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17967> |
| Issue | #17956 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17956> |
| Issue | #17933 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17933> |
| Issue | #17890 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17890> |
| Issue | #17861 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17861> |
| Issue | #17852 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17852> |
| Issue | #17663 | [CI] Build broken on main — 20260529.1 | closed | joperezr | <https://github.com/microsoft/aspire/issues/17663> |
| Issue | #17657 | Keyboard focus is not visible when navigating from Resources tab in resized view:A11y_Aspire Dashboard_Resources_Focunotobscured | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17657> |
| Issue | #17650 | Screen reader announces keyboard shortcuts as a continuous string without proper association in Help dialog:A11y_Aspire Dashboard_Help_ScreenReader | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17650> |
| Issue | #17470 | Selection state is conveyed using color only in resize view:A11y_Aspire Dashboard_Resources_Use of color | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17470> |
| Issue | #17210 | [CI] Build broken on main — 20260518.4 | closed | joperezr | <https://github.com/microsoft/aspire/issues/17210> |
| Issue | #16857 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/16857> |
| Issue | #16138 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/16138> |
