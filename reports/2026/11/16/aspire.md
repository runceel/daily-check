# microsoft/aspire *(詳細モード)*

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 65 |
| オープン中の新規 PR     | 35 |
| クローズ (未マージ) PR  | 18 |
| 新規 Issue              | 34 |
| クローズ Issue          | 15 |
| 主要コントリビューター  | JamesNK, maddymontaquila, aspire-repo-bot[bot], ellahathaway, sebastienros, IEvangelist |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#22254](https://github.com/microsoft/aspire/pull/22254) — Address Azure API Management API review feedback （PR / open / tommasodotNET）
Azure API Management の API review 対応が提案されています。未マージの変更のため該当リソースを使う利用者は、公開 API の最終形を確認してください。
- **⚠ 破壊的変更** [#22253](https://github.com/microsoft/aspire/pull/22253) — Group AddAzureFunctionTool parameters into an options type （PR / open / tommasodotNET）
AddAzureFunctionTool の引数を options 型にまとめる未マージ提案です。既存のメソッド呼び出しを使う利用者は、マージ時の引数・移行形を確認してください。
- **⚠ 破壊的変更** [#22189](https://github.com/microsoft/aspire/pull/22189) — Add canonical .NET CLI tool APIs to Aspire.Hosting.Dotnet （PR / open / karolz-ms）
Aspire.Hosting.Dotnet に標準 .NET CLI tool API を追加する提案です。既存の CLI tool 構成と共存するか、未マージ PR の API 変更を確認してください。
- **⚠ 破壊的変更** [#22171](https://github.com/microsoft/aspire/pull/22171) — [release/17.0] Consolidate ordered Go AppHost backports （PR / merged / joperezr）
Go AppHost の backport 統合で SDK API、子リソースの Build エラー伝搬、Go starter template が更新されました。Go AppHost 利用者は release/17.0 の API・生成テンプレートを確認してください。
- **⚠ 破壊的変更** [#20287](https://github.com/microsoft/aspire/pull/20287) — Configure native agent plugins and independent assets （PR / merged / ellahathaway）
Native agent plugin と独立した asset の構成方法が変更されています。Aspire agent plugin や関連 asset を組み込む利用者は設定・配布方法を確認してください。
- **⚠ 破壊的変更** [#20135](https://github.com/microsoft/aspire/pull/20135) — Support environment-specific Aspire secrets for deployment （PR / merged / davidfowl）
デプロイ時に環境別 Aspire secret を扱う機能が追加されました。複数環境へ発行する利用者は、環境別の secret 設定と既存値の適用先を確認してください。
- **⚠ 破壊的変更** [#19349](https://github.com/microsoft/aspire/pull/19349) — Add IServiceProvider support to Cosmos DB extensions （PR / merged / AdamDotNet）
Cosmos DB extensions に IServiceProvider を渡す API が追加されました。既存の拡張呼び出しや DI 登録を使う利用者は、新しい provider の受け渡し方法を確認してください。
- **⚠ セキュリティ** [#22266](https://github.com/microsoft/aspire/pull/22266) — [release/17.0] Update vulnerable dependencies （PR / merged / joperezr）
release/17.0 の脆弱性を含む依存パッケージ更新です。該当する Aspire / extension / playground 利用者は、この更新を含むパッケージを適用してください。
- **⚠ セキュリティ** [#22245](https://github.com/microsoft/aspire/pull/22245) — Build(deps): Bump the github-actions group across 1 directory with 9 updates （PR / open / dependabot[bot]）
GitHub Actions 依存の更新提案です。CI workflow を管理する利用者は、更新対象とセキュリティ修正の有無を確認してください。
- **⚠ セキュリティ** [#22170](https://github.com/microsoft/aspire/pull/22170) — Merge release/13.6 into main after 13.6.5 security release （PR / open / joperezr）
13.6.5 のセキュリティリリースを main に取り込む未マージ PR です。13.6 系を利用する場合は security release と修正の取り込み状況を確認してください。
- **⚠ セキュリティ** [#22117](https://github.com/microsoft/aspire/pull/22117) — Build(deps): Bump node-forge from 1.4.0 to 1.4.2 in /extension （PR / closed / dependabot[bot]）
extension の node-forge 更新提案はクローズされています。該当 extension の配布版に修正版が取り込まれているか確認してください。
- **⚠ セキュリティ** [#21872](https://github.com/microsoft/aspire/issues/21872) — Add vulnerability auditing for container images used by Aspire integrations （Issue / open / aspire-issue-bot[bot]）
Aspire integration の container image に対する vulnerability audit の追加要望です。image を運用する利用者は issue の進捗を追い、現行の脆弱性スキャンを継続してください。
- **⚠ セキュリティ** [#21736](https://github.com/microsoft/aspire/pull/21736) — Build(deps): Bump the npm group across 1 directory with 25 updates （PR / open / dependabot[bot]）
25 件の npm 依存を更新する未マージ提案です。対象パッケージと lockfile の差分を確認し、セキュリティ更新を取り込む場合は CI を通してから適用してください。
- **非推奨/廃止** [#22217](https://github.com/microsoft/aspire/pull/22217) — [release/17.0] Address API review feedback from #22185 （PR / merged / eerhardt）
Azure resource API と diagnostic の整理が含まれます。該当する Azure provisioning API を使う利用者は、release/17.0 の公開 API と診断コードの変更を確認してください。
- **非推奨/廃止** [#22167](https://github.com/microsoft/aspire/pull/22167) — Stabilize compute endpoint mapping contracts （PR / merged / maddymontaquila）
compute endpoint mapping の contract が安定化されました。各種 Aspire hosting integration の compute endpoint API を使う利用者は、安定版の契約に合わせてください。
- **非推奨/廃止** [#22158](https://github.com/microsoft/aspire/pull/22158) — Graduate MCP endpoint declaration to stable （PR / merged / maddymontaquila）
MCP endpoint 宣言 API が stable に昇格しました。MCP server を宣言する利用者は preview API の利用箇所を見直し、stable API への移行を確認してください。
- **非推奨/廃止** [#22157](https://github.com/microsoft/aspire/pull/22157) — Graduate required-command custom validation to stable （PR / merged / maddymontaquila）
required-command custom validation が stable に昇格しました。独自 validator を登録する利用者は stable API への移行と旧 API の利用有無を確認してください。
- **非推奨/廃止** [#20867](https://github.com/microsoft/aspire/pull/20867) — Deprecate Aspire.AppHost.Sdk (ASPIRE012) （PR / merged / davidfowl）
`Aspire.AppHost.Sdk` が ASPIRE012 として非推奨化されました。該当 SDK を参照する AppHost は推奨される新しい SDK へ移行してください。

## このリポジトリの要点

Go AppHost の大規模 backport 統合で SDK API、Build error 伝搬、Go starter template が更新されました。また MCP endpoint、required-command validation、compute endpoint mapping の API が stable に昇格しています。
release/17.0 では脆弱な依存関係の更新と Azure API review 対応が入り、CLI は旧 nested feature flags を許容します。Aspire.AppHost.Sdk の非推奨化も継続して確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#22171](https://github.com/microsoft/aspire/pull/22171) — [release/17.0] Consolidate ordered Go AppHost backports

- 作者: joperezr / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +26496 / -7867
- マージ日時 (UTC): `2026-11-12 05:41:08`

**変更概要**

release/17.0 に順不同で入っていた Go AppHost の backport を統合し、互いに依存する変更を一つの順序立った更新にまとめました。
Go SDK の typed API export metadata と idiomatic API を整え、子リソースのエラーを Build 時に伝搬させます。
Go starter template には React frontend と関連の構成・検証更新が含まれ、Go AppHost 利用者と新規テンプレート利用者に影響します。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitattributes` | 1 | 0 |
| `.github/workflows/polyglot-validation/test-go.sh` | 1 | 1 |
| `eng/scripts/cli-starter-validation.ps1` | 12 | 3 |
| `src/Aspire.Cli/Templating/CliTemplateFactory.GoStarterTemplate.cs` | 6 | 3 |
| `src/Aspire.Cli/Templating/CliTemplateFactory.cs` | 1 | 1 |
| `src/Aspire.Cli/Templating/KnownTemplateId.cs` | 1 | 1 |
| `src/Aspire.Cli/Templating/Templates/go-starter/.gitignore` | 2 | 0 |
| `src/Aspire.Cli/Templating/Templates/go-starter/api/go.mod` | 10 | 2 |
| `src/Aspire.Cli/Templating/Templates/go-starter/api/go.sum` | 16 | 2 |
| `src/Aspire.Cli/Templating/Templates/go-starter/api/main.go` | 52 | 81 |
| `src/Aspire.Cli/Templating/Templates/go-starter/api/telemetry.go` | 15 | 77 |
| `src/Aspire.Cli/Templating/Templates/go-starter/apphost.go` | 16 | 19 |
| `src/Aspire.Cli/Templating/Templates/go-starter/aspire.config.json` | 2 | 1 |
| `src/Aspire.Cli/Templating/Templates/go-starter/frontend/.dockerignore` | 2 | 0 |
| `src/Aspire.Cli/Templating/Templates/go-starter/frontend/.gitignore` | 24 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `6fde2cc` Revert Go runtime backport before ordered consolidation
- `93f51f7` Harden Go SDK runtime and complete typed API export metadata (#21827)
- `2c9f772` Propagate Go child resource errors through Build (#21969)
- `9178827` Make generated Go SDK APIs idiomatic (#21976)
- `065867b` Add React frontend to Go starter template (#21874)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Go SDK の API export metadata と public API 形状が idiomatic Go に整理され、Build の子リソース error handling も変更されました。**⚠ 破壊的変更**として Go AppHost API と生成 template を使うコードは再生成・コンパイル確認が必要です。

**既存利用者への影響**

Go starter template を新規利用する場合は更新後の React / Go 構成を利用してください。既存 Go AppHost は public API と Build エラー伝搬の変更を確認し、テストを実行してください。

### [#22266](https://github.com/microsoft/aspire/pull/22266) — [release/17.0] Update vulnerable dependencies

- 作者: joperezr / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +14 / -8
- マージ日時 (UTC): `2026-11-13 20:14:14`

**変更概要**

release/17.0 の依存関係に含まれる脆弱性を修正する更新です。
中央 package version、extension の package / yarn lockfile、Foundry agent playground の uv.lock、テスト用 package version を更新しています。
release/17.0 と関連 extension / playground を利用する開発者は、修正版の依存関係を取り込んでください。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 2 | 0 |
| `extension/package.json` | 1 | 1 |
| `extension/yarn.lock` | 4 | 4 |
| `playground/FoundryAgentBasic/app/uv.lock` | 3 | 3 |
| `tests/Directory.Packages.props` | 4 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `048806a` Update vulnerable release/17.0 dependencies

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

package version と lockfile の更新であり、公開 API のシグネチャ変更は示されていません。依存ライブラリの脆弱性対応が主目的です。

**既存利用者への影響**

API 移行は不要ですが、該当 release/17.0 の利用者は脆弱性修正済み依存を含む更新版を適用してください。

### [#22217](https://github.com/microsoft/aspire/pull/22217) — [release/17.0] Address API review feedback from #22185

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations` `Servicing-consider`
- 変更行数: +482 / -550
- マージ日時 (UTC): `2026-11-13 01:11:46`

**変更概要**

Azure API のレビュー指摘に対応し、Azure resource / Entra ID 関連 API と診断の構成を整理しました。
Azure resource context / extensions や EntraIdResourceExtensions の変更に加え、非 network API を ASPIREAZURE003 から分離し、Python Entra ID export も更新しています。
release/17.0 の Azure hosting integration と診断コードを利用するアプリが影響対象です。

<details><summary>変更ファイル (61 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/EntraId/EntraId.AppHost/AppHost.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure.AppContainers/BaseContainerAppContext.cs` | 2 | 2 |
| `src/Aspire.Hosting.Azure.AppService/AzureAppServiceWebsiteContext.cs` | 2 | 2 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdApplicationResource.cs` | 5 | 3 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdResourceExtensions.cs` | 24 | 24 |
| `src/Aspire.Hosting.Azure.EntraId/Provisioning/EntraIdApiProvisioning.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure.EntraId/README.md` | 19 | 19 |
| `src/Aspire.Hosting.Azure/AzureProvisioningController.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure/AzureProvisioningResource.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure/AzurePublishingContext.cs` | 2 | 2 |
| `src/Aspire.Hosting.Azure/AzureResourceInfrastructure.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure/AzureResourcePreparer.cs` | 3 | 1 |
| `src/Aspire.Hosting.Azure/IBicepOutputReferenceProvider.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure/ManagedIdentityRequiredAnnotation.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure/TenantScopedResourceAnnotation.cs` | 1 | 1 |
| _... 他 46 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `2c5ab29` Address API review feedback from #22185
- `ff00af6` Split non-networking Azure APIs out of ASPIREAZURE003
- `8d4ff77` Fix Python EntraId polyglot apphost for renamed export

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の名前・構成に review 対応が入り、ASPIREAZURE003 の診断対象も変更されています。**⚠ 破壊的変更の可能性**があるため、Azure provisioning / Entra ID API を使うコードと診断抑制設定を再確認してください。

**既存利用者への影響**

該当する Azure hosting API と診断コードを使用する利用者は release/17.0 の差分を確認し、必要なら API 呼び出しや diagnostics の設定を更新してください。

### [#22203](https://github.com/microsoft/aspire/pull/22203) — Ignore legacy nested feature flags in CLI configuration

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +49 / -8
- マージ日時 (UTC): `2026-11-13 01:17:28`

**変更概要**

`aspire.config.json` の legacy nested feature entries を CLI が許容するようにしました。
Flexible boolean dictionary の parsing を更新し、旧形式の設定を使った `aspire new` の source discovery と whitespace を含む boolean 値をテストしています。
旧 nested feature flag が残る AppHost 設定を使う利用者の互換性を高める変更です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Configuration/AspireConfigFile.cs` | 1 | 0 |
| `src/Aspire.Cli/Configuration/FlexibleBooleanDictionaryConverter.cs` | 13 | 7 |
| `tests/Aspire.Cli.Tests/Commands/NewCommandLocalTemplateTests.ConfiguredSources.cs` | 2 | 0 |
| `tests/Aspire.Cli.Tests/Configuration/AspireConfigFileTests.cs` | 33 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `4c60498` Tolerate legacy nested feature entries in aspire.config.json
- `b1297e7` Cover legacy nested feature flags in aspire new source discovery
- `6c246fc` Preserve whitespace-tolerant feature boolean parsing
- `9a506f7` Trigger CI for release/17.0 target

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI の設定 parser の互換性拡張で、公開 API のシグネチャ変更はありません。旧形式の nested entry は無視・許容されるため、新形式への強制移行を伴う変更ではありません。

**既存利用者への影響**

移行は不要です。既存 config の nested feature entry が意図せず有効化される前提になっていないか確認してください。

### [#22167](https://github.com/microsoft/aspire/pull/22167) — Stabilize compute endpoint mapping contracts

- 作者: maddymontaquila / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +9 / -65
- マージ日時 (UTC): `2026-11-15 16:25:19`

**変更概要**

Aspire hosting integration 間の compute endpoint mapping contract を安定化しました。
`IComputeEnvironmentResource` に関連する公開 contract を整え、Azure、Docker、Foundry、Kubernetes、Radius など各 integration の preview API 抑制を解消しています。
複数の実行環境に endpoint mapping を実装する利用者と integration 作者が対象です。

<details><summary>変更ファイル (31 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/list-of-diagnostics.md` | 1 | 0 |
| `src/Aspire.Hosting.Azure.ApiManagement/Aspire.Hosting.Azure.ApiManagement.csproj` | 1 | 1 |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppEnvironmentResource.cs` | 0 | 3 |
| `src/Aspire.Hosting.Azure.AppService/AzureAppServiceEnvironmentResource.cs` | 0 | 3 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdResourceExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Azure.FrontDoor/AzureFrontDoorExtensions.cs` | 0 | 1 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxContainerDeployment.cs` | 0 | 1 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxGroupResource.cs` | 0 | 4 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxesExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Docker/DockerComposeEnvironmentResource.cs` | 0 | 2 |
| `src/Aspire.Hosting.Foundry/HostedAgent/AzureHostedAgentResource.cs` | 0 | 2 |
| `src/Aspire.Hosting.Kubernetes/KubernetesEnvironmentResource.cs` | 0 | 2 |
| `src/Aspire.Hosting.Radius/Publishing/RadiusInfrastructureBuilder.cs` | 0 | 1 |
| `src/Aspire.Hosting.Radius/RadiusEnvironmentResource.cs` | 0 | 3 |
| `src/Aspire.Hosting/ApplicationModel/IComputeEnvironmentResource.cs` | 7 | 3 |
| _... 他 16 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `5a11c1f` Stabilize compute endpoint mapping contracts
- `740882b` Merge release/17.0 and resolve graduated API suppressions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`IComputeEnvironmentResource` に関する安定版 contract が確定し、複数 integration の公開 API に適用されています。preview 抑制の解消を含むため、独自実装は新しい contract に適合するか確認してください。

**既存利用者への影響**

独自 compute environment resource を実装する場合は stable contract に合わせた更新が必要です。組み込み integration の利用者も、preview API からの変更をリリースノートで確認してください。

### [#22158](https://github.com/microsoft/aspire/pull/22158) — Graduate MCP endpoint declaration to stable

- 作者: maddymontaquila / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +236 / -83
- マージ日時 (UTC): `2026-11-15 20:07:45`

**変更概要**

MCP server endpoint の宣言 API を stable に昇格しました。
`WithMcpServer` 拡張と診断情報を更新し、stable API に合わせた Go / TypeScript の code-generation snapshot とテストを反映しています。
Aspire から MCP server endpoint を宣言するアプリと SDK 利用者が対象です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/list-of-diagnostics.md` | 6 | 0 |
| `src/Aspire.Hosting.PostgreSQL/PostgresBuilderExtensions.cs` | 0 | 1 |
| `src/Aspire.Hosting/McpServerResourceBuilderExtensions.cs` | 9 | 4 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 53 | 42 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 110 | 29 |
| `tests/Aspire.Hosting.Tests/WithMcpServerTests.cs` | 58 | 7 |

</details>

<details><summary>コミット (4 件)</summary>

- `79eb444` Graduate MCP endpoint declaration to stable
- `4cc0705` Refresh stable MCP TypeScript SDK snapshot
- `b6b8fa5` Refresh stable MCP Go SDK snapshot
- `a4095d3` Merge release/17.0 and resolve MCP stabilization conflicts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MCP endpoint declaration は preview から stable となり、`WithMcpServer` の公開契約と生成 SDK の snapshot が更新されました。preview API を使う場合は stable 版でのシグネチャと診断動作を確認してください。

**既存利用者への影響**

MCP endpoint を宣言する既存アプリは stable API に移行できるか確認し、preview opt-in や diagnostic suppression があれば整理してください。

### [#22157](https://github.com/microsoft/aspire/pull/22157) — Graduate required-command custom validation to stable

- 作者: maddymontaquila / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +57 / -213
- マージ日時 (UTC): `2026-11-15 16:22:13`

**変更概要**

required-command custom validation API を stable に昇格しました。
RequiredCommand validator / context / result と lifecycle 登録の変更を反映し、Azure Functions、Dev Tunnels、JavaScript hosting などの integration と生成コードを更新しています。
独自の required-command validation を実装する AppHost 利用者が対象です。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/list-of-diagnostics.md` | 3 | 0 |
| `src/Aspire.Hosting.DevTunnels/DevTunnelResourceBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.JavaScript/JavaScriptHostingExtensions.cs` | 0 | 1 |
| `src/Aspire.Hosting/ApplicationModel/IRequiredCommandValidator.cs` | 0 | 3 |
| `src/Aspire.Hosting/ApplicationModel/RequiredCommandAnnotation.cs` | 1 | 2 |
| `src/Aspire.Hosting/ApplicationModel/RequiredCommandValidationContext.cs` | 0 | 3 |
| `src/Aspire.Hosting/ApplicationModel/RequiredCommandValidationResult.cs` | 3 | 1 |
| `src/Aspire.Hosting/ApplicationModel/RequiredCommandValidator.cs` | 0 | 2 |
| `src/Aspire.Hosting/DistributedApplicationBuilder.cs` | 0 | 2 |
| `src/Aspire.Hosting/Lifecycle/RequiredCommandValidationEventingSubscriber.cs` | 0 | 2 |
| `src/Aspire.Hosting/RequiredCommandResourceExtensions.cs` | 0 | 4 |
| `tests/Aspire.Hosting.Azure.Tests/AzureFunctionsTests.cs` | 0 | 1 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 3 | 90 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 25 | 85 |
| `tests/Aspire.Hosting.DevTunnels.Tests/DevTunnelCliVersionValidationTests.cs` | 0 | 2 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `d503439` Graduate required-command custom validation to stable
- `3d5f9c9` Merge release/17.0 and fix required-command graduation validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

required-command validation の validator / context / result および lifecycle 登録が stable contract に合わせて変更され、旧 API の一部が整理されています。preview / 旧抽象を直接参照する利用者は **API 変更を確認**してください。

**既存利用者への影響**

カスタム validator を登録している利用者は stable API に切り替え、起動時検証と validation 結果の処理をテストしてください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #22275 | Dashboard vNext: Give resource type more space to reduce truncate if screen width allows | thimok | <https://github.com/microsoft/aspire/pull/22275> |
| #22164 | Graduate Next.js hosting and JavaScript publishing APIs to stable | maddymontaquila | <https://github.com/microsoft/aspire/pull/22164> |
| #22161 | Graduate connection-string physical-name metadata | maddymontaquila | <https://github.com/microsoft/aspire/pull/22161> |
| #22054 | Show exit codes in describe snapshot table | mitchdenny | <https://github.com/microsoft/aspire/pull/22054> |
| #22278 | [release/17.0] Remove obsolete dashboard recordings style preference | JamesNK | <https://github.com/microsoft/aspire/pull/22278> |
| #22239 | [release/17.0] Improve resource picker hover actions | JamesNK | <https://github.com/microsoft/aspire/pull/22239> |
| #22274 | Label the Aspire tray as Preview instead of Experimental | sebastienros | <https://github.com/microsoft/aspire/pull/22274> |
| #22229 | Keep resource picker popup width consistent | JamesNK | <https://github.com/microsoft/aspire/pull/22229> |
| #22263 | Show only the absolute time in dashboard relative-time tooltips | sebastienros | <https://github.com/microsoft/aspire/pull/22263> |
| #22080 | Remove static Aspire skill copies during aspire agent init | ellahathaway | <https://github.com/microsoft/aspire/pull/22080> |
| #22226 | [release/17.0] Remove redundant CLI bundle opt-ins from templates | eerhardt | <https://github.com/microsoft/aspire/pull/22226> |
| #22268 | [release/17.0] Fix clipped graph controls and hide the game in the previous dashboard | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22268> |
| #22267 | [release/17.0] Bring back a darker dashboard header, softened in the dark theme | maddymontaquila | <https://github.com/microsoft/aspire/pull/22267> |
| #22264 | Fix clipped graph controls and hide the game in the previous dashboard | sebastienros | <https://github.com/microsoft/aspire/pull/22264> |
| #22240 | [release/17.0] Improve config source prompts and update feedback | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22240> |
| #22249 | [release/17.0] Improve dashboard tooltip wrapping | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22249> |
| #22262 | [release/17.0] Fix 404 when switching language in the previous dashboard | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22262> |
| #22258 | [release/17.0] Fix sidebar navigation from trace details | JamesNK | <https://github.com/microsoft/aspire/pull/22258> |
| #22231 | [release/17.0] `aspire agent init` telemetry fixes | ellahathaway | <https://github.com/microsoft/aspire/pull/22231> |
| #22250 | [release/17.0] Keep sidebar empty states below the scope selector | JamesNK | <https://github.com/microsoft/aspire/pull/22250> |
| #22237 | [release/17.0] Restore input dialog layout and fix checkbox spacing | JamesNK | <https://github.com/microsoft/aspire/pull/22237> |
| #22260 | [release/17.0] Fix certificate trust for Go pre-start tools | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22260> |
| #22246 | [release/17.0] Avoid dashboard page redirects on OTLP endpoints | JamesNK | <https://github.com/microsoft/aspire/pull/22246> |
| #22255 | [release/17.0] Link dashboard feedback prompt directly to the feedback discussion | IEvangelist | <https://github.com/microsoft/aspire/pull/22255> |
| #22256 | [release/17.0] Keep All resources name and counts on one row in Comfortable density | IEvangelist | <https://github.com/microsoft/aspire/pull/22256> |
| #22261 | Fix 404 when switching language in the previous dashboard | sebastienros | <https://github.com/microsoft/aspire/pull/22261> |
| #22232 | [release/17.0] Dashboard polish: icon colors, sidebar and picker fixes, trace log previews, test flakes | maddymontaquila | <https://github.com/microsoft/aspire/pull/22232> |
| #22222 | Fix certificate trust for Go pre-start tools | danegsta | <https://github.com/microsoft/aspire/pull/22222> |
| #22235 | Improve dashboard tooltip wrapping | JamesNK | <https://github.com/microsoft/aspire/pull/22235> |
| #22200 | Improve config source prompts and update feedback | JamesNK | <https://github.com/microsoft/aspire/pull/22200> |
| #22228 | Fix resource sidebar hover state after selection | JamesNK | <https://github.com/microsoft/aspire/pull/22228> |
| #22213 | [release/17.0] Fix MCP doctor timeout on Windows | ellahathaway | <https://github.com/microsoft/aspire/pull/22213> |
| #22205 | [release/17.0] Make ResourceTypeDisplayNameAnnotation and snapshot display name setter internal | sebastienros | <https://github.com/microsoft/aspire/pull/22205> |
| #22206 | [release/17.0] Mark resource trait APIs experimental | sebastienros | <https://github.com/microsoft/aspire/pull/22206> |
| #22196 | [release/17.0] Fix self-update channel persistence test | joperezr | <https://github.com/microsoft/aspire/pull/22196> |
| #22188 | Make the resource table the dashboard's home page and run the list to the top | maddymontaquila | <https://github.com/microsoft/aspire/pull/22188> |
| #22093 | Install user-scope telemetry hooks for project-scope agent init | ellahathaway | <https://github.com/microsoft/aspire/pull/22093> |
| #22224 | [release/17.0] Pin native hosting validation to Ubuntu 24.04 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22224> |
| #22078 | Limit telemetry hooks to Aspire-configured agents | ellahathaway | <https://github.com/microsoft/aspire/pull/22078> |
| #22084 | Scope telemetry hooks with tool matchers | ellahathaway | <https://github.com/microsoft/aspire/pull/22084> |
| #22230 | [release/17.0] Combined dashboard backports (#22145, #22134, #22137, #22149, #22135, #22136, #22138, #22192, #22147) | maddymontaquila | <https://github.com/microsoft/aspire/pull/22230> |
| #22142 | Fix inconsistent dashboard action icon colors | JamesNK | <https://github.com/microsoft/aspire/pull/22142> |
| #22223 | Pin native hosting validation to Ubuntu 24.04 | danegsta | <https://github.com/microsoft/aspire/pull/22223> |
| #21986 | Remove redundant CLI bundle opt-ins from templates | eerhardt | <https://github.com/microsoft/aspire/pull/21986> |
| #22182 | Honor configured channels when updating C# AppHosts | danegsta | <https://github.com/microsoft/aspire/pull/22182> |
| #21882 | Fix MCP doctor timeout on Windows | ellahathaway | <https://github.com/microsoft/aspire/pull/21882> |
| #22147 | Simplify expanded resource grid actions | JamesNK | <https://github.com/microsoft/aspire/pull/22147> |
| #22192 | Fix resource graph overview padding | JamesNK | <https://github.com/microsoft/aspire/pull/22192> |
| #22186 | [release/17.0] Combined dashboard backports (#22125–#22132) | sebastienros | <https://github.com/microsoft/aspire/pull/22186> |
| #22143 | [release/17.0] Improve CLI Git diagnostics, timeouts, and config-source errors | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22143> |
| #22139 | [release/17.0] Don't overwrite Kubernetes templates when objects share a name | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22139> |
| #22159 | Graduate Deno hosting APIs to stable | maddymontaquila | <https://github.com/microsoft/aspire/pull/22159> |
| #22138 | Fix dashboard SVG tooltips and restore rich trace previews | JamesNK | <https://github.com/microsoft/aspire/pull/22138> |
| #22136 | Right-align metadata and actions in the compact resource sidebar | JamesNK | <https://github.com/microsoft/aspire/pull/22136> |
| #22135 | Use standard font sizes in the resource selector | JamesNK | <https://github.com/microsoft/aspire/pull/22135> |
| #22149 | Unify dashboard telemetry footer counts and pause indicators | JamesNK | <https://github.com/microsoft/aspire/pull/22149> |
| #22134 | Align resource endpoint details and link display names | JamesNK | <https://github.com/microsoft/aspire/pull/22134> |
| #22137 | Use smaller labels and more text width in relationship graphs | JamesNK | <https://github.com/microsoft/aspire/pull/22137> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #22299 | Rename skill sources to agent plugin sources | open | JamesNK | <https://github.com/microsoft/aspire/pull/22299> |
| PR | #22298 | Use accepted configuration sources for template discovery | open | JamesNK | <https://github.com/microsoft/aspire/pull/22298> |
| PR | #22285 | [release/17.0] Compact dashboard home header | open | JamesNK | <https://github.com/microsoft/aspire/pull/22285> |
| PR | #22297 | Investigate non-.NET test reporting in CI | open | radical | <https://github.com/microsoft/aspire/pull/22297> |
| PR | #22292 | [release/17.0] Make E2E notification cleanup deterministic | open | radical | <https://github.com/microsoft/aspire/pull/22292> |
| PR | #22291 | Show resources waiting for parameters during startup | open | JamesNK | <https://github.com/microsoft/aspire/pull/22291> |
| PR | #22296 | Register GitHub Apps from a manifest with AddGitHubApp | open | mitchdenny | <https://github.com/microsoft/aspire/pull/22296> |
| PR | #22294 | Add GitHub App hosting integration for existing apps | open | mitchdenny | <https://github.com/microsoft/aspire/pull/22294> |
| PR | #22295 | Use consistent tray quit label | open | IEvangelist | <https://github.com/microsoft/aspire/pull/22295> |
| PR | #22287 | Prevent telemetry refresh after dashboard disposal | open | radical | <https://github.com/microsoft/aspire/pull/22287> |
| PR | #22286 | [release/17.0] Use locally available package versions for browser debugger fixtures | open | radical | <https://github.com/microsoft/aspire/pull/22286> |
| PR | #22288 | [release/17.0] Show exit codes in describe snapshot table | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22288> |
| PR | #22280 | [release/17.0] Label the Aspire tray as Preview instead of Experimental | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22280> |
| PR | #22284 | Keep a selected telemetry source selected when another instance renames it | open | sebastienros | <https://github.com/microsoft/aspire/pull/22284> |
| PR | #22282 | Prepare VS Code extension release v1.26.0 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22282> |
| PR | #22271 | Warn about all agent skill sources | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22271> |
| PR | #22257 | [release/17.0] Improve telemetry source rows in the dashboard | open | JamesNK | <https://github.com/microsoft/aspire/pull/22257> |
| PR | #22277 | [release/17.0] Remove static Aspire skill copies during aspire agent init | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22277> |
| PR | #22269 | [release/17.0] Fix aspire agent init --non-interactive with multiple AppHosts | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22269> |
| PR | #22272 | feat(homebrew): propose tap updates from the original release build | open | radical | <https://github.com/microsoft/aspire/pull/22272> |
| PR | #22219 | [release/17.0] Honor configured channels when updating C# AppHosts | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22219> |
| PR | #22253 | Group AddAzureFunctionTool parameters into an options type | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/22253> |
| PR | #22254 | Address Azure API Management API review feedback | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/22254> |
| PR | #22245 | Build(deps): Bump the github-actions group across 1 directory with 9 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22245> |
| PR | #22244 | Bump the create-video group with 8 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22244> |
| PR | #22238 | [main] Ignore legacy nested feature flags in CLI configuration | open | IEvangelist | <https://github.com/microsoft/aspire/pull/22238> |
| PR | #22234 | Detect existing Copilot MCP setup in project configurations | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22234> |
| PR | #22207 | Separate channel update validation with aspire update --dry-run | open | danegsta | <https://github.com/microsoft/aspire/pull/22207> |
| PR | #22189 | Add canonical .NET CLI tool APIs to Aspire.Hosting.Dotnet | open | karolz-ms | <https://github.com/microsoft/aspire/pull/22189> |
| PR | #22215 | Fix Go starter readiness and diagnostics upload race | open | IEvangelist | <https://github.com/microsoft/aspire/pull/22215> |
| PR | #22227 | Build(deps): Bump node-forge from 1.4.0 to 1.4.3 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22227> |
| PR | #22208 | Surface restore output when update validation fails | open | danegsta | <https://github.com/microsoft/aspire/pull/22208> |
| PR | #22201 | Go codegen: address review feedback from #22057 | open | IEvangelist | <https://github.com/microsoft/aspire/pull/22201> |
| PR | #22197 | Report configuration source availability in aspire doctor | open | JamesNK | <https://github.com/microsoft/aspire/pull/22197> |
| PR | #22193 | [release/17.0] Restore Visual Studio Aspire version discovery in empty template | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22193> |
| PR | #22243 | Add single-use Hosting process execution and migrate Bicep | closed | MattKotsenas | <https://github.com/microsoft/aspire/pull/22243> |
| PR | #22265 | [release/17.0] Fix clipped graph controls and hide the game in the previous dashboard | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22265> |
| PR | #21793 | Dashboard resource navigation and parameter overview | closed | JamesNK | <https://github.com/microsoft/aspire/pull/21793> |
| PR | #21285 | Build(deps): Bump the github-actions group across 1 directory with 8 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21285> |
| PR | #21868 | Bump the create-video group with 8 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21868> |
| PR | #22195 | Improve dashboard Overview view selection and navigation | closed | JamesNK | <https://github.com/microsoft/aspire/pull/22195> |
| PR | #21996 | Center tag group counts over the state dot column | closed | maddymontaquila | <https://github.com/microsoft/aspire/pull/21996> |
| PR | #22117 | Build(deps): Bump node-forge from 1.4.0 to 1.4.2 in /extension | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22117> |
| PR | #22165 | Stabilize progress interaction APIs | closed | maddymontaquila | <https://github.com/microsoft/aspire/pull/22165> |
| PR | #22091 | fix: allow build-only AppHost builds without the CLI bundle | closed | radical | <https://github.com/microsoft/aspire/pull/22091> |
| PR | #22129 | [release/17.0] Allocate the next dashboard run ID when two dashboards start in the same millisecond | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22129> |
| PR | #22132 | [release/17.0] Address deferred review feedback for the modern dashboard | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22132> |
| PR | #22127 | [release/17.0] Rename the WithTags trait from Aspire_Dashboard_Tag to Aspire_Tag | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22127> |
| PR | #22125 | [release/17.0] Store dashboard tags, resource order and metric pins in browser local storage | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22125> |
| PR | #22128 | [release/17.0] Restore single-line compact rows in the dashboard resource list | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22128> |
| PR | #22130 | [release/17.0] Simplify the dashboard around its two main jobs | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22130> |
| PR | #22131 | [release/17.0] Return 400 for OTLP JSON requests with malformed ids | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22131> |
| PR | #22126 | [release/17.0] Add dashboard resource-selector dropdown | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22126> |
| Issue | #22241 | Aspire CI health — main and release/17.0 | open | radical | <https://github.com/microsoft/aspire/issues/22241> |
| Issue | #22252 | Add ChromaDB hosting integration | open | meysamhadeli | <https://github.com/microsoft/aspire/issues/22252> |
| Issue | #22273 | Dashboard vNext: resource type truncated too early | closed | thimok | <https://github.com/microsoft/aspire/issues/22273> |
| Issue | #22293 | Allow standalone Blazor WebAssembly apps to mount at the gateway root independently of the resource name | open | fingers10 | <https://github.com/microsoft/aspire/issues/22293> |
| Issue | #22242 | VS2026 18.12.0 (Nov update) cannot hit breakpoint; symbol not loaded with Aspire 13.6.5 (yet again) | open | pellea | <https://github.com/microsoft/aspire/issues/22242> |
| Issue | #22290 | CLI `aspire stop` vs `aspire ps` using unclear wording | open | thimok | <https://github.com/microsoft/aspire/issues/22290> |
| Issue | #22289 | [Main CI Failure] Main branch CI failure at 3ed1c753769b7fb0edd28beede32e4639d39acd8 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22289> |
| Issue | #22283 | [Main CI Failure] Main branch CI failure at f67e764c2de5c325abefe6271c2e5395a36ea984 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22283> |
| Issue | #22279 | [Main CI Failure] Main branch CI failure at f67e764c2de5c325abefe6271c2e5395a36ea984 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22279> |
| Issue | #22281 | [automated] Publish an attempt-labeled outerloop test-results bundle | open | radical | <https://github.com/microsoft/aspire/issues/22281> |
| Issue | #22199 | [AspireE2E][Aspire CLI] dotnet build fails after running aspire init on a .NET 11 web app | open | sab1n311 | <https://github.com/microsoft/aspire/issues/22199> |
| Issue | #22191 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) tree action commands test cannot locate .monaco-menu | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22191> |
| Issue | #22276 | VSCode extension restart apphost not working | open | thimok | <https://github.com/microsoft/aspire/issues/22276> |
| Issue | #22270 | Dashboard vNext: show all URLs when this fits the screen | open | thimok | <https://github.com/microsoft/aspire/issues/22270> |
| Issue | #22198 | [AspireE2E] There is no endpoint URL for the webapp that `aspire init` after deploying for Aspire 17.0 | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/22198> |
| Issue | #22221 | Go starter: pre-start go mod tidy fails TLS validation on macOS with Go 1.27 | open | danegsta | <https://github.com/microsoft/aspire/issues/22221> |
| Issue | #22259 | Enable Go package baseline and generated API compatibility validation | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22259> |
| Issue | #22247 | Dashboard feedback notification asks why the user is switching back | open | JamesNK | <https://github.com/microsoft/aspire/issues/22247> |
| Issue | #22251 | Add OpenTelemetry Collector hosting integration | open | meysamhadeli | <https://github.com/microsoft/aspire/issues/22251> |
| Issue | #22248 | Place sidebar filter empty-state message below All sources / All resources and divider | open | JamesNK | <https://github.com/microsoft/aspire/issues/22248> |
| Issue | #22209 | Allow alternative `coreclr` debuggers (e.g. ReSharper for VS Code) to debug Aspire apps in VS Code extension | open | saltukkos | <https://github.com/microsoft/aspire/issues/22209> |
| Issue | #22236 | Seq integration: add OpenTelemetry metrics support and update the default image | open | gimmickj | <https://github.com/microsoft/aspire/issues/22236> |
| Issue | #22233 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22233> |
| Issue | #22225 | Consolidate aspire.config.json reading/writing and define a consistent invalid-config policy | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22225> |
| Issue | #22220 | Aspire.Hosting: make PipelineOutputDiffRule.Action an enum without losing configuration validation | open | eerhardt | <https://github.com/microsoft/aspire/issues/22220> |
| Issue | #22218 | Copilot telemetry hook write replaces all of ~/.copilot/hooks/aspire-telemetry.json | open | ellahathaway | <https://github.com/microsoft/aspire/issues/22218> |
| Issue | #22216 | Restore ubuntu-latest for native hosting validation once Playwright supports Ubuntu 26.04 | open | danegsta | <https://github.com/microsoft/aspire/issues/22216> |
| Issue | #22214 | aspire update --channel hides restore errors and rolls back changes, making dependency conflicts hard to diagnose | open | Copilot | <https://github.com/microsoft/aspire/issues/22214> |
| Issue | #22211 | ATS exports can't express a required parameter that accepts null (e.g. `string?` without a default) | open | eerhardt | <https://github.com/microsoft/aspire/issues/22211> |
| Issue | #22210 | Aspire.Hosting.Azure.ApiManagement: address 17.0 API review feedback (AddApi options, TimeSpan durations) | open | eerhardt | <https://github.com/microsoft/aspire/issues/22210> |
| Issue | #22204 | [Main CI Failure] Main branch CI failure at 6d76fc78e296ea99a9505a8de3dfae579086fa5a | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22204> |
| Issue | #22202 | 13.6 regression: dashboard fails to bind on WSL with Consomme networking after the wildcard port probe | open | Jozef833 | <https://github.com/microsoft/aspire/issues/22202> |
| Issue | #22194 | Intermittent ~60s `aspire start` in WSL: warm TypeScript AppHost spends 44s in `npm install` | open | joperezr | <https://github.com/microsoft/aspire/issues/22194> |
| Issue | #22190 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22190> |
| Issue | #21858 | [AspireE2E][Old Dashboard] Graph controls are clipped at the bottom and all buttons are inaccessible for Aspire 17.0 | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21858> |
| Issue | #21715 | [AspireE2E] Previous Aspire Dashboard returns 404 when switching language | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21715> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #20655 | Scheduled workflow failing: Generate API Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20655> |
| Issue | #21114 | [Go AppHost preview] VS Code Go AppHost and Go resource debugging | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21114> |
| Issue | #21112 | [Go AppHost preview] Documentation and sample conversion | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21112> |
| Issue | #21110 | [Go AppHost preview] Support policy, public API review and packaging | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21110> |
| Issue | #21722 | dcp run-controllers memory grows unbounded to ~17 GB over a multi-day aspire start session (Windows) | closed | guillaumefugere | <https://github.com/microsoft/aspire/issues/21722> |
| Issue | #20480 | Telemetry hook makes incorrect assumptions | closed | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20480> |
| Issue | #20014 | Clarify telemetry hook message when Copilot App and CLI are detected | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20014> |
| Issue | #21989 | Check Experimental APIs and see if they should be flipped to stable. | closed | joperezr | <https://github.com/microsoft/aspire/issues/21989> |
| Issue | #21877 | MCP doctor times out on Windows because Git inherits the server stdin pipe | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/21877> |
| Issue | #18618 | Scheduled workflow failing: Generate ATS Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18618> |
| Issue | #21862 | Dashboard traces page is missing the displayed count in the footer | closed | JamesNK | <https://github.com/microsoft/aspire/issues/21862> |
