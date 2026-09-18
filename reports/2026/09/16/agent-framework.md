# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-15 00:08:57 〜 2026-09-16 01:35:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 41 |
| オープン中の新規 PR     | 13 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 12 |
| クローズ Issue          | 24 |
| 主要コントリビューター  | eavanvalkenburg, jpalvarezl, CoralGarden52, fzfzzfzzzfzzzz, ktz03, ManoharPaturi |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#8375](https://github.com/microsoft/agent-framework/pull/8375) — .NET: [BREAKING] Improve replay support with Approval Binding （PR / open / westey-m）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#8372](https://github.com/microsoft/agent-framework/pull/8372) — [BREAKING] Python: Add request-scoped Foundry agent factories （PR / open / rogerbarreto）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#8371](https://github.com/microsoft/agent-framework/pull/8371) — [BREAKING] Python: Make HTTP cookie persistence explicit （PR / merged / jpalvarezl）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#8305](https://github.com/microsoft/agent-framework/pull/8305) — Python: [BREAKING] Require committed finish reason for tool calls （PR / closed / eavanvalkenburg）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#7991](https://github.com/microsoft/agent-framework/pull/7991) — .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions （PR / merged / rogerbarreto）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ セキュリティ** [#8238](https://github.com/microsoft/agent-framework/pull/8238) — Python: Tighten security label enforcement （PR / merged / eavanvalkenburg）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **非推奨/廃止** [#8401](https://github.com/microsoft/agent-framework/pull/8401) — Python: Deprecate MCP sampling callback （PR / open / eavanvalkenburg）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **非推奨/廃止** [#8400](https://github.com/microsoft/agent-framework/issues/8400) — Python: Deprecate MCP sampling in line with the 2026-07-28 specification （Issue / open / eavanvalkenburg）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。

