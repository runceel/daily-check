# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | harshivcodes, hallvictoria, larohra |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

対象期間は MAF/Copilot Harness の checkpoint 再利用と Durable Agent Loop の設計整理が中心です。Copilot hosted、multi-worker、テレメトリー観測も追加されています。
後続の PR #277 は Copilot preparation の checkpoint 再利用として継続中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#276](https://github.com/Azure/azure-functions-agents-runtime/pull/276) — Refactor MAF preparation for checkpoint reuse

- 作者: harshivcodes / 状態: MERGED
- ラベル: —
- 変更行数: +173 / -62
- マージ日時 (UTC): `2026-10-21 19:01:25`

**変更概要**

MAF の preparation 処理を execution から分離し、checkpoint 再利用時に再準備を行いやすくしています。Chat client の型境界も narrow し、option 型を保持する構成へ整理しています。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/harness/agent_framework/_maf_execution.py` | 100 | 35 |
| `tests/test_maf_execution.py` | 42 | 3 |
| `tests/test_runner_delegation.py` | 18 | 15 |
| `tests/test_runner_harness.py` | 6 | 4 |
| `tests/test_runner_streaming.py` | 7 | 5 |

</details>

<details><summary>コミット (5 件)</summary>

- `0d99439` refactor: separate MAF preparation from execution
- `329b32e` refactor: narrow MAF chat client type
- `ee43e1c` refactor: preserve MAF preparation boundaries
- `c0375e4` refactor: preserve MAF client option type
- `335b294` refactor: restore concrete MAF client boundary

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更ではなく、内部 `_maf_execution` の準備境界と type boundary をリファクタリングしています。破壊的変更はありません。

**既存利用者への影響**

外部利用者の移行作業は不要です。内部モジュールを直接利用する拡張は、準備／実行境界を確認してください。

### [#275](https://github.com/Azure/azure-functions-agents-runtime/pull/275) — docs: finalize harness-neutral Durable FRD

- 作者: harshivcodes / 状態: MERGED
- ラベル: —
- 変更行数: +7 / -5
- マージ日時 (UTC): `2026-10-20 22:27:43`

**変更概要**

Harness-neutral Durable Agent Loop の FRD を最終化し、設計内容を README から参照できる状態にしています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0013-harness-neutral-durable-agent-loop.md` | 6 | 4 |
| `docs/frds/README.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b8df371` docs: finalize harness-neutral Durable FRD

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API は変更せず、設計ドキュメントの内容を確定する変更です。

**既存利用者への影響**

実装利用者の移行作業はありません。今後の実装判断時に FRD を参照してください。

### [#266](https://github.com/Azure/azure-functions-agents-runtime/pull/266) — docs: propose harness-neutral Durable Agent Loop

- 作者: harshivcodes / 状態: MERGED
- ラベル: —
- 変更行数: +1086 / -0
- マージ日時 (UTC): `2026-10-20 16:36:19`

**変更概要**

Harness に依存しない Durable Agent Loop を提案し、continuation lifecycle、content by reference、prompt-only skill、sandbox dispatch を定義します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0013-harness-neutral-durable-agent-loop.md` | 1085 | 0 |
| `docs/frds/README.md` | 1 | 0 |

</details>

<details><summary>コミット (9 件)</summary>

- `1d8a3bd` docs: propose harness-neutral durable agent loop
- `a14bdbf` docs: link Durable Agent Loop FRD to PR
- `b1b8d2c` docs: store Durable content by reference
- `8f199d5` docs: define Durable continuation lifecycle
- `f5ff1bf` docs: share harness preparation across execution modes
- `6e166af` docs: support prompt-only skills in Durable V1
- `61dc525` docs: define Durable sandbox tool dispatch
- `b9c3eea` docs: clarify Durable terminal seed validation
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい FRD の追加が中心で、現行ランタイムの破壊的変更はありません。

**既存利用者への影響**

既存利用者は移行不要です。長期的な Durable Agent 実装や拡張を計画する開発者は提案仕様を確認してください。

### [#265](https://github.com/Azure/azure-functions-agents-runtime/pull/265) — Enable Copilot hosted and multi-worker execution

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1767 / -1313
- マージ日時 (UTC): `2026-10-19 22:09:53`

**変更概要**

Copilot Harness の hosted execution と複数 worker 実行を有効化し、Copilot event telemetry とプライバシー・観測性を整備しています。
README、architecture、workflow、getting-started、Copilot preview sample を更新し、運用上の前提も明確化しています。

<details><summary>変更ファイル (34 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 3 | 0 |
| `AGENTS.md` | 1 | 1 |
| `README.md` | 9 | 5 |
| `docs/architecture.md` | 27 | 18 |
| `docs/copilot-preview-operations.md` | 34 | 24 |
| `docs/frds/0009-copilot-sdk-harness.md` | 29 | 12 |
| `docs/front-matter-spec.md` | 3 | 3 |
| `docs/getting-started.md` | 1 | 1 |
| `docs/index.md` | 1 | 1 |
| `docs/workflows.md` | 3 | 3 |
| `pyproject.toml` | 1 | 1 |
| `samples/README.md` | 1 | 1 |
| `samples/copilot-preview/README.md` | 9 | 8 |
| `samples/copilot-preview/src/local.settings.template.json` | 0 | 1 |
| `src/azure_functions_agents/harness/_agent_runner.py` | 1 | 1 |
| _... 他 19 件_ | | |

</details>

<details><summary>コミット (27 件)</summary>

- `1042fda` Add Copilot event telemetry
- `cc7ba17` Refine Copilot telemetry review fixes
- `87996dc` Cover telemetry on chat session continuation
- `2e38cc1` Consolidate telemetry conventions
- `867223b` Fix remaining telemetry review gaps
- `6408d53` Add Copilot telemetry observability
- `d6824a4` Finalize Copilot telemetry review fixes
- `f5d3716` Align Copilot telemetry privacy
- _... 他 19 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Copilot Harness の実行経路と telemetry に変更を加えています。公開 API の削除はなく、破壊的変更ではありません。

**既存利用者への影響**

既存 Copilot preview 利用者は README と operations document を確認してください。hosted／multi-worker を使う場合のみホスト構成を追加します。

### [#272](https://github.com/Azure/azure-functions-agents-runtime/pull/272) — Rename evaluator package

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +4 / -5
- マージ日時 (UTC): `2026-10-19 18:02:20`

**変更概要**

Evaluator パッケージ名を Azure スコープへ変更し、npm publish 関連設定と package lock を更新しています。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/templates/official/steps/npm-publish-dry-run.yml` | 1 | 1 |
| `integrations/vally-executor-azure-functions/.npmrc` | 0 | 1 |
| `integrations/vally-executor-azure-functions/package-lock.json` | 2 | 2 |
| `integrations/vally-executor-azure-functions/package.json` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `d8433f3` Rename evaluator package to Azure scope
- `6288207` Rename hosted skills evaluator package
- `ea225de` Merge branch 'main' into hallvictoria/azure-evaluator-package

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

パッケージ名のみ変更されています。公開 API のシグネチャ変更はありません。

**既存利用者への影響**

旧パッケージ名を参照する導入環境は新しい Azure スコープ名へ更新してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #277 | Refactor Copilot preparation for checkpoint reuse | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/pull/277> |
