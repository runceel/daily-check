# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-29 01:00:01 〜 2026-06-30 01:54:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 9 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | JamesNK, davidfowl, sebastienros, Copilot, adamint |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / open / IEvangelist）
  - 影響: ダッシュボード等フロントエンド資産の JS/TS 依存にあるセキュリティアラートを解消する PR（open）。Aspire 利用者の直接対応は不要だが、フロントエンド依存の脆弱性対応として取り込み状況をウォッチ。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  - 影響: 上記 [#18533](https://github.com/microsoft/aspire/pull/18533) と関連する npm 依存のセキュリティバンプ（open）。利用者の対応は不要だが、フロントエンド依存の脆弱性修正として追跡。
- **非推奨/廃止** [#18551](https://github.com/microsoft/aspire/issues/18551) — Should IAzureComputeEnvironmentResource.ContainerRegistry be obsoleted in favor of ContainerRegistryReferenceAnnotation? （Issue / open / mitchdenny）
  - 影響: `IAzureComputeEnvironmentResource.ContainerRegistry` を `ContainerRegistryReferenceAnnotation` に置き換えて obsolete 化すべきかの**議論段階の Issue**で、API はまだ変わっていない。同プロパティを直接使う利用者は将来の非推奨化の可能性を念頭に置くとよい。

## このリポジトリの要点

今期間に **破壊的変更や GA はなし**。注目は davidfowl の [#18539](https://github.com/microsoft/aspire/pull/18539)（terminal 状態通知前のログフラッシュで、起動時に即失敗するリソースのログ取りこぼしを防ぐ `ResourceLoggerService`/DCP 改善）。ほかに CLI の並行構築時の競合（NRE）修正 [#18535](https://github.com/microsoft/aspire/pull/18535)、`IInteractionService` への `PromptProgressAsync` API 追加 [#18493](https://github.com/microsoft/aspire/pull/18493)、Key Vault ソフト削除の再プロビジョニング回復 [#18465](https://github.com/microsoft/aspire/pull/18465) など、堅牢性・API 拡充が中心。セキュリティは JS/TS 依存のアラート対応（[#18533](https://github.com/microsoft/aspire/pull/18533) / [#18518](https://github.com/microsoft/aspire/pull/18518)、いずれも open）。なお収集が 80 件上限に達したため、一覧外に重要項目が漏れていないか留意。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18553](https://github.com/microsoft/aspire/pull/18553) — Add agentic workflow to analyze failed CI builds

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +2745 / -0
- マージ日時 (UTC): `2026-06-29 14:20:01`

**変更概要**

失敗した CI ビルドを自動分析する **agentic workflow** を追加する PR（gh-aw ベース）。`.github/workflows/analyze-ci-failure.md`（仕様）と生成済みの lock yml、`actions-lock.json` を追加する。CI 失敗時に TRX を解析して原因を要約し、リポジトリ運用の自動化を狙う。+2745 行は大半が生成された workflow 定義で、製品コードへの影響はない。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/aw/actions-lock.json` | 10 | 0 |
| `.github/workflows/analyze-ci-failure.lock.yml` | 2048 | 0 |
| `.github/workflows/analyze-ci-failure.md` | 687 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `188957c` Add agentic workflow to analyze failed CI builds
- `98f3785` Recompile with gh-aw v0.79.8 to fix actions-lock downgrade
- `1bed37b` Address PR review comments
- `e0efd52` Address remaining review comments
- `6c6f69e` Fix TRX parsing bugs and disable automatic trigger

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変化なし。GitHub Actions のワークフロー追加のみで、TRX 解析バグの修正と自動トリガーの無効化を含む。破壊的変更なし。

**既存利用者への影響**

利用者側の対応は不要。リポジトリの CI 運用向けの変更にとどまる（関連でこの workflow の不具合・設定不備が [#18567](https://github.com/microsoft/aspire/pull/18567) / [#18568](https://github.com/microsoft/aspire/issues/18568) / [#18557](https://github.com/microsoft/aspire/issues/18557) として open）。

### [#18547](https://github.com/microsoft/aspire/pull/18547) — Disable VS Code extension E2E tests in CI

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +10 / -7
- マージ日時 (UTC): `2026-06-29 06:41:35`

**変更概要**

CI で不安定だった VS Code 拡張の **E2E テストを一時的に無効化**する PR。`tests.yml` のみの変更で、CI の安定化が目的。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/tests.yml` | 10 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `99f2ede` Disable VS Code extension E2E tests in CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変化なし。GitHub Actions の workflow 設定変更のみで、破壊的変更はない。

**既存利用者への影響**

利用者側の対応は不要。CI の安定化のための一時的な措置。

### [#18546](https://github.com/microsoft/aspire/pull/18546) — Fix flaky LoggerFactoryIsUsedByRegisteredClient conformance test

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +193 / -175
- マージ日時 (UTC): `2026-06-29 06:48:49`

**変更概要**

各 Azure 統合の conformance テストで不安定だった `LoggerFactoryIsUsedByRegisteredClient` を修正する PR。37 のテストファイルにまたがる調整で、テストの安定化のみが目的。製品コードの挙動は変わらない。

<details><summary>変更ファイル (37 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Azure.AI.Inference.Tests/ConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.AI.OpenAI.Tests/ConformanceTests.cs` | 3 | 2 |
| `tests/Aspire.Azure.Data.Tables.Tests/ConformanceTests.cs` | 5 | 5 |
| `tests/Aspire.Azure.Messaging.EventHubs.Tests/ConformanceTests.EventProcessorClient.cs` | 2 | 1 |
| `tests/Aspire.Azure.Messaging.EventHubs.Tests/ConformanceTestsBase.cs` | 1 | 1 |
| `tests/Aspire.Azure.Messaging.ServiceBus.Tests/ConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.Messaging.WebPubSub.Tests/ConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL.Tests/ConformanceTests.cs` | 14 | 14 |
| `tests/Aspire.Azure.Npgsql.Tests/ConformanceTests.cs` | 9 | 9 |
| `tests/Aspire.Azure.Search.Documents.Tests/ConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.Security.KeyVault.Tests/CertificateClientConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.Security.KeyVault.Tests/KeyClientConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.Security.KeyVault.Tests/SecretClientConformanceTests.cs` | 1 | 1 |
| `tests/Aspire.Azure.Storage.Blobs.Tests/ConformanceTests.cs` | 5 | 5 |
| `tests/Aspire.Azure.Storage.Files.DataLake.Tests/ConformanceTests.cs` | 1 | 1 |
| _... 他 22 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `7669406` Fix flaky LoggerFactoryIsUsedByRegisteredClient conformance test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変化なし。テストコードの修正のみで、破壊的変更はない。

**既存利用者への影響**

利用者側の対応は不要。テストの安定化にとどまる。

### [#18539](https://github.com/microsoft/aspire/pull/18539) — Flush logs before terminal resource notifications

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +1169 / -42
- マージ日時 (UTC): `2026-06-29 21:39:31`

**変更概要**

高速に失敗するコンテナ/実行可能ファイルが、DCP の stdout/stderr ログをホストロガーへ転送する前に terminal 状態へ達し、`DistributedApplicationTestingBuilder` での失敗診断が困難だった問題を解決する PR。terminal 状態通知を発行する**前に**現在の DCP ログを購読者へフラッシュする。スナップショット/follow の重複はカウントベースの照合で除去し、同一ログ行も保持する。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/ResourceLoggerService.cs` | 254 | 14 |
| `src/Aspire.Hosting/Dcp/DcpExecutor.cs` | 4 | 1 |
| `src/Aspire.Hosting/Dcp/DcpResourceWatcher.cs` | 199 | 20 |
| `src/Aspire.Hosting/ResourceLoggerForwarderService.cs` | 9 | 3 |
| `src/Shared/ConsoleLogs/LogEntry.cs` | 19 | 0 |
| `tests/Aspire.Hosting.Containers.Tests/ResourceFailureLoggingTests.cs` | 41 | 0 |
| `tests/Aspire.Hosting.Tests/Dcp/DcpExecutorTests.cs` | 218 | 0 |
| `tests/Aspire.Hosting.Tests/Dcp/TestKubernetesService.cs` | 10 | 4 |
| `tests/Aspire.Hosting.Tests/ResourceFailureLoggingTests.cs` | 43 | 0 |
| `tests/Aspire.Hosting.Tests/ResourceLoggerServiceTests.cs` | 372 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `a06c4d9` Flush logs before terminal resource notifications
- `fa8738f` Limit follow log dedup to terminal flush overlap
- `a2289db` Use follow stream for terminal log flushes
- `b1e776e` Bound terminal log flushes
- `c83b92e` Document terminal log flush behavior

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

破壊的変更なし。フラッシュは内部の同期購読パス（`ResourceLoggerForwarderService` 用）で行い、`WatchAsync` の既存の非同期ストリーム（ダッシュボード/backchannel 向け）セマンティクスは維持される。`ResourceLoggerService` / `DcpResourceWatcher` / `LogEntry` に内部実装を追加。

**既存利用者への影響**

公開 API の移行は不要。挙動改善として、リソースが起動時に失敗した際、その失敗を待つテストコードでコンテナ/実行可能ファイルの stdout/stderr がホストログに含まれるようになる。

### [#18535](https://github.com/microsoft/aspire/pull/18535) — Fix thread-safety race in RootCommand causing flaky NRE in LsCommandTests

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +92 / -32
- マージ日時 (UTC): `2026-06-29 08:01:34`

**変更概要**

`Aspire.Cli.Tests` で散発していた NRE（[#18476](https://github.com/microsoft/aspire/issues/18476)）を修正する PR。`#if DEBUG` ビルドで `RootCommand` コンストラクタが共有 static な `CliWaitForDebuggerOption.Validators` に毎回 validator を追加しており、`RootCommand` が Transient 登録のため並列テストで同一リストへの並行 `List<T>.Add` が起き内部配列が破損していた。`--cli-wait-for-debugger` のロジックを `Program.Main` の `Parse()` 後へ移すことで解消する。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/RootCommand.cs` | 0 | 30 |
| `src/Aspire.Cli/Program.cs` | 40 | 0 |
| `tests/Aspire.Cli.Tests/CliBootstrapTests.cs` | 52 | 0 |
| `tests/Aspire.Cli.Tests/Commands/LsCommandTests.cs` | 0 | 2 |

</details>

<details><summary>コミット (9 件)</summary>

- `6bc43c0` Fix thread-safety race in RootCommand causing flaky NRE in LsCommandT…
- `28ea308` Add comment explaining why validator is on command, not option
- `baebb61` Move --cli-wait-for-debugger logic to Program.Main after Parse()
- `69b3833` Extract WaitForDebuggerIfRequested method and add unit tests
- `a311557` Make waitAction required, extract WaitForDebugger method, assert acti…
- `7a8d68a` Wrap WaitForDebuggerIfRequested and WaitForDebugger in #if DEBUG
- `1e7403f` Use exact assertion for ShownStatuses collection contents
- `a651073` Use RootCommandStrings.WaitingForDebugger resource instead of hardcod…
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変化なし（CLI 内部）。validator をオプションではなくコマンド側に置く理由のコメント追記、`WaitForDebuggerIfRequested` メソッドの抽出と単体テスト追加を含む。DEBUG ビルド限定の競合（スレッドセーフティ）修正で、破壊的変更はない。

**既存利用者への影響**

利用者側の対応は不要。CLI のテスト安定性・堅牢性の改善にとどまる。

### [#18513](https://github.com/microsoft/aspire/pull/18513) — Centralize Maui MSBuild property names as consts

- 作者: Copilot / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +55 / -16
- マージ日時 (UTC): `2026-06-29 18:11:37`

**変更概要**

`Aspire.Hosting.Maui` で散在していた MSBuild プロパティ名を `KnownMauiMSBuildProperties` 定数クラスに集約するリファクタリング PR。Android/iOS 拡張や `ProjectFileReader` の文字列直書きを定数参照に置き換え、保守性を高める。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Maui/KnownMauiMSBuildProperties.cs` | 39 | 0 |
| `src/Aspire.Hosting.Maui/MauiAndroidExtensions.cs` | 7 | 7 |
| `src/Aspire.Hosting.Maui/MauiiOSExtensions.cs` | 6 | 6 |
| `src/Aspire.Hosting.Maui/Utilities/ProjectFileReader.cs` | 3 | 3 |

</details>

<details><summary>コミット (3 件)</summary>

- `5f38377` Initial plan
- `9867185` Centralize Maui MSBuild property names as consts
- `24ff2d1` Rename MauiMSBuildProperties to KnownMauiMSBuildProperties

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

内部に定数クラス `KnownMauiMSBuildProperties` を追加（開発中に `MauiMSBuildProperties` からリネーム）。MAUI 統合内部の整理のみで、公開 API・破壊的変更はない。

**既存利用者への影響**

利用者側の対応は不要。MAUI ホスティング統合の内部整理にとどまる。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18493 | Add PromptProgressAsync API to IInteractionService | JamesNK | <https://github.com/microsoft/aspire/pull/18493> |
| #18465 | Fix Key Vault soft-delete reprovision recovery | davidfowl | <https://github.com/microsoft/aspire/pull/18465> |
| #18457 | Execute VS Code resource commands without opening the terminal | adamint | <https://github.com/microsoft/aspire/pull/18457> |
| #18294 | Add warning and `aspire update --migrate` path from apphost.ts to apphost.mts | sebastienros | <https://github.com/microsoft/aspire/pull/18294> |
| #18293 | Add polyglot-compatible integration discovery | sebastienros | <https://github.com/microsoft/aspire/pull/18293> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18569 | fix(deployment-e2e): build real native CLI so AppHost deploys resolve the CLI bundle | open | radical | <https://github.com/microsoft/aspire/pull/18569> |
| PR | #18567 | Fix analyze-ci-failure workflow bugs | open | JamesNK | <https://github.com/microsoft/aspire/pull/18567> |
| PR | #18566 | Dev/karolz/analyze managed process leaks | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18566> |
| PR | #18565 | Add text filter to the console logs page | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18565> |
| PR | #18564 | Add interactive MAUI emulator and simulator selection | open | jfversluis | <https://github.com/microsoft/aspire/pull/18564> |
| PR | #18562 | vscode telemetry: emit `aspire/vscode/*` and `aspire/dashboard/*` wire names (bypass extension-id prefix) | open | adamint | <https://github.com/microsoft/aspire/pull/18562> |
| PR | #18561 | Stop AppHost debug session before Aspire parent | open | adamint | <https://github.com/microsoft/aspire/pull/18561> |
| PR | #18559 | Bind aspire-managed.exe NuGet helpers to CLI kill-on-close job (#18490) | open | adamint | <https://github.com/microsoft/aspire/pull/18559> |
| PR | #18555 | Recognize ancestor Directory.Build.* and <Import Sdk=...> in AppHost prefilter | open | adamint | <https://github.com/microsoft/aspire/pull/18555> |
| PR | #18554 | Add health check to Azure Cosmos DB client integration | open | thomhurst | <https://github.com/microsoft/aspire/pull/18554> |
| PR | #18549 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18549> |
| PR | #18556 | Fix DotNetSdkInstaller to use runtime selector's dotnet path after private SDK install | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18556> |
| PR | #17957 | Add telemetry flow graph mode | closed | davidfowl | <https://github.com/microsoft/aspire/pull/17957> |
| PR | #17773 | Add IDE integration spec | closed | davidfowl | <https://github.com/microsoft/aspire/pull/17773> |
| PR | #17552 | Improve pr-docs-check reliability guidance | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/17552> |
| Issue | #18568 | [aw] Analyze CI Failure has cache-memory miss misconfiguration | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18568> |
| Issue | #18563 | [Failing test]: Aspire.Hosting.Containers.Tests.WithDockerfileTests.AddDockerfileLaunchesContainerSuccessfully | open | adamint | <https://github.com/microsoft/aspire/issues/18563> |
| Issue | #18560 | [Failing test]: Aspire.Hosting.Maui.Tests.MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync\_SkipsReplayStateAndReleasesOnStableState | open | adamint | <https://github.com/microsoft/aspire/issues/18560> |
| Issue | #18558 | Container Tunnel + `.WithOtlpExporter()` breaks persistent lifetime containers. | closed | afscrome | <https://github.com/microsoft/aspire/issues/18558> |
| Issue | #18557 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18557> |
| Issue | #18552 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18552> |
| Issue | #18551 | Should IAzureComputeEnvironmentResource.ContainerRegistry be obsoleted in favor of ContainerRegistryReferenceAnnotation? | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18551> |
| Issue | #18550 | [Deployment E2E] Nightly test failure - 2026-06-29 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18550> |
| Issue | #18548 | Flaky test: TestingBuilderTests.ArgsPropagateToAppHostConfiguration — DCP state store directory collision | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18548> |
| Issue | #18542 | WSL Containers support | closed | richardszalay | <https://github.com/microsoft/aspire/issues/18542> |
| Issue | #18476 | [Failing test]: Aspire.Cli.Tests.Commands.LsCommandTests.LsCommand_JsonFormat_OnlyJsonOnStdout_StatusMessagesOnStderr | closed | radical | <https://github.com/microsoft/aspire/issues/18476> |
| Issue | #18403 | Azure Key Vault soft-delete conflict can require AppHost model change when tombstone is not discoverable | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18403> |
| Issue | #18081 | Add PromptProgressAsync to IInteractionService for long-running operations | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18081> |
| Issue | #17911 | VS Code extension should execute resource commands without opening the terminal | closed | adamint | <https://github.com/microsoft/aspire/issues/17911> |
| Issue | #17872 | `--isolated` does not randomize AppHost dashboard / OTLP / resource-service ports — concurrent runs collide | closed | joperezr | <https://github.com/microsoft/aspire/issues/17872> |
| Issue | #17842 | Add a warning and migration path from apphost.ts to apphost.mts | closed | sebastienros | <https://github.com/microsoft/aspire/issues/17842> |
| Issue | #15320 | Polyglot-Compatible Integration Discovery | closed | sebastienros | <https://github.com/microsoft/aspire/issues/15320> |
| Issue | #10218 | Still missing crashing container logs in 9.3 & 9.4 preview in tests | closed | afscrome | <https://github.com/microsoft/aspire/issues/10218> |
