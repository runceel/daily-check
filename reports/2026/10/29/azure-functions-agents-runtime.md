# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | hallvictoria, TsuyoshiUshio |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#286](https://github.com/Azure/azure-functions-agents-runtime/pull/286) — Update hosted-skill evaluator for 0.2.0 （PR / merged / hallvictoria）
  Azure Functions Hosted Skills evaluator 利用者は、`@azure/msal-node` の GHSA-xcx6-jx8p-x3h5 対応を確認してください。npm override は依存として導入しただけでは伝播しないため、Azure Identity 側の修正までは利用側の root package manifest にも override を設定し、lockfile を更新する必要があります。

そのほか、タイトル・ラベルによる重要変更の自動判定には追加の項目はありませんでした。

## このリポジトリの要点

Copilot specialist と workflow sub-agent の終了処理、および PR レポートの検証・データ受け渡しが改善され、正常終了時のセッション／ファイル後始末と不正レポートの Blob 保存回避が強化されました（[#283](https://github.com/Azure/azure-functions-agents-runtime/pull/283)）。
Hosted-skill evaluator は 0.2.0 に更新され、登録名が変更されたほか MSAL Node の脆弱性対策が加わりました（[#286](https://github.com/Azure/azure-functions-agents-runtime/pull/286)）。consumer は executor 名と依存脆弱性対策の双方を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#283](https://github.com/Azure/azure-functions-agents-runtime/pull/283) — Fix Copilot specialist cleanup and PR report data flow

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +179 / -29
- マージ日時 (UTC): `2026-10-28 22:32:35`

**変更概要**

Copilot delegates / workflow sub-agents の終了時に SDK session と host-owned SessionFs tree を適切に破棄し、成功済みターン後にファイル未検出となる誤った `delete_session` 呼び出しを避けます。
PR report sample では analyst の結果を `${task_id.result.text}` で report writer に明示的に渡し、生成レポートの HTML 形式・完全性・要求 PR link を Blob upload 前に検証します。
検証に失敗した場合は既存レポートを維持します。runtime cleanup とサンプルの workflow/report publishing の信頼性改善です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 4 | 2 |
| `samples/workflow-subagents-preview/README.md` | 8 | 1 |
| `samples/workflow-subagents-preview/src/main.agent.md` | 27 | 2 |
| `samples/workflow-subagents-preview/src/tools/report_publisher.py` | 44 | 3 |
| `src/azure_functions_agents/harness/copilot_sdk/_copilot_execution.py` | 7 | 10 |
| `tests/test_copilot_execution.py` | 1 | 1 |
| `tests/test_copilot_runner.py` | 13 | 7 |
| `tests/test_workflow_subagent_sample.py` | 75 | 3 |

</details>

<details><summary>コミット (3 件)</summary>

- `e5ae0ae` Fix Copilot specialist cleanup and PR report data flow
- `0fcd5f2` Fix evaluator dependency audit for PR 283
- `9932b95` Merge main into PR 283 and resolve evaluator dependency conflict

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Copilot SDK session cleanup の呼び出し順と workflow sample の結果参照・Blob upload 前検証を変更します。公開 API シグネチャの変更はなく、PR は breaking change ではないと明記しています。

**既存利用者への影響**

通常の利用者に移行は不要です。独自の PR report workflow を作っている場合は、task result の明示的な受け渡しと、保存前のレポート検証を取り入れてください。

### [#286](https://github.com/Azure/azure-functions-agents-runtime/pull/286) — Update hosted-skill evaluator for 0.2.0

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +151 / -45
- マージ日時 (UTC): `2026-10-28 18:40:38`

**変更概要**

Hosted-skill evaluator を 0.2.0 に更新し、登録 executor 名を `azure-functions-agent` から `azure-functions-hosted-skill` に変更します。
依存関係は既存 major の範囲内で新しい minor / patch を許容しつつ、lockfile は固定バージョンを維持します。また `@azure/msal-node` を修正版 7.1.0 以上 8.0.0 未満に固定する override を追加し、関連する Zod / Hono の lockfile も更新します。
この override は npm 依存として導入した consumer には伝播しないため、Azure Identity が修正を取り込むまでは利用側でも同じ root override が必要です。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/evaluation.md` | 7 | 6 |
| `docs/frds/0010-agent-evaluations.md` | 12 | 7 |
| `integrations/vally-executor-azure-functions/README.md` | 33 | 4 |
| `integrations/vally-executor-azure-functions/package-lock.json` | 21 | 13 |
| `integrations/vally-executor-azure-functions/package.json` | 12 | 7 |
| `integrations/vally-executor-azure-functions/src/index.ts` | 2 | 2 |
| `integrations/vally-executor-azure-functions/test/cli-smoke.mjs` | 2 | 2 |
| `integrations/vally-executor-azure-functions/test/executor.test.ts` | 1 | 1 |
| `integrations/vally-executor-azure-functions/test/identity.test.ts` | 58 | 0 |
| `integrations/vally-executor-azure-functions/test/tool-grader-smoke.mjs` | 1 | 1 |
| `samples/agent-evaluation/eval.yaml` | 1 | 1 |
| `tests/test_agent_evaluation_sample.py` | 1 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `fc40b8c` Update hosted-skill evaluator for 0.2.0
- `16f5272` Limit evaluator dependency updates to existing major versions
- `f20725e` Merge branch 'main' into hallvictoria/evaluator-updates
- `14a6002` Fix evaluator MSAL, Zod, and Hono audit vulnerabilities

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`@azure/functions-hosted-skills-evaluator` を 0.2.0 に上げ、executor の登録名を `azure-functions-hosted-skill` に変更します。既存 Vally evaluation config の executor 名は新名称へ更新が必要です。
依存範囲を同一 major 内で拡張し、MSAL Node に `>=7.1.0 <8.0.0` の security override を設定します。npm の root-only override の仕様上、package consumer にこの修正は自動継承されません。

**既存利用者への影響**

利用側の Vally 設定で executor 名を `azure-functions-hosted-skill` に更新してください。Azure Identity が修正版を採用するまで、consumer の root `package.json` に `@azure/identity` 配下の `@azure/msal-node: ">=7.1.0 <8.0.0"` override を追加し、lockfile を更新して audit / 認証テストを実行してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #287 | Group new workflow waves for DTS fan-out | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/287> |
