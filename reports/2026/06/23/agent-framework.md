# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-20 10:51:22 〜 2026-06-23 06:00:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 16 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 11 |
| クローズ Issue          | 14 |
| 主要コントリビューター  | peibekwe, eavanvalkenburg, westey-m, TaoChenOSU, giles17, rogerbarreto |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6607](https://github.com/microsoft/agent-framework/pull/6607) — Python: [BREAKING] Integrate looping into HarnessAgent （PR / merged / westey-m）
  HarnessAgent の Python 実装でループ制御が正式に組み込まれたため、停止条件や反復回数に依存する既存実装は挙動差分を確認してください。
- **⚠ 破壊的変更** [#6599](https://github.com/microsoft/agent-framework/pull/6599) — Python: [BREAKING] Require approval for file-access tools with read-only auto-approval （PR / open / westey-m）
  FileAccess ツールの実行前提が厳格化されるため、read-only 自動承認を使う Python 実装は承認ポリシーを見直してください。
- **⚠ 破壊的変更** [#6488](https://github.com/microsoft/agent-framework/pull/6488) — Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters （PR / open / giles17）
  FileSkillsSource の探索深度や predicate 条件に依存する実装は、検出件数や除外条件の変化を確認してください。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `reset` to workflow （PR / open / TaoChenOSU）
  workflow に `reset` が加わるため、既存のオーケストレーションや復旧手順に状態初期化の考慮が必要です。

## このリポジトリの要点

この期間の Agent Framework は、Python/Harness 側で承認フローとループ制御の挙動が大きく変わる PR が中心でした。特に FileAccess / FileSkillsSource 系の破壊的変更は、既存のサンプルや自動承認ルールに影響しやすいため、次回チェックでも追跡優先度が高いです。加えて、OpenTelemetry の可観測性向上や依存メンテナンスの安定化が進んでおり、運用面の品質改善も並行しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6607](https://github.com/microsoft/agent-framework/pull/6607) — Python: [BREAKING] Integrate looping into HarnessAgent

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +578 / -61
- マージ日時 (UTC): `2026-06-22 13:26:22`

**変更概要**

Python Harness にループ制御が正式に組み込まれ、反復実行の停止条件や実行経路を明示的に扱えるようになりました。`_loop.py` の追加と Harness 本体の接続変更により、サンプル・テスト・middleware まで挙動の基準が整理されています。既存の Python 実装がループ動作に依存している場合は、再実行時の挙動差分を確認してください。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 4 | 1 |
| `python/packages/core/agent_framework/__init__.py` | 2 | 0 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 31 | 0 |
| `python/packages/core/agent_framework/_harness/_loop.py` | 141 | 19 |
| `python/packages/core/tests/core/test_harness_agent.py` | 150 | 0 |
| `python/packages/core/tests/core/test_harness_loop.py` | 217 | 30 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 4 | 3 |
| `python/samples/02-agents/harness/README.md` | 2 | 1 |
| `python/samples/02-agents/harness/harness_research.py` | 21 | 1 |
| `python/samples/02-agents/middleware/agent_loop_middleware_report.py` | 1 | 1 |
| `python/samples/02-agents/middleware/agent_loop_middleware_todos.py` | 1 | 1 |
| `python/uv.lock` | 4 | 4 |

</details>

<details><summary>コミット (5 件)</summary>

- `2a13790` Integrate looping into harness
- `eb9de4e` Address PR comments
- `c882fdf` Merge branch 'main' into python-loop-harness-integrate
- `72266c7` Address PR comments.
- `e05c59d` Fix typing error

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `_loop.py` と Harness 統合により、Python 側の反復実行経路が明示的に追加されています。既存の `HarnessAgent` 統合コードは、loop 制御の前提が変わったことを意識して再確認する必要があります。⚠ **破壊的変更**: ループ制御に依存する Python 実装は、停止条件や反復回数の想定が変わる可能性があります。

**既存利用者への影響**

ループ制御に依存する Python harness 利用者は、停止条件・反復回数・サンプルの期待動作を再確認してください。既存 middleware やカスタムフローを持つ実装は、テストの再実行を推奨します。

### [#6677](https://github.com/microsoft/agent-framework/pull/6677) — .NET: Remove unnecessary declarative logging

- 作者: peibekwe / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +0 / -7
- マージ日時 (UTC): `2026-06-23 00:50:05`

**変更概要**

Declarative Workflows の不要なログ出力を削除し、実行時のノイズを減らす整理 PR です。対象は `.NET` 実装で、機能仕様自体は変えずに内部の実装簡素化が中心です。運用上はログ量が変わるため、デバッグ時のトレース期待値を少し見直すとよいです。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/InvokeFunctionToolExecutor.cs` | 0 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `c0a8522` Remove unnecessary declarative logging

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API に直接の追加や削除はなく、内部の `InvokeFunctionToolExecutor` 実装が簡略化されています。ログ出力の削減はトレース観点では変化があるものの、破壊的変更ではありません。

**既存利用者への影響**

既存利用者の移行は不要です。ただし、ログ内容を前提にしたデバッグ手順やテスト期待値がある場合は、出力差分を確認してください。

### [#6673](https://github.com/microsoft/agent-framework/pull/6673) — .NET: Update version for dotnet release 1.11.0

- 作者: peibekwe / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-06-22 23:10:17`

**変更概要**

dotnet release 1.11.0 向けに NuGet パッケージのバージョン参照を更新する小規模なメタデータ修正 PR です。主な目的はリリース用のバージョン番号を整え、配布物の一貫性を保つことです。機能追加や API 変更はなく、既存実装への影響は限定的です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget/nuget-package.props` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `508d32f` Update package release version

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の追加・削除はなく、NuGet パッケージのバージョン値のみが更新されています。破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。リリースバージョンに依存する CI やパッケージ参照を固定している環境では、更新後の参照先を確認してください。

### [#6667](https://github.com/microsoft/agent-framework/pull/6667) — .NET: Bugfix Emit execute_tool spans when Auto Wiring via Agent UseOpenTelemetry

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +313 / -82
- マージ日時 (UTC): `2026-06-22 22:09:30`

**変更概要**

Auto wiring の経路で `execute_tool` span が欠落していたため、OpenTelemetry 連携時にツール実行の可観測性が不足していた問題を修正しました。`DeferredOpenTelemetryChatClient` と `OpenTelemetryAgent` の実装が整理され、ツール実行イベントの追跡がより正確になっています。既存の監視基盤でツール実行ログを見ている環境では、span の出力形状が変わる点に注意してください。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientExtensions.cs` | 6 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/DeferredOpenTelemetryChatClient.cs` | 133 | 0 |
| `dotnet/src/Microsoft.Agents.AI/OpenTelemetryAgent.cs` | 45 | 64 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/OpenTelemetryAgentTests.cs` | 129 | 18 |

</details>

<details><summary>コミット (1 件)</summary>

- `d26fe0c` .NET: Emit execute_tool spans by placing OpenTelemetry below Function…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ChatClient / OpenTelemetryAgent 周辺で span の生成順序が変更され、`DeferredOpenTelemetryChatClient` が拡張されています。公開 API のシグネチャ変更は見られず、破壊的変更ではありません。

**既存利用者への影響**

既存利用者の移行は不要ですが、OpenTelemetry でツール実行の span を収集している環境では、ダッシュボードやテストの期待値を確認してください。

### [#6662](https://github.com/microsoft/agent-framework/pull/6662) — Python: stabilize dependency maintenance final checks

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +21 / -31
- マージ日時 (UTC): `2026-06-22 14:30:15`

**変更概要**

Python dependency maintenance の最終チェックを安定化し、依存更新ワークフローの再実行性を高めた PR です。ワークフローの条件分岐と依存境界の計算ロジックが調整され、メンテナンス自動化の品質が向上しています。利用者コードの機能仕様そのものには影響しません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-dependency-maintenance.yml` | 2 | 2 |
| `python/scripts/dependencies/_dependency_bounds_upper_impl.py` | 19 | 29 |

</details>

<details><summary>コミット (1 件)</summary>

- `6b1b607` Python: stabilize dependency maintenance final checks

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の追加・削除はなく、依存メンテナンス実行用スクリプトと workflow 設定が更新されています。破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。ただし、依存更新 PR の発生タイミングや品質に影響を受ける運用フローがある場合は、ワークフロー結果を追跡してください。

### [#6658](https://github.com/microsoft/agent-framework/pull/6658) — Python: fix dependency maintenance cutoff

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +56 / -4
- マージ日時 (UTC): `2026-06-22 12:00:49`

**変更概要**

Python dependency maintenance の cutoff 判定を修正し、依存更新 PR の作成条件をより適切にする PR です。Hyperlight の出力ディレクトリ型処理と依存境界スクリプトのロジックも合わせて調整され、メンテナンス自動化の安定性が上がっています。アプリ実装の機能仕様変更ではありません。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-dependency-maintenance.yml` | 1 | 1 |
| `python/packages/hyperlight/agent_framework_hyperlight/_execute_code_tool.py` | 5 | 1 |
| `python/scripts/dependencies/_dependency_bounds_lower_impl.py` | 1 | 1 |
| `python/scripts/dependencies/_dependency_bounds_upper_impl.py` | 49 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `40a6ef3` Python: fix dependency maintenance cutoff
- `0e252af` Python: fix Hyperlight output dir typing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、依存メンテナンス用スクリプトと Hyperlight の内部実装が更新されています。破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。依存更新を自動化している運用では、今後の maintenance PR の発生パターンを確認するとよいです。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6649 | .NET: fix(hosting): emit url_citation annotation events from streamed AI Search responses | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6649> |
| #6636 | .NET: Fix issue with resuming checkpoint after package version upgrade | peibekwe | <https://github.com/microsoft/agent-framework/pull/6636> |
| #6623 | Python: Add FoundryAgent conversation session helper | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6623> |
| #6605 | Python: Agent Harness blog post accompanying samples part 1 | westey-m | <https://github.com/microsoft/agent-framework/pull/6605> |
| #6552 | Python: Ensure spans created inside sync preparations in streaming call are correctly nested | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6552> |
| #6228 | .NET: Project ToolExecution events as FunctionCallContent/FunctionResultContent in GitHubCopilotAgent streaming | giles17 | <https://github.com/microsoft/agent-framework/pull/6228> |
| #6096 | .NET: Propagate EnableSensitiveData to auto-wired inner OpenTelemetryChatClient | Copilot | <https://github.com/microsoft/agent-framework/pull/6096> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6676 | Python: Add Teams SDK end-to-end sample | open | MehakBindra | <https://github.com/microsoft/agent-framework/pull/6676> |
| PR | #6674 | .NET: Enforce ApprovalRequiredAIFunction in GitHub Copilot provider | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6674> |
| PR | #6672 | .NET: Explicitly emit available_resources and available_scripts in skill content | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6672> |
| PR | #6670 | .NET: Fix issue with resuming checkpoint after package version upgrade | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6670> |
| PR | #6665 | Python: track dependency maintenance PR creation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6665> |
| PR | #6664 | Python: chore: update dependencies | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6664> |
| PR | #6659 | .NET: Add factory delegate overload to MapAGUI for per-request agent resolution | open | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6659> |
| PR | #6656 | Python: Fix MCP metadata and tool name handling | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6656> |
| PR | #6653 | .NET: Replace MAF AG-UI abstractions with the AG-UI C# SDK abstractions | open | javiercn | <https://github.com/microsoft/agent-framework/pull/6653> |
| PR | #6651 | .NET: Forward AG-UI forwarded properties from chat options | open | jstar0 | <https://github.com/microsoft/agent-framework/pull/6651> |
| PR | #6650 | Build(deps): Bump pydantic-settings from 2.14.1 to 2.14.2 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6650> |
| PR | #6648 | Python: support MCP skills of mcp-resource-template type | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6648> |
| PR | #6647 | Python: Add SSE keepalive interval to AG-UI FastAPI endpoint | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6647> |
| PR | #6646 | Python: add checkpointing support to AgentFrameworkWorkflow.run() in agent-framework-ag-ui | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6646> |
| PR | #6645 | Python: enforce dependency-bounds validator in CI | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6645> |
| PR | #6644 | Python: Strip tools from Foundry agent request on the preview path (allow_preview=True) | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6644> |
| PR | #6660 | Python: Fix 3 bugs — snapshot ID, null args, pydantic validation (#6266, #5934, #6366) | closed | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6660> |
| PR | #6642 | Python: Fix ResponsesChannel session continuity and harden _result_to_text for workflows | closed | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6642> |
| PR | #6638 | Python: surface Gemini cached and thinking token counts in usage details | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6638> |
| PR | #6629 | Python: reject non-base64 data URIs in detect_media_type_from_base64 | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6629> |
| PR | #6621 | Bump Anthropic from 12.20.0 to 12.29.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6621> |
| PR | #6593 | Python: Add Foundry Hosted Agent history provider | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6593> |
| Issue | #6675 | Python: .NET & Python: [Feature]: Externalize Durable Agents conversation storage to customer-owned stores | open | cgillum | <https://github.com/microsoft/agent-framework/issues/6675> |
| Issue | #6671 | .NET: GitHub Copilot provider doesn't enforce `ApprovalRequiredAIFunction` for custom function tools | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6671> |
| Issue | #6669 | .NET: [Bug]: DurableTask Workflow checkpoints are not restorable across SDK upgrades | open | peibekwe | <https://github.com/microsoft/agent-framework/issues/6669> |
| Issue | #6668 | Add harness documentation pages | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6668> |
| Issue | #6666 | Python: .NET: [Bug]: execute_tool spans missing when auto wiring OpenTelemetry via agent UseOpenTelemetry | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6666> |
| Issue | #6663 | .NET: Harness: Consider aligning common tool parameter names between python and c# | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6663> |
| Issue | #6661 | Dependency bounds test failed | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/6661> |
| Issue | #6657 | Python: [Bug]: Foundry agent rejects tools with HTTP 400 on the preview path (allow_preview=True) | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/issues/6657> |
| Issue | #6655 | Proposal: Goldshine Protocol: A Decentralized Global Capability Delivery Network Based on Agent Encapsulation — Agent-as-Service: ASU Encapsulation for Agent Framework | open | gymaira1990-jpg | <https://github.com/microsoft/agent-framework/issues/6655> |
| Issue | #6654 | [Feature Request] Industry-specific agent templates & cross-industry reuse patterns | open | beixuan577 | <https://github.com/microsoft/agent-framework/issues/6654> |
| Issue | #6652 | Python: [Feature]: AG-UI agent adapter should forward HITL approval to a hosted/remote FoundryAgent (mcp_approval_response) instead of executing locally | open | lordlinus | <https://github.com/microsoft/agent-framework/issues/6652> |
| Issue | #6641 | .NET: AgentFrameworkResponseHandler drops AI Search annotations (url_citation) from streamed responses | closed | graemefoster | <https://github.com/microsoft/agent-framework/issues/6641> |
| Issue | #6478 | .NET: Integrate Looping into HarnessAgent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6478> |
| Issue | #6467 | .NET: Agent Framework - Structured Output prevent tool calls for many providers | closed | kacisse | <https://github.com/microsoft/agent-framework/issues/6467> |
| Issue | #6466 | .NET: [Bug]: Workflow checkpoints are not restorable across SDK upgrades — `TypeId` uses `Assembly.FullName` (incl. version) for executor type matching | closed | saikir1994 | <https://github.com/microsoft/agent-framework/issues/6466> |
| Issue | #6398 | .NET: Align tool names for built in providers between c# and python | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6398> |
| Issue | #5897 | Python: .NET: [Bug]: GitHubCopilotAgent silently drops MCP tool result events — projected as opaque AIContent instead of FunctionResultContent, causing models to fabricate timeout errors | closed | codewithlaszlo | <https://github.com/microsoft/agent-framework/issues/5897> |
| Issue | #5873 | .NET: Use OTEL_INSTRUMENTATION_GENAI_CAPTURE_MESSAGE_CONTENT to control sensitive data capture in telemetry | closed | singankit | <https://github.com/microsoft/agent-framework/issues/5873> |
| Issue | #5559 | Python: Extend streaming span parenting to synchronous stream construction and additional resolution paths | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/5559> |
| Issue | #5130 | Python: [BUG]: ChatClientException 400 invalid_payload when passing [tools] with an agent reference | closed | pablocast | <https://github.com/microsoft/agent-framework/issues/5130> |
| Issue | #4893 | Python: [Feature]: Align concepts between AG-UI and A2A protocols | closed | lixiaoqiang | <https://github.com/microsoft/agent-framework/issues/4893> |
| Issue | #4823 | .NET: [Bug]: Tool events from GitHub Copilot SDK not forwarded as FunctionCallContent/FunctionResultContent | closed | kzu | <https://github.com/microsoft/agent-framework/issues/4823> |
| Issue | #2931 | Python: Feature Request: Built‑in abstraction for conversation creation / IDs (remove need to directly use OpenAI client) | closed | sebafo | <https://github.com/microsoft/agent-framework/issues/2931> |
| Issue | #2015 | .NET: emit execute_tool <function_name> span for function tools (parity with Python / GenAI conventions) | closed | zakimaksyutov | <https://github.com/microsoft/agent-framework/issues/2015> |
