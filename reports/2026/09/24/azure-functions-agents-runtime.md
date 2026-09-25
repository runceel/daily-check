# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 1 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | TsuyoshiUshio, larohra |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Workflow tool の async handler 対応（#233）と task timeout／failure continuation（#222）が実装され、耐障害性と非同期処理が強化されました。  
Durable Agent Loop は FRD 0009 として設計が記録されましたが、これは設計文書であり runtime API の実装完了を示すものではありません（#226）。  
MCP の長時間 event stream が 5 秒で timeout する issue が残っており、HTTP client timeout の改善案と併せて確認が必要です（#228、#232）。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#233](https://github.com/Azure/azure-functions-agents-runtime/pull/233) — feat(workflows): support async workflow tool handlers

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +455 / -46
- マージ日時 (UTC): `2026-09-23 22:48:32`

**変更概要**

workflow で利用する function tool handler を `async` に対応させ、非同期 I/O を含む tool を workflow 内から実行できるようにします。  
function-tool adapter／discovery／workflow registry を更新し、sync／async の双方と live agent 経由の E2E を追加しています。  
Python workflow tool の実装者と、ツールを登録・実行する host が影響範囲です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 6 | 0 |
| `docs/frds/0004-dynamic-workflows.md` | 17 | 10 |
| `docs/front-matter-spec.md` | 6 | 4 |
| `docs/workflows.md` | 27 | 5 |
| `samples/workflow-incident-triage/README.md` | 6 | 1 |
| `samples/workflow-incident-triage/src/tools/incident_tools.py` | 10 | 4 |
| `src/azure_functions_agents/_function_tool.py` | 22 | 1 |
| `src/azure_functions_agents/discovery/tools.py` | 9 | 1 |
| `src/azure_functions_agents/workflows/registry.py` | 5 | 14 |
| `tests/endtoend/test_workflow_tools_e2e.py` | 142 | 0 |
| `tests/test_discovery_tools.py` | 68 | 0 |
| `tests/test_incident_tools.py` | 56 | 3 |
| `tests/test_workflow_activity.py` | 36 | 0 |
| `tests/test_workflow_native_retry.py` | 39 | 0 |
| `tests/test_workflow_registry.py` | 6 | 3 |

</details>

<details><summary>コミット (7 件)</summary>

- `d794424` feat(workflows): support async workflow tool handlers
- `9d86757` docs(samples): use an async workflow tool in incident triage
- `5d9f0fe` fix(workflows): adapt schema tools for workflow execution
- `903be15` test(workflows): add async workflow tool host E2E
- `05a31a8` test(workflows): harden async workflow tool E2E
- `dc0acc0` test(workflows): drive async tool E2E through a live agent
- `298523a` test(workflows): cover sync and async tools in workflow E2E

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

workflow tool handler の処理経路が coroutine を扱えるよう拡張され、schema tool の workflow 実行アダプターも更新されます。  
sync handler に加えて async handler を受け入れる capability の追加であり、破壊的変更を示す情報はありません。

**既存利用者への影響**

既存の sync tool handler は引き続き利用できます。非同期 I/O を必要とする tool は async handler として定義し、host／E2E で await と error handling を確認してください。

### [#226](https://github.com/Azure/azure-functions-agents-runtime/pull/226) — [FRD 0009] Design doc for Durable Agent Loop

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +665 / -0
- マージ日時 (UTC): `2026-09-22 23:15:51`

**変更概要**

