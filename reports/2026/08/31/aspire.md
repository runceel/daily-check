# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 17 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 53 |
| クローズ Issue          | 53 |
| 主要コントリビューター  | adamint, DamianEdwards, spboyer, radical, Copilot, JamesNK |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19638](https://github.com/microsoft/aspire/issues/19638) — [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests （Issue / closed / github-actions[bot]）
  SQL Server Testcontainer を使う CI の保守担当は、Windows の COM 初期化失敗が再発していないか確認し、適合性テスト結果を監視してください。
- **⚠ セキュリティ** [#19513](https://github.com/microsoft/aspire/pull/19513) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
  Aspire の npm ベースのツールチェーンを管理する担当者は、23 件の依存更新をレビューし、ビルドと脆弱性スキャンの結果を確認してください。
- **⚠ セキュリティ** [#18901](https://github.com/microsoft/aspire/issues/18901) — [CI Failure] SQL Server container exits with CoInitializeSecurity failure (HRESULT 0x800706b5) （Issue / open / github-actions[bot]）
  SQL Server コンテナーを利用する開発・CI 環境は、ホストの COM 初期化条件と再現性を確認し、失敗時の回避策を追跡してください。
- **⚠ セキュリティ** [#14272](https://github.com/microsoft/aspire/issues/14272) — Docs: Security Review For Aspire Mcp （Issue / open / tjwald）
  Aspire MCP を導入する組織は、セキュリティレビューの結果と権限・公開範囲を確認してから運用してください。
- **非推奨/廃止** [#19715](https://github.com/microsoft/aspire/issues/19715) — Aspire CLI DNX acquisition failure hard to troubleshoot in CI （Issue / open / afscrome）
  CI で Aspire CLI の DNX 取得に依存する利用者は、診断ログと取得経路を確認し、CLI／SDK 変更に備えてください。

## このリポジトリの要点

Azure Container Apps Sandboxes の新しいデプロイターゲットが追加され、Azure 上の実行先が拡張されました。  
Dashboard telemetry の SQLite フィルタリング、CLI のリソース監視再利用、CI の影響範囲テスト選択が進みました。  
SQL Server Testcontainer の CI 障害と Aspire MCP のセキュリティレビューは継続確認事項です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19008](https://github.com/microsoft/aspire/pull/19008) — Add Azure Container Apps Sandboxes deployment target

- 作者: spboyer / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +10985 / -10
- マージ日時 (UTC): `2026-08-29 03:38:25`

**変更概要**

Azure Container Apps Sandboxes を Aspire の新しいデプロイターゲットとして追加しました。  
Sandboxes のリソース、コンテナー配置、ACR pull identity、クリーンアップ、リトライを扱うホスティング API と実装を新設しています。  
Azure Sandbox へデプロイする AppHost 利用者は、README の構成と必要な権限・リージョン条件を確認してください。

<details><summary>変更ファイル (45 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/deployment-tests.yml` | 3 | 0 |
| `Aspire.slnx` | 1 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/Aspire.Hosting.Azure.Sandboxes.csproj` | 38 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxCleanupResource.cs` | 50 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxContainerDeployment.cs` | 2364 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxContainerOptionsAnnotation.cs` | 139 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxContainerResource.cs` | 29 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxEndpointPropertyValueProvider.cs` | 193 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxGroupAcrPullIdentityAnnotation.cs` | 24 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxGroupResource.cs` | 331 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxesExtensions.cs` | 501 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/Internal/Adc/AzureDevComputeClient.cs` | 690 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/Provisioning/SandboxGroup.cs` | 83 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/Provisioning/SandboxesResourceVersions.cs` | 10 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/README.md` | 124 | 0 |
| _... 他 30 件_ | | |

</details>

<details><summary>コミット (81 件)</summary>

- `bb1476d` feat: add Azure Container Apps Sandboxes target
- `c241c8e` fix: address Azure Sandboxes review feedback
- `f5eee4e` fix: scope Azure sandbox cleanup ownership
- `da21d18` test: make container output assertion portable
- `f8cdb45` test: avoid cmd echo trailing whitespace
- `9d1290a` fix: configure sandbox build options on target creation
- `f451e84` Address Azure Sandboxes review feedback
- `8118840` Harden Azure Sandboxes APIs and retries
- _... 他 73 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`Aspire.Hosting.Azure.Sandboxes` と `AzureSandboxesExtensions`、コンテナー／グループ／クリーンアップ用の新しいリソース抽象が追加されました。既存のデプロイターゲット API を変更するものではありませんが、Sandbox 固有の公開 API と Azure 権限モデルが新設されています。

**既存利用者への影響**

既存の Aspire アプリに移行作業は不要です。Sandbox を新たに利用する場合は新パッケージ、Azure リソース、権限設定を追加してください。

### [#19661](https://github.com/microsoft/aspire/pull/19661) — Use SQLite for dashboard telemetry filtering

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +917 / -4443
- マージ日時 (UTC): `2026-08-28 06:33:57`

**変更概要**

Dashboard の telemetry filtering を SQLite リポジトリ側で処理するように変更しました。  
従来のフィルター用モデルや拡張を整理し、ログ・トレースの検索処理、スキーマ、画面テストを更新しています。  
Dashboard のログ／トレース表示で大量データを扱う場合の検索効率と一貫性が改善されます。

<details><summary>変更ファイル (32 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Pages/StructuredLogs.razor.cs` | 35 | 23 |
| `src/Aspire.Dashboard/Components/Pages/TraceDetail.razor.cs` | 78 | 98 |
| `src/Aspire.Dashboard/Model/Otlp/SpanWaterfallViewModel.cs` | 0 | 94 |
| `src/Aspire.Dashboard/Model/Otlp/TelemetryFilter.cs` | 0 | 210 |
| `src/Aspire.Dashboard/Model/Otlp/TelemetryFilterExtensions.cs` | 0 | 13 |
| `src/Aspire.Dashboard/Model/SpanType.cs` | 0 | 66 |
| `src/Aspire.Dashboard/Otlp/Storage/GetLogsContext.cs` | 2 | 0 |
| `src/Aspire.Dashboard/Otlp/Storage/GetSpansRequest.cs` | 2 | 0 |
| `src/Aspire.Dashboard/Otlp/Storage/SqliteTelemetryRepository.Logs.cs` | 12 | 0 |
| `src/Aspire.Dashboard/Otlp/Storage/SqliteTelemetryRepository.Runtime.cs` | 38 | 80 |
| `src/Aspire.Dashboard/Otlp/Storage/SqliteTelemetryRepository.Traces.Reads.cs` | 31 | 0 |
| `src/Aspire.Dashboard/Otlp/Storage/SqliteTelemetryRepository.Traces.Writes.cs` | 9 | 8 |
| `src/Aspire.Dashboard/ServiceClient/DashboardSqliteDatabase.cs` | 1 | 1 |
| `src/Aspire.Dashboard/ServiceClient/DatabaseSchema/004.Traces.sql` | 1 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/TraceDetailsTests.cs` | 64 | 18 |
| _... 他 17 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `7438145` Use SQLite for dashboard telemetry filtering
- `9bd6d54` Document accepted telemetry filter races
- `8c61684` Address telemetry filtering review comments
- `fcf3a0f` Remove unused telemetry filter extensions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`SqliteTelemetryRepository` にフィルタリング処理を集約し、`TelemetryFilter` など旧モデルを削除しました。Dashboard 内部実装の変更であり、アプリケーション向け公開 API の破壊的変更は確認されません。

**既存利用者への影響**

利用者側の移行は不要です。Dashboard の独自拡張や内部型を参照している場合のみ、削除されたフィルター型に依存していないか確認してください。

### [#19688](https://github.com/microsoft/aspire/pull/19688) — [automated] ci: run only tests affected by pull request changes

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +46 / -23
- マージ日時 (UTC): `2026-08-28 07:04:12`

**変更概要**

PR の変更パスに応じて影響のあるテストだけを実行する CI 選択を強制するようにしました。  
ワークフロー、テストトリガー設計、選択ロジックの受け入れテストを更新しています。  
CI 時間を短縮しつつ、変更範囲の判定漏れを防ぐことが目的です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/tests.yml` | 5 | 4 |
| `docs/ci/test-trigger-selector-design.md` | 20 | 19 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsWorkflowTests.cs` | 21 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `afc3d79` ci: enforce conditional test selection on pull requests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は GitHub Actions とテスト選択ルール、設計ドキュメントに限定され、製品 API の変更や破壊的変更はありません。

**既存利用者への影響**

利用者の移行は不要です。コントリビューターは、変更ファイルと対象テストのマッピングが正しく更新されていることを確認してください。

### [#19687](https://github.com/microsoft/aspire/pull/19687) — [automated] fix(ci): select installer jobs and loose CI dependencies correctly

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +676 / -112
- マージ日時 (UTC): `2026-08-28 05:54:43`

**変更概要**

CI のテスト選択で installer job を適切に選び、緩い依存関係を正しく扱うよう修正しました。  
テストトリガーマップ、CLI セレクター、受け入れテスト、保守ガイドを更新しています。  
PR ごとの CI 実行範囲が安定し、必要なテストを誤って省略するリスクが下がります。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.agents/skills/code-review/SKILL.md` | 22 | 0 |
| `AGENTS.md` | 22 | 0 |
| `docs/ci/test-trigger-map.md` | 68 | 30 |
| `docs/ci/test-trigger-selector-design.md` | 19 | 15 |
| `eng/github-ci/ci-skip-entirely-patterns.txt` | 10 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 40 | 6 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsAcceptanceTests.cs` | 11 | 3 |
| `tests/Infrastructure.Tests/TestTriggerMap/SelectTestsCliTests.cs` | 201 | 10 |
| `tests/Infrastructure.Tests/TestTriggerMap/TestTriggerMapTests.cs` | 172 | 18 |
| `tools/SelectTests/Program.cs` | 110 | 29 |
| `tools/SelectTests/TestSelector.cs` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `256a32c` fix(ci): close conditional test selector gaps
- `20d2b08` docs(ci): document selector contracts and maintenance
- `8ee71d0` docs(review): check conditional test selection impact

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`tools/SelectTests` とテストトリガーマップの判定契約が整理されました。製品ランタイムの API 変更はなく、CI 内部ツールとドキュメントの変更です。

**既存利用者への影響**

利用者側の移行は不要です。CI を拡張する担当者は、更新されたトリガーマップ契約に従ってルールを追加してください。

### [#19567](https://github.com/microsoft/aspire/pull/19567) — Make CLI resource observation reusable

- 作者: adamint / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +1879 / -156
- マージ日時 (UTC): `2026-08-27 21:02:58`

**変更概要**

Aspire CLI のリソース観測処理を再利用可能な構成へ整理しました。  
バックチャネルのスナップショット監視、バージョン順序付け、古い更新の無視、待機・説明・ログコマンドを共通化しています。  
CLI と AppHost 間の状態同期の安定性が向上し、今後のコマンド拡張に利用できます。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-backchannel.md` | 12 | 2 |
| `src/Aspire.Cli/Aspire.Cli.csproj` | 1 | 0 |
| `src/Aspire.Cli/Backchannel/AppHostAuxiliaryBackchannel.cs` | 5 | 1 |
| `src/Aspire.Cli/Backchannel/IAppHostAuxiliaryBackchannel.cs` | 5 | 0 |
| `src/Aspire.Cli/Backchannel/ResourceSnapshotWatcher.cs` | 256 | 25 |
| `src/Aspire.Cli/Backchannel/ResourceWaitService.cs` | 93 | 0 |
| `src/Aspire.Cli/Commands/DescribeCommand.cs` | 61 | 14 |
| `src/Aspire.Cli/Commands/LogsCommand.cs` | 4 | 1 |
| `src/Aspire.Cli/Commands/WaitCommand.cs` | 23 | 4 |
| `src/Aspire.Cli/Program.cs` | 1 | 0 |
| `src/Aspire.Hosting/ApplicationModel/CustomResourceSnapshot.cs` | 0 | 82 |
| `src/Aspire.Hosting/ApplicationModel/KnownResourceStates.cs` | 86 | 0 |
| `src/Aspire.Hosting/Backchannel/AuxiliaryBackchannelRpcTarget.cs` | 9 | 1 |
| `src/Aspire.Hosting/Backchannel/BackchannelDataTypes.cs` | 10 | 0 |
| `tests/Aspire.Cli.Tests/Backchannel/AppHostAuxiliaryBackchannelTests.cs` | 16 | 4 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (16 件)</summary>

- `494368f` Make CLI resource observation reusable
- `31ffd03` Flow resource snapshot versions through backchannel
- `30f3f35` Order initial resource snapshots by version
- `97e3390` Ignore stale resource watch snapshots
- `3d9f9eb` Add CLI resource watcher concurrency tests
- `c069b01` Batch CLI resource snapshot updates
- `0a31a58` Avoid rebuilding CLI resource views per update
- `7fab85e` Remove unused CLI bulk wait support
- _... 他 8 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`IAppHostAuxiliaryBackchannel`、`ResourceSnapshotWatcher`、`ResourceWaitService` などの新しい CLI／バックチャネル抽象が追加され、既存のスナップショットモデルが整理されました。CLI 内部 API の再構成で、アプリケーション API の変更ではありません。

**既存利用者への影響**

通常の AppHost 利用者に移行は不要です。CLI の拡張や内部バックチャネルを参照するツールは、新しい観測抽象への追随が必要です。

### [#19686](https://github.com/microsoft/aspire/pull/19686) — Use Microsoft certificate for Aspire CLI executable

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +97 / -19
- マージ日時 (UTC): `2026-08-27 21:26:29`

**変更概要**

Aspire CLI 実行ファイルの署名に Microsoft の証明書を使うよう、署名設定とパイプラインを更新しました。  
CLI パッケージの署名検証テストも追加・変更されています。  
利用者は配布された CLI の署名発行元を一貫して確認できるようになります。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Signing.props` | 10 | 9 |
| `eng/pipelines/azure-pipelines.yml` | 2 | 2 |
| `tests/Infrastructure.Tests/Pipelines/NpmCliPackageTests.cs` | 85 | 8 |

</details>

<details><summary>コミット (2 件)</summary>

- `3951627` Use Microsoft certificate for Aspire CLI
- `6e93492` Use Microsoft400 for all CLI signing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`eng/Signing.props` と Azure Pipelines の署名設定を Microsoft 証明書向けに変更しました。製品 API や CLI のコマンド契約に変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。企業環境で署名発行元を許可リスト化している場合は、Microsoft 証明書を信頼する設定を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19710 | Stabilize AppHost lifecycle and workspace terminal E2E tests | adamint | <https://github.com/microsoft/aspire/pull/19710> |
| #19129 | Deduplicate and colorize AppHost logs in the VS Code debug console | adamint | <https://github.com/microsoft/aspire/pull/19129> |
| #19721 | Prepare VS Code extension release v1.20.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19721> |
| #19740 | Detect GitHub Copilot app in CLI telemetry | DamianEdwards | <https://github.com/microsoft/aspire/pull/19740> |
| #19730 | Fix duplicate coding agent telemetry labels | DamianEdwards | <https://github.com/microsoft/aspire/pull/19730> |
| #19709 | Isolate source AppHost deployment state | spboyer | <https://github.com/microsoft/aspire/pull/19709> |
| #19733 | Quarantine failing staging self-update test | mitchdenny | <https://github.com/microsoft/aspire/pull/19733> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19801 | Fix Azure Sandbox deployment principal binding | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19801> |
| PR | #19805 | fix(ci): Reconcile duplicate automated failure issues | open | radical | <https://github.com/microsoft/aspire/pull/19805> |
| PR | #19807 | Gate the CLI starter validation jobs on the test selector | open | Copilot | <https://github.com/microsoft/aspire/pull/19807> |
| PR | #19804 | fix(ci): Prevent duplicate recurring CI failure issues | open | radical | <https://github.com/microsoft/aspire/pull/19804> |
| PR | #19772 | Fix dashboard telemetry filter races and replica searches | open | sebastienros | <https://github.com/microsoft/aspire/pull/19772> |
| PR | #19771 | Fix dashboard run discovery and retention | open | sebastienros | <https://github.com/microsoft/aspire/pull/19771> |
| PR | #19790 | fix(ci): PR test selector could silently mis-attribute changed paths containing tabs or newlines | open | radical | <https://github.com/microsoft/aspire/pull/19790> |
| PR | #19761 | [automated] ci: streamline test job fan-out | open | radical | <https://github.com/microsoft/aspire/pull/19761> |
| PR | #19762 | Match AppHosts across equivalent filesystem paths | open | danegsta | <https://github.com/microsoft/aspire/pull/19762> |
| PR | #19785 | Restore legacy extension Marketplace images | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19785> |
| PR | #19754 | Prevent Aspire view from stealing sidebar focus | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19754> |
| PR | #19755 | Improve VS Code AppHost build failure notifications | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19755> |
| PR | #19763 | Make polyglot integration restores consistent and cache-safe | open | danegsta | <https://github.com/microsoft/aspire/pull/19763> |
| PR | #19731 | Make staging self-update persistence E2E hermetic | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19731> |
| PR | #19760 | ci(vscode): Keep CI green when Azure Functions E2E flakes | open | radical | <https://github.com/microsoft/aspire/pull/19760> |
| PR | #19751 | Retry failed rolling CI builds once | open | Copilot | <https://github.com/microsoft/aspire/pull/19751> |
| PR | #19735 | Document Git-based Aspire template design | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19735> |
| PR | #19582 | [automated] fix(ci): Prevent duplicate CI failure cause issues | closed | radical | <https://github.com/microsoft/aspire/pull/19582> |
| PR | #19766 | Use managed identity for sandbox image pulls | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19766> |
| PR | #19767 | Use managed identity for sandbox image pulls | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19767> |
| PR | #19758 | ci: streamline test job fan-out | closed | radical | <https://github.com/microsoft/aspire/pull/19758> |
| PR | #19681 | Normalize Foundry hosted agent environment variable names | closed | tommasodotNET | <https://github.com/microsoft/aspire/pull/19681> |
| PR | #19572 | Add environment variable as msbuild properties too | closed | frederikstonge | <https://github.com/microsoft/aspire/pull/19572> |
| Issue | #19798 | Exercise Azure Sandboxes ACR pull identity in polyglot fixtures | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19798> |
| Issue | #19809 | Add deployment E2E coverage for Connector Namespace sandbox callbacks | open | spboyer | <https://github.com/microsoft/aspire/issues/19809> |
| Issue | #19803 | Container ports are published bound only to 127.0.0.1 during local run, leaving no fallback when IPv4 loopback is broken | open | kevintsengtw | <https://github.com/microsoft/aspire/issues/19803> |
| Issue | #19800 | aspire deploy does not populate KnownParameters.UserPrincipalId for individual Bicep modules | open | MattKotsenas | <https://github.com/microsoft/aspire/issues/19800> |
| Issue | #19808 | [aw] Repo Pulse — Daily Report reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19808> |
| Issue | #19759 | [automated] Improve and monitor automated CI issue automation | closed | radical | <https://github.com/microsoft/aspire/issues/19759> |
| Issue | #19757 | [automated] Improve PR CI time with selective test execution | closed | radical | <https://github.com/microsoft/aspire/issues/19757> |
| Issue | #19787 | [automated] Monitor selective PR CI accuracy after enforcement | open | radical | <https://github.com/microsoft/aspire/issues/19787> |
| Issue | #19786 | [automated] Investigate renamed-file handling in selective PR CI | open | radical | <https://github.com/microsoft/aspire/issues/19786> |
| Issue | #19745 | [CI Failure] VS Code extension VSIX packaging fails on Windows unit test job, cascading to all E2E test artifact downloads | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19745> |
| Issue | #19744 | [CI Failure] VS Code extension E2E tests fail to download aspire-extension VSIX artifact after upstream packaging job failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19744> |
| Issue | #19743 | [CI Failure] SqlServerContainerFixture InitializeAsync fails with Docker port 1433 already in use on shared CI runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19743> |
| Issue | #19737 | [CI Failure] GitHub Actions runner fails to parse actions/checkout's action.yml manifest (corrupted download) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19737> |
| Issue | #19783 | [Dashboard] Mark historical resource states and endpoint links as snapshots | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19783> |
| Issue | #19781 | [Dashboard] Reject numeric persistence mode values | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19781> |
| Issue | #19776 | [Dashboard] Prune unpublished run directories left by interrupted startup | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19776> |
| Issue | #19775 | [Dashboard] Prune incompatible-schema run directories | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19775> |
| Issue | #19784 | [Dashboard] Resume mode should require or warn about a missing application name | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19784> |
| Issue | #19742 | [CI Failure] Flaky: MetricsTests.ChangeResource_MeterAndInstrumentNotOnNewResources_InstrumentCleared fails with SQLite 'expected 0 columns' error on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19742> |
| Issue | #19799 | Document Azure Sandbox previous-generation retention conditions | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19799> |
| Issue | #19797 | Normalize TimeSpan units in polyglot DTO fixtures | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19797> |
| Issue | #19796 | Snapshot collections in container image inspection results | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19796> |
| Issue | #19795 | Support optional properties with defaults in ATS input DTOs | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19795> |
| Issue | #19794 | Remove stale AcrPull access when a deployment target switches registries | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19794> |
| Issue | #19793 | `aspire run` intermittently fails at startup: DCP API server refuses connections, while `dotnet run` on the same AppHost always works (Windows, 13.5.2) | open | rfsmart-amiles | <https://github.com/microsoft/aspire/issues/19793> |
| Issue | #19792 | CLI: unresponsive AppHost can hang every command that scans auxiliary backchannel sockets | closed | danegsta | <https://github.com/microsoft/aspire/issues/19792> |
| Issue | #19788 | [automated] Streamline selective CI test job fan-out | open | radical | <https://github.com/microsoft/aspire/issues/19788> |
| Issue | #19791 | `aspire update` doesn't find updates for Aspire.* packages already on a prerelease version | open | Copilot | <https://github.com/microsoft/aspire/issues/19791> |
| Issue | #19789 | [automated] Build a CI failure issue shepherd | closed | radical | <https://github.com/microsoft/aspire/issues/19789> |
| Issue | #19746 | [BUG] - VS Code extension forces navigation on load, even if removed from sidebar. | open | bitbound | <https://github.com/microsoft/aspire/issues/19746> |
| Issue | #19780 | [Dashboard] Console log replay bypasses clear filtering for live subscribers | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19780> |
| Issue | #19779 | [Dashboard] Explicit dashboard run options should override environment values | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19779> |
| Issue | #19777 | [Dashboard] Refresh run history after concurrent runs finish | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19777> |
| Issue | #19774 | [Dashboard] Ignore live connection events while viewing historical runs | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19774> |
| Issue | #19778 | [Dashboard] Align run retention documentation with implementation | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19778> |
| Issue | #19773 | [Dashboard] Apply telemetry API limits in SQLite queries | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19773> |
| Issue | #19782 | [Dashboard] Resolve relative persistence directories from the AppHost | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19782> |
| Issue | #19770 | Add WSL Container (wslc) support as an Aspire container runtime | closed | hayriozler | <https://github.com/microsoft/aspire/issues/19770> |
| Issue | #19769 | aspire commands fail with exceptions when running on NixOS | open | CPardi | <https://github.com/microsoft/aspire/issues/19769> |
| Issue | #19768 | PublishWithContainerFiles + ASP.NET Core Static Assets | open | fowl2 | <https://github.com/microsoft/aspire/issues/19768> |
| Issue | #19765 | aspire update should not add nuget.org/channel feeds when a custom (mirrored) nuget.config already exists | open | Copilot | <https://github.com/microsoft/aspire/issues/19765> |
| Issue | #19756 | Add support for fileKeyRef to the Kubernetes Publisher | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19756> |
| Issue | #19752 | Propagate a compatible AppHost target framework when scaffolding integration tests | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/19752> |
| Issue | #19750 | Rust Debug Failing | open | afscrome | <https://github.com/microsoft/aspire/issues/19750> |
| Issue | #19748 | VS Code improve build failure UX | open | afscrome | <https://github.com/microsoft/aspire/issues/19748> |
| Issue | #19749 | [VS Code] Avoid full workspace AppHost rediscovery on every AppHost save | open | adamint | <https://github.com/microsoft/aspire/issues/19749> |
| Issue | #19747 | [VS Code] Configure launch.json targets the first workspace folder instead of the selected AppHost | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19747> |
| Issue | #19741 | Add VS Code extension version to `aspire doctor` | open | afscrome | <https://github.com/microsoft/aspire/issues/19741> |
| Issue | #19739 | VS Code settings should state where `Enable Aspire Cli Debug Logging` logs to | open | afscrome | <https://github.com/microsoft/aspire/issues/19739> |
| Issue | #19738 | Images not showing up in extension Marketplace Listing | open | afscrome | <https://github.com/microsoft/aspire/issues/19738> |
| Issue | #19736 | Deployment State Caching should be disabled by default in CI | open | fowl2 | <https://github.com/microsoft/aspire/issues/19736> |
| Issue | #19734 | Update deployment-state-caching docs for source AppHost state isolation | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19734> |
| Issue | #19732 | TypeScript projector: canonical capability inherits alias options interface due to alphabetical registration order | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19732> |
| Issue | #19083 | Scheduled workflow failing: Update Aspire Skills Bundle | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19083> |
| Issue | #19638 | [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19638> |
| Issue | #19587 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19587> |
| Issue | #19574 | [aw] Update aspire.dev support page for a new Aspire release failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19574> |
| Issue | #19566 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19566> |
| Issue | #19522 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19522> |
| Issue | #19472 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19472> |
| Issue | #19471 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19471> |
| Issue | #19470 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19470> |
| Issue | #19468 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19468> |
| Issue | #19467 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19467> |
| Issue | #19464 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19464> |
| Issue | #19444 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19444> |
| Issue | #19441 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19441> |
| Issue | #19398 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19398> |
| Issue | #19397 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19397> |
| Issue | #19258 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19258> |
| Issue | #19257 | [aw] PR Documentation Check produced no safe outputs | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19257> |
| Issue | #19170 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19170> |
| Issue | #19144 | [CI Failure] Windows test host process crashes with exit code 0xC0000142 after tests complete | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19144> |
| Issue | #19115 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19115> |
| Issue | #19113 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19113> |
| Issue | #19112 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19112> |
| Issue | #19110 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19110> |
| Issue | #19089 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19089> |
| Issue | #19088 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19088> |
| Issue | #19059 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19059> |
| Issue | #19058 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19058> |
| Issue | #9429 | Ability to create PVC without defining a PV | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/9429> |
| Issue | #16656 | Update Aspire skill to support JS package manager-specific AppHost launchers | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/16656> |
| Issue | #10809 | [CI] Follow up to build cli native archives on GH | closed | radical | <https://github.com/microsoft/aspire/issues/10809> |
| Issue | #9586 | [CI] Post tests summary to Github Checks | closed | radical | <https://github.com/microsoft/aspire/issues/9586> |
| Issue | #19685 | Sign the Aspire CLI executable with the Microsoft certificate | closed | Copilot | <https://github.com/microsoft/aspire/issues/19685> |
| Issue | #18244 | ci: cache repo-local .dotnet in setup_for_tests (restore everywhere, save on main/release) | closed | radical | <https://github.com/microsoft/aspire/issues/18244> |
| Issue | #19680 | Kubernetes publisher fails when adding a pipeline step that depends on "prepare-deployment-targets-{environment}" | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19680> |
| Issue | #18047 | VS Code Extension Debug Output is confusing | closed | afscrome | <https://github.com/microsoft/aspire/issues/18047> |
| Issue | #19575 | [aw] Generate release notes for a new stable Aspire release failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19575> |
| Issue | #19459 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19459> |
| Issue | #19458 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19458> |
| Issue | #19421 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19421> |
| Issue | #19416 | [aw] Milestone Changelog Generator failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19416> |
| Issue | #19395 | [aw] Analyze CI Failure failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19395> |
| Issue | #19391 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19391> |
| Issue | #19385 | [aw] Milestone Changelog Generator failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19385> |
| Issue | #19350 | [aw] Analyze CI Failure failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19350> |
| Issue | #19235 | [aw] Analyze CI Failure failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19235> |
| Issue | #17500 | [13.4] Changelog feedback | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17500> |
