# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-11 00:49:32 〜 2026-06-12 02:03:55 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 4 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | andyfeller |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1631](https://github.com/github/copilot-sdk/pull/1631) — docs: rename index.md to README.md in docs directories

- 作者: andyfeller / 状態: MERGED
- ラベル: —
- 変更行数: +22 / -22
- マージ日時 (UTC): `2026-06-11 13:25:46`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 5 | 5 |
| `docs/README.md` | 8 | 8 |
| `docs/auth/README.md` | 0 | 0 |
| `docs/auth/byok.md` | 1 | 1 |
| `docs/features/README.md` | 1 | 1 |
| `docs/features/cloud-sessions.md` | 1 | 1 |
| `docs/hooks/README.md` | 0 | 0 |
| `docs/hooks/error-handling.md` | 1 | 1 |
| `docs/hooks/post-tool-use.md` | 1 | 1 |
| `docs/hooks/pre-tool-use.md` | 1 | 1 |
| `docs/hooks/session-lifecycle.md` | 1 | 1 |
| `docs/hooks/user-prompt-submitted.md` | 1 | 1 |
| `docs/integrations/README.md` | 0 | 0 |
| `docs/observability/README.md` | 0 | 0 |
| `docs/setup/README.md` | 0 | 0 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `539b3ad` docs: rename index.md to README.md in docs directories

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1636 | Standardize README prerequisites across all SDK languages | open | scottaddie | <https://github.com/github/copilot-sdk/pull/1636> |
| PR | #1635 | Harden bundled Copilot CLI extraction against corrupt/partial installs | open | jmoseley | <https://github.com/github/copilot-sdk/pull/1635> |
| PR | #1634 | Add explicit session reset APIs | open | redsun82 | <https://github.com/github/copilot-sdk/pull/1634> |
| PR | #1633 | Surface ModelBilling.tokenPrices on public SDK types | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1633> |
| PR | #1632 | Add `defer` parameter to tool definition | open | almaleksia | <https://github.com/github/copilot-sdk/pull/1632> |
| PR | #1628 | test(e2e): fix flaky model switchto test race condition | open | Morabbin | <https://github.com/github/copilot-sdk/pull/1628> |
| Issue | #1638 | [aw] Bug Handler failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1638> |
| Issue | #1637 | [dotnet][1.0.1] Custom client tool (AIFunction) never invoked - runtime returns opaque "Tool execution failed" without dispatching to the registered handler | open | mit2nil | <https://github.com/github/copilot-sdk/issues/1637> |
| Issue | #1630 | models.list -32603 in Kubernetes | open | sagaut | <https://github.com/github/copilot-sdk/issues/1630> |
| Issue | #1629 | Flaky E2E test in rpc_session_state.e2e.test.ts (model switchto) | open | Morabbin | <https://github.com/github/copilot-sdk/issues/1629> |
