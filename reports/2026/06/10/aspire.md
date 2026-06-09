# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-08 23:38:56 〜 2026-06-09 23:05:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 17 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 16 |
| クローズ Issue          | 20 |
| 主要コントリビューター  | davidfowl, JamesNK, mitchdenny, radical |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18044](https://github.com/microsoft/aspire/pull/18044) — Obsolete PublishAsConnectionString （PR / merged / davidfowl）
  接続文字列公開 API を使っている AppHost 実装者は非推奨化に備えて代替パターン（パラメータ/シークレット公開）へ移行計画を立てる必要があります。
- **⚠ 破壊的変更** [#18034](https://github.com/microsoft/aspire/pull/18034) — Obsolete ServiceProvider property, add Services property on context types （PR / merged / JamesNK）
  カスタム拡張や公開フックで `ServiceProvider` を参照する利用者は `Services` プロパティへの置換を進めないと将来バージョンで破断する可能性があります。
- **⚠ 破壊的変更** [#18003](https://github.com/microsoft/aspire/issues/18003) — Source Breaking Change - `networkID` --> `networkId` （Issue / open / afscrome）
  設定ファイルや生成コードで `networkID` を参照する利用者は、`networkId` への命名変更に追従するための検索置換と互換確認が必要です。
- **⚠ 破壊的変更** [#17924](https://github.com/microsoft/aspire/pull/17924) — Add proxyless endpoint port allocator （PR / open / danegsta）
  独自ポート割り当てやプロキシ前提の運用をしている環境では、proxyless allocator 導入時に衝突や公開エンドポイント挙動の再検証が必要です。
- **非推奨/廃止** [#18022](https://github.com/microsoft/aspire/pull/18022) — Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation （PR / merged / sliekens）
  `AfterEndpointsAllocatedEvent` を利用した拡張は非推奨扱いになるため、イベントフック実装者は後継イベントへの移行準備を進める必要があります。

## このリポジトリの要点

`aspire` は **破壊的変更を伴う API 整理** が中心で、`PublishAsConnectionString` 非推奨化（#18044）と `ServiceProvider` から `Services` への移行（#18034）が実装・テスト・コード生成まで広く反映されました。  
CLI 側では stale backchannel socket によるコマンド阻害を修正（#18038）し、運用安定性を改善しています。  
同時に CI パイプライン大規模最適化（#17760）で所要時間短縮が進み、開発生産性の底上げが継続しています。  
取得件数上限警告が出ているため、open の breaking-change 系（#17924、#18003）は次回も重点監視が必要です。

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18044](https://github.com/microsoft/aspire/pull/18044) — Obsolete PublishAsConnectionString

- 作者: davidfowl / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +53 / -4
- マージ日時 (UTC): `2026-06-09 07:43:57`

**変更概要**

`PublishAsConnectionString` API を非推奨化し、接続情報公開の古い利用パターンから段階的に移行させるための変更です。  
Hosting 本体と Azure 拡張、テスト、TypeScript 生成スナップショットが更新され、非推奨警告の適用範囲が整理されています。  
影響は AppHost 構成コードとコード生成物に及び、将来削除に向けた準備フェーズの位置づけです。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/ParameterEndToEnd/ParameterEndToEnd.AppHost/AppHost.cs` | 5 | 3 |
| `src/Aspire.Hosting.Azure/AzureResourceExtensions.cs` | 4 | 0 |
| `src/Aspire.Hosting/ParameterResourceBuilderExtensions.cs` | 4 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 36 | 0 |
| `tests/Aspire.Hosting.Tests/PublishAsConnectionStringTests.cs` | 4 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `ef74984` Obsolete PublishAsConnectionString
- `eb405f4` Scope obsolete API suppression

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ParameterResourceBuilderExtensions` / `AzureResourceExtensions` 周辺で、接続文字列公開 API の使用に非推奨属性が付与される形の API 変更が入っています。  
新規抽象の追加は限定的で、主目的は既存 API の寿命管理と警告導線の整備です。  
⚠ 破壊的変更: 即時破断はないものの、将来バージョンで削除予定のため互換性リスクは高いです。

**既存利用者への影響**

段階的マイグレーションが必要です。  
`PublishAsConnectionString` 呼び出し箇所は非推奨警告を手掛かりに、推奨される接続情報公開手段へ置き換えてください。

### [#18034](https://github.com/microsoft/aspire/pull/18034) — Obsolete ServiceProvider property, add Services property on context types

- 作者: JamesNK / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +262 / -118
- マージ日時 (UTC): `2026-06-09 18:58:24`

**変更概要**

各種 context 型で `ServiceProvider` プロパティを非推奨化し、代替として `Services` プロパティを提供する API 整理です。  
影響範囲は広く、Hosting の多くの拡張実装、通知サービス、テスト、polyglot codegen スナップショットまで 60+ ファイルに反映されています。  
DI 参照パターンを統一し、将来の API 一貫性を高めることが狙いです。

<details><summary>変更ファイル (66 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.AppContainers/ContainerAppEnvironmentContext.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure.AppService/AzureAppServiceEnvironmentContext.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure.Kusto/AzureKustoBuilderExtensions.cs` | 1 | 1 |
| `src/Aspire.Hosting.Blazor/BlazorGatewayExtensions.cs` | 1 | 1 |
| `src/Aspire.Hosting.Browsers/BrowserLogsBuilderExtensions.cs` | 7 | 7 |
| `src/Aspire.Hosting.Docker/DockerComposePublishingContext.cs` | 2 | 2 |
| `src/Aspire.Hosting.EntityFrameworkCore/EFResourceBuilderExtensions.cs` | 7 | 7 |
| `src/Aspire.Hosting.JavaScript/JavaScriptHostingExtensions.cs` | 1 | 1 |
| `src/Aspire.Hosting.Kubernetes/KubernetesPublishingContext.cs` | 1 | 1 |
| `src/Aspire.Hosting.PostgreSQL/PostgresBuilderExtensions.cs` | 3 | 3 |
| `src/Aspire.Hosting.Python/PythonAppResourceBuilderExtensions.cs` | 1 | 1 |
| `src/Aspire.Hosting.Redis/RedisBuilderExtensions.cs` | 2 | 2 |
| `src/Aspire.Hosting.Yarp/YarpResourceExtensions.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/AfterEndpointsAllocatedEvent.cs` | 1 | 1 |
| `src/Aspire.Hosting/ApplicationModel/AfterResourcesCreatedEvent.cs` | 1 | 1 |
| _... 他 51 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `3e3be38` Obsolete ServiceProvider property, add Services property on context t…
- `5cef86c` Fix remaining ServiceProvider usages in ResourceNotificationService a…
- `4f9ac25` Fix obsolete ServiceProvider usages in additional test files
- `8cb6ed2` Update polyglot codegen snapshots for new Services property

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

多数の context 型で `ServiceProvider` 参照が `Services` へ移行し、実質的に API 利用契約が更新されています。  
新規抽象というより既存プロパティの置換が中心ですが、呼び出し側コードにはコンパイル修正が必要になる可能性があります。  
⚠ 破壊的変更: あり（旧プロパティ前提コードは将来的に非互換になります）。

**既存利用者への影響**

マイグレーションが必要です。  
カスタム拡張・イベントハンドラ・生成コードで `ServiceProvider` を使っている箇所を `Services` へ置換し、警告ゼロを目標に更新してください。

### [#18042](https://github.com/microsoft/aspire/pull/18042) — Revert stress apphost changes from #17825 and #17112

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +0 / -67
- マージ日時 (UTC): `2026-06-09 08:33:04`

**変更概要**

既存の stress AppHost 変更（#17825 / #17112）を取り消し、実験的な AppHost 挙動を元に戻すリバート PR です。  
`Stress.AppHost/AppHost.cs` の差分を削除し、ストレス検証環境の前提を安定版寄りに戻しています。  
新機能追加ではなく、検証系の挙動安定化と回帰リスク低減が目的です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/Stress/Stress.AppHost/AppHost.cs` | 0 | 67 |

</details>

<details><summary>コミット (2 件)</summary>

- `dbcd67f` Revert stress apphost interaction examples from #17825
- `b583fe6` Revert stress apphost persistent executable from #17112

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

単一ファイルのリバートで、公開 API シグネチャの追加変更や新規抽象導入はありません。  
以前のストレス環境向け AppHost 設定を撤回したことが主変更点です。  
⚠ 破壊的変更: なし（本番 API より検証用構成の巻き戻し）。

**既存利用者への影響**

一般利用者のマイグレーションは不要です。  
Stress playground をベースに独自検証している場合のみ、巻き戻し後の AppHost 設定差分を再確認してください。

### [#18038](https://github.com/microsoft/aspire/pull/18038) — Fix stale AppHost backchannel sockets blocking CLI commands

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +295 / -22
- マージ日時 (UTC): `2026-06-09 07:57:50`

**変更概要**

stale な AppHost backchannel ソケットが残留して CLI コマンドを阻害する問題を修正した PR です。  
接続解決、ランチャー、プロジェクト起動補助ロジックを更新し、無効ソケットを探索対象から除外する処理を追加しています。  
関連テストも追加され、CLI の起動/接続失敗時の再現性と安定性が改善されました。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Backchannel/AppHostConnectionResolver.cs` | 4 | 2 |
| `src/Aspire.Cli/Commands/AppHostLauncher.cs` | 4 | 2 |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 5 | 1 |
| `src/Aspire.Cli/Projects/GuestAppHostProject.cs` | 5 | 1 |
| `src/Aspire.Cli/Utils/AppHostHelper.cs` | 57 | 7 |
| `tests/Aspire.Cli.Tests/Backchannel/AppHostConnectionResolverTests.cs` | 43 | 0 |
| `tests/Aspire.Cli.Tests/Commands/AppHostLauncherTests.cs` | 44 | 0 |
| `tests/Aspire.Cli.Tests/Projects/DotNetAppHostProjectTests.cs` | 48 | 0 |
| `tests/Aspire.Cli.Tests/Projects/GuestAppHostProjectTests.cs` | 39 | 0 |
| `tests/Aspire.Cli.Tests/Utils/AppHostHelperTests.cs` | 46 | 9 |

</details>

<details><summary>コミット (3 件)</summary>

- `45a3f82` Fix stale Aspire backchannel socket cleanup
- `680f3d5` Keep dead stale sockets out of probe list
- `3687e28` Address stale socket review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AppHostConnectionResolver` や `AppHostHelper` の内部ロジック強化が中心で、外部公開 API シグネチャの大きな破壊的変更は見当たりません。  
死んだソケットを検出・除外する内部判定が追加され、CLI の接続先選択アルゴリズムが堅牢化されています。  
⚠ 破壊的変更: なし。

**既存利用者への影響**

マイグレーションは原則不要です。  
CLI 利用者はアップデート後に AppHost 起動/接続失敗が改善しているかを確認すれば十分です。

### [#18035](https://github.com/microsoft/aspire/pull/18035) — Remove LOC breakdown canvas extension

- 作者: mitchdenny / 状態: MERGED
- ラベル: —
- 変更行数: +0 / -605
- マージ日時 (UTC): `2026-06-09 05:09:14`

**変更概要**

`loc-breakdown` canvas extension をリポジトリから削除し、不要になった拡張資産を整理した PR です。  
拡張本体 (`extension.mjs`) と README が削除され、関連スクリーンショットのみ履歴上のアセットとして扱われています。  
機能追加ではなく、保守対象の縮小と開発体験の簡素化が狙いです。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/extensions/loc-breakdown/README.md` | 0 | 60 |
| `.github/extensions/loc-breakdown/extension.mjs` | 0 | 545 |
| `.github/extensions/loc-breakdown/screenshot.png` | 0 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `fb4833f` Remove LOC breakdown canvas extension

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

削除対象はローカル拡張実装であり、Aspire ランタイム API 自体のシグネチャ変更はありません。  
ただし、該当 canvas extension に依存した開発フローは利用不可になります。  
⚠ 破壊的変更: 限定的にあり（`loc-breakdown` 拡張を使っていた内部運用のみ影響）。

**既存利用者への影響**

通常利用者のマイグレーションは不要です。  
`loc-breakdown` 拡張を使っていた場合は、代替の計測手段（CI レポートや外部分析）へ移行が必要です。

### [#17760](https://github.com/microsoft/aspire/pull/17760) — perf(ci): cut microsoft-aspire pipeline wall-clock from 121min to ~57min

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +2160 / -567
- マージ日時 (UTC): `2026-06-09 05:16:42`

**変更概要**

Azure DevOps パイプラインを大規模に再編し、`microsoft-aspire` の CI 所要時間を約 121 分から約 57 分へ短縮することを狙った性能改善 PR です。  
ビルド・署名・拡張・検証工程をテンプレート化して並列化し、ネイティブアーカイブ取得や npm 署名検証スクリプトを整備しています。  
テスト基盤コードの共通化も含め、開発チームのフィードバックサイクル短縮に直結する変更です。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Publishing.props` | 1 | 1 |
| `eng/pipelines/azure-pipelines-unofficial.yml` | 9 | 0 |
| `eng/pipelines/azure-pipelines.yml` | 464 | 171 |
| `eng/pipelines/common-variables.yml` | 16 | 3 |
| `eng/pipelines/templates/BuildAndTest.yml` | 142 | 140 |
| `eng/pipelines/templates/build_extension.yml` | 159 | 0 |
| `eng/pipelines/templates/build_sign_native.yml` | 147 | 1 |
| `eng/pipelines/templates/npm-cli-install-validation-steps.yml` | 18 | 5 |
| `eng/scripts/download-native-archives.ps1` | 386 | 0 |
| `eng/scripts/validate-npm-package-signatures.ps1` | 81 | 0 |
| `tests/Infrastructure.Tests/CreateFailingTestIssue/CreateFailingTestIssueFixture.cs` | 1 | 20 |
| `tests/Infrastructure.Tests/DownloadFailingJobLogs/DownloadFailingJobLogsFixture.cs` | 2 | 21 |
| `tests/Infrastructure.Tests/ExtractTestPartitions/ExtractTestPartitionsFixture.cs` | 1 | 16 |
| `tests/Infrastructure.Tests/GenerateTestSummary/GenerateTestSummaryFixture.cs` | 1 | 18 |
| `tests/Infrastructure.Tests/Pipelines/NpmCliPackageTests.cs` | 1 | 18 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `e7c7e42` test+ci: extract npm signature validation + add parallel artifact dow…
- `135dc34` ci: add supporting templates + branch-gated variables for parallel st…
- `3af7810` ci: parallelize official pipeline; split build / native / extension /…
- `6ea9101` test: consolidate FindRepoRoot() into shared RepoRoot helper
- `6a0f073` ci(azdo): close pipeline gaps surfaced by self-review
- `05b8d88` ci(scripts): address Copilot review feedback on PR #17760
- `7fb2856` Merge remote-tracking branch 'origin/main' into radical/azdo-pipeline…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更の中心は `eng/pipelines/*` と `eng/scripts/*` の CI 基盤で、プロダクト公開 API のシグネチャ変更は含まれていません。  
新規テンプレートと補助スクリプト追加により、並列実行・再試行・成果物検証の運用構造が強化されています。  
⚠ 破壊的変更: なし（CI 設定・内部運用フローの更新）。

**既存利用者への影響**

ランタイム利用者のマイグレーションは不要です。  
リポジトリの CI メンテナーは、新テンプレート前提のパイプライン変数・ジョブ依存関係に合わせてカスタム定義を見直してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18067 | Make AppHost/CLI incompatibility error specific and actionable | open | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18067> |
| PR | #18065 | Add coding agent telemetry detection | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/18065> |
| PR | #18064 | Use last 8 characters of GUID service.instance.id in resource display name | open | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18064> |
| PR | #18063 | Detect principal type from credential in BicepProvisioner | open | denisivan0v | <https://github.com/microsoft/aspire/pull/18063> |
| PR | #18062 | Add CI-infrastructure testing playbook and azdo-internal skill | open | radical | <https://github.com/microsoft/aspire/pull/18062> |
| PR | #18061 | Update dependencies from latest .NET Servicing | open | joperezr | <https://github.com/microsoft/aspire/pull/18061> |
| PR | #18060 | ci: Skip Homebrew validation by default in release pipeline | open | radical | <https://github.com/microsoft/aspire/pull/18060> |
| PR | #18059 | Expose IServiceProvider and callback contexts to ATS polyglot hosts | open | sebastienros | <https://github.com/microsoft/aspire/pull/18059> |
| PR | #18058 | ci: file GitHub issues when scheduled, outerloop, and quarantine CI fails | open | radical | <https://github.com/microsoft/aspire/pull/18058> |
| PR | #18057 | fix(ci): retry transient native-archive downloads in the assemble stage | open | radical | <https://github.com/microsoft/aspire/pull/18057> |
| PR | #18056 | Allow Azure VNet subnet name to be a parameter | open | Waleed-KH | <https://github.com/microsoft/aspire/pull/18056> |
| PR | #18053 | Fix MAUI OTLP dev tunnel endpoint resolution | open | jfversluis | <https://github.com/microsoft/aspire/pull/18053> |
| PR | #18052 | WIP: Use annotations to determine project & executable resources | open | afscrome | <https://github.com/microsoft/aspire/pull/18052> |
| PR | #18051 | Improve AppHost backchannel connection error message | open | mehara-rothila | <https://github.com/microsoft/aspire/pull/18051> |
| PR | #18033 | Port Community Toolkit Java integration | open | marshalhayes | <https://github.com/microsoft/aspire/pull/18033> |
| PR | #18032 | Remove [Experimental] from IInteractionService and related types | open | JamesNK | <https://github.com/microsoft/aspire/pull/18032> |
| PR | #18031 | Add interaction pages to dashboard | open | JamesNK | <https://github.com/microsoft/aspire/pull/18031> |
| Issue | #18066 | Outbound HTTPS requests fail on Linux because Aspire replaces SSL_CERT_DIR with temporary certificate directory | open | axies20 | <https://github.com/microsoft/aspire/issues/18066> |
| Issue | #18055 | download-native-archives.ps1 has no retry on transient download failures, failing the assemble stage | open | radical | <https://github.com/microsoft/aspire/issues/18055> |
| Issue | #18054 | Aspire panel refresh briefly transitions running workspace AppHost into incorrect grouped/idle tree state | open | ellahathaway | <https://github.com/microsoft/aspire/issues/18054> |
| Issue | #18050 | Aspire 13.4.3 - Starts successfully but then isn't running | open | tjwald | <https://github.com/microsoft/aspire/issues/18050> |
| Issue | #18049 | Sharpcompress 1.0.0? | open | ThomasGugler | <https://github.com/microsoft/aspire/issues/18049> |
| Issue | #18048 | Helper method to remove all annotations of type | open | afscrome | <https://github.com/microsoft/aspire/issues/18048> |
| Issue | #18047 | VS Code Extension Debug Output is confusing | open | afscrome | <https://github.com/microsoft/aspire/issues/18047> |
| Issue | #18046 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18046> |
| Issue | #18045 | 13.4.3 WithHttpHealthCheck not working | closed | davhdavh | <https://github.com/microsoft/aspire/issues/18045> |
| Issue | #18043 | 13.4.3 WithExternalHttpEndpoints doesnt work | closed | davhdavh | <https://github.com/microsoft/aspire/issues/18043> |
| Issue | #18041 | EnsureKubernetesAsync times out on GitHub-hosted CI runners in 13.4.x — KubernetesConfigReadRetryCount config removed, no bypass available | open | zappod | <https://github.com/microsoft/aspire/issues/18041> |
| Issue | #18040 | 13.4.3 redis WithoutHttpsCertificate always unhealthy | closed | davhdavh | <https://github.com/microsoft/aspire/issues/18040> |
| Issue | #18039 | 13.4.3 isproxy = false broken | closed | davhdavh | <https://github.com/microsoft/aspire/issues/18039> |
| Issue | #18037 | [Deployment E2E] Nightly test failure - 2026-06-09 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18037> |
| Issue | #18036 | Tracking: CI improvements | open | radical | <https://github.com/microsoft/aspire/issues/18036> |
| Issue | #18030 | aspire deploy overwrites `ContainerRuntimeIdentifier` | open | Lexy2 | <https://github.com/microsoft/aspire/issues/18030> |
| Issue | #17999 | [Failing test]: Aspire.Qdrant.Client.Tests.ConformanceTests.HealthCheckReportsExpectedStatus\(key: null\) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17999> |
| Issue | #17985 | [Failing test]: Aspire.Cli.Tests.Commands.AppHostLauncherTests.WaitForLegacyDetachedStartupStabilityAsync\_RetriesV2ProbeUntilChildExits | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17985> |
| Issue | #17942 | Main CI has persistent Polyglot, Hosting-4, and VS Code E2E failures | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17942> |
| Issue | #17831 | Azure Storage Emulator doesn't start in Aspire 13.4 with persistent container lifetime | closed | sander1095 | <https://github.com/microsoft/aspire/issues/17831> |
| Issue | #17613 | [Failing test]: Aspire.Cli.EndToEnd.Tests.SmokeTests.LatestCliCanStartStableChannelTypeScriptAppHost | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17613> |
| Issue | #17611 | [Failing test]: Aspire.Cli.EndToEnd.Tests.SmokeTests.LatestCliCanStartStableChannelAppHost | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17611> |
| Issue | #17606 | TS Apphost .addParameter() throws Capability 'Aspire.Hosting/addParameter' requires handle of type 'unknown', got 'unknown' | closed | chrisusher-tt | <https://github.com/microsoft/aspire/issues/17606> |
| Issue | #17601 | [Failing test]: Aspire.Cli.EndToEnd.Tests.KubernetesDeployTypeScriptTests.DeployTypeScriptAppToKubernetes | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17601> |
| Issue | #17441 | [13.3.5+70b] Can't use "aspire add" at all | closed | tebeco | <https://github.com/microsoft/aspire/issues/17441> |
| Issue | #17181 | [Failing test]: Aspire.Cli.EndToEnd.Tests.JsReactTemplateTests.CreateAndRunJsReactProject | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17181> |
| Issue | #16863 | Dashboard logs Blazor circuit disconnects as errors during normal use | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16863> |
| Issue | #16252 | CLI Starter Validation: aspire-ts-starter fails on Windows ARM64 (exit code 17) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16252> |
| Issue | #16198 | JsonRpcServer crashes when SetUnixFileMode runs on a Unix socket on Docker Desktop bind mounts | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16198> |
| Issue | #16105 | [Failing test]: SmolSemVer Windows - process initialization failure (exit code -1073741502) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16105> |
| Issue | #16101 | IHelmRunner: Add typed methods for deploy, uninstall, verify | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16101> |
| Issue | #15902 | Add @internal JSDoc tags to generated *Impl and *PromiseImpl classes | closed | davidfowl | <https://github.com/microsoft/aspire/issues/15902> |
