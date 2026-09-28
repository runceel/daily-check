# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

対象期間内の GitHub Changelog 新着は **9 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Enterprise managed settings in-product validator

- 公開日 (UTC): `2026-09-25 23:24:57`
- リンク: <https://github.blog/changelog/2026-09-25-enterprise-managed-settings-in-product-validator>

GitHub Copilot のエンタープライズ管理設定に、JSON の形式不正、未対応の設定、チームマッピング不整合などを検出する画面内バリデーターが追加されました。管理者は設定を適用する前にエラーを確認・修正でき、特別な移行対応は不要です。

## Usage metrics API adds pull request review stages

- 公開日 (UTC): `2026-09-25 21:09:40`
- リンク: <https://github.blog/changelog/2026-09-25-usage-metrics-api-adds-pull-request-review-stages>

組織・エンタープライズ向け Copilot 利用メトリクスの `repos-1-day` に `pull_request_review_times` が加わり、レビュー待ち、レビューの往復、最終レビューからマージまでの時間を中央値・90 パーセンタイルで確認できます。対象は人が作成し他の人がレビューした PR で、2026-09-21 より前にレビュー可能になった PR の遡及集計はありません。API 利用者はこの配列（該当なしは空配列）を処理できるようにし、レポート閲覧には Copilot メトリクスポリシーと必要な権限が必要です。

## Private saved views for repository issues and “Relates to” issue relationship is generally available

- 公開日 (UTC): `2026-09-25 19:05:03`
- リンク: <https://github.blog/changelog/2026-09-25-personal-saved-views-for-repository-issues-and-more>

リポジトリの Issue ページで個人用の非公開保存ビューを作成でき、「Relates to」Issue 関係も一般提供になりました。Issue を個人の作業条件で整理したい利用者はそのまま利用でき、既存設定の移行は不要です。

## Changes to query results in the GitHub Actions API and UI

- 公開日 (UTC): `2026-09-25 18:17:06`
- リンク: <https://github.blog/changelog/2026-09-25-changes-to-query-results-in-the-github-actions-api-and-ui>

GitHub Actions の実行履歴をワークフロー・イベント・状態・ブランチ・実行者で検索した際、該当数が 2,500 件を超えると正確な件数の代わりに `2,500+` と表示されます。2,500 件までのページング結果は引き続き取得できますが、それ以上を単一検索で数えるスクリプトや連携は、日付範囲などで検索を分割する必要があります。

## Agentic autofix now uses Copilot Memory

- 公開日 (UTC): `2026-09-25 17:25:50`
- リンク: <https://github.blog/changelog/2026-09-25-agentic-autofix-now-uses-copilot-memory>

Copilot Memory を有効にしている利用者向けに、Agentic autofix が既存のメモリーを参照し、セキュリティアラート修正に役立つ文脈を取り込むようになりました。Memory を利用中のチームは、生成された修正案を通常どおりレビューしてください。追加の移行作業は不要です。

## GitHub Copilot weekly releases — September 21

- 公開日 (UTC): `2026-09-25 16:42:48`
- リンク: <https://github.blog/changelog/2026-09-25-github-copilot-weekly-releases-september-21>

今週の Copilot 更新では、新しいモデル、Copilot アプリのローカルサンドボックス、Slack・Microsoft Teams・JetBrains・VS Code 向けの改善が追加されました。該当クライアントを使うチームはリリース内容と組織の利用ポリシーを確認し、必要に応じてクライアントを更新してください。

## Updates to GitHub Copilot for Slack and Microsoft Teams

- 公開日 (UTC): `2026-09-25 16:33:42`
- リンク: <https://github.blog/changelog/2026-09-25-updates-to-github-copilot-for-slack-and-microsoft-teams>

Slack と Microsoft Teams の GitHub Copilot で、会話の文脈を踏まえた操作や制御が強化され、会話から GitHub 上の作業へ移りやすくなりました。両サービス上で Copilot を使うチームは利用可能な連携を確認してください。既存の利用設定を移行する必要があるとの案内はありません。

## CodeQL 2.27.1 adds C and C++ query and Kotlin 2.4.20 support

- 公開日 (UTC): `2026-09-25 09:55:23`
- リンク: <https://github.blog/changelog/2026-09-25-codeql-2-27-1-adds-c-and-c-query-and-kotlin-2-4-20-support>

CodeQL 2.27.1 では C/C++ と C# のクエリ追加、Kotlin 2.4.20 のサポート、およびクエリ精度の改善が行われました。GitHub code scanning で対象言語を解析するチームは、固定している CodeQL バージョンや解析結果を確認し、必要に応じて更新してください。

## Default Enablement of Copilot features for Copilot Business and Enterprise

- 公開日 (UTC): `2026-09-25 03:13:23`
- リンク: <https://github.blog/changelog/2026-09-24-default-enablement-of-copilot-features-for-copilot-business-and-enterprise>

Copilot Business / Enterprise では、一般提供機能と対応クライアント機能の未設定項目に適用するグローバル既定ポリシー（有効・無効・組織に委任）を追加します。2026-10-22 の適用開始までは AI Controls で設定を選べるため、管理者は機能・クライアント、Code Review、MCP サーバーに対する既定動作を確認して選択してください。明示的な有効／無効設定とプレビュー機能の選択は維持されます。
