# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-15 00:08:57 〜 2026-09-16 01:35:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | ahmedmuhsin |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点
対象期間は機能改善、セキュリティ強化、互換性確認に関する変更が中心でした。重要変更は各 PR の詳細と既存利用者への影響を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#102](https://github.com/microsoft/agent-framework-durable-extension/pull/102) — Python: Align workflow selector validation with core

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +157 / -4
- マージ日時 (UTC): `2026-09-15 20:38:20`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/tests/test_workflow.py` | 49 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_workflows/orchestrator.py` | 7 | 1 |
| `python/packages/durabletask/tests/test_workflow_routing.py` | 101 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `cb33367` Python: Align workflow selector validation with core

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

### [#88](https://github.com/microsoft/agent-framework-durable-extension/pull/88) — ADR 0032: Thread compaction for durable agents and workflows

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +1239 / -0
- マージ日時 (UTC): `2026-09-15 19:10:02`

**変更概要**
この PR は見出しに示された課題を解決するため、関連する実装とテストを更新しました。影響範囲は該当機能とその利用者で、変更点は下記のファイル一覧・コミットに整理されています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0032-durable-thread-compaction.md` | 1239 | 0 |

</details>

<details><summary>コミット (15 件)</summary>

- `20f9fd1` docs: add ADR 0032 for durable thread compaction
- `e2a173b` docs: add turn-flow and persisted-state diagrams to ADR 0032
- `86a8100` docs: compact the turn-flow diagram
- `1b71df9` docs: add provider ownership, workflow path and registration diagrams
- `5c7c96a` docs: name the branch instead of relying on its rendered position
- `3acc507` docs: revise ADR 0032 after design review
- `851f02c` docs: clarify provider-independent execution state
- `f8ca899` docs: streamline ADR 0032 for standalone review
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**
変更ファイルとコミットから、対象機能の契約・検証・内部実装が更新されています。見出しに **BREAKING** がある場合は API や既定動作の変更を含むため、既存コードの互換性を確認してください。

**既存利用者への影響**
見出しの機能を利用している場合はリリースノートと変更ファイルを確認し、必要なら設定・呼び出し方法・依存パッケージを更新してください。該当機能を使っていない利用者の追加対応は不要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #104 | Add automatic durable history retention sample | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/104> |
| PR | #103 | Prefer camelCase for agent HTTP APIs | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/103> |



