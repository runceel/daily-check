# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 18 |
| オープン中の新規 PR     | 33 |
| クローズ (未マージ) PR  | 20 |
| 新規 Issue              | 37 |
| クローズ Issue          | 23 |
| 主要コントリビューター  | ellahathaway, sebastienros, eerhardt, IEvangelist, Copilot, mitchdenny |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19922](https://github.com/microsoft/aspire/issues/19922) — [14.0] Redesign PublishAsDockerFile argument handling （Issue / open / danegsta）
  Aspire 14.0 で `PublishAsDockerFile` の引数契約が変わる可能性があるため、Docker 公開を使う利用者は設計案と移行方法を確認してください。
- **⚠ 破壊的変更** [#19810](https://github.com/microsoft/aspire/pull/19810) — Improve Azure Sandbox defaults （PR / merged / mitchdenny）
  Azure Sandbox を使う利用者は既定値、認証ポート、エンドポイント表示の変更を確認し、既存のデプロイ検証を再実行してください。
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / open / nellshamrell）
  Radius 連携を使う利用者は 0.60 へのアップグレードと recipe 出力からの接続情報取得に伴う互換性を確認してください。
- **⚠ セキュリティ** [#19513](https://github.com/microsoft/aspire/pull/19513) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
  JavaScript テンプレートを保守する担当者は npm 依存関係の更新内容と脆弱性修正を確認し、CI で再インストールとテストを行ってください。
- **⚠ セキュリティ** [#19053](https://github.com/microsoft/aspire/pull/19053) — [auto-sec] npm: @angular 21.2.19 + brace-expansion 5.0.9 (frontend cluster) （PR / merged / IEvangelist）
  Aspire のフロントエンド利用者は Angular と brace-expansion のセキュリティ更新を取り込み、ロックファイルを再生成してください。
- **⚠ セキュリティ** [#19006](https://github.com/microsoft/aspire/pull/19006) — Bump the uv group across 2 directories with 1 update （PR / closed / dependabot[bot]）
  Python/uv 依存関係を利用する開発者はセキュリティ更新の適用状況を確認し、閉じられた PR の内容も次回更新で取り込んでください。
- **⚠ セキュリティ** [#18995](https://github.com/microsoft/aspire/pull/18995) — [auto-sec] Consolidate aspire low-risk dependency security remediations (npm/pip/yarn) （PR / merged / IEvangelist）
  npm・pip・yarn の低リスク依存関係修正を統合したため、各テンプレートのロックファイルとスキャン結果を確認してください。
- **⚠ セキュリティ** [#18983](https://github.com/microsoft/aspire/pull/18983) — Bump the npm_and_yarn group across 9 directories with 9 updates （PR / closed / dependabot[bot]）
  複数ディレクトリの npm/yarn 依存関係を更新する PR であり、テンプレート利用者は依存関係の再解決後にビルドを確認してください。
- **⚠ セキュリティ** [#18858](https://github.com/microsoft/aspire/pull/18858) — [auto-sec] Consolidate Aspire JavaScript template dependency security remediations （PR / merged / IEvangelist）
  Aspire の JavaScript テンプレート利用者は統合された依存関係セキュリティ修正を適用し、生成後のアプリケーションを再検証してください。
- **非推奨/廃止** [#19965](https://github.com/microsoft/aspire/pull/19965) — Fix deprecated Homebrew cask DSL usage （PR / open / askpt）
  macOS で Homebrew cask を使う利用者は、非推奨 DSL を現行形式へ更新する PR の適用状況を確認してください。
- **非推奨/廃止** [#19090](https://github.com/microsoft/aspire/pull/19090) — Mark ResourceUrlAnnotation.DisplayOrder as obsolete （PR / merged / Copilot）
  `ResourceUrlAnnotation.DisplayOrder` を参照する拡張機能は非推奨 API の代替を確認し、将来の削除に備えて移行してください。
- **非推奨/廃止** [#19022](https://github.com/microsoft/aspire/pull/19022) — Bump the npm_and_yarn group across 1 directory with 2 updates （PR / closed / dependabot[bot]）
  npm/yarn 依存関係更新のため、テンプレート生成後に利用者側でロックファイルと脆弱性スキャンを更新してください。
- **非推奨/廃止** [#18650](https://github.com/microsoft/aspire/issues/18650) — [AspireE2E] AppHost fails to resolve Aspire CLI bundle until Aspire CLI is initialized via 'aspire new' （Issue / closed / joniel-bolocon）
  Aspire CLI の初期化前に AppHost が CLI bundle を解決できない問題は修正済みですが、旧環境では `aspire new` を含む初期化手順を確認してください。

## このリポジトリの要点

Azure Sandbox、Foundry Local、AKS/Helm のデプロイ経路が大きく改善され、クラウド接続とローカル開発の挙動が安定しました。  
MongoDB replica set リソースと Bicep 出力抑制 API が追加され、AppHost の構成表現が拡張されています。  
一方、Docker 公開引数の 14.0 再設計と多数の依存関係セキュリティ更新は、利用者が追跡すべき重要事項です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19810](https://github.com/microsoft/aspire/pull/19810) — Improve Azure Sandbox defaults

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +1125 / -216
- マージ日時 (UTC): `2026-09-05 07:27:36`

**変更概要**

Azure Sandbox の既定値とデプロイフローを見直し、認証済みポート、デプロイ概要のエンドポイント、ダッシュボードリンクを扱えるようにしました。  
ローカルの readiness probe を整理し、Azure 側のデプロイ ID でエンドポイント転送を検証します。  
Sandbox を利用する AppHost と E2E テストに影響する大規模な統合変更です。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxContainerDeployment.cs` | 106 | 74 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxContainerOptionsAnnotation.cs` | 0 | 5 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxEndpointPropertyValueProvider.cs` | 21 | 15 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxGroupResource.cs` | 36 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxesExtensions.cs` | 68 | 33 |
| `src/Aspire.Hosting.Azure.Sandboxes/Internal/Adc/AzureDevComputeClient.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure.Sandboxes/README.md` | 19 | 10 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AzureSandboxesDeploymentTests.cs` | 375 | 21 |
| `tests/Aspire.Hosting.Azure.Tests/AzureSandboxesTests.cs` | 498 | 55 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.Sandboxes/TypeScript/apphost.mts` | 1 | 2 |

</details>

<details><summary>コミット (26 件)</summary>

- `27c4856` Improve Azure Sandbox defaults
- `dcda16a` Fix authenticated Sandbox ports
- `038af25` Show Azure Sandbox endpoints in deployment summary
- `896b82a` Preserve single-file AppHost directives in Sandbox E2E
- `e39f9c4` Add Sandbox dashboard links to deploy summary
- `30bac74` Verify Sandbox endpoints with deployment identity
- `f6d364b` Remove Sandbox public endpoint readiness probe
- `0db7ec9` Verify Sandbox .NET endpoint forwarding
- _... 他 18 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: `AzureSandboxContainerOptionsAnnotation` の構成と Sandbox の既定値・公開エンドポイント処理が変わり、認証ポートやデプロイ概要の新しい情報提供が追加されました。

**既存利用者への影響**

Sandbox を既存設定で利用している場合は、ポート、readiness probe、エンドポイント表示を再確認してください。一般的な AppHost では設定変更なしで利用できますが、E2E の期待値は更新が必要です。

### [#19843](https://github.com/microsoft/aspire/pull/19843) — Hide Azure environment when all resources use emulators

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +49 / -0
- マージ日時 (UTC): `2026-09-04 14:01:39`

**変更概要**

すべてのリソースがエミュレーターを使う場合に、不要な Azure environment resource を表示しないようにしました。  
Azure 環境の可視性を遅延評価し、ローカル開発画面のノイズを減らします。  
Azure 実リソースを含む構成の挙動は維持されます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure/AzureResourcePreparer.cs` | 10 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureRunAsEmulatorModeTests.cs` | 39 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `40a8cc8` Hide unused Azure environment resource
- `4988ebf` Explain deferred Azure environment visibility

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Azure environment resource の表示判定を AppHost のリソース状態に基づく遅延判定へ変更しました。公開 API のシグネチャ追加はなく、表示と準備処理の条件が変わります。

**既存利用者への影響**

エミュレーターのみの AppHost では Azure environment が表示されなくなるため、UI や自動化がその存在を前提にしていないか確認してください。

### [#18196](https://github.com/microsoft/aspire/pull/18196) — Introduce `MongoDBReplicaSetResource`

- 作者: aradalvand / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +3269 / -75
- マージ日時 (UTC): `2026-09-04 19:35:43`

**変更概要**

MongoDB の replica set を AppHost から表現する `MongoDBReplicaSetResource` と builder API を追加しました。  
key file、接続文字列、lifecycle event、MongoDB horizons を含む構成を扱い、テストと公開 API を整備しています。  
MongoDB の高可用性構成を Aspire のリソースモデルで管理できるようになります。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `THIRD-PARTY-NOTICES.TXT` | 19 | 0 |
| `src/Aspire.Hosting.MongoDB/AssemblyInfo.cs` | 6 | 0 |
| `src/Aspire.Hosting.MongoDB/MongoDBBuilderExtensions.cs` | 529 | 32 |
| `src/Aspire.Hosting.MongoDB/MongoDBServerResource.cs` | 63 | 5 |
| `src/Aspire.Hosting.MongoDB/README.md` | 65 | 0 |
| `src/Aspire.Hosting.MongoDB/ReplicaSet/MongoDBReplicaSetBuilderExtensions.cs` | 678 | 0 |
| `src/Aspire.Hosting.MongoDB/ReplicaSet/MongoDBReplicaSetResource.cs` | 140 | 0 |
| `tests/Aspire.Hosting.MongoDB.Tests/AddMongoDBTests.cs` | 316 | 8 |
| `tests/Aspire.Hosting.MongoDB.Tests/Aspire.Hosting.MongoDB.Tests.csproj` | 0 | 4 |
| `tests/Aspire.Hosting.MongoDB.Tests/ConnectionPropertiesTests.cs` | 2 | 2 |
| `tests/Aspire.Hosting.MongoDB.Tests/MongoDBPublicApiTests.cs` | 144 | 0 |
| `tests/Aspire.Hosting.MongoDB.Tests/MongoDBTestHelpers.cs` | 23 | 0 |
| `tests/Aspire.Hosting.MongoDB.Tests/MongoDbFunctionalTests.cs` | 98 | 0 |
| `tests/Aspire.Hosting.MongoDB.Tests/ReplicaSet/AddMongoDBReplicaSetTests.cs` | 543 | 0 |
| `tests/Aspire.Hosting.MongoDB.Tests/ReplicaSet/MongoDBReplicaSetPublicApiTests.cs` | 35 | 0 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (54 件)</summary>

- `4ecaad8` introduce `MongoDBReplicaSetResource`
- `1835839` add `WithKeyFile` for MongoDB server resources
- `169c661` make adjustments to some of the tests
- `e8fe7a9` implement the correct set of lifecycle events
- `ec33bbf` fix issues in `WithKeyFile`
- `8ad7774` include `&directConnection=true` when `MongoDBServerResource` is part…
- `0c54ec8` fix `BuildConnectionString`'s logic for the MongoDB replica set resource
- `d3ac22c` lay the groundwork for using the MongoDB horizons feature to solve th…
- _... 他 46 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規の `MongoDBReplicaSetResource` と関連する `AddMongoDBReplicaSet`/builder 拡張、接続プロパティ・lifecycle の抽象が追加されました。既存の単一 MongoDB リソース API は維持されています。

**既存利用者への影響**

既存の MongoDB 利用者は移行不要です。replica set を導入する場合のみ新しい builder API と接続文字列の生成結果を確認してください。

### [#19914](https://github.com/microsoft/aspire/pull/19914) — Allow skipping main.bicep generation in AzurePublishingContext

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +120 / -0
- マージ日時 (UTC): `2026-09-04 19:21:50`

**変更概要**

`AzurePublishingContext` で `main.bicep` の書き込みを抑止できるオプションを追加しました。  
テナント単位のモジュール構成など、既存の Bicep を使う発行フローで重複ファイルの生成を避けられます。  
プロパティ名はレビュー中に整理され、最終的に `ExcludeMainBicepFile` として文書化されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure/AzurePublishingContext.cs` | 29 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureEnvironmentResourceTests.cs` | 91 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `966da11` Allow skipping main.bicep generation in AzurePublishingContext
- `b7c065d` Rename SkipMainBicepGeneration to SkipWritingMainBicepFile
- `9bc6e50` Rename SkipWritingMainBicepFile to ExcludeMainBicepFile
- `008ee4f` Use the motivating tenant-scoped module shape in the ExcludeMainBicep…
- `fe147fd` Refactor remarks for clarity in AzurePublishingContext

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AzurePublishingContext` に `ExcludeMainBicepFile` 相当の公開設定が追加され、生成処理を条件付きで省略できるようになりました。既存の既定動作は維持されます。

**既存利用者への影響**

既存の発行コードは変更不要です。独自 Bicep を管理している場合のみ、新しい除外オプションを使って生成物の重複を避けてください。

### [#19197](https://github.com/microsoft/aspire/pull/19197) — Fix Foundry Local lifecycle and remote endpoints

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +1188 / -117
- マージ日時 (UTC): `2026-09-04 19:18:09`

**変更概要**

Foundry Local の起動・停止ライフサイクル、daemon のクリーンアップ、ローカルモデルの health check、リモート endpoint を修正しました。  
旧 health endpoint との互換性やキャッシュ済みモデルの起動ストリームもテストしています。  
Foundry Local を AppHost から利用する場合の接続安定性と多言語サンプルの検証が改善されます。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Foundry/FoundryDeploymentResource.cs` | 9 | 5 |
| `src/Aspire.Hosting.Foundry/FoundryExtensions.cs` | 148 | 49 |
| `src/Aspire.Hosting.Foundry/FoundryLocalHealthCheck.cs` | 35 | 5 |
| `src/Aspire.Hosting.Foundry/FoundryLocalService.cs` | 427 | 45 |
| `src/Aspire.Hosting.Foundry/FoundryResource.cs` | 2 | 0 |
| `src/Aspire.Hosting.Foundry/LocalModelHealthCheck.cs` | 10 | 2 |
| `src/Aspire.Hosting.Foundry/README.md` | 51 | 1 |
| `tests/Aspire.Hosting.Azure.Tests/FoundryDeploymentConnectionPropertiesTests.cs` | 2 | 1 |
| `tests/Aspire.Hosting.Azure.Tests/FoundryExtensionsTests.cs` | 488 | 3 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Foundry/Go/apphost.go` | 5 | 2 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Foundry/Java/AppHost.java` | 2 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Foundry/Python/apphost.py` | 3 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Foundry/TypeScript/apphost.mts` | 6 | 2 |

</details>

<details><summary>コミット (14 件)</summary>

- `d0cf299` Fix Foundry Local lifecycle and remote endpoints
- `a7d0f62` Harden Foundry daemon cleanup failures
- `a12d63d` Address Foundry Local review feedback
- `538d215` Support legacy Foundry Local health endpoint
- `13c86de` Merge remote-tracking branch 'origin/main' into sebros/fix-foundry-local
- `b9d57e2` Test daemonized Foundry startup streams
- `98cb8d3` Test Foundry cached model command flow
- `c80071c` Fix Foundry Go polyglot validation
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Foundry resource の lifecycle と health check 実装、リモート接続プロパティ、daemon 終了処理が更新されました。既存の Foundry resource API を保ちながら、起動状態の判定と endpoint 解決を強化しています。

**既存利用者への影響**

Foundry Local 利用者は、更新後にモデル起動・停止とリモート endpoint の接続を確認してください。通常のリソース定義は大きな書き換えを必要としません。

### [#19243](https://github.com/microsoft/aspire/pull/19243) — Fix Helm cleanup ordering for AKS destroy

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-deployment`
- 変更行数: +1549 / -98
- マージ日時 (UTC): `2026-09-04 17:52:02`

**変更概要**

AKS の destroy 時に Helm リソースを削除する順序を修正し、永続化された Azure/AKS ターゲット情報から安全にクリーンアップするようにしました。  
AKS state が不足する場合の直接 Azure cleanup と資格情報取得の失敗処理も強化されています。  
Helm chart を含む Aspire の AKS デプロイ・破棄フローに影響します。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentResource.AksPipeline.cs` | 221 | 16 |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentResource.cs` | 135 | 1 |
| `src/Aspire.Hosting.Kubernetes/CertManagerExtensions.cs` | 10 | 1 |
| `src/Aspire.Hosting.Kubernetes/Deployment/HelmDeploymentEngine.cs` | 46 | 9 |
| `src/Aspire.Hosting.Kubernetes/KubernetesEnvironmentResource.cs` | 4 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesHelmChartExtensions.cs` | 22 | 7 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksWithHelmChartDeploymentTests.cs` | 14 | 12 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/Aspire.Hosting.Azure.Kubernetes.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/AzureKubernetesInfrastructureTests.cs` | 961 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Aspire.Hosting.Kubernetes.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/HelmVersionValidatorTests.cs` | 2 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/KubernetesDeployTests.cs` | 116 | 50 |
| `tests/Shared/FakeHelmRunner.cs` | 16 | 2 |

</details>

<details><summary>コミット (13 件)</summary>

- `5b9b1eb` Fix AKS Helm destroy ordering
- `cbddfdd` Use persisted Azure target for AKS destroy
- `3bb5670` Read persisted AKS name during destroy
- `86048f7` Merge origin/main into sebros/fix-aks-helm-destroy
- `68950b8` Merge latest origin/main into sebros/fix-aks-helm-destroy
- `8f6fbe4` Harden AKS destroy credential acquisition
- `b03266d` Merge remote-tracking branch 'origin/main' into sebros/fix-aks-helm-d…
- `fde40dc` Allow direct Azure cleanup without AKS state
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Helm deployment engine と AKS pipeline の destroy 処理が、保存済みターゲット・AKS 名・認証情報を使う順序に変更されました。API の利用形態よりも、破棄時の内部ライフサイクルとエラー処理の修正が中心です。

**既存利用者への影響**

通常の AKS 利用者は移行不要ですが、破棄処理を自動化している場合は新バージョンで Helm cleanup が完了することを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19478 | Don't count AppHost builds against CLI startup timeout | ellahathaway | <https://github.com/microsoft/aspire/pull/19478> |
| #19929 | Update milestone changelog for 13.6 | Copilot | <https://github.com/microsoft/aspire/pull/19929> |
| #19905 | Improve resource graph action discoverability | IEvangelist | <https://github.com/microsoft/aspire/pull/19905> |
| #19910 | Fix Copilot setup workflow validation | Copilot | <https://github.com/microsoft/aspire/pull/19910> |
| #19877 | Fix unpackaged WinUI debugging in VS Code | ellahathaway | <https://github.com/microsoft/aspire/pull/19877> |
| #19918 | Measure PR age from ready-for-review time | DamianEdwards | <https://github.com/microsoft/aspire/pull/19918> |
| #19870 | Fix Python callback handle wrapping | sebastienros | <https://github.com/microsoft/aspire/pull/19870> |
| #19673 | Avoid live CLI rendering when stdout is redirected | adamint | <https://github.com/microsoft/aspire/pull/19673> |
| #19868 | Clarify VS Code CLI debug log location | ellahathaway | <https://github.com/microsoft/aspire/pull/19868> |
| #19024 | Add Azure Connector Namespace integration | spboyer | <https://github.com/microsoft/aspire/pull/19024> |
| #19854 | Keep Aspire CLI notification claim timestamps consistent | ellahathaway | <https://github.com/microsoft/aspire/pull/19854> |
| #19465 | Fix docs safe-output base fallback | IEvangelist | <https://github.com/microsoft/aspire/pull/19465> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19973 | Resolve IPV4Host from the allocated address when TargetHost is customized | open | krishnendu-2003 | <https://github.com/microsoft/aspire/pull/19973> |
| PR | #19938 | [Automated] Update API Surface Area | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19938> |
| PR | #19936 | [Automated] Update ATS API Surface Area | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19936> |
| PR | #19904 | Re-enable version-aware auto-restore for guest AppHosts | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19904> |
| PR | #19971 | Register time API client for BlazorHosted prerendering | open | madiseh | <https://github.com/microsoft/aspire/pull/19971> |
| PR | #19969 | Add "Manage" links from Redis to Redis Commander/Insight | open | afscrome | <https://github.com/microsoft/aspire/pull/19969> |
| PR | #19887 | [Spike] AppHost-owned terminal as an interaction service input | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19887> |
| PR | #19968 | Fix explicit dashboard run options not overriding inherited environment values | open | MuhammadBilal64 | <https://github.com/microsoft/aspire/pull/19968> |
| PR | #19961 | Add a simple single-member MongoDB replica set path | open | sebastienros | <https://github.com/microsoft/aspire/pull/19961> |
| PR | #19967 | fix(dashboard): hide UTC timestamps option when Show timestamps is off | open | GISWLH | <https://github.com/microsoft/aspire/pull/19967> |
| PR | #19886 | Enable data-plane references for Azure Sandbox Groups | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19886> |
| PR | #19966 | Reject numeric persistence mode values in dashboard configuration | open | MuhammadBilal64 | <https://github.com/microsoft/aspire/pull/19966> |
| PR | #19965 | Fix deprecated Homebrew cask DSL usage | open | askpt | <https://github.com/microsoft/aspire/pull/19965> |
| PR | #19946 | Disable npm audit for TypeScript AppHost installs | open | sebastienros | <https://github.com/microsoft/aspire/pull/19946> |
| PR | #19900 | Added WithConfiguration extension method for configuring PVCs | open | cdbrown2018 | <https://github.com/microsoft/aspire/pull/19900> |
| PR | #19947 | Stabilize WinUI extension E2E startup | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19947> |
| PR | #19958 | Honor selected launch profile in bundled dotnet run | open | gabisonia | <https://github.com/microsoft/aspire/pull/19958> |
| PR | #19939 | Skip CI entirely for API/ATS baseline-only PRs | open | Copilot | <https://github.com/microsoft/aspire/pull/19939> |
| PR | #19926 | test(ci): enforce selective test trigger dependencies | open | radical | <https://github.com/microsoft/aspire/pull/19926> |
| PR | #19942 | Add repository-local `code-review-test-trigger-map` Copilot review skill | open | Copilot | <https://github.com/microsoft/aspire/pull/19942> |
| PR | #19943 | Investigate flaky TestEndpointsReturnOk coverage | open | Copilot | <https://github.com/microsoft/aspire/pull/19943> |
| PR | #19893 | Update agent setup in aspire new | open | Copilot | <https://github.com/microsoft/aspire/pull/19893> |
| PR | #19932 | Fix dashboard app names with dash suffix | open | Copilot | <https://github.com/microsoft/aspire/pull/19932> |
| PR | #19931 | Hide UTC timestamps option when timestamps are disabled | open | shubhransh-gupta | <https://github.com/microsoft/aspire/pull/19931> |
| PR | #19930 | Improve XML comments for CustomResourceSnapshot.HealthReports property | open | pasisavolainen | <https://github.com/microsoft/aspire/pull/19930> |
| PR | #19928 | [Investigation] CI infrastructure failures — npm public-registry slowdown | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19928> |
| PR | #19919 | Preserve pnpm workspace settings for TypeScript AppHosts | open | sebastienros | <https://github.com/microsoft/aspire/pull/19919> |
| PR | #19915 | Share generated integration closure infrastructure | open | danegsta | <https://github.com/microsoft/aspire/pull/19915> |
| PR | #19912 | Document Copilot agent firewall probe blocker | open | Copilot | <https://github.com/microsoft/aspire/pull/19912> |
| PR | #19911 | Add minimal Copilot code review setup | open | Copilot | <https://github.com/microsoft/aspire/pull/19911> |
| PR | #19899 | Fix file arguments for resource commands | open | Copilot | <https://github.com/microsoft/aspire/pull/19899> |
| PR | #19895 | Fix VS Code resource command file inputs | open | Copilot | <https://github.com/microsoft/aspire/pull/19895> |
| PR | #19894 | Fix duplicate password reveal icon | open | Copilot | <https://github.com/microsoft/aspire/pull/19894> |
| PR | #19549 | Add global Azure Front Door support for regional app stamps | closed | karolz-ms | <https://github.com/microsoft/aspire/pull/19549> |
| PR | #19512 | Add Azure Front Door global entry point over regional stamps | closed | karolz-ms | <https://github.com/microsoft/aspire/pull/19512> |
| PR | #19963 | Fix Escape handling for resource graph action menu | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19963> |
| PR | #16698 | MongoDB Replicaset support | closed | artiomchi | <https://github.com/microsoft/aspire/pull/16698> |
| PR | #19811 | Improve terminal sizing controls and defaults | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19811> |
| PR | #19490 | Render Kitty graphics in the dashboard web terminal | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19490> |
| PR | #18377 | Add feedback issue flow | closed | DamianEdwards | <https://github.com/microsoft/aspire/pull/18377> |
| PR | #19086 | Update Project Resource v2 plan for file app builds | closed | DamianEdwards | <https://github.com/microsoft/aspire/pull/19086> |
| PR | #19952 | [experiment] Adjust API baseline CI filtering | closed | radical | <https://github.com/microsoft/aspire/pull/19952> |
| PR | #19950 | [experiment] Route infrastructure script changes | closed | radical | <https://github.com/microsoft/aspire/pull/19950> |
| PR | #19949 | [experiment] Simplify exported-surface test routing | closed | radical | <https://github.com/microsoft/aspire/pull/19949> |
| PR | #19948 | [experiment] Add targeted validation workflow | closed | radical | <https://github.com/microsoft/aspire/pull/19948> |
| PR | #19951 | [experiment] Extend Redis integration coverage | closed | radical | <https://github.com/microsoft/aspire/pull/19951> |
| PR | #19957 | [experiment] Simplify exported-surface test routing | closed | radical | <https://github.com/microsoft/aspire/pull/19957> |
| PR | #19956 | [experiment] Adjust API baseline CI filtering | closed | radical | <https://github.com/microsoft/aspire/pull/19956> |
| PR | #19955 | [experiment] Add targeted validation workflow | closed | radical | <https://github.com/microsoft/aspire/pull/19955> |
| PR | #19954 | [experiment] Extend Redis integration coverage | closed | radical | <https://github.com/microsoft/aspire/pull/19954> |
| PR | #19953 | [experiment] Route infrastructure script changes | closed | radical | <https://github.com/microsoft/aspire/pull/19953> |
| PR | #17846 | [Automated] Update API Surface Area | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17846> |
| PR | #19605 | [Automated] Update ATS API Surface Area | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19605> |
| Issue | #19972 | `AddSqlServer` connection string ignores `TargetHost`: `EndpointProperty.IPV4Host` is hard-coded to `127.0.0.1` in the localhost network context | open | kevintsengtw | <https://github.com/microsoft/aspire/issues/19972> |
| Issue | #19970 | Support terminal interaction inputs in polyglot AppHosts | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19970> |
| Issue | #19941 | [CI Failure] Flaky: NewUpAndBuildStandaloneTemplateTests.CanNewAndBuild(aspire-ts-cs-starter, Net11) fails building generated project on Windows with preview .NET 11 SDK | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19941> |
| Issue | #19923 | [CI Failure] TypeScript SDK Validation fails on both Node 22.x and 24.x for PRs not touching polyglot SDK code | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19923> |
| Issue | #19960 | Expose an `Id` Bicep output reference for Azure Front Door | open | eerhardt | <https://github.com/microsoft/aspire/issues/19960> |
| Issue | #19903 | Re-enable version-aware auto-restore for non-.NET AppHosts | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19903> |
| Issue | #19964 | Ok | open | elazzouz-dotcom | <https://github.com/microsoft/aspire/issues/19964> |
| Issue | #19933 | Add non-interactive `aspire terminal` automation commands (capture / run / send / wait) | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19933> |
| Issue | #19962 | [aw] Milestone Changelog Generator is missing required tool | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19962> |
| Issue | #19959 | Default App Service end-to-end encryption to enabled | open | eerhardt | <https://github.com/microsoft/aspire/issues/19959> |
| Issue | #19944 | Improve Project Resource V2 coordinated build performance | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19944> |
| Issue | #19909 | Speed up Copilot cloud-agent startup and code review in Aspire | open | radical | <https://github.com/microsoft/aspire/issues/19909> |
| Issue | #19913 | Allow skipping main.bicep generation in AzurePublishingContext | closed | eerhardt | <https://github.com/microsoft/aspire/issues/19913> |
| Issue | #19927 | [Failing test]: TypeScript deployment tests time out when npm audit endpoint stalls | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19927> |
| Issue | #19945 | Agent init cannot refresh a locked telemetry hook and reports an unclear access error | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19945> |
| Issue | #19908 | Identify firewall rules for on-demand Copilot builds and tests | closed | radical | <https://github.com/microsoft/aspire/issues/19908> |
| Issue | #19901 | aspire agent init reports success without indicating selected skills are already installed | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19901> |
| Issue | #19937 | Provide a supported way to skip Aspire CLI bundle resolution for build-only scenarios (CI) | open | aradalvand | <https://github.com/microsoft/aspire/issues/19937> |
| Issue | #19935 | [CI Failure] Flaky: VS Code extension E2E (Windows, winui-debug) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19935> |
| Issue | #19934 | [13.6] Changelog feedback | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19934> |
| Issue | #19892 | Dashboard graph: resource nodes lack an interaction affordance and the context menu doesn't indicate which resource it's for | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19892> |
| Issue | #19921 | [CI Failure] Flaky: VS Code extension E2E (Linux/Windows, launch-profiles) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19921> |
| Issue | #19888 | Add Aspire-owned terminal service and dashboard terminal experience | open | Copilot | <https://github.com/microsoft/aspire/issues/19888> |
| Issue | #19906 | Fix and validate the Copilot setup workflow | closed | radical | <https://github.com/microsoft/aspire/issues/19906> |
| Issue | #19925 | Infer nullable non-handle ATS method returns in generated SDKs | open | danegsta | <https://github.com/microsoft/aspire/issues/19925> |
| Issue | #19924 | [CI Failure] Flaky: SealedSecretApplyStepTests.WaitForSealedSecretSynced_StatusMatchesButSecretAbsent_KeepsWaitingThenTimesOut fails assertion on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19924> |
| Issue | #19922 | [14.0] Redesign PublishAsDockerFile argument handling | open | danegsta | <https://github.com/microsoft/aspire/issues/19922> |
| Issue | #19920 | [CI Failure] Polyglot SDK Validation: TypeScript SDK Validation (Node 22.x) job fails with exit code 1, unrelated to PR-changed files; job logs unavailable for detailed diagnosis | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19920> |
| Issue | #19917 | [CI Failure] Flaky: Node/Deno app functional tests fail with 1-minute InitializeAsync timeout on windows-latest | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19917> |
| Issue | #19898 | [Windows/Podman] Container tunnel image build fails with permission denied when Visual Studio runs as administrator | open | edumserrano | <https://github.com/microsoft/aspire/issues/19898> |
| Issue | #19907 | Give Copilot code review a minimal dedicated setup | open | radical | <https://github.com/microsoft/aspire/issues/19907> |
| Issue | #19902 | TypeScript AppHost does not diagnose invalid resource passed to withEnvironment | open | Copilot | <https://github.com/microsoft/aspire/issues/19902> |
| Issue | #19897 | fail to create dcp | closed | edumserrano | <https://github.com/microsoft/aspire/issues/19897> |
| Issue | #19896 | Project resource waits on itself when referencing its own container-to-host endpoint | open | Niksson | <https://github.com/microsoft/aspire/issues/19896> |
| Issue | #19891 | [ Browser Logs] Enable playwright CLI connection to aspire managed browser instance | open | tjwald | <https://github.com/microsoft/aspire/issues/19891> |
| Issue | #19890 | aspire deploy hangs indefinitely (0% CPU, no error) after all Azure resources are successfully provisioned | open | andrekiba | <https://github.com/microsoft/aspire/issues/19890> |
| Issue | #19889 | [AspireE2E] Aspire Dashboard URL is not displayed after `azd up` | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/19889> |
| Issue | #6659 | "Address in use" error gets double logged | closed | afscrome | <https://github.com/microsoft/aspire/issues/6659> |
| Issue | #7660 | Supress `The request was aborted` errors from AppHost logs | closed | afscrome | <https://github.com/microsoft/aspire/issues/7660> |
| Issue | #19144 | [CI Failure] Windows test host process crashes with exit code 0xC0000142 after tests complete | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19144> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #5238 | MongoDB  Transactions  requires replicas | closed | feritzcan2 | <https://github.com/microsoft/aspire/issues/5238> |
| Issue | #12750 | AzureAIFoundry RunAsFoundryLocal() stuck in 'Downloading' state even when model is already cached | closed | Voice3 | <https://github.com/microsoft/aspire/issues/12750> |
| Issue | #10937 | AI Foundry Local and .NET Aspire in WSL2 / Linux | closed | MedAnd | <https://github.com/microsoft/aspire/issues/10937> |
| Issue | #19206 | aspire destroy fails to uninstall Helm release for AKS deployments | closed | sebastienros | <https://github.com/microsoft/aspire/issues/19206> |
| Issue | #19788 | [automated] Streamline selective CI test job fan-out | closed | radical | <https://github.com/microsoft/aspire/issues/19788> |
| Issue | #19255 | Long AppHost restores and builds should not consume ASPIRE_CLI_START_TIMEOUT | closed | davidfowl | <https://github.com/microsoft/aspire/issues/19255> |
| Issue | #19617 | Hide azure-environment when all Azure resources use emulators | closed | davidfowl | <https://github.com/microsoft/aspire/issues/19617> |
| Issue | #17354 | `Hosting failed to start` inside VS Code dev container with quickstart | closed | erwinkramer | <https://github.com/microsoft/aspire/issues/17354> |
| Issue | #19091 | WinUI3 (unpackaged) resource crashes with `0xC000027B` in `Microsoft.UI.Xaml.dll` when debugged concurrently with the AppHost via the VS Code Aspire extension | closed | Arche-Based-tk | <https://github.com/microsoft/aspire/issues/19091> |
| Issue | #19869 | Python callbacks receive raw Handle for IResourceBuilder arguments | closed | sebastienros | <https://github.com/microsoft/aspire/issues/19869> |
| Issue | #19290 | CLI crashes in Spectre.Console.LiveRenderable over Remote SSH without a TTY | closed | ivnmood | <https://github.com/microsoft/aspire/issues/19290> |
| Issue | #15320 | Polyglot-Compatible Integration Discovery | closed | sebastienros | <https://github.com/microsoft/aspire/issues/15320> |
| Issue | #19739 | VS Code settings should state where `Enable Aspire Cli Debug Logging` logs to | closed | afscrome | <https://github.com/microsoft/aspire/issues/19739> |
| Issue | #12400 | Api Endpoint for consuming Otel  data | closed | tjwald | <https://github.com/microsoft/aspire/issues/12400> |
