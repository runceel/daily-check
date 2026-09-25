# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 5 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

期間内にマージ済み PR はなく、Python の検索結果から新規発見 tool を受け入れる変更や、型付きインストール確認 callback の提案がオープンです。
Rust の session event loop / `send_and_wait` 修正は未マージでクローズされました。Managed marketplace plugin hook の未呼び出しなど、利用者影響のある Issue も継続確認が必要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2773 | [CI signal only, do not merge] Canonical runtime src/sdk at 1e15bb8f | open | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2773> |
| PR | #2768 | Python: accept newly discovered tools in client search results | open | adityachaudhry | <https://github.com/github/copilot-sdk/pull/2768> |
| PR | #2764 | Keep authoring guidance out of published SDK docs | open | 1fanwang | <https://github.com/github/copilot-sdk/pull/2764> |
| PR | #2763 | Add typed installation confirmation callbacks | open | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2763> |
| PR | #2616 | Expose local cross-session discovery and delivery | closed | dfrysinger | <https://github.com/github/copilot-sdk/pull/2616> |
| PR | #2765 | Add Python POC for client-executed MCP tool search over Responses | closed | adityachaudhry | <https://github.com/github/copilot-sdk/pull/2765> |
| PR | #2755 | fix(rust): only root-agent events complete send_and_wait | closed | Lukaze | <https://github.com/github/copilot-sdk/pull/2755> |
| PR | #2754 | fix(rust): start the session event loop before the session.create RPC | closed | Lukaze | <https://github.com/github/copilot-sdk/pull/2754> |
| Issue | #2767 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2767> |
| Issue | #2772 | docs: clarify fresh-session isolation from same-account Copilot Memory | open | dliu120 | <https://github.com/github/copilot-sdk/issues/2772> |
| Issue | #2770 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2770> |
| Issue | #2769 | Managed marketplace plugin hooks are not invoked | open | pwang347 | <https://github.com/github/copilot-sdk/issues/2769> |
| Issue | #2766 | Shouldn't NO_PROXY include 127.0.0.1 by default? | open | gpotter2 | <https://github.com/github/copilot-sdk/issues/2766> |
