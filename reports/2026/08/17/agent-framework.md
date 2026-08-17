# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 19 |
| オープン中の新規 PR     | 27 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 18 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | moonbox3, westey-m, uuzzrm, cecheta, TaoChenOSU, atty57 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Issue 7571 file access read lines （PR / open / antsok）
  .NET 利用者は新しい file access の read-lines 契約と戻り値を確認し、既存のファイル ツール呼び出しを修正版へ合わせてください。
- **⚠ 破壊的変更** [#7669](https://github.com/microsoft/agent-framework/pull/7669) — Python: [BREAKING] Issue 7571 file access read lines （PR / open / antsok）
  Python の file access read-lines 利用者は変更された入力・出力形式を確認し、既存のワークフローとサンプルを更新してください。
- **⚠ 破壊的変更** [#7521](https://github.com/microsoft/agent-framework/pull/7521) — Python: [BREAKING] Require building functional workflow instances （PR / merged / moonbox3）
  functional workflow を使う Python 利用者は、インスタンスを明示的に構築する新しい継続要件を確認し、既存コードを移行してください。
- **⚠ 破壊的変更** [#7384](https://github.com/microsoft/agent-framework/issues/7384) — .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration （Issue / open / MirkoMattioliSacmi）
  .NET の HarnessAgent と Handoff orchestration 利用者は永続 ChatHistoryProvider state の影響を確認し、修正が入るまで該当構成を監視してください。

## このリポジトリの要点

functional workflow の継続処理、Foundry Hosting／DevUI のストリーミング重複、AG-UI 添付ファイル処理が改善されました。  
Python では workflow instance の構築要件が変わり、.NET ではサンプル品質と Handoff の状態管理が継続課題です。  
file access read-lines の破壊的変更候補は、Python／.NET の両利用者が優先確認すべき事項です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7521](https://github.com/microsoft/agent-framework/pull/7521) — Python: [BREAKING] Require building functional workflow instances

- 作者: moonbox3 / 状態: MERGED
- ラベル: `documentation` `python` `workflows` `breaking change`
- 変更行数: +291 / -138
- マージ日時 (UTC): `2026-08-14 00:35:07`

**変更概要**

functional workflow の継続処理を、認可済みのインスタンスとチェックポイントに限定するよう強化しました。  
保留中の continuation を一つに制限し、キャンセル・失敗時の状態分離とサンプルを更新しています。  
ワークフローを再開する Python 利用者の実行整合性を高める変更です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/PACKAGE_STATUS.md` | 2 | 1 |
| `python/packages/core/AGENTS.md` | 6 | 0 |
| `python/packages/core/agent_framework/__init__.py` | 2 | 0 |
| `python/packages/core/agent_framework/__init__.pyi` | 2 | 0 |
| `python/packages/core/agent_framework/_workflows/_functional.py` | 74 | 21 |
| `python/packages/core/tests/workflow/test_functional_workflow.py` | 165 | 91 |
| `python/samples/01-get-started/05_functional_workflow_with_agents.py` | 2 | 1 |
| `python/samples/01-get-started/06_functional_workflow_basics.py` | 2 | 1 |
| `python/samples/03-workflows/functional/agent_integration.py` | 5 | 2 |
| `python/samples/03-workflows/functional/basic_pipeline.py` | 4 | 4 |
| `python/samples/03-workflows/functional/basic_streaming_pipeline.py` | 6 | 4 |
| `python/samples/03-workflows/functional/hitl_review.py` | 6 | 3 |
| `python/samples/03-workflows/functional/naive_group_chat.py` | 2 | 1 |
| `python/samples/03-workflows/functional/parallel_pipeline.py` | 5 | 4 |
| `python/samples/03-workflows/functional/steps_and_checkpointing.py` | 8 | 5 |

</details>

<details><summary>コミット (10 件)</summary>

- `fbb0131` Harden functional workflow continuation authority
- `ada453f` Enforce one pending functional continuation
- `a602ea9` Preserve authorized functional checkpoint continuation
- `7671ac7` Validate Python continuation hardening
- `90ab95c` Handle functional checkpoint continuation failures
- `76d5f3b` Address functional continuation review findings
- `b128713` Handle functional continuation cancellation
- `9082f17` Simplify functional workflow instance isolation
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** functional workflow は実行ごとの workflow instance 構築と、認可済み continuation を前提とする契約へ変更されました。チェックポイント継続の検証・分離ロジックが追加されています。

**既存利用者への影響**

既存の単純実行は影響が限定的ですが、functional workflow の再開や共有インスタンスを使うコードは新しい構築単位へ移行し、継続テストを追加してください。

### [#7486](https://github.com/microsoft/agent-framework/pull/7486) — Python: Enhance _OutputItemTracker to prevent duplicate function call streaming

- 作者: cecheta / 状態: MERGED
- ラベル: `python` `hosting`
- 変更行数: +77 / -0
- マージ日時 (UTC): `2026-08-16 16:25:36`

**変更概要**

Foundry Hosting の `_OutputItemTracker` が未完了の function call を追跡し、同じ呼び出しを複数回ストリームしないようにしました。  
空の引数メタデータも扱えるようにし、応答変換の回帰テストを追加しています。  
Foundry のストリーミング応答を利用する Python アプリの重複イベントを抑えます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 17 | 0 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 60 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `5239610` Python: Enhance _OutputItemTracker to prevent duplicate function call…
- `cdc7530` Handle empty function call metadata arguments
- `833f2dd` Python: Refactor _OutputItemTracker to manage outstanding function ca…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_OutputItemTracker` の内部状態管理と outstanding function call の整理を変更しました。公開 API の削除やシグネチャ変更は記録されていません。

**既存利用者への影響**

通常の利用者に移行は不要です。ストリーミングで function call イベントを集計する実装は、重複排除後のイベント列を前提に再確認してください。

### [#7655](https://github.com/microsoft/agent-framework/pull/7655) — Python: Fix AG-UI url source dropping attachments when the URL is in source.value

- 作者: atty57 / 状態: MERGED
- ラベル: `python`
- 変更行数: +41 / -4
- マージ日時 (UTC): `2026-08-16 16:15:31`

**変更概要**

AG-UI の URL source が `source.value` に URL を持つ場合にも、添付ファイルを失わずにメッセージへ変換するよう修正しました。  
メッセージ アダプターの URL 判定と添付抽出を更新し、回帰テストを追加しています。  
URL ベースの入力と添付を併用する AG-UI 利用者が対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_message_adapters.py` | 5 | 4 |
| `python/packages/ag-ui/tests/ag_ui/test_message_adapters.py` | 36 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `4f72517` Python: Fix AG-UI url source dropping attachments when the URL is in …
- `3ab2548` Merge branch 'main' into atty57-7653

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

URL の格納位置に応じたメッセージ アダプター分岐を追加しました。公開型の削除や破壊的なシグネチャ変更は確認されません。

**既存利用者への影響**

移行は不要です。AG-UI の URL source と添付を使う場合は、更新後に添付の保持と送信形式を確認してください。

### [#7652](https://github.com/microsoft/agent-framework/pull/7652) — Python: Fix duplicate streamed tool calls in DevUI

- 作者: cecheta / 状態: MERGED
- ラベル: `python`
- 変更行数: +33 / -3
- マージ日時 (UTC): `2026-08-16 16:14:33`

**変更概要**

DevUI のストリーミング tool call が同一呼び出しを重複表示する問題を修正しました。  
mapper の重複イベント処理を整理し、重複排除を検証するテストを追加しています。  
DevUI でツール呼び出しを表示する利用者の画面とイベント集計が安定します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/devui/agent_framework_devui/_mapper.py` | 3 | 3 |
| `python/packages/devui/tests/devui/test_mapper.py` | 30 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `ff05389` fix: deduplicate streamed DevUI tool calls

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

DevUI mapper のイベント重複排除ロジックを更新した内部修正で、公開 API の変更はありません。

**既存利用者への影響**

移行は不要です。DevUI の tool call 表示をカスタマイズしている場合は、重複イベントが届かない前提を確認してください。

### [#7666](https://github.com/microsoft/agent-framework/pull/7666) — .NET: Fix IDE0039 by using local functions in samples

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +9 / -9
- マージ日時 (UTC): `2026-08-14 15:46:00`

**変更概要**

RAG と追加 AI コンテキストのサンプルで、IDE0039 に対応するためローカル関数を使う形へ整理しました。  
実行時の機能変更ではなく、サンプルの静的解析警告を解消するリファクタリングです。  
.NET 利用者が参照するサンプルの品質を改善します。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AgentWithRAG/AgentWithRAG_Step01_BasicTextRAG/Program.cs` | 3 | 3 |
| `dotnet/samples/02-agents/AgentWithRAG/AgentWithRAG_Step02_CustomVectorStoreRAG/Program.cs` | 3 | 3 |
| `dotnet/samples/02-agents/Agents/Agent_Step17_AdditionalAIContext/Program.cs` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `1936346` .NET: Fix IDE0039 by using local functions in samples

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

3 つのサンプル内のローカル関数化のみで、SDK API や公開シグネチャの変更はありません。

**既存利用者への影響**

移行は不要です。サンプルをコピーしている場合は、警告のない最新版へ差し替えることを推奨します。

### [#7660](https://github.com/microsoft/agent-framework/pull/7660) — Enforce code owner

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: —
- 変更行数: +127 / -2
- マージ日時 (UTC): `2026-08-14 15:18:01`

**変更概要**

`.github/CODEOWNERS` を更新し、agent-framework の各領域に適切なコード所有者を割り当てました。  
レビュー担当の明確化と保守範囲の可視化が目的で、ランタイム コードは変更していません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/CODEOWNERS` | 127 | 2 |

</details>

<details><summary>コミット (3 件)</summary>

- `aacf75a` Draft: Enforce code owner
- `f8851d0` Apply new assignments after feedback
- `ccd6499` Address comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は CODEOWNERS のレビュー割り当てだけで、API シグネチャ・ランタイム挙動・新規抽象は変更されていません。

**既存利用者への影響**

利用者側の移行は不要です。コントリビューターは変更対象に応じた自動レビュー担当を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7631 | Python: Add approval storage and improve truth checks | westey-m | <https://github.com/microsoft/agent-framework/pull/7631> |
| #7661 | Python: Bump Python package versions for 1.14.0 release | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7661> |
| #7594 | Python: Harden AG-UI approval lifecycle and resume semantics | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7594> |
| #7558 | Python: track agent-hooks feature usage | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7558> |
| #7621 | Python: Update agentserver to x.1.0b1 | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7621> |
| #7635 | Python: Fix Cosmos memory provider calling renamed add_cosmos toolkit API | atty57 | <https://github.com/microsoft/agent-framework/pull/7635> |
| #7450 | Python: fix(python): add release_session API to prevent BackgroundAgentsProvider memory leaks | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7450> |
| #7646 | .NET: Remove clear and package source mapping from nuget.config to allow user level config inheritance | westey-m | <https://github.com/microsoft/agent-framework/pull/7646> |
| #7605 | Python: fix streaming transcript duplication with message injection and per-service-call persistence | westey-m | <https://github.com/microsoft/agent-framework/pull/7605> |
| #7607 | Python: scope under-specified approve-for-session permission decisions | giles17 | <https://github.com/microsoft/agent-framework/pull/7607> |
| #7622 | Python: Warn when advertised MCP archives are rejected | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7622> |
| #7470 | Python: fix(redis): honour a max_messages retention limit of zero | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7470> |
| #7597 | Python: Preserve Mistral prompt-cache usage details | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7597> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7650 | .NET: Allow agents to opt into concurrent tool invocation | open | ump45nose | <https://github.com/microsoft/agent-framework/pull/7650> |
| PR | #7670 | Python: Foundry Hosted Agent Resiliency Support | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7670> |
| PR | #7687 | .NET: Add AsIChatClient extension to expose any AIAgent as an IChatClient | open | tomas-rampas | <https://github.com/microsoft/agent-framework/pull/7687> |
| PR | #7659 | Python: surface mid-run oauth_consent_request items from ResponsesHostServer | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7659> |
| PR | #7686 | Python: return caller-owned checkpoints from InMemoryCheckpointStorage reads | open | dev404ai | <https://github.com/microsoft/agent-framework/pull/7686> |
| PR | #7684 | Python: Fix AG-UI resume rejecting JSON for typed responses | open | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7684> |
| PR | #7676 | Python: serialize per-step checkpoint saves in functional workflows | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7676> |
| PR | #7679 | .NET: Add parallel declarative Foreach execution | open | KirschBluteX | <https://github.com/microsoft/agent-framework/pull/7679> |
| PR | #7682 | Python: clear service_session_id on full-history replay | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7682> |
| PR | #7680 | Python: Document shared chat client concurrency | open | Ricky-7-Yan | <https://github.com/microsoft/agent-framework/pull/7680> |
| PR | #7678 | .NET: Clarify compaction provider and chat reducer choices | open | ravikiranpagidi | <https://github.com/microsoft/agent-framework/pull/7678> |
| PR | #7675 | .NET: Align file tool descriptions with generated schema argument names | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7675> |
| PR | #7674 | .NET: Fix declarative workflows deep research sample | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/7674> |
| PR | #7673 | Python: Consolidate OTel GenAI Semantic Conventions versions | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7673> |
| PR | #7669 | Python: [BREAKING] Issue 7571 file access read lines | open | antsok | <https://github.com/microsoft/agent-framework/pull/7669> |
| PR | #7671 | .NET: [BREAKING] Issue 7571 file access read lines | open | antsok | <https://github.com/microsoft/agent-framework/pull/7671> |
| PR | #7637 | Python: omit failed Foundry turns from conversation chat history | open | sgoel2be24-cyber | <https://github.com/microsoft/agent-framework/pull/7637> |
| PR | #7664 | .NET: Python: .NET: Make skill resource guidance rule-only | open | samrusani | <https://github.com/microsoft/agent-framework/pull/7664> |
| PR | #7648 | .NET: Add Foundry hosted session and user identity pass-through | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7648> |
| PR | #7668 | .NET: Migrate remaining Foundry hosted samples to source deployment | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7668> |
| PR | #7639 | .NET: Bump AgentMemory from 1.3.0 to 1.4.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7639> |
| PR | #7649 | .NET: Persist hosted agent state in Foundry | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7649> |
| PR | #7662 | Python: Align AG-UI run continuity | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7662> |
| PR | #7644 | Bump ty from 0.0.64 to 0.0.70 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7644> |
| PR | #7656 | Python: fix(python): treat any MCP ping JSON-RPC error as unsupported, not just -32601 | open | dcasati | <https://github.com/microsoft/agent-framework/pull/7656> |
| PR | #7641 | .NET: Add session-persisted chat client routing | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7641> |
| PR | #7645 | Python: Bump flit from 3.12.0 to 4.0.2 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7645> |
| PR | #7449 | Python: allow registering custom types for checkpoint serialization and deserialization | closed | Mahajan-Sachin | <https://github.com/microsoft/agent-framework/pull/7449> |
| PR | #5946 | .NET: document Azure Functions trigger discovery | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/5946> |
| PR | #7544 | Bump ruff from 0.16.0 to 0.16.1 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7544> |
| PR | #7543 | Bump prek from 0.4.11 to 0.4.12 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7543> |
| PR | #7542 | Bump uv from 0.11.32 to 0.12.2 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7542> |
| PR | #6932 | .NET: Add RoutingChatClient for routing requests across multiple chat clients | closed | westey-m | <https://github.com/microsoft/agent-framework/pull/6932> |
| Issue | #7688 | Python: Investigate behavior of concurrent requests to a workflow hosted in Foundry | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7688> |
| Issue | #7653 | Python: [Bug]: AG-UI InputContent in Messages Lost During Conversion Due to `source.value` Not Being Checked | closed | savannahknight | <https://github.com/microsoft/agent-framework/issues/7653> |
| Issue | #7651 | Python: [Bug]: DevUI repeats streamed tool calls | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7651> |
| Issue | #7685 | Python: [Bug]: InMemoryCheckpointStorage returns its stored checkpoint objects, unlike the other backends | open | dev404ai | <https://github.com/microsoft/agent-framework/issues/7685> |
| Issue | #7683 | Python: [Bug]: Checkpoint state is not isolated from live workflow state across restoration and storage boundaries | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7683> |
| Issue | #7681 | .NET: [Feature]: Add persistence support for Agent Plan and Todo state | open | naruto1227 | <https://github.com/microsoft/agent-framework/issues/7681> |
| Issue | #7654 | Python: [Feature]: Document and test Python ChatClient concurrent-use contract | open | TsuyoshiUshio | <https://github.com/microsoft/agent-framework/issues/7654> |
| Issue | #7677 | Python: Clarify and fix message/checkpoint_id/responses interaction semantics in Workflow.run() / WorkflowAgent.run() | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7677> |
| Issue | #7672 | .NET: [Bug]: Harness file tool descriptions name arguments in snake_case, but the generated schema is camelCase | open | antsok | <https://github.com/microsoft/agent-framework/issues/7672> |
| Issue | #7663 | Python: .NET: [Bug]: skills prompt causes reads of nonexistent example resources | open | KOTerra | <https://github.com/microsoft/agent-framework/issues/7663> |
| Issue | #7667 | .NET: Migrate remaining Foundry hosted samples to source deployment | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7667> |
| Issue | #7665 | .NET: [Feature]:  Hosted Skills support in agent framework | open | eguzchin-isoftwareiq | <https://github.com/microsoft/agent-framework/issues/7665> |
| Issue | #7640 | .NET: [Bug]: AsAIAgent serializes parallel tool calls returned in one Responses result | open | riteshksriv | <https://github.com/microsoft/agent-framework/issues/7640> |
| Issue | #7658 | Python: [Bug]: ResponsesHostServer drops mid-run oauth_consent_request content ('not supported yet'), consent link never reaches the client | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7658> |
| Issue | #7657 | Python: Consolidate OTel GenAI Semantic Conventions verisioning | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7657> |
| Issue | #7647 | Python: [Bug]: Parallel functional steps fork the checkpoint lineage | open | dev404ai | <https://github.com/microsoft/agent-framework/issues/7647> |
| Issue | #7643 | [Feature]: Support `ask_user` tool | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7643> |
| Issue | #7642 | Python: [Bug]: Support `ask_user` tool | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7642> |
| Issue | #7485 | Python: [Bug]: Duplicate function call in Foundry Hosted agent when streaming | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7485> |
| Issue | #7633 | Python: Cosmos memory provider still calls add_cosmos after toolkit API rename | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/7633> |
| Issue | #7385 | Python: [Bug]: BackgroundAgentsProvider retains per-session runtime (tasks, child sessions) forever | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7385> |
| Issue | #7591 | .NET: Python: [Bug]: Streaming create_harness_agent runs duplicate the transcript after tool calls — 400 "insufficient tool messages following tool_calls" | closed | naeyn | <https://github.com/microsoft/agent-framework/issues/7591> |
| Issue | #7553 | Python: [Bug]: TypeError: Cannot read properties of undefined (reading 'commandIdentifiers') | closed | wonderyl | <https://github.com/microsoft/agent-framework/issues/7553> |
| Issue | #7619 | .NET: Python: [Bug]: `MCPSkillsSource` drops archive skills the index advertised, and every refusal is DEBUG-only | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7619> |
| Issue | #7469 | Python: RedisHistoryProvider: max_messages=0 retains every message instead of none | closed | chinmayv095 | <https://github.com/microsoft/agent-framework/issues/7469> |
| Issue | #7589 | Python: [Bug]: the Mistral chat client drops `prompt_tokens_details.cached_tokens`, so prompt-cache hits are invisible in `UsageDetails` | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7589> |
