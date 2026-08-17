# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-13 00:02:03 〜 2026-08-14 00:21:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 13 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 9 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | uuzzrm, westey-m, PratikWayase, moonbox3, TaoChenOSU, giles17 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7521](https://github.com/microsoft/agent-framework/pull/7521) — Python: [BREAKING] Require building functional workflow instances （PR / open / moonbox3）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ 破壊的変更** [#7384](https://github.com/microsoft/agent-framework/issues/7384) — .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration （Issue / open / MirkoMattioliSacmi）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7558](https://github.com/microsoft/agent-framework/pull/7558) — Python: track agent-hooks feature usage

- 作者: moonbox3 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +23 / -1
- マージ日時 (UTC): `2026-08-14 00:10:22`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/feature-usage-bit-registry.md` | 2 | 1 |
| `python/packages/core/agent_framework/_agent_hooks.py` | 2 | 0 |
| `python/packages/core/agent_framework/_telemetry.py` | 1 | 0 |
| `python/packages/core/tests/core/test_agent_hooks.py` | 18 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `71e8ea8` Python: track agent-hooks feature usage

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#7621](https://github.com/microsoft/agent-framework/pull/7621) — Python: Update agentserver to x.1.0b1

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `documentation` `python` `foundry` `hosting`
- 変更行数: +4207 / -4120
- マージ日時 (UTC): `2026-08-14 00:05:37`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azure-contentunderstanding/agent_framework_azure_contentunderstanding/_context_provider.py` | 1 | 1 |
| `python/packages/azure-contentunderstanding/tests/cu/test_context_provider.py` | 5 | 5 |
| `python/packages/foundry_hosting/README.md` | 32 | 7 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 0 | 2 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_request_context.py` | 0 | 53 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 68 | 84 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_state_store.py` | 52 | 74 |
| `python/packages/foundry_hosting/pyproject.toml` | 3 | 3 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 1 | 10 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 51 | 129 |
| `python/packages/foundry_hosting/tests/test_state_store.py` | 81 | 81 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/custom_storage/.dockerignore` | 7 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/custom_storage/.env.example` | 5 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/custom_storage/Dockerfile` | 16 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/custom_storage/README.md` | 48 | 0 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `181d982` Update agentserver to 2.1.0
- `d17a81e` Update agentserver responses and invocations to x.1.0b1
- `171693f` Pass platform context to state store provider
- `e9ed52e` Pass user id
- `cf0cf90` Merge branch 'main' into local-branch-update-agentserver-dep
- `012d43d` Correct requirements.txt
- `8c00236` Fix unit tests
- `311b4c9` Fix unit tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#7635](https://github.com/microsoft/agent-framework/pull/7635) — Python: Fix Cosmos memory provider calling renamed add_cosmos toolkit API

