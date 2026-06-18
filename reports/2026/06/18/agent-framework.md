# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 16 |
| オープン中の新規 PR     | 16 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 18 |
| クローズ Issue          | 9 |
| 主要コントリビューター  | westey-m, eavanvalkenburg, SergeyMenshykh, kshyju, peibekwe, dependabot[bot] |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6550](https://github.com/microsoft/agent-framework/pull/6550) — .NET: [BREAKING] Align function tool names for BackgroundAgent and FileMemory between python and .net （PR / merged / westey-m）
  .NET Harness の BackgroundAgent / FileMemory tool 名が変更されるため、既存の tool 呼び出し名・スナップショット・ドキュメント参照を更新する必要があります。
- **⚠ 破壊的変更** [#6547](https://github.com/microsoft/agent-framework/pull/6547) — Python: [BREAKING] Port FileMemoryProvider and integrate FileMemoryProvider & FileAccess into the harness agent （PR / open / westey-m）
  Python Harness で FileMemoryProvider / FileAccess を使う予定の利用者は、マージ後の API 形状と承認・権限モデルを確認する必要があります。
- **⚠ 破壊的変更** [#6521](https://github.com/microsoft/agent-framework/pull/6521) — .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules （PR / open / westey-m）
  .NET FileAccessProvider tools に承認ルールが要求される方向のため、自動承認前提の Harness / サンプルは承認設定を見直す必要があります。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `reset` to workflow （PR / open / TaoChenOSU）
  Python workflow の状態管理に `reset` が入る可能性があり、既存 workflow 実装はライフサイクル呼び出しと互換性を確認する必要があります。
- **⚠ セキュリティ** [#6564](https://github.com/microsoft/agent-framework/issues/6564) — .NET: Harden archive extraction guard so the path-containment check is statically recognized （Issue / open / rogerbarreto）
  アーカイブ展開時のパス封じ込め検査に関する安全性課題で、サンドボックスやファイル展開を使う .NET 利用者は修正 PR の取り込み状況を追跡すべきです。

## このリポジトリの要点

Harness 周辺の整備が中心で、.NET では BackgroundAgent / FileMemory tool 名の破壊的変更 (#6550)、LoopAgent 統合 (#6544)、Durable MCP threadId の分離 (#6531) が入っています。
Python 側は LiteLLM 更新、streaming tool call 表示の重複修正、FileMemory / FileAccess / tool approval など Harness 強化の PR が継続中です。
取得件数が上限に達しているため、重要ラベル付きの追加 PR がないかは次回も手動確認対象です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6550](https://github.com/microsoft/agent-framework/pull/6550) — .NET: [BREAKING] Align function tool names for BackgroundAgent and FileMemory between python and .net

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +111 / -111
- マージ日時 (UTC): `2026-06-17 16:14:13`

**変更概要**

.NET Harness の BackgroundAgent と FileMemory が公開する function tool 名を、Python 側と揃える破壊的変更です。
Provider 本体、console formatter、README、単体テストの期待値が同時に更新され、サンプル表示と実際の tool 名の整合性を取っています。
対象は Harness の BackgroundAgent / FileMemory tool を直接呼び出すコード、テスト、ドキュメントです。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/ToolFormatters/BackgroundAgentToolFormatter.cs` | 7 | 7 |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/ToolFormatters/FileMemoryToolFormatter.cs` | 6 | 6 |
| `dotnet/samples/02-agents/Harness/Harness_Step02_Research_WithBackgroundAgents/README.md` | 10 | 10 |
| `dotnet/src/Microsoft.Agents.AI/Harness/BackgroundAgents/BackgroundAgentsProvider.cs` | 14 | 14 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryProvider.cs` | 8 | 8 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/BackgroundAgents/BackgroundAgentsProviderTests.cs` | 38 | 38 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileMemory/FileMemoryProviderTests.cs` | 28 | 28 |

</details>

<details><summary>コミット (1 件)</summary>

- `b2f48fb` Align function tool names for BackgroundAgent and FileMemory between …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: `BackgroundAgentsProvider` と `FileMemoryProvider` が登録する function tool 名の文字列が変わります。
API 型そのものの追加・削除よりも、tool 名に依存する呼び出し、formatter、期待値の変更が主な差分です。

**既存利用者への影響**

既存利用者は、ハードコードした tool 名、承認ルール、ログ解析、スナップショットテストを新しい名称に合わせて更新する必要があります。
Harness サンプルだけを利用している場合は、更新後のサンプルと README に追従すればよいです。

### [#6559](https://github.com/microsoft/agent-framework/pull/6559) — Python: Bump litellm from 1.83.14 to 1.84.0 in /python

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-06-17 12:59:45`

**変更概要**

Python パッケージのロックファイルで `litellm` を 1.83.14 から 1.84.0 に更新する依存関係メンテナンスです。
変更は `python/uv.lock` に限定され、Agent Framework 側のソースコードや公開 API の変更はありません。
LiteLLM 経由のモデル呼び出しを使う Python 利用者は、依存更新に含まれる upstream の挙動差分を通常の回帰確認で見る対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/uv.lock` | 21 | 21 |

</details>

<details><summary>コミット (1 件)</summary>

- `6722911` Bump litellm from 1.83.14 to 1.84.0 in /python

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や Agent Framework 独自抽象の変更はなく、ロックファイル上の依存バージョン差し替えのみです。
破壊的変更はこの PR の変更ファイルからは確認できません。

**既存利用者への影響**

通常はコード移行不要です。
LiteLLM 1.84.0 の変更に依存するモデル接続や provider 設定がある場合のみ、既存テストで挙動確認してください。

### [#6549](https://github.com/microsoft/agent-framework/pull/6549) — Python: Fix harness console rendering one streamed tool call many times

- 作者: westey-m / 状態: MERGED
- ラベル: `python`
- 変更行数: +122 / -5
- マージ日時 (UTC): `2026-06-17 05:19:01`

**変更概要**

Python Harness console で、streaming により分割到着する tool call が何度も描画される問題を修正しています。
`tool_call_display.py` に状態管理と表示ロジックを追加し、同じ tool call の部分更新を重複表示しないようにしています。
console observer の表示品質に関する修正で、実際の tool 実行や agent API の意味論を変えるものではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/02-agents/harness/console/observers/tool_call_display.py` | 122 | 5 |

</details>

<details><summary>コミット (4 件)</summary>

- `e10d173` Fix render issue for tools that are streamed in parts.
- `99aa814` Merge branch 'main' into python-streaming-partial-tools-observer-fix
- `e224153` Address PR review: missing call_id fallback, empty-mapping args, _is_…
- `824d8ad` Merge branch 'main' into python-streaming-partial-tools-observer-fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は console observer の内部表示ロジックに集中しています。
`call_id` がない場合のフォールバック、空の引数マッピング、部分 tool call の判定といったレンダリング上の堅牢化が主で、公開 API の破壊的変更は見当たりません。

**既存利用者への影響**

Console Harness を利用しているユーザーは、重複表示が減る以外の移行作業は基本的に不要です。
独自 observer が内部実装に依存している場合のみ、表示状態の扱いを確認してください。

### [#6544](https://github.com/microsoft/agent-framework/pull/6544) — .NET: Integrate LoopAgent into HarnessAgent with TodoCompletionLoopEvaluator

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +628 / -8
- マージ日時 (UTC): `2026-06-17 18:03:17`

**変更概要**

.NET HarnessAgent に LoopAgent を統合し、Todo の完了状態でループを判定する `TodoCompletionLoopEvaluator` を追加しています。
HarnessAgentOptions、Loop 関連クラス、TodoProvider、サンプル、単体テストが更新され、Harness からループ実行パターンを扱いやすくしています。
研究・タスク処理サンプルで、Todo 完了を終了条件にする agent loop を構成できるようになる機能追加です。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Step01_Research/Program.cs` | 7 | 0 |
| `dotnet/samples/02-agents/Harness/Harness_Step01_Research/README.md` | 2 | 1 |
| `dotnet/samples/02-agents/Harness/Harness_Step05_Loop/Program.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 13 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 27 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Loop/LoopAgent.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Loop/LoopEvaluator.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Loop/TodoCompletionLoopEvaluator.cs` | 149 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Loop/TodoCompletionLoopEvaluatorOptions.cs` | 36 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoProvider.cs` | 6 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 9 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 117 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/Loop/TodoCompletionLoopEvaluatorTests.cs` | 259 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `7a57098` Add LoopAgent to Harness with TodoEvaluator sample
- `fe31840` Address PR comments
- `4a9af86` Fix build error

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規抽象として `TodoCompletionLoopEvaluator` と `TodoCompletionLoopEvaluatorOptions` が追加され、`HarnessAgentOptions` に loop 関連の構成点が増えています。
`LoopAgent` / `LoopEvaluator` / `TodoProvider` に小規模な調整がありますが、破壊的変更として明示される差分ではありません。

**既存利用者への影響**

既存 HarnessAgent 利用者の移行は基本不要で、必要に応じて新しい Loop / Todo evaluator を有効化する形です。
独自の loop evaluator や TodoProvider 拡張を持つ場合は、新しいオプションとの組み合わせを確認してください。

### [#6539](https://github.com/microsoft/agent-framework/pull/6539) — Disable Anthropic tests by not providing environment vars until 404 failure is resolved

- 作者: westey-m / 状態: MERGED
- ラベル: —
- 変更行数: +4 / -3
- マージ日時 (UTC): `2026-06-16 13:23:50`

**変更概要**

Anthropic 関連テストが 404 失敗で不安定な間、CI で該当環境変数を渡さないようにしてテスト実行対象から外す変更です。
`.github/workflows/dotnet-build-and-test.yml` のみを調整し、外部サービス依存の失敗で .NET build/test 全体が妨げられる状況を回避しています。
製品コードではなく CI の安定化が目的です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-build-and-test.yml` | 4 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `30b649b` Disable Anthropic tests by not providing environment vars until 404 f…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は GitHub Actions workflow の環境変数設定のみで、API シグネチャや runtime の挙動変更はありません。
破壊的変更はありませんが、Anthropic 統合テストのカバレッジが一時的に下がります。

**既存利用者への影響**

利用者側の移行は不要です。
Anthropic 連携を重点的に利用する開発者は、該当テストが再有効化されるまで別途手元や専用環境で確認するのが安全です。

### [#6531](https://github.com/microsoft/agent-framework/pull/6531) — .NET:  (Durable): bind MCP threadId to the current agent and guard cross-agent session dispatch

- 作者: kshyju / 状態: MERGED
- ラベル: `documentation` `.NET` `durabletask`
- 変更行数: +113 / -2
- マージ日時 (UTC): `2026-06-17 22:25:23`

**変更概要**

.NET Durable / Azure Functions hosting で、MCP の `threadId` を現在の agent に紐づけ、別 agent の session に誤って dispatch されることを防ぐ修正です。
`DurableAIAgentProxy` と `BuiltInFunctions` にガードが追加され、agent session ID の扱いを検証する単体テストと CHANGELOG も追加されています。
Durable な複数 agent 実行や Azure Functions ホスティングで、セッション分離を強める信頼性修正です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/DurableAIAgentProxy.cs` | 9 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/BuiltInFunctions.cs` | 3 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/AgentSessionIdTests.cs` | 12 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/DurableAIAgentProxyTests.cs` | 87 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `f4bf081` scope MCP threadId to the current agent
- `74dfddd` Fix Async suffix on test methods and add CHANGELOG entries
- `5b0ae14` Merge branch 'main' into kshyju/mcp-cross-agent-threadid-fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DurableAIAgentProxy` に current agent と MCP threadId の対応を検査する処理が追加され、Azure Functions の built-in function dispatch もそれに合わせて調整されています。
CHANGELOG に記録された不具合修正であり、公開 API の破壊的変更というより session ルーティングの防御強化です。

**既存利用者への影響**

正常に agent ごとに session を分けている利用者の移行は不要です。
複数 agent 間で threadId を共有・再利用していた実装は、修正後に拒否される可能性があるため session 管理を見直してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6530 | Bugfix for Declarative Workflow | peibekwe | <https://github.com/microsoft/agent-framework/pull/6530> |
| #6523 | .NET: Rebuild Hyperlight sandbox after tool registry updates | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6523> |
| #6522 | Python: Integrate tool approval into the harness | westey-m | <https://github.com/microsoft/agent-framework/pull/6522> |
| #6520 | Python: Remove unsupported as_agent function_invocation_configuration | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6520> |
| #6515 | Python: Capture context provider instructions in agent telemetry | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6515> |
| #6502 | Python: Foundry hosted agent responses emit failed events | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6502> |
| #6498 | .NET: Allow custom argument marshaling for skill scripts | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6498> |
| #6491 | .NET: fix fan-in barrier checkpoint state | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6491> |
| #6485 | .NET samples: structural alignment changes | alliscode | <https://github.com/microsoft/agent-framework/pull/6485> |
| #6453 | Python: Fix Azure AI Search citation URLs | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6453> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6574 | .NET: Harden fan-in barrier checkpoint state and extend resume coverage | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6574> |
| PR | #6572 | Python: Add WebSearchDisplayObserver to harness console | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6572> |
| PR | #6570 | Python: consolidate dependency maintenance workflow | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6570> |
| PR | #6567 | Python: Fix Foundry aiohttp dependency | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6567> |
| PR | #6565 | .NET: Harden archive extraction guard so path containment is statically recognized | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6565> |
| PR | #6557 | .NET: .NET samples: migrate coding samples to Foundry-first AIProjectClient | open | alliscode | <https://github.com/microsoft/agent-framework/pull/6557> |
| PR | #6556 | Python: Align serialized tool format to OTel GenAI tool def format | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6556> |
| PR | #6555 | .NET: Migrate 01-get-started samples to Foundry as canonical default | open | alliscode | <https://github.com/microsoft/agent-framework/pull/6555> |
| PR | #6554 | .NET: Enabling sequential orchestration to pass entire conversation or only previous output. | open | alliscode | <https://github.com/microsoft/agent-framework/pull/6554> |
| PR | #6552 | Python: Ensure spans created inside sync preparations in streaming call are correctly nested | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6552> |
| PR | #6551 | .NET: InProcessRunnerContext bugfix for workflows | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6551> |
| PR | #6548 | Python: fix: concurrent_agents sample incorrectly treats output as list[Message] | open | benke520 | <https://github.com/microsoft/agent-framework/pull/6548> |
| PR | #6547 | Python: [BREAKING] Port FileMemoryProvider and integrate FileMemoryProvider & FileAccess into the harness agent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6547> |
| PR | #6542 | .NET: Bump Azure.AI.Projects to 2.1.0-beta.3 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6542> |
| PR | #6536 | Python: Improve hosted session scoping | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6536> |
| PR | #6534 | Python: fix: DevUI list[Message] input for declarative ToolAgent entry (#6533) | open | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6534> |
| PR | #6540 | Python: Add gateway integration for workiq | closed | aashishkolluri | <https://github.com/microsoft/agent-framework/pull/6540> |
| PR | #6318 | Python: build(deps): bump aiohttp from 3.13.4 to 3.14.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6318> |
| PR | #6214 | .NET: accept JSON string inline skill args | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6214> |
| Issue | #6575 | Proposal: AgentOS — An OS-Inspired Architecture for Agent Memory, Communication & State Management | open | gymaira1990-jpg | <https://github.com/microsoft/agent-framework/issues/6575> |
| Issue | #6573 | .NET: [Bug]: Fan-in barrier checkpoint state is corrupted by the resuming run when using in-memory CheckpointManager | open | peibekwe | <https://github.com/microsoft/agent-framework/issues/6573> |
| Issue | #6571 | Python: [Bug]: Foundry Hosted Agent Samples - /app is read only in Hosted Foundry Agent Service | open | georgeollis | <https://github.com/microsoft/agent-framework/issues/6571> |
| Issue | #6569 | Python: consolidate dependency maintenance automation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6569> |
| Issue | #6568 | .NET: [Bug]: unable properly reuse workflow which inludes Groupchat as an executor | open | dsslight | <https://github.com/microsoft/agent-framework/issues/6568> |
| Issue | #6566 | Python: agent-framework-foundry misses aiohttp dependency | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6566> |
| Issue | #6564 | .NET: Harden archive extraction guard so the path-containment check is statically recognized | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6564> |
| Issue | #6562 | .NET: [Bug]: OAuth MCP Tool not supported by toolbox for Hosted Agents | open | bilal-fj | <https://github.com/microsoft/agent-framework/issues/6562> |
| Issue | #6561 | .NET: Python: [Feature]: Authentication support from DevUI to Agents | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/6561> |
| Issue | #6560 | [Feature]: Feature/RFC: Meta Skill Authoring API for generating standards-compliant SKILL.md files | open | gimmickj | <https://github.com/microsoft/agent-framework/issues/6560> |
| Issue | #6558 | Python: Docs: clarify Python Foundry Hosting session isolation configuration | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6558> |
| Issue | #6553 | Python: [Bug]: Foundry hosting emits oauth consent payload shape that does not trigger consent popup | open | bcage29 | <https://github.com/microsoft/agent-framework/issues/6553> |
| Issue | #6546 | Python: Integrate FileAccess into HarnessAgent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6546> |
| Issue | #6545 | .NET: Bump Azure.AI.Projects to 2.1.0-beta.3 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6545> |
| Issue | #6543 | .NET: Python: Allow custom argument marshaling for skill scripts | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6543> |
| Issue | #6541 | Python: Integration: cowork-to-code-bridge for local Claude Code execution in agents | open | abhinaykrupa | <https://github.com/microsoft/agent-framework/issues/6541> |
| Issue | #6537 | .NET: [Feature]: Expose CreateTimer in workflows | open | aelij | <https://github.com/microsoft/agent-framework/issues/6537> |
| Issue | #6535 | .NET: [Feature]: AgentFileStore should support list directory and search sub directory | open | Lightczx | <https://github.com/microsoft/agent-framework/issues/6535> |
| Issue | #6478 | Integrate Looping into HarnessAgent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6478> |
| Issue | #6446 | Python: Add AlwaysApprove feature to harness agent and console | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6446> |
| Issue | #6372 | .NET: [Bug]: Fan-in barrier (AddFanInBarrierEdge) loses buffered messages across checkpoint/resume | closed | fagenorn | <https://github.com/microsoft/agent-framework/issues/6372> |
| Issue | #6330 | .NET: Python: [Bug]: Inconsistent citation metadata availability in streamed responses | closed | Pavan-Microsoft | <https://github.com/microsoft/agent-framework/issues/6330> |
| Issue | #6313 | Python: [Bug]: `function_invocation_configuration` from `BaseChatClient.as_agent` doesn't work | closed | bgunnar5 | <https://github.com/microsoft/agent-framework/issues/6313> |
| Issue | #6102 | .NET: [Feature]: Net: I deployed the Qwopus3.5-9B-Coder-MTP-Q8_0.gguf model using the Lllama server. How can I disable thinking in ChatClientAgent? | closed | williamlzw | <https://github.com/microsoft/agent-framework/issues/6102> |
| Issue | #6020 | .NET: [Bug]: Arguments valueKind is String instead of Object when calling AgentInlineSkillScript via functionCall | closed | zhuangif | <https://github.com/microsoft/agent-framework/issues/6020> |
| Issue | #5995 | Python: [Bug]: Azure AI Search citations missing `additional_properties.get_url` in Foundry streaming | closed | Harsh-Microsoft | <https://github.com/microsoft/agent-framework/issues/5995> |
| Issue | #5726 | Python: [Bug]: Final output is empty after successful tool execution in declarative agent run | closed | hapiiiiGit | <https://github.com/microsoft/agent-framework/issues/5726> |
