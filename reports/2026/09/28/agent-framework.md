# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 19 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 24 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | rogerbarreto, eavanvalkenburg, westey-m |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#8754](https://github.com/microsoft/agent-framework/pull/8754) — .NET: [BREAKING] Better support tool changes between runs （PR / open / westey-m）
  .NET で実行間にツール構成を変える既存利用者は、提案中の変更内容と移行方法をマージ前に確認してください。
- **⚠ 破壊的変更** [#8750](https://github.com/microsoft/agent-framework/pull/8750) — Python: [BREAKING] Modify replayed history treatment for approvals （PR / merged / westey-m）
  承認要求を再開する Python 利用者は、要求時と再開時に同じ `AgentSession` を渡す必要があります（セッションなしの従来フローは破壊的変更）。
- **⚠ 破壊的変更** [#8741](https://github.com/microsoft/agent-framework/pull/8741) — [BREAKING] Python: Isolate Foundry-hosted MAF state by sandbox （PR / open / eavanvalkenburg）
  Foundry ホスト上の Python エージェントで状態を共有している利用者は、サンドボックス単位の分離による影響を提案段階で確認してください。
- **⚠ 破壊的変更** [#8730](https://github.com/microsoft/agent-framework/pull/8730) — .NET: [BREAKING] Bump Azure.AI.Projects to 3.0.0-beta.3, OpenAI to 2.14.0, and MEAI to 10.10.1 （PR / open / rogerbarreto）
  .NET 利用者は、提案中の Azure AI Projects / OpenAI / MEAI の依存関係更新に伴う API・互換性変更を採用前に確認してください。
- **GA 昇格** [#8756](https://github.com/microsoft/agent-framework/pull/8756) — .NET: Add GA computer tool support to Foundry and Foundry hosting （PR / open / rogerbarreto）
  Foundry で computer tool を利用する .NET 開発者は、GA 対応の対象 API と提供時期を確認してください（PR は未マージです）。

## このリポジトリの要点

Python の承認再開では、承認状態を履歴ではなく `AgentSession` に結び付ける破壊的変更がマージされました（#8750）。AG-UI のカスタム承認状態保護も追加され、OpenAI 統合テストは無効な CI キーのため一時スキップされています。
Foundry ホスティングの状態分離や .NET の computer tool GA 対応は引き続きレビュー中です。また、承認バインディングを構築できない場合に機密性違反の承認が許可されるという報告（#8761）が未解決のため、関連利用者は修正状況を追跡してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8750](https://github.com/microsoft/agent-framework/pull/8750) — Python: [BREAKING] Modify replayed history treatment for approvals

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +588 / -21
- マージ日時 (UTC): `2026-09-25 15:43:45`

**変更概要**

Python の関数ツール承認応答を、再生履歴だけでなく権威ある `AgentSession` に記録された要求へ結び付けます。
セッションから対応する要求を特定できない承認応答は警告付きで破棄し、すでに終端結果で確定した応答は履歴再生のため例外として保持します。
承認要求を発行した実行と再開する実行で同じセッションを使う必要があり、ホスト側承認やセッションを使う既存経路は影響を受けません。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 23 | 3 |
| `python/packages/core/AGENTS.md` | 11 | 0 |
| `python/packages/core/agent_framework/_tools.py` | 105 | 0 |
| `python/packages/core/tests/core/test_function_invocation_logic.py` | 421 | 11 |
| `python/packages/core/tests/core/test_harness_tool_approval.py` | 4 | 6 |
| `python/packages/core/tests/test_types.py` | 1 | 0 |
| `python/packages/openai/tests/openai/test_openai_chat_client.py` | 4 | 0 |
| `python/samples/02-agents/tools/function_tool_with_approval.py` | 19 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `3da7469` Modify replayed history treatment for approvals
- `6542918` address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_tools.py` に承認応答の要求・セッション結合と、未結合応答を無視する `disable_approval_response_binding` オプトアウトを追加し、仕様・サンプル・テストを更新しました。
**⚠ 破壊的変更:** セッションを渡さずに承認応答を再開するフローは、既定でその応答が破棄されます。終端結果ですでに確定した応答は保持されます。

**既存利用者への影響**

承認フローの呼び出し側は、要求を出した実行と再開実行の両方に同一の `AgentSession` を渡してください。移行できない場合は新しいオプトアウトを検討しますが、承認応答の結合を無効化する影響を理解したうえで利用してください。

### [#8714](https://github.com/microsoft/agent-framework/pull/8714) — Python: Protect custom AG-UI approval state namespaces

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +107 / -0
- マージ日時 (UTC): `2026-09-28 00:42:36`

**変更概要**

AG-UI が Shared State をエージェントセッションへ取り込む際、設定済みの `ToolApprovalMiddleware.source_id` を保護対象キーに追加します。
これにより、クライアントからの要求や復元状態でサーバー所有のカスタム承認状態が上書きされるのを防ぎます。
通常の Shared State と信頼されたセッション継続は引き続き利用可能で、変更は AG-UI の Python 実装に限定されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 3 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 104 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `17a733b` Python: Protect custom AG-UI approval state namespaces

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存の保護キー判定に承認ミドルウェアの `source_id` を加え、直接・バンドル・転送ミドルウェアや復元スナップショットを含むケースのエンドポイントテストを追加しました。公開 API シグネチャの変更は示されていません。

**既存利用者への影響**

通常のクライアント状態の利用に変更はなく、移行は不要です。独自の承認状態を Shared State 経由で更新していた場合は、サーバー側で保護されることを確認してください。

### [#8767](https://github.com/microsoft/agent-framework/pull/8767) — .NET: .NET/Python: Temporarily skip OpenAI integration tests while the CI API key is invalid

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `python` `.NET`
- 変更行数: +46 / -5
- マージ日時 (UTC): `2026-09-25 19:09:24`

**変更概要**

CI の OpenAI API キーが認証・クォータエラーで失敗してマージキューを止める問題に対し、影響するライブ統合テストを一時的にスキップします。
.NET は共有の skip-reason 定数を追加して OpenAI fixture と hosting テストに適用し、Python は Azure 以外の integration テストを fixture でスキップします。
ユニットテストと Azure OpenAI テストは対象外で、キー修復後は定数を `null` / `None` に戻して再有効化できます。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Shared/IntegrationTests/TestSkipReasons.cs` | 15 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.IntegrationTests/OpenAIResponsesClientFunctionToolsLiveTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.IntegrationTests/OpenAIResponsesHostingLiveTests.cs` | 2 | 2 |
| `dotnet/tests/OpenAIChatCompletion.IntegrationTests/OpenAIChatCompletionFixture.cs` | 6 | 1 |
| `dotnet/tests/OpenAIResponse.IntegrationTests/OpenAIResponseFixture.cs` | 3 | 0 |
| `python/packages/openai/tests/openai/conftest.py` | 19 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `1b7ce06` Temporarily skip OpenAI integration tests while the CI API key is inv…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や本番コードの変更ではなく、.NET の `TestSkipReasons.OpenAIIntegrationTests` と Python の `OPENAI_INTEGRATION_TESTS_SKIP_REASON` を使ったテスト選択制御です。認証情報が復旧した際にスキップを解除できる定数を設けています。

**既存利用者への影響**

ライブラリ利用者に移行作業はありません。一方、該当する OpenAI 統合テストは一時的に実行されないため、CI でのカバレッジ欠落を認識し、キー復旧後にスキップを解除する必要があります。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8751 | Python: Add native computer use to Responses clients | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8751> |
| PR | #8741 | [BREAKING] Python: Isolate Foundry-hosted MAF state by sandbox | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8741> |
| PR | #8784 | Python: [Feature] Allow tools to declare standing guidance appended to results | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8784> |
| PR | #8773 | Python: fix(openai): close the chat-completions SDK stream when the consumer stops early | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8773> |
| PR | #8783 | build(deps): bump the codeql-actions group across 1 directory with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8783> |
| PR | #8782 | .NET: Do not start a handoff turn from an empty turn token | open | Laurianti | <https://github.com/microsoft/agent-framework/pull/8782> |
| PR | #8780 | Python: fail closed when approval binding is unavailable (#8761) | open | leilei3167 | <https://github.com/microsoft/agent-framework/pull/8780> |
| PR | #8781 | Python: .NET: Python: clarify CodeAct guest packages and host network access | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8781> |
| PR | #8779 | Python: fix(orchestration): add ensure_trailing_user_turn to SequentialBuilder for providers that return empty text on assistant-ending prompts | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8779> |
| PR | #8778 | Python: fix(core): report unreadable history records on append | open | feiiiiii5 | <https://github.com/microsoft/agent-framework/pull/8778> |
| PR | #8776 | .NET: expose host-tool JsonSchema in LocalCodeAct | open | epcm18 | <https://github.com/microsoft/agent-framework/pull/8776> |
| PR | #8774 | Python: fix(core): ResponseStream Transform Hook & Mapper Error Boundary | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/8774> |
| PR | #8771 | Python: Keep null fields in negated Azure Cosmos DB eq filters | open | nniiovoo | <https://github.com/microsoft/agent-framework/pull/8771> |
| PR | #8769 | .NET: Update AGUI SDK packages to 1.0.0 | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8769> |
| PR | #8766 | Python: Improve local shell filtering sample | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8766> |
| PR | #8756 | .NET: Add GA computer tool support to Foundry and Foundry hosting | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8756> |
| PR | #8754 | .NET: [BREAKING] Better support tool changes between runs | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8754> |
| PR | #8755 | Python: stop the MCP lifecycle owner after a failed connect | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8755> |
| PR | #8749 | Python: Add opt-in FunctionInvocationContext injection for skill scripts | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8749> |
| PR | #8514 | Python: break get_latest timestamp ties with the checkpoint lineage chain | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8514> |
| PR | #8306 | Python: discard pending State on failed/cancelled superstep (#7859) | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/8306> |
| PR | #8541 | Python: emit AG-UI RUN_STARTED before the agent runs when thread and run IDs are supplied | closed | ltwlf | <https://github.com/microsoft/agent-framework/pull/8541> |
| Issue | #8761 | Python: [Bug]: A confidentiality violation whose approval binding cannot be built is ALLOWED, not blocked, when `approval_on_violation=True` | open | antsok | <https://github.com/microsoft/agent-framework/issues/8761> |
| Issue | #8777 | Python: [Bug]: FileHistoryProvider skips unreadable JSON history lines on append | open | feiiiiii5 | <https://github.com/microsoft/agent-framework/issues/8777> |
| Issue | #8743 | Python: Foundry hosting: isolate MAF state by trusted user and sandbox | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8743> |
| Issue | #8775 | .NET: LocalCodeAct host-tool parameter schemas missing from execute_code descriptions | open | epcm18 | <https://github.com/microsoft/agent-framework/issues/8775> |
| Issue | #8760 | [Feature]: BackgroundAgentsProvider cannot tell a task that is running on another process from one whose owner died | open | antsok | <https://github.com/microsoft/agent-framework/issues/8760> |
| Issue | #8762 | Python: [Bug]: `OpenAIChatCompletionClient`'s streaming generator never closes the SDK stream, so any early exit leaves the provider response open | open | antsok | <https://github.com/microsoft/agent-framework/issues/8762> |
| Issue | #8772 | .NET: Python: [Feature]: Move MCPSkillsSource to the released SEP-2640 (skills/list and skills/get) | open | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/8772> |
| Issue | #8765 | Python: [Feature]: `ResponseStream.__anext__` runs every per-update transform outside its error handler, so a raising hook or mapper skips cleanup entirely | open | antsok | <https://github.com/microsoft/agent-framework/issues/8765> |
| Issue | #8770 | Python: [Bug]: Cosmos vector store drops rows whose field is null from NOT(eq) filters | open | nniiovoo | <https://github.com/microsoft/agent-framework/issues/8770> |
| Issue | #8768 | Update AGUI Hosting to the released SDK | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/8768> |
| Issue | #8764 | .NET: [Feature]: `RedisHistoryProvider` owns its client construction and exposes no connection options, so a host cannot bound transcript I/O | open | antsok | <https://github.com/microsoft/agent-framework/issues/8764> |
| Issue | #8763 | [Feature]: per-tool concurrency groups, so a pair of dependent tools can serialize without disabling parallelism everywhere | open | antsok | <https://github.com/microsoft/agent-framework/issues/8763> |
| Issue | #8759 | Python: [Feature]: a supported way to retire specific interrupts from a thread snapshot | open | antsok | <https://github.com/microsoft/agent-framework/issues/8759> |
| Issue | #8758 | Python: [Bug]: AG-UI: approving a restored card after a reconnect can fail with "Approval alias conflicts with an existing pending occurrence" | open | antsok | <https://github.com/microsoft/agent-framework/issues/8758> |
| Issue | #8757 | Python: [Feature]: Let a tool declare standing guidance the middleware appends to its results | open | antsok | <https://github.com/microsoft/agent-framework/issues/8757> |
| Issue | #8753 | Python: [Feature]: Surface GitHubCopilotAgent tool approvals as FunctionApprovalRequestContent for DevUI/AG-UI | open | pixeye33 | <https://github.com/microsoft/agent-framework/issues/8753> |
| Issue | #8742 | Python: Redesign Foundry-hosting APIs in one beta release | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8742> |
| Issue | #8744 | Python: Foundry hosting: update Responses agent history, options, and background | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8744> |
| Issue | #8752 | Python: [Bug]: MCPTool leaks its `mcp-lifecycle` owner task when `connect()` fails ("Task was destroyed but it is pending!") | open | Katilho | <https://github.com/microsoft/agent-framework/issues/8752> |
| Issue | #8748 | Python: Foundry hosting: run native Invocations workflows with durable continuation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8748> |
| Issue | #8747 | Python: Foundry hosting: run native Responses workflows with scoped checkpoints | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8747> |
| Issue | #8746 | Python: Foundry hosting: harden Responses integrations and isolation samples | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8746> |
| Issue | #8745 | Python: Foundry hosting: add parsed and durable Invocations agent runs | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8745> |
| Issue | #8740 | .NET: [AG-UI] RunAgentInput.Context is not included in model input by default | open | sheng-jie | <https://github.com/microsoft/agent-framework/issues/8740> |