Durable Agent Loop の構成・契約・段階的な検証結果を FRD 0009 として文書化します。  
document では durable execution の通常フロー、request／削除契約、Linux harness 検証や route isolation を記録しています。  
これは設計提案・記録の追加で、runtime 実装や利用可能な API の追加ではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0009-durable-agent-loop.md` | 664 | 0 |
| `docs/frds/README.md` | 1 | 0 |

</details>

<details><summary>コミット (9 件)</summary>

- `f8e0ed0` docs: propose public Durable Agent Loop FRD
- `e043ceb` docs: record bounded durable qualification outcomes
- `5a812a5` docs: target durable delivery at the feature integration branch
- `41c801c` docs: drop superseded P0-P6 delivery decision
- `d2ad3bc` docs: record locally verified durable harness startup repair
- `388de59` docs: streamline durable agent loop contracts
- `b755281` docs: clarify durable v1 request and deletion contracts
- `baf425f` docs: record Linux normal-flow proof and isolate routes
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は FRD とその index のみで、コード・公開 API・protocol の実装変更はありません。  
durable loop の将来設計と検証根拠を文書化した変更です。

**既存利用者への影響**

利用者側の移行はありません。durable loop を採用する計画があるチームは、実装前提ではなく FRD の設計契約として参照してください。

### [#222](https://github.com/Azure/azure-functions-agents-runtime/pull/222) — feat(workflows): add task timeout and failure continuation

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +2610 / -141
- マージ日時 (UTC): `2026-09-18 22:02:42`

**変更概要**

workflow task に timeout と失敗後の continuation を追加し、長時間・部分失敗を含む処理を制御しやすくします。  
workflow engine／activity の実行処理を更新し、retry policy sample と設定・文書を追加しています。  
timeout／retry／failure continuation を使う Python workflow の定義と運用に影響します。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 13 | 9 |
| `docs/architecture.md` | 21 | 4 |
| `docs/frds/0004-dynamic-workflows.md` | 20 | 9 |
| `docs/workflows.md` | 114 | 24 |
| `samples/README.md` | 1 | 1 |
| `samples/workflow-retry-policy/README.md` | 87 | 12 |
| `samples/workflow-retry-policy/src/host.dts.json` | 24 | 0 |
| `samples/workflow-retry-policy/src/host.json` | 1 | 1 |
| `samples/workflow-retry-policy/src/local.settings.template.json` | 2 | 0 |
| `samples/workflow-retry-policy/src/main.agent.md` | 13 | 3 |
| `samples/workflow-retry-policy/src/tools/order_tools.py` | 109 | 6 |
| `src/azure_functions_agents/_function_tool.py` | 12 | 1 |
| `src/azure_functions_agents/discovery/tools.py` | 1 | 0 |
| `src/azure_functions_agents/workflows/activity.py` | 49 | 2 |
| `src/azure_functions_agents/workflows/engine.py` | 251 | 10 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `8a8a1bb` feat(workflows): add task timeout and failure continuation
- `23be4e6` fix(samples): keep retry policy sample CI-compatible
- `16de9ac` fix(workflows): address task resilience review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

workflow task の実行契約に timeout と失敗継続の設定・処理を追加し、engine が resilience policy を扱います。  
変更ファイル一覧から公開関数の正確なシグネチャは確認できませんが、workflow 定義の設定面と失敗時の制御が拡張されています。破壊的変更の記載はありません。

**既存利用者への影響**

既存 workflow に新しい timeout／failure continuation の指定がなければ、コード移行は通常不要です。長時間 task や retry policy を使う場合は、timeout と継続時の業務結果を明示して確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #235 | test: FRD 0009 C0 - characterize ordinary/workflow registration inventory and runner behavior | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/235> |
| PR | #234 | docs: refine Durable agent loop architecture and delivery plan | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/234> |
| PR | #232 | Fix MCP HTTP client timeout for long-lived event stream | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/232> |
| PR | #229 | demo(chat-ui): add the animated Yoho assistant avatar | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/229> |
| PR | #230 | demo(chat-ui): let the avatar react to the draft with Jev | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/230> |
| PR | #227 | docs: propose storage-backed agent content | open | swapnil-nagar | <https://github.com/Azure/azure-functions-agents-runtime/pull/227> |
| PR | #224 | maintenance: Add python instructions for cleaner code | open | Copilot | <https://github.com/Azure/azure-functions-agents-runtime/pull/224> |
| PR | #225 | Support MCP tool name prefixes from mcp.json | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/pull/225> |
| Issue | #228 | MCP client has no httpx timeout, so the event stream fails after 5 seconds | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/228> |
| Issue | #139 | Support async workflow tool handlers | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/139> |
