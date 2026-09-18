# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

対象期間内の GitHub Changelog 新着は **8 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Copilot impact dashboard now shows feature engagement

- 公開日 (UTC): `2026-09-17 21:47:27`
- リンク: <https://github.blog/changelog/2026-09-17-copilot-impact-dashboard-now-shows-feature-engagement>

Copilot 影響分析ダッシュボードで、主要な Copilot 機能の利用頻度とアクティブユーザー数が可視化されるようになりました。エンタープライズ管理者は、どの機能が広く使われているかを把握し、導入が弱い領域を特定しやすくなります。特段の移行は不要ですが、利用が偏っている場合はユーザー教育やアクセス制御の見直しを進めるとよいです。

## Agentic CLI customizations now in the usage metrics API

- 公開日 (UTC): `2026-09-17 21:08:50`
- リンク: <https://github.blog/changelog/2026-09-17-agentic-cli-customizations-now-in-the-usage-metrics-api>

GitHub Copilot の CLI 利用メトリクス API に、skills / custom agents / MCP server / slash command / plugin の利用状況が追加されました。CLI を広く使う組織やカスタム拡張を運用している管理者は、利用実態の把握と改善に役立ちます。既存の API 連携に破壊的変更はないため、集計の取得コードを更新して利用状況の可視化を進めるとよいです。

## Ubuntu 26 generally available and latest migration

- 公開日 (UTC): `2026-09-17 16:27:16`
- リンク: <https://github.blog/changelog/2026-09-17-ubuntu-26-generally-available-and-latest-migration>

GitHub Actions の Ubuntu 26.04 runner イメージが一般提供され、x64 / arm64 の両方で本番ワークフローに利用可能になりました。新しい Linux 環境を使うプロジェクトでは、最新イメージへの移行時に依存関係や互換性の確認が必要です。既存のワークフローはそのまま動作する場合も多いですが、古いパッケージ依存や署名要件がある場合は事前確認を推奨します。

## Workflow execution protections in GitHub Actions generally available

- 公開日 (UTC): `2026-09-17 15:45:26`
- リンク: <https://github.blog/changelog/2026-09-17-workflow-execution-protections-in-github-actions-generally-available>

GitHub Actions の workflow execution protection が GA になり、Organization / Repository 単位で許可リストを定義して実行主体を管理できるようになりました。意図しない GitHub Actions 実行を防ぎたいセキュリティ担当者や管理者にとっては重要な強化です。既存のワークフローは自動で影響されませんが、許可対象の整理とポリシー設定を行うと運用安全性が高まります。

## Automate SSO authorization for classic PATs and SSH keys

- 公開日 (UTC): `2026-09-16 20:20:16`
- リンク: <https://github.blog/changelog/2026-09-16-automate-sso-authorization-for-classic-pats-and-ssh-keys>

GitHub Enterprise Cloud で、既存の classic PAT / SSH key を組織単位で自動的に SSO 認可できるようになりました。開発者ごとの手作業承認負担を減らせるため、管理者は運用負荷を下げやすくなります。既存の自動化に破壊的変更はなく、SSO 管理対象の棚卸しとポリシー適用を見直すと効果的です。

## SCIM user responses now include a profileUrl attribute

- 公開日 (UTC): `2026-09-16 20:19:58`
- リンク: <https://github.blog/changelog/2026-09-16-scim-user-responses-now-include-a-profileurl-attribute>

SCIM のユーザー応答に profileUrl が追加され、外部 ID と GitHub アカウントの対応関係をより正確に確認できるようになりました。ID プロバイダーや連携基盤を使う管理者にとっては、同期の整合性確認がより容易になります。既存の SCIM クライアントに破壊的変更はなく、応答の属性追加を受けて連携テストを確認しておくとよいです。

## Copilot budget increase requests are generally available

- 公開日 (UTC): `2026-09-16 20:17:18`
- リンク: <https://github.blog/changelog/2026-09-16-copilot-budget-increase-requests-are-generally-available>

Copilot の AI クレジットが尽きたユーザー向けに、増額申請フローが GA になりました。利用制限に直面していたユーザーは、より柔軟に Copilot を使い続けられるようになりますが、管理者側では承認フローと予算ポリシーの運用設計が重要です。既存の利用制限ロジックには影響しませんが、組織単位で申請を管理する体制を整えると利用の公平性を保ちやすくなります。

## Code scanning AI Scan no longer requires CodeQL default setup

- 公開日 (UTC): `2026-09-16 13:26:06`
- リンク: <https://github.blog/changelog/2026-09-16-code-scanning-ai-scan-no-longer-requires-codeql-default-setup>

CodeQL の default setup が無効なリポジトリでも、PR で AI Scan を使って脆弱性を検出できるようになりました。セキュリティ担当者や開発者は、より広い範囲に対して自動コードスキャンを導入しやすくなります。既存構成に大きな影響はないですが、利用対象リポジトリでスキャン範囲と許可設定を確認して運用を整えるとよいです。
