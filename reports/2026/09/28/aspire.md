# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 31 |
| オープン中の新規 PR     | 18 |
| クローズ (未マージ) PR  | 11 |
| 新規 Issue              | 35 |
| クローズ Issue          | 10 |
| 主要コントリビューター  | JamesNK, aspire-repo-bot[bot], eerhardt, joperezr, radical, afscrome |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20521](https://github.com/microsoft/aspire/issues/20521) — [13.6] Breaking change to `IInteractionService` （Issue / open / afscrome）
`IInteractionService` を実装する Aspire 13.6 利用者は追加された `PromptTerminalAsync(...)` を実装する必要があります。community toolkit の実装でビルドエラーが報告されています。
- **⚠ 破壊的変更** [#20486](https://github.com/microsoft/aspire/pull/20486) — [release/13.6] Reduce agent telemetry hook overhead without reducing coverage （PR / open / IEvangelist）
Aspire 13.6 の agent hook を利用するチームは、CLI の実行経路・テレメトリ初期化方式のバックポートを確認してください（PR はレビュー中です）。
- **⚠ 破壊的変更** [#20481](https://github.com/microsoft/aspire/pull/20481) — Unify experimental polyglot AppHost feature keys （PR / open / sebastienros）
実験的な polyglot AppHost の機能キーを設定している利用者は、キー名がフラット形式に統一される提案に合わせて設定・fixture・スキーマを確認してください。
- **⚠ 破壊的変更** [#20387](https://github.com/microsoft/aspire/pull/20387) — Reduce agent telemetry hook overhead without reducing coverage （PR / merged / IEvangelist）
`Aspire.Cli` の agent hook 利用者は、wildcard 対象を保ったまま起動時処理・同期アップロードを避ける新しい telemetry command / uploader 経路を確認してください。
- **⚠ セキュリティ** [#20474](https://github.com/microsoft/aspire/pull/20474) — Bump the npm group in /extension with 22 updates （PR / open / dependabot[bot]）
Aspire extension の npm 依存関係更新は未マージです。extension を保守する担当者は 22 件の更新内容と脆弱性修正の有無を確認し、レビュー後に取り込んでください。

## このリポジトリの要点

Aspire CLI の agent telemetry hook は、カバレッジを維持しつつ起動時処理と同期アップロードを減らす構成へ更新されました（#20387）。Kubernetes PVC を構成する新しい `WithConfiguration(...)` API と SQL Server health check の接続挙動改善もマージされています。
Aspire 13.6 では `IInteractionService` の追加メンバーによる実装互換性問題が報告され、agent hook のバックポートと polyglot feature key 統一も進行中です。extension の npm 依存関係更新はまだ提案段階です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20387](https://github.com/microsoft/aspire/pull/20387) — Reduce agent telemetry hook overhead without reducing coverage

- 作者: IEvangelist / 状態: MERGED
- ラベル: `breaking-change` `area-cli`
- 変更行数: +2061 / -235
- マージ日時 (UTC): `2026-09-25 03:50:17`

**変更概要**

Aspire CLI の agent telemetry hook による起動時コストと同期アップロード待ちを減らしつつ、wildcard hook 対応と対象イベントのテレメトリを維持します。
通常の command dispatch を通る telemetry command と独立 uploader に処理を整理し、対象イベントがある場合に限って provider と enrichment を初期化します。
hook の telemetry catalog / payload 制限、埋め込み skill manifest からの参照、OpenTelemetry exporter を使った永続化も整備されました。

<details><summary>変更ファイル (38 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 4 | 4 |
| `docs/open-telemetry-architecture.md` | 22 | 0 |
| `eng/Versions.props` | 6 | 6 |
| `src/Aspire.Cli/Agents/AspireSkills/AspireSkillsBundleLayout.cs` | 15 | 0 |
| `src/Aspire.Cli/Agents/AspireSkills/AspireSkillsBundleProvider.cs` | 11 | 14 |
| `src/Aspire.Cli/Agents/AspireSkills/AspireSkillsInstaller.cs` | 4 | 4 |
| `src/Aspire.Cli/Agents/AspireSkills/EmbeddedAspireSkillsBundleProvider.cs` | 1 | 1 |
| `src/Aspire.Cli/Agents/AspireSkills/SkillBundleManifest.cs` | 2 | 2 |
| `src/Aspire.Cli/Agents/Hooks/AgentTelemetryCatalog.cs` | 137 | 0 |
| `src/Aspire.Cli/Agents/Hooks/AgentTelemetryHook.cs` | 236 | 0 |
| `src/Aspire.Cli/Agents/Hooks/AgentTelemetryProtocol.cs` | 27 | 0 |
| `src/Aspire.Cli/Agents/Hooks/TelemetryHookConfigurator.cs` | 32 | 49 |
| `src/Aspire.Cli/Agents/Hooks/TelemetryHookInstaller.cs` | 2 | 2 |
| `src/Aspire.Cli/Commands/AgentCommand.cs` | 2 | 1 |
| `src/Aspire.Cli/Commands/AgentTelemetryCommand.cs` | 114 | 31 |
| _... 他 23 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `742b9c2` Reduce agent telemetry hook overhead without reducing coverage
- `4077d4d` Use canonical telemetry catalog and configure hook payload limits
- `129ed2c` Align OpenTelemetry packages on releases older than seven days
- `98ee5b1` Regenerate Seq configuration schema for OpenTelemetry 1.18
- `d006f46` Merge upstream main and preserve telemetry and completion startup paths
- `933b900` Address agent telemetry review with command opt-in and manifest catalog
- `34b8a11` Match managed Aspire hook assembly names exactly during migration
- `17b1120` Centralize Aspire skills bundle layout names
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentTelemetryCatalog`、`AgentTelemetryHook`、`AgentTelemetryProtocol` と telemetry command / uploader の処理経路を追加・再編し、`InitializeTelemetryOnStartup` は既定で有効のまま必要なイベントまで初期化を遅延します。PR には `breaking-change` ラベルが付いているため、カスタム Aspire agent hook や独自の起動・アップロード連携を持つ利用者は新しい command dispatch / manifest catalog への互換性を確認してください。

**既存利用者への影響**

通常の telemetry 利用では wildcard の適用範囲と対象イベントは維持され、一般利用者向けの移行は示されていません。独自 hook / startup / uploader を実装している場合は、CLI の新しい処理経路への追従が必要か確認してください。

### [#20534](https://github.com/microsoft/aspire/pull/20534) — Disable SqlClient pool blocking period for SQL Server health checks

- 作者: afscrome / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +65 / -4
- マージ日時 (UTC): `2026-09-28 00:46:56`

**変更概要**

SQL Server hosting integration の `AddSqlServer` / `AddDatabase` health check が、リソースの接続文字列を使いつつ `PoolBlockingPeriod.NeverBlock` を指定するようになりました。
接続失敗後に SqlClient が一定時間失敗をキャッシュする既定動作を避けることで、health check の再試行が実サーバーの回復を反映できるようにします。
変更は接続オプションとテストに限定され、利用者の接続文字列そのものは変更しません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.SqlServer/SqlServerBuilderExtensions.cs` | 21 | 4 |
| `tests/Aspire.Hosting.SqlServer.Tests/AddSqlServerTests.cs` | 44 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `fc7c55d` Disable SqlClient pool blocking period for SQL Server health checks

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

health check 用 SqlConnection の生成時に `PoolBlockingPeriod.NeverBlock` を指定します。public API シグネチャの追加・削除や破壊的変更はありません。

**既存利用者への影響**

移行作業は不要です。SQL Server が一時的に利用不能な間の health check が、接続プールの既定 blocking period で遅延しない点を運用上確認してください。

### [#19900](https://github.com/microsoft/aspire/pull/19900) — Added WithConfiguration extension method for configuring PVCs

- 作者: cdbrown2018 / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +715 / -16
- マージ日時 (UTC): `2026-09-27 12:14:51`

**変更概要**

Aspire の Kubernetes publisher が生成する first-class PersistentVolume の PersistentVolumeClaim (PVC) を、既存の volume 設定だけでは指定できない metadata / spec 項目までカスタマイズできるようにします。
C# AppHost 向け `WithConfiguration(...)` API とカスタマイズ annotation を追加し、manifest 生成時にコールバックを適用します。Polyglot AppHost には `withPersistentVolumeName(...)` を公開します。
Kubernetes publisher、型生成、AKS deployment のテスト・snapshot を追加し、storage class の明示的な opt-out も扱います。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Kubernetes/Annotations/KubernetesPersistentVolumeCustomizationAnnotation.cs` | 22 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesEnvironmentResource.cs` | 45 | 7 |
| `src/Aspire.Hosting.Kubernetes/KubernetesPersistentVolumeExtensions.cs` | 86 | 3 |
| `src/Aspire.Hosting.Kubernetes/KubernetesPersistentVolumeResource.cs` | 10 | 0 |
| `src/Aspire.Hosting.Kubernetes/Resources/PersistentVolumeClaimSpecV1.cs` | 7 | 4 |
| `src/Shared/Yaml/PreserveEmptyStringAttribute.cs` | 17 | 0 |
| `src/Shared/Yaml/YamlIEnumerableSkipEmptyObjectGraphVisitor.cs` | 5 | 0 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksPersistentVolumeDeploymentTests.cs` | 76 | 1 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/AtsTypeScriptCodeGeneratorTests.cs` | 34 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/KubernetesPersistentVolumeExtensionsTests.cs` | 50 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/KubernetesPublisherTests.cs` | 217 | 1 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.PublishAsync_PersistentVolumeCallbacksRunInOrderAfterDefaults.verified.yaml` | 15 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.PublishAsync_PersistentVolumeStorageClassLastCallWins#00.verified.yaml` | 12 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.PublishAsync_PersistentVolumeStorageClassLastCallWins#01.verified.yaml` | 12 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.PublishAsync_PersistentVolumeStorageClassLastCallWins#02.verified.yaml` | 12 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (21 件)</summary>

- `da85557` * added customization to pvcs
- `7f21902` * updated xml comment
- `8c25be7` Change Configure property to read-only with null check
- `a6a23ea` * ignored the WithConfiguration method from ATS exports
- `b633166` * updated visibility of internal annotation
- `3bf7d98` * updated PVC with explicit opt out for storage class
- `a3e1c67` * updated storageClassName with an attribute specifically allowing it…
- `b562a6d` * updated tests
- _... 他 13 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `WithConfiguration(...)` extension method、PVC customization annotation、Polyglot 用 `withPersistentVolumeName(...)` を追加します。既存 API を削除・変更する互換性破壊は示されていません。

**既存利用者への影響**

既存の PVC 構成はそのまま動作し、移行は不要です。必要な場合だけ新 API で PVC metadata / spec を追加設定してください。

### [#20516](https://github.com/microsoft/aspire/pull/20516) — Address build Component Governance alerts

- 作者: joperezr / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +281 / -352
- マージ日時 (UTC): `2026-09-26 03:35:48`

**変更概要**

build Component Governance で報告された Java / Rust / MongoDB 関連の依存関係アラートに対処します。
Java サンプルの依存関係を更新し、MongoDB integration が修正版 Snappier を使うよう指定します。Rust playground は不要な `ring` 依存を避けるため native TLS を使った OTLP/HTTP protobuf に切り替え、telemetry のログ feedback loop も防ぎます。
対象はサンプル、playground、統合ビルド依存関係で、Aspire の利用者向け API 変更ではありません。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/JavaSpringBoot/catalog/pom.xml` | 7 | 1 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.JavaService/pom.xml` | 4 | 4 |
| `playground/rust/Cargo.toml` | 1 | 1 |
| `playground/rust/Rust.AppHost/AppHost.cs` | 1 | 0 |
| `playground/rust/app/Cargo.lock` | 128 | 298 |
| `playground/rust/app/Cargo.toml` | 4 | 4 |
| `playground/rust/app/README.md` | 32 | 32 |
| `playground/rust/app/src/telemetry.rs` | 95 | 12 |
| `playground/rust/apphost.rs` | 1 | 0 |
| `src/Components/Aspire.MongoDB.Driver/Aspire.MongoDB.Driver.csproj` | 4 | 0 |
| `src/Components/Aspire.MongoDB.EntityFrameworkCore/Aspire.MongoDB.EntityFrameworkCore.csproj` | 4 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `302281e` Patch catalog Spring and Tomcat dependencies
- `a055d4b` Patch PostgreSQL sample Netty, JDBC, and Jetty dependencies
- `5e17a6e` Require patched Snappier for MongoDB driver and EF consumers
- `c06e336` Use native TLS for Rust playground OTLP HTTP exports
- `e9dbaa8` Update Rust AppHost telemetry dependency comment
- `6d70e97` Prevent Rust OTLP transport log feedback loops
- `edc54a9` Select HTTP OTLP in the C# Rust playground AppHost

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MongoDB driver / EF integration の依存関係制約、Java / Rust サンプルの依存関係と Rust OTLP transport を調整しています。公開 API シグネチャの変更はありません。

**既存利用者への影響**

利用者の移行は不要です。該当する playground / サンプルを保守するチームは更新された依存関係と Rust の TLS / OTLP 設定を確認してください。

### [#20511](https://github.com/microsoft/aspire/pull/20511) — [release/13.6] Fix dashboard filter badges and toolbar navigation

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +115 / -12
- マージ日時 (UTC): `2026-09-26 01:31:26`

**変更概要**

Aspire 13.6 dashboard で、フィルターの件数が 0 のときに badge を隠し、狭い resource-details 操作領域を折り返して表示するようにします。
モバイル Resources タブの URL 更新も改善し、filter panel の状態とページ離脱後の保留変更を適切に扱います。
release/13.6 向け backport であり、dashboard の操作性修正です。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/ResourceDetails.razor.css` | 0 | 1 |
| `src/Aspire.Dashboard/Components/Layout/AspirePageContentLayout.razor.cs` | 28 | 3 |
| `src/Aspire.Dashboard/Components/Pages/IPageWithSessionAndUrlState.cs` | 4 | 3 |
| `src/Aspire.Dashboard/Components/Pages/StructuredLogs.razor` | 1 | 1 |
| `src/Aspire.Dashboard/Components/Pages/TraceDetail.razor` | 2 | 2 |
| `src/Aspire.Dashboard/Components/Pages/Traces.razor` | 1 | 1 |
| `src/Aspire.Dashboard/wwwroot/css/controls.css` | 0 | 1 |
| `src/Aspire.Dashboard/wwwroot/css/layout.css` | 6 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/ResourcesTests.cs` | 73 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `d3c530d` Fix dashboard filter badges and toolbar navigation (#20471)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

session / URL state を扱う dashboard 内部実装、Razor/CSS、テストを変更しています。公開 API シグネチャや永続化形式の変更はありません。

**既存利用者への影響**

移行作業は不要です。Aspire 13.6 dashboard のフィルター・モバイルナビゲーションが修正されます。

### [#20510](https://github.com/microsoft/aspire/pull/20510) — [release/13.6] Add run persistence help to dashboard

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +236 / -26
- マージ日時 (UTC): `2026-09-26 01:30:09`

**変更概要**

Aspire dashboard の run selector から live / historical / pinned run の違いを説明するドキュメントへ移動できる **Learn about runs** を追加します。
run selector の外部リンクメニュー生成を共通化し、軽いテーマでのボタン hover / pressed 表示も調整します。
release/13.6 への backport で、実行履歴・永続化の説明を利用者が見つけやすくします。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/DashboardRunSelect.razor.cs` | 10 | 0 |
| `src/Aspire.Dashboard/Components/Controls/DashboardRunSelect.razor.css` | 2 | 2 |
| `src/Aspire.Dashboard/Model/MenuButtonItem.cs` | 18 | 0 |
| `src/Aspire.Dashboard/Model/ResourceMenuBuilder.cs` | 1 | 14 |
| `src/Aspire.Dashboard/Resources/Layout.Designer.cs` | 18 | 0 |
| `src/Aspire.Dashboard/Resources/Layout.resx` | 6 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.cs.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.de.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.es.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.fr.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.it.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.ja.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.ko.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.pl.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Layout.pt-BR.xlf` | 10 | 0 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `721ef12` Add run persistence help to dashboard (#20469)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard の run selector / resource menu model、文言リソースと翻訳を更新します。アプリケーション API や run persistence の動作自体は変更しません。

**既存利用者への影響**

利用者の移行は不要です。dashboard の run selector から新しいヘルプリンクを利用できます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20509 | [release/13.6] Avoid JSDisconnectedException telemetry during dashboard layout initialization | JamesNK | <https://github.com/microsoft/aspire/pull/20509> |
| #20496 | [release/13.6] Remove Experimental attributes from Aspire.Hosting.Dotnet | eerhardt | <https://github.com/microsoft/aspire/pull/20496> |
| #20494 | Fix Windows AppHost cleanup job routing | danegsta | <https://github.com/microsoft/aspire/pull/20494> |
| #20505 | Address container supply-chain warnings to make the official build green | joperezr | <https://github.com/microsoft/aspire/pull/20505> |
| #20472 | Avoid JSDisconnectedException telemetry during dashboard layout initialization | JamesNK | <https://github.com/microsoft/aspire/pull/20472> |
| #20395 | Update Arcade to 10.0.0-beta.26472.2 | joperezr | <https://github.com/microsoft/aspire/pull/20395> |
| #20469 | Add run persistence help to dashboard | JamesNK | <https://github.com/microsoft/aspire/pull/20469> |
| #20471 | Fix dashboard filter badges and toolbar navigation | JamesNK | <https://github.com/microsoft/aspire/pull/20471> |
| #20458 | Add deterministic CI validation for agentic workflows | radical | <https://github.com/microsoft/aspire/pull/20458> |
| #20466 | Fix remaining Outerloop failures in DCP, CLI, and Dashboard tests | radical | <https://github.com/microsoft/aspire/pull/20466> |
| #20490 | Remove Experimental attributes from Aspire.Hosting.Dotnet | eerhardt | <https://github.com/microsoft/aspire/pull/20490> |
| #20489 | Bump the github-actions group across 1 directory with 2 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20489> |
| #20483 | [release/13.6] Remove redundant experimental annotations from Azure Sandboxes | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20483> |
| #20382 | Bump the GitHub Actions group to current major versions | Evangelink | <https://github.com/microsoft/aspire/pull/20382> |
| #20455 | [ci] Fix internal builds | radical | <https://github.com/microsoft/aspire/pull/20455> |
| #20436 | Update Aspire.Cli to target net11.0 | eerhardt | <https://github.com/microsoft/aspire/pull/20436> |
| #20482 | Remove redundant experimental annotations from Azure Sandboxes | eerhardt | <https://github.com/microsoft/aspire/pull/20482> |
| #20484 | Change StabilizePackageVersion condition to true | joperezr | <https://github.com/microsoft/aspire/pull/20484> |
| #20419 | [release/13.6] Add docked REPL commands for database and cache integrations | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20419> |
| #20441 | [release/13.6] Enable multithreaded .NET project builds | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20441> |
| #20464 | [release/13.6] [main] Update dependencies from microsoft/dcp | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20464> |
| #20479 | [release/13.6] Fix Azure sandbox ExtraSmall and Small tier disk sizes | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20479> |
| #20461 | Fix Azure sandbox ExtraSmall and Small tier disk sizes | eerhardt | <https://github.com/microsoft/aspire/pull/20461> |
| #20153 | Wait for tunnel health before asserting in ContainerTunnelTests | afscrome | <https://github.com/microsoft/aspire/pull/20153> |
| #20400 | Fix AppHost tree E2E row recycling race | ellahathaway | <https://github.com/microsoft/aspire/pull/20400> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20539 | Support CLI attachment and tape playback for docked terminals | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20539> |
| PR | #20538 | Use hardened Sigstore cache configuration | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20538> |
| PR | #20537 | Simplify terminal dock empty state and link styling | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20537> |
| PR | #20532 | Enable reliable commands for project-backed dashboards | open | JamesNK | <https://github.com/microsoft/aspire/pull/20532> |
| PR | #20527 | Update Fluent UI to v5 RTM | open | JamesNK | <https://github.com/microsoft/aspire/pull/20527> |
| PR | #20528 | Remove the dashboard desktop terminal header button | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20528> |
| PR | #20525 | Remove terminal commands feature flag | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20525> |
| PR | #20529 | [release/13.6] Added WithConfiguration extension method for configuring PVCs | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20529> |
| PR | #20531 | Spike: show resource terminals in the dashboard dock | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20531> |
| PR | #20523 | Keep dashboard run menu open when pinning | open | JamesNK | <https://github.com/microsoft/aspire/pull/20523> |
| PR | #20502 | ci: show agentic validation fixes directly on pull requests | open | radical | <https://github.com/microsoft/aspire/pull/20502> |
| PR | #20514 | [release/13.6] Fix Windows AppHost cleanup job routing | open | danegsta | <https://github.com/microsoft/aspire/pull/20514> |
| PR | #20506 | Stabilize extension E2E AppHost handoff | open | danegsta | <https://github.com/microsoft/aspire/pull/20506> |
| PR | #20486 | [release/13.6] Reduce agent telemetry hook overhead without reducing coverage | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20486> |
| PR | #20481 | Unify experimental polyglot AppHost feature keys | open | sebastienros | <https://github.com/microsoft/aspire/pull/20481> |
| PR | #20498 | ci: Validate API diff workflows on pull requests | open | radical | <https://github.com/microsoft/aspire/pull/20498> |
| PR | #20477 | Only warn about CLI/SDK skew when the CLI is older | open | spboyer | <https://github.com/microsoft/aspire/pull/20477> |
| PR | #20474 | Bump the npm group in /extension with 22 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20474> |
| PR | #19030 | Indent UTC timestamps option under Show timestamps in console logs menu | closed | harshasiddartha | <https://github.com/microsoft/aspire/pull/19030> |
| PR | #19828 | Add review-waiting alerts to the Aspire Team App canvas | closed | joperezr | <https://github.com/microsoft/aspire/pull/19828> |
| PR | #20328 | Roll back Google.Protobuf to 3.35.1 to unblock official signing | closed | joperezr | <https://github.com/microsoft/aspire/pull/20328> |
| PR | #20188 | Update Azure provisioning CDN and Kusto to beta.3 | closed | joperezr | <https://github.com/microsoft/aspire/pull/20188> |
| PR | #20045 | Update ModelContextProtocol to 2.2.0 | closed | joperezr | <https://github.com/microsoft/aspire/pull/20045> |
| PR | #20051 | Breaking change: Update Foundry agent dependencies | closed | joperezr | <https://github.com/microsoft/aspire/pull/20051> |
| PR | #20043 | Update NATS.Net to 3.2.0 | closed | joperezr | <https://github.com/microsoft/aspire/pull/20043> |
| PR | #20041 | Update MongoDB driver and EF providers | closed | joperezr | <https://github.com/microsoft/aspire/pull/20041> |
| PR | #20492 | ci: Validate API diff workflows on pull requests | closed | radical | <https://github.com/microsoft/aspire/pull/20492> |
| PR | #20233 | Bump the github-actions group across 1 directory with 10 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20233> |
| PR | #20485 | Fix remaining Outerloop failures in DCP, CLI, and Dashboard tests | closed | radical | <https://github.com/microsoft/aspire/pull/20485> |
| Issue | #20535 | Aspire CLI - Agent use - resource terminal | closed | tjwald | <https://github.com/microsoft/aspire/issues/20535> |
| Issue | #20536 | `AspireUseCliBundle` unexpectedly impacts CodeQL workflows. | open | afscrome | <https://github.com/microsoft/aspire/issues/20536> |
| Issue | #20522 | [13.6] Community Toolkit tests timeout in StopAsync | open | afscrome | <https://github.com/microsoft/aspire/issues/20522> |
| Issue | #20533 | Minimum Required Hem version is incompatible with github windows images | open | afscrome | <https://github.com/microsoft/aspire/issues/20533> |
| Issue | #20478 | [CI Failure] Flaky: MongoDbReplicaSetFunctionalTests.VerifyMongoDBMultiNodeReplicaWithDataShouldWorkAcrossUsages fails to become healthy | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20478> |
| Issue | #20530 | Review Kubernetes PVC customization APIs for TypeScript usage in 14.0 | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20530> |
| Issue | #20526 | Dashboard resource grid renders empty on .NET 11 RC1: OnSpacerBeforeVisible expects 4 parameters, JS sends 3 | open | kadato | <https://github.com/microsoft/aspire/issues/20526> |
| Issue | #20524 | Replace project updates in `aspire update` with an agentic skill | open | Copilot | <https://github.com/microsoft/aspire/issues/20524> |
| Issue | #20521 | [13.6] Breaking change to `IInteractionService` | open | afscrome | <https://github.com/microsoft/aspire/issues/20521> |
| Issue | #20518 | Add up-to-date image for app configuration | closed | rf5tswmzp7 | <https://github.com/microsoft/aspire/issues/20518> |
| Issue | #20520 | [13.6] Community Toolkit upgrade issues | open | afscrome | <https://github.com/microsoft/aspire/issues/20520> |
| Issue | #20519 | `aspire update` progress message interleaves with command output | open | afscrome | <https://github.com/microsoft/aspire/issues/20519> |
| Issue | #20507 | [CI Failure] Flaky: NuGetPackagePrefetcherTests.PrefetchingCancellationDueToShutdownLogsCleanMessage times out after 30s | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20507> |
| Issue | #20517 | [aw] Analyze CI Failure timed out | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20517> |
| Issue | #20515 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20515> |
| Issue | #20495 | Session-scoped containers survive .NET AppHost shutdown on Windows | closed | danegsta | <https://github.com/microsoft/aspire/issues/20495> |
| Issue | #20513 | [CI Failure] Flaky: VS Code extension E2E (Windows, dynamic-debug-configuration) times out waiting for debug session to stop in duplicate-alias workspace scenario | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20513> |
| Issue | #20512 | [CI Failure] Flaky: MongoDbReplicaSetFunctionalTests.VerifyMongoDBMultiNodeReplicaWithDataShouldWorkAcrossUsages(topologyChange: None) fails to become healthy | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20512> |
| Issue | #20508 | [CI Failure] Flaky: Kusto emulator health check fails with socket error after failed connection attempt | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20508> |
| Issue | #20503 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20503> |
| Issue | #20504 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20504> |
| Issue | #20500 | Label resource shells as Preview in the dashboard dock | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20500> |
| Issue | #20497 | Clarify "Terminal app resource" vs "Resource shell" terminology | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20497> |
| Issue | #20501 | Make experimental aspire terminal discoverable from CLI help | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20501> |
| Issue | #20467 | [CI Failure] Flaky: NodeFunctionalTests.VerifyNpmAppWorks fails with NodeAppFixture InitializeAsync timeout on windows-latest | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20467> |
| Issue | #20493 | [CI Failure] Flaky: ManageDataDialogTests bUnit JSInterop hang on IconCheckbox.initializeIconCheckboxKeyboard call | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20493> |
| Issue | #20491 | [ci] Validate Deployment E2E workflow changes on pull requests | open | radical | <https://github.com/microsoft/aspire/issues/20491> |
| Issue | #20488 | [CI Failure] Flaky: VS Code extension Java AppHost E2E breakpoint test times out waiting for 'catalog' resource endpoint | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20488> |
| Issue | #20480 | Telemetry hook makes incorrect assumptions | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20480> |
| Issue | #20476 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20476> |
| Issue | #20468 | Reduce noise from PR Documentation Check for minor user-visible changes | open | Copilot | <https://github.com/microsoft/aspire/issues/20468> |
| Issue | #20475 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20475> |
| Issue | #20473 | aspire wait/describe from a sibling directory reports no running AppHost after aspire start found it via aspire.config.json | open | dennisoehme | <https://github.com/microsoft/aspire/issues/20473> |
| Issue | #20470 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20470> |
| Issue | #20465 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20465> |
| Issue | #19633 | Add volume name option to WithPersistentVolume APIs to support binding pre-existing volumes | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19633> |
| Issue | #18381 | [CI] Build broken on main — 20260620.3 | closed | joperezr | <https://github.com/microsoft/aspire/issues/18381> |
| Issue | #20446 | [automated] Add deterministic CI validation for agentic workflows | closed | radical | <https://github.com/microsoft/aspire/issues/20446> |
| Issue | #19818 | Add an agent migration skill for Project Resource v2 | closed | joperezr | <https://github.com/microsoft/aspire/issues/19818> |
| Issue | #20459 | Azure Sandboxes: Small and ExtraSmall tiers always fail to deploy (disk request exceeds tier maximum) | closed | eerhardt | <https://github.com/microsoft/aspire/issues/20459> |
| Issue | #20329 | Claude Code telemetry hook runs (blocking) on every tool call — register with a narrow matcher and async | closed | ASallergard-Magnet | <https://github.com/microsoft/aspire/issues/20329> |
| Issue | #20335 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) 'discovers the workspace AppHost' test observes transient 'Deploy AppHost' tree label instead of settled csproj name | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20335> |
