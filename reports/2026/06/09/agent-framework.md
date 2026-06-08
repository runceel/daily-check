# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-08 01:26:03 〜 2026-06-08 23:35:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 17 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 7 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | westey-m, giles17, VedantSonani, moonbox3, peibekwe |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6388](https://github.com/microsoft/agent-framework/pull/6388) — .NET: [BREAKING] Fix hosting bugs （PR / merged / westey-m）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ 破壊的変更** [#6381](https://github.com/microsoft/agent-framework/pull/6381) — .NET: [BREAKING] Migrate .NET GitHub Copilot SDK to v1.0.0 （PR / merged / giles17）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **GA 昇格** [#6403](https://github.com/microsoft/agent-framework/pull/6403) — .NET: Upgrade GitHub.Copilot.SDK to 1.0.0 GA + preserve caller-supplied SessionConfig.SessionId （PR / open / chandramouleswaran）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6388](https://github.com/microsoft/agent-framework/pull/6388) — .NET: [BREAKING] Fix hosting bugs

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +219 / -25
- マージ日時 (UTC): `2026-06-08 16:34:56`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedFoundryMemoryProviderScopes.cs` | 19 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AspNetCore/ClaimsIdentitySessionIsolationKeyProvider.cs` | 25 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AspNetCore/ClaimsIdentitySessionIsolationKeyProviderOptions.cs` | 19 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AspNetCore/ServiceCollectionExtensions.cs` | 21 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/HostedFoundryMemoryProviderScopesTests.cs` | 46 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.UnitTests/ClaimsIdentitySessionIsolationKeyProviderTests.cs` | 89 | 6 |

</details>

<details><summary>コミット (3 件)</summary>

- `604f02b` Fix hosting bugs
- `2f29e0e` Address PR comments
- `414b241` Merge branch 'main' into hosting-bugs-2026-06-08

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#6381](https://github.com/microsoft/agent-framework/pull/6381) — .NET: [BREAKING] Migrate .NET GitHub Copilot SDK to v1.0.0

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +77 / -93
- マージ日時 (UTC): `2026-06-08 22:51:10`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |
| `dotnet/samples/02-agents/AgentProviders/Agent_With_GitHubCopilot/Agent_With_GitHubCopilot.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/Agent_With_GitHubCopilot/Program.cs` | 7 | 6 |
| `dotnet/samples/02-agents/AgentProviders/Agent_With_GitHubCopilot/README.md` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/CopilotClientExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 18 | 39 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/Microsoft.Agents.AI.GitHub.Copilot.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/WorkflowConsoleAppSamplesValidation.cs` | 4 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.IntegrationTests/GitHubCopilotAgentTests.cs` | 4 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.IntegrationTests/Microsoft.Agents.AI.GitHub.Copilot.IntegrationTests.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/CopilotClientExtensionsTests.cs` | 5 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/GitHubCopilotAgentTests.cs` | 20 | 21 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/SamplesValidation.cs` | 7 | 7 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/WorkflowSamplesValidation.cs` | 5 | 5 |

</details>

<details><summary>コミット (5 件)</summary>

- `f4553f3` Migrate .NET GitHub Copilot SDK from 1.0.0-beta.2 to 1.0.0
- `95079ee` Fix formatting: remove unused using directive
- `e8258c0` Merge branch 'main' into dotnet-ghcp-v1
- `8ecb4aa` Skip AzureFunctions SamplesValidation tests pending func tools fix
- `a45d06b` Skip additional failing integration tests in CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#6387](https://github.com/microsoft/agent-framework/pull/6387) — .NET: Add approval bypassing to harness as the default

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +116 / -2
- マージ日時 (UTC): `2026-06-08 18:22:25`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 8 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 14 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 3 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 91 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `d408d18` Add approval bypassing to harness as a default
- `430e5d7` Add tests
- `5ac05cb` Address PR comments.
- `e1d0eca` Merge branch 'main' into harness-approval-bypsasing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#6376](https://github.com/microsoft/agent-framework/pull/6376) — Python: Match AG-UI approval responses to requested arguments

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python` `ag-ui`
- 変更行数: +252 / -9
- マージ日時 (UTC): `2026-06-08 16:50:58`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent.py` | 2 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 47 | 6 |
| `python/packages/ag-ui/agent_framework_ag_ui/_utils.py` | 16 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 37 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_agent_wrapper_comprehensive.py` | 86 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 64 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `e130bc5` Match AG-UI approval responses to requested arguments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#6367](https://github.com/microsoft/agent-framework/pull/6367) — .NET: Fix single-column value unwrap in declarative workflow

- 作者: peibekwe / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +71 / -1
- マージ日時 (UTC): `2026-06-08 11:51:22`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/ForeachExecutor.cs` | 10 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/ForeachExecutorTest.cs` | 61 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `9a713ff` Fix single-column value unwrap in declarative workflow
- `93ba20d` Added more tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#6242](https://github.com/microsoft/agent-framework/pull/6242) — Python: fix(mem0): isolate entity retrieval and correct app_id payload

- 作者: VedantSonani / 状態: MERGED
- ラベル: `python`
- 変更行数: +222 / -82
- マージ日時 (UTC): `2026-06-08 13:54:11`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/mem0/agent_framework_mem0/_context_provider.py` | 118 | 41 |
| `python/packages/mem0/tests/test_mem0_context_provider.py` | 104 | 41 |

