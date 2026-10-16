# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 74 |
| オープン中の新規 PR     | 49 |
| クローズ (未マージ) PR  | 44 |
| 新規 Issue              | 96 |
| クローズ Issue          | 45 |
| 主要コントリビューター  | JamesNK, mitchdenny, radical, eerhardt, danegsta, joperezr |

## ⚠ 重要な変更（要確認）

### マージ済みの移行・防御強化

- **⚠ 破壊的変更** [microsoft/aspire#20704](https://github.com/microsoft/aspire/pull/20704): 古い SQL Server image で tools17 しかない AppHost は `SqlServerReplCommand.Version17` を明示してください。既定の自動 path discovery は終了します。
- **⚠ 破壊的変更** [microsoft/aspire#20637](https://github.com/microsoft/aspire/pull/20637): DisplayOrder の field→property 変更により再ビルドと reflection lookup の変更が必要です。
- **⚠ 破壊的変更** [microsoft/aspire#20608](https://github.com/microsoft/aspire/pull/20608): RabbitMQ v6／MongoDB v2 の旧統合 package を現行版へ置換し、driver の major migration を行ってください。
- **⚠ 破壊的変更** [microsoft/aspire#20481](https://github.com/microsoft/aspire/pull/20481): experimental polyglot feature key をコロン付き旧名から `experimentalPolyglotJava`／Go／Python／Rust へ改名してください。
- **⚠ セキュリティ** [microsoft/aspire#20703](https://github.com/microsoft/aspire/pull/20703): template・playground・extension・fixture の Critical／High 依存を更新。生成済みアプリは自動更新されないため各 manifest／lockfile を点検してください。
- **⚠ セキュリティ** [microsoft/aspire#20586](https://github.com/microsoft/aspire/pull/20586): Python playground の PyJWT 2.14.0 と oauthlib 4.0.0 を取り込みました。手動補足した修正で、OAuth grant validation の順序変更等も確認してください。
- **⚠ セキュリティ** [microsoft/aspire#20627](https://github.com/microsoft/aspire/pull/20627): privileged workflow の入力を shell source に埋め込む経路を除去。workflow を複製した管理者も env 経由と入力検証に更新してください。
- **⚠ セキュリティ** [microsoft/aspire#20659](https://github.com/microsoft/aspire/pull/20659)／[microsoft/aspire#20661](https://github.com/microsoft/aspire/pull/20661): App token と自動 token の権限を最小化。draft release 検出は権限のある App token を維持してください。
- **⚠ セキュリティ** [microsoft/aspire#20603](https://github.com/microsoft/aspire/pull/20603): テスト依存 Testcontainers 4.15.0／SSH.NET 2026.0.0 へ更新。production RabbitMQ package の脆弱性と混同しないでください。
- **防御検出基盤** [microsoft/aspire#15987](https://github.com/microsoft/aspire/pull/15987): Zizmor は report-only で、baseline 全修正や merge block の導入ではありません。管理者は findings を別途 triage してください。

### 未マージ・未解決の継続確認

- **最低 .NET 版** [microsoft/aspire#20614](https://github.com/microsoft/aspire/pull/20614): .NET 10 への最低版引上げは未マージです。利用者は採用時の target／SDK 条件を確認してください。
- **API・構成の変更候補** [microsoft/aspire#20730](https://github.com/microsoft/aspire/pull/20730)（dashboard telemetry）、[microsoft/aspire#20287](https://github.com/microsoft/aspire/pull/20287)（native plugin）、[microsoft/aspire#20135](https://github.com/microsoft/aspire/pull/20135)（環境別 secrets）、[microsoft/aspire#19319](https://github.com/microsoft/aspire/pull/19319)（Kafka instrumentation）は未マージです。該当構成を使う利用者は確定 diff と公開版を追跡してください。
- **API 互換性** [microsoft/aspire#20521](https://github.com/microsoft/aspire/issues/20521)（IInteractionService）、[microsoft/aspire#20034](https://github.com/microsoft/aspire/issues/20034)（image reference）、[microsoft/aspire#19922](https://github.com/microsoft/aspire/issues/19922)（PublishAsDockerFile）はオープンです。利用者は報告・設計提案と実装済み変更を区別してください。
- **非推奨提案** [microsoft/aspire#20594](https://github.com/microsoft/aspire/issues/20594)（Aspire.AppHost.Sdk）、[microsoft/aspire#10638](https://github.com/microsoft/aspire/issues/10638)（AddProject→AddDotnetApp）は未解決です。確定移行先・期日を確認してから変更してください。
- **Homebrew** [microsoft/aspire#20257](https://github.com/microsoft/aspire/issues/20257): `verified` parameter の非推奨警告は formula 利用者・保守者が対応状況を確認してください。
- **依存更新** [microsoft/aspire#20716](https://github.com/microsoft/aspire/pull/20716) は未マージ、[microsoft/aspire#20474](https://github.com/microsoft/aspire/pull/20474) は未マージで終了です。これらの PR を修正導入済みの根拠にしないでください。

### 分類・期間の補正

Azure Sandbox の microsoft/aspire#19810 は **2026年9月5日マージ**、NuGet layout の microsoft/aspire#19846 は **9月1日マージ**で、今回の期間には更新があったものの新規マージではありません。既存利用者は Sandbox の環境推定／WithComputeEnvironment、削除済み `nuget layout` から probe manifest への移行を継続確認してください。
ASPIREATS001 のテスト内 suppression 削除は利用者向け API 廃止ではありません。telemetry 最適化、ADC の過剰 redaction、Key Vault health option、CodeQL の構成影響、ATS projection、クローズされた `--info`／ship-build guard 提案は、公開脆弱性修正・GA 開始・確定廃止として扱いません。

## このリポジトリの要点

- CI の command injection 対策、token 最小権限化、Zizmor の検出基盤がマージされ、依存 Critical／High と SSH.NET テスト依存も更新されました。既存生成アプリと workflow copy は別途反映が必要です。
- 旧 RabbitMQ／MongoDB 統合削除、DisplayOrder の binary compatibility、SQL REPL の旧 image path、polyglot key 改名は具体的な移行対象です。
- .NET 10 最低版・AppHost SDK 非推奨等は未マージ／未解決の提案です。今回のマージと将来設計、期間外マージ後の更新を区別します。
- 依存更新の Python playground には oauthlib major 変更と PyJWT 修正もあり、単なる lockfile refresh として見落とさないよう手動補足しました。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20704](https://github.com/microsoft/aspire/pull/20704) — Fix SQL Server REPL launch on Windows

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +332 / -43
- マージ日時 (UTC): `2026-10-03 08:13:21`

**変更概要**

Windows checkout の CRLF が埋込み shell script を壊し、dashboard REPL が起動しない問題を解決します。
既定 image の `/opt/mssql-tools18/bin/sqlcmd` を shell なしで直接起動します。
古い image／独自 image 向けに executable override と options callback を追加します。
C# の引数なし overload と TypeScript の `withRepl()` は維持します。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.SqlServer/README.md` | 108 | 1 |
| `src/Aspire.Hosting.SqlServer/SqlServerBuilderExtensions.cs` | 47 | 20 |
| `src/Aspire.Hosting.SqlServer/SqlServerContainerImageTags.cs` | 5 | 0 |
| `src/Aspire.Hosting.SqlServer/SqlServerReplCommand.cs` | 26 | 0 |
| `src/Aspire.Hosting.SqlServer/SqlServerReplOptions.cs` | 33 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/TypeScriptCodegenValidationTests.cs` | 26 | 0 |
| `tests/Aspire.Hosting.SqlServer.Tests/SqlServerReplCommandTests.cs` | 87 | 22 |

</details>

<details><summary>コミット (5 件)</summary>

- `028091f` Fix SQL Server REPL launch on Windows
- `475b262` Keep SQL REPL options compatible with linked-source consumers
- `135f3a4` Merge origin/main into mitchdenny-sql-repl-diagnostics
- `a3c214e` Add TypeScript SQL Server REPL regression coverage
- `80d9433` Fix path formatting in README for Dockerfile

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 古い tools17 path の自動発見を廃止します。`Action<SqlServerReplOptions>` と `SqlServerReplCommand.Version17`／`Version18`、独自 executable path を追加しました。
`028091f` が直接起動、`475b262` が linked-source compatibility、`a3c214e` が TypeScript codegen coverage を追加。パス指定はツールのインストールを行いません。

**既存利用者への影響**

tools17 のみの image では `WithRepl(options => options.Command = SqlServerReplCommand.Version17)` を指定してください。既定 image の引数なし利用は維持します。
REPL は引き続き `sa` で認証する opt-in／run-only 機能で、信頼された dashboard 利用者だけに公開します。

### [#20637](https://github.com/microsoft/aspire/pull/20637) — Make ResourceUrlAnnotation.DisplayOrder a non-obsolete property

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-app-model` `breaking-change`
- 変更行数: +39 / -40
- マージ日時 (UTC): `2026-10-01 18:28:04`

**変更概要**

obsolete field だった URL の DisplayOrder を nullable read/write property にします。
obsolete 警告なしで URL の表示順を設定でき、高い値を上に並べる意味は維持します。
endpoint に関連付けて annotation をコピーする際の値を保持します。
TypeScript と Go の DTO snapshot に property を反映しました。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.CosmosDB/AzureCosmosDBExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Azure.Functions/DurableTask/DurableTaskResourceExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Kafka/KafkaBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Milvus/MilvusBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.MongoDB/MongoDBBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.MySql/MySqlBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.PostgreSQL/PostgresBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Qdrant/QdrantBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.RabbitMQ/RabbitMQBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting.Redis/RedisBuilderExtensions.cs` | 0 | 2 |
| `src/Aspire.Hosting/ApplicationModel/ResourceUrlAnnotation.cs` | 2 | 8 |
| `src/Aspire.Hosting/Dashboard/DashboardEventHandlers.cs` | 0 | 2 |
| `src/Aspire.Hosting/Dcp/ResourceSnapshotBuilder.cs` | 0 | 6 |
| `src/Aspire.Hosting/Orchestrator/ApplicationOrchestrator.cs` | 0 | 2 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 2 | 0 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `5ca56e0` Make ResourceUrlAnnotation.DisplayOrder a non-obsolete property
- `594346d` Update polyglot snapshots for DisplayOrder

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** public field→property は binary compatibility を壊します。通常の C# 代入構文は同じですが reflection は property を検索する必要があります。
`5ca56e0` が変更、`594346d` が snapshot 更新。TypeScript は `displayOrder?: number | null`、Go は `DisplayOrder *float64` を公開します。

**既存利用者への影響**

旧 field に対してコンパイル済みの consumer を再ビルドし、reflection code を更新してください。null／負値／zero／正値の表示順も確認します。

### [#20608](https://github.com/microsoft/aspire/pull/20608) — Remove Aspire.RabbitMQ.Client.v6 and Aspire.MongoDB.Driver.v2

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +14 / -825
- マージ日時 (UTC): `2026-09-30 18:14:46`

**変更概要**

旧 client major に対応する並行統合 package の保守・生成を終了します。
RabbitMQ v6 と MongoDB v2 の project・schema・API baseline・専用テストを除去します。
現行統合の条件付き旧コードも削除します。
現行 package の登録動作と AppHost 統合は維持します。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 0 | 4 |
| `Directory.Packages.props` | 0 | 1 |
| `playground/AspireWithMaui/AspireWithMaui.slnx` | 0 | 4 |
| `src/Components/Aspire.MongoDB.Driver.v2/Aspire.MongoDB.Driver.v2.csproj` | 0 | 46 |
| `src/Components/Aspire.MongoDB.Driver.v2/ConfigurationSchema.json` | 0 | 63 |
| `src/Components/Aspire.MongoDB.Driver.v2/api/Aspire.MongoDB.Driver.cs` | 0 | 31 |
| `src/Components/Aspire.MongoDB.Driver/AspireMongoDBDriverExtensions.cs` | 0 | 4 |
| `src/Components/Aspire.RabbitMQ.Client.v6/Aspire.RabbitMQ.Client.v6.csproj` | 0 | 44 |
| `src/Components/Aspire.RabbitMQ.Client.v6/ConfigurationSchema.json` | 0 | 363 |
| `src/Components/Aspire.RabbitMQ.Client.v6/api/Aspire.RabbitMQ.Client.cs` | 0 | 33 |
| `src/Components/Aspire.RabbitMQ.Client/AspireRabbitMQExtensions.cs` | 0 | 28 |
| `src/Components/README.md` | 10 | 8 |
| `tests/Aspire.MongoDB.Driver.v2.Tests/Aspire.MongoDB.Driver.v2.Tests.csproj` | 0 | 26 |
| `tests/Aspire.MongoDB.Driver.v2.Tests/SnappyCompressionTests.cs` | 0 | 102 |
| `tests/Aspire.RabbitMQ.Client.Tests/AspireRabbitMQLoggingTests.cs` | 1 | 20 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `8118024` Remove legacy RabbitMQ v6 and MongoDB v2 client integrations
- `e72d371` Apply suggestion from @eerhardt
- `b70f90f` Clarify historical RabbitMQ integration versioning example
- `11ab700` Describe RabbitMQ versioning history in the past tense

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 将来の build は `Aspire.RabbitMQ.Client.v6`／`Aspire.MongoDB.Driver.v2` を生成しません。現行 `Aspire.RabbitMQ.Client` は RabbitMQ.Client 7.x、`Aspire.MongoDB.Driver` は MongoDB.Driver 3.x が移行先です。
`8118024` が旧 project と条件分岐を除去。`b70f90f`／`11ab700` は文書を歴史的な版構成例として整理しました。過去公開済み NuGet package を削除する変更ではありません。

**既存利用者への影響**

package reference を現行版へ置換し、直接 driver を使うコードは major migration を行ってください。`AddRabbitMQClient`／`AddMongoDBClient` の登録呼出しと AppHost は維持されます。

### [#20481](https://github.com/microsoft/aspire/pull/20481) — Unify experimental polyglot AppHost feature keys

- 作者: sebastienros / 状態: MERGED
- ラベル: `breaking-change` `area-cli`
- 変更行数: +272 / -208
- マージ日時 (UTC): `2026-09-28 13:21:19`

**変更概要**

project-local config set が旧 key のコロンを階層区切りと解釈する問題を解決します。
Java／Go／Python／Rust の feature name を flat な統一形式に改名します。
fixture・validation script・仕様・VS Code schema を更新しました。
構成サービスに特例パーサーを追加する方式ではありません。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/polyglot-validation/Dockerfile.golang` | 1 | 1 |
| `.github/workflows/polyglot-validation/Dockerfile.java` | 1 | 1 |
| `.github/workflows/polyglot-validation/Dockerfile.python` | 1 | 1 |
| `.github/workflows/polyglot-validation/Dockerfile.rust` | 1 | 1 |
| `.github/workflows/polyglot-validation/test-go.sh` | 0 | 11 |
| `docs/specs/polyglot-apphost.md` | 26 | 0 |
| `extension/schemas/aspire-config.schema.json` | 4 | 4 |
| `extension/schemas/aspire-global-settings.schema.json` | 4 | 4 |
| `extension/schemas/aspire-settings.schema.json` | 4 | 4 |
| `extension/scripts/run-e2e.js` | 1 | 1 |
| `playground/GoAppHost/apphost.go` | 1 | 1 |
| `playground/JavaAppHost/aspire.config.json` | 1 | 1 |
| `playground/JavaSpringBoot/JavaSpringBoot.AppHost.Java/aspire.config.json` | 1 | 1 |
| `playground/rust/aspire.config.json` | 1 | 1 |
| `src/Aspire.Cli/KnownFeatures.cs` | 4 | 4 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `779fe03` Fix local configuration for colon-named feature flags
- `14d3875` Unify experimental polyglot AppHost feature keys
- `dc55103` Preserve colon-named polyglot flags with features-aware parsing
- `830d6fb` Revert "Preserve colon-named polyglot flags with features-aware parsing"
- `f9dd722` Merge origin/main into sebros/fix-local-feature-settings
- `930e014` Fix Java E2E feature flag after polyglot key rename
- `638e090` Use global Go feature flag in polyglot validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `experimentalPolyglot:java` 等は言語を有効化しなくなります。`experimentalPolyglotJava`／`experimentalPolyglotGo`／`experimentalPolyglotPython`／`experimentalPolyglotRust` に置換します。
`14d3875` が統一、`930e014` と `638e090` が E2E と global flag を調整。features-aware parsing の途中案は `830d6fb` で revert され、最終契約は flat key です。

**既存利用者への影響**

project と global の両設定を改名してください。例えば `aspire config set features.experimentalPolyglotJava true` を使います。JSON の boolean true と文字列 `"true"` は受け入れられます。

### [#20703](https://github.com/microsoft/aspire/pull/20703) — Fix critical and high dependency vulnerabilities

- 作者: joperezr / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +609 / -516
- マージ日時 (UTC): `2026-10-03 18:37:46`

**変更概要**

Critical／High 依存 alert の対象 template・playground・extension・polyglot fixture を更新します。
Next.js、brace-expansion、grpc-js、Angular、urllib3、Jackson 等を修正版へ揃えます。
PyJWT 2.14.0 の先行修正は維持し、残る依存を解消します。
template manifest の変更も CLI security guard へルーティングします。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/github-ci/test-trigger-map.yml` | 2 | 5 |
| `extension/package.json` | 6 | 5 |
| `extension/yarn.lock` | 7 | 7 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 68 | 68 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 22 | 20 |
| `playground/AspireWithJavaScript/AspireJavaScript.NodeApp/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.NodeApp/package.json` | 2 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package.json` | 2 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package.json` | 2 | 1 |
| `playground/AspireWithNode/NodeFrontend/package-lock.json` | 7 | 7 |
| `playground/AspireWithNode/NodeFrontend/package.json` | 4 | 3 |
| `playground/AspireWithNode/NodeFrontend/pnpm-lock.yaml` | 14 | 14 |
| `playground/FoundryAgentBasic/app/uv.lock` | 3 | 3 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `7532644` Fix critical and high dependency vulnerabilities
- `be3bd22` Cover shipped project template security dependency pins
- `e21d1bf` Route project template manifest changes to CLI security guards

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`7532644` は Next.js 16.3.6、brace-expansion 5.0.12／2.1.7、grpc-js 1.14.5、Angular 21.2.24、urllib3 2.8.0 等へ更新。Jackson は BOM 2.21.7／2.22.3 で関連 module を整合させます。
`be3bd22` は shipped template の pin、`e21d1bf` は manifest と lockfile の test routing を保護。Aspire の public API の改名ではなく、依存と生成内容の更新です。

**既存利用者への影響**

既存生成済みアプリは新 template だけでは更新されません。manifest／lockfile と自分の dependency scan を確認し、必要な patch を適用してください。
リポジトリの alert 件数は利用者アプリの実際の到達可能性を示すものではありません。

### [#20661](https://github.com/microsoft/aspire/pull/20661) — fix(ci): scope automatic workflow token permissions

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems` `security 🔐`
- 変更行数: +27 / -13
- マージ日時 (UTC): `2026-10-02 15:25:04`

**変更概要**

workflow scope での write-capable GITHUB_TOKEN の継承を止めます。
labeler cache promotion と release authorization に必要な job 権限だけを付けます。
release mutation は別発行の App token を使います。
draft release lookup も App token を使い、read-only token で見えず再作成する問題を避けます。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/labeler-promote.yml` | 7 | 2 |
| `.github/workflows/release-github-tasks.yml` | 14 | 11 |
| `docs/release-process.md` | 6 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `d043e36` fix(ci): scope automatic workflow token permissions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`d043e36` が2 workflow の既定を `permissions: {}` にし、promotion job に `actions: write`、release authorization に `contents: read` を限定付与します。
release の存在確認・作成は同じ App token に統一。自動 token の設定は別発行の App token の権限を制限しません。public API 変更はありません。

**既存利用者への影響**

アプリコードの移行は不要です。workflow を再利用する管理者は draft release lookup を read-only GITHUB_TOKEN に戻さないでください。

### [#20659](https://github.com/microsoft/aspire/pull/20659) — fix(ci): restrict GitHub App tokens to required permissions

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems` `security 🔐`
- 変更行数: +68 / -0
- マージ日時 (UTC): `2026-10-02 15:28:22`

**変更概要**

13の手書き workflow の16 token 発行で、App installation の全権限を継承しないようにします。
job の操作に応じて明示的な `permission-*` input を設定します。
backport／backmerge／release の必要な workflows write は維持します。
生成 workflow はソース・compiler 側で変更するため、この PR では触りません。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/apply-test-attributes.yml` | 5 | 0 |
| `.github/workflows/backmerge-release.yml` | 5 | 0 |
| `.github/workflows/backport.yml` | 5 | 0 |
| `.github/workflows/extension-release.yml` | 4 | 0 |
| `.github/workflows/generate-api-diffs.yml` | 4 | 0 |
| `.github/workflows/generate-ats-diffs.yml` | 4 | 0 |
| `.github/workflows/refresh-manifests.yml` | 4 | 0 |
| `.github/workflows/release-github-tasks.yml` | 13 | 0 |
| `.github/workflows/update-ai-foundry-models.yml` | 4 | 0 |
| `.github/workflows/update-aspire-skills-bundle.yml` | 8 | 0 |
| `.github/workflows/update-azure-vm-sizes.yml` | 4 | 0 |
| `.github/workflows/update-dependencies.yml` | 4 | 0 |
| `.github/workflows/update-nix-cli-flake.yml` | 4 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `7eaa7b3` fix(ci): restrict GitHub App tokens to required permissions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`7eaa7b3` は actions/create-github-app-token に explicit permission object を渡します。省略した権限は token に付与されません。
public skills bundle の read token は `metadata: read` のみとし、App 登録・installation 権限・credential・1時間の token lifetime は変更しません。

**既存利用者への影響**

アプリ移行は不要です。workflow copy は必要な最小権限を明示し、公開 cross-repository asset の取得と write 操作を個別に確認してください。

### [#20627](https://github.com/microsoft/aspire/pull/20627) — fix(ci): prevent command injection in privileged workflows

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems` `security 🔐`
- 変更行数: +290 / -55
- マージ日時 (UTC): `2026-10-01 17:14:35`

**変更概要**

dispatch／event 由来の文字列を privileged shell source に直接埋め込む経路を除去します。
release、Nix update、PR label prediction、deployment notification で env 経由のデータとして扱います。
token 発行・変更操作の前に version・SHA・branch・PR number を検証します。
backport cleanup を mutable branch 参照から固定された local logic へ変更します。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/backport.yml` | 42 | 10 |
| `.github/workflows/deployment-tests.yml` | 6 | 1 |
| `.github/workflows/labeler-predict-pulls.yml` | 10 | 5 |
| `.github/workflows/release-github-tasks.yml` | 71 | 35 |
| `.github/workflows/update-nix-cli-flake.yml` | 5 | 4 |
| `tests/Infrastructure.Tests/WorkflowScripts/BackportWorkflowTests.cs` | 65 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/backport-cleanup.harness.mjs` | 91 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `c92afcc` fix(ci): prevent command injection in privileged workflows
- `c2b8f3c` fix(ci): make backport cleanup pagination stable

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`c92afcc` が template injection と過剰権限・unpinned cleanup を修正。shell quote 内でも GitHub Actions 式の展開は安全ではないため env に移します。
`c2b8f3c` が cleanup pagination を安定化し、全対象 ID を収集・重複排除してから削除します。対象は現 workflow、認可は正確な owner membership に限定します。public API 変更はありません。

**既存利用者への影響**

アプリ移行は不要です。workflow を複製・独自拡張する管理者は同じ入力境界・token 発行順序・pin を反映してください。

### [#20603](https://github.com/microsoft/aspire/pull/20603) — Update Testcontainers to resolve SSH.NET vulnerabilities

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +25 / -40
- マージ日時 (UTC): `2026-10-01 04:37:58`

**変更概要**

テストの Testcontainers→SSH.NET 依存にある High advisory を解消します。
Testcontainers family を4.15.0へ更新し、SSH.NET 2026.0.0へ解決します。
test builder を image 明示 constructor に移し、container image tag は維持します。
production RabbitMQ package は SSH.NET を参照しておらず、実証された Aspire exploit を報告する変更ではありません。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/ci/azdo-public-pipeline.md` | 1 | 1 |
| `tests/Aspire.Azure.Npgsql.Tests/PostgreSQLContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.Hosting.Azure.Tests/SqlServerContainerFixture.cs` | 2 | 3 |
| `tests/Aspire.Microsoft.Data.SqlClient.Tests/SqlServerContainerFixture.cs` | 2 | 3 |
| `tests/Aspire.Milvus.Client.Tests/MilvusContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.MongoDB.Driver.Tests/MongoDbContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.MySqlConnector.Tests/MySqlContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.NATS.Net.Tests/NatsContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.Npgsql.Tests/PostgreSQLContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.Oracle.EntityFrameworkCore.Tests/OracleContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.Qdrant.Client.Tests/QdrantContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.RabbitMQ.Client.Tests/AspireRabbitMQLoggingTests.cs` | 1 | 2 |
| `tests/Aspire.RabbitMQ.Client.Tests/RabbitMQContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.StackExchange.Redis.Tests/RedisContainerFixture.cs` | 1 | 2 |
| `tests/Aspire.TestUtilities/TestcontainersPodmanConfiguration.cs` | 8 | 10 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `5087590` Update Testcontainers to resolve SSH.NET vulnerabilities

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`5087590` が11 Testcontainers package、fixture constructor、Podman compatibility reference を更新します。
SCP remote-path command injection（GHSA-mggc-4xg6-vcxf）と recursive download の arbitrary write（GHSA-q939-rpr3-3284）の修正版を取り込みます。production 統合 API の変更はありません。

**既存利用者への影響**

repository test／独自 Testcontainers fixture の依存と constructor を更新してください。通常のアプリ package を SSH.NET 対策として変更する必要はありません。

### [#15987](https://github.com/microsoft/aspire/pull/15987) — ci: add Zizmor security analysis for GitHub Actions

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +42 / -0
- マージ日時 (UTC): `2026-09-30 21:30:44`

**変更概要**

GitHub Actions と composite action を Zizmor で解析する CI を追加します。
変更時・週次・manual dispatch で実行し、SARIF を Code Scanning へアップロードします。
公式 action の固定 SHA と organization allow-list を揃えました。
初期345 findings は別途 triage 対象で、この PR は全件修正しません。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/auto-rerun-outerloop-failures.yml` | 1 | 0 |
| `.github/workflows/auto-rerun-transient-ci-failures.yml` | 1 | 0 |
| `.github/workflows/dogfood-comment.yml` | 1 | 0 |
| `.github/workflows/labeler-predict-pulls.yml` | 1 | 0 |
| `.github/workflows/organization-funded-copilot-reviews.yml` | 1 | 0 |
| `.github/workflows/zizmor.yml` | 37 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `722d793` ci: add Zizmor workflow security analysis
- `df48110` ci: use pinned Zizmor package for allow-list compatibility
- `6fc4f1d` ci: use the official Zizmor action

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`722d793` が workflow、`df48110` が allow-list compatibility、`6fc4f1d` が公式 action を採用します。
action v0.6.4 の SHA を pin し report-only で動作。5つの privileged trigger は限定した dangerous-triggers suppression を持ち、他の検出は維持します。公開 API 変更はありません。

**既存利用者への影響**

アプリ移行は不要です。管理者は Security → Code scanning の結果を確認し、将来 action pin を変えるときは allow-list も更新してください。findings が自動で merge を阻止するものではありません。

### [#20576](https://github.com/microsoft/aspire/pull/20576) — Remove obsolete ASPIREATS001 suppression

- 作者: eerhardt / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +0 / -1
- マージ日時 (UTC): `2026-09-29 16:33:36`

**変更概要**

TypeScript AppHost の deadlock regression test が生成する extension project から古い suppression を除去します。
ASPIREATS001 の repository 内の最後の参照を削除しました。
test の生成 project の整理であり、利用者向けの機能廃止ではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.EndToEnd.Tests/TypeScriptEmptyAppHostTemplateTests.cs` | 0 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `74ea027` Remove obsolete ASPIREATS001 suppression

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`74ea027` は TypeScriptEmptyAppHostTemplateTests.cs の suppression 1行を除去します。公開シグネチャや runtime behavior の変更はありません。
自動分類の「非推奨／廃止」は test 内の obsolete suppression に反応したもので、利用者の移行要求から除外しました。

**既存利用者への影響**

移行は不要です。アプリの warning suppression をこの変更だけで削除する必要はありません。

### [microsoft/aspire#20586](https://github.com/microsoft/aspire/pull/20586) — Python playground の PyJWT／oauthlib 更新（手動補足）

- 作者: dependabot[bot] / 状態: MERGED
- 変更行数: +9 / -9
- マージ日時 (UTC): `2026-10-02 15:35:27`

**変更概要**

FoundryAgentBasic と PostgresEndToEnd PythonService の uv lockfile を更新します。
PyJWT 2.14.0 の Critical／High 修正を取り込み、Foundry playground の oauthlib は3.3.1から4.0.0になります。
後続の microsoft/aspire#20703 はこの PyJWT 修正を維持しています。

<details><summary>変更ファイル・コミット</summary>

- playground/FoundryAgentBasic/app/uv.lock
- playground/PostgresEndToEnd/PostgresEndToEnd.PythonService/uv.lock
- `98bf19d`: uv group を2ディレクトリで更新

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更（upstream oauthlib 4）:** token revocation endpoint の JSONP support 削除と、client authentication 前の grant_type validation へ変更があります。
PyJWT 2.14.0 は CVE-2026-102268 等の修正版です。Aspire hosting のシグネチャ変更ではなく、Python playground の依存変更です。

**既存利用者への影響**

該当 playground を基に作った環境は lockfile を同期し、OAuth エラー順序・token 処理を確認してください。既存アプリの依存は自動更新されません。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20736 | Reduce dashboard CPU under sustained metric ingestion | JamesNK | <https://github.com/microsoft/aspire/pull/20736> |
| #20569 | Prepare repository metadata for Aspire 17.0 | maddymontaquila | <https://github.com/microsoft/aspire/pull/20569> |
| #20732 | Preserve child exception stacks in dashboard aggregate-error telemetry | JamesNK | <https://github.com/microsoft/aspire/pull/20732> |
| #20399 | Add one-time Aspire usefulness feedback in VS Code | maddymontaquila | <https://github.com/microsoft/aspire/pull/20399> |
| #19432 | Use Blazor gateway CLI during development | javiercn | <https://github.com/microsoft/aspire/pull/19432> |
| #20697 | perf(ci): Fix timeout in source-index build by making it faster | radical | <https://github.com/microsoft/aspire/pull/20697> |
| #20720 | Keep connected terminal clipboard and selection errors console-only | mitchdenny | <https://github.com/microsoft/aspire/pull/20720> |
| #20719 | Prefer Terminal shortcuts for terminal-enabled resources | mitchdenny | <https://github.com/microsoft/aspire/pull/20719> |
| #20575 | Skip Blazor WASM client discovery on unsupported SDKs instead of crashing | maraf | <https://github.com/microsoft/aspire/pull/20575> |
| #20620 | Preserve multiline quoted values in Docker Compose env files | Benziza | <https://github.com/microsoft/aspire/pull/20620> |
| #20721 | Upgrade Hex1b packages and web terminal to 0.172.0 | mitchdenny | <https://github.com/microsoft/aspire/pull/20721> |
| #20600 | Configure dashboard OTLP service name | JamesNK | <https://github.com/microsoft/aspire/pull/20600> |
| #20633 | Add Dashboard setting to disable Blazor WebSocket compression | JamesNK | <https://github.com/microsoft/aspire/pull/20633> |
| #20694 | Render terminal footer F6 shortcut as a keyboard key | JamesNK | <https://github.com/microsoft/aspire/pull/20694> |
| #20542 | Reduce AppHost log noise for CLI connections and readiness checks | JamesNK | <https://github.com/microsoft/aspire/pull/20542> |
| #20699 | Fix App authentication for generator workflow pushes | joperezr | <https://github.com/microsoft/aspire/pull/20699> |
| #20586 | Bump the uv group across 2 directories with 2 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20586> |
| #20664 | [release/13.6] Fix remaining Outerloop failures in DCP, CLI, and Dashboard tests | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20664> |
| #20597 | Keep dashboard SQLite telemetry reads consistent during eviction | JamesNK | <https://github.com/microsoft/aspire/pull/20597> |
| #20647 | Size dashboard header notification badge to 18px | JamesNK | <https://github.com/microsoft/aspire/pull/20647> |
| #20650 | Add dedicated Dashboard Terminals page | JamesNK | <https://github.com/microsoft/aspire/pull/20650> |
| #20667 | Add container tunnel base image configuration | danegsta | <https://github.com/microsoft/aspire/pull/20667> |
| #20676 | test(cli): quarantine flaky RPC cancellation test | radical | <https://github.com/microsoft/aspire/pull/20676> |
| #17079 | Simplify Aspire.Cli process code using .NET 11 Process APIs | eerhardt | <https://github.com/microsoft/aspire/pull/17079> |
| #20636 | [release/13.6] Update dependencies from microsoft/dcp | danegsta | <https://github.com/microsoft/aspire/pull/20636> |
| #20545 | [release/13.6] Update Fluent UI to v5 RTM | JamesNK | <https://github.com/microsoft/aspire/pull/20545> |
| #20638 | Move source indexing to a daily internal pipeline | Copilot | <https://github.com/microsoft/aspire/pull/20638> |
| #20096 | Add experimental native tray companion for macOS and Windows | davidfowl | <https://github.com/microsoft/aspire/pull/20096> |
| #20590 | Add CLI installation source to main telemetry | DamianEdwards | <https://github.com/microsoft/aspire/pull/20590> |
| #20573 | Prevent recursive MTP test runner invocation | danegsta | <https://github.com/microsoft/aspire/pull/20573> |
| #20628 | Use source-generated JSON for terminal host control RPC | eerhardt | <https://github.com/microsoft/aspire/pull/20628> |
| #20255 | Upgrade Hex1b and improve dashboard terminal navigation and metadata | mitchdenny | <https://github.com/microsoft/aspire/pull/20255> |
| #20457 | Fix remaining outerloop test failures | radical | <https://github.com/microsoft/aspire/pull/20457> |
| #20623 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/20623> |
| #20630 | Preserve ItemGroup evaluation order in template manifest normalization | DamianEdwards | <https://github.com/microsoft/aspire/pull/20630> |
| #20622 | Temporarily disable source indexing in official builds | joperezr | <https://github.com/microsoft/aspire/pull/20622> |
| #20574 | Generate template dependency manifest instead of internal basic tests | DamianEdwards | <https://github.com/microsoft/aspire/pull/20574> |
| #19915 | Add serialization models for generated MSBuild files | danegsta | <https://github.com/microsoft/aspire/pull/19915> |
| #20514 | [release/13.6] Fix Windows AppHost cleanup job routing | danegsta | <https://github.com/microsoft/aspire/pull/20514> |
| #20591 | Increment release version to 13.6.1 | danegsta | <https://github.com/microsoft/aspire/pull/20591> |
| #20607 | Update and consolidate MongoDB dependencies | eerhardt | <https://github.com/microsoft/aspire/pull/20607> |
| #20589 | Update PackageValidationBaselineVersion to 13.6.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20589> |
| #20592 | Bump Aspire version to 17.0 | mitchdenny | <https://github.com/microsoft/aspire/pull/20592> |
| #20388 | Generate main and release API reviews with shared workflows | sebastienros | <https://github.com/microsoft/aspire/pull/20388> |
| #20583 | [release/13.6] Sign Linux Dashboard NuGet packages during assembly | joperezr | <https://github.com/microsoft/aspire/pull/20583> |
| #20581 | [release/13.6] Remove ASPIREDOTNETPROJECT001 | eerhardt | <https://github.com/microsoft/aspire/pull/20581> |
| #20582 | Remove ASPIREDOTNETPROJECT001 | eerhardt | <https://github.com/microsoft/aspire/pull/20582> |
| #20532 | Enable project-backed dashboard commands and fix DCP restart races | JamesNK | <https://github.com/microsoft/aspire/pull/20532> |
| #20562 | [release/13.6] Remove dashboard terminal navigation entry points | mitchdenny | <https://github.com/microsoft/aspire/pull/20562> |
| #20308 | [ci] Fix Deployment E2E tests | Copilot | <https://github.com/microsoft/aspire/pull/20308> |
| #20566 | [release/13.6] Address container supply-chain warnings to make the official build green | joperezr | <https://github.com/microsoft/aspire/pull/20566> |
| #20477 | Only warn about CLI/SDK skew when the CLI is older | spboyer | <https://github.com/microsoft/aspire/pull/20477> |
| #20411 | [outerloop-tests] Fix Radius MongoDB outerloop test selectors | Copilot | <https://github.com/microsoft/aspire/pull/20411> |
| #20559 | ci(extension): Keep browser debugger E2E running as advisory | radical | <https://github.com/microsoft/aspire/pull/20559> |
| #20528 | Remove dashboard terminal navigation entry points | mitchdenny | <https://github.com/microsoft/aspire/pull/20528> |
| #20548 | [release/13.6] Remove terminal commands feature flag | mitchdenny | <https://github.com/microsoft/aspire/pull/20548> |
| #20546 | [release/13.6] Keep dashboard run menu open when pinning | JamesNK | <https://github.com/microsoft/aspire/pull/20546> |
| #20541 | [release/13.6] Simplify terminal dock empty state and link styling | mitchdenny | <https://github.com/microsoft/aspire/pull/20541> |
| #20525 | Remove terminal commands feature flag | mitchdenny | <https://github.com/microsoft/aspire/pull/20525> |
| #20416 | Match dashboard brand hover to Aspire website | JamesNK | <https://github.com/microsoft/aspire/pull/20416> |
| #20523 | Keep dashboard run menu open when pinning | JamesNK | <https://github.com/microsoft/aspire/pull/20523> |
| #20527 | Update Fluent UI to v5 RTM | JamesNK | <https://github.com/microsoft/aspire/pull/20527> |
| #20537 | Simplify terminal dock empty state and link styling | mitchdenny | <https://github.com/microsoft/aspire/pull/20537> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20752 | Recover ambiguous DCP creates with configurable timeouts | open | danegsta | <https://github.com/microsoft/aspire/pull/20752> |
| PR | #20748 | Add Terminals keyboard shortcut and improve dashboard shortcut help | open | JamesNK | <https://github.com/microsoft/aspire/pull/20748> |
| PR | #20746 | Add Mermaid resource graph export to the dashboard and CLI | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20746> |
| PR | #20658 | Improve dev tunnel startup and lifecycle tracking | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/20658> |
| PR | #20681 | Spike: standalone container image artifacts and registry defaults | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20681> |
| PR | #20724 | Group tray AppHosts by application and Git worktree | open | 4dwaffle | <https://github.com/microsoft/aspire/pull/20724> |
| PR | #20747 | [release/13.6] Reduce dashboard CPU under sustained metric ingestion | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20747> |
| PR | #20642 | test(dashboard): run Playwright tests as non-blocking outerloop | open | radical | <https://github.com/microsoft/aspire/pull/20642> |
| PR | #20693 | Add auto-sec agentic workflow for dependency security reconciliation | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20693> |
| PR | #20677 | Validate deployment defaults after subscription cutover | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20677> |
| PR | #20744 | IGNORE — DO NOT MERGE: enhanced dependency review control | open | radical | <https://github.com/microsoft/aspire/pull/20744> |
| PR | #20743 | IGNORE — DO NOT MERGE: PR 20716 npm dependency evidence experiment | open | radical | <https://github.com/microsoft/aspire/pull/20743> |
| PR | #20741 | IGNORE — DO NOT MERGE: dependency review evidence pilot | open | radical | <https://github.com/microsoft/aspire/pull/20741> |
| PR | #20722 | Restrict GitHub workflows to microsoft/aspire | open | Copilot | <https://github.com/microsoft/aspire/pull/20722> |
| PR | #20742 | IGNORE — DO NOT MERGE: reduced dependency-review reproduction of #20281 | open | radical | <https://github.com/microsoft/aspire/pull/20742> |
| PR | #20614 | Raise Aspire's minimum supported .NET version to .NET 10 | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/20614> |
| PR | #20734 | Clarify dashboard and CLI application review guidance | open | JamesNK | <https://github.com/microsoft/aspire/pull/20734> |
| PR | #20701 | [Automated] Update API Surface Area (release/13.6) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20701> |
| PR | #20700 | [Automated] Update ATS API Surface Area (release/13.6) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20700> |
| PR | #20712 | Fix Foundry prompt agent Responses SDK compatibility | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/20712> |
| PR | #20730 | Migrate dashboard product telemetry to Azure Monitor | open | JamesNK | <https://github.com/microsoft/aspire/pull/20730> |
| PR | #20551 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20551> |
| PR | #20735 | Add official Go and Java CodeQL snapshot jobs | open | joperezr | <https://github.com/microsoft/aspire/pull/20735> |
| PR | #20733 | Support environment-specific Aspire secrets for deployment | open | Copilot | <https://github.com/microsoft/aspire/pull/20733> |
| PR | #20726 | Preserve disconnected terminal output and add recovery actions | open | mitchdenny | <https://github.com/microsoft/aspire/pull/20726> |
| PR | #20723 | Add DCP SQLite lock diagnostics to MySQL tests | open | ishu599 | <https://github.com/microsoft/aspire/pull/20723> |
| PR | #20716 | Bump the npm group across 1 directory with 23 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20716> |
| PR | #20715 | Bump serialize-javascript from 7.1.1 to 7.1.2 in /playground/AspireWithJavaScript/AspireJavaScript.Angular in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20715> |
| PR | #20714 | Bump the uv group across 2 directories with 1 update | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20714> |
| PR | #20705 | Configure Windows NuGet package paths in GitHub Actions | open | sebastienros | <https://github.com/microsoft/aspire/pull/20705> |
| PR | #20692 | Modernize Windows tray menus and dialogs | open | 4dwaffle | <https://github.com/microsoft/aspire/pull/20692> |
| PR | #20610 | ci: enforce actionlint for handwritten workflows | open | radical | <https://github.com/microsoft/aspire/pull/20610> |
| PR | #20588 | Merge release/13.6 to main after v13.6.0 release | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20588> |
| PR | #20686 | Bump the github-actions group with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20686> |
| PR | #20684 | Treat not-started resources as neutral in tray health | open | 4dwaffle | <https://github.com/microsoft/aspire/pull/20684> |
| PR | #20675 | Port analyze-ci-failure output validation from bash/jq to C# | open | radical | <https://github.com/microsoft/aspire/pull/20675> |
| PR | #20571 | Use a direct connection for Mongo Express with single-member replica sets | open | sebastienros | <https://github.com/microsoft/aspire/pull/20571> |
| PR | #20624 | fix(ci): Publish main CI failure analysis without PR numbers | open | radical | <https://github.com/microsoft/aspire/pull/20624> |
| PR | #20643 | test(infrastructure): replace source checks with behavior coverage | open | radical | <https://github.com/microsoft/aspire/pull/20643> |
| PR | #20604 | Investigation: azd `empty dotnet configuration output` on .NET 11 rc.2 (no code changes) | open | Copilot | <https://github.com/microsoft/aspire/pull/20604> |
| PR | #20612 | docs: guide behavior-driven infrastructure tests | open | radical | <https://github.com/microsoft/aspire/pull/20612> |
| PR | #20557 | Fix TypeScript Bicep parameter expressions on enum Azure properties | open | sebastienros | <https://github.com/microsoft/aspire/pull/20557> |
| PR | #20617 | Fix interleaved AppHost discovery progress output | open | spboyer | <https://github.com/microsoft/aspire/pull/20617> |
| PR | #20615 | ci: run semantic infrastructure tests through selective CI | open | radical | <https://github.com/microsoft/aspire/pull/20615> |
| PR | #20613 | ci: skip unused package and CLI artifact builds | open | radical | <https://github.com/microsoft/aspire/pull/20613> |
| PR | #20585 | Parallelize release publishing jobs | open | joperezr | <https://github.com/microsoft/aspire/pull/20585> |
| PR | #20570 | Sync Aspire 17 release branch with main and release metadata | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/20570> |
| PR | #20558 | Add NpxResource to Aspire.Hosting.JavaScript | open | afscrome | <https://github.com/microsoft/aspire/pull/20558> |
| PR | #20561 | [Reference only - do not merge] Chaos YARP-per-edge proxy pilot | open | brrusino | <https://github.com/microsoft/aspire/pull/20561> |
| PR | #20443 | [release/13.6] Fix duplicate inherited ATS method exports | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/20443> |
| PR | #16475 | Replace HttpListener with Kestrel in acquisition ScriptHostFixture | closed | Copilot | <https://github.com/microsoft/aspire/pull/16475> |
| PR | #20731 | Resolve merge conflicts in #20135 | closed | Copilot | <https://github.com/microsoft/aspire/pull/20731> |
| PR | #17936 | feat: add aspire doctor check for legacy settings.json | closed | tomokuroki | <https://github.com/microsoft/aspire/pull/17936> |
| PR | #20474 | Bump the npm group across 1 directory with 22 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20474> |
| PR | #20564 | Bump com.fasterxml.jackson.core:jackson-databind from 2.21.5 to 2.21.6 in /playground/PostgresEndToEnd/PostgresEndToEnd.JavaService in the maven group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20564> |
| PR | #19772 | Fix dashboard telemetry filter races and replica searches | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19772> |
| PR | #20688 | Fix standalone dashboard AI agents documentation link | closed | 4dwaffle | <https://github.com/microsoft/aspire/pull/20688> |
| PR | #20605 | Add ability to run dotnet apps in Release configuration | closed | jfheins | <https://github.com/microsoft/aspire/pull/20605> |
| PR | #19735 | Document Git-based Aspire template design | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19735> |
| PR | #20672 | [permission probe] read-content token | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20672> |
| PR | #20673 | [permission probe] issues control token | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20673> |
| PR | #20671 | [permission probe] issues control token | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20671> |
| PR | #20670 | [permission probe] write-content token | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20670> |
| PR | #20669 | [permission probe] read-content token | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20669> |
| PR | #20668 | [permission probe] read-content token | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20668> |
| PR | #20305 | Fix RemoteHost test restore warning in CI | closed | Copilot | <https://github.com/microsoft/aspire/pull/20305> |
| PR | #16841 | Consolidate Docker verification for CI workflows | closed | Copilot | <https://github.com/microsoft/aspire/pull/16841> |
| PR | #17893 | Land homebrew-core formula scaffolding + brew self-update gate | closed | radical | <https://github.com/microsoft/aspire/pull/17893> |
| PR | #16183 | Add terminal recording content to GitHub step summary for failed CLI E2E tests | closed | radical | <https://github.com/microsoft/aspire/pull/16183> |
| PR | #19301 | [automated] feat(cli): report installations with aspire --info | closed | radical | <https://github.com/microsoft/aspire/pull/19301> |
| PR | #16248 | Post dogfood comment only after packages are successfully built | closed | Copilot | <https://github.com/microsoft/aspire/pull/16248> |
| PR | #16222 | Fix CI timeline to account for initial workflow queue/wait time | closed | Copilot | <https://github.com/microsoft/aspire/pull/16222> |
| PR | #15919 | Fix 5 deterministically failing CLI E2E tests in quarantine runs | closed | Copilot | <https://github.com/microsoft/aspire/pull/15919> |
| PR | #17462 | feat(cli): cleanup commands for Aspire CLI installs and installer scripts | closed | radical | <https://github.com/microsoft/aspire/pull/17462> |
| PR | #17920 | ci(notify): file/update ci-broken GitHub issue when internal AzDO build breaks on main/release/* | closed | radical | <https://github.com/microsoft/aspire/pull/17920> |
| PR | #16965 | Convert polyglot SDK validation to C# unit tests (#16701) | closed | radical | <https://github.com/microsoft/aspire/pull/16965> |
| PR | #19943 | Investigate flaky TestEndpointsReturnOk coverage | closed | Copilot | <https://github.com/microsoft/aspire/pull/19943> |
| PR | #17919 | fix(cli): detect winget install of aspire.exe so bundle stays in the winget package dir | closed | radical | <https://github.com/microsoft/aspire/pull/17919> |
| PR | #16059 | Support multiple test names in /create-issue and fix underscore escaping in titles | closed | Copilot | <https://github.com/microsoft/aspire/pull/16059> |
| PR | #19912 | Document Copilot agent firewall probe blocker | closed | Copilot | <https://github.com/microsoft/aspire/pull/19912> |
| PR | #17403 | ci(extension): lint lockfile tarball hosts against the dotnet-public-npm mirror | closed | radical | <https://github.com/microsoft/aspire/pull/17403> |
| PR | #17332 | fix(cli): keep pinned-channel integration discovery coherent | closed | radical | <https://github.com/microsoft/aspire/pull/17332> |
| PR | #18475 | Optimize Copilot setup steps for speed and reliability | closed | Copilot | <https://github.com/microsoft/aspire/pull/18475> |
| PR | #17978 | ci(auto-rerun): catch corepack digest-mismatch, ACR refused, silent post-test cleanup flakes; unconditional Windows-init retry (closes #16187) | closed | radical | <https://github.com/microsoft/aspire/pull/17978> |
| PR | #15941 | Make CLI bundle self-extraction conditional based on distribution mode | closed | Copilot | <https://github.com/microsoft/aspire/pull/15941> |
| PR | #19942 | Add repository-local `code-review-test-trigger-map` Copilot review skill | closed | Copilot | <https://github.com/microsoft/aspire/pull/19942> |
| PR | #17557 | Prevent silent regression of #17527: pin cascade + if/else ordering, add GA ship-build guard | closed | radical | <https://github.com/microsoft/aspire/pull/17557> |
| PR | #20616 | test(ci): enforce durable contracts in workflow tests | closed | radical | <https://github.com/microsoft/aspire/pull/20616> |
| PR | #20611 | ci: run semantic infrastructure tests for skipped inputs | closed | radical | <https://github.com/microsoft/aspire/pull/20611> |
| PR | #20438 | Fix duplicate inherited ATS method exports | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/20438> |
| PR | #20506 | Stabilize extension E2E AppHost handoff | closed | danegsta | <https://github.com/microsoft/aspire/pull/20506> |
| PR | #20406 | Fix Windows test shutdown file lock failures | closed | danegsta | <https://github.com/microsoft/aspire/pull/20406> |
| PR | #20529 | [release/13.6] Added WithConfiguration extension method for configuring PVCs | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/20529> |
| Issue | #20751 | [Aspire Update] - update agent skills as part of aspire update | closed | tjwald | <https://github.com/microsoft/aspire/issues/20751> |
| Issue | #20750 | [CI Failure] Flaky: ResourceCommandServiceTests.ExecuteCommandAsync_RebuildCommand_ReturnsBuildOutput fails with Assert.True on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20750> |
| Issue | #20749 | [CI Failure] Flaky: TrayWatchStreamTests.RemovedHostCancelsItsResourceWatchAndReplacementDoesNotReuseHealth reconciliation count race | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20749> |
| Issue | #20725 | Dashboard CPU grows steadily under idle metrics ingestion in 13.6 (SQLite exemplar churn) | closed | tzdevelopteam | <https://github.com/microsoft/aspire/issues/20725> |
| Issue | #20738 | [CI Failure] Flaky: StartCommandTests multi-project-file scenarios time out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20738> |
| Issue | #20737 | [CI Failure] Flaky: StartCommandTests NonInteractive multi-project-file scenario times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20737> |
| Issue | #20745 | Dashboard record counts don't use regional number formatting | open | Copilot | <https://github.com/microsoft/aspire/issues/20745> |
| Issue | #20665 | VS Code extension ignores launch.json debugger configuration for apphost (13.6.0) | open | aDisplayName | <https://github.com/microsoft/aspire/issues/20665> |
| Issue | #20729 | [CI Failure] Flaky: GitRepositoryTests.GetIncludedFilesAsync_DeletedTrackedFile_StillReturned times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20729> |
| Issue | #20740 | Investigate and reduce Aspire's fixed memory overhead | open | Copilot | <https://github.com/microsoft/aspire/issues/20740> |
| Issue | #20739 | VS Code: Add persistent dismissal for advisory CodeLens | open | ellahathaway | <https://github.com/microsoft/aspire/issues/20739> |
| Issue | #20552 | VS Code extension accumulates aspire ps --follow processes and amplifies AppHost startup RPCs | open | JamesNK | <https://github.com/microsoft/aspire/issues/20552> |
| Issue | #20707 | [CI Failure] Flaky: TrayWatchStreamTests.StalledResourceWatchDoesNotBlockReconciliationOrQuit asserts wrong reconciliation count | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20707> |
| Issue | #20543 | [CI Failure] Aspire.Cli.Tests (macos-latest) test host killed with exit code 137 (SIGKILL) despite all tests passing | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20543> |
| Issue | #20641 | [Failing test]: Aspire.Dashboard.Tests.Integration.Playwright.TerminalTests.ExplicitSizing\_TakesPrimaryAndAppliesRequestedGrid | open | radical | <https://github.com/microsoft/aspire/issues/20641> |
| Issue | #20728 | Metrics don't offer a scrollbar, can't scroll down. | open | koenbeuk | <https://github.com/microsoft/aspire/issues/20728> |
| Issue | #20619 | Docker Compose publisher corrupts multiline quoted values in existing .env files | closed | Benziza | <https://github.com/microsoft/aspire/issues/20619> |
| Issue | #20727 | Group worktree instances under a single parent menu item | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20727> |
| Issue | #20718 | AddAzureFunctionsProject resource stays Waiting on Linux after upgrading to 13.6.0 although all WaitFor dependencies are healthy | closed | robert-oh | <https://github.com/microsoft/aspire/issues/20718> |
| Issue | #20717 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20717> |
| Issue | #20655 | Scheduled workflow failing: Generate API Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20655> |
| Issue | #20711 | Foundry prompt agent Send Message fails with MissingMethodException for ResponsesClient constructor | open | tommasodotNET | <https://github.com/microsoft/aspire/issues/20711> |
| Issue | #20710 | Foundry prompt agent Send Message fails with MissingMethodException for ResponsesClient constructor | open | tommasodotNET | <https://github.com/microsoft/aspire/issues/20710> |
| Issue | #20709 | Cannot build/rebuild Blazor Web projects through aspire dashboard with 13.6 and .NET 11 | open | mip1983 | <https://github.com/microsoft/aspire/issues/20709> |
| Issue | #20662 | [CI Failure] Flaky: ResourceCommandServiceTests.ExecuteCommandAsync_RebuildCommand_ReturnsBuildOutput build-count line mismatch on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20662> |
| Issue | #20645 | SQL Server REPL reports "Terminal view is not connected" without useful failure diagnostics | closed | JamesNK | <https://github.com/microsoft/aspire/issues/20645> |
| Issue | #20598 | Aspire Dashboard 13.6.0 fails to initialize behind IIS ARR when WebSocket compression is negotiated | closed | 4dwaffle | <https://github.com/microsoft/aspire/issues/20598> |
| Issue | #20706 | [CI Failure] Flaky: DevTunnelResourceBuilderExtensionsTests.DcpStartupPublishesDevTunnelUrls times out with TaskCanceledException in DistributedApplication.StopAsync | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20706> |
| Issue | #20702 | Add per-resource watch control for AddDotnetProject | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20702> |
| Issue | #20554 | [CI Failure] Flaky: MySqlFunctionalTests.WithDataShouldPersistStateBetweenUsages times out because DCP state.sqlite3 is locked (SQLITE_BUSY) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20554> |
| Issue | #20698 | Finalize Project Resource v2 adoption for Aspire 17.0 | open | joperezr | <https://github.com/microsoft/aspire/issues/20698> |
| Issue | #20696 | Show “Seb just built this!” for Seb-authored APIs in IntelliSense | open | Copilot | <https://github.com/microsoft/aspire/issues/20696> |
| Issue | #20695 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20695> |
| Issue | #20691 | A single timed-out or 504 DCP `Create` call permanently fails the resource (`FailedToStart`); not retried since 13.6.0 | open | bart-vmware | <https://github.com/microsoft/aspire/issues/20691> |
| Issue | #20609 | Aspire 13.6.0 always errors with "Watch task over Kubernetes ContainerExec resources terminated unexpectedly" | open | andrew-maksymiuk-finys | <https://github.com/microsoft/aspire/issues/20609> |
| Issue | #20690 | [aw] Analyze CI Failure timed out | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20690> |
| Issue | #20689 | Container left running with no network after DCP start/inspect times out; resource shows FailedToStart and is never retried or cleaned up | open | dewijones92 | <https://github.com/microsoft/aspire/issues/20689> |
| Issue | #20687 | Dashboard: standalone AI agents documentation redirect misses standalone-mode section | open | 4dwaffle | <https://github.com/microsoft/aspire/issues/20687> |
| Issue | #20685 | Project resource inherits Microsoft.WebTools.ApiEndpointDiscovery hosting startup without its assembly | open | paulomorgado | <https://github.com/microsoft/aspire/issues/20685> |
| Issue | #20683 | Tray shows orange status for intentionally unstarted resources | open | 4dwaffle | <https://github.com/microsoft/aspire/issues/20683> |
| Issue | #20682 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20682> |
| Issue | #20555 | ACA should not create LAW | open | MisinformedDNA | <https://github.com/microsoft/aspire/issues/20555> |
| Issue | #20680 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20680> |
| Issue | #20679 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20679> |
| Issue | #20678 | Remove --replica from aspire terminal commands and select replicas by resource instance ID | open | JamesNK | <https://github.com/microsoft/aspire/issues/20678> |
| Issue | #20580 | `aspire terminal attach` can't attach to dock terminals (e.g. `WithRepl()` REPL sessions) | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20580> |
| Issue | #20674 | Add container image resources and registry publication independent of compute | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20674> |
| Issue | #20666 | [CI Failure] Flaky: BackchannelJsonSerializerContextTests.RpcCancellationReachesServer times out after 30s on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20666> |
| Issue | #20634 | Move source indexing to a daily internal pipeline | closed | radical | <https://github.com/microsoft/aspire/issues/20634> |
| Issue | #20663 | Replace ProcessCaptureRunner in PeerInstallProbe with IProcessExecutionFactory and System.Text.Json stream parsing | open | eerhardt | <https://github.com/microsoft/aspire/issues/20663> |
| Issue | #20618 | Route remaining Aspire CLI child-process launches through IProcessExecutionFactory | open | eerhardt | <https://github.com/microsoft/aspire/issues/20618> |
| Issue | #20657 | Extract embedded CI scripts for behavioral testing | open | radical | <https://github.com/microsoft/aspire/issues/20657> |
| Issue | #20660 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20660> |
| Issue | #20656 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20656> |
| Issue | #20596 | [AspireE2E] When using azd to publish aspire project, an error occurred: empty dotnet configuration output. | open | Susie-1989 | <https://github.com/microsoft/aspire/issues/20596> |
| Issue | #20654 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20654> |
| Issue | #20652 | SQL Server `WithRepl` fails on 13.6.0: selector script has CRLF line endings | open | fpaus | <https://github.com/microsoft/aspire/issues/20652> |
| Issue | #20648 | [Regression 13.6.0] DcpExecutor logs "crit" TimeoutRejectedException for Container/ContainerExec watches on an empty AppHost | closed | dobri-popov | <https://github.com/microsoft/aspire/issues/20648> |
| Issue | #20653 | Support stable isolated port allocation for Git worktrees | open | Copilot | <https://github.com/microsoft/aspire/issues/20653> |
| Issue | #20572 | CreateAsync<TEntryPoint> recursively re-runs the whole test session when the test project uses Aspire.AppHost.Sdk | closed | afscrome | <https://github.com/microsoft/aspire/issues/20572> |
| Issue | #20649 | mcr.microsoft.com/dotnet/aspire-dashboard:latest is broken | closed | sdahlbac | <https://github.com/microsoft/aspire/issues/20649> |
| Issue | #20606 | 13.6.0 AppHost errors on debugging: Failed to enable orchestration logging, System.UnauthorizedAccessException: Attempted to perform an unauthorized operation. | open | mip1983 | <https://github.com/microsoft/aspire/issues/20606> |
| Issue | #20646 | Improve terminal lifecycle logging and actionable error messages without routine shutdown noise | open | JamesNK | <https://github.com/microsoft/aspire/issues/20646> |
| Issue | #20644 | [Failing test]: Aspire.Dashboard.Tests.Integration.Playwright.ResourceSelectInteractionTests.PointerSelection\_ClosesDropdownAndSupportsConsecutiveChanges | open | radical | <https://github.com/microsoft/aspire/issues/20644> |
| Issue | #20640 | [Failing test]: Aspire.Dashboard.Tests.Integration.Playwright.AspireMenuLayoutTests.StructuredLogActions\_TriggerRemainsVisibleAndMenuItemsSharePopup | open | radical | <https://github.com/microsoft/aspire/issues/20640> |
| Issue | #20639 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20639> |
| Issue | #20626 | Audit cross-platform coverage of template dependency manifests | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/20626> |
| Issue | #20635 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20635> |
| Issue | #20631 | Support NuGet fallback package folders in polyglot package restores | open | danegsta | <https://github.com/microsoft/aspire/issues/20631> |
| Issue | #20632 | [CI Failure] Aspire.Azure.Messaging.EventHubs.Tests (windows-latest) net9.0 test host crashes with unhandled CLR exception (0xE0434352) despite all tests passing | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20632> |
| Issue | #20629 | Preserve ItemGroup evaluation order in template manifest normalization | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/20629> |
| Issue | #20625 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20625> |
| Issue | #20621 | Re-enable source indexing in official builds after publishing access is restored | open | joperezr | <https://github.com/microsoft/aspire/issues/20621> |
| Issue | #20578 | Let `aspire otel` and agents query previous dashboard runs | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/20578> |
| Issue | #20560 | Azure Sandboxes: automatically assign runtime data-plane roles to referencing resources | open | eerhardt | <https://github.com/microsoft/aspire/issues/20560> |
| Issue | #20556 | Mongo Express fails with WithReplicaSet(): missing directConnection causes connection to localhost inside the UI container | open | eerhardt | <https://github.com/microsoft/aspire/issues/20556> |
| Issue | #20579 | [Failing test]: WithUrlsTests causes Windows runner loss | open | radical | <https://github.com/microsoft/aspire/issues/20579> |
| Issue | #20602 | [CLI] aspire update command leaves out Aspire.Hosting.Testing | closed | mip1983 | <https://github.com/microsoft/aspire/issues/20602> |
| Issue | #20601 | [Aspire Dashboard] - Persisted Telemetry - Snapshot & Clean | open | tjwald | <https://github.com/microsoft/aspire/issues/20601> |
| Issue | #20599 | [13.6] Date's ignore local regional format | closed | afscrome | <https://github.com/microsoft/aspire/issues/20599> |
| Issue | #20595 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20595> |
| Issue | #20593 | Drop support for .NET 8 and .NET 9 in next major version | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/20593> |
| Issue | #20594 | Deprecate the Aspire.AppHost.Sdk | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/20594> |
| Issue | #20567 | Hosting-1 and Hosting-5 Windows test shards frequently lose runner communication | open | radical | <https://github.com/microsoft/aspire/issues/20567> |
| Issue | #20587 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20587> |
| Issue | #20584 | Make NuGet package signing an explicit pipeline responsibility | open | joperezr | <https://github.com/microsoft/aspire/issues/20584> |
| Issue | #20563 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20563> |
| Issue | #20577 | [CI] Build broken on main — 20260928.11 | closed | joperezr | <https://github.com/microsoft/aspire/issues/20577> |
| Issue | #20568 | Investigate Aspire test runs leaving dozens of AppHost instances running | closed | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/20568> |
| Issue | #20565 | [automated] Remove temporary MTP exit-code normalization after .NET 11 SDK update | open | radical | <https://github.com/microsoft/aspire/issues/20565> |
| Issue | #20553 | Support derived URLs for parameterized external services | open | jomaxso | <https://github.com/microsoft/aspire/issues/20553> |
| Issue | #20550 | aspire run --apphost overrides values from aspire.settings.json | open | Chicoo | <https://github.com/microsoft/aspire/issues/20550> |
| Issue | #20549 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20549> |
| Issue | #20547 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20547> |
| Issue | #20544 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20544> |
| Issue | #20540 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20540> |
| Issue | #20286 | Validate .NET 11 RC1 file-new and basic Aspire scenarios for 13.6 | closed | joperezr | <https://github.com/microsoft/aspire/issues/20286> |
| Issue | #18777 | Scheduled workflow failing: Deployment Cleanup | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18777> |
| Issue | #19187 | HTTPS endpoint + certificate configuration issues with Azure Function | closed | pellea | <https://github.com/microsoft/aspire/issues/19187> |
| Issue | #20417 | Hosted Blazor (ProxyBlazorService/ProxyBlazorTelemetry) crashes the AppHost on .NET 10 SDK: ResolveWebAssemblyProjectReferences target missing | closed | eerhardt | <https://github.com/microsoft/aspire/issues/20417> |
| Issue | #18618 | Scheduled workflow failing: Generate ATS Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18618> |
| Issue | #20420 | Replace Hex1b Windows PTY environment workaround with explicit socket configuration | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20420> |
| Issue | #20083 | Add a global native Aspire tray companion for macOS and Windows | closed | davidfowl | <https://github.com/microsoft/aspire/issues/20083> |
| Issue | #18020 | RID - use https://github.com/dotnet/aspire/blob/main/src/Aspire.AppHost.Sdk/Aspire.RuntimeIdentifier.Tool/Program.cs to see which RID to map to! | closed | radical | <https://github.com/microsoft/aspire/issues/18020> |
| Issue | #11020 | Failing test: Aspire.Hosting.Azure.Tests.AzureAppServiceTests.PublishAsAzureAppServiceWebsite_ThrowsIfNoEnvironment | closed | radical | <https://github.com/microsoft/aspire/issues/11020> |
| Issue | #20409 | [automated] Track current-main CI rerun decision history for reporting | closed | radical | <https://github.com/microsoft/aspire/issues/20409> |
| Issue | #18223 | Automated & scheduled workflow health — rolling 9-day dashboard | closed | radical | <https://github.com/microsoft/aspire/issues/18223> |
| Issue | #18784 | CI lane "Deployment Environment Cleanup" red | closed | radical | <https://github.com/microsoft/aspire/issues/18784> |
| Issue | #18716 | CI lane "Milestone Changelog Generator" red | closed | radical | <https://github.com/microsoft/aspire/issues/18716> |
| Issue | #18715 | Internal pipeline: transient macOS notarization flake fails native build+sign on main | closed | radical | <https://github.com/microsoft/aspire/issues/18715> |
| Issue | #18512 | Maui: consider centralizing some property names as consts | closed | radical | <https://github.com/microsoft/aspire/issues/18512> |
| Issue | #18326 | Follow-up test improvements for Aspire.Hosting.Maui.Tests (#14768) | closed | radical | <https://github.com/microsoft/aspire/issues/18326> |
| Issue | #13846 | Failing test: Aspire.Hosting.Azure.Tests.AzureDeployerTests.DeployAsync_WithAzureFunctionsProject_Works | closed | radical | <https://github.com/microsoft/aspire/issues/13846> |
| Issue | #19787 | [automated] Monitor selective PR CI accuracy after enforcement | closed | radical | <https://github.com/microsoft/aspire/issues/19787> |
| Issue | #20451 | [CI] Reduce internal basic template tests from ~25 minutes | closed | radical | <https://github.com/microsoft/aspire/issues/20451> |
| Issue | #19213 | Foundry Local integration fails with current CLI and remote hosts | closed | sebastienros | <https://github.com/microsoft/aspire/issues/19213> |
| Issue | #20189 | RunAsFoundryLocal fails on Foundry CLI 0.10+: still calls foundry service (renamed to foundry server) | closed | LeftTwixWand | <https://github.com/microsoft/aspire/issues/20189> |
| Issue | #19798 | Exercise Azure Sandboxes ACR pull identity in polyglot fixtures | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19798> |
| Issue | #20259 | [automated] Signed Native AOT Dashboard fails to load bundled libraries on macOS 26 | closed | radical | <https://github.com/microsoft/aspire/issues/20259> |
| Issue | #11711 | Aspire 9.5: Debugging e2e DistributedApplicationTestingBuilder tests with Blazor Web (with wasm) projects spins up multiple browsers, times out | closed | mip1983 | <https://github.com/microsoft/aspire/issues/11711> |
| Issue | #18214 | Azure.Core 1.57.0 => 1.59.0 stops Aspire app talking to Azure resources | closed | mip1983 | <https://github.com/microsoft/aspire/issues/18214> |
| Issue | #8646 | No option for Adding .NET Aspire Support | closed | dajma00 | <https://github.com/microsoft/aspire/issues/8646> |
| Issue | #20526 | Dashboard resource grid renders empty on .NET 11 RC1: OnSpacerBeforeVisible expects 4 parameters, JS sends 3 | closed | kadato | <https://github.com/microsoft/aspire/issues/20526> |
| Issue | #20389 | Only warn about CLI/SDK version skew when the CLI is older than the SDK | closed | eerhardt | <https://github.com/microsoft/aspire/issues/20389> |
| Issue | #14333 | [AspireE2E] "Close" is not localized when hovering over the Close button. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/14333> |
