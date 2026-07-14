# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-10 00:28:22 〜 2026-07-14 01:26:38 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 16 |
| オープン中の新規 PR     | 13 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 18 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | mitchdenny, davidfowl, JamesNK, nellshamrell, Copilot, tommasodotNET |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18698](https://github.com/microsoft/aspire/pull/18698) — Flatten single optional DTO 'options' parameter in Go polyglot generator （PR / merged / ellahathaway）
  Go polyglot generator の生成コードを利用する利用者は、単一 options DTO の引数形状変更を確認してください。
- **⚠ 破壊的変更** [#18692](https://github.com/microsoft/aspire/pull/18692) — Update Foundry hosted agent protocol payload （PR / merged / tommasodotNET）
  Foundry hosted agent と連携する利用者は、新しい payload 契約に合わせてクライアント・サーバー双方を更新してください。
- **⚠ 破壊的変更** [#18003](https://github.com/microsoft/aspire/issues/18003) — Source Breaking Change - `networkID` --> `networkId` （Issue / closed / afscrome）
  `networkID` を参照する設定・生成コードがある利用者は、camelCase の `networkId` へ更新してください。
- **⚠ セキュリティ** [#18735](https://github.com/microsoft/aspire/pull/18735) — [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) （PR / open / IEvangelist）
  Aspire のフロントエンド依存を利用する開発者は、PR の npm 更新内容と lockfile の差分を確認してください。
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / closed / IEvangelist）
  JS/TS の依存関係を含む利用者は、修正済みアラートの対象パッケージが環境に残っていないか確認してください。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / closed / IEvangelist）
  npm 依存を取り込む利用者は、セキュリティ更新後の lockfile とビルド結果を確認してください。

## このリポジトリの要点

Go/TypeScript の polyglot generator と Foundry hosted agent protocol に破壊的な契約変更が入りました。外部サービス URI の末尾スラッシュ許容など App Model の扱いやすさも改善されています。E2E workflow では外部サービスへの asciinema アップロードと CLI コメント投稿を停止し、npm セキュリティ対応も進行中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18698](https://github.com/microsoft/aspire/pull/18698) — Flatten single optional DTO 'options' parameter in Go polyglot generator

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +399 / -362
- マージ日時 (UTC): `2026-07-10 00:29:24`

**変更概要**

Go polyglot generator で、単一の optional DTO `options` を個別の引数として平坦化する生成ロジックを追加しました。
Go と TypeScript で判断を共有する `AtsOptionsFlattening` helper を導入し、nil の variadic options は出力から省略します。
生成スナップショットと polyglot apphost の期待値も更新されました。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.CodeGeneration.Go/Aspire.Hosting.CodeGeneration.Go.csproj` | 1 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.cs` | 63 | 5 |
| `src/Aspire.Hosting.CodeGeneration.TypeScript/Aspire.Hosting.CodeGeneration.TypeScript.csproj` | 1 | 0 |
| `src/Aspire.Hosting.CodeGeneration.TypeScript/AtsTypeScriptCodeGenerator.cs` | 9 | 26 |
| `src/Shared/CodeGeneration/AtsOptionsFlattening.cs` | 62 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/AtsGoCodeGeneratorTests.cs` | 35 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 198 | 285 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Foundry/Go/apphost.go` | 9 | 11 |
| `tests/PolyglotAppHosts/Aspire.Hosting/Go/apphost.go` | 21 | 35 |

</details>

<details><summary>コミット (7 件)</summary>

- `acf9916` Flatten single optional DTO 'options' parameter in Go polyglot generator
- `4b821ed` Share options-flattening decision across Go and TypeScript generators
- `78a2e81` Move shared options-flattening helper to src/Shared
- `e8da16d` Trim Go options-flattening doc comment
- `4030028` Omit options key when direct-options variadic is all-nil
- `0df646d` Strengthen Go flattening tests and clarify shared helper doc
- `7abb6d0` Remove redundant Assert.DoesNotContain in Go flattening test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。Go の生成メソッドで単一 optional DTO の `options` パラメーターが平坦化され、生成される呼び出しシグネチャと JSON 形状が変わります。判断を共有する内部 helper が Go/TypeScript 双方に適用されています。

**既存利用者への影響**

生成済み Go コードを直接利用している場合は、options の引数形状と nil 時の出力を確認して再生成してください。通常の Aspire apphost 利用者は生成物の更新が中心です。

### [#18692](https://github.com/microsoft/aspire/pull/18692) — Update Foundry hosted agent protocol payload

- 作者: tommasodotNET / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +803 / -271
- マージ日時 (UTC): `2026-07-10 20:53:08`

**変更概要**

Foundry hosted agent の protocol payload を現行の契約に合わせて更新しました。
HostedAgentOptions と protocol handler をリファクタリングし、.NET hosted agent のセットアップ・デプロイ・呼び出し経路を更新しています。
関連する playground と TypeScript 互換性チェック、依存パッケージも変更されています。

<details><summary>変更ファイル (29 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 1 | 0 |
| `Directory.Packages.props` | 1 | 1 |
| `playground/FoundryAgents/DotNetHostedAgent/DevTemporaryLocalUserIdProvider.cs` | 40 | 0 |
| `playground/FoundryAgents/DotNetHostedAgent/DotNetHostedAgent.csproj` | 6 | 5 |
| `playground/FoundryAgents/DotNetHostedAgent/HostedContributorRouteExtensions.cs` | 29 | 0 |
| `playground/FoundryAgents/DotNetHostedAgent/HostedContributorSetupExtensions.cs` | 25 | 0 |
| `playground/FoundryAgents/DotNetHostedAgent/Program.cs` | 19 | 2 |
| `playground/FoundryAgents/DotNetInvocationHostedAgent/DotNetInvocationHostedAgent.csproj` | 15 | 0 |
| `playground/FoundryAgents/DotNetInvocationHostedAgent/EchoAIAgent.cs` | 77 | 0 |
| `playground/FoundryAgents/DotNetInvocationHostedAgent/EchoInvocationHandler.cs` | 36 | 0 |
| `playground/FoundryAgents/DotNetInvocationHostedAgent/Program.cs` | 20 | 0 |
| `playground/FoundryAgents/FoundryAgents.AppHost/AppHost.cs` | 25 | 27 |
| `playground/FoundryAgents/FoundryAgents.AppHost/FoundryAgents.AppHost.csproj` | 2 | 1 |
| `src/Aspire.Hosting.Foundry/HostedAgent/AzureHostedAgentResource.cs` | 14 | 2 |
| `src/Aspire.Hosting.Foundry/HostedAgent/HostedAgentBuilderExtension.cs` | 145 | 58 |
| _... 他 14 件_ | | |

</details>

<details><summary>コミット (21 件)</summary>

- `2fea604` working with vnext flag
- `15e9207` Update Foundry hosted agent payload shape
- `741be61` Potential fix for pull request finding
- `ed4fa09` Fix Foundry TypeScript compatibility check
- `08b5216` Revert "Fix Foundry TypeScript compatibility check"
- `f7ea524` Remove logging of hosted agent payload in DeployAsync method
- `c474a54` Remove unused using directive for System.ClientModel.Primitives
- `d09bf0e` Refactor HostedAgentOptions and Protocol Handling
- _... 他 13 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。AzureHostedAgentResource、HostedAgentBuilderExtension、HostedAgentOptions と payload の形状が変更され、旧 protocol 形式との互換性が保証されません。

**既存利用者への影響**

Foundry hosted agent を利用する既存クライアントは、新しい payload と builder/options API に合わせて更新し、デプロイ後の invocation を確認してください。

### [#18756](https://github.com/microsoft/aspire/pull/18756) — Install Radius CLI in the test instead of the workflow

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +65 / -38
- マージ日時 (UTC): `2026-07-13 13:22:21`

**変更概要**

Radius CLI を workflow の事前セットアップから E2E テスト自身のセットアップへ移動しました。
インストーラーの失敗検出、HOME の分離、バージョン固定、リトライを追加し、テスト環境の再現性を高めています。
変更はテスト基盤に限定され、アプリケーション API には影響しません。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/deployment-tests.yml` | 0 | 32 |
| `tests/Aspire.Deployment.EndToEnd.Tests/README.md` | 4 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/RadiusStarterDeploymentTests.cs` | 61 | 3 |

</details>

<details><summary>コミット (8 件)</summary>

- `a6105e6` Install Radius CLI in the test instead of the workflow
- `6cf7684` Harden Radius CLI install against masked curl failures
- `d5f9719` Isolate Radius installer HOME
- `0cf5351` Update Radius deployment test docs
- `5e59a37` Clarify Radius installer sudo check
- `fcff781` Keep Radius version check isolated
- `e803ff5` Merge remote-tracking branch 'origin/main' into mitchdenny-radius-cli…
- `044daa4` Pin Radius installer to commit SHA and add retry

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。Radius CLI のインストール責務とテスト用の環境変数・バージョン検証が workflow からテストコードへ移動しました。

**既存利用者への影響**

利用者側の移行は不要です。CI で Radius E2E テストを実行する場合は、テストが CLI を導入できる権限とネットワークを確認してください。

### [#18754](https://github.com/microsoft/aspire/pull/18754) — [release/13.4] Remove asciinema.org uploads from E2E test workflows

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +0 / -751
- マージ日時 (UTC): `2026-07-13 01:25:52`

**変更概要**

Aspire の E2E workflow から asciinema.org への録画アップロード処理を削除しました。
CLI E2E の外部コメント投稿と録画連携に依存しない構成にし、外部サービスへのデータ送信を停止しています。
変更対象は GitHub Actions の workflow のみです。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/cli-e2e-recording-comment.yml` | 0 | 447 |
| `.github/workflows/deployment-tests.yml` | 0 | 304 |

</details>

<details><summary>コミット (1 件)</summary>

- `eec96c0` Remove asciinema.org upload logic from E2E workflows

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

アプリケーションや公開 API の変更はありません。`cli-e2e-recording-comment.yml` と deployment test workflow から外部アップロード手順を削除しました。

**既存利用者への影響**

利用者の移行は不要です。CI のログや録画を asciinema.org と GitHub コメントで参照していた運用は、別の保存・共有方法へ切り替えてください。

### [#18752](https://github.com/microsoft/aspire/pull/18752) — Disable asciinema.org uploads and CLI E2E comment posting

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +0 / -904
- マージ日時 (UTC): `2026-07-13 01:25:13`

**変更概要**

CLI E2E workflow での asciinema.org への録画アップロードとコメント投稿を無効化・削除しました。
外部サービスへの送信を恒久的に停止する理由を workflow から明確にし、関連する処理を取り除いています。
アプリケーションコードや Aspire の利用者向け API には影響しません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/cli-e2e-recording-comment.yml` | 0 | 600 |
| `.github/workflows/deployment-tests.yml` | 0 | 304 |

</details>

<details><summary>コミット (3 件)</summary>

- `567196c` Disable asciinema.org uploads and CLI E2E comment posting
- `cec6871` Clarify asciinema disable is permanent with reason
- `3890c80` Remove asciinema.org upload logic from E2E workflows

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や SDK の変更はありません。GitHub Actions の録画・コメント投稿ステップを削除した運用変更です。

**既存利用者への影響**

利用者側の移行は不要ですが、CI の録画 URL や自動コメントを前提にした確認手順は更新が必要です。

### [#18745](https://github.com/microsoft/aspire/pull/18745) — Allow external service URIs without trailing slash

- 作者: afscrome / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +28 / -31
- マージ日時 (UTC): `2026-07-13 15:54:43`

**変更概要**

外部サービス resource の URI に末尾スラッシュがない場合も受け付けるようにしました。
`ExternalServiceResource` と `WithReference` の URI 処理を調整し、path URI を含むテストを追加しています。
既存の末尾スラッシュ付き URI の動作は維持されます。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ExternalServiceResource.cs` | 1 | 5 |
| `src/Aspire.Hosting/ResourceBuilderExtensions.cs` | 0 | 5 |
| `tests/Aspire.Hosting.Tests/ExternalServiceTests.cs` | 16 | 19 |
| `tests/Aspire.Hosting.Tests/WithReferenceTests.cs` | 11 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `56c1303` Allow external service URIs without trailing slash
- `4589b15` Update WithReference test for path URIs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

外部サービス URI の入力検証が緩和され、末尾スラッシュなしの URI が有効になりました。既存 API の呼び出しシグネチャ変更や破壊的変更はありません。

**既存利用者への影響**

移行は不要です。末尾スラッシュなしの外部 URI を使いたかった利用者は、追加の回避策なしで利用できます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18738 | Add App Service delegated subnet support | davidfowl | <https://github.com/microsoft/aspire/pull/18738> |
| #18731 | Build reusable Deck UI toolkit and migration harness | davidfowl | <https://github.com/microsoft/aspire/pull/18731> |
| #18730 | Add live E2E deployment test for Aspire.Hosting.Radius | nellshamrell | <https://github.com/microsoft/aspire/pull/18730> |
| #18726 | Remove AssistantChat, AssistantModalDialog, AssistantSidebarDialog, and Model/Assistant code | JamesNK | <https://github.com/microsoft/aspire/pull/18726> |
| #18723 | Make bundled dotnet-inspect skill a thin bootstrapper that defers to the tool | richlander | <https://github.com/microsoft/aspire/pull/18723> |
| #18717 | fix: batch sdk dump in generate-ats-diffs to fix disk space exhaustion | Copilot | <https://github.com/microsoft/aspire/pull/18717> |
| #18705 | Update Spectre.Console to 0.57.2 | Copilot | <https://github.com/microsoft/aspire/pull/18705> |
| #18701 | Fix trace 'not contains' filter not excluding matching traces | JamesNK | <https://github.com/microsoft/aspire/pull/18701> |
| #18696 | Add Aspire.Hosting.Radius: Radius as a compute environment (+ cloud providers) | nellshamrell | <https://github.com/microsoft/aspire/pull/18696> |
| #18585 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18585> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18766 | Add polyglot code-generator signal to pr-docs-check catalog | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18766> |
| PR | #18765 | Add Radius recipe parameters and secret management | open | nellshamrell | <https://github.com/microsoft/aspire/pull/18765> |
| PR | #18763 | Include failure details in CI analysis issues | open | JamesNK | <https://github.com/microsoft/aspire/pull/18763> |
| PR | #18760 | Start versioned Native AOT dashboard backend | open | davidfowl | <https://github.com/microsoft/aspire/pull/18760> |
| PR | #18759 | Add Radius TypeScript AppHost support | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18759> |
| PR | #18757 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18757> |
| PR | #18746 | Always register dashboard resource with ExplicitStartupAnnotation when disabled | open | afscrome | <https://github.com/microsoft/aspire/pull/18746> |
| PR | #18742 | Fix cross-scope ACR pull identities | open | davidfowl | <https://github.com/microsoft/aspire/pull/18742> |
| PR | #18737 | Add WithUniqueResourceNaming to opt into collision-free managed environment names | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18737> |
| PR | #18735 | [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18735> |
| PR | #18729 | Enable basic debugging scenarios with the new DotnetProjectResource | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18729> |
| PR | #18728 | Add ergonomic Azure subnet service-delegation API | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18728> |
| PR | #18725 | [Automated] Update Azure VM Sizes | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18725> |
| PR | #18749 | [DO NOT MERGE] Mirror: validate reworked Radius deployment + KIND tests | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18749> |
| PR | #18748 | [DO NOT MERGE] Mirror: validate reworked Radius deployment + KIND tests | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18748> |
| PR | #18744 | Prevent asciinema upload hang from wedging deployment-tests reporting job | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18744> |
| PR | #18743 | [Draft mirror of #18730] Radius deployment tests + KIND-based Radius deploy E2E test | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18743> |
| PR | #18533 | Resolve open JS and TS security alerts | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18533> |
| PR | #18518 | Bump npm dependencies for security alerts | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18518> |
| PR | #18302 | Forward-port release/13.4 to main after v13.4.1 | closed | joperezr | <https://github.com/microsoft/aspire/pull/18302> |
| Issue | #18767 | Add E2E coverage for Entity Framework Core deployment scenarios | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18767> |
| Issue | #18764 | [CI Failure] GitHub Actions infrastructure: Service Unavailable when resolving action download info | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18764> |
| Issue | #18762 | Foundry template deployments on a resource that already exists fail | open | TWolversonReply | <https://github.com/microsoft/aspire/issues/18762> |
| Issue | #18761 | The issue "CLI: Add --no-color option[...]" should not have been closed ? | open | ilan-schemoul | <https://github.com/microsoft/aspire/issues/18761> |
| Issue | #18758 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18758> |
| Issue | #18755 | [CI Failure] Flaky: ParentProcessLifetimeScopesExecutableAndContainerToParentProcess fails due to DCP timestamp parsing BadRequest | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18755> |
| Issue | #18753 | Remove disabled asciinema.org upload and E2E comment-posting code | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18753> |
| Issue | #18751 | Remove AI assistant references from VS Code extension | open | JamesNK | <https://github.com/microsoft/aspire/issues/18751> |
| Issue | #18750 | App Service site name truncation (`take(name-uniqueString, 60)`) can weaken uniqueness for long resource names | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18750> |
| Issue | #18747 | Repin RadiusDeployTests KIND container image off the moving `dotnet/samples:aspnetapp` tag | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18747> |
| Issue | #18740 | Specify a DistributedApplicationBuilder scoped OpenTelemetry Receiver Resource/Endpoints that can be overridden | open | manuelelucchi | <https://github.com/microsoft/aspire/issues/18740> |
| Issue | #18739 | Support specific external connection string | open | manuelelucchi | <https://github.com/microsoft/aspire/issues/18739> |
| Issue | #18732 | [CI Failure] Flaky: PRScriptShellTests.MockGhApiWorkflowWithoutJqFailsLoudly fails with 'Text file busy' race condition | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18732> |
| Issue | #18727 | [Aspire CLI] Enable running commands against a PID | open | tjwald | <https://github.com/microsoft/aspire/issues/18727> |
| Issue | #18724 | [AspireE2E] Running a MAUI App on Android Emulator Fails with error "NETSDK1085: The 'NoBuild' property was set to true but the 'Build' target was invoked" after adding the Maui integration | open | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/18724> |
| Issue | #18722 | Multiple AzureContainerAppEnvironments in one resource group generate colliding managed-environment names | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18722> |
| Issue | #18720 | [CI Failure] Windows process initialization failure (exit code -1073741502 / 0xC0000142) in post-test steps | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18720> |
| Issue | #18719 | [CI Failure] Flaky: DockerComposeTests.DeployWithDashboard_PrintsDashboardAndServiceEndpoints fails due to port already in use | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18719> |
| Issue | #18703 | `aspire run`/`aspire start` crashes (exit code 2) on WSL2 — unhandled exception in the dev-cert trust check (X509Chain.Build/GetTrustLevel), persists on SDK 10.0.109 + runtime 10.0.9 | closed | mwadams | <https://github.com/microsoft/aspire/issues/18703> |
| Issue | #18684 | [Dashboard] Trace Name filter "not contains" does not exclude matching traces | closed | kdalestedt | <https://github.com/microsoft/aspire/issues/18684> |
| Issue | #18675 | [tmp] permission check | closed | almguru | <https://github.com/microsoft/aspire/issues/18675> |
| Issue | #18653 | Why does external service resource have to end with `/` | closed | afscrome | <https://github.com/microsoft/aspire/issues/18653> |
| Issue | #18633 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18633> |
| Issue | #18618 | Scheduled workflow failing: Generate ATS Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18618> |
| Issue | #18609 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18609> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #18596 | Update Foundry Hosted Agent Protocol to 2.0.0 | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/18596> |
| Issue | #17847 | Postgres with PublishAsMigrationBundle fails to publish | closed | Waleed-KH | <https://github.com/microsoft/aspire/issues/17847> |
| Issue | #17664 | Flatten DTO option parameters in Go polyglot generator | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17664> |
| Issue | #16724 | Agent Code Review not working on non team member PRs | closed | afscrome | <https://github.com/microsoft/aspire/issues/16724> |
