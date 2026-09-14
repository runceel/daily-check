# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | larohra, TsuyoshiUshio |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#202](https://github.com/Azure/azure-functions-agents-runtime/issues/202) — Migrate workflow client operations to native Durable APIs （Issue / open / TsuyoshiUshio）
workflow client 操作を利用する開発者は、ネイティブ Durable APIs への移行方針と期限を確認し、独自ラッパーの依存を減らしてください。

## このリポジトリの要点

ACA Sandbox の本番資格検証、セッション受付・結果処理、リージョン必須化が進み、デプロイ済み環境の信頼性が強化されました。  
DTS workflow の表示名も追加され、動的ワークフローの運用・診断性が向上しています。  
一方、workflow client 操作はネイティブ Durable APIs への移行が必要になる見込みです（#202）。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#196](https://github.com/Azure/azure-functions-agents-runtime/pull/196) — Add deployed ACA qualification assets

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +4048 / -136
- マージ日時 (UTC): `2026-09-04 18:53:58`

**変更概要**

デプロイ済み Azure Container Apps（ACA）を対象に、agent、cold start、load、loss の資格検証資産とパイプラインを追加しました。  
固定された ACA fixture、provenance、authoritative clock、retention を検証し、未対応の N=100 資格試験は明示的に拒否します。  
本番相当の ACA Sandbox 運用を検証する CI/live test とドキュメントが対象です。

