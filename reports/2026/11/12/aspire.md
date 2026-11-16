# microsoft/aspire *(詳細モード)*

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 170 |
| オープン中の新規 PR     | 110 |
| クローズ (未マージ) PR  | 93 |
| 新規 Issue              | 113 |
| クローズ Issue          | 372 |
| 主要コントリビューター  | davidfowl, IEvangelist, aspire-repo-bot[bot], sebastienros, eerhardt, ellahathaway |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#22171](https://github.com/microsoft/aspire/pull/22171) — [release/17.0] Consolidate ordered Go AppHost backports （PR / open / joperezr）
  未マージ。Go AppHost 利用者は release/17.0 への順序付き backport を追跡し、main の変更と配布版を区別してください。
- **⚠ 破壊的変更** [#21976](https://github.com/microsoft/aspire/pull/21976) — Make generated Go SDK APIs idiomatic （PR / merged / IEvangelist）
  Go SDK を再生成し、numeric 型・functional option・削除された obsolete symbol の利用箇所を修正してください。
- **⚠ 破壊的変更** [#21871](https://github.com/microsoft/aspire/pull/21871) — Support SPA fallback for static website publishing （PR / open / spboyer）
  未マージ。静的公開は SPA fallback が既定有効となる提案で、404 を維持するサイトは `EnableSpaFallback = false` を確認してください。
- **⚠ 破壊的変更** [#21843](https://github.com/microsoft/aspire/pull/21843) — Modernize Azure Sandbox provisioning with generated SDK types （PR / open / mitchdenny）
  未マージ。Sandbox provisioning 利用者は生成 SDK の ARM API と naming defaults の差分を確認してください。既存 AppHost API は維持する方針です。
- **⚠ 破壊的変更** [#21795](https://github.com/microsoft/aspire/issues/21795) — Aspire 17 rejects previously accepted empty parameter values; clarify breaking change and dashboard failure （Issue / open / joperezr）
  未解決の互換性報告です。Aspire 17 で空文字 parameter を使う利用者は入力検証と Dashboard の失敗動作を確認してください。
- **⚠ 破壊的変更** [#21407](https://github.com/microsoft/aspire/pull/21407) — Migrate Azure Functions integration to Project V2 （PR / open / karolz-ms）
  未マージ。Functions AppHost 利用者は Project V2 の `AddDotnetAzureFunction` と IDE / CLI の build・launch 契約への移行を確認してください。
- **⚠ 破壊的変更** [#21260](https://github.com/microsoft/aspire/pull/21260) — Add browser-facing origin references for CORS and redirect configuration （PR / merged / danegsta）
  CORS / redirect を組む利用者はブラウザー向け origin と物理 endpoint を区別し、publisher が扱う新しい origin reference を確認してください。
- **⚠ 破壊的変更** [#20825](https://github.com/microsoft/aspire/pull/20825) — Obsolete AddCSharpApp in favor of AddDotnetProject （PR / merged / mitchdenny）
  10月9日の期間前マージで今回更新された項目。`AddCSharpApp` は警告付き非推奨となり、`Aspire.Hosting.Dotnet` の `AddDotnetProject` へ移行してください。
- **⚠ 破壊的変更** [#20756](https://github.com/microsoft/aspire/pull/20756) — Hide terminal hosts by default without a visibility option （PR / merged / mitchdenny）
  10月7日の期間前マージ。`TerminalOptions.ShowTerminalHost` は削除済みで、表示は Dashboard の Show hidden resources を使います。
- **⚠ 破壊的変更** [#20730](https://github.com/microsoft/aspire/pull/20730) — Migrate Dashboard product telemetry and add CLI Azure Monitor log export （PR / merged / JamesNK）
  10月9日の期間前マージ。製品 telemetry の Azure Monitor 直接送信と CLI log export への移行であり、現行の opt-out / privacy 設定を確認してください。
- **⚠ 破壊的変更** [#20614](https://github.com/microsoft/aspire/pull/20614) — Raise Aspire's minimum supported .NET version to .NET 10 （PR / merged / DamianEdwards）
  10月6日の期間前マージ。次期 major の最低 .NET は10となるため、.NET 8 / 9 向けアプリは対応する旧 Aspire 系列の保守状況と移行計画を確認してください。
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.4 （PR / open / sebastienros）
  未マージ。Kafka telemetry の semantic convention 更新による属性・計測差分を確認してください。OpenTelemetry NuGet の版自体は変更しない提案です。
- **⚠ セキュリティ** [#22170](https://github.com/microsoft/aspire/pull/22170) — Merge release/13.6 into main after 13.6.5 security release （PR / open / joperezr）
  13.6.5 の修正を main へ戻す PR は未マージですが、利用者の更新要否は下記 advisory の修正済みバージョンに従って判断してください。
- **⚠ セキュリティ** [#22148](https://github.com/microsoft/aspire/issues/22148) — Microsoft Security Advisory CVE-2026-118740 - Aspire Security Feature Bypass Vulnerability （Issue / open / bribrothers）
  **Dashboard を13.6.5以上へ更新**してください。未認証 NotFound route からの telemetry 削除と、一部構成での browser token 漏えいに対応し、13.6.3 / 13.6.4 も修正済みではありません。
- **⚠ セキュリティ** [#22117](https://github.com/microsoft/aspire/pull/22117) — Build(deps): Bump node-forge from 1.4.0 to 1.4.2 in /extension （PR / open / dependabot[bot]）
  未マージ。extension の node-forge 1.4.2 更新候補で、配布 extension の修正取り込みを別途確認してください。
- **⚠ セキュリティ** [#22101](https://github.com/microsoft/aspire/issues/22101) — Microsoft Security Advisory CVE-2026-120778 - Aspire Elevation of Privilege Vulnerability （Issue / open / bribrothers）
  **CLI を13.6.5以上へ更新**してください。安全でない一時ディレクトリ経由で、開発者権限の MSBuild 実行に影響する問題です。
- **⚠ セキュリティ** [#22100](https://github.com/microsoft/aspire/issues/22100) — Microsoft Security Advisory CVE-2026-120792 - Aspire Information Disclosure Vulnerability （Issue / open / bribrothers）
  **CLI を13.6.5以上へ更新**してください。deprecated MCP scanner の固定一時ファイル経由で設定内容が漏えいする問題です。
- **⚠ セキュリティ** [#22092](https://github.com/microsoft/aspire/issues/22092) — Microsoft Security Advisory CVE-2026-120006 - Aspire Elevation of Privilege Vulnerability （Issue / open / bribrothers）
  **AppHost の Hosting 依存を13.6.5以上へ更新し再起動**してください。Dashboard cookie が linked service に渡り、開発者権限で実行され得るシナリオに対応します。
- **⚠ セキュリティ** [#21761](https://github.com/microsoft/aspire/pull/21761) — Bump node-forge from 1.4.0 to 1.4.1 in /extension （PR / closed / dependabot[bot]）
  未マージでクローズ。node-forge 1.4.1 案の適用完了とは扱わず、後続の1.4.2更新を追跡してください。
- **⚠ セキュリティ** [#21736](https://github.com/microsoft/aspire/pull/21736) — Build(deps): Bump the npm group across 1 directory with 25 updates （PR / open / dependabot[bot]）
  未マージ。複数 npm 依存の脆弱性修正を含む候補であり、既に配布済みと解釈せず lockfile と extension リリースを確認してください。
- **⚠ セキュリティ** [#20789](https://github.com/microsoft/aspire/pull/20789) — Bump source-map-js from 1.2.1 to 1.2.2 in /extension （PR / merged / dependabot[bot]）
  10月7日の期間前マージ。source-map-js の DoS 修正（CVE-2026-93749）を含み、extension の依存が1.2.2以上か確認してください。
- **⚠ セキュリティ** [#20757](https://github.com/microsoft/aspire/pull/20757) — Bump proxy-addr from 2.0.7 to 2.0.8 in /extension （PR / merged / dependabot[bot]）
  10月7日の期間前マージ。proxy-addr の修正（CVE-2026-90711）を含み、extension の依存が2.0.8以上か確認してください。
- **⚠ セキュリティ** [#20716](https://github.com/microsoft/aspire/pull/20716) — Bump the npm group across 1 directory with 23 updates （PR / closed / dependabot[bot]）
  未マージでクローズ。更新案の close を脆弱性の解決証拠とせず、後続 group 更新の取り込みを確認してください。
- **非推奨/廃止** [#21958](https://github.com/microsoft/aspire/issues/21958) — `aspire doctor` warns about deprecated `mcp start` arguments the `aspire agent init` repair refuses to rewrite （Issue / open / soarkit）
  未解決。`aspire doctor` と `aspire agent init` の旧 MCP 引数修復が一致しない報告で、既存設定の自動移行を過信せず手動差分を確認してください。
- **非推奨/廃止** [#20178](https://github.com/microsoft/aspire/pull/20178) — Update Azure.Provisioning.AppContainers to 1.3.0-beta.2 （PR / merged / eerhardt）
  provisioning の独自カスタマイズは `ManagedEnvironmentStorageAzureFile` から `Properties.AzureFile` へ移行し、.NET project の preview API と非 project の stable API を区別してください。
- **GA 昇格** [#22146](https://github.com/microsoft/aspire/pull/22146) — [release/17.0] Update .NET servicing dependencies and adopt .NET 11 GA （PR / merged / aspire-repo-bot[bot]）
  release/17.0 の SDK / runtime / package 依存が GA / servicing 版へ更新されました。Npgsql EF 系は RC pin が残るため全依存が stable とは限りません。
- **GA 昇格** [#22070](https://github.com/microsoft/aspire/pull/22070) — Update .NET servicing dependencies and adopt .NET 11 GA （PR / merged / joperezr）
  main 側も .NET 11 GA へ更新。既存 TFM はこの PR で変えず、SDK pin と provider の互換制約を確認してください。

**advisory に基づく更新単位**：Dashboard は image・SDK package・CLI bundle・独自 path の実際の選択先を13.6.5以上へ更新し、container は再作成してください。AppHost は明示的な Hosting.AppHost / 中央管理 package または暗黙参照元の AppHost SDK を更新して restore・再ビルド・再起動します。CLI も別途13.6.5以上が必要で、.NET SDK / runtime だけの更新ではいずれも置き換わりません。
CLI advisory の影響範囲は NuGet tool が `>=13.2.0,<13.6.5`、native NuGet が `>=13.3.0,<13.6.5`、npm が `>=13.4.2,<13.6.5` です。Dashboard と Hosting の影響範囲は13.6.5未満です。

## このリポジトリの要点

- **最優先は4件の advisory**：Dashboard（CVE-2026-118740）、Hosting（CVE-2026-120006）、CLI（CVE-2026-120778 / CVE-2026-120792）を各々13.6.5以上へ更新する必要があります。
- microsoft/aspire#21976 の Go 生成 API 整理は破壊的変更。browser-facing origin 参照（microsoft/aspire#21260）により、CORS / Entra redirect と service discovery を分離します。
- main / release/17.0 は .NET 11 GA へ更新されましたが、Npgsql EF の RC 制約は残ります。最低 .NET 10 化などの期間前マージは新規マージと分けて記載しています。
- Go runtime の並行性・callback・cancellation を強化。MCP endpoint・required-command・compute mapping の stable 化は未マージの提案で、製品全体の GA と混同しません。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#21976](https://github.com/microsoft/aspire/pull/21976) — Make generated Go SDK APIs idiomatic

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +21483 / -7500
- マージ日時 (UTC): `2026-11-10 13:28:49`

**変更概要**

生成 Go SDK を通常の Go ツールで扱いやすい API に変更します。
`gofmt` による整形、CLR numeric type を保持した生成、optional 引数の functional option 化を行います。
ATS の obsolete metadata を反映して旧 symbol を除外し、SDK export と各 AppHost 呼び出しを同期しました。

<details><summary>変更ファイル (70 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/polyglot-validation/test-go.sh` | 1 | 1 |
| `src/Aspire.Cli/Templating/Templates/go-starter/apphost.go` | 1 | 1 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.ApiProjection.cs` | 160 | 24 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.cs` | 554 | 100 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoApiModel.cs` | 3 | 4 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoDeclarationScanner.cs` | 7 | 4 |
| `src/Aspire.Hosting.CodeGeneration.Go/Resources/base.go` | 10 | 8 |
| `src/Aspire.Hosting.CodeGeneration.Go/Resources/transport.go` | 18 | 2 |
| `src/Aspire.Hosting.RemoteHost/AtsCapabilityScanner.cs` | 23 | 10 |
| `src/Aspire.TypeSystem/AtsCapabilityInfo.cs` | 30 | 0 |
| `src/Aspire.TypeSystem/AtsExportedValueInfo.cs` | 7 | 0 |
| `src/Aspire.TypeSystem/AttributeDataReader.cs` | 6 | 0 |
| `src/Shared/CodeGeneration/AtsTypeSystemCompatibility.cs` | 51 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/GoKubernetesDeployTests.cs` | 3 | 3 |
| `tests/Aspire.Cli.Tests/Snapshots/NewCommandTemplateConfigPersistenceTests.GoStarterHonorsRedisChoice_choice=default.verified.go` | 1 | 1 |
| _... 他 55 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `f2361e4` Improve generated Go SDK APIs
- `92555e1` Simplify generated Go options
- `b881f2a` Address Go SDK review feedback
- `a9e1b75` Filter obsolete Go SDK symbols
- `1bef27c` Harden Go SDK compatibility
- `a756074` Update Go numeric pointer consumers
- `f88e4e6` Correct Go pointer helpers by ATS type
- `bda1fff` Migrate Go validation AppHosts
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：一律 `float64` だった numeric projection が `int` / `int64` / `float32` などに分かれ、obsolete method・property・DTO member・enum 等が生成対象から外れます。
`f2361e4` / `92555e1` で `HttpEndpointPort(8080)` など sealed option interface の実装を導入。`*XxxOptions` は互換 option として残します。
`a9e1b75` は obsolete filter、`a756074` / `f88e4e6` は数値 pointer と helper の整合を修正しています。wire の JSON number 表現は維持します。

**既存利用者への影響**

SDK を再生成し、型チェックで数値引数と obsolete symbol を洗い出してください。release/17.0 backport は未マージなので導入版を区別します。

### [#21260](https://github.com/microsoft/aspire/pull/21260) — Add browser-facing origin references for CORS and redirect configuration

- 作者: danegsta / 状態: MERGED
- ラベル: `area-app-model` `breaking-change`
- 変更行数: +6793 / -474
- マージ日時 (UTC): `2026-11-06 02:42:46`

**変更概要**

ブラウザーが使う URL が物理 endpoint と異なる環境向けに、遅延評価する origin 参照を追加しました。
custom URL・`*.dev.localhost`・Codespaces forwarding を CORS と認証 redirect に使い、内部 service discovery は変えません。
Entra redirect helper と複数言語 SDK、Azure / Compose / Kubernetes 等の publisher に反映しています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/EntraId/EntraId.AppHost/AppHost.cs` | 1 | 1 |
| `playground/EntraId/EntraId.AppHost/Properties/launchSettings.json` | 9 | 9 |
| `playground/EntraId/EntraId.Web/Properties/launchSettings.json` | 1 | 1 |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppEnvironmentResource.cs` | 12 | 0 |
| `src/Aspire.Hosting.Azure.AppContainers/BaseContainerAppContext.cs` | 13 | 6 |
| `src/Aspire.Hosting.Azure.AppService/AzureAppServiceEnvironmentResource.cs` | 8 | 0 |
| `src/Aspire.Hosting.Azure.AppService/AzureAppServiceWebsiteContext.cs` | 6 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdApplicationResource.cs` | 14 | 8 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdEndpointRedirectUri.cs` | 0 | 142 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdResourceExtensions.cs` | 42 | 10 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdRunModeBrowserOrigin.cs` | 52 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/README.md` | 4 | 4 |
| `src/Aspire.Hosting.Azure.Sandboxes/Aspire.Hosting.Azure.Sandboxes.csproj` | 1 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/AzureSandboxEndpointPropertyValueProvider.cs` | 3 | 0 |
| `src/Aspire.Hosting.Azure.Sandboxes/README.md` | 3 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (24 件)</summary>

- `4743c83` Add browser-facing origin references for endpoint consumers
- `9638b31` Preserve wrapped manifest providers and nested URI formatting
- `c05be4e` Finalize browser origin properties and publisher resolution
- `f529d7b` Fix origin publication review feedback
- `130bb01` Merge origin/main into browser endpoint resolution
- `a8f21e7` Refresh browser origin codegen and Foundry snapshots
- `e3b643e` Preserve opaque manifest providers and verify deployed browser origins
- `cc2d97f` Merge origin/main into browser endpoint resolution
- _... 他 16 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更を含む endpoint 契約更新**：`PrimaryBrowserOrigin` は優先する1つの HTTP(S) origin、`BrowserOrigins` は重複なしの comma-separated origin を返します。path・query・fragment・credentials は含めません。
`4743c83` で参照を導入し、`9638b31` 以降で wrapped manifest provider と nested URI の解決、publish mapping を補強。旧 `EntraIdEndpointRedirectUri` 実装を除去し、`WithRedirectUris(endpoint, path)` は scalar origin を直接利用します。
publish 時はローカル表示 URL でなく配置先の公開 endpoint に解決し、非対応の internal / non-HTTP endpoint は publisher の制約に従います。

**既存利用者への影響**

CORS 許可 origin と redirect URI の期待値、生成 Bicep 等を確認してください。複数 origin のリストを単一 base URL として使わないでください。

### [#21827](https://github.com/microsoft/aspire/pull/21827) — Harden Go SDK runtime and complete typed API export metadata

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +2787 / -1948
- マージ日時 (UTC): `2026-11-09 14:49:44`

**変更概要**

Go AppHost の callback と builder chain が並行して動く場合の race を修正します。
不正引数や callback の encode 失敗は該当呼び出しのエラーとし、無関係な pending operation の切断を避けます。
SDK export には field / constant の構造化された型と optionality を追加しました。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-output-formats.md` | 16 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.ApiProjection.cs` | 28 | 6 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.cs` | 15 | 7 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoApiExportWriter.cs` | 5 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/GoApiModel.cs` | 10 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/Resources/base.go` | 73 | 28 |
| `src/Aspire.Hosting.CodeGeneration.Go/Resources/transport.go` | 137 | 29 |
| `src/Aspire.Hosting.RemoteHost/CancellationTokenRegistry.cs` | 105 | 71 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/AtsGoCodeGeneratorTests.cs` | 266 | 16 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/GoApiExportTests.cs` | 83 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/AtsGeneratedAspire.verified.go` | 351 | 186 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/EscapedMetadataGeneratedAspire.verified.go` | 10 | 8 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/GoApiExportTests.FocusedApiExport.verified.json` | 6 | 2 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/GoApiExportTests.GoOnlySurface.verified.json` | 60 | 20 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 1591 | 1573 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `bb8bb7d` Harden Go SDK concurrency, framing, callbacks and cancellation
- `5a78841` Export typed Go fields and constants with ATS optionality
- `9b38b2c` Strengthen Go runtime race and header limit regressions
- `81d9472` Merge remote-tracking branch 'origin/main' into ievangelist-go-runtim…
- `a9136bb` Refresh Go snapshot for integrated hosting APIs
- `447afd7` Refresh merged manifest Go projection for synchronized errors
- `dc92784` Fix Go callback and cancellation races
- `53a4dc4` Refresh two-pass Go snapshot for callback cancellation adapters
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`bb8bb7d` / `dc92784` が sticky error・lazy accessor・callback・cancellation を同期化し、header と cancellation request の処理を制限します。
collection の `ToJSON()` は既存シグネチャを保ち、追加 `Err()` で失敗を確認できます。`5a78841` で schema version 1 に `type` / `optional` metadata を追加し、ATS の定義を正とします。
cancel watcher は invocation の FIFO 書き込み投入後に有効化され、cancel RPC は5秒 timeout。今回の変更自体は廃止告知ではありません。

**既存利用者への影響**

SDK を再生成し、collection serialize 後は必要に応じて `Err()` を確認してください。独自 export parser は追加 metadata を許容するよう確認します。

### [#21790](https://github.com/microsoft/aspire/pull/21790) — ci: catch playground compile failures in the package build

- 作者: radical / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +10 / -3
- マージ日時 (UTC): `2026-11-05 16:28:02`

**変更概要**

Azure API Management playground の obsolete API による compile 失敗を修正します。
サンプルを `AddDotnetProject` と対応 package 参照へ移行しました。
package build で supported playground も compile し、source-index build まで見つからなかった失敗を PR CI で検出します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/build-packages.yml` | 0 | 1 |
| `docs/ci/ci-pipeline-optimizations.md` | 8 | 1 |
| `playground/AzureApiManagement/AzureApiManagement.AppHost/AppHost.cs` | 1 | 1 |
| `playground/AzureApiManagement/AzureApiManagement.AppHost/AzureApiManagement.AppHost.csproj` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `f09aa73` fix(playground): restore Azure API Management build
- `1428eee` ci: compile supported playgrounds in the package build

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`f09aa73` は AppHost の旧 `AddProject<TProject>` を置換、`1428eee` は build-packages の playground skip を除去します。
製品 API の新たな削除ではありません。掲載 benchmark は package build 中央値が約204秒から253秒へ増加したため、検出範囲拡大には CI 所要時間のトレードオフがあります。

**既存利用者への影響**

通常のアプリ移行は不要ですが、同じ旧 API を流用した AppHost は `AddDotnetProject` を確認してください。

### [#21304](https://github.com/microsoft/aspire/pull/21304) — build: unify bundle build, publish and packaging in MSBuild

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +1410 / -666
- マージ日時 (UTC): `2026-11-07 00:29:17`

**変更概要**

GitHub Actions と Azure Pipelines に重複していた native bundle の publish・sign・package 処理を MSBuild に統合します。
component を署名してから埋め込み、CLI を署名してから配布 package を作る順序を共通化しました。
入力 RID・version・configuration・signing mode に応じて同じ bundle build を使います。

<details><summary>変更ファイル (36 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.agents/skills/pr-testing/ci-infra-testing.md` | 4 | 3 |
| `.github/workflows/auto-rerun/rerun-pull-request.js` | 3 | 0 |
| `.github/workflows/build-cli-native-archives.yml` | 26 | 74 |
| `docs/ci/native-cli-packaging.md` | 36 | 5 |
| `docs/ci/test-trigger-selector-design.md` | 1 | 1 |
| `docs/specs/bundle.md` | 45 | 14 |
| `eng/AfterSigning.targets` | 2 | 2 |
| `eng/Build.props` | 4 | 20 |
| `eng/Bundle.proj` | 504 | 149 |
| `eng/Signing.props` | 4 | 0 |
| `eng/Versions.props` | 3 | 0 |
| `eng/build.ps1` | 4 | 3 |
| `eng/build.sh` | 8 | 6 |
| `eng/dashboardpack/Common.projitems` | 1 | 1 |
| `eng/github-ci/test-trigger-map.yml` | 8 | 4 |
| _... 他 21 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `7b86f6b` build: reuse prepared Dashboard output when assembling bundles
- `5cf537b` build: consolidate native bundle production in MSBuild
- `5ec6039` ci: recognize shared native bundle steps in transient retries
- `09a3491` Merge main and preserve native bundle signing safeguards
- `fae4509` fix(build): keep Dashboard warning checks CI-only
- `fa6d0ca` fix(build): use published component paths when assembling bundles
- `e920f5f` Merge main and preserve Dashboard package-signing rules
- `7bf070a` Merge main and preserve both CI retry regression suites
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`5cf537b` を中心に `eng/Bundle.proj` へ処理を集約し、`7b86f6b` は準備済み Dashboard output を再利用します。
`CreateLayout` は明示 component path が不正なら失敗し、後続コミットで publish path・署名順序・retry 判定を調整。利用者向け API の廃止ではありません。

**既存利用者への影響**

アプリの移行は不要です。独自 bundle を構築する配布担当者は従来 CI ステップではなく共通 MSBuild entry point と入力を確認してください。

### [#20178](https://github.com/microsoft/aspire/pull/20178) — Update Azure.Provisioning.AppContainers to 1.3.0-beta.2

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +356 / -364
- マージ日時 (UTC): `2026-11-09 15:08:43`

**変更概要**

AppContainers provisioning SDK を1.3.0-beta.2へ更新し、新しいモデル・API version・managed environment の命名要件に対応しました。
既存 environment 名と ASP.NET Core data protection を維持するよう明示設定を補います。
Bicep snapshot と生成 provisioning proxy も更新しています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 1 | 1 |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppExpressSupport.cs` | 0 | 25 |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppExtensions.cs` | 19 | 25 |
| `src/Aspire.Hosting.Azure.AppContainers/ContainerAppContext.cs` | 4 | 7 |
| `src/Aspire.Hosting.Azure.Provisioning.AppContainers/AtsTypeMappings.cs` | 7 | 1 |
| `src/Aspire.Hosting.Azure.Provisioning.Generators/AspireProvisioningProxyGenerator.cs` | 2 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdAppRoleAssignmentTests.Publish_ResolvesIdentityDependenciesAfterPreparation_explicitIdentity=False#02.verified.bicep` | 2 | 2 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdAppRoleAssignmentTests.Publish_ResolvesIdentityDependenciesAfterPreparation_explicitIdentity=True#02.verified.bicep` | 2 | 2 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdProvisioningTests.Publish_FederatedManagedIdentityCredential_PublishesConsumerIdentityClientId.verified.bicep` | 2 | 2 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdStarterScenarioPublishTests.Publish_StarterWithEntra_ConfiguresTheApiAndTheWebFrontEnd#03.verified.bicep` | 2 | 2 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdStarterScenarioPublishTests.Publish_StarterWithEntra_ConfiguresTheApiAndTheWebFrontEnd#04.verified.bicep` | 2 | 2 |
| `tests/Aspire.Hosting.Azure.Provisioning.Tests/AspireProvisioningProxyGeneratorTests.cs` | 18 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureContainerAppExpressTests.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Azure.Tests/AzureContainerAppsTests.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Azure.Tests/Snapshots/AzureContainerAppEnvironmentExtensionsTests.AddAsExistingResource_RespectsExistingAzureResourceAnnotation_ForAzureContainerAppEnvironmentResource.verified.bicep` | 1 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `71d7e27` Update Azure.Provisioning.AppContainers to 1.3.0-beta.1
- `4feb1a2` Update Azure.Provisioning.AppContainers to 1.3.0-beta.2
- `c55f8c3` Use SDK naming requirements for unique ACA environment names
- `f4f97ec` Update Container Apps Express for beta.2
- `ec9e507` Refresh Container Apps output reference snapshot
- `43e7ef0` Preserve Container Apps Express environment properties
- `9eaaf82` Use stable API for Container Apps Express
- `c70d7bd` Fix AppContainers provisioning proxy generation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

旧 `ManagedEnvironmentStorageAzureFile` は `Properties.AzureFile` に置換。Azure.Provisioning 1.6.0 / Azure.Core 1.62.0 へ依存を更新しました。
`c55f8c3` は旧命名を保持し、unique naming は60文字制限を維持。.NET project の Container Apps は data protection のため `2026-03-02-preview`、非 project は SDK の `2026-07-01` stable default を使用します。
stable-only property を使う独自設定は `ResourceVersion` を明示する必要があり、自動 data protection は preview-only である点に注意してください。

**既存利用者への影響**

SDK 型を直接操作するカスタマイズは property と ResourceVersion を確認してください。生成差分だけで既存環境の名前変更を前提にしないでください。

### [#22146](https://github.com/microsoft/aspire/pull/22146) — [release/17.0] Update .NET servicing dependencies and adopt .NET 11 GA

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +189 / -166
- マージ日時 (UTC): `2026-11-11 19:30:03`

**変更概要**

main 向けの .NET servicing / GA 更新を release/17.0 に backport しました。
repository SDK・runtime・framework package・Blazor image と関連テストの pin を更新します。
Npgsql EF 系は provider の公開状況に合わせた RC 制約が残ります。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 17 | 16 |
| `eng/Version.Details.xml` | 58 | 58 |
| `eng/Versions.props` | 68 | 70 |
| `global.json` | 2 | 2 |
| `playground/AspireWithMaui/AspireWithMaui.MauiClient/AspireWithMaui.MauiClient.csproj` | 3 | 3 |
| `playground/BlazorHosted/Directory.Packages.props` | 2 | 2 |
| `src/Aspire.Hosting.Blazor/Aspire.Hosting.Blazor.csproj` | 2 | 2 |
| `src/Components/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.csproj` | 8 | 1 |
| `src/Components/Aspire.Npgsql.EntityFrameworkCore.PostgreSQL/Aspire.Npgsql.EntityFrameworkCore.PostgreSQL.csproj` | 7 | 0 |
| `src/Components/Aspire.Pomelo.EntityFrameworkCore.MySql/Aspire.Pomelo.EntityFrameworkCore.MySql.csproj` | 1 | 1 |
| `tests/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.Tests/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.Tests.csproj` | 5 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/TypeScriptBlazorGatewayTests.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Blazor.Tests/AddBlazorGatewayTests.cs` | 3 | 3 |
| `tests/Aspire.Hosting.Blazor.Tests/Snapshots/AddBlazorGatewayTests.AddBlazorGateway_InPublishMode_UsesFileBasedGateway.verified.Dockerfile` | 2 | 2 |
| `tests/Aspire.Hosting.Blazor.Tests/Snapshots/AddBlazorGatewayTests.BlazorWasmPublishCompanion_UsesNet11Sdk.verified.Dockerfile` | 2 | 2 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `1783538` Update .NET servicing dependencies and adopt .NET 11 GA
- `be52d13` Fix servicing dependency conflicts with stable NuGet 8
- `dbb1189` Stabilize 17.0 package versions
- `f9b482f` Update Npgsql EF to 11.0.0-rc.3 and override HealthChecks EF to rc.3
- `cd6200a` Hard-code HealthChecks EF override in Npgsql EF test projects
- `02c2b65` Bump Microsoft.Data.SqlClient to 7.1.1 for all TFMs
- `37db9ac` Use Microsoft.Data.Sqlite.Core 11.0.0 for all TFMs
- `65943de` Update Npgsql EF pin comment for RC3

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`1783538` は .NET 11 GA 採用、`be52d13` は stable NuGet 8 の整合、`dbb1189` は17.0 package version を整理します。
後続の `f9b482f` / `cd6200a` は Npgsql EF と HealthChecks を11.0.0-rc.3へ揃え、`02c2b65` は SqlClient 7.1.1、`37db9ac` は Sqlite.Core 11.0.0 を全 TFM へ適用しています。公開 API 削除ではありません。

**既存利用者への影響**

SDK / package の restore 結果と Npgsql EF の厳密な版制約を確認してください。すべての依存が GA 化したとみなさないでください。

### [#22070](https://github.com/microsoft/aspire/pull/22070) — Update .NET servicing dependencies and adopt .NET 11 GA

- 作者: joperezr / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +187 / -164
- マージ日時 (UTC): `2026-11-11 20:41:18`

**変更概要**

main の repository SDK と framework 依存を11月の servicing および .NET 11 GA に更新します。
SDK pin は11.0.100、.NET 10 runtime 系は10.0.15、test SDK は10.0.404へ更新しました。
CLI は stable NuGet 8 を採用し、既存 target framework はこの更新では変更しません。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 17 | 16 |
| `eng/Version.Details.xml` | 58 | 58 |
| `eng/Versions.props` | 67 | 69 |
| `global.json` | 2 | 2 |
| `playground/AspireWithMaui/AspireWithMaui.MauiClient/AspireWithMaui.MauiClient.csproj` | 3 | 3 |
| `playground/BlazorHosted/Directory.Packages.props` | 2 | 2 |
| `src/Aspire.Hosting.Blazor/Aspire.Hosting.Blazor.csproj` | 2 | 2 |
| `src/Components/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.csproj` | 7 | 0 |
| `src/Components/Aspire.Npgsql.EntityFrameworkCore.PostgreSQL/Aspire.Npgsql.EntityFrameworkCore.PostgreSQL.csproj` | 7 | 0 |
| `src/Components/Aspire.Pomelo.EntityFrameworkCore.MySql/Aspire.Pomelo.EntityFrameworkCore.MySql.csproj` | 1 | 1 |
| `tests/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.Tests/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.Tests.csproj` | 5 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/TypeScriptBlazorGatewayTests.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Blazor.Tests/AddBlazorGatewayTests.cs` | 3 | 3 |
| `tests/Aspire.Hosting.Blazor.Tests/Snapshots/AddBlazorGatewayTests.AddBlazorGateway_InPublishMode_UsesFileBasedGateway.verified.Dockerfile` | 2 | 2 |
| `tests/Aspire.Hosting.Blazor.Tests/Snapshots/AddBlazorGatewayTests.BlazorWasmPublishCompanion_UsesNet11Sdk.verified.Dockerfile` | 2 | 2 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `c355949` Update .NET servicing dependencies and adopt .NET 11 GA
- `98a6fbb` Fix servicing dependency conflicts with stable NuGet 8
- `024de24` Merge main into .NET servicing update
- `b7bc012` Port .NET servicing updates from release/17.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`c355949` は framework package 11.0.0 と template-engine 11.0.100、Cosmos 3.63.2 などを採用し、`98a6fbb` が NuGet 整合を修正。
`b7bc012` で release/17.0 の servicing 修正も反映しています。元の本文にある Npgsql RC1 pin は後続変更前の記載なので、最終 restore graph と release 側の RC3 調整を確認してください。

**既存利用者への影響**

ソース build / 独自 image は SDK・runtime pin を更新してください。アプリ TFM の一律変更や、Npgsql provider の GA を意味する更新ではありません。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #22172 | Target release/17.0 in scheduled API and ATS diff workflows | eerhardt | <https://github.com/microsoft/aspire/pull/22172> |
| #22174 | [release/17.0] Fix Visual Studio launch for unbuilt project resources | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22174> |
| #21995 | Keep dashboard views removed while they initialize from ending the circuit | sebastienros | <https://github.com/microsoft/aspire/pull/21995> |
| #22173 | [release/17.0] Update API and ATS baselines with shipped Aspire 13.6 surface area (#22152) | eerhardt | <https://github.com/microsoft/aspire/pull/22173> |
| #21927 | Scope E2E state file bridge fake timers to each test's async context | davidfowl | <https://github.com/microsoft/aspire/pull/21927> |
| #21922 | Scope VS Code extension spawnCli fake timers to the test's async context | davidfowl | <https://github.com/microsoft/aspire/pull/21922> |
| #22081 | Fix Visual Studio launch for unbuilt project resources | karolz-ms | <https://github.com/microsoft/aspire/pull/22081> |
| #22152 | Update API and ATS baselines with shipped Aspire 13.6 surface area | eerhardt | <https://github.com/microsoft/aspire/pull/22152> |
| #22123 | [release/17.0] Harden Go SDK runtime and complete typed API export metadata | IEvangelist | <https://github.com/microsoft/aspire/pull/22123> |
| #21446 | Fix lost resource logger announcements for concurrent subscriber watchers | davidfowl | <https://github.com/microsoft/aspire/pull/21446> |
| #21416 | Fix VS Code resource attach name resolution | ellahathaway | <https://github.com/microsoft/aspire/pull/21416> |
| #20463 | Add Open resource source action for source-backed AppHost resources | ellahathaway | <https://github.com/microsoft/aspire/pull/20463> |
| #22099 | Fix generated subnet NSG rule names containing CIDRs | adamint | <https://github.com/microsoft/aspire/pull/22099> |
| #21921 | Report Java debug startup timeout E2E failures separately from cleanup | davidfowl | <https://github.com/microsoft/aspire/pull/21921> |
| #22145 | Match dashboard All resources content and sidebar icons | JamesNK | <https://github.com/microsoft/aspire/pull/22145> |
| #22113 | Improve CLI Git diagnostics, timeouts, and config-source errors | JamesNK | <https://github.com/microsoft/aspire/pull/22113> |
| #21521 | Don't overwrite Kubernetes templates when objects share a name | davidfowl | <https://github.com/microsoft/aspire/pull/21521> |
| #21514 | Fix multi-platform project container builds (RuntimeIdentifiers passed as one RID) | davidfowl | <https://github.com/microsoft/aspire/pull/21514> |
| #21523 | Use IPv4 loopback for Kusto emulator health checks to avoid Linux multi-connect failure | davidfowl | <https://github.com/microsoft/aspire/pull/21523> |
| #21436 | Return 400 for OTLP JSON requests with malformed ids | tahakocal | <https://github.com/microsoft/aspire/pull/21436> |
| #21943 | Simplify the dashboard around its two main jobs | maddymontaquila | <https://github.com/microsoft/aspire/pull/21943> |
| #21913 | Allocate the next dashboard run ID when two dashboards start in the same millisecond | davidfowl | <https://github.com/microsoft/aspire/pull/21913> |
| #21861 | Add dashboard resource-selector dropdown | JamesNK | <https://github.com/microsoft/aspire/pull/21861> |
| #21442 | Release native socket listener slot before closing the connection | davidfowl | <https://github.com/microsoft/aspire/pull/21442> |
| #21499 | Fix CLI telemetry persistence tests racing the exporter's eager storage drain | davidfowl | <https://github.com/microsoft/aspire/pull/21499> |
| #21991 | [release/17.0] Add initial WSLc publish/deploy support with explicit capability limits | danegsta | <https://github.com/microsoft/aspire/pull/21991> |
| #21990 | [release/17.0] Make WithOutputDiffing available through standard AppHost usings | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21990> |
| #22107 | [release/17.0] Allow structured Kubernetes manifest field values | IEvangelist | <https://github.com/microsoft/aspire/pull/22107> |
| #22066 | [release/17.0] Use LocalRedirect in dashboard ValidateTokenMiddleware (CodeQL open redirect) | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22066> |
| #22114 | [release/17.0] Add Go AppHost initialization and stable restore E2E coverage | IEvangelist | <https://github.com/microsoft/aspire/pull/22114> |
| #22058 | [release/17.0] Keep dashboard views removed while they initialize from ending the circuit | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22058> |
| #21592 | Warn when AspireCliPath overrides a DNX AspireCliInvocationMode | davidfowl | <https://github.com/microsoft/aspire/pull/21592> |
| #21884 | [release/17.0] Update container image tags to newer minor and patch releases | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21884> |
| #22089 | [release/17.0] Detect file-based AppHosts with versionless #:package directives (CPM) | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22089> |
| #22109 | [release/17.0] Backport CLI source and agent setup improvements | JamesNK | <https://github.com/microsoft/aspire/pull/22109> |
| #22103 | [release/17.0] Add Go AppHost editor support and debugger readiness coverage | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22103> |
| #22104 | [release/17.0] Complete Go starter validation and polyglot scenario readiness | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22104> |
| #22056 | [release/17.0] Temporarily disable build stabilization | joperezr | <https://github.com/microsoft/aspire/pull/22056> |
| #22067 | [release/17.0] Set Secure/HttpOnly/SameSite on the dashboard culture cookie (CodeQL SM02373) | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22067> |
| #22106 | [release/17.0] Preserve ASPIRE010 and add ASPIRE013 for required CLI bundles | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22106> |
| #22105 | [release/17.0] Close Go AppHost CLI preview readiness gaps | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22105> |
| #21997 | [release/17.0] Fix trace attribute filter freezing the traces page | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21997> |
| #21433 | Keep terminal host shutdown connection open until the notification is delivered | davidfowl | <https://github.com/microsoft/aspire/pull/21433> |
| #21806 | Add Go AppHost initialization and stable restore E2E coverage | IEvangelist | <https://github.com/microsoft/aspire/pull/21806> |
| #22082 | Detect file-based AppHosts with versionless #:package directives (CPM) | eerhardt | <https://github.com/microsoft/aspire/pull/22082> |
| #21874 | Add React frontend to Go starter template | IEvangelist | <https://github.com/microsoft/aspire/pull/21874> |
| #21766 | Address deferred review feedback for the modern dashboard | sebastienros | <https://github.com/microsoft/aspire/pull/21766> |
| #21824 | Allow structured Kubernetes manifest field values | IEvangelist | <https://github.com/microsoft/aspire/pull/21824> |
| #21823 | Close Go AppHost CLI preview readiness gaps | IEvangelist | <https://github.com/microsoft/aspire/pull/21823> |
| #21828 | Complete Go starter validation and polyglot scenario readiness | IEvangelist | <https://github.com/microsoft/aspire/pull/21828> |
| #21288 | Preserve ASPIRE010 and add ASPIRE013 for required CLI bundles | IEvangelist | <https://github.com/microsoft/aspire/pull/21288> |
| #21826 | Add Go AppHost editor support and debugger readiness coverage | IEvangelist | <https://github.com/microsoft/aspire/pull/21826> |
| #21957 | Don't probe the container runtime at startup when the app has no containers | davidfowl | <https://github.com/microsoft/aspire/pull/21957> |
| #21473 | Use a version-specific CLI bundle for pinned DNX AppHost invocations | davidfowl | <https://github.com/microsoft/aspire/pull/21473> |
| #21500 | Fix flaky terminal WebSocket close handshake abort (ProducerDisconnect test) | davidfowl | <https://github.com/microsoft/aspire/pull/21500> |
| #21503 | Fix bUnit JS timeout flakes in StructuredLogs/Traces/TraceDetails tests | davidfowl | <https://github.com/microsoft/aspire/pull/21503> |
| #22071 | [release/13.6] Merge internal/release/13.6 into release/13.6 | joperezr | <https://github.com/microsoft/aspire/pull/22071> |
| #21448 | Fix Text file busy race when exec'ing the mock gh script in Acquisition tests | davidfowl | <https://github.com/microsoft/aspire/pull/21448> |
| #21447 | Forward Redis WithArgs to redis-server in publish mode | davidfowl | <https://github.com/microsoft/aspire/pull/21447> |
| #21985 | Make WithOutputDiffing available through standard AppHost usings | MattKotsenas | <https://github.com/microsoft/aspire/pull/21985> |
| #21895 | Use LocalRedirect in dashboard ValidateTokenMiddleware (CodeQL open redirect) | eerhardt | <https://github.com/microsoft/aspire/pull/21895> |
| #21894 | Set Secure/HttpOnly/SameSite on the dashboard culture cookie (CodeQL SM02373) | eerhardt | <https://github.com/microsoft/aspire/pull/21894> |
| #21938 | Accept js-debug target-closed reply to Blazor hosted-global Page.close | davidfowl | <https://github.com/microsoft/aspire/pull/21938> |
| #21928 | Keep Azure tests that don't need DCP from launching it | davidfowl | <https://github.com/microsoft/aspire/pull/21928> |
| #21915 | Fix false positive in resource debug E2E privacy assertion | davidfowl | <https://github.com/microsoft/aspire/pull/21915> |
| #21471 | Fix flaky TerminalWebSocketTests final-output drain: deliver queued producer output before ending | davidfowl | <https://github.com/microsoft/aspire/pull/21471> |
| #21949 | Bound and retry GitHub downloads in Kubernetes E2E setup | davidfowl | <https://github.com/microsoft/aspire/pull/21949> |
| #21939 | Keep Java container env var tests from running the real dcp info | davidfowl | <https://github.com/microsoft/aspire/pull/21939> |
| #21969 | Propagate Go child resource errors through Build | IEvangelist | <https://github.com/microsoft/aspire/pull/21969> |
| #21307 | Update PackageValidationBaselineVersion to 13.6.4 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21307> |
| #21982 | Show configuration source repositories and Git acquisition progress | JamesNK | <https://github.com/microsoft/aspire/pull/21982> |
| #21890 | Stop idle extension polling | ellahathaway | <https://github.com/microsoft/aspire/pull/21890> |
| #21910 | Fix trace attribute filter freezing the traces page | sammychinedu2ky | <https://github.com/microsoft/aspire/pull/21910> |
| #21009 | Add initial WSLc publish/deploy support with explicit capability limits | danegsta | <https://github.com/microsoft/aspire/pull/21009> |
| #21962 | Harden KinD/Helm/kubectl and Radius install downloads in Kubernetes E2E tests | davidfowl | <https://github.com/microsoft/aspire/pull/21962> |
| #21932 | Write the WinUI E2E ready marker atomically so the test never reads an empty file | davidfowl | <https://github.com/microsoft/aspire/pull/21932> |
| #21556 | Keep captured output when ProcessCaptureRunner's post-exit drain bound expires | davidfowl | <https://github.com/microsoft/aspire/pull/21556> |
| #21651 | Capture CLI diagnostics when an E2E command hangs | davidfowl | <https://github.com/microsoft/aspire/pull/21651> |
| #21571 | Make MAUI build-queue cancellation surface a consistent OperationCanceledException | davidfowl | <https://github.com/microsoft/aspire/pull/21571> |
| #21013 | Persist stable AppHost ports and add worktree isolation | danegsta | <https://github.com/microsoft/aspire/pull/21013> |
| #21898 | Pin the dev certificate in extension E2E HTTPS probes instead of disabling validation | eerhardt | <https://github.com/microsoft/aspire/pull/21898> |
| #21642 | Dump AppHost resource state and logs when Nuxt validation health wait times out | davidfowl | <https://github.com/microsoft/aspire/pull/21642> |
| #21967 | Give dotnet run apphost.cs the aspire run startup budget in SingleFileAppHostInit E2E test | davidfowl | <https://github.com/microsoft/aspire/pull/21967> |
| #21952 | Fix RepositoryTemplate_ResolvesRefsAndReusesPinnedCheckoutsAcrossInvocations timeout on slow Git checkouts | davidfowl | <https://github.com/microsoft/aspire/pull/21952> |
| #21955 | Fix flaky ComputeRunArgumentsPopulatesRunPropertiesForSdkProject (MSBuild server fallback notice on stderr) | davidfowl | <https://github.com/microsoft/aspire/pull/21955> |
| #21961 | Reject occupied loopback ports during endpoint allocation | thomhurst | <https://github.com/microsoft/aspire/pull/21961> |
| #21896 | Fix CodeQL stack-trace exposure and disabled certificate validation findings | eerhardt | <https://github.com/microsoft/aspire/pull/21896> |
| #21852 | Quiet routine Git acquisition output | mitchdenny | <https://github.com/microsoft/aspire/pull/21852> |
| #21912 | Give the VS Code extension's aspire --version probe a 30s budget | davidfowl | <https://github.com/microsoft/aspire/pull/21912> |
| #21923 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/21923> |
| #21971 | Stop the traces list from blocking the browser | sebastienros | <https://github.com/microsoft/aspire/pull/21971> |
| #21972 | Fix the dashboard Playwright tests that fail on the simplification branch | sebastienros | <https://github.com/microsoft/aspire/pull/21972> |
| #21914 | Wait for e2e-worker's endpoint URL before capturing it in the tree-actions E2E | davidfowl | <https://github.com/microsoft/aspire/pull/21914> |
| #21963 | Accept relay connection reset when waiting for stalled Blazor WASM bridge close | davidfowl | <https://github.com/microsoft/aspire/pull/21963> |
| #21883 | Clarify source and skill summaries in aspire agent init | ellahathaway | <https://github.com/microsoft/aspire/pull/21883> |
| #21855 | Unify CLI source onboarding, presentation, and selection | JamesNK | <https://github.com/microsoft/aspire/pull/21855> |
| #21926 | Fix VS Code E2E folder picker flake after a colliding selection | davidfowl | <https://github.com/microsoft/aspire/pull/21926> |
| #21924 | Read resource row state at every density in dashboard browser tests | davidfowl | <https://github.com/microsoft/aspire/pull/21924> |
| #21916 | Let REPL test readiness wait cover a cold container image pull | davidfowl | <https://github.com/microsoft/aspire/pull/21916> |
| #21920 | Fix flaky ResourceGeneratorMetadataTests: read MSBuild query results from -getResultOutputFile | davidfowl | <https://github.com/microsoft/aspire/pull/21920> |
| #21918 | Keep the debugger install hint E2E fixture under the run root to fix Windows EBUSY teardown | davidfowl | <https://github.com/microsoft/aspire/pull/21918> |
| #21880 | Restore single-line compact rows in the dashboard resource list | sebastienros | <https://github.com/microsoft/aspire/pull/21880> |
| #21831 | Show repository and ref in template picker group headings | mitchdenny | <https://github.com/microsoft/aspire/pull/21831> |
| #21530 | Use TimeProvider for SealedSecret sync-wait budget to fix SealedSecretApplyStepTests flake | davidfowl | <https://github.com/microsoft/aspire/pull/21530> |
| #21545 | Warn on unsupported AspireCliInvocationMode values | davidfowl | <https://github.com/microsoft/aspire/pull/21545> |
| #21830 | Fix Radius container image exports for TypeScript | karolz-ms | <https://github.com/microsoft/aspire/pull/21830> |
| #21881 | Rename the WithTags trait from Aspire_Dashboard_Tag to Aspire_Tag | sebastienros | <https://github.com/microsoft/aspire/pull/21881> |
| #21876 | Stabilize builds ahead of 17.0 release | joperezr | <https://github.com/microsoft/aspire/pull/21876> |
| #21845 | Retry transient GraphQL failures in milestone changelog fetch-data | davidfowl | <https://github.com/microsoft/aspire/pull/21845> |
| #21763 | Prepare VS Code extension release v1.25.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21763> |
| #21565 | Dismiss VS Code E2E notifications without depending on hover | davidfowl | <https://github.com/microsoft/aspire/pull/21565> |
| #21461 | Align JavaScript Dockerfile run-script validator with Go and Python pipeline registration | davidfowl | <https://github.com/microsoft/aspire/pull/21461> |
| #21101 | Keep service.instance.id when a resource sets OTEL_RESOURCE_ATTRIBUTES | MrZakos | <https://github.com/microsoft/aspire/pull/21101> |
| #20764 | Add native Linux tray support with StatusNotifierItem menus | tommasodotNET | <https://github.com/microsoft/aspire/pull/20764> |
| #21846 | Raise PR Documentation Check max-turns from 50 to 80 | davidfowl | <https://github.com/microsoft/aspire/pull/21846> |
| #21840 | Store dashboard tags, resource order and metric pins in browser local storage | sebastienros | <https://github.com/microsoft/aspire/pull/21840> |
| #21850 | Bump main to Aspire 17.1 and align release milestones | joperezr | <https://github.com/microsoft/aspire/pull/21850> |
| #21835 | Fix responsive dashboard recording badge and navigation overflow | IEvangelist | <https://github.com/microsoft/aspire/pull/21835> |
| #21836 | Collapse full-width dashboard sidebar on tab navigation | IEvangelist | <https://github.com/microsoft/aspire/pull/21836> |
| #21832 | Serve NuGet search paging test from memory to unblock macOS CLI CI | davidfowl | <https://github.com/microsoft/aspire/pull/21832> |
| #21819 | Show contextual resource availability in the dashboard sidebar | IEvangelist | <https://github.com/microsoft/aspire/pull/21819> |
| #21822 | Share publish validators and run Next.js validation before Azure image builds | IEvangelist | <https://github.com/microsoft/aspire/pull/21822> |
| #21834 | Open error-filtered structured logs from the resource error badge | sebastienros | <https://github.com/microsoft/aspire/pull/21834> |
| #21792 | Add dashboard close buttons and refine the resource sidebar | IEvangelist | <https://github.com/microsoft/aspire/pull/21792> |
| #21825 | Test Go init in existing root modules | IEvangelist | <https://github.com/microsoft/aspire/pull/21825> |
| #21692 | Keep dashboard resource filters within the viewport | IEvangelist | <https://github.com/microsoft/aspire/pull/21692> |
| #21693 | Add Aspire Outage game to the dashboard resource graph | sebastienros | <https://github.com/microsoft/aspire/pull/21693> |
| #21279 | Add resource type display names to Dashboard and CLI | sebastienros | <https://github.com/microsoft/aspire/pull/21279> |
| #21695 | Show endpoint addresses alongside friendly names in resource overview | IEvangelist | <https://github.com/microsoft/aspire/pull/21695> |
| #21783 | Warn about local Aspire skills in aspire doctor | ellahathaway | <https://github.com/microsoft/aspire/pull/21783> |
| #21809 | Clarify Aspire agent integration scope during project creation | Copilot | <https://github.com/microsoft/aspire/pull/21809> |
| #21396 | Support Azure Front Door Private Link for App Service | eerhardt | <https://github.com/microsoft/aspire/pull/21396> |
| #21183 | Remove the Go AppHost experimental feature flag | IEvangelist | <https://github.com/microsoft/aspire/pull/21183> |
| #21770 | Clarify dotnet-inspect requirements in agent init help | ellahathaway | <https://github.com/microsoft/aspire/pull/21770> |
| #21604 | Give the Deno AppHost inspector attach the AppHost startup budget | davidfowl | <https://github.com/microsoft/aspire/pull/21604> |
| #21768 | fix intermittent internal build failures | radical | <https://github.com/microsoft/aspire/pull/21768> |
| #21422 | [automated] test(cli): Find Radius MongoDB pods in their application namespace | radical | <https://github.com/microsoft/aspire/pull/21422> |
| #21740 | Focus Team App review queue on the first ten PRs | joperezr | <https://github.com/microsoft/aspire/pull/21740> |
| #21769 | Show agent init warnings during skills selection | ellahathaway | <https://github.com/microsoft/aspire/pull/21769> |
| #21536 | Order Azure resource preparation after compute environment validation | davidfowl | <https://github.com/microsoft/aspire/pull/21536> |
| #20984 | Support environment and interactive input for CLI secrets | mitchdenny | <https://github.com/microsoft/aspire/pull/20984> |
| #21450 | Build the CLI before MCP initialization in McpDocsE2ETests | davidfowl | <https://github.com/microsoft/aspire/pull/21450> |
| #21802 | Resolve Blazor gateway browser origin on the local container network | davidfowl | <https://github.com/microsoft/aspire/pull/21802> |
| #21767 | Update dashboard feedback welcome message | IEvangelist | <https://github.com/microsoft/aspire/pull/21767> |
| #21541 | Avoid SIGPIPE false failures in the extension changelog finalized gate | davidfowl | <https://github.com/microsoft/aspire/pull/21541> |
| #21440 | Serialize integral numbers as JSON integers in Java ATS client | davidfowl | <https://github.com/microsoft/aspire/pull/21440> |
| #21720 | Add untagged manifest cleanup options to ACR purge tasks | codebytes | <https://github.com/microsoft/aspire/pull/21720> |
| #20345 | fix(ci): Automatically rerun failed `main` rolling builds for specific failures | radical | <https://github.com/microsoft/aspire/pull/20345> |
| #21624 | Coordinate project builds when the IDE cannot launch projects (fix VS Code E2E tree-actions flake) | davidfowl | <https://github.com/microsoft/aspire/pull/21624> |
| #21749 | Fix Text file busy race for fake executables in Infrastructure.Tests | davidfowl | <https://github.com/microsoft/aspire/pull/21749> |
| #21615 | Ignore just-published npm releases in Docker CLI E2E shells | davidfowl | <https://github.com/microsoft/aspire/pull/21615> |
| #21538 | Fix Azure conformance tracing tests timing out in RemoteExecutor credential probing | davidfowl | <https://github.com/microsoft/aspire/pull/21538> |
| #21537 | Reserve DownloadNativeArchives mock server port atomically to fix 'Address already in use' flake | davidfowl | <https://github.com/microsoft/aspire/pull/21537> |
| #21534 | Fix AzureSql test fixture Docker port collisions and re-enable reconciliation tests | davidfowl | <https://github.com/microsoft/aspire/pull/21534> |
| #21754 | Show configured templates in the initial aspire new picker | mitchdenny | <https://github.com/microsoft/aspire/pull/21754> |
| #21397 | Add explicit-start shutdown regression coverage (startup-token cancellation and process exit) | davidfowl | <https://github.com/microsoft/aspire/pull/21397> |
| #21634 | Ignore just-published npm releases in polyglot TypeScript validation | davidfowl | <https://github.com/microsoft/aspire/pull/21634> |
| #21434 | Complete IconCheckbox JS interop in ManageDataDialog tests | davidfowl | <https://github.com/microsoft/aspire/pull/21434> |
| #21661 | Auto-rerun artifact transfer steps that fail with artifact service network errors | davidfowl | <https://github.com/microsoft/aspire/pull/21661> |
| #21497 | Fix flaky RemoteHost StartupExit test: avoid crash dumps for expected test-server failures | davidfowl | <https://github.com/microsoft/aspire/pull/21497> |
| #21539 | Avoid bootstrapping pip in model-only Python test venvs (fixes flaky venv timeout) | davidfowl | <https://github.com/microsoft/aspire/pull/21539> |
| #21543 | Serialize Infrastructure.Tests classes that build Aspire.TestTools | davidfowl | <https://github.com/microsoft/aspire/pull/21543> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #22187 | Project resource add yarp | open | johnazule | <https://github.com/microsoft/aspire/pull/22187> |
| PR | #22182 | Honor configured channels when updating C# AppHosts | open | danegsta | <https://github.com/microsoft/aspire/pull/22182> |
| PR | #22084 | Scope telemetry hooks with tool matchers | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22084> |
| PR | #22080 | Remove copied Aspire skills during aspire agent init | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22080> |
| PR | #22180 | Delegate npm publishing retries to ESRP | open | radical | <https://github.com/microsoft/aspire/pull/22180> |
| PR | #22093 | Install user-scope telemetry hooks for project-scope agent init | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22093> |
| PR | #22179 | Remove legacy agent telemetry hook scripts | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22179> |
| PR | #22078 | Limit telemetry hooks to Aspire-configured agents | open | ellahathaway | <https://github.com/microsoft/aspire/pull/22078> |
| PR | #22186 | [release/17.0] Combined dashboard backports (#22125–#22132) | open | sebastienros | <https://github.com/microsoft/aspire/pull/22186> |
| PR | #22138 | Fix dashboard SVG tooltips and restore rich trace previews | open | JamesNK | <https://github.com/microsoft/aspire/pull/22138> |
| PR | #22183 | Prepare WinGet manifests for ESRP evaluation | open | radical | <https://github.com/microsoft/aspire/pull/22183> |
| PR | #22149 | Unify dashboard telemetry footer counts and pause indicators | open | JamesNK | <https://github.com/microsoft/aspire/pull/22149> |
| PR | #22185 | [Automated] Update API Surface Area (release/17.0) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22185> |
| PR | #22137 | Use smaller labels and more text width in relationship graphs | open | JamesNK | <https://github.com/microsoft/aspire/pull/22137> |
| PR | #22134 | Align resource endpoint details and link display names | open | JamesNK | <https://github.com/microsoft/aspire/pull/22134> |
| PR | #22136 | Right-align metadata and actions in the compact resource sidebar | open | JamesNK | <https://github.com/microsoft/aspire/pull/22136> |
| PR | #22168 | Graduate container shell execution to stable | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22168> |
| PR | #22167 | Stabilize compute endpoint mapping contracts | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22167> |
| PR | #22135 | Use standard font sizes in the resource selector | open | JamesNK | <https://github.com/microsoft/aspire/pull/22135> |
| PR | #22160 | Graduate process-backed resource commands to stable | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22160> |
| PR | #22164 | Graduate Next.js hosting and JavaScript publishing APIs to stable | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22164> |
| PR | #22184 | [Automated] Update ATS API Surface Area (release/17.0) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22184> |
| PR | #22157 | Graduate required-command custom validation to stable | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22157> |
| PR | #22166 | Stabilize HTTPS certificate selection APIs | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22166> |
| PR | #22171 | [release/17.0] Consolidate ordered Go AppHost backports | open | joperezr | <https://github.com/microsoft/aspire/pull/22171> |
| PR | #22165 | Stabilize progress interaction APIs | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22165> |
| PR | #22158 | Graduate MCP endpoint declaration to stable | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22158> |
| PR | #22142 | Fix inconsistent dashboard action icon colors | open | JamesNK | <https://github.com/microsoft/aspire/pull/22142> |
| PR | #22159 | Graduate Deno hosting APIs to stable | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22159> |
| PR | #22161 | Graduate connection-string physical-name metadata | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22161> |
| PR | #22155 | Document Npgsql EF major-version dependency transitions | open | eerhardt | <https://github.com/microsoft/aspire/pull/22155> |
| PR | #21816 | Remove experimental markers from resource lifetime APIs | open | danegsta | <https://github.com/microsoft/aspire/pull/21816> |
| PR | #22170 | Merge release/13.6 into main after 13.6.5 security release | open | joperezr | <https://github.com/microsoft/aspire/pull/22170> |
| PR | #21882 | Fix MCP doctor timeout on Windows | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21882> |
| PR | #22132 | [release/17.0] Address deferred review feedback for the modern dashboard | open | sebastienros | <https://github.com/microsoft/aspire/pull/22132> |
| PR | #22130 | [release/17.0] Simplify the dashboard around its two main jobs | open | sebastienros | <https://github.com/microsoft/aspire/pull/22130> |
| PR | #21946 | Configure launch.json for the selected AppHost | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/21946> |
| PR | #21947 | Allow dismissing advisory CodeLens persistently | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/21947> |
| PR | #21996 | Center tag group counts over the state dot column | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/21996> |
| PR | #22143 | [release/17.0] Improve CLI Git diagnostics, timeouts, and config-source errors | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22143> |
| PR | #22088 | Parse AppHost console logs with the formatter options the AppHost reports | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/22088> |
| PR | #22125 | [release/17.0] Store dashboard tags, resource order and metric pins in browser local storage | open | sebastienros | <https://github.com/microsoft/aspire/pull/22125> |
| PR | #22147 | Align expanded resource grid actions with the legacy grid | open | JamesNK | <https://github.com/microsoft/aspire/pull/22147> |
| PR | #22126 | [release/17.0] Add dashboard resource-selector dropdown | open | sebastienros | <https://github.com/microsoft/aspire/pull/22126> |
| PR | #22127 | [release/17.0] Rename the WithTags trait from Aspire_Dashboard_Tag to Aspire_Tag | open | sebastienros | <https://github.com/microsoft/aspire/pull/22127> |
| PR | #22128 | [release/17.0] Restore single-line compact rows in the dashboard resource list | open | sebastienros | <https://github.com/microsoft/aspire/pull/22128> |
| PR | #22131 | [release/17.0] Return 400 for OTLP JSON requests with malformed ids | open | sebastienros | <https://github.com/microsoft/aspire/pull/22131> |
| PR | #21937 | Support custom resource image icons in the dashboard | open | 4dwaffle | <https://github.com/microsoft/aspire/pull/21937> |
| PR | #21942 | Set an AppHost's display name with appHost.name in aspire.config.json | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/21942> |
| PR | #22139 | [release/17.0] Don't overwrite Kubernetes templates when objects share a name | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22139> |
| PR | #22133 | Fix native code generation during design-time builds | open | JamesNK | <https://github.com/microsoft/aspire/pull/22133> |
| PR | #22124 | Fix empty required parameter startup recovery and diagnostics | open | adamint | <https://github.com/microsoft/aspire/pull/22124> |
| PR | #22129 | [release/17.0] Allocate the next dashboard run ID when two dashboards start in the same millisecond | open | sebastienros | <https://github.com/microsoft/aspire/pull/22129> |
| PR | #22108 | Tighten CI failure cause-matching and error_pattern guidance | open | radical | <https://github.com/microsoft/aspire/pull/22108> |
| PR | #22054 | Show exit codes in describe snapshot table | open | mitchdenny | <https://github.com/microsoft/aspire/pull/22054> |
| PR | #22117 | Build(deps): Bump node-forge from 1.4.0 to 1.4.2 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/22117> |
| PR | #21893 | Add CodeQL SM02730 suppressions for dev certificate root store trust | open | eerhardt | <https://github.com/microsoft/aspire/pull/21893> |
| PR | #22102 | Preserve local template parser diagnostics | open | adamint | <https://github.com/microsoft/aspire/pull/22102> |
| PR | #21930 | Route HTTPS Git credential prompts through parent-process askpass | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21930> |
| PR | #22091 | fix: allow build-only AppHost builds without the CLI bundle | open | radical | <https://github.com/microsoft/aspire/pull/22091> |
| PR | #22098 | Add Docker Compose dashboard login guidance | open | adamint | <https://github.com/microsoft/aspire/pull/22098> |
| PR | #22097 | Fix doctor guidance for customized MCP commands | open | adamint | <https://github.com/microsoft/aspire/pull/22097> |
| PR | #22095 | Reject unknown options before -- in aspire run and aspire start | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/22095> |
| PR | #22068 | VS Code: replace collapse-all toolbar with per-AppHost Collapse all resources | open | SankeerthNara | <https://github.com/microsoft/aspire/pull/22068> |
| PR | #22077 | Update PackageValidationBaselineVersion to 13.6.5 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22077> |
| PR | #22074 | Put Compact first in dashboard density settings | open | adamint | <https://github.com/microsoft/aspire/pull/22074> |
| PR | #21911 | Ignore inspection requests aborted by the resource attach proof's own continue | open | davidfowl | <https://github.com/microsoft/aspire/pull/21911> |
| PR | #22059 | Clarify CLI source validation intent | open | JamesNK | <https://github.com/microsoft/aspire/pull/22059> |
| PR | #21887 | [automated] fix(ci): Stop persisting lint and TypeScript checkout credentials | open | radical | <https://github.com/microsoft/aspire/pull/21887> |
| PR | #21987 | Respect project ContainerRuntimeIdentifier overrides | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21987> |
| PR | #21984 | Extract shared DCP app-model orchestration | open | danegsta | <https://github.com/microsoft/aspire/pull/21984> |
| PR | #21992 | Add opt-in DCP V2 execution flow | open | danegsta | <https://github.com/microsoft/aspire/pull/21992> |
| PR | #21986 | Remove redundant CLI bundle opt-ins from templates | open | eerhardt | <https://github.com/microsoft/aspire/pull/21986> |
| PR | #21983 | Add DCP V2 resource models and version-aware client routing | open | danegsta | <https://github.com/microsoft/aspire/pull/21983> |
| PR | #21897 | Suppress CodeQL SM04595 false positives on dashboard Login and Error pages | open | eerhardt | <https://github.com/microsoft/aspire/pull/21897> |
| PR | #21968 | Retry transient WebDriver session startup failures in VS Code E2E | open | davidfowl | <https://github.com/microsoft/aspire/pull/21968> |
| PR | #21966 | Fix ETXTBSY flake in DotNetSdkInstallerTests.CheckAsync_WhenCanceled_KillsDotNetProcessTree | open | davidfowl | <https://github.com/microsoft/aspire/pull/21966> |
| PR | #21959 | fix(cli): avoid following links when syncing Playwright skills | open | pcbeingused333 | <https://github.com/microsoft/aspire/pull/21959> |
| PR | #21956 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21956> |
| PR | #21821 | [Spike] Project v2 C# program watch (preview) | open | davidfowl | <https://github.com/microsoft/aspire/pull/21821> |
| PR | #21941 | Aspire Tray: open the dashboard from a row, right-click actions, readable status, tighter buttons | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/21941> |
| PR | #21945 | Fix ChildProcess completion-file race that stopped RemoteHost crash-loop recovery | open | davidfowl | <https://github.com/microsoft/aspire/pull/21945> |
| PR | #21948 | Allow selecting an exact DNX CLI version | open | afscrome | <https://github.com/microsoft/aspire/pull/21948> |
| PR | #21929 | [WIP] Diagnose flaky Deno inspector attach cancel test on Windows | open | davidfowl | <https://github.com/microsoft/aspire/pull/21929> |
| PR | #21875 | Use Microsoft.Azure.ContainerApps.Sandbox SDK in Azure Sandboxes integration | open | eerhardt | <https://github.com/microsoft/aspire/pull/21875> |
| PR | #21919 | Stop the aspire doctor DCP probe gracefully instead of killing it | open | davidfowl | <https://github.com/microsoft/aspire/pull/21919> |
| PR | #21917 | Wait for cancelled aspire doctor checks to clean up DCP before exiting | open | davidfowl | <https://github.com/microsoft/aspire/pull/21917> |
| PR | #21925 | Fix YARP TimeSpan environment configuration serialization | open | itsrayeedscodespace | <https://github.com/microsoft/aspire/pull/21925> |
| PR | #21843 | Modernize Azure Sandbox provisioning with generated SDK types | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21843> |
| PR | #21869 | Project v2 C# program watch (alt spike) | open | karolz-ms | <https://github.com/microsoft/aspire/pull/21869> |
| PR | #21891 | Fix nightly Deployment E2E failures | open | eerhardt | <https://github.com/microsoft/aspire/pull/21891> |
| PR | #21899 | Prioritize urgent PRs in the Team App review queue | open | joperezr | <https://github.com/microsoft/aspire/pull/21899> |
| PR | #21811 | [automated] test: Replace the stapler retry JavaScript harness with C# | open | radical | <https://github.com/microsoft/aspire/pull/21811> |
| PR | #21810 | fix(ci): avoid full test runs for shared test fixture changes | open | radical | <https://github.com/microsoft/aspire/pull/21810> |
| PR | #21878 | Update container image tags to newer minor and patch releases | open | joperezr | <https://github.com/microsoft/aspire/pull/21878> |
| PR | #21815 | Add a persistent row layout to the Aspire Team App canvas | open | radical | <https://github.com/microsoft/aspire/pull/21815> |
| PR | #21871 | Support SPA fallback for static website publishing | open | spboyer | <https://github.com/microsoft/aspire/pull/21871> |
| PR | #21868 | Bump the create-video group with 8 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21868> |
| PR | #21867 | Build(deps): Bump msedge-tts from 2.1.0 to 2.1.1 in /.agents/skills/create-video/scripts/tts in the create-video-npm group | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21867> |
| PR | #21849 | Bound primary apt mirror builds before CLI E2E fallback | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21849> |
| PR | #21833 | Record Git template provenance in generated aspire.config.json | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21833> |
| PR | #21837 | Prevent aspire doctor from orphaning DCP processes | open | karolz-ms | <https://github.com/microsoft/aspire/pull/21837> |
| PR | #21839 | Detect Copilot AppImages before first launch | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21839> |
| PR | #21818 | Remove obsolete AKS scope resolution and reject empty provisioning sc… | open | codebytes | <https://github.com/microsoft/aspire/pull/21818> |
| PR | #21814 | [automated] test: Run platform-specific infrastructure tests in CI | open | radical | <https://github.com/microsoft/aspire/pull/21814> |
| PR | #21801 | Scope ambiguous ATS method collisions to the colliding target | open | ShyneChikwapulo | <https://github.com/microsoft/aspire/pull/21801> |
| PR | #21793 | Dashboard resource navigation and parameter overview | open | JamesNK | <https://github.com/microsoft/aspire/pull/21793> |
| PR | #21789 | Expose Helm chart publishing results for deployment extensions | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21789> |
| PR | #21785 | [automated] fix(ci): Preserve diagnoses for unresolved CI failures | open | radical | <https://github.com/microsoft/aspire/pull/21785> |
| PR | #21782 | [automated] fix(ci): Analyze failures when setup skips test execution | open | radical | <https://github.com/microsoft/aspire/pull/21782> |
| PR | #22121 | [release/17.0] Add React frontend to Go starter template | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/22121> |
| PR | #22064 | [release/17.0] Make generated Go SDK APIs idiomatic | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/22064> |
| PR | #22057 | [release/17.0] Propagate Go child resource errors through Build | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/22057> |
| PR | #20701 | [Automated] Update API Surface Area (release/13.6) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20701> |
| PR | #20700 | [Automated] Update ATS API Surface Area (release/13.6) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20700> |
| PR | #22087 | [release/17.0] Address deferred review feedback for the modern dashboard | closed | sebastienros | <https://github.com/microsoft/aspire/pull/22087> |
| PR | #22122 | [release/17.0] Harden Go SDK runtime and complete typed API export metadata | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/22122> |
| PR | #19097 | Remove Publish-Build-Assets variable group from release/13.4 | closed | missymessa | <https://github.com/microsoft/aspire/pull/19097> |
| PR | #19358 | Self-heal stale community-contribution flags in milestone changelog | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/19358> |
| PR | #21022 | Automate agentic workflow recompilation after gh-aw updates | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/21022> |
| PR | #22086 | Skip duplicate agent telemetry hook events | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/22086> |
| PR | #21761 | Bump node-forge from 1.4.0 to 1.4.1 in /extension | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21761> |
| PR | #21970 | [release/17.0] Clarify source and skill summaries in aspire agent init | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21970> |
| PR | #22085 | Install telemetry hooks only with Aspire skills or MCP | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/22085> |
| PR | #22110 | [release/17.0] Show repository and ref in template picker group headings | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22110> |
| PR | #22111 | [release/17.0] Clarify source and skill summaries in aspire agent init | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22111> |
| PR | #22112 | [release/17.0] Unify CLI source onboarding, presentation, and selection | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22112> |
| PR | #22076 | [release/17.0] Put Compact first in dashboard density settings | closed | adamint | <https://github.com/microsoft/aspire/pull/22076> |
| PR | #21998 | [release/17.0] Add Go AppHost initialization and stable restore E2E coverage | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/21998> |
| PR | #21999 | [release/17.0] Add Go AppHost editor support and debugger readiness coverage | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/21999> |
| PR | #22000 | [release/17.0] Preserve ASPIRE010 and add ASPIRE013 for required CLI bundles | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22000> |
| PR | #22001 | [release/17.0] Allow structured Kubernetes manifest field values | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22001> |
| PR | #22002 | [release/17.0] Close Go AppHost CLI preview readiness gaps | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22002> |
| PR | #22004 | [release/17.0] Store dashboard tags, resource order and metric pins in browser local storage | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22004> |
| PR | #22005 | [release/17.0] Raise PR Documentation Check max-turns from 50 to 80 | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22005> |
| PR | #22006 | [release/17.0] Align JavaScript Dockerfile run-script validator with Go and Python pipeline registration | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22006> |
| PR | #22007 | [release/17.0] Complete Go starter validation and polyglot scenario readiness | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22007> |
| PR | #22008 | [release/17.0] Add dashboard resource-selector dropdown | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22008> |
| PR | #22009 | [release/17.0] Dismiss VS Code E2E notifications without depending on hover | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22009> |
| PR | #22010 | [release/17.0] Prepare VS Code extension release v1.25.0 | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22010> |
| PR | #22011 | [release/17.0] Retry transient GraphQL failures in milestone changelog fetch-data | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22011> |
| PR | #22012 | [release/17.0] Add initial WSLc publish/deploy support with explicit capability limits | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22012> |
| PR | #22013 | [release/17.0] Rename the WithTags trait from Aspire_Dashboard_Tag to Aspire_Tag | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22013> |
| PR | #22014 | [release/17.0] Fix Radius container image exports for TypeScript | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22014> |
| PR | #22015 | [release/17.0] Warn on unsupported AspireCliInvocationMode values | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22015> |
| PR | #22016 | [release/17.0] build: unify bundle build, publish and packaging in MSBuild | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22016> |
| PR | #22017 | [release/17.0] Use TimeProvider for SealedSecret sync-wait budget to fix SealedSecretApplyStepTests flake | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22017> |
| PR | #22018 | [release/17.0] Restore single-line compact rows in the dashboard resource list | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22018> |
| PR | #22019 | [release/17.0] Show repository and ref in template picker group headings | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22019> |
| PR | #22020 | [release/17.0] Clarify source and skill summaries in aspire agent init | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22020> |
| PR | #22021 | [release/17.0] Let REPL test readiness wait cover a cold container image pull | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22021> |
| PR | #22022 | [release/17.0] Keep the debugger install hint E2E fixture under the run root to fix Windows EBUSY teardown | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22022> |
| PR | #22023 | [release/17.0] Fix flaky ResourceGeneratorMetadataTests: read MSBuild query results from -getResultOutputFile | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22023> |
| PR | #22024 | [release/17.0] Read resource row state at every density in dashboard browser tests | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22024> |
| PR | #22025 | [release/17.0] Fix VS Code E2E folder picker flake after a colliding selection | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22025> |
| PR | #22026 | [release/17.0] Allocate the next dashboard run ID when two dashboards start in the same millisecond | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22026> |
| PR | #22027 | [release/17.0] Unify CLI source onboarding, presentation, and selection | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22027> |
| PR | #22028 | [release/17.0] Harden Go SDK runtime and complete typed API export metadata | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22028> |
| PR | #22030 | [release/17.0] Accept relay connection reset when waiting for stalled Blazor WASM bridge close | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22030> |
| PR | #22031 | [release/17.0] Wait for e2e-worker's endpoint URL before capturing it in the tree-actions E2E | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22031> |
| PR | #22032 | [release/17.0] [main] Update dependencies from microsoft/dcp | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22032> |
| PR | #22033 | [release/17.0] Give the VS Code extension's aspire --version probe a 30s budget | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22033> |
| PR | #22034 | [release/17.0] Fix CodeQL stack-trace exposure and disabled certificate validation findings | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22034> |
| PR | #22036 | [release/17.0] Quiet routine Git acquisition output | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22036> |
| PR | #22037 | [release/17.0] Reject occupied loopback ports during endpoint allocation | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22037> |
| PR | #22038 | [release/17.0] Fix flaky ComputeRunArgumentsPopulatesRunPropertiesForSdkProject (MSBuild server fallback notice on stderr) | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22038> |
| PR | #22039 | [release/17.0] Fix RepositoryTemplate_ResolvesRefsAndReusesPinnedCheckoutsAcrossInvocations timeout on slow Git checkouts | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22039> |
| PR | #22041 | [release/17.0] Give dotnet run apphost.cs the aspire run startup budget in SingleFileAppHostInit E2E test | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22041> |
| PR | #22042 | [release/17.0] Dump AppHost resource state and logs when Nuxt validation health wait times out | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22042> |
| PR | #22043 | [release/17.0] Pin the dev certificate in extension E2E HTTPS probes instead of disabling validation | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22043> |
| PR | #22044 | [release/17.0] Persist stable AppHost ports and add worktree isolation | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22044> |
| PR | #22045 | [release/17.0] Capture CLI diagnostics when an E2E command hangs | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22045> |
| PR | #22046 | [release/17.0] Make MAUI build-queue cancellation surface a consistent OperationCanceledException | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22046> |
| PR | #22047 | [release/17.0] Keep captured output when ProcessCaptureRunner's post-exit drain bound expires | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22047> |
| PR | #22048 | [release/17.0] Fix trace attribute filter freezing the traces page | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22048> |
| PR | #22049 | [release/17.0] Write the WinUI E2E ready marker atomically so the test never reads an empty file | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22049> |
| PR | #22050 | [release/17.0] Harden KinD/Helm/kubectl and Radius install downloads in Kubernetes E2E tests | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22050> |
| PR | #22051 | [release/17.0] Simplify the dashboard around its two main jobs | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22051> |
| PR | #22053 | [release/17.0] Stop idle extension polling | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22053> |
| PR | #22040 | [release/17.0] Set Secure/HttpOnly/SameSite on the dashboard culture cookie (CodeQL SM02373) | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22040> |
| PR | #22003 | [release/17.0] Bump main to Aspire 17.1 and align release milestones | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22003> |
| PR | #22090 | Reject unknown options before -- in aspire run and aspire start | closed | SankeerthNara | <https://github.com/microsoft/aspire/pull/22090> |
| PR | #22052 | [release/17.0] Make WithOutputDiffing available through standard AppHost usings (#21985) | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22052> |
| PR | #22029 | [release/17.0] Update Azure.Provisioning.AppContainers to 1.3.0-beta.2 | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/22029> |
| PR | #21944 | Report Playwright test telemetry under the app model resource's identity | closed | maddymontaquila | <https://github.com/microsoft/aspire/pull/21944> |
| PR | #21950 | Make the dashboard resource list and traces page faster and add a List overview layout | closed | sebastienros | <https://github.com/microsoft/aspire/pull/21950> |
| PR | #21975 | Keep the selection when the selected resource or group is clicked again | closed | sebastienros | <https://github.com/microsoft/aspire/pull/21975> |
| PR | #21981 | fix(build): restore prerelease package builds on release/17.0 | closed | radical | <https://github.com/microsoft/aspire/pull/21981> |
| PR | #21964 | Update overview layout icons | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/21964> |
| PR | #21974 | Make the dashboard resource list cheaper to render | closed | sebastienros | <https://github.com/microsoft/aspire/pull/21974> |
| PR | #21711 | Scope pinned metric instruments to resources | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/21711> |
| PR | #20892 | Improve display of Urls in main dashboard grid. | closed | afscrome | <https://github.com/microsoft/aspire/pull/20892> |
| PR | #20684 | Treat not-started resources as neutral in tray health | closed | 4dwaffle | <https://github.com/microsoft/aspire/pull/20684> |
| PR | #21439 | Wait for a writable MongoDB single-member primary | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21439> |
| PR | #21870 | Complete Go AppHost readiness and add starter frontend | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/21870> |
| PR | #21854 | Wait for endpoint metadata before tree-action E2E assertions | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/21854> |
| PR | #21841 | Show the selected recording's date inside the recordings header button | closed | sebastienros | <https://github.com/microsoft/aspire/pull/21841> |
| PR | #20118 | Fix Deno launch-profiles E2E setup and teardown | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/20118> |
| PR | #21813 | [automated] docs: Prefer C# harnesses and declarative platform test filters | closed | radical | <https://github.com/microsoft/aspire/pull/21813> |
| PR | #21495 | fix(ci): avoid full test runs for shared test fixture changes | closed | radical | <https://github.com/microsoft/aspire/pull/21495> |
| PR | #20692 | Modernize Windows tray menus and dialogs | closed | 4dwaffle | <https://github.com/microsoft/aspire/pull/20692> |
| PR | #21456 | Add regression test for reading the file-app sentinel while a writer holds it open | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21456> |
| PR | #21492 | Fix MauiBuildQueueTests hang when a resource state is published after 5s | closed | davidfowl | <https://github.com/microsoft/aspire/pull/21492> |
| Issue | #22181 | Show relative time in dashboard capture-paused indicators | open | JamesNK | <https://github.com/microsoft/aspire/issues/22181> |
| Issue | #22178 | [CI Failure] Flaky: VS Code extension E2E cli-path-rejection notification action fails with element not interactable | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22178> |
| Issue | #21847 | Consider moving DotnetToolResource into Aspire.Hosting.Dotnet for 17 | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/21847> |
| Issue | #22177 | Ensure process-backed commands stop when the AppHost exits unexpectedly on Windows | open | danegsta | <https://github.com/microsoft/aspire/issues/22177> |
| Issue | #22176 | Propagate resource tags to implicit child resources | open | Chicoo | <https://github.com/microsoft/aspire/issues/22176> |
| Issue | #22175 | Show which resources require attention on the Dashboard Overview page in v17 | open | Chicoo | <https://github.com/microsoft/aspire/issues/22175> |
| Issue | #22150 | Remove Aspire.Pomelo.EntityFrameworkCore.MySql from the repo | open | eerhardt | <https://github.com/microsoft/aspire/issues/22150> |
| Issue | #21865 | [AspireE2E][Aspire 17] apiservice fails and webfrontend remains Waiting when running from VS until aspire run is executed | closed | joniel-bolocon | <https://github.com/microsoft/aspire/issues/21865> |
| Issue | #22169 | [aw] Analyze CI Failure could not verify daily AI credits | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22169> |
| Issue | #22162 | Plan ASPIREAZURE003 stabilization for 17.1: Azure Network and cross-resource infrastructure hooks | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/22162> |
| Issue | #22163 | Stabilize container registry model APIs (ASPIRECOMPUTE003) for 17.1 | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/22163> |
| Issue | #22156 | [VS Code] Validate blocking E2E coverage for core developer workflows | open | adamint | <https://github.com/microsoft/aspire/issues/22156> |
| Issue | #22154 | [VS Code] Add an agent tool to detach a resource debugger without stopping the application | open | adamint | <https://github.com/microsoft/aspire/issues/22154> |
| Issue | #22153 | [VS Code] Attach to an already-running Node.js resource | open | adamint | <https://github.com/microsoft/aspire/issues/22153> |
| Issue | #22063 | Subnet NSG rule generates invalid name, breaks deployment | closed | jrunestone | <https://github.com/microsoft/aspire/issues/22063> |
| Issue | #22151 | Keep the Homebrew cask version aligned with Aspire releases | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/22151> |
| Issue | #22148 | Microsoft Security Advisory CVE-2026-118740 - Aspire Security Feature Bypass Vulnerability | open | bribrothers | <https://github.com/microsoft/aspire/issues/22148> |
| Issue | #22144 | nix flake is stuck on 13.6.4 / out-of-date again | open | KennethHoff | <https://github.com/microsoft/aspire/issues/22144> |
| Issue | #22141 | Model Many-To-Many server/client relationships across multiple infrastructure layers | open | johnazule | <https://github.com/microsoft/aspire/issues/22141> |
| Issue | #22140 | [AspireE2E][Windows][aspire CLI] aspire sdk export -l go fails to start aspire-managed.exe with "The system cannot find the file specified | open | sab1n311 | <https://github.com/microsoft/aspire/issues/22140> |
| Issue | #21965 | [CI Failure] Flaky: VS Code E2E root 'before all' hook fails creating the ExTester WebDriver session (SessionNotCreated) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21965> |
| Issue | #22120 | [Main CI Failure] Main branch CI failure at ec6206117c22b12ce677e09941199b196bea5bde | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22120> |
| Issue | #21817 | [CI Failure] Flaky: NativeCliProtocolTests.SilentAndPartialFramesExpireWithoutBlockingOtherCliClients canceled after 20s timeout on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21817> |
| Issue | #21800 | [CI Failure] MongoDB single-member replica set functional test fails with not primary error | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21800> |
| Issue | #22119 | Validation workflow failures are not analyzed or auto-rerun like CI failures | open | radical | <https://github.com/microsoft/aspire/issues/22119> |
| Issue | #22116 | [Main CI Failure] Main branch CI failure at 9d73c4ae62257714459fa3d86533c59659acfdf6 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22116> |
| Issue | #21973 | Failed resources look successfully finished in dashboard/describe while tray reports unexplained Unhealthy status | open | joperezr | <https://github.com/microsoft/aspire/issues/21973> |
| Issue | #22062 | [Main CI Failure] Main branch CI failure at 9d73c4ae62257714459fa3d86533c59659acfdf6 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22062> |
| Issue | #22096 | [Main CI Failure] Main branch CI failure at 209d9226e0463b638a5d68a034505e874cae9091 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22096> |
| Issue | #22100 | Microsoft Security Advisory CVE-2026-120792 - Aspire Information Disclosure Vulnerability | open | bribrothers | <https://github.com/microsoft/aspire/issues/22100> |
| Issue | #22101 | Microsoft Security Advisory CVE-2026-120778 - Aspire Elevation of Privilege Vulnerability | open | bribrothers | <https://github.com/microsoft/aspire/issues/22101> |
| Issue | #21873 | Docker Compose deploy should provide a usable dashboard login URL | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21873> |
| Issue | #22075 | Support selective and on-demand .NET builds for launch groups | closed | adamint | <https://github.com/microsoft/aspire/issues/22075> |
| Issue | #21958 | `aspire doctor` warns about deprecated `mcp start` arguments the `aspire agent init` repair refuses to rewrite | open | soarkit | <https://github.com/microsoft/aspire/issues/21958> |
| Issue | #21857 | [AspireE2E] aspire new --template-path: malformed template.json is reported as "No .NET templates were found" and the parse error is swallowed | open | sab1n311 | <https://github.com/microsoft/aspire/issues/21857> |
| Issue | #22092 | Microsoft Security Advisory CVE-2026-120006 - Aspire Elevation of Privilege Vulnerability | open | bribrothers | <https://github.com/microsoft/aspire/issues/22092> |
| Issue | #22073 | CLI doesn't detect file-based apphost.cs when `#:package Aspire.Hosting.AppHost` has no version (Central Package Management) | closed | eerhardt | <https://github.com/microsoft/aspire/issues/22073> |
| Issue | #22083 | Dashboard terminal fails with graphics acceleration disabled without actionable recovery guidance | open | adamint | <https://github.com/microsoft/aspire/issues/22083> |
| Issue | #21786 | Aspire CLI logs can grow by gigabytes during continuous VS Code usage | closed | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/21786> |
| Issue | #21886 | [Main CI Failure] Main branch CI failure at 727eaa702afaf69a5a3ac8acfcd746c7af28e7f2 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21886> |
| Issue | #22079 | Dashboard: focused resource terminal collapses to zero height in a small viewport | closed | adamint | <https://github.com/microsoft/aspire/issues/22079> |
| Issue | #21978 | Can't configure app service network restriction rules | open | jrunestone | <https://github.com/microsoft/aspire/issues/21978> |
| Issue | #21977 | Project Resource V2 coordinated build performance in VSCode; much slower than Visual Studio 2026 Insiders, not using FastBuild from C# Dev Kit | open | mip1983 | <https://github.com/microsoft/aspire/issues/21977> |
| Issue | #21853 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) deploy session test times out waiting for deployAppHost success outcome | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21853> |
| Issue | #21851 | Use tree-sitter-go for Go grammer parsing | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21851> |
| Issue | #21796 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) expected e2e-worker to expose an endpoint URL | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21796> |
| Issue | #21794 | [CI Failure] VS Code resource-debug E2E safety regex matches randomly generated resource name containing 'env' | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21794> |
| Issue | #21791 | [CI Failure] VS Code extension unit tests on Windows fail with transient ECONNRESET in Blazor WASM debug relay stalled bridge test | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21791> |
| Issue | #21777 | [CI Failure] Flaky: VS Code resource debug E2E gets failed 'variables' response 'Evaluation aborted.' | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21777> |
| Issue | #21980 | Can't configure subnet privateEndpointNetworkPolicies | open | jrunestone | <https://github.com/microsoft/aspire/issues/21980> |
| Issue | #21848 | [CI Failure] Windows runner: DCP docker --version dependency check times out, failing JavaScript fixture initialization | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21848> |
| Issue | #22072 | [automated] Support non-.NET test jobs in the Reproduce Flaky Tests workflow | open | radical | <https://github.com/microsoft/aspire/issues/22072> |
| Issue | #22069 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22069> |
| Issue | #22065 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22065> |
| Issue | #22060 | Dashboard becomes sluggish with 40+ services — GatherRawEnvironmentAndArgumentValuesAsync called on every DCP resource event | open | theschmoo | <https://github.com/microsoft/aspire/issues/22060> |
| Issue | #21953 | Scheduled workflow failing: Warm CLI E2E Image Cache | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21953> |
| Issue | #22035 | [CI Failure] Intermittent ChartContainer_ParametersAndActiveView test fails Assert.Empty with stray SQLite Activity | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22035> |
| Issue | #21994 | Mandatory template prompts | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21994> |
| Issue | #21989 | Check Experimental APIs and see if they should be flipped to stable. | open | joperezr | <https://github.com/microsoft/aspire/issues/21989> |
| Issue | #21988 | Run Api Review skill over the 17.0 surface area to check if we need to make any changes | open | joperezr | <https://github.com/microsoft/aspire/issues/21988> |
| Issue | #21795 | Aspire 17 rejects previously accepted empty parameter values; clarify breaking change and dashboard failure | open | joperezr | <https://github.com/microsoft/aspire/issues/21795> |
| Issue | #21885 | Report unsupported WSLc Dockerfile build options before runtime readiness errors | open | danegsta | <https://github.com/microsoft/aspire/issues/21885> |
| Issue | #21904 | [CLI] Redirected stdout gets only "…": `aspire ps` and failing `describe` lose their output | open | HerrLiljegren | <https://github.com/microsoft/aspire/issues/21904> |
| Issue | #21954 | [CI Failure] Flaky: DotNetCliRunnerTests.ComputeRunArgumentsPopulatesRunPropertiesForSdkProject fails on 'MSBuild server unavailable' stderr notice | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21954> |
| Issue | #21889 | Windows: processes started by DCP are throttled by EcoQoS on hybrid CPUs — `AddJavaScriptApp` dev builds run ~2–3× slower than from a terminal | open | darko-aestus | <https://github.com/microsoft/aspire/issues/21889> |
| Issue | #21979 | Stable 17.0 package builds fail with NU5104 for .NET 11 dependencies | open | radical | <https://github.com/microsoft/aspire/issues/21979> |
| Issue | #21951 | SyncDirectory follows a directory symlink and deletes a file outside the target | open | soarkit | <https://github.com/microsoft/aspire/issues/21951> |
| Issue | #21856 | [AspireE2E] aspire new --template-path: templates without aspirecli.host.json expose raw internal prompts and cannot be created non-interactively | open | sab1n311 | <https://github.com/microsoft/aspire/issues/21856> |
| Issue | #21860 | [AspireE2E] aspire new --template-repository: Git template trust warning does not identify the repository or ref | open | sab1n311 | <https://github.com/microsoft/aspire/issues/21860> |
| Issue | #21859 | [AspireE2E] aspire new from --template-path omits sdk.version and channel from aspire.config.json; first aspire update reports "unknown" | open | sab1n311 | <https://github.com/microsoft/aspire/issues/21859> |
| Issue | #21940 | [CI Failure] Flaky: IntegrationHostProcessTests.CrashLoop_StopsTheSessionAfterThreeRestartAttempts misses 'failed after 3 restart attempts' log on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21940> |
| Issue | #21936 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21936> |
| Issue | #21935 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21935> |
| Issue | #21933 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21933> |
| Issue | #21934 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21934> |
| Issue | #21909 | [aw] Failed jobs: Milestone Changelog Generator | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21909> |
| Issue | #21908 | [aw] Milestone Changelog Generator reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21908> |
| Issue | #21907 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21907> |
| Issue | #21906 | Aspire skill descriptions exceed Codex CLI description budgets | closed | thomhurst | <https://github.com/microsoft/aspire/issues/21906> |
| Issue | #21905 | Aspire.Hosting.Yarp flattens TimeSpan cluster settings (ActivityTimeout, health-check intervals) into per-property env vars the YARP container ignores | open | tzdevelopteam | <https://github.com/microsoft/aspire/issues/21905> |
| Issue | #21902 | [Dashboard] Manage, annotate, and compare persisted runs/recordings | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21902> |
| Issue | #21901 | [Dashboard] PersistenceMode=None still writes SQLite data to disk; no no-disk or small storage-budget mode | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21901> |
| Issue | #21900 | [CI Failure] DotNetSdkInstallerTests.CheckAsync_WhenCanceled_KillsDotNetProcessTree times out after 30s | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21900> |
| Issue | #21803 | Radius: generic withContainerImage (IDotnetProgramResource) is dropped from the TypeScript surface by method-name collision | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21803> |
| Issue | #21892 | Use Azure.Provisioning naming requirements by default for Container Apps environments | open | eerhardt | <https://github.com/microsoft/aspire/issues/21892> |
| Issue | #21888 | [automated] Track Zizmor remediation | open | radical | <https://github.com/microsoft/aspire/issues/21888> |
| Issue | #21812 | [automated] Platform-specific infrastructure tests have no matching GitHub CI lanes | open | radical | <https://github.com/microsoft/aspire/issues/21812> |
| Issue | #21858 | [AspireE2E][Old Dashboard] Graph controls are clipped at the bottom and all buttons are inaccessible for Aspire 17.0 | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21858> |
| Issue | #21799 | [AspireE2E]Metrics instrument count is not updated when adding a resource to the selection on Aspire 17.0 New dashboard | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21799> |
| Issue | #21798 | [AspireE2E]Graph view no longer displays hidden resources in the new dashboard for Aspire 17.0 | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21798> |
| Issue | #21838 | [aw] Milestone Changelog fetch-data fails on unretried GraphQL 502/504 from gh pr list | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21838> |
| Issue | #21877 | MCP doctor times out on Windows because Git inherits the server stdin pipe | open | ellahathaway | <https://github.com/microsoft/aspire/issues/21877> |
| Issue | #21879 | Make it easy to customize the dashboard application name for file-based AppHosts | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/21879> |
| Issue | #21872 | Add vulnerability auditing for container images used by Aspire integrations | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/21872> |
| Issue | #21866 | Dashboard structured logs toolbar overlaps the resource name and wraps poorly in constrained layouts | open | JamesNK | <https://github.com/microsoft/aspire/issues/21866> |
| Issue | #21864 | Dashboard sidebar minimum width is too large | open | JamesNK | <https://github.com/microsoft/aspire/issues/21864> |
| Issue | #21863 | Dashboard resource graph is slow to reflect sidebar selection changes | open | JamesNK | <https://github.com/microsoft/aspire/issues/21863> |
| Issue | #21862 | Dashboard traces page is missing the displayed count in the footer | open | JamesNK | <https://github.com/microsoft/aspire/issues/21862> |
| Issue | #21842 | ATS provisioning exports lose base-receiver methods when inherited capabilities target derived types | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21842> |
| Issue | #21829 | [CI Failure] Flaky: Aspire.Hosting.CodeGeneration.Go.Tests Go toolchain subprocess WaitForExitAsync cancelled by timeout on ubuntu-latest | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21829> |
| Issue | #21807 | [aw] Analyze CI Failure could not verify daily AI credits | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21807> |
| Issue | #21808 | Stale issue review: close candidates (Nov 2026) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21808> |
| Issue | #21805 | Aspire Team App canvas leaves a literal %SystemDrive% Windows cache folder in the repository | open | eerhardt | <https://github.com/microsoft/aspire/issues/21805> |
| Issue | #21804 | CI-failure issue curation 2026-11-05: 75 closed (70 stale, 5 duplicates) | open | davidfowl | <https://github.com/microsoft/aspire/issues/21804> |
| Issue | #21797 | [CI Failure] Flaky: ConfigSourceServiceGitTests.RunProcess_DescendantHoldingOutputCannotBlockShutdown gets OperationCanceledException instead of GitProcessCanceledException | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21797> |
| Issue | #21788 | [CI Failure] IntegrationHostProcessTests recovery fails on Windows: process scope cleanup cannot access 'exit-code' file in use | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21788> |
| Issue | #21779 | [automated] Analyze CI Failure requires TRX after setup/build skips all tests | open | radical | <https://github.com/microsoft/aspire/issues/21779> |
| Issue | #21776 | [CI Failure] Flaky: DcpStartupPublishesDevTunnelUrls fails Assert.True at line 810 on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21776> |
| Issue | #21775 | [CI Failure] Flaky: SqlServerReplCommandTests fail because sqlserver container never becomes healthy | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21775> |
| Issue | #21787 | Support for Bicep Parameters for Types other than string | open | cgettys-microsoft | <https://github.com/microsoft/aspire/issues/21787> |
| Issue | #21781 | [automated] CI analyzer classifies unexplained test-host crashes as infrastructure | open | radical | <https://github.com/microsoft/aspire/issues/21781> |
| Issue | #21780 | [automated] CI analyzer emits rerun requests while reruns are disabled | open | radical | <https://github.com/microsoft/aspire/issues/21780> |
| Issue | #21778 | [automated] Main CI failure issues discard the collected diagnosis | open | radical | <https://github.com/microsoft/aspire/issues/21778> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #18921 | [CI Failure] Flaky: ResourceLoggerForwarderServiceTests.ExecuteDoesNotThrowOperationCanceledWhenAppStoppingTokenSignaled times out intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18921> |
| Issue | #21403 | VS Code resource attach rejects display names accepted by debug status | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/21403> |
| Issue | #14503 | JavaScript resources launched by Aspire cannot automatically attach Visual Studio debugger (parity with .NET projects) | closed | djflan | <https://github.com/microsoft/aspire/issues/14503> |
| Issue | #20424 | [VS Code] Add "Go to source" action for source-backed resources | closed | JamesNK | <https://github.com/microsoft/aspire/issues/20424> |
| Issue | #14579 | Two BaseKubernetesResource with same Metadata.Name and then when running aspire publish the two resources overrides each other | closed | Wikenbrant | <https://github.com/microsoft/aspire/issues/14579> |
| Issue | #9281 | Publishing to docker compose fails for a project with multiple RuntimeIdentifiers | closed | rolfik-mycronic | <https://github.com/microsoft/aspire/issues/9281> |
| Issue | #20508 | [CI Failure] Flaky: Kusto emulator health check fails with socket error after failed connection attempt | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20508> |
| Issue | #21078 | Validate complete Entra local and Azure web-to-API scenarios and provisioning failure paths | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21078> |
| Issue | #21079 | Publish Entra integration documentation and end-to-end samples for release | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21079> |
| Issue | #19713 | AspireCliInvocationMode=DnxPinned is overridden by ambient AspireCliPath environment variable in VS Code | closed | afscrome | <https://github.com/microsoft/aspire/issues/19713> |
| Issue | #20902 | [CI Failure] Flaky: TerminalHostSignalTests.TerminalHostSubcommandStopsWhenOwningAppHostIsGone times out (aspire-managed exit code 124) on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20902> |
| Issue | #21421 | Follow up on deferred review feedback for the modern dashboard experience | closed | sebastienros | <https://github.com/microsoft/aspire/issues/21421> |
| Issue | #21742 | [CI Failure] Flaky: VS Code extension E2E diagnostic-logs times out waiting for element to become visible | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21742> |
| Issue | #21666 | [CI Failure] VS Code extension E2E (Windows, launch-profiles): Deno AppHost debug startup timeout followed by EBUSY teardown | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21666> |
| Issue | #21771 | [CI Failure] DCP dependency check times out running docker --version on Windows runners | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21771> |
| Issue | #20655 | Scheduled workflow failing: Generate API Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20655> |
| Issue | #21696 | [Main CI Failure] Main branch CI failure at 25935214f31928dd58118449a2fe2f96da09ac70 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21696> |
| Issue | #21400 | Docker Compose publish drops WithArgs on Redis: they land after sh -c and never reach redis-server | closed | yasmoradi | <https://github.com/microsoft/aspire/issues/21400> |
| Issue | #20866 | [Main CI Failure] Main branch CI failure at 230d5ac2a8b2c76e65e139985c695e188c111ad6 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20866> |
| Issue | #21410 | [Main CI Failure] Main branch CI failure at a43c69baac2cc3f6e799a5d9813a5dd947c066e8 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21410> |
| Issue | #21714 | [AspireE2E] An unhandled error occurs when navigating back to the Metrics page after viewing Traces or Structured Logs on Aspire 17.0 new Dashboard | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/21714> |
| Issue | #21332 | Custom templates threat model | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/21332> |
| Issue | #20881 | Vet the WSLc (WSL Container) product experience | closed | Copilot | <https://github.com/microsoft/aspire/issues/20881> |
| Issue | #20221 | Polish terminal focus borders and show the F6 hint only while focused | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20221> |
| Issue | #18366 | [automated] Unquarantine stable tests | closed | radical | <https://github.com/microsoft/aspire/issues/18366> |
| Issue | #21246 | Restore green CI on main | closed | radical | <https://github.com/microsoft/aspire/issues/21246> |
| Issue | #20147 | [CI Failure] Flaky: PeerInstallProbeTests fallback-to-version test fails on Windows with generated batch script | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20147> |
| Issue | #20284 | [CI Failure] Flaky: MauiBuildQueueTests.CancelQueuedResource_CompletesGracefullyAndDoesNotAcquireSemaphore asserts exact exception type but sometimes gets TaskCanceledException instead of OperationCanceledException | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20284> |
| Issue | #20653 | Support stable isolated port allocation for Git worktrees | closed | Copilot | <https://github.com/microsoft/aspire/issues/20653> |
| Issue | #21704 | [CI Failure] Flaky: NewCommandLocalTemplateTests.RepositoryTemplate_ResolvesRefsAndReusesPinnedCheckoutsAcrossInvocations times out after 30s on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21704> |
| Issue | #18777 | Scheduled workflow failing: Deployment Cleanup | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18777> |
| Issue | #19282 | VS Code extension E2E health ledger | closed | adamint | <https://github.com/microsoft/aspire/issues/19282> |
| Issue | #21705 | [CI Failure] Flaky: DashboardTestingBuilderTests.DashboardTestingPreservesInteractivityAfterAppHostStart times out on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21705> |
| Issue | #20340 | [automated] Add automatic reruns for current main CI failures | closed | radical | <https://github.com/microsoft/aspire/issues/20340> |
| Issue | #19662 | [CI Failure] Flaky: SealedSecretApplyStepTests wait/timeout test fails intermittently on Linux | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19662> |
| Issue | #21087 | Share bundle building and component verification between GitHub Actions and Azure Pipelines | closed | radical | <https://github.com/microsoft/aspire/issues/21087> |
| Issue | #19714 | Invalid AspireCliInvocationMode values are silently ignored | closed | afscrome | <https://github.com/microsoft/aspire/issues/19714> |
| Issue | #15930 | CLI E2E tests that use bare bash (non-Docker) fail with "aspire: command not found" outside PR context | closed | radical | <https://github.com/microsoft/aspire/issues/15930> |
| Issue | #19907 | Give Copilot code review a minimal dedicated setup | closed | radical | <https://github.com/microsoft/aspire/issues/19907> |
| Issue | #17909 | Winget based install self-extracts to the wrong directory | closed | radical | <https://github.com/microsoft/aspire/issues/17909> |
| Issue | #17245 | aspire update --self leaves stale .aspire-install.json sidecar; sidecar lies about install route | closed | radical | <https://github.com/microsoft/aspire/issues/17245> |
| Issue | #16825 | Tracking issue for follow-up work on #16787 (Prebuild CLI E2E Docker image) | closed | radical | <https://github.com/microsoft/aspire/issues/16825> |
| Issue | #16471 | Make acquisition script host fixture robust against listener teardown races | closed | radical | <https://github.com/microsoft/aspire/issues/16471> |
| Issue | #17146 | Make localhive installs self-contained like PR dogfood installs | closed | radical | <https://github.com/microsoft/aspire/issues/17146> |
| Issue | #16968 | Bring non-`dotnet test` runners to parity with `dotnet test` in CI tooling | closed | radical | <https://github.com/microsoft/aspire/issues/16968> |
| Issue | #20800 | [automated] TEST: Validate upstream Copilot issue-to-PR and Agent Merge tracking | closed | radical | <https://github.com/microsoft/aspire/issues/20800> |
| Issue | #20968 | [automated] [Failing test]: KubernetesServiceTests.CreateAsync_RecoveryBudgetIncludesConfirmationRetryDelay fails on Windows | closed | radical | <https://github.com/microsoft/aspire/issues/20968> |
| Issue | #15223 | Aspire.Hosting.Tests.DistributedApplicationTests.BeforeResourceStartedEvent_FiredForNormalResourcesOnInitialStartup | closed | radical | <https://github.com/microsoft/aspire/issues/15223> |
| Issue | #18247 | [Failing test]: AspireNew_WithAgentInit_InstallsPlaywrightWithoutErrors | closed | radical | <https://github.com/microsoft/aspire/issues/18247> |
| Issue | #21108 | [Go AppHost preview] CLI end-to-end and publish/deploy coverage | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21108> |
| Issue | #20711 | Foundry prompt agent Send Message fails with MissingMethodException for ResponsesClient constructor | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/20711> |
| Issue | #21157 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21157> |
| Issue | #21100 | Setting OTEL_RESOURCE_ATTRIBUTES on a resource drops Aspire's service.instance.id | closed | MrZakos | <https://github.com/microsoft/aspire/issues/21100> |
| Issue | #21765 | [CI Failure] Aspire.Cli.Tests (macos-latest) test host crashes with exit code 3 despite no failed tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21765> |
| Issue | #18819 | Cannot access the "public" URL of a resource when using the `dev.localhost`  applicationUrls | closed | ctolkien | <https://github.com/microsoft/aspire/issues/18819> |
| Issue | #14257 | Don't spam windows event logs | closed | afscrome | <https://github.com/microsoft/aspire/issues/14257> |
| Issue | #11152 | AddAzureBlobClient ignores WithName when creating Health Check | closed | SempiternalFlash | <https://github.com/microsoft/aspire/issues/11152> |
| Issue | #13716 | Aspire + Nuxt + Entra support | closed | joe-mills | <https://github.com/microsoft/aspire/issues/13716> |
| Issue | #10608 | Package 'Aspire.AppHost.Sdk 9.3.1' has a package type 'DotnetPlatform' that is not supported by project 'Tickets' | closed | eliassal | <https://github.com/microsoft/aspire/issues/10608> |
| Issue | #11993 | Creating Aspire projects should warn about space in the project names | closed | vsfeedback | <https://github.com/microsoft/aspire/issues/11993> |
| Issue | #9275 | [AspireE2E] Using the Aspire Starter App template, the "Distributed application started. Press Ctrl + C to shutdown " is missing when running the project using "dotnet new" command. | closed | Coleen17 | <https://github.com/microsoft/aspire/issues/9275> |
| Issue | #5117 | Windows with docker WSL, having issues with file mapping | closed | meghuizen | <https://github.com/microsoft/aspire/issues/5117> |
| Issue | #4732 | Getting sporadic "context deadline exceeded" or "Catastrophic failure" in Aspire GA with Azure Function Isolated Worker (.Net 8) | closed | reza8iucs | <https://github.com/microsoft/aspire/issues/4732> |
| Issue | #9000 | Unhealthy Azure Storage Emulator on some devices | closed | Yarkane | <https://github.com/microsoft/aspire/issues/9000> |
| Issue | #3552 | Blazor Aspire MS Identity combination | closed | Allann | <https://github.com/microsoft/aspire/issues/3552> |
| Issue | #15382 | New Account Create | closed | Nidhi-2009 | <https://github.com/microsoft/aspire/issues/15382> |
| Issue | #7281 | Unable to add package Aspire.Hosting.MongoDB to AppHost, dependencies don't support any target frameworks | closed | TallBaldGeek | <https://github.com/microsoft/aspire/issues/7281> |
| Issue | #4008 | `ContainerRegistryHook ` can't add image prefix | closed | afscrome | <https://github.com/microsoft/aspire/issues/4008> |
| Issue | #1869 | Add AzureB2C component | closed | dersia | <https://github.com/microsoft/aspire/issues/1869> |
| Issue | #4528 | Add PathBaseMiddleware to Aspire Dashboard  | closed | mu88 | <https://github.com/microsoft/aspire/issues/4528> |
| Issue | #3910 | Using custom schema registry for Kafka component requires custom hostname | closed | ErikBIMobject | <https://github.com/microsoft/aspire/issues/3910> |
| Issue | #16284 | Update install script to avoid relying on dotnet/aspire → microsoft/aspire repo redirect | closed | PatrickMatthiesen | <https://github.com/microsoft/aspire/issues/16284> |
| Issue | #13994 | Azure Managed Redis: Customize provisioning infrastructure docs example does not work / out of date. | closed | jonowilliams26 | <https://github.com/microsoft/aspire/issues/13994> |
| Issue | #11337 | PostgreSQL container fails with SCRAM auth when started by Aspire if data volume exists: “password authentication failed for user 'postgres'” | closed | axies20 | <https://github.com/microsoft/aspire/issues/11337> |
| Issue | #16488 | Python Apphost - Windows - aspire start failes in second run | closed | tjwald | <https://github.com/microsoft/aspire/issues/16488> |
| Issue | #12970 | `dotnet watch` on apphost does not start azure functions project | closed | earloc | <https://github.com/microsoft/aspire/issues/12970> |
| Issue | #9879 | WebApi doesn't start When Running Aspire via dotnet run | closed | gpryce-appliedmgt | <https://github.com/microsoft/aspire/issues/9879> |
| Issue | #7931 | Tracing for OpenAI integrations | closed | eerhardt | <https://github.com/microsoft/aspire/issues/7931> |
| Issue | #8111 | Starting a resource (WithExplicitStart) in Aspire tests | closed | m03chv13h | <https://github.com/microsoft/aspire/issues/8111> |
| Issue | #11899 | Broken link - https://aspire.dev/ in "Aspire Roadmap" | closed | yooakim | <https://github.com/microsoft/aspire/issues/11899> |
| Issue | #8724 | Set defaults on Sql server instances | closed | FullStackChef | <https://github.com/microsoft/aspire/issues/8724> |
| Issue | #8890 | PostgreSqlFlexibleServerVersion enum missing Ver16, PostgreSQL 16 | closed | godefroi | <https://github.com/microsoft/aspire/issues/8890> |
| Issue | #9575 | Dashboard reports ActivationFailed in ACA for ProjectResource that ran to completion | closed | dimenus | <https://github.com/microsoft/aspire/issues/9575> |
| Issue | #1209 | Add Aspire related analyzers for improved developer experience | closed | timheuer | <https://github.com/microsoft/aspire/issues/1209> |
| Issue | #2427 | Add OpenTelemetry tracing instrumentation for SqlClient  | closed | roji | <https://github.com/microsoft/aspire/issues/2427> |
| Issue | #8813 | [tests] Quarantined tests dashboard | closed | radical | <https://github.com/microsoft/aspire/issues/8813> |
| Issue | #21106 | [Go AppHost preview] Remove the feature flag and expose Go templates | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21106> |
| Issue | #21401 | `aspire new`: clarify the scope of Aspire's agent integrations | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/21401> |
| Issue | #21684 | [aw] Analyze CI Failure is missing required data | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21684> |
| Issue | #21607 | [aw] Failed jobs: Milestone Changelog Generator | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21607> |
| Issue | #21509 | [aw] Analyze CI Failure is missing required data | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21509> |
| Issue | #21376 | [aw] Analyze CI Failure reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21376> |
| Issue | #21374 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21374> |
| Issue | #21192 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21192> |
| Issue | #21182 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21182> |
| Issue | #21177 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21177> |
| Issue | #21174 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21174> |
| Issue | #21160 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21160> |
| Issue | #21159 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21159> |
| Issue | #21158 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21158> |
| Issue | #21140 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21140> |
| Issue | #21096 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21096> |
| Issue | #21063 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21063> |
| Issue | #21061 | [aw] Analyze CI Failure timed out | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21061> |
| Issue | #21057 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21057> |
| Issue | #21056 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21056> |
| Issue | #21054 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21054> |
| Issue | #21043 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21043> |
| Issue | #21041 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21041> |
| Issue | #21040 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21040> |
| Issue | #21037 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21037> |
| Issue | #21028 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21028> |
| Issue | #21024 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21024> |
| Issue | #21023 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21023> |
| Issue | #21010 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21010> |
| Issue | #20995 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20995> |
| Issue | #20994 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20994> |
| Issue | #20990 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20990> |
| Issue | #20985 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20985> |
| Issue | #20980 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20980> |
| Issue | #20965 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20965> |
| Issue | #20963 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20963> |
| Issue | #20945 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20945> |
| Issue | #20942 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20942> |
| Issue | #20941 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20941> |
| Issue | #20928 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20928> |
| Issue | #20923 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20923> |
| Issue | #20922 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20922> |
| Issue | #20908 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20908> |
| Issue | #20884 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20884> |
| Issue | #20883 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20883> |
| Issue | #20870 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20870> |
| Issue | #20865 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20865> |
| Issue | #20864 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20864> |
| Issue | #20863 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20863> |
| Issue | #20848 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20848> |
| Issue | #20842 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20842> |
| Issue | #20838 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20838> |
| Issue | #20835 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20835> |
| Issue | #20834 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20834> |
| Issue | #20827 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20827> |
| Issue | #20826 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20826> |
| Issue | #20810 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20810> |
| Issue | #20794 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20794> |
| Issue | #20792 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20792> |
| Issue | #20784 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20784> |
| Issue | #20769 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20769> |
| Issue | #20768 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20768> |
| Issue | #20717 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20717> |
| Issue | #20695 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20695> |
| Issue | #20690 | [aw] Analyze CI Failure timed out | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20690> |
| Issue | #20682 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20682> |
| Issue | #20680 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20680> |
| Issue | #20679 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20679> |
| Issue | #20660 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20660> |
| Issue | #20656 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20656> |
| Issue | #20654 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20654> |
| Issue | #20639 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20639> |
| Issue | #20635 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20635> |
| Issue | #20625 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20625> |
| Issue | #20595 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20595> |
| Issue | #20549 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20549> |
| Issue | #20547 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20547> |
| Issue | #20544 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20544> |
| Issue | #20540 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20540> |
| Issue | #20517 | [aw] Analyze CI Failure timed out | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20517> |
| Issue | #20515 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20515> |
| Issue | #20504 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20504> |
| Issue | #20503 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20503> |
| Issue | #20476 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20476> |
| Issue | #20475 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20475> |
| Issue | #20470 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20470> |
| Issue | #20465 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20465> |
| Issue | #20453 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20453> |
| Issue | #20452 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20452> |
| Issue | #20437 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20437> |
| Issue | #20435 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20435> |
| Issue | #20433 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20433> |
| Issue | #20428 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20428> |
| Issue | #20418 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20418> |
| Issue | #20415 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20415> |
| Issue | #20393 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20393> |
| Issue | #20392 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20392> |
| Issue | #20379 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20379> |
| Issue | #20375 | [aw] Failed jobs: Analyze CI Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20375> |
| Issue | #20354 | [aw] Failure cascade detected | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20354> |
| Issue | #20270 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20270> |
| Issue | #20239 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20239> |
| Issue | #20238 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20238> |
| Issue | #20237 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20237> |
| Issue | #20235 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20235> |
| Issue | #20226 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20226> |
| Issue | #20207 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20207> |
| Issue | #20206 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20206> |
| Issue | #20205 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20205> |
| Issue | #20201 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20201> |
| Issue | #20183 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20183> |
| Issue | #20182 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20182> |
| Issue | #20145 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20145> |
| Issue | #20144 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20144> |
| Issue | #20130 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20130> |
| Issue | #20129 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20129> |
| Issue | #20102 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20102> |
| Issue | #20095 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20095> |
| Issue | #20088 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20088> |
| Issue | #20087 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20087> |
| Issue | #20077 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20077> |
| Issue | #20076 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20076> |
| Issue | #20033 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20033> |
| Issue | #20024 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20024> |
| Issue | #20023 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20023> |
| Issue | #20008 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20008> |
| Issue | #19962 | [aw] Milestone Changelog Generator is missing required tool | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19962> |
| Issue | #19861 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19861> |
| Issue | #19825 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19825> |
| Issue | #19824 | [aw] PR Documentation Check produced no safe outputs | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19824> |
| Issue | #19808 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19808> |
| Issue | #19695 | [aw] Generate release notes for a new stable Aspire release failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19695> |
| Issue | #19694 | [aw] Update aspire.dev support page for a new Aspire release failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19694> |
| Issue | #19599 | [aw] Failed jobs: PR Documentation Check | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19599> |
| Issue | #19586 | [aw] PR Documentation Check produced no safe outputs | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19586> |
| Issue | #19573 | [aw] Repo Pulse — Daily Report reported incomplete result | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19573> |
| Issue | #19437 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19437> |
| Issue | #19428 | [aw] Analyze CI Failure failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19428> |
| Issue | #19425 | [aw] Milestone Changelog Generator failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19425> |
| Issue | #19087 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19087> |
| Issue | #16657 | Update Aspire skill to inspect browser log resources from WithBrowserLogs | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/16657> |
| Issue | #19598 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19598> |
| Issue | #16574 | aspire cli - agent init --skills dotnet-inspect fails | closed | tjwald | <https://github.com/microsoft/aspire/issues/16574> |
| Issue | #21603 | [CI Failure] Flaky: VS Code E2E (Windows, launch-profiles) Deno AppHost debug times out because js-debug's 10s attach timeout expires | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21603> |
| Issue | #21414 | [Failing test]: Radius MongoDB readiness reports no matching resources | closed | radical | <https://github.com/microsoft/aspire/issues/21414> |
| Issue | #21405 | `aspire agent init`: provide a cohesive final configuration report | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/21405> |
| Issue | #21328 | [Failing test] DistributedApplicationTests.BeforeResourceStartedEvent_NotFiredForExplicitStartOnInitialCreation StopAsync cancelled on Windows | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21328> |
| Issue | #21325 | [Failing test] ChildProcessTests.Shutdown_UsesSharedGracefulBudgetAndEscalates times out on macOS | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21325> |
| Issue | #21007 | [CI Failure] Flaky: ChildProcessTests.Shutdown_UsesSharedGracefulBudgetAndEscalates(signalFailure: True) times out on macOS under CPU contention | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21007> |
| Issue | #20512 | [CI Failure] Flaky: MongoDbReplicaSetFunctionalTests.VerifyMongoDBMultiNodeReplicaWithDataShouldWorkAcrossUsages(topologyChange: None) fails to become healthy | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20512> |
| Issue | #9860 | Failing test: Aspire.Hosting.Azure.Tests.AzureSignalREmulatorFunctionalTest.VerifyAzureSignalREmulatorResource | closed | radical | <https://github.com/microsoft/aspire/issues/9860> |
| Issue | #8649 | [Failing test]: BuildAndRunStarterTemplateBuiltInTest.BuildAndRunStarterTemplateBuiltInTest_Test | closed | danmoseley | <https://github.com/microsoft/aspire/issues/8649> |
| Issue | #8342 | [Failing test]: Aspire.Azure.Messaging.WebPubSub.Tests.ConformanceTests.LoggerFactoryIsUsedByRegisteredClient | closed | radical | <https://github.com/microsoft/aspire/issues/8342> |
| Issue | #8193 | Failing tests - `Aspire.Pomelo.EntityFrameworkCore.MySql.Tests.ConformanceTests.CanRegisterMultipleInstancesUsingDifferentKeys` | closed | radical | <https://github.com/microsoft/aspire/issues/8193> |
| Issue | #20915 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_NoOptions_OnCancellation_ForceKillsProcessTreeAndReturns times out on macOS | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20915> |
| Issue | #20839 | [CI Failure] Flaky: VS Code extension E2E (Linux, deno-debugger) times out waiting for Aspire AppHost debug startup | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20839> |
| Issue | #20644 | [Failing test]: Aspire.Dashboard.Tests.Integration.Playwright.ResourceSelectInteractionTests.PointerSelection\_ClosesDropdownAndSupportsConsecutiveChanges | closed | radical | <https://github.com/microsoft/aspire/issues/20644> |
| Issue | #20641 | [Failing test]: Aspire.Dashboard.Tests.Integration.Playwright.TerminalTests.ExplicitSizing\_TakesPrimaryAndAppliesRequestedGrid | closed | radical | <https://github.com/microsoft/aspire/issues/20641> |
| Issue | #20640 | [Failing test]: Aspire.Dashboard.Tests.Integration.Playwright.AspireMenuLayoutTests.StructuredLogActions\_TriggerRemainsVisibleAndMenuItemsSharePopup | closed | radical | <https://github.com/microsoft/aspire/issues/20640> |
| Issue | #20632 | [CI Failure] Aspire.Azure.Messaging.EventHubs.Tests (windows-latest) net9.0 test host crashes with unhandled CLR exception (0xE0434352) despite all tests passing | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20632> |
| Issue | #20579 | [Failing test]: WithUrlsTests causes Windows runner loss | closed | radical | <https://github.com/microsoft/aspire/issues/20579> |
| Issue | #20493 | [CI Failure] Flaky: ManageDataDialogTests bUnit JSInterop hang on IconCheckbox.initializeIconCheckboxKeyboard call | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20493> |
| Issue | #20320 | [Main CI Failure] Main branch CI failure at d6bd440a74f3445fcc7a26b1ea055d7967cd0b0e | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20320> |
| Issue | #20234 | [CI Failure] SQL Server 2022 Testcontainer exits with code 1 via handle-crash.sh, breaking EF Core/SqlClient tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20234> |
| Issue | #20137 | [CI Failure] Azure.Search.Documents (ubuntu-latest) test run crashes with exit code 134 (SIGABRT), triggering hang dump check | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20137> |
| Issue | #20128 | [CI Failure] SqlServerContainerFixture InitializeAsync fails because Ryuk image pull from netaspireci.azurecr.io is refused (connection refused) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20128> |
| Issue | #20121 | [CI Failure] Flaky: TelemetryHookScriptTests pwsh hook process does not exit within 30 seconds on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20121> |
| Issue | #20108 | [CI Failure] Flaky: AppHostServerSessionTests.Start_StopRequested_GracefulSignalerThrows_StillEscalatesToKill fails intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20108> |
| Issue | #20105 | [CI Failure] GitHub Actions artifact download fails with 403 Forbidden from intermediary during ListArtifacts | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20105> |
| Issue | #20100 | [CI Failure] Templates-XUnit_Default_NewUpAndBuildSupportProjectTemplatesTests (windows-latest) fails during 'Install sdk for nuget based testing' step | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20100> |
| Issue | #20090 | [CI Failure] Infrastructure.Tests (ubuntu-latest) job fails with generic exit code 2, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20090> |
| Issue | #20089 | [CI Failure] Aspire.Cli.Tests (ubuntu-latest) job fails with generic exit code 2, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20089> |
| Issue | #20078 | [CI Failure] Flaky: DistributedApplicationPipelineTests.WithPipelineStepFactory_MultipleStepsAsyncOverload_ExecutesAllSteps fails with UnauthorizedAccessException during 'destroy' step on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20078> |
| Issue | #20061 | [CI Failure] StackExchange.Redis (windows-latest) test job fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20061> |
| Issue | #20044 | [CI Failure] Build native CLI archive (Windows win-x64) fails at 'Build RID-specific packages' step with generic exit code 1 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20044> |
| Issue | #20028 | [CI Failure] Set up .NET Core step fails with 'read ECONNRESET' network error | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20028> |
| Issue | #20010 | [CI Failure] Npgsql (windows-latest) 'Build test project' step fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20010> |
| Issue | #19991 | [CI Failure] Templates-NewUpAndBuildStandaloneTemplateTests (macos-latest) 'Run nuget dependent tests' step fails with generic exit code 3, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19991> |
| Issue | #19983 | [CI Failure] Setup Deno step fails on windows-latest, unrelated to PR changes (likely transient download/network issue) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19983> |
| Issue | #19982 | [CI Failure] Flaky: AzureKubernetesInfrastructureTests DestroyPipeline tests time out on windows-latest | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19982> |
| Issue | #19941 | [CI Failure] Flaky: NewUpAndBuildStandaloneTemplateTests.CanNewAndBuild(aspire-ts-cs-starter, Net11) fails building generated project on Windows with preview .NET 11 SDK | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19941> |
| Issue | #19923 | [CI Failure] TypeScript SDK Validation fails on both Node 22.x and 24.x for PRs not touching polyglot SDK code | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19923> |
| Issue | #19839 | [CI Failure] Flaky: ProcessExecutionTests.WaitForExitAsync_WithGracefulServices_SignalerThrows_StillEscalatesToKill fails with 'Assert.Single() Failure: The collection was empty' on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19839> |
| Issue | #19838 | [CI Failure] Multiple unrelated 'Build test project' jobs (Hosting.Azure, Hosting.Azure.Kubernetes, Playground) fail with generic exit code 1 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19838> |
| Issue | #19737 | [CI Failure] GitHub Actions runner fails to parse actions/checkout's action.yml manifest (corrupted download) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19737> |
| Issue | #19725 | [CI Failure] Hosting.Browsers (windows-latest) 'Build test project' step fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19725> |
| Issue | #19696 | [CI Failure] Flaky: OtlpHttpServiceTests.CallService_OtlpHttpEndPoint_ExceedRequestLimit_Failure fails with 'Connection reset by peer' socket error | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19696> |
| Issue | #19671 | [CI Failure] Flaky: Dashboard DashboardDataSourceTests.RunMode_DeletesOldestRunWhenLimitIsExceeded fails with UnauthorizedAccessException on Windows during metadata file move | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19671> |
| Issue | #19634 | [CI Failure] CLI (windows-latest) test job fails with generic exit code 1, unrelated to PR changes (issue template only) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19634> |
| Issue | #19596 | [CI Failure] CLI smoke test (aspire new + restore) fails during Homebrew/WinGet installer artifact preparation | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19596> |
| Issue | #19530 | [CI Failure] Templates-BuildAndRunStarterTemplateBuiltInTest 'Build and archive test project' step fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19530> |
| Issue | #19515 | [CI Failure] Flaky: DashboardClientTests.SubscribeResources_ReplicaStartedAtChanged_EmitsParentChange sees duplicate resource change events | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19515> |
| Issue | #19452 | [CI Failure] Polyglot SDK Validation: Java SDK Validation job fails building validation image with exit code 1, unrelated to PR changes; job logs unavailable for detailed diagnosis | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19452> |
| Issue | #19361 | [CI Failure] Polyglot SDK Validation: TypeScript SDK Validation (Node 24.x) job fails with exit code 1, unrelated to PR-changed Hosting/C# files; job logs unavailable for detailed diagnosis | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19361> |
| Issue | #19327 | [CI Failure] GitHub artifact upload fails with 403 Forbidden from intermediary during FinalizeArtifact | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19327> |
| Issue | #19201 | [CI Failure] Flaky: InternalMicrosoftDetectorTests.CheckCopilotCliAsync_UsesOverallGitHubTokenCandidateTimeout fails intermittently on Windows runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19201> |
| Issue | #19167 | [CI Failure] dnceng NuGet flat2 package downloads time out (no data received for 60000ms) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19167> |
| Issue | #19166 | [CI Failure] Azure Functions Core Tools install fails with HTTP 404 from cdn.functions.azure.com | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19166> |
| Issue | #18901 | [CI Failure] SQL Server container exits with CoInitializeSecurity failure (HRESULT 0x800706b5) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18901> |
| Issue | #18711 | [Failing test]: Aspire.Playground.Tests.BlazorWasmHostingTests.StandaloneBlazorWasm\_BrowserRendersWeatherAndSendsTelemetry | closed | radical | <https://github.com/microsoft/aspire/issues/18711> |
| Issue | #18710 | [Failing test]: Aspire.Playground.Tests.BlazorWasmHostingTests.HostedBlazorWasm\_BrowserRendersWeatherAndSendsTelemetry | closed | radical | <https://github.com/microsoft/aspire/issues/18710> |
| Issue | #18563 | [Failing test]: Aspire.Hosting.Containers.Tests.WithDockerfileTests.AddDockerfileLaunchesContainerSuccessfully | closed | adamint | <https://github.com/microsoft/aspire/issues/18563> |
| Issue | #18560 | [Failing test]: Aspire.Hosting.Maui.Tests.MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync\_SkipsReplayStateAndReleasesOnStableState | closed | adamint | <https://github.com/microsoft/aspire/issues/18560> |
| Issue | #16190 | [Failing test]: Aspire.Hosting.Tests.Pipelines.DistributedApplicationPipelineTests.ExecuteAsync\_WithDependencyFailure\_ReportsFailedDependency | closed | radical | <https://github.com/microsoft/aspire/issues/16190> |
| Issue | #16062 | [Failing test]: Aspire.Cli.EndToEnd.Tests.PythonReactTemplateTests.CreateAndRunPythonReactProject | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/16062> |
| Issue | #15113 | [Failing test]: Aspire.Cli.EndToEnd.Tests.MultipleAppHostTests.DetachFormatJsonProducesValidJson | closed | radical | <https://github.com/microsoft/aspire/issues/15113> |
| Issue | #13964 | Aspire.Hosting.Tests.Publishing.ResourceContainerImageBuilderTests.CanBuildImageFromDockerfileResource_WithAllOptionsSet | closed | radical | <https://github.com/microsoft/aspire/issues/13964> |
| Issue | #13300 | Failing test: Aspire.Hosting.Azure.Tests.AzureDeployerTests.DeployAsync_WithDockerfile_Works | closed | radical | <https://github.com/microsoft/aspire/issues/13300> |
| Issue | #12730 | Failing test: Aspire.Dashboard.Components.Tests.Controls.ResourceDetailsTests.ClickMaskAllSwitch_NewResource_MaskChanged | closed | radical | <https://github.com/microsoft/aspire/issues/12730> |
| Issue | #12725 | Failing test: Aspire.RabbitMQ.Client.Tests.AspireRabbitMQLoggingTests.TestInfoAndWarn | closed | radical | <https://github.com/microsoft/aspire/issues/12725> |
| Issue | #12512 | Failing test: Aspire.Hosting.Azure.Tests.AzureDeployerTests.DeployAsync_WithSingleRedisCache_CallsDeployingComputeResources | closed | radical | <https://github.com/microsoft/aspire/issues/12512> |
| Issue | #12505 | Failing test: Aspire.Hosting.Tests.WithUrlsTests.MultipleUrlsForSingleEndpointAreIncludedInUrlSnapshot | closed | radical | <https://github.com/microsoft/aspire/issues/12505> |
| Issue | #12433 | Failing test: Aspire.Hosting.Tests.WithUrlsTests.ExpectedNumberOfUrlsForReplicatedResource | closed | radical | <https://github.com/microsoft/aspire/issues/12433> |
| Issue | #12407 | Failing test: Template tests randomly failing with ` The SDK 'Aspire.AppHost.Sdk/13.0.0-ci' specified could not be found.` not found. | closed | radical | <https://github.com/microsoft/aspire/issues/12407> |
| Issue | #12406 | Failing test: Aspire.Hosting.NodeJs.Tests.AddViteAppTests.VerifyDefaultDockerfile on AzDO | closed | radical | <https://github.com/microsoft/aspire/issues/12406> |
| Issue | #12389 | Failing test: Aspire.Azure.Npgsql.Tests.ConformanceTests.BothDataSourceAndConnectionCanBeResolved | closed | radical | <https://github.com/microsoft/aspire/issues/12389> |
| Issue | #12364 | Failing test: Aspire.Hosting.Tests.Pipelines.DistributedApplicationPipelineTests.ExecuteAsync_WhenStepFails_PipelineLoggerIsCleanedUp | closed | radical | <https://github.com/microsoft/aspire/issues/12364> |
| Issue | #12208 | Failing test: Aspire.Hosting.Python.Tests.AddPythonAppTests.WithVirtualEnvironment_CanBeChainedWithOtherExtensions | closed | radical | <https://github.com/microsoft/aspire/issues/12208> |
| Issue | #12064 | [Failing test]: Aspire.Hosting.Yarp.Tests.YarpConfigGeneratorTests.GenerateEnvVariablesConfiguration | closed | radical | <https://github.com/microsoft/aspire/issues/12064> |
| Issue | #10087 | Failing test: Aspire.Hosting.Azure.Tests.AzureEnvironmentResourceTests.WhenUsedWithAzureContainerAppsEnvironment_GeneratesProperBicep | closed | radical | <https://github.com/microsoft/aspire/issues/10087> |
| Issue | #20979 | Support --envvar-source for aspire secret set | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20979> |
| Issue | #21284 | [AspireE2E] Debugging a new Aspire Starter App fails because ApiService.exe does not exist until running aspire run | closed | maitan11 | <https://github.com/microsoft/aspire/issues/21284> |
| Issue | #19920 | [CI Failure] Polyglot SDK Validation: TypeScript SDK Validation (Node 22.x) job fails with exit code 1, unrelated to PR-changed files; job logs unavailable for detailed diagnosis | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19920> |
| Issue | #20872 | [Main CI Failure] Main branch CI failure at 785cf4c7d38f54cacaf71cd35ceec04d83534679 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20872> |
| Issue | #21699 | [CI Failure] Flaky: DevTunnelMonitorTests.ReconciliationRetriesUntilUnrecognizedOutputCanBeReplacedByServiceStatus ObjectDisposedException | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21699> |
| Issue | #20861 | [CI Failure] Flaky: DevTunnelMonitorTests.HostOutputAllocatesPortsWithoutQueryingServiceStatus throws ObjectDisposedException on disposed IServiceProvider | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20861> |
| Issue | #19308 | [CI Failure] Flaky: AzureResourcePreparerTests.PipelineStepAfterBeforeStartCanInspectRoleAssignmentsForTargetAzureResource fails with 'Collection was modified' race condition | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19308> |
| Issue | #19638 | [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19638> |
| Issue | #19379 | [CI Failure] Dashboard (ubuntu-latest) test run fails with exit code 2, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19379> |
| Issue | #19363 | [CI Failure] Flaky: DashboardClientTests.WatchWithRecovery_RepeatedFailures_FiresMultipleDisconnectedEvents times out waiting for disconnected events | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19363> |
| Issue | #19835 | [CI Failure] Flaky: ExtensionChangelogFinalizedWorkflowTests.ReleaseBranchWithStaleExtensionBaseAdvanceFails fails on unrelated PRs, likely due to repo/branch state assumptions | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19835> |
| Issue | #21344 | [Java AppHost] addParameterWithGeneratedValue fails because GenerateParameterDefault int fields are generated as double | closed | marshalhayes | <https://github.com/microsoft/aspire/issues/21344> |
| Issue | #20369 | Scheduled workflow failing: Sync Main to Release 14.0 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20369> |
| Issue | #18648 | CI infrastructure failing: Outerloop Tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18648> |
| Issue | #17503 | Support reclaiming storage space on ACR purge task | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/17503> |
| Issue | #18950 | [CI Failure] Flaky: CanNewAndBuild(aspire-mstest, Net8) fails with Roslyn Method not found TryGetMaxCharCount on macOS | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18950> |
| Issue | #19362 | [CI Failure] Flaky: XUnit_V2_NewUpAndBuildSupportProjectTemplatesTests.CanNewAndBuild times out after 300s running 'dotnet new aspire-apphost' on Windows runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19362> |
| Issue | #20871 | [CI Failure] Flaky: ChildProcessTests.Windows_GracefulTimeoutPreservesAppHostCleanupWorkerButReapsOwnedTrees throws when reading ExitCode on a process not started by the object | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20871> |
| Issue | #21132 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Local) RemoteExecutor times out under CPU contention | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21132> |
| Issue | #19011 | [CI Failure] Flaky: WithDockerfileTests.AddDockerfileLaunchesContainerSuccessfully times out in DcpResourceWatcher | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19011> |
| Issue | #19168 | [CI Failure] dotnet tool restore fails with 'Connection reset by peer' during arcade tool restore | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19168> |
| Issue | #19442 | [CI Failure] Flaky: ContainerTunnelTests.ProxylessEndpointWorksWithContainerTunnel times out with socket cancellation | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19442> |
| Issue | #19456 | [CI Failure] Flaky: TestingFactoryTests.HttpClientGetTest times out intermittently | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19456> |
| Issue | #19480 | [CI Failure] GitHub codeload.github.com rate limiting (429) when downloading actions/download-artifact action archive | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19480> |
| Issue | #19526 | [CI Failure] Flaky: DashboardClientTests.SubscribeResources_NonProjectedReplicaUpdate_EmitsReplicaOnly fails with replica naming/ordering race condition | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19526> |
| Issue | #19529 | [CI Failure] Flaky: DashboardClientTests.SubscribeResources_ReplicaStateOwnedPropertyMetadataChanged_EmitsParentChange fails with Assert.True() Failure | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19529> |
| Issue | #19623 | [CI Failure] DCP dependency check times out waiting on podman during Valkey functional tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19623> |
| Issue | #19659 | [CI Failure] Flaky: AppHostServerSessionTests.Start_StopRequested_GracefulIgnored_ExpireEscalatesToTreeKill times out intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19659> |
| Issue | #18232 | 📈 CI Daily Pulse | closed | radical | <https://github.com/microsoft/aspire/issues/18232> |
| Issue | #18672 | [CI Failure] NuGet.org serving invalid/corrupt package data (non-object JSON or corrupt nupkg) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18672> |
| Issue | #18764 | [CI Failure] GitHub Actions infrastructure: Service Unavailable when resolving action download info | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18764> |
| Issue | #18783 | [CI Failure] .NET install script download fails with HTTP 503 Service Unavailable from builds.dotnet.microsoft.com | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18783> |
| Issue | #18800 | [CI Failure] Flaky: OrphanDetectionEnvironmentTests.Apply_WithNullStartTime_StampsPidOnly fails with Assert.False on macOS | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18800> |
| Issue | #18801 | [CI Failure] Flaky: AspireRabbitMQLoggingTests.TestExceptionWithoutInnerException fails with empty collection | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18801> |
| Issue | #18821 | [CI Failure] .NET install script download fails with SSL/TLS authentication error from builds.dotnet.microsoft.com on Windows runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18821> |
| Issue | #18897 | [CI Failure] Flaky: AzureCosmosDBEmulatorFunctionalTests fails because CosmosDB emulator evaluation period has expired | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18897> |
| Issue | #18967 | [CI Failure] .NET install script SDK download fails with connection closed mid-stream from builds.dotnet.microsoft.com | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18967> |
| Issue | #18994 | [CI Failure] dnceng NuGet feed returns HTTP 503 Service Unavailable during package restore | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18994> |
| Issue | #19002 | [CI Failure] Windows runner temp file command path inaccessible: 'A device which does not exist was specified' | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19002> |
| Issue | #21557 | [CI Failure] Flaky: Infrastructure.Tests fake executables fail with exit 126 (Text file busy) – LastSuccessfulMainRunFallsBackToOlderWindow | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21557> |
| Issue | #18920 | [CI Failure] Flaky: ConformanceTests.TracingEnablesTheRightActivitySource_Keyed remote executor hangs due to Azure Identity credential failures on Windows runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18920> |
| Issue | #20241 | [CI Failure] Flaky: Aspire.Azure.Storage.Queues.Tests ConformanceTests.TracingEnablesTheRightActivitySource(_Keyed) RemoteExecutor hangs due to Azure Identity IMDS credential probes on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20241> |
| Issue | #19449 | [CI Failure] Flaky: DownloadNativeArchivesTests.FailsWhenOneArtifactDownloadFails_ButReportsAllResults fails with 'Address already in use' port conflict | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19449> |
| Issue | #19014 | [CI Failure] Flaky: AzureSqlPrincipalReconciliationTests fail because SqlServerContainerFixture cannot bind port 1433 (address already in use) | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19014> |
| Issue | #21633 | Polyglot TypeScript SDK Validation fails with npm E404 right after upstream npm publishes | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21633> |
| Issue | #20759 | [CI Failure] Flaky: ManageDataDialogTests(dashboardClientIsReadOnly: True) bUnit JSInterop hang on IconCheckbox.initializeIconCheckboxKeyboard call | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20759> |
| Issue | #19876 | [CI Failure] GitHub artifact upload fails with ETIMEDOUT network timeout | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19876> |
| Issue | #19637 | [CI Failure] Flaky: DownloadFailingJobLogsToolTests.ReportsMissingArtifactWithoutFailing assertion mismatch | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19637> |
| Issue | #19542 | [CI Failure] Flaky: AddPythonAppTests.PythonResourceSupportsWithReference fails to create Python virtual environment on Windows runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19542> |
