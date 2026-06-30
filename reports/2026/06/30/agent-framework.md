# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-29 01:00:01 〜 2026-06-30 01:54:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 14 |
| オープン中の新規 PR     | 16 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 7 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | westey-m, giles17, farzad528, Copilot, shrutitople, alliscode |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6811](https://github.com/microsoft/agent-framework/pull/6811) — [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade （PR / open / TaoChenOSU）
  - 影響: `agent-framework-foundry-hosting` を `azure-ai-agentserver` 2.0.0 ホスティングプロトコルへ更新する破壊的変更（open）。Python で Foundry Hosted Agent をホスティングしている利用者は、user id によるチェックポイント/承認ストアのスコープ化や toolbox への call id 連携など 2.0.0 への移行に追従が必要。
- **⚠ 破壊的変更** [#6807](https://github.com/microsoft/agent-framework/pull/6807) — .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API （PR / open / westey-m）
  - 影響: 実験的な `FileAccessProvider` / `FileMemoryProvider` に surgical edit ツールを追加しつつ `AgentFileStore` API を改名（`WriteFileAsync`→`WriteAsync` 等、`ListFilesAsync`+`ListDirectoriesAsync`→`ListChildrenAsync`）。.NET ハーネスでこれらの provider を使う利用者は API 改名への追従が必要（open）。
- **⚠ 破壊的変更** [#6801](https://github.com/microsoft/agent-framework/pull/6801) — Python: [BREAKING] Improve FileAccess/FileMemory harness providers (surgical edits, read-only tier, consistent naming) （PR / open / westey-m）
  - 影響: Python 版の同 provider でツール名を刷新（`*_save_file`→`*_write`、`*_read_file`→`*_read`、`*_search_files`→`*_grep`、list 系を `*_ls` に統合）し read-only ティアを追加。これらツール名に依存する利用者は改名への追従が必要（open）。
- **⚠ 破壊的変更** [#6800](https://github.com/microsoft/agent-framework/pull/6800) — .NET: [BREAKING] Bump Azure.AI.AgentServer to 2.0.0 protocol and migrate Foundry.Hosting （PR / merged / rogerbarreto）
  - 影響: `Microsoft.Agents.AI.Foundry.Hosting` が AgentServer 2.0.0 コンテナプロトコルへ移行（マージ済み）。`ResponseContext.Isolation` / `IsolationContext` が撤去され `PlatformContext` に置換、セッションコンテキストは user-only に。Foundry.Hosting で自前ホスティングする .NET 利用者は Isolation 系 API の置換が必須。
- **⚠ 破壊的変更** [#6799](https://github.com/microsoft/agent-framework/issues/6799) — [BREAKING] .NET: Bump Azure.AI.AgentServer to 2.0.0 protocol in Foundry.Hosting （Issue / closed / rogerbarreto）
  - 影響: 上記 [#6800](https://github.com/microsoft/agent-framework/pull/6800) の追跡 Issue で、同 PR のマージによりクローズ済み。対応内容は #6800 と同じ。
- **⚠ 破壊的変更** [#6754](https://github.com/microsoft/agent-framework/pull/6754) — Python: [BREAKING] Make all SkillsProvider tools require approval by default （PR / merged / giles17）
  - 影響: `SkillsProvider` の3ツール（`load_skill` / `read_skill_resource` / `run_skill_script`）が既定で承認必須に（マージ済み）。無人実行していた利用者は `read_only_tools_auto_approval_rule` 等の auto-approval ルールを `ToolApprovalMiddleware` に明示設定しないと skill のロード/実行が止まる。
- **⚠ 破壊的変更** [#6735](https://github.com/microsoft/agent-framework/pull/6735) — [BREAKING] Python: Change background-agent loop helper to resolve the provider from the agent （PR / merged / westey-m）
  - 影響: `background_tasks_running(provider)` のシグネチャが引数なし `background_tasks_running()` に変更（マージ済み）。`BackgroundAgentsProvider` を明示渡ししていた呼び出し側は引数なし呼び出しへの修正が必要。
- **⚠ セキュリティ** [#6510](https://github.com/microsoft/agent-framework/pull/6510) — Python: Clarify identifier security guidance （PR / merged / chetantoshniwal）
  - 影響: ドキュメントのみの注意喚起（コード変更なし）。AG-UI/A2A/Azure Functions HITL の識別子は「継続性・相関」用であり「認可」ではない旨を明記。これらを実装する利用者は識別子を認可境界として誤用していないか確認を推奨。

## このリポジトリの要点

今期間は **破壊的変更が集中**した。.NET / Python 両系の Foundry Hosting を `Azure.AI.AgentServer` 2.0.0 プロトコルへ移行（[#6800](https://github.com/microsoft/agent-framework/pull/6800) マージ済み / [#6811](https://github.com/microsoft/agent-framework/pull/6811) open）、ハーネスの `FileAccess`/`FileMemory` provider に surgical edit ツールを追加しつつ API・ツール名を刷新（[#6807](https://github.com/microsoft/agent-framework/pull/6807) / [#6801](https://github.com/microsoft/agent-framework/pull/6801)）、`SkillsProvider` を既定で承認必須化（[#6754](https://github.com/microsoft/agent-framework/pull/6754)）と、ホスティング/ハーネス層の **セキュア・バイ・デフォルト化と Foundry 連携刷新** が主軸。Foundry Hosting・harness の file/skills provider を使う利用者は移行確認が必要。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6800](https://github.com/microsoft/agent-framework/pull/6800) — .NET: [BREAKING] Bump Azure.AI.AgentServer to 2.0.0 protocol and migrate Foundry.Hosting

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +917 / -531
- マージ日時 (UTC): `2026-06-29 23:39:55`

**変更概要**

`Microsoft.Agents.AI.Foundry.Hosting` を `Azure.AI.AgentServer` の新しい **2.0.0 コンテナプロトコル**へ移行する PR。隔離モデルが刷新され、Foundry エージェントを新プロトコル上でホスティングし続けるための基盤更新。AgentServer.Core/.Invocations/.Responses 各パッケージをバンプし、per-request の `CallId` を Foundry first-party サービス（toolbox/MCP）へ転送する。ストリーミング応答イテレータ内の `AsyncLocal` が `yield` 境界でリセットされ call id が脱落していたバグも併せて修正。

<details><summary>変更ファイル (68 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0026-hosted-session-identity-context.md` | 4 | 2 |
| `docs/decisions/0030-hosted-platform-context-agentserver-2.0.md` | 84 | 0 |
| `dotnet/Directory.Packages.props` | 3 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/.env.example` | 4 | 5 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/Dockerfile.contributor` | 2 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/agent.manifest.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/agent.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/scripts/smoke.ps1` | 2 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/agent.manifest.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/agent.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent/agent.manifest.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent/agent.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Files/agent.manifest.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Files/agent.yaml` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-FoundryAgent/agent.manifest.yaml` | 2 | 2 |
| _... 他 53 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `91a6247` .NET: Bump Azure.AI.AgentServer to 2.0.0 protocol and migrate Foundry…
- `14c62ad` Pin Azure.Core 1.59.0 for Hosted-Workflow-Handoff sample
- `abcc273` Add guard test for request-scoped call-id cleanup
- `942f05c` Refresh hosting READMEs for AgentServer 2.0 migration
- `3046f24` Add ADR 0030 superseding 0026 for AgentServer 2.0 platform context
- `982d658` Add breaking-change v2.0-only disclaimer to package metadata
- `d52beb9` Address review comments: dead chat-key surface and weak test assertions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**。`ResponseContext.Isolation` / `IsolationContext` を撤去し `ResponseContext.PlatformContext` に置換。`HostedSessionContext` は user-only（`x-agent-user-id`→`UserIdKey`）になり per-chat キーは廃止。新ヘッダ `x-agent-foundry-call-id`（protocol 2.0.0）と、リクエストを安定した MAF `AgentSession` に対応づける新規 `HostedConversationKey` を導入。パッケージは Core .25→.26、Invocations .4→.5、Responses .5→.6。

**既存利用者への影響**

Foundry.Hosting で自前ホスティングしている .NET 利用者は 2.0.0 への移行が必須。`Isolation` 系 API の参照を `PlatformContext` に書き換え、user 単位のセッションコンテキストへ合わせる必要がある。

### [#6754](https://github.com/microsoft/agent-framework/pull/6754) — Python: [BREAKING] Make all SkillsProvider tools require approval by default

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +558 / -111
- マージ日時 (UTC): `2026-06-29 14:20:18`

**変更概要**

`SkillsProvider` を **セキュア・バイ・デフォルト**にする PR（.NET の #6729 を Python へ移植）。従来は `run_skill_script` のみ、かつ `require_script_approval=True` のときだけ承認ゲートがかかり、コンテンツ読み取り系（`load_skill` / `read_skill_resource`）は素通りだった。これにより untrusted な source から skill コンテンツの読込やスクリプト実行をホスト承認なしに行えてしまう問題を塞ぐ。一方で明示的な auto-approval ルールにより無人実行も維持できる。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_skills.py` | 130 | 41 |
| `python/packages/core/tests/core/test_skills.py` | 64 | 29 |
| `python/samples/02-agents/providers/foundry/foundry_chat_client_with_toolbox_skills.py` | 4 | 2 |
| `python/samples/02-agents/skills/README.md` | 2 | 1 |
| `python/samples/02-agents/skills/class_based_skill/class_based_skill.py` | 8 | 2 |
| `python/samples/02-agents/skills/code_defined_skill/code_defined_skill.py` | 14 | 1 |
| `python/samples/02-agents/skills/file_based_skill/file_based_skill.py` | 8 | 3 |
| `python/samples/02-agents/skills/mcp_based_skill/mcp_based_skill.py` | 4 | 2 |
| `python/samples/02-agents/skills/mixed_skills/mixed_skills.py` | 8 | 2 |
| `python/samples/02-agents/skills/script_approval/README.md` | 17 | 7 |
| `python/samples/02-agents/skills/script_approval/script_approval.py` | 32 | 18 |
| `python/samples/02-agents/skills/skill_filtering/skill_filtering.py` | 8 | 2 |
| `python/samples/02-agents/skills/skills_auto_approval/README.md` | 62 | 0 |
| `python/samples/02-agents/skills/skills_auto_approval/skills_auto_approval.py` | 196 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `5a81204` Python: [BREAKING] Make all SkillsProvider tools require approval by …
- `ff820b4` Address PR review: batch skill approval responses and tidy sample
- `9c0b93d` Address PR review: add approval handling to remaining skills samples
- `2aea223` Address PR review: simplify "host approval" wording to "approval"

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**。`SkillsProvider` の3ツール（`load_skill` / `read_skill_resource` / `run_skill_script`）が無条件で `approval_mode="always_require"` に登録される。auto-approval 用の静的ルール `read_only_tools_auto_approval_rule`（read 系2つを承認）と `all_tools_auto_approval_rule`（全3つ）を追加し、`ToolApprovalMiddleware(auto_approval_rules=[...])` と併用する。両ルールは `server_label` 付き呼び出しを拒否しローカルツールに限定。ツール名定数 `LOAD_SKILL_TOOL_NAME` 等も追加。

**既存利用者への影響**

`SkillsProvider` を無人で使っていた場合、auto-approval ルールを明示設定しないと skill のロード/実行が承認待ちで停止する。read-only のみ許可するか全許可するかを選び、`ToolApprovalMiddleware` に渡す対応が必要。

### [#6735](https://github.com/microsoft/agent-framework/pull/6735) — [BREAKING] Python: Change background-agent loop helper to resolve the provider from the agent

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +140 / -26
- マージ日時 (UTC): `2026-06-29 09:46:33`

**変更概要**

ハーネスの **background エージェント用ループヘルパー**を改善する PR。従来の `background_tasks_running(provider)` は呼び出し側に `BackgroundAgentsProvider` を明示渡しさせていたが、context provider を内部生成する `create_harness_agent` では provider のハンドルが無く使えなかった。実行中エージェント（`agent.context_providers`）から provider を解決する方式に変え、既存の `todos_remaining` と同じ設計に揃えた。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/__init__.py` | 2 | 0 |
| `python/packages/core/agent_framework/_harness/_loop.py` | 58 | 18 |
| `python/packages/core/tests/core/test_harness_loop.py` | 79 | 7 |

</details>

<details><summary>コミット (2 件)</summary>

- `4b916d5` Updating background agent loop to resolve provider automatically and …
- `ac8dfd2` Merge branch 'main' into python-harness-background-agent-loop

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**。`background_tasks_running` の新シグネチャは引数なし `background_tasks_running()`（`_resolve_context_provider` で provider を解決し、永続タスクが `RUNNING` の間ループ）。`todos_remaining_message` に対応する `background_tasks_running_message`（next_message ヘルパー）を新規追加し、`__init__.py` から公開。

**既存利用者への影響**

`background_tasks_running(provider)` を引数付きで呼んでいたコードは引数なし呼び出しへ修正が必要。harness agent で `loop_should_continue` / `loop_next_message` を配線していた利用者は provider を渡さずに書けるようになる。

### [#6510](https://github.com/microsoft/agent-framework/pull/6510) — Python: Clarify identifier security guidance

- 作者: chetantoshniwal / 状態: MERGED
- ラベル: `documentation` `python` `.NET`
- 変更行数: +16 / -0
- マージ日時 (UTC): `2026-06-29 07:26:20`

**変更概要**

Azure SRE Agent が生成した**ドキュメントのみ**の PR。識別子のセキュリティガイダンスを明確化する。AG-UI の会話識別子は「継続性」を与えるもので「認可」ではないこと、A2A ホストはクライアント提供の識別子を認証済みアクセス境界にバインドすべきこと、Azure Functions の HITL status/respond エンドポイントは認可が必要で workflow ID は相関ハンドルにすぎないことを README/サンプルに追記。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AGUI/README.md` | 6 | 0 |
| `python/packages/a2a/README.md` | 6 | 0 |
| `python/samples/04-hosting/azure_functions/12_workflow_hitl/README.md` | 4 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `43aaf58` [Generated by SRE Agent] Clarify identifier security guidance
- `c2ee27e` Merge branch 'main' into sreagent/docs-identifier-guidance-20260614
- `ac35a5e` Merge branch 'main' into sreagent/docs-identifier-guidance-20260614

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API・コードの変更なし。3つの README（AGUI / a2a / azure_functions HITL）への注意書き追加のみで、破壊的変更はない。

**既存利用者への影響**

実装変更は不要。ただし AG-UI/A2A/Azure Functions HITL を実装している場合、識別子を認可に流用していないか自分の実装を確認することが推奨される。

### [#6814](https://github.com/microsoft/agent-framework/pull/6814) — .NET: fix: resolve CA1873 in GitHubCopilotAgent by using LoggerMessage sour…

- 作者: alliscode / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +32 / -4
- マージ日時 (UTC): `2026-06-30 01:24:03`

**変更概要**

`GitHubCopilotAgent` のアナライザー警告 **CA1873**（ログ引数の不要な評価コスト）を解消する .NET の小規模修正。直接のログ呼び出しを `LoggerMessage` ソースジェネレーターベースの定義に置き換える。新規 `GitHubCopilotAgentLogMessages.cs` を追加し、`GitHubCopilotAgent.cs` のログ箇所を差し替えるコード品質改善。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 1 | 4 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgentLogMessages.cs` | 31 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `1e6ee90` fix: resolve CA1873 in GitHubCopilotAgent by using LoggerMessage sour…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変化なし。`LoggerMessage` source generator による高速なログメッセージ定義（`GitHubCopilotAgentLogMessages.cs` に 31 行）へ移行しただけで、破壊的変更はない。

**既存利用者への影響**

利用者側の対応は不要。内部のログ実装の改善にとどまる。

### [#6802](https://github.com/microsoft/agent-framework/pull/6802) — Python: Update hash algorithm in workspace_poe_tasks.py

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `python`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-06-29 19:42:36`

**変更概要**

開発用スクリプト `python/scripts/workspace_poe_tasks.py` のハッシュアルゴリズムを更新する 1 行修正。poe タスク補助用の内部スクリプトで、製品コードやランタイム挙動には影響しない。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/scripts/workspace_poe_tasks.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `53a4fbc` Update hash algorithm in workspace_poe_tasks.py

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変化なし。リポジトリ開発用スクリプト内のハッシュ計算方法の変更のみで、破壊的変更はない。

**既存利用者への影響**

利用者側の対応は不要。リポジトリ開発用ツールの変更にとどまる。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6782 | Python: convert Pydantic model class `response_format` to JSON schema in OllamaChatClient | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6782> |
| #6764 | Python: Fix background agent telemetry context error | westey-m | <https://github.com/microsoft/agent-framework/pull/6764> |
| #6763 | Python: Fix FunctionShellTool throw and empty streaming shell command | westey-m | <https://github.com/microsoft/agent-framework/pull/6763> |
| #6755 | Python: Stop swallowing skill script and resource errors so the model can self-correct | giles17 | <https://github.com/microsoft/agent-framework/pull/6755> |
| #6717 | Python: create_harness_agent skills_paths accepts str \| Path \| Sequence[str \| Path] \| None | Copilot | <https://github.com/microsoft/agent-framework/pull/6717> |
| #6692 | Python/.Net: Agent Harness blog post accompanying samples part 2 | westey-m | <https://github.com/microsoft/agent-framework/pull/6692> |
| #6603 | Python: Support stable + preview Azure AI Search (Foundry IQ) API versions | farzad528 | <https://github.com/microsoft/agent-framework/pull/6603> |
| #6171 | Python: Autolabelling MCP servers based on hints and  Github MCP server ifc labels | shrutitople | <https://github.com/microsoft/agent-framework/pull/6171> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6813 | Python: Build(deps-dev): Bump js-yaml from 4.1.1 to 4.3.0 in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6813> |
| PR | #6812 | Update NuGet package icon to new Microsoft Agent Framework logo | open | chetantoshniwal | <https://github.com/microsoft/agent-framework/pull/6812> |
| PR | #6811 | [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6811> |
| PR | #6810 | Python: Auto-inject local history when non-history context providers are present | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6810> |
| PR | #6809 | Python: fix: preserve function-call name when merging streaming deltas | open | Osamaali313 | <https://github.com/microsoft/agent-framework/pull/6809> |
| PR | #6807 | .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6807> |
| PR | #6806 | Python: selective version bump for 1.10.0 release (re-date to 260629) | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6806> |
| PR | #6804 | Python: Fix: coalesce reasoning deltas into single block when content.id is None | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/6804> |
| PR | #6801 | Python: [BREAKING] Improve FileAccess/FileMemory harness providers (surgical edits, read-only tier, consistent naming) | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6801> |
| PR | #6797 | .NET: Add AgentSkillsSourceContext to AgentSkillsSource.GetSkillsAsync | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6797> |
| PR | #6796 | .NET: Harden dotnet-format workflow shell handling | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6796> |
| PR | #6795 | .NET: Bump Azure.AI.Projects to 2.1.0-alpha.20260629.1 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6795> |
| PR | #6794 | Python: Fix Anthropic messages and function-loop fallback | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6794> |
| PR | #6793 | .NET: Allow customizing the HarnessAgent shell tool name | open | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6793> |
| PR | #6792 | .NET: CopilotStudio: populate AgentResponse metadata from IActivity | open | dx3mirror | <https://github.com/microsoft/agent-framework/pull/6792> |
| PR | #6791 | .NET: Populate AgentResponse metadata in CopilotStudioAgent | open | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6791> |
| PR | #6748 | Python: Build(deps-dev): Bump js-yaml from 4.1.1 to 4.2.0 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6748> |
| Issue | #6808 | .NET & Python: [Feature]:  Automatic compaction of chat history to stay within durable backend size limit | open | greenie-msft | <https://github.com/microsoft/agent-framework/issues/6808> |
| Issue | #6805 | .NET: [Bug]: Declarative workflow — InvokeAzureAgent rejects multiple named arguments / inline-record input (ParseRecord → IDictionary) | open | Grafaag | <https://github.com/microsoft/agent-framework/issues/6805> |
| Issue | #6803 | Python: Realtime Agent Abstractions | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6803> |
| Issue | #6799 | [BREAKING] .NET: Bump Azure.AI.AgentServer to 2.0.0 protocol in Foundry.Hosting | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6799> |
| Issue | #6798 | .NET: Bump Azure.AI.Projects to the next beta | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6798> |
| Issue | #6790 | .NET: [Feature]: Populate AgentResponse metadata in CopilotStudioAgent | open | dx3mirror | <https://github.com/microsoft/agent-framework/issues/6790> |
| Issue | #6789 | .NET: [Feature]: HarnessAgent should support custom ShellExecutor.AsAIFunction name | open | Lightczx | <https://github.com/microsoft/agent-framework/issues/6789> |
| Issue | #6786 | .NET: [Bug]: HITL in Durable workflows the Executor TInput state is lost after approval is granted. | closed | Sachin-Nand | <https://github.com/microsoft/agent-framework/issues/6786> |
| Issue | #6781 | Python: [Bug]: OllamaChatClient: `response_format` as a Pydantic model class isn't converted to a JSON schema (structured output fails; breaks harness plan mode) | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6781> |
| Issue | #6762 | Python: Fix background agent telemetry context issue | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6762> |
| Issue | #6761 | Python: Fix FunctionShellTool throw | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6761> |
| Issue | #6734 | Python: Harness: Change loop evaluator that loops until all background agents are complete to resolve provider from agent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6734> |
| Issue | #6728 | Python: Make all AgentSkillsProvider tools require approval by default and add auto-approval rules | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6728> |
| Issue | #6705 | Python: create_harness_agent skills_paths should accept str and Path | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6705> |
| Issue | #6681 | Python: Add include_detailed_errors option for skill script execution | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6681> |
| Issue | #6668 | Add harness documentation pages | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6668> |
| Issue | #6604 | Python: [Feature]: Support stable + preview Azure AI Search (Foundry IQ) API versions in agent-framework-azure-ai-search | closed | farzad528 | <https://github.com/microsoft/agent-framework/issues/6604> |
