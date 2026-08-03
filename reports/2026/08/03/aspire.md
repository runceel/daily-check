# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 21 |
| クローズ (未マージ) PR  | 5 |
| 新規 Issue              | 32 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | adamint, mitchdenny, Arasz, karolz-ms, nellshamrell, dotnet-maestro[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18919](https://github.com/microsoft/aspire/issues/18919) — [AspireE2E]Build aspire project with warning "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" （Issue / open / Susie-1989）
  Microsoft.OpenApi 2.0.0 を参照する Aspire E2E 構成は NU1903 警告と高重大度脆弱性を確認し、修正版依存へ更新してください。
- **⚠ セキュリティ** [#18858](https://github.com/microsoft/aspire/pull/18858) — [auto-sec] Consolidate Aspire JavaScript template dependency security remediations （PR / open / IEvangelist）
  Aspire JavaScript テンプレートの利用者は、統合された依存セキュリティ修正を取り込み、生成プロジェクトの lockfile を更新してください。
- **⚠ セキュリティ** [#18837](https://github.com/microsoft/aspire/pull/18837) — deps: consolidated Aspire JavaScript template security updates (tracked by #18858) （PR / closed / dependabot[bot]）
  クローズ済みの旧 Dependabot PR ではなく、追跡 Issue #18858 と統合後の修正内容を基準に依存更新を確認してください。

## このリポジトリの要点

CLI の NuGet 検索ヘルパーのリーク修正（#18958）と Radius の ClusterIP サービス検出修正（#18797）で、開発時の安定性が改善されました。  
実行コンテキストに RunConfiguration を導入（#18863）し、watch などの実行モードを構成可能にしています。  
JavaScript テンプレート依存のセキュリティ更新（#18858）と Microsoft.OpenApi 脆弱性は引き続き要確認です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18958](https://github.com/microsoft/aspire/pull/18958) — Stop leaking orphaned aspire-managed NuGet search helpers

- 作者: Arasz / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +338 / -25
- マージ日時 (UTC): `2026-08-03 01:07:18`

**変更概要**

Aspire CLI の NuGet 検索・先読み処理で、コマンド終了後に孤児化したヘルパーが残るリークを修正しました。  
コマンド選択を待ってから先読みを開始し、`ls` / `ps` のオプトアウトが回避されないようにしています。  
CLI の新規作成・一覧・プロセス操作と、長時間実行やテスト時のリソース解放に影響します。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/LsCommand.cs` | 12 | 1 |
| `src/Aspire.Cli/Commands/NewCommand.cs` | 11 | 0 |
| `src/Aspire.Cli/Commands/PsCommand.cs` | 13 | 1 |
| `src/Aspire.Cli/NuGet/NuGetPackagePrefetcher.cs` | 34 | 13 |
| `tests/Aspire.Cli.Tests/Commands/NewCommandTests.cs` | 38 | 0 |
| `tests/Aspire.Cli.Tests/NuGet/NuGetPackagePrefetcherTests.cs` | 226 | 9 |
| `tests/Aspire.Cli.Tests/Utils/CliTestHelper.cs` | 4 | 1 |

</details>

<details><summary>コミット (6 件)</summary>

- `ff316a0` Stop leaking orphaned aspire-managed NuGet search helpers
- `4dd5fc8` Extract the prefetch wait into PreventOrphanedPrefetchingAsync
- `4c041c9` Record why the new tests bypass the drifted TestNuGetPrefetcher copy
- `8122513` Wait for command selection so the ls/ps opt-out cannot be bypassed
- `842e4c1` Use virtual time for NuGet prefetcher test
- `9b49e76` Ensure new command extracts CLI bundle

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の破壊的変更はありません。NuGetPackagePrefetcher に待機・孤児化防止の内部処理を分離し、仮想時間を使うテストを追加しています。

**既存利用者への影響**

通常の CLI 利用者に移行は不要です。CLI 拡張や独自テストで先読みのタイミングに依存している場合は、コマンド選択後に実行される新しい順序を確認してください。

### [#18947](https://github.com/microsoft/aspire/pull/18947) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-31 18:16:40`

**変更概要**

Aspire が依存する microsoft/dcp のビルドを 0.25.10 に更新しました。  
Version Details と Versions.props の依存ピンを同期し、コードフローから取得する成果物を整合させています。  
Aspire のビルド・実行環境を更新する利用者は、DCP 互換性と回帰を確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `78e499b` Update dependencies from https://github.com/microsoft/dcp build 0.25.10

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API の直接変更はなく、依存バージョン管理ファイルだけが更新されています。DCP 0.25.10 の成果物を参照する構成になります。

**既存利用者への影響**

通常は移行不要ですが、DCP の内部挙動に依存する拡張や固定済み SDK を持つ場合は、同じ依存バージョンで動作確認してください。

### [#18594](https://github.com/microsoft/aspire/pull/18594) — Fix stale VS Code global AppHost after debug stop

- 作者: adamint / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +83 / -3
- マージ日時 (UTC): `2026-07-31 17:05:58`

**変更概要**

デバッグ停止後も VS Code のグローバル AppHost 状態が古いまま残る問題を修正しました。  
ポーリング再起動をまたぐ停止後更新を維持し、回帰テストを実際に残る再起動経路へ合わせています。  
VS Code 拡張で AppHost の停止・再起動を行う開発者の表示状態が改善されます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/test/appHostDataRepository.test.ts` | 72 | 0 |
| `extension/src/views/AppHostDataRepository.ts` | 11 | 3 |

</details>

<details><summary>コミット (3 件)</summary>

- `20ba229` Keep AppHost stop refresh across polling restarts
- `9642405` Merge branch 'main' into PR #18594
- `e26e237` Retarget the stop-refresh regression test at the surviving restart path

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や設定形式の変更はありません。AppHostDataRepository の更新タイミングと停止後ポーリングを修正し、回帰テストを追加しています。

**既存利用者への影響**

移行は不要です。VS Code 拡張を更新して、デバッグ停止後に AppHost 状態が正しく再取得されることを確認してください。

### [#18797](https://github.com/microsoft/aspire/pull/18797) — Fix Radius service discovery to match the recipe's ClusterIP Service

- 作者: nellshamrell / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +1207 / -40
- マージ日時 (UTC): `2026-07-30 05:49:37`

**変更概要**

Radius のサービス検出が recipe の ClusterIP Service と一致しない問題を修正しました。  
Radius リソース構築、サービス検出、環境リソースの発行を見直し、Azure リソースと Redis 診断を含む E2E / 単体テストを追加しています。  
Radius を使う Aspire アプリの名前解決とデプロイ結果に影響します。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Radius/Publishing/Constructs/RadiusContainerConstruct.cs` | 15 | 2 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusInfrastructureBuilder.cs` | 248 | 5 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusServiceDiscovery.cs` | 128 | 0 |
| `src/Aspire.Hosting.Radius/RadiusEnvironmentResource.cs` | 71 | 1 |
| `src/Aspire.Hosting/Aspire.Hosting.csproj` | 2 | 0 |
| `tests/Aspire.Deployment.EndToEnd.Tests/README.md` | 34 | 8 |
| `tests/Aspire.Deployment.EndToEnd.Tests/RadiusAzureResourcesDeploymentTests.cs` | 139 | 0 |
| `tests/Aspire.Deployment.EndToEnd.Tests/RadiusStarterDeploymentTests.cs` | 81 | 16 |
| `tests/Aspire.Hosting.Radius.Tests/Publishing/ConfigureRadiusInfrastructureTests.cs` | 331 | 0 |
| `tests/Aspire.Hosting.Radius.Tests/Publishing/ContainerEnvironmentEmissionTests.cs` | 32 | 5 |
| `tests/Aspire.Hosting.Radius.Tests/Publishing/RadiusServiceDiscoveryTests.cs` | 91 | 0 |
| `tests/Aspire.Hosting.Radius.Tests/RadiusEnvironmentResourceTests.cs` | 35 | 3 |

</details>

<details><summary>コミット (7 件)</summary>

- `9e064a6` Add Radius Azure resource gap test and Redis cache diagnostics to Rad…
- `681499c` Fix Radius service discovery to match the recipe's ClusterIP Service
- `a9ff196` Harden Radius publisher against service-discovery divergence from rev…
- `d4fd7f7` Address PR review comments on Radius service-discovery guards
- `b06162b` Address second-pass Radius review comments
- `9fa6df8` Address third-pass Radius review comments
- `c2ae39a` Fix contradictory containerName doc on RadiusContainerConstruct

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

RadiusServiceDiscovery と RadiusInfrastructureBuilder の検出・発行ガードが変更され、ClusterIP を前提にした構成が明確になりました。既存 API の明示的な破壊的変更はありませんが、独自 recipe はサービス名と種別を確認してください。

**既存利用者への影響**

標準 recipe の利用者は更新のみで移行不要です。独自 Radius 構成やサービス検出を上書きする場合は、ClusterIP Service と一致する設定へ調整してください。

### [#18854](https://github.com/microsoft/aspire/pull/18854) — Reconfigure deployment E2E tests: centralus AKS region, quota self-healing, and subscription-provisioning job

- 作者: mitchdenny / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +361 / -59
- マージ日時 (UTC): `2026-07-30 01:26:11`

**変更概要**

デプロイ E2E テストを Central US の AKS リージョンに再構成し、クォータ不足時の自己修復とサブスクリプション プロビジョニング ジョブを追加しました。  
vCPU クォータ確認、リソース プロバイダー登録、待機時間上限を共通化し、CI のハングや認証ウィンドウ超過を抑えます。  
主にテスト基盤の変更で、利用者向け API への直接影響はありません。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/deployment-tests.yml` | 250 | 2 |
| `docs/specs/aks-support.md` | 1 | 1 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AcaManagedRedisDeploymentTests.cs` | 4 | 2 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksAzureKubernetesEnvironmentCertManagerDeploymentTests.cs` | 6 | 4 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksAzureKubernetesEnvironmentCertManagerTypeScriptDeploymentTests.cs` | 6 | 4 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksAzureKubernetesEnvironmentGatewayDeploymentTests.cs` | 11 | 9 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksBlazorRedisDeploymentTests.cs` | 3 | 1 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksMultipleNodePoolsDeploymentTests.cs` | 5 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksStarterDeploymentTests.cs` | 3 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksStarterWithRedisHelmDeploymentTests.cs` | 2 | 2 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksVnetInfraDeploymentTests.cs` | 5 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksVnetWithAzureResourcesDeploymentTests.cs` | 5 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksWithAzureResourcesDeploymentTests.cs` | 6 | 4 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksWithHelmChartDeploymentTests.cs` | 7 | 5 |
| `tests/Aspire.Deployment.EndToEnd.Tests/FrontDoorDeploymentTests.cs` | 18 | 5 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (21 件)</summary>

- `77a4dbb` Whitespace change to validate deployment E2E test reconfiguration
- `a0fdd12` Register required Azure resource providers in deployment E2E jobs
- `96622d2` Drop per-provider mapping comments in deployment E2E provider step
- `33880a4` Check and request compute vCPU quota in deployment-tests
- `bfd6fb6` Generalize deployment-tests quota step across providers
- `f4fdf04` Migrate westus3 AKS/K8s deployment tests to Standard_D2s_v6
- `12c52c0` Fix quota step hang: target v6 family and time-bound requests
- `e75bf80` Cap provider-registration wait to keep tests within the CI auth window
- _... 他 13 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。deployment-tests のワークフローにクォータ要求・プロバイダー登録・タイムアウト制御を追加し、AKS の VM SKU も更新しています。

**既存利用者への影響**

アプリ利用者の移行は不要です。CI を独自に構成している場合は Central US、vCPU クォータ、必要なリソース プロバイダー登録の前提を確認してください。

### [#18863](https://github.com/microsoft/aspire/pull/18863) — Add run mode configuration to execution context

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +377 / -48
- マージ日時 (UTC): `2026-07-29 21:09:55`

**変更概要**

実行コンテキストに実行モード設定を追加し、watch などのサブモードを構成可能にしました。  
従来の RunSubMode enum を組み合わせ可能な RunConfiguration オブジェクトへ置き換え、各言語のコード生成スナップショットも更新しています。  
DistributedApplicationBuilder を拡張する利用者は、実行モード指定と生成コードの挙動を確認してください。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/plans/project-v2-csharpprogram-watch.md` | 60 | 46 |
| `src/Aspire.Hosting/DistributedApplicationBuilder.cs` | 14 | 2 |
| `src/Aspire.Hosting/DistributedApplicationExecutionContext.cs` | 14 | 0 |
| `src/Aspire.Hosting/DistributedApplicationExecutionContextOptions.cs` | 10 | 0 |
| `src/Aspire.Hosting/RunConfiguration.cs` | 38 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 28 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Java.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.java` | 39 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Python.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.py` | 12 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Rust.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.rs` | 25 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 31 | 0 |
| `tests/Aspire.Hosting.Tests/OperationModesTests.cs` | 106 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `b188d42` Add "watch" sub-mode for execution context
- `bc726ff` Replace RunSubMode enum with a composable RunConfiguration object
- `9d01a94` Make RunConfiguration doc comments more concise
- `2dd4a03` Regenerate TypeScript codegen snapshot for RunConfiguration docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ API 変更**。RunConfiguration が新しい構成抽象として追加され、従来の RunSubMode enum ベースの指定から composable なオブジェクトへ変わりました。watch サブモードと execution context options が公開されています。

**既存利用者への影響**

RunSubMode を直接指定している利用者は RunConfiguration への移行が必要です。既定の AppHost 実行だけを使う場合は更新後の既定動作を確認すれば足ります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18561 | Stop AppHost debug session before Aspire parent | adamint | <https://github.com/microsoft/aspire/pull/18561> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18968 | Make CLI package metadata prefetching opt-in | open | JamesNK | <https://github.com/microsoft/aspire/pull/18968> |
| PR | #18954 | Add resource icons to all hosting integration packages | open | afscrome | <https://github.com/microsoft/aspire/pull/18954> |
| PR | #18964 | Default Oracle database resources to FREEPDB1 | open | yash2006kr | <https://github.com/microsoft/aspire/pull/18964> |
| PR | #18963 | Disable resilience handler in test builders by default | open | afscrome | <https://github.com/microsoft/aspire/pull/18963> |
| PR | #18918 | Decouple Aspire.Hosting.Dotnet from Aspire.Hosting internals | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18918> |
| PR | #18930 | Fix waiting for custom resources | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18930> |
| PR | #18925 | Add pinning to Dashboard run history | open | JamesNK | <https://github.com/microsoft/aspire/pull/18925> |
| PR | #18940 | Fix Windows global-tool Aspire CLI discovery | open | adamint | <https://github.com/microsoft/aspire/pull/18940> |
| PR | #18943 | Dashboard: design-token system, typography refresh, UX polish & axe accessibility tests | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18943> |
| PR | #18952 | Properly process object update notifications from DCP | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18952> |
| PR | #18949 | Enable running container tests on Podman-only machines | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18949> |
| PR | #18934 | Add Dashboard run history access for agents | open | JamesNK | <https://github.com/microsoft/aspire/pull/18934> |
| PR | #18924 | Add SQLite persistence and run history to the Dashboard | open | JamesNK | <https://github.com/microsoft/aspire/pull/18924> |
| PR | #18939 | Allow assigning parent account roles to Foundry project identities | open | RealBhupesh | <https://github.com/microsoft/aspire/pull/18939> |
| PR | #18941 | Preserve unique suffixes in App Service site names | open | RealBhupesh | <https://github.com/microsoft/aspire/pull/18941> |
| PR | #18942 | Allow descriptions on connection string parameters | open | RealBhupesh | <https://github.com/microsoft/aspire/pull/18942> |
| PR | #18928 | Blazor hosting changes for WebAssembly debugging | open | maraf | <https://github.com/microsoft/aspire/pull/18928> |
| PR | #18936 | Make the vNext image the only Azure Cosmos DB emulator | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18936> |
| PR | #18923 | Remove misplaced empty LogsCommand file | open | Copilot | <https://github.com/microsoft/aspire/pull/18923> |
| PR | #18932 | Add configuration schemas for named integration resources | open | sebastienros | <https://github.com/microsoft/aspire/pull/18932> |
| PR | #18912 | Handle ghost dev tunnel conflicts | open | krubenok | <https://github.com/microsoft/aspire/pull/18912> |
| PR | #18914 | Fix all High/Critical Dependabot npm alerts | closed | joperezr | <https://github.com/microsoft/aspire/pull/18914> |
| PR | #18837 | deps: consolidated Aspire JavaScript template security updates (tracked by #18858) | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18837> |
| PR | #18338 | Fix Windows Aspire CLI cmd shim resolution | closed | adamint | <https://github.com/microsoft/aspire/pull/18338> |
| PR | #18768 | Add SQLite persistence and run history to the Dashboard | closed | JamesNK | <https://github.com/microsoft/aspire/pull/18768> |
| PR | #18917 | Document the dashboard anti-SSRF invariant for reviewers | closed | adamint | <https://github.com/microsoft/aspire/pull/18917> |
| Issue | #18967 | [CI Failure] .NET install script SDK download fails with connection closed mid-stream from builds.dotnet.microsoft.com | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18967> |
| Issue | #18948 | `aspire ls` leaks orphaned `aspire-managed nuget search` helpers (macOS) that accumulate over days and deadlock unrelated `dotnet restore` via NuGet lock contention | closed | kamranayub | <https://github.com/microsoft/aspire/issues/18948> |
| Issue | #18966 | yalm. json | open | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/18966> |
| Issue | #18965 | Make CLI NuGet metadata prefetching opt-in per command | open | JamesNK | <https://github.com/microsoft/aspire/issues/18965> |
| Issue | #18962 | ` Service XYZ should have valid address at this point` | open | afscrome | <https://github.com/microsoft/aspire/issues/18962> |
| Issue | #18961 | `aspire doctor` running for 30+ mins | open | afscrome | <https://github.com/microsoft/aspire/issues/18961> |
| Issue | #18959 | AuxiliaryBackchannelMonitor may silently disable itself when command selection loses a race with the first-run banner | open | Arasz | <https://github.com/microsoft/aspire/issues/18959> |
| Issue | #18957 | Add E2E test coverage for per-language debugger launch flows in the VS Code extension | open | afscrome | <https://github.com/microsoft/aspire/issues/18957> |
| Issue | #18956 | Expose the resolved environment variables to the `WithDebugSupport` launch configuration callback | open | afscrome | <https://github.com/microsoft/aspire/issues/18956> |
| Issue | #18953 | Remove `Github Model` resources | open | afscrome | <https://github.com/microsoft/aspire/issues/18953> |
| Issue | #18955 | CLI: command for wiping local persistent volumes | open | Pattrigue | <https://github.com/microsoft/aspire/issues/18955> |
| Issue | #18951 | ReferenceExpressionBuilder.Append throws FormatException when processing raw strings with single braces (JSON) | open | dlyz | <https://github.com/microsoft/aspire/issues/18951> |
| Issue | #18950 | [CI Failure] Flaky: CanNewAndBuild(aspire-mstest, Net8) fails with Roslyn Method not found TryGetMaxCharCount on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18950> |
| Issue | #18922 | aspire run hangs forever at "Starting dashboard..." when the DCP state store migration is left dirty | closed | adamint | <https://github.com/microsoft/aspire/issues/18922> |
| Issue | #18946 | `dotnet run --operation publish` should exit on failure | open | afscrome | <https://github.com/microsoft/aspire/issues/18946> |
| Issue | #18929 | WithDebugSupport argument rewriting is order-sensitive and mutates the app model | open | afscrome | <https://github.com/microsoft/aspire/issues/18929> |
| Issue | #18944 | WithBindMount fails on Docker Desktop for Linux — incorrect /host_mnt/ path prefix | open | mahdiyar021 | <https://github.com/microsoft/aspire/issues/18944> |
| Issue | #18938 | Can't assign roles like 'Foundry User' to Foundry project resource for Foundry Memory | open | mip1983 | <https://github.com/microsoft/aspire/issues/18938> |
| Issue | #18935 | Radius: backing resources (Redis/Postgres/Mongo/etc.) emit `{name}-{name}` service discovery that doesn't match the recipe's Service | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18935> |
| Issue | #18937 | Expose a project resource child PID or evaluated AssemblyName for debugger attach | open | adamint | <https://github.com/microsoft/aspire/issues/18937> |
| Issue | #18933 | Deployment E2E: AKS/Kubernetes tests fail due to Azure compute quota/capacity in centralus | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18933> |
| Issue | #18931 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18931> |
| Issue | #18919 | [AspireE2E]Build aspire project with warning "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" | open | Susie-1989 | <https://github.com/microsoft/aspire/issues/18919> |
| Issue | #18911 | VS Code Extension fails to start File Based app host, when `aspire run` works | open | afscrome | <https://github.com/microsoft/aspire/issues/18911> |
| Issue | #18921 | [CI Failure] Flaky: ResourceLoggerForwarderServiceTests.ExecuteDoesNotThrowOperationCanceledWhenAppStoppingTokenSignaled times out intermittently on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18921> |
| Issue | #18920 | [CI Failure] Flaky: ConformanceTests.TracingEnablesTheRightActivitySource_Keyed remote executor hangs due to Azure Identity credential failures on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18920> |
| Issue | #18910 | VS Code Extension: Why does running without a debugger say "Starting Debug Session" | open | afscrome | <https://github.com/microsoft/aspire/issues/18910> |
| Issue | #18909 | VS Code Extension shows `Runtime Unhealthy` as error | open | afscrome | <https://github.com/microsoft/aspire/issues/18909> |
| Issue | #18916 | Dashboard: no host validation for outbound requests; add anti-SSRF guardrail before a telemetry-derived URL gets fetched | open | adamint | <https://github.com/microsoft/aspire/issues/18916> |
| Issue | #18915 | Should Otel configuration default to protobuf rather than grpc? | open | afscrome | <https://github.com/microsoft/aspire/issues/18915> |
| Issue | #18913 | DevTunnels cannot recover from ghost tunnel records | open | krubenok | <https://github.com/microsoft/aspire/issues/18913> |
| Issue | #18908 | [Feature] Make Azure Key Vault health check behavior configurable | open | PlaySkyHD | <https://github.com/microsoft/aspire/issues/18908> |
| Issue | #18779 | `aspire ps --format Json` hangs in PowerShell pipelines because an orphaned `aspire-managed` helper holds stdout open | closed | edumserrano | <https://github.com/microsoft/aspire/issues/18779> |
| Issue | #18524 | [Failing test]: VS Code extension E2E 'global debug stop removes running apphost' times out waiting for AppHost to stop | closed | radical | <https://github.com/microsoft/aspire/issues/18524> |
| Issue | #18372 | 13.4 CLI can't connect to main | closed | afscrome | <https://github.com/microsoft/aspire/issues/18372> |
| Issue | #18844 | [AspireE2E] aspire run hangs at "Starting dashboard" with AppHost SDK 13.4.x after running aspire CLI 13.5. | closed | Chakolito | <https://github.com/microsoft/aspire/issues/18844> |
| Issue | #18878 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18878> |
| Issue | #18874 | [aw] Repo Pulse — Daily Report produced no safe outputs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18874> |
| Issue | #18864 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18864> |
| Issue | #18110 | TypeScript AppHost fails code generation with 13.4.3 CLI and 13.5 daily SDK | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18110> |
| Issue | #18796 | `aspire add docker` rejects Docker/Kubernetes integrations for TypeScript AppHosts and suggests missing `--all` option | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/18796> |
| Issue | #15363 | VS Code Extension: Panel empty and update button does not work | closed | jtsom-do | <https://github.com/microsoft/aspire/issues/15363> |
| Issue | #18848 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18848> |
