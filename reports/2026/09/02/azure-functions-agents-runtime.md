# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | TsuyoshiUshio, larohra |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

ACA sandbox の停止済みセッションを再起動して再利用する経路が修正され、Functions Agent Runtime の可用性が改善されました。  
トリガーのシリアライズ契約も維持され、Durable Functions Python 2.x 移行や read-only approval 修正が継続中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#183](https://github.com/Azure/azure-functions-agents-runtime/pull/183) — Fix stopped ACA sandbox session activation

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +499 / -44
- マージ日時 (UTC): `2026-09-01 20:18:37`

**変更概要**

停止済みの Azure Container Apps sandbox session を検出して wake し、再アクティベーションできるようにしました。  
HTTP controller、readiness、ACA transport、実行処理と SDK fake を更新し、sandbox 起動・準備完了判定をテストで補強しています。  
ACA sandbox 上でエージェントを実行する利用者は、停止後の再利用と readiness の挙動が安定します。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/aca-sandbox-session-runtime.md` | 8 | 4 |
| `docs/frds/0008-aca-sandbox-session-runtime.md` | 1 | 0 |
| `src/azure_functions_agents/controller/http.py` | 22 | 0 |
| `src/azure_functions_agents/controller/readiness.py` | 15 | 19 |
| `src/azure_functions_agents/execution/aca_sandbox.py` | 7 | 0 |
| `src/azure_functions_agents/transport/aca_sdk.py` | 26 | 1 |
| `src/azure_functions_agents/transport/transport_models.py` | 4 | 0 |
| `tests/doubles/fake_aca_sdk.py` | 8 | 2 |
| `tests/doubles/fake_session_runtime.py` | 6 | 2 |
| `tests/test_controller_http.py` | 36 | 0 |
| `tests/test_controller_readiness.py` | 37 | 7 |
| `tests/test_execution_aca_sandbox.py` | 85 | 9 |
| `tests/test_transport_aca_sdk.py` | 244 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `cbee2af` fix(aca): wake existing sandbox sessions
- `ec257d0` fix(aca): address sandbox wake review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存 sandbox を wake する controller/transport 内部フローとモデルを追加した変更で、利用者向け API の破壊的変更は明示されていません。readiness 応答と SDK 連携の契約が拡張されています。

**既存利用者への影響**

通常は移行不要です。ACA sandbox を利用する運用では、デプロイ後に停止・再開時の readiness と HTTP 起動フローを確認してください。

### [#184](https://github.com/Azure/azure-functions-agents-runtime/pull/184) — fix: preserve trigger serialization contract

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +9 / -9
- マージ日時 (UTC): `2026-08-31 15:45:27`

**変更概要**

trigger serialization の契約を壊さないよう、登録時のシリアライズ処理を修正しました。  
実装と回帰テストを最小範囲で更新し、既存トリガー入力の表現を維持します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/registration/_trigger_serialization.py` | 8 | 8 |
| `tests/test_trigger_serialization.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b26a2c2` fix: preserve trigger serialization contract

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

トリガー登録時のシリアライズ実装を契約準拠に戻す修正で、公開 API のシグネチャ変更はありません。

**既存利用者への影響**

移行は不要です。既存の trigger 定義をそのまま利用できますが、カスタム trigger を持つ場合はシリアライズ結果の回帰テストを確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #189 | chore: migrate to Durable Functions Python 2.x | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/189> |
| PR | #191 | Fix read-only skill tool approvals | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/191> |
| Issue | #190 | Investigate the DTS input json structure is broken | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/190> |
| Issue | #188 | Proposal: make Dynamic Workflow dependencies optional | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/188> |