<details><summary>変更ファイル (32 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0008-aca-sandbox-session-runtime.md` | 70 | 8 |
| `eng/constraints/README.md` | 23 | 0 |
| `eng/constraints/aca-fixture-requirements.txt` | 103 | 0 |
| `eng/scripts/README.md` | 37 | 0 |
| `eng/scripts/aca_deployed_qualification.py` | 20 | 8 |
| `eng/scripts/aca_qualification_pipeline.py` | 612 | 0 |
| `tests/live/README.md` | 36 | 2 |
| `tests/live/aca_deployed_agent_support.py` | 234 | 56 |
| `tests/live/aca_deployed_cold_start_support.py` | 31 | 1 |
| `tests/live/aca_deployed_load_support.py` | 208 | 2 |
| `tests/live/aca_deployed_loss_support.py` | 4 | 1 |
| `tests/live/apps/aca-qualification/.funcignore` | 4 | 0 |
| `tests/live/apps/aca-qualification/.gitignore` | 1 | 0 |
| `tests/live/apps/aca-qualification/README.md` | 69 | 0 |
| `tests/live/apps/aca-qualification/agents.config.yaml` | 18 | 0 |
| _... 他 17 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `8787e7a` Add deployed ACA qualification assets
- `cd7ed2c` Reject unsupported N=100 qualification
- `8ad49cf` Use one locked ACA fixture export
- `f55c6ae` Assert ACA retention on authoritative clocks
- `09b4b86` Gate ACA qualification on provenance

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更ではなく、`aca_qualification_pipeline.py` と live qualification 用のスクリプト、fixture 制約、サンプルアプリを追加した変更です。N=100 の未対応モードを受け付けない検証契約が明確化されています。

**既存利用者への影響**

通常の Functions 利用者に移行は不要です。ACA のデプロイ済み資格検証を運用する場合は、fixture と provenance 要件を満たす CI 設定へ更新してください。

### [#201](https://github.com/Azure/azure-functions-agents-runtime/pull/201) — Add DTS workflow display names

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +163 / -59
- マージ日時 (UTC): `2026-09-03 21:39:24`

**変更概要**

DTS（dynamic workflow）の表示名を workflow registry と engine に追加し、実行中のワークフローを識別しやすくしました。  
FRD、architecture、workflows のドキュメントとテストも更新し、表示名の登録・取得契約を検証しています。  
ワークフローの機能動作よりも、運用時の可観測性と管理画面の表示に影響する変更です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 1 | 1 |
| `docs/frds/0004-dynamic-workflows.md` | 58 | 1 |
| `docs/workflows.md` | 4 | 1 |
| `src/azure_functions_agents/workflows/engine.py` | 29 | 20 |
| `src/azure_functions_agents/workflows/tools.py` | 7 | 3 |
| `tests/test_workflow_engine.py` | 55 | 27 |
| `tests/test_workflow_registry.py` | 9 | 6 |

</details>

<details><summary>コミット (1 件)</summary>

- `b88a038` Add DTS workflow display names

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

workflow registry/engine に表示名を扱うフィールドと登録経路が追加されました。既存の workflow 定義は表示名未指定でも動作し、破壊的な実行 API 変更はありません。

**既存利用者への影響**

移行不要です。独自の workflow registry や UI を持つ場合のみ、表示名が提供される場合の表示・テストを追加してください。

### [#195](https://github.com/Azure/azure-functions-agents-runtime/pull/195) — Stabilize ACA session admission and results

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1392 / -89
- マージ日時 (UTC): `2026-09-03 17:36:03`

**変更概要**

ACA Sandbox のセッション受付、readiness、reconciler、実行結果の処理を安定化しました。  
HTTP controller、session state store、run control、runtime limit を整理し、cold start と結果保存の競合をテストで補強しています。  
ACA 上でエージェントセッションを実行する利用者の信頼性と再試行時の挙動が改善されます。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/aca-sandbox-session-runtime.md` | 18 | 0 |
| `docs/architecture.md` | 4 | 4 |
| `docs/frds/0008-aca-sandbox-session-runtime.md` | 11 | 7 |
| `src/azure_functions_agents/controller/http.py` | 9 | 0 |
| `src/azure_functions_agents/controller/readiness.py` | 18 | 4 |
| `src/azure_functions_agents/controller/reconciler.py` | 88 | 18 |
| `src/azure_functions_agents/execution/__init__.py` | 4 | 0 |
| `src/azure_functions_agents/execution/aca_sandbox.py` | 129 | 12 |
| `src/azure_functions_agents/execution/backend.py` | 12 | 0 |
| `src/azure_functions_agents/execution/run_control.py` | 5 | 1 |
| `src/azure_functions_agents/sandbox_runtime_limits.py` | 1 | 0 |
| `src/azure_functions_agents/session_state/store.py` | 61 | 9 |
| `tests/doubles/fake_session_runtime.py` | 19 | 1 |
| `tests/test_app.py` | 4 | 4 |
| `tests/test_controller_http.py` | 50 | 0 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `22cdbc3` Stabilize ACA session admission and results
- `674d8c7` Address ACA runtime reliability review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

session admission と result reconciliation の内部契約、readiness 判定、ACA sandbox 実行バックエンドが更新されました。公開 HTTP 形状を変えるよりも、状態遷移とエラー処理を強化する変更です。

**既存利用者への影響**

既存の ACA Functions は移行不要ですが、セッションの再試行・cold start・結果取得を自動化している場合は更新後の状態遷移を確認してください。

### [#194](https://github.com/Azure/azure-functions-agents-runtime/pull/194) — Require authored ACA Sandbox Group region

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1814 / -874
- マージ日時 (UTC): `2026-09-03 15:56:13`

**変更概要**

ACA Sandbox Group のリージョンを、暗黙の既定値ではなく作成者が明示的に指定する構成へ変更しました。  
front matter の仕様、設定スキーマ、プローブ・smoke・qualification スクリプト、E2E ジョブを一貫して更新しています。  
リージョン依存の transport 境界と provider error category も整理されました。

<details><summary>変更ファイル (46 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 14 | 0 |
| `docs/aca-sandbox-session-runtime.md` | 31 | 4 |
| `docs/architecture.md` | 5 | 2 |
| `docs/frds/0008-aca-sandbox-session-runtime.md` | 31 | 9 |
| `docs/front-matter-reference.md` | 1 | 0 |
| `docs/front-matter-spec.md` | 10 | 1 |
| `eng/scripts/README.md` | 3 | 1 |
| `eng/scripts/aca_deployed_qualification.py` | 7 | 4 |
| `eng/scripts/aca_pr_smoke.py` | 1 | 0 |
| `eng/scripts/probe_aca_data_plane.py` | 15 | 6 |
| `eng/scripts/reap_aca_smoke_sandboxes.py` | 5 | 1 |
| `eng/templates/official/jobs/e2e-tests.yml` | 2 | 0 |
| `src/azure_functions_agents/app.py` | 4 | 1 |
| `src/azure_functions_agents/config/schema.py` | 20 | 2 |
| `src/azure_functions_agents/controller/http.py` | 46 | 0 |
| _... 他 31 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `d473212` Require authored ACA Sandbox Group region
- `441e664` Fix ACA journal smoke assertion
- `0ab8d63` Preserve ACA provider error categories
- `630e4a9` Clarify ACA region independence
- `3d8ef37` Close ACA transport boundary gaps

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ACA Sandbox Group の region が設定スキーマ上の必須入力になり、front matter と実行時設定の契約が強化されました。省略時の暗黙解決に依存する構成は破壊的影響を受けます。

**既存利用者への影響**

ACA Sandbox Group を定義する利用者は region を明示的に追加し、資格検証・smoke test の設定ファイルを更新してください。単純な Functions アプリには影響しません。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #200 | Experimental hybrid ACA sandbox tool execution through APIM | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/200> |
| PR | #203 | build: update Azure Functions Agent Runtime version to 0.1.0b14 | open | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/203> |
| Issue | #204 | Track upstream fix for Activity tags lost on retry | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/204> |
| Issue | #202 | Migrate workflow client operations to native Durable APIs | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/202> |
