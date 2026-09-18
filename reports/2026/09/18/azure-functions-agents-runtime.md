# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | TsuyoshiUshio |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

- `Azure/azure-functions-agents-runtime` は、ワークフロー実行の制御性を高める方向に進んでおり、今回のマージ済み PR は「各試行ごとの timeout と continue-on-error」の設計明文化でした。
- これにより、一部の task が失敗しても全体ワークフローを継続させる運用が明確になり、デバッグや自動復旧の理想形がより見えやすくなっています。
- 引き続き open issue と PR で `MCP tool_name_prefix` サポートと警告扱いの継続失敗表示が進んでおり、ワークフローの観測性と運用ポリシー確立が今後の焦点です。
- 破壊的変更はまだ見当たらず、既存利用者への影響は主に設計上の再確認と契約の解釈です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#212](https://github.com/Azure/azure-functions-agents-runtime/pull/212) — feat(workflows): per-attempt task timeout and continue-on-error

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +373 / -8
- マージ日時 (UTC): `2026-09-16 16:54:50`

**変更概要**

- この PR は、1 回のワークフロー試行ごとに個別 `timeout` を設定し、失敗時に `continue-on-error` として継続させる設計を文書化したものです。
- 失敗した task が全体を止めるのではなく、回復可能な単位で扱えるようにすることで、長時間実行のエージェント系ジョブの運用性が向上します。
- 設計の説明が中心で API コード変更は少なく、ワークフロー契約の明確化が主目的でした。
- そのため、既存利用者には大きな破壊的変更こそありませんが、タイムアウト設計とエラー継続方針の見直しが必要になります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0004-dynamic-workflows.md` | 373 | 8 |

</details>

<details><summary>コミット (4 件)</summary>

- `93b517d` docs(workflows): design the task timeout and continuation slice
- `51c0667` docs(workflows): clarify timeout and continuation design
- `bf1591c` Merge branch 'main' into tsuyoshiushio-workflow-task-timeout-continua…
- `8d72bd2` docs(workflows): address timeout and completion review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 変更ファイルのほとんどは `docs/frds/0004-dynamic-workflows.md` の設計書で、実装コードとしては新しい workflow パターンの定義・要件整理が中心でした。
- 主要な新要素は、各 task に対する `timeout` と `continue-on-error` の設計追記で、ワークフロー全体の失敗伝播と制御粒度が明瞭になっています。
- 既存 API のシグネチャ自体は見当たらず、今回の変化は「設計契約の明文化」に近く、破壊的変更は明示されていません。

**既存利用者への影響**

- 既存の workflow そのものは大きく壊れない一方、timeout と失敗継続の扱いを契約として明示したため、運用ポリシーの見直しは必要です。
- 特に長時間実行タスクや partial failure を許容する設計では、障害時の通知と再試行方針を再確認しておくとよいです。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #222 | feat(workflows): add task timeout and failure continuation | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/222> |
| PR | #220 | feat: add MAF-compatible agent evals | open | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/220> |
| Issue | #223 | Support MCP tool_name_prefix in mcp.json | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/issues/223> |
| Issue | #221 | Show continued workflow failures as completed with warnings | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/221> |
