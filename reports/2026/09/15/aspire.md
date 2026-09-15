# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-14 03:34:25 〜 2026-09-15 00:08:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 15 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 13 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | joperezr, JamesNK, aspire-repo-bot[bot], radical, gabisonia, Copilot |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / merged / nellshamrell）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.1 （PR / open / sebastienros）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ セキュリティ** [#20052](https://github.com/microsoft/aspire/pull/20052) — Configure NuGet audit sources and non-fatal vulnerability warnings （PR / open / joperezr）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ セキュリティ** [#19248](https://github.com/microsoft/aspire/pull/19248) — Redact owning resource's own secret env var in `describe` （PR / merged / IEvangelist）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ セキュリティ** [#19052](https://github.com/microsoft/aspire/pull/19052) — [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) （PR / merged / IEvangelist）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **非推奨/廃止** [#20119](https://github.com/microsoft/aspire/pull/20119) — [release/13.5] Fix deprecated Homebrew cask DSL usage （PR / merged / joperezr）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **非推奨/廃止** [#19965](https://github.com/microsoft/aspire/pull/19965) — Fix deprecated Homebrew cask DSL usage （PR / merged / askpt）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。

## このリポジトリの要点

Project Radius 連携でレシピ出力から backing resource connection を投影し、Radius 0.60 へ更新する大きな変更が入りました。NuGet 監査、秘密情報の redact、暗号ライブラリ更新、Homebrew cask DSL 対応も進み、統合・リリース運用の安全性が強化されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60

- 作者: nellshamrell / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +11849 / -609
- マージ日時 (UTC): `2026-09-14 23:13:44`

