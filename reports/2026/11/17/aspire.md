# microsoft/aspire *(詳細モード)*

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 20 |
| オープン中の新規 PR     | 19 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 29 |
| クローズ Issue          | 19 |
| 主要コントリビューター  | aspire-repo-bot[bot], JamesNK, ellahathaway, eerhardt, radical, maddymontaquila |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#22189](https://github.com/microsoft/aspire/pull/22189) — Add canonical .NET CLI tool APIs to Aspire.Hosting.Dotnet （PR / open / karolz-ms）
  未マージです。`Aspire.Hosting.Dotnet` の新 `AddDotnetCliTool` 系と旧 API の非推奨化を提案しています。明示的なリソース型や警告をエラー扱いする利用者は移行影響を確認してください。
- **⚠ 破壊的変更** [#21795](https://github.com/microsoft/aspire/issues/21795) — Aspire 17 rejects previously accepted empty parameter values; clarify breaking change and dashboard failure （Issue / open / joperezr）
  Aspire 17 プレビューで明示的な空文字パラメーターが必須値エラーになる報告です。空値を意図する利用者は optional 指定と使用ブランチの API 名を確認し、修正・移行ガイダンスを追跡してください。
- **⚠ 破壊的変更** [#20919](https://github.com/microsoft/aspire/pull/20919) — Fix AKS AcrPull for existing cross-resource-group registries （PR / merged / mitchdenny）
  マージ日時は 2026-10-16 で今回の期間外です。既存 AKS の identity 移行に伴うノード更新・カスタム権限の再付与・外部 ACR のロール削除手順を確認してください。今回の新規マージ件数には含めません。
- **⚠ 破壊的変更** [#11760](https://github.com/microsoft/aspire/issues/11760) — ResourceUrlAnnotation.DisplayOrder is a field, not a property （Issue / closed / JamesNK）
  Issue のクローズだけでは field から property への API 変更が出荷されたと断定できません。直接参照する利用者は実際に採用する版の API を確認してください。
- **⚠ セキュリティ** [#21455](https://github.com/microsoft/aspire/pull/21455) — Fix Next.js publish fixture security dependencies （PR / open / IEvangelist）
  未マージで、対象は Next.js publish テスト fixture の Next.js 16.4.1／sharp 0.35.5 への更新です。Aspire 本番依存全体の脆弱性修正と混同しないでください。
- **⚠ セキュリティ** [#21250](https://github.com/microsoft/aspire/pull/21250) — Update SystemSecurityCryptographyPkcsNet10Version to 10.0.13 （PR / closed / MisinformedDNA）
  PKCS 10.0.13 更新案は未マージでクローズされています。これを修正取り込みの根拠とせず、利用中の依存バージョンと別経路の対応を確認してください。
- **非推奨/廃止** [#22340](https://github.com/microsoft/aspire/pull/22340) — [release/17.0] Report obsolete Aspire.AppHost.Sdk in aspire update --migrate （PR / merged / maddymontaquila）
  `aspire update --migrate` が古い `Aspire.AppHost.Sdk` を通知するようになります。SDK 除去は自動適用されないため、ASPIRE012 の手動移行手順を確認してください。
- **非推奨/廃止** [#22335](https://github.com/microsoft/aspire/issues/22335) — aspire update --migrate says 'latest recommended conventions' while build emits ASPIRE012 （Issue / closed / maddymontaquila）
  上記 microsoft/aspire#22340 で案内の矛盾を修正しました。Issue クローズは旧 SDK の自動削除を意味せず、利用者側で移行判断が必要です。

## このリポジトリの要点

- release/17.0 で旧 `Aspire.AppHost.Sdk` の移行案内と、同意に基づく静的スキルコピー除去が改善されました。`aspire update` の復元診断も main へマージされています。
- Azure.Provisioning.AppContainers は安定版 1.3.0 に更新され、パラメーター playground が拡充しました。空文字の必須値検証に関する microsoft/aspire#21795 は未解決として確認が必要です。
- .NET CLI tool API 再配置と Next.js fixture のセキュリティ依存更新は未マージです。PKCS 更新案のクローズや API Issue のクローズを、出荷済み修正と読み替えません。
- 既存 AKS／ACR の identity 移行は期間外マージの継続確認事項です。今回の新規変更と区別して詳細を補足します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#22340](https://github.com/microsoft/aspire/pull/22340) — [release/17.0] Report obsolete Aspire.AppHost.Sdk in aspire update --migrate

- 作者: maddymontaquila / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +236 / -1
- マージ日時 (UTC): `2026-11-17 00:17:25`

**変更概要**

古い `Aspire.AppHost.Sdk` を使用していても `aspire update --migrate` が「最新の推奨規約」と案内する矛盾を修正しました。
自動適用できる移行がなく旧 SDK が残る場合、ASPIRE012 と移行ドキュメントへのリンクを表示します。
対象は release/17.0 の CLI で、プロジェクト形式と file-based AppHost の両方を検出します。
SDK 自体を自動除去する機能ではありません。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/UpdateCommand.cs` | 5 | 1 |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 75 | 0 |
| `src/Aspire.Cli/Resources/MigrationStrings.Designer.cs` | 9 | 0 |
| `src/Aspire.Cli/Resources/MigrationStrings.resx` | 3 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.cs.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.de.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.es.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.fr.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.it.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.ja.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.ko.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.pl.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.pt-BR.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.ru.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/MigrationStrings.tr.xlf` | 5 | 0 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `c8226fc` Report obsolete Aspire.AppHost.Sdk in aspire update --migrate
- `7a2fb33` Match ASPIRE012 anywhere in NoWarn and ignore conditional suppressions
- `88c75b0` Match the SDK's NoWarn token boundaries, including whitespace

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DotNetAppHostProject.UsesObsoleteAppHostSdk` が SDK 属性・要素・Import と `#:sdk` を確認します。AppHost ファイル内の明示的な警告抑制も考慮します。
`7a2fb33`／`88c75b0` は `NoWarn` 内の ASPIRE012 検出とトークン境界・空白処理を修正しています。新規公開 API はなく、通常の `aspire update` の表示は変えません。

**既存利用者への影響**

旧 SDK 利用者は案内先に沿って手動移行を判断してください。CLI がメッセージを出しただけで移行完了にはなりません。

### [#22322](https://github.com/microsoft/aspire/pull/22322) — Consolidate AppHost template package references

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-templates`
- 変更行数: +1 / -8
- マージ日時 (UTC): `2026-11-17 02:43:51`

**変更概要**

ASP.NET Core／Blazor と ASP.NET Core／React のスターターテンプレートで、AppHost のパッケージ参照を整理しました。
生成したプロジェクトの PackageReference を 1 つの ItemGroup に集約し、確認しやすくします。
含まれるパッケージは変わらず、Redis は引き続き `--use-redis-cache` 指定時のみ追加されます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.ProjectTemplates/templates/aspire-starter/Aspire-StarterApplication.1.AppHost/Aspire-StarterApplication.1.AppHost.csproj` | 1 | 5 |
| `src/Aspire.ProjectTemplates/templates/aspire-ts-cs-starter/Aspire-StarterApplication.1.AppHost/Aspire-StarterApplication.1.AppHost.csproj` | 0 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `4d10b0a` Consolidate template AppHost package references

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`4d10b0a` が 2 つの AppHost テンプレートの csproj を整理しています。
参照の配置変更のみで、公開 API・パッケージ構成・Redis オプションの意味に変更はありません。

**既存利用者への影響**

既存 AppHost の移行は不要です。新規生成したプロジェクトの参照のまとまり方が変わります。

### [#22355](https://github.com/microsoft/aspire/pull/22355) — Show restore diagnostics when aspire update fails

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +95 / -19
- マージ日時 (UTC): `2026-11-17 01:37:33`

**変更概要**

`aspire update` 後のパッケージ復元失敗で、原因となる NuGet／MSBuild 診断を利用者へ表示します。
復元の stdout／stderr を CLI ログに保存し、失敗した場合だけ状態表示の後に出力します。
DLL ロックなどを調べやすくする修正で、ロックの解消や共有 MSBuild サーバーの停止は行いません。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Projects/ProjectUpdater.cs` | 12 | 8 |
| `src/Aspire.Cli/README.md` | 3 | 0 |
| `tests/Aspire.Cli.Tests/Projects/ProjectUpdaterNuGetConfigurationTests.cs` | 65 | 0 |
| `tests/Aspire.Cli.Tests/Projects/ProjectUpdaterTests.cs` | 14 | 10 |
| `tests/Aspire.Cli.Tests/Utils/CliTestHelper.cs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `9361d8f` Show restore diagnostics when aspire update fails

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`9361d8f` が `ProjectUpdater` で既存 `OutputCollector` を再利用し、診断収集と失敗時出力を追加しています。
成功時は従来どおり静かで、更新ロールバックと終了コード 13 は維持されます。新しいオプション・依存・公開 API はありません。

**既存利用者への影響**

移行不要です。更新失敗時は追加された具体的なエラーを参照できますが、基礎原因への対応は別途必要です。

### [#22353](https://github.com/microsoft/aspire/pull/22353) — Update Azure.Provisioning.AppContainers to 1.3.0

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-11-17 01:17:56`

**変更概要**

Azure.Provisioning.AppContainers を 1.3.0-beta.2 から安定版 1.3.0 へ更新しました。
同パッケージの最低要件に合わせ、中央管理の Azure.Core も 1.63.0 から 1.65.0 へ更新しています。
上流の機能と managed environment 命名修正はプレビューにも含まれていた内容であり、新たな Aspire API の追加ではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `63ce67b` Update Azure Provisioning AppContainers to 1.3.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`63ce67b` が `Directory.Packages.props` の 2 つのバージョンを変更しています。
Aspire の公開 API 変更はなく、Container Apps provisioning の上流依存を安定版へそろえる変更です。

**既存利用者への影響**

通常はコード移行不要です。Azure.Core を直接固定するプロジェクトは 1.65.0 以降という依存要件との整合性を確認してください。

### [#22277](https://github.com/microsoft/aspire/pull/22277) — [release/17.0] Remove static Aspire skill copies during aspire agent init

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +1717 / -871
- マージ日時 (UTC): `2026-11-17 00:22:44`

**変更概要**

旧 CLI が配置した静的 Aspire スキルがプラグイン版を上書きし続ける問題に対し、`aspire agent init` にコピー除去の導線を追加しました。
選択したスコープでプラグイン等が置き換えるコピーを一覧化し、既定が No の確認を経て削除します。
非対話実行で明示指定がなければ保持します。設定したプラグインの結果表示も維持されます。
release/17.0 へのバックポートで、init／new／mcp init にも同じ選択肢が伝播します。

<details><summary>変更ファイル (53 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Agents/AspireSkills/LocalAspireSkills.cs` | 37 | 63 |
| `src/Aspire.Cli/Agents/ClaudeCode/ClaudeCodeAgentClient.cs` | 0 | 5 |
| `src/Aspire.Cli/Agents/Copilot/CopilotAgentClient.cs` | 0 | 11 |
| `src/Aspire.Cli/Agents/IAgentClient.cs` | 0 | 3 |
| `src/Aspire.Cli/Agents/OpenCode/OpenCodeAgentClient.cs` | 0 | 73 |
| `src/Aspire.Cli/Commands/AgentInitCommand.cs` | 265 | 31 |
| `src/Aspire.Cli/Commands/DoctorCommand.cs` | 1 | 11 |
| `src/Aspire.Cli/Commands/InitCommand.cs` | 2 | 0 |
| `src/Aspire.Cli/Commands/McpInitCommand.cs` | 1 | 0 |
| `src/Aspire.Cli/Commands/NewCommand.cs` | 2 | 0 |
| `src/Aspire.Cli/Resources/AgentCommandStrings.Designer.cs` | 92 | 19 |
| `src/Aspire.Cli/Resources/AgentCommandStrings.resx` | 34 | 7 |
| `src/Aspire.Cli/Resources/DoctorCommandStrings.Designer.cs` | 4 | 13 |
| `src/Aspire.Cli/Resources/DoctorCommandStrings.resx` | 5 | 7 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.cs.xlf` | 49 | 11 |
| _... 他 38 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `a2d1376` Remove static Aspire skill copies during aspire agent init (#22080)
- `56bcab0` Merge branch 'release/17.0' into backport-22080
- `c14169f` Restore skill source warnings in agent init prompt test
- `24eb112` Show copied skill files before deletion and clarify --remove-skill-co…
- `b5843b1` Keep plugin configuration results after skill copy deletion
- `9ff6e80` Skip links when previewing skill copy files

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI オプション `--remove-skill-copies` と `--remove-skill-copies=false` を追加しました。代替プラグインが有効でない場合は前者でもコピーを保持し、理由を表示します。
`24eb112` は削除前のファイル表示、`b5843b1` は設定結果保持、`9ff6e80` はプレビュー時のリンク除外です。
`aspire doctor --format json` の関連警告は Environment カテゴリとなり、コピー情報が `files` ではなく `details` に入るため、診断出力の処理側は注意が必要です。

**既存利用者への影響**

独自修正した静的スキルがある場合は、一覧を確認してから削除を選んでください。無指定の非対話実行で削除は発生しません。
doctor の JSON を解析する自動化は、カテゴリと `details` の変更に合わせてください。

### [#22303](https://github.com/microsoft/aspire/pull/22303) — Add parameter playground scenarios

- 作者: JamesNK / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +79 / -1
- マージ日時 (UTC): `2026-11-17 00:15:23`

**変更概要**

ParameterEndToEnd playground に optional とプログラム管理パラメーターのシナリオを追加しました。
未設定／設定済み optional、AppHost コードから値を設定する required、再び required に戻すケースを扱います。
値の設定・クリア・確認コマンドと、サービスに渡った値を表示する API エンドポイントを追加しています。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/ParameterEndToEnd/ParameterEndToEnd.ApiService/Program.cs` | 7 | 0 |
| `playground/ParameterEndToEnd/ParameterEndToEnd.AppHost/AppHost.cs` | 70 | 0 |
| `playground/ParameterEndToEnd/ParameterEndToEnd.AppHost/appsettings.json` | 2 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `9952c71` Add parameter playground scenarios

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`9952c71` が playground の AppHost・API・設定ファイルを更新しています。main の既存 API `WithOptional()`／`WithRequired()` を使用し、公開 API は追加しません。
release/17.0 側の API 改名はこの時点の main に未適用のため、ブランチ間でサンプルの名前をそのまま交換しないでください。

**既存利用者への影響**

製品利用コードの移行は不要です。optional パラメーターの扱いを試す際の参考ですが、採用版に合う API 名を確認してください。

### [microsoft/aspire#20919](https://github.com/microsoft/aspire/pull/20919) — AKS と既存の別スコープ ACR（継続確認）

- 状態: MERGED / マージ日時 (UTC): `2026-10-16 13:48:39`（対象期間外）
- 変更行数: +4171 / -84、83 ファイル。今回のマージ済み 20 件には含めません。

**変更概要**

既存 ACR が別リソースグループ／サブスクリプションにある場合、実際のレジストリスコープへ AcrPull を付与します。
AKS の control plane と kubelet に別々の事前作成 UAMI を用意し、クラスター作成前に必要なロールを準備します。
既存 AKS の identity が変わるため、単なる接続先修正ではなく運用上の移行を伴います。

<details><summary>主要な変更ファイルとコミット</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentExtensions.cs` | 94 | 46 |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentResource.cs` | 10 | 0 |
| `src/Aspire.Hosting.Azure.Kubernetes/README.md` | 51 | 0 |
| `src/Aspire.Hosting.Azure/AzurePublishingContext.cs` | 38 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksCrossResourceGroupRegistryDeploymentTests.cs` | 439 | 0 |

- `693435b`: control plane と kubelet の identity 分離。
- `833f643`: 生成 identity のクラスター配置スコープ継承。
- `96e7d5d`: infrastructure callback に合わせたロールスコープ調整。
- `0a48918`: ロール順序と identity upgrade のカバレッジ。
- `52f970d`: ロール対象から不要な RBAC 前提条件を継承しない修正。

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: 既存の system-assigned control plane／AKS 作成 kubelet identity から UAMI へ移行します。公開 API と新規依存の追加はありません。
kubelet に ACR の AcrPull、control plane に kubelet identity の Managed Identity Operator、指定 VNet に Network Contributor を付与する構成です。
AcrPull はレジストリ全体への権限で、ABAC Repository Permissions モード向けの権限ではありません。

**既存利用者への影響**

identity 変更によるノードプール更新・ワークロード中断を想定し、カスタム権限を再設定してください。既存クラスター移行の live 検証は PR 本文で未実施とされています。
`aspire destroy` 後も外部レジストリのロール割り当ては別途削除が必要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #22193 | [release/17.0] Restore Visual Studio Aspire version discovery in empty template | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22193> |
| #22318 | [release/17.0] Detect Copilot AppImages before first launch | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22318> |
| #22285 | [release/17.0] Compact dashboard home header | JamesNK | <https://github.com/microsoft/aspire/pull/22285> |
| #22257 | [release/17.0] Improve telemetry source rows in the dashboard | JamesNK | <https://github.com/microsoft/aspire/pull/22257> |
| #22286 | [release/17.0] Use locally available package versions for browser debugger fixtures | radical | <https://github.com/microsoft/aspire/pull/22286> |
| #22292 | [release/17.0] Make E2E notification cleanup deterministic | radical | <https://github.com/microsoft/aspire/pull/22292> |
| #22320 | Fix aspire agent init --non-interactive with multiple AppHosts | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22320> |
| #22282 | Prepare VS Code extension release v1.26.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22282> |
| #22269 | [release/17.0] Fix aspire agent init --non-interactive with multiple AppHosts | ellahathaway | <https://github.com/microsoft/aspire/pull/22269> |
| #22288 | [release/17.0] Show exit codes in describe snapshot table | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22288> |
| #22301 | [release/17.0] Use accepted configuration sources for template discovery | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22301> |
| #22271 | [release/17.0] Warn about all agent skill sources | ellahathaway | <https://github.com/microsoft/aspire/pull/22271> |
| #22280 | [release/17.0] Label the Aspire tray as Preview instead of Experimental | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/22280> |
| #22298 | Use accepted configuration sources for template discovery | JamesNK | <https://github.com/microsoft/aspire/pull/22298> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #22348 | Archive CLI starter validation diagnostics before artifact upload | open | radical | <https://github.com/microsoft/aspire/pull/22348> |
| PR | #22346 | Fix Visual Studio debugging for Azure Functions projects | open | karolz-ms | <https://github.com/microsoft/aspire/pull/22346> |
| PR | #22350 | Use conventional Redis TLS and non-TLS target ports | open | danegsta | <https://github.com/microsoft/aspire/pull/22350> |
| PR | #22304 | Fix aspire deploy hang when endpoint references are resolved in publish mode | open | mitchdenny | <https://github.com/microsoft/aspire/pull/22304> |
| PR | #22351 | Surface staging channel guidance during CLI self-update | open | JamesNK | <https://github.com/microsoft/aspire/pull/22351> |
| PR | #22345 | [automated] Fix flaky extension E2E tree context menu opening | open | radical | <https://github.com/microsoft/aspire/pull/22345> |
| PR | #22343 | Migrate playgrounds to AddDotnetProject | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/22343> |
| PR | #22333 | fix(cli): persist exact named integration feed routing | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22333> |
| PR | #22332 | fix(cli): support literal dots in configuration keys | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22332> |
| PR | #22331 | Translate wildcard host URLs for container consumers | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22331> |
| PR | #22330 | Label shortened ps table entries as AppHosts | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22330> |
| PR | #22329 | Explain unsupported deployed endpoint host resolution | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22329> |
| PR | #22328 | Restore SDK export generators from the CLI identity channel | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22328> |
| PR | #22326 | Always scan core hosting APIs in bundled AppHost servers | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22326> |
| PR | #22325 | Preserve custom Copilot hooks during telemetry configuration | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22325> |
| PR | #22323 | Wait for command selection before disabling the backchannel monitor | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22323> |
| PR | #22321 | Fix Go collection getters for unregistered handle types | open | anandt1201 | <https://github.com/microsoft/aspire/pull/22321> |
| PR | #22317 | [automated] Publish an attempt-labeled outerloop TRX bundle | open | radical | <https://github.com/microsoft/aspire/pull/22317> |
| PR | #22305 | Improve CLI configuration and template source logging | open | JamesNK | <https://github.com/microsoft/aspire/pull/22305> |
| PR | #22319 | Keep sidebar empty-state below All sources/resources. | closed | MuhammadBilal64 | <https://github.com/microsoft/aspire/pull/22319> |
| PR | #22334 | Disable fail-fast for native CLI archive matrix | closed | radical | <https://github.com/microsoft/aspire/pull/22334> |
| PR | #22124 | Fix empty required parameter startup recovery and diagnostics | closed | adamint | <https://github.com/microsoft/aspire/pull/22124> |
| PR | #21250 | Update SystemSecurityCryptographyPkcsNet10Version to 10.0.13 | closed | MisinformedDNA | <https://github.com/microsoft/aspire/pull/21250> |
| Issue | #22347 | [release/17.0] [CI] macOS starter diagnostics upload fails with ENOENT on frontend/node_modules | open | radical | <https://github.com/microsoft/aspire/issues/22347> |
| Issue | #22336 | aka.ms/aspire/diagnostics/aspire012 redirects to Bing | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/22336> |
| Issue | #22358 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/22358> |
| Issue | #22357 | aspire deploy --clear-cache --non-interactive cancels when deployment state exists | open | sebastienros | <https://github.com/microsoft/aspire/issues/22357> |
| Issue | #22352 | `aspire update` hides restore errors caused by a lingering MSBuild task DLL lock | closed | JamesNK | <https://github.com/microsoft/aspire/issues/22352> |
| Issue | #22335 | aspire update --migrate says 'latest recommended conventions' while build emits ASPIRE012 | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/22335> |
| Issue | #22356 | Support a display name when adding a template source | open | mitchdenny | <https://github.com/microsoft/aspire/issues/22356> |
| Issue | #22354 | Condition Aspire templates on the host for Visual Studio compatibility | open | Copilot | <https://github.com/microsoft/aspire/issues/22354> |
| Issue | #22349 | [CI] main outerloop osx-arm64 native CLI build is cancelled during package build | closed | radical | <https://github.com/microsoft/aspire/issues/22349> |
| Issue | #22344 | Clarify that --isolated supports parallel copies of an AppHost in different directories | open | adamint | <https://github.com/microsoft/aspire/issues/22344> |
| Issue | #22327 | [release/17.0] Browser-debugger fixture restore cannot resolve stable Aspire.Hosting.Blazor 17.0.0 | closed | radical | <https://github.com/microsoft/aspire/issues/22327> |
| Issue | #22342 | Foundry prompt agent does not recover after missing Azure provisioning settings are supplied | open | adamint | <https://github.com/microsoft/aspire/issues/22342> |
| Issue | #22341 | Foundry (maybe more azure resources) resource that is deploying appears like it's waiting | open | adamint | <https://github.com/microsoft/aspire/issues/22341> |
| Issue | #22337 | Deployment-state parameter cache overrides `aspire secret -e <env>` values, environment variables, and command-line arguments | open | karolz-ms | <https://github.com/microsoft/aspire/issues/22337> |
| Issue | #22338 | Prompted deploy parameter values are not saved to the selected environment's Aspire secrets file | open | karolz-ms | <https://github.com/microsoft/aspire/issues/22338> |
| Issue | #22339 | `--isolated` does not isolate Aspire secrets files; isolated runs read and write the shared `~/.aspire/secrets/<id>/<env>.json` | open | karolz-ms | <https://github.com/microsoft/aspire/issues/22339> |
| Issue | #22324 | Outerloop macOS Templates cannot merge missing arch-specific packages | closed | radical | <https://github.com/microsoft/aspire/issues/22324> |
| Issue | #22306 | aspire deploy hangs resolving Web PubSub event handler endpoint | open | mitchdenny | <https://github.com/microsoft/aspire/issues/22306> |
| Issue | #22311 | Unchanged `PublishWithContainerFiles` outputs cause false `publish-and-diff` drift | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22311> |
| Issue | #22307 | Allow disabling MSBuild multithreaded mode for AddDotnetProject builds | open | lnullens | <https://github.com/microsoft/aspire/issues/22307> |
| Issue | #22314 | `aspire do --list-steps` fails for an ACA API Management backend that publishes successfully | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22314> |
| Issue | #22302 | [cif] CI automation group status | open | radical | <https://github.com/microsoft/aspire/issues/22302> |
| Issue | #22308 | Add a --force option to 'aspire start' to recreate persistent resources (like 'aspire stop --force') | open | jomaxso | <https://github.com/microsoft/aspire/issues/22308> |
| Issue | #22315 | Publishing an AKS API Management backend throws `NotImplementedException` | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22315> |
| Issue | #22316 | Bundled CLI SDK export cannot map the core `Aspire.Hosting` assembly | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22316> |
| Issue | #22313 | Go PVC configuration cannot set labels through the generated dictionary getter | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22313> |
| Issue | #22312 | Staging CLI Go SDK export cannot restore its code-generation package with ambient sources | open | IEvangelist | <https://github.com/microsoft/aspire/issues/22312> |
| Issue | #22310 | Aspire VS Code: “Debug in Browser” session closes during OIDC redirect when an external script is included | open | markphillips100 | <https://github.com/microsoft/aspire/issues/22310> |
| Issue | #22309 | Resources grid nests a child under only the last parent when `WithParentRelationship` is called more than once | open | lupusbytes | <https://github.com/microsoft/aspire/issues/22309> |
| Issue | #11760 | ResourceUrlAnnotation.DisplayOrder is a field, not a property | closed | JamesNK | <https://github.com/microsoft/aspire/issues/11760> |
| Issue | #22248 | Place sidebar filter empty-state message below All sources / All resources and divider | closed | JamesNK | <https://github.com/microsoft/aspire/issues/22248> |
| Issue | #14617 | Extend HealthCheckAnnotation with a reference to an endpoint | closed | SheepReaper | <https://github.com/microsoft/aspire/issues/14617> |
| Issue | #9468 | After add AzureRedis to my Host deploy freezies for ever. | closed | ricoprzybylski | <https://github.com/microsoft/aspire/issues/9468> |
| Issue | #9463 | Unable to test HTTP triggered Azure Functions | closed | ghost | <https://github.com/microsoft/aspire/issues/9463> |
| Issue | #6740 | Issue with Persistent Cosmos DB Container Restart in Aspire (.NET 9) | closed | Thovenaar | <https://github.com/microsoft/aspire/issues/6740> |
| Issue | #21115 | [Epic] Go AppHost preview readiness for Aspire 17 | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21115> |
| Issue | #21449 | Require WSLC 3.0.4 or newer to avoid pre-start file-copy failures with bind mounts | closed | afscrome | <https://github.com/microsoft/aspire/issues/21449> |
| Issue | #22221 | Go starter: pre-start go mod tidy fails TLS validation on macOS with Go 1.27 | closed | danegsta | <https://github.com/microsoft/aspire/issues/22221> |
| Issue | #21988 | Run Api Review skill over the 17.0 surface area to check if we need to make any changes | closed | joperezr | <https://github.com/microsoft/aspire/issues/21988> |
| Issue | #16264 | Can't run `aspire agent init` non interactively | closed | afscrome | <https://github.com/microsoft/aspire/issues/16264> |
| Issue | #20245 | [Epic] Simplify Aspire agent setup and asset delivery | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20245> |
| Issue | #19726 | Maintain agent registrations during `aspire update` | closed | joperezr | <https://github.com/microsoft/aspire/issues/19726> |
