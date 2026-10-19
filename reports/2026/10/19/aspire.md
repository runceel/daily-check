# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 8 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 55 |
| クローズ Issue          | 12 |
| 主要コントリビューター  | mitchdenny, radical, eerhardt, Copilot, DamianEdwards |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20919](https://github.com/microsoft/aspire/pull/20919) — Fix AKS AcrPull for existing cross-resource-group registries （PR / merged / mitchdenny）
  AKS と別 resource group の既存 ACR を使う利用者は、修正後の ID・role assignment の適用範囲と既存ロールの整理動作を確認してください。
- **⚠ 破壊的変更** [#20918](https://github.com/microsoft/aspire/pull/20918) — Support ACME External Account Binding in cert-manager （PR / open / mitchdenny）
  cert-manager で ACME External Account Binding を必要とする運用者は、未マージの機能提案として設定方法と互換性を確認してください。
- **⚠ 破壊的変更** [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration （PR / merged / eerhardt）
  GitHub Models integration を Aspire 経由で利用していた開発者は、廃止済み連携の削除に合わせて代替モデル接続へ移行してください。
- **⚠ セキュリティ** [#21051](https://github.com/microsoft/aspire/pull/21051) — Pin MessagePack to 2.5.307 for security fixes （PR / merged / mitchdenny）
  Aspire の依存関係を利用するアプリは、MessagePack 2.5.307 への更新を取り込み、restore 後の依存解決を確認してください。
- **⚠ セキュリティ** [#20854](https://github.com/microsoft/aspire/pull/20854) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
  Dashboard の npm 依存更新案です。利用者はマージ後のロックファイルと CI を確認し、セキュリティ修正の適用範囲は個別の advisory で判断してください。
- **⚠ セキュリティ** [#20052](https://github.com/microsoft/aspire/pull/20052) — Configure NuGet audit sources and non-fatal vulnerability warnings （PR / merged / joperezr）
  NuGet 監査を使う開発者は、設定された監査ソースと非致命的警告の扱いを確認し、警告を無視せず依存更新判断に利用してください。
- **非推奨/廃止** [#21093](https://github.com/microsoft/aspire/issues/21093) — Support member-specific obsolete SDK handling in provisioning proxies （Issue / open / eerhardt）
  Azure provisioning proxy の利用者は、SDK の obsolete メンバー単位での扱いを改善する提案の進捗を確認してください。現時点で移行が必要な変更ではありません。
- **GA 昇格** [#21115](https://github.com/microsoft/aspire/issues/21115) — [Epic] Go AppHost GA （Issue / open / IEvangelist）
  Go AppHost を試用中のチームは、GA エピックの完了前にサポート範囲・公開 API・配布条件を確認してください。
- **GA 昇格** [#21114](https://github.com/microsoft/aspire/issues/21114) — [Go AppHost GA] VS Code Go AppHost and Go resource debugging （Issue / open / IEvangelist）
  VS Code で Go AppHost / resource をデバッグする利用者は、関連機能の対応状況を GA 判定前に確認してください。
- **GA 昇格** [#21113](https://github.com/microsoft/aspire/issues/21113) — [Go AppHost GA] Verify samples and playground AppHosts convert to Go （Issue / closed / IEvangelist）
  Go へのサンプル・playground 移行タスクは完了扱いですが、Go AppHost 全体の GA を示すものではありません。
- **GA 昇格** [#21112](https://github.com/microsoft/aspire/issues/21112) — [Go AppHost GA] Documentation and sample conversion （Issue / open / IEvangelist）
  Go AppHost の導入を検討する開発者は、GA に向けたドキュメント・サンプル整備の完了を確認してください。
- **GA 昇格** [#21111](https://github.com/microsoft/aspire/issues/21111) — [Go AppHost GA] Public API review and packaging validation for Go packages （Issue / closed / IEvangelist）
  Go package の API review / packaging 検証タスクはクローズ済みです。利用者は正式なサポートポリシーと GA 告知を別途待ってください。
- **GA 昇格** [#21110](https://github.com/microsoft/aspire/issues/21110) — [Go AppHost GA] Support policy, public API review and packaging （Issue / open / IEvangelist）
  Go AppHost 採用判断を行うチームは、正式なサポート期間・API 安定性・配布方法の決定を確認してください。
- **GA 昇格** [#21109](https://github.com/microsoft/aspire/issues/21109) — [Go AppHost GA] Publish and deploy coverage for Go AppHosts （Issue / closed / IEvangelist）
  Go AppHost の publish / deploy 検証タスクはクローズ済みです。実運用に移す際は対象環境でのサポート状況を確認してください。
- **GA 昇格** [#21108](https://github.com/microsoft/aspire/issues/21108) — [Go AppHost GA] CLI end-to-end and publish/deploy coverage （Issue / open / IEvangelist）
  Go AppHost 利用者は、CLI end-to-end および publish/deploy の残タスクが完了するまで GA 前提の本番採用を避けるか、制約を評価してください。
- **GA 昇格** [#21107](https://github.com/microsoft/aspire/issues/21107) — [Go AppHost GA] Verify Go templates are discoverable by default and add language-default packages （Issue / closed / IEvangelist）
  Go template の既定検出・標準 package の確認タスクはクローズ済みですが、Go AppHost 全体の GA 完了とは区別してください。
- **GA 昇格** [#21106](https://github.com/microsoft/aspire/issues/21106) — [Go AppHost GA] Remove the feature flag and expose Go templates （Issue / open / IEvangelist）
  feature flag と Go template の公開範囲が変わる可能性があるため、Go AppHost 利用者は削除・公開の手順と GA 予定を追跡してください。

## このリポジトリの要点

Azure 統合では別 resource group の既存 ACR に対する AKS AcrPull と Entra ID 登録の Azure.Provisioning 化が進み、Dashboard では切断後の terminal 出力・復旧操作が改善されました。
セキュリティ面では MessagePack を 2.5.307 に固定し、NuGet audit 設定も整備しています。廃止済み GitHub Models integration の削除は既存利用者の移行が必要です。
Go AppHost は GA エピックが立ち上がり、API/サポート、CLI、publish/deploy、VS Code、ドキュメントなどの準備が進行中ですが、まだ GA 完了ではありません。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20919](https://github.com/microsoft/aspire/pull/20919) — Fix AKS AcrPull for existing cross-resource-group registries

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +4171 / -84
- マージ日時 (UTC): `2026-10-16 13:48:39`

**変更概要**

AKS と異なる resource group にある既存 Azure Container Registry を利用する場合、kubelet identity に AcrPull が適切に付与されない問題を修正します。
既存 registry の検出、AKS control-plane / kubelet identity の分離、role assignment の scope 比較・後片付けを扱い、Azure Kubernetes provisioning と E2E テストを大幅に更新しています。
クロス resource group の ACR を使う Aspire AKS deployment が主な対象です。

<details><summary>変更ファイル (83 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentExtensions.cs` | 94 | 46 |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentResource.cs` | 10 | 0 |
| `src/Aspire.Hosting.Azure.Kubernetes/README.md` | 51 | 0 |
| `src/Aspire.Hosting.Azure/Aspire.Hosting.Azure.csproj` | 1 | 0 |
| `src/Aspire.Hosting.Azure/AzureProvisioningResource.cs` | 27 | 2 |
| `src/Aspire.Hosting.Azure/AzurePublishingContext.cs` | 38 | 3 |
| `src/Aspire.Hosting.Azure/AzureResourcePreparer.cs` | 8 | 13 |
| `src/Aspire.Hosting.Azure/ExistingAzureResourceExtensions.cs` | 13 | 0 |
| `src/Aspire.Hosting.Azure/Provisioning/Provisioners/BicepProvisioner.cs` | 7 | 1 |
| `src/Shared/ResourceNameHelpers.cs` | 34 | 0 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksCrossResourceGroupRegistryDeploymentTests.cs` | 439 | 0 |
| `tests/Aspire.Deployment.EndToEnd.Tests/README.md` | 7 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/AzureKubernetesEnvironmentExtensionsTests.cs` | 375 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/AzureKubernetesInfrastructureTests.cs` | 27 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/Snapshots/AzureKubernetesEnvironmentExtensionsTests.AddLoadBalancer_BicepEnablesIngressProfileAndUsesPreviewApi.verified.bicep` | 23 | 17 |
| _... 他 68 件_ | | |

</details>

<details><summary>コミット (22 件)</summary>

- `ccfd5e8` Fix AKS AcrPull for existing cross-group registries
- `f0aac72` Cover unchanged AKS registry assignment paths
- `69b33e6` Correct Azure CLI role assertion in AKS deployment test
- `a32a6ec` Compare Azure role scopes case-insensitively in AKS E2E
- `ccac576` Wait for E2E port forwarding in the owning shell
- `732edbd` Document existing registry access and role cleanup limitations
- `693435b` Provision separate AKS control-plane and kubelet identities
- `e499003` Build the AKS deployment AppHost before waiting for pipeline output
- _... 他 14 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存 Azure resource の provisioning 拡張や resource name helper、AKS environment resource の処理が変更されています。PR に `breaking-change` label が付いているため、AKS registry / identity の既存設定と role assignment の変更点をリリースノート・API 差分で確認してください。公開シグネチャ変更の詳細は変更ファイル一覧だけでは特定できません。

**既存利用者への影響**

クロス resource group の既存 ACR を使う構成では、更新後に必要な identity と AcrPull role assignment が期待どおりになるか確認してください。既存 registry の role cleanup 制約も README に従って評価してください。

### [#21051](https://github.com/microsoft/aspire/pull/21051) — Pin MessagePack to 2.5.307 for security fixes

- 作者: mitchdenny / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +6 / -0
- マージ日時 (UTC): `2026-10-16 12:04:49`

**変更概要**

MessagePack を 2.5.307 に固定し、セキュリティ修正を取り込む依存更新です。
中央の `Directory.Packages.props` と `Aspire.Hosting` の project 参照を更新しています。
Aspire.Hosting の依存関係を restore する利用者・開発環境が対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 3 | 0 |
| `src/Aspire.Hosting/Aspire.Hosting.csproj` | 3 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `4f9cb63` Pin MessagePack to 2.5.307 for security fixes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は MessagePack の version pin と project 参照に限定され、公開 API の追加・削除は確認できません。依存パッケージのセキュリティ修正を取り込むものです。

**既存利用者への影響**

アプリケーション API の移行は不要です。更新後に NuGet restore とテストを実行し、解決された MessagePack が 2.5.307 であることを確認してください。

### [#20726](https://github.com/microsoft/aspire/pull/20726) — Preserve disconnected terminal output and add recovery actions

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +2540 / -131
- マージ日時 (UTC): `2026-10-17 01:36:36`

**変更概要**

Dashboard の terminal が切断された際に、これまでの出力を保持し、利用者が復旧操作を選べるようにします。
Terminal disconnected banner、terminal view、browser 側の表示制御を追加し、終了コード表示、再接続後の重複バナー抑制、復旧エラーの提示も含みます。
Aspire Dashboard で resource terminal を利用する開発者の操作性と障害診断に影響します。

<details><summary>変更ファイル (50 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.config/dotnet-tools.json` | 1 | 1 |
| `.mcp.json` | 1 | 1 |
| `Directory.Packages.props` | 3 | 3 |
| `docs/specs/with-terminal.md` | 60 | 4 |
| `eng/github-ci/ci-skip-entirely-patterns.txt` | 0 | 1 |
| `eng/github-ci/test-trigger-map.yml` | 2 | 0 |
| `src/Aspire.Dashboard/Components/Controls/TerminalDisconnectedBanner.razor` | 60 | 0 |
| `src/Aspire.Dashboard/Components/Controls/TerminalDisconnectedBanner.razor.cs` | 235 | 0 |
| `src/Aspire.Dashboard/Components/Controls/TerminalDisconnectedBanner.razor.css` | 46 | 0 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor` | 28 | 9 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.cs` | 26 | 1 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.css` | 53 | 5 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.js` | 125 | 22 |
| `src/Aspire.Dashboard/Components/Layout/TerminalDock.razor` | 1 | 0 |
| `src/Aspire.Dashboard/Components/Layout/TerminalDock.razor.js` | 8 | 7 |
| _... 他 35 件_ | | |

</details>

<details><summary>コミット (23 件)</summary>

- `37b85f6` Preserve disconnected terminal output and add recovery actions
- `b4d7d37` Show reported resource exit codes in terminal recovery banners
- `16c20fb` Repoint Hex1b dependencies to stable 0.173.0
- `2a65836` Remove temporary Hex1b feed now stable packages are mirrored
- `6dfdbdb` Address terminal recovery and CI routing review feedback
- `85399e1` Merge main and preserve terminal disconnect recovery
- `d892cef` Keep terminal action errors visible when recovery is collapsed
- `46873c9` Avoid duplicate terminal recovery banners after refresh
- _... 他 15 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard の terminal UI / JavaScript に切断・復旧状態を扱うコンポーネントと制御が追加されています。PR の範囲では公開 .NET API の変更は示されておらず、Dashboard 内部の UI 機能です。

**既存利用者への影響**

通常のアプリケーション移行は不要です。Dashboard の terminal が切断した場合に保持出力・復旧 action が表示されるため、運用手順やサポート資料を更新する場合は新しい UI を反映してください。

### [#20937](https://github.com/microsoft/aspire/pull/20937) — Provision Microsoft Entra registrations using Azure.Provisioning

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +4748 / -330
- マージ日時 (UTC): `2026-10-16 15:54:05`

**変更概要**

Microsoft Entra application registration の作成・管理を Azure.Provisioning ベースに移し、Aspire の Azure provisioning と統合します。
Entra application / service principal の resource と extension、validation、Bicep 定義、tenant-scoped metadata を追加し、playground と説明資料も更新しています。
Entra ID integration を使ってアプリ登録を provision する Aspire 利用者が対象です。

<details><summary>変更ファイル (83 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 1 | 1 |
| `playground/EntraId/EntraId.AppHost/AppHost.cs` | 25 | 8 |
| `playground/EntraId/EntraId.AppHost/Properties/launchSettings.json` | 10 | 0 |
| `playground/EntraId/README.md` | 96 | 20 |
| `src/Aspire.Hosting.Azure.EntraId/Aspire.Hosting.Azure.EntraId.csproj` | 1 | 1 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdApplicationResource.cs` | 193 | 10 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdResourceExtensions.cs` | 332 | 53 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdValidation.cs` | 15 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/Provisioning/EntraIdBicepConstants.cs` | 34 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/Provisioning/MicrosoftGraphApplication.cs` | 81 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/Provisioning/MicrosoftGraphServicePrincipal.cs` | 34 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/README.md` | 123 | 32 |
| `src/Aspire.Hosting.Azure/AzureBicepResource.cs` | 13 | 1 |
| `src/Aspire.Hosting.Azure/AzureProvisioningController.cs` | 152 | 14 |
| `src/Aspire.Hosting.Azure/AzureProvisioningResource.cs` | 20 | 4 |
| _... 他 68 件_ | | |

</details>

<details><summary>コミット (19 件)</summary>

- `aef8cae` Create Entra application registrations with Azure.Provisioning
- `8a8164c` Record post-merge Entra provisioning verification
- `41c563a` Preserve typed and deferred Azure Bicep parameters
- `561ef85` Add Entra ID provisioning helpers and playground modes
- `24aa629` Add tenant-scoped resource suffix and fix provisioning review issues
- `cebe160` Simplify Entra provisioning and report retained directory objects
- `34cf5b8` Use existing Entra output awaiting and simplify guidance
- `1a9bff5` Refine tenant-scoped metadata and omit Entra location parameter
- _... 他 11 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`EntraIdApplicationResource`、`MicrosoftGraphApplication` / `MicrosoftGraphServicePrincipal` および Entra resource extension が追加・拡張され、typed / deferred Bicep parameter と tenant-scoped resource metadata を扱います。Azure.Provisioning 経由への移行に伴う既存 Entra registration API / 出力の互換性は、利用中の拡張メソッドに照らして確認してください。

**既存利用者への影響**

Entra ID provisioning API を利用する場合は、既存の registration 定義と生成される directory object / output が新しい resource model でどう扱われるか確認してください。サンプルと README の新しい provisioning flow を参照し、必要に応じて設定を移行してください。

### [#21034](https://github.com/microsoft/aspire/pull/21034) — fix(ci): Let CodeQL bootstrap the pinned prerelease .NET SDK

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +9 / -4
- マージ日時 (UTC): `2026-10-16 22:50:03`

**変更概要**

CodeQL workflow が prerelease .NET SDK を使う CI で、SDK installer が preview version を拒否して bootstrap に失敗する問題を解消します。
pipeline から互換性のない SDK installer を外し、CI 最適化ドキュメントを更新しました。
影響範囲は Aspire リポジトリの CodeQL / CI 実行で、製品ランタイムではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/ci/ci-pipeline-optimizations.md` | 7 | 0 |
| `eng/pipelines/azure-pipelines-codeql.yml` | 2 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `f05b179` fix(ci): Remove CodeQL SDK installer that rejects preview SDK

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は Azure Pipelines の CodeQL 設定と CI 文書のみです。製品 API や runtime behavior の変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。Aspire 開発者は CodeQL の CI が prerelease SDK で正常に bootstrap できることを確認してください。

### [#21065](https://github.com/microsoft/aspire/pull/21065) — Fail promptly when dotnet run launches an AppHost in publish mode

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +141 / -0
- マージ日時 (UTC): `2026-10-16 21:50:00`

**変更概要**

`dotnet run` から publish mode の AppHost を起動したとき、後続処理で失敗するのではなく早い段階で明確なエラーを返します。
AppHost RPC target に検査を加え、診断メッセージを resource localization と contributing documentation に追加しました。
publish mode で AppHost を実行する開発者に、失敗のタイミングと案内が変わります。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/contributing.md` | 3 | 0 |
| `src/Aspire.Hosting/Backchannel/AppHostRpcTarget.cs` | 9 | 0 |
| `src/Aspire.Hosting/Resources/MessageStrings.Designer.cs` | 9 | 0 |
| `src/Aspire.Hosting/Resources/MessageStrings.resx` | 4 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.cs.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.de.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.es.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.fr.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.it.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.ja.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.ko.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.pl.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.pt-BR.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.ru.xlf` | 5 | 0 |
| `src/Aspire.Hosting/Resources/xlf/MessageStrings.tr.xlf` | 5 | 0 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `1808fec` Fail promptly when a publish-mode AppHost is launched through aspire run
- `86131e6` Localize publish-mode run command error

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AppHostRpcTarget` に publish mode の起動条件を検出する処理と、対応するエラーメッセージが追加されています。公開 API のシグネチャ変更ではなく、誤った実行モードに対する CLI / backchannel の検証動作変更です。

**既存利用者への影響**

通常の移行は不要ですが、publish mode で `dotnet run` を起動していたスクリプトは早期エラーになるため、意図した publish / run コマンドを使うよう確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20973 | fix(ci): fix test selection - determining changes | radical | <https://github.com/microsoft/aspire/pull/20973> |
| #21053 | Expose Azure Front Door endpoint resource IDs | Copilot | <https://github.com/microsoft/aspire/pull/21053> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #21104 | Add first-time telemetry setup guidance to the dashboard | open | JamesNK | <https://github.com/microsoft/aspire/pull/21104> |
| PR | #21116 | Enable terminal configuration callbacks in TypeScript AppHosts | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21116> |
| PR | #21105 | Auto-fit resource terminals without explicit dimensions | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21105> |
| PR | #21098 | Add connection properties support for Azure Web PubSub hubs | open | austinaviv | <https://github.com/microsoft/aspire/pull/21098> |
| PR | #21101 | Keep service.instance.id when a resource sets OTEL_RESOURCE_ATTRIBUTES | open | MrZakos | <https://github.com/microsoft/aspire/pull/21101> |
| PR | #21048 | Bump the github-actions group across 1 directory with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21048> |
| PR | #21068 | Show Azure Container Registry resources in run mode | open | Copilot | <https://github.com/microsoft/aspire/pull/21068> |
| PR | #21091 | Support parameter-backed redirect URIs in the Entra ID integration | open | eerhardt | <https://github.com/microsoft/aspire/pull/21091> |
| PR | #21092 | Centralize native bundle build and signing orchestration | open | radical | <https://github.com/microsoft/aspire/pull/21092> |
| PR | #21089 | Support explicit owners for provisioned Entra registrations | open | eerhardt | <https://github.com/microsoft/aspire/pull/21089> |
| PR | #21044 | aspire docs api: read the API catalog from the sitemap index | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21044> |
| PR | #21064 | Fix Copilot App telemetry attribution for Aspire skills v0.0.4 | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21064> |
| PR | #21058 | Avoid reapplying end-anchor initialization after a small initial load | open | ilonatommy | <https://github.com/microsoft/aspire/pull/21058> |
| PR | #21055 |  Preserve console log batches and avoid reapplying end-anchor initialization | open | ilonatommy | <https://github.com/microsoft/aspire/pull/21055> |
| PR | #21046 | Update dashboard Fluent UI to 5.0.1 | open | JamesNK | <https://github.com/microsoft/aspire/pull/21046> |
| PR | #20686 | Bump the github-actions group with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20686> |
| Issue | #21115 | [Epic] Go AppHost GA | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21115> |
| Issue | #21113 | [Go AppHost GA] Verify samples and playground AppHosts convert to Go | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21113> |
| Issue | #21107 | [Go AppHost GA] Verify Go templates are discoverable by default and add language-default packages | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21107> |
| Issue | #21109 | [Go AppHost GA] Publish and deploy coverage for Go AppHosts | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21109> |
| Issue | #21111 | [Go AppHost GA] Public API review and packaging validation for Go packages | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21111> |
| Issue | #21112 | [Go AppHost GA] Documentation and sample conversion | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21112> |
| Issue | #21110 | [Go AppHost GA] Support policy, public API review and packaging | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21110> |
| Issue | #21108 | [Go AppHost GA] CLI end-to-end and publish/deploy coverage | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21108> |
| Issue | #21106 | [Go AppHost GA] Remove the feature flag and expose Go templates | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21106> |
| Issue | #21045 | `aspire init --language {X}` should add language-specific hosting packages by default | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21045> |
| Issue | #21114 | [Go AppHost GA] VS Code Go AppHost and Go resource debugging | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21114> |
| Issue | #21103 | Generated JavaScript app Dockerfile copies only package manifests, so `pnpm install --frozen-lockfile` fails for a project with `pnpm patch` patches | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/21103> |
| Issue | #21102 | [Regression 13.6] Dashboard circuit crashes with JSException: reading 'focus' in InteractionsInputDialog when a choice prompt opens | open | BogdanPetranivskyyGL | <https://github.com/microsoft/aspire/issues/21102> |
| Issue | #21100 | Setting OTEL_RESOURCE_ATTRIBUTES on a resource drops Aspire's service.instance.id | open | MrZakos | <https://github.com/microsoft/aspire/issues/21100> |
| Issue | #21099 | Aspire CLI fails to start DCP on NixOS because the executable is dynamically linked | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/21099> |
| Issue | #21097 | AzureWebPubSubHubResource does not expose connection properties | open | austinaviv | <https://github.com/microsoft/aspire/issues/21097> |
| Issue | #21096 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21096> |
| Issue | #21095 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) 'global refresh clears loading after switching to the workspace view' times out waiting for shared ps refresh loading state | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21095> |
| Issue | #21094 | [CI Failure] Flaky: HistogramAllocationTests.Create_UnchangedCumulativeSnapshot_DoesNotAllocate observes incidental GC allocation on windows-latest | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21094> |
| Issue | #21093 | Support member-specific obsolete SDK handling in provisioning proxies | open | eerhardt | <https://github.com/microsoft/aspire/issues/21093> |
| Issue | #21090 | Azure Container Registry: concurrent login steps can overwrite Docker credentials and cause unauthorized pushes | open | mip1983 | <https://github.com/microsoft/aspire/issues/21090> |
| Issue | #21088 | Add missing CLI telemetry durability/replay and failure shutdown lifecycle coverage | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/21088> |
| Issue | #21087 | Share bundle building and component verification between GitHub Actions and Azure Pipelines | open | radical | <https://github.com/microsoft/aspire/issues/21087> |
| Issue | #21086 | Evaluate the Entra ID Auth SDK sidecar for non-.NET Aspire workloads | open | eerhardt | <https://github.com/microsoft/aspire/issues/21086> |
| Issue | #21085 | Create guided agent assistance for Aspire Entra identity setup | open | eerhardt | <https://github.com/microsoft/aspire/issues/21085> |
| Issue | #21084 | Explore selecting an existing Entra registration during Aspire setup | open | eerhardt | <https://github.com/microsoft/aspire/issues/21084> |
| Issue | #21083 | Model and provision Entra application roles and role assignments | open | eerhardt | <https://github.com/microsoft/aspire/issues/21083> |
| Issue | #21081 | Define Microsoft Entra External ID support in the hosting integration | open | eerhardt | <https://github.com/microsoft/aspire/issues/21081> |
| Issue | #21082 | Add Entra identity onboarding and template guidance to Aspire tooling | open | eerhardt | <https://github.com/microsoft/aspire/issues/21082> |
| Issue | #21078 | Validate complete Entra local and Azure web-to-API scenarios and provisioning failure paths | open | eerhardt | <https://github.com/microsoft/aspire/issues/21078> |
| Issue | #21077 | Validate and complete sovereign-cloud support for Entra provisioning and federation | open | eerhardt | <https://github.com/microsoft/aspire/issues/21077> |
| Issue | #21079 | Publish Entra integration documentation and end-to-end samples for release | open | eerhardt | <https://github.com/microsoft/aspire/issues/21079> |
| Issue | #21080 | Threat-model and review the Entra hosting integration before release | open | eerhardt | <https://github.com/microsoft/aspire/issues/21080> |
| Issue | #21073 | Make Entra redirect URI configuration follow consumer endpoints and callback paths | open | eerhardt | <https://github.com/microsoft/aspire/issues/21073> |
| Issue | #21075 | Complete the Entra hosting integration public API review before release | open | eerhardt | <https://github.com/microsoft/aspire/issues/21075> |
| Issue | #21076 | Export the Entra hosting integration to polyglot AppHosts | open | eerhardt | <https://github.com/microsoft/aspire/issues/21076> |
| Issue | #21074 | Evaluate and implement a local OIDC emulator for Entra development and tests | open | eerhardt | <https://github.com/microsoft/aspire/issues/21074> |
| Issue | #21071 | Provision secure local credentials for created Entra confidential-client registrations | open | eerhardt | <https://github.com/microsoft/aspire/issues/21071> |
| Issue | #21072 | Provision Entra federation trust from Aspire user-assigned managed identities | open | eerhardt | <https://github.com/microsoft/aspire/issues/21072> |
| Issue | #21069 | Configure Entra downstream API references from the AppHost model | open | eerhardt | <https://github.com/microsoft/aspire/issues/21069> |
| Issue | #21070 | Provision Entra API identifier URIs, scopes, and caller permission relationships | open | eerhardt | <https://github.com/microsoft/aspire/issues/21070> |
| Issue | #21059 | AzureContainerRegistryResource is missing from the dashboard in run mode | open | lbussell | <https://github.com/microsoft/aspire/issues/21059> |
| Issue | #21067 | Blazor: GatewayOriginReference drops ValueProviderContext, causing Container Apps deployment to hang | open | mip1983 | <https://github.com/microsoft/aspire/issues/21067> |
| Issue | #21066 | Thousands of log files generated | open | jtsom-do | <https://github.com/microsoft/aspire/issues/21066> |
| Issue | #21063 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21063> |
| Issue | #21062 | VS Code: Resource state CodeLens shown on publish-mode declaration that shares a name with a run-mode resource | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21062> |
| Issue | #21061 | [aw] Analyze CI Failure timed out | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21061> |
| Issue | #21060 | [Epic] Microsoft Entra ID integration for Aspire | open | eerhardt | <https://github.com/microsoft/aspire/issues/21060> |
| Issue | #21057 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21057> |
| Issue | #21056 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21056> |
| Issue | #21052 | Azure Front Door integration: emit the endpoint resource ID as an output | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21052> |
| Issue | #21054 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21054> |
| Issue | #21050 | Upgrade StreamJsonRpc to MessagePack 3.x and remove temporary MessagePack pin | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21050> |
| Issue | #21049 | Generated Azure role-assignment deployment names can exceed ARM’s 64-character limit | open | mip1983 | <https://github.com/microsoft/aspire/issues/21049> |
| Issue | #21047 | Dashboard: per-trace summary, trace comparison by attribute, and a JSON summary API | open | madeyoga | <https://github.com/microsoft/aspire/issues/21047> |
| Issue | #19570 | [13.5.1] Parallel tests are no longer stable | closed | afscrome | <https://github.com/microsoft/aspire/issues/19570> |
| Issue | #18946 | `dotnet run --operation publish` should exit on failure | closed | afscrome | <https://github.com/microsoft/aspire/issues/18946> |
| Issue | #19192 | `aspire update` shoudl never override existing wildcard package source mapping | closed | afscrome | <https://github.com/microsoft/aspire/issues/19192> |
| Issue | #19765 | aspire update should not add nuget.org/channel feeds when a custom (mirrored) nuget.config already exists | closed | Copilot | <https://github.com/microsoft/aspire/issues/19765> |
| Issue | #17629 | Staging TypeScript AppHost integration restore adds DARC feed without package source mappings | closed | sebastienros | <https://github.com/microsoft/aspire/issues/17629> |
| Issue | #18277 | AKS environment does not support AcrPull for a cross-resource-group existing ACR | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18277> |
| Issue | #15438 | [AspireE2E] An error “Cannot create a JSObjectReference from the value 'undefined'” occurs when quickly switching to details page and closing it | closed | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/15438> |
