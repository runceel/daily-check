# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

対象期間内の GitHub Changelog 新着は **9 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Claude Opus 5 is now available in GitHub Copilot

- 公開日 (UTC): `2026-07-24 16:40:04`
- リンク: <https://github.blog/changelog/2026-07-24-claude-opus-5-is-now-available-in-github-copilot>

複雑で長時間のエージェント型コーディング向けに Claude Opus 5 が Copilot Pro+、Max、Business、Enterprise へ段階的に提供されます。従量課金はプロバイダーの API 定価に基づき、Business / Enterprise では管理者が Copilot 設定の Claude Opus 5 ポリシーを有効にする必要があります。

## Copilot cloud agent for Linear is now generally available

- 公開日 (UTC): `2026-07-23 22:32:23`
- リンク: <https://github.blog/changelog/2026-07-23-copilot-cloud-agent-for-linear-is-now-generally-available>

Linear の Issue を Copilot cloud agent に割り当て、独立した一時環境で作業させてドラフト PR と進捗を Linear に返す連携が GA になりました。Copilot Pro 以上で利用でき、Issue 単位または Linear のガイダンスでモデル、カスタム エージェント、ブランチを指定し、コメントから追加指示も送れます。

## GitHub MCP Server supports the next MCP specification

- 公開日 (UTC): `2026-07-23 20:38:22`
- リンク: <https://github.blog/changelog/2026-07-23-github-mcp-server-supports-the-next-mcp-specification>

7 月 28 日公開予定のステートレスな MCP 仕様に GitHub MCP Server が先行対応し、セッションと `initialize` を廃止してスケール性や接続速度を改善します。Tier 1 SDK は後方互換性を維持しているため通常は対応不要ですが、独自 MCP クライアント / サーバーの実装者は新しい公式適合性テストで互換性を確認すべきです。

## GitHub Mobile: Fix failing Actions checks with Copilot cloud agent

- 公開日 (UTC): `2026-07-23 19:47:58`
- リンク: <https://github.blog/changelog/2026-07-23-github-mobile-fix-failing-actions-checks-with-copilot-cloud-agent>

最新版の GitHub Mobile から、PR の失敗した Actions チェックに対して **Fix with Copilot** を選び、Copilot coding agent に調査と修正を依頼できるようになりました。エージェントは元 PR 上に別の PR を作成するため、利用者は提案内容と追加チェックを確認してからマージします。

## Multi-select fields for Projects and Issues in public preview

- 公開日 (UTC): `2026-07-23 18:19:14`
- リンク: <https://github.blog/changelog/2026-07-23-multi-select-fields-for-projects-and-issues-in-public-preview>

Projects と Issue fields で、1 つのフィールドに複数のチーム、モジュール、カテゴリなどを保持できる multi-select 型がパブリック プレビューになりました。フィールドの作成・編集時に multi-select を選ぶと、サイドバーで複数値を設定し、Project ビューの絞り込みにも利用できます。

## Agent automation controls in GitHub Issues in public preview

- 公開日 (UTC): `2026-07-23 15:30:29`
- リンク: <https://github.blog/changelog/2026-07-23-agent-automation-controls-in-github-issues-in-public-preview>

Issue を操作するエージェント自動化に、承認待ちの提案、信頼度、変更理由の監査情報がパブリック プレビューで追加されました。リポジトリ管理者は自動適用の信頼度しきい値を設定できますが、承認機能はサーバー側のセキュリティ境界ではないため、エージェント権限自体は引き続き最小化する必要があります。

## New Copilot usage metrics impact dashboard

- 公開日 (UTC): `2026-07-22 16:21:47`
- リンク: <https://github.blog/changelog/2026-07-22-new-copilot-usage-metrics-impact-dashboard>

Enterprise 管理者と Organization owner 向けの Copilot metrics impact dashboard が追加され、利用者を Code-first、Agent-first、Multi-agent / Copilot app、未利用層に分けて導入成熟度を可視化します。直近 28 日の利用に基づくコホート、PR の速度・件数、6 か月推移、次の推奨施策を確認でき、既存の Copilot usage metrics へのアクセス権が必要です。

## Upcoming GHES change impacting uploading support bundles

- 公開日 (UTC): `2026-07-22 15:05:19`
- リンク: <https://github.blog/changelog/2026-07-22-upcoming-ghes-change-impacting-uploading-support-bundles>

**要対応:** 2026 年 8 月 18 日以降、必要なセキュリティ パッチがない古い GHES appliance からのコマンドラインによる support bundle アップロードが拒否されます。GHES 管理者は現在のバージョン系列の最新パッチへ更新し、期限までに更新できず bundle の送信が必要な場合は GitHub Support に連絡してください。

## Gemini 3.6 Flash is now available in GitHub Copilot

- 公開日 (UTC): `2026-07-21 15:04:31`
- リンク: <https://github.blog/changelog/2026-07-21-gemini-3-6-flash-is-now-available-in-github-copilot>

Web / アプリ開発や長期エージェント タスク向けの Gemini 3.6 Flash が Copilot Pro 以上へ段階的に展開され、推論強度の調整と並列ツール利用に対応します。従量課金はプロバイダーの定価に基づき、Business / Enterprise では管理者が Gemini 3.6 Flash Preview ポリシーを有効にする必要があります。
