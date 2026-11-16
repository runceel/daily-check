# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

対象期間内の GitHub Changelog 新着は **1 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Webhook IP ranges added to the Meta API

- 公開日 (UTC): `2026-10-29 17:14:38`
- リンク: <https://github.blog/changelog/2026-10-29-webhook-ip-ranges-added-to-the-meta-api>

github.com の Webhook 配信元 IP 範囲が追加され、Meta API の `hooks` フィールドから最新リストを取得できるようになりました。
対象は全プランで、GitHub Enterprise Cloud も含まれます。
Webhook の受信元を静的な許可リストで制限している管理者は、`9.234.98.160/28`、`9.234.98.176/28`、`9.234.106.48/28` を追加してください。未追加の場合、この範囲からの配信が拒否される可能性があります。
Meta API を使って許可リストを自動更新している場合、追加対応は不要です。手動管理の場合は設定を更新し、受信経路を確認してください。
