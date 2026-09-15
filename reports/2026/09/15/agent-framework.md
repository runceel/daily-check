# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-14 03:34:25 〜 2026-09-15 00:08:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 16 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 9 |
| 新規 Issue              | 4 |
| クローズ Issue          | 10 |
| 主要コントリビューター  | eavanvalkenburg, moonbox3, manjunathshiva, shoemoney, Shy7777, mrchatam |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#8375](https://github.com/microsoft/agent-framework/pull/8375) — .NET: [BREAKING] Improve replay support with Approval Binding （PR / open / westey-m）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#8372](https://github.com/microsoft/agent-framework/pull/8372) — [BREAKING] Python: Add request-scoped Foundry agent factories （PR / open / rogerbarreto）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#8371](https://github.com/microsoft/agent-framework/pull/8371) — [BREAKING] Python: Make HTTP cookie persistence explicit （PR / open / jpalvarezl）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#8369](https://github.com/microsoft/agent-framework/pull/8369) — [BREAKING] Python: Disable response-cookie persistence in AG-UI clients （PR / closed / jpalvarezl）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#8367](https://github.com/microsoft/agent-framework/pull/8367) — [BREAKING] Python: Adjust A2A client defaults （PR / closed / jpalvarezl）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#8305](https://github.com/microsoft/agent-framework/pull/8305) — Python: [BREAKING] Require committed finish reason for tool calls （PR / open / eavanvalkenburg）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ 破壊的変更** [#7991](https://github.com/microsoft/agent-framework/pull/7991) — .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions （PR / open / rogerbarreto）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ セキュリティ** [#8238](https://github.com/microsoft/agent-framework/pull/8238) — Python: Tighten security label enforcement （PR / open / eavanvalkenburg）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。

## このリポジトリの要点

