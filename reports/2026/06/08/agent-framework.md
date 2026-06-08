# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-05 04:03:36 〜 2026-06-08 01:26:03 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 14 |
| 新規 Issue              | 8 |
| クローズ Issue          | 9 |
| 主要コントリビューター  | TaoChenOSU, westey-m, he-yufeng, cooleryu |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6335](https://github.com/microsoft/agent-framework/pull/6335) — .NET: [BREAKING] Add auto-approval rules (heuristics) to ToolApprovalAgent （PR / merged / westey-m）
  `ToolApprovalAgentOptions` の構造が変更されており、`AddToolApprovalAgent` 拡張メソッドのシグネチャが更新されています。既存の .NET `ToolApprovalAgent` 利用コードはビルドエラーが発生する可能性があるため、新しいオプションクラスへの対応が必要です。

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6335](https://github.com/microsoft/agent-framework/pull/6335) — .NET: [BREAKING] Add auto-approval rules (heuristics) to ToolApprovalAgent

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +497 / -48
- マージ日時 (UTC): `2026-06-05 17:43:07`

**変更概要**

`ToolApprovalAgent` に、関数名やパターンに基づいて自動承認ルール（ヒューリスティクス）を設定できる機能を追加。新しく導入された `ToolApprovalAgentOptions` クラスにより、明示的なユーザー承認が不要な関数をあらかじめ定義できるようになった。`HarnessAgentOptions` も合わせて更新され、ビルダー拡張 `ToolApprovalAgentBuilderExtensions` のシグネチャが変更されている。エージェントの自律実行フローにおけるユーザー体験の改善が主な目的。

<details><summary>コミット (5 件)</summary>

- `b8ac819` Add support for approving tools via heuristic rules
- `619e447` Address PR comments
- `2869eef` Address PR comments
- `2823554` Apply suggestion from @SergeyMenshykh
- `bec17b5` Merge branch 'main' into harness-heuristic-tool-approval

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: 新規クラス `ToolApprovalAgentOptions`（+45 行）が導入され、`ToolApprovalAgent` の設定方法が変更された。`ToolApprovalAgentBuilderExtensions` のシグネチャが更新（+5/-6）されており、既存のビルダー呼び出しはコンパイルエラーになる可能性がある。`HarnessAgentOptions` にも新規プロパティが追加（+9）。`ToolApprovalAgent.cs` 本体も大幅に書き換えられており（+79/-35）、ヒューリスティクスルールの評価ロジックが組み込まれた。

**既存利用者への影響**

`AddToolApprovalAgent` などのビルダー拡張を使用している .NET プロジェクトは、新しい `ToolApprovalAgentOptions` の設定パターンへの移行が必要です。ビルドエラーが発生する可能性が高いため、更新後はコンパイルとテストを必ず実施してください。 — Python: feat(python): Add MCP client OTel spans per GenAI semantic conventions

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `python`
- 変更行数: +575 / -40
- マージ日時 (UTC): `2026-06-05 19:30:16`

**変更概要**

Python の MCP（Model Context Protocol）クライアントに、OpenTelemetry の **GenAI セマンティック規約**に準拠した OTel スパンを追加。`_mcp.py` と `observability.py` を更新し、MCP ツール呼び出しをトレースとして記録できるようになった。並列 MCP 呼び出し時のスパンコンテキスト伝搬の問題も修正され、途切れていたトレース情報が正しく連結されるようになった。376 行の専用テストも追加済み。

<details><summary>コミット (8 件)</summary>

- `df32fc0` feat(python): Add MCP client OTel spans per GenAI semantic conventions
- `f666dd5` refactor: simplify MCP spans — remove enrichment logic and protocol v…
- `7371bdb` Refine copilot solution
- `ed8a975` fix: enable automatic exception recording on MCP spans
- `d322d0e` Reduce number of lines
- `34c2e2c` Add comment to sample
- `105eac0` test: address PR review comments on MCP observability tests
- `8925af3` Fix export error

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_mcp.py` に OTel スパン生成ロジックが大幅追加（+132/-39）。`observability.py` に GenAI セマンティクス対応の新規関数が追加（+65/-1）。スパンのエンリッチメントロジックはリファクタリングにより簡略化された（`f666dd5` 参照）。API シグネチャの破壊的変更は報告されていない。サンプルコードへの変更は最小限（+2/-0）。

**既存利用者への影響**

既存の MCP クライアント利用コードへの変更は不要です。OTel スパンは自動で追加されます。ただしトレース出力の内容が変化するため、既存の可観測性パイプラインを持つ場合はスパン構造の差異を確認することを推奨します。

### [#6259](https://github.com/microsoft/agent-framework/pull/6259) — Python: Refactor workflow as agent pending request handling

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `python` `workflows` `Foundry Hosted Agent`
- 変更行数: +1927 / -293
- マージ日時 (UTC): `2026-06-05 17:31:06`

**変更概要**

Python の **Workflow-as-Agent** モードにおける Pending Request（ツール承認・ヒューマンインザループ）処理をリファクタリング。`_workflows/_agent.py` を大幅に書き直し（+97/-173）、ペンディングリクエストの管理を `AgentExecutor` に集中させた。空メッセージバグの修正も含まれ、`handoff_workflow_as_agent` および `workflow_as_agent_human_in_the_loop` サンプルも簡略化された。Foundry Hosted Agent との互換性も向上している。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_workflows/_agent.py` | 97 | 173 |
| `python/packages/core/agent_framework/_workflows/_agent_executor.py` | 35 | 4 |
| `python/packages/core/agent_framework/_workflows/_workflow.py` | 25 | 4 |
| `python/packages/core/tests/core/test_observability.py` | 5 | 6 |
| `python/packages/core/tests/workflow/test_agent_executor.py` | 168 | 0 |
| `python/packages/core/tests/workflow/test_workflow_agent.py` | 808 | 51 |
| `python/packages/core/tests/workflow/test_workflow_status.py` | 149 | 0 |
| `python/packages/foundry/pyproject.toml` | 1 | 1 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 9 | 3 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 508 | 8 |
| `python/samples/03-workflows/agents/handoff_workflow_as_agent.py` | 5 | 9 |
| `python/samples/03-workflows/agents/workflow_as_agent_human_in_the_loop.py` | 5 | 21 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/09_foundry_skills/provision_skills.py` | 10 | 4 |
| `python/uv.lock` | 102 | 9 |

</details>

<details><summary>コミット (16 件)</summary>

- `4428d53` WIP: Refactor Workflow as agent pending request handling
- `9c0623c` WIP: debugging empty message bug
- `5fade9e` Working: Workflow as agent with function approval
- `ed2dd1f` Merge branch 'main' into local-branch-fix-workflow-as-agent-pending-r…
- `0cea147` Address Copilot comments
- `4f942a3` Fix mypy
- `072c5ad` Address comments and fix pipeline
- `f33e5d5` Merge branch 'main' into local-branch-fix-workflow-as-agent-pending-r…
- _... 他 8 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_workflows/_agent.py` の大規模リファクタリング（+97/-173）によりペンディングリクエスト処理が一元化。`_agent_executor.py`（+35/-4）と `_workflow.py`（+25/-4）にも変更が及んでいる。`foundry` パッケージのバージョン微修正あり。`_responses.py`（+9/-3）に応答処理の調整あり。公開 API の破壊的変更は報告されていないが、内部挙動が変化している。

**既存利用者への影響**

Workflow-as-Agent パターンを使用している Python プロジェクトでペンディングリクエスト処理の挙動が変わる可能性があります。`handoff_workflow_as_agent.py` と `workflow_as_agent_human_in_the_loop.py` のサンプルが更新されているため、既存コードと比較して動作確認することを推奨します。

### [#6208](https://github.com/microsoft/agent-framework/pull/6208) — .NET: fix: preserve Foreach record values

- 作者: he-yufeng / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +29 / -1
- マージ日時 (UTC): `2026-06-05 22:17:20`

**変更概要**

.NET 宣言的ワークフロー（Declarative Workflow）の `ForeachExecutor` バグ修正。`Foreach` ループで複数フィールドを持つレコードを反復処理した際、ループ変数にレコード全体ではなく最初のフィールド値のみが設定される問題を修正。変更自体は 1 行の修正（+1/-1）だが、ワークフローの演算正確性に直結するバグフィックスで、28 行のテストも追加されている。

<details><summary>コミット (1 件)</summary>

- `396c775` fix: preserve foreach record values

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ForeachExecutor.cs` の 1 行修正のみ（+1/-1）。レコード値の上書きロジックが修正されており、複数フィールドのレコード全体が正しくループ変数に保持されるようになった。API シグネチャの変更はなく、内部実装のみの修正。破壊的変更なし。

**既存利用者への影響**

宣言的ワークフローで `Foreach` ループを使用し、複数フィールドを持つレコードを処理している場合、これまで最初のフィールド値しか取得できなかった問題が解消されます。動作が変化するため、既存のテスト結果と期待値を確認することを推奨します。

### [#5893](https://github.com/microsoft/agent-framework/pull/5893) — Python (fix:gemini): make Gemini honor declarative outputSchema, not just JSON mode

- 作者: cooleryu / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +370 / -5
- マージ日時 (UTC): `2026-06-05 16:35:37`

**変更概要**

Python の **Gemini クライアント**が、宣言的エージェント設定の `outputSchema` を正しく尊重しないバグを修正。従来は JSON モードのみが考慮され、`outputSchema` による構造化出力が機能していなかった。`_chat_client.py` にレスポンススキーマ抽出ロジックを追加し（+73/-4）、Gemini API の `response_schema` パラメータとして正しく渡されるよう修正。mypy・pyright の strict モードへの型互換も同時に対応。

<details><summary>コミット (3 件)</summary>

- `ff0a4ff` fix(gemini): preserve schema response_format
- `439359d` fix(gemini): satisfy pyright strict in response schema extraction
- `15d10a1` fix(gemini): use Sequence[object] cast to satisfy both mypy and pyright

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_chat_client.py` に `response_schema` 抽出ロジックを追加（+73/-4）。型ヒントの互換性（mypy・pyright strict 対応）も合わせて修正。テストケースが 293 行追加され、各種スキーマパターンが検証されている。API シグネチャの破壊的変更はなし。README に注記追加（+4/-0）。

**既存利用者への影響**

Gemini バックエンドを使用する Python エージェントで `outputSchema` を宣言的設定に指定している場合、今後は正しく構造化出力が返されます。以前は JSON モードにフォールバックしていたため出力形式が変わる可能性があります。既存テストで出力形式を検証していた場合は再確認が必要です。

### [#4950](https://github.com/microsoft/agent-framework/pull/4950) — .NET: Allow storage of auto-approved functions

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +934 / -0
- マージ日時 (UTC): `2026-06-05 17:42:22`

**変更概要**

.NET の `ChatClient` に、**自動承認済み関数の保存機能**を追加する新クラス `NonApprovalRequiredFunctionBypassingChatClient` を実装。一度自動承認された関数呼び出しを記憶し、以降の呼び出しで再承認を不要にする。`ChatClientAgentOptions`、`ChatClientBuilderExtensions`、`ChatClientExtensions` に新しい API が追加された。PR#6335 の `ToolApprovalAgent` 自動承認ルールと密接に連携する機能拡張で、完全新規ファイルの追加のみ（+934/-0）。

<details><summary>コミット (5 件)</summary>

- `60bacae` Allow storage of auto-approved functions
- `6d546e2` Merge branch 'main' into auto-approved-function-removal
- `d5c3824` Merge branch 'main' into auto-approved-function-removal
- `970f4b7` Merge branch 'main' into auto-approved-function-removal
- `fc3accd` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規クラス `NonApprovalRequiredFunctionBypassingChatClient`（+285 行）を追加。`ChatClientAgentOptions`（+31）、`ChatClientBuilderExtensions`（+31）、`ChatClientExtensions`（+11）に新規 API が追加されている。既存 API への破壊的変更はなし（純粋な機能追加）。テスト 574 行が追加され、自動承認済み関数の記憶・バイパス動作が検証されている。

**既存利用者への影響**

既存の `ChatClient` 利用コードへの変更は不要です。新機能を使用したい場合は `ChatClientBuilderExtensions` に追加された拡張メソッドを使ってオプトインしてください。PR#6335 の `ToolApprovalAgent` 自動承認ルールと組み合わせて使用することを推奨します。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6367 | .NET: Fix single-column value unwrap in declarative workflow | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6367> |
| PR | #6365 | .NET: Add Foundry Deployment docs to HA sample READMEs | open | alliscode | <https://github.com/microsoft/agent-framework/pull/6365> |
| PR | #6363 | Python: Add Foundry Toolbox MCP skills hosted agent sample | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6363> |
| PR | #6360 | Python: Prefer explicit AG-UI resume payloads | open | gezw | <https://github.com/microsoft/agent-framework/pull/6360> |
| PR | #6356 | Python: Add Python package release skill | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6356> |
| PR | #6375 | .NET: mark empty skill capabilities in content | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6375> |
| PR | #6374 | Python: fix tool span context for parallel calls | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6374> |
| PR | #6369 | .NET: Support sub agent request approval passthrough and recovery | closed | XiongHaoTrigger | <https://github.com/microsoft/agent-framework/pull/6369> |
| PR | #6364 | Python: preserve AG-UI snapshot text message IDs | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6364> |
| PR | #6362 | Python: guard invalid OpenAI response payloads | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6362> |
| PR | #6359 | Python: Add Hosted-ToolboxMcpSkills sample | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6359> |
| PR | #6352 | Python: Fix Declarative agent to honor output schema for Gemini | closed | peibekwe | <https://github.com/microsoft/agent-framework/pull/6352> |
| PR | #6187 | .NET: fix Foreach loop value collapsing multi-field records to first field | closed | hanhan761 | <https://github.com/microsoft/agent-framework/pull/6187> |
| PR | #6185 | .NET: [.NET] Fix Declarative Foreach dropping multi-field record values (fixes #6183) | closed | hanhan761 | <https://github.com/microsoft/agent-framework/pull/6185> |
| PR | #6184 | .NET: Fix: preserve multi-field records in ForeachExecutor (fixes #6183) | closed | hanhan761 | <https://github.com/microsoft/agent-framework/pull/6184> |
| PR | #6162 | Python: Fix MCP header provider across transport tasks | closed | kiwigitops | <https://github.com/microsoft/agent-framework/pull/6162> |
| PR | #6158 | [WIP] Update .NET dependencies to Microsoft.Extensions.AI 10.6.0 | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/6158> |
| PR | #5892 | Python: fix(gemini): forward response_format as response_schema (#5888) | closed | Protocol-zero-0 | <https://github.com/microsoft/agent-framework/pull/5892> |
| PR | #4989 | .NET: Update getting started samples and docs to use Azure AI Projects | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/4989> |
| Issue | #6372 | .NET: [Bug]: Fan-in barrier (AddFanInBarrierEdge) loses buffered messages across checkpoint/resume | open | fagenorn | <https://github.com/microsoft/agent-framework/issues/6372> |
| Issue | #6371 | .NET: [Bug]: AgentInlineSkillContentBuilder.Build should explicitly indicate when a skill has no resources or scripts | open | helloxubo | <https://github.com/microsoft/agent-framework/issues/6371> |
| Issue | #6370 | .NET: [Feature]: Allow AIAgent to attach AIContextProvider during a single run | closed | helloxubo | <https://github.com/microsoft/agent-framework/issues/6370> |
| Issue | #6368 | Python: .NET: [Bug]: 'No service for type 'Microsoft.Agents.AI.DevUI.DevUIAuthFilter' has been registered | closed | samcov | <https://github.com/microsoft/agent-framework/issues/6368> |
| Issue | #6366 | Python: [Bug]: AgentResponse.value throws pydantic ValidationError parse errors in multi-message scenarios when using with_request_info() | open | Josh-Weston | <https://github.com/microsoft/agent-framework/issues/6366> |
| Issue | #6361 | Write Harness Blog post | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6361> |
| Issue | #6358 | POC: MCP resource-template skills type integration | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6358> |
| Issue | #6357 | Python: execute_tool OTel spans intermittently lost due to missing context propagation in asyncio.gather | open | rongrong77 | <https://github.com/microsoft/agent-framework/issues/6357> |
| Issue | #6183 | .NET: [Bug]: Declarative Foreach collapses multi-field records to their first field in the loop value variable | closed | yurii-beketov | <https://github.com/microsoft/agent-framework/issues/6183> |
| Issue | #6083 | Allow configuring the approval agent with heuristics | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6083> |
| Issue | #5888 | Python: [Bug]: Declarative agent: Adding `outputSchema` to agent YAML produces incorrect output | closed | hapiiiiGit | <https://github.com/microsoft/agent-framework/issues/5888> |
| Issue | #5654 | Python: Hosted Agent Framework: human-in-the-loop tool approval not working | closed | cs609 | <https://github.com/microsoft/agent-framework/issues/5654> |
| Issue | #4697 | Python: Add observability for MCP tool according to the latest OTel 1.40.0 conventions | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/4697> |
| Issue | #3624 | Python: [Feature]: Better Observability for Agent Creation | closed | wdrone | <https://github.com/microsoft/agent-framework/issues/3624> |
| Issue | #3031 | Python: Modify MCP endpoint to use `snake_case` for parameters | closed | larohra | <https://github.com/microsoft/agent-framework/issues/3031> |
