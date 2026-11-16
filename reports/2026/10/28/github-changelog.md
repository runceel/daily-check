# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## GitHub Copilot supports server-to-server authentication

- 公開日 (UTC): `2026-10-27 21:36:55`
- リンク: <https://github.blog/changelog/2026-10-27-github-copilot-supports-server-to-server-authentication>

組織にインストールされた GitHub App を使うサーバー間認証が GitHub Copilot でパブリックプレビューになり、Copilot SDK で構築したサービスやエージェントからリクエストできるようになりました。組織内でサービス連携を構築する場合に評価できますが、プレビュー機能のため本番導入前に制約を確認してください。

## GitHub Copilot assisted permissions generally available

- 公開日 (UTC): `2026-10-26 22:31:30`
- リンク: <https://github.blog/changelog/2026-10-26-github-copilot-assisted-permissions-generally-available>

GitHub Copilot CLI、Copilot app、Visual Studio Code で、コマンド実行やファイルパスへのアクセス許可を支援する機能が GA になりました。Copilot の操作を確認しながら権限判断できるため、対象クライアントを利用するチームは現在の許可設定とユーザー向け運用を確認してください。

## GPT-6.1 Terra in GitHub Copilot

- 公開日 (UTC): `2026-10-26 19:15:53`
- リンク: <https://github.blog/changelog/2026-10-26-gpt-6-1-terra-in-github-copilot>

GPT-6.1 Terra が GitHub Copilot で GA になりました。日常的なエージェント型コーディングやターミナル作業向けで、GPT-6.1 Sol より低コストとされます。利用可能な Copilot プランではモデル選択肢として評価でき、既存モデルからの移行は任意です。

## Usage metrics API adds usage from tools like OpenCode

- 公開日 (UTC): `2026-10-23 23:42:03`
- リンク: <https://github.blog/changelog/2026-10-23-usage-metrics-api-adds-usage-from-tools-like-opencode>

Copilot usage metrics API が OpenCode など従来レポートに含まれていなかった開発ツール経由のモデル利用量も報告するようになりました。利用状況を集計する管理者は、更新後の API データを確認し、既存の集計や期間比較への影響を見直してください。

## Turn notifications into code with GitHub Copilot in Teams

- 公開日 (UTC): `2026-10-23 21:29:58`
- リンク: <https://github.blog/changelog/2026-10-23-turn-notifications-into-code-with-github-copilot-in-teams>

新しい Teams 向け GitHub アプリで、チャンネルやグループ会話に GitHub 通知を届け、Copilot と連携して会話から課題対応を進められるようになりました。Teams を日常の協業場所とするチームは、アプリを導入して通知先や利用権限を設定することで活用できます。

## EMU deletions fix

- 公開日 (UTC): `2026-10-23 18:56:18`
- リンク: <https://github.blog/changelog/2026-10-23-emu-deletions-fix>

2026 年 6 月 1〜13 日に SCIM でプロビジョニング解除された一部の Enterprise Managed User（EMU）が、本来の停止・匿名化ではなく削除された問題について修正が告知されました。該当期間に解除処理を行った Enterprise 管理者は、対象ユーザーの状態を確認し、必要なら復旧手順を確認してください。

## Public monitoring adds triage, validity, API, and webhooks

- 公開日 (UTC): `2026-10-23 17:17:58`
- リンク: <https://github.blog/changelog/2026-10-23-public-monitoring-adds-triage-validity-api-and-webhooks>

Public monitoring に、漏えいシークレットの有効性を自動確認する機能に加え、アラートの却下、履歴、フィルター、API、Webhook が追加されました。公開リポジトリのシークレット監視を運用する担当者は、大量アラートのトリアージと修復自動化に利用できる機能を確認してください。

## Enterprise installations for GitHub Apps generally available

- 公開日 (UTC): `2026-10-23 15:03:30`
- リンク: <https://github.blog/changelog/2026-10-23-enterprise-installations-for-github-apps-generally-available>

GitHub App を Enterprise に直接インストールする機能が GA になり、拡張 API により Enterprise／Organization の自動化で classic PAT を GitHub App に置き換えられる範囲が広がりました。認証情報の管理を見直す管理者は、対象の自動化を棚卸しし、権限を絞った App 認証への移行を検討できます。

## GitHub Copilot in Visual Studio — September update

- 公開日 (UTC): `2026-10-23 00:17:51`
- リンク: <https://github.blog/changelog/2026-10-22-github-copilot-in-visual-studio-september-update-2>

Visual Studio 向け Copilot の 2026 年 9 月更新では、チャット内での Pull Request 確認、チームが選択した AI モデルの利用、検出された脆弱なパッケージの修正支援が紹介されています。Visual Studio 利用者は、更新後の機能と組織のモデル・セキュリティポリシーとの適合を確認してください。

## Custom skills, agents, and MCP servers in usage metrics API

- 公開日 (UTC): `2026-10-22 22:19:17`
- リンク: <https://github.blog/changelog/2026-10-22-custom-skills-agents-and-mcp-servers-in-usage-metrics-api>

Copilot usage metrics API で、組織が作成した skills、custom agents、MCP servers、slash commands、plugins の利用状況が個別の名前で表示されるようになりました。管理者は各拡張機能の利用実態を識別しやすくなり、導入状況の分析やガバナンスに活用できます。
