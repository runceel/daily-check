# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | larohra, TsuyoshiUshio |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#177](https://github.com/Azure/azure-functions-agents-runtime/pull/177) — samples: benchmark Dynamic Workflow token reduction （PR / open / TsuyoshiUshio）
Dynamic Workflow のトークン削減ベンチマークはサンプル段階の変更です。導入検討者は、測定結果を本番性能の保証とみなさず、実ワークロードで再評価してください。

## このリポジトリの要点

ACA sandbox runtime の信頼性改善が大規模にマージされ、再調整・復旧・readiness・ストリーミング処理が強化されました。  
Dynamic Workflow の可視化ドキュメントとアニメーションも追加されています。  
Durable Activity retry、タスク telemetry、タイムアウトなどの workflow 機能は引き続きオープン PR で進行中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#180](https://github.com/Azure/azure-functions-agents-runtime/pull/180) — docs: add Dynamic Workflow animations

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +610 / -0
- マージ日時 (UTC): `2026-08-28 19:12:19`

**変更概要**

Dynamic Workflow と標準エージェントループの動きを GIF で確認できるドキュメントを追加しました。  
ワークフロー説明、スクリプト README、GIF 生成スクリプトを整備しています。  
利用者は実行モデルの違いを視覚的に理解しやすくなりますが、ランタイム API の変更はありません。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/images/dynamic-workflows/dynamic-workflow.gif` | 0 | 0 |
| `docs/images/dynamic-workflows/standard-agent-loop.gif` | 0 | 0 |
| `docs/workflows.md` | 10 | 0 |
| `eng/scripts/README.md` | 10 | 0 |
| `eng/scripts/generate_dynamic_workflow_gifs.py` | 590 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `6ee0596` docs: add dynamic workflow animations

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更はドキュメント、画像、開発用 GIF 生成スクリプトに限定され、公開ランタイム API のシグネチャ変更や破壊的変更はありません。

**既存利用者への影響**

既存利用者の移行は不要です。ドキュメントを更新する場合のみ、生成スクリプトと画像の更新手順を参照してください。

### [#178](https://github.com/Azure/azure-functions-agents-runtime/pull/178) — Fix ACA sandbox runtime reliability

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +5183 / -1697
- マージ日時 (UTC): `2026-08-28 18:50:14`

**変更概要**

Azure Container Apps sandbox 上でのエージェントセッション実行の信頼性を改善しました。  
controller の readiness、reconciliation、復旧、パッケージ配信、HTTP／ストリーミング、チャット UI を見直し、設計文書と資格確認スクリプトも更新しています。  
ACA sandbox runtime の運用者は、停止・再開、再試行、状態復元の挙動を更新後に確認してください。

<details><summary>変更ファイル (37 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 7 | 3 |
| `README.md` | 14 | 0 |
| `docs/aca-sandbox-session-runtime.md` | 44 | 6 |
| `docs/architecture.md` | 7 | 6 |
| `docs/frds/0008-aca-sandbox-session-runtime.md` | 35 | 21 |
| `eng/scripts/aca_deployed_qualification.py` | 6 | 2 |
| `src/azure_functions_agents/app.py` | 4 | 4 |
| `src/azure_functions_agents/controller/bootstrap_delivery.py` | 5 | 2 |
| `src/azure_functions_agents/controller/http.py` | 49 | 24 |
| `src/azure_functions_agents/controller/package.py` | 63 | 5 |
| `src/azure_functions_agents/controller/readiness.py` | 111 | 32 |
| `src/azure_functions_agents/controller/reconciler.py` | 342 | 59 |
| `src/azure_functions_agents/controller/streaming.py` | 3 | 2 |
| `src/azure_functions_agents/execution/aca_sandbox.py` | 13 | 2 |
| `src/azure_functions_agents/public/index.html` | 176 | 5 |
| _... 他 22 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `161f2df` Fix ACA sandbox runtime reliability
- `eb71856` Keep ACA fixes in FRD 0008
- `b9e4b3f` Remove deferred ACA identity preflight
- `7c12ae3` Update chat UI for ACA run settlement
- `d0664ce` fix(aca): harden reconciliation and recovery
- `ec04162` fix(aca): formalize reconciliation cursor scopes
- `fbd7999` refactor(aca): simplify inventory handling
- `b8b35f9` fix(aca): address reliability review findings
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

reconciler のカーソルスコープ、readiness／recovery 処理、ACA セッションのパッケージ・状態管理が再構成されました。内部実装と FRD 0008 の更新が中心で、公開 API の明示的な破壊的変更はありませんが、セッション状態遷移の互換性を確認してください。

**既存利用者への影響**

ACA sandbox を利用する環境は通常のデプロイ更新で移行できます。独自の controller 連携や状態監視を実装している場合は、readiness と再調整の状態遷移を再確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #185 | feat(workflows): add Durable native Activity retry | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/185> |
| PR | #187 | feat(workflows): task execution telemetry and structured status | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/187> |
| PR | #186 | feat(workflows): per-attempt task timeout and continue-on-error | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/186> |
| PR | #184 | fix: preserve trigger serialization contract | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/184> |
| PR | #183 | Fix stopped ACA sandbox session activation | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/183> |
| PR | #182 | Pin GitHub Actions to full-length commit SHAs | open | danfiedler-msft | <https://github.com/Azure/azure-functions-agents-runtime/pull/182> |
| PR | #181 | chore: remove Dynamic Workflow GIF generator | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/181> |