## このリポジトリの要点
対象期間は機能改善、セキュリティ強化、互換性確認に関する変更が中心でした。重要変更は各 PR の詳細と既存利用者への影響を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8371](https://github.com/microsoft/agent-framework/pull/8371) — [BREAKING] Python: Make HTTP cookie persistence explicit

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +811 / -167
- マージ日時 (UTC): `2026-09-15 10:06:50`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/a2a/README.md` | 13 | 0 |
| `python/packages/a2a/agent_framework_a2a/_agent.py` | 10 | 5 |
| `python/packages/a2a/tests/test_a2a_agent.py` | 86 | 24 |
| `python/packages/ag-ui/README.md` | 14 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_client.py` | 5 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_http_service.py` | 13 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_ag_ui_client.py` | 222 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 1 | 3 |
| `python/packages/core/AGENTS.md` | 1 | 0 |
| `python/packages/core/README.md` | 15 | 0 |
| `python/packages/core/agent_framework/_mcp.py` | 22 | 15 |
| `python/packages/core/tests/core/test_mcp.py` | 74 | 53 |
| `python/packages/core/tests/core/test_mcp_http_auth.py` | 101 | 12 |
| `python/packages/core/tests/workflow/test_workflow_agent.py` | 1 | 3 |
| `python/packages/declarative/README.md` | 19 | 0 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `12b97c8` Python: Make HTTP response-cookie persistence explicit
- `d40fda5` Python: Align declarative HTTP cookie persistence defaults
- `ecf822b` Merge upstream main into fix/python-http-client-defaults
- `2eb7dd9` Python: Preserve caller-owned A2A HTTP clients
- `7189479` Python: Clarify AG-UI test types

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#7991](https://github.com/microsoft/agent-framework/pull/7991) — .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +2276 / -1991
- マージ日時 (UTC): `2026-09-15 10:59:20`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (66 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0031-hosted-per-user-session-storage-isolation.md` | 7 | 0 |
| `docs/decisions/0032-dotnet-hosting-protocol-helpers.md` | 3 | 0 |
| `docs/decisions/0039-shared-agent-session-store.md` | 94 | 0 |
| `docs/specs/003-dotnet-hosting-protocol-helpers.md` | 48 | 24 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Server/Program.cs` | 9 | 5 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Server/README.md` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/AgentSessionStore.cs` | 114 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/AgentSessionStoreKey.cs` | 159 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 15 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/net472/PublicAPI.Unshipped.txt` | 15 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 15 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 15 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/netstandard2.0/PublicAPI.Unshipped.txt` | 15 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 18 | 13 |
| _... 他 51 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `21d1ee9` feat(dotnet): share agent session store abstraction
- `973592f` fix(dotnet): address session store review findings
- `c1961d5` fix(dotnet): remove legacy session key fallback
- `b7ff84b` feat(dotnet): add partitioned session store keys
- `c5fa9fe` refactor(dotnet): keep session keys storage agnostic
- `925b947` refactor(dotnet): promote delegating session store
- `9bddbe9` Restore session store service discovery
- `da5e978` Merge main into session store abstraction proposal
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#8238](https://github.com/microsoft/agent-framework/pull/8238) — Python: Tighten security label enforcement

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1842 / -109
- マージ日時 (UTC): `2026-09-15 04:13:43`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/security.py` | 434 | 81 |
| `python/packages/core/tests/core/test_harness_tool_approval.py` | 112 | 0 |
| `python/packages/core/tests/test_security.py` | 929 | 13 |
| `python/packages/hosting-a2a/tests/hosting_a2a/test_conversion.py` | 33 | 0 |
| `python/samples/02-agents/security/FIDES_DEVELOPER_GUIDE.md` | 135 | 12 |
| `python/samples/02-agents/security/README.md` | 20 | 0 |
| `python/samples/02-agents/security/email_security_example.py` | 7 | 3 |
| `python/samples/02-agents/security/user_identity_security_example.py` | 172 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `54c0c3e` Python: tighten security label enforcement
- `4aa5b18` Python: add identity security setup sample
- `2de0c2f` Python: address security review feedback
- `9036e44` Python: refine identity policy internals
- `25a1c75` Merge branch 'main' into musical-memory

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#8404](https://github.com/microsoft/agent-framework/pull/8404) — Python/.NET: Verify MCP skill archive digests

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `python` `.NET`
- 変更行数: +609 / -16
- マージ日時 (UTC): `2026-09-15 23:41:03`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 11 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/ArchiveEntryLoader.cs` | 38 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/McpSkillIndex.cs` | 9 | 8 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsSourceArchiveTests.cs` | 277 | 0 |
| `python/packages/core/AGENTS.md` | 2 | 0 |
| `python/packages/core/agent_framework/_skills.py` | 38 | 2 |
| `python/packages/core/tests/core/test_mcp_skills.py` | 234 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `a305eb8` Python/.NET: verify supplied MCP skill archive digests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#8334](https://github.com/microsoft/agent-framework/pull/8334) — .NET: Preserve cached and reasoning token counts in Foundry Hosting

- 作者: manjunathshiva / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +106 / -4
- マージ日時 (UTC): `2026-09-15 18:41:39`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/OutputConverter.cs` | 5 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/OutputConverterTests.cs` | 101 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `a7fb68c` .NET: Preserve cached and reasoning token counts in Foundry Hosting

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#8391](https://github.com/microsoft/agent-framework/pull/8391) — Python: Clarify Cosmos history provider storage scope

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +16 / -2
- マージ日時 (UTC): `2026-09-15 15:15:48`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azure-cosmos/agent_framework_azure_cosmos/_history_provider.py` | 16 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `2739441` docs: Clarify Cosmos history provider storage scope

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8399 | Python: Clarify MCP annotation override scope | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8399> |
| #8395 | Python: Reuse registered tools in Monty callbacks | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8395> |
| #8263 | .NET: Preserve hosted session key boundaries | Ricky-7-Yan | <https://github.com/microsoft/agent-framework/pull/8263> |
| #8387 | Python: Propagate runtime arguments to skill callbacks | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8387> |
| #8392 | Python: Reject per-call Mistral transport options | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8392> |
| #8274 | Python: fix(mcp): do not duplicate structuredContent when content present | ktz03 | <https://github.com/microsoft/agent-framework/pull/8274> |
| #8272 | Python: fix(checkpoint): preserve dicts whose keys collide after str() | ktz03 | <https://github.com/microsoft/agent-framework/pull/8272> |
| #8377 | .NET: Temporarily skip flaky steering harness session reuse test | Copilot | <https://github.com/microsoft/agent-framework/pull/8377> |
| #8366 | Python: Preserve MessageText values during formula preprocessing | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8366> |
| #8184 | Python: Add MongoDB vector store connector | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8184> |
| #8368 | Python: Sanitize workflow error messages | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8368> |
| #7874 | Python: .NET: Show Aspire traces in DevUI | Saibernard | <https://github.com/microsoft/agent-framework/pull/7874> |
| #8266 | Python: Build(deps-dev): bump ruff from 0.16.5 to 0.16.6 in /python in the basics group | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8266> |
| #8363 | Python: perf(foundry-hosting): parallelize pre-model storage reads | harsheet-shah | <https://github.com/microsoft/agent-framework/pull/8363> |
| #8373 | Python: close open Workflow AG-UI tool calls before approval interrupt | leilei3167 | <https://github.com/microsoft/agent-framework/pull/8373> |
| #8328 | Python: resolve postponed @response_handler annotations | CoralGarden52 | <https://github.com/microsoft/agent-framework/pull/8328> |
| #8358 | Python: drop continuation_token after a resumed background stream completes | alanhuangyoo | <https://github.com/microsoft/agent-framework/pull/8358> |
| #8347 | Python: record gen_ai.client.operation.duration for failed chat and embedding calls | rksharma-owg | <https://github.com/microsoft/agent-framework/pull/8347> |
| #8261 | Python: handle concurrent FileCheckpointStorage deletion | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/pull/8261> |
| #8300 | Python: preserve functional workflow state on response-only HITL resume | CoralGarden52 | <https://github.com/microsoft/agent-framework/pull/8300> |
| #8294 | Python: Separate hosted and local shell calls | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8294> |
| #8309 | Python: validate functional workflow HITL response types | CoralGarden52 | <https://github.com/microsoft/agent-framework/pull/8309> |
| #8311 | Python: Fix workflow kwargs collision with __global__ executor IDs | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8311> |
| #8303 | Python: Bind MCP HTTP sessions to request identity | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8303> |
| #8319 | Python: document keyed web search with Serply MCP | googio | <https://github.com/microsoft/agent-framework/pull/8319> |
| #8381 | Python: handle Qdrant readiness race after collection creation conflict | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8381> |
| #8262 | Python: reject malformed checkpoint Base64 payloads | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/pull/8262> |
| #8260 | Python: make declarative YAML path loading UTF-8 and async-safe | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/pull/8260> |
| #7999 | Python: preserve response update metadata in WorkflowAgent forwarding | HeZ2z | <https://github.com/microsoft/agent-framework/pull/7999> |
| #7944 | Python: fix: preserve synthetic compaction summaries | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7944> |
| #8214 | Python: FileCheckpointStorage save/load symmetry (#8181) | FOWEPJF255 | <https://github.com/microsoft/agent-framework/pull/8214> |
| #8353 | Python: preserve instruction order in prepend_instructions_to_messages dedup | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8353> |
| #8345 | Python: Restore runtime tools on nested workflow response resume | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8345> |
| #8351 | Python: handle Literal annotations in is_instance_of | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8351> |
| #8058 | Python: fix: keep AG-UI workflow reasoning in thread snapshots | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8058> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8409 | Python: Isolate Foundry Hosting local test state | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8409> |
| PR | #8406 | .NET: fix: uri canonization in workflow http handler | open | baywet | <https://github.com/microsoft/agent-framework/pull/8406> |
| PR | #8405 | Python: fix(openai): preserve reasoning_content on tool-call follow-up messages | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8405> |
| PR | #8403 | .NET: fix: a bug where invoke function tool could bypass approval | open | baywet | <https://github.com/microsoft/agent-framework/pull/8403> |
| PR | #8402 | .NET: Preserve harness middleware for dynamic tools | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8402> |
| PR | #8384 | Python: Add stable names to orchestration workflows | open | droideronline | <https://github.com/microsoft/agent-framework/pull/8384> |
| PR | #8389 | Python: Populate WorkflowAgent response for empty streams | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8389> |
| PR | #8401 | Python: Deprecate MCP sampling callback | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8401> |
| PR | #8386 | Python: Fix ambiguous MCP configuration name matching | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8386> |
| PR | #8396 | Python: Handle provider-invalidated responses | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8396> |
| PR | #8398 | Python: Finalize abandoned graph workflow streams without OTel context leaks | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8398> |
| PR | #8394 | Python: Restrict argument labels against owned input integrity | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8394> |
| PR | #8393 | Python: handle Azure content-filter inner codes | open | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8393> |
| PR | #8378 | Python: Improve skill loading validation | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8378> |
| PR | #8305 | Python: [BREAKING] Require committed finish reason for tool calls | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8305> |
| Issue | #8413 | Python: [Bug]: Declarative InvokeAzureAgent splatters _raw_function_invocation_kwargs into Agent.run() | open | likebean | <https://github.com/microsoft/agent-framework/issues/8413> |
| Issue | #8412 | [Feature]: Support enable_message_events parameter in enable_instrumentation() to allow Microsoft OTel Distro configuration | open | hectorhdzg | <https://github.com/microsoft/agent-framework/issues/8412> |
| Issue | #8410 | Python: [Bug]: tool approval resume silently fails when the agent has a context provider | open | jjwong0915 | <https://github.com/microsoft/agent-framework/issues/8410> |
| Issue | #8407 | .NET: [Bug]: Hosted-agent runtime never activates OTLP export to a third-party destination, despite docs describing it as automatic | open | cristofima | <https://github.com/microsoft/agent-framework/issues/8407> |
| Issue | #8408 | Python: [Bug]: Foundry Hosting tests share local AgentServer state | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8408> |
| Issue | #8382 | Python: [Bug]: Preserve reasoning_content when invoking tools with OpenAI-compatible Chat Completions providers | open | peter-chenqing | <https://github.com/microsoft/agent-framework/issues/8382> |
| Issue | #8400 | Python: Deprecate MCP sampling in line with the 2026-07-28 specification | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8400> |
| Issue | #8397 | Python: [Bug]: Graph workflow stream abandonment logs an OpenTelemetry context detach error | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8397> |
| Issue | #8385 | Python: [Bug]: OpenAIContentFilterException fails to parse Azure Responses API inner code "ContentFiltered" | open | arnabbiswas1 | <https://github.com/microsoft/agent-framework/issues/8385> |
| Issue | #8390 | .NET: Consolidate InMemoryAgentSessionStore in Microsoft.Agents.AI | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8390> |
| Issue | #8388 | Python: [Bug]: WorkflowAgent leaves SessionContext.response unset for zero-output streams | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8388> |
| Issue | #8383 | Python: [Feature]: Use stable default workflow names for Python orchestration builders | open | droideronline | <https://github.com/microsoft/agent-framework/issues/8383> |
| Issue | #6823 | .NET: [.NET] Foundry Hosting: /responses usage always reports cached_tokens (and reasoning_tokens) = 0 — ConvertUsage reads the wrong UsageDetails source | closed | ar-or | <https://github.com/microsoft/agent-framework/issues/6823> |
| Issue | #8251 | .NET: Hosted session harness: preserve composite identifier boundaries | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8251> |
| Issue | #7866 | Python: [Bug]: MCP tools return double output if CallToolResult contains both content and structuredContent | closed | Pavnat | <https://github.com/microsoft/agent-framework/issues/7866> |
| Issue | #7990 | .NET: [Feature]: Share AgentSessionStore through Abstractions | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7990> |
| Issue | #8376 | .NET: Stabilize steering harness session reuse test | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8376> |
| Issue | #5806 | .NET: [Bug]: DevUI integration in Aspire does not have OpenTelemetry visibility | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/5806> |
| Issue | #8365 | perf(foundry-hosting): pre-model storage reads run sequentially in ResponsesHostServer._handle_inner_agent | closed | harsheet-shah | <https://github.com/microsoft/agent-framework/issues/8365> |
| Issue | #8244 | Python: [Bug]: Workflow AG-UI reuses open toolCallId for request_info during tool approval | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8244> |
| Issue | #8327 | Python: [Bug]: @response_handler fails with postponed annotations | closed | CoralGarden52 | <https://github.com/microsoft/agent-framework/issues/8327> |
| Issue | #7818 | Python: gen_ai.client.operation.duration is never recorded for failed chat or embedding calls | closed | venkat-uk | <https://github.com/microsoft/agent-framework/issues/7818> |
| Issue | #8357 | Python: [Bug]: Resuming a background response with stream=True re-runs tools on every tool-loop iteration | closed | alanhuangyoo | <https://github.com/microsoft/agent-framework/issues/8357> |
| Issue | #8255 | Python: [Bug]: FileCheckpointStorage.delete leaks FileNotFoundError during concurrent deletion | closed | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/issues/8255> |
| Issue | #8299 | Python: [Bug]: Functional workflow response-only HITL resume loses user state | closed | CoralGarden52 | <https://github.com/microsoft/agent-framework/issues/8299> |
| Issue | #8308 | Python: [Bug]: Functional workflow accepts HITL responses that violate response_type | closed | CoralGarden52 | <https://github.com/microsoft/agent-framework/issues/8308> |
| Issue | #8310 | Python: [Bug]: Workflow invocation kwargs collide with an executor ID of __global__ | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8310> |
| Issue | #8257 | Python: [Bug]: Checkpoint decoder accepts malformed Base64 pickle payloads | closed | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/issues/8257> |
| Issue | #7952 | Python: [Bug]: WorkflowAgent drops response metadata when forwarding AgentResponseUpdate | closed | junnhwan | <https://github.com/microsoft/agent-framework/issues/7952> |
| Issue | #8254 | Python: [Bug]: Declarative YAML path loaders are locale-dependent and async loader blocks the event loop | closed | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/issues/8254> |
| Issue | #7943 | Python: [Bug]: CompactionProvider.before_run drops synthetic summary messages created by compaction strategies | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7943> |
| Issue | #8181 | Python: FileCheckpointStorage saves state it cannot restore: silent save/load asymmetry, get_latest invisibility, listing disagreement, and undocumented JSONDecodeError | closed | ptimizeroracle | <https://github.com/microsoft/agent-framework/issues/8181> |
| Issue | #8352 | Python: prepend_instructions_to_messages inverts instruction order on partial dedup | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8352> |
| Issue | #8344 | Python: [Bug]: Nested WorkflowExecutor response resume drops request-scoped runtime tools | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8344> |
| Issue | #8350 | Python: Literal handler annotations crash workflows at delivery (is_instance_of has no Literal case) | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8350> |
| Issue | #8054 | Python: [Bug]: AG-UI workflow reasoning is dropped from thread snapshots, so intermediate output vanishes on hydration | closed | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8054> |



