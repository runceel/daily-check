# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-10 00:28:22 〜 2026-07-14 01:26:38 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 19 |
| オープン中の新規 PR     | 28 |
| クローズ (未マージ) PR  | 16 |
| 新規 Issue              | 21 |
| クローズ Issue          | 25 |
| 主要コントリビューター  | westey-m, moonbox3, PratikWayase, peibekwe, TheovanKraay, pwoosam |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7094](https://github.com/microsoft/agent-framework/pull/7094) — Python: [BREAKING] Harness: Switch FileAccess to opt-in （PR / open / westey-m）
  Harness でファイルアクセスを利用する Python 利用者は、マージ後に明示的な opt-in 設定を追加する必要があります。
- **⚠ 破壊的変更** [#7093](https://github.com/microsoft/agent-framework/pull/7093) — .NET: [BREAKING] Harness: Switch FileAccess to opt-in （PR / open / westey-m）
  Harness でファイルアクセスを利用する .NET 利用者は、マージ後に明示的な opt-in 設定を追加する必要があります。
- **⚠ 破壊的変更** [#7055](https://github.com/microsoft/agent-framework/pull/7055) — Python: [BREAKING] Fix harness before-strategy compaction under per-service-call persistence （PR / merged / westey-m）
  per-service-call persistence を使う Python 利用者は、ハーネスの compaction 順序と永続化結果を確認してください。
- **⚠ 破壊的変更** [#7053](https://github.com/microsoft/agent-framework/pull/7053) — Python: [BREAKING] Graduate harness todo & mode providers from experimental （PR / merged / westey-m）
  Python 利用者は experimental 版の import や設定を、安定版として公開された provider の API に合わせて確認してください。
- **⚠ 破壊的変更** [#7052](https://github.com/microsoft/agent-framework/pull/7052) — .NET: [BREAKING] Graduate todo and agent mode providers out of experimental （PR / merged / westey-m）
  .NET 利用者は Harness の Todo/Agent mode provider の namespace とオプション変更を確認し、experimental API 依存を更新してください。
- **⚠ 破壊的変更** [#7044](https://github.com/microsoft/agent-framework/pull/7044) — .NET: [BREAKING] Graduate message injection out of experimental （PR / merged / westey-m）
  .NET 利用者は MessageInjection の新しい安定 API に合わせて builder 呼び出しと参照を更新してください。
- **⚠ 破壊的変更** [#7039](https://github.com/microsoft/agent-framework/pull/7039) — Python: [BREAKING]: Emit TOOL_CALL events for workflow participant tool calls in AG-UI （PR / merged / moonbox3）
  AG-UI のイベント処理を実装する Python 利用者は、workflow participant 由来の TOOL_CALL イベント追加と重複排除を確認してください。

## このリポジトリの要点

Harness 周辺で Todo、Agent mode、MessageInjection が experimental から安定 API へ移行し、Python/.NET の利用者に確認が必要な破壊的変更が集中しました。AG-UI では workflow participant の TOOL_CALL イベントが追加され、連携側のイベント処理にも影響します。Python declarative workflows の安定版昇格も進んでいます。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7055](https://github.com/microsoft/agent-framework/pull/7055) — Python: [BREAKING] Fix harness before-strategy compaction under per-service-call persistence

- 作者: westey-m / 状態: MERGED
- ラベル: `python` `breaking change`
- 変更行数: +269 / -42
- マージ日時 (UTC): `2026-07-13 09:57:18`

**変更概要**

per-service-call persistence 使用時に Harness の before-strategy compaction が正しい順序で実行されない問題を修正しました。
middleware の順序を見直し、compaction が確実に動作するようにしています。
テストを追加して永続化と compaction の組み合わせを検証しています。
既存の Harness 利用者は、履歴の圧縮タイミングと再開結果を確認する必要があります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_harness/_agent.py` | 53 | 36 |
| `python/packages/core/tests/core/test_harness_agent.py` | 216 | 6 |

</details>

<details><summary>コミット (3 件)</summary>

- `9fd83a0` Fix middleware ordering to ensure compaction runs
- `5b86ddb` Address PR comments
- `248bdff` Fix build issue

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。Harness の middleware 順序と compaction の適用条件が変更され、per-service-call persistence での実行結果が従来と異なる場合があります。公開 API の追加よりも実行順序と状態管理の修正が中心です。

**既存利用者への影響**

既存コードの機械的な移行は不要ですが、per-service-call persistence を使う利用者は圧縮後の履歴と再開処理を回帰確認してください。

### [#7053](https://github.com/microsoft/agent-framework/pull/7053) — Python: [BREAKING] Graduate harness todo & mode providers from experimental

- 作者: westey-m / 状態: MERGED
- ラベル: `python` `breaking change`
- 変更行数: +36 / -51
- マージ日時 (UTC): `2026-07-13 13:58:09`

**変更概要**

Python Harness の Todo provider と mode provider を experimental 扱いから安定版の公開 API へ昇格しました。
パッケージの export と型スタブを整理し、provider 実装とテストを安定 API に合わせています。
experimental import に依存する利用者は参照先の変更が必要になる可能性があります。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/__init__.py` | 0 | 2 |
| `python/packages/core/agent_framework/__init__.pyi` | 0 | 2 |
| `python/packages/core/agent_framework/_harness/_mode.py` | 15 | 17 |
| `python/packages/core/agent_framework/_harness/_todo.py` | 0 | 6 |
| `python/packages/core/tests/core/test_harness_mode.py` | 10 | 15 |
| `python/packages/core/tests/core/test_harness_todo.py` | 11 | 9 |

</details>

<details><summary>コミット (1 件)</summary>

- `6aa3233` Gradudate mode and todo providers

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。Todo/Mode provider の export と experimental 由来の参照が整理され、安定版の import パスと型が正式な利用面になります。

**既存利用者への影響**

experimental API を直接 import している Python 利用者は、安定版の import と設定へ更新し、型チェックとテストを再実行してください。

### [#7052](https://github.com/microsoft/agent-framework/pull/7052) — .NET: [BREAKING] Graduate todo and agent mode providers out of experimental

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +181 / -108
- マージ日時 (UTC): `2026-07-13 14:07:59`

**変更概要**

 .NET の Harness Todo provider と Agent mode provider を experimental から安定 API へ昇格しました。
provider の状態・入力・オプション型を整理し、サンプルとコンソール実装も新しい API に更新しています。
既存の experimental API を利用する .NET アプリケーションが主な影響範囲です。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/Commands/ModeCommandHandler.cs` | 2 | 2 |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/HarnessAgentRunner.cs` | 8 | 8 |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/HarnessConsole.cs` | 3 | 1 |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/Observers/ConsoleObserver.cs` | 1 | 3 |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/Observers/PlanningOutputObserver.cs` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/AgentMode/AgentModeProvider.cs` | 123 | 32 |
| `dotnet/src/Microsoft.Agents.AI/Harness/AgentMode/AgentModeProviderOptions.cs` | 8 | 12 |
| `dotnet/src/Microsoft.Agents.AI/Harness/AgentMode/AgentModeState.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Loop/TodoCompletionLoopEvaluator.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoCompleteInput.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoItem.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoItemInput.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoProvider.cs` | 9 | 5 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoProviderOptions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Todo/TodoState.cs` | 0 | 3 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `9cc4135` Graduate mode and todo providers

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。AgentModeProvider、TodoProvider と関連する state/input/options 型の namespace・公開形状が整理され、experimental の参照が安定版へ移動しました。

**既存利用者への影響**

experimental namespace や旧オプションを参照する .NET 利用者は、安定版の型と builder 設定へ更新してください。サンプルを移行手順の基準にできます。

### [#7044](https://github.com/microsoft/agent-framework/pull/7044) — .NET: [BREAKING] Graduate message injection out of experimental

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +171 / -84
- マージ日時 (UTC): `2026-07-13 11:47:33`

**変更概要**

 .NET の MessageInjectingChatClient を experimental から安定 API として扱えるように整理しました。
ChatClientAgentOptions と builder から古い experimental 設定を削除し、MessageInjectingChatClient の実装とテストを更新しています。
MessageInjection を利用するアプリケーションとサンプルが影響を受けます。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Agents/Agent_Step19_InFunctionLoopCheckpointing/Program.cs` | 8 | 4 |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/HarnessAgentRunner.cs` | 14 | 12 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgentOptions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientBuilderExtensions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/MessageInjectingChatClient.cs` | 79 | 39 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/MessageInjectingChatClientTests.cs` | 70 | 23 |

</details>

<details><summary>コミット (2 件)</summary>

- `70fbb5c` Remove experiemental flags for MessageInjection component
- `67abdad` Improve locking on message injection.

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。ChatClientAgentOptions と ChatClientBuilderExtensions にあった MessageInjection の旧設定が削除され、安定版の MessageInjectingChatClient を直接利用する構成へ整理されています。

**既存利用者への影響**

旧 builder オプションを使う .NET 利用者は MessageInjectingChatClient の安定 API へ移行し、DI 構成とメッセージ注入のテストを確認してください。

### [#7039](https://github.com/microsoft/agent-framework/pull/7039) — Python: [BREAKING]: Emit TOOL_CALL events for workflow participant tool calls in AG-UI

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python` `breaking change` `ag-ui`
- 変更行数: +167 / -5
- マージ日時 (UTC): `2026-07-10 17:18:30`

**変更概要**

AG-UI の workflow participant が呼び出したツールについても TOOL_CALL イベントを発行するようにしました。
重複した participant tool call の抑制と、resumable tool call に対するコンテンツ処理の範囲を調整しています。
AG-UI クライアントやイベント集計処理が新しいイベント種別の影響を受けます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 9 | 5 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 158 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `3154e91` Python: emit participant tool calls in AG-UI workflows
- `309b702` Python: guard participant tool call duplication
- `325f5fd` Python: scope workflow tool content bypass to resumable tool calls

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更。workflow participant のツール呼び出しでも TOOL_CALL イベントが追加され、AG-UI のイベント列と重複排除の前提が変わります。

**既存利用者への影響**

AG-UI の TOOL_CALL イベントを厳密に列挙・集計する利用者は、participant 由来イベントの追加を想定してハンドラーとテストを更新してください。

### [#7065](https://github.com/microsoft/agent-framework/pull/7065) — Python: Promote python declarative workflows to stable version

- 作者: peibekwe / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +14 / -11
- マージ日時 (UTC): `2026-07-13 22:39:22`

**変更概要**

Python の declarative workflows を stable version として扱うよう、パッケージ状態・ドキュメント・サンプルの表記を更新しました。
inline YAML と MCP tool YAML のサンプルも新しい安定版の導線に合わせています。
主な変更は公開案内とサンプルで、既存コードの動作変更は限定的です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/PACKAGE_STATUS.md` | 1 | 1 |
| `python/packages/declarative/README.md` | 2 | 3 |
| `python/packages/declarative/agent_framework_declarative/__init__.py` | 1 | 1 |
| `python/packages/declarative/pyproject.toml` | 2 | 2 |
| `python/samples/02-agents/declarative/README.md` | 3 | 1 |
| `python/samples/02-agents/declarative/inline_yaml.py` | 2 | 1 |
| `python/samples/02-agents/declarative/mcp_tool_yaml.py` | 2 | 1 |
| `python/uv.lock` | 1 | 1 |

</details>

<details><summary>コミット (5 件)</summary>

- `1ef037c` Promote python declarative workflows to stable version
- `8cc2534` Updated changelog with PR detail.
- `06c53a7` Updated to address pr comments.
- `b3ca1a3` Remove changelog update
- `216c854` Merge branch 'main' into peibekwe/declarative-update-py

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 実装の大幅な変更はなく、パッケージ状態・README・サンプル・ロックファイルの stable 表記を更新しています。新規の破壊的シグネチャ変更は確認できません。

**既存利用者への影響**

既存の declarative workflow 利用者に移行作業は不要です。ドキュメントの stable 表記に合わせて導入手順を更新する場合のみ確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7059 | .NET: Enable Valkey NuGet package publishing | Copilot | <https://github.com/microsoft/agent-framework/pull/7059> |
| #7046 | Python: Clean up dependency groups and compatibility | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7046> |
| #7042 | .NET: Fix CompactionMessageIndex.IsSummaryMessage | pwoosam | <https://github.com/microsoft/agent-framework/pull/7042> |
| #7038 | Python: keep attachments close | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7038> |
| #7035 | Python: Bump Python package versions for 1.11.0 release | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7035> |
| #7033 | Python: Consolidate Dependabot dependency updates | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7033> |
| #7032 | .NET: Fix workflow session bug | peibekwe | <https://github.com/microsoft/agent-framework/pull/7032> |
| #7030 | .NET: Fix CosmosChatHistoryProvider: omit ttl when MessageTtlSeconds is nul… | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/7030> |
| #7027 | Python: Integrate message injection into harness agent | westey-m | <https://github.com/microsoft/agent-framework/pull/7027> |
| #6908 | Python: Fix AG-UI approval thread aliases | godququ5-code | <https://github.com/microsoft/agent-framework/pull/6908> |
| #6905 | Python: accept AG-UI state data URI parameters | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6905> |
| #6822 | Python: Fix: Ollama parallel tool calls collide on same call_id | PratikWayase | <https://github.com/microsoft/agent-framework/pull/6822> |
| #6804 | Python: Fix: coalesce reasoning deltas into single block when content.id is None | PratikWayase | <https://github.com/microsoft/agent-framework/pull/6804> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7097 | Python: Fix sub-workflow checkpoint restore to preserve sub-workflow state | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7097> |
| PR | #7096 | samples: add AgentMemory (Neo4j-agent memory reimplemented in NET ) shopping assistant sample | open | joslat | <https://github.com/microsoft/agent-framework/pull/7096> |
| PR | #7095 | Python: preserve Gemini 3 thought_signature across function-call replays | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7095> |
| PR | #7094 | Python: [BREAKING] Harness: Switch FileAccess to opt-in | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7094> |
| PR | #7093 | .NET: [BREAKING] Harness: Switch FileAccess to opt-in | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7093> |
| PR | #7091 | Python: Defer provider-injected tool approvals to harness in-run execution | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/7091> |
| PR | #7090 | Python: Add name collision warnings for auto-approvals | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7090> |
| PR | #7089 | .NET: Add name collision warnings for auto-approvals | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7089> |
| PR | #7085 | fix typos in XML doc comments, ADR docs, and test comments | open | rinceyuan | <https://github.com/microsoft/agent-framework/pull/7085> |
| PR | #7084 | Python: bridge AG-UI request state and session continuity | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7084> |
| PR | #7083 | Python: Refine DevUI request logging | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7083> |
| PR | #7081 | Harden manual integration test trust boundary | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7081> |
| PR | #7080 | Python: Apply header_provider headers to the MCP initialize handshake | open | efranken | <https://github.com/microsoft/agent-framework/pull/7080> |
| PR | #7077 | Bump astral-sh/setup-uv from 6.8.0 to 8.3.2 in /.github/actions/python-setup | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7077> |
| PR | #7076 | Bump dorny/paths-filter from 4.0.1 to 4.0.2 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7076> |
| PR | #7075 | Bump softprops/action-gh-release from 2.6.2 to 3.0.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7075> |
| PR | #7074 | Bump github/codeql-action/analyze from 4.35.5 to 4.37.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7074> |
| PR | #7073 | Bump actions/cache/save from 5.0.5 to 6.1.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7073> |
| PR | #7072 | Bump astral-sh/setup-uv from 7.6.0 to 8.3.2 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7072> |
| PR | #7071 | .NET: Fix _CodeValidator os.* allow-list bypass for aliased imports (#7068) | open | eajajhossain | <https://github.com/microsoft/agent-framework/pull/7071> |
| PR | #7070 | Bump Anthropic.Foundry from 0.6.0 to 0.7.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7070> |
| PR | #7069 | Bump Anthropic from 12.31.0 to 12.35.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7069> |
| PR | #7066 | Python: feat: add Amazon Bedrock Knowledge Base tool and context provider | open | PVidyadhar | <https://github.com/microsoft/agent-framework/pull/7066> |
| PR | #7060 | Python: fix per-run additional_beta_flags leaking into Anthropic request kwargs | open | albatrossflyon-coder | <https://github.com/microsoft/agent-framework/pull/7060> |
| PR | #7057 | fix: correct sample requirements and standardize config template naming | open | Ahmed-Farouk10 | <https://github.com/microsoft/agent-framework/pull/7057> |
| PR | #7050 | Python: Add A2A hosting helpers | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7050> |
| PR | #7047 | Python: Add Telegram hosting helpers and samples | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7047> |
| PR | #7041 | Python: feat: cross-session origin attribution on context messages | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7041> |
| PR | #7063 | Python: feat: add 02-agents learning roadmap and sub-agent delegation sample | closed | Ahmed-Farouk10 | <https://github.com/microsoft/agent-framework/pull/7063> |
| PR | #7062 | Python: Packages: add agent-framework-atr (ATR validation middleware provider) | closed | eeee2345 | <https://github.com/microsoft/agent-framework/pull/7062> |
| PR | #7049 | Python: added cache_write_tokens as required field | closed | subhrm | <https://github.com/microsoft/agent-framework/pull/7049> |
| PR | #7021 | Python: Update uv-build requirement from <0.9.0,>=0.8.2 to >=0.8.2,<0.12.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7021> |
| PR | #7019 | Python: Bump pytest from 9.1.0 to 9.1.1 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7019> |
| PR | #7018 | Bump uv from 0.11.17 to 0.11.28 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7018> |
| PR | #7017 | Python: Bump tqdm from 4.68.3 to 4.68.4 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7017> |
| PR | #7016 | Python: Bump uv from 0.11.17 to 0.11.28 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7016> |
| PR | #7015 | Python: Bump azure-monitor-opentelemetry from 1.8.8 to 1.8.9 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7015> |
| PR | #7014 | Python: Bump poethepoet from 0.46.0 to 0.48.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7014> |
| PR | #7013 | Python: Bump pyright from 1.1.410 to 1.1.411 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7013> |
| PR | #7012 | Python: Bump mypy from 1.20.0 to 2.2.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7012> |
| PR | #6819 | Python: serialize durabletask options response format | closed | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6819> |
| PR | #6676 | Python: Add Teams SDK end-to-end sample | closed | MehakBindra | <https://github.com/microsoft/agent-framework/pull/6676> |
| PR | #6651 | .NET: Forward AG-UI forwarded properties from chat options | closed | jstar0 | <https://github.com/microsoft/agent-framework/pull/6651> |
| PR | #6610 | Python: [wip]: Prototype foundry hosting workflow adapter | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6610> |
| Issue | #7092 | .NET: Harness: Switch FileAccess to opt-in | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7092> |
| Issue | #7088 | Add Auto-approval name collision warnings | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7088> |
| Issue | #7087 | .NET: [Bug]:.NET: [Bug] Visual Studio shows red squiggles for the AIProjectClient Responses API chain while the project reports no build errors | open | bingbing-gui | <https://github.com/microsoft/agent-framework/issues/7087> |
| Issue | #7086 | Python: Skill provider is asking the approval always when used in the hosted agents. | open | mohitpavan | <https://github.com/microsoft/agent-framework/issues/7086> |
| Issue | #7082 | Python: [Feature]: Make the AG-UI Approval State store pluggable | open | antsok | <https://github.com/microsoft/agent-framework/issues/7082> |
| Issue | #7079 | Python: [Bug]: header_provider not applied to MCP initialize() request | open | efranken | <https://github.com/microsoft/agent-framework/issues/7079> |
| Issue | #7078 | Python: [Feature]: Sample function middleware for paid tool preflight and receipt | open | nonameuserd | <https://github.com/microsoft/agent-framework/issues/7078> |
| Issue | #7068 | Python: .NET: [Bug]: `_CodeValidator` does not enforce the documented `os.environ`/`os.path`-only policy for aliased imports | open | AAtomical | <https://github.com/microsoft/agent-framework/issues/7068> |
| Issue | #7067 | .NET: Intermittent HTTP 400 during GPT-5.6 approval resume through the documented stateless MAF Responses path | open | CumulusService | <https://github.com/microsoft/agent-framework/issues/7067> |
| Issue | #7064 | Python: [Feature]: Promote Python declarative workflows to stable version | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/7064> |
| Issue | #7061 | Python: Package the ATR validation middleware (#6528 sample) as an installable agent-framework-atr provider | closed | eeee2345 | <https://github.com/microsoft/agent-framework/issues/7061> |
| Issue | #7058 | .NET: Publish Valkey nuget | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7058> |
| Issue | #7056 | Python: [Feature]: Support OpenAI `instructions` in Responses API | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7056> |
| Issue | #7054 | Python: Handoff workflow + Ollama: allow_multiple_tool_calls passed to AsyncClient.chat() | open | danielpcampagna | <https://github.com/microsoft/agent-framework/issues/7054> |
| Issue | #7051 | Python: [Bug]: Empty `usage` and `finish_reason` when a response is truncated at `max_output_tokens` | open | CristinaStn | <https://github.com/microsoft/agent-framework/issues/7051> |
| Issue | #7048 | Python: [Bug]: Every agent response fails with a Pydantic ValidationError | closed | subhrm | <https://github.com/microsoft/agent-framework/issues/7048> |
| Issue | #7045 | Python: [Bug]: Function-invocation-limit orphan: MAF streams a tool call (TOOL_CALL_START/ARGS/END) and then discards it, leaving an AG-UI card stuck "Running" with no TOOL_CALL_RESULT | open | antsok | <https://github.com/microsoft/agent-framework/issues/7045> |
| Issue | #7043 | Python: [Bug]: AG-UI transport executes approved tool calls before `before_run` injects provider tools — approved calls to provider-injected tools silently fail | open | antsok | <https://github.com/microsoft/agent-framework/issues/7043> |
| Issue | #7040 | .NET: Python: [Bug]: No EnableSensitiveData toggle for OpenTelemetry traces (feature parity gap with .NET) | closed | hyr0ky | <https://github.com/microsoft/agent-framework/issues/7040> |
| Issue | #7037 | Python: HarnessAgent + BackgroundAgents** handoff pattern (see `dotnet/` and `python/` Harness samples) | closed | bzjhzjgbq | <https://github.com/microsoft/agent-framework/issues/7037> |
| Issue | #7036 | Python: [Bug]: Foundry Hosting and Mistral cannot be co-installed due to OpenTelemetry constraints | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7036> |
| Issue | #7026 | Python: Integrate message injection into harness agent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7026> |
| Issue | #7011 | Python: [Feature]: Add `before_strategy` compaction support in `create_harness_agent` | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7011> |
| Issue | #7003 | .NET: [Bug]: CompactionMessageIndex.IsSummaryMessage always returns false because TryGetValue returns value as JsonElement | closed | zengyun261 | <https://github.com/microsoft/agent-framework/issues/7003> |
| Issue | #6994 | Python: [Bug]: Workflow participant tool calls emit as CustomEvent, not TOOL_CALL_START/ARGS, despite documented behavior | closed | greghorne20 | <https://github.com/microsoft/agent-framework/issues/6994> |
| Issue | #6992 | .NET: [Bug]: CosmosChatHistoryProvider.MessageTtlSeconds = null | closed | eguzchin-isoftwareiq | <https://github.com/microsoft/agent-framework/issues/6992> |
| Issue | #6986 | Python: upgrade or widen Anthropic SDK dependency | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6986> |
| Issue | #6902 | Python: AG-UI state extraction ignores parameterized JSON data URIs | closed | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6902> |
| Issue | #6894 | Python: [Bug]: AG-UI: 'No tool output found' on Foundry provider | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6894> |
| Issue | #6893 | Promote harness on the MAF Overview docs page | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6893> |
| Issue | #6821 | Python: Python durabletask RunRequest options response_format is not JSON serializable | closed | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6821> |
| Issue | #6788 | Python: [Bug]: OllamaChatClient: tool calls reuse the function name as `call_id`, so repeated calls in one turn collide | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6788> |
| Issue | #6787 | Python: [Bug]: AG-UI: streamed reasoning fragments into one block per delta when the provider sends no per-chunk id | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6787> |
| Issue | #6357 | Python: execute_tool OTel spans intermittently lost due to missing context propagation in asyncio.gather | closed | rongrong77 | <https://github.com/microsoft/agent-framework/issues/6357> |
| Issue | #5874 | Python: propagate_session=True breaks sub-agent when using Responses API (service_session_id conflict) | closed | benke520 | <https://github.com/microsoft/agent-framework/issues/5874> |
| Issue | #5600 | .NET: [Bug]: GroupChat tool approval flow causes HTTP 400 — tool message without preceding assistant tool_calls | closed | hmunikar | <https://github.com/microsoft/agent-framework/issues/5600> |
| Issue | #5400 | Python: [Samples][Python] durabletask/ samples missing .env.example files | closed | leestott | <https://github.com/microsoft/agent-framework/issues/5400> |
| Issue | #3993 | .NET: [Bug]: Workflow Agents FoundryAgent sample does not produce expected output | closed | lokitoth | <https://github.com/microsoft/agent-framework/issues/3993> |
| Issue | #617 | Include llms.txt as part of the build process | closed | lordlinus | <https://github.com/microsoft/agent-framework/issues/617> |
