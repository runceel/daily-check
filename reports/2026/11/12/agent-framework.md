# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 100 |
| オープン中の新規 PR     | 34 |
| クローズ (未マージ) PR  | 36 |
| 新規 Issue              | 52 |
| クローズ Issue          | 43 |
| 主要コントリビューター  | eavanvalkenburg, SergeyMenshykh, lxcxjxhx, baywet, westey-m, rogerbarreto |

## ⚠ 重要な変更（要確認）

重要項目はマージ先と公開状態を区別して確認しています。Python Hosting の一部は RC 用ブランチへのマージであり、main や配布パッケージへの反映を意味しません。
- **⚠ 破壊的変更** [#10282](https://github.com/microsoft/agent-framework/pull/10282) — .NET: [BREAKING] Bind Foundry toolboxes to each response （PR / open / rogerbarreto）
  未マージ。Toolbox 利用ホストは応答ごとの呼び出し元分離と、削除予定の `foundry-toolbox` ヘルスチェック／`toolbox` タグへの依存を確認してください。
- **⚠ 破壊的変更** [#10275](https://github.com/microsoft/agent-framework/pull/10275) — .NET: [BREAKING] Adopt the MCP skills extension （PR / open / SergeyMenshykh）
  未マージ。MCP skills 利用者は `skills/list` / `skills/get`、サーバー capability、呼び出し元別キャッシュへの移行を確認してください。
- **⚠ 破壊的変更** [#10269](https://github.com/microsoft/agent-framework/pull/10269) — Python: [BREAKING] Make Foundry host configuration explicit （PR / merged / eavanvalkenburg）
  RC ブランチへマージ。Hosting 利用者は `options=` と任意キーワードから明示的引数および `agent_server_kwargs` への移行を準備してください。
- **⚠ 破壊的変更** [#10266](https://github.com/microsoft/agent-framework/pull/10266) — .NET: [BREAKING] Require a fully qualified container runtime path for DockerShellExecutor （PR / merged / westey-m）
  DockerShellExecutor 利用者はコンストラクターと可用性確認に既存実行ファイルの完全修飾パスを渡すよう修正が必要です。
- **⚠ 破壊的変更** [#10264](https://github.com/microsoft/agent-framework/pull/10264) — Python: [BREAKING] Harden Foundry Hosting options （PR / closed / eavanvalkenburg）
  未マージでクローズ。後続の RC 構成変更を追跡し、この PR 単独を適用済みと扱わないでください。
- **⚠ 破壊的変更** [#10260](https://github.com/microsoft/agent-framework/pull/10260) — Python: [BREAKING] Prepare Foundry Hosting for RC （PR / open / eavanvalkenburg）
  RC 統合は未マージ。ホスト分離・構成変更と残る承認／同意境界の作業を追跡し、GA と混同しないでください。
- **⚠ 破壊的変更** [#10243](https://github.com/microsoft/agent-framework/pull/10243) — .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals （PR / open / baywet）
  未マージ。MCP 承認ハンドラー利用者は discovery 同意とツール承認の二段階化、定義変更時の再承認に備えてください。
- **⚠ 破壊的変更** [#10238](https://github.com/microsoft/agent-framework/pull/10238) — .NET: [BREAKING] Support scoped and transient agent lifetimes in Foundry Hosting （PR / open / rogerbarreto）
  未マージ。DI とセッションストアを独自構成する利用者は応答単位の scope と、ストアが対象エージェントのみに適用される変更を確認してください。
- **⚠ 破壊的変更** [#10224](https://github.com/microsoft/agent-framework/pull/10224) — Python: [BREAKING] Split Foundry agent and native workflow hosts （PR / merged / eavanvalkenburg）
  RC ブランチへマージ。ネイティブ workflow は専用ホストと `parse_input` に移行し、旧 request 名や `store=` 別名を置換してください。
- **⚠ 破壊的変更** [#10217](https://github.com/microsoft/agent-framework/pull/10217) — .NET: [BREAKING] Clarify Foundry storage docs and user identity accessor （PR / merged / rogerbarreto）
  .NET 利用者は `GetHostedUserId()` を `GetFoundryHostedUserId()` に置換してください。保存済み identity のキーは変わりません。
- **⚠ 破壊的変更** [#10211](https://github.com/microsoft/agent-framework/pull/10211) — .NET: [BREAKING] Align A2A extension naming and return types （PR / merged / SergeyMenshykh）
  A2A 拡張クラスの直接参照と `Task<AIAgent>` 型の明示的な受け取りを修正してください。
- **⚠ 破壊的変更** [#10192](https://github.com/microsoft/agent-framework/pull/10192) — .NET: [BREAKING] fix(dotnet): validate declarative MCP destinations （PR / open / baywet）
  未マージ。宣言的 MCP 利用アプリは許可ホスト・`IHttpMessageHandlerFactory` を渡す新コンストラクターへの移行を検討してください。
- **⚠ 破壊的変更** [#10187](https://github.com/microsoft/agent-framework/pull/10187) — Python: [BREAKING] Align Foundry hosting source names and remove store alias （PR / closed / eavanvalkenburg）
  未マージでクローズ。名称と `store=` 別名の整理は RC ブランチのホスト分離 PR に統合されています。
- **⚠ 破壊的変更** [#10156](https://github.com/microsoft/agent-framework/pull/10156) — Python: .net, python: [BREAKING] Require minimum compatible copilot cli version （PR / merged / westey-m）
  .NET / Python の Copilot 連携利用者は、SDK と組み合わせる CLI が最低互換バージョンを満たすか確認してください。
- **⚠ 破壊的変更** [#10152](https://github.com/microsoft/agent-framework/pull/10152) — [BREAKING] Python: fix(hyperlight): interrupt guest execution and enforce time limits （PR / merged / baywet）
  Python Hyperlight は既定で30秒制限となるため、長時間処理は `execution_timeout_seconds` を明示してください。
- **⚠ 破壊的変更** [#10132](https://github.com/microsoft/agent-framework/pull/10132) — .NET: [BREAKING] Reduce Foundry Hosting API surface （PR / merged / rogerbarreto）
  .NET Hosting の内部化・削除された型を直接使う利用者は、公開された登録拡張と options に移行してください。
- **⚠ 破壊的変更** [#10121](https://github.com/microsoft/agent-framework/pull/10121) — .NET: [BREAKING] Ensure enable file hooks defaults to false （PR / merged / westey-m）
  Copilot のファイル由来 hooks を使うアプリは明示的な有効化が必要です。既定の自動読み込みに依存しないでください。
- **⚠ 破壊的変更** [#10113](https://github.com/microsoft/agent-framework/pull/10113) — .NET: [BREAKING] Simplify A2A agent creation and payload handling （PR / merged / SergeyMenshykh）
  A2A の個別 identity 引数付きオーバーロード利用者は `A2AAgentOptions` を使う呼び出しへ変更してください。
- **⚠ 破壊的変更** [#10066](https://github.com/microsoft/agent-framework/pull/10066) — [BREAKING] .NET: fix(hyperlight): propagate cancellation and limit execution （PR / merged / baywet）
  .NET Hyperlight は既定で30秒制限となり、長時間処理は `ExecutionTimeout`（`TimeSpan`）の設定が必要です。
- **⚠ 破壊的変更** [#9994](https://github.com/microsoft/agent-framework/pull/9994) — .NET: [BREAKING] Remove nonstandard workflow payload telemetry （PR / merged / baywet）
  workflow payload タグを監視に使う利用者はクエリを見直してください。`EnableSensitiveData` は無効化され、1.30.0 で削除予定です。
- **⚠ 破壊的変更** [#9661](https://github.com/microsoft/agent-framework/pull/9661) — Python: [BREAKING] Reject caller-supplied tool execution context in Responses requests （PR / open / dargilco）
  未マージ。Responses クライアントは `additional_function_arguments` を送らず、信頼済みホスト側で context を設定する必要がある提案です。
- **⚠ 破壊的変更** [#9391](https://github.com/microsoft/agent-framework/pull/9391) — [BREAKING] Python: Reject unsafe functional step replay （PR / closed / atty57）
  未マージでクローズ。安全でない replay の拒否がリリース済みだと解釈せず、後続実装を確認してください。
- **⚠ 破壊的変更** [#8662](https://github.com/microsoft/agent-framework/pull/8662) — [BREAKING] Python: scope declarative MCP sessions to invocations （PR / merged / baywet）
  Python の宣言的 MCP 利用者は handler の context manager・`aclose()`・`cache_max_size` を削除し、呼び出し間の暗黙セッション継続に依存しない構成へ変更してください。
- **非推奨/廃止** [#10273](https://github.com/microsoft/agent-framework/pull/10273) — Python: Deprecate the legacy memory APIs （PR / open / westey-m）
  未マージ。旧 memory API は警告付きで存続する提案であり、`FileMemoryProvider` は保存形式・scope・抽出機能が異なるため単純置換しないでください。
- **⚠ セキュリティ** [microsoft/agent-framework#10129](https://github.com/microsoft/agent-framework/pull/10129) / [microsoft/agent-framework#10128](https://github.com/microsoft/agent-framework/pull/10128)：oauthlib 4.0.1 の CVE-2026-49272 修正を取り込む候補ですが、どちらも未マージでクローズしています。lab / Telegram サンプルの依存管理者は現行 lockfile を別途確認し、クローズを適用済みと解釈しないでください。
- **非推奨/廃止** [#10018](https://github.com/microsoft/agent-framework/issues/10018) — Python: [Team][Action] Remove deprecated hosting constructor store alias （Issue / open / eavanvalkenburg）
  構成整理の追跡 Issue。`store=` の利用箇所を調査し、RC ブランチで保持される `response_store=` と区別してください。
- **非推奨/廃止** [#9402](https://github.com/microsoft/agent-framework/pull/9402) — Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m （PR / open / dargilco）
  未マージ。旧 `-m` でデプロイするサンプル利用者は、テンプレート指定 `-t` を使う更新内容を確認してください。

## このリポジトリの要点

- .NET Foundry Hosting の公開 API 縮小、A2A 構築 API 整理、Docker 実行パス明示化がマージされ、preview 利用者の移行確認が必要です。
- Python Hosting のホスト分離・明示的構成は `python-foundry-hosting-rc` にマージされましたが、main への統合は microsoft/agent-framework#10260 で継続中です。
- .NET / Python Hyperlight は既定30秒制限と中断伝播を導入。Python MCP は呼び出し単位のセッション所有へ変更され、workflow payload telemetry も削除されました。
- Toolbox の呼び出し元分離、MCP 承認の再検証、旧 memory API の非推奨化は未マージで、適用済み変更と分けて追跡します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#10269](https://github.com/microsoft/agent-framework/pull/10269) — Python: [BREAKING] Make Foundry host configuration explicit

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1210 / -821
- マージ日時 (UTC): `2026-11-11 18:21:15`

**変更概要**

Foundry ホストの設定境界を明確化し、上流 SDK の options と任意のトップレベルキーワードを公開契約から切り離します。
履歴・heartbeat・shutdown・background の設定を明示的引数で受け付け、SDK 固有の値は専用 mapping にまとめます。
4種類のホストとサンプルを更新した変更で、マージ先は `python-foundry-hosting-rc` です。

<details><summary>変更ファイル (22 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0055-python-foundry-hosting-contracts.md` | 17 | 6 |
| `python/packages/foundry_hosting/README.md` | 76 | 10 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_agent.py` | 329 | 19 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_shared.py` | 78 | 611 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_workflow.py` | 254 | 25 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_agent.py` | 48 | 25 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_shared.py` | 0 | 13 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_workflow.py` | 34 | 28 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_shared.py` | 41 | 1 |
| `python/packages/foundry_hosting/tests/conftest.py` | 45 | 0 |
| `python/packages/foundry_hosting/tests/foundry_hosting/test_host_options.py` | 182 | 0 |
| `python/packages/foundry_hosting/tests/foundry_hosting/test_invocations_workflow.py` | 6 | 6 |
| `python/packages/foundry_hosting/tests/foundry_hosting/test_native_responses.py` | 13 | 7 |
| `python/packages/foundry_hosting/tests/test_foundry_hosting_imports.py` | 11 | 8 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 12 | 11 |
| _... 他 7 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `6f06ce6` Python: [BREAKING] Make Foundry host configuration explicit

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`options=ResponsesServerOptions(...)` を `max_history_items` などへ置換し、SDK への設定は `agent_server_kwargs={...}` に移します。
`log_level` は5種類の canonical level を使い、不明なトップレベル引数は引数束縛で拒否されます。`max_history_items=None` は SDK 既定値を維持する意味で、無制限の保証ではありません。
`6f06ce6` は Invocations の共通基底も除去し、agent と workflow の実行経路を各公開ホストへ移しています。

**既存利用者への影響**

RC ブランチを使うアプリはコンストラクターの移行が必要です。一般配布への反映は統合 PR とリリースを別途確認してください。

### [#10266](https://github.com/microsoft/agent-framework/pull/10266) — .NET: [BREAKING] Require a fully qualified container runtime path for DockerShellExecutor

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +713 / -104
- マージ日時 (UTC): `2026-11-11 16:24:06`

**変更概要**

DockerShellExecutor が起動するコンテナーランタイムを、作業ディレクトリや PATH に依存せず固定します。
存在する完全修飾実行ファイルを呼び出し元が明示する契約へ変更し、共通のパス検証を追加しました。
LocalCodeAct の検証も共通化し、非 Windows の `setsid` 探索では完全修飾 PATH エントリーのみを参照します。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/eng/MSBuild/Shared.props` | 3 | 0 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/Internal/PythonExecutablePath.cs` | 0 | 28 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/LocalCodeActProvider.cs` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/LocalExecuteCodeFunction.cs` | 4 | 3 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/Microsoft.Agents.AI.LocalCodeAct.csproj` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/README.md` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/DockerShellExecutor.cs` | 39 | 23 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/DockerShellExecutorOptions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/Microsoft.Agents.AI.Tools.Shell.csproj` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/ShellSession.cs` | 12 | 3 |
| `dotnet/src/Shared/PathValidation/PathValidation.cs` | 139 | 0 |
| `dotnet/src/Shared/PathValidation/README.md` | 19 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Abstractions.UnitTests/Microsoft.Agents.AI.Abstractions.UnitTests.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Abstractions.UnitTests/PathValidationTests.cs` | 230 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.LocalCodeAct.UnitTests/InterpreterResolutionTests.cs` | 35 | 4 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `0b5c106` Require fqp for DockerShellExecutor
- `d6b2ad9` Address PR comments
- `e3da70b` Merge branch 'main' into docker-shell-fqp

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`DockerShellExecutor(string dockerBinaryPath, DockerShellExecutorOptions? options = null)` へ変更し、引数なしコンストラクターと options の `DockerBinary` を削除。
公開プロパティは `DockerBinaryPath` に改称し、`IsAvailableAsync(string dockerBinaryPath, ...)` もパス必須です。
`0b5c106` とレビュー修正で共有 `PathValidation` を導入し、.NET Framework / Standard の互換実装も含めています。

**既存利用者への影響**

Docker / Podman 実行ファイルの完全修飾パスを構成し、生成箇所と可用性チェックを更新してください。LocalCodeAct の既存動作は維持されます。

### [#10224](https://github.com/microsoft/agent-framework/pull/10224) — Python: [BREAKING] Split Foundry agent and native workflow hosts

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +3383 / -3891
- マージ日時 (UTC): `2026-11-11 08:04:10`

**変更概要**

Python の agent とネイティブ workflow の構築・履歴・永続化の契約を、別々のホストクラスに分離します。
agent 用ホストは維持し、workflow は新しい専用ホストと明示的入力 parser を使います。
RC ブランチへのマージであり、名称整理と `store=` 別名削除も統合しています。Responses の安定化を目指す作業で、GA 宣言ではありません。

<details><summary>変更ファイル (68 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0055-python-foundry-hosting-contracts.md` | 177 | 0 |
| `python/packages/core/agent_framework/foundry/__init__.py` | 5 | 0 |
| `python/packages/core/agent_framework/foundry/__init__.pyi` | 12 | 0 |
| `python/packages/foundry_hosting/README.md` | 131 | 72 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 21 | 12 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_agent_source.py` | 0 | 39 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_agent.py` | 73 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_shared.py` | 40 | 101 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_workflow.py` | 68 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_request.py` | 0 | 260 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_agent.py` | 1436 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_shared.py` | 31 | 1792 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_workflow.py` | 124 | 64 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_shared.py` | 343 | 20 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_workflow_state.py` | 1 | 2 |
| _... 他 53 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `a696e1e` Python: split Foundry agent and native workflow hosts
- `5a66351` Python: require named request factories and clarify hosting contracts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`ResponsesWorkflowHostServer` / `InvocationsWorkflowHostServer` を追加し、旧 combined host の workflow 指定を廃止。`HostedResponseRequest` は `ResponsesRequest`、parser は `parse_input` に改称します。
`store=` は削除しますが `response_store=` と wire 上の `store` は維持。履歴 source は `host_managed` / `agent_managed` / `inference_service` に整理されます。
`a696e1e` と `5a66351` が分離・factory 契約を実装しており、request-aware factory は必要な名前付き `request` を受け取る形を確認してください。workflow は毎回新しい実行リソースを返す必要があります。

**既存利用者への影響**

旧ホスト・request 型・parser 名を置換し、workflow / executor / agent の共有を避けてください。RC 統合前なので main や既存公開パッケージと同一とは扱えません。

### [#10217](https://github.com/microsoft/agent-framework/pull/10217) — .NET: [BREAKING] Clarify Foundry storage docs and user identity accessor

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +78 / -38
- マージ日時 (UTC): `2026-11-10 17:05:33`

**変更概要**

.NET Hosting の identity 取得メソッドを Foundry 固有と分かる名称へ変更しました。
推論サービスへの保存と呼び出し元向け hosted response 保存の違い、暗号化 reasoning の指定も文書化しています。
保存キー・identity 分離・agent lifetime の動作を変える変更ではありません。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0034-hosted-platform-context-agentserver-2.0.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/Program.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentSessionExtensions.cs` | 6 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryResponsesServerOptions.cs` | 30 | 19 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests.TestContainer/Program.cs` | 1 | 1 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests.TestContainer/UserIdentityEchoAgent.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/AgentFrameworkResponseHandlerTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/AgentSessionExtensionsTests.cs` | 28 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/HostedUserIdTests.cs` | 5 | 5 |

</details>

<details><summary>コミット (3 件)</summary>

- `6d1c492` fix(foundry)!: clarify identity and storage APIs
- `24bb488` Merge branch 'main' into foundry-review-follow-up
- `4e35f98` Merge branch 'main' into foundry-review-follow-up

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`6d1c492` で `GetHostedUserId()` を `GetFoundryHostedUserId()` に改称し、サンプル・テスト・API 文書を更新しました。
保存済み identity key は維持されます。A2A で新たに session identity を割り当てる機能を追加したものではありません。

**既存利用者への影響**

メソッド呼び出しの改称が必要ですが、既存セッションのデータ移行は不要です。

### [#10211](https://github.com/microsoft/agent-framework/pull/10211) — .NET: [BREAKING] Align A2A extension naming and return types

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +29 / -27
- マージ日時 (UTC): `2026-11-10 11:17:50`

**変更概要**

A2A 拡張 API のクラス名を拡張対象に合わせ、戻り値を具体的な `A2AAgent` に統一します。
AgentCard・client・resolver の各経路でキャストなしに具体型へアクセスできます。
API の型変更に合わせて XML 文書とテストを更新しました。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/A2ACardResolverExtensions.cs` | 7 | 7 |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/A2AClientExtensions.cs` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/AgentCardExtensions.cs` | 7 | 7 |
| `dotnet/tests/Microsoft.Agents.AI.A2A.UnitTests/Extensions/A2ACardResolverExtensionsTests.cs` | 5 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.A2A.UnitTests/Extensions/A2AClientExtensionsTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.A2A.UnitTests/Extensions/AgentCardExtensionsTests.cs` | 6 | 6 |

</details>

<details><summary>コミット (2 件)</summary>

- `ddb4287` .NET: Align A2A extension naming and concrete return types
- `2424561` Merge branch 'main' into sergeymenshykh-a2a-api-review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`ddb4287` で `A2AAgentCardExtensions` を `AgentCardExtensions` に改称。
card / client 拡張は `A2AAgent`、resolver は `Task<A2AAgent>` を返します。`Task<AIAgent>` への直接代入はできませんが、await 後の `AIAgent` 代入は可能です。

**既存利用者への影響**

拡張クラスを直接参照するコードと、非同期戻り値を `Task<AIAgent>` と明示するコードを更新してください。

### [#10156](https://github.com/microsoft/agent-framework/pull/10156) — Python: .net, python: [BREAKING] Require minimum compatible copilot cli version

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `.NET`
- 変更行数: +380 / -24
- マージ日時 (UTC): `2026-11-09 10:48:52`

**変更概要**

.NET / Python の GitHub Copilot 連携で、互換性を満たす最低 CLI バージョンを検査します。
古い CLI のまま SDK 連携を実行する構成を早期に検出する変更です。
.NET では専用 guard とログ、Python では agent 側のチェックと説明・テストを追加しました。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/CopilotCliVersionGuard.cs` | 68 | 0 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 71 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgentLogMessages.cs` | 11 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/CopilotCliVersionGuardTests.cs` | 55 | 0 |
| `python/packages/github_copilot/README.md` | 4 | 0 |
| `python/packages/github_copilot/agent_framework_github_copilot/_agent.py` | 71 | 23 |
| `python/packages/github_copilot/tests/test_github_copilot_agent.py` | 100 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `10a7d59` Require minimum compatible copilot cli version
- `d206d94` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`10a7d59` / `d206d94` で `CopilotCliVersionGuard` と agent 起動時の互換性検査を導入しました。
最終差分の .NET guard は CLI **1.0.85以上**を要求し、先頭の major.minor.patch を比較します。バージョンが読めない場合も失敗するため、独自 CLI 起動設定も確認してください。

**既存利用者への影響**

CI・コンテナーを含む実行環境の CLI を対応版へ更新してください。SDK だけの更新で互換性が保証されるわけではありません。

### [#10152](https://github.com/microsoft/agent-framework/pull/10152) — [BREAKING] Python: fix(hyperlight): interrupt guest execution and enforce time limits

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +916 / -35
- マージ日時 (UTC): `2026-11-11 09:17:59`

**変更概要**

Python Hyperlight の guest 実行に、既定30秒の有限な実行予算とキャンセルの伝播を追加しました。
中断後は native worker と監視処理の終了を待ち、warm snapshot を復元して sandbox を再利用します。
cold start・host callback・待機中キャンセルの扱いも後続コミットで補強しています。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hyperlight/README.md` | 33 | 0 |
| `python/packages/hyperlight/agent_framework_hyperlight/_execute_code_tool.py` | 173 | 12 |
| `python/packages/hyperlight/agent_framework_hyperlight/_provider.py` | 5 | 0 |
| `python/packages/hyperlight/pyproject.toml` | 3 | 3 |
| `python/packages/hyperlight/tests/hyperlight/conftest.py` | 298 | 1 |
| `python/packages/hyperlight/tests/hyperlight/test_execution_control.py` | 203 | 0 |
| `python/packages/hyperlight/tests/hyperlight/test_execution_limits.py` | 144 | 0 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 31 | 1 |
| `python/uv.lock` | 18 | 18 |
| `skills/agent-framework-builder-python/references/integrations.md` | 8 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `5360db5` fix(hyperlight): interrupt Python guest execution and enforce time li…
- `53f6526` chore: updates hyperlight package to required version
- `9a48757` chore: adds comment for exception pass through
- `6e8ce9b` Fix Hyperlight cold-start budget accounting and interruption coverage
- `2295468` Fix Hyperlight callback deadlines and queued cancellation
- `ea121ba` Merge branch 'main' into fix/python-hyperlight-execution-limits
- `e29c10c` Fix cancellation of queued Hyperlight worker invocations

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：tool / provider に正の有限値 `execution_timeout_seconds`（既定30秒）を追加し、run snapshot と永続化状態にも保持します。
timeout はエラー内容、呼び出し元キャンセルは `asyncio.CancelledError` として区別。`5360db5` に加え SDK 更新・cold start 計上・queued cancellation の修正が含まれます。
runtime 初期化と host tool callback は中断できないため、別途期限管理が必要です。依存 SDK は同梱の更新を確認してください。

**既存利用者への影響**

30秒を超える正当な処理には大きな有限予算を明示してください。host callback の無制限実行まで防ぐ機能ではありません。

### [#10132](https://github.com/microsoft/agent-framework/pull/10132) — .NET: [BREAKING] Reduce Foundry Hosting API surface

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +2086 / -4471
- マージ日時 (UTC): `2026-11-10 00:54:15`

**変更概要**

.NET Foundry Hosting の安定化に向け、実装・保存・診断型の公開範囲を縮小します。
利用者向けの登録拡張・options・routing・session・Toolbox 構成を残し、内部型への将来の互換義務を減らします。
source deployment のサンプルは host builder 経由に修正され、Foundry storage / task 設定を起動時に正しく束縛します。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0034-hosted-platform-context-agentserver-2.0.md` | 15 | 0 |
| `docs/decisions/0035-hosted-per-user-session-storage-isolation.md` | 6 | 6 |
| `docs/decisions/0041-foundry-hosting-resilient-long-running-agents.md` | 7 | 9 |
| `docs/specs/feature-usage-bit-registry.md` | 2 | 2 |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step04_ProductionReady/ClawAgent.Hosted/Program.cs` | 0 | 3 |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step04_ProductionReady/ClawAgent.Hosted/README.md` | 0 | 3 |
| `dotnet/samples/02-agents/Harness/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/invocations/Hosted-Invocations-EchoAgent/Hosted-Invocations-EchoAgent.csproj` | 0 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Directory.Build.targets` | 37 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/HostedAgentSkills.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/HostedAzureSearchRag.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent-Dockerfile/HostedChatClientAgentDocker.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent-Dockerfile/Program.cs` | 1 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (31 件)</summary>

- `ffb9942` refactor(dotnet)!: internalize response handler
- `db6c86f` refactor(dotnet)!: remove filesystem session store
- `9edc577` refactor(dotnet)!: internalize default session store
- `a1a82c0` refactor(dotnet)!: internalize toolbox service
- `53233c9` refactor(dotnet)!: accept direct hosting options
- `41b8021` refactor(dotnet): split hosting extensions
- `7a74634` refactor(dotnet)!: internalize checkpoint store
- `fa94d56` refactor(dotnet)!: remove hosted memory helpers
- _... 他 23 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`ffb9942` 以降で response handler・session / checkpoint store・memory helper・診断型を内部化または削除し、filesystem session store と request-time Toolbox marker API も除去します。
`FoundryResponsesOptions` は `ResponsesServerOptions` を継承し、OAuth consent origins は `ISet<Uri>` に変更。拡張クラスも所有 surface ごとに分割します。
Hosted 登録は `IHostApplicationBuilder`、local 登録は `IServiceCollection` という使い分けを明確にしています。experimental marker 除去だけを GA と解釈しないでください。

**既存利用者への影響**

削除型や旧拡張クラスの静的参照を、公開拡張・options に置換してください。通常の拡張メソッド呼び出しは維持されますが、hosted 登録経路は確認が必要です。

### [#10121](https://github.com/microsoft/agent-framework/pull/10121) — .NET: [BREAKING] Ensure enable file hooks defaults to false

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +71 / -12
- マージ日時 (UTC): `2026-11-05 17:57:14`

**変更概要**

.NET GitHubCopilotAgent のファイル hooks を既定で無効にします。
設定を省略した場合の挙動を安全側へ揃え、暗黙に hook が読み込まれる構成を避ける変更です。
agent 実装と、既定値・明示設定を確認するテストが更新されました。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 11 | 10 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/GitHubCopilotAgentTests.cs` | 60 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `b39700d` Ensure enable file hooks defaults to false

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`b39700d` で enable file hooks の既定値を `false` に統一しました。型削除ではなく既定動作の変更です。

**既存利用者への影響**

ファイル hooks を必要とするアプリは有効化を明示してください。使っていないアプリでは新たな設定は不要です。

### [#10117](https://github.com/microsoft/agent-framework/pull/10117) — Python: chore(deps-dev): bump pytest from 9.1.1 to 9.2.0 in /python/packages/lab in the pytest group

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `lab` `dependencies`
- 変更行数: +5 / -5
- マージ日時 (UTC): `2026-11-06 09:51:39`

**変更概要**

Python lab の開発依存 pytest を 9.1.1 から 9.2.0 に更新します。
変更は lab の依存宣言と lockfile に限定され、Agent Framework の実行時 API 変更ではありません。
依存先の release notes による自動重要度判定を、製品の破壊的変更から除外しました。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/lab/pyproject.toml` | 1 | 1 |
| `python/packages/lab/uv.lock` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `c133305` chore(deps-dev): bump pytest in /python/packages/lab in the pytest group

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`c133305` は `pyproject.toml` と `uv.lock` の更新です。Agent Framework の公開シグネチャや新規抽象の変更はありません。

**既存利用者への影響**

アプリの移行は不要です。lab 開発環境では lockfile に従ってテスト依存を同期してください。

### [#10113](https://github.com/microsoft/agent-framework/pull/10113) — .NET: [BREAKING] Simplify A2A agent creation and payload handling

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +87 / -131
- マージ日時 (UTC): `2026-11-05 13:11:52`

**変更概要**

A2A agent 作成を options ベースの API に集約し、個別 identity 引数の重複を除去します。
options を省略できるようにし、指定時は clone して使用します。
response / streaming payload の取り扱いは null-forgiving 演算子からパターン照合へ変更しました。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/A2A/A2AAgent_ProtocolSelection/README.md` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.A2A/A2AAgent.cs` | 20 | 47 |
| `dotnet/src/Microsoft.Agents.AI.A2A/A2AAgentOptions.cs` | 1 | 2 |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/A2AAgentCardExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/A2AClientExtensions.cs` | 3 | 20 |
| `dotnet/tests/Microsoft.Agents.AI.A2A.UnitTests/A2AAgentTests.cs` | 24 | 38 |
| `dotnet/tests/Microsoft.Agents.AI.A2A.UnitTests/Extensions/A2AClientExtensionsTests.cs` | 37 | 22 |

</details>

<details><summary>コミット (3 件)</summary>

- `9ddf897` .NET: Simplify A2A agent creation with optional options
- `3d88761` .NET: Replace A2A payload null-forgiving operators with patterns
- `c45c028` .NET: Simplify direct A2A client sample

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`9ddf897` で `A2AAgent` と `IA2AClient.AsAIAgent` の個別 identity パラメーター付きオーバーロードを削除し、nullable / optional な `A2AAgentOptions` に統一。
`3d88761` は payload case と非 null パターン、streaming の `when` guard を導入。`c45c028` で直接 client を使うサンプルも簡素化しました。

**既存利用者への影響**

identity の個別引数を `A2AAgentOptions` に移してください。identity を指定しない構築は options 省略で表現できます。

### [#10066](https://github.com/microsoft/agent-framework/pull/10066) — [BREAKING] .NET: fix(hyperlight): propagate cancellation and limit execution

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +253 / -13
- マージ日時 (UTC): `2026-11-10 16:13:54`

**変更概要**

.NET Hyperlight の guest 実行へキャンセルを伝播し、既定30秒の実行上限を設けます。
中断後の snapshot 復元と executor 再利用を維持し、timeout と呼び出し元キャンセルを区別します。
SDK 依存の更新と guest 回帰テストが含まれ、host callback 自体の停止は別途管理する必要があります。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/HyperlightCodeActProviderOptions.cs` | 24 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/Internal/SandboxExecutor.cs` | 21 | 9 |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/README.md` | 31 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hyperlight.UnitTests/HyperlightCodeActProviderTests.cs` | 19 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Hyperlight.UnitTests/Microsoft.Agents.AI.Hyperlight.UnitTests.csproj` | 5 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Hyperlight.UnitTests/SandboxExecutorTests.cs` | 147 | 0 |
| `skills/agent-framework-builder-dotnet/references/integrations.md` | 4 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `216c5b8` fix(hyperlight): add cancellation regression coverage
- `ade3a81` fix(hyperlight): propagate cancellation and limit guest execution
- `6f8a728` chore: updates hyperlight package to required version
- `1ec0989` Update README with guest test execution instructions
- `c521710` Apply suggestion from @SergeyMenshykh
- `1837a67` Use TimeSpan for Hyperlight execution timeout

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：最終差分では `HyperlightCodeActProviderOptions.ExecutionTimeout`（`TimeSpan`）を追加。正値かつ最大4,294,967,294ミリ秒で、既定は30秒です。
PR 本文の旧名 `ExecutionTimeoutSeconds` ではなく、`1837a67` の TimeSpan 化後の API に従ってください。
linked cancellation token を warm-up / 実行へ渡し、中断処理終了後に実行 semaphore を解放します。runtime 初期化や host callback を強制中断する機能ではありません。

**既存利用者への影響**

長時間実行には `ExecutionTimeout = TimeSpan.FromSeconds(...)` を明示してください。無制限設定はなく、host tool 側の期限・キャンセル方針も必要です。

### [#9994](https://github.com/microsoft/agent-framework/pull/9994) — .NET: [BREAKING] Remove nonstandard workflow payload telemetry

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +55 / -241
- マージ日時 (UTC): `2026-11-05 12:18:23`

**変更概要**

OpenTelemetry GenAI 規約にない .NET workflow payload 属性を削除します。
payload 内容のシリアライズを除去し、機密データ設定を有効にしても旧属性を出力しなくなります。
span・metadata・runtime event と agent / chat 側の機密データ記録は変更しません。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/03-workflows/Observability/ApplicationInsights/Program.cs` | 1 | 4 |
| `dotnet/samples/03-workflows/Observability/AspireDashboard/Program.cs` | 1 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Executor.cs` | 1 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/InProc/InProcessRunnerContext.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/Tags.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/WorkflowTelemetryContext.cs` | 2 | 52 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/WorkflowTelemetryOptions.cs` | 7 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/OpenTelemetryWorkflowBuilderExtensions.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/DeclarativeWorkflowOptionsTest.cs` | 4 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.UnitTests/ObservabilityTests.cs` | 33 | 160 |
| `skills/agent-framework-builder-dotnet/references/observability.md` | 3 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `865dfdb` .NET: remove nonstandard workflow payload telemetry

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：`865dfdb` で `executor.input` / `executor.output` / `message.content` と専用 serializer を削除。
`WorkflowTelemetryOptions.EnableSensitiveData` は no-op として非推奨となり、1.30.0 で削除予定です。タグ依存のログクエリ・ダッシュボードに影響します。

**既存利用者への影響**

旧 payload 属性を前提とした監視を見直し、無効となった option を除去してください。agent / chat telemetry の設定まで不要になるわけではありません。

### [#8662](https://github.com/microsoft/agent-framework/pull/8662) — [BREAKING] Python: scope declarative MCP sessions to invocations

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `python` `.NET` `workflows` `breaking change`
- 変更行数: +832 / -2245
- マージ日時 (UTC): `2026-11-06 08:52:10`

**変更概要**

Python の宣言的 workflow が同じ handler・endpoint・headers を使っても、stateful MCP session を共有しないようにします。
`tools/list` を含む各呼び出しで新しい `MCPStreamableHTTPTool` を作り、成功・失敗・キャンセル時に閉じます。
HTTP 接続 pool を借用する `client_provider` は維持し、workflow Core や checkpoint 契約自体は変更しません。

<details><summary>変更ファイル (48 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 1 | 1 |
| `docs/decisions/0026-hosted-session-identity-context.md` | 2 | 2 |
| `docs/decisions/0029-structured-output.md` | 0 | 0 |
| `docs/decisions/0030-agent-skills-design.md` | 0 | 0 |
| `docs/decisions/0031-codeact-integration.md` | 0 | 0 |
| `docs/decisions/0032-mcp-skill-templates-and-direct-references.md` | 0 | 0 |
| `docs/decisions/0033-python-agent-session-identity.md` | 0 | 0 |
| `docs/decisions/0034-hosted-platform-context-agentserver-2.0.md` | 0 | 0 |
| `docs/decisions/0035-hosted-per-user-session-storage-isolation.md` | 7 | 7 |
| `docs/decisions/0036-dotnet-hosting-protocol-helpers.md` | 1 | 1 |
| `docs/decisions/0037-feature-usage-bitmask-user-agent.md` | 0 | 0 |
| `docs/decisions/0038-python-session-store-serialization.md` | 1 | 1 |
| `docs/decisions/0039-durable-azure-functions-extraction.md` | 0 | 0 |
| `docs/decisions/0040-dotnet-agent-hooks-enforcement.md` | 0 | 0 |
| `docs/decisions/0041-foundry-hosting-resilient-long-running-agents.md` | 0 | 0 |
| _... 他 33 件_ | | |

</details>

<details><summary>コミット (96 件)</summary>

- `bb9e92b` fix: isolate MCP sessions by workflow session
- `5232c71` .NET/Python: Address MCP session review feedback
- `777056f` Address MCP review feedback
- `2182915` chore: linting
- `c5a98d7` Merge origin/main into fix/mcp-workflow-session-isolation
- `f1dde52` Address MCP review lifecycle comments
- `3293b65` Address MCP session review feedback
- `2ce112b` Fix MCP creation cancellation and run isolation
- _... 他 88 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**：handler の `cache_max_size`、`aclose()`、async context manager を削除。呼び出し・承認待機・checkpoint 再開をまたぐ暗黙の MCP session は継続しません。
後続コミット `5ca600440` が以前の workflow-scope 実装を置換し、Core の変更を戻して invocation 所有へ限定しています。
借用 HTTP client の所有権は呼び出し元に残り、各呼び出しには接続・discovery の追加コストが発生します。

**既存利用者への影響**

handler を通常構築へ変更し、旧 cache / shutdown 呼び出しを削除してください。継続状態が必要なら明示的な remote state handle または scope を設計した独自 handler を使用します。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #10276 | .NET: Remove redundant GC collection from MCP skill lifetime test | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10276> |
| #9876 | Python: Harden FIDES replay and approval authority | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9876> |
| #10254 | .NET: Keep Foundry client headers scoped to each run | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10254> |
| #10255 | .NET: Honor includeExceptionDetails for OpenAI Responses workflow failures | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10255> |
| #10265 | .NET: Limit MCP skill resource count and combined size | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10265> |
| #10267 | .NET: Update Aspire to 13.6.5 | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10267> |
| #10239 | Python: chore(observability): remove OTEL_METRICS, an unused local sentinel | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10239> |
| #10233 | Python: Remove a stale Args block from a samples docstring | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10233> |
| #10203 | Python: drop a Returns section from a method that returns None | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10203> |
| #10201 | Python: declare the two integration exports the runtime already serves | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10201> |
| #9036 | Python: fix(core): serialize Pydantic tool results in JSON mode | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/9036> |
| #10259 | python : Honor merge_mode when streaming function call arguments in ResponsesHostServe | PratikWayase | <https://github.com/microsoft/agent-framework/pull/10259> |
| #10215 | Python: add task-scoped authority middleware sample | aimable100 | <https://github.com/microsoft/agent-framework/pull/10215> |
| #10202 | Python: report an over-long Windows path as ENAMETOOLONG, not a missing file | simin-yuan | <https://github.com/microsoft/agent-framework/pull/10202> |
| #9810 | Python: Support response_format in GitHubCopilotAgent | droideronline | <https://github.com/microsoft/agent-framework/pull/9810> |
| #10252 | .NET: Fix loopback MCP test server shutdown race | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10252> |
| #10251 | Python: Default A2A raw parts without a media type to application/octet-stream | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10251> |
| #10249 | Python: Accept SSE data lines without a space in the AG-UI client | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10249> |
| #10114 | Python: Defer experimental AgentFactory creation in WorkflowFactory | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/10114> |
| #10207 | Python: Reject skip with key lookup in PostgreSQL and DuckDB collections | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/10207> |
| #10200 | Python: retry atomic session snapshot replacement on transient PermissionError | simin-yuan | <https://github.com/microsoft/agent-framework/pull/10200> |
| #10188 | Python: Reject Gemini candidate_count other than 1, including zero | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/10188> |
| #10225 | .NET: Require full LocalCodeAct interpreter paths | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10225> |
| #10244 | .NET: Scaffold Foundry Hosted Agents A2A project | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10244> |
| #10232 | .NET: Expose MCP skill URI | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10232> |
| #10229 | Python: Resolve Windows shell tool executables from PATH only | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10229> |
| #10227 | Python: reject positional arguments in Monty typed tool calls | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10227> |
| #10226 | Python: Isolate run-level tool approval state in agent tools | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10226> |
| #10175 | .NET: Bump the aspire group with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10175> |
| #10236 | CI: Drop the path filter that matches no directory | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10236> |
| #9790 | .NET: Allow persisting partial interaction when streaming is cancelled | marcominerva | <https://github.com/microsoft/agent-framework/pull/9790> |
| #9944 | Python: Normalize naive timestamps to UTC in checkpoint selection | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9944> |
| #10231 | .NET: Fix flaky MultiStepOperationTimeout unit test | baywet | <https://github.com/microsoft/agent-framework/pull/10231> |
| #10204 | Python: close the owned stream in functional workflow agents | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/10204> |
| #9999 | Python: Prefer injected DocumentDB clients over connection settings | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9999> |
| #10228 | .NET: Rename MCP skill limit options | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10228> |
| #9890 | Python: fix(redis): keep core message groups atomic when trimming history | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9890> |
| #10213 | Python: Report content_filter when Gemini blocks the prompt | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10213> |
| #10158 | .NET, Python: Reject file skills with resource or script names that differ only by case | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10158> |
| #10176 | Python: reject non-boolean passed values when score is present in evaluator dict | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10176> |
| #10214 | Python: expose final-only loop responses in create_harness_agent | M-Hietala | <https://github.com/microsoft/agent-framework/pull/10214> |
| #9702 | .NET: Correct misleading comments in FileMemoryProvider and AgentHooksFunctionMiddleware | hgmauri | <https://github.com/microsoft/agent-framework/pull/9702> |
| #10185 | .NET: docs: keep consumer skills focused on development choices | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10185> |
| #10180 | Python: fail assert_score_at_least when evaluator filter matches no scores | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10180> |
| #10193 | Python: Fix per message user mapping in purview | westey-m | <https://github.com/microsoft/agent-framework/pull/10193> |
| #10183 | Python: Compare float operands with int fields in Cosmos filters | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10183> |
| #10169 | Python: drop a console script whose callable does not exist | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10169> |
| #10170 | Python: export the six orchestrations names the runtime already serves | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10170> |
| #10112 | Python: fix(devui): omit connection-specific keep-alive header from SSE streaming responses | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/10112> |
| #10168 | Python: drop a Returns section from a method that returns None | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10168> |
| #10039 | Python: fix(redis): escape RediSearch query syntax in memory search text | wxhking | <https://github.com/microsoft/agent-framework/pull/10039> |
| #9907 | Python: fix(memory): return no results for a non-positive transcript search limit | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9907> |
| #9968 | Python: Report the injected Mistral SDK client's endpoint in service_url | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/pull/9968> |
| #9911 | Python: fix(mem0): do not forward unset user_id/agent_id as None to OSS client | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9911> |
| #10003 | Python: fix(python): include cache tokens in input_token_count for Bedrock and Claude | 123XieC | <https://github.com/microsoft/agent-framework/pull/10003> |
| #10160 | Python: list agent-framework-dxmt under Context providers in community projects | eric-epsilla | <https://github.com/microsoft/agent-framework/pull/10160> |
| #10191 | Rename release-notes skill to draft-release-notes | baywet | <https://github.com/microsoft/agent-framework/pull/10191> |
| #8437 | .NET: clarify Harness client API selection | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8437> |
| #10148 | .NET: Support dynamic resources for MCP skills | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10148> |
| #10157 | .NET: chore: bumps release version for dotnet | baywet | <https://github.com/microsoft/agent-framework/pull/10157> |
| #10154 | .NET: Fix spelling in WorkflowBuilder XML comment | JY-M666 | <https://github.com/microsoft/agent-framework/pull/10154> |
| #10153 | .NET: Fix initializer spelling in Cosmos test comment | JY-M666 | <https://github.com/microsoft/agent-framework/pull/10153> |
| #10069 | .NET: fix(dotnet): parse declarative workflow formulas and values with InvariantCulture | Prognosticate-X | <https://github.com/microsoft/agent-framework/pull/10069> |
| #10151 | Python: Prepare 1.25.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10151> |
| #10147 | Python: Allow concurrent MCP calls with request-owned headers | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10147> |
| #10144 | Enable automatic issue routing | westey-m | <https://github.com/microsoft/agent-framework/pull/10144> |
| #10149 | Python: narrow unscoped Copilot URL session approvals | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/10149> |
| #10143 | Python: enable Redis integration on Python 3.15 | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10143> |
| #10045 | Add manual agentic issue triage workflow | westey-m | <https://github.com/microsoft/agent-framework/pull/10045> |
| #10136 | Python: Honor Foundry Toolbox approval metadata | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10136> |
| #10120 | Python: chore(deps): bump mypy from 2.4.0 to 2.4.1 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10120> |
| #10119 | Python: chore(deps): bump ty from 0.0.92 to 0.0.94 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10119> |
| #10118 | Python: chore(deps-dev): bump mypy from 2.4.0 to 2.4.1 in /python/packages/lab in the python-type-checkers group | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10118> |
| #10105 | Python: chore(core): remove unused URI_PATTERN and correct add_chain cycle docstring | PratikDhanave | <https://github.com/microsoft/agent-framework/pull/10105> |
| #9387 | Python: fix(core): keep finished background tasks until cleared or released | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/9387> |
| #9094 | Python: Preserve AG-UI citations through client and agent streaming | quifox | <https://github.com/microsoft/agent-framework/pull/9094> |
| #10088 | Python: Sum streamed GitHubCopilotAgent usage across model calls | droideronline | <https://github.com/microsoft/agent-framework/pull/10088> |
| #9547 | Python: fix(core): quarantine an unreadable memory state file instead of failing every turn | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9547> |
| #9803 | Python: fix empty local shell calls leaving orphaned history | M-Hietala | <https://github.com/microsoft/agent-framework/pull/9803> |
| #10124 | .NET: Clarify Foundry toolbox startup and readiness documentation | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10124> |
| #10122 | .NET: Use source-generated logging in Foundry Hosting | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10122> |
| #9770 | Python: fix(ag-ui): start each replayed declaration-only tool call once | eatmoreduck | <https://github.com/microsoft/agent-framework/pull/9770> |
| #10106 | Python: Replay Anthropic redacted_thinking blocks in tool loops | atty57 | <https://github.com/microsoft/agent-framework/pull/10106> |
| #10108 | .NET: docs: fix dont typos in ChatCompletions comments | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/10108> |
| #10109 | .NET: Reject unscoped Mem0 memory deletion | MoustAhmed | <https://github.com/microsoft/agent-framework/pull/10109> |
| #10090 | Python: reject unsupported Copilot provider function middleware | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10090> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #10285 | Python: Preserve allowed tool choices in Chat Completions | open | atty57 | <https://github.com/microsoft/agent-framework/pull/10285> |
| PR | #10238 | .NET: [BREAKING] Support scoped and transient agent lifetimes in Foundry Hosting | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10238> |
| PR | #10282 | .NET: [BREAKING] Bind Foundry toolboxes to each response | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10282> |
| PR | #10284 | Python: Accept input_file file_data in the Responses hosting parser | open | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10284> |
| PR | #10177 | Python: Clarify A2A quickstart working directories | open | shx815 | <https://github.com/microsoft/agent-framework/pull/10177> |
| PR | #10281 | Python: Set additionalProperties false on nested objects in Anthropic structured outputs | open | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10281> |
| PR | #10243 | .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals | open | baywet | <https://github.com/microsoft/agent-framework/pull/10243> |
| PR | #10275 | .NET: [BREAKING] Adopt the MCP skills extension | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10275> |
| PR | #10260 | Python: [BREAKING] Prepare Foundry Hosting for RC | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10260> |
| PR | #10273 | Python: Deprecate the legacy memory APIs | open | westey-m | <https://github.com/microsoft/agent-framework/pull/10273> |
| PR | #10192 | .NET: [BREAKING] fix(dotnet): validate declarative MCP destinations | open | baywet | <https://github.com/microsoft/agent-framework/pull/10192> |
| PR | #10240 | .NET: Prepare for .NET 11 TFM support  | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10240> |
| PR | #10272 | Python: Send empty text for GitHubCopilotAgent tool results without text | open | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/10272> |
| PR | #10270 | Python: Add Supermemory to the community projects catalog | open | ishaanxgupta | <https://github.com/microsoft/agent-framework/pull/10270> |
| PR | #10268 | docs: fix README wording and remove unused Python import | open | dhruvatr | <https://github.com/microsoft/agent-framework/pull/10268> |
| PR | #10258 | Python: Prevent keyword argument collision when model is passed in client_kwargs | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10258> |
| PR | #10247 | Python: fix(sessions): validate AliasChoices state fields when restoring a session snapshot | open | DZH166 | <https://github.com/microsoft/agent-framework/pull/10247> |
| PR | #10198 | Python: Preserve server error codes in AG-UI RUN_ERROR events | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10198> |
| PR | #10261 | Python: preserve workflow run guard during concurrent stream close | open | Yongthyuan | <https://github.com/microsoft/agent-framework/pull/10261> |
| PR | #10246 | Python: fix(vectors): validate AliasChoices fields when the default decoder rebuilds a record | open | DZH166 | <https://github.com/microsoft/agent-framework/pull/10246> |
| PR | #10257 | Python: Fix Purview cache size accounting when replacing entries | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10257> |
| PR | #10245 | Python: Scope local tool checks to the response side of the conversation split | open | 14H034160212 | <https://github.com/microsoft/agent-framework/pull/10245> |
| PR | #10219 | .NET: Request summaries with a trailing user message | open | lulu0119 | <https://github.com/microsoft/agent-framework/pull/10219> |
| PR | #10184 | Python: continue declarative workflows after empty conditional branches | open | uragoodman | <https://github.com/microsoft/agent-framework/pull/10184> |
| PR | #10242 | Python: add configurable response extraction to agent.as_tool() | open | M-Hietala | <https://github.com/microsoft/agent-framework/pull/10242> |
| PR | #10146 | Python: clear function invocation budget state from session on failed turn | open | JohnnyWilson16 | <https://github.com/microsoft/agent-framework/pull/10146> |
| PR | #10205 | Python: Honor replace usage snapshots in Foundry hosting | open | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/pull/10205> |
| PR | #10186 | Python: fix(eval): scope local tool checks to the response side of the conversation split | open | tang-ontheway | <https://github.com/microsoft/agent-framework/pull/10186> |
| PR | #10110 | Python: add background tool recovery for failed runs | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/10110> |
| PR | #10190 | Python: fix(devui): read context providers from the agent's provider list | open | tang-ontheway | <https://github.com/microsoft/agent-framework/pull/10190> |
| PR | #10155 | Python: replay an empty local_shell_call with its matching shell output | open | DZH166 | <https://github.com/microsoft/agent-framework/pull/10155> |
| PR | #10178 | chore(deps): bump astral-sh/setup-uv in / | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10178> |
| PR | #10126 | .NET: Add public API naming and service options review guidance | open | baywet | <https://github.com/microsoft/agent-framework/pull/10126> |
| PR | #10150 | docs: add ADR 0054 for cross-process background task coordination | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/10150> |
| PR | #10264 | Python: [BREAKING] Harden Foundry Hosting options | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10264> |
| PR | #10241 | Improve README formatting and Python quickstart example | closed | dhruvatr | <https://github.com/microsoft/agent-framework/pull/10241> |
| PR | #10235 | Python: fix(python): fix tests/samples collection for missing sample imports | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/10235> |
| PR | #10220 | Python: release functional workflow stream on agent response close | closed | Yongthyuan | <https://github.com/microsoft/agent-framework/pull/10220> |
| PR | #9391 | [BREAKING] Python: Reject unsafe functional step replay | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/9391> |
| PR | #9925 | Python: Surface failed OpenAI Responses as client exceptions | closed | sumedh-aerram | <https://github.com/microsoft/agent-framework/pull/9925> |
| PR | #10199 | Python: Fail assert_dimension_score_at_least when a filter matches nothing | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/10199> |
| PR | #10179 | Python: fix(redis): deduplicate RedisContextProvider writes | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/10179> |
| PR | #10145 | Python: preserve Windows backslashes and quotes in LocalShellTool shell paths | closed | JohnnyWilson16 | <https://github.com/microsoft/agent-framework/pull/10145> |
| PR | #9920 | Python: serialize todo mutations across providers sharing a store | closed | Lushiyao5 | <https://github.com/microsoft/agent-framework/pull/9920> |
| PR | #10135 | Python: Fix tool names and descriptions for partials and callable instances | closed | Trainingcqy | <https://github.com/microsoft/agent-framework/pull/10135> |
| PR | #10187 | Python: [BREAKING] Align Foundry hosting source names and remove store alias | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10187> |
| PR | #9462 | Python: DevUI audio input and response playback | closed | fedeoliv | <https://github.com/microsoft/agent-framework/pull/9462> |
| PR | #9714 | Python: fix(devui): compare bearer tokens as bytes so non-ASCII input cannot raise | closed | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9714> |
| PR | #8990 | Python: Fix Purview cache size accounting when replacing entries | closed | dhairyajangir | <https://github.com/microsoft/agent-framework/pull/8990> |
| PR | #9846 | .NET: Fix typos in XML doc comments and comments | closed | sarankumar1325 | <https://github.com/microsoft/agent-framework/pull/9846> |
| PR | #10163 | Python: fix: correct WorkflowState fallback expression evaluation (#10612) | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/10163> |
| PR | #4665 | .NET Compaction - Introduce preconfigured `CompactionStrategy` pattern | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/4665> |
| PR | #4988 | .NET: Shrayrastogi/ag UI permission wrapper | closed | ShrayRastogi | <https://github.com/microsoft/agent-framework/pull/4988> |
| PR | #8992 | Python: Restore DevUI context provider metadata | closed | dhairyajangir | <https://github.com/microsoft/agent-framework/pull/8992> |
| PR | #9106 | Python: Fix the serialization protocol round-trip example | closed | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9106> |
| PR | #9257 | Python: Make Executor type-system examples valid Python | closed | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9257> |
| PR | #9617 | Python: Make response overview examples runnable | closed | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9617> |
| PR | #9772 | Python: preserve server RUN_ERROR code in AG-UI event conversion | closed | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9772> |
| PR | #10041 | Python: fix(redis): let an injected redis_client take precedence in RedisHistoryProvider | closed | wxhking | <https://github.com/microsoft/agent-framework/pull/10041> |
| PR | #10129 | chore(deps): bump oauthlib from 4.0.0 to 4.0.1 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10129> |
| PR | #10128 | Python: chore(deps): bump oauthlib from 4.0.0 to 4.0.1 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10128> |
| PR | #10115 | chore(deps-dev): bump the pytest group across 1 directory with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10115> |
| PR | #10140 | Python: chore(deps): bump the python-type-checkers group across 1 directory with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10140> |
| PR | #10142 | Python: Allow concurrent MCP calls with matching headers | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/10142> |
| PR | #10139 | Python: chore(deps): bump the python-type-checkers group across 1 directory with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10139> |
| PR | #10116 | Python: chore(deps): bump the python-type-checkers group across 3 directories with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10116> |
| PR | #9798 | Python: preserve AG-UI input on failed runs and prevent duplicate snapshot messages | closed | ranst91 | <https://github.com/microsoft/agent-framework/pull/9798> |
| PR | #9782 | Python: add Amazon Bedrock Knowledge Base context provider | closed | PVidyadhar | <https://github.com/microsoft/agent-framework/pull/9782> |
| PR | #9929 | Python: Reject candidate_count>1 in the Gemini chat client instead of silently dropping candidates | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/9929> |
| PR | #9858 | Python: keep Windows backslashes in LocalShellTool shell paths | closed | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9858> |
| Issue | #10283 | Python: [Bug]: Responses hosting rejects input_file with file_data, which OpenAIChatClient sends for local files | open | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10283> |
| Issue | #10277 | Python: [Bug]: Compaction token estimate counts the MCP host payload stored in function_result additional_properties | open | cristofima | <https://github.com/microsoft/agent-framework/issues/10277> |
| Issue | #10280 | Python: [Bug]: Anthropic structured output: nested objects are sent without additionalProperties: false | open | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10280> |
| Issue | #10279 | Python: [Bug]: `OpenAIChatCompletionClient` ignores `allowed_tools` and sends `tool_choice: "auto"`, but Chat Completions supports `allowed_tools` | open | Android-Login-Analysis | <https://github.com/microsoft/agent-framework/issues/10279> |
| Issue | #10278 | Python: [Feature]: TruncationStrategy: option to always keep the latest user message | open | cristofima | <https://github.com/microsoft/agent-framework/issues/10278> |
| Issue | #10162 | Python: [Bug]: WorkflowState fallback evaluator ignores And/Or precedence and evaluates chained - and / right-to-left | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/10162> |
| Issue | #10274 | Python: [Bug]: dataclass, Enum and set tool results are sent to the model as Python repr | open | astroknot-sheep | <https://github.com/microsoft/agent-framework/issues/10274> |
| Issue | #10271 | Python: [Bug]: GitHubCopilotAgent sends a Python object repr as the tool result when a tool returns no text | open | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/10271> |
| Issue | #10141 | Python: [Bug]: On Windows without long paths, FileSystemAgentFileStore reports FileNotFoundError for long-but-legal keys | closed | simin-yuan | <https://github.com/microsoft/agent-framework/issues/10141> |
| Issue | #10263 | .NET: [Feature]: .NET: Extensible action handler registry, InvokeConnectorAction/in-process InvokeFunctionTool hooks, and strict UnsupportedActionBehavior on DeclarativeWorkflowOptions | open | sannimodi | <https://github.com/microsoft/agent-framework/issues/10263> |
| Issue | #10262 | Python: [Bug]: Concurrent stream close releases the functional workflow run guard too early | open | Yongthyuan | <https://github.com/microsoft/agent-framework/issues/10262> |
| Issue | #10250 | Python: [Bug]: A2A file part without media_type becomes "data:;base64,..." and can't be sent on | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10250> |
| Issue | #10248 | Python: [Bug]: AG-UI client skips SSE events written as "data:" with no space | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10248> |
| Issue | #10230 | Python: [Bug]: AliasChoices vector records fail to round-trip through InMemoryCollection | open | FOWEPJF255 | <https://github.com/microsoft/agent-framework/issues/10230> |
| Issue | #10206 | Python: get(keys=..., skip=N) diverges across vector-store connectors: PostgreSQL and DuckDB silently drop the explicit skip | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/10206> |
| Issue | #10137 | Python: [Bug]: FileSessionStore concurrent saves raise PermissionError [WinError 5] on Windows | closed | simin-yuan | <https://github.com/microsoft/agent-framework/issues/10137> |
| Issue | #10221 | .NET: Summarization can continue the original task instead of producing a summary | open | lulu0119 | <https://github.com/microsoft/agent-framework/issues/10221> |
| Issue | #10256 | .NET: [Bug]: Workflow agent host fails when one response contains two approval-required tool calls | open | ikebig2 | <https://github.com/microsoft/agent-framework/issues/10256> |
| Issue | #10253 | .NET: [Feature]: Foundgine integration | open | CristianBarragan | <https://github.com/microsoft/agent-framework/issues/10253> |
| Issue | #10237 | Python: assert_dimension_score_at_least passes vacuously when evaluator/dimension filter matches nothing or results are empty | open | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/10237> |
| Issue | #10223 | .NET: Add Vespa.NET.VectorData to vector store integrations | open | petrhaus | <https://github.com/microsoft/agent-framework/issues/10223> |
| Issue | #10197 | Python: [Bug]: BedrockChatClient drops toolConfig on the final tool_choice="none" call, but the request still has toolUse/toolResult blocks | open | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/issues/10197> |
| Issue | #10234 | Python: [Bug]: AgentLoopMiddleware echoes the caller's input and the additional_instructions system message into the response on every iteration | open | xiaoyuCR7 | <https://github.com/microsoft/agent-framework/issues/10234> |
| Issue | #10222 | Python: `MCPStreamableHTTPTool` cannot set mcp 2's `max_sse_event_size`, so tool results over 1 MiB fail | open | gian-alloy | <https://github.com/microsoft/agent-framework/issues/10222> |
| Issue | #10134 | Python: [Bug]: `tool()` names both `functools.partial` objects and callable instances `unknown_function` | open | Trainingcqy | <https://github.com/microsoft/agent-framework/issues/10134> |
| Issue | #10212 | Python: [Bug]: Gemini: a blocked prompt comes back as an empty response with no finish reason | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10212> |
| Issue | #10164 | Python: [Bug]: Closing a FunctionalWorkflowAgent stream leaves the workflow marked as running | closed | Yongthyuan | <https://github.com/microsoft/agent-framework/issues/10164> |
| Issue | #10165 | Python: [Bug]: Function evaluator dict with both "score" and a string "passed" is coerced with bool(), so "false" passes | closed | ravismash | <https://github.com/microsoft/agent-framework/issues/10165> |
| Issue | #10209 | Python: [Feature]: Option in create_harness_agent to return only the agent's answer from a looping run (result.text currently includes the loop's prompts) | closed | mcekikj | <https://github.com/microsoft/agent-framework/issues/10209> |
| Issue | #10218 | [Issue]: broken link to the AGENT-HOOKS-0.1 contract | open | rvinothrajendran | <https://github.com/microsoft/agent-framework/issues/10218> |
| Issue | #10131 | .NET: Reduce Foundry Hosting public API before stable release | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/10131> |
| Issue | #10216 | Python: [Bug]: CopilotStudioAgent never runs its context providers | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/10216> |
| Issue | #10127 | Python: [Bug]: RedisContextProvider saves the whole conversation again on every AG-UI run, so memory search returns copies and misses facts | open | LUCKYREDDY31 | <https://github.com/microsoft/agent-framework/issues/10127> |
| Issue | #10173 | Python: [Feature]: Configurable file memory scope in create_harness_agent, with default instructions that match it | open | mcekikj | <https://github.com/microsoft/agent-framework/issues/10173> |
| Issue | #10208 | Python: MCPStreamableHTTPTool never recovers after the transport closes ("Connection closed", -32000) | open | markuspalme | <https://github.com/microsoft/agent-framework/issues/10208> |
| Issue | #10189 | Python: [Bug]: Foundry hosting sums replacement usage snapshots, inflating reported tokens | open | marcgs | <https://github.com/microsoft/agent-framework/issues/10189> |
| Issue | #10171 | .NET: [Feature]: Add a DebateBuilder orchestration pattern (debate → vote → adjudicate) | open | lss680455-create | <https://github.com/microsoft/agent-framework/issues/10171> |
| Issue | #10133 | Python: Python Foundry hosting: request_info cannot resume a workflow with a file-bearing Responses function_call_output | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/10133> |
| Issue | #10161 | Python: [Bug]: MCP get_prompt and tool/prompt discovery don't reconnect after "Session terminated" | open | AtulJoshi1206 | <https://github.com/microsoft/agent-framework/issues/10161> |
| Issue | #10194 | Python: [Bug]: Passing model in client_kwargs raises TypeError when instrumentation is on | open | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/issues/10194> |
| Issue | #10196 | Python: [Bug]: AGUIChatClient drops TEXT_MESSAGE_CHUNK and TOOL_CALL_CHUNK events | open | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/issues/10196> |
| Issue | #10182 | Python: [Bug]: Cosmos vector store: eq/ne with a float like 2.0 on an int field give wrong results | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10182> |
| Issue | #10166 |  Python: [Bug]: assert_score_at_least(evaluator=...) passes silently when no score matches the evaluator name | closed | ravismash | <https://github.com/microsoft/agent-framework/issues/10166> |
| Issue | #10111 | Python: [Bug]: DevUI SSE responses send a connection-specific "Connection: keep-alive" header | closed | jay-hakim | <https://github.com/microsoft/agent-framework/issues/10111> |
| Issue | #10195 | Python: [Bug]: MCP tool reload keeps the old description and input schema | open | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/issues/10195> |
| Issue | #10172 | .NET: Python: [Bug]: A failed model call right after a tool runs leaves the session unusable ("No tool output found for function call") | open | mcekikj | <https://github.com/microsoft/agent-framework/issues/10172> |
| Issue | #10167 | .NET: [Bug]: Foundry memory and RAG samples fail: embeddings 404 and ChatHistoryProvider conflict | open | Laurianti | <https://github.com/microsoft/agent-framework/issues/10167> |
| Issue | #10159 | .NET: [Bug]: ChatHistoryMemoryProvider loses turns that contain a message without text (tool calls, approvals, images) | open | LUCKYREDDY31 | <https://github.com/microsoft/agent-framework/issues/10159> |
| Issue | #10138 | Python: .NET: Foundry Toolbox file_search returns source metadata but no answer citation annotations | open | mikael-ekholm | <https://github.com/microsoft/agent-framework/issues/10138> |
| Issue | #10130 | Python: [Bug]: MSOBB issue-triage runtime marker fixture | open | MSOBB-r92c1bf56d72d | <https://github.com/microsoft/agent-framework/issues/10130> |
| Issue | #10125 | .NET: Add semantic public API naming review guidance | open | baywet | <https://github.com/microsoft/agent-framework/issues/10125> |
| Issue | #10123 | Update SK docs with MAF recommendation | open | westey-m | <https://github.com/microsoft/agent-framework/issues/10123> |
| Issue | #10010 | Python: [Team][Decision] Separate agent and workflow hosts | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10010> |
| Issue | #10012 | Python: [Team][Investigation] Explain ResponsesServerOptions and default_model | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10012> |
| Issue | #9562 | Python: [Bug]: Function call arguments that are not a JSON object reach the tool as {"raw": ...} instead of failing validation | closed | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/9562> |
| Issue | #9980 | Python: [Bug]: ResponsesHostServer duplicates function-call arguments by appending replacement updates | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/9980> |
| Issue | #9470 | Python: Python sample: give a delegated sub-agent only the authority its task needs (FunctionMiddleware) | closed | d8joseph | <https://github.com/microsoft/agent-framework/issues/9470> |
| Issue | #9809 | Python: [Feature]: Support response_format (structured output) in GitHubCopilotAgent | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/9809> |
| Issue | #9928 | Python: Gemini chat client silently drops all but the first candidate when candidate_count > 1 | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/9928> |
| Issue | #10092 | Python: [Issue]: Clarification on ExperimentalWarning when using WorkflowFactory from agent-framework-declarative | closed | TharunkumarReddy5b7 | <https://github.com/microsoft/agent-framework/issues/10092> |
| Issue | #9941 | Python: [Bug]: `get_latest` raises `TypeError` when a storage holds naive and timezone-aware checkpoint timestamps | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9941> |
| Issue | #8157 | [Feature]: Allow saving partial AgentSession state when streaming is cancelled | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/8157> |
| Issue | #8429 | .NET: [Bug]: Cannot set ReasoningEffort on gpt-5.6-luna | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8429> |
| Issue | #9954 | Python: [Bug]: Azure DocumentDB injected clients do not take precedence over connection settings | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9954> |
| Issue | #9851 | Python: [Bug]: RedisHistoryProvider max_messages trimming can orphan a tool result, causing every subsequent turn to fail | closed | LUCKYREDDY31 | <https://github.com/microsoft/agent-framework/issues/9851> |
| Issue | #9976 | Python: [Bug]: Mem0ContextProvider forwards unset user_id/agent_id as None to OSS client | closed | lisry-1 | <https://github.com/microsoft/agent-framework/issues/9976> |
| Issue | #9885 | Python: [Bug]: FileSessionStore cannot quarantine corrupt snapshots near Windows MAX_PATH | closed | Aaravkhanal | <https://github.com/microsoft/agent-framework/issues/9885> |
| Issue | #8282 | Python: [Bug]: MAF workflow terminates on transient Foundry exceptions instead of retrying — workflow instance cannot be reused after crash | closed | swadile999 | <https://github.com/microsoft/agent-framework/issues/8282> |
| Issue | #10002 | Python: [Bug]: RedisContextProvider fails the whole agent run when a message contains `?`, `\|` or a backtick | closed | LUCKYREDDY31 | <https://github.com/microsoft/agent-framework/issues/10002> |
| Issue | #9965 | Python: [Bug]: Mistral environment endpoint overrides injected-client service metadata | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9965> |
| Issue | #7226 | Python: [Feature]: a budget-gated escalating compaction composition (summarize before you delete) | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7226> |
| Issue | #9988 | Python: [Bug]: BedrockChatClient and ClaudeAgent report input_token_count without cached prompt tokens | closed | lalith0407 | <https://github.com/microsoft/agent-framework/issues/9988> |
| Issue | #9904 | Python: [Bug]: auto_retry.py sample never retries a 429: the client raises ChatClientException, not RateLimitError | closed | sohom-cs | <https://github.com/microsoft/agent-framework/issues/9904> |
| Issue | #8760 | [Feature]: BackgroundAgentsProvider cannot tell a task that is running on another process from one whose owner died | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8760> |
| Issue | #10033 | .NET: [Bug]: Declarative workflows fail or give wrong values on de-DE and fr-FR hosts | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/issues/10033> |
| Issue | #9093 | Python: [Bug]: Late AG-UI citations create duplicate messages through public streaming aggregation | closed | quifox | <https://github.com/microsoft/agent-framework/issues/9093> |
| Issue | #10087 | Python: [Bug]: GitHubCopilotAgent streaming undercounts usage across multiple model calls | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/10087> |
| Issue | #9697 | Python: [Bug]: Empty local shell commands produce an orphan shell call on replay | closed | ravisingh15 | <https://github.com/microsoft/agent-framework/issues/9697> |
| Issue | #8407 | .NET: [Bug]: Hosted-agent runtime never activates OTLP export to a third-party destination, despite docs describing it as automatic | closed | cristofima | <https://github.com/microsoft/agent-framework/issues/8407> |
| Issue | #10104 | Python: [Bug]: Anthropic `redacted_thinking` blocks are dropped and never replayed in tool loops | closed | DatabaseDylan | <https://github.com/microsoft/agent-framework/issues/10104> |
| Issue | #9638 | Python: [Bug]: AG-UI starts each tool call twice when an agent calls two declaration-only tools in one response | closed | gian-alloy | <https://github.com/microsoft/agent-framework/issues/9638> |
| Issue | #9493 | .NET: Mem0: `ClearMemoryAsync` has no scope guard, and the scope validator never sees restored state | closed | YashvantHange | <https://github.com/microsoft/agent-framework/issues/9493> |
