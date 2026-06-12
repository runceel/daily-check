# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-11 00:49:32 〜 2026-06-12 02:03:55 (UTC)

対象期間内の GitHub Changelog 新着は **7 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## GitHub Enterprise Server 3.21 is now generally available

- 公開日 (UTC): `2026-06-11 22:46:53`
- リンク: <https://github.blog/changelog/2026-06-11-github-enterprise-server-3-21-is-now-generally-available>

**GHES 3.21 が GA リリース** されました。デプロイ効率、監視機能、コード セキュリティ、ポリシー管理が強化され、Organization のカスタムプロパティが全般公開されるなど複数の機能が追加されています。既存 GHES ユーザーはアップグレード計画を確認してください。

## Bot-created pull requests can run workflows if approved

- 公開日 (UTC): `2026-06-11 19:00:56`
- リンク: <https://github.blog/changelog/2026-06-11-bot-created-pull-requests-can-run-workflows-if-approved>

`github-actions[bot]` が作成した PR でも、ユーザー承認により CI/CD ワークフローを実行可能になりました。セキュリティ対策として、生成されたコードが自動実行されるのを防ぎます。GitHub Actions を自動化している場合は、ワークフロー承認ルールを確認してください。

## AI usage report updates

- 公開日 (UTC): `2026-06-11 18:27:05`
- リンク: <https://github.blog/changelog/2026-06-11-ai-usage-report-updates>

AI 使用状況レポートが更新され、GitHub AI Credits の使用状況が標準レポートフィールドに反映されるようになりました。AI クレジット消費を監視する場合は、`quantity` と `gross_amount` フィールドを確認して管理を強化してください。

## Copilot CLI: Configure everything from one place with /settings

- 公開日 (UTC): `2026-06-11 16:44:55`
- リンク: <https://github.blog/changelog/2026-06-11-copilot-cli-configure-everything-from-one-place-with-settings>

Copilot CLI に統一されたスキーマ駆動型の設定ツール `/settings` が追加されました。これまで分散していた `/theme`、`/streamer-mode`、`/experimental` などのコマンドがひとつに統合され、設定管理が簡素化されます。Copilot CLI ユーザーはこの新コマンドを活用してください。

## New runner images in public preview

- 公開日 (UTC): `2026-06-11 16:18:07`
- リンク: <https://github.blog/changelog/2026-06-11-new-runner-images-in-public-preview>

GitHub Actions の新しいホスト ランナーイメージ 2 種類がパブリック プレビューで提供開始されました。最新プラットフォームでワークフローを事前テストできるようになります。Actions を多用している場合は、プレビュー期間を活用して互換性を確認してください。

## GitHub Agentic Workflows is now in public preview

- 公開日 (UTC): `2026-06-11 16:00:35`
- リンク: <https://github.blog/changelog/2026-06-11-github-agentic-workflows-is-now-in-public-preview>

**GitHub Agentic Workflows がパブリック プレビュー開始** しました。AI エージェントを活用して Issue トリアージ、CI 失敗分析、ドキュメント更新などの推論ベースタスクを自動化できます。GitHub Actions 内でエージェントが動作する画期的な機能で、自動化の幅が大きく広がります。

## Agentic workflows no longer need a personal access token

- 公開日 (UTC): `2026-06-11 15:55:49`
- リンク: <https://github.blog/changelog/2026-06-11-agentic-workflows-no-longer-need-a-personal-access-token>

Agentic Workflows で GitHub Actions 組み込みの `GITHUB_TOKEN` が使用可能になりました。従来の個人アクセストークン（PAT）作成・管理が不要になり、セキュリティが向上します。既存の Agentic Workflows 設定を確認して、PAT 依存を削除してください。
