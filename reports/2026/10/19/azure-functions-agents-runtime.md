# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | larohra |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

実行時 tool の namespace と sandbox endpoint の整理 (#271)、tool authoring を harness ごとの差から切り離す正規化 (#269) が続けてマージされ、MAF / Copilot SDK 間の共通化が進みました。
どちらも複数の runtime / harness 境界に関わる変更です。カスタム tool 登録や namespace を直接参照する利用者は、新しい名前解決・承認動作と移行要否を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#271](https://github.com/Azure/azure-functions-agents-runtime/pull/271) — Namespace runtime workflow and sandbox tools

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1093 / -226
- マージ日時 (UTC): `2026-10-16 21:33:26`

**変更概要**

runtime workflow tool と sandbox tool の命名規則を namespace 化し、runtime が提供する機能を区別しやすくします。
tool name の検証、capability 登録、hosted skill app、Copilot preview harness、sandbox endpoint helper などを更新し、workflow / observability の文書とサンプルも追随しています。
runtime tool を登録・許可・呼び出す agent と、MAF / Copilot の harness 統合が影響範囲です。

<details><summary>変更ファイル (43 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 11 | 10 |
| `docs/front-matter-spec.md` | 29 | 3 |
| `docs/observability.md` | 2 | 2 |
| `docs/workflows.md` | 30 | 25 |
| `eng/scripts/generate_dynamic_workflow_gifs.py` | 2 | 1 |
| `samples/copilot-preview/README.md` | 1 | 1 |
| `samples/daily-tech-news-email/README.md` | 2 | 2 |
| `samples/workflow-incident-triage/README.md` | 4 | 4 |
| `samples/workflow-retry-policy/src/main.agent.md` | 1 | 1 |
| `src/azure_functions_agents/_hosted_skill_app.py` | 14 | 0 |
| `src/azure_functions_agents/_runtime_tool_names.py` | 30 | 0 |
| `src/azure_functions_agents/app.py` | 12 | 0 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_preview.py` | 22 | 18 |
| `src/azure_functions_agents/public/index.html` | 2 | 2 |
| `src/azure_functions_agents/registration/capabilities.py` | 41 | 6 |
| _... 他 28 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `6f67198` Namespace runtime workflow and sandbox tools
- `a928a43` Simplify runtime tool naming documentation
- `4c704ab` Simplify runtime tool comments
- `dfa1216` Fix runtime tool namespace validation
- `4135be0` Fix workflow gif tool label
- `efc2e09` Type and colocate sandbox endpoint helpers
- `04816e7` Merge origin/main into runtime-tool-namespace

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_runtime_tool_names.py` に tool 名処理を集約し、capability registration に namespace validation を導入しています。sandbox endpoint helper と hosted skill app の追加も含みます。tool 名の形式・許可判定が変わるため、旧名を直接参照する呼び出し元との互換性を確認してください。

**既存利用者への影響**

runtime tool 名を設定、allowlist、workflow から直接指定している利用者は、namespace 付きの新しい名前と validation 条件に合わせて更新してください。既定 tool 呼び出しだけの利用者も、既存サンプルとの整合を確認してください。

### [#269](https://github.com/Azure/azure-functions-agents-runtime/pull/269) — Normalize tool authoring before harness adaptation

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1143 / -515
- マージ日時 (UTC): `2026-10-16 20:12:17`

**変更概要**

tool 作成方法を harness 固有の変換処理から分離し、利用者が定義した callable を共通形式に正規化してから各 agent harness に渡します。
tool descriptor / discovery / function tool の処理と、approval mode の定数・optional tool の正規化を整理し、Agent Framework と Copilot SDK の runner 境界を維持しています。
両 harness を使う tool author と runtime の tool discovery / approval 機構が対象です。

<details><summary>変更ファイル (38 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 4 | 0 |
| `README.md` | 17 | 4 |
| `docs/architecture.md` | 35 | 18 |
| `docs/frds/0009-copilot-sdk-harness.md` | 28 | 14 |
| `docs/front-matter-spec.md` | 15 | 7 |
| `src/azure_functions_agents/__init__.py` | 2 | 0 |
| `src/azure_functions_agents/_function_tool.py` | 38 | 46 |
| `src/azure_functions_agents/_tool_descriptor.py` | 42 | 32 |
| `src/azure_functions_agents/discovery/tools.py` | 31 | 20 |
| `src/azure_functions_agents/harness/_agent_runner.py` | 6 | 6 |
| `src/azure_functions_agents/harness/agent_framework/_maf_execution.py` | 15 | 16 |
| `src/azure_functions_agents/harness/agent_framework/_maf_mcp.py` | 2 | 1 |
| `src/azure_functions_agents/harness/agent_framework/_maf_runner.py` | 5 | 5 |
| `src/azure_functions_agents/harness/agent_framework/_maf_tools.py` | 12 | 12 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_execution.py` | 11 | 6 |
| _... 他 23 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `a7fd91a` Extract SDK tool authoring support
- `2005b86` Use ordinary callable adaptation for Copilot tools
- `0ed5826` Keep harness decisions behind runner boundaries
- `fa7d595` Normalize authored callables before harness adaptation
- `96e1762` Centralize typed tool approval mode constants
- `f911b9f` Unify optional tool normalization and approval enum
- `9f928f8` Merge main and reconcile shared tool normalization
- `f4c9407` Merge main and reconcile tool normalization
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_function_tool.py` と `_tool_descriptor.py` に callable / descriptor の共通化が入り、`__init__.py` の公開 export も追加されています。approval mode と optional tool normalization の内部表現を統一していますが、細かな署名変更は一覧だけでは特定できないため、公開 API を直接参照する実装は差分で確認してください。

**既存利用者への影響**

標準的な tool 定義の利用者には移行不要と見られますが、harness 固有の adapter、tool descriptor、approval enum を直接利用するカスタム実装は新しい正規化 API に合わせた確認が必要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #274 | Add runtime-owned Copilot GenAI invocation spans | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/274> |
| PR | #273 | Run existing E2E suite across MAF and Copilot | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/273> |
| PR | #272 | Rename evaluator package | open | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/272> |
