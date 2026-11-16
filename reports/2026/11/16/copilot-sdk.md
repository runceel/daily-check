# github/copilot-sdk *(詳細モード)*

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 4 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

期間内に PR のマージはなく、Rust SDK の `SandboxConfig` 再 export と MCP の per-server `deferTools` 設定不足が Issue として報告されました。
Windows では stdio MCP server 停止時の子プロセス終了、macOS では古い OS 上での prebuilt runtime の読み込み失敗が報告されています。GitHub App の Copilot Requests permission に関する Issue はクローズされました。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #2922 | Rust: SandboxConfig is used in public SessionConfig API but never re-exported, so with_sandbox_config is unusable | open | piriwata | <https://github.com/github/copilot-sdk/issues/2922> |
| Issue | #2921 | Windows: stopping a stdio MCP server also kills processes the server started to outlive it (per-server kill-on-close job without breakaway) | open | kristinakisterherrick | <https://github.com/github/copilot-sdk/issues/2921> |
| Issue | #2919 | macOS prebuilds (≥ 1.0.18 / runtime ≥ 1.0.94): runtime.node fails to load (dlopen failed) on older macOS | open | testforstephen | <https://github.com/github/copilot-sdk/issues/2919> |
| Issue | #2918 | Rust SDK: MCP server config has no way to set per-server tool deferral (deferTools) | open | martibook | <https://github.com/github/copilot-sdk/issues/2918> |
| Issue | #2304 | No "Copilot Requests" permission in GitHub Apps despite the Copilot SDK documentation saying otherwise | closed | mokshadharma | <https://github.com/github/copilot-sdk/issues/2304> |
