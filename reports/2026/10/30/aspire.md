# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 13 |
| クローズ Issue          | 15 |
| 主要コントリビューター  | IEvangelist, ellahathaway, JamesNK, dotnet-maestro[bot], mitchdenny, adamint |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#21407](https://github.com/microsoft/aspire/pull/21407) — Migrate Azure Functions integration to Project V2 （PR / open / karolz-ms）
Azure Functions を Aspire Project V2 に移行する開発者は、新しい `AddAzureFunctions` 連携を確認してください。既存 API はこの PR で直ちに削除されず obsolete 化される計画ですが、PR は依存ブランチ上でレビュー中です。
- **⚠ 破壊的変更** [#20481](https://github.com/microsoft/aspire/pull/20481) — Unify experimental polyglot AppHost feature keys （PR / merged / sebastienros）
実験的 polyglot AppHost を有効にしていた利用者は、既存設定の `experimentalPolyglot:<language>` を新しい平坦なキー（例: `experimentalPolyglotGo`）へ更新してください。
- **⚠ セキュリティ** [#21404](https://github.com/microsoft/aspire/pull/21404) — Bump the npm_and_yarn group across 18 directories with 5 updates （PR / open / dependabot[bot]）
playground の JavaScript / TypeScript 利用者は、`qs`、`body-parser`、`vite` の更新内容を確認して lockfile と動作を検証してください（Dependabot PR はオープン中）。
- **非推奨/廃止** [#21360](https://github.com/microsoft/aspire/pull/21360) — Deprecate AddProject and complete Project V2 migration （PR / open / karolz-ms）
Aspire の `AddProject` を利用する開発者は、PR が提案する obsolete 化と SDK-style project consumer API への移行計画を確認してください（PR はオープン中）。
- **GA 昇格** [#21115](https://github.com/microsoft/aspire/issues/21115) — [Epic] Go AppHost GA （Issue / open / IEvangelist）
Go AppHost の利用者は、17.0 での一般提供に向けた feature flag 撤去・CLI / deploy 検証・サポート方針の完了状況を追跡してください。現時点では計画であり GA 済みではありません。

## このリポジトリの要点

Aspire の VS Code 拡張では .NET / Go リソースのデバッグ接続が追加され、ダッシュボードのブラウザー起動・終了処理も堅牢化されました（[#18602](https://github.com/microsoft/aspire/pull/18602)、[#21274](https://github.com/microsoft/aspire/pull/21274)）。
Project V2 移行と `AddProject` obsolete 化が進行中で、Azure Functions 連携にも新 API が提案されています。polyglot feature key の旧設定は新しい形式への更新が必要です（[#20481](https://github.com/microsoft/aspire/pull/20481)）。
Go AppHost は 17.0 GA を目標に作業中で、現段階では未 GA です（[#21115](https://github.com/microsoft/aspire/issues/21115)）。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#21274](https://github.com/microsoft/aspire/pull/21274) — Harden VS Code dashboard debug browser launch

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +558 / -79
- マージ日時 (UTC): `2026-10-29 21:30:39`

**変更概要**

Windows の負荷が高い環境で、Aspire Dashboard のブラウザーデバッグが接続・停止タイムアウトになり、失敗ダイアログが後続 E2E テストを妨げる問題に対処しました。
Chrome / Edge のデバッガー接続予算を30秒に延長し、localhost の開発証明書エラーを個別に扱い、ブラウザー終了と E2E cleanup に上限付きの待機を追加しています。
明示的なデバッグ引き継ぎ以外では AppHost 起動をブラウザー待機で遅らせず、失敗時も元のエラーを保って独立して cleanup を続行します。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/debugger/session/dashboardLauncher.ts` | 29 | 2 |
| `extension/src/test-e2e/debugDashboard.e2e.test.ts` | 32 | 14 |
| `extension/src/test-e2e/helpers/vscode.ts` | 70 | 8 |
| `extension/src/test/aspireDebugSession.test.ts` | 164 | 10 |
| `extension/src/test/e2eLaunchProfile.test.ts` | 253 | 44 |
| `extension/src/test/editorAssistanceTools.test.ts` | 10 | 1 |

</details>

<details><summary>コミット (7 件)</summary>

- `c5a98e3` Harden dashboard debug browser launch
- `3bd0843` Allow slower dashboard browser shutdown
- `da9ebe2` Bound dashboard browser E2E cleanup
- `bd9166b` Use a 30-second dashboard browser launch budget
- `489f057` Preserve dashboard stop budget and finalize launch dialog cleanup
- `871ff96` Reconcile dashboard cleanup and retry transient dialog DOM races
- `1bc34a7` Clarify dashboard navigation and bounded cleanup contracts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`dashboardLauncher.ts` の起動・停止予算と VS Code E2E helper の cleanup を更新し、デバッグ接続を30秒、ブラウザー終了待機を最大5秒に制限しました。公開 API や利用者設定の変更はありません。
失敗ダイアログの限定的な処理と各 cleanup の独立タイムアウトを追加し、未完了 cleanup が後続テストへ漏れるのを防ぎます。

**既存利用者への影響**

利用者側の移行は不要です。VS Code の Aspire Dashboard デバッグと E2E 実行が対象で、Firefox や localhost 以外の証明書検証動作は変更されません。

### [#21359](https://github.com/microsoft/aspire/pull/21359) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-10-29 21:20:08`

**変更概要**

Aspire が利用する Microsoft.DeveloperControlPlane (DCP) の依存を 0.27.1 から 0.27.2 に更新しました。
macOS / Linux / Windows 向けの DCP パッケージ群とバージョン管理メタデータを更新する保守変更です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `c6a34a3` Update dependencies from https://github.com/microsoft/dcp build 0.27.2

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`eng/Version.Details.xml` と `eng/Versions.props` のバージョンを DCP 0.27.2 に合わせて更新しています。Aspire の公開 API 変更はありません。

**既存利用者への影響**

利用者によるコード移行は不要です。通常の依存更新として新しい DCP バージョンでの起動・開発環境を確認してください。

### [#18602](https://github.com/microsoft/aspire/pull/18602) — Add VS Code resource debugging for .NET and Go

- 作者: adamint / 状態: MERGED
- ラベル: `area-vscode`
- 変更行数: +14516 / -546
- マージ日時 (UTC): `2026-10-29 20:18:57`

**変更概要**

Aspire VS Code 拡張から実行中の .NET / Go リソースへデバッガーを接続する機能を追加しました。リソースツリーと `aspire_resource_debug` Copilot tool の両方から利用できます。
共通の resource-debug service と provider / session registry を導入し、実際のアプリケーションプロセスを OS ごとに検出して接続します。
AppHost PID の追跡、二重デバッグ検出、キャンセル・進捗表示、明示的確認と呼び出し時再解決を備え、テレメトリには機微情報を含めません。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/extension-e2e-tests.yml` | 65 | 1 |
| `docs/specs/cli-output-formats.md` | 5 | 1 |
| `eng/github-ci/test-trigger-map.yml` | 2 | 0 |
| `extension/CONTRIBUTING.md` | 4 | 0 |
| `extension/README.md` | 11 | 0 |
| `extension/loc/xlf/aspire-vscode.xlf` | 63 | 0 |
| `extension/package.json` | 60 | 2 |
| `extension/package.nls.json` | 21 | 0 |
| `extension/scripts/run-e2e.js` | 116 | 13 |
| `extension/src/activation/registerTreeViewCommands.ts` | 1 | 0 |
| `extension/src/data/AppHostDataRepository.ts` | 23 | 4 |
| `extension/src/debugger/AspireDebugSession.ts` | 28 | 1 |
| `extension/src/debugger/adapterTracker.ts` | 22 | 1 |
| `extension/src/debugger/debuggerExtensions.ts` | 24 | 16 |
| `extension/src/debugger/languages/dotnet.ts` | 651 | 18 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (100 件)</summary>

- `b773dd1` Expose evaluated project assembly name to resource snapshots
- `a4038f1` Preserve project reference metadata for assembly names
- `8fced48` Use prepared references for project assembly names
- `09b3f8e` Address review findings on the assembly name probe
- `8a1856f` Cover the strict probe path and skip it for the CLI server project
- `14f5ade` Remove the stale assembly name when the project no longer supplies one
- `35356e9` Accept the generated metadata snapshot for the new assembly name prop…
- `0ab785c` Keep project paths containing an apostrophe out of MSBuild property f…
- _... 他 92 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

VS Code 拡張に .NET / Go のデバッグ attach provider、共通セッション管理、tree command、Copilot 用 `aspire_resource_debug` tool と E2E カバレッジを追加しました。resource snapshot の安全なメタデータと `alreadyDebugging` 結果も導入されています。
公開 .NET hosting API の変更ではなく、拡張機能の新しい操作面と内部契約の追加です。

**既存利用者への影響**

VS Code 拡張を更新して機能を利用できます。アプリケーション側 API の移行は不要ですが、デバッグ対象が起動中であることと対応する .NET / Go debugger extension があることを確認してください。

### [#21392](https://github.com/microsoft/aspire/pull/21392) — Update Arcade to fix the official build OneLoc break

- 作者: joperezr / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +402 / -367
- マージ日時 (UTC): `2026-10-29 17:31:19`

**変更概要**

公式ビルドの OneLoc localization タスクが失敗する問題を修正するため、Arcade toolset を `10.0.0-beta.26528.9` に更新しました。
更新には `OneLocBuild@3` の利用と GitHub App 認証テンプレートの修正が含まれ、Azure Repos mirror からも正しい GitHub API endpoint を選べるようになります。
Aspire のアプリケーション API ではなく、公式ビルド・ローカライズ工程への変更です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 3 | 3 |
| `eng/common/Get-GitHubAppToken.ps1` | 83 | 40 |
| `eng/common/core-templates/job/helix-job-monitor.yml` | 42 | 95 |
| `eng/common/core-templates/job/onelocbuild.yml` | 5 | 5 |
| `eng/common/core-templates/job/publish-build-assets.yml` | 2 | 2 |
| `eng/common/core-templates/post-build/post-build.yml` | 2 | 2 |
| `eng/common/core-templates/steps/get-github-app-token.yml` | 11 | 18 |
| `eng/common/core-templates/steps/install-microbuild.yml` | 2 | 2 |
| `eng/common/core-templates/steps/send-to-helix.yml` | 167 | 97 |
| `eng/common/core-templates/steps/source-index-stage1-publish.yml` | 2 | 3 |
| `eng/common/run-helix-job-monitor.sh` | 65 | 0 |
| `eng/common/sdl/extract-artifact-packages.ps1` | 0 | 82 |
| `eng/common/tools.ps1` | 1 | 1 |
| `global.json` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `95e6199` Update Arcade to include the OneLoc official build fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Arcade の SDK pins、`eng/common` の Helix / OneLoc build template、GitHub App token 取得処理を更新しています。製品の公開 API 変更はありません。
OneLoc v3 に関する Azure Repos mirror host 選択の修正も含まれますが、ビルド側で特別な checkout workaround は不要です。

**既存利用者への影響**

利用者のコード移行は不要です。主に公式 build / localization pipeline 向けで、アプリ開発者が対応する設定変更はありません。

### [#21186](https://github.com/microsoft/aspire/pull/21186) — Warn for Go and fail for Python publish when an existing Dockerfile ignores the entrypoint

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +794 / -0
- マージ日時 (UTC): `2026-10-29 16:44:45`

**変更概要**

Go / Python アプリに既存の Dockerfile があると、resource に指定した package path や entrypoint がイメージへ反映されない場合があるため、publish 前の検証を追加しました。
Go は既定 entrypoint なしで `packagePath` がアプリディレクトリ以外なら警告し、Python は `WithEntrypoint(...)` を Dockerfile が無視する場合に publish を失敗させます。
明示的な container entrypoint の設定は検証を回避できます。対象外 resource には検証を実行しません。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Go/GoHostingExtensions.cs` | 71 | 0 |
| `src/Aspire.Hosting.Python/PythonAppResourceBuilderExtensions.cs` | 87 | 0 |
| `tests/Aspire.Hosting.Go.Tests/AddGoAppTests.cs` | 250 | 0 |
| `tests/Aspire.Hosting.Go.Tests/Aspire.Hosting.Go.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Python.Tests/AddPythonAppTests.cs` | 312 | 0 |
| `tests/Aspire.Hosting.Python.Tests/Snapshots/AddPythonAppTests.PublishWithoutDockerfileGeneratesDockerfileWhenEntrypointIsChanged.verified.txt` | 23 | 0 |
| `tests/Aspire.Hosting.Tests/PythonAppDeployPipelineTests.cs` | 50 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `de6c22a` Fail Go publish when an existing Dockerfile ignores packagePath
- `9c1ce12` Fail Python publish when an existing Dockerfile ignores WithEntrypoint
- `75c473f` Replace only the container build and push steps on WithDockerfile
- `8c8383c` Skip Go and Python Dockerfile validation for excluded resources
- `b63bdf4` Run Go and Python Dockerfile validation before the image build
- `ed82f94` Register Go and Python Dockerfile validation as pipeline steps
- `bb1e5b5` Warn instead of fail for Go and accept ./ Python script paths
- `ce93850` Merge upstream/main into ievangelist-go-dockerfile-19070

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Go / Python に publish pipeline の Dockerfile 検証 step を追加し、build/publish から実行されるようにしました。Go の `packagePath` と Python の `WithEntrypoint(...)` をチェックします。
新しい公開 API の変更ではありませんが、Python の不整合は publish error になり、Go は warning となるため、既存 Dockerfile の挙動が表面化します。

**既存利用者への影響**

既存 Dockerfile を使う Go / Python アプリは、設定した package path / entrypoint をその Dockerfile が実際に起動するか確認してください。
必要なら Dockerfile を修正するか `PublishAsDockerFile(...WithEntrypoint(...))` で container entrypoint を明示してください。

### [#21389](https://github.com/microsoft/aspire/pull/21389) — Restore macOS CLI tests with serialized collections

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +6 / -3
- マージ日時 (UTC): `2026-10-29 15:51:39`

**変更概要**

dotnet/runtime 側の process-management hang により macOS の `Aspire.Cli.Tests` lane が停止する問題を受け、macOS で CLI test collection を直列化してテストレーンを再有効化しました。
既存のテストケースや assertion は維持し、macOS の CLI test project に既存の xUnit runner 設定を適用します。
これはテスト実行上の封じ込めであり、runtime の修正や本番 Aspire CLI の hang 解消ではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.Tests/Aspire.Cli.Tests.csproj` | 6 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `69d2d04` Restore macOS CLI tests with serialized collections

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`Aspire.Cli.Tests.csproj` で macOS の GitHub Actions 実行時に `tests/helix/xunit.runner.json` を選択し、test collection の並列実行を無効化しました。プロダクト API 変更はありません。
Windows / Linux の設定、macOS の native CLI archive、E2E、他 project、SDK pin は変更されていません。

**既存利用者への影響**

利用者の移行は不要です。変更は macOS CI のテスト実行方式に限定されますが、影響中の runtime 上で本番 CLI process の停止リスクが解消したわけではありません。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #21393 | Regenerate resource designer files | JamesNK | <https://github.com/microsoft/aspire/pull/21393> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #21412 | Modernize the dashboard experience | open | sebastienros | <https://github.com/microsoft/aspire/pull/21412> |
| PR | #21416 | Fix VS Code resource attach name resolution | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21416> |
| PR | #21418 | Require trust confirmation when adding template sources | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21418> |
| PR | #21406 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3121159 | open | dotnet-oneloc-localization[bot] | <https://github.com/microsoft/aspire/pull/21406> |
| PR | #21417 | test: synchronize rejected-create cancellation with response observation | open | davidfowl | <https://github.com/microsoft/aspire/pull/21417> |
| PR | #21407 | Migrate Azure Functions integration to Project V2 | open | karolz-ms | <https://github.com/microsoft/aspire/pull/21407> |
| PR | #21399 | Add Aspire.Hosting.Traefik hosting integration | open | giollord | <https://github.com/microsoft/aspire/pull/21399> |
| PR | #21404 | Bump the npm_and_yarn group across 18 directories with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21404> |
| PR | #21396 | Support Azure Front Door Private Link for App Service | open | eerhardt | <https://github.com/microsoft/aspire/pull/21396> |
| PR | #21397 | Fix explicit-start test shutdown cancellation ownership | open | davidfowl | <https://github.com/microsoft/aspire/pull/21397> |
| PR | #21394 | Wait for exemplars dialog in metrics component test | open | JamesNK | <https://github.com/microsoft/aspire/pull/21394> |
| PR | #21381 | Modernize the dashboard experience | closed | sebastienros | <https://github.com/microsoft/aspire/pull/21381> |
| PR | #21380 | Localized file check-in by OneLocBuild Task: Build definition ID 1602: Build ID 3119928 | closed | joperezr | <https://github.com/microsoft/aspire/pull/21380> |
| Issue | #21402 | Expose independent resource debugger attachment state in VS Code status | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/21402> |
| Issue | #21415 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21415> |
| Issue | #21414 | [Failing test]: Radius MongoDB readiness reports no matching resources | open | radical | <https://github.com/microsoft/aspire/issues/21414> |
| Issue | #21413 | Local .NET 11 starter-template validation fails during coordinated project build | open | radical | <https://github.com/microsoft/aspire/issues/21413> |
| Issue | #21411 | [CI Failure] Flaky: VS Code E2E resource debug tools (Windows) fails applying E2E control revision | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21411> |
| Issue | #21410 | [Main CI Failure] Main branch CI failure at a43c69baac2cc3f6e799a5d9813a5dd947c066e8 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21410> |
| Issue | #21409 | [CI Failure] Flaky: TerminalHostSignalTests.TerminalHostControlShutdownUnlinksSockets throws TaskCanceledException on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21409> |
| Issue | #21405 | `aspire agent init`: provide a cohesive final configuration report | open | ellahathaway | <https://github.com/microsoft/aspire/issues/21405> |
| Issue | #21403 | VS Code resource attach rejects display names accepted by debug status | open | ellahathaway | <https://github.com/microsoft/aspire/issues/21403> |
| Issue | #21401 | `aspire new`: clarify the scope of Aspire's agent integrations | open | ellahathaway | <https://github.com/microsoft/aspire/issues/21401> |
| Issue | #21400 | Docker Compose publish drops WithArgs on Redis: they land after sh -c and never reach redis-server | open | yasmoradi | <https://github.com/microsoft/aspire/issues/21400> |
| Issue | #21398 | Polyglot stable integration restore ignores an explicit NuGet service-index override | open | danegsta | <https://github.com/microsoft/aspire/issues/21398> |
| Issue | #21395 | [WebToolsE2E][AspireE2E] SocketException occurs when debugging an Aspire project with both C# Dev Kit and Aspire extensions installed | open | Serena01 | <https://github.com/microsoft/aspire/issues/21395> |
| Issue | #18937 | Expose a project resource child PID or evaluated AssemblyName for debugger attach | closed | adamint | <https://github.com/microsoft/aspire/issues/18937> |
| Issue | #18538 | [VS Code] Attach a debugger to resources in a running AppHost | closed | sliekens | <https://github.com/microsoft/aspire/issues/18538> |
| Issue | #19485 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-tree) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19485> |
| Issue | #20103 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20103> |
| Issue | #20488 | [CI Failure] Flaky: VS Code extension Java AppHost E2E breakpoint test times out waiting for 'catalog' resource endpoint | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20488> |
| Issue | #19547 | [CI Failure] Flaky: VS Code extension E2E (Windows, edge-cases) shard fails with generic exit code, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19547> |
| Issue | #19270 | [CI Failure] Flaky: VS Code extension unit tests job fails intermittently on Windows with generic exit code 1 and no retrievable logs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19270> |
| Issue | #19618 | [CI Failure] VS Code extension E2E tests fail with unavailable logs and generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19618> |
| Issue | #20063 | [CI Failure] Flaky: VS Code extension E2E (Linux, tree-actions) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20063> |
| Issue | #20184 | [CI Failure] Flaky: VS Code extension Blazor browser debugger E2E tests fail with websocket proxy launch failure and WASM root session timeouts on Linux | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20184> |
| Issue | #19921 | [CI Failure] Flaky: VS Code extension E2E (Linux/Windows, launch-profiles) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19921> |
| Issue | #19330 | [CI Failure] Flaky: VS Code extension E2E 'rediscovers workspace AppHost candidates when config changes' fails due to config file read/write race | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19330> |
| Issue | #19457 | [CI Failure] Flaky: VS Code extension E2E (Linux, java-apphost) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19457> |
| Issue | #19070 | Publishing a Go/Python app with a user-supplied Dockerfile silently drops the tool-invocation prefix | closed | karolz-ms | <https://github.com/microsoft/aspire/issues/19070> |
