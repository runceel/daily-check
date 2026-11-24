# microsoft/aspire *(詳細モード)*

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 18 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 26 |
| クローズ Issue          | 15 |
| 主要コントリビューター  | davidfowl, danegsta, aspire-repo-bot[bot], joperezr, gabisonia, radical |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#21795](https://github.com/microsoft/aspire/issues/21795) — Aspire 17 rejects previously accepted empty parameter values; clarify breaking change and dashboard failure （Issue / open / joperezr）
  意図的に空のパラメーターを渡す利用者は17系更新前に起動を確認し、任意値なら`.withOptional()`を検討してください。未解決の互換性報告です。
- **⚠ 破壊的変更** [#20521](https://github.com/microsoft/aspire/issues/20521) — [13.6] Breaking change to `IInteractionService` （Issue / closed / afscrome）
  独自実装・モックの保守者は`PromptTerminalAsync(string, AspireTerminal, TerminalInteractionOptions?, CancellationToken)`の実装が必要です。Issueのクローズは旧実装との互換性回復を意味しません。
- **⚠ セキュリティ** [#22367](https://github.com/microsoft/aspire/pull/22367) — Merge release/13.6 into release/17.0 after 13.6.5 security release （PR / merged / joperezr）
  Dashboard・CLIの利用者は13.6.5の認証・トンネル・SDKビルド隔離の修正が17系へ持ち越される点を確認し、利用配布物への収録を追ってください。
- **⚠ セキュリティ** [#22365](https://github.com/microsoft/aspire/pull/22365) — Merge release/13.6 into release/17.0 after 13.6.5 security release （PR / closed / joperezr）
  この案は未マージでクローズし、microsoft/aspire#22367に置き換わりました。修正適用状況は後継PRを参照してください。
- **非推奨/廃止** [#22389](https://github.com/microsoft/aspire/issues/22389) — AspireHostingSDKVersion is empty in project-file properties for package-based AppHosts （Issue / open / thomhurst）
  package-based AppHostへ移行する担当者は、プロジェクト本文で`$(AspireHostingSDKVersion)`を参照した値が空にならないか確認してください。`.targets`での遅い定義による未解決報告です。
- **非推奨/廃止** [#22383](https://github.com/microsoft/aspire/issues/22383) — CLI `aspire update` doesn't migrate from `Aspire.AppHost.Sdk` to `Microsoft.NET.Sdk` but instead updates obsolete SDK （Issue / open / thimok）
  `aspire update`だけでは旧SDKの除去まで行われません。`Microsoft.NET.Sdk`と明示的なAppHostパッケージへの移行を、ASPIRE012の案内に従い別途確認してください。
- **非推奨/廃止** [#22340](https://github.com/microsoft/aspire/pull/22340) — [release/17.0] Report obsolete Aspire.AppHost.Sdk in aspire update --migrate （PR / merged / maddymontaquila）
  期間開始前のマージを期間内更新として検出した参照項目です。`--migrate`の案内を修正しますが、旧SDKを自動除去する機能ではありません。
- **非推奨/廃止** [#22335](https://github.com/microsoft/aspire/issues/22335) — aspire update --migrate says 'latest recommended conventions' while build emits ASPIRE012 （Issue / closed / maddymontaquila）
  microsoft/aspire#22340で案内の矛盾に対応。利用者は「自動移行なし」と「最新推奨構成済み」を区別し、ASPIRE012があれば承認を伴う移行を検討してください。
- **診断ログの機密情報保護** [microsoft/aspire#22208](https://github.com/microsoft/aspire/pull/22208): CLI更新時の既知NuGetフィードURLの資格情報を、出力の保存・表示前にマスクします。未知URLや任意の秘密情報まで網羅する修正ではないため、ログの共有前確認は継続してください。
- **API互換性・差分基準更新** [microsoft/aspire#22185](https://github.com/microsoft/aspire/pull/22185): 17系の公開API基準にはAKS node poolのコンストラクター引数追加・VMサイズ定数削除も含まれます。独自統合や定数参照を持つ利用者は詳細の差分を確認してください。

Go AppHostのGA関連Issue microsoft/aspire#21113、microsoft/aspire#21111、microsoft/aspire#21109、microsoft/aspire#21107は、いずれも**NOT_PLANNEDで他Issueへ統合**されていました。GA完了・検証完了の根拠ではないため、GA昇格の警告から除外しています。

## このリポジトリの要点

- 13.6.5のセキュリティ修正を17系へ統合するmicrosoft/aspire#22367と、NuGet診断の資格情報マスクmicrosoft/aspire#22208が重要です。
- 17系移行では空パラメーターの必須判定、旧SDK廃止、MSBuildプロパティ評価時期に注意。API基準更新は新実装そのもののPRとは区別し、AKS互換性差分も確認してください。
- microsoft/aspire#22346はVisual StudioでのFunctionsデバッグを修正。`aspire update --dry-run`の検証分離も入り、通常更新と復元検証の意味が変わります。
- GoのGA関連Issueクローズは追跡先の統合であり、提供段階の昇格とは判断していません。

## 主要な PR (詳細)

> 重要変更を優先して、変更ファイル・コミット・API差分を確認しています。期間開始前のマージ済みPRも、期間内更新で重要項目として抽出されたものは参考情報として区別して記載します。

### [#22367](https://github.com/microsoft/aspire/pull/22367) — Merge release/13.6 into release/17.0 after 13.6.5 security release

- 作者: joperezr / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +1855 / -85
- マージ日時 (UTC): `2026-11-17 23:58:14`

**変更概要**

13.6.5のセキュリティ修正を`release/17.0`へマージフォワードしたPRです。未マージで閉じたmicrosoft/aspire#22365を置き換えます。
Dashboardのnot-found認証、OTLPに限定した自動トンネル、CLIのSDKビルド・一時ディレクトリー隔離を含みます。
17系で削除済みの旧MCP scannerは復活させず、workload identityや画面構成など17系固有の変更を維持しています。
WindowsでSDK関連DLLの削除が一時的に失敗する場合のcleanup再試行も追加されました。

<details><summary>変更ファイル (60 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-output-formats.md` | 2 | 0 |
| `eng/pipelines/azure-pipelines-unofficial.yml` | 2 | 1 |
| `eng/pipelines/azure-pipelines.yml` | 2 | 1 |
| `src/Aspire.Cli/Commands/Sdk/SdkDumpCommand.cs` | 5 | 11 |
| `src/Aspire.Cli/Commands/Sdk/SdkExportCommand.cs` | 4 | 6 |
| `src/Aspire.Cli/Commands/Sdk/SdkGenerateCommand.cs` | 4 | 7 |
| `src/Aspire.Cli/DotNet/DotNetCliRunner.cs` | 15 | 0 |
| `src/Aspire.Cli/Projects/AppHostServerProject.cs` | 11 | 0 |
| `src/Aspire.Cli/Projects/DotNetBasedAppHostServerProject.cs` | 1 | 0 |
| `src/Aspire.Cli/Projects/PrebuiltAppHostServer.cs` | 1 | 0 |
| `src/Aspire.Cli/Utils/CliPathHelper.cs` | 33 | 0 |
| `src/Aspire.Cli/Utils/FileDeleteHelper.cs` | 44 | 2 |
| `src/Aspire.Dashboard/Authentication/DashboardAuthenticationState.cs` | 29 | 0 |
| `src/Aspire.Dashboard/Components/Controls/DashboardNotAuthorized.razor` | 4 | 0 |
| `src/Aspire.Dashboard/Components/Controls/DashboardNotAuthorized.razor.cs` | 37 | 0 |
| _... 他 45 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `0b6bfe2` Merged PR 66656: [release/13.6] Fix dashboard not-found authentication
- `c3d649d` Merged PR 68103: Merge release/13.6 into internal/release/13.6
- `c408ec5` Merged PR 68060: Remove temporary-file logging from deprecated MCP sc…
- `f017f66` Merged PR 68055: Limit automatic dashboard tunnelling to OTLP endpoints
- `1ecd7cc` Merged PR 67626: [release/13.6] Isolate CLI-generated builds and SDK …
- `b33d222` Merged PR 68450: [release/13.6] Prepare stable installers for interna…
- `2150dde` Merge pull request #22071 from joperezr/merge-internal-release-13.6
- `ac8f0e8` Merge release/17.0 into security merge-forward branch
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `0b6bfe2`はnot-found画面での認証、`f017f66`は自動トンネルのOTLP限定、`1ecd7cc`はSDK生成ビルド・作業領域の隔離を取り込みます。
- `c408ec5`に由来する旧scannerのログ除去は、17系ではscanner削除を保持して解決されています。
- `6281616b63`は4つのSDK cleanup経路に20〜250msのbackoffと2秒の再試行上限を適用。永続的な失敗は既存ログへ伝え、キャンセルやプロセス終了の方式は変えません。
- PRは公開API追加なしとしています。新抽象の導入ではなく、既存の認証・公開範囲・作業領域の保護を次期系列へ維持する変更です。

**既存利用者への影響**

AppHostソースの一律移行を求める変更ではありませんが、Dashboard接続や自動トンネルに依存する利用者は公開範囲を確認してください。
13.6.5修正の17系取り込みであり、全認証方式・全プラットフォームの認定完了を示すものではありません。配布物のバージョン確認も必要です。

### [#22345](https://github.com/microsoft/aspire/pull/22345) — [automated] Fix flaky extension E2E tree context menu opening

- 作者: radical / 状態: MERGED
- ラベル: `area-vscode-extension` `cif:p0` `cif-pr`
- 変更行数: +78 / -14
- マージ日時 (UTC): `2026-11-18 23:54:01`

**変更概要**

WindowsのVS Code拡張E2Eで、ツリー項目のコンテキストメニュー表示を待たずに検索して失敗する不安定性を修正します。
閉じたメニューのDOMコンテナーが残ることで、ExTesterが後続メニューの描画を待たないことが原因です。
テストヘルパーで行の再取得とメニュー描画待ちを行い、対象6呼び出しを置き換えました。製品のメニュー機能変更ではありません。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/test-e2e/helpers/extester.ts` | 1 | 0 |
| `extension/src/test-e2e/helpers/vscode.ts` | 70 | 1 |
| `extension/src/test-e2e/treeActions.e2e.test.ts` | 7 | 13 |

</details>

<details><summary>コミット (2 件)</summary>

- `cf8923f` Retry flaky tree item context menu opening in extension E2E
- `683f7dc` Wait for delayed tree context menu render before retrying

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`cf8923f`で`openTreeItemContextMenu(section, label)`を追加し、60秒の予算内で最大3回再試行します。`683f7dc`は再右クリックの前に遅延描画を待つよう補正します。
対象は要素なし・stale・timeoutなどのテスト操作失敗で、WebDriverセッション自体の失敗は即時に伝播します。公開APIや製品の実行時契約は変更しません。

**既存利用者への影響**

アプリ利用者の移行は不要です。拡張のE2Eを保守する担当者にのみ関係する安定化です。

### [#22185](https://github.com/microsoft/aspire/pull/22185) — [Automated] Update API Surface Area (release/17.0)

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +1949 / -288
- マージ日時 (UTC): `2026-11-18 20:07:42`

**変更概要**

17系で提供する公開APIの比較基準を更新する自動生成PRです。
API Management、Entra ID、Functions、Kubernetesなど63ファイルのAPIスナップショットを更新しています。
ここで新たに全実装が追加されたと解釈せず、リリースに伴う公開面の差分記録として確認する必要があります。

<details><summary>変更ファイル (63 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.ApiManagement/api/Aspire.Hosting.Azure.ApiManagement.cs` | 425 | 0 |
| `src/Aspire.Hosting.Azure.AppConfiguration/api/Aspire.Hosting.Azure.AppConfiguration.cs` | 4 | 0 |
| `src/Aspire.Hosting.Azure.AppContainers/api/Aspire.Hosting.Azure.AppContainers.cs` | 15 | 5 |
| `src/Aspire.Hosting.Azure.AppService/api/Aspire.Hosting.Azure.AppService.cs` | 11 | 3 |
| `src/Aspire.Hosting.Azure.ApplicationInsights/api/Aspire.Hosting.Azure.ApplicationInsights.cs` | 2 | 0 |
| `src/Aspire.Hosting.Azure.CognitiveServices/api/Aspire.Hosting.Azure.CognitiveServices.cs` | 4 | 0 |
| `src/Aspire.Hosting.Azure.ContainerRegistry/api/Aspire.Hosting.Azure.ContainerRegistry.cs` | 2 | 0 |
| `src/Aspire.Hosting.Azure.CosmosDB/api/Aspire.Hosting.Azure.CosmosDB.cs` | 8 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/api/Aspire.Hosting.Azure.EntraId.cs` | 589 | 0 |
| `src/Aspire.Hosting.Azure.EventHubs/api/Aspire.Hosting.Azure.EventHubs.cs` | 8 | 0 |
| `src/Aspire.Hosting.Azure.FrontDoor/api/Aspire.Hosting.Azure.FrontDoor.cs` | 10 | 0 |
| `src/Aspire.Hosting.Azure.Functions/api/Aspire.Hosting.Azure.Functions.cs` | 36 | 1 |
| `src/Aspire.Hosting.Azure.KeyVault/api/Aspire.Hosting.Azure.KeyVault.cs` | 4 | 0 |
| `src/Aspire.Hosting.Azure.Kubernetes/api/Aspire.Hosting.Azure.Kubernetes.cs` | 90 | 107 |
| `src/Aspire.Hosting.Azure.Kusto/api/Aspire.Hosting.Azure.Kusto.cs` | 6 | 0 |
| _... 他 48 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `6c4f1fe` [create-pull-request] automated change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `6c4f1fe`がAPI比較用のC#宣言を更新。Functionsには実験的`ASPIREAZUREFUNCTIONS001`付きの`AddAzureFunctionsApp(builder, name, appDirectory, language)`、`AzureFunctionsAppResource`、`WithHostStorage(...)`などが現れます。
- AKSには`AddNodePool(..., string name, Action<AksNodePoolConfig> configure)`と`WithSystemNodePool(..., Action<AksNodePoolConfig> configure)`のオーバーロードを追加します。
- **⚠ 破壊的変更に注意**: `AksNodePoolConfig`の位置引数recordが5引数から`string? OsSku = null`を末尾に持つ6引数へ変わります。既存5引数ソース呼び出しは省略可能引数で書けますが、既存バイナリやDeconstructの互換性は別問題です。
- API基準から`StandardDCEDV5`、`StandardDCEV5`、`StandardDCSv2`などのVMサイズ定数群も除かれます。これは当該VMサービス自体の廃止告知ではありません。

**既存利用者への影響**

17系への更新時は、AKS構成recordの直接生成・分解、削除されたサイズ定数への参照、独自統合バイナリの再ビルドを確認してください。
実験的Functions APIは安定APIと同等の互換性を前提にせず、使用バージョンと診断を確認します。

### [#22184](https://github.com/microsoft/aspire/pull/22184) — [Automated] Update ATS API Surface Area (release/17.0)

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +364 / -54
- マージ日時 (UTC): `2026-11-18 20:07:25`

**変更概要**

17系のATS（Aspire Type System）capability比較基準を更新する自動生成PRです。
37ファイルにわたり、複数言語AppHostが参照する公開面を同期します。
C#のAPI基準更新microsoft/aspire#22185と対になる記録で、個々の機能の実装PRや提供段階を単独で証明するものではありません。

<details><summary>変更ファイル (37 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.ApiManagement/api/Aspire.Hosting.Azure.ApiManagement.ats.txt` | 101 | 0 |
| `src/Aspire.Hosting.Azure.CognitiveServices/api/Aspire.Hosting.Azure.CognitiveServices.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/api/Aspire.Hosting.Azure.EntraId.ats.txt` | 68 | 0 |
| `src/Aspire.Hosting.Azure.EventHubs/api/Aspire.Hosting.Azure.EventHubs.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure.FrontDoor/api/Aspire.Hosting.Azure.FrontDoor.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure.Functions/api/Aspire.Hosting.Azure.Functions.ats.txt` | 9 | 0 |
| `src/Aspire.Hosting.Azure.Kubernetes/api/Aspire.Hosting.Azure.Kubernetes.ats.txt` | 49 | 40 |
| `src/Aspire.Hosting.Azure.Kusto/api/Aspire.Hosting.Azure.Kusto.ats.txt` | 2 | 0 |
| `src/Aspire.Hosting.Azure.Network/api/Aspire.Hosting.Azure.Network.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure.Redis/api/Aspire.Hosting.Azure.Redis.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure.ServiceBus/api/Aspire.Hosting.Azure.ServiceBus.ats.txt` | 4 | 0 |
| `src/Aspire.Hosting.Azure.Sql/api/Aspire.Hosting.Azure.Sql.ats.txt` | 2 | 0 |
| `src/Aspire.Hosting.Azure.WebPubSub/api/Aspire.Hosting.Azure.WebPubSub.ats.txt` | 2 | 0 |
| `src/Aspire.Hosting.Docker/api/Aspire.Hosting.Docker.ats.txt` | 3 | 0 |
| `src/Aspire.Hosting.EntityFrameworkCore/api/Aspire.Hosting.EntityFrameworkCore.ats.txt` | 1 | 0 |
| _... 他 22 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `5b0a99e` [create-pull-request] automated change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `5b0a99e`でATSスナップショットを再生成します。Functionsには`addAzureFunctionsApp(name, appDirectory, language)`、`withAzureFunctionsAppHostStorage(storage)`、appDirectory/language/workerRuntimeの公開面を追加します。
- `AzureFunctionsLanguage`は`TypeScript | JavaScript`として記録されます。AKSでは`AksNodePoolConfig` DTOにMinCount/MaxCount/VmSize/OsSkuなどを公開します。
- VMサイズ定数の追加・削除も反映されます。**⚠ 破壊的変更に注意**: 削除されたcapability・定数を使う生成クライアントは、C#基準と合わせて再生成・参照確認が必要です。

**既存利用者への影響**

ATS利用の独自SDKや生成APIを持つ担当者は、17系サーバーとの対応を確認してください。
このPR自体は比較用ファイルの更新ですが、記録された公開面の互換性差分は無視できません。

### [#22346](https://github.com/microsoft/aspire/pull/22346) — Fix Visual Studio debugging for Azure Functions projects

- 作者: karolz-ms / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +971 / -151
- マージ日時 (UTC): `2026-11-18 02:44:20`

**変更概要**

Visual Studio 2026からAzure Functionsプロジェクトをデバッグしても、プロセスをIDEが所有せずシンボルが読み込まれない問題を修正します。
VSがネイティブな`project`起動はサポートしていても、VS Code固有の`azure-functions`起動を広告しないことへの互換処理です。
Functionsに限定して従来のproject起動へフォールバックし、拡張が管理するセッションの厳密な起動契約は維持します。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/DebugSupportExtensions.cs` | 249 | 39 |
| `src/Aspire.Hosting/ApplicationModel/ExecutableLaunchRecipe.cs` | 26 | 6 |
| `src/Aspire.Hosting/Dcp/ExecutableLaunchPolicy.cs` | 29 | 72 |
| `src/Aspire.Hosting/Dcp/ResourceSnapshotBuilder.cs` | 17 | 10 |
| `src/Aspire.Hosting/ResourceBuilderExtensions.cs` | 4 | 3 |
| `src/Aspire.Hosting/SupportsDebuggingAnnotation.cs` | 18 | 5 |
| `tests/Aspire.Hosting.Tests/Aspire.Hosting.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Tests/Dcp/DcpExecutorTests.cs` | 438 | 8 |
| `tests/Aspire.Hosting.Tests/Dcp/ExecutableLaunchPlanTests.cs` | 43 | 0 |
| `tests/Aspire.Hosting.Tests/Dcp/ResourceSnapshotBuilderTests.cs` | 69 | 6 |
| `tests/Aspire.Hosting.Tests/DebugSupportExtensionsTests.cs` | 77 | 2 |

</details>

<details><summary>コミット (6 件)</summary>

- `a5935a8` Fix Visual Studio Azure Functions debugging
- `8a9e287` Address code review feedback
- `163a9a8` Address code review feedback
- `be1e6d9` Address code review feedback
- `d51c5c9` Add null check for supportedLaunchConfigurations
- `add2204` Fix IDE snapshot launch metadata and add capability-fallback tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `a5935a8`からの一連の修正で、IDEのproject対応、リソース種別、Aspire拡張によるセッション所有を踏まえて起動経路を選択します。
- `d51c5c9`でsupportedLaunchConfigurationsのnullを扱い、`add2204`でsnapshotの起動メタデータとcapability fallbackを補正します。
- 変更はDebugSupportExtensions、ExecutableLaunchRecipe、ExecutableLaunchPolicyなど内部起動判定に集中し、PRは公開API変更なしとしています。無関係なcustom launch typeまでprojectとして扱う変更ではありません。

**既存利用者への影響**

通常はFunctionsコードの書き換え不要です。修正を含む版でVisual Studioのブレークポイント・シンボル読み込みを確認してください。
release/17.0向けmicrosoft/aspire#22401は今回の期間内ではオープンであり、本体マージとリリースブランチへの反映は区別します。

### [#22208](https://github.com/microsoft/aspire/pull/22208) — Redact restore diagnostics and clarify update validation failures

- 作者: danegsta / 状態: MERGED
- ラベル: —
- 変更行数: +227 / -68
- マージ日時 (UTC): `2026-11-18 18:38:59`

**変更概要**

`aspire update`のrestore診断に含まれる、資格情報付きNuGetフィードURLがCLIログへ残る問題に対応します。
既存のNuGet redactorをstdout/stderrのバッファリング・ログ保存前に適用し、診断情報の有用性を残します。
失敗時の概要にはchannelとprojectを含め、「更新は適用されなかった」と明示します。
既知のNuGetソースに基づく保護であり、任意の秘密情報を完全に検出する仕組みではありません。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/DotNet/DotNetAppHostRestorePreview.cs` | 4 | 0 |
| `src/Aspire.Cli/NuGet/BundleNuGetService.cs` | 2 | 0 |
| `src/Aspire.Cli/NuGet/NuGetClient.cs` | 4 | 0 |
| `src/Aspire.Cli/Projects/PrebuiltAppHostServer.cs` | 2 | 0 |
| `src/Aspire.Cli/Projects/ProjectUpdater.cs` | 46 | 6 |
| `src/Aspire.Cli/README.md` | 10 | 2 |
| `src/Aspire.Cli/Resources/UpdateCommandStrings.Designer.cs` | 1 | 1 |
| `src/Aspire.Cli/Resources/UpdateCommandStrings.resx` | 2 | 1 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.cs.xlf` | 3 | 3 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.de.xlf` | 3 | 3 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.es.xlf` | 3 | 3 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.fr.xlf` | 3 | 3 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.it.xlf` | 3 | 3 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.ja.xlf` | 3 | 3 |
| `src/Aspire.Cli/Resources/xlf/UpdateCommandStrings.ko.xlf` | 3 | 3 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (31 件)</summary>

- `da65310` Add force option for explicit channel updates
- `220b2db` Move force update guidance after general AppHost update behavior
- `e0a38f6` Surface restore output when update validation fails
- `8985f96` Include channel name in validation restore failure message
- `766f88b` Separate channel update validation with --dry-run
- `c094f34` Condense dry-run README guidance
- `d807bd0` Merge parent channel-update dry-run changes
- `70eec6d` Isolate dry-run discovery and enforce backup consent
- _... 他 23 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 表示されるコミット列には前提PR由来のchannel更新・dry-run・バックアップ処理も含まれます。このPRの主差分は、restore出力の保存・表示前のマスクと失敗概要の明確化です。
- candidate・参照先プロジェクトのNuGet構成と、評価済み`RestoreAdditionalProjectSources`をredactorへ渡し、評価プローブ自身の生診断は抑止します。
- 成功・失敗の双方でマスク済み診断をログに残し、画面には失敗時のみ表示します。公開API追加・新規依存はありません。
- restore-time targetだけで追加されるソース、計画後のソース変更、ソース以外の秘密情報は保護範囲外です。

**既存利用者への影響**

API移行は不要ですが、過去のCLIログが後から消毒されるわけではありません。資格情報付きフィードを使う担当者はログの保管・共有範囲を確認してください。
未知のURLや任意の秘密情報まで安全になったとは扱わず、更新検証失敗時の診断内容も確認してください。

### [microsoft/aspire#22340](https://github.com/microsoft/aspire/pull/22340) — 旧AppHost SDKの移行案内（期間開始前マージ・参考）

- 作者: maddymontaquila / 状態: MERGED / 変更行数: +236 / -1
- マージ日時 (UTC): `2026-11-17 00:17:25`（対象期間の開始前。今回の11件には含めません）

**変更概要**

`aspire update --migrate`で自動移行対象がなくても、旧`Aspire.AppHost.Sdk`を使っていればASPIRE012の案内を出す修正です。
「最新推奨構成済み」という表示と、次のビルドでの廃止警告の矛盾を解消します。
SDK除去は意図的に承認が必要な別作業であり、このPRは自動除去を追加しません。

<details><summary>変更ファイル・コミットの確認</summary>

- `src/Aspire.Cli/Commands/UpdateCommand.cs`: 案内メッセージを選択。
- `src/Aspire.Cli/Projects/DotNetAppHostProject.cs`: 旧SDKの検出を追加。
- `src/Aspire.Cli/Resources/MigrationStrings.resx`と翻訳、2つのCLI試験ファイルを更新（全19ファイル）。
- `c8226fc`: 旧SDK検出と移行案内。
- `7a2fb33` / `88c75b0`: NoWarn中のASPIRE012のトークン境界や抑制判定を補正。

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DotNetAppHostProject.UsesObsoleteAppHostSdk`で、file-basedの`#:sdk`、projectのSdk属性・Sdk要素・Import Sdkを検出します。
ファイル自身で宣言した警告抑制も扱い、公開API追加はありません。単純な`aspire update`で自動移行がない場合の挙動は変えません。

**既存利用者への影響**

警告が出る利用者は[ASPIRE012案内](https://aka.ms/aspire/diagnostics/aspire012)で移行内容を確認してください。表示改善であり、未移行構成が自動で修正されるわけではありません。

### [microsoft/aspire#22207](https://github.com/microsoft/aspire/pull/22207) — channel更新と復元検証の分離

**変更概要**

明示的または設定済みchannelに対する通常の.NET AppHost更新は、確認後に変更を適用し、事前restore検証を必須にしなくなります。
代わりに`aspire update --channel daily --dry-run --non-interactive`で検証のみを行えます。
channel指定がない更新は従来のrestore挙動を維持します。

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しいCLIオプション`--dry-run`が主要な利用面の変更です。ambient構成で計画した後、私有の一時NuGetキャッシュと`--packages --no-http-cache --force`で検証します。
一時的にsource編集をstageする前に隣接`.aspire-backup`を作り、成功・失敗・キャンセル時に復元します。既存バックアップの置換は別確認で、`--yes`では承認されません。
明示channelを持つ.NET AppHostのみが対象で、`--self`・`--migrate`・`--config-source`とは併用できません。restore生成物の`obj/project.assets.json`などはバックアップ対象外です。

**既存利用者への影響**

通常channel更新の完了を「依存関係restore検証済み」と解釈しないでください。先に検証したい場合はdry-runを使います。
dry-runも一時編集・復元を伴い、生成物まで完全に無変更を保証するものではありません。復元失敗時は報告されるバックアップを保持して復旧してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #21528 | Don't fail AppHost stop on a no-op terminal teardown after the shutdown budget is exhausted | davidfowl | <https://github.com/microsoft/aspire/pull/21528> |
| #21638 | Wait for MongoDB single-member primary to accept writes before reporting healthy | davidfowl | <https://github.com/microsoft/aspire/pull/21638> |
| #21648 | Fix Kubernetes publish for parameter-based container args (unquarantine DeployK8sWithNats) | davidfowl | <https://github.com/microsoft/aspire/pull/21648> |
| #20180 | Fix Durable Task emulator task hub dashboard URL | gabisonia | <https://github.com/microsoft/aspire/pull/20180> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #22401 | [release/17.0] Fix Visual Studio debugging for Azure Functions projects | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22401> |
| PR | #22403 | Merge release/17.0 back into main | open | joperezr | <https://github.com/microsoft/aspire/pull/22403> |
| PR | #22409 | [release/17.0] Stabilize CLI update E2E tests | open | karolz-ms | <https://github.com/microsoft/aspire/pull/22409> |
| PR | #22411 | [automated] [DO NOT MERGE] Investigate PID-less CLI termination test on Windows | open | radical | <https://github.com/microsoft/aspire/pull/22411> |
| PR | #22408 | Update OpenTelemetry packages to 1.21.0 | open | eerhardt | <https://github.com/microsoft/aspire/pull/22408> |
| PR | #22388 | [release/17.0] Avoid highlighting dashboard menu items on pointer open | open | JamesNK | <https://github.com/microsoft/aspire/pull/22388> |
| PR | #22391 | [release/17.0] Default the dashboard resource list to Comfortable | open | JamesNK | <https://github.com/microsoft/aspire/pull/22391> |
| PR | #22362 | Replace Pomelo MySQL EF Core provider with Microting fork | open | bart-vmware | <https://github.com/microsoft/aspire/pull/22362> |
| PR | #22399 | Show relative time in dashboard capture-paused indicators | open | MuhammadBilal64 | <https://github.com/microsoft/aspire/pull/22399> |
| PR | #22375 | Merge release/17.0 to main after v17.0.0 release | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22375> |
| PR | #22400 | feat(release): publish NuGet packages through ESRP | open | radical | <https://github.com/microsoft/aspire/pull/22400> |
| PR | #22395 | [release/17.0] Keep the dashboard on home when the window narrows | open | IEvangelist | <https://github.com/microsoft/aspire/pull/22395> |
| PR | #22397 | Update dashboard to FluentUI 5.1 | open | sebastienros | <https://github.com/microsoft/aspire/pull/22397> |
| PR | #22396 | Add a telemetry overview to the standalone dashboard | open | 4dwaffle | <https://github.com/microsoft/aspire/pull/22396> |
| PR | #22376 | Update PackageValidationBaselineVersion to 17.0.0 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22376> |
| PR | #22381 | Suppress AppHost CLI run hook for MTP tests | open | afscrome | <https://github.com/microsoft/aspire/pull/22381> |
| PR | #22360 | [Automated] Update Azure VM Sizes | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22360> |
| PR | #22372 | [telemetry] Sync telemetry with microsoft/aspire-skills#168 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22372> |
| PR | #21646 | Surface test results in the Aspire dashboard | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/21646> |
| PR | #22365 | Merge release/13.6 into release/17.0 after 13.6.5 security release | closed | joperezr | <https://github.com/microsoft/aspire/pull/22365> |
| PR | #21897 | Suppress CodeQL SM04595 false positives on dashboard Login and Error pages | closed | eerhardt | <https://github.com/microsoft/aspire/pull/21897> |
| Issue | #22369 | [ci] Tracking work queue | open | radical | <https://github.com/microsoft/aspire/issues/22369> |
| Issue | #22407 | Network Graph | open | ghorner2 | <https://github.com/microsoft/aspire/issues/22407> |
| Issue | #22404 | ATS scanner reports false "Duplicate capability" errors for methods inherited by multiple exported proxy types | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22404> |
| Issue | #22406 | [automated] CI health work queue | open | radical | <https://github.com/microsoft/aspire/issues/22406> |
| Issue | #22405 | Refresh Manifests fails on main: ResolveAspireCliInvocation task assembly not found (MSB4062) | open | radical | <https://github.com/microsoft/aspire/issues/22405> |
| Issue | #22402 | `aspire agent init` rejects a project plugin enabled over a user-level disable | open | ellahathaway | <https://github.com/microsoft/aspire/issues/22402> |
| Issue | #22394 | Browser logs: playwright-cli cannot attach to Aspire-managed browser using CDP pipe transport | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/22394> |
| Issue | #22393 | Add an overview page to the standalone dashboard | open | aspire-issue-bot[bot] | <https://github.com/microsoft/aspire/issues/22393> |
| Issue | #22392 | `aspire update` reports "Failed to restore packages for project <AppHost>" but the real NuGet error is not shown or logged, and the failure is in a referenced project | open | kfrancis | <https://github.com/microsoft/aspire/issues/22392> |
| Issue | #22389 | AspireHostingSDKVersion is empty in project-file properties for package-based AppHosts | open | thomhurst | <https://github.com/microsoft/aspire/issues/22389> |
| Issue | #22390 | Run-mode coordinated .NET build ignores the outer build's global properties and can't be skipped | open | thomhurst | <https://github.com/microsoft/aspire/issues/22390> |
| Issue | #22387 | Blazor Gateway: Unhandled exception: Settings file 'DotnetToolSettings.xml' was not found in the package. | open | RedEye-Developers | <https://github.com/microsoft/aspire/issues/22387> |
| Issue | #22384 | `Could not parse Aspire.Hosting package version` on wildcard version with `aspire publish` | open | erwinkramer | <https://github.com/microsoft/aspire/issues/22384> |
| Issue | #22383 | CLI `aspire update` doesn't migrate from `Aspire.AppHost.Sdk` to `Microsoft.NET.Sdk` but instead updates obsolete SDK | open | thimok | <https://github.com/microsoft/aspire/issues/22383> |
| Issue | #22380 | CLI `aspire update` experience for 13.6.5 apphost with `AspireUseCliBundle=false` | open | thimok | <https://github.com/microsoft/aspire/issues/22380> |
| Issue | #22382 | MTP test projects referencing AppHost package launch Aspire CLI instead of tests | open | afscrome | <https://github.com/microsoft/aspire/issues/22382> |
| Issue | #22379 | Support multiple Service Bus emulators sharing one SQL Server with WithSqlServer(sqlServer) | open | anssiv | <https://github.com/microsoft/aspire/issues/22379> |
| Issue | #22377 | Stopping terminal-enabled shell resources on Windows takes six seconds and exits with code 1 | open | JamesNK | <https://github.com/microsoft/aspire/issues/22377> |
| Issue | #22368 | [CI] Main TypeScript SDK validation fails with npm ETARGET for eslint-plugin 8.73.0 | closed | radical | <https://github.com/microsoft/aspire/issues/22368> |
| Issue | #22373 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22373> |
| Issue | #22371 | Replace `SupportsDebugging` with a Try-pattern IDE launch inspection API | open | karolz-ms | <https://github.com/microsoft/aspire/issues/22371> |
| Issue | #22366 | [17.0] Fix SDK response-file regression test isolation and test-selection routing | open | joperezr | <https://github.com/microsoft/aspire/issues/22366> |
| Issue | #22364 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22364> |
| Issue | #22363 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22363> |
| Issue | #22359 | VS Code Go debugging: breakpoints never bind when the workspace is opened through a symlinked path (e.g. macOS /tmp) | open | karolz-ms | <https://github.com/microsoft/aspire/issues/22359> |
| Issue | #22361 | Aspire 13.6.5 DCP orchestration fails when running AppHost from Visual Studio 2026, but works from CLI / VS Code | open | Iv01-1 | <https://github.com/microsoft/aspire/issues/22361> |
| Issue | #20930 | [CI Failure] Flaky: VS Code extension E2E (Windows, launch-profiles) 'forwards launch profiles...' test times out probing process command lines via PowerShell | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20930> |
| Issue | #21060 | [Epic] Microsoft Entra ID integration for Aspire | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21060> |
| Issue | #21086 | Evaluate the Entra ID Auth SDK sidecar for non-.NET Aspire workloads | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21086> |
| Issue | #21084 | Explore selecting an existing Entra registration during Aspire setup | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21084> |
| Issue | #21082 | Add Entra identity onboarding and template guidance to Aspire tooling | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21082> |
| Issue | #21075 | Complete the Entra hosting integration public API review before release | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21075> |
| Issue | #22242 | VS2026 18.12.0 (Nov update) cannot hit breakpoint in Azure Functions project; symbol not loaded with Aspire 13.6.5 (yet again) | closed | pellea | <https://github.com/microsoft/aspire/issues/22242> |
| Issue | #22060 | Dashboard becomes sluggish with 40+ services — GatherRawEnvironmentAndArgumentValuesAsync called on every DCP resource event | closed | theschmoo | <https://github.com/microsoft/aspire/issues/22060> |
| Issue | #20954 | [CI Failure] Flaky: WithUrlsTests.WithUrlForEndpointCanLinkToAnotherResourcesEndpoint host shutdown times out with TaskCanceledException in DistributedApplication.StopAsync | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20954> |
| Issue | #21637 | [CI Failure] Flaky: SingleMemberReplicaSetFunctionalTests write fails with NotWritablePrimary after MongoDB reports healthy | closed | davidfowl | <https://github.com/microsoft/aspire/issues/21637> |
| Issue | #15789 | NATS container args incompatible with Kubernetes publishing - Command line args must be strings | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/15789> |
| Issue | #22214 | aspire update --channel hides restore errors and rolls back changes, making dependency conflicts hard to diagnose | closed | Copilot | <https://github.com/microsoft/aspire/issues/22214> |
| Issue | #17888 | AppHost crashes in Visual Studio when a browser file picker opens and launchBrowser is enabled | closed | MikeAlhayek | <https://github.com/microsoft/aspire/issues/17888> |
| Issue | #20173 | Durable Task Scheduler emulator Task Hub dashboard URL uses incorrect default route | closed | andrew-flatters-bliss | <https://github.com/microsoft/aspire/issues/20173> |
