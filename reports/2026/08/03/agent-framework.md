# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 49 |
| オープン中の新規 PR     | 34 |
| クローズ (未マージ) PR  | 17 |
| 新規 Issue              | 56 |
| クローズ Issue          | 41 |
| 主要コントリビューター  | eavanvalkenburg, giles17, he-yufeng, SergeyMenshykh, peibekwe, moonbox3 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7384](https://github.com/microsoft/agent-framework/issues/7384) — .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration （Issue / open / MirkoMattioliSacmi）
  HarnessAgent と永続化済み ChatHistoryProvider を使う .NET 利用者は、Handoff オーケストレーションが壊れる既知問題として回避策と修正版の状況を確認してください。
- **⚠ 破壊的変更** [#7374](https://github.com/microsoft/agent-framework/pull/7374) — [BREAKING] Python: Allow workflow checkpoint full replayability （PR / merged / TaoChenOSU）
  Python でワークフロー checkpoint を復元する利用者は、1.13.0 系の replay 仕様と既存 checkpoint の互換性を確認し、必要なら再生成してください。
- **⚠ 破壊的変更** [#7347](https://github.com/microsoft/agent-framework/pull/7347) — [BREAKING] Python: Allow workflow checkpoint full replayability （PR / closed / TaoChenOSU）
  同内容のクローズ済み PR であり、実際の対応はマージ済み #7374 の変更を基準に確認してください。
- **⚠ セキュリティ** [#7466](https://github.com/microsoft/agent-framework/issues/7466) — Python: Security: 64 official samples ingest untrusted content without SecureAgentConfig (of 357 that omit it entirely) （Issue / open / lerelerele）
  サンプルを利用・公開する開発者は、未信頼コンテンツを扱う 64 サンプルの SecureAgentConfig 欠落を確認し、プロンプトインジェクション対策を追加してください。
- **⚠ セキュリティ** [#7463](https://github.com/microsoft/agent-framework/issues/7463) — [Feature]: Support security copilot （Issue / open / fedsp）
  Security Copilot 連携を検討する担当者は、要求仕様と認証・データ境界を確認し、実装方針が固まるまで未確定機能として扱ってください。
- **⚠ セキュリティ** [#7383](https://github.com/microsoft/agent-framework/issues/7383) — Python: Bind tool-approval responses to surfaced approval requests （Issue / open / eavanvalkenburg）
  Python のツール承認を使う利用者は、表示された承認要求と返却応答が正しく紐付くことを確認し、不一致時の誤承認を防いでください。

## このリポジトリの要点

Python ワークフローでは checkpoint の完全 replay（#7374）や compaction 時の除外ツール結果処理（#7391）が進み、復元性と会話履歴の扱いが改善されています。  
MCP skills のアーカイブ対応（#7121）と Python 1.13.0 パッケージ更新（#7443）も入り、拡張性とリリース整合性が高まりました。  
一方、サンプルの SecureAgentConfig 欠落（#7466）などセキュリティ課題は、利用者側でも確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7374](https://github.com/microsoft/agent-framework/pull/7374) — [BREAKING] Python: Allow workflow checkpoint full replayability

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `python` `workflows` `breaking change`
- 変更行数: +486 / -291
- マージ日時 (UTC): `2026-07-29 19:31:43`

**変更概要**

checkpoint からワークフローを完全に再生できるよう、runner、checkpoint、workflow context の復元処理を再設計しました。  
要求・承認イベントの再水和と反復上限の扱いをテストで補強し、AG-UI 連携にも復元情報を渡します。  
永続化したワークフローを再実行する Python 利用者の復元結果と実行順序に影響します。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 4 | 0 |
| `python/packages/core/agent_framework/__init__.py` | 5 | 1 |
| `python/packages/core/agent_framework/__init__.pyi` | 2 | 1 |
| `python/packages/core/agent_framework/_workflows/_agent_executor.py` | 2 | 2 |
| `python/packages/core/agent_framework/_workflows/_checkpoint.py` | 11 | 1 |
| `python/packages/core/agent_framework/_workflows/_runner.py` | 62 | 69 |
| `python/packages/core/agent_framework/_workflows/_runner_context.py` | 23 | 1 |
| `python/packages/core/agent_framework/_workflows/_workflow.py` | 31 | 10 |
| `python/packages/core/agent_framework/_workflows/_workflow_builder.py` | 3 | 1 |
| `python/packages/core/tests/core/test_function_invocation_logic.py` | 1 | 0 |
| `python/packages/core/tests/workflow/test_checkpoint.py` | 223 | 0 |
| `python/packages/core/tests/workflow/test_request_info_event_rehydrate.py` | 58 | 0 |
| `python/packages/core/tests/workflow/test_runner.py` | 32 | 199 |
| `python/packages/core/tests/workflow/test_workflow.py` | 29 | 6 |

</details>

<details><summary>コミット (4 件)</summary>

- `f9587ae` Allow workflow checkpoint full replayability
- `624456d` Fix type
- `85fff4f` Add max iteration detailed doc string
- `c408c5b` Refine comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**。checkpoint / runner の復元契約と workflow context の状態管理が変更され、完全 replay を前提にした新しい復元経路が追加されました。既存の自作 checkpoint 実装や内部 API 依存コードは、型スタブとテストを確認してください。

**既存利用者への影響**

標準 API の利用者は通常コード変更不要ですが、既存 checkpoint を長期保存している場合は 1.13.0 系で読み込み・再実行を検証してください。内部 runner や checkpoint 形式を直接扱う実装は移行が必要です。

### [#7391](https://github.com/microsoft/agent-framework/pull/7391) — Python: Ignore excluded tool results during compaction

- 作者: dk3yyyy / 状態: MERGED
- ラベル: `python`
- 変更行数: +41 / -0
- マージ日時 (UTC): `2026-08-03 01:43:21`

**変更概要**

会話の compaction 時に、除外対象に設定されたツール結果を要約入力へ含めないようにしました。  
余分な compaction メッセージの pass も抑止し、不要なトークン消費と履歴ノイズを減らします。  
ツール結果の除外設定を使う Python 利用者は、要約後のコンテキストが期待どおりか確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_compaction.py` | 4 | 0 |
| `python/packages/core/tests/core/test_compaction.py` | 37 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `ea3d149` Python: Ignore excluded tool results during compaction
- `e8390cf` fix: avoid extra compaction message pass

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更は見当たりません。compaction 内部で除外ツール結果のフィルターと追加 pass 回避を行う実装・テストが追加されています。

**既存利用者への影響**

通常はマイグレーション不要です。除外したツール結果を要約に依存していた利用者は、要約後にその情報が残らないことを前提にプロンプトや除外設定を見直してください。

### [#7247](https://github.com/microsoft/agent-framework/pull/7247) — docs: ADR-0032 — propose durable/Azure Functions repo extraction

- 作者: cgillum / 状態: MERGED
- ラベル: `documentation`
- 変更行数: +104 / -0
- マージ日時 (UTC): `2026-07-31 19:44:49`

**変更概要**

Durable / Azure Functions 関連の機能を将来的に別リポジトリへ抽出する方針を ADR-0032 として文書化しました。  
公開・リリース遅延、Issue 移管、リポジトリ境界の論点を整理し、実装変更ではなく意思決定の前提を明確にしています。  
Durable/Azure Functions の利用者には直ちに API 変更はなく、今後の配布場所や移行案を追跡する材料になります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0032-durable-azure-functions-extraction.md` | 104 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `dc14e30` docs: add ADR-0032 proposing durable/Azure Functions repo extraction
- `bc076bf` Fix GitHub user handles
- `8fad6ce` docs: generalize publish-lag example in ADR-0032
- `b316691` Add note about issue transfers
- `c75d531` Updates to ADR based on offline discussion
- `4ad3801` Merge branch 'main' into adr-0032-durable-extraction
- `e0ef0af` Merge branch 'adr-0032-durable-extraction' of https://github.com/micr…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャや実装は変更されていません。ADR-0032 にリポジトリ分割案、公開手順、Issue 移管の考慮事項が追加されました。

**既存利用者への影響**

移行作業は不要です。関係者は ADR の提案が確定方針かを確認し、将来のパッケージ・Issue・ドキュメント移動に備えてください。

### [#7443](https://github.com/microsoft/agent-framework/pull/7443) — Python: Bump Python package versions for 1.13.0 release

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python` `lab`
- 変更行数: +167 / -119
- マージ日時 (UTC): `2026-07-30 22:52:41`

**変更概要**

Python パッケージ群のバージョンを 1.13.0 に更新し、同時リリースされる依存関係と lockfile を整合させました。  
各パッケージの changelog、pyproject、リリース用メタデータをまとめて更新しています。  
1.13.0 を利用する Python 開発者は、依存解決結果とリリースノートを確認して更新してください。

<details><summary>変更ファイル (40 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 49 | 1 |
| `python/packages/a2a/pyproject.toml` | 2 | 2 |
| `python/packages/ag-ui/pyproject.toml` | 2 | 2 |
| `python/packages/anthropic/pyproject.toml` | 2 | 2 |
| `python/packages/azure-ai-search/pyproject.toml` | 2 | 2 |
| `python/packages/azure-contentunderstanding/pyproject.toml` | 2 | 2 |
| `python/packages/azure-cosmos-memory/pyproject.toml` | 2 | 2 |
| `python/packages/azure-cosmos/pyproject.toml` | 2 | 2 |
| `python/packages/azurefunctions/pyproject.toml` | 3 | 3 |
| `python/packages/bedrock/pyproject.toml` | 2 | 2 |
| `python/packages/chatkit/pyproject.toml` | 2 | 2 |
| `python/packages/claude/pyproject.toml` | 2 | 2 |
| `python/packages/copilotstudio/pyproject.toml` | 2 | 2 |
| `python/packages/core/pyproject.toml` | 1 | 1 |
| `python/packages/declarative/pyproject.toml` | 2 | 2 |
| _... 他 25 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `a59565b` Bump Python package versions for 1.13.0 release
- `8f83897` Align co-released Python package dependencies
- `cb22acc` Minimize Python release lockfile updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

主な変更はパッケージメタデータと依存バージョンの更新で、新規 API や明示的な破壊的変更はありません。共同リリースの依存制約と lockfile の更新が中心です。

**既存利用者への影響**

利用中のパッケージを 1.13.0 に上げる場合は、対応する依存パッケージも同時に更新してテストしてください。固定バージョン運用では個別に更新時期を選べます。

### [#7121](https://github.com/microsoft/agent-framework/pull/7121) — Python: Support archive-type MCP skills (source, toolbox, sample)

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1174 / -42
- マージ日時 (UTC): `2026-07-30 21:03:25`

**変更概要**

MCP skills を単一ファイルだけでなくアーカイブ形式から取得・展開できるようにしました。  
MCPSkillsSource と FoundryToolbox にアーカイブの取得・展開オプションを追加し、サンプルとテストを整備しています。  
アーカイブ配布の MCP skill を利用する Python / Foundry Hosting 利用者が対象です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 0 |
| `python/packages/core/agent_framework/_skills.py` | 619 | 33 |
| `python/packages/core/tests/core/test_mcp_skills.py` | 437 | 1 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_toolbox.py` | 46 | 4 |
| `python/packages/foundry_hosting/tests/test_toolbox.py` | 61 | 1 |
| `python/samples/02-agents/skills/mcp_based_skill/README.md` | 8 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/foundry_toolbox_mcp_skills/README.md` | 2 | 2 |

</details>

<details><summary>コミット (14 件)</summary>

- `ceee44b` Python: Support archive-type MCP skills in MCPSkillsSource
- `1ff8011` Propagate non-not-found archive download errors in MCPSkillsSource
- `dec5964` Python: Expose archive skill options on FoundryToolbox and demo in sa…
- `000be0a` Python: Fix ty type error in toolbox archive-option test
- `69e23b7` Merge remote-tracking branch 'upstream/main' into mcp-archive-skills
- `925e386` Rework archive-type skill support in MCPSkillsSource to unpack archives
- `0e48657` Merge branch 'main' into mcp-archive-skills
- `bcf61cc` Merge branch 'main' into mcp-archive-skills
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MCPSkillsSource にアーカイブ展開とダウンロードエラー伝播の処理を追加し、FoundryToolbox からアーカイブ選択を指定できる API が増えました。既存の単一ソース指定は維持されます。

**既存利用者への影響**

既存の skill ソース利用者は変更不要です。アーカイブを使う場合のみ新しい source / toolbox オプションを追加し、展開後のパスと信頼できる配布元を確認してください。

### [#4998](https://github.com/microsoft/agent-framework/pull/4998) — Reference Code of Conduct in README

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation`
- 変更行数: +1 / -0
- マージ日時 (UTC): `2026-07-30 18:39:56`

**変更概要**

README にプロジェクトの Code of Conduct への参照リンクを追加しました。  
開発者やコントリビューターが行動規範を見つけやすくする文書上の変更で、実装や API には影響しません。  
新規参加者向けの案内として機能します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `446b44a` reference code of conduct in readme
- `071e995` Merge branch 'main' into update-readme

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API、依存関係、ビルド設定の変更はありません。README に Code of Conduct の参照を 1 行追加しただけです。

**既存利用者への影響**

利用者の移行は不要です。コントリビューターは README からリンクされる行動規範を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7377 | .NET: Fix and re-enable flaky InputWaiter timeout test | peibekwe | <https://github.com/microsoft/agent-framework/pull/7377> |
| #7353 | .NET:  Preserve table state across declarative EditTable operations  | peibekwe | <https://github.com/microsoft/agent-framework/pull/7353> |
| #7345 | Python: Improve function approval resume and replay | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7345> |
| #7407 | Python: Preserve approval decisions under OpenAI continuation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7407> |
| #7441 | .NET: Updating version for dotnet release 1.16.0 | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7441> |
| #7415 | .NET: Add regression tests and sample guidance for stable agent IDs in checkpointed workflows | peibekwe | <https://github.com/microsoft/agent-framework/pull/7415> |
| #7401 | .NET: Add FileMemoryProvider sample to 02-agents/AgentWithMemory | westey-m | <https://github.com/microsoft/agent-framework/pull/7401> |
| #7306 | Python: Move SessionStore to core and persist Foundry Responses sessions | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7306> |
| #5923 | Python: fix(core): restrict unpickler module-prefix allowlist to types only | White-Mouse | <https://github.com/microsoft/agent-framework/pull/5923> |
| #7428 | Python: Add FileMemoryProvider context provider sample | westey-m | <https://github.com/microsoft/agent-framework/pull/7428> |
| #7434 | Fix DevFlow review comment trigger | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7434> |
| #7305 | Python: Apply header_provider headers to the MCP initialize handshake and other ambient requests | giles17 | <https://github.com/microsoft/agent-framework/pull/7305> |
| #7256 | Python: make SerializationMixin.from_dict enforce the documented type check | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7256> |
| #7420 | Python: add feature-usage User-Agent telemetry | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7420> |
| #7239 | Python: preserve model emission order in AG-UI MESSAGES_SNAPSHOT | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7239> |
| #7405 | Python: Remove indices in FHA sample names | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7405> |
| #7336 | Python: Add GitHub Copilot BYOK sample | droideronline | <https://github.com/microsoft/agent-framework/pull/7336> |
| #7375 | Python: Bound summarization input before provider call | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7375> |
| #7315 | Python: Bump postcss from 8.5.15 to 8.5.23 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7315> |
| #7314 | Python: Bump postcss from 8.5.15 to 8.5.23 in /python/samples/05-end-to-end/chatkit-integration/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7314> |
| #7283 | Python: Fix FoundryAgent inheriting OPENAI_CHAT_MODEL for agent-reference requests | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/7283> |
| #7427 | Python: Fix Actions token environment | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7427> |
| #7127 | Python: Sanitize author_name for the Chat Completions message name field | itjuba | <https://github.com/microsoft/agent-framework/pull/7127> |
| #7162 | Python: fix Anthropic streaming double-counting token usage | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7162> |
| #7369 | Python: feat(observability): add support for OpenAI cache write tokens in usage details | cecheta | <https://github.com/microsoft/agent-framework/pull/7369> |
| #7409 | Python: Preserve declaration-only streaming metadata | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7409> |
| #7408 | Python: Remove tool content returned after invocation limits | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7408> |
| #7406 | Python: Keep call and result occurrences atomic in compaction | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7406> |
| #7424 | Update GH Actions workflows | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7424> |
| #7411 | Python: Correlate AG-UI confirm_changes snapshots by call id | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7411> |
| #7410 | Python: Defer provider-injected approvals to in-run execution | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7410> |
| #7220 | Python: fix(foundry-hosting): root hosted checkpoints under durable home dire… | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7220> |
| #7376 | .NET: Bump .NET SDK from 10.0.301 to 10.0.302 | giles17 | <https://github.com/microsoft/agent-framework/pull/7376> |
| #7199 | Python: Fix OpenAIChatCompletionClient passing raw JSON-Schema dict response_format through unwrapped | exp-ouroborous | <https://github.com/microsoft/agent-framework/pull/7199> |
| #7372 | .NET: Add source (ZIP) deploy oriented hosted agent samples | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7372> |
| #6500 | docs: ADR-0033 feature-usage bitmask in the User-Agent | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6500> |
| #7130 | Python: extract keywords from non-English text for topic selection | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7130> |
| #7362 | .NET: Add Anthropic-backed live tests for the OpenAI Responses hosting helpers | ANcpLua | <https://github.com/microsoft/agent-framework/pull/7362> |
| #7337 | .NET: Add GitHub Copilot BYOK sample | droideronline | <https://github.com/microsoft/agent-framework/pull/7337> |
| #7322 | Python: Fix Gemini harness tool declarations | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7322> |
| #7342 | Python: isolate dependency-bound validation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7342> |
| #7361 | .NET: Workflows: quarantine flaky InputWaiter timeout test (#7360) | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7361> |
| #7365 | .NET: Forward A2A MessageSendParams.Configuration in the A2A adapter | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7365> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7396 | Python: Bound tool result compaction summaries | open | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7396> |
| PR | #7392 | Python: Add Mistral chat client | open | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7392> |
| PR | #7479 | Python: Give the AG-UI Thread Snapshot lifecycle a single owner module | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7479> |
| PR | #7450 | Python: fix(python): add release_session API to prevent BackgroundAgentsProvider memory leaks | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7450> |
| PR | #7470 | Python: fix(redis): honour a max_messages retention limit of zero | open | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7470> |
| PR | #7449 | Python: allow registering custom types for checkpoint serialization and deserialization | open | Mahajan-Sachin | <https://github.com/microsoft/agent-framework/pull/7449> |
| PR | #7473 | Python: fix(python): prevent local tool approvals from serializing as MCP responses | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7473> |
| PR | #7468 | Python: feat(core): migrate MCP integration to mcp 2.0.0 | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7468> |
| PR | #7465 | .NET and Python: Extract Durable Task and Azure Functions integrations | open | cgillum | <https://github.com/microsoft/agent-framework/pull/7465> |
| PR | #7462 | Python: Prevent orphaned local approval responses | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7462> |
| PR | #7474 | .NET: Bound the tool-approval auto-approval loop (#7472) | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7474> |
| PR | #7399 | Python: fix LocalEvaluator reporting zero-check items as passed | open | CTWalk | <https://github.com/microsoft/agent-framework/pull/7399> |
| PR | #7476 | Python: ci: validate dependency bounds for metadata changes | open | alectimison-maker | <https://github.com/microsoft/agent-framework/pull/7476> |
| PR | #7475 | .NET: Set AZURE_OPENAI_DEPLOYMENT_NAME in durable sample test harness… | open | ramyaramasamy1991 | <https://github.com/microsoft/agent-framework/pull/7475> |
| PR | #7412 | .NET: Add Cosmos chat history retrieval API | open | ilia-sokolov | <https://github.com/microsoft/agent-framework/pull/7412> |
| PR | #7457 | Python: Add core session tests and Windows emulator repair script | open | HASSanHASSgit | <https://github.com/microsoft/agent-framework/pull/7457> |
| PR | #7464 | Python: fix: bound background_agents_wait_for_first_completion with a timeout | open | HUAN2022A | <https://github.com/microsoft/agent-framework/pull/7464> |
| PR | #7459 | .NET: expose workflow routing metadata | open | ronronner02 | <https://github.com/microsoft/agent-framework/pull/7459> |
| PR | #7430 | Python: Fix AG-UI conversation correlation across runs | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7430> |
| PR | #7445 | Consolidate Dependabot dependency updates | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7445> |
| PR | #7436 | Bump ty from 0.0.60 to 0.0.64 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7436> |
| PR | #7439 | Bump ruff from 0.15.22 to 0.16.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7439> |
| PR | #7438 | Bump uv from 0.11.29 to 0.11.32 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7438> |
| PR | #7437 | Bump prek from 0.4.10 to 0.4.11 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7437> |
| PR | #7417 | Python: fix CopilotStudioAgent LineTooLong on large activities | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7417> |
| PR | #7442 | .NET: Fix Handoff orchestration sample not responding to user input | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/7442> |
| PR | #7440 | Python: update uv-build requirement from <0.12.0,>=0.8.2 to >=0.8.2,<0.13.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7440> |
| PR | #7423 | Python: A2UI (Agent-to-UI) support for the AG-UI adapter | open | ranst91 | <https://github.com/microsoft/agent-framework/pull/7423> |
| PR | #7431 | Python: fix(foundry-hosting): root file-based approval storage under durable home directory | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7431> |
| PR | #7426 | Python: Remove unused AG-UI orchestration helpers and flatten subpackage | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7426> |
| PR | #7404 | Python: Fix ClaudeAgent reusing one SDK client across distinct fresh sessions | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7404> |
| PR | #7388 | .NET: Store executable function calls bypassed by declaration-only tool calls | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7388> |
| PR | #7370 | .NET: Resilient long-running (crash-recoverable) Foundry hosted agents | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7370> |
| PR | #7380 | Python: Preserve falsey EditTableV2 items | open | hsusul | <https://github.com/microsoft/agent-framework/pull/7380> |
| PR | #7444 | Python: agent-framework-agent-hooks — middleware adapter for the AGENT-HOOKS-0.1 control contract | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7444> |
| PR | #5131 | Go: Agent Framework implementation (Phases 1-2) | closed | juliomenendez | <https://github.com/microsoft/agent-framework/pull/5131> |
| PR | #4749 | .NET: Fix function call and tool result messages not stored in session when using ChatReducer with AfterMessageAdded trigger | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/4749> |
| PR | #4434 | Add AgentConversation integration test harness with example project and README | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/4434> |
| PR | #3559 | Python: Move samples to durable directory | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/3559> |
| PR | #3045 | Modify VisionAgent to fetch and send image bytes | closed | bingbing-gui | <https://github.com/microsoft/agent-framework/pull/3045> |
| PR | #7321 | Python: fix LineTooLong error in CopilotStudioAgent | closed | Mahajan-Sachin | <https://github.com/microsoft/agent-framework/pull/7321> |
| PR | #7080 | Python: Apply header_provider headers to the MCP initialize handshake | closed | efranken | <https://github.com/microsoft/agent-framework/pull/7080> |
| PR | #7312 | Python: Add agent-framework-tenki (Tenki-backed CodeAct provider) | closed | Patricio-Filice-Luxor | <https://github.com/microsoft/agent-framework/pull/7312> |
| PR | #7308 | Python: Add Eden AI chat client provider | closed | MVS-source | <https://github.com/microsoft/agent-framework/pull/7308> |
| PR | #7294 | Bump ty from 0.0.60 to 0.0.63 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7294> |
| PR | #7293 | Bump uv from 0.11.29 to 0.11.31 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7293> |
| PR | #6939 | Python: Add agent-framework-agentsandbox connector to integrate agent-sandbox | closed | aleks-stefanovic | <https://github.com/microsoft/agent-framework/pull/6939> |
| PR | #7352 | Python: Forward function_invocation_kwargs through DevUI to agent.run… | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/7352> |
| PR | #7347 | [BREAKING] Python: Allow workflow checkpoint full replayability | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7347> |
| PR | #7346 | Python: Add function_loop_max_iterations to create_harness_agent | closed | westey-m | <https://github.com/microsoft/agent-framework/pull/7346> |
| PR | #7355 | Python: Forward function invocation kwargs through DevUI | closed | hsusul | <https://github.com/microsoft/agent-framework/pull/7355> |
| Issue | #7452 | Python: [Bug]:  A local tool's approval response is serialized to the Responses API as an MCP approval response, with no matching request → 400 | open | antsok | <https://github.com/microsoft/agent-framework/issues/7452> |
| Issue | #7453 | Python: [Bug]: Gemini: `thought_signature` is lost when a tool approval is answered — PR #7095's adjacency mechanism does not cover the approval path (#6963 regression) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7453> |
| Issue | #7456 | Python: [Bug]: A2AAgent as a group chat participant crashes with "At least one message is required" on empty-cache turns | open | greghorne20 | <https://github.com/microsoft/agent-framework/issues/7456> |
| Issue | #7455 | Python: [Feature]: FIDES integration: improvement requests from a production deployment | open | antsok | <https://github.com/microsoft/agent-framework/issues/7455> |
| Issue | #7463 | [Feature]: Support security copilot | open | fedsp | <https://github.com/microsoft/agent-framework/issues/7463> |
| Issue | #7460 | Python: Citation Annotation Support for Responses API and AGUI | open | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7460> |
| Issue | #7458 | Python: [Bug]: AG-UI approval resume is consumed (and the approved tool executed) before the run can fail — a post-consume failure makes the user's answer unrecoverable, and the retry is indistinguishable from a never-pending id | open | antsok | <https://github.com/microsoft/agent-framework/issues/7458> |
| Issue | #7461 | Python: [Bug]: AZURE_EXPERIMENTAL_ENABLE_GENAI_TRACING=true crashes agent-framework-openai streaming | open | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7461> |
| Issue | #7466 | Python: Security: 64 official samples ingest untrusted content without SecureAgentConfig (of 357 that omit it entirely) | open | lerelerele | <https://github.com/microsoft/agent-framework/issues/7466> |
| Issue | #7467 | .NET: Suggesting adding mem0sharp samples | open | jihadkhawaja | <https://github.com/microsoft/agent-framework/issues/7467> |
| Issue | #7469 | Python: RedisHistoryProvider: max_messages=0 retains every message instead of none | open | chinmayv095 | <https://github.com/microsoft/agent-framework/issues/7469> |
| Issue | #7471 | Python: RedisHistoryProvider ignores source_id in its key, so two providers on one session share and overwrite each other's history | open | chinmayv095 | <https://github.com/microsoft/agent-framework/issues/7471> |
| Issue | #7397 | Python: [Bug]: `LocalEvaluator` with zero checks reports items as passed | open | CTWalk | <https://github.com/microsoft/agent-framework/issues/7397> |
| Issue | #7472 | .NET: [Bug]: Sample can make endless "loop" resulting in Millions on tokens spent if you do not terminate process yourself :-( | open | rwjdk | <https://github.com/microsoft/agent-framework/issues/7472> |
| Issue | #7477 | [Feature Request] Agent Payment Layer: x402 / HTTP 402 integration for autonomous API payments | closed | minia2a | <https://github.com/microsoft/agent-framework/issues/7477> |
| Issue | #7418 | Python: [Bug]: Harness Agent drops structured value on the streaming path with tool approval | open | lmx-2077 | <https://github.com/microsoft/agent-framework/issues/7418> |
| Issue | #7398 | .NET: [Feature/RFC]: DevUI visual authoring with declarative and code round-tripping | open | joslat | <https://github.com/microsoft/agent-framework/issues/7398> |
| Issue | #7395 | .NET: CompactionMessageIndex.Update() drops new user messages when TodoProvider is configured | open | fengdan10 | <https://github.com/microsoft/agent-framework/issues/7395> |
| Issue | #7394 | .NET: [Bug]: Skills don't work in .NET API Hosting | open | hintdesk | <https://github.com/microsoft/agent-framework/issues/7394> |
| Issue | #7393 | Python: [Bug]: `ToolResultCompactionStrategy` inserts the full, untruncated tool-result text it just excluded | open | antsok | <https://github.com/microsoft/agent-framework/issues/7393> |
| Issue | #7387 | Python: [Bug]: `ToolResultCompactionStrategy` digests EXCLUDED messages, so collapsing a partly-included group GROWS the context | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7387> |
| Issue | #7386 | Python: [Feature]: No way to serialize (or order) same-message function calls — stateful tools with write→read dependencies race | open | antsok | <https://github.com/microsoft/agent-framework/issues/7386> |
| Issue | #7385 | Python: [Bug]: BackgroundAgentsProvider retains per-session runtime (tasks, child sessions) forever | open | antsok | <https://github.com/microsoft/agent-framework/issues/7385> |
| Issue | #7384 | .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration | open | MirkoMattioliSacmi | <https://github.com/microsoft/agent-framework/issues/7384> |
| Issue | #7357 | Python: [Feature]: Support OpenAI advanced tool calling features | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7357> |
| Issue | #7402 | Python: [Bug]: agent loop binds per-call `response_format` to every iteration, so the agent satisfies the schema instead of calling `todos_complete` | closed | DaiqianHu | <https://github.com/microsoft/agent-framework/issues/7402> |
| Issue | #7454 | Python: [Bug]: `background_agents_wait_for_first_completion` waits with no bound — a child that never completes suspends the calling agent's run indefinitely | open | antsok | <https://github.com/microsoft/agent-framework/issues/7454> |
| Issue | #7451 | Python: [Bug]: Ollama connector rejects the approval-resume message AG-UI synthesizes | open | antsok | <https://github.com/microsoft/agent-framework/issues/7451> |
| Issue | #7389 | Python: [Feature]: Support Agent factories in Foundry Hosting Responses API | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7389> |
| Issue | #7413 | Python: [Feature]:  Allow devs to register custom types for checkpoint serialization and deserialization | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7413> |
| Issue | #7448 | .NET: [Feature]: Make `Workflow.Edges`, `EdgeData.Connection` and `FanOutEdgeData` public | open | kshyju | <https://github.com/microsoft/agent-framework/issues/7448> |
| Issue | #7446 | Python: Support mcp 2.x (Python SDK): pin blocks mcp 2.0.0 | open | ProgrammerPlus1998 | <https://github.com/microsoft/agent-framework/issues/7446> |
| Issue | #7416 | .NET: Python: [Bug]: Foundry Hosting omits usage from /responses terminal events | open | herohua | <https://github.com/microsoft/agent-framework/issues/7416> |
| Issue | #7379 | .NET: Python: [Bug]: EditTableV2 replaces falsey item values with None | open | hsusul | <https://github.com/microsoft/agent-framework/issues/7379> |
| Issue | #7364 | .NET: [Feature]: FoundryEvals — uploaded (file-id) datasets and per-criterion judge configuration | open | ANcpLua | <https://github.com/microsoft/agent-framework/issues/7364> |
| Issue | #7363 | .NET: [Feature]: Expose the MEAI IEvaluator -> IAgentEvaluator bridge (AsAgentEvaluator) | open | ANcpLua | <https://github.com/microsoft/agent-framework/issues/7363> |
| Issue | #7373 | Python: Add GitHub Copilot BYOK Sample | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7373> |
| Issue | #7435 | .NET: [Bug]: DevUI always sends new session | open | hintdesk | <https://github.com/microsoft/agent-framework/issues/7435> |
| Issue | #7422 | .NET: [Feature]: Dotnet feature-usage bitmask | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7422> |
| Issue | #7432 | Python: Restrict checkpoint unpickler globals and attribute traversal | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7432> |
| Issue | #7421 | Python: [Feature]: Python feature-usage bitmask | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7421> |
| Issue | #7378 | Python: Rename FHA samples to remove numbering | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7378> |
| Issue | #7425 | .NET: Fix Copilot Actions token environment in integration workflows | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7425> |
| Issue | #7429 | Python: [Bug]: AG-UI provider IDs replace request thread and run IDs | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7429> |
| Issue | #7368 | Python: [Bug]: `usage_details.cache_creation_input_token_count` is missing for gpt-5.6 models | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7368> |
| Issue | #7419 | .NET: Python: implement feature-usage User-Agent telemetry | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7419> |
| Issue | #7414 | Python: [Bug]:  Move FHA file-based approval storage to under $HOME | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7414> |
| Issue | #7403 | Python: ClaudeAgent reuses one SDK client across distinct fresh sessions, leaking conversation state | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7403> |
| Issue | #7400 | .NET: Add documentation/sample to explain how to and the implications of changing provider with the same session | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7400> |
| Issue | #7358 | .NET: Update compaction docs to show different ways to use a Compaction Strategy with their implications | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/7358> |
| Issue | #7360 | .NET: [Flaky test] InputWaiterTests.InputWaiter_WaitForInputAsync_CompletesWhenTimeoutExpiresAsync | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7360> |
| Issue | #7383 | Python: Bind tool-approval responses to surfaced approval requests | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7383> |
| Issue | #7371 | Python: [Bug]:  FanInEdgeRunner may contain states that are not reset by checkpoint restoration | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7371> |
| Issue | #7367 | .NET: Replace AgentRunMode with SendMessageConfiguration.return_immediately | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/7367> |
| Issue | #7366 | [Feature]: Mistral Chat Client implementation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7366> |
| Issue | #7359 | .NET: Epic - .net Compaction Graduation | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7359> |
| Issue | #7125 | Python: [Bug]: function_approval_response is dropped from the request under service-side storage, so an approval-paused run never resumes | closed | itjuba | <https://github.com/microsoft/agent-framework/issues/7125> |
| Issue | #6088 | Python: Support MCP skills of archive type | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6088> |
| Issue | #7079 | Python: [Bug]: header_provider not applied to MCP initialize() request | closed | efranken | <https://github.com/microsoft/agent-framework/issues/7079> |
| Issue | #7255 | Python: SerializationMixin.from_dict silently accepts mismatched type identifiers | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7255> |
| Issue | #7223 | Python: [Bug]: AG-UI snapshot places assistant text after tool calls, discarding the model's emission order | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7223> |
| Issue | #7272 | Python: [Bug]: FoundryAgent inherits unrelated OPENAI_CHAT_MODEL for agent-reference requests | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7272> |
| Issue | #7214 | Python: [Bug]: SummarizationStrategy ships the whole transcript to the summarizer unbounded - past the provider cap it silently stops contributing, every roundtrip | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7214> |
| Issue | #7311 | Python: [Feature]: Add a CodeAct backend for remote isolated Linux micro-VM sandboxes | closed | Patricio-Filice-Luxor | <https://github.com/microsoft/agent-framework/issues/7311> |
| Issue | #7126 | Python: [Bug]: agent display name is forwarded unsanitized as the Chat Completions message 'name' — any name with a space 400s every request | closed | itjuba | <https://github.com/microsoft/agent-framework/issues/7126> |
| Issue | #7143 | Python: [Bug]: Anthropic streaming double-counts token usage (message_start usage is summed with the cumulative message_delta usage) | closed | ebarkhordar | <https://github.com/microsoft/agent-framework/issues/7143> |
| Issue | #6973 | Python: [Bug]: Duplicate arguments in declaration-only function call when streamed | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/6973> |
| Issue | #7045 | Python: [Bug]: Function-invocation-limit orphan: MAF streams a tool call (TOOL_CALL_START/ARGS/END) and then discards it, leaving an AG-UI card stuck "Running" with no TOOL_CALL_RESULT | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7045> |
| Issue | #7212 | Python: [Bug]: compaction orphans function_call/result pairs when declaration and result are non-adjacent (group pairing is adjacency-only) | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7212> |
| Issue | #6828 | Python: [Bug]: AG-UI confirm_changes approval-gated tool reverts to "in progress" after completing | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6828> |
| Issue | #7043 | Python: [Bug]: AG-UI transport executes approved tool calls before `before_run` injects provider tools — approved calls to provider-injected tools silently fail | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7043> |
| Issue | #7137 | Python: [Bug]:  Hosted WorkflowAgent checkpoint is not restored after session compute recreation | closed | statefb | <https://github.com/microsoft/agent-framework/issues/7137> |
| Issue | #6866 | Python: MAF observability stream wrapper can fail streamed agent execution with ContextVar reset error | closed | websterian | <https://github.com/microsoft/agent-framework/issues/6866> |
| Issue | #7304 | Python: [Bug]: Approval request restores a third `function_call` when a completed call and a replayed approval pair share one call_id | closed | atty57 | <https://github.com/microsoft/agent-framework/issues/7304> |
| Issue | #7241 | Python: [Bug]: Tool results from approval-resolution execution are never streamed, so provider-injected approvals emit no TOOL_CALL_RESULT | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/issues/7241> |
| Issue | #7197 | Python: [Bug]: OpenAIChatCompletionClient passes raw JSON-Schema dict response_format through unwrapped (OpenAIChatClient/Responses auto-wraps the same input) | closed | exp-ouroborous | <https://github.com/microsoft/agent-framework/issues/7197> |
| Issue | #5785 | Bug: Agent responses lose structured JSON metadata in multi-agent orchestration (MAF 1.x.x) | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/5785> |
| Issue | #6989 | Python: [Bug]: non-English users (input messages) will never automatically load topic files. | closed | changyao-han | <https://github.com/microsoft/agent-framework/issues/6989> |
| Issue | #7054 | Python: Handoff workflow + Ollama: allow_multiple_tool_calls passed to AsyncClient.chat() | closed | danielpcampagna | <https://github.com/microsoft/agent-framework/issues/7054> |
| Issue | #7351 | .NET: [Bug]:  Declarative EditTable operations replace itemsVariable with non-table values, preventing subsequent edits | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/7351> |
| Issue | #6954 | Python: [Bug]: Gemini chat client can't call the harness tool set | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6954> |
| Issue | #7339 | Dependency validation failed: fastapi (agent-framework-ag-ui) | closed | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/7339> |
| Issue | #5869 | [Feature]: Forward A2A MessageSendParams.Configuration in the A2A adapter | closed | chiragshahi | <https://github.com/microsoft/agent-framework/issues/5869> |
| Issue | #5326 | .NET: [Bug]: ChatClientAgent + dynamic ChatOptions.Tools: middleware ordering vs plugin-time refresh; FunctionInvokingChatClient wrapping and IncludeDetailedErrors | closed | torsilver | <https://github.com/microsoft/agent-framework/issues/5326> |
| Issue | #7210 | .NET: [Bug]: "Empty" AIContextProvider breaks skill loading | closed | VaclavK | <https://github.com/microsoft/agent-framework/issues/7210> |
| Issue | #6449 | Python: Add Max tool calling loop Iterations per request | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6449> |
