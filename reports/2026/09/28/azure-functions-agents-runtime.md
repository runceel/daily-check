# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | hallvictoria, larohra |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Durable agent loop の設計・提供計画を改訂し、v1 の範囲、Durable routing の制約、既存 debug UI での結果ポーリング、名前空間・キャンセル契約を明確化しました（#234）。これはドキュメント更新で、ランタイム実装の変更ではありません。
パッケージバージョンは `0.1.0b16` に更新されました（#238）。期間内のその他の変化は chat UI デモ PR のクローズで、追加の実装変更はありません。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#234](https://github.com/Azure/azure-functions-agents-runtime/pull/234) — docs: refine Durable agent loop architecture and delivery plan

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +589 / -89
- マージ日時 (UTC): `2026-09-25 21:56:50`

**変更概要**

Durable agent loop の設計文書と README を、レビューで確定した v1 の範囲・提供方針に合わせて更新します。
同一 Function 内に制約した Durable routing の根拠、既存 debug UI を維持した Durable result polling、アプリケーション名前空間、キャンセルの上限契約を具体化しました。
entry authentication の retry 境界や UI bootstrap も明記し、提供日程の記載は削除しています。変更対象は FRD / README のみです。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0009-durable-agent-loop.md` | 588 | 88 |
| `docs/frds/README.md` | 1 | 1 |

</details>

<details><summary>コミット (13 件)</summary>

- `978bc67` docs: refine Durable agent loop architecture and delivery plan
- `5dfeba3` docs: align Durable v1 scope and delivery with review decisions
- `cc444fe` docs: remove delivery dates and clarify dashboard tags
- `f531391` docs: retain existing debug UI with Durable result polling
- `aed2c12` docs: specify constrained same-function Durable routing
- `b52df75` docs: record real-host constrained routing evidence
- `45846ed` docs: fix entry auth retry boundaries and UI bootstrap
- `be7db0f` docs: define app namespace and bounded cancellation contract
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`docs/frds/0009-durable-agent-loop.md` と FRD 一覧を変更した設計ドキュメント PR で、API シグネチャ・実装・依存関係は変更していません。新しい制約や契約は将来の実装に向けた設計記述です。

**既存利用者への影響**

現行ランタイム利用者に移行作業はありません。Durable agent loop の実装・利用を検討するチームは、更新後の v1 範囲と同一 Function への routing 制約を設計上の前提として確認してください。

### [#238](https://github.com/Azure/azure-functions-agents-runtime/pull/238) — build: update Azure Functions Agent Runtime version to 0.1.0b16

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-09-25 21:06:50`

**変更概要**

Python package の公開バージョン表記を `0.1.0b16` に更新します。
変更は `src/azure_functions_agents/__init__.py` のバージョン値 1 行に限られ、依存関係・実行動作の変更は含まれません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/__init__.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `72c4540` build: update Azure Functions Agent Runtime version to 0.1.0b16

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

パッケージのバージョン値のみを更新しており、API シグネチャや実装に変更はありません。

**既存利用者への影響**

移行は不要です。`0.1.0b16` を利用する場合は通常の beta package 更新として取り込んでください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #230 | demo(chat-ui): let the avatar react to the draft with Jev | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/230> |
| PR | #229 | demo(chat-ui): add the animated Yoho assistant avatar | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/229> |
