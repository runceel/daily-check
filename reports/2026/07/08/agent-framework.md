# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 21 |
| オープン中の新規 PR     | 16 |
| クローズ (未マージ) PR  | 8 |
| 新規 Issue              | 31 |
| クローズ Issue          | 12 |
| 主要コントリビューター  | TaoChenOSU, moonbox3, westey-m, giles17, dependabot[bot], eavanvalkenburg |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6970](https://github.com/microsoft/agent-framework/pull/6970) — .NET: [BREAKING] Graduate per-service-call persistence and approval-not-required function bypassing （PR / open / westey-m）
  .NET の HarnessAgent / ChatClientAgent 利用者は、採用前に `NonApprovalRequired`→`ApprovalNotRequired` の名称変更とバイパス既定有効化による互換性影響を確認してください。
- **⚠ 破壊的変更** [#6925](https://github.com/microsoft/agent-framework/pull/6925) — Python: [BREAKING]: Canonicalize AG-UI interrupt and resume handling （PR / merged / moonbox3）
  AG-UI 連携クライアント/サーバー実装者は、割り込み完了イベントと resume ペイロードが canonical `Interrupt` / `ResumeEntry` 形に変わるため読み書き処理の更新が必要です。
- **⚠ 破壊的変更** [#6696](https://github.com/microsoft/agent-framework/pull/6696) — Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows （PR / merged / ahmedmuhsin）
  Python Durable Task / Azure Functions ホスト利用者は、ルートと orchestration 名が workflow 名付きへ変わるため既存クライアント・再開互換性を確認してください。
- **⚠ セキュリティ** [#6983](https://github.com/microsoft/agent-framework/pull/6983) — Python: Add multi-tenant hosting hosting security consideration to a2a sample （PR / merged / TaoChenOSU）
  A2A サンプルをマルチテナントで流用する開発者は、`owner_resolver` によるテナント分離を実装し既定所有者のまま運用しないことを確認してください。
- **⚠ セキュリティ** [#6936](https://github.com/microsoft/agent-framework/pull/6936) — Python: Add security information to harness features inline docs （PR / merged / westey-m）
  Python Harness / skills / observability を外部サービスへ接続する利用者は、新しい inline docs のリスク緩和事項（認証・権限・データ境界）を確認してください。
- **⚠ セキュリティ** [#6933](https://github.com/microsoft/agent-framework/pull/6933) — .NET: Add security information to harness features xml docs （PR / merged / westey-m）
  .NET Harness / skills / OpenTelemetry 利用者は、XML docs に追加された外部連携時のセキュリティ責任範囲を API 利用時に確認してください。

## このリポジトリの要点

Python では #6925 と #6696 により AG-UI の割り込み/resume 契約と Durable Task ホスティングが大きく整理され、どちらも **破壊的変更** を伴います。
セキュリティ面では #6983、#6936、#6933 がマルチテナント A2A や Harness / skills / observability の注意事項をドキュメントへ追加しました。
.NET では #6961 が HarnessAgent の OpenTelemetry chat client 注入を補い、未マージの #6970 では Harness GA に向けた API 名称変更と既定動作変更がレビュー中です。
新規 Issue は AG-UI/A2A の応答欠落（#6982、#6981）や OpenAI/Mistral/Gemini の reasoning・usage メタデータ（#6979、#6978、#6963）に集中しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6925](https://github.com/microsoft/agent-framework/pull/6925) — Python: [BREAKING]: Canonicalize AG-UI interrupt and resume handling

- 作者: moonbox3 / 状態: MERGED
- ラベル: `documentation` `python` `ag-ui`
- 変更行数: +3314 / -424
- マージ日時 (UTC): `2026-07-07 06:37:54`

**変更概要**

- AG-UI agent / workflow の pause/resume を canonical `Interrupt` / `ResumeEntry` モデルへ統一する **破壊的変更** です。
- `RUN_FINISHED` の outcome に interrupt 情報を集約し、tool approval・confirmation prompt・workflow `request_info` の扱いを同一契約に寄せています。
- client 経由の resume 入力を canonical 配列へシリアライズし、不正/不足/解決済み/キャンセル済み resume は `RUN_ERROR` として検証します。
- snapshot hydration / cancel 後の stale interrupt 状態を整理し、README・examples・テストと `ag-ui-protocol` 依存も更新しています。

<details><summary>変更ファイル (32 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 3 | 2 |
| `python/packages/ag-ui/README.md` | 92 | 4 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent.py` | 3 | 3 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 429 | 32 |
| `python/packages/ag-ui/agent_framework_ag_ui/_client.py` | 5 | 6 |
| `python/packages/ag-ui/agent_framework_ag_ui/_event_converters.py` | 15 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_http_service.py` | 103 | 8 |
| `python/packages/ag-ui/agent_framework_ag_ui/_run_common.py` | 344 | 16 |
| `python/packages/ag-ui/agent_framework_ag_ui/_snapshots.py` | 33 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_types.py` | 57 | 10 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow.py` | 28 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 218 | 22 |
| `python/packages/ag-ui/agent_framework_ag_ui_examples/README.md` | 24 | 0 |
| `python/packages/ag-ui/getting_started/README.md` | 26 | 0 |
| `python/packages/ag-ui/pyproject.toml` | 1 | 1 |
| _... 他 17 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `a85294d` Python: Emit AG-UI interrupt outcomes
- `6fa059e` Python: Emit canonical AG-UI approval interrupts
- `e06be89` Python: Resume AG-UI approvals canonically
- `7068fdd` Python: Resume workflow interrupts canonically
- `615f213` Python: Forward AG-UI interrupts through client
- `4b0b2b2` Python: Enforce AG-UI resume contract
- `534b185` Python: Clear AG-UI snapshot interrupts on cancel
- `af37038` Python: Document canonical AG-UI interrupts
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- ⚠ 破壊的変更: interrupted run の wire contract が legacy top-level interrupt から `RUN_FINISHED.outcome.type == "interrupt"` と `outcome.interrupts` へ移行します。
- resume 要求は `interruptId` / `status` / 任意 `payload` を持つ canonical `ResumeEntry` 配列を使う前提になり、`_client.py`・`_agent_run.py`・`_workflow_run.py` で検証が強化されました。
- AG-UI の型定義・snapshot・event converter が canonical interrupt outcome に合わせて拡張され、cancel 時は完了/キャンセル対象の interrupt state だけをクリアします。

**既存利用者への影響**

- AG-UI クライアントは interrupt の読み取り位置と resume ペイロード生成を更新してください。
- 旧形式互換の入力は一部変換されますが、RC の公開 wire contract としては新形式への移行が必要です。

### [#6696](https://github.com/microsoft/agent-framework/pull/6696) — Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +4807 / -338
- マージ日時 (UTC): `2026-07-07 14:49:02`

**変更概要**

- Python Durable Task ホストで複数 workflow を同一 worker / Azure Functions app に登録できるようにする **破壊的変更** です。
- workflow 名ごとの `dafx-{name}` orchestration と `workflow/{name}/...` HTTP ルートを導入し、executor ID も workflow スコープで耐衝突化します。
- `WorkflowExecutor` による sub-workflow を durable child orchestration として実行し、ネストした HITL `request_info` を top-level run から応答できるようにしています。
- 名前検証・request ID 修飾・信頼境界での envelope 除去を追加し、samples / integration tests / ADR も拡充しています。

<details><summary>変更ファイル (62 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 356 | 99 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_workflow.py` | 5 | 2 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_workflow_af_context.py` | 4 | 0 |
| `python/packages/azurefunctions/tests/integration_tests/conftest.py` | 6 | 1 |
| `python/packages/azurefunctions/tests/integration_tests/test_09_workflow_shared_state.py` | 6 | 3 |
| `python/packages/azurefunctions/tests/integration_tests/test_10_workflow_no_shared_state.py` | 7 | 4 |
| `python/packages/azurefunctions/tests/integration_tests/test_11_workflow_parallel.py` | 5 | 2 |
| `python/packages/azurefunctions/tests/integration_tests/test_12_workflow_hitl.py` | 12 | 9 |
| `python/packages/azurefunctions/tests/integration_tests/test_13_workflow_subworkflow_hitl.py` | 150 | 0 |
| `python/packages/azurefunctions/tests/test_app.py` | 430 | 28 |
| `python/packages/core/agent_framework/azure/__init__.py` | 0 | 1 |
| `python/packages/core/agent_framework/azure/__init__.pyi` | 0 | 2 |
| `python/packages/durabletask/agent_framework_durabletask/__init__.py` | 17 | 3 |
| `python/packages/durabletask/agent_framework_durabletask/_worker.py` | 131 | 32 |
| `python/packages/durabletask/agent_framework_durabletask/_workflows/client.py` | 262 | 45 |
| _... 他 47 件_ | | |

</details>

<details><summary>コミット (19 件)</summary>

- `44fcdea` feat(durabletask): add workflow naming helpers (multi-workflow phase 0)
- `eb3691e` feat(durabletask): host multiple workflows per worker with scoped nam…
- `de06e0b` feat(azurefunctions): host multiple workflows per app with per-workfl…
- `d3fa3fe` feat(durabletask): sub-workflows via durable child orchestrations (ph…
- `78e3a9c` feat(durabletask): sub-workflow HITL via qualified request ids (phase 4)
- `9985c3d` docs(durabletask): ADR + sample route docs for multi-workflow and sub…
- `10035b8` fix(durabletask): harden sub-workflow hosting + add sub-workflow inte…
- `f419f22` fix(durabletask): address PR review feedback on naming, typing, and docs
- _... 他 11 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- ⚠ 破壊的変更: Azure Functions ルートが `workflow/run` 等から `workflow/{name}/run`、`workflow/{name}/status/{instanceId}`、`workflow/{name}/respond/{instanceId}/{requestId}` へ変わります。
- 固定 `workflow_orchestrator` と `WORKFLOW_ORCHESTRATOR_NAME` / `WorkflowRegistrationPlan.orchestrator_name` を廃止し、`workflow_orchestrator_name(name)` と `dafx-{name}` 命名へ移行しました。
- `DurableAIAgentWorker.configure_workflow` と `AgentFunctionApp(workflows=...)` が複数 workflow を登録でき、`validate_workflow_name`、`validate_executor_id`、`collect_hosted_workflows`、request ID 修飾 helper などの公開 helper が追加されました。
- host context に `call_sub_orchestrator` 相当の primitive が入り、child orchestration と nested HITL のルーティングが新しい抽象として追加されています。

**既存利用者への影響**

- 既存の single-workflow Azure Functions / Durable Task クライアントは workflow 名付きルートへ移行が必要です。
- 旧 orchestration 名で開始済みの instance は upgrade 後に resume できないため、移行タイミングと実行中 run の扱いを確認してください。

### [#6983](https://github.com/microsoft/agent-framework/pull/6983) — Python: Add multi-tenant hosting hosting security consideration to a2a sample

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `documentation` `python` `a2a`
- 変更行数: +13 / -0
- マージ日時 (UTC): `2026-07-08 03:30:06`

**変更概要**

- `python/samples/04-hosting/a2a/README.md` に、`a2a-sdk` をマルチテナント hosting で使う際の **セキュリティ** 注意事項を追加しています。
- 既定の ownership 解決では tenant isolation が不十分になり得る点を明示し、tenant-aware `owner_resolver` の実装例を示します。
- コード本体ではなくサンプル README の補強で、A2A hosting を流用する利用者への運用ガイダンスが中心です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/04-hosting/a2a/README.md` | 13 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `4965a34` Add multi-tenant hosting hosting security consideration to a2a sample
- `40a6bd8` Potential fix for pull request finding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- API シグネチャや runtime の変更はありません。
- 新規の抽象は tenant-aware `owner_resolver` の説明・例示に留まり、multi-tenant 環境で所有者解決を明示的に行う設計を推奨しています。
- **セキュリティ修正** というより、サンプル利用時の誤設定を防ぐためのドキュメント強化です。

**既存利用者への影響**

- コード移行は不要です。
- A2A サンプルを本番/マルチテナントで利用する場合は、README の `owner_resolver` 方針を自社の tenant model に合わせて反映してください。

### [#6936](https://github.com/microsoft/agent-framework/pull/6936) — Python: Add security information to harness features inline docs

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +170 / -6
- マージ日時 (UTC): `2026-07-07 09:39:42`

**変更概要**

- Python の Harness、skills、compaction、observability などの inline docs と関連サンプル README に **セキュリティ** 注意事項を追加しています。
- 外部サービスやコンポーネントと連携する際に、利用者が認証・権限・データ露出リスクを把握できるようにする目的です。
- 対象は core package の docstring / inline docs と複数サンプルで、実装ロジックよりも利用時の責任境界を明確化する変更です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_compaction.py` | 15 | 1 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 7 | 0 |
| `python/packages/core/agent_framework/_harness/_background_agents.py` | 13 | 0 |
| `python/packages/core/agent_framework/_harness/_loop.py` | 14 | 0 |
| `python/packages/core/agent_framework/_skills.py` | 38 | 0 |
| `python/packages/core/agent_framework/observability.py` | 11 | 0 |
| `python/samples/02-agents/compaction/README.md` | 11 | 0 |
| `python/samples/02-agents/harness/README.md` | 24 | 0 |
| `python/samples/02-agents/middleware/README.md` | 9 | 0 |
| `python/samples/02-agents/observability/README.md` | 18 | 5 |
| `python/samples/02-agents/skills/mcp_based_skill/README.md` | 10 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `c543782` Add security information to harness features inline docs
- `b98f5c7` Address PR comments
- `4f90a9a` Merge branch 'main' into python-security-inline-docs
- `196d0d4` Merge branch 'main' into python-security-inline-docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- API シグネチャ、公開型、実行時の挙動変更はありません。
- `_compaction.py`、`_harness/*`、`_skills.py`、`observability.py` に security guidance が追加され、サンプル README も同じ観点で更新されています。
- **セキュリティ修正** ではなく、Harness 機能を安全に構成するための inline documentation 強化です。

**既存利用者への影響**

- コードのマイグレーションは不要です。
- Python Harness / skills / observability を外部サービスと組み合わせる利用者は、追加された注意事項をレビューして運用設定へ反映してください。

### [#6933](https://github.com/microsoft/agent-framework/pull/6933) — .NET: Add security information to harness features xml docs

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +186 / -3
- マージ日時 (UTC): `2026-07-07 18:05:10`

**変更概要**

- .NET 側で Harness、MCP skills、compaction、OpenTelemetry などの XML docs とサンプル README に **セキュリティ** 情報を追加しています。
- Python #6936 と同様に、外部サービス連携時に開発者が mitigations を意識できるよう API ドキュメントを補強する変更です。
- 対象は `Microsoft.Agents.AI` / `Microsoft.Agents.AI.Mcp` の複数クラスと samples で、利用者向け説明の品質向上が主です。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step06_McpBasedSkills/README.md` | 9 | 0 |
| `dotnet/samples/02-agents/Agents/Agent_Step18_CompactionPipeline/README.md` | 10 | 0 |
| `dotnet/samples/02-agents/Harness/Harness_Step02_Research_WithBackgroundAgents/README.md` | 8 | 0 |
| `dotnet/samples/02-agents/Harness/Harness_Step05_Loop/README.md` | 8 | 0 |
| `dotnet/samples/02-agents/Harness/README.md` | 19 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 10 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSourceOptions.cs` | 7 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentSkillsProviderBuilderMcpExtensions.cs` | 8 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Compaction/ChatReducerCompactionStrategy.cs` | 10 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Compaction/CompactionProvider.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Compaction/SummarizationCompactionStrategy.cs` | 18 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/BackgroundAgents/BackgroundAgentsProvider.cs` | 15 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/Loop/AIJudgeLoopEvaluator.cs` | 17 | 1 |
| `dotnet/src/Microsoft.Agents.AI/OpenTelemetryAgent.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProvider.cs` | 11 | 0 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `9f95fca` Add security information to harness features xml docs
- `f7c6daa` Address PR comments
- `fba74c8` Merge branch 'main' into dotnet-security-xml-docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- API シグネチャや公開メンバー名の変更はありません。
- `AgentMcpSkillsSource`、`AgentSkillsProvider`、compaction strategies、`BackgroundAgentsProvider`、`AIJudgeLoopEvaluator`、`OpenTelemetryAgent` などの XML docs に security guidance が追加されました。
- **セキュリティ修正** ではなく、既存 API の利用時リスクと責任範囲を明示するドキュメント更新です。

**既存利用者への影響**

- ビルドや呼び出しコードの変更は不要です。
- .NET Harness / skills / observability を本番導入するチームは、生成 docs / IntelliSense に出る新しい注意事項を確認してください。

### [#6961](https://github.com/microsoft/agent-framework/pull/6961) — .NET: Add OpenTelemetry Chat Client to harness stack

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +103 / -8
- マージ日時 (UTC): `2026-07-07 14:28:50`

**変更概要**

- HarnessAgent の OpenTelemetry 統合で、agent decorator だけでなく chat client 側にも OpenTelemetry wrapper を入れる修正です。
- `useChatClientAsIs` の構成では chat client が自動注入されず telemetry が欠ける問題（#6960）を補います。
- `HarnessAgent.cs` のスタック構築を調整し、OpenTelemetryChatClient が期待どおり使われることを unit tests で追加検証しています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 17 | 8 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 86 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `ed47d60` Add OpenTelemetry Chat Client to harness stack
- `f310f46` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- API シグネチャや公開オプションの追加/削除はありません。
- `HarnessAgent` 内部の chat client stack に OpenTelemetry Chat Client を組み込む挙動変更で、observability の計測範囲が広がります。
- `HarnessAgentTests` に 86 行規模のテストが追加され、wrapper 注入と既存構成の互換性を確認しています。

**既存利用者への影響**

- マイグレーションは不要です。
- HarnessAgent で OpenTelemetry を有効にしている利用者は、chat client レベルの spans / activities が追加で出る可能性を監視・フィルタ設定で確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6950 | Python: Add Agent typing smoke tests for chat clients | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6950> |
| #6949 | .NET: fix: bump GitHub.Copilot.SDK to 1.0.5 to resolve strong-naming mismatch | tamirdresher | <https://github.com/microsoft/agent-framework/pull/6949> |
| #6945 | Remove unnecessary design doc in root | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6945> |
| #6944 | Fix README stars badge link | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6944> |
| #6937 | Python: Forward skill_directories and disabled_skills to GitHub Copilot session | giles17 | <https://github.com/microsoft/agent-framework/pull/6937> |
| #6935 | .NET: Fix flaky OpenTelemetryAgentTests via thread-safe activity collector | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6935> |
| #6897 | Python: Add FHA declarative workflow sample | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6897> |
| #6895 | Python: Add SkillsSourceContext to SkillsSource.get_skills | giles17 | <https://github.com/microsoft/agent-framework/pull/6895> |
| #6871 | .NET: Add defense-in-depth for MCP cross origin request | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6871> |
| #6867 | Python: Allow disabling approval for SkillsProvider tools | giles17 | <https://github.com/microsoft/agent-framework/pull/6867> |
| #6813 | Python: Build(deps-dev): Bump js-yaml from 4.1.1 to 4.3.0 in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6813> |
| #6776 | Python: Process messages to an executor serially within a superstep | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6776> |
| #6653 | .NET: Replace MAF AG-UI abstractions with the AG-UI C# SDK abstractions | javiercn | <https://github.com/microsoft/agent-framework/pull/6653> |
| #6613 | Python: Bump vite and @vitejs/plugin-react-swc in /python/samples/05-end-to-end/chatkit-integration/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6613> |
| #5100 | Python: Add include_reference_source_data to agentic search requests | mvanhorn | <https://github.com/microsoft/agent-framework/pull/5100> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6985 | .NET: Align AgentOpenTelemetry sample with Foundry-first startup/docs and add Azure OpenAI fallback support | open | Dudam-Neeraj-Dattu | <https://github.com/microsoft/agent-framework/pull/6985> |
| PR | #6984 | Build(deps): consolidate Dependabot dependency updates | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6984> |
| PR | #6980 | Python: Add AG-UI FastAPI SSE keepalive support | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6980> |
| PR | #6977 | Python: Add refresh_interval (TTL) to CachingSkillsSource | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6977> |
| PR | #6974 | Python: Remove experimental marker from Skills API | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6974> |
| PR | #6970 | .NET: [BREAKING] Graduate per-service-call persistence and approval-not-required function bypassing | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6970> |
| PR | #6969 | Python: fix mypy with NumPy 2.5 stubs | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6969> |
| PR | #6966 | Python: bind policy-enforcement approvals to a single tool invocation | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6966> |
| PR | #6962 | Python: Lazy load root agent_framework exports | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6962> |
| PR | #6955 | Python: Fix response metadata construction | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6955> |
| PR | #6952 | .NET: Support retrieval of chat history in workflows | open | XiongHaoTrigger | <https://github.com/microsoft/agent-framework/pull/6952> |
| PR | #6947 | Python: Clear AG-UI queued approvals on cancel | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6947> |
| PR | #6939 | Python: Add agent-framework-agentsandbox connector to integrate agent-sandbox | open | aleks-stefanovic | <https://github.com/microsoft/agent-framework/pull/6939> |
| PR | #6932 | .NET: Add RoutingChatClient for routing requests across multiple chat clients | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6932> |
| PR | #6928 | Python: fix(copilot): propagate usage details, finish_reason, and model from SDK events | open | droideronline | <https://github.com/microsoft/agent-framework/pull/6928> |
| PR | #6927 | Python: fix(claude): propagate usage details and finish_reason from ResultMessage | open | droideronline | <https://github.com/microsoft/agent-framework/pull/6927> |
| PR | #6965 | Python: Emit SSE keepalive comments during idle AG-UI event streams | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/6965> |
| PR | #6951 | .NET: Add support for file content messages in AG-UI  | closed | ElderJames | <https://github.com/microsoft/agent-framework/pull/6951> |
| PR | #6526 | Python: Bump uv from 0.11.17 to 0.11.21 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6526> |
| PR | #6525 | Python: Bump ruff from 0.15.15 to 0.15.17 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6525> |
| PR | #6505 | .NET: Add AIContextProvider message event and fix internal agent issue | closed | XiongHaoTrigger | <https://github.com/microsoft/agent-framework/pull/6505> |
| PR | #4799 | Python: Orchestration output ADR | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/4799> |
| PR | #4733 | [BREAKING] Python: Update orchestration return types | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/4733> |
| PR | #2378 | .NET: Fix: OpenAI ChatClients do not send entity_id in AgentChatWebEx… | closed | MD-V | <https://github.com/microsoft/agent-framework/pull/2378> |
| Issue | #6982 | Python: [Python]: A2A server omits function_call and function_result content | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6982> |
| Issue | #6981 | Python: [Python]: AG-UI workflow server fails to respond after initial client message | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6981> |
| Issue | #6979 | Python: [Bug]: OpenAI Chat Completions client buries plaintext `reasoning_details` as encrypted data | open | antsok | <https://github.com/microsoft/agent-framework/issues/6979> |
| Issue | #6978 | Python: [Bug]: OpenAI Chat Completions client crashes on (and drops) Mistral reasoning content chunks | open | antsok | <https://github.com/microsoft/agent-framework/issues/6978> |
| Issue | #6976 | .NET: We should also mark the https://www.nuget.org/packages/Microsoft.Agents.AI.AGUI package on nuget as replaced by the new package, so that users are sent to AGUI.Client. | open | javiercn | <https://github.com/microsoft/agent-framework/issues/6976> |
| Issue | #6975 | Python: [Feature]: Let agents (not just workflows) raise a generic native AG-UI interrupt for custom-UI human input | open | antsok | <https://github.com/microsoft/agent-framework/issues/6975> |
| Issue | #6973 | Python: [Bug]: Duplicate arguments in declaration-only function call when streamed | open | cecheta | <https://github.com/microsoft/agent-framework/issues/6973> |
| Issue | #6972 | .NET: CompactionProvider stamps input messages in-place with ChatHistory, causing DefaultExcludeChatHistoryFilter to drop the first user message | open | fengdan10 | <https://github.com/microsoft/agent-framework/issues/6972> |
| Issue | #6971 | Python: [Bug]: Error when internal MAF observability packages serialize the OOTB Code Interpreter Tool | open | ignawacc | <https://github.com/microsoft/agent-framework/issues/6971> |
| Issue | #6968 | Python: Python dependency maintenance fails when mypy parses NumPy 2.5 stubs | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6968> |
| Issue | #6967 | .NET: [Bug]: FilterServerToolsFromMixedToolInvocationsAsync causes HTTP 400 when LLM returns mixed frontend + server-side tool calls in AGUI hosted mode | open | Jun-GY | <https://github.com/microsoft/agent-framework/issues/6967> |
| Issue | #6964 | Release harness dependencies | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6964> |
| Issue | #6963 | Python: [Bug]: Gemini 3 `thought_signature` dropped on replayed function calls | open | antsok | <https://github.com/microsoft/agent-framework/issues/6963> |
| Issue | #6960 | .NET: Add OpenTelemetryChatClient to HarnesAgent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6960> |
| Issue | #6959 | Python: Python hosting: feature request — first-class proactive/outbound delivery with session integration | open | mikezupper | <https://github.com/microsoft/agent-framework/issues/6959> |
| Issue | #6958 | Python: Python hosting-telegram: failed stream with no accumulated text leaves the placeholder ellipsis forever | open | mikezupper | <https://github.com/microsoft/agent-framework/issues/6958> |
| Issue | #6957 | Python: Python hosting-telegram: typing indicator expires (~5s) during non-streaming runs — long runs look dead | open | mikezupper | <https://github.com/microsoft/agent-framework/issues/6957> |
| Issue | #6956 | Python: Python hosting-telegram: sendMessage failures are silent — Markdown rejections drop completed replies | open | mikezupper | <https://github.com/microsoft/agent-framework/issues/6956> |
| Issue | #6954 | Python: [Bug]: Gemini chat client can't call the harness tool set | open | antsok | <https://github.com/microsoft/agent-framework/issues/6954> |
| Issue | #6953 | .NET: [Bug]: TodoProvider injects a synthetic user message between assistant tool_calls and tool results, causing OpenAI 400 invalid_request_error | open | soul-soft | <https://github.com/microsoft/agent-framework/issues/6953> |
| Issue | #6948 | .NET: [Bug]: GitHub.Copilot.SDK 1.0.5 strong-naming breaks Microsoft.Agents.AI.GitHub.Copilot adapter | closed | tamirdresher | <https://github.com/microsoft/agent-framework/issues/6948> |
| Issue | #6946 | .NET: [Bug]: Unable to get chat history from WorkflowSession | open | MD-V | <https://github.com/microsoft/agent-framework/issues/6946> |
| Issue | #6943 | Python: the Ollama chat provider drops `finish_reason` (and streaming token usage), so GenAI telemetry can't tell `stop` from `length` | open | antsok | <https://github.com/microsoft/agent-framework/issues/6943> |
| Issue | #6942 | Python: [Feature]: Retry transient errors in the Ollama chat provider | open | antsok | <https://github.com/microsoft/agent-framework/issues/6942> |
| Issue | #6941 | Python: [Bug]: Python: the AG-UI FastAPI host has no SSE keepalive, so long output-silent runs are killed by the client's idle timeout | open | antsok | <https://github.com/microsoft/agent-framework/issues/6941> |
| Issue | #6938 | Python: `Agent(client=FoundryChatClient(...))` type-checks as invalid with `ty`, runtime works | closed | pamelafox | <https://github.com/microsoft/agent-framework/issues/6938> |
| Issue | #6934 | .NET: [Feature]: Native task budget for the agent loop — advisory token countdown with graceful wrap-up | open | hatasaki | <https://github.com/microsoft/agent-framework/issues/6934> |
| Issue | #6931 | .NET: [Feature]: Send file attachments and text together in one AG-UI message | open | Tbas99 | <https://github.com/microsoft/agent-framework/issues/6931> |
| Issue | #6930 | Python: bug(copilot): AgentResponse.usage_details and finish_reason always None when using GitHubCopilotAgent | open | droideronline | <https://github.com/microsoft/agent-framework/issues/6930> |
| Issue | #6929 | Python: bug(claude): AgentResponse.usage_details and finish_reason always None when using ClaudeAgent | open | droideronline | <https://github.com/microsoft/agent-framework/issues/6929> |
| Issue | #6926 | .NET: [Bug]: | open | graemefoster | <https://github.com/microsoft/agent-framework/issues/6926> |
| Issue | #6878 | .NET: Release notes for .NET v1.12 are missing | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/6878> |
| Issue | #6845 | Python: Allow disabling approval for AgentSkillsProvider tools | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6845> |
| Issue | #6834 | Make skill source types in Python SDK public | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6834> |
| Issue | #6711 | Python: Add AgentSkillsSourceContext to AgentSkillsSource.get_skills | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6711> |
| Issue | #5941 | Python: [Bug]: Multi-turn tool calls fail with both Responses API and Chat Completions API when used via `agent-framework-ag-ui` (Foundry project endpoint) | closed | nomhiro | <https://github.com/microsoft/agent-framework/issues/5941> |
| Issue | #5684 | Python: Add toolbox samples with different authentication modes | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/5684> |
| Issue | #5535 | Python: [Bug]: ResponsesHostServer drops oauth_consent_request and function_approval_request from toolbox MCP connectors | closed | XiaofuHuang | <https://github.com/microsoft/agent-framework/issues/5535> |
| Issue | #5282 | Python: [Feature/Question]: GitHubCopilotAgent does not forward skill_directories to create_session, and MAF SkillsProvider is likely incompatible | closed | ts46237 | <https://github.com/microsoft/agent-framework/issues/5282> |
| Issue | #5095 | Python: AzureAISearchContextProvider agentic mode: `source_data` is always `None` on references — missing `include_reference_source_data` parameter | closed | dantelmomsft | <https://github.com/microsoft/agent-framework/issues/5095> |
