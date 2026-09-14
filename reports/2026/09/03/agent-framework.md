# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 9 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 7 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | eavanvalkenburg, rogerbarreto, moonbox3, xiaobaZeo, SergeyMenshykh |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7383](https://github.com/microsoft/agent-framework/issues/7383) — Python: Bind tool-approval responses to surfaced approval requests （Issue / closed / eavanvalkenburg）
  Python でローカル tool approval を利用する開発者は、再利用された `call_id` による誤承認を防ぐ修正版へ更新し、永続化済みの承認状態で互換警告が出ないか確認してください。

## このリポジトリの要点

Python では [PR #7988](https://github.com/microsoft/agent-framework/pull/7988) が tool approval を安定した呼び出し単位へ結び付け、承認の取り違えを防止しました。[PR #7992](https://github.com/microsoft/agent-framework/pull/7992) はモデル拒否を通常テキストの互換性を保ったまま識別可能にしています。  
.NET では Azure AI Projects 3.0 系への更新、`Azure.AI.OpenAI` 依存の撤去、A2A バックグラウンドタスクの状態追跡が進み、SDK 依存関係とホスティングの信頼性が整理されました。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7992](https://github.com/microsoft/agent-framework/pull/7992) — Python: Preserve refusals as marked text

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +7208 / -5410
- マージ日時 (UTC): `2026-09-02 23:03:13`

**変更概要**

モデルプロバイダーが返す refusal を通常のテキストへ平坦化した際に、拒否であるという意味情報が失われる問題を解消します。  
`Content(type="text")` の互換性を保ちつつ、`additional_properties["model_output_kind"] = "refusal"` という実験的マーカーを永続化します。  
OpenAI、Foundry hosting、Responses hosting、DevUI がこのマーカーからネイティブの refusal フィールドやストリーミングイベントを復元し、構造化出力の抽出対象から拒否文を除外します。

<details><summary>変更ファイル (30 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0039-python-refusal-content.md` | 82 | 0 |
| `python/packages/core/agent_framework/_types.py` | 19 | 1 |
| `python/packages/core/tests/core/test_sessions.py` | 28 | 1 |
| `python/packages/core/tests/core/test_types.py` | 149 | 0 |
| `python/packages/devui/AGENTS.md` | 4 | 0 |
| `python/packages/devui/agent_framework_devui/_conversations.py` | 19 | 2 |
| `python/packages/devui/agent_framework_devui/_mapper.py` | 96 | 25 |
| `python/packages/devui/agent_framework_devui/models/__init__.py` | 4 | 0 |
| `python/packages/devui/agent_framework_devui/ui/assets/index.js` | 67 | 73 |
| `python/packages/devui/frontend/src/components/features/agent/agent-view.tsx` | 87 | 41 |
| `python/packages/devui/frontend/src/components/features/agent/message-renderers/OpenAIContentRenderer.tsx` | 8 | 2 |
| `python/packages/devui/frontend/src/components/features/workflow/execution-timeline.tsx` | 9 | 3 |
| `python/packages/devui/frontend/src/components/features/workflow/workflow-view.tsx` | 33 | 15 |
| `python/packages/devui/frontend/src/services/api.ts` | 3 | 1 |
| `python/packages/devui/frontend/src/services/streaming-state.ts` | 85 | 11 |
| _... 他 15 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `941cc01` feat(python): preserve provider refusals
- `35f30a9` chore: drop unrelated formatting
- `5715b35` refactor(python): preserve refusals as marked text
- `60dbe8f` Merge upstream/main into python-refusal-content
- `c295545` fix(python): preserve refusal content boundaries
- `4e4bc65` fix(python): support OpenAI 3 typing floor
- `585349a` fix(python): align streamed response indexes
- `fe8639c` perf(python): bound response index projection
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい公開コンテンツ型は追加せず、既存 `Content` の `additional_properties` に実験的な `model_output_kind` マーカーを載せる設計です。シリアライズ、履歴、ストリーミング時の境界と response index の扱いが修正され、各 OpenAI 互換アダプターが refusal を再構築します。既存テキスト表現は維持されるため、破壊的変更ではありません。

**既存利用者への影響**

既存コードの移行は不要です。旧ランタイムでも拒否文は通常テキストとして保持されますが、ネイティブ refusal として再送・表示したい場合は関連パッケージを揃えて更新してください。

### [#7995](https://github.com/microsoft/agent-framework/pull/7995) — .NET: Update Azure AI Projects to 3.0.0 beta 1

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +66 / -67
- マージ日時 (UTC): `2026-09-02 19:26:51`

**変更概要**

Azure AI Projects SDK 3.0.0-beta.1 が response／conversation モデルを OpenAI 2.12.0 側へ移したことに追従する更新です。  
`Azure.AI.Projects`、`Microsoft.Extensions.AI.OpenAI`、`OpenAI` の依存バージョンを揃え、Foundry 実装と hosted sample を新しい OpenAI 型へ移行しました。  
Agent、workflow、memory、hosting の動作は維持しながら、Azure AI Projects と OpenAI SDK の依存系列を一本化しています。

<details><summary>変更ファイル (36 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 3 | 3 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step02.2_MultiturnWithServerConversations/Program.cs` | 3 | 2 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step18_BingCustomSearch/Agent_Step18_BingCustomSearch.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step19_SharePoint/Agent_Step19_SharePoint.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step20_MicrosoftFabric/Agent_Step20_MicrosoftFabric.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step22_MemorySearch/Agent_Step22_MemorySearch.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step22_MemorySearch/Program.cs` | 2 | 3 |
| `dotnet/samples/02-agents/AgentWithMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory.csproj` | 1 | 1 |
| `dotnet/samples/03-workflows/Declarative/HostedWorkflow/Program.cs` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/HostedSteering.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/HostedWorkflowHandoff.csproj` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient/HostedWorkflowResilient.csproj` | 1 | 1 |
| `dotnet/samples/05-end-to-end/AgentWebChat/AgentWebChat.Web/OpenAIResponsesAgentClient.cs` | 1 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedAgentUserAgentPolicy.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 1 | 1 |
| _... 他 21 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `b30af49` .NET: Update Azure AI Projects to 3.0.0 beta 1
- `af61a79` .NET: Align SDK upgrade with current main
- `da1ca14` .NET: Use Projects 3 in hosted samples

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

削除された Azure 側の response／conversation モデル参照を OpenAI 2.12.0 の対応型へ置換し、Foundry hosting のポリシー、クライアント拡張、宣言的 workflow provider、サンプルの型利用を更新しています。Agent Framework の公開動作契約を変えるものではありませんが、SDK は beta 世代更新のため独自拡張で旧 Azure 型を直接参照している場合はコンパイル確認が必要です。

**既存利用者への影響**

標準の Agent Framework API 利用者に移行は不要です。Foundry SDK の型を直接扱うコードやパッケージバージョンを固定しているアプリは、OpenAI 2.12.0 系との整合性を確認してください。

### [#7998](https://github.com/microsoft/agent-framework/pull/7998) — .NET: Track and update A2A task state

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +592 / -156
- マージ日時 (UTC): `2026-09-02 19:10:08`

**変更概要**

A2A hosting がバックグラウンドタスクを返した後、後続の agent update を反映せず `Working` 状態に残り続ける問題を修正します。  
新規メッセージを streaming agent API で処理し、`AgentRunMode` と `ReturnImmediately` の組み合わせに応じて、メッセージ集約、初期タスク返却後の継続更新、完了タスクへの集約を切り替えます。  
エラー時のタスク確定と artifact metadata の保持も追加され、A2A サーバーの状態・成果物更新が一貫します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AAgentHandler.cs` | 124 | 65 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/AgentEventQueueExtensions.cs` | 51 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AAgentHandlerTests.cs` | 326 | 91 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AServerServiceCollectionExtensionsTests.cs` | 91 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `b811d67` .NET: Track A2A task updates with streaming
- `a123466` .NET: Finalize aggregated A2A tasks on errors
- `c6f3881` .NET: Extract A2A artifact queue extension
- `54b6cdc` .NET: Simplify A2A new message handling

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`A2AAgentHandler` の応答経路を streaming ベースへ再構成し、artifact をイベントキューへ流す `AgentEventQueueExtensions` を追加しています。公開レスポンス形状は維持したまま、即時返却タスクと集約タスクの状態遷移、エラー終了、metadata 伝播を実装した非破壊的な修正です。

**既存利用者への影響**

移行作業は不要です。A2A のバックグラウンド実行を利用している場合は、更新後にタスクが `Working` から完了／失敗へ遷移し、artifact が順次反映されることを確認してください。

### [#7986](https://github.com/microsoft/agent-framework/pull/7986) — .NET: Remove Azure.AI.OpenAI dependency

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +406 / -235
- マージ日時 (UTC): `2026-09-02 14:11:57`

**変更概要**

.NET ツリーに残っていた `Azure.AI.OpenAI` への直接依存を削除し、Azure OpenAI v1 endpoint でも公式 `OpenAI` SDK を利用する構成へ統一します。  
サンプルは `OpenAIClient` と `BearerTokenPolicy` を使い、Entra scope と Azure OpenAI resource URL の `/openai/v1/` 正規化を共通化しました。  
テスト、README、Semantic Kernel 移行ガイドも同じクライアント構築方法へ更新され、二重の SDK サーフェスを解消しています。

<details><summary>変更ファイル (62 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/upgrades/prompts/SemanticKernelToAgentFramework.md` | 45 | 25 |
| `dotnet/Directory.Packages.props` | 1 | 2 |
| `dotnet/README.md` | 9 | 5 |
| `dotnet/samples/02-agents/A2A/A2AAgent_PollingForTaskCompletion/A2AAgent_PollingForTaskCompletion.csproj` | 0 | 1 |
| `dotnet/samples/02-agents/A2A/A2AAgent_StreamReconnection/A2AAgent_StreamReconnection.csproj` | 1 | 2 |
| `dotnet/samples/02-agents/AGUI/Step01_GettingStarted/Server/Program.cs` | 7 | 5 |
| `dotnet/samples/02-agents/AGUI/Step01_GettingStarted/Server/Server.csproj` | 1 | 2 |
| `dotnet/samples/02-agents/AGUI/Step02_BackendTools/Server/Program.cs` | 7 | 5 |
| `dotnet/samples/02-agents/AGUI/Step02_BackendTools/Server/Server.csproj` | 1 | 2 |
| `dotnet/samples/02-agents/AGUI/Step03_FrontendTools/Server/Program.cs` | 7 | 5 |
| `dotnet/samples/02-agents/AGUI/Step03_FrontendTools/Server/Server.csproj` | 1 | 2 |
| `dotnet/samples/02-agents/AGUI/Step04_HumanInLoop/Server/Program.cs` | 7 | 5 |
| `dotnet/samples/02-agents/AGUI/Step04_HumanInLoop/Server/Server.csproj` | 1 | 2 |
| `dotnet/samples/02-agents/AGUI/Step05_StateManagement/Server/Program.cs` | 7 | 5 |
| `dotnet/samples/02-agents/AGUI/Step05_StateManagement/Server/Server.csproj` | 1 | 2 |
| _... 他 47 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `ef545be` .NET: Remove Azure.AI.OpenAI dependency
- `9a504cf` .NET: Address PR review findings
- `1de00f4` .NET: Share Azure OpenAI endpoint normalization

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

中央管理されていた `Azure.AI.OpenAI` のバージョンと各プロジェクト参照を削除し、`AzureOpenAIClient` の利用箇所を `OpenAIClient` へ置換しています。共有の `AzureOpenAIEndpoint` が resource root を `/openai/v1/` へ正規化し、認証には `https://ai.azure.com/.default` を使用します。Agent Framework 自体の公開 API 削除ではないため、PR 上は非破壊的変更です。

**既存利用者への影響**

Agent Framework API の利用者は移行不要です。ただしサンプルを流用して `AzureOpenAIClient` や推移的な `Azure.AI.OpenAI` 参照に依存していたアプリは、`OpenAIClient` と v1 endpoint の構成へ明示的に移行してください。

### [#7988](https://github.com/microsoft/agent-framework/pull/7988) — Python: bind approvals to stable call occurrences (#7383)

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +2180 / -152
- マージ日時 (UTC): `2026-09-02 12:28:16`

**変更概要**

Python のローカル tool approval で、欠落または再利用された provider `call_id` により別の呼び出しを同一承認として扱える曖昧さを解消します。  
新しい actionable な `function_call` ごとに安定した `Content.id` を付与し、承認要求と再開時の照合にはこの occurrence ID、tool result の相関には従来の `call_id` を使い分けます。  
旧形式の永続化済み承認は一度だけ互換再開でき、不一致は実行せず fail-closed とすることで、安全性と移行可能性を両立しています。

<details><summary>変更ファイル (29 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/skills/pull-requests/SKILL.md` | 10 | 0 |
| `docs/specs/004-python-function-calling-loop.md` | 53 | 5 |
| `python/AGENTS.md` | 8 | 6 |
| `python/packages/ag-ui/AGENTS.md` | 4 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 138 | 10 |
| `python/packages/ag-ui/agent_framework_ag_ui/_approval_state.py` | 2 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_message_adapters.py` | 3 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_run_common.py` | 3 | 3 |
| `python/packages/ag-ui/agent_framework_ag_ui/_utils.py` | 25 | 0 |
| `python/packages/ag-ui/pyproject.toml` | 1 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_agent_wrapper_comprehensive.py` | 43 | 26 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 585 | 23 |
| `python/packages/ag-ui/tests/ag_ui/test_multi_turn.py` | 73 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_run.py` | 65 | 0 |
| `python/packages/core/AGENTS.md` | 7 | 4 |
| _... 他 14 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `402857a` Python: bind approvals to stable call occurrences
- `ac395a5` Python: cover corrected approval retries
- `033174c` Python: address approval identity review
- `ae5bdad` Python: harden occurrence identity compatibility
- `0d49394` Refresh PR head synchronization
- `b08a397` Python: narrow streamed call identity keys
- `a2befaf` Merge upstream main into approval replay storage

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規ローカル呼び出しの `Content.id` を承認単位の識別子として安定化し、provider/service の `call_id` と責務を分離しました。policy middleware、AG-UI の承認状態、legacy message 互換、OpenAI の interleaved streaming correlation まで同じ識別規則を適用します。空の `call_id` は当面 occurrence ID へフォールバックして `FutureWarning` を出し、旧 snapshot は限定的な互換経路で処理する非破壊的なセキュリティ強化です。

**既存利用者への影響**

通常は移行不要で、既存の pending approval も一度は再開できます。承認状態を独自に保存・変換している実装は `Content.id` を保持し、警告が出る空の `call_id` や旧形式を段階的に解消してください。

### [#8007](https://github.com/microsoft/agent-framework/pull/8007) — CI: Prevent ineligible DevFlow runs from canceling reviews

- 作者: moonbox3 / 状態: MERGED
- ラベル: —
- 変更行数: +35 / -2
- マージ日時 (UTC): `2026-09-02 11:25:25`

**変更概要**

実行資格のない PR イベントが、既に承認されて実行中の DevFlow `/review` workflow を concurrency 制御でキャンセルしてしまう問題を修正します。  
workflow の concurrency を PR ごとの `review` lane と `gate` lane に分離し、manual dispatch は実行した actor を基準に認可します。  
外部・非対象イベントの連続発生から有効なレビュー実行を保護しつつ、最新レビューを優先する順序は維持されます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/devflow-pr-review.yml` | 35 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `a8f8d91` CI: Keep eligible DevFlow reviews from being superseded
- `166381e` CI: Separate trusted DevFlow review concurrency

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は `.github/workflows/devflow-pr-review.yml` のみで、アプリケーション API への変更はありません。信頼済みレビューと eligibility gate の concurrency key を分離し、手動起動の認可主体を明確化した CI 運用上の修正です。

**既存利用者への影響**

ライブラリ利用者への影響や移行はありません。リポジトリの DevFlow レビュー実行が、無関係な PR イベントで中断されにくくなります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8006 | Python: fix Foundry OAuth consent response persistence | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8006> |
| #7776 | Python: Fix AG-UI workflow-as-agent approval resumes | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7776> |
| #8004 | Docs: fix lazy-loading grammar in Python package design | xiaobaZeo | <https://github.com/microsoft/agent-framework/pull/8004> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8020 | .NET: Include workflow outputs in hosted agent responses | open | UniversePeak | <https://github.com/microsoft/agent-framework/pull/8020> |
| PR | #8014 | Python: Add core vector store abstractions | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8014> |
| PR | #8019 | Python: Chore(deps-dev): Bump @humanfs/node from 0.16.6 to 0.16.8 in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8019> |
| PR | #8018 | .NET: Surface workflow exceptions instead of a JSON serialization error | open | atty57 | <https://github.com/microsoft/agent-framework/pull/8018> |
| PR | #8011 | Python: Stamp AG-UI checkpoint owner on every save | open | Choppaaahh | <https://github.com/microsoft/agent-framework/pull/8011> |
| PR | #8009 | Python: Chore(deps): Bump browserslist from 4.25.3 to 4.28.8 in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8009> |
| PR | #8005 | Python: fix: preserve tool call/result order in AG-UI message split | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8005> |
| PR | #7659 | Python: surface mid-run oauth_consent_request items from ResponsesHostServer | closed | giles17 | <https://github.com/microsoft/agent-framework/pull/7659> |
| Issue | #8017 | .NET: [Bug]: emits both AgentResponse and AgentResponseUpdate per one action | open | dsslight | <https://github.com/microsoft/agent-framework/issues/8017> |
| Issue | #8016 | .NET: [Bug]: serialization related bugs/inconsistency in implementation or documentation | open | dsslight | <https://github.com/microsoft/agent-framework/issues/8016> |
| Issue | #8015 | .NET: [Bug]: YAML validation is weak in some cases. Declarative.dll errors misleading or not self explainable | open | dsslight | <https://github.com/microsoft/agent-framework/issues/8015> |
| Issue | #8013 | .NET: [.NET] Unclear how to return Workflow Output as Agent Response | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8013> |
| Issue | #8012 | .NET: [Bug]: Exception in workflow, that is added as agent, results in json serialisation error message instead of exception | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8012> |
| Issue | #8010 | .NET: [Feature]: First-party A2UI agent integration for .NET (like Python agent_framework_ag_ui._a2ui) | open | gimmickj | <https://github.com/microsoft/agent-framework/issues/8010> |
| Issue | #8008 | .NET: [Bug]: AsAIFunction() fails under Foundry hosting: forwarded ChatHistoryProvider override conflicts with Responses-backed child agent's ConversationId | open | MartinWickman | <https://github.com/microsoft/agent-framework/issues/8008> |
| Issue | #7994 | .NET: Update Azure AI Projects to 3.0.0 beta 1 | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7994> |
| Issue | #5362 | .NET: [Hosting] Track and update A2A Task state after creation | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/5362> |
| Issue | #7985 | .NET: Remove Azure.AI.OpenAI dependency | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7985> |
| Issue | #7383 | Python: Bind tool-approval responses to surfaced approval requests | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7383> |
| Issue | #7400 | .NET: Add documentation/sample to explain how to and the implications of changing provider with the same session | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7400> |
| Issue | #7725 | Python: [Bug]: agent_framework_foundry_hosting._responses:Content type - 'oauth_consent_request' is not supported yet. | closed | sunandaunni-eaton | <https://github.com/microsoft/agent-framework/issues/7725> |
| Issue | #7658 | Python: [Bug]: ResponsesHostServer drops mid-run oauth_consent_request content ('not supported yet'), consent link never reaches the client | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7658> |
| Issue | #7240 | [Feature]:  feature-usage bitmask in both languages | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7240> |
| Issue | #1347 | Security Reviews | closed | markwallace-microsoft | <https://github.com/microsoft/agent-framework/issues/1347> |
| Issue | #398 | Python: Add support for Local MCP Elicitation | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/398> |
| Issue | #7707 | Python: python AG-UI : workflow.as_Agent + AgentFrameworkAgent resume return expected Content, got str | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7707> |
