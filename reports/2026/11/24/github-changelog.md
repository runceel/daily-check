# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Issue statuses and repository boards are in public preview

- 公開日 (UTC): `2026-11-23 20:37:11`
- リンク: <https://github.blog/changelog/2026-11-23-issue-statuses-and-repository-boards-are-in-public-preview>

Issue の Open/Closed だけでは伝わらない進行状況を、公開プレビューの専用ステータスとリポジトリボードで共有できるようになりました。チームやエージェントに作業の状態を示す新しい文脈を提供するため、リポジトリで利用可否と運用ルールを確認し、既存のラベルやワークフローとの使い分けを検討できます。

## Secret scanning reduces false positives for Slack

- 公開日 (UTC): `2026-11-23 18:32:59`
- リンク: <https://github.blog/changelog/2026-11-23-secret-scanning-reduces-false-positives-for-slack>

Secret scanning は Slack incoming webhook URL の誤検出を減らす改善を行いました。検知ルールは通常の URL 形式だけで誤って検出する件数を抑えますが、有効なシークレットが検出されなくなることを保証するものではないため、アラート運用では既存のフィルターや除外設定を確認してください。

## Code coverage uploads now flag invalid report formats

- 公開日 (UTC): `2026-11-23 15:28:36`
- リンク: <https://github.blog/changelog/2026-11-23-code-coverage-uploads-now-flag-invalid-report-formats>

GitHub Code Quality の upload-code-coverage アクションは、カバレッジレポートが Cobertura XML 形式かを検証し、非対応形式の場合はアップロード処理を失敗させます。カバレッジをアップロードするワークフローでは、出力形式を Cobertura XML に揃えるか、生成ツールの変換オプションを確認する必要があります。

## Usage reports will include a user ID column starting December 1

- 公開日 (UTC): `2026-11-23 10:29:36`
- リンク: <https://github.blog/changelog/2026-11-23-usage-reports-will-include-a-user-id-column-starting-december-1>

2026 年 12 月 1 日から、username 列を含む利用レポートに隣接する形で user_id 列が追加され、username より後の列は 1 列ずつ位置がずれます。CSV を固定列番号で解析するシステムやスクリプトは列のハードコードを見直し、ヘッダー名ベースの解析へ移行する準備が必要です。

## Security advisory permissions are now generally available

- 公開日 (UTC): `2026-11-20 21:49:29`
- リンク: <https://github.blog/changelog/2026-11-20-security-advisory-permissions-are-now-generally-available>

Organization owner はカスタムリポジトリロールを使い、リポジトリ管理者権限や過度な権限を付与せずに、プライベート脆弱性レポートを含むセキュリティアドバイザリーへのアクセスを委任できるようになりました。セキュリティ担当者の役割に応じた最小権限ロールを定義し、既存のチーム権限を見直す運用変更が必要です。

## GitHub Enterprise Server 3.23 release candidate

- 公開日 (UTC): `2026-11-20 20:41:26`
- リンク: <https://github.blog/changelog/2026-11-20-github-enterprise-server-3-23-release-candidate>

GitHub Enterprise Server（GHES）3.23 のリリース候補が公開され、Projects を含むプラットフォーム全体の新機能が案内されています。セルフホスト環境の管理者は互換性、アップグレード要件、対象機能の提供範囲を公式リリースノートで確認し、本番更新前にステージング環境で検証してください。

## Pin your favorite repositories to your dashboard

- 公開日 (UTC): `2026-11-20 14:12:05`
- リンク: <https://github.blog/changelog/2026-11-20-pin-your-favorite-repositories-to-your-dashboard>

ダッシュボードにお気に入りリポジトリを固定する機能は、ユーザーフィードバックに基づく改善のため 2026 年 11 月 23 日に一時ロールバックされています。現在は固定方法や利用可否を前提にした運用を行わず、再公開時期と挙動を公式告知で確認するのが適切です。

## GitHub Desktop now supports multiple accounts per host

- 公開日 (UTC): `2026-11-20 02:06:01`
- リンク: <https://github.blog/changelog/2026-11-19-github-desktop-now-supports-multiple-accounts-per-host>

GitHub Desktop は同一ホスト上で複数アカウントへのログインをサポートし、GitHub.com、GitHub Enterprise Server、GHE.com を切り替えて利用できるようになりました。個人と職場のアカウントを使い分ける開発者は、リポジトリ操作前に現在の認証アカウントとホストを確認し、意図しないアカウントへのコミットやプッシュを避けてください。

## Improvements on the pull request overview in public preview

- 公開日 (UTC): `2026-11-20 00:02:21`
- リンク: <https://github.blog/changelog/2026-11-19-improvements-on-the-pull-request-overview-in-public-preview>

パブリックプレビュー中の Pull request Overview ページは、マージ状態と次のアクションをより明確に表示し、失敗した任意チェックの扱いなども改善されています。レビューやマージ運用を行うチームは、既存のステータス表示と併せて確認し、プレビュー期間中の画面挙動がワークフローに影響しないか検証できます。

## Enterprise Live Migrations from Azure DevOps generally available

- 公開日 (UTC): `2026-11-19 18:50:57`
- リンク: <https://github.blog/changelog/2026-11-19-enterprise-live-migrations-from-azure-devops-generally-available>

Azure DevOps Services からデータレジデンシー対応の GitHub Enterprise Cloud へ移行する Enterprise Live Migrations が一般提供されました。移行中もチームの作業継続を考慮できるため、対象リポジトリ、移行ウィンドウ、認証や統合の切り替え計画を確認する組織は公式手順に沿って移行準備を進める必要があります。
