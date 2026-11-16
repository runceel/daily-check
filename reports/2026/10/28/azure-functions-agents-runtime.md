# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | larohra, harshivcodes, hallvictoria |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Durable agent loop 向け checkpoint／reference の契約と実装基盤が追加され（PR #282）、Copilot harness も保存済み checkpoint を再利用しやすい形へ整理されました（PR #277）。Copilot の GenAI 呼び出しに runtime 所有の telemetry span を導入し、MAF／Copilot 共通の E2E 検証も整備されています。機能は preview runtime の進化段階にあり、既存利用者は新しい永続化・観測契約と package version を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#282](https://github.com/Azure/azure-functions-agents-runtime/pull/282) — Add Durable checkpoint and reference contracts

- 作者: harshivcodes / 状態: MERGED
- ラベル: —
- 変更行数: +3284 / -8
- マージ日時 (UTC): `2026-10-27 22:16:46`

**変更概要**

Durable agent loop の再開に必要な checkpoint と参照データの契約・保存機構を追加しています。新しい reference store、harness checkpoint 実装と、それらを検証する大規模なテストを導入し、ネストした外部作業の上限や durable reference の型も強化しました。Durable 実行を構築する利用者が、保存・再開状態を扱うための基盤です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 11 | 0 |
| `docs/frds/0013-harness-neutral-durable-agent-loop.md` | 61 | 8 |
| `src/azure_functions_agents/durable/__init__.py` | 1 | 0 |
| `src/azure_functions_agents/durable/_reference_store.py` | 724 | 0 |
| `src/azure_functions_agents/harness/_checkpoint.py` | 1066 | 0 |
| `tests/test_checkpoint.py` | 914 | 0 |
| `tests/test_reference_store.py` | 507 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `382ba25` Add Durable checkpoint and reference contracts
- `b5771d6` Enforce nested external work limits
- `f7d3095` Strengthen Durable reference types
- `bc8e3f2` Harden durable checkpoint contracts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`azure_functions_agents.durable` に公開された reference store と、`harness._checkpoint` の checkpoint 契約・実装が追加されています。コミットでは durable reference の型を強化し、ネストした外部作業の制限も明示化しています。既存 API のシグネチャ変更は一覧からは確認できませんが、新しい永続化契約に合わせる際は checkpoint/reference の形式を確認してください。

**既存利用者への影響**

既存の非 durable 実行に移行は不要です。checkpoint を利用・保存する実装は新しい durable reference と checkpoint 契約に合わせる必要があり、保存データの互換性を導入前に確認してください。

### [#277](https://github.com/Azure/azure-functions-agents-runtime/pull/277) — Refactor Copilot preparation for checkpoint reuse

- 作者: harshivcodes / 状態: MERGED
- ラベル: —
- 変更行数: +360 / -88
- マージ日時 (UTC): `2026-10-23 21:05:53`

**変更概要**

Copilot SDK harness の入力準備を共通化し、prepared inputs を複数 harness 間で再利用できるように整理しています。Copilot runner の準備処理と direct tool flattening をリファクタリングし、checkpoint reuse のためのテストを追加しました。Copilot／MAF の実行準備を扱う内部経路に影響します。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/harness/_prepared_inputs.py` | 61 | 0 |
| `src/azure_functions_agents/harness/agent_framework/_maf_execution.py` | 3 | 11 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_runner.py` | 188 | 74 |
| `src/azure_functions_agents/runner.py` | 2 | 3 |
| `tests/test_copilot_runner.py` | 106 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `96fc0a2` refactor: share Copilot preparation for checkpoint reuse
- `bb8d321` refactor: clarify Copilot direct tool flattening
- `d940cf4` refactor: share prepared inputs across harnesses

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`harness._prepared_inputs` に共通の prepared-inputs 構造を追加し、Copilot runner と MAF execution の内部呼び出しを変更しています。公開関数シグネチャの変更は示されておらず、主に checkpoint 再利用に向けた内部リファクタリングです。

**既存利用者への影響**

外部 API 利用者に移行は不要です。独自 harness を内部実装に結び付けている場合は、prepared inputs の生成・受け渡しが整理された点を確認してください。

### [#280](https://github.com/Azure/azure-functions-agents-runtime/pull/280) — build: update Azure Functions Agent Runtime version to 0.1.0b17

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-10-23 15:30:48`

**変更概要**

Azure Functions Agent Runtime の Python package version を `0.1.0b17` に更新しています。変更は package metadata のバージョン値 1 行に限られ、機能コードの追加はありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/__init__.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b39e497` build: update Azure Functions Agent Runtime version to 0.1.0b17

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`azure_functions_agents.__init__` の package version 表記のみを更新し、API シグネチャやランタイム実装の変更はありません。

**既存利用者への影響**

移行は不要です。新バージョンを利用する場合は prerelease `0.1.0b17` を明示して更新してください。

### [#274](https://github.com/Azure/azure-functions-agents-runtime/pull/274) — Add runtime-owned Copilot GenAI invocation spans

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1301 / -138
- マージ日時 (UTC): `2026-10-22 21:59:37`

