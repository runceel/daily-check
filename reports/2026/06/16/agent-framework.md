# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-15 00:59:51 〜 2026-06-16 04:07:33 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 12 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 8 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | eavanvalkenburg, giles17, rogerbarreto, westey-m |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6521](https://github.com/microsoft/agent-framework/pull/6521) — .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules （PR / open / westey-m）
  .NET の FileAccessProvider を自動承認ルールで使う構成は、承認必須化後に既存のツール呼び出しが止まらないか確認が必要です。
- **⚠ 破壊的変更** [#6488](https://github.com/microsoft/agent-framework/pull/6488) — Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters （PR / open / giles17）
  Python の FileSkillsSource でディレクトリ探索範囲やフィルター条件に依存している利用者は、depth / predicate ベースの新しい探索設定へ合わせる必要があります。
- **⚠ 破壊的変更** [#6476](https://github.com/microsoft/agent-framework/pull/6476) — Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search （PR / merged / westey-m）
  Python の FileAccess tools を使うエージェントは、ディレクトリ発見と再帰検索の挙動が .NET 側と揃うため、既存のファイル参照・検索結果の前提を回帰確認してください。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `create_checkpoint` to workflow （PR / open / TaoChenOSU）
  Python workflow の checkpoint を独自実装・永続化している利用者は、`create_checkpoint` 追加に伴う実装契約の変更を追う必要があります。

## このリポジトリの要点

今回の中心は Python / .NET の FileAccess と承認フローの整合です。マージ済みの [#6476](https://github.com/microsoft/agent-framework/pull/6476) は Python FileAccess tools のディレクトリ発見・再帰検索を .NET 側へ寄せ、オープン中の [#6521](https://github.com/microsoft/agent-framework/pull/6521) / [#6488](https://github.com/microsoft/agent-framework/pull/6488) も同じ領域の破壊的変更候補です。
.NET では ClientHeadersAgent のヘッダー伝播修正、Python では OTel usage 属性修正と Ollama サンプル修正も入り、実行時の観測性とサンプルの信頼性が改善されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6476](https://github.com/microsoft/agent-framework/pull/6476) — Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +351 / -42
- マージ日時 (UTC): `2026-06-15 06:58:18`

**変更概要**

Python の FileAccess tools を .NET 実装に合わせ、ディレクトリ発見と再帰検索を扱えるようにした破壊的変更です。
`_file_access.py` の実装が大きく更新され、テストではディレクトリ探索・検索条件・戻り値の期待が追加されています。
サンプル側も新しい呼び出し形に合わせて修正されており、Python harness でファイル参照を使うエージェント全般が影響範囲です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 2 | 2 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 182 | 30 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 152 | 7 |
| `python/samples/02-agents/context_providers/file_access_data_processing/data_processing.py` | 4 | 2 |
| `python/samples/02-agents/harness/console/observers/planning_models.py` | 11 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `4c10490` Align FileAccess tools with .Net; add directory discovery and recursi…
- `e18bc5a` Fix choices field description: spacing, line length, grammar
- `9a4081c` Address PR comments
- `9673c26` Merge branch 'main' into python-file-access-align

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: FileAccess tools の探索・検索セマンティクスが .NET 互換へ寄せられ、従来の単純なファイル指定だけを前提にした挙動から、ディレクトリ発見と再帰検索を含む形へ変わります。
`agent_framework/_harness/_file_access.py` と関連テストが主な変更点で、サンプルも `choices` 説明や tool 設定の形を新挙動に合わせています。

**既存利用者への影響**

Python harness で FileAccess tools を使っている場合は、既存プロンプトやテストが返されるファイル候補・検索結果の差分に依存していないか確認してください。
明示的なファイル単位の利用だけであれば大きな移行は限定的ですが、ディレクトリ単位の探索を許可している構成は回帰テストが必要です。

### [#6473](https://github.com/microsoft/agent-framework/pull/6473) — Python: Improve PR template and breaking-change label automation

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `.NET`
- 変更行数: +453 / -56
- マージ日時 (UTC): `2026-06-15 11:39:40`

**変更概要**

PR テンプレートとラベル付けワークフローを整理し、破壊的変更ラベルの付与を PR タイトル接頭辞の判定へ統合した開発プロセス改善です。
`.github/scripts/title_prefix.js` と複数の CI workflow が追加・更新され、.NET / Python それぞれに pull-request skill へのリンクも追加されています。
ランタイム機能ではなく、コントリビューターが PR を作る際のチェックとラベル自動化が主な影響範囲です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/pull_request_template.md` | 25 | 5 |
| `.github/scripts/title_prefix.js` | 253 | 0 |
| `.github/skills/pull-requests/SKILL.md` | 116 | 0 |
| `.github/workflows/dotnet-build-and-test.yml` | 4 | 0 |
| `.github/workflows/dotnet-format.yml` | 4 | 0 |
| `.github/workflows/label-pr.yml` | 19 | 1 |
| `.github/workflows/label-title-prefix.yml` | 9 | 50 |
| `.github/workflows/python-code-quality.yml` | 4 | 0 |
| `.github/workflows/python-lab-tests.yml` | 4 | 0 |
| `.github/workflows/python-merge-tests.yml` | 4 | 0 |
| `.github/workflows/python-tests.yml` | 4 | 0 |
| `dotnet/.github/skills/pull-requests` | 1 | 0 |
| `dotnet/AGENTS.md` | 4 | 0 |
| `python/.github/skills/pull-requests` | 1 | 0 |
| `python/AGENTS.md` | 1 | 0 |

</details>

<details><summary>コミット (11 件)</summary>

- `24b1aa2` Improve PR template and breaking-change label automation
- `a973acc` Add pull-requests agent skill with dotnet/python links
- `02331fd` Fold breaking-change labeling into label-pr workflow
- `55584b3` Address PR title prefix review feedback
- `25bd352` Pin patched MessagePack for .NET restore
- `66cd461` Revert MessagePack central pin
- `dc409e1` Move title prefix tests out of tracked GitHub tests
- `a2d1d9e` Exclude skill docs from CI path filters
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API の変更はありません。
PR タイトルの prefix 判定と breaking-change ラベル付与を CI 側で扱うためのスクリプト・workflow・skill 文書が追加され、CI path filter もドキュメント更新を過剰に走らせないよう調整されています。

**既存利用者への影響**

Agent Framework の利用者に移行作業はありません。
コントリビューターは新しい PR テンプレートとタイトル接頭辞のルールに沿わないと、ラベル付けや CI チェックで指摘を受ける可能性があります。

### [#6517](https://github.com/microsoft/agent-framework/pull/6517) — .NET: Restore ambient client-header scope between non-streaming ClientHeadersAgent runs

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +84 / -5
- マージ日時 (UTC): `2026-06-15 13:37:32`

**変更概要**

.NET の `ClientHeadersAgent` で、非ストリーミング実行を複数回行った際に ambient client-header scope が次の実行へ正しく復元されるようにした修正です。
Foundry クライアントへのリクエストに per-run のヘッダーが載ることをテストで確認しており、状態が残る・消えるタイミングに依存した不具合を防ぎます。
影響範囲は `Microsoft.Agents.AI.Foundry` の ClientHeaders 利用時です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry/ClientHeadersAgent.cs` | 7 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.UnitTests/ClientHeadersExtensionsTests.cs` | 77 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `6e059f3` Restore ambient client-header scope between non-streaming runs (#6516)
- `27a0b38` Assert per-run on wire instead of brittle exact request count

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はありません。
`ClientHeadersAgent.cs` の scope 復元処理が修正され、ユニットテストは「リクエスト回数」ではなく各実行で実際に送られるヘッダーを検証する形へ強化されています。

**既存利用者への影響**

移行作業は不要です。
ただしヘッダー伝播の不具合をワークアラウンドしていた場合は、修正後に二重設定や不要な scope 管理が残っていないか確認するとよいです。

### [#6493](https://github.com/microsoft/agent-framework/pull/6493) — Python: Fix Python OTel usage detail attributes

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +239 / -23
- マージ日時 (UTC): `2026-06-15 07:16:44`

**変更概要**

Python クライアントの OpenTelemetry usage detail 属性を修正し、token usage などの観測データがより正しく span に載るようにした変更です。
core の `_types.py` / `observability.py` と、Anthropic / OpenAI クライアント実装・テストが更新されています。
LLM 利用量を OTel 経由で集計している環境で、欠落や属性名の不整合が改善されます。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/anthropic/agent_framework_anthropic/_chat_client.py` | 2 | 0 |
| `python/packages/anthropic/tests/test_anthropic_client.py` | 21 | 0 |
| `python/packages/core/agent_framework/_types.py` | 6 | 0 |
| `python/packages/core/agent_framework/observability.py` | 30 | 14 |
| `python/packages/core/tests/core/test_observability.py` | 97 | 3 |
| `python/packages/openai/agent_framework_openai/_chat_client.py` | 10 | 4 |
| `python/packages/openai/agent_framework_openai/_chat_completion_client.py` | 4 | 2 |
| `python/packages/openai/tests/openai/test_openai_chat_client.py` | 44 | 0 |
| `python/packages/openai/tests/openai/test_openai_chat_completion_client.py` | 25 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `64680f7` fix python otel usage detail attributes
- `ed6c77c` address usage detail review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の大きな破壊的変更は見当たりません。
usage detail を表す型と observability 層の属性出力が補強され、OpenAI / Anthropic の各クライアントが同じ属性モデルへ値を渡すよう調整されています。

**既存利用者への影響**

通常のアプリケーションコードに移行は不要です。
OTel span の属性名や token usage の有無を前提にダッシュボード・アラートを組んでいる場合は、修正後の属性セットで集計条件を確認してください。

### [#6480](https://github.com/microsoft/agent-framework/pull/6480) — Python: Fix ollama_chat_client.py sample: pass tools via options dict

- 作者: giles17 / 状態: MERGED
- ラベル: `python`
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-06-15 06:55:19`

**変更概要**

Ollama の Python サンプルで、tools を `get_response()` の直接引数ではなく options dict 経由で渡すよう修正した小規模なサンプル更新です。
さらに OllamaChatClient が期待する形に合わせ、tools をリストとして包む修正も含まれています。
ライブラリ本体ではなく、サンプルをそのまま実行した際の TypeError 回避が目的です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/02-agents/providers/ollama/ollama_chat_client.py` | 2 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `9a07d51` Fix ollama_chat_client.py sample: pass tools via options dict
- `33ea96b` Wrap tools in a list as expected by OllamaChatClient

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の追加・削除はありません。
サンプルコードが実際の `OllamaChatClient` の呼び出し契約に合わせて、`options` 内に tools を渡す形へ直されています。

**既存利用者への影響**

既存アプリで同じサンプル由来のコードを使っている場合は、tools の渡し方を options dict 経由に直してください。
ライブラリ利用者全体への強制移行ではありません。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6531 | .NET:  (Durable): bind MCP threadId to the current agent and guard cross-agent session dispatch | open | kshyju | <https://github.com/microsoft/agent-framework/pull/6531> |
| PR | #6530 | Bugfix for Declarative Workflow | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6530> |
| PR | #6528 | Python: Samples: deterministic action-boundary validation middleware (#5366) | open | eeee2345 | <https://github.com/microsoft/agent-framework/pull/6528> |
| PR | #6527 | Python: Bump prek from 0.4.3 to 0.4.5 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6527> |
| PR | #6526 | Python: Bump uv from 0.11.17 to 0.11.21 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6526> |
| PR | #6525 | Python: Bump ruff from 0.15.15 to 0.15.17 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6525> |
| PR | #6524 | Python: Bump pytest from 9.0.3 to 9.1.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6524> |
| PR | #6523 | .NET: Rebuild Hyperlight sandbox after tool registry updates | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6523> |
| PR | #6522 | Python: Integrate tool approval into the harness | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6522> |
| PR | #6521 | .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6521> |
| PR | #6520 | Python: Remove unsupported as_agent function_invocation_configuration | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6520> |
| PR | #6515 | Python: Capture context provider instructions in agent telemetry | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6515> |
| PR | #6504 | Python: pass Ollama sample tools through options | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6504> |
| PR | #6412 | Python: Update ollama samples | closed | alxxdev | <https://github.com/microsoft/agent-framework/pull/6412> |
| PR | #6391 | Build(deps-dev): Bump ruff from 0.15.15 to 0.15.16 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6391> |
| PR | #6390 | Build(deps-dev): Bump prek from 0.4.3 to 0.4.4 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6390> |
| PR | #6389 | Build(deps-dev): Bump uv from 0.11.17 to 0.11.19 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6389> |
| PR | #6322 | Python: Fix as_agent function invocation config | closed | puneetdixit200 | <https://github.com/microsoft/agent-framework/pull/6322> |
| Issue | #6533 | Python: [Bug]: DevUI sends a single Message to declarative workflow start executor that only accepts list[Message] -> "JoinExecutor cannot handle message of type Message" | open | SuperMarimoBros | <https://github.com/microsoft/agent-framework/issues/6533> |
| Issue | #6532 | .NET: LocalVariable Naming Convention in LocalEvaluation | open | XiongHaoTrigger | <https://github.com/microsoft/agent-framework/issues/6532> |
| Issue | #6529 | .NET: Feature request: Mimir memory connector (local-first, encrypted, 23 MCP tools) | open | tcconnally | <https://github.com/microsoft/agent-framework/issues/6529> |
| Issue | #6519 | .NET: [Feature]: Make AG-UI hosting (MapAGUI) transport-extensible – currently SSE-only despite the AGUI transport-agnostic spec | open | adamRoyd | <https://github.com/microsoft/agent-framework/issues/6519> |
| Issue | #6518 | .NET: Flaky SampleSmokeTest.Test_RunSample_Step5Async(InProcess_Concurrent) — "too low" vs "too high" guess mismatch | open | changjian-wang | <https://github.com/microsoft/agent-framework/issues/6518> |
| Issue | #6516 | .NET: Hardening: restore ambient client-header scope between non-streaming ClientHeadersAgent runs | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6516> |
| Issue | #6514 | .NET: [Bug] : arguments null  to  Error message is: 'NoneType' object has no attribute items | open | junkai-li | <https://github.com/microsoft/agent-framework/issues/6514> |
| Issue | #6513 | Python: [Bug]: HITL approval (approval_mode="always_require") result not persisted into AG-UI snapshot → provider 400 ("tool_call_ids did not have response messages") on next run | open | lordlinus | <https://github.com/microsoft/agent-framework/issues/6513> |
| Issue | #6411 | Python: [Bug]: ollama_chat_client.py sample passes tools as direct argument to get_response() causing TypeError | closed | alxxdev | <https://github.com/microsoft/agent-framework/issues/6411> |
| Issue | #5812 | Python: [Feature]: Run argument skills support | closed | supraano | <https://github.com/microsoft/agent-framework/issues/5812> |
| Issue | #5511 | Python: [Bug]: missing cached tokens on OTEL spans | closed | juliays | <https://github.com/microsoft/agent-framework/issues/5511> |
| Issue | #4969 | [Feature]: blanket tool approval | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4969> |
| Issue | #4007 | .NET: Ensure User Agent Tracking is working for Foundry Services | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/4007> |