- 作者: atty57 / 状態: MERGED
- ラベル: `python`
- 変更行数: +39 / -14
- マージ日時 (UTC): `2026-08-13 21:29:19`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azure-cosmos-memory/agent_framework_azure_cosmos_memory/_context_provider.py` | 7 | 3 |
| `python/packages/azure-cosmos-memory/tests/test_context_provider.py` | 30 | 10 |
| `python/packages/azure-cosmos-memory/tests/test_emulator.py` | 2 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `6b5b19c` Python: Fix Cosmos memory provider calling renamed add_cosmos toolkit…
- `e0e017a` Ponytail comment erased
- `f22476c` Clarify TODO comment regarding memory method rename

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#7450](https://github.com/microsoft/agent-framework/pull/7450) — Python: fix(python): add release_session API to prevent BackgroundAgentsProvider memory leaks

- 作者: PratikWayase / 状態: MERGED
- ラベル: `python`
- 変更行数: +470 / -15
- マージ日時 (UTC): `2026-08-13 19:39:29`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_harness/_background_agents.py` | 169 | 15 |
| `python/packages/core/tests/core/test_harness_background_agents.py` | 301 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `6ddc425` fix: add release_session API to prevent BackgroundAgentsProvider memo…
- `777b695` fix: address Copilot review comments on release_session
- `1c7e9f8` fix(harness): make background agent session release race-safe and bou…
- `2586a42` Merge branch 'main' into fix/7385-background-agents-provider-session-…
- `7b2dd75`  fix (harness): address release_session and review feedback
- `77f5b42` Merge branch 'main' into fix/7385-background-agents-provider-session-…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#7646](https://github.com/microsoft/agent-framework/pull/7646) — .NET: Remove clear and package source mapping from nuget.config to allow user level config inheritance

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +0 / -6
- マージ日時 (UTC): `2026-08-13 16:22:28`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget.config` | 0 | 6 |

</details>

<details><summary>コミット (1 件)</summary>

- `928161d` Remove clear and package source mapping from nuget.config to allow us…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#7605](https://github.com/microsoft/agent-framework/pull/7605) — Python: fix streaming transcript duplication with message injection and per-service-call persistence

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +437 / -2
- マージ日時 (UTC): `2026-08-13 15:08:10`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 6 | 0 |
| `python/packages/core/agent_framework/_sessions.py` | 40 | 2 |
| `python/packages/core/tests/core/test_harness_agent.py` | 120 | 0 |
| `python/packages/core/tests/core/test_middleware_with_chat.py` | 271 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `d21f3d2` Fix ordering issue when streaming with content injection and per-serv…
- `38bfa07` Update spec
- `5d2e6e3` Address PR comment
- `1921187` Merge branch 'main' into python-streaming-frc-ordering-bug
- `74af840` revert uv.lock changes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7607 | Python: scope under-specified approve-for-session permission decisions | giles17 | <https://github.com/microsoft/agent-framework/pull/7607> |
| #7622 | Python: Warn when advertised MCP archives are rejected | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7622> |
| #7470 | Python: fix(redis): honour a max_messages retention limit of zero | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7470> |
| #7597 | Python: Preserve Mistral prompt-cache usage details | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7597> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7660 | Enforce code owner | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7660> |
| PR | #7659 | Python: surface mid-run oauth_consent_request items from ResponsesHostServer | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7659> |
| PR | #7656 | Python: fix(python): treat any MCP ping JSON-RPC error as unsupported, not just -32601 | open | dcasati | <https://github.com/microsoft/agent-framework/pull/7656> |
| PR | #7655 | Python: Fix AG-UI url source dropping attachments when the URL is in source.value | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7655> |
| PR | #7652 | Python: Fix duplicate streamed tool calls in DevUI | open | cecheta | <https://github.com/microsoft/agent-framework/pull/7652> |
| PR | #7648 | .NET: Add Foundry hosted session and user identity pass-through | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7648> |
| PR | #7637 | Python: skip Foundry session persist after a failed conversation turn | open | sgoel2be24-cyber | <https://github.com/microsoft/agent-framework/pull/7637> |
| PR | #7641 | .NET: Add session-persisted chat client routing | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7641> |
| PR | #7650 | .NET: Allow agents to opt into concurrent tool invocation | open | ump45nose | <https://github.com/microsoft/agent-framework/pull/7650> |
| PR | #7649 | .NET: Persist hosted agent state in Foundry | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7649> |
| PR | #7645 | Python: Bump flit from 3.12.0 to 4.0.2 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7645> |
| PR | #7644 | Python: Bump ty from 0.0.64 to 0.0.69 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7644> |
| PR | #7639 | .NET: Bump AgentMemory from 1.3.0 to 1.4.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7639> |
| PR | #6932 | .NET: Add RoutingChatClient for routing requests across multiple chat clients | closed | westey-m | <https://github.com/microsoft/agent-framework/pull/6932> |
| Issue | #7658 | Python: [Bug]: ResponsesHostServer drops mid-run oauth_consent_request content ('not supported yet'), consent link never reaches the client | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7658> |
| Issue | #7657 | Python: Consolidate OTel GenAI Semantic Conventions verisioning | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7657> |
| Issue | #7653 | Python: [Bug]: AG-UI InputContent in Messages Lost During Conversion Due to `source.value` Not Being Checked | open | savannahknight | <https://github.com/microsoft/agent-framework/issues/7653> |
| Issue | #7654 | Python: [Feature]: Document and test Python ChatClient concurrent-use contract | open | TsuyoshiUshio | <https://github.com/microsoft/agent-framework/issues/7654> |
| Issue | #7651 | Python: [Bug]: DevUI repeats streamed tool calls | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7651> |
| Issue | #7640 | .NET: [Bug]: AsAIAgent serializes parallel tool calls returned in one Responses result | open | riteshksriv | <https://github.com/microsoft/agent-framework/issues/7640> |
| Issue | #7647 | Python: [Bug]: Parallel functional steps fork the checkpoint lineage | open | dev404ai | <https://github.com/microsoft/agent-framework/issues/7647> |
| Issue | #7643 | [Feature]: Support `ask_user` tool | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7643> |
| Issue | #7642 | Python: [Bug]: Support `ask_user` tool | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7642> |
| Issue | #7633 | Python: Cosmos memory provider still calls add_cosmos after toolkit API rename | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/7633> |
| Issue | #7385 | Python: [Bug]: BackgroundAgentsProvider retains per-session runtime (tasks, child sessions) forever | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7385> |
| Issue | #7591 | .NET: Python: [Bug]: Streaming create_harness_agent runs duplicate the transcript after tool calls — 400 "insufficient tool messages following tool_calls" | closed | naeyn | <https://github.com/microsoft/agent-framework/issues/7591> |
| Issue | #7553 | Python: [Bug]: TypeError: Cannot read properties of undefined (reading 'commandIdentifiers') | closed | wonderyl | <https://github.com/microsoft/agent-framework/issues/7553> |
| Issue | #7619 | .NET: Python: [Bug]: `MCPSkillsSource` drops archive skills the index advertised, and every refusal is DEBUG-only | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7619> |
| Issue | #7469 | Python: RedisHistoryProvider: max_messages=0 retains every message instead of none | closed | chinmayv095 | <https://github.com/microsoft/agent-framework/issues/7469> |
| Issue | #7589 | Python: [Bug]: the Mistral chat client drops `prompt_tokens_details.cached_tokens`, so prompt-cache hits are invisible in `UsageDetails` | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7589> |
