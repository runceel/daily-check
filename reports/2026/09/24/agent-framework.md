# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 89 |
| オープン中の新規 PR     | 53 |
| クローズ (未マージ) PR  | 31 |
| 新規 Issue              | 70 |
| クローズ Issue          | 48 |
| 主要コントリビューター  | eavanvalkenburg, ManoharPaturi, westey-m, baywet, jpalvarezl, moonbox3 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#8641](https://github.com/microsoft/agent-framework/pull/8641) — .NET: [BREAKING] Enforce approval response binding consistently （PR / merged / SergeyMenshykh）
  承認応答を元の提示要求に紐付ける必要があります。ツール承認を使う .NET 利用者は新しい継続フローを確認してください。
- **⚠ 破壊的変更** [#8593](https://github.com/microsoft/agent-framework/pull/8593) — [BREAKING] Python: Persist Foundry invocation sessions （PR / open / jpalvarezl）
  Foundry invocation session 永続化を提案するオープン PR です。仕様が確定するまで移行は待ってください。
- **⚠ 破壊的変更** [#8589](https://github.com/microsoft/agent-framework/pull/8589) — Python: [BREAKING] Preserve MCP runtime and approval context （PR / merged / jpalvarezl）
  MCP runtime と承認コンテキストの引き継ぎ動作が変わります。Python の MCP／承認付き workflow を再検証してください。
- **⚠ 破壊的変更** [#8588](https://github.com/microsoft/agent-framework/pull/8588) — Python: [BREAKING] Normalize workflow HTTP request URLs （PR / merged / jpalvarezl）
  HTTP request URL の正規化規則が変わりました。宣言型 workflow で URL を指定する利用者は解決先を確認してください。
- **⚠ 破壊的変更** [#8579](https://github.com/microsoft/agent-framework/pull/8579) — [BREAKING] Python: Treat matched function results as terminal （PR / merged / eavanvalkenburg）
  一致した関数結果は終端として扱われます。結果を後続処理へ再投入する Python workflow を確認してください。
- **⚠ 破壊的変更** [#8511](https://github.com/microsoft/agent-framework/pull/8511) — Python: [BREAKING] bound PowerFx state construction （PR / merged / jpalvarezl）
  PowerFx state 構築に制限・検証が加わりました。既存式が新しい境界条件を満たすか確認してください。
- **⚠ 破壊的変更** [#8509](https://github.com/microsoft/agent-framework/pull/8509) — Python: [BREAKING] preserve expression results in SendActivity output （PR / merged / jpalvarezl）
  SendActivity が式の評価結果を保持します。後続ステップが参照する出力値を再確認してください。
- **⚠ 破壊的変更** [#8423](https://github.com/microsoft/agent-framework/pull/8423) — .NET: [BREAKING] Fix DevUI approval continuation （PR / merged / rogerbarreto）
  承認継続には提示済み要求に対する明示的な判断が必要です。Responses API／DevUI のクライアントを更新してください。
- **⚠ 破壊的変更** [#8372](https://github.com/microsoft/agent-framework/pull/8372) — [BREAKING] Python: Add request-scoped Foundry agent factories （PR / merged / rogerbarreto）
  Foundry agent factory と invocation のスコープが request 単位に変わりました。共有 factory 前提の Python hosting を見直してください。
- **⚠ 破壊的変更** [#8200](https://github.com/microsoft/agent-framework/pull/8200) — .NET: [BREAKING] fix: use allow list for configuration keys （PR / merged / baywet）
  宣言型設定のキーが許可リストで検証されます。独自キーを使う .NET workflow は設定を更新してください。
- **⚠ 破壊的変更** [#5735](https://github.com/microsoft/agent-framework/pull/5735) — .NET: Bump GitHub.Copilot.SDK and forward session config properties （PR / merged / saikir1994）
  SDK 1.0.1 と session 構成転送の更新です。Copilot session 再開時に構成が維持されるか確認してください。
- **GA 昇格** [#4254](https://github.com/microsoft/agent-framework/issues/4254) — .NET: A2A Hosting GA （Issue / open / markwallace-microsoft）
  A2A Hosting GA はオープン issue の段階です。GA 条件・サポート範囲の確定を継続確認してください。

## このリポジトリの要点

この期間は承認応答の厳格なバインド、Foundry session のスコープ／継続、Python 宣言型 workflow の実行意味変更が集中しました。
特に .NET Responses API の承認継続（#8423、#8641）と Python の MCP／関数結果／URL／PowerFx／SendActivity 変更（#8589、#8588、#8579、#8511、#8509）は既存利用者の再検証が必要です。
宣言型設定キーの許可リスト化（#8200）も構成互換性に影響します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8641](https://github.com/microsoft/agent-framework/pull/8641) — .NET: [BREAKING] Enforce approval response binding consistently

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +274 / -59
- マージ日時 (UTC): `2026-09-22 16:31:38`

**変更概要**

承認応答を、実際に提示された要求へ一貫してバインドする .NET の変更です。  
サンプルと統合テストも新しい継続手順に更新し、ツール承認と AG-UI の連携を対象にします。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIDojoServer/ChatClientAgentFactory.cs` | 12 | 0 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIDojoServer/Program.cs` | 18 | 3 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIServer/Program.cs` | 21 | 1 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/README.md` | 26 | 1 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalResponseBindingChatClient.cs` | 7 | 23 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgentOptions.cs` | 8 | 1 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientBuilderExtensions.cs` | 6 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.IntegrationTests/ToolCallingTests.cs` | 37 | 14 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ApprovalResponseBindingChatClientTests.cs` | 139 | 16 |

</details>

<details><summary>コミット (2 件)</summary>

- `e008918` .NET: Enforce approval response binding consistently
- `d823775` .NET: Document approval response binding scope

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: 承認応答と提示要求の関連付けが厳格化され、不一致の応答は継続に使えません。公開シグネチャよりも応答スコープの意味が変わります。

**既存利用者への影響**



承認応答を保存・再送する .NET クライアントは、応答を元の提示要求に紐付けて返すよう更新してください。新しい継続フローを統合テストしてください。

### [#8589](https://github.com/microsoft/agent-framework/pull/8589) — Python: [BREAKING] Preserve MCP runtime and approval context

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +617 / -142
- マージ日時 (UTC): `2026-09-22 12:55:41`

**変更概要**

宣言型 workflow 内で MCP 実行時の runtime 情報と承認コンテキストを維持します。  
MCP／agent executor と HTTP 認証・承認テストを更新し、Python の MCP workflow の実行・再開を対象にします。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0043-python-mcp-runtime-context.md` | 48 | 0 |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_mcp.py` | 21 | 9 |
| `python/packages/core/agent_framework/_workflows/_agent_executor.py` | 3 | 6 |
| `python/packages/core/tests/core/test_mcp_http_auth.py` | 115 | 2 |
| `python/packages/core/tests/workflow/test_agent_executor.py` | 4 | 6 |
| `python/packages/declarative/AGENTS.md` | 16 | 0 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_executors_agents.py` | 10 | 22 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_executors_mcp.py` | 81 | 27 |
| `python/packages/declarative/tests/test_declarative_approval_binding.py` | 100 | 3 |
| `python/packages/declarative/tests/test_graph_coverage.py` | 2 | 6 |
| `python/packages/declarative/tests/test_graph_executors.py` | 126 | 42 |
| `python/packages/declarative/tests/test_invoke_mcp_tool_executor.py` | 90 | 18 |

</details>

<details><summary>コミット (4 件)</summary>

- `4f846cf` Python: [BREAKING] Preserve MCP runtime and approval context
- `aa2d8f0` Docs: shorten MCP approval compatibility note
- `d67c6a8` Docs: keep approval compatibility details out of package overview
- `1615045` Merge main and fix declarative regression test typing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: MCP runtime と承認コンテキストの引き継ぎ動作が変わります。内部 executor の連携と承認バインディングの新しい期待動作を確認してください。

**既存利用者への影響**



MCP ツール、HTTP 認証、承認付き宣言型 workflow の利用者は、再開時にも正しい runtime／承認コンテキストが引き継がれるか確認してください。

### [#8588](https://github.com/microsoft/agent-framework/pull/8588) — Python: [BREAKING] Normalize workflow HTTP request URLs

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +229 / -43
- マージ日時 (UTC): `2026-09-21 13:37:32`

**変更概要**

宣言型 workflow の HTTP request URL の選択・正規化処理を整理します。  
HTTP handler と単体／YAML 統合テストを更新し、URL 解決を一貫させます。  
相対・絶対 URL を使う Python workflow が対象です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/declarative/agent_framework_declarative/_workflows/_http_handler.py` | 33 | 39 |
| `python/packages/declarative/tests/test_default_http_request_handler.py` | 159 | 4 |
| `python/packages/declarative/tests/test_http_request_yaml_integration.py` | 37 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `59563ad` Python: normalize workflow HTTP request URLs
- `f8c0059` Docs: keep URL selection details in the API reference
- `444e7e3` Merge remote-tracking branch 'origin/main' into jpalvarezl-workflow-u…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: HTTP request URL の正規化規則が変わります。公開シグネチャ変更ではなく URL 解決動作の変更であり、相対 URL や末尾スラッシュに依存する構成を再確認してください。

**既存利用者への影響**



宣言型 workflow で URL を指定する利用者は、アップグレード後に相対／絶対 URL の解決先を確認してください。

### [#8579](https://github.com/microsoft/agent-framework/pull/8579) — [BREAKING] Python: Treat matched function results as terminal

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +483 / -160
- マージ日時 (UTC): `2026-09-22 11:36:22`

**変更概要**

条件に一致した関数結果を、その呼び出しの終端結果として扱います。  
関数呼び出し、承認 lifecycle、session 結果の保持・再生を見直し、Python tool／workflow の後続動作を変更します。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 13 | 5 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 1 | 3 |
| `python/packages/ag-ui/tests/ag_ui/test_approval_lifecycle.py` | 3 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_run.py` | 7 | 5 |
| `python/packages/core/agent_framework/_sessions.py` | 22 | 15 |
| `python/packages/core/agent_framework/_tools.py` | 124 | 47 |
| `python/packages/core/tests/core/test_function_invocation_logic.py` | 266 | 77 |
| `python/packages/core/tests/core/test_sessions.py` | 47 | 6 |

</details>

<details><summary>コミット (5 件)</summary>

- `f330d0c` Python: treat matched function results as terminal
- `546ab28` Python: reject stale approval responses
- `24945e2` Python: preserve session approval authority
- `525763c` Python: consume accepted session approvals
- `0121ba0` Python: remove replayed session results

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: 一致した関数結果は終端扱いになり、従来のように後続処理へ再投入されません。古い承認応答や再生結果の拒否・消費も整理されています。

**既存利用者への影響**



関数結果を連鎖的に再処理する Python workflow は新しい終端条件に合わせてください。承認の再送・再開もテストしてください。

### [#8511](https://github.com/microsoft/agent-framework/pull/8511) — Python: [BREAKING] bound PowerFx state construction

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +423 / -21
- マージ日時 (UTC): `2026-09-21 08:12:01`

**変更概要**

宣言型 workflow の PowerFx state 構築に制限と検証を追加します。  
PowerFx limit の処理を分離し、state 評価と安全性テストを拡充します。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_workflows/_state.py` | 11 | 0 |
| `python/packages/core/tests/workflow/test_state.py` | 37 | 0 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_declarative_base.py` | 37 | 18 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_powerfx_limits.py` | 76 | 0 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_state.py` | 24 | 3 |
| `python/packages/declarative/tests/test_powerfx_safe.py` | 238 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `f641bd2` Python: bound PowerFx state construction
- `3182665` Python: bound PowerFx state construction
- `4deda7f` Merge published state construction history
- `0975d46` Python: keep PowerFx limit documentation near implementation
- `7768d9f` Merge upstream main into PowerFx state bounds

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: PowerFx による state 構築は新しい制限・検証に従います。既存式でも境界条件に抵触すると評価・受け入れ可否が変わる可能性があります。

**既存利用者への影響**



PowerFx 式や state 構築を使う利用者は既存定義を新しい制限下で検証し、拒否される式を修正してください。

### [#8509](https://github.com/microsoft/agent-framework/pull/8509) — Python: [BREAKING] preserve expression results in SendActivity output

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +45 / -9
- マージ日時 (UTC): `2026-09-18 14:15:23`

**変更概要**

宣言型 workflow の `SendActivity` が式の評価結果を出力に保持するよう変更します。  
executor の出力処理とテストを更新し、後続ステップで参照する値を対象にします。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/declarative/agent_framework_declarative/_workflows/_executors_basic.py` | 8 | 5 |
| `python/packages/declarative/tests/test_graph_coverage.py` | 37 | 4 |

</details>

<details><summary>コミット (5 件)</summary>

- `e52b5c7` Python: preserve expression results in SendActivity output
- `d4a5af0` Python: preserve expression results in SendActivity output
- `a6d9fc5` Merge published SendActivity history
- `7c682a0` Python: document and test SendActivity output migration
- `a90ed70` Python: keep SendActivity guidance with the executor

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: `SendActivity` の出力に式の評価結果が保持され、後続処理へ渡る値が変わります。空／変換済み出力を前提とする workflow はデータフローを確認してください。

**既存利用者への影響**



`SendActivity` の出力を消費する workflow は、期待値と下流式を再確認してください。値を破棄する構成には明示的な処理が必要な場合があります。

### [#8423](https://github.com/microsoft/agent-framework/pull/8423) — .NET: [BREAKING] Fix DevUI approval continuation

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +2009 / -118
- マージ日時 (UTC): `2026-09-22 16:11:08`

**変更概要**

.NET DevUI／Responses API の承認後継続を修正し、要求と応答の対応付け、session 保存、streaming を強化します。  
不正な承認要求を拒否し、分離された session の再開を扱います。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.DevUI/README.md` | 36 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/EndpointRouteBuilderExtensions.Responses.cs` | 35 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/OpenAIHostingJsonUtilities.cs` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/AIAgentResponseExecutor.cs` | 64 | 21 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/AgentInvocationContext.cs` | 12 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/AgentResponseExecution.cs` | 248 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/Converters/ItemContentConverter.cs` | 29 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/HostedAgentResponseExecutor.cs` | 80 | 60 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/InMemoryResponsesService.cs` | 28 | 8 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/Models/ItemResource.cs` | 43 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/Streaming/FunctionApprovalRequestEventGenerator.cs` | 3 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/ServiceCollectionExtensions.cs` | 7 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting/AIHostAgent.cs` | 66 | 10 |
| `dotnet/src/Microsoft.Agents.AI.Hosting/IsolationKeyScopedAgentSessionStore.cs` | 38 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Hosting/Local/InMemoryAgentSessionStore.cs` | 13 | 3 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `5115d71` fix(hosting): resume trusted function approvals
- `ab7eda5` fix(hosting): reject invalid approval continuations
- `0fcc926` fix(hosting): require explicit approval decisions
- `fefd925` fix(hosting): reject malformed approval arguments
- `53cbc69` fix(hosting): preserve background session isolation
- `ec2874a` fix(hosting): persist transient agent sessions
- `efd4da1` fix(hosting): honor scoped response execution
- `1abaec1` test(hosting): define streaming approval continuation
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: 継続には提示済み要求への明示的な判断と有効な引数が必要です。旧形式の継続要求や無効な承認データは拒否されます。

**既存利用者への影響**



DevUI／Responses API のクライアントは承認要求 ID と session を保持し、明示的な承認／拒否を返すよう確認してください。既存の再開フローを統合テストしてください。

### [#8372](https://github.com/microsoft/agent-framework/pull/8372) — [BREAKING] Python: Add request-scoped Foundry agent factories

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +724 / -190
- マージ日時 (UTC): `2026-09-18 14:50:30`

**変更概要**

Foundry hosted agent の生成を request 単位にし、応答 stream と長時間 workflow の session 所有・継続を整理します。  
agent source／invocation／responses factory と validation／cleanup を更新し、サンプルも新構成に合わせます。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_types.py` | 18 | 0 |
| `python/packages/core/agent_framework/_workflows/_functional.py` | 9 | 5 |
| `python/packages/core/tests/core/test_types.py` | 42 | 0 |
| `python/packages/core/tests/workflow/test_functional_workflow.py` | 8 | 0 |
| `python/packages/foundry_hosting/README.md` | 30 | 2 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_agent_source.py` | 39 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 32 | 7 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 248 | 137 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 123 | 0 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 136 | 11 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/declarative_customer_support/README.md` | 3 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/declarative_customer_support/main.py` | 14 | 12 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/resilient_long_running_workflow/README.md` | 2 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/resilient_long_running_workflow/main.py` | 9 | 10 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/workflows/README.md` | 3 | 1 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `7439f2c` Python: Add request-scoped Foundry agent factories
- `bc653c3` Python: Refine Foundry factory ownership and session persistence
- `2e1de12` fix: align workflow continuation checks
- `0db17c0` refactor: simplify hosting checkpoint handling
- `a23359c` Python: Simplify request-scoped Foundry agents
- `6187843` Merge origin/main into hosted-workflow-agent-factory
- `187592c` Python: Fix ResponseStream test typing
- `83cfcda` Python: Align request agent validation and stream cleanup
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: Foundry agent factory と invocation/session のスコープが request 単位に変わります。古い共有 factory／session 所有を前提とする構成は互換でない可能性があります。

**既存利用者への影響**



Python Foundry hosting の利用者は更新済みサンプルに沿い、factory の生成単位、session 継続、stream cleanup を見直してください。

### [#8200](https://github.com/microsoft/agent-framework/pull/8200) — .NET: [BREAKING] fix: use allow list for configuration keys

- 作者: baywet / 状態: MERGED
- ラベル: `.NET` `workflows` `breaking change`
- 変更行数: +2075 / -218
- マージ日時 (UTC): `2026-09-23 13:56:00`

**変更概要**

.NET の宣言型 agent／workflow 設定に許可リストによるキー検証を導入します。  
declarative factory、式拡張、workflow context／options、executor を更新し、設定経路を統一します。

<details><summary>変更ファイル (66 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/03-workflows/Declarative/InvokeFoundryToolboxMcp/Program.cs` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/AgentBotElementYaml.cs` | 27 | 8 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/ChatClient/ChatClientPromptAgentFactory.cs` | 39 | 5 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/Extensions/BoolExpressionExtensions.cs` | 6 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/Extensions/IntExpressionExtensions.cs` | 6 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/Extensions/NumberExpressionExtensions.cs` | 6 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/Extensions/PromptAgentExtensions.cs` | 12 | 9 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/Extensions/StringExpressionExtensions.cs` | 6 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/Extensions/YamlAgentFactoryExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Declarative/PromptAgentFactory.cs` | 68 | 9 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/DeclarativeWorkflowBuilder.cs` | 5 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/DeclarativeWorkflowOptions.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Extensions/IWorkflowContextExtensions.cs` | 23 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Interpreter/DeclarativeActionExecutor.cs` | 13 | 11 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Interpreter/DeclarativeWorkflowContext.cs` | 46 | 15 |
| _... 他 51 件_ | | |

</details>

<details><summary>コミット (56 件)</summary>

- `e803079` fix: use allow list for configuration keys
- `d2842d4` Apply batched suggestions from code review
- `9508b4b` chore: formatting
- `2e5089e` Potential fix for pull request finding 'Missed opportunity to use Sel…
- `181ce0d` Address declarative workflow review feedback
- `4d42029` .NET: address workflow sensitivity review comments
- `935532d` .NET: fix ChatClient factory options validation
- `c1d1611` chore: formatting
- _... 他 48 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


⚠ 破壊的変更: 設定キーは許可リストで検証され、未対応の任意キーを受け入れない動作になります。設定形式・workflow API の許可対象を確認してください。

**既存利用者への影響**



宣言型設定を使う .NET 利用者はキーがサポート対象か確認し、拒否される独自キーを正式な設定項目へ置き換えてください。

### [#5735](https://github.com/microsoft/agent-framework/pull/5735) — .NET: Bump GitHub.Copilot.SDK and forward session config properties

- 作者: saikir1994 / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +225 / -36
- マージ日時 (UTC): `2026-09-18 17:01:11`

**変更概要**

.NET の GitHub Copilot SDK を 1.0.1 に更新し、session 構成プロパティを SDK へ転送します。  
session 再開時にも設定を維持する処理とテストを追加します。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 80 | 23 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/GitHubCopilotAgentTests.cs` | 144 | 12 |

</details>

<details><summary>コミット (2 件)</summary>

- `5cd223e` Bump GitHub.Copilot.SDK to 1.0.1 and forward session config propertie…
- `c326edb` .NET: Preserve GitHub Copilot session configuration on resume

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**


依存 SDK の更新と session 設定転送の追加です。breaking change ラベルはありますが、変更一覧から削除 API は確認できません。

**既存利用者への影響**


Copilot session を再開する利用者は、構成値が維持されることを確認してください。SDK 依存の更新も合わせて検証してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8639 | Python: add option to disable return-to-previous handoff routing | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8639> |
| #8706 | Set better expecations for contributors | westey-m | <https://github.com/microsoft/agent-framework/pull/8706> |
| #8692 | .NET: Only consume stored approval state when the run succeeds | westey-m | <https://github.com/microsoft/agent-framework/pull/8692> |
| #8655 | .NET: Fix function-result message role persistence | baywet | <https://github.com/microsoft/agent-framework/pull/8655> |
| #8657 | .NET: Fix forwarded request-port type validation | baywet | <https://github.com/microsoft/agent-framework/pull/8657> |
| #8658 | .NET: Forward declarative Azure agent version | baywet | <https://github.com/microsoft/agent-framework/pull/8658> |
| #8660 | Python: Fix type compatibility for Any source types | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/8660> |
| #8650 | Python: Build(deps-dev): Bump the python-type-checkers group across 1 directory with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8650> |
| #8654 | Python: Keep null fields out of Azure DocumentDB membership filters | saquibjawedbit | <https://github.com/microsoft/agent-framework/pull/8654> |
| #8549 | Python: scope executor activity IDs to workflow runs | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8549> |
| #8548 | Python: Preserve structured output on streaming harness tool-approval path (#7418) | Shivani767 | <https://github.com/microsoft/agent-framework/pull/8548> |
| #8669 | Use review App grant for repair acknowledgment | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8669> |
| #8667 | Use the workflow token for fix-ci evidence | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8667> |
| #8646 | Python: .NET: Keep A2A streaming session state current | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8646> |
| #8615 | .NET: Add function replace support for function middleware | westey-m | <https://github.com/microsoft/agent-framework/pull/8615> |
| #8644 | Python: Support short flags in docker command | westey-m | <https://github.com/microsoft/agent-framework/pull/8644> |
| #8537 | .NET: ci/dotnet vscode configuration | baywet | <https://github.com/microsoft/agent-framework/pull/8537> |
| #8652 | Python: add non-blocking Python 3.15 CI | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8652> |
| #8403 | .NET: fix: a bug where invoke function tool could bypass approval | baywet | <https://github.com/microsoft/agent-framework/pull/8403> |
| #8637 | Python: preserve integer precision in in-memory Hamming search | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8637> |
| #8630 | Python: preserve Unicode paths in in-memory file discovery | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8630> |
| #8609 | Python: fix(core): match empty expected tool call arguments when actual call arguments are None | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8609> |
| #8642 | .NET: Revert ".NET: ci: switches to a dedicated solution for dependabot" | baywet | <https://github.com/microsoft/agent-framework/pull/8642> |
| #8629 | Python: preserve Redis memory vectorizer data types | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8629> |
| #8614 | Python: docs(core): fix positional invocations in detect_media_type_from_base64 docstrings | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8614> |
| #8613 | Python: fix(core): ensure add_usage_details returns copies and skips booleans | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8613> |
| #8604 | Python: fix(ag ui): allow text events when response_format is a json schema dictionary | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8604> |
| #8603 | ci: removes workflow based PR limit to use GitHub native feature | baywet | <https://github.com/microsoft/agent-framework/pull/8603> |
| #8611 | Python: test(ollama): narrow pytest.raises blocks to wrap only get_response in error tests | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8611> |
| #8524 | Python: skip empty and whitespace-only instructions in prepend | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8524> |
| #8610 | Python: Build(deps-dev): Bump prek from 0.5.2 to 0.5.3 in /python/packages/lab in the basics group across 1 directory | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8610> |
| #8612 | Python: Build(deps-dev): Bump prek from 0.5.2 to 0.5.3 in /python/packages/lab in the basics group | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8612> |
| #8595 | Python: Gate sequential workflow output on approval | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8595> |
| #8591 | Python: Clarify file search retrieval scope | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8591> |
| #8576 | Python: Preserve empty hosted MCP allowlists | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8576> |
| #8454 | Python: Support Foundry project embeddings | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8454> |
| #8626 | Simplify the DevFlow PR repair deployment | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8626> |
| #8622 | Add the DevFlow PR repair entrypoint | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8622> |
| #8486 | .NET: ci: switches to a dedicated solution for dependabot | baywet | <https://github.com/microsoft/agent-framework/pull/8486> |
| #8600 | .NET: Improve mem0 client encoding | westey-m | <https://github.com/microsoft/agent-framework/pull/8600> |
| #8598 | Python: Retain Hyperlight cached tool identities | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8598> |
| #8584 | Python: Clarify Redis context retrieval scope | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8584> |
| #8585 | Python: clarify WorkflowAgent policy configuration | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8585> |
| #8587 | Python: validate generated handoffs before routing | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8587> |
| #7927 | Python: make transitive pre-release bounds explicit in release dependency probes | Copilot | <https://github.com/microsoft/agent-framework/pull/7927> |
| #6054 | samples: add McpDocsResearch declarative workflow showcasing agent-level MCP pattern | jluocsa | <https://github.com/microsoft/agent-framework/pull/6054> |
| #8565 | Python: Don't emit response.completed after a cancelled Foundry hosting run | leilei3167 | <https://github.com/microsoft/agent-framework/pull/8565> |
| #8581 | Python: Create Magentic managers per workflow | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8581> |
| #8557 | Python: Reject every multi-source combination in detect_media_type_from_base64 | sxh313 | <https://github.com/microsoft/agent-framework/pull/8557> |
| #8542 | Python: feat(core): add session-scoped file access isolation | JHf0912 | <https://github.com/microsoft/agent-framework/pull/8542> |
| #8284 | Python: add public TypedDict for AgentExecutor checkpoint state (#8201) | FOWEPJF255 | <https://github.com/microsoft/agent-framework/pull/8284> |
| #8478 | Python: mark hosted /responses incomplete on content_filter and length finish reasons | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8478> |
| #8516 | Python: accept int timeouts in A2AAgent | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8516> |
| #8519 | Python: preserve dict subclasses in workflow checkpoints | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8519> |
| #8521 | Python: case-insensitive User-Agent detection prevents duplicate headers | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8521> |
| #8527 | Python: Fail closed on unresolved agent-tool approvals | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8527> |
| #8535 | Python: preserve native keys in filtered vector delete tools | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8535> |
| #8464 | Python: preserve AgentResponse metadata in WorkflowAgent streaming | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8464> |
| #8544 | Python: Copy only the requested in-memory search page | emme1t | <https://github.com/microsoft/agent-framework/pull/8544> |
| #8490 | Python: Surface switch-case condition errors instead of routing to the default branch | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/8490> |
| #8551 | Python: fix(orchestrations): preserve user multimodal content during handoff | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/8551> |
| #8560 | Python: Require expected keys in tool argument evaluation | YaoxinHuang | <https://github.com/microsoft/agent-framework/pull/8560> |
| #8547 | Python: Include InvokeAzureAgent input.arguments in agent text (#7902) | Shivani767 | <https://github.com/microsoft/agent-framework/pull/8547> |
| #8536 | Python: Reject empty available_modes in mode helpers | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/8536> |
| #8507 | Python: Improve regex validation for shell and file access | westey-m | <https://github.com/microsoft/agent-framework/pull/8507> |
| #8531 | .NET: Pass ChatClientAgent tools per run only rather than setting on FICC | westey-m | <https://github.com/microsoft/agent-framework/pull/8531> |
| #8529 | .NET: 2026-09-18 Release version bump | westey-m | <https://github.com/microsoft/agent-framework/pull/8529> |
| #8402 | .NET: Preserve harness middleware for dynamic tools | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8402> |
| #8508 | Python: evaluate autoSend expressions before emitting output | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8508> |
| #8510 | Python: avoid repeated workflow reference traversal | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8510> |
| #8525 | Python: Synchronize workflow preemption test startup | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8525> |
| #8512 | Python: Require Azure Monitor 1.8.10 for Foundry trace propagation | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8512> |
| #8432 | .NET: Bind always approval responses to surfaced requests | westey-m | <https://github.com/microsoft/agent-framework/pull/8432> |
| #8505 | Python: Refresh dependencies and restore Python 3.15 resolution | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8505> |
| #8498 | Python: Bump package versions for 1.19.0 release | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8498> |
| #8449 | Python: bound stateless pause batches to user turns | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8449> |
| #8459 | Python: expose CodeAct tool parameter schemas | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8459> |
| #8453 | Python: Add sequential function invocation option | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8453> |
| #8497 | ci: update Python dependencies across root and Lab projects | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8497> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8619 | .NET: Add AgentSessionExtensions to retrieve messages from WorkflowChatHistoryProvider | open | MD-V | <https://github.com/microsoft/agent-framework/pull/8619> |
| PR | #8662 | Python: .NET/Python: Isolate declarative MCP client sessions by workflow | open | baywet | <https://github.com/microsoft/agent-framework/pull/8662> |
| PR | #8506 | Python: [Feature]: Publish which arguments an invocation's variable expansion rewrote | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8506> |
| PR | #8702 | Python: Purview: Add streaming buffering and improve docs | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8702> |
| PR | #8709 | Python: fix(python): validate settings and expose agent lifecycle methods | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8709> |
| PR | #8708 | .NET: Allow Harness local chat history marker when stored output is disabled | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8708> |
| PR | #8705 | .NET: Sample Implementation of an OpenAI-specific .AsAIAgent() Implementation could look like. | open | rwjdk | <https://github.com/microsoft/agent-framework/pull/8705> |
| PR | #8605 | .NET: Correct InvokeAzureAgent response output | open | baywet | <https://github.com/microsoft/agent-framework/pull/8605> |
| PR | #8592 | Python: Add TypeSafe AI connector | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8592> |
| PR | #8701 | Python: fix(core): keep annotations and metadata when from_dict builds data content | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8701> |
| PR | #8699 | Python: fix(core): treat a missing text delta as empty when adding text content | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8699> |
| PR | #8690 | .NET/Python: Improve MCP skill resource validation | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8690> |
| PR | #8664 | .NET: Postgres Memory | open | JaredMSFT | <https://github.com/microsoft/agent-framework/pull/8664> |
| PR | #8593 | [BREAKING] Python: Persist Foundry invocation sessions | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8593> |
| PR | #8686 | Python: Add SQL Server native vector store connector | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8686> |
| PR | #8687 | Python: fix(core): prevent path collisions between files and directories in InMemoryAgentFileStore | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8687> |
| PR | #8582 | Python: Fix active mixed-pause Host response correlation | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/8582> |
| PR | #8677 | .NET: Clarify hosting authentication, authorization, and isolation guidance | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8677> |
| PR | #8676 | Python: Add Oracle native vector store connector | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8676> |
| PR | #8685 | Python: Stream Bedrock responses with ConverseStream instead of returning them in one update | open | kimnamu | <https://github.com/microsoft/agent-framework/pull/8685> |
| PR | #8683 | Python: Send images in user messages to Bedrock Converse instead of dropping them | open | kimnamu | <https://github.com/microsoft/agent-framework/pull/8683> |
| PR | #8680 | Python: Send Bedrock guardrailConfig and additionalModelRequestFields options to Converse | open | kimnamu | <https://github.com/microsoft/agent-framework/pull/8680> |
| PR | #8681 | Python: fix(core): keep booleans distinct from numbers inside sets | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8681> |
| PR | #8675 | Python: Add DuckDB vector store connector | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8675> |
| PR | #8621 | Python: fix(core): give each file memory its own description sidecar | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8621> |
| PR | #8672 | Python: Make AG-UI runs disconnect durable | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8672> |
| PR | #8673 | Python: Support knowledge_source_params in AzureAISearchContextProvider | open | saquibjawedbit | <https://github.com/microsoft/agent-framework/pull/8673> |
| PR | #8671 | Python: Preserve compaction through middleware rewrites | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8671> |
| PR | #8648 | Python: Fix middleware type detection with postponed annotations | open | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/8648> |
| PR | #8670 | Python: fix Foundry background local tool replay | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8670> |
| PR | #8596 | Python: Scope workflow invocation kwargs by executor graph | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8596> |
| PR | #8666 | Python: Add a disposable fix-ci smoke test [do not review] | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8666> |
| PR | #8569 | Python: Keep a single checkpoint lineage in functional workflows | open | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/8569> |
| PR | #8665 | Python: Fix tool argument validation for datetime, set and tuple parameters | open | atty57 | <https://github.com/microsoft/agent-framework/pull/8665> |
| PR | #8656 | .NET: Fix workflow topology edge multiplicity comparison | open | baywet | <https://github.com/microsoft/agent-framework/pull/8656> |
| PR | #8606 | .NET: Store created external input messages | open | baywet | <https://github.com/microsoft/agent-framework/pull/8606> |
| PR | #8649 | Python: Build(deps-dev): Bump uv from 0.12.13 to 0.12.15 in /python/packages/lab in the basics group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8649> |
| PR | #8618 | Python: Foundry Hosting - support conversation branching | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/8618> |
| PR | #8640 | Python: settle fatal unknown calls on service conversations | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8640> |
| PR | #8628 | .NET: fix: synchronize StateManager for executors that run concurrently in a superstep | open | RParnell-YB | <https://github.com/microsoft/agent-framework/pull/8628> |
| PR | #8635 | Python: Reject oversized MessagePack history records before appending | open | Yufei-Z | <https://github.com/microsoft/agent-framework/pull/8635> |
| PR | #8634 | Python: Preserve metadata in raw-data content mappings | open | Yufei-Z | <https://github.com/microsoft/agent-framework/pull/8634> |
| PR | #8631 | Python: accept nullable auto-generated keys in vector upsert tools | open | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8631> |
| PR | #8563 | .NET: Add IDecisionClient (experimental), DecisionLoopEvaluator, and the Microsoft.Agents.AI.TypeSafe (Jev) provider | open | joslat | <https://github.com/microsoft/agent-framework/pull/8563> |
| PR | #8602 | Python: Forward invocation kwargs during nested workflow cancellation | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8602> |
| PR | #8561 | .NET:  .NET: fix: Forward x-agent-user-id to toolbox proxy to resolve OAuth consent binding  #8379 | open | sun-9545sunoj | <https://github.com/microsoft/agent-framework/pull/8561> |
| PR | #8514 | Python: break get_latest timestamp ties with the checkpoint lineage chain | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8514> |
| PR | #8541 | Python: emit AG-UI RUN_STARTED before the agent runs when thread and run IDs are supplied | open | ltwlf | <https://github.com/microsoft/agent-framework/pull/8541> |
| PR | #8568 | .NET: stop FileSystemAgentFileStore writing a UTF-8 byte order mark | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8568> |
| PR | #8528 | .NET: include host-tool JsonSchema in Hyperlight execute_code descriptions | open | leilei3167 | <https://github.com/microsoft/agent-framework/pull/8528> |
| PR | #8550 | .NET: document reasoning summaries for AG-UI | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8550> |
| PR | #8533 | .NET: Add IHostedAgentBuilder.AsDefault() for non-keyed agent resolution | open | tomas-rampas | <https://github.com/microsoft/agent-framework/pull/8533> |
| PR | #8532 | .NET: terminate chat completions SSE stream with data: [DONE] | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8532> |
| PR | #7867 | .NET: expose pending tool approval requests from a restored AgentSession | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/7867> |
| PR | #8691 | Python: fix(core): ensure proper section spacing and argument grouping in build_layered_docstring | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8691> |
| PR | #8688 | Python: fix(core): handle None text safely in Message.text property | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8688> |
| PR | #8695 | Python: fix(eval): validate tool_names and mode in tool_called_check | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8695> |
| PR | #8696 | Python: fix(core): reject booleans and non-integers for FunctionTool invocation limits | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8696> |
| PR | #8697 | Python: perf(core): fast path empty incoming messages in filter_new_messages | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8697> |
| PR | #8689 | Python: fix(core): handle None text and Mapping arguments in Content addition | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8689> |
| PR | #8694 | Python: fix(core): prevent Python keywords from producing invalid tool names in _sanitize_agent_name | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8694> |
| PR | #8693 | Python: fix(workflows): preserve scalar subclasses and IntEnum in checkpoint encoding | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8693> |
| PR | #8645 | Python: Keep Field constraints after an Annotated tool description | closed | saquibjawedbit | <https://github.com/microsoft/agent-framework/pull/8645> |
| PR | #8668 | Python: fix(core): forward annotations and metadata in Content.from_dict raw-data path | closed | Sehastrajit-S | <https://github.com/microsoft/agent-framework/pull/8668> |
| PR | #8651 | Python: Build(deps-dev): Bump uv from 0.12.13 to 0.12.15 in /python/packages/lab in the basics group | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8651> |
| PR | #8608 | .NET: Keep function tool response handling distinct | closed | baywet | <https://github.com/microsoft/agent-framework/pull/8608> |
| PR | #5114 | Python: fix: IndexError in detect_media_type_from_base64 for non-base64 data … | closed | Serjbory | <https://github.com/microsoft/agent-framework/pull/5114> |
| PR | #8338 | docs: hyphenate compound modifiers in README | closed | Mnilax | <https://github.com/microsoft/agent-framework/pull/8338> |
| PR | #6785 | Fix malformed frontmatter in agent skills ADR | closed | fallintoplace | <https://github.com/microsoft/agent-framework/pull/6785> |
| PR | #6506 | docs: fix typo in agent run response decision | closed | meichuanyi | <https://github.com/microsoft/agent-framework/pull/6506> |
| PR | #6122 | Python: restore WorkflowAgent pending request state across AgentSession resume | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/6122> |
| PR | #7476 | Python: ci: validate dependency bounds for metadata changes | closed | alectimison-maker | <https://github.com/microsoft/agent-framework/pull/7476> |
| PR | #6985 | .NET: Align AgentOpenTelemetry sample with Foundry-first startup/docs and add Azure OpenAI fallback support | closed | Dudam-Neeraj-Dattu | <https://github.com/microsoft/agent-framework/pull/6985> |
| PR | #8518 | Python: preserve mixed-pause recovery invariants | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/8518> |
| PR | #8364 | Python: emit assistant text in AG-UI when response_format is a JSON Schema mapping | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8364> |
| PR | #8555 | Python: fix: handle case-insensitive User-Agent headers | closed | spark-328 | <https://github.com/microsoft/agent-framework/pull/8555> |
| PR | #8442 | Python: fix(core): resume nested agent-as-tool approval instead of silently no-oping | closed | Sehastrajit-S | <https://github.com/microsoft/agent-framework/pull/8442> |
| PR | #8467 | Build(deps-dev): Bump the python-type-checkers group across 1 directory with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8467> |
| PR | #8502 | Python: Build(deps): Bump tqdm from 4.70.0 to 4.70.1 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8502> |
| PR | #8468 | Python: Build(deps-dev): Bump griffe from 2.2.0 to 2.3.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8468> |
| PR | #8466 | Build(deps-dev): Bump uv from 0.12.9 to 0.12.12 in /python in the basics group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8466> |
| PR | #8501 | Python: Build(deps-dev): Bump the basics group in /python/packages/lab with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8501> |
| PR | #8499 | Build(deps-dev): Bump the basics group across 2 directories with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8499> |
| PR | #8500 | Build(deps-dev): Bump the python-type-checkers group across 1 directory with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8500> |
| Issue | #8684 | Python: [Bug]: BedrockChatClient stream=True returns the whole response in one update, so GPT-6 Sol/Luna/Astra first text arrives 3-7x later | open | kimnamu | <https://github.com/microsoft/agent-framework/issues/8684> |
| Issue | #8682 | Python: [Bug]: BedrockChatClient drops images from user messages, so GPT-6 Sol/Luna/Astra answer without seeing them | open | kimnamu | <https://github.com/microsoft/agent-framework/issues/8682> |
| Issue | #8678 | Python: [Bug]: BedrockChatClient silently drops guardrailConfig and other Bedrock options, so GPT-6 Sol/Luna/Astra reasoning effort can't be set | open | kimnamu | <https://github.com/microsoft/agent-framework/issues/8678> |
| Issue | #8707 | .NET: Foundry hosting rejects Harness local chat history marker when AllowStoredOutputEnabled is false | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8707> |
| Issue | #8704 | Python: [Feature]: Move structured response parsing off `.value` in vNext | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8704> |
| Issue | #8703 | Python: [Feature]: Make public `run` and `get_response` methods async in vNext | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8703> |
| Issue | #8698 | Python: [Feature]: Roadmap for AnyIO-backed asyncio and Trio support | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8698> |
| Issue | #8575 | .NET: [Bug]: A failed approval-resume run permanently corrupts the session ("ToolApprovalRequestContent ... no matching ToolApprovalResponseContent") | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/8575> |
| Issue | #8700 | Python: [Bug]: Mixed approval and Host results give a tool result the user role | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8700> |
| Issue | #8567 | Python: [Bug]: InMemoryAgentFileStore permits a path to be both a file and a directory | open | boshilin123 | <https://github.com/microsoft/agent-framework/issues/8567> |
| Issue | #8679 | Python: [Bug]: filter_values_equal equates booleans with numbers inside sets | open | anishmehta24 | <https://github.com/microsoft/agent-framework/issues/8679> |
| Issue | #8674 | .NET: [Bug]: AIAgent.RunStreamingAsync does not surface the final image from HostedImageGenerationTool | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/8674> |
| Issue | #8661 | Python: [Bug]: Tools with datetime, set or tuple parameters always fail argument validation | open | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/8661> |
| Issue | #8659 | Python: [Bug]: Executor with WorkflowContext[Any] fails edge type validation | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/8659> |
| Issue | #8554 | Python: [Feature]: Python MCP example for schema-validated remote field extraction | closed | ct-jaryn | <https://github.com/microsoft/agent-framework/issues/8554> |
| Issue | #8653 | Python: [Bug]: Azure DocumentDB 'in' filter with a None operand matches null fields | closed | saquibjawedbit | <https://github.com/microsoft/agent-framework/issues/8653> |
| Issue | #8620 | .NET: Python: [Bug]: FileMemoryProvider description sidecars collide for files that differ only by extension | open | anishmehta24 | <https://github.com/microsoft/agent-framework/issues/8620> |
| Issue | #8643 | Python: [Bug]: Field constraints after a string description in an Annotated tool parameter are silently dropped | closed | saquibjawedbit | <https://github.com/microsoft/agent-framework/issues/8643> |
| Issue | #8503 | .NET: [Bug]: Rejected tool approvals are re-requested unless CreateResponse(false, reason) provides a reason (using GPT-5.6-Terra) | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/8503> |
| Issue | #8663 | Python: [Bug]: LocalShellTool never executes on a self-hosted Foundry agent since openai 1.14.4 - "No tool output found for shell call" | open | alkaiserItron | <https://github.com/microsoft/agent-framework/issues/8663> |
| Issue | #8636 | Python: Hamming search loses precision for int64 and uint64 vectors | closed | Shy7777 | <https://github.com/microsoft/agent-framework/issues/8636> |
| Issue | #8623 | Python: [Bug]: InMemoryAgentFileStore truncates Unicode display paths after lowercasing | closed | Shy7777 | <https://github.com/microsoft/agent-framework/issues/8623> |
| Issue | #8647 | Python: [Bug]: Middleware type detection fails with from __future__ import annotations | open | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/8647> |
| Issue | #8624 | Python: [Bug]: RedisContextProvider stores embeddings with the wrong vector data type | closed | Shy7777 | <https://github.com/microsoft/agent-framework/issues/8624> |
| Issue | #8578 | Python: [Feature]: Foundry Hosting - Support conversation branching | open | cecheta | <https://github.com/microsoft/agent-framework/issues/8578> |
| Issue | #8523 | Python: empty-string instructions inject a contentless system message | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8523> |
| Issue | #8594 | Python: Sequential request-info workflow exposes output before approval | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8594> |
| Issue | #8590 | Python: Clarify FileSearchConfig retrieval scope | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8590> |
| Issue | #8570 | Python: [Feature]: FoundryEmbeddingClient support for project-backed OpenAI deployments | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8570> |
| Issue | #8553 | Harness: [Improvement]: Default instructions should request concise rationale/progress instead of thought process | open | mo3in | <https://github.com/microsoft/agent-framework/issues/8553> |
| Issue | #8638 | .NET: Proposal: agent-framework-spider, a web crawl/scrape/search tool package | open | j-mendez | <https://github.com/microsoft/agent-framework/issues/8638> |
| Issue | #8633 | Python: [Bug]: Oversized MessagePack history records make sessions unreadable | open | Yufei-Z | <https://github.com/microsoft/agent-framework/issues/8633> |
| Issue | #8632 | Python: raw-data content mappings lose annotations and attachment metadata | open | Yufei-Z | <https://github.com/microsoft/agent-framework/issues/8632> |
| Issue | #8574 | Python: Design safe provider-outbox recovery for completed mixed pauses | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8574> |
| Issue | #8559 | .NET: Python: Add OpenTelemetry spans for agent, chat, and function middleware | open | droideronline | <https://github.com/microsoft/agent-framework/issues/8559> |
| Issue | #8627 | .NET: [Bug]: StateManager is not synchronized, but InProcessRunner runs a superstep's executors concurrently — QueueStateUpdateAsync from sibling executors corrupts the state dictionary | open | RParnell-YB | <https://github.com/microsoft/agent-framework/issues/8627> |
| Issue | #8625 | Python: [Bug]: Vector upsert tools reject null auto-generated keys | open | Shy7777 | <https://github.com/microsoft/agent-framework/issues/8625> |
| Issue | #8617 | Python: One client per vendor, or one that needs no credential? | open | TheCheetah11 | <https://github.com/microsoft/agent-framework/issues/8617> |
| Issue | #8577 | .NET: Handoff workflow raises two approval requests for one tool call, and resuming reports an error after the tool has executed | open | jaliyaudagedara | <https://github.com/microsoft/agent-framework/issues/8577> |
| Issue | #8607 | .NET: Python: Clarify package installation support for HyperlightCodeActProvider / MontyCodeActProvider | open | Leela0o5 | <https://github.com/microsoft/agent-framework/issues/8607> |
| Issue | #8599 | Python: Clarify when to use platform | open | dgsear | <https://github.com/microsoft/agent-framework/issues/8599> |
| Issue | #8601 | Python: [Bug]: Nested workflow cancellation retains stale invocation kwargs | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8601> |
| Issue | #8597 | Python: Retain Hyperlight tool identities for cached sandboxes | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8597> |
| Issue | #8583 | Python: Clarify RedisContextProvider retrieval scope | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8583> |
| Issue | #8586 | .NET: Why has DeleteSessionAsync been removed from AgentSessionStore? | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/8586> |
| Issue | #8564 | Python: Foundry hosting yields response.completed from the handler after a cancelled workflow run | closed | scott-lever | <https://github.com/microsoft/agent-framework/issues/8564> |
| Issue | #8580 | Python: Create a fresh Magentic manager for each built workflow | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8580> |
| Issue | #8522 | Python: [Feature]: Make workflows stateless with caller-owned checkpoints and msgspec snapshots | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8522> |
| Issue | #8539 | Python: Harness: session-scoped file_access_store option when session_id is unknown at create_harness_agent time | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8539> |
| Issue | #8573 | Python: Scope mixed-pause Host response correlation to the active batch | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8573> |
| Issue | #8515 | Python: A2AAgent rejects int timeouts (only float/httpx.Timeout accepted) | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8515> |
| Issue | #8520 | Python: duplicate User-Agent headers when caller passes lowercase user-agent | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8520> |
| Issue | #8517 | Python: checkpoints flatten dict subclasses (defaultdict/Counter/OrderedDict become plain dict) | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8517> |
| Issue | #8571 | .NET: [Feature]: Add sessionId convenience overloads to AgentSessionStore | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/8571> |
| Issue | #8534 | Python: [Bug]: Filtered vector delete tools reject MongoDB ObjectId keys | closed | Shy7777 | <https://github.com/microsoft/agent-framework/issues/8534> |
| Issue | #8543 | Python: In-memory vector search copies every match before paging | closed | emme1t | <https://github.com/microsoft/agent-framework/issues/8543> |
| Issue | #8558 | Python: tool_call_args_match accepts missing null-valued arguments | closed | YaoxinHuang | <https://github.com/microsoft/agent-framework/issues/8558> |
| Issue | #8566 | .NET: [Bug]: FileSystemAgentFileStore.WriteAsync writes a UTF-8 byte order mark at the start of every file | open | shawngotcher | <https://github.com/microsoft/agent-framework/issues/8566> |
| Issue | #8556 | [Feature]: Add first-class support for TypeSafe AI's Jev (System One) decision model (Python) | open | Katilho | <https://github.com/microsoft/agent-framework/issues/8556> |
| Issue | #8562 | Python: .NET: [Feature]: Add IDecisionClient (reference of dotnet/extensions#7764), DecisionLoopEvaluator, and a TypeSafe (Jev) provider package | open | joslat | <https://github.com/microsoft/agent-framework/issues/8562> |
| Issue | #8552 | .NET: [Feature]: Expose a composable AG-UI hosting seam around session restore and agent execution | open | mo3in | <https://github.com/microsoft/agent-framework/issues/8552> |
| Issue | #8546 | Python: [Bug]: require_per_service_call_history_persistence=True combined with a per-call compaction_strategy can persist excluded messages with no summary (silent history loss) | open | sdkn104 | <https://github.com/microsoft/agent-framework/issues/8546> |
| Issue | #8545 | .NET: [Feature]: Integrate Microsoft.Extensions.AI decision-model inference into agent decision points | open | mo3in | <https://github.com/microsoft/agent-framework/issues/8545> |
| Issue | #8540 | Python: [Bug]: AG-UI RUN_STARTED waits for the first agent update even when threadId and runId are supplied | open | ltwlf | <https://github.com/microsoft/agent-framework/issues/8540> |
| Issue | #8495 | Python: [Bug]: get_agent_mode and set_agent_mode treat an empty available_modes sequence as defaults | closed | boshilin123 | <https://github.com/microsoft/agent-framework/issues/8495> |
| Issue | #8530 | .NET: Memory portability between agents — verified memory bundles with chain of custody (complements A2A) | open | Kaushalt2004 | <https://github.com/microsoft/agent-framework/issues/8530> |
| Issue | #8526 | .NET: [Bug]: Agent chat completions endpoint does not terminate SSE stream with data: [DONE]\n\n | open | baonguyenrb21 | <https://github.com/microsoft/agent-framework/issues/8526> |
| Issue | #8513 | Python: get_latest timestamp ties return a checkpoint chosen by save order, can restore stale state | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8513> |
| Issue | #8504 | Python: Restrict Hyperlight Wasm backend to Python 3.14 and earlier | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8504> |
| Issue | #8496 | Python: [Bug] No API to control Session Memory injection on HITL retry — causes quadratic token growth in multi-turn agent workflows | open | RahulYN | <https://github.com/microsoft/agent-framework/issues/8496> |
| Issue | #3429 | Python: add option to disable return-to-previous in handoff | closed | lbbniu | <https://github.com/microsoft/agent-framework/issues/3429> |
| Issue | #7338 | Python: [AGUI] BaseMessage message_id uniqueness semantics - per-thread or globally unique or something else? | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7338> |
| Issue | #7418 | Python: [Bug]: Harness Agent drops structured value on the streaming path with tool approval | closed | lmx-2077 | <https://github.com/microsoft/agent-framework/issues/7418> |
| Issue | #6006 | .NET: [Bug]: DEVUI Read unrecognized type discriminator id 'function_approval_response'. | closed | wyarcdev | <https://github.com/microsoft/agent-framework/issues/6006> |
| Issue | #7862 | .NET: [Bug]: MAF approval-required function call is persisted as a dangling FunctionCallContent and pending approval state has no public read API | closed | soul-soft | <https://github.com/microsoft/agent-framework/issues/7862> |
| Issue | #8361 | Python: [Bug]: AG-UI skips assistant text when response_format is a JSON Schema mapping | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8361> |
| Issue | #7926 | Python: [Bug]: Release validator failed to validate packages | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7926> |
| Issue | #5115 | Python: [Bug]: pytest.raises wrong usage (dead code and unexpected behaviour) | closed | Serjbory | <https://github.com/microsoft/agent-framework/issues/5115> |
| Issue | #8201 | Python: Add a typed schema for AgentExecutor checkpoint state | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/8201> |
| Issue | #8475 | Python: [Bug]: Hosted /responses drops finish_reason="content_filter" — filtered turns are indistinguishable from successful ones | closed | jiks-hue | <https://github.com/microsoft/agent-framework/issues/8475> |
| Issue | #6723 | Tool calls frequently throw this error. The target tool actually exists, but the system reports that MCP cannot be found. What could be the cause? | closed | zhuxf135 | <https://github.com/microsoft/agent-framework/issues/6723> |
| Issue | #8436 | Python: Mixed pause recovery can lose provider outbox state and mis-correlate Host results | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8436> |
| Issue | #4963 | Python: [Bug]: Cannot approve tool usage from sub-agents | closed | johnliu55-msft | <https://github.com/microsoft/agent-framework/issues/4963> |
| Issue | #8463 | Python: [Bug]: WorkflowAgent drops response metadata when streaming an AgentResponse output | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8463> |
| Issue | #8489 | .NET: Python: [Bug]: SwitchCaseEdgeGroup swallows case-condition errors and silently routes the message to the default branch | closed | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/8489> |
| Issue | #7822 | Python: Bug: Multimodal content is dropped during agent handoff in orchestrator | closed | manideep-malyala | <https://github.com/microsoft/agent-framework/issues/7822> |
| Issue | #7902 | .NET: Python: [Bug]: InvokeAzureAgent silently drops `input.arguments`, never sends them to the agent | closed | AnaNeri | <https://github.com/microsoft/agent-framework/issues/7902> |
| Issue | #7492 | Python: [Bug]:  Foundry Prompt Agent client spans are not showing up in Foundry tracing UI | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7492> |
| Issue | #8182 | Python: FileCheckpointStorage.save crashes on concurrent saves of the same checkpoint id: fixed .tmp filename race | closed | ptimizeroracle | <https://github.com/microsoft/agent-framework/issues/8182> |
| Issue | #8448 | Python: [Bug]: Stateless mixed-pause discovery merges requests across user turns | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8448> |
| Issue | #8445 | Python: Hyperlight and Monty host-tool schema rendering with format selection | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8445> |
| Issue | #7386 | Python: [Feature]: No way to serialize (or order) same-message function calls — stateful tools with write→read dependencies race | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7386> |
| Issue | #4168 | Python: Phase 6: Vector Store Connectors — Tier 2 (MongoDB, Cosmos DB, Pinecone, Chroma, Weaviate) | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4168> |
