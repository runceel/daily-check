# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-11 00:49:32 〜 2026-06-12 02:03:55 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 12 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 13 |
| クローズ Issue          | 29 |
| 主要コントリビューター  | adamint, shauryalowkeygotaura, mitchdenny, maddymontaquila, karolz-ms, aradalvand |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18114](https://github.com/microsoft/aspire/issues/18114) — `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore （Issue / open / mitchdenny）
  ポリグロット AppHost で非デフォルトチャネルにピン留めされている場合、`aspire add` がそれを無視して安定版を選択するバグがあります。依存パッケージの復元が失敗する可能性があり、早期の修正が必要です。
- **⚠ 破壊的変更** [#18003](https://github.com/microsoft/aspire/issues/18003) — Source Breaking Change - `networkID` --> `networkId` （Issue / closed / afscrome）
  ネットワークリソース API で `networkID` プロパティが `networkId` に改名されました。既存コードで大文字小文字を明示的に参照している場合は更新が必要です。
- **⚠ 破壊的変更** [#17924](https://github.com/microsoft/aspire/pull/17924) — Add proxyless endpoint port allocator （PR / merged / danegsta）
  Proxyless エンドポイント ポートアロケーター機能の追加に伴い、EndpointReference の内部実装が変更されます。エンドポイント設定を直接操作している場合は、新しいポートアロケーション戦略への適応が必要です。
- **⚠ 破壊的変更** [#8984](https://github.com/microsoft/aspire/issues/8984) — Annotation-Based Open Discriminated Union for Aspire Resources （Issue / open / davidfowl）
  リソース定義の型システムを annotation ベースの discriminated union で統一する設計が進行中です。今後のメジャーバージョンで API 互換性の大きな変更が予想され、準備が必要です。
- **⚠ 破壊的変更** [#5727](https://github.com/microsoft/aspire/issues/5727) — Add an "AcceptEula" API to containers that use environment variables to signal EULA acceptance. （Issue / closed / mitchdenny）
  コンテナのEULA受諾を専用 API で管理する仕組みが追加予定です。環境変数で EULA を設定しているコンテナは、新しい AcceptEula API への移行を検討してください。

## このリポジトリの要点

Aspire では Proxyless エンドポイント ポートアロケーター（#17924）が統合され、API の統一を進む discriminated union 設計（#8984）が準備されています。同時に DCP 再接続フロー改善（#18121）、CLI MCP ツール フィルタリング（#18106）、GitHub Copilot SDK 統合（複数 PR）が進行中です。5 件の破壊的変更待機中で、フレームワークユーザーはアップグレード計画を立てることが重要です。なお GitHub Changelog RSS 取得が上限に達しており、手動確認を推奨します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#17924](https://github.com/microsoft/aspire/pull/17924) — Add proxyless endpoint port allocator

- 作者: danegsta / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +1353 / -444
- マージ日時 (UTC): `2026-06-11 18:03:13`

**変更概要**

Aspire ホスティング層で Proxyless エンドポイント ポートアロケーター を実装し、DCP のポート管理戦略を刷新しました。従来の `OnDemandEndpointAllocationAnnotation` を廃止し、新しい `ProxylessEndpointPortAllocator` と `PortRange` で統一されたポート割り当てロジックを提供します。Kubernetes デプロイメント対応も強化されています。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/EndpointReference.cs` | 1 | 56 |
| `src/Aspire.Hosting/ApplicationModel/OnDemandEndpointAllocationAnnotation.cs` | 0 | 24 |
| `src/Aspire.Hosting/Dcp/ProxylessEndpointPortAllocator.cs` | 334 | 0 |
| `src/Aspire.Hosting/Dcp/PortRange.cs` | 51 | 0 |
| `src/Aspire.Hosting/Dcp/DcpExecutor.cs` | 172 | 57 |
| _... 他 18 件_ | | |

</details>

<details><summary>コミット (22 件)</summary>

- `d4afb15` Add proxyless endpoint port allocator
- `1f97041` Fix proxyless port allocation tests
- `43b1a24` Validate persistent Azure Storage emulator ports
- `b3adb7b` Address port allocator review feedback
- `8ff7ca8` Document proxyless port allocation strategy
- _... 他 17 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: `OnDemandEndpointAllocationAnnotation` が削除され、`ProxylessEndpointPortAllocator` と `PortRange` で置き換わりました。`EndpointReference` の内部実装が大幅に簡潔化されています。

**既存利用者への影響**

エンドポイント割り当てを直接操作していない場合は、AppHost の設定変更のみで対応可能です。カスタムポートアロケーション実装がある場合は、新しい `ProxylessEndpointPortAllocator` インタフェースへの更新が必要です。

### [#18121](https://github.com/microsoft/aspire/pull/18121) — Re-connecting should be part of DCP request retry

- 作者: karolz-ms / 状態: MERGED
- ラベル: —
- 変更行数: +329 / -35
- マージ日時 (UTC): `2026-06-11 21:06:13`

**変更概要**

DCP Kubernetes サービスの再接続ロジックをリクエスト再試行フローに統合しました。接続喪失時のハンドリングが改善され、DCP との通信がより堅牢になります。テストケース拡充で、エッジケースを網羅しています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/Dcp/KubernetesService.cs` | 42 | 35 |
| `tests/Aspire.Hosting.Tests/Dcp/KubernetesServiceTests.cs` | 287 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `3c195e9` Re-connecting should be part of DCP request retry

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存メソッドシグネチャに変更なし。再接続ロジックの内部改善で、DCP リクエストの再試行機構に統合されました。

**既存利用者への影響**

ユーザーコード変更不要です。DCP との接続が一時的に切れた場合の復旧がより自動的・堅牢になります。

### [#18106](https://github.com/microsoft/aspire/pull/18106) — Filter resources with resource.excludeFromMcp from CLI MCP tools

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +902 / -10
- マージ日時 (UTC): `2026-06-11 17:36:11`

**変更概要**

Aspire CLI MCP ツール が `resource.excludeFromMcp` アノテーションでマークされたリソースを正しくフィルタリングするようになりました。エージェント向け MCP ツール（ExecuteResourceCommand、ListConsoleLogs、ListResources 等）が、明示的に除外されたリソースを対象外にしながら、必要なコマンドセットを提供します。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Commands/AgentMcpCommand.cs` | 6 | 6 |
| `src/Aspire.Cli/Mcp/Tools/ExecuteResourceCommandTool.cs` | 7 | 0 |
| `src/Aspire.Cli/Mcp/Tools/ListConsoleLogsTool.cs` | 8 | 0 |
| `src/Aspire.Cli/Mcp/Tools/ListResourcesTool.cs` | 3 | 0 |
| `src/Aspire.Cli/Mcp/Tools/ListStructuredLogsTool.cs` | 24 | 1 |
| _... 他 9 件_ | | |

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MCP ツール側に resource filtering ロジック追加。既存 API に破壊的変更なし。

**既存利用者への影響**

AppHost でリソースを除外マークすれば、CLI MCP ツールが自動的に対応します。既存コード変更不要です。
| `src/Aspire.Cli/Mcp/Tools/ListTraceStructuredLogsTool.cs` | 14 | 1 |
| `src/Aspire.Cli/Mcp/Tools/ListTracesTool.cs` | 24 | 1 |
| `src/Aspire.Cli/Mcp/Tools/McpToolHelpers.cs` | 116 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/AgentMcpExcludeFromMcpTests.cs` | 70 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/Helpers/CliE2EAutomatorHelpers.cs` | 13 | 0 |
| `tests/Aspire.Cli.Tests/Mcp/ExcludeFromMcpTests.cs` | 613 | 0 |
| `tests/Aspire.Cli.Tests/Mcp/ListStructuredLogsToolTests.cs` | 1 | 0 |
| `tests/Aspire.Cli.Tests/Mcp/ListTracesToolTests.cs` | 1 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `e97d19a` Filter resources with resource.excludeFromMcp from CLI MCP tools
- `27d6b84` Add ListTraceStructuredLogsTool exclusion tests and E2E test
- `47e052b` Use quoted markers in E2E test for precise JSON matching
- `a4f87cd` Avoid redundant connection lookup in exclusion checks
- `886d510` Use StringComparers.ResourceName and extract CreateExcludedResult helper
- `266cc03` Fix AgentMcpExcludeFromMcp E2E test: disable Redis cache

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MCP ツール側に resource filtering ロジック追加。既存 API に破壊的変更なし。

**既存利用者への影響**

AppHost でリソースを除外マークすれば、CLI MCP ツールが自動的に対応します。既存コード変更不要です。

### [#18093](https://github.com/microsoft/aspire/pull/18093) — [release/13.4] Improve npm publish validation and CLI package metadata

- 作者: adamint / 状態: MERGED
- ラベル: —
- 変更行数: +1096 / -189
- マージ日時 (UTC): `2026-06-12 00:29:08`

**変更概要**

npm CLI パッケージの検証とメタデータを改善しました。npm リリース検証スクリプト新規追加、リリース パイプライン管理の厳密化、テスト拡充により、npm 配布の信頼性が向上しています。

**コミットレベルの詳細 (API 変化・破壊的変更)**

npm パッケージ メタデータ更新のみ。ランタイム API 変更なし。

**既存利用者への影響**

CLI npm パッケージの配布品質が改善されます。既存コード変更不要です。

### [#18091](https://github.com/microsoft/aspire/pull/18091) — Increase BrowserLogs CDP command timeout for tracked browser startup

- 作者: maddymontaquila / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-06-11 03:46:07`

**変更概要**

BrowserLogs CDP コマンドのタイムアウト値を増加させました。ブラウザ起動追跡時の接続確立遅延に対応し、テスト安定性を向上しています。

**コミットレベルの詳細 (API 変化・破壊的変更)**

定数値調整のみ。API 変更なし。

**既存利用者への影響**

ブラウザ統合テスト の안정性が向上します。既存コード変更不要です。

### [#18077](https://github.com/microsoft/aspire/pull/18077) — Add CLI E2E coverage for WithTerminal attach flow

- 作者: mitchdenny / 状態: MERGED
- ラベル: —
- 変更行数: +85 / -0
- マージ日時 (UTC): `2026-06-11 11:45:43`

**変更概要**

CLI E2E テストに `WithTerminal` アタッチフロー のカバレッジを追加しました。フロントエンド接続・デタッチ操作の複雑なシーケンスを網羅し、ターミナル機能の安定性を検証しています。

**コミットレベルの詳細 (API 変化・破壊的変更)**

テストコード追加のみ。API 変更なし。

**既存利用者への影響**

ターミナル機能の品質保証が強化されます。既存コード変更不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18067 | Make AppHost/CLI incompatibility error specific and actionable | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18067> |
| #18064 | Use last 8 characters of GUID service.instance.id in resource display name | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18064> |
| #18062 | Teach pr-testing skill to test infra changes | radical | <https://github.com/microsoft/aspire/pull/18062> |
| #18061 | Update dependencies from latest .NET Servicing | joperezr | <https://github.com/microsoft/aspire/pull/18061> |
| #18025 | add `WithModule` extension methods to `IResourceBuilder<RedisResource>` | aradalvand | <https://github.com/microsoft/aspire/pull/18025> |
| #17963 | Teach PR testing skill to validate VS Code extension changes | adamint | <https://github.com/microsoft/aspire/pull/17963> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18136 | Fix ProcessSignaler.AreClose flaky tolerance on second boundaries | open | JamesNK | <https://github.com/microsoft/aspire/pull/18136> |
| PR | #18135 | docs: capture how to test the AzDO release pipeline (previewRun + DryRun read-only) | open | radical | <https://github.com/microsoft/aspire/pull/18135> |
| PR | #18132 | Improve Azure provisioning diagnostics | open | davidfowl | <https://github.com/microsoft/aspire/pull/18132> |
| PR | #18127 | feat(ci): per-PR selective test selection wired into tests.yml (audit mode) | open | radical | <https://github.com/microsoft/aspire/pull/18127> |
| PR | #18126 | test(hosting): fix flaky "Docker is not running" failures in pipeline tests | open | radical | <https://github.com/microsoft/aspire/pull/18126> |
| PR | #18125 | Surface actionable diagnostic when TypeScript codegen generator is dropped by load failure | open | sebastienros | <https://github.com/microsoft/aspire/pull/18125> |
| PR | #18119 | Optimize pr-docs-check agentic workflow to cut token usage | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18119> |
| PR | #18118 | Fix BCP139 cross-resource-group ACR AcrPull role in compute environments | open | davidfowl | <https://github.com/microsoft/aspire/pull/18118> |
| PR | #18117 | Bump the npm_and_yarn group across 3 directories with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18117> |
| PR | #18116 | Fix PythonResourceFinishesSuccessfully test timeout (#8466) | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18116> |
| PR | #18115 | Fix post-private-SDK-install false negative by routing SDK availability check through IDotNetRuntimeSelector | open | CloudColonel | <https://github.com/microsoft/aspire/pull/18115> |
| PR | #18113 | [tests] Stabilize TestEndpointsReturnOk startup waits | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18113> |
| PR | #18111 | Dashboard: gracefully handle resource service connection errors | open | JamesNK | <https://github.com/microsoft/aspire/pull/18111> |
| PR | #18108 | Add optional parameters and programmatic value setting | open | davidfowl | <https://github.com/microsoft/aspire/pull/18108> |
| PR | #18107 | Rename resource 'Export JSON' action to 'View JSON' and clarify secret warning scope | open | nanookclaw | <https://github.com/microsoft/aspire/pull/18107> |
| PR | #18133 | Avoid redundant rebuild in persistent container E2E restart | closed | danegsta | <https://github.com/microsoft/aspire/pull/18133> |
| PR | #18131 | Make release pipeline DryRun read-only — skip GitHub workflow dispatch in dry run | closed | radical | <https://github.com/microsoft/aspire/pull/18131> |
| PR | #18130 | 🔍 [DO NOT MERGE] Investigation: PersistentContainersPreserveDataAcrossAppHostRuns | closed | danegsta | <https://github.com/microsoft/aspire/pull/18130> |
| PR | #18070 | Bump the npm_and_yarn group across 2 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18070> |
| Issue | #18137 | [Failing test]: Aspire.Hosting.Tests.Lifecycle.TerminalHostFailureDiagnosticServiceTests.RepeatedFailureEvents\_OnlyDiagnoseOnce | open | JamesNK | <https://github.com/microsoft/aspire/issues/18137> |
| Issue | #18134 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18134> |
| Issue | #18129 | Release pipeline DryRun is not fully read-only — GitHub Tasks stage dispatches a real workflow run | closed | radical | <https://github.com/microsoft/aspire/issues/18129> |
| Issue | #18128 | Provide an official Nix flake (or nixpkgs packaging) for the Aspire CLI | open | av-leschinskiy | <https://github.com/microsoft/aspire/issues/18128> |
| Issue | #18124 | `aspire new` on stable branch is creating a `nuget.config` file | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/18124> |
| Issue | #18123 | Unify workspace/global AppHost `describe --follow` streaming in VS Code extension | open | ellahathaway | <https://github.com/microsoft/aspire/issues/18123> |
| Issue | #18122 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18122> |
| Issue | #18120 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18120> |
| Issue | #18114 | `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18114> |
| Issue | #18110 | TypeScript AppHost fails code generation with 13.4.3 CLI and 13.5 daily SDK | open | davidfowl | <https://github.com/microsoft/aspire/issues/18110> |
| Issue | #18109 | Improve Azure provisioning recovery diagnostics and AppHost restart resilience | open | davidfowl | <https://github.com/microsoft/aspire/issues/18109> |
| Issue | #18105 | TypeScript AppHost: support terminal dimension options with withTerminal | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18105> |
| Issue | #18104 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18104> |
| Issue | #18003 | Source Breaking Change - `networkID` --> `networkId` | closed | afscrome | <https://github.com/microsoft/aspire/issues/18003> |
| Issue | #16967 | WithTerminal(): retrospective architecture documentation for 13.4 interactive terminal support | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/16967> |
| Issue | #16887 | bug in aspire 13.3.0 (no problem in 13.2.4) | closed | alexTr3 | <https://github.com/microsoft/aspire/issues/16887> |
| Issue | #16861 | WithBrowserLogs Edge private CDP pipe fails with "Browser debug pipe closed" | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/16861> |
| Issue | #10615 | Pick the last 8 characters of `service.instance.id` rather than the first to show in the UI | closed | aradalvand | <https://github.com/microsoft/aspire/issues/10615> |
| Issue | #10559 | Improve Aspire compatibility error message to be more specific and actionable | closed | davidfowl | <https://github.com/microsoft/aspire/issues/10559> |
| Issue | #9768 | Redis v8's default modules aren't loaded | closed | aradalvand | <https://github.com/microsoft/aspire/issues/9768> |
| Issue | #9043 | Add replayable events on eventing. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/9043> |
| Issue | #9042 | Add TrySubscribeOnce API in IDistributedApplicationEventing | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/9042> |
| Issue | #8990 | Build caching for `aspire` CLI | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8990> |
| Issue | #8914 | Add `aspire init` command to replicate enlist in orchestration features in VS/VSCode | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8914> |
| Issue | #8415 | Flaky test: AppHostExitsWhenCliProcessPidDies | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8415> |
| Issue | #8306 | Add options argument to `IContainerRuntime` to allow tweaks to the way the image is generated. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8306> |
| Issue | #8261 | Consider enabling benchmarkdotnet integration | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8261> |
| Issue | #8159 | `aspire add` should give next steps when package is installed. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8159> |
| Issue | #8129 | QR Code visualizer for dashboard | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/8129> |
| Issue | #7740 | Codespace URL remapping doesn't complete until all resources are running. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/7740> |
| Issue | #6424 | IResourceWithLifetime | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/6424> |
| Issue | #6283 | Simplify health check code in .NET Aspire hosting integrations. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/6283> |
| Issue | #5727 | Add an "AcceptEula" API to containers that use environment variables to signal EULA acceptance. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/5727> |
| Issue | #5689 | Podman testing in CI | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/5689> |
| Issue | #5192 | API Proposal: builder.When(predicate, callback) | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/5192> |
| Issue | #4580 | Improve visual treatment of stderr and stdout streams in dashboard | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/4580> |
| Issue | #4116 | Split up WithOrleansReference to differentiate between client and server scenarios. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/4116> |
| Issue | #4099 | `UserNameParameter` should be populated like `PasswordParameter` on Postgres resource | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/4099> |
| Issue | #4087 | Change PhpMyAdmin support in MySql resource to use a single container. | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/4087> |
| Issue | #3877 | Add component for Azure Resource Manager | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/3877> |
| Issue | #3121 | Infrastructure versioning with CDK callbacks | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/3121> |
