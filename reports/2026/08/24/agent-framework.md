# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 67 |
| オープン中の新規 PR     | 34 |
| クローズ (未マージ) PR  | 54 |
| 新規 Issue              | 63 |
| クローズ Issue          | 107 |
| 主要コントリビューター  | dependabot[bot], moonbox3, giles17, rogerbarreto, SergeyMenshykh, peibekwe |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7812](https://github.com/microsoft/agent-framework/pull/7812) — [BREAKING] Python: Bump package versions for 1.15.0 release （PR / merged / giles17）
  Python 1.15.0 利用者はリリースノートと依存関係を確認し、既存コードの互換性を検証してください。
- **⚠ 破壊的変更** [#7774](https://github.com/microsoft/agent-framework/pull/7774) — .NET: [BREAKING] Migrate MCP long-running task support to the 2026-07-28 Tasks extension （PR / merged / peibekwe）
  .NET の MCP 長時間タスク利用者は Tasks 拡張への移行と API 差分を確認してください。
- **⚠ 破壊的変更** [#7673](https://github.com/microsoft/agent-framework/pull/7673) — [BREAKING] Python: Consolidate OTel GenAI Semantic Conventions versions （PR / merged / TaoChenOSU）
  Python の OTel 計装利用者は統合されたセマンティック規約への変更を確認してください。
- **⚠ 破壊的変更** [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  AgentFileStore の行読み取り API を利用する .NET 利用者は、マージ前に新しい契約を確認してください。
- **⚠ 破壊的変更** [#7669](https://github.com/microsoft/agent-framework/pull/7669) — Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  Python の AgentFileStore 利用者は新しい行読み取り API と契約変更を確認してください。
- **⚠ 破壊的変更** [#3790](https://github.com/microsoft/agent-framework/issues/3790) — .NET: [Bug]: AG-UI hosting drops FinishReason on RunFinishedEvent, breaking client-side tool execution （Issue / closed / erikostling）
  AG-UI クライアントの実装者は FinishReason が正しく伝播する修正内容を確認してください。
- **⚠ セキュリティ** [#7828](https://github.com/microsoft/agent-framework/pull/7828) — .NET: Bump Aspire.Microsoft.Azure.Cosmos from 13.1.0 to 13.5.2 （PR / open / dependabot[bot]）
  Cosmos 利用者は Aspire.Microsoft.Azure.Cosmos の更新を確認し、依存関係を更新してください。
- **⚠ セキュリティ** [#7827](https://github.com/microsoft/agent-framework/pull/7827) — .NET: Bump Aspire.Hosting.Azure.CognitiveServices from 13.1.0 to 13.5.2 （PR / open / dependabot[bot]）
  Azure Cognitive Services ホスティング利用者はパッケージ更新による修正を取り込んでください。
- **⚠ セキュリティ** [#7826](https://github.com/microsoft/agent-framework/pull/7826) — .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 （PR / open / dependabot[bot]）
  Aspire.Hosting 利用者は 13.5.2 への更新と互換性を確認してください。
- **GA 昇格** [#4254](https://github.com/microsoft/agent-framework/issues/4254) — .NET: A2A Hosting GA （Issue / open / markwallace-microsoft）
  A2A Hosting を採用予定の利用者は GA 化の進捗と公開条件を継続確認してください。

## このリポジトリの要点

Python 1.15.0 のバージョン更新と OTel 規約統合、.NET MCP Tasks 拡張移行という互換性に関わる変更が中心です。さらに Foundry Hosted Agents の長時間実行・ステアリング対応が追加され、A2A Hosting の GA 化も追跡対象です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7812](https://github.com/microsoft/agent-framework/pull/7812) — [BREAKING] Python: Bump package versions for 1.15.0 release

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python` `breaking change` `lab`
- 変更行数: +75 / -39
- マージ日時 (UTC): `2026-08-21 23:07:06`

**変更概要**

Python パッケージ群を 1.15.0 として公開するため、各 pyproject とロックファイルのバージョンを更新しました。リリースノートも更新され、OpenAI の互換性下限が整理されています。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 34 | 1 |
| `python/packages/a2a/pyproject.toml` | 2 | 2 |
| `python/packages/ag-ui/pyproject.toml` | 2 | 2 |
| `python/packages/anthropic/pyproject.toml` | 2 | 2 |
| `python/packages/azure-cosmos/pyproject.toml` | 3 | 2 |
| `python/packages/core/pyproject.toml` | 1 | 1 |
| `python/packages/declarative/pyproject.toml` | 2 | 2 |
| `python/packages/devui/pyproject.toml` | 2 | 2 |
| `python/packages/foundry_hosting/pyproject.toml` | 2 | 2 |
| `python/packages/github_copilot/pyproject.toml` | 2 | 2 |
| `python/packages/openai/pyproject.toml` | 2 | 2 |
| `python/packages/orchestrations/pyproject.toml` | 2 | 2 |
| `python/packages/redis/pyproject.toml` | 2 | 2 |
| `python/pyproject.toml` | 2 | 2 |
| `python/uv.lock` | 15 | 13 |

</details>

<details><summary>コミット (5 件)</summary>

- `4f82e47` Bump Python package versions for 1.15.0 release
- `fd8685a` Remove hook-only formatting changes
- `0b92ba3` Minimize release lockfile changes
- `e484b01` Retain OpenAI core compatibility floor
- `7ac66fb` Raise OpenAI version and core floor

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: 複数の Python パッケージのバージョンと依存関係の互換性下限が変更されています。各パッケージを個別に固定している利用者は依存解決結果を確認してください。

**既存利用者への影響**

アプリ側の API 移行は通常不要ですが、1.15.0 へ更新する前に依存関係と OpenAI コアの互換性を検証してください。

### [#7774](https://github.com/microsoft/agent-framework/pull/7774) — .NET: [BREAKING] Migrate MCP long-running task support to the 2026-07-28 Tasks extension

- 作者: peibekwe / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +1619 / -363
- マージ日時 (UTC): `2026-08-20 23:41:46`

**変更概要**

MCP の長時間タスク対応を 2026-07-28 Tasks 拡張へ移行しました。MCP クライアント、タスクオプション、タスク対応関数を更新し、サンプルと依存関係も新しい契約に合わせています。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 4 | 3 |
| `dotnet/eng/verify-samples/AgentsSamples.cs` | 1 | 0 |
| `dotnet/samples/02-agents/ModelContextProtocol/Agent_MCP_LongRunningTask_Client/Agent_MCP_LongRunningTask_Client.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/ModelContextProtocol/Agent_MCP_LongRunningTask_Client/Program.cs` | 14 | 20 |
| `dotnet/samples/02-agents/ModelContextProtocol/Agent_MCP_LongRunningTask_Client/README.md` | 12 | 8 |
| `dotnet/samples/02-agents/ModelContextProtocol/Agent_MCP_Server_Auth/Program.cs` | 18 | 8 |
| `dotnet/samples/02-agents/ModelContextProtocol/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-McpTools/HostedMcpTools.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ToolboxMcpSkills/HostedToolboxMcpSkills.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/HostedWorkflowHandoff.csproj` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxService.cs` | 4 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/McpClientTaskExtensions.cs` | 95 | 20 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/McpTaskOptions.cs` | 48 | 18 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Microsoft.Agents.AI.Mcp.csproj` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/TaskAwareMcpClientAIFunction.cs` | 230 | 59 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `9c5c694` Migrate MCP long-running task support to the 2026-07-28 Tasks extension
- `610e124` Address PR comments.
- `ff07176` Address PR comments.
- `4c9e5f8` Address PR comments
- `313653d` Merge from main

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: McpClientTaskExtensions、McpTaskOptions、TaskAwareMcpClientAIFunction の Tasks 拡張向け契約が変わりました。既存の長時間 MCP タスク実装は新しいオプションと応答形式へ合わせる必要があります。

**既存利用者への影響**

長時間 MCP タスクを利用する .NET アプリは移行が必要です。サンプルを参照して Tasks 拡張の API と設定を更新してください。

### [#7673](https://github.com/microsoft/agent-framework/pull/7673) — [BREAKING] Python: Consolidate OTel GenAI Semantic Conventions versions

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `documentation` `python` `breaking change` `observability`
- 変更行数: +1232 / -130
- マージ日時 (UTC): `2026-08-21 01:52:44`

**変更概要**

OTel GenAI Semantic Conventions のバージョンを統合し、observability 実装とテストを一貫した規約へ更新しました。セッション、ツール、AG-UI の計装も新しい属性定義に合わせています。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 5 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 5 | 1 |
| `python/packages/core/agent_framework/_sessions.py` | 2 | 1 |
| `python/packages/core/agent_framework/_tools.py` | 8 | 3 |
| `python/packages/core/agent_framework/observability.py` | 329 | 63 |
| `python/packages/core/tests/conftest.py` | 25 | 0 |
| `python/packages/core/tests/core/test_observability.py` | 794 | 56 |
| `python/packages/core/tests/core/test_sessions.py` | 3 | 4 |
| `python/packages/core/tests/core/test_tools.py` | 29 | 0 |
| `python/samples/02-agents/observability/README.md` | 32 | 1 |

</details>

<details><summary>コミット (12 件)</summary>

- `8c42918` Consolidate OTel GenAI Semantic Conventions versions
- `0f54a9c` Address comments
- `55886b0` Refinement
- `3ae7e71` Further constraint v1.26.0 attrs
- `46e7300` Fix tests and typing
- `fc28d26` Address copilot comments
- `511fef1` Merge branch 'main' into issue-7657
- `71b98ca` Fix tests
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: 観測属性と規約バージョンの扱いが統合され、既存のテレメトリ名称・属性を参照するダッシュボードに影響する可能性があります。

**既存利用者への影響**

OTel 属性を直接参照する利用者は新しい規約名と属性を確認し、収集後のクエリやダッシュボードを更新してください。

### [#7814](https://github.com/microsoft/agent-framework/pull/7814) — .NET: Update version for 1.19.0 release

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-08-22 11:30:11`

**変更概要**

 .NET パッケージのリリースバージョンを 1.19.0 に更新しました。実装変更はなく、NuGet パッケージメタデータのバージョン整合性を保つための変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget/nuget-package.props` | 3 | 3 |

</details>

<details><summary>コミット (2 件)</summary>

- `520621f` .NET: Update version for 1.19.0 release
- `b453db5` Merge branch 'main' into new-version-bump

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開パッケージのバージョン値のみが変わり、API シグネチャや新しい抽象の追加はありません。

**既存利用者への影響**

利用者は NuGet 依存関係を必要に応じて 1.19.0 に更新するだけで、コード移行は不要です。

### [#7370](https://github.com/microsoft/agent-framework/pull/7370) — .NET: Add support for Resilient long-running and Steerable Foundry Hosted Agents

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +5703 / -59
- マージ日時 (UTC): `2026-08-22 04:09:09`

**変更概要**

Foundry Hosted Agents に、回復可能な長時間実行ワークフローとステアリング機能を追加しました。新しいサンプル、チェックポイント、デプロイ設定、設計文書を含み、バックグラウンド処理と途中指示を扱えるようにしています。

<details><summary>変更ファイル (54 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitignore` | 4 | 0 |
| `docs/decisions/0035-foundry-hosting-resilient-long-running-agents.md` | 191 | 0 |
| `dotnet/agent-framework-dotnet.slnx` | 12 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/.agentignore` | 22 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/.env.example` | 9 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/HostedSteering.csproj` | 40 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/Program.cs` | 40 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/README.md` | 76 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/azure.yaml` | 36 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/.agentignore` | 22 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/.env.example` | 5 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/HostedWorkflowResilientLongRunning.csproj` | 38 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/Program.cs` | 137 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/README.md` | 117 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/azure.yaml` | 37 | 0 |
| _... 他 39 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `a53c200` feat(foundry): add resilient background hosting
- `0c76a58` feat(foundry): complete resilient and steerable hosting
- `59a621b` fix(foundry): address resilience review feedback
- `2a0576a` feat(foundry): align resilient workflow checkpoints
- `1f39531` docs(foundry): update resilience review guidance

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい Hosted Agent のホスティング構成、チェックポイント、steering 用サンプルと設定が追加されています。既存 API の破壊的変更はタイトル上は示されていません。

**既存利用者への影響**

既存の Hosted Agents 利用者は任意で新機能を導入できます。長時間実行や途中介入を採用する場合は新サンプルと環境変数を確認してください。

### [#7813](https://github.com/microsoft/agent-framework/pull/7813) — Fix DevFlow review command whitespace handling

- 作者: moonbox3 / 状態: MERGED
- ラベル: —
- 変更行数: +76 / -2
- マージ日時 (UTC): `2026-08-21 22:38:21`

**変更概要**

DevFlow の review コマンドが入力末尾や空白を正しく扱えるよう修正しました。スクリプト、テスト、ワークフローを更新し、レビュー起動時の誤判定を防ぎます。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/scripts/review_command.js` | 13 | 0 |
| `.github/tests/test_review_command.js` | 37 | 0 |
| `.github/workflows/devflow-pr-review.yml` | 26 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `cb196ad` Fix DevFlow review command whitespace handling

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

レビューコマンドの空白処理とテストケースが改善されました。公開 API のシグネチャ変更や破壊的変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。DevFlow のワークフローを再実行して新しい空白処理を利用できます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7801 | Python: correct MCP tool argument filtering documentation | giles17 | <https://github.com/microsoft/agent-framework/pull/7801> |
| #7670 | Python: Foundry Hosted Agent Resiliency Support | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7670> |
| #7754 | Docs: add Go to the main README | qmuntal | <https://github.com/microsoft/agent-framework/pull/7754> |
| #7639 | .NET: Bump AgentMemory from 1.3.0 to 1.4.1 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7639> |
| #7423 | Python: A2UI (Agent-to-UI) support for the AG-UI adapter | ranst91 | <https://github.com/microsoft/agent-framework/pull/7423> |
| #6441 | .NET: Fix ReasoningSummary passthrough in GitHub Copilot resume config | chandramouleswaran | <https://github.com/microsoft/agent-framework/pull/6441> |
| #7778 | Bump Anthropic from 12.35.1 to 12.42.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7778> |
| #7780 | Python: Bump uv from 0.11.32 to 0.12.5 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7780> |
| #7784 | Python: Bump mypy from 2.3.0 to 2.3.1 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7784> |
| #7781 | Python: Bump ruff from 0.16.0 to 0.16.3 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7781> |
| #7783 | Python: Bump ty from 0.0.70 to 0.0.72 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7783> |
| #7734 | Python: FoundryEvals always emits arguments field for tool calls | cr-sbarbouche | <https://github.com/microsoft/agent-framework/pull/7734> |
| #7779 | Python: feat: forward function_invocation_kwargs through DevUI to agent.run | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/7779> |
| #7782 | Python: Update flit-core requirement from <4.0,>=3.11 to >=3.11,<5.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7782> |
| #7804 | Add moonbox3 as codeowner for Foundry hosting and local packages | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7804> |
| #7709 | .NET: Add feature-usage bitmask | peibekwe | <https://github.com/microsoft/agent-framework/pull/7709> |
| #7799 | Python: fix MCP tool argument shadowing the remote tool name | giles17 | <https://github.com/microsoft/agent-framework/pull/7799> |
| #7795 | Python: resolve release tags against real package directories | giles17 | <https://github.com/microsoft/agent-framework/pull/7795> |
| #7649 | .NET: Persist hosted agent state in Foundry | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7649> |
| #1893 | .NET: Add Azure Blob Storage session persistence | DeagleGross | <https://github.com/microsoft/agent-framework/pull/1893> |
| #7678 | .NET: Clarify compaction provider and chat reducer choices | ravikiranpagidi | <https://github.com/microsoft/agent-framework/pull/7678> |
| #7768 | Pin GitHub Actions to full-length commit SHAs | danfiedler-msft | <https://github.com/microsoft/agent-framework/pull/7768> |
| #7625 | Python: fix(github-copilot): forward telemetry config to client | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7625> |
| #7289 | Python: defer turn-scoped after_run providers to the agent loop boundary | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7289> |
| #7698 | Python: Harness blog part4 samples | westey-m | <https://github.com/microsoft/agent-framework/pull/7698> |
| #7766 | Python: Avoid unchanged AG-UI predictive state snapshots | alexliluz | <https://github.com/microsoft/agent-framework/pull/7766> |
| #7761 | Python: Fix A2A input handling in orchestrations | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7761> |
| #7722 | .NET: Fix A2A streaming artifact updates | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7722> |
| #7510 | Python: Preserve AG-UI tool message IDs across snapshots | jstar0 | <https://github.com/microsoft/agent-framework/pull/7510> |
| #7741 | .NET: Remove AGUI history special cases from ChatClientAgent | javiercn | <https://github.com/microsoft/agent-framework/pull/7741> |
| #7764 | .NET: Suppress Swagger UI CodeQL alert in AgentWebChat sample | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7764> |
| #7742 | .NET: Forward AG-UI context and additional properties | javiercn | <https://github.com/microsoft/agent-framework/pull/7742> |
| #7564 | .NET: agent-hooks interception contract as a first-class experimental feature | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7564> |
| #7730 | Python: Preserve structured instructions when merging chat options | giles17 | <https://github.com/microsoft/agent-framework/pull/7730> |
| #7755 | Python: fix: preserve Agent additional_properties in HandoffBuilder clones | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/7755> |
| #7762 | Update Python codeowners | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7762> |
| #7668 | .NET: Migrate remaining Foundry hosted samples to source deployment | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7668> |
| #7295 | .NET: Update AG-UI samples for latest MAF + AG-UI SDK and align with docs | danroth27 | <https://github.com/microsoft/agent-framework/pull/7295> |
| #7684 | Python: Fix AG-UI resume rejecting JSON for typed responses | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7684> |
| #7242 | Python: fix: prevent superlinear history growth by deduplicating messages in save_messages | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7242> |
| #7746 | .NET: Python: Clarify PR review comment resolution | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7746> |
| #7662 | Python: Align AG-UI run continuity | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7662> |
| #7562 | Python: add MiddlewareFailure, a first-class fatal signal for function middleware | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7562> |
| #7737 | .NET: Pass IServiceProvider to ChatClientAgent in AddAIAgent overloads | westey-m | <https://github.com/microsoft/agent-framework/pull/7737> |
| #7740 | Add es-metadata.yml for Engineering System inventory | giles17 | <https://github.com/microsoft/agent-framework/pull/7740> |
| #7731 | .NET: Fix snake_case argument names in Harness file tool descriptions | Copilot | <https://github.com/microsoft/agent-framework/pull/7731> |
| #7641 | .NET: Add session-persisted chat client routing | westey-m | <https://github.com/microsoft/agent-framework/pull/7641> |
| #7721 | .NET: Fix release build analyzer failures | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7721> |
| #7713 | .NET: Update version for 1.18.0 release | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7713> |
| #7706 | Python: Clarify function-loop spec update guidance | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7706> |
| #7500 | Python: Restrict workflow type deserialization | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7500> |
| #7644 | Bump ty from 0.0.64 to 0.0.70 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7644> |
| #7645 | Python: Bump flit from 3.12.0 to 4.0.2 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7645> |
| #7695 | Python: clarify skill script argument guidance | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7695> |
| #7674 | .NET: Fix declarative workflows deep research sample | peibekwe | <https://github.com/microsoft/agent-framework/pull/7674> |
| #7636 | Python: Add a global workflow checkpoint type registry | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7636> |
| #7606 | Python: Surface A2A preview consent URLs | LobsterQBA | <https://github.com/microsoft/agent-framework/pull/7606> |
| #7412 | .NET: Add Cosmos chat history retrieval API | ilia-sokolov | <https://github.com/microsoft/agent-framework/pull/7412> |
| #7648 | .NET: Add Foundry hosted session and user identity pass-through | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7648> |
| #7693 | Python: Fix Agent Lightning installation link | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7693> |
| #7650 | .NET: Allow agents to opt into concurrent tool invocation | ump45nose | <https://github.com/microsoft/agent-framework/pull/7650> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7835 | Python: Pass MCP server tools to Claude and Copilot agents | open | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7835> |
| PR | #7798 | Python: Finalize abandoned functional workflow streams without ContextVar leaks | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7798> |
| PR | #7832 | Python: raise instead of silently returning a stale checkpoint from get_latest | open | dev404ai | <https://github.com/microsoft/agent-framework/pull/7832> |
| PR | #7830 | Python: Fix checkpoint state isolation | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7830> |
| PR | #7829 | .NET: Bump AWSSDK.Extensions.Bedrock.MEAI from 4.0.6.10 to 4.0.101.8 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7829> |
| PR | #7828 | .NET: Bump Aspire.Microsoft.Azure.Cosmos from 13.1.0 to 13.5.2 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7828> |
| PR | #7827 | .NET: Bump Aspire.Hosting.Azure.CognitiveServices from 13.1.0 to 13.5.2 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7827> |
| PR | #7826 | .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7826> |
| PR | #7770 | Python: fix(python): separate provider input from UI snapshot in AG-UI service-session mode | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7770> |
| PR | #7757 | Python: fix: make concurrent FileCheckpointStorage saves not race on a shared temp path | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/7757> |
| PR | #7765 | Python: fix: preserve URL query parameters in DefaultHttpRequestHandler | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/7765> |
| PR | #7823 | Python: fix(orchestrations): preserve multimodal content during agent handoff | open | manideep-malyala | <https://github.com/microsoft/agent-framework/pull/7823> |
| PR | #7819 | Python: record gen_ai.client.operation.duration for failed chat and embedding calls | open | venkat-uk | <https://github.com/microsoft/agent-framework/pull/7819> |
| PR | #7803 | docs: Improve `AsFunctionTool` Disclaimers  | open | azarboon | <https://github.com/microsoft/agent-framework/pull/7803> |
| PR | #7808 | Python: feat(ag-ui): add emit_messages_snapshot config to suppress terminal snapshot | open | manideep-malyala | <https://github.com/microsoft/agent-framework/pull/7808> |
| PR | #7792 | .NET: added Mem0Sharp integration for in-memory storage in agent samples. | open | jihadkhawaja | <https://github.com/microsoft/agent-framework/pull/7792> |
| PR | #7817 | .NET: Fix flaky Foundry recovery test synchronization | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7817> |
| PR | #7772 | Python: feat(core): add max_duration_seconds bound and stop_reason signal to tool loop (#7587) | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/7772> |
| PR | #7815 | .NET: expose OpenTelemetryAgent.DefaultSourceName | open | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7815> |
| PR | #7738 | .NET: Map workflow lifecycle to AG-UI | open | javiercn | <https://github.com/microsoft/agent-framework/pull/7738> |
| PR | #7704 | Python: fix(mcp): name the real error when a cancel scope masks MCP init failures | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7704> |
| PR | #7777 | Python: docs: replace the stale learn-docs placeholder with the live links | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7777> |
| PR | #7703 | Python: Allow programmatic OTel service name, resource attributes, and OTLP exporter config | open | droideronline | <https://github.com/microsoft/agent-framework/pull/7703> |
| PR | #7790 | Python: recursively serialize nested container values | open | CoffeeDrivenCoder | <https://github.com/microsoft/agent-framework/pull/7790> |
| PR | #7776 | Python: Fix AG-UI workflow-as-agent approval resumes | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7776> |
| PR | #7705 | Python: fix streaming when GenAI tracing replaces the raw response (#7461) | open | madanmishra1223 | <https://github.com/microsoft/agent-framework/pull/7705> |
| PR | #7712 | Python: Return caller-owned checkpoints from InMemoryCheckpointStorage | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7712> |
| PR | #7697 | Python: Isolate checkpoint state from live workflow state across restoration and storage boundaries | open | karandhaodiyal28-hash | <https://github.com/microsoft/agent-framework/pull/7697> |
| PR | #7791 | Python: Register built-in orchestration types for checkpoint restore | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7791> |
| PR | #7786 | Bump github/codeql-action/init from 4.37.3 to 4.37.7 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7786> |
| PR | #7785 | Bump github/codeql-action/analyze from 4.37.3 to 4.37.7 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7785> |
| PR | #7747 | Python: fix(python): project the per-call effective tool set on agent-hooks pre_model_call | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7747> |
| PR | #7724 | Python: Include arguments for zero-argument Foundry eval tool calls | open | luisangelrod | <https://github.com/microsoft/agent-framework/pull/7724> |
| PR | #7696 | Python: Add Foundry-Features header to toolbox requests | open | Oxygen56 | <https://github.com/microsoft/agent-framework/pull/7696> |
| PR | #7820 | Python: Harden FoundryCheckpointStore: apply RestrictedUnpickler allowlist on checkpoint load | closed | herdiyana256 | <https://github.com/microsoft/agent-framework/pull/7820> |
| PR | #7664 | Python: .NET: Make skill resource guidance rule-only | closed | samrusani | <https://github.com/microsoft/agent-framework/pull/7664> |
| PR | #3978 | .NET: Example is needed for the new AIContextProvider | closed | joslat | <https://github.com/microsoft/agent-framework/pull/3978> |
| PR | #7280 | .NET: Bump AgentMemory.AgentFramework from 1.2.0 to 1.3.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7280> |
| PR | #7626 | Python: Allow checkpoint deserialization for orchestrations | closed | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7626> |
| PR | #7523 | Python: Add tool concurrency groups and sequential execution order for same-message calls | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7523> |
| PR | #7692 | Python: Execute every approved tool in a parallel AG-UI HITL batch | closed | AAH20 | <https://github.com/microsoft/agent-framework/pull/7692> |
| PR | #7565 | Python: Capture workflow telemetry input and output | closed | slcnx | <https://github.com/microsoft/agent-framework/pull/7565> |
| PR | #7473 | Python: fix(python): prevent local tool approvals from serializing as MCP responses | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7473> |
| PR | #7494 | Python: fix(redis): scope RedisHistoryProvider keys by source_id | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7494> |
| PR | #3008 | .NET: Add Function Tool Use Cases | closed | azarboon | <https://github.com/microsoft/agent-framework/pull/3008> |
| PR | #7793 | Python: fix get-started samples env wiring and FunctionalWorkflow.build() removal | closed | linwendeng | <https://github.com/microsoft/agent-framework/pull/7793> |
| PR | #7800 | Python: Preserve structured output on streaming harness tool-approval path | closed | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7800> |
| PR | #1822 | .NET: Add SuppressAssistantName option to ChatClientAgentOptions | closed | T0mSIlver | <https://github.com/microsoft/agent-framework/pull/1822> |
| PR | #7586 | Bump github/codeql-action/init from 4.37.3 to 4.37.6 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7586> |
| PR | #7585 | Bump github/codeql-action/analyze from 4.37.3 to 4.37.6 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7585> |
| PR | #7603 | Python: fix(openai): report the background cause when a tool result is rejected | closed | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7603> |
| PR | #7676 | Python: serialize per-step checkpoint saves in functional workflows | closed | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7676> |
| PR | #7526 | Python: Allow branching from hosted Foundry conversations | closed | cecheta | <https://github.com/microsoft/agent-framework/pull/7526> |
| PR | #7579 | Bump AGUI.Abstractions from 0.0.4 to 0.0.5 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7579> |
| PR | #7719 | Python: Add an AgentFuse function middleware sample | closed | MkaliezZ | <https://github.com/microsoft/agent-framework/pull/7719> |
| PR | #7468 | Python: feat(core): migrate MCP integration to mcp 2.0.0 | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7468> |
| PR | #7759 | Python: add OpenUI generative UI end-to-end sample | closed | vishxrad | <https://github.com/microsoft/agent-framework/pull/7759> |
| PR | #7464 | Python: fix: bound background_agents_wait_for_first_completion with a timeout | closed | HUAN2022A | <https://github.com/microsoft/agent-framework/pull/7464> |
| PR | #7556 | Python: Fix OpenTelemetry logging handler registration on root logger | closed | Caoxuyang | <https://github.com/microsoft/agent-framework/pull/7556> |
| PR | #7732 | Python: Surface mid-stream oauth_consent_request items in Foundry hosting | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/7732> |
| PR | #7566 | Python: Normalize SDK role enums to str when creating Messages | closed | westey-m | <https://github.com/microsoft/agent-framework/pull/7566> |
| PR | #4483 | .NET: fix: pass IServiceProvider to ChatClientAgent in AddAIAgent overloads | closed | max-montes | <https://github.com/microsoft/agent-framework/pull/4483> |
| PR | #2547 | .NET: Add name-derived MapAGUIServer overloads | closed | javiercn | <https://github.com/microsoft/agent-framework/pull/2547> |
| PR | #6643 | .NET: ADR for unified dynamic agent resolution across AG-UI, Responses, and A2A | closed | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6643> |
| PR | #6659 | .NET: Add factory delegate overload to MapAGUI for per-request agent resolution | closed | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6659> |
| PR | #6251 | .NET: Add MapAGUI overload that resolves the agent per request via a factory | closed | darthmolen | <https://github.com/microsoft/agent-framework/pull/6251> |
| PR | #2343 | .NET: MapAGUI supports per-request agent selection | closed | halllo | <https://github.com/microsoft/agent-framework/pull/2343> |
| PR | #3162 | .NET: Support dynamic agent resolution in AG-UI endpoints | closed | TheEagleByte | <https://github.com/microsoft/agent-framework/pull/3162> |
| PR | #7675 | .NET: Align file tool descriptions with generated schema argument names | closed | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7675> |
| PR | #3366 | .NET: Extend agent dynamic creation support | closed | chrisdaiii | <https://github.com/microsoft/agent-framework/pull/3366> |
| PR | #2700 | .NET: Fix AG-UI tool message ordering for multi-turn tool calls (#2699) | closed | emilmuller | <https://github.com/microsoft/agent-framework/pull/2700> |
| PR | #1711 | .NET: Introduce MutableChatClientAgent | closed | PederHP | <https://github.com/microsoft/agent-framework/pull/1711> |
| PR | #2282 | .NET: support agentThread management in OpenAI Responses | closed | DeagleGross | <https://github.com/microsoft/agent-framework/pull/2282> |
| PR | #2799 | .NET: Add Redis checkpoint store implementation for workflows | closed | ysya | <https://github.com/microsoft/agent-framework/pull/2799> |
| PR | #3043 | .NET: MemoryCacheExtensions semaphore pooling | closed | MarkCiliaVincenti | <https://github.com/microsoft/agent-framework/pull/3043> |
| PR | #3367 | .NET: fix: include MessageId in AGUIToolMessage to ChatMessage transformation | closed | MaciejWarchalowski | <https://github.com/microsoft/agent-framework/pull/3367> |
| PR | #2505 | .NET: Port ContextualFunctionProvider from SK | closed | westey-m | <https://github.com/microsoft/agent-framework/pull/2505> |
| PR | #7498 | Pin GitHub Actions to full-length commit SHAs | closed | OssSecurityBot | <https://github.com/microsoft/agent-framework/pull/7498> |
| PR | #4761 | .NET: Fix AG-UI multimodal user message handling | closed | thoemmi | <https://github.com/microsoft/agent-framework/pull/4761> |
| PR | #7206 | Python: fix declarative workflow DevUI sample and JoinExecutor Messag… | closed | amit12cool | <https://github.com/microsoft/agent-framework/pull/7206> |
| PR | #7066 | Python: feat: add Amazon Bedrock Knowledge Base tool and context provider | closed | PVidyadhar | <https://github.com/microsoft/agent-framework/pull/7066> |
| PR | #6862 | Python: Fix Foundry hosted session SDK calls | closed | ekkoitac | <https://github.com/microsoft/agent-framework/pull/6862> |
| PR | #6831 | Python: Add realtime agent ADR | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6831> |
| PR | #7576 | Python: Fix handoff target invoked with no messages when response has no text | closed | cr-sbarbouche | <https://github.com/microsoft/agent-framework/pull/7576> |
| PR | #7549 | Python: Fix group chat invoking a re-selected participant with no messages | closed | giles17 | <https://github.com/microsoft/agent-framework/pull/7549> |
| PR | #7354 | Python: Clear stale service session on full-history replay | closed | hsusul | <https://github.com/microsoft/agent-framework/pull/7354> |
| PR | #7686 | Python: return caller-owned checkpoints from InMemoryCheckpointStorage reads | closed | dev404ai | <https://github.com/microsoft/agent-framework/pull/7686> |
| PR | #6912 | .NET: Add 'advertise' frontmatter option to control automatic skill advertisement | closed | ron-clover | <https://github.com/microsoft/agent-framework/pull/6912> |
| Issue | #7834 | .NET: Proposal: Integrating Foundgine as a Semantic Execution Layer for AI Agents | open | CristianBarragan | <https://github.com/microsoft/agent-framework/issues/7834> |
| Issue | #7787 | Python: [Bug]: Functional workflow ResponseStream leaks ContextVar tokens across tasks when abandoned mid-iteration (break before exhaustion) | open | snovik75 | <https://github.com/microsoft/agent-framework/issues/7787> |
| Issue | #7833 | Python: Proposal: official HOL Guard FunctionMiddleware example for protected tool calls | open | kantorcodes | <https://github.com/microsoft/agent-framework/issues/7833> |
| Issue | #7831 | Python: [Bug]: get_latest returns a stale checkpoint when the newest one cannot be decoded | open | dev404ai | <https://github.com/microsoft/agent-framework/issues/7831> |
| Issue | #7825 | .NET: [Bug]: Hosted MCP calls remain sequential despite parallel_tool_calls=true | open | riteshksriv | <https://github.com/microsoft/agent-framework/issues/7825> |
| Issue | #7824 | .NET: [Feature]: Support MCP 2026-07-28 specification (including Tasks Extension) in Agent Framework .NET MCP Connector | open | Pratik-Shah | <https://github.com/microsoft/agent-framework/issues/7824> |
| Issue | #7710 | Python: AG-UI snapshot replay with service sessions blocks Foundry Hosted Agents | open | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7710> |
| Issue | #7822 | Bug: Multimodal content is dropped during agent handoff in orchestrator | open | manideep-malyala | <https://github.com/microsoft/agent-framework/issues/7822> |
| Issue | #7821 | Python: [Bug]: agent-loop marker reaches the provider SDK (core 1.15.0) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7821> |
| Issue | #7818 | Python: gen_ai.client.operation.duration is never recorded for failed chat or embedding calls | open | venkat-uk | <https://github.com/microsoft/agent-framework/issues/7818> |
| Issue | #7816 | .NET: [Bug]: Stabilize Foundry recovery test checkpoint synchronization | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7816> |
| Issue | #7763 | .NET: Preserve nested executor identity in workflow lifecycle events | open | javiercn | <https://github.com/microsoft/agent-framework/issues/7763> |
| Issue | #7810 | Python: Python AG-UI Magentic  TEXT_MESSAGE_END emmitted after RUN_FINISHED when plan review is enabled and resume payload has empty review list | open | dgsear | <https://github.com/microsoft/agent-framework/issues/7810> |
| Issue | #7811 | .NET: [Bug]: AGUIChatClient client-tool loop duplicates persisted messages with MapAGUIServer + AgentSessionStore | open | mip1983 | <https://github.com/microsoft/agent-framework/issues/7811> |
| Issue | #7809 | Python: FHA LRA workflow checkpoint gap investigation | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7809> |
| Issue | #7707 | Python: python AG-UI : workflow.as_Agent + AgentFrameworkAgent resume return expected Content, got str | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7707> |
| Issue | #7753 | .NET: Docs: Add Go to the main README | closed | qmuntal | <https://github.com/microsoft/agent-framework/issues/7753> |
| Issue | #7807 | Python: Python AG-UI: terminal MessagesSnapshotEvent always rewrites full transcript; prefer incremental-only option | open | likebean | <https://github.com/microsoft/agent-framework/issues/7807> |
| Issue | #7806 | .NET: A2A Agent release | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/7806> |
| Issue | #7796 | .NET: Defer checkpoint cleanup until workflow restoration succeeds | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7796> |
| Issue | #7714 | Python: [Bug]: `FoundryEvals` omits `arguments` for zero-argument tool calls, causing tool-aware Foundry evaluators to fail | closed | arnabbiswas1 | <https://github.com/microsoft/agent-framework/issues/7714> |
| Issue | #7805 | .NET: [Feature]: Please add example to store conversation in database (.NET API Hosting) | open | hintdesk | <https://github.com/microsoft/agent-framework/issues/7805> |
| Issue | #7788 | Python: [Bug]: SerializationMixin does not recursively serialize nested containers | open | CoffeeDrivenCoder | <https://github.com/microsoft/agent-framework/issues/7788> |
| Issue | #7789 | Python: Built-in group chat message types are rejected during checkpoint restore | open | droideronline | <https://github.com/microsoft/agent-framework/issues/7789> |
| Issue | #7797 | Python: Hosted Responses sample loses invoke_agent token telemetry with latest hosting stack | open | singankit | <https://github.com/microsoft/agent-framework/issues/7797> |
| Issue | #7802 | Python: [Feature]: Compose AG-UI snapshots with HistoryProvider, pagination, and compaction | open | likebean | <https://github.com/microsoft/agent-framework/issues/7802> |
| Issue | #7773 | .NET: [Feature]: Update MCP Tasks to support 2026-07-28 protocol | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/7773> |
| Issue | #7745 | .NET: Add session-scoped shared state support for AG-UI client agents | closed | danroth27 | <https://github.com/microsoft/agent-framework/issues/7745> |
| Issue | #7760 | Python: .NET: [Feature]: Override Handoff routing decision implementation | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/7760> |
| Issue | #7767 | Python: [Bug]: Streaming Agent telemetry fails across FastAPI/Azure Functions response context | open | websterian | <https://github.com/microsoft/agent-framework/issues/7767> |
| Issue | #7771 | Python: [Bug]: python/README.md still says "Learn docs are coming soon" | open | atty57 | <https://github.com/microsoft/agent-framework/issues/7771> |
| Issue | #7694 | .NET: [Bug]: StreamingRun.WatchStreamAsync() can silently stop yielding events after a long-running executor turn completes successfully | open | Reza-Remonel | <https://github.com/microsoft/agent-framework/issues/7694> |
| Issue | #7769 | Python: Add MLFlow as a monitoring backend option in our docs | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7769> |
| Issue | #7700 | Python: [Bug]: SkillsProvider stringifies structured Anthropic instructions and disables prompt caching | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/7700> |
| Issue | #7723 | Python: [Feature]: Add an AgentFuse FunctionMiddleware sample | closed | MkaliezZ | <https://github.com/microsoft/agent-framework/issues/7723> |
| Issue | #7750 | Python: [Bug]: HandoffBuilder drops Agent additional properties during execution | closed | ermattson | <https://github.com/microsoft/agent-framework/issues/7750> |
| Issue | #7756 | .NET: Python: Best practice for conversation history when SequentialBuilder is used as workflow.as_agent() with a session? | open | likebean | <https://github.com/microsoft/agent-framework/issues/7756> |
| Issue | #7758 | Python: [Feature]: Add an OpenUI generative UI end-to-end sample | closed | vishxrad | <https://github.com/microsoft/agent-framework/issues/7758> |
| Issue | #7749 | .NET: Python: [Bug]: Declarative HTTP action drops existing URL query parameters | open | ermattson | <https://github.com/microsoft/agent-framework/issues/7749> |
| Issue | #7748 | Python: [Bug]: Concurrent FileCheckpointStorage saves fail due to shared temporary path | open | ermattson | <https://github.com/microsoft/agent-framework/issues/7748> |
| Issue | #7743 | .NET: [Bug]: Surface Foundry OAuth consent response items as typed agent content | open | javiercn | <https://github.com/microsoft/agent-framework/issues/7743> |
| Issue | #7735 | .NET: [Feature]: Support resumable GitHubCopilotAgent permission requests across turns | open | javiercn | <https://github.com/microsoft/agent-framework/issues/7735> |
| Issue | #7736 | .NET: [Bug]: CopilotStudioAgent drops message activities during streaming | open | javiercn | <https://github.com/microsoft/agent-framework/issues/7736> |
| Issue | #7733 | .NET: [Bug]: Protocol hosting ignores AIAgent lifetimes and lacks consistent request-time selection | open | javiercn | <https://github.com/microsoft/agent-framework/issues/7733> |
| Issue | #7744 | Python: [Bug]: #4991 regresses when any ChatMiddleware is attached — compaction's summary is lost while its exclusion flags persist | open | jjwong0915 | <https://github.com/microsoft/agent-framework/issues/7744> |
| Issue | #7739 | Add es-metadata.yml for Engineering System inventory registration | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7739> |
| Issue | #7711 | Workflow UX: conversational agent steps, runtime goto, and state mutation tool | open | likebean | <https://github.com/microsoft/agent-framework/issues/7711> |
| Issue | #7715 | Python: Support agent-to-agent communication across WorkflowExecutor boundaries | open | droideronline | <https://github.com/microsoft/agent-framework/issues/7715> |
| Issue | #7716 | Python: .NET: skip agent-hooks output buffering when no interceptor enforces the output points | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7716> |
| Issue | #7717 | .NET: agent-hooks: bounded-exposure incremental streaming mode (buffered_output: false) | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7717> |
| Issue | #7718 | .NET: allow a custom JsonSerializerOptions (source-generated) for agent-hooks wire projection | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7718> |
| Issue | #7725 | Python: [Bug]: agent_framework_foundry_hosting._responses:Content type - 'oauth_consent_request' is not supported yet. | open | sunandaunni-eaton | <https://github.com/microsoft/agent-framework/issues/7725> |
| Issue | #7728 | .NET: interceptable ChatHistoryProvider and AIContextProvider on an existing ChatClientAgent | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7728> |
| Issue | #7726 | .NET: addressable decorator positions in ChatClientAgent's default chat pipeline | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7726> |
| Issue | #7729 | .NET: run-scoped context with lifecycle hooks for agent decorators | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7729> |
| Issue | #7727 | .NET: addressable decorator positions in ChatClientAgent's default chat pipeline | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7727> |
| Issue | #7720 | .NET: Release build fails on CA1873 and net9 ILLink analyzer crash | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/7720> |
| Issue | #7689 | .NET: Python: FoundryToolbox does not send the Foundry-Features header or honor FOUNDRY_AGENT_TOOLSET_FEATURES | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7689> |
| Issue | #7690 | Python: FoundryToolbox forwards a stale x-agent-foundry-call-id after the first request | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7690> |
| Issue | #7701 | .NET: Avoid IHttpContextAccessor dependency for claims-based agent isolation | open | danroth27 | <https://github.com/microsoft/agent-framework/issues/7701> |
| Issue | #7702 | Python: [Bug]: configure_otel_providers() has no way to set service name, resource attributes, or OTLP exporter config programmatically | open | droideronline | <https://github.com/microsoft/agent-framework/issues/7702> |
| Issue | #7699 | Python: [Bug]: MCP HTTP auth failures (401) surface as "Cancelled via cancel scope ..." instead of the actual error | open | Katilho | <https://github.com/microsoft/agent-framework/issues/7699> |
| Issue | #7691 | Python: [Bug]: Skill runner instructions contradict array-capable args schema | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7691> |
| Issue | #7629 | .NET: [Bug]: AGUI Client does not map RUN_STARTED.threadId to ChatResponseUpdate.ConversationId | closed | mip1983 | <https://github.com/microsoft/agent-framework/issues/7629> |
| Issue | #7663 | .NET: [Bug]: skills prompt causes reads of nonexistent example resources | closed | KOTerra | <https://github.com/microsoft/agent-framework/issues/7663> |
| Issue | #7524 | Python: [Feature]: Foundry Hosting - Support conversation branching | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7524> |
| Issue | #7344 | Python: [Feature]: DevUI doesn't accept function_invocation_kwargs | closed | arnabbiswas1 | <https://github.com/microsoft/agent-framework/issues/7344> |
| Issue | #7657 | Python: Consolidate OTel GenAI Semantic Conventions verisioning | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7657> |
| Issue | #7422 | .NET: [Feature]: Dotnet feature-usage bitmask | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7422> |
| Issue | #7624 | Python: [Bug]: GitHubCopilotAgent drops telemetry config when starting the CLI | closed | noamkeidar | <https://github.com/microsoft/agent-framework/issues/7624> |
| Issue | #7236 | Python: [Bug]: `CompactionProvider.after_run` fires once per `AgentLoopMiddleware` iteration, not once per real user turn - digests same-task tool results mid-task | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7236> |
| Issue | #7490 | Python: [Bug]: with `predict_state_config` set, EVERY tool result emits a full `StateSnapshotEvent` — including for tools the config never names | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7490> |
| Issue | #7620 | Python: [Bug]: A2A INPUT_REQUIRED tasks are auto-answered instead of pausing for the caller | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7620> |
| Issue | #7573 | Python: [Bug]: Handoff target can be invoked with no messages when the response cleans to empty | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7573> |
| Issue | #7456 | Python: [Bug]: A2AAgent as a group chat participant crashes with "At least one message is required" on empty-cache turns | closed | greghorne20 | <https://github.com/microsoft/agent-framework/issues/7456> |
| Issue | #5868 | .NET: [Bug]: A2A streaming handler emits one Message per chat-client update with shared messageId and empty Parts on bookend chunks | closed | glisti | <https://github.com/microsoft/agent-framework/issues/5868> |
| Issue | #7491 | Python: [Bug]: AG-UI `MESSAGES_SNAPSHOT` re-factors streamed messages under fresh ids — the reference `@ag-ui/client` merge then renders every mid-run tool call after the final text | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7491> |
| Issue | #7299 | .NET: Fix AGUI hack in ChatClientAgent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7299> |
| Issue | #6600 | .NET: [Bug]: AGUIChatClient doesnt forward/populate AdditionalProperties | closed | MD-V | <https://github.com/microsoft/agent-framework/issues/6600> |
| Issue | #7563 | Python: .NET: agent-hooks first-class integration (Python parity) | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7563> |
| Issue | #7667 | .NET: Migrate remaining Foundry hosted samples to source deployment | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7667> |
| Issue | #7623 | .NET: Update AG-UI samples to current SDK patterns | closed | danroth27 | <https://github.com/microsoft/agent-framework/issues/7623> |
| Issue | #4453 | .NET: [Bug]: Microsoft.Agents.AI.Hosting Add AddAIAgent Tool call is not adding the service provider to the agent. | closed | dominioncfg | <https://github.com/microsoft/agent-framework/issues/4453> |
| Issue | #7211 | Python: [Bug]: per-service-call history persistence re-appends already-persisted messages | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7211> |
| Issue | #7413 | Python: [Feature]:  Allow devs to register custom types for checkpoint serialization and deserialization | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7413> |
| Issue | #7513 | Python: Python : AG-UI Magentic plan-review resume rejects JSON review payload(expects typed MagenticplanReviewResponse) | closed | dgsear | <https://github.com/microsoft/agent-framework/issues/7513> |
| Issue | #7522 | Python: a first-class fatal signal for function middleware (fail-closed escape from the auto-invoke loop) | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7522> |
| Issue | #6032 | .NET: [Feature]: .NET Support for oauth_consent_request via AGUI | closed | staned-pcs | <https://github.com/microsoft/agent-framework/issues/6032> |
| Issue | #5351 | .NET: [Bug]: AG UI ChatClientAgent UsageDetails is null | closed | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/5351> |
| Issue | #3790 | .NET: [Bug]: AG-UI hosting drops FinishReason on RunFinishedEvent, breaking client-side tool execution | closed | erikostling | <https://github.com/microsoft/agent-framework/issues/3790> |
| Issue | #6911 | .NET: [Bug]: invalid_payload after the AI responeded with reasoning role. | closed | karljucutan | <https://github.com/microsoft/agent-framework/issues/6911> |
| Issue | #5819 | .NET: [Feature]: Unable to restrict AG-UI streaming to a single agent | closed | kpobb1989 | <https://github.com/microsoft/agent-framework/issues/5819> |
| Issue | #4923 | .NET: [Bug]: TextContent.AdditionalProperties dropped by AsAGUIEventStreamAsync for TEXT_MESSAGE_START/TEXT_MESSAGE_CONTENT events | closed | joelfransson | <https://github.com/microsoft/agent-framework/issues/4923> |
| Issue | #1774 | .NET: Add support for AG-UI protocol in .NET | closed | javiercn | <https://github.com/microsoft/agent-framework/issues/1774> |
| Issue | #4508 | Microsoft.Agents.AI.AGUI naming is misleading since it does not implement AIAgent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/4508> |
| Issue | #3216 | .NET: [Bug]: AG-UI Client event type of agent response | closed | jasmin-software | <https://github.com/microsoft/agent-framework/issues/3216> |
| Issue | #6224 | .NET: [Feature]: AG-UI multi-modal input support | closed | ravijariwala | <https://github.com/microsoft/agent-framework/issues/6224> |
| Issue | #4826 | .NET: [Bug]: GitHubCopilotAgent should translate Copilot SDK permission.requested events to AG-UI human-in-the-loop events | closed | ShrayRastogi | <https://github.com/microsoft/agent-framework/issues/4826> |
| Issue | #6220 | .NET: [Bug]: Approval response false throwing error in AGUI Client | closed | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/6220> |
| Issue | #6756 | .NET: AGUI Interrupts support | closed | sheng-jie | <https://github.com/microsoft/agent-framework/issues/6756> |
| Issue | #7287 | .NET: [Feature]: Support native AG-UI interrupt/resume events for Human-in-the-Loop | closed | bazazer | <https://github.com/microsoft/agent-framework/issues/7287> |
| Issue | #7672 | .NET: [Bug]: Harness file tool descriptions name arguments in snake_case, but the generated schema is camelCase | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7672> |
| Issue | #3002 | .NET: Workflow as AG-UI agent does not recognise client-side tools | closed | Dazfl | <https://github.com/microsoft/agent-framework/issues/3002> |
| Issue | #2959 | .NET: Azure AI Projects agent-mode silently ignores per-request tools (AG-UI/ChatOptions.Tools) | closed | MaciejSzczepanskiRedslim | <https://github.com/microsoft/agent-framework/issues/2959> |
| Issue | #6865 | [Feature]: Allow switching from provider A to provider B without losing the chat history to the new provider | closed | forestmaxime | <https://github.com/microsoft/agent-framework/issues/6865> |
| Issue | #2081 | .NET: Support for intermediate state from Tools for AG-UI | closed | anktsrkr | <https://github.com/microsoft/agent-framework/issues/2081> |
| Issue | #6010 | .NET: [Bug]: AG-UI host generates as many text messages as completions | closed | tlecomte | <https://github.com/microsoft/agent-framework/issues/6010> |
| Issue | #6967 | .NET: [Bug]: FilterServerToolsFromMixedToolInvocationsAsync causes HTTP 400 when LLM returns mixed frontend + server-side tool calls in AGUI hosted mode | closed | Jun-GY | <https://github.com/microsoft/agent-framework/issues/6967> |
| Issue | #4177 | .NET: [Feature]: Automatic translation of StateBag mutations and streaming tool-argument deltas to AG-UI state events | closed | adner | <https://github.com/microsoft/agent-framework/issues/4177> |
| Issue | #4635 | .NET: [Bug]: Not all DataContent properties are propagated from server to client via AG-UI | closed | Dazfl | <https://github.com/microsoft/agent-framework/issues/4635> |
| Issue | #3215 | .NET: [Bug]: Copilot Studio Agent and AG-UI Protocol Integration | closed | george-zhurakhivskyi8angelogordon | <https://github.com/microsoft/agent-framework/issues/3215> |
| Issue | #4825 | .NET [Feature]: GitHubCopilotAgent should translate Copilot SDK permission.requested events to AG-UI human-in-the-loop events | closed | ShrayRastogi | <https://github.com/microsoft/agent-framework/issues/4825> |
| Issue | #2988 | .NET: Support dynamic agent resolution in AG-UI endpoints (MapAGUI with factory delegate) | closed | mattbrailsford | <https://github.com/microsoft/agent-framework/issues/2988> |
| Issue | #6519 | .NET: [Feature]: Make AG-UI hosting (MapAGUI) transport-extensible – currently SSE-only despite the AGUI transport-agnostic spec | closed | adamRoyd | <https://github.com/microsoft/agent-framework/issues/6519> |
| Issue | #5614 | .NET: [Feature]: Convert Microsoft.Agents.AI.Hosting.AGUI.AspNetCore to .NET Standard | closed | kpobb1989 | <https://github.com/microsoft/agent-framework/issues/5614> |
| Issue | #6479 | .NET: [Bug]: Frontend tools break persisted chat history | closed | kpobb1989 | <https://github.com/microsoft/agent-framework/issues/6479> |
| Issue | #2448 | .NET: Port Contextual Function Selection from SK to AF | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/2448> |
| Issue | #3723 | .NET: [Bug]: OpenTelemetry is not emitted when Agent is triggered through AGUI | closed | viul-sc | <https://github.com/microsoft/agent-framework/issues/3723> |
| Issue | #3729 | .NET: [Bug]:  AG-UI ASP.NET Core endpoint crashes on multimodal user messages (content array) | closed | thoemmi | <https://github.com/microsoft/agent-framework/issues/3729> |
| Issue | #2702 | .NET ag-ui with openAI responses api | closed | jcageman | <https://github.com/microsoft/agent-framework/issues/2702> |
| Issue | #2517 | .NET: Thread persistence does not work by default in MapAGUI | closed | DavidParks8 | <https://github.com/microsoft/agent-framework/issues/2517> |
| Issue | #2179 | .NET: Add Support for Passing Agent Name (String) Instead of AIAgent Instance to MapAGUI Method | closed | Varorbc | <https://github.com/microsoft/agent-framework/issues/2179> |
| Issue | #3365 | .NET: [Bug]: AGUI AGUIMessage -> ChatMessage transformation issue on AGUIToolMessage | closed | MaciejWarchalowski | <https://github.com/microsoft/agent-framework/issues/3365> |
| Issue | #2558 | .NET - AG-UI Support more AG-UI event types. | closed | javiercn | <https://github.com/microsoft/agent-framework/issues/2558> |
| Issue | #2699 | .NET: AG-UI: Multi-turn tool calls replay produces invalid OpenAI tool_call history | closed | emilmuller | <https://github.com/microsoft/agent-framework/issues/2699> |
| Issue | #2510 | .NET: Sync AG-UI conversation history from backend | closed | Kermittt | <https://github.com/microsoft/agent-framework/issues/2510> |
| Issue | #2637 | .NET AG-UI: parentMessageId is serialized with a null value which breaks validation in @ag-ui/core client | closed | bdelayen | <https://github.com/microsoft/agent-framework/issues/2637> |
| Issue | #3475 | .NET: [Bug]: inconsistent usage of ag_ui_thread_id and agui_thread_id in the ChatOptions AdditionalProperties | closed | nca-pel | <https://github.com/microsoft/agent-framework/issues/3475> |
| Issue | #3752 | .NET: [Bug]: [AG-UI] Usage and Annotations are not present | closed | ecc-parity-check | <https://github.com/microsoft/agent-framework/issues/3752> |
| Issue | #3962 | .NET: [Bug]: [AG-UI] MapAGUI reuses the same messageId for consecutive TOOL_CALL_RESULT SSE events | closed | gerardogreco-psen | <https://github.com/microsoft/agent-framework/issues/3962> |
| Issue | #3769 | .NET: Python: .NET: [Feature]: Decouple AG-UI Protocol from Transport | closed | castlenthesky | <https://github.com/microsoft/agent-framework/issues/3769> |
| Issue | #3823 | .NET: [Bug]: [AG-UI] [Workflows] Session is always null in the middleware | closed | ecc-parity-check | <https://github.com/microsoft/agent-framework/issues/3823> |
| Issue | #4342 | .NET: [Bug]: When converting from AGUIToolMessage to ChatMessage, the MessageId is lost. | closed | IharYakimush | <https://github.com/microsoft/agent-framework/issues/4342> |
| Issue | #4869 | .NET: [Bug]: AGUIChatClient sets ConversationId in response despite being stateless | closed | ArturDorochowicz | <https://github.com/microsoft/agent-framework/issues/4869> |
| Issue | #3520 | .NET: [Feature]: Expose USAGE details to the front end | closed | mbatista | <https://github.com/microsoft/agent-framework/issues/3520> |
| Issue | #3684 | .NET: UsageContent not returned in AG-UI stream | closed | Dazfl | <https://github.com/microsoft/agent-framework/issues/3684> |
| Issue | #4920 | .NET: AG-UI MapAGUI() doesn't use session store or map message AuthorName | closed | graemefoster | <https://github.com/microsoft/agent-framework/issues/4920> |
| Issue | #5587 | .NET: [Bug]: AGUI client crashes on non-JSON TOOL_CALL_RESULT content from handoff with JsonException ('T' is an invalid start of a value) | closed | statto1974 | <https://github.com/microsoft/agent-framework/issues/5587> |
| Issue | #5567 | .NET: [Bug]: BaseEventJsonConverter.Read is missing deserialization mapping for StateDeltaEvent | closed | largeprob | <https://github.com/microsoft/agent-framework/issues/5567> |
| Issue | #6511 | .NET: [Bug]: Tool Call Error in AGUI Mapping (WorkflowAsAgent with Session) 📌 Description | closed | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/6511> |
| Issue | #4902 | DOTNET - AG-UI: events should make it clear which agent is executing for multi-agent workflows | closed | graemefoster | <https://github.com/microsoft/agent-framework/issues/4902> |
| Issue | #5209 | .NET: Make AG-UI conversion API public for multi-agent orchestrations | closed | darthmolen | <https://github.com/microsoft/agent-framework/issues/5209> |
| Issue | #7685 | Python: [Bug]: InMemoryCheckpointStorage returns its stored checkpoint objects, unlike the other backends | closed | dev404ai | <https://github.com/microsoft/agent-framework/issues/7685> |
| Issue | #6652 | Python: [Feature]: AG-UI agent adapter should forward HITL approval to a hosted/remote FoundryAgent (mcp_approval_response) instead of executing locally | closed | lordlinus | <https://github.com/microsoft/agent-framework/issues/6652> |
| Issue | #6851 | Python: [Bug]: Approval-gated tool (confirm_changes flow) re-executes a second time on a later unrelated turn — duplicate side effect, not just a UI display issue | closed | lordlinus | <https://github.com/microsoft/agent-framework/issues/6851> |
| Issue | #7458 | Python: [Bug]: AG-UI approval resume is consumed (and the approved tool executed) before the run can fail — a post-consume failure makes the user's answer unrecoverable, and the retry is indistinguishable from a never-pending id | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7458> |
| Issue | #7527 | Python: Python : AG-UI  workflow.as_agent()  wrapped with AgentFrameworkAgent() wrapper does not put requestinfo (HandoffAgentUserRequest) into RUN_FINISHED interrupts | closed | dgsear | <https://github.com/microsoft/agent-framework/issues/7527> |
| Issue | #7569 | Python: [Bug]: AG-UI approval resume executes only the first of several approved calls in one batch — the rest are silently dropped | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7569> |
| Issue | #7570 | Python: [Bug]: APPROVAL_RESUME_NOT_FOUND leaves the interrupt in the thread snapshot, so the unanswerable approval card is re-offered on every connect | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7570> |
| Issue | #3533 | Python: Add before/after execution hooks for workflows | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/3533> |
| Issue | #2809 | Python Workflows: investigation around allowing custom executors to be used in high-level orchestration patterns | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/2809> |
| Issue | #7574 | Python: [Feature]:  Allow a global registry of checkpoint allow types | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7574> |
| Issue | #7227 | .NET: Python: [Bug]: ResponsesHostServer does not surface Work IQ CONSENT_REQUIRED from a2a_preview source | closed | pamelafox | <https://github.com/microsoft/agent-framework/issues/7227> |
| Issue | #3809 | .NET: [Feature]:  Add `GetMessagesAsync` method to `CosmosChatHistoryProvider` | closed | LuisM000 | <https://github.com/microsoft/agent-framework/issues/3809> |
| Issue | #7640 | .NET: [Bug]: AsAIAgent serializes parallel tool calls returned in one Responses result | closed | riteshksriv | <https://github.com/microsoft/agent-framework/issues/7640> |
| Issue | #6913 | .NET: [Feature] Add 'advertise' frontmatter option to control automatic skill advertisement | closed | ron-clover | <https://github.com/microsoft/agent-framework/issues/6913> |
| Issue | #6873 | .NET: [Bug]: Microsoft.Agents.AI.OpenAI ver. 1.11.1 broke FileBasedSkills execution | closed | eguzchin-isoftwareiq | <https://github.com/microsoft/agent-framework/issues/6873> |
