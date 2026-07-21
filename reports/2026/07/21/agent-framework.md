# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 17 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 22 |
| 新規 Issue              | 45 |
| クローズ Issue          | 37 |
| 主要コントリビューター  | eavanvalkenburg, he-yufeng, moonbox3, VectorPeak, benke520, ssccinng |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7201](https://github.com/microsoft/agent-framework/issues/7201) — Python: OpenAIChatCompletionClient(credential=...) hardcodes token scope to cognitiveservices.azure.com, breaking Foundry project endpoints that require the ai.azure.com audience （Issue / closed / nomhiro）
  Foundry project endpoint を資格情報認証で利用する Python ユーザーは、`ai.azure.com` audience に対応した修正版へ更新し、トークン取得と接続を再確認してください。
- **⚠ 破壊的変更** [#7158](https://github.com/microsoft/agent-framework/pull/7158) — [BREAKING] Python: Ensure session isolation for FHA invocation impl （PR / open / TaoChenOSU）
  Foundry Hosted Agent の継続呼び出しや並列セッションを使う Python ユーザーは、マージ後のセッション分離 semantics と状態保存への影響を移行前にテストしてください。
- **⚠ 破壊的変更** [#7156](https://github.com/microsoft/agent-framework/issues/7156) — .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used （Issue / open / VaclavK）
  .NET 1.13 で Skills を使う利用者は、呼び出し後に session が更新されるかを確認し、問題が再現する場合は修正状況を確認して更新を保留してください。
- **⚠ 破壊的変更** [#7120](https://github.com/microsoft/agent-framework/pull/7120) — Python: [BREAKING] Graduate create_harness_agent out of experimental （PR / merged / westey-m）
  `create_harness_agent` の利用者は、常時発生していた `ExperimentalWarning` が消え、実験的オプション指定時だけ警告される新しい判定にテストや警告フィルターを合わせてください。
- **⚠ 破壊的変更** [#7119](https://github.com/microsoft/agent-framework/pull/7119) — .NET: [BREAKING] Graduate HarnessAgent （PR / open / westey-m）
  .NET の preview `HarnessAgent` 利用者は、公開 API への昇格に伴う namespace・警告・実験機能の扱いを、マージ後の移行ノートで確認してください。
- **⚠ 破壊的変更** [#7111](https://github.com/microsoft/agent-framework/pull/7111) — .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests （PR / open / rogerbarreto）
  独自の tool approval 応答を生成する .NET 利用者は、承認応答と提示済み要求の対応付けが必須になるため、応答 payload と相関処理を確認してください。

## このリポジトリの要点

Python では [#7120](https://github.com/microsoft/agent-framework/pull/7120) により `create_harness_agent` が実験段階を卒業し、警告動作が変わる**破壊的変更**が入りました。加えて、Durable Workflow 入力の正規化、GitHub Copilot SDK オプションの全面転送、ホストセッションのスナップショット分離、シリアライズ高速化が進んでいます。一方で .NET / Python とも session・approval・compaction 周辺の不具合や破壊的変更候補が複数オープンしており、アップグレード時の回帰確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7120](https://github.com/microsoft/agent-framework/pull/7120) — Python: [BREAKING] Graduate create_harness_agent out of experimental

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +259 / -2
- マージ日時 (UTC): `2026-07-20 18:06:24`

**変更概要**

`create_harness_agent` を実験 API から正式な公開 API へ昇格させる変更です。ファクトリ自体の `@experimental(HARNESS)` を外し、通常利用では `ExperimentalWarning` を出さなくなりました。一方、`background_agents`、`file_access_store`、`loop_should_continue`、`shell_executor` を有効化した場合だけ、対象パラメーターを示す警告を実行時に発生させます。実験機能の注意喚起を残しつつ、安定した基本 Harness の採用を容易にします。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 0 |
| `python/packages/core/agent_framework/_feature_stage.py` | 39 | 0 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 59 | 2 |
| `python/packages/core/agent_framework/_harness/_agent.pyi` | 1 | 0 |
| `python/packages/core/tests/core/test_harness_agent.py` | 159 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `fd0670a` Graduate harness agent
- `9532bf7` Add agents.md update
- `e75d9bd` Fix build errors
- `62cdabe` Address PR comments
- `e5d9556` Fix build error
- `1802a1a` Merge branch 'main' into python-graduate-harness-agent

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: `create_harness_agent` から実験デコレーターが外れ、全呼び出しで発生していた `HARNESS` の `ExperimentalWarning` がなくなります。新しい runtime boundary check は Harness 系パラメーターを共有 `HARNESS` キー、shell tooling を独立した `SHELL_TOOLING` キーで重複抑制し、実験的な機能を指定した場合だけ警告します。関数の基本的な呼び出しシグネチャは維持されます。

**既存利用者への影響**

通常の呼び出しコードに変更は不要です。ただし従来の警告を前提にしたテストや `warnings` フィルターは更新し、実験的パラメーターを使う箇所では新しい限定的な警告を確認してください。

### [#7205](https://github.com/microsoft/agent-framework/pull/7205) — Python: Normalize durable workflow inputs

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python`
- 変更行数: +186 / -1
- マージ日時 (UTC): `2026-07-20 08:40:09`

**変更概要**

Azure Functions と Durable Task のワークフロー境界で、予約済み入力マーカーの扱いを統一する変更です。Durable orchestrator に渡る初期入力を同じルールで正規化し、Azure Functions 側と Durable Task 側の end-to-end テストを追加しました。通常の JSON 入力と信頼済みの子ワークフロー入力は従来どおり保持されます。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 1 | 0 |
| `python/packages/azurefunctions/tests/test_azurefunctions_workflow_initial_input.py` | 72 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_workflows/orchestrator.py` | 1 | 1 |
| `python/packages/durabletask/tests/test_durabletask_workflow_initial_input.py` | 112 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `28436d0` Normalize durable workflow inputs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更や新規抽象はありません。Azure Functions のアプリ境界と Durable Task orchestrator 内部で予約マーカーの正規化処理を揃え、同じ初期入力がホストによって異なる形で解釈されないようにしています。

**既存利用者への影響**

通常のワークフロー利用者に移行は不要です。予約済みマーカーを直接組み立てる独自連携だけは、更新後も入力が意図どおり復元されるか確認してください。

### [#7204](https://github.com/microsoft/agent-framework/pull/7204) — Python: Consolidate dependency updates

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python` `lab`
- 変更行数: +1190 / -1138
- マージ日時 (UTC): `2026-07-20 18:07:43`

**変更概要**

Python ワークスペースの Dependabot 更新を 1 本に集約し、`uv`、`ruff`、`mypy`、`ty`、`zuban`、`prek`、`azure-ai-projects`、`botocore` などを一括更新しました。ロックファイルと開発ツール設定を再生成し、Ruff / ty の新しい診断に合わせて抑制やテストを調整しています。特に `azure-ai-projects` 2.3 の安定版 hosted-session / toolbox operation namespace に対応しつつ、2.2 preview への互換フォールバックも維持します。

<details><summary>変更ファイル (53 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/tests/ag_ui/test_ag_ui_client.py` | 3 | 3 |
| `python/packages/azure-contentunderstanding/pyproject.toml` | 2 | 2 |
| `python/packages/azure-cosmos-memory/agent_framework_azure_cosmos_memory/_context_provider.py` | 1 | 1 |
| `python/packages/azure-cosmos-memory/pyproject.toml` | 1 | 1 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 1 | 1 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_hitl_context.py` | 1 | 1 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_routes.py` | 1 | 1 |
| `python/packages/chatkit/pyproject.toml` | 1 | 1 |
| `python/packages/core/agent_framework/__init__.py` | 1 | 1 |
| `python/packages/core/agent_framework/_compaction.py` | 1 | 1 |
| `python/packages/core/agent_framework/_evaluation.py` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 5 | 5 |
| `python/packages/core/agent_framework/_harness/_file_memory.py` | 6 | 6 |
| `python/packages/core/agent_framework/_mcp.py` | 1 | 1 |
| `python/packages/core/agent_framework/_skills.py` | 5 | 5 |
| _... 他 38 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `e4d8bda` Bump uv from 0.11.28 to 0.11.29 in /python
- `58dce38` Bump zuban from 0.8.2 to 0.9.0 in /python
- `65a60bc` PR #7146: Bump ty from 0.0.55 to 0.0.60 in /python
- `545f247` Bump ruff from 0.15.20 to 0.15.22 in /python
- `dd351bc` Bump mypy from 2.2.0 to 2.3.0 in /python
- `e8555f4` Bump prek from 0.4.8 to 0.4.10 in /python
- `e7e2e2c` Bump azure-ai-projects from 2.2.0 to 2.3.0 in /python
- `94f407d` Bump types-python-dateutil in /python
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Agent Framework 自体の公開 API に意図した破壊的変更はありません。Foundry 実装とサンプルは `azure-ai-projects` 2.3 の安定クライアント操作を優先し、サポート範囲内の 2.2 preview API も扱える分岐を追加しています。開発時の lint / type-check 結果は Ruff 0.15.22、mypy 2.3、ty 0.0.60 への更新で変わる可能性があります。

**既存利用者への影響**

ライブラリ利用者のコード移行は原則不要です。リポジトリ開発者は依存関係を再同期し、新しい lint・型チェックの結果と `azure-ai-projects` 2.2 / 2.3 の両経路を確認してください。

### [#7165](https://github.com/microsoft/agent-framework/pull/7165) — Python: Optimize shared serialization paths

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +89 / -49
- マージ日時 (UTC): `2026-07-17 22:17:36`

**変更概要**

メッセージ、テレメトリ、プロトコル payload で頻繁に通る Python のシリアライズ処理を共通化・高速化しました。構造的 serialization protocol の判定を具体型ごとにキャッシュし、primitive / container の fast path を追加しています。AG-UI も core の JSON-safe converter を再利用し、重複検証を削減しました。ベンチマークでは core serialization 約 58%、round trip 約 29%、ネストした AG-UI 変換約 22% の改善が報告されています。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CODING_STANDARD.md` | 14 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_http_service.py` | 6 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_utils.py` | 1 | 33 |
| `python/packages/core/agent_framework/_serialization.py` | 42 | 13 |
| `python/packages/core/agent_framework/observability.py` | 4 | 3 |
| `python/packages/core/tests/core/test_serializable_mixin.py` | 22 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `8ca947b` Optimize core serialization paths
- `897f5e7` Streamline AG-UI serialization
- `238216e` Document shared serialization guidance
- `bd0740b` Bound serialization protocol cache

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開シグネチャや wire-format の変更はありません。`_serialization.py` に具体型ベースの bounded cache と primitive / container fast path を追加し、observability と AG-UI が同じ判定・変換経路を使うよう整理しています。duck-typed serializer、container subclass、AG-UI alias の互換性は維持されます。

**既存利用者への影響**

既存利用者の移行は不要で、payload 形式も変わりません。独自の duck-typed serializer や container subclass を使う場合は、更新後の round trip を回帰確認すると安全です。

### [#7155](https://github.com/microsoft/agent-framework/pull/7155) — Python: forward GitHubCopilotOptions verbatim to create_session

- 作者: giles17 / 状態: MERGED
- ラベル: `python`
- 変更行数: +235 / -119
- マージ日時 (UTC): `2026-07-20 18:12:31`

**変更概要**

`GitHubCopilotAgent` が Copilot SDK の `create_session` / `resume_session` に一部の固定キーしか渡さず、未対応オプションを黙って破棄していた問題を解消しました。agent defaults と実行単位 options を統合する `_build_session_kwargs` を新設し、約 70 個ある SDK オプションを原則そのまま転送します。`tools`、`model`、permission handler、`hooks` など必要なキーだけを専用処理し、実行単位の値が既定値より優先されます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/github_copilot/agent_framework_github_copilot/_agent.py` | 92 | 80 |
| `python/packages/github_copilot/tests/test_github_copilot_agent.py` | 143 | 39 |

</details>

<details><summary>コミット (3 件)</summary>

- `9f0df63` Python: forward GitHubCopilotOptions verbatim to create_session
- `164093a` Python: address review feedback on GHCP options passthrough
- `18dd6fb` Python: avoid redundant re-read of model in _build_session_kwargs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`GitHubCopilotOptions` は代表的な型付き surface として残りますが、未列挙の `reasoning_effort`、`context_tier`、`enable_citations` なども SDK へ転送されます。個別の `_mcp_servers`、`_provider`、`_skill_directories` などの内部属性は統合され、未知または誤記したキーは黙って無視されず SDK の `TypeError` として fail fast します。公開された一般的なキーの動作は維持されます。

**既存利用者への影響**

通常の型付きオプション利用者に変更は不要です。これまで無視されていた独自キーやスペルミスはエラーになるため、`default_options` と実行時 `options` のキーを確認してください。

### [#7141](https://github.com/microsoft/agent-framework/pull/7141) — Python: isolate hosted session snapshots

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +166 / -34
- マージ日時 (UTC): `2026-07-18 12:02:16`

**変更概要**

Hosted Responses の継続実行が in-memory store から同じ可変 `AgentSession` を共有し、同じ `previous_response_id` から分岐した並列処理が互いの状態を変更する問題を修正しました。`SessionStore.get()` が deep copy を返し、`AgentState` は保存済み baseline と新しい working session を分離します。これにより response ID ごとのスナップショットが独立した継続地点となり、安全に並列分岐できます。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0027-hosting-channels.md` | 7 | 1 |
| `docs/specs/002-python-hosting-channels.md` | 3 | 0 |
| `python/packages/hosting-responses/README.md` | 10 | 1 |
| `python/packages/hosting-responses/tests/hosting_responses/test_http_round_trip.py` | 34 | 3 |
| `python/packages/hosting/README.md` | 18 | 4 |
| `python/packages/hosting/agent_framework_hosting/_state.py` | 20 | 5 |
| `python/packages/hosting/tests/hosting/test_state.py` | 38 | 8 |
| `python/samples/04-hosting/af-hosting/local_responses/README.md` | 14 | 4 |
| `python/samples/04-hosting/af-hosting/local_responses/app.py` | 18 | 8 |
| `python/samples/04-hosting/af-hosting/local_responses_workflow/README.md` | 4 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `80981fb` Python: isolate hosted session snapshots
- `14d3767` Python: avoid duplicate conversation snapshots
- `b8eccaa` added some notes in the docstring

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はありません。状態取得の意味が共有参照から deep-copied snapshot に変わり、response-keyed run は不変 baseline から分岐します。安定した `conversation_id` を進める場合は conversation key へ明示的に 1 回だけ書き戻す設計となり、重複 snapshot も防止します。

**既存利用者への影響**

通常の Hosted Responses 利用者に移行は不要で、並列継続の分離が改善します。ただし同じ `conversation_id` を並列更新するアプリは、引き続きアプリ側で single-writer 調停を行ってください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7124 | Python: fix compaction token count inflating non-ASCII text | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7124> |
| #7108 | Python: preserve explicit null arguments in auto function calling | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7108> |
| #7105 | Python: Normalize chat finish reasons | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7105> |
| #7104 | Python: docs: add self-hosting sample snippets | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7104> |
| #7050 | Python: Add A2A hosting helpers | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7050> |
| #6916 | Python: raise ValueError for malformed data URIs | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6916> |
| #6826 | .NET: Refactor Workflows MessageMerger to preserve message order and structure | marcominerva | <https://github.com/microsoft/agent-framework/pull/6826> |
| #6791 | .NET: Populate AgentResponse metadata in CopilotStudioAgent | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6791> |
| #6719 | Python: Add agent-framework-azure-cosmos-memory context provider | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/6719> |
| #6548 | Python: fix: concurrent_agents sample incorrectly treats output as list[Message] | benke520 | <https://github.com/microsoft/agent-framework/pull/6548> |
| #6212 | .NET: Honor terminal workflow outputs in Workflow.AsAIAgent responses | ssccinng | <https://github.com/microsoft/agent-framework/pull/6212> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7232 | Python: Bump brace-expansion from 1.1.12 to 1.1.16 in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7232> |
| PR | #7229 | .NET: Cover source-type-agnostic toolbox consent parsing (a2a_preview) | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7229> |
| PR | #7220 | Python: fix(foundry-hosting): root hosted checkpoints under durable home dire… | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7220> |
| PR | #7219 | Python: Prevent compaction from emitting empty projections | open | ronronner02 | <https://github.com/microsoft/agent-framework/pull/7219> |
| PR | #7218 | Python: Fix header_provider headers not reaching streamable HTTP transport requests | open | robbiebusinessacc | <https://github.com/microsoft/agent-framework/pull/7218> |
| PR | #7217 | .NET: Alliscode/fix declarative autosend output | open | alliscode | <https://github.com/microsoft/agent-framework/pull/7217> |
| PR | #7209 | Python: Add MCP hosting helpers | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7209> |
| PR | #7208 | Python: Support async credentials in `FoundryToolbox` | open | cecheta | <https://github.com/microsoft/agent-framework/pull/7208> |
| PR | #7206 | Python: fix declarative workflow DevUI sample and JoinExecutor Messag… | open | amit12cool | <https://github.com/microsoft/agent-framework/pull/7206> |
| PR | #7202 | Python: fix(foundry_hosting): preserve auth credentials across FoundryToolbox reconnections | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7202> |
| PR | #7200 | Python: Fix PropertySchema.to_json_schema() not recursing into nested array items / object properties | open | exp-ouroborous | <https://github.com/microsoft/agent-framework/pull/7200> |
| PR | #7199 | Python: Fix OpenAIChatCompletionClient passing raw JSON-Schema dict response_format through unwrapped | open | exp-ouroborous | <https://github.com/microsoft/agent-framework/pull/7199> |
| PR | #7189 | Python: Return MCP tool-use sampling results | open | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7189> |
| PR | #7163 | Python: Support prompt cache breakpoints for GPT-5.6 models in OpenAI clients | open | Mordris | <https://github.com/microsoft/agent-framework/pull/7163> |
| PR | #7162 | Python: fix Anthropic streaming double-counting token usage | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7162> |
| PR | #7231 | Python: feat: add agent-framework-tenki (Tenki-backed CodeAct provider) | closed | Patricio-Filice-Luxor | <https://github.com/microsoft/agent-framework/pull/7231> |
| PR | #7196 | Bump j178/prek-action from 2.0.4 to 2.0.6 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7196> |
| PR | #7195 | Bump github/codeql-action/analyze from 4.37.0 to 4.37.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7195> |
| PR | #7194 | Bump umbrelladocs/action-linkspector from 1.5.1 to 1.5.4 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7194> |
| PR | #7193 | Bump MishaKav/pytest-coverage-comment from 1.7.2 to 1.10.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7193> |
| PR | #7192 | Bump danielpalme/ReportGenerator-GitHub-Action from 5.5.3 to 5.5.10 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7192> |
| PR | #7191 | .NET: Bump Anthropic from 12.35.1 to 12.36.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7191> |
| PR | #7153 | Python: Bump botocore from 1.43.45 to 1.43.49 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7153> |
| PR | #7152 | Python: Bump mypy from 2.2.0 to 2.3.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7152> |
| PR | #7151 | Python: Bump types-python-dateutil from 2.9.0.20260518 to 2.9.0.20260716 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7151> |
| PR | #7150 | Bump azure-ai-projects from 2.2.0 to 2.3.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7150> |
| PR | #7149 | Python: Bump prek from 0.4.8 to 0.4.10 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7149> |
| PR | #7148 | Bump mypy from 2.2.0 to 2.3.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7148> |
| PR | #7147 | Bump ruff from 0.15.20 to 0.15.22 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7147> |
| PR | #7146 | Bump ty from 0.0.60 to 0.0.61 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7146> |
| PR | #7145 | Python: Bump zuban from 0.8.2 to 0.9.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7145> |
| PR | #7144 | Bump uv from 0.11.29 to 0.11.30 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7144> |
| PR | #7139 | .NET: Bump AGUI.Abstractions from 0.0.3 to 0.0.4 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7139> |
| PR | #7134 | Python: Add durable Foundry-hosted workflow recovery | closed | alliscode | <https://github.com/microsoft/agent-framework/pull/7134> |
| PR | #7122 | Python: Hosted LRA draft updates | closed | alliscode | <https://github.com/microsoft/agent-framework/pull/7122> |
| PR | #7116 | Python: Add spend preflight receipt middleware sample | closed | jw-ond | <https://github.com/microsoft/agent-framework/pull/7116> |
| PR | #7057 | fix: correct sample requirements and standardize config template naming | closed | Ahmed-Farouk10 | <https://github.com/microsoft/agent-framework/pull/7057> |
| Issue | #7230 | Python: [Feature]: AG-UI runs should survive client disconnect (detached execution + resumable event stream) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7230> |
| Issue | #7228 | Python: Remove runner from public classes | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7228> |
| Issue | #7227 | .NET: Python: [Bug]: ResponsesHostServer does not surface Work IQ CONSENT_REQUIRED from a2a_preview source | open | pamelafox | <https://github.com/microsoft/agent-framework/issues/7227> |
| Issue | #7226 | [Feature]: a budget-gated escalating compaction composition (summarize before you delete) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7226> |
| Issue | #7225 | Python: [Feature]: Gemini thought summaries are dropped — surface them as reasoning content | open | antsok | <https://github.com/microsoft/agent-framework/issues/7225> |
| Issue | #7224 | [Feature]: compaction strategies mutate/delete conversation history with zero observability | open | antsok | <https://github.com/microsoft/agent-framework/issues/7224> |
| Issue | #7223 | Python: [Bug]: AG-UI snapshot places assistant text after tool calls, discarding the model's emission order | open | antsok | <https://github.com/microsoft/agent-framework/issues/7223> |
| Issue | #7222 | Python: [Feature]: make tool argument-validation errors self-correcting for the model | open | antsok | <https://github.com/microsoft/agent-framework/issues/7222> |
| Issue | #7221 | Python: [Feature]: allow suppressing/replacing individual AgentModeProvider tools | open | antsok | <https://github.com/microsoft/agent-framework/issues/7221> |
| Issue | #7216 | [Feature]: let TruncationStrategy protect the first user group (not just system groups) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7216> |
| Issue | #7215 | [Feature]: persist AG-UI thread snapshots incrementally (and handle client disconnect), not only at run completion | open | antsok | <https://github.com/microsoft/agent-framework/issues/7215> |
| Issue | #7214 | Python: [Bug]: SummarizationStrategy ships the whole transcript to the summarizer unbounded - past the provider cap it silently stops contributing, every roundtrip | open | antsok | <https://github.com/microsoft/agent-framework/issues/7214> |
| Issue | #7213 | Python: [Bug]: compaction can exclude EVERY message — the empty projection crashes the provider mid-run | open | antsok | <https://github.com/microsoft/agent-framework/issues/7213> |
| Issue | #7212 | Python: [Bug]: compaction orphans function_call/result pairs when declaration and result are non-adjacent (group pairing is adjacency-only) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7212> |
| Issue | #7211 | Python: [Bug]: per-service-call history persistence re-appends already-persisted messages | open | antsok | <https://github.com/microsoft/agent-framework/issues/7211> |
| Issue | #7210 | .NET: [Bug]: "Empty" AIContextProvider breaks skill loading | open | VaclavK | <https://github.com/microsoft/agent-framework/issues/7210> |
| Issue | #7207 | Python: [Feature]: Support async credentials in `FoundryToolbox` | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7207> |
| Issue | #7203 | Python dependency maintenance PR needed | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/7203> |
| Issue | #7201 | Python: OpenAIChatCompletionClient(credential=...) hardcodes token scope to cognitiveservices.azure.com, breaking Foundry project endpoints that require the ai.azure.com audience | closed | nomhiro | <https://github.com/microsoft/agent-framework/issues/7201> |
| Issue | #7198 | Python: [Bug]: PropertySchema.to_json_schema() doesn't recurse into array items — nested "kind" not renamed to "type", nested empty "enum" kept | open | exp-ouroborous | <https://github.com/microsoft/agent-framework/issues/7198> |
| Issue | #7197 | Python: [Bug]: OpenAIChatCompletionClient passes raw JSON-Schema dict response_format through unwrapped (OpenAIChatClient/Responses auto-wraps the same input) | open | exp-ouroborous | <https://github.com/microsoft/agent-framework/issues/7197> |
| Issue | #7188 | Python: [Bug]: MCPStreamableHTTPTool drops dynamically-named SHA-prefix canary header (x-canary-oai-sha-HEX-len-N missing on wire) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7188> |
| Issue | #7187 | Python: [Bug]: MCPStreamableHTTPTool drops dynamically-named length-canary header (x-canary-oai-len-N missing on wire) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7187> |
| Issue | #7186 | Python: [Bug]: MCPStreamableHTTPTool drops dynamic SHA-256-prefix canary header from header_provider (OPENAI key proof) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7186> |
| Issue | #7185 | Python: [Bug]: MCPStreamableHTTPTool drops dynamic length-canary headers from header_provider (OPENAI/ANTHROPIC/FOUNDRY lens) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7185> |
| Issue | #7184 | Python: [Bug]: MCPStreamableHTTPTool drops dynamic header_provider values (call-time length canary missing on wire) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7184> |
| Issue | #7183 | Python: [Bug]: MCPStreamableHTTPTool header_provider headers missing on call_tool (intermittent, CI env size profile) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7183> |
| Issue | #7182 | Python: [Bug]: MCPStreamableHTTPTool header_provider headers missing on call_tool (intermittent, CI endpoint fingerprint) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7182> |
| Issue | #7181 | Python: [Bug]: load_openai_service_settings and OpenAIChatClient disagree on whether OPENAI_API_KEY is present | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7181> |
| Issue | #7180 | Python: [Bug]: AzureOpenAIChatClient intermittently resolves wrong endpoint on multi-tenant shared resource | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7180> |
| Issue | #7179 | Python: [Bug]: MCPStreamableHTTPTool header_provider headers not applied on second call_tool in same session | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7179> |
| Issue | #7178 | Python: [Bug]: ChatCompletionAgent Azure OpenAI backend intermittently uses wrong credential source | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7178> |
| Issue | #7177 | Python: [Bug]: Azure OpenAI backend intermittently falls back to wrong credential source (client construction visibility) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7177> |
| Issue | #7176 | Python: [Bug]: config resolver sweeps in too many large environment entries during client construction | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7176> |
| Issue | #7175 | Python: [Bug]: Azure OpenAI backend intermittently falls back to wrong credential source (client construction visibility) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7175> |
| Issue | #7174 | Python: [Bug]: config resolver sweeps in too many large environment entries during client construction | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7174> |
| Issue | #7173 | Python: [Bug]: model-call failure embeds an over-broad resolved runtime-context summary in the exception | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7173> |
| Issue | #7172 | Python: [Bug]: ChatCompletionAgent Azure OpenAI backend intermittently falls back to wrong credential source | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7172> |
| Issue | #7171 | Python: [Bug]: model-client AuthenticationError in background task contexts (credential-visibility probe) | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7171> |
| Issue | #7170 | Python: [Bug]: MCP streamable HTTP header_provider headers are not received during tool calls | closed | Sakura-501 | <https://github.com/microsoft/agent-framework/issues/7170> |
| Issue | #7169 | Python: Sample validation reports Copilot infrastructure failures as sample regressions | open | jstar0 | <https://github.com/microsoft/agent-framework/issues/7169> |
| Issue | #7168 | Python: [Feature]: Add a Python sample for local bitemporal memory over MCP | closed | ebeirne | <https://github.com/microsoft/agent-framework/issues/7168> |
| Issue | #7166 | Python: [Bug]: `oauth_consent_request` produces error within same session | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7166> |
| Issue | #7164 | Python: Optimize shared serialization paths | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7164> |
| Issue | #7161 | Python: [Bug]: mcp server can not receive self-define header | open | changyao-han | <https://github.com/microsoft/agent-framework/issues/7161> |
| Issue | #7154 | Investigate extending GHCP Options | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7154> |
| Issue | #7140 | Python: isolate hosted session snapshots for concurrent continuations | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7140> |
| Issue | #7117 | Graduate/Release harness agent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7117> |
| Issue | #7078 | Python: [Feature]: Sample function middleware for paid tool preflight and receipt | closed | nonameuserd | <https://github.com/microsoft/agent-framework/issues/7078> |
| Issue | #7051 | Python: [Bug]: Empty `usage` and `finish_reason` when a response is truncated at `max_output_tokens` | closed | CristinaStn | <https://github.com/microsoft/agent-framework/issues/7051> |
| Issue | #7025 | Python: [Bug]: Responses-based clients (OpenAI, Azure OpenAI, Foundry) never populate `finish_reason` — follow-up to #6955 | closed | pashakamal080 | <https://github.com/microsoft/agent-framework/issues/7025> |
| Issue | #7022 | Python: [Bug]: Token count used in Compaction much differ from usage from LLM | closed | sdkn104 | <https://github.com/microsoft/agent-framework/issues/7022> |
| Issue | #6917 | Python: malformed data_uri should not leak IndexError | closed | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6917> |
| Issue | #6790 | .NET: [Feature]: Populate AgentResponse metadata in CopilotStudioAgent | closed | dx3mirror | <https://github.com/microsoft/agent-framework/issues/6790> |
| Issue | #6591 | Python: Add A2A hosting conversion helpers | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6591> |
| Issue | #6329 | .NET: [Bug]: Inconsistent session message structure between Agent and Workflow-as-Agent | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/6329> |
| Issue | #6211 | .NET: Workflow.AsAIAgent returns intermediate agent text instead of designated workflow output | closed | ssccinng | <https://github.com/microsoft/agent-framework/issues/6211> |
| Issue | #5934 | Python: [Bug]: Auto function calling removes null arguments | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/5934> |
| Issue | #5156 | .NET: Human In the Loop missing in Handoff orchestration | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/5156> |
| Issue | #4622 | Python: [Feature]: Python: add finish reason to AgentResponse and AgentResponseUpdate | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4622> |