**変更概要**

Copilot harness の GenAI 呼び出しを runtime が所有する invocation span として計測し、観測データの境界と共通属性を整理しています。Copilot execution／observability 層に span 設定を追加し、診断・ドキュメント・テストも更新しました。アプリ側で重複計測せず、呼び出し単位の GenAI telemetry を収集しやすくします。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 14 | 6 |
| `docs/copilot-preview-operations.md` | 49 | 11 |
| `docs/frds/0009-copilot-sdk-harness.md` | 50 | 4 |
| `docs/observability.md` | 44 | 12 |
| `src/azure_functions_agents/_agent_run_diagnostics.py` | 41 | 19 |
| `src/azure_functions_agents/_observability.py` | 23 | 0 |
| `src/azure_functions_agents/_source_marker.py` | 2 | 2 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_execution.py` | 20 | 5 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_observability.py` | 46 | 0 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_runner.py` | 9 | 5 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_session_local.py` | 1 | 4 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_session_paths.py` | 2 | 1 |
| `src/azure_functions_agents/registration/_handlers.py` | 4 | 3 |
| `src/azure_functions_agents/registration/endpoints.py` | 3 | 2 |
| `tests/test_agent_run_diagnostics.py` | 37 | 0 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `118bc1f` Add runtime-owned Copilot GenAI invocation spans
- `f34ef65` Address GenAI telemetry review feedback
- `7e9b35b` Merge main into larohra/super-eureka
- `392fe89` Fix explicit telemetry ownership and UTF-8 summaries
- `b33f35f` Reuse a constant for agent response telemetry
- `9cfbc27` Make Copilot leaf timeout cleanup test deterministic

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

runtime 所有 span／Copilot observability helper と agent-run diagnostics の内部実装が追加・変更され、telemetry ownership と response 属性の扱いが明確化されました。公開関数のシグネチャ変更は一覧からは確認できず、主な変更は tracing／diagnostics の追加です。

**既存利用者への影響**

基本的に移行不要ですが、アプリ側で同じ GenAI invocation を独自 span 計測している場合は重複計測を確認してください。運用者は更新後の telemetry 属性とデータプライバシー設定を検証してください。

### [#273](https://github.com/Azure/azure-functions-agents-runtime/pull/273) — Run existing E2E suite across MAF and Copilot

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1231 / -115
- マージ日時 (UTC): `2026-10-22 15:45:35`

**変更概要**

既存の E2E suite を Microsoft Agent Framework と Copilot の両 harness で実行できるようにし、実行・診断・依存準備を整えています。Copilot telemetry の継続、session filesystem、Function host、registration endpoint のテストも更新され、複数 harness 間の動作差を検出しやすくします。主な影響範囲はリポジトリの CI と E2E 検証です。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CONTRIBUTING.md` | 22 | 0 |
| `docs/architecture.md` | 24 | 0 |
| `docs/copilot-preview-operations.md` | 15 | 3 |
| `docs/frds/0009-copilot-sdk-harness.md` | 130 | 15 |
| `docs/frds/0011-hosted-skill-binding.md` | 6 | 3 |
| `docs/front-matter-spec.md` | 5 | 2 |
| `docs/observability.md` | 7 | 0 |
| `eng/scripts/install_e2e_dependencies.py` | 36 | 4 |
| `eng/templates/official/jobs/e2e-tests.yml` | 15 | 4 |
| `integrations/vally-executor-azure-functions/package-lock.json` | 2 | 2 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_execution.py` | 39 | 18 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_runtime.py` | 1 | 1 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_session_fs.py` | 16 | 1 |
| `src/azure_functions_agents/registration/endpoints.py` | 20 | 18 |
| `tests/endtoend/_func_host.py` | 57 | 2 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (36 件)</summary>

- `1042fda` Add Copilot event telemetry
- `cc7ba17` Refine Copilot telemetry review fixes
- `87996dc` Cover telemetry on chat session continuation
- `2e38cc1` Consolidate telemetry conventions
- `867223b` Fix remaining telemetry review gaps
- `6408d53` Add Copilot telemetry observability
- `d6824a4` Finalize Copilot telemetry review fixes
- `f5d3716` Align Copilot telemetry privacy
- _... 他 28 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルには E2E helper／CI workflow と Copilot execution・registration endpoint の実装およびテストが含まれます。記載された主目的は E2E coverage の拡張で、明示的な公開 API の破壊的変更は示されていません。

**既存利用者への影響**

本番利用者の移行は不要です。リポジトリ保守者は CI の E2E 依存関係と両 harness のテスト結果を確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #285 | Add Durable session authority and admission state | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/pull/285> |
| PR | #279 | feat: add `smart_retry` decorator | open | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/279> |
| PR | #283 | Fix Copilot specialist cleanup and PR report data flow | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/283> |
| PR | #278 | build: update Azure Functions Agent Runtime version to 0.1.0b17 | closed | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/278> |
| Issue | #284 | Implement Durable Entity authority and admission state | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/issues/284> |
| Issue | #281 | Implement Durable Agent Loop checkpoint and reference foundation | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/issues/281> |
