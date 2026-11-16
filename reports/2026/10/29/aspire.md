# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 21 |
| オープン中の新規 PR     | 10 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 16 |
| クローズ Issue          | 9 |
| 主要コントリビューター  | IEvangelist, eerhardt, mitchdenny, joperezr, DamianEdwards, ellahathaway |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#21360](https://github.com/microsoft/aspire/pull/21360) — Deprecate AddProject and complete Project V2 migration （PR / open / karolz-ms）
  未マージの移行提案です。既存の `AddProject` を使う利用者は、SDK-style project 対応と Project V2 への移行範囲が確定するまで現行コードへの影響を追跡してください。
- **GA 昇格** [#21115](https://github.com/microsoft/aspire/issues/21115) — [Epic] Go AppHost GA （Issue / open / IEvangelist）
  Go AppHost の GA は Aspire 17.0 に向けた未完了エピックで、実験フラグ削除・既定テンプレート公開・検証や文書整備が残っています。Go 利用者は GA 前提でなく、進捗を確認してください。

## このリポジトリの要点

CLI ではグローバルテンプレートソースの管理・検索と Go API ドキュメント連携がマージされ、Go AppHost の GA 準備が進みました。Go AppHost 自体の GA は 17.0 目標の未完了作業です（[#21115](https://github.com/microsoft/aspire/issues/21115)）。
Entra ID hosting integration は複数言語の AppHost に拡張され、`aspire destroy` の不明な引数拒否や OpenCode 呼び出し元検出も改善されています。Project V2 移行と `AddProject` 非推奨化はオープン提案として継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#21384](https://github.com/microsoft/aspire/pull/21384) — Detect newer OpenCode calling-agent environment markers

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +18 / -2
- マージ日時 (UTC): `2026-10-29 03:13:24`

**変更概要**

新しい OpenCode が `OPENCODE_AI` 以外の環境マーカーを使う場合、Aspire CLI の呼び出し元 telemetry が OpenCode を識別できませんでした。
`OPENCODE=1` と、空値も含む `OPENCODE_PID` の存在を検出し、既存判定を維持したまま複数マーカーでも一度だけ記録します。
CLI telemetry の検出精度を上げる変更で、他の coding agent の識別動作には影響しません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Telemetry/CodingAgentDetector.cs` | 5 | 2 |
| `tests/Aspire.Cli.Tests/Telemetry/AspireCliTelemetryTests.cs` | 13 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `2db3bda` Detect newer OpenCode calling-agent environment markers

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`CodingAgentDetector` の環境変数判定を拡張し、回帰テストを追加しました。公開 API や CLI コマンドの変更はありません。

**既存利用者への影響**

移行不要です。新しい OpenCode 環境でも telemetry の呼び出し元分類が改善されます。

### [#21379](https://github.com/microsoft/aspire/pull/21379) — Reject unknown arguments in aspire destroy

- 作者: spboyer / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +147 / -0
- マージ日時 (UTC): `2026-10-29 01:50:49`

**変更概要**

`aspire destroy` が未知のオプションや位置引数を受け取っても、AppHost 起動前に拒否せず破棄パイプラインを進める可能性がありました。
未知の引数を起動前に検証し、該当時はエラーと終了コード 1 を返します。既存の destroy オプション、list-step の JSON 出力、他の publish/deploy/do コマンドの引数転送は維持します。
CLI 利用者には、不正な引数を黙って受け入れず即時エラーにする挙動が適用されます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/DestroyCommand.cs` | 10 | 0 |
| `src/Aspire.Cli/Commands/PipelineCommandBase.cs` | 25 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/EmptyAppHostTemplateTests.cs` | 48 | 0 |
| `tests/Aspire.Cli.Tests/Commands/DestroyCommandTests.cs` | 59 | 0 |
| `tests/Aspire.Cli.Tests/Commands/DoCommandTests.cs` | 5 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `d4dce44` Fix destroy accepting unknown command-line arguments
- `3dc8d3a` Require list-steps when selecting destroy output format
- `542dcc2` Reject numeric destroy list-step output formats
- `df32899` Cover destroy argument rejection in installed CLI E2E

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI の引数検証と `aspire destroy --help` の usage 表示を更新します。新しい依存や公開 API はなく、未知の引数は AppHost 検出・起動より前に拒否されます。

**既存利用者への影響**

有効な `destroy` オプションの移行は不要です。以前黙認されていた未知のオプションや位置引数を指定しているスクリプトは、不要な引数を削除してください。

### [#21329](https://github.com/microsoft/aspire/pull/21329) — Manage and search global template sources in the CLI

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +6685 / -155
- マージ日時 (UTC): `2026-10-29 01:45:31`

**変更概要**

CLI から再利用可能なテンプレートをローカルディレクトリまたは Git リポジトリのグローバルソースとして登録・検索できるようになりました。
`aspire template source add/remove/list` で設定を管理し、互換性のある `aspire new` では組み込みテンプレートに加えて設定済みソースを検索できます。名前・表示名・`template.json` の説明で大文字小文字を区別せず検索します。
HTTP カタログやページングはこの変更の範囲外です。設定形式はオブジェクト型の `templateSources` で、従来設定のみの環境には移行案内を返します。

<details><summary>変更ファイル (73 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/cli.instructions.md` | 7 | 0 |
| `src/Aspire.Cli/Commands/ConfigCommand.cs` | 6 | 0 |
| `src/Aspire.Cli/Commands/NewCommand.cs` | 128 | 11 |
| `src/Aspire.Cli/Commands/RootCommand.cs` | 47 | 0 |
| `src/Aspire.Cli/Commands/TemplateManagementCommand.cs` | 208 | 0 |
| `src/Aspire.Cli/Completions/CompletionInvocation.cs` | 1 | 37 |
| `src/Aspire.Cli/Configuration/AspireConfigFile.cs` | 23 | 0 |
| `src/Aspire.Cli/Configuration/ConfigSource.cs` | 2 | 6 |
| `src/Aspire.Cli/Configuration/ConfigurationService.cs` | 30 | 11 |
| `src/Aspire.Cli/Git/GitHelpers.cs` | 19 | 0 |
| `src/Aspire.Cli/Interaction/ConsoleInteractionService.cs` | 4 | 4 |
| `src/Aspire.Cli/Interaction/ExtensionInteractionService.cs` | 3 | 3 |
| `src/Aspire.Cli/Interaction/IInteractionService.cs` | 1 | 1 |
| `src/Aspire.Cli/Program.cs` | 32 | 14 |
| `src/Aspire.Cli/README.md` | 129 | 0 |
| _... 他 58 件_ | | |

</details>

<details><summary>コミット (23 件)</summary>

- `2e6ebb5` Add configured local template source search to the CLI
- `e3c4ae6` Support configured Git template sources in the CLI
- `79a8f11` Merge main into configured template sources
- `2369264` Support repository ref and path in configured template sources
- `14ee44b` Add template source management and searchable catalogs
- `e3d3a00` Add global template source listing with JSON output
- `4210b4a` Hide template search when no sources are configured
- `43a311a` Address template source configuration and picker review feedback
- _... 他 15 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`aspire template source add`, `remove`, `list` の CLI サブコマンドと、グローバル `templateSources` 設定が追加されました。ソース追加・編集で型付き検証を共有し、設定名は大文字小文字を区別せず比較します。
公開ライブラリ API の変更ではありません。レガシー設定のみの環境でソース管理コマンドを使うと、`aspire config info` による移行案内付きでエラーになります。

**既存利用者への影響**

新機能を使わない既存利用者に移行は不要です。利用時は `aspire.config.json` のグローバル `templateSources` を設定してください。レガシー設定からは先に設定移行が必要です。

### [#21173](https://github.com/microsoft/aspire/pull/21173) — Add Go support to aspire docs api

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +715 / -23
- マージ日時 (UTC): `2026-10-29 01:40:20`

**変更概要**

`aspire docs api` が Go API リファレンスを扱えるようになり、`list` / `search` / `get` で `--language go` と `go` scope を指定できます。
Go の module/item/member という URL 構造を sitemap から索引化し、TypeScript と共有する module index builder を利用します。Go API ページが公開されるまでは Go scope は空になります。
既存の C# / TypeScript の出力は変わらず、Go 追加に伴って索引キャッシュのスキーマバージョンが 1 から 2 に上がります。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/api-docs-commands.md` | 32 | 4 |
| `docs/specs/cli-output-formats.md` | 2 | 0 |
| `src/Aspire.Cli/Documentation/ApiDocs/ApiDocsIndexService.cs` | 53 | 18 |
| `src/Aspire.Cli/Documentation/ApiDocs/ApiSitemapParser.cs` | 2 | 1 |
| `tests/Aspire.Cli.Tests/Mcp/ApiDocs/ApiDocsIndexServiceTests.cs` | 363 | 0 |
| `tests/Aspire.Cli.Tests/Mcp/ApiDocs/ApiMemberMarkdownParserTests.cs` | 177 | 0 |
| `tests/Aspire.Cli.Tests/Mcp/ApiDocs/ApiSitemapParserTests.cs` | 86 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `a07ba87` Add Go support to aspire docs api
- `7bc3116` Address review feedback on Go API docs support

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ApiReferenceLanguages.Go`、Go root scope、`/reference/api/go` sitemap route が追加され、索引スキーマを v2 に更新します。古い CLI のキャッシュは fingerprint の変更により再生成されます。
`aspire docs api` の CLI オプションは Go を受け入れますが、既存言語の結果形式や C# API の挙動は変更されません。

**既存利用者への影響**

Go API のドキュメント公開後に Go scope が利用可能になります。キャッシュは自動再構築されるため、手動の移行作業は不要です。

### [#21385](https://github.com/microsoft/aspire/pull/21385) — Temporarily disable the macOS CLI unit-test lane

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +3 / -1
- マージ日時 (UTC): `2026-10-29 00:27:15`

**変更概要**

テストホストのハングが CI を継続的に停止させる問題を抑えるため、macOS の `Aspire.Cli.Tests` unit-test lane を一時的にスケジュール対象外にしました。
Windows/Linux の CLI unit tests と macOS の native archive build、CLI E2E、その他 macOS checks は維持されます。
これは原因修正ではなく一時的な CI containment であり、macOS CLI unit coverage が復旧条件の確認まで欠落します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.Tests/Aspire.Cli.Tests.csproj` | 3 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `a20c41d` Temporarily disable macOS CLI unit tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テストプロジェクトの `RunOnGithubActionsMacOS` capability を一時的に `false` にします。製品 API や runtime behavior は変更されませんが、macOS 上の CLI unit-test coverage が CI から外れます。

**既存利用者への影響**

製品利用者の移行は不要です。CI 管理者は修正済み SDK/runtime が利用可能になった後に macOS unit-test lane を再有効化する必要があります。

### [#21361](https://github.com/microsoft/aspire/pull/21361) — Export Entra ID hosting integration to polyglot AppHosts

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +3407 / -8
- マージ日時 (UTC): `2026-10-28 23:27:48`

**変更概要**

Entra ID hosting integration の登録・設定を polyglot AppHost から利用できるようにし、Go など複数言語の生成コードとテストを追加します。
既存登録参照、consumer settings、資格情報種別、owner/redirect URI、application roles、API scopes/permissions、admin consent、managed identity federation を扱います。
typed ATS adapter を介して既存の `withReference` dispatch と統合し、既存 C# の API シグネチャ・挙動と preview versioning は維持します。

<details><summary>変更ファイル (32 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/polyglot-validation/test-rust.sh` | 21 | 0 |
| `eng/github-ci/test-trigger-map.yml` | 1 | 0 |
| `src/Aspire.Hosting.Azure.EntraId/Aspire.Hosting.Azure.EntraId.csproj` | 0 | 1 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdApplicationResource.cs` | 27 | 1 |
| `src/Aspire.Hosting.Azure.EntraId/EntraIdResourceExtensions.cs` | 689 | 1 |
| `src/Aspire.Hosting.Azure.EntraId/README.md` | 128 | 1 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Aspire.Hosting.Azure.EntraId.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/EntraIdPolyglotTests.cs` | 478 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/EntraIdProvisioningTests.cs` | 10 | 4 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdPolyglotTests.Credentials_EmitTypedSettingsAndPreserveSecretReferences_operation=Publish.verified.txt` | 32 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdPolyglotTests.Credentials_EmitTypedSettingsAndPreserveSecretReferences_operation=Run.verified.txt` | 32 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdPolyglotTests.OwnersAndRedirects_PreserveDeferredValuesAndOrder.verified.bicep` | 64 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdPolyglotTests.Redirects_KeepEndpointValuesDeferred_operation=Publish.verified.bicep` | 39 | 0 |
| `tests/Aspire.Hosting.Azure.EntraId.Tests/Snapshots/EntraIdPolyglotTests.Redirects_KeepEndpointValuesDeferred_operation=Run.verified.bicep` | 39 | 0 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Azure.EntraId/Go/apphost.go` | 136 | 0 |
| _... 他 17 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `c90a2be` Export Entra ID hosting integration to polyglot AppHosts
- `9c1f58a` Export Entra application roles to polyglot AppHosts
- `6071440` Export Entra API scopes, permissions, and consent to polyglot AppHosts
- `436151c` Validate Entra polyglot exports with dedicated per-language fixtures
- `00729d0` Add Rust Entra fixture, Rust validation runner support, and routing c…
- `3c52751` Remove Entra-specific routing test
- `9879473` Move Entra polyglot adapters next to their C# counterparts
- `d7ef529` Clarify README TypeScript sample prerequisites
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

polyglot export に `withAppRole(value, displayName, description, options)` と、`withApplicationIdUri`、`withScope`、`getScopeUri`、`withPreAuthorizedApplication`、`withApiPermissions` / `withAdminConsent`、外部 API 向けの permission / consent helper を追加します。
これらは既存の Entra hosting integration を他言語の AppHost に投影する API です。既存 C# の署名・動作を維持し、新しい競合する `withReference` dispatcher は導入しません。

**既存利用者への影響**

既存 C# AppHost の移行は不要です。polyglot AppHost では新しい Entra helper を使えます。既存登録参照は Azure provisioning や Microsoft Graph への問い合わせを自動的に有効化しません。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #21348 | [release/13.6] Update .NET servicing dependencies for Aspire 13.6.5 | joperezr | <https://github.com/microsoft/aspire/pull/21348> |
| #21194 | Harden the Go runtime transport and decode lists of handles | IEvangelist | <https://github.com/microsoft/aspire/pull/21194> |
| #21278 | Provision Entra API identifier URIs, scopes, and caller permissions | eerhardt | <https://github.com/microsoft/aspire/pull/21278> |
| #21188 | Fix Go AppHost panic on callback options and accept Go numbers in unions | IEvangelist | <https://github.com/microsoft/aspire/pull/21188> |
| #21199 | Accept derived builders where the Go SDK takes a base resource type | IEvangelist | <https://github.com/microsoft/aspire/pull/21199> |
| #21196 | Add a Go AppHost tooling check to aspire doctor | IEvangelist | <https://github.com/microsoft/aspire/pull/21196> |
| #21193 | Make new Go AppHosts gofmt-clean, ignore the generated SDK and check every resource | IEvangelist | <https://github.com/microsoft/aspire/pull/21193> |
| #21261 | Fix nil resource builder in Go AppHost callbacks | IEvangelist | <https://github.com/microsoft/aspire/pull/21261> |
| #21189 | Add Go AppHost CLI end-to-end tests and a PolyglotGo image | IEvangelist | <https://github.com/microsoft/aspire/pull/21189> |
| #21327 | Fix Azure Functions Node debugger E2E startup race | ellahathaway | <https://github.com/microsoft/aspire/pull/21327> |
| #21228 | Add Azure Front Door Private Link support for Azure Container Apps | eerhardt | <https://github.com/microsoft/aspire/pull/21228> |
| #21357 | Declare Entra application roles on provisioned registrations | eerhardt | <https://github.com/microsoft/aspire/pull/21357> |
| #21337 | Keep reconnect dialog above interaction dialogs | JamesNK | <https://github.com/microsoft/aspire/pull/21337> |
| #21352 | Catch up localizations from OneLoc build 20261027.3 | joperezr | <https://github.com/microsoft/aspire/pull/21352> |
| #21124 | Add ATS support for Kubernetes PVC configuration callbacks | mitchdenny | <https://github.com/microsoft/aspire/pull/21124> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #21364 | Support configurable named skill sources | open | JamesNK | <https://github.com/microsoft/aspire/pull/21364> |
| PR | #21381 | Modernize the dashboard experience | open | sebastienros | <https://github.com/microsoft/aspire/pull/21381> |
| PR | #21373 | Stop persisting ambient NuGet policy into AppHost configs | open | danegsta | <https://github.com/microsoft/aspire/pull/21373> |
| PR | #21391 | docs: latest Aspire standup report | open | davidfowl | <https://github.com/microsoft/aspire/pull/21391> |
| PR | #21388 | Inherit template sources from explicit init configuration | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21388> |
| PR | #21366 | Support configurable named integration sources | open | JamesNK | <https://github.com/microsoft/aspire/pull/21366> |
| PR | #21389 | Restore macOS CLI tests with serialized collections | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21389> |
| PR | #21383 | Bump the npm_and_yarn group across 13 directories with 4 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21383> |
| PR | #21382 | Add local developer certificate credentials for Entra applications | open | eerhardt | <https://github.com/microsoft/aspire/pull/21382> |
| PR | #21380 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3119928 | open | joperezr | <https://github.com/microsoft/aspire/pull/21380> |
| PR | #21292 | Add polyglot support for Azure Entra ID hosting | closed | sebastienros | <https://github.com/microsoft/aspire/pull/21292> |
| Issue | #21390 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21390> |
| Issue | #21386 | Invalid remote skill sources block embedded skill and MCP setup | open | JamesNK | <https://github.com/microsoft/aspire/issues/21386> |
| Issue | #21387 | Embedded skill conflict detection misses disabled custom sources | open | JamesNK | <https://github.com/microsoft/aspire/issues/21387> |
| Issue | #21376 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21376> |
| Issue | #21378 | [CI Failure] VS Code extension E2E (Linux, apphost-lifecycle-tools) shard fails with long stalls and no Mocha failure details | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21378> |
| Issue | #21377 | Container network tunnel proxy fails to build when using podman remote | open | marshalhayes | <https://github.com/microsoft/aspire/issues/21377> |
| Issue | #21375 | [Feature Request] standalone/offline-friendly Kubernetes publish mode with resolved values | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/21375> |
| Issue | #21374 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21374> |
| Issue | #21372 | Entra (Microsoft Graph Bicep) deployments transiently fail right after creating an app registration | open | eerhardt | <https://github.com/microsoft/aspire/issues/21372> |
| Issue | #21371 | [Bug] aspire publish can require manual dotnet restore/build before succeeding | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/21371> |
| Issue | #21370 | aspire publish can require manual dotnet restore/build before succeeding | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/21370> |
| Issue | #21369 | aspire publish can require manual dotnet restore/build before succeeding | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/21369> |
| Issue | #21368 | Cannot show selection prompt since the current terminal does not support ANSI escape sequences. | open | Worble | <https://github.com/microsoft/aspire/issues/21368> |
| Issue | #21365 | Extract a shared locked configuration-edit operation for CLI settings and template sources | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21365> |
| Issue | #21363 | Support globally unique, source-qualified template names in aspire new | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21363> |
| Issue | #21362 | aspire new persists machine-specific NuGet source mappings into generated projects | open | mitchdenny | <https://github.com/microsoft/aspire/issues/21362> |
| Issue | #16327 | [AspireE2E] `aspire destroy`: with unknown flags, it will execute successfully without any CLI error. | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/16327> |
| Issue | #21076 | Export the Entra hosting integration to polyglot AppHosts | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21076> |
| Issue | #21219 | Dashboard: steady ~12–14% CPU from SQLite metrics ingestion on long-running apps | closed | sebastienros | <https://github.com/microsoft/aspire/issues/21219> |
| Issue | #21070 | Provision Entra API identifier URIs, scopes, and caller permission relationships | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21070> |
| Issue | #21255 | Go AppHost: callbacks that take a resource builder receive nil and panic | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/21255> |
| Issue | #20998 | [CI Failure] Flaky: Aspire Node Functions debugger E2E times out waiting for HTTP breakpoint on Linux | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20998> |
| Issue | #20530 | Review Kubernetes PVC customization APIs for TypeScript usage in 17.0 | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20530> |
