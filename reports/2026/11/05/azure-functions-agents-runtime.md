# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | TsuyoshiUshio |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

この期間にマージされた変更は Durable Functions SDK を 2.0.0-rc3 に更新する PR #289 です。
ワークフロー実行・retry テストと Python / Node 依存 lockfile が更新されました。ワークフロー開始時の失敗診断や queue sample encoding の修正案はオープン中（#291、#290）です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#289](https://github.com/Azure/azure-functions-agents-runtime/pull/289) — Update Durable Functions SDK to 2.0.0rc3

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +194 / -118
- マージ日時 (UTC): `2026-11-03 23:07:52`

**変更概要**

Azure Functions Agents Runtime の Durable Functions SDK を 2.0.0-rc3 に更新する依存関係変更です。
Python の `pyproject.toml` / `uv.lock` と integration executor の Node lockfile を更新し、workflow engine / native retry tests も新しい SDK に合わせて調整しました。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `integrations/vally-executor-azure-functions/package-lock.json` | 4 | 3 |
| `pyproject.toml` | 2 | 2 |
| `tests/test_workflow_engine.py` | 1 | 2 |
| `tests/test_workflow_native_retry.py` | 1 | 1 |
| `uv.lock` | 186 | 110 |

</details>

<details><summary>コミット (2 件)</summary>

- `7759538` Update Durable Functions SDK to 2.0.0rc3
- `15d718c` Update executor node-server dependency for CI audit

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や新しい抽象の追加は変更一覧から確認できません。依存先が 2.0.0 release candidate に更新されたため、SDK API / retry 動作の互換性を更新後テストで確認してください。2番目のコミットでは CI audit 対応の Node server dependency も更新されています。

**既存利用者への影響**

SDK を直接利用する開発者は、2.0.0-rc3 の変更内容と現行コードの互換性を確認してください。リポジトリ利用者は新しい lockfile でワークフロー実行・native retry テストを再実行し、移行判断は SDK の正式版リリース情報に基づいてください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #291 | Report Dynamic Workflow start failures with safe operation diagnostics | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/291> |
| PR | #290 | Fix queue sample message encoding | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/290> |
| PR | #287 | Update Durable SDK and refactor workflow wave execution | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/287> |