</details>

<details><summary>コミット (12 件)</summary>

- `2926908` fix(mem0): parallel memory retrieval logic and strict type compliance
- `3d1a5ba` Merge branch 'main' into fix-mem0-retrieval
- `ffae343` fix(mem0): align parallel retrieval types for pyright and mypy
- `e2a0d0b` Merge branch 'main' into fix-mem0-retrieval
- `d54cda6` Merge branch 'main' into fix-mem0-retrieval
- `fdcf93b` Merge branch 'main' into fix-mem0-retrieval
- `2228dca` fix(mem0): handle asyncio.CancelledError in search response and updat…
- `8e05776` Merge branch 'main' into fix-mem0-retrieval
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6407 | Python: Add workflow reset | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6407> |
| PR | #6406 | Python: Build(deps): Bump python-multipart from 0.0.26 to 0.0.27 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6406> |
| PR | #6403 | .NET: Upgrade GitHub.Copilot.SDK to 1.0.0 GA + preserve caller-supplied SessionConfig.SessionId | open | chandramouleswaran | <https://github.com/microsoft/agent-framework/pull/6403> |
| PR | #6400 | Python: fix: execute non-approval tools in mixed approval batches | open | jstar0 | <https://github.com/microsoft/agent-framework/pull/6400> |
| PR | #6399 | Python: Filter MCP tool kwargs to declared params via allowlist | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6399> |
| PR | #6396 | Python: Build(deps): Bump anthropic from 0.80.0 to 0.107.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6396> |
| PR | #6395 | Python: Build(deps): Bump aiohttp from 3.13.4 to 3.14.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6395> |
| PR | #6394 | Python: Build(deps): Bump openai from 2.24.0 to 2.41.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6394> |
| PR | #6393 | Python: Build(deps): Bump mistralai from 2.4.2 to 2.4.9 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6393> |
| PR | #6392 | Python: Build(deps): Bump pydantic-monty from 0.0.17 to 0.0.18 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6392> |
| PR | #6391 | Python: Build(deps-dev): Bump ruff from 0.15.15 to 0.15.16 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6391> |
| PR | #6390 | Python: Build(deps-dev): Bump prek from 0.4.3 to 0.4.4 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6390> |
| PR | #6389 | Python: Build(deps-dev): Bump uv from 0.11.17 to 0.11.19 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6389> |
| PR | #6384 | .NET: Add LoopAgent capability for Harnesses | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6384> |
| PR | #6383 | Python: parse structured response value from final message | open | liuzemei | <https://github.com/microsoft/agent-framework/pull/6383> |
| PR | #6380 | New logo in banner | open | sphenry | <https://github.com/microsoft/agent-framework/pull/6380> |
| PR | #6378 | New Microsoft Agent Framework logos | open | sphenry | <https://github.com/microsoft/agent-framework/pull/6378> |
| PR | #6382 | Python: parse final structured response message | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6382> |
| PR | #6379 | Stop failing held issue triage runs | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6379> |
| PR | #6280 | Build(deps): Bump anthropic from 0.80.0 to 0.105.2 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6280> |
| PR | #6279 | Build(deps): Bump openai from 2.24.0 to 2.41.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6279> |
| PR | #4824 | .NET: Implement tool events > function call events for AG-UI support | closed | kzu | <https://github.com/microsoft/agent-framework/pull/4824> |
| PR | #3842 | Python: Add request_handlers parameter for automatic HITL request handling | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/3842> |
| Issue | #6405 | .NET: GitHub Copilot RC Release | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6405> |
| Issue | #6404 | .NET: [CI] DurableTask WorkflowConsoleAppSamplesValidation tests fail — KeyNotFoundException in workflow execution | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6404> |
| Issue | #6402 | .NET: [CI] AzureFunctions SamplesValidation tests fail — func tools cannot detect worker runtime | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6402> |
| Issue | #6401 | Python: .NET: [Bug]: missing method GetResponseClient | open | massnonn | <https://github.com/microsoft/agent-framework/issues/6401> |
| Issue | #6398 | .NET: Align tool names for built in providers between c# and python | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6398> |
| Issue | #6397 | Limit agent execution by tokens consumed | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6397> |
| Issue | #6385 | Python: [Bug]: Mixed Tool Batch Applies Approval Wrapper To All Tool Calls | open | tschokokuki | <https://github.com/microsoft/agent-framework/issues/6385> |
| Issue | #6336 | Update GitHub Copilot Documentation with V1.0 Release | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6336> |
| Issue | #6264 | .NET: [Bug]:  Approval middleware surfaces non-approval functions (GetDateTime) as approval requests | closed | helloxubo | <https://github.com/microsoft/agent-framework/issues/6264> |
| Issue | #6237 | Python: [Bug]: [Bug] Mem0ContextProvider always returns empty results due to broken filter logic and API parameter mismatch | closed | VedantSonani | <https://github.com/microsoft/agent-framework/issues/6237> |
| Issue | #6173 | .NET: [Bug]: Magentic Workflow always seems to run into maximum round count limit. | closed | Abalast8899 | <https://github.com/microsoft/agent-framework/issues/6173> |
| Issue | #5041 | Python: [Bug]: No tool output found for function call | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/5041> |
| Issue | #4909 | .NET: Add approval not-required middleware for cases where we have a mix | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/4909> |
