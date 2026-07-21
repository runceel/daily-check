# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

対象期間内の GitHub Changelog 新着は **7 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## AI credit pools for cost centers in the billing UI

- 公開日 (UTC): `2026-07-20 18:24:14`
- リンク: <https://github.blog/changelog/2026-07-20-ai-credit-pools-for-cost-centers-in-the-billing-ui>

GitHub Enterprise Cloud の Copilot Business / Enterprise で、コストセンターの AI クレジットプールを REST API だけでなく請求 UI から管理できるようになりました。コストセンター編集画面で有効化するとライセンス数から上限が自動計算され、上限到達後に利用を止めるか超過課金を許可するかを選べます。利用組織はコストセンターごとの課金方針に合わせて設定してください。

## Copilot users can now see AI credits used per billing cycle

- 公開日 (UTC): `2026-07-20 16:00:14`
- リンク: <https://github.blog/changelog/2026-07-20-copilot-users-can-now-see-ai-credits-used-per-billing-cycle>

Copilot Business / Enterprise の利用者は、個人予算が設定されていなくても、GitHub 設定の Copilot usage ページで当該請求サイクルの AI クレジット使用量を確認できるようになりました。予算がある場合は上限に対する消費量、ない場合は総使用量が表示されるため、設定変更は不要です。

## GitHub Code Quality is now generally available

- 公開日 (UTC): `2026-07-20 13:01:24`
- リンク: <https://github.blog/changelog/2026-07-20-github-code-quality-is-now-generally-available>

GitHub Code Quality が GitHub Enterprise Cloud / Team で **GA** となり、CodeQL と AI 支援検出、Copilot Autofix、組織ダッシュボード、カバレッジ表示、ruleset の品質ゲートを利用できます。独立した有料製品で、**Public Preview 利用組織は移行不要のまま 2026-07-20 から自動的に課金対象**です。管理者は有効化済みリポジトリを確認し、不要なら将来のスキャンと課金を止めるため無効化してください。

## Repository-level GitHub Copilot usage metrics generally available

- 公開日 (UTC): `2026-07-17 22:05:18`
- リンク: <https://github.blog/changelog/2026-07-17-repository-level-github-copilot-usage-metrics-generally-available>

Copilot usage metrics REST API に、coding agent が作成・マージした PR と Copilot code review のレビュー／提案数を日次・リポジトリ単位で返す Enterprise / Organization 向けエンドポイントが追加されました。利用には `View Copilot Metrics` 権限と usage metrics ポリシーの有効化が必要で、管理者はリポジトリ別の導入効果分析に利用できます。

## GitHub Copilot app now available in the usage metrics API

- 公開日 (UTC): `2026-07-17 22:05:11`
- リンク: <https://github.blog/changelog/2026-07-17-github-copilot-app-now-available-in-the-usage-metrics-api>

Copilot usage metrics API の Enterprise / Organization 向け 1 日・28 日レポートに、GitHub Copilot app のアクティブユーザー数、セッション／リクエスト／プロンプト数、トークン使用量が追加されました。利用実績がない場合は新フィールドが `null` になるため既存連携への必須変更はありませんが、厳密なスキーマを使う連携は新フィールドを許容するか確認してください。

## Copilot code review: Customization and configurability improvements

- 公開日 (UTC): `2026-07-17 21:08:30`
- リンク: <https://github.blog/changelog/2026-07-17-copilot-code-review-customization-and-configurability-improvements>

Copilot code review が PR の head branch からカスタム指示を読み、`REVIEW.md`、`GEMINI.md`、`CLAUDE.md` にも対応しました。さらに `.github/workflows/copilot-code-review.yml` による専用セットアップ、cloud agent と独立した runner 設定、既定有効のファイアウォールが追加されています。管理者はネットワーク許可先と runner 設定を確認し、必要なら専用ワークフローを追加してください。

## GitHub Mobile: Fix pull request comments with Copilot cloud agent

- 公開日 (UTC): `2026-07-17 19:47:45`
- リンク: <https://github.blog/changelog/2026-07-17-github-mobile-fix-pull-request-comments-with-copilot-cloud-agent>

最新版の GitHub Mobile（iOS / Android）で、Copilot code review の PR コメントから **Fix with Copilot** を選び、Copilot cloud agent に修正を依頼できるようになりました。PR メイン画面と個別コメントの両方から利用でき、最新版アプリへの更新以外に移行作業はありません。
