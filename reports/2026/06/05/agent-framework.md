# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-04 02:26:50 〜 2026-06-05 04:03:36 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 8 |
| 新規 Issue              | 20 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | giles17, moonbox3, SergeyMenshykh, neerajkaram, peibekwe, TaoChenOSU |

## 主要な PR (詳細)

以下では、本期間にマージされた注目度の高い PR を、変更ファイル・コミット単位で詳細に確認する（変更ファイル / コミット一覧は折りたたみブロックに展開）。破壊的変更を含む [#6292](https://github.com/microsoft/agent-framework/pull/6292)（github-copilot-sdk v1.0.0 GA 移行）が今回の最重要項目。

### [#6351](https://github.com/microsoft/agent-framework/pull/6351) — Python: bump package versions for 1.8.0 release

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +77 / -45
- マージ日時 (UTC): `2026-06-04 23:10:55`

**変更概要**

Python パッケージ群を 1.8.0 リリースに向けてバージョン引き上げするリリース準備 PR。`CHANGELOG.md` の更新と、各サブパッケージの `pyproject.toml` / ルート `uv.lock` の依存バージョン同期が中心で、ランタイムの機能変更は伴わない。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 39 | 1 |
| `python/PACKAGE_STATUS.md` | 1 | 1 |
| `python/packages/a2a/pyproject.toml` | 2 | 2 |
| `python/packages/anthropic/pyproject.toml` | 2 | 2 |
| `python/packages/azurefunctions/pyproject.toml` | 3 | 3 |
| `python/packages/bedrock/pyproject.toml` | 2 | 2 |
| `python/packages/core/pyproject.toml` | 1 | 1 |
| `python/packages/foundry/pyproject.toml` | 3 | 3 |
| `python/packages/foundry_hosting/pyproject.toml` | 2 | 2 |
| `python/packages/github_copilot/pyproject.toml` | 2 | 2 |
| `python/packages/mistral/pyproject.toml` | 2 | 2 |
| `python/packages/openai/pyproject.toml` | 2 | 2 |
| `python/packages/orchestrations/pyproject.toml` | 2 | 2 |
| `python/pyproject.toml` | 2 | 2 |
| `python/uv.lock` | 12 | 18 |

</details>

<details><summary>コミット (1 件)</summary>

- `69cbd3c` Python: bump package versions for 1.8.0 release

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャの変更や破壊的変更はなし。core / openai / foundry / github_copilot などの各パッケージのバージョン番号と相互依存制約を 1.8.0 系へそろえるのみ。

**既存利用者への影響**

新バージョンへ追従するだけでよく、コード修正は不要。

### [#6346](https://github.com/microsoft/agent-framework/pull/6346) — Python: Add GitHub Copilot integration tests to CI workflows

- 作者: giles17 / 状態: MERGED
- ラベル: `python`
- 変更行数: +99 / -1
- マージ日時 (UTC): `2026-06-04 22:13:33`

**変更概要**

GitHub Copilot プロバイダー向けの統合テストを CI ワークフロー (`python-integration-tests.yml` / `python-merge-tests.yml`) に追加。直近の v1.0.0 移行 ([#6292](https://github.com/microsoft/agent-framework/pull/6292)) を継続的に検証するためのテスト整備で、本体ライブラリには手を入れない。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-integration-tests.yml` | 42 | 1 |
| `.github/workflows/python-merge-tests.yml` | 57 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `fa63ab3` Python: Add GitHub Copilot integration tests to CI workflows

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ワークフロー YAML のみの変更で、ライブラリ API への影響はなし。Copilot SDK を用いる統合テストジョブを追加している。

**既存利用者への影響**

利用者への影響はなし（CI 内部のみの変更）。

### [#6343](https://github.com/microsoft/agent-framework/pull/6343) — .NET: Restructure skill script schemas XML and remove resources from body

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +88 / -84
- マージ日時 (UTC): `2026-06-04 20:15:29`

**変更概要**

.NET の Agent Skills 機能で、スクリプトスキーマの XML 構造を再編し、リソースを本文 (body) から分離した。`AgentInlineSkillContentBuilder` を中心に生成ロジックを整理 (+13/-41) し、関連する単体テストも追従させている。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/Skills/File/AgentFileSkill.cs` | 2 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Programmatic/AgentClassSkill.cs` | 24 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Programmatic/AgentInlineSkill.cs` | 13 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Programmatic/AgentInlineSkillContentBuilder.cs` | 13 | 41 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentClassSkillTests.cs` | 8 | 10 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentFileSkillScriptTests.cs` | 4 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentInlineSkillTests.cs` | 24 | 23 |

</details>

<details><summary>コミット (2 件)</summary>

- `e0d49d8` Restore UTF-8 BOMs and fix BuildScriptSchemasBlock doc comment
- `c3584ca` Address PR review comments: fix doc remarks and rename tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`BuildScriptSchemasBlock` のドキュメントコメント修正、UTF-8 BOM の復元、テストのリネームが含まれる。スキーマ生成の内部表現が変わるものの、公開 API シグネチャの破壊的変更は確認されない。

**既存利用者への影響**

Skills 機能を独自に拡張していない限り影響は小さい。生成される XML 構造に依存している場合は出力差分を確認するとよい。

### [#6319](https://github.com/microsoft/agent-framework/pull/6319) — Python: MCP long-running task support in Python

- 作者: peibekwe / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1890 / -40
- マージ日時 (UTC): `2026-06-05 00:16:37`

**変更概要**

Python の MCP クライアントに長時間実行タスク (long-running task, LRO) サポートを移植。`_mcp.py` に再接続・ポーリング処理を大幅追加 (+594) し、サンプル `mcp_long_running_task.py` と網羅的なテスト (`test_mcp.py` +1088) を同梱する。前回ウォッチ項目だった .NET からの LRO 移植 (Issue [#6258](https://github.com/microsoft/agent-framework/issues/6258)) を解決した大型 PR。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 13 | 0 |
| `python/packages/core/agent_framework/__init__.py` | 5 | 4 |
| `python/packages/core/agent_framework/_feature_stage.py` | 1 | 0 |
| `python/packages/core/agent_framework/_mcp.py` | 594 | 36 |
| `python/packages/core/tests/core/test_mcp.py` | 1088 | 0 |
| `python/samples/02-agents/mcp/README.md` | 8 | 0 |
| `python/samples/02-agents/mcp/mcp_long_running_task.py` | 181 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `5cd005f` MCP long-running task support in Python
- `e1af7ea` Fix pyupgrade and AGENTS.md reconnect description
- `355997f` Merge branch 'main' into peibekwe/mcp-lro-python
- `6e016b1` Fix bandit nosec marker for CI pipeline
- `012c135` Address PR feedbacks
- `9e35571` Clarifiied comments and addressed more PR feedbacks.

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

feature stage フラグ (`_feature_stage.py`) を追加して新機能を段階的に公開し、`__init__.py` のエクスポートを更新。新規の公開シンボルが追加されるが、既存 API は維持されている。

**既存利用者への影響**

既存利用者への破壊的変更はなし。MCP 経由で長時間タスクを扱いたい場合に新 API を利用できる。

### [#6299](https://github.com/microsoft/agent-framework/pull/6299) — Python: Fix compaction message-id collisions and tool-loop summary persistence

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +633 / -54
- マージ日時 (UTC): `2026-06-04 08:45:38`

**変更概要**

会話コンパクション処理で、メッセージ ID の衝突とツールループ要約の永続化不具合を修正。`_compaction.py` / `_clients.py` を改修し、増分 ID 採番が prefix-id と衝突しないようガードを追加。サンプルと大量のテスト (`test_clients.py` +194 / `test_compaction.py` +96) を整備した。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_clients.py` | 8 | 1 |
| `python/packages/core/agent_framework/_compaction.py` | 34 | 7 |
| `python/packages/core/tests/core/test_clients.py` | 194 | 0 |
| `python/packages/core/tests/core/test_compaction.py` | 96 | 0 |
| `python/samples/02-agents/compaction/README.md` | 4 | 2 |
| `python/samples/02-agents/compaction/advanced.py` | 138 | 44 |
| `python/samples/02-agents/compaction/summarization.py` | 159 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `36e3cc4` Fix compaction message-id collisions and tool-loop summary persistence
- `f6a2da2` Guard incremental message-id assignment against prefix-id collisions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

内部のメッセージ ID 採番ロジックの修正が中心で公開 API の変更はなし。要約 (summary) がツール呼び出しループ間で正しく保持されるよう挙動を是正している。

**既存利用者への影響**

コンパクションを利用しているユーザーは不具合修正の恩恵を受ける。マイグレーションは不要。

### [#6292](https://github.com/microsoft/agent-framework/pull/6292) — Python: [BREAKING] Upgrade github-copilot-sdk to v1.0.0 (stable)

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +335 / -205
- マージ日時 (UTC): `2026-06-04 08:49:39`

**変更概要**

GitHub Copilot プロバイダーが依存する `github-copilot-sdk` を v1.0.0 (stable / GA) へアップグレード。⚠ **破壊的変更を含む**。`_agent.py` の権限ハンドラのスコープ調整・型の拡張に加え、全サンプル (basic / mcp / shell / session / url / function_approval 等) を新 SDK API に合わせて書き換えている。前回ウォッチ項目で、関連 Issue [#6339](https://github.com/microsoft/agent-framework/issues/6339) もクローズ済み。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/github_copilot/agent_framework_github_copilot/_agent.py` | 21 | 16 |
| `python/packages/github_copilot/pyproject.toml` | 1 | 1 |
| `python/packages/github_copilot/tests/test_github_copilot_agent.py` | 203 | 29 |
| `python/samples/02-agents/providers/github_copilot/README.md` | 1 | 1 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_basic.py` | 4 | 18 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_file_operations.py` | 8 | 12 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_function_approval.py` | 31 | 20 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_instruction_directories.py` | 3 | 14 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_mcp.py` | 2 | 13 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_multiple_permissions.py` | 11 | 21 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_session.py` | 5 | 19 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_shell.py` | 14 | 15 |
| `python/samples/02-agents/providers/github_copilot/github_copilot_with_url.py` | 14 | 15 |
| `python/scripts/sample_validation/create_dynamic_workflow_executor.py` | 3 | 3 |
| `python/uv.lock` | 14 | 8 |

</details>

<details><summary>コミット (6 件)</summary>

- `c8dd7ed` Python: Upgrade github-copilot-sdk to v1.0.0 (stable)
- `a28b492` Merge branch 'main' into ghcp-v1-migration
- `5bed9f4` Address PR review: scope permission handlers, widen type, add test
- `33c8db1` Fix validation script and strengthen test assertion
- `8442dc0` Add integration tests for GitHubCopilotAgent
- `0239528` Merge branch 'main' into ghcp-v1-migration

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更** — v0.x 系から v1.0.0 へ移行。サンプルの差分が示すとおり、エージェント生成・権限指定・セッションの扱いといった呼び出し形が変わり、多くのサンプルが大幅に簡素化 (例: `github_copilot_basic.py` +4/-18) されている。`pyproject.toml` の依存を v1.0.0 系へ更新し、統合テスト (`test_github_copilot_agent.py` +203) も追加。

**既存利用者への影響**

⚠ **要マイグレーション** — `agent-framework-github-copilot` を利用しているコードは v1.0.0 の新 API への追従が必要。更新後のサンプル (`python/samples/02-agents/providers/github_copilot/`) が移行の具体的な参考になる。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6263 | Python: Add `timeout` parameter to `FoundryAgent` to fix `ConnectTimeout` on multi-turn conversations | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6263> |
| #6261 | Python: Fix spurious Magentic custom manager warning | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6261> |
| #6249 | Python: Fix toolbox consent flow in hosted agent | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6249> |
| #6239 | .NET: Bump ModelContextProtocol from 1.1.0 to 1.2.0 (#3956) | neerajkaram | <https://github.com/microsoft/agent-framework/pull/6239> |
| #6210 | Python: drop hosted MCP calls when reasoning is stripped | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6210> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6352 | Python: Fix Declarative agent to honor output schema for Gemini | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6352> |
| PR | #6350 | [WIP] Fix failing GitHub Actions job merge-gatekeeper | open | Copilot | <https://github.com/microsoft/agent-framework/pull/6350> |
| PR | #6349 | Python: feat(python): Add MCP client OTel spans per GenAI semantic conventions | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6349> |
| PR | #6342 | Python: Improve AG-UI tool call argument protocol conformance | open | White-Mouse | <https://github.com/microsoft/agent-framework/pull/6342> |
| PR | #6335 | .NET: [BREAKING] Add auto-approval rules (heuristics) to ToolApprovalAgent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6335> |
| PR | #6326 | .NET: Fix typo in XML doc comment for workflow outputs param | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/6326> |
| PR | #6322 | Python: Fix as_agent function invocation config | open | puneetdixit200 | <https://github.com/microsoft/agent-framework/pull/6322> |
| PR | #6355 | Python: fix(python): reject invalid OpenAI provider responses | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6355> |
| PR | #6354 | Python: fix(python): preserve AG-UI snapshot text IDs | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6354> |
| PR | #6353 | Python: fix(python): emit per-tool otel definitions | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6353> |
| PR | #6345 | Python: Add GitHub Copilot integration tests to CI workflows | closed | giles17 | <https://github.com/microsoft/agent-framework/pull/6345> |
| PR | #6324 | Python: emit per-tool OpenTelemetry tool definitions | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6324> |
| PR | #6323 | .NET: Python: Update GitHub Copilot SDK version and enhance agent response … | closed | BertHuysmans | <https://github.com/microsoft/agent-framework/pull/6323> |
| PR | #6139 | Python: fix: preserve reasoning with hosted MCP calls | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6139> |
| PR | #6137 | Python: fix: avoid empty final response after function limits | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6137> |
| Issue | #6348 | .NET: Python: Restructure skill script schemas XML and remove resources from body | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6348> |
| Issue | #6347 | Python: Add sample for mcp skills for hosted agents | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6347> |
| Issue | #6344 | .NET: [Bug]: AIContextProvider messages are automatically removed when using a Workflow-as-Agent | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/6344> |
| Issue | #6341 | Create community ecosystem guidance for external packages | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6341> |
| Issue | #6340 | Switch from AzureOpenAI to AIProjectClient for AF samples | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6340> |
| Issue | #6339 | Python: GitHub Copilot SDK V1.0 Migration | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6339> |
| Issue | #6338 | Python: Claude Python SDK Version Bump | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6338> |
| Issue | #6337 | .NET: GitHub Copilot SDK V1.0 Migration | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6337> |
| Issue | #6336 | Update GitHub Copilot Documentation with V1.0 Release | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6336> |
| Issue | #6334 | Update HarnessConsole UX to show total consumed tokens (not just context window percentage consumed) | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6334> |
| Issue | #6333 | Remove required tokens params from HarnessAgent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6333> |
| Issue | #6332 | Add support for AIContextProviders to output custom messages including state snapshots/deltas for AGUI | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6332> |
| Issue | #6331 | Allow configuring function approvals for harness features | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6331> |
| Issue | #6330 | .NET: Python: [Bug]: Inconsistent citation metadata availability in streamed responses | open | Pavan-Microsoft | <https://github.com/microsoft/agent-framework/issues/6330> |
| Issue | #6329 | .NET: [Bug]: Inconsistent session message structure between Agent and Workflow-as-Agent | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/6329> |
| Issue | #6328 | Python: Autonomous handoff - inconsistent turn limit behaviour | open | BharathRajR | <https://github.com/microsoft/agent-framework/issues/6328> |
| Issue | #6327 | .NET: [Feature]: Add ability to define a custom ChatHistoryProvider for Workflow as Agent | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/6327> |
| Issue | #6325 | .NET: [Bug]: XML documentation typo in WorkflowHostingExtensions.cs | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/6325> |
| Issue | #6321 | Python: [Feature]: AlgoVault MCP end-to-end sample for python/samples/05-end-to-end/ | closed | AlgoVaultFi | <https://github.com/microsoft/agent-framework/issues/6321> |
| Issue | #6320 | .NET: [Feature]: .NET - Allow enabling workflow-level OpenTelemetry when using HandoffWorkflowBuilder | open | noobwu | <https://github.com/microsoft/agent-framework/issues/6320> |
| Issue | #6258 | Python: Port MCP LRO support to Python | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/6258> |
| Issue | #6244 | .NET: Remove RC tag from Declarative projects | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/6244> |
| Issue | #6241 | Python: [Bug]: FoundryAgent causing ConnectTimeout on multi-turn conversations | closed | Pavan-Microsoft | <https://github.com/microsoft/agent-framework/issues/6241> |
| Issue | #6074 | Python: [Bug]: ] Orphaned mcp_call items cause HTTP 400 in multi-turn reasoning model flows | closed | swadile999 | <https://github.com/microsoft/agent-framework/issues/6074> |
| Issue | #5741 | Python: [Bug]: Blocking synchronous tool execution freezes Responses API polling inside async event loop | closed | lorenzo-caruso | <https://github.com/microsoft/agent-framework/issues/5741> |