**変更概要**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (59 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Radius/Publishing/BicepPostProcessor.cs` | 12 | 0 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/ContainerEnvVarConstruct.cs` | 40 | 4 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/LegacyApplicationEnvironmentConstruct.cs` | 6 | 4 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/LegacyRecipeEntryConstruct.cs` | 3 | 2 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/RadiusContainerConstruct.cs` | 4 | 2 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/RadiusResourceTypeConstruct.cs` | 124 | 1 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/RadiusSecuritySecretConstruct.cs` | 134 | 0 |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/RecipeEntryConstruct.cs` | 13 | 5 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusBackingConnections.cs` | 271 | 0 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusCommandRunner.cs` | 26 | 0 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusDeploymentPipelineStep.cs` | 417 | 1 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusInfrastructureBuilder.cs` | 3929 | 326 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusInfrastructureOptions.cs` | 34 | 2 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusPublishAnnotations.cs` | 10 | 1 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusUnresolvableValueException.cs` | 56 | 0 |
| _... 他 44 件_ | | |

</details>

<details><summary>コミット (46 件)</summary>

- `a394906` Project Radius backing resource connections from recipe outputs
- `3196a62` Address review findings on Radius backing resource projection
- `3c65637` Add a usage example to the public Radius endpoint exception
- `b66d17e` Write UDT credentials to schema properties and fix Postgres recipe
- `e3ee8a9` Make the Radius Postgres deploy E2E install the contrib type
- `13fe637` Address review feedback on Radius credential and type mapping
- `ecff158` Renumber backing-resource diagnostics to ASPIRERADIUS069-074
- `a07bc2e` Address automated review feedback on backing-resource connections
- _... 他 38 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」に伴い、関連する API 契約・既定値・実行フローが見直されています。**破壊的変更の可能性があるため**、既存呼び出しと設定を新しい契約に照合してください。

**既存利用者への影響**

既存利用者はアップグレード前に該当 API・設定・生成物を確認し、必要に応じて移行対応と回帰テストを追加してください。

### [#20119](https://github.com/microsoft/aspire/pull/20119) — [release/13.5] Fix deprecated Homebrew cask DSL usage

- 作者: joperezr / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +96 / -39
- マージ日時 (UTC): `2026-09-14 18:13:45`

**変更概要**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/release-process.md` | 2 | 1 |
| `eng/homebrew/README.md` | 3 | 4 |
| `eng/homebrew/aspire.rb.template` | 3 | 4 |
| `eng/homebrew/dogfood.sh` | 3 | 10 |
| `eng/homebrew/validate-cask-artifact.sh` | 28 | 13 |
| `eng/pipelines/release-publish-nuget.yml` | 4 | 2 |
| `tests/Aspire.Acquisition.Tests/Scripts/PRScriptInstallerModeTests.cs` | 53 | 5 |

</details>

<details><summary>コミット (1 件)</summary>

- `83a54a9` Fix deprecated Homebrew cask DSL usage (#19965)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」に伴い、関連する API 契約・既定値・実行フローが見直されています。**破壊的変更の可能性があるため**、既存呼び出しと設定を新しい契約に照合してください。

**既存利用者への影響**

既存利用者はアップグレード前に該当 API・設定・生成物を確認し、必要に応じて移行対応と回帰テストを追加してください。

### [#19939](https://github.com/microsoft/aspire/pull/19939) — Skip CI entirely for API/ATS baseline-only PRs

- 作者: Copilot / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +201 / -36
- マージ日時 (UTC): `2026-09-14 18:43:02`

**変更概要**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/actions/check-changed-files/action.yml` | 5 | 3 |
| `docs/ci/test-trigger-map.md` | 6 | 5 |
| `eng/github-ci/ci-skip-entirely-patterns.txt` | 7 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 60 | 12 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsAcceptanceTests.cs` | 104 | 14 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsWorkflowTests.cs` | 19 | 2 |

</details>

<details><summary>コミット (5 件)</summary>

- `0c4bf85` Skip CI entirely for API/ATS baseline-only PRs
- `06fb091` Fix API baseline and polyglot routing gaps
- `a50a089` test(ci): use real TypeScript suppression path
- `fb4ca6d` fix(ci): keep API source and polyglot consumers covered
- `dafc74e` fix(ci): keep renamed source files in CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」に伴い、関連する API 契約・既定値・実行フローが見直されています。**破壊的変更の可能性があるため**、既存呼び出しと設定を新しい契約に照合してください。

**既存利用者への影響**

既存利用者はアップグレード前に該当 API・設定・生成物を確認し、必要に応じて移行対応と回帰テストを追加してください。

### [#19958](https://github.com/microsoft/aspire/pull/19958) — Honor selected launch profile in bundled dotnet run

- 作者: gabisonia / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +100 / -11
- マージ日時 (UTC): `2026-09-14 17:53:25`

**変更概要**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 5 | 1 |
| `tests/Aspire.Cli.EndToEnd.Tests/LaunchProfileTests.cs` | 15 | 6 |
| `tests/Aspire.Cli.Tests/Projects/DotNetAppHostProjectTests.cs` | 80 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `ebd4386` Honor inherited launch profile when running bundled AppHosts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」に伴い、関連する API 契約・既定値・実行フローが見直されています。**破壊的変更の可能性があるため**、既存呼び出しと設定を新しい契約に照合してください。

**既存利用者への影響**

既存利用者はアップグレード前に該当 API・設定・生成物を確認し、必要に応じて移行対応と回帰テストを追加してください。

### [#20039](https://github.com/microsoft/aspire/pull/20039) — Add daily main to release/14.0 synchronization

- 作者: joperezr / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +734 / -0
- マージ日時 (UTC): `2026-09-14 16:43:49`

**変更概要**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/README.md` | 91 | 0 |
| `.github/workflows/monitor-scheduled-workflows.config.json` | 1 | 0 |
| `.github/workflows/sync-main-to-release-14.yml` | 193 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/SyncMainToRelease14Tests.cs` | 124 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/sync-main-to-release-14.harness.mjs` | 325 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `6104f09` Add daily main to release/14.0 synchronization
- `8634407` Fix release sync token permissions and mergeable states
- `a97e1c4` Keep release sync within existing App permissions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」に伴い、関連する API 契約・既定値・実行フローが見直されています。**破壊的変更の可能性があるため**、既存呼び出しと設定を新しい契約に照合してください。

**既存利用者への影響**

既存利用者はアップグレード前に該当 API・設定・生成物を確認し、必要に応じて移行対応と回帰テストを追加してください。

### [#20094](https://github.com/microsoft/aspire/pull/20094) — [release/13.5] Fix Kafka AppHost health-check producer lifetime

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +73 / -13
- マージ日時 (UTC): `2026-09-14 16:58:41`

**変更概要**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Kafka/KafkaBuilderExtensions.cs` | 12 | 13 |
| `tests/Aspire.Hosting.Kafka.Tests/AddKafkaTests.cs` | 61 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `bd93f96` Fix Kafka AppHost health-check producer lifetime

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60」に伴い、関連する API 契約・既定値・実行フローが見直されています。**破壊的変更の可能性があるため**、既存呼び出しと設定を新しい契約に照合してください。

**既存利用者への影響**

既存利用者はアップグレード前に該当 API・設定・生成物を確認し、必要に応じて移行対応と回帰テストを追加してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20073 | Use AWS-LC for Rust playground OTLP TLS | joperezr | <https://github.com/microsoft/aspire/pull/20073> |
| #20110 | [release/13.5] Constrain aspire-starter port replacers to localhost: URLs | JamesNK | <https://github.com/microsoft/aspire/pull/20110> |
| #20071 | Fix CLI transitive MessagePack dependency without changing the NativeAOT RPC preview | joperezr | <https://github.com/microsoft/aspire/pull/20071> |
| #19926 | test(ci): enforce selective test trigger dependencies | radical | <https://github.com/microsoft/aspire/pull/19926> |
| #19814 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19814> |
| #19996 | Preselect CLI-default Aspire agent assets in VS Code | ellahathaway | <https://github.com/microsoft/aspire/pull/19996> |
| #18763 | Include failure details in CI analysis issues | JamesNK | <https://github.com/microsoft/aspire/pull/18763> |
| #20084 | Fix dashboard disabled and row hover styles | JamesNK | <https://github.com/microsoft/aspire/pull/20084> |
| #19882 | ci: Run extension and CLI E2E only for actual consumers | radical | <https://github.com/microsoft/aspire/pull/19882> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20109 | Analyze pull request CI failures | open | JamesNK | <https://github.com/microsoft/aspire/pull/20109> |
| PR | #20115 | Add experimental Azure Container Apps Express support | open | eerhardt | <https://github.com/microsoft/aspire/pull/20115> |
| PR | #20127 | Fix VS Code E2E diagnostics copying live Dashboard state | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20127> |
| PR | #20126 | Fix CI analysis misclassifying setup failures | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20126> |
| PR | #20116 | Isolate WinUI E2E design-time build outputs | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20116> |
| PR | #20118 | Fix Deno launch-profiles E2E setup and teardown | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20118> |
| PR | #20123 | Expose Azure Front Door profile ID output | open | gabisonia | <https://github.com/microsoft/aspire/pull/20123> |
| PR | #20120 | Add missing hosting project READMEs | open | eerhardt | <https://github.com/microsoft/aspire/pull/20120> |
| PR | #20112 | Fix VS Code extension re-adding nonexistent configured AppHost path | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/20112> |
| PR | #20111 | Hide "Add Aspire to this workspace" when every folder already has an AppHost | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/20111> |
| PR | #20104 | Run VS Code E2E tests only for CLI and extension changes | open | Copilot | <https://github.com/microsoft/aspire/pull/20104> |
| PR | #19988 | fix(ci): stop benchmark-only changes from running all tests | closed | radical | <https://github.com/microsoft/aspire/pull/19988> |
| Issue | #20130 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20130> |
| Issue | #20129 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20129> |
| Issue | #20122 | [CI Failure] Flaky: VS Code extension E2E dynamic debug configuration test teardown fails with EBUSY resource busy/locked on Windows temp workspace rmdir | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20122> |
| Issue | #20128 | [CI Failure] SqlServerContainerFixture InitializeAsync fails because Ryuk image pull from netaspireci.azurecr.io is refused (connection refused) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20128> |
| Issue | #20124 | Upgrade MSBuild dependencies after dropping .NET 8 support in Aspire 14.0 | open | joperezr | <https://github.com/microsoft/aspire/issues/20124> |
| Issue | #20117 | VS Code: Blazor WebAssembly debugging intermittently fails to attach on Windows | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20117> |
| Issue | #20121 | [CI Failure] Flaky: TelemetryHookScriptTests pwsh hook process does not exit within 30 seconds on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20121> |
| Issue | #20114 | Consider clearer naming for HttpCommandOptions.GetCommandResult alongside PrepareRequest | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20114> |
| Issue | #20113 | Expose GetCommandResult for HTTP commands in TypeScript and other polyglot AppHosts | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20113> |
| Issue | #20108 | [CI Failure] Flaky: AppHostServerSessionTests.Start_StopRequested_GracefulSignalerThrows_StillEscalatesToKill fails intermittently on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20108> |
| Issue | #20107 | [dnceng-bot] Branch `aspire/main` can't be mirrored to Azdo fast forward branch | open | dotnet-mirroring[bot] | <https://github.com/microsoft/aspire/issues/20107> |
| Issue | #20106 | [TerminalHost] Publish TerminalHost as Native AOT | open | Copilot | <https://github.com/microsoft/aspire/issues/20106> |
| Issue | #20105 | [CI Failure] GitHub Actions artifact download fails with 403 Forbidden from intermediary during ListArtifacts | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20105> |
| Issue | #18935 | Radius: backing resources (Redis/Postgres/Mongo/etc.) emit `{name}-{name}` service discovery that doesn't match the recipe's Service | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18935> |
| Issue | #19817 | Visualize the Aspire app model in GitHub Copilot's app canvas | closed | joperezr | <https://github.com/microsoft/aspire/issues/19817> |
| Issue | #19794 | Remove stale AcrPull access when a deployment target switches registries | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19794> |
| Issue | #19701 | Deployment E2E jobs exhaust the AKS managed-cluster quota | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19701> |
| Issue | #19171 | CI failing on `release/13.5` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19171> |
| Issue | #20097 | Scheduled workflow failing: Refresh Manifests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20097> |
| Issue | #19867 | dotnet run --launch-profile ignored when AspireUseCliBundle is true | closed | inlineHamed | <https://github.com/microsoft/aspire/issues/19867> |
| Issue | #19898 | [Windows/Podman] Container tunnel image build fails with permission denied when Visual Studio runs as administrator | closed | edumserrano | <https://github.com/microsoft/aspire/issues/19898> |
| Issue | #19450 | [CI Failure] VS Code extension E2E test (Linux, zero-to-running) exceeds max job execution time (1h15m) and is cancelled | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19450> |
| Issue | #19453 | [CI Failure] Flaky: VS Code extension E2E (Linux, settings-files) shard fails, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19453> |
| Issue | #19629 | [VS Code] Preselect the CLI-default Aspire skills and agent assets during project creation | closed | adamint | <https://github.com/microsoft/aspire/issues/19629> |