Agent Framework は、AG-UI の再開時重複排除、ストリーミング並列ツール呼び出しの修正、Hyperlight の後処理、OpenTelemetry の既定ソース名公開など、実行時の信頼性と観測性を強化しました。未マージの BREAKING 変更では Approval Binding、Foundry エージェントファクトリ、Cookie 永続化、A2A 既定値、ツール終了理由の扱いが見直されているため、採用前に互換性を確認します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8149](https://github.com/microsoft/agent-framework/pull/8149) — Python: fix(ag-ui): dedupe client-replayed transcripts on resume

- 作者: ktz03 / 状態: MERGED
- ラベル: `python`
- 変更行数: +72 / -7
- マージ日時 (UTC): `2026-09-14 23:50:33`

**変更概要**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 21 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_snapshot_session.py` | 7 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow.py` | 10 | 4 |
| `python/packages/ag-ui/tests/ag_ui/test_snapshot_session.py` | 34 | 0 |

</details>

<details><summary>コミット (10 件)</summary>

- `74f3ed5` fix(ag-ui): dedupe client-replayed transcripts on resume (#8140)
- `3bb98c1` fix(ag-ui): keep resume seeding for empty messages
- `4b66801` fix(ag-ui): centralize resume message reconcile on ThreadSnapshotSession
- `e682021` fix(ag-ui): keep empty confirm_changes resumes unseeded
- `40a0733` refactor(ag-ui): fold reconcile_resume_messages into resume_seeded_me…
- `4b0f547` fix(ag-ui): restore resume_seeded prepend; fold #8140 tests
- `10827a5` test(ag-ui): type folded #8140 snapshot replay fixture for mypy
- `aeff82b` fix(ag-ui): collapse duplicate reconstruct on generic resume
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#8380](https://github.com/microsoft/agent-framework/pull/8380) — Python: stabilize Hyperlight output cleanup test

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python`
- 変更行数: +6 / -3
- マージ日時 (UTC): `2026-09-14 23:34:18`

**変更概要**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 6 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `f46f603` Python: stabilize Hyperlight output cleanup test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#8337](https://github.com/microsoft/agent-framework/pull/8337) — Python: Fix streamed parallel tool calls merging into the wrong call

- 作者: cr-sbarbouche / 状態: MERGED
- ラベル: `python`
- 変更行数: +151 / -6
- マージ日時 (UTC): `2026-09-14 22:44:43`

**変更概要**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_types.py` | 43 | 6 |
| `python/packages/core/tests/core/test_types.py` | 108 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `2f3ae61` Python: fix streamed parallel tool calls merging into the wrong call
- `3467e10` Python: don't let a tagged call absorb into an untagged trailing item
- `173add7` Python: don't merge a reused call_id into an already-identified call

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#7815](https://github.com/microsoft/agent-framework/pull/7815) — .NET: expose OpenTelemetryAgent.DefaultSourceName

- 作者: YashvantHange / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +62 / -8
- マージ日時 (UTC): `2026-09-14 13:53:10`

**変更概要**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0003-agent-opentelemetry-instrumentation.md` | 24 | 2 |
| `dotnet/src/Microsoft.Agents.AI/OpenTelemetryAgent.cs` | 19 | 4 |
| `dotnet/src/Microsoft.Agents.AI/OpenTelemetryAgentBuilderExtensions.cs` | 3 | 2 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net472/PublicAPI.Unshipped.txt` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/netstandard2.0/PublicAPI.Unshipped.txt` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/OpenTelemetryAgentTests.cs` | 11 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `48a3e97` .NET: expose OpenTelemetryAgent.DefaultSourceName
- `e9d0aa3` .NET: read DefaultSourceName at run time instead of inlining it
- `2a44f9f` .NET: document that AddSource and the agent source name must match
- `496a212` Merge remote-tracking branch 'upstream/main' into dotnet-expose-otel-…
- `4d1f886` .NET: mark OpenTelemetryAgent.DefaultSourceName experimental
- `6e73464` Merge remote-tracking branch 'upstream/main' into dotnet-expose-otel-…
- `3a72b50` .NET: declare DefaultSourceName in the public API baseline
- `4cd88d9` Merge branch 'main' into dotnet-expose-otel-default-source-name

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#8230](https://github.com/microsoft/agent-framework/pull/8230) — Python: Clean Hyperlight output files after execution

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +515 / -62
- マージ日時 (UTC): `2026-09-14 09:33:58`

**変更概要**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hyperlight/agent_framework_hyperlight/_execute_code_tool.py` | 182 | 44 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 333 | 18 |

</details>

<details><summary>コミット (7 件)</summary>

- `b05e413` Python: Clean Hyperlight output files after execution
- `d0396b9` Python: Bound Hyperlight output cleanup
- `fbdc24f` Python: Replace sandboxes after cleanup failures
- `e1e474c` Merge branch 'main' into congenial-robot
- `c20251b` Merge remote-tracking branch 'upstream/main' into congenial-robot
- `4d8035e` Python: Isolate delayed Hyperlight output
- `19f634d` Python: Stabilize Hyperlight cleanup tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#8279](https://github.com/microsoft/agent-framework/pull/8279) — Python: ag-ui improvements

- 作者: moonbox3 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +3923 / -741
- マージ日時 (UTC): `2026-09-14 09:33:58`

**変更概要**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 37 | 0 |
| `python/packages/ag-ui/README.md` | 6 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_a2ui/_agent.py` | 383 | 95 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 303 | 58 |
| `python/packages/ag-ui/agent_framework_ag_ui/_approval_execution.py` | 189 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_approval_lifecycle.py` | 64 | 5 |
| `python/packages/ag-ui/tests/ag_ui/test_a2ui.py` | 919 | 4 |
| `python/packages/ag-ui/tests/ag_ui/test_approval_lifecycle.py` | 25 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 1997 | 579 |

</details>

<details><summary>コミット (9 件)</summary>

- `2cfbd13` Python: preserve policy on AG-UI approval resume
- `e632fa4` Python: record AG-UI approval enforcement decisions
- `910ff9b` Python: enforce Agent policy in A2UI mixed batches
- `701574c` Python: block disabled AG-UI approval resumes
- `316052d` Python: preserve disabled mixed approval batches
- `b6aa117` Python: maintenance updates
- `51c6117` Python: maintenance follow-up
- `df87ea0` Python: refine integration handling
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Python: fix(ag-ui): dedupe client-replayed transcripts on resume」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8288 | Python: allow middleware to repair function arguments | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8288> |
| #8235 | Python: Keep tool diagnostics internal by default | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8235> |
| #8185 | Python: Add Azure DocumentDB vector store connector | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8185> |
| #8186 | Python: Add Azure Cosmos DB NoSQL vector store connector | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8186> |
| #8362 | Improve issue triage | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8362> |
| #8258 | Python: register built-in orchestration types for checkpoint restore | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8258> |
| #8287 | Python: Fix WorkflowAgent non-streaming return type | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8287> |
| #8312 | Python: fix: give the GroupChat orchestrator agent the workflow run kwargs | shoemoney | <https://github.com/microsoft/agent-framework/pull/8312> |
| #8323 | Python: docs: fix 'rather then' typo in CODING_STANDARD | mrchatam | <https://github.com/microsoft/agent-framework/pull/8323> |
| #8331 | Python: await Task and Future sources in ResponseStream | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8331> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8378 | Python: Improve skill loading validation | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8378> |
| PR | #8372 | [BREAKING] Python: Add request-scoped Foundry agent factories | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8372> |
| PR | #8377 | .NET: Temporarily skip flaky steering harness session reuse test | open | Copilot | <https://github.com/microsoft/agent-framework/pull/8377> |
| PR | #8375 | .NET: [BREAKING] Improve replay support with Approval Binding | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8375> |
| PR | #8364 | Python: emit assistant text in AG-UI when response_format is a JSON Schema mapping | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8364> |
| PR | #8370 | .NET/Python: Add more content types to purview handling | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8370> |
| PR | #8373 | Python: close open Workflow AG-UI tool calls before approval interrupt | open | leilei3167 | <https://github.com/microsoft/agent-framework/pull/8373> |
| PR | #8371 | [BREAKING] Python: Make HTTP cookie persistence explicit | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8371> |
| PR | #8368 | Python: Sanitize workflow error messages | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8368> |
| PR | #8363 | Python: perf(foundry-hosting): parallelize pre-model storage reads | open | harsheet-shah | <https://github.com/microsoft/agent-framework/pull/8363> |
| PR | #8366 | Python: Preserve MessageText values during formula preprocessing | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8366> |
| PR | #8367 | [BREAKING] Python: Adjust A2A client defaults | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8367> |
| PR | #8369 | [BREAKING] Python: Disable response-cookie persistence in AG-UI clients | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8369> |
| PR | #3181 | Initial draft of guidance for teams implementing a language port | closed | markwallace-microsoft | <https://github.com/microsoft/agent-framework/pull/3181> |
| PR | #5908 | .NET: fix(aspire-devui): ship Microsoft.Agents.AI.DevUI as a transitive dependency | closed | jluocsa | <https://github.com/microsoft/agent-framework/pull/5908> |
| PR | #6778 | .NET: Enable function approval response content DevUI Extension | closed | Kumima | <https://github.com/microsoft/agent-framework/pull/6778> |
| PR | #8349 | Python: fix(workflows): resolve postponed annotations in the response-handler introspection path | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8349> |
| PR | #8333 | Python: fix(python): stop executor named `__global__` from colliding with the global kwargs slot | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8333> |
| PR | #8314 | Python: fix(orchestrations): forward workflow run kwargs to the GroupChat orchestrator | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8314> |
| PR | #8360 | Python: Fix prepend_instructions_to_messages inverting instruction order on partial dedup | closed | Sanjays2402 | <https://github.com/microsoft/agent-framework/pull/8360> |
| Issue | #8365 | perf(foundry-hosting): pre-model storage reads run sequentially in ResponsesHostServer._handle_inner_agent | open | harsheet-shah | <https://github.com/microsoft/agent-framework/issues/8365> |
| Issue | #8379 | .NET: [Bug]: Hosted agent toolbox consent link is bound to the container's managed identity, so sign-in fails with "Code <id> not found" | open | edumuellerFSL | <https://github.com/microsoft/agent-framework/issues/8379> |
| Issue | #8374 | .NET: [Bug]: AGUI BaseEventJsonConverter ignores DefaultIgnoreCondition, emitting explicit `null` for optional event properties | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8374> |
| Issue | #8376 | .NET: Stabilize steering harness session reuse test | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8376> |
| Issue | #8140 | Python: [Bug]: AG-UI resume duplicates the interrupted turn when the client replays its transcript | closed | okisdev | <https://github.com/microsoft/agent-framework/issues/8140> |
| Issue | #8302 | When a hired agent doesn’t deliver — has that happened to you? | closed | frankgrowley-droid | <https://github.com/microsoft/agent-framework/issues/8302> |
| Issue | #8336 | Python: [Bug]: Streamed parallel tool calls get merged into the wrong call when their argument deltas interleave | closed | cr-sbarbouche | <https://github.com/microsoft/agent-framework/issues/8336> |
| Issue | #6452 | .NET: [Bug]: Microsoft.Agents.AI.OpenTelemetryConsts is internal | closed | viul-sc | <https://github.com/microsoft/agent-framework/issues/6452> |
| Issue | #7588 | Python: [Bug]: function-call arguments are validated before any middleware runs, so a model that deviates from the declared argument schema cannot be repaired at a supported seam | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7588> |
| Issue | #7789 | Python: Built-in group chat message types are rejected during checkpoint restore | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/7789> |
| Issue | #8286 | Python: [Bug]: WorkflowAgent.run(stream=False) declares ResponseStream instead of Awaitable[AgentResponse] | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8286> |
| Issue | #8304 | Python: [Bug]: GroupChat orchestrator agent.run() drops function_invocation_kwargs / client_kwargs | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8304> |
| Issue | #8330 | Python: [Bug]: ResponseStream rejects Task and Future stream sources | closed | Shy7777 | <https://github.com/microsoft/agent-framework/issues/8330> |
