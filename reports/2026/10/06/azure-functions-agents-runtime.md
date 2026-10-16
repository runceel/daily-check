# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 1 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | Copilot, larohra, hallvictoria |

## ⚠ 重要な変更（要確認）

- **互換性境界** [Azure/azure-functions-agents-runtime#242](https://github.com/Azure/azure-functions-agents-runtime/pull/242): Copilot preview 経路では custom ClientManager を拒否します。既定オフの MAF 経路は維持されるため、preview を有効化する利用者だけが構成移行を確認してください。
- **認証設計と実装を区別** [Azure/azure-functions-agents-runtime#249](https://github.com/Azure/azure-functions-agents-runtime/pull/249): MCP credential の turn 単位更新・skills parity は FRD の未実装 amendment です。provider request ごとの Entra 更新と混同しないでください。
- **未マージの防御修正候補** [Azure/azure-functions-agents-runtime#252](https://github.com/Azure/azure-functions-agents-runtime/pull/252): MCP header の未解決 env placeholder を fail-closed にする提案です。利用者は環境変数・header 解決と修正収録版を確認してください。

## このリポジトリの要点

- 既定オフの Copilot harness foundation、primary agent の非ストリーム host tools、provider adapter／Entra BYOK がマージされました。local-only・single-worker preview の条件と拒否される機能を明示しています。
- native sessions／Blob persistence、MCP／skills、delegation／workflow／streaming parity は未マージです。FRD の認証更新判断だけで実装済みと扱いません。
- Vally 0.16.0 の TypeScript executor により既存同期 chat endpoint を評価でき、MAF telemetry の ID は Function App 名＋canonical slug で安定化しました。
- MCP env 解決の fail-closed 提案と本番 host の managed-identity qualification を次回へ継続します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#248](https://github.com/Azure/azure-functions-agents-runtime/pull/248) — Give agents stable identities from Function App name and agent slug

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +477 / -75
- マージ日時 (UTC): `2026-10-05 17:55:16`

**変更概要**

fresh MAF agent の telemetry ID を Function App 名と canonical agent slug から再現可能にします。
`WEBSITE_SITE_NAME` の trim／lowercase と filename-derived slug で `contoso-agents/billing` 等を生成します。
site metadata がない場合は `local/billing` となります。
primary・streaming・delegated・workflow leaf の共通 constructor と startup summary に反映します。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 11 | 2 |
| `docs/frds/0007-multi-agent-delegation.md` | 4 | 1 |
| `docs/observability.md` | 41 | 1 |
| `src/azure_functions_agents/_agent_identity.py` | 13 | 0 |
| `src/azure_functions_agents/app.py` | 2 | 0 |
| `src/azure_functions_agents/config/env.py` | 1 | 0 |
| `src/azure_functions_agents/runner.py` | 6 | 2 |
| `tests/test_agent_identity.py` | 69 | 0 |
| `tests/test_app.py` | 15 | 1 |
| `tests/test_config_env.py` | 21 | 0 |
| `tests/test_runner_delegation.py` | 74 | 63 |
| `tests/test_runner_harness.py` | 192 | 3 |
| `tests/test_runner_streaming.py` | 28 | 2 |

</details>

<details><summary>コミット (10 件)</summary>

- `1d9d45a` Initial plan
- `6cfcf89` Use deterministic, resource-scoped agent IDs for MAF agents
- `165bd76` Derive agent ID from WEBSITE_OWNER_NAME + WEBSITE_DEPLOYMENT_ID corre…
- `2c8feb7` Make agent ID human-readable and accept partial correlation key
- `ff17035` Reuse shared runtime environment accessor for agent identity
- `afe0e9f` Merge branch 'main' into copilot/generate-stable-agent-id
- `c6662fa` Centralize agent identity environment names in EnvVar
- `4ad75cc` Qualify MAF agent names with Function App name
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`6cfcf89` から ID 導入を始め、最終契約は `_agent_identity.py` の site-name＋slug です。途中の owner／deployment correlation 案は除去され、WEBSITE_OWNER_NAME／WEBSITE_DEPLOYMENT_ID は identity に使いません。
`ff17035` は共通 env accessor、`c6662fa` は EnvVar 集約、`4ad75cc` は readable name を app-qualified にします。ID は lowercase、表示 name は site の casing を維持します。

**既存利用者への影響**

public API・routes・history/session keys の移行は不要です。telemetry の `gen_ai.agent.id`／name で集計するクエリ・dashboard は新しい値を確認してください。

### [#247](https://github.com/Azure/azure-functions-agents-runtime/pull/247) — feat: add native Vally evaluations for agent behavior

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +5427 / -54
- マージ日時 (UTC): `2026-10-05 16:28:32`

**変更概要**

既存の同期 chat endpoint で authored agent の挙動を Vally 評価できるようにします。
TypeScript executor が応答・effective model・tool call／result・turn boundary を trajectory に変換します。
single／ordered multi-turn、trial ごとの隔離 session、anonymous／Functions-key／Entra 認証を扱います。
timeout と sanitized failure、grader 付き receipt sample、Node CI job を追加しました。

<details><summary>変更ファイル (42 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitattributes` | 4 | 0 |
| `.gitignore` | 5 | 0 |
| `README.md` | 9 | 0 |
| `docs/architecture.md` | 13 | 2 |
| `docs/evaluation.md` | 166 | 0 |
| `docs/frds/0010-agent-evaluations.md` | 468 | 0 |
| `docs/frds/README.md` | 1 | 0 |
| `docs/index.md` | 2 | 0 |
| `eng/templates/jobs/ci-tests.yml` | 36 | 0 |
| `integrations/vally-executor-azure-functions/.npmrc` | 3 | 0 |
| `integrations/vally-executor-azure-functions/.prettierignore` | 5 | 0 |
| `integrations/vally-executor-azure-functions/README.md` | 54 | 0 |
| `integrations/vally-executor-azure-functions/package-lock.json` | 2204 | 0 |
| `integrations/vally-executor-azure-functions/package.json` | 41 | 0 |
| `integrations/vally-executor-azure-functions/src/config.ts` | 210 | 0 |
| _... 他 27 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `9d96adc` feat: add MAF-compatible agent evals
- `8228ef5` Change Serverless Agents refs to Hosted Skills
- `beab0b4` initial prototype
- `98f84f1` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- `5087f43` Minor fixes
- `8a5dddc` Address Vally evaluation review feedback
- `1058f7f` Return amended evaluation FRD to review
- `8782a4f` Authenticate Vally executor npm feed
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`9d96adc` から runtime evidence と executor を導入し、`8a5dddc` が review feedback、`8782a4f` が npm feed 認証を整えます。
`@microsoft/vally`／CLI は0.16.0に pin。Python runtime に Vally 型・依存は追加せず、専用評価 endpoint もありません。評価 orchestration・grader・CI verdict は Vally が所有します。

**既存利用者への影響**

既存 agent の移行は不要です。評価を使う場合は TypeScript executor と接続認証を構成し、trial ごとの session 隔離・tool evidence の保管を確認してください。

### [#249](https://github.com/Azure/azure-functions-agents-runtime/pull/249) — FRD 0009: Copilot MCP auth refresh and skills parity decisions (issue #1336)

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1809 / -353
- マージ日時 (UTC): `2026-10-01 18:35:16`

**変更概要**

FRD の MCP／skills compatibility 判断を更新する文書 amendment です。
各 turn の create／resume 前に新しい Entra token を static header として渡し、同じ native session を再開する設計を記録します。
空 scope の warning／static header fallback と configured server-tool pair の限定承認を定義しました。
pinned SDK が非対応の reload・dynamic header・managedMcpServers 案を除去します。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 9 | 0 |
| `.github/skills/add-feature/SKILL.md` | 3 | 0 |
| `README.md` | 8 | 6 |
| `docs/architecture.md` | 68 | 37 |
| `docs/frds/0009-copilot-sdk-harness.md` | 246 | 152 |
| `docs/frds/_template.md` | 3 | 0 |
| `eng/templates/official/jobs/e2e-tests.yml` | 2 | 0 |
| `samples/copilot-preview/README.md` | 97 | 19 |
| `src/azure_functions_agents/_copilot.py` | 85 | 41 |
| `src/azure_functions_agents/_copilot_providers.py` | 261 | 0 |
| `src/azure_functions_agents/_harness.py` | 42 | 57 |
| `src/azure_functions_agents/client_manager.py` | 38 | 9 |
| `src/azure_functions_agents/config/__init__.py` | 2 | 0 |
| `src/azure_functions_agents/config/env.py` | 21 | 1 |
| `tests/test_client_manager.py` | 64 | 0 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `8e6f162` build: skip e2e tests for forks (#237)
- `7520511` Add Copilot SDK provider adapter and Entra BYOK (#242)
- `74abc0a` docs: record MCP credential refresh and skills parity decisions
- `952dd42` Merge origin/main into larohra/review-pr-245

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`74abc0a` が FRD の決定17〜24と未実装・未資格確認の境界を記録します。main の provider adapter と fork CI のコミットを含むため、変更ファイル一覧だけではこの文書 slice の実装と判定できません。
MCP の mid-turn refresh は計画されず、full MAF parity の保証もありません。この amendment に新しい product API 実装はありません。

**既存利用者への影響**

この文書 PR による移行は不要です。MCP／skills を必要とする利用者は後続実装・qualification を待ち、provider authentication の実装済み機能と分けてください。

### [#242](https://github.com/Azure/azure-functions-agents-runtime/pull/242) — Add Copilot SDK provider adapter and Entra BYOK

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +1604 / -235
- マージ日時 (UTC): `2026-10-01 17:42:27`

**変更概要**

Copilot preview の provider を MAF client の構築なしに native SDK へ変換します。
OpenAI key、Azure OpenAI key／Entra、Foundry Entra と agent 別 model override に対応します。
provider request ごとに Entra token を更新し、credential を安全に再利用します。
endpoint・非対応設定を推論前に検証し、別 provider／MAF への silent fallback はしません。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 9 | 0 |
| `.github/skills/add-feature/SKILL.md` | 3 | 0 |
| `README.md` | 8 | 6 |
| `docs/architecture.md` | 68 | 37 |
| `docs/frds/0009-copilot-sdk-harness.md` | 43 | 34 |
| `docs/frds/_template.md` | 3 | 0 |
| `samples/copilot-preview/README.md` | 97 | 19 |
| `src/azure_functions_agents/_copilot.py` | 85 | 41 |
| `src/azure_functions_agents/_copilot_providers.py` | 261 | 0 |
| `src/azure_functions_agents/_harness.py` | 42 | 57 |
| `src/azure_functions_agents/client_manager.py` | 38 | 9 |
| `src/azure_functions_agents/config/__init__.py` | 2 | 0 |
| `src/azure_functions_agents/config/env.py` | 21 | 1 |
| `tests/test_client_manager.py` | 64 | 0 |
| `tests/test_copilot.py` | 405 | 17 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `5e544b2` Initial plan
- `438cd46` docs: finalize Copilot provider slice contract
- `08e235b` feat: add Copilot SDK provider adapter
- `3a2ce0f` Address Copilot provider review feedback
- `591f39a` Refactor Copilot provider configuration
- `4d3f972` Type Copilot provider config constants
- `33c90a1` Type Copilot environment reads
- `0408c6d` Remove unused provider token scope and record FRD sign-off
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`08e235b` が `_copilot_providers.py` の adapter を導入し、`591f39a`／`4d3f972`／`33c90a1` が構成・定数・env 読取りを型付きに整理します。resume 時にも provider configuration を再供給します。
**互換性境界:** Copilot path の custom ClientManager は明示拒否しますが、Copilot 無効時の既存 custom manager は維持されます。local-only・single-worker preview で、target-host managed identity の確認は未完了です。

**既存利用者への影響**

preview を有効化する場合は supported provider configuration へ移行し、custom manager を外してください。Azure OpenAI key 未指定時の Entra 認証と endpoint／deployment を確認します。
MAF 既定経路には移行不要です。本番 ACA で資格確認済みと解釈しないでください。

### [#237](https://github.com/Azure/azure-functions-agents-runtime/pull/237) — build: skip e2e tests for forks

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -0
- マージ日時 (UTC): `2026-10-01 15:10:04`

**変更概要**

fork PR に secret が渡されず、未解決の値が SDK に渡ることで起きる誤解を招く E2E 失敗を避けます。
共有 E2E job を fork PR のみ skip します。
trusted PR・通常 CI・scheduled run の全 E2E matrix は維持します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/templates/official/jobs/e2e-tests.yml` | 2 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `1faf319` build: skip e2e tests for forks
- `2eb3128` build: skip e2e tests for forks
- `c52cb8d` Merge branch 'main' into hallvictoria/skip-forks

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`1faf319`／`2eb3128` が e2e-tests.yml に `System.PullRequest.IsFork` が True の場合の条件を追加します。API・runtime の変更はありません。
secret を fork に公開して検証を通す変更ではなく、信頼境界に合わせた CI 選択です。

**既存利用者への影響**

アプリ移行は不要です。fork contributor は skip を E2E 合格と解釈せず、trusted 環境での実行結果を確認してください。

### [#243](https://github.com/Azure/azure-functions-agents-runtime/pull/243) — Add Copilot direct-agent host-tool parity

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +711 / -106
- マージ日時 (UTC): `2026-09-29 22:49:52`

**変更概要**

Copilot preview の非ストリーム primary agent に host-owned tools を組み込みます。
local tools、web_request、session-bound execute_python の順序・schema・呼出し動作を維持します。
SDK の ambient tools は無効のまま、送信 catalog を厳密検証します。
structured output の host validation、cancel と tool failure をテストします。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 4 | 4 |
| `.github/instructions/sample-readmes.instructions.md` | 11 | 0 |
| `.github/skills/add-feature/SKILL.md` | 13 | 9 |
| `.github/skills/add-feature/references/split-rules.md` | 9 | 9 |
| `AGENTS.md` | 6 | 2 |
| `README.md` | 11 | 6 |
| `docs/architecture.md` | 53 | 20 |
| `docs/frds/0009-copilot-sdk-harness.md` | 4 | 3 |
| `docs/frds/_template.md` | 4 | 2 |
| `samples/copilot-preview/README.md` | 31 | 29 |
| `samples/copilot-preview/src/agents.config.yaml` | 2 | 1 |
| `samples/copilot-preview/src/main.agent.md` | 1 | 1 |
| `src/azure_functions_agents/_harness.py` | 16 | 5 |
| `src/azure_functions_agents/config/schema.py` | 3 | 1 |
| `src/azure_functions_agents/registration/capabilities.py` | 2 | 2 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `789f932` Initial plan
- `8a50e62` Add Copilot direct host tool parity
- `90520de` Address PR 243 review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`8a50e62` が host-tool parity、`90520de` が review 対応を実装します。sync／async／Pydantic tool、decorator order、name collision を扱います。
preview は streaming・workflow・delegation・MCP・skills を推論前に拒否します。workflow management tool の変換を検証しても workflow execution を有効化するものではありません。

**既存利用者への影響**

Copilot 無効時の MAF 動作は維持されます。preview 利用者は非ストリーム primary-agent の対応範囲と session scoping を確認してください。
分散 session・MCP／skills・他 execution role は別 PR のため、今回だけで全面 parity を期待しないでください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #241 | feat: add default-off Copilot harness foundation | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/241> |
| #240 | docs: specify Copilot SDK harness feature (FRD 0009) | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/240> |
| #224 | maintenance: Add python instructions for cleaner code | Copilot | <https://github.com/Azure/azure-functions-agents-runtime/pull/224> |
| #235 | test: FRD 0009 C0 - characterize ordinary/workflow registration inventory and runner behavior | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/235> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #244 | Implement Copilot native sessions and Blob persistence | open | Copilot | <https://github.com/Azure/azure-functions-agents-runtime/pull/244> |
| PR | #245 | Add SDK-neutral MCP and scoped skills capabilities | open | Copilot | <https://github.com/Azure/azure-functions-agents-runtime/pull/245> |
| PR | #252 | fix(discovery): fail closed on unresolved env placeholders in MCP headers | open | reginaldalfret | <https://github.com/Azure/azure-functions-agents-runtime/pull/252> |
| PR | #250 | Add Copilot preview delegation, workflows, and streaming parity | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/250> |
| PR | #246 | docs: update dynamic workflow GIFs (three tool calls, LLM wording) | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/246> |
| PR | #239 | docs: FRD 0009 — TypeScript runtime (Copilot SDK) | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/239> |
| Issue | #251 | Dynamic Workflows: completion notification without the built-in chat UI | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/251> |
