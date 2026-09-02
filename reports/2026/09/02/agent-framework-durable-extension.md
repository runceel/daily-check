# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | cgillum |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#64](https://github.com/microsoft/agent-framework-durable-extension/pull/64) — Bump cryptography from 49.0.0 to 50.0.0 in /python （PR / open / dependabot[bot]）
  Python パッケージ利用者は、cryptography の更新による互換性を確認し、依存固定を使う場合は 50.0.0 への更新可否を判断してください。
- **GA 昇格** [#80](https://github.com/microsoft/agent-framework-durable-extension/issues/80) — Release GA packages （Issue / open / greenie-msft）
  Durable Extension を本番採用する利用者は、GA パッケージ公開時期とリリース条件を追跡し、正式版への更新計画を準備してください。

## このリポジトリの要点

Python ベータ互換性の最終修正がマージされ、Azure Functions と Durable Task の実行コンテキスト・feature usage・shim 周辺が整備されました。  
Issue #80 では GA パッケージ化が継続中で、#64 の cryptography 更新や .NET ワークフロー改善も確認対象です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#81](https://github.com/microsoft/agent-framework-durable-extension/pull/81) — [Python] Restore final beta compatibility fixes

- 作者: cgillum / 状態: MERGED
- ラベル: —
- 変更行数: +110 / -14
- マージ日時 (UTC): `2026-09-01 16:58:42`

**変更概要**

Core 1.16 との互換性を含む、Python ベータ版の最終互換性修正をまとめました。  
Azure Functions の app/context、Durable Task の worker・shim・runner context、feature usage 記録を更新し、状態変異テストも追随しています。  
Durable Extension の Python 実行基盤と Azure Functions 統合を利用する開発者が影響範囲です。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 3 | 0 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_context.py` | 12 | 0 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_feature_usage.py` | 9 | 0 |
| `python/packages/azurefunctions/pyproject.toml` | 1 | 1 |
| `python/packages/azurefunctions/tests/test_app.py` | 5 | 1 |
| `python/packages/azurefunctions/tests/test_func_utils.py` | 8 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_feature_usage.py` | 9 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_shim.py` | 3 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_worker.py` | 3 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_workflows/runner_context.py` | 11 | 0 |
| `python/packages/durabletask/pyproject.toml` | 1 | 1 |
| `python/packages/durabletask/tests/test_runner_context.py` | 15 | 0 |
| `python/packages/durabletask/tests/test_shim.py` | 5 | 2 |
| `python/packages/durabletask/tests/test_worker.py` | 6 | 2 |
| `python/packages/durabletask/tests/test_workflow_activity.py` | 7 | 2 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `0fa1cc5` Restore final Python beta compatibility
- `2999653` Update state mutation tests for Core 1.16

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の大幅な名称変更は見当たりません。Core 1.16 に合わせて runner context、worker/shim、Functions コンテキストの互換処理と feature usage の記録経路が更新されています。

**既存利用者への影響**

ベータ版利用者は依存関係を更新し、既存の orchestrator／activity テストを再実行してください。GA への移行は Issue #80 の正式パッケージ公開後にリリースノートを確認して判断します。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #84 | .NET: Fail workflows when max supersteps is exceeded | open | LE0-Lin | <https://github.com/microsoft/agent-framework-durable-extension/pull/84> |
| PR | #82 | Register the Durable Task Functions extension from a dedicated assembly | open | Copilot | <https://github.com/microsoft/agent-framework-durable-extension/pull/82> |
| PR | #83 | Bump pip from 26.1.2 to 26.2 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/83> |
| Issue | #80 | Release GA packages | open | greenie-msft | <https://github.com/microsoft/agent-framework-durable-extension/issues/80> |
| Issue | #79 | Workflow context_filter runs inside orchestrator replay | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/issues/79> |
