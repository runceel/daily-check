# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-20 10:51:22 〜 2026-06-23 06:00:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 27 |
| オープン中の新規 PR     | 10 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 23 |
| クローズ Issue          | 22 |
| 主要コントリビューター  | JamesNK, aspire-repo-bot[bot], mitchdenny, radical, afscrome, sebastienros |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#18404](https://github.com/microsoft/aspire/pull/18404) — Remove obsolete model entries from preview Aspire.Hosting.Foundry package （PR / merged / sebastienros）
  Preview パッケージの obsolete model 表記を削除するため、Foundry integration を使う環境では見た目や依存の扱いに差分がないか確認してください。

## このリポジトリの要点

Aspire はこの期間も CLI / AppHost / CI の安定化を中心に変更が進み、stable channel のテンプレート挙動やテストの安定性改善が目立ちました。特に GitHub Models integration の廃止と Foundry 連携の整理は、既存サンプルや依存関係に影響しやすいため、次回チェックでも注視したいです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18404](https://github.com/microsoft/aspire/pull/18404) — Remove obsolete model entries from preview Aspire.Hosting.Foundry package

- 作者: sebastienros / 状態: MERGED
- ラベル: —
- 変更行数: +25 / -64
- マージ日時 (UTC): `2026-06-22 18:18:36`

**変更概要**

Preview Aspire.Hosting.Foundry パッケージから obsolete な model エントリを削除し、Foundry integration の見え方を整理した PR です。対象ファイルの差分は小さいものの、package の表現が変わるため利用者側での参照観点が変わります。主な目的は、将来のモデル追加・削除と併せて package の説明を明確にすることです。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Foundry/FoundryModel.Obsolete.cs` | 25 | 64 |

</details>

<details><summary>コミット (2 件)</summary>

- `681b29d` Remove obsolete model entries from preview Aspire.Hosting.Foundry pac…
- `a65a32d` Keep FoundryModel.Obsolete.cs as a documented placeholder

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Foundry model の obsolete placeholder が整理され、preview package から古いモデル表記が取り除かれています。公開 API のシグネチャ追加・削除は見られず、破壊的変更ではありません。

**既存利用者への影響**

既存利用者の移行は不要ですが、preview package のモデル名や obsolete な参照を前提にしているコードは、最新の package 表現に合わせて確認してください。

### [#18418](https://github.com/microsoft/aspire/pull/18418) — Fix flaky ResourceCommandServiceTests by disabling version check

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +53 / -41
- マージ日時 (UTC): `2026-06-23 05:46:32`

**変更概要**

ResourceCommandService のテストが flaky になっていたため、version check を一時的に外してテストの安定性を高めた PR です。実際のアプリケーション動作そのものではなく、CI での再現性改善が主眼です。これにより、AppHost / resource-command 周辺のテストがより安定して回るようになります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Hosting.Tests/ResourceCommandServiceTests.cs` | 53 | 41 |

</details>

<details><summary>コミット (1 件)</summary>

- `e9ba746` Fix flaky ResourceCommandServiceTests by disabling version check

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、ResourceCommandService テストの期待値と version check 条件だけが調整されています。破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。ResourceCommandService の実行契約をテストで検証している場合は、CI 安定化の影響を確認してください。

### [#18415](https://github.com/microsoft/aspire/pull/18415) — [release/13.4] Don't create nuget.config for stable channel in aspire new/update

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `Servicing-consider`
- 変更行数: +500 / -40
- マージ日時 (UTC): `2026-06-23 05:53:45`

**変更概要**

stable channel で `aspire new/update` を実行した際に `nuget.config` を生成しないようにした PR です。CLI の packaging / templating 周辺で stable 用の条件分岐が追加され、構成に応じたファイル生成を抑える形になっています。これは新規プロジェクト作成や更新の挙動を整えるための修正です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Packaging/PackageChannel.cs` | 11 | 4 |
| `src/Aspire.Cli/Packaging/PackagingService.cs` | 1 | 1 |
| `src/Aspire.Cli/Projects/ProjectUpdater.cs` | 33 | 17 |
| `src/Aspire.Cli/Templating/TemplateNuGetConfigService.cs` | 26 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/CentralPackageManagementTests.cs` | 7 | 18 |
| `tests/Aspire.Cli.EndToEnd.Tests/NewChannelNuGetConfigTests.cs` | 77 | 0 |
| `tests/Aspire.Cli.Tests/Projects/ProjectUpdaterTests.cs` | 156 | 0 |
| `tests/Aspire.Cli.Tests/Templating/TemplateNuGetConfigServiceTests.cs` | 189 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `73a6412` Don't create nuget.config for stable channel in aspire new/update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI の `PackagingService` / `ProjectUpdater` / `TemplateNuGetConfigService` が更新され、stable channel 用の `nuget.config` 生成条件が変わっています。公開 API そのものは変わっておらず、破壊的変更ではありませんが、既存スクリプトが `nuget.config` の存在を前提にしている場合は影響があります。

**既存利用者への影響**

stable channel を使う開発者は、`aspire new/update` 実行後に `nuget.config` が生成されない差分を確認してください。既存のスクリプトや CI がそのファイル存在を前提にしている場合は調整が必要です。

### [#18413](https://github.com/microsoft/aspire/pull/18413) — ci: temporarily disable flaky VS Code extension E2E tests

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +10 / -7
- マージ日時 (UTC): `2026-06-22 23:44:21`

**変更概要**

VS Code extension の E2E テストが flaky だったため、一時的に CI から外して安定性を優先した PR です。実装コードの変更ではなく、テスト実行対象の調整が主な内容です。これにより、開発者の PR 判定がノイズに影響されにくくなります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/tests.yml` | 10 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `26d080b` ci: temporarily disable flaky VS Code extension E2E tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、GitHub Actions workflow のテスト対象だけが一時的に除外されています。破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。VS Code extension の E2E テストを CI の合否に依存させている運用では、再有効化の時期を追跡してください。

### [#18409](https://github.com/microsoft/aspire/pull/18409) — fix(ci): skip full matrix on metadata-only PRs; clearer selector job reasons

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +119 / -5
- マージ日時 (UTC): `2026-06-22 22:41:10`

**変更概要**

メタデータ変更だけの PR では CI matrix 全体をスキップし、select-tests の理由表示をわかりやすくした PR です。`SelectTests` のロジックと関連テストが更新され、実行対象を絞り込む判定が強化されています。開発者体験を改善するための CI 最適化が主な内容です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/github-ci/ci-skip-entirely-patterns.txt` | 15 | 0 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsAcceptanceTests.cs` | 15 | 1 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsCliTests.cs` | 50 | 0 |
| `tools/SelectTests/Program.cs` | 39 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `fc50430` fix(ci): stop meta-only changes forcing full CI matrix; clarify job r…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テスト選択ツールとテストケースが更新され、メタデータ変更の判定ロジックが強化されています。公開 API の追加・削除はなく、破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。CI の実行パターンに依存する運用では、スキップ条件の変更を確認してください。

### [#18405](https://github.com/microsoft/aspire/pull/18405) — Sunset the GitHub Models integration

- 作者: sebastienros / 状態: MERGED
- ラベル: —
- 変更行数: +256 / -282
- マージ日時 (UTC): `2026-06-22 20:45:59`

**変更概要**

GitHub Models integration を非推奨・廃止へ移し、関連 package / workflow / docs を整理した PR です。`Aspire.Hosting.GitHub.Models` 周辺のコードが縮退され、deprecation skill などを通じて移行手順の明文化も進めています。GitHub Models に依存していたサンプルやワークフローは、今後の代替方針を確認する必要があります。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.agents/skills/deprecate-integration/SKILL.md` | 215 | 0 |
| `.github/workflows/update-github-models.yml` | 0 | 45 |
| `AGENTS.md` | 1 | 0 |
| `playground/GitHubModelsEndToEnd/GitHubModelsEndToEnd.AppHost/GitHubModelsEndToEnd.AppHost.csproj` | 2 | 0 |
| `src/Aspire.Cli/NuGet/NuGetPackageCache.cs` | 1 | 0 |
| `src/Aspire.Hosting.GitHub.Models/Aspire.Hosting.GitHub.Models.csproj` | 0 | 4 |
| `src/Aspire.Hosting.GitHub.Models/GitHubModelResource.cs` | 1 | 0 |
| `src/Aspire.Hosting.GitHub.Models/GitHubModelsDeprecation.cs` | 11 | 0 |
| `src/Aspire.Hosting.GitHub.Models/GitHubModelsExtensions.cs` | 6 | 0 |
| `src/Aspire.Hosting.GitHub.Models/GithubModel.cs` | 3 | 0 |
| `src/Aspire.Hosting.GitHub.Models/README.md` | 9 | 0 |
| `src/Aspire.Hosting.GitHub.Models/tools/Directory.Build.props` | 0 | 2 |
| `src/Aspire.Hosting.GitHub.Models/tools/Directory.Build.targets` | 0 | 2 |
| `src/Aspire.Hosting.GitHub.Models/tools/GenModel.cs` | 0 | 229 |
| `tests/Aspire.Cli.Tests/NuGet/NuGetPackageCacheTests.cs` | 4 | 0 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `ed9c9ec` Sunset GitHub Models integration
- `de3c0a2` Hide deprecated GitHub Models package from aspire add and harden README
- `5ab5f8e` Add deprecate-integration skill
- `208e9ef` Refine deprecate-integration skill: scope Obsolete marking
- `5769add` Drop GitHub.Models reference-implementation line from skill
- `c1fedb9` Skill: ask for the reason directly when tracking issue is unknown
- `547ba12` Revert: tracking issue is required for deprecation
- `6380781` Skill: drop GitHubModel parenthetical from namespace note

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Aspire Hosting GitHub Models 周辺の package / extension / workflow が整理され、非推奨化の運用サポートが追加されています。公開 API の追加・削除は限定的ですが、GitHub Models integration に依存する既存コードは今後の移行要件を確認してください。⚠ **破壊的変更**: GitHub Models integration を使っている環境は、将来の代替実装への切り替えが必要になります。

**既存利用者への影響**

GitHub Models integration を利用している AppHost / sample / workflow は、非推奨化に合わせて代替実装や依存の見直しが必要です。既存の package 参照を維持している場合は、利用可否を再確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18399 | Prepare VS Code extension release v1.15.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18399> |
| #18396 | Fix flaky ResourceCommand_FailsWhenInteractionServiceIsRequired test | JamesNK | <https://github.com/microsoft/aspire/pull/18396> |
| #18395 | Route resource command status messages to stderr | JamesNK | <https://github.com/microsoft/aspire/pull/18395> |
| #18394 | fix(cli): don't add wildcard pattern to private sources with existing mappings | JamesNK | <https://github.com/microsoft/aspire/pull/18394> |
| #18393 | Detect miscased CLI options and suggest correct spelling | JamesNK | <https://github.com/microsoft/aspire/pull/18393> |
| #18390 | Route third-party dashboard logs under ThirdParty category and show Aspire warnings | JamesNK | <https://github.com/microsoft/aspire/pull/18390> |
| #18389 | Dashboard: Use fallback icons for commands with unknown or missing icon names | JamesNK | <https://github.com/microsoft/aspire/pull/18389> |
| #18386 | [main] [release/13.4] Freeze Aspire.TypeSystem AssemblyVersion at 13.4.5.0 to fix cross-ALC codegen binding | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18386> |
| #18383 | Cap rendered items in UrlsColumnDisplay to prevent SignalR disconnect | JamesNK | <https://github.com/microsoft/aspire/pull/18383> |
| #18382 | Improve metrics chart filter rendering with many tags | JamesNK | <https://github.com/microsoft/aspire/pull/18382> |
| #18376 | Make the test selector comment more readable with reasoning | radical | <https://github.com/microsoft/aspire/pull/18376> |
| #18373 | Fix dashboard endpoint tooltip to show the hovered URL instead of all endpoints | afscrome | <https://github.com/microsoft/aspire/pull/18373> |
| #18370 | Make HiddenAnnotation public | afscrome | <https://github.com/microsoft/aspire/pull/18370> |
| #18365 | CLI: Harden parameter contracts, fix ExtensionInteractionService lifecycle, introduce IEnvironment | JamesNK | <https://github.com/microsoft/aspire/pull/18365> |
| #18360 | Gate AppHost dotnet run hook on Aspire CLI version | DamianEdwards | <https://github.com/microsoft/aspire/pull/18360> |
| #18357 | Update PackageValidationBaselineVersion to 13.4.6 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18357> |
| #18353 | Extend AppHost debug startup timeout from VS Code | adamint | <https://github.com/microsoft/aspire/pull/18353> |
| #18315 | Restore commit SHA in aspire --version output | mitchdenny | <https://github.com/microsoft/aspire/pull/18315> |
| #18296 | Clean up socket file after stopping running AppHost instance (#17587) | mitchdenny | <https://github.com/microsoft/aspire/pull/18296> |
| #18260 | VS Code: add resource context-menu Open terminal action | mitchdenny | <https://github.com/microsoft/aspire/pull/18260> |
| #18199 | make dashboard metrics filter value clickable | inlineHamed | <https://github.com/microsoft/aspire/pull/18199> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18424 | Remove EnvironmentVariables from CliExecutionContext, use IEnvironment instead | open | JamesNK | <https://github.com/microsoft/aspire/pull/18424> |
| PR | #18422 | [Automated] Update Azure VM Sizes | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18422> |
| PR | #18421 | Use federated OIDC auth for Update Azure VM Sizes workflow | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18421> |
| PR | #18416 | Document PostgreSQL 18 data volume upgrade in integration README | open | sebastienros | <https://github.com/microsoft/aspire/pull/18416> |
| PR | #18414 | [automated] Unquarantine stable test candidates | open | Copilot | <https://github.com/microsoft/aspire/pull/18414> |
| PR | #18411 | ci: enforce selective test selection on PRs | open | radical | <https://github.com/microsoft/aspire/pull/18411> |
| PR | #18410 | Add first-party Nix package for Aspire CLI | open | davidfowl | <https://github.com/microsoft/aspire/pull/18410> |
| PR | #18407 | Stop listing agent-skill snippets as AppHosts | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18407> |
| PR | #18406 | [Automated] Update dependencies | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18406> |
| PR | #18377 | Add feedback issue flow | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/18377> |
| PR | #18392 | Fix unobserved IOException from k8s watch streams during shutdown | closed | JamesNK | <https://github.com/microsoft/aspire/pull/18392> |
| PR | #18387 | Increase SourceIndexStage1 timeout to prevent internal pipeline timeout failures | closed | Copilot | <https://github.com/microsoft/aspire/pull/18387> |
| PR | #18378 | Fix ASPIRE009: include DCP binary in deployment CI bundle layout | closed | Copilot | <https://github.com/microsoft/aspire/pull/18378> |
| PR | #18368 | Group the selective-CI test-selector comment by trigger and lead with what runs | closed | radical | <https://github.com/microsoft/aspire/pull/18368> |
| PR | #18367 | [automated] Unquarantine stable tests: StopAllAppHostsFromUnrelatedDirectory, ProxylessEndpointWorks, StartResourceForcesStart, TestServicesWithMultipleReplicas | closed | Copilot | <https://github.com/microsoft/aspire/pull/18367> |
| PR | #17972 | [Automated] Update Github Models | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17972> |
| Issue | #18423 | [Deployment E2E] Nightly test failure - 2026-06-23 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18423> |
| Issue | #18420 | VS Code Extension: Hide "Workspace AppHosts" root node when there is only one AppHost | open | JamesNK | <https://github.com/microsoft/aspire/issues/18420> |
| Issue | #18419 | Consider disabling VersionCheckService in DistributedApplicationTestingBuilder | open | JamesNK | <https://github.com/microsoft/aspire/issues/18419> |
| Issue | #18417 | AspireAiMonitor — live status | open | radical | <https://github.com/microsoft/aspire/issues/18417> |
| Issue | #18412 | Re-enable VS Code extension E2E tests in CI (temporarily disabled due to flakiness) | open | radical | <https://github.com/microsoft/aspire/issues/18412> |
| Issue | #18408 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18408> |
| Issue | #18403 | Azure Key Vault soft-delete conflict can require AppHost model change when tombstone is not discoverable | open | davidfowl | <https://github.com/microsoft/aspire/issues/18403> |
| Issue | #18402 | Sunset Github Models integration | closed | sebastienros | <https://github.com/microsoft/aspire/issues/18402> |
| Issue | #18401 | Unable to run Aspire app from VS if hot reload is enabled | open | mb-jp | <https://github.com/microsoft/aspire/issues/18401> |
| Issue | #18400 | Using aspire inside Docker sandbox | open | antsok | <https://github.com/microsoft/aspire/issues/18400> |
| Issue | #18398 | Aspire VS Code extension lists code snippets from Agent Skills as `AppHost`s | open | hansmbakker | <https://github.com/microsoft/aspire/issues/18398> |
| Issue | #18397 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18397> |
| Issue | #18391 | [Deployment E2E] Nightly test failure - 2026-06-22 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18391> |
| Issue | #18388 | Unobserved task exception ("The request was aborted.") from DCP KubernetesClient watch stream on DistributedApplication dispose | open | thomhurst | <https://github.com/microsoft/aspire/issues/18388> |
| Issue | #18385 | Dashboard: a resource command button can overflow the resource row and make the '...' actions menu unreachable | closed | joperezr | <https://github.com/microsoft/aspire/issues/18385> |
| Issue | #18384 | Add support for Redis Cluster/Sentinel | open | aradalvand | <https://github.com/microsoft/aspire/issues/18384> |
| Issue | #18381 | [CI] Build broken on main — 20260620.3 | open | joperezr | <https://github.com/microsoft/aspire/issues/18381> |
| Issue | #18380 | Aspire update adds wildcard pattern to private nuget source | closed | JohnGoldsmith | <https://github.com/microsoft/aspire/issues/18380> |
| Issue | #18379 | [Deployment E2E] Nightly test failure - 2026-06-21 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18379> |
| Issue | #18375 | `db1-migrations` in SQL Playground fails to start | open | afscrome | <https://github.com/microsoft/aspire/issues/18375> |
| Issue | #18374 | VS Code E2E tests runnng on old version | open | afscrome | <https://github.com/microsoft/aspire/issues/18374> |
| Issue | #18372 | 13.4 CLI can't connect to main | open | afscrome | <https://github.com/microsoft/aspire/issues/18372> |
| Issue | #18371 | `aspire run` arguments are case sensitive | open | afscrome | <https://github.com/microsoft/aspire/issues/18371> |
| Issue | #18359 | AppHost SDK dotnet run hook can recurse with older Aspire CLI on PATH | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/18359> |
| Issue | #18329 | [Deployment E2E] Nightly test failure - 2026-06-19 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18329> |
| Issue | #18262 | [Deployment E2E] Nightly test failure - 2026-06-17 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18262> |
| Issue | #18229 | [Deployment E2E] Nightly test failure - 2026-06-16 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18229> |
| Issue | #18206 | [Deployment E2E] Nightly test failure - 2026-06-15 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18206> |
| Issue | #18198 | [Deployment E2E] Nightly test failure - 2026-06-14 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18198> |
| Issue | #18193 | [Deployment E2E] Nightly test failure - 2026-06-13 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18193> |
| Issue | #18143 | [Deployment E2E] Nightly test failure - 2026-06-12 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18143> |
| Issue | #18102 | aspire resource command writes non-JSON preamble to stdout before JSON payload | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18102> |
| Issue | #18084 | VS Code extension: add resource context-menu action to attach terminal | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18084> |
| Issue | #18076 | [Deployment E2E] Nightly test failure - 2026-06-10 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18076> |
| Issue | #18037 | [Deployment E2E] Nightly test failure - 2026-06-09 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18037> |
| Issue | #18021 | VS Code Extension shouldn't kill a debug session if broken on a Breakpoint for over 2 minutes | closed | afscrome | <https://github.com/microsoft/aspire/issues/18021> |
| Issue | #17998 | [Deployment E2E] Nightly test failure - 2026-06-08 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17998> |
| Issue | #17940 | [Deployment E2E] Nightly test failure - 2026-06-05 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17940> |
| Issue | #17720 | [Deployment E2E] Nightly test failure - 2026-05-30 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17720> |
| Issue | #17587 | [AspireE2E]`aspire add` failed to add the integration package after stopping the `detach ` process | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/17587> |
| Issue | #17523 | [Deployment E2E] Nightly test failure - 2026-05-27 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17523> |
