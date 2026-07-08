# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

対象期間内の GitHub Changelog 新着は **7 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Add review cycles and time to adoption phases in the usage API

- 公開日 (UTC): `2026-07-08 04:53:01`
- リンク: <https://github.blog/changelog/2026-07-07-add-review-cycles-and-time-to-adoption-phases-in-the-usage-api>

Copilot usage metrics API に、AI 導入フェーズ（adoption phase）ごとの **code-review velocity 指標が 2 種類追加**され、Enterprise / Organization レポートの adoption phase cohort フィールドが拡張された。レビューサイクル数や導入までの時間を取得できる。Copilot の導入効果を分析する管理者・データ担当向けで、API 利用者は新フィールドを参照できる。機能追加の告知。

## Kimi K2.7 now available for Copilot Business and Enterprise

- 公開日 (UTC): `2026-07-08 00:05:35`
- リンク: <https://github.blog/changelog/2026-07-07-kimi-k2-7-now-available-for-copilot-business-and-enterprise>

2026-07-01 に Copilot Pro / Pro+ / Max 向けに発表された **Kimi K2.7** モデルが、**Copilot Business と Copilot Enterprise でも利用可能**に。対象プランの管理者はモデルポリシーで有効化して利用者に開放できる。利用できるモデルの選択肢が広がる告知で、要対応ではない。

## Per-user budgets for cost centers in the billing UI

- 公開日 (UTC): `2026-07-07 17:09:29`
- リンク: <https://github.blog/changelog/2026-07-07-per-user-budgets-for-cost-centers-in-the-billing-ui>

Enterprise 管理者が、コストセンターと予算を管理する **billing UI 上でユーザー単位の予算（per-user budget）を直接作成**できるように（GitHub Enterprise Cloud 対象）。従来より細かい粒度で支出を制御・可視化できる。Copilot などの利用コストを管理する Enterprise 管理者向けの機能追加。

## Secret scanning extended metadata and multipart validation

- 公開日 (UTC): `2026-07-07 16:43:04`
- リンク: <https://github.blog/changelog/2026-07-07-secret-scanning-extended-metadata-and-multipart-validation>

Secret scanning が、対応するシークレット種別について**漏洩シークレットの所有者や影響範囲の把握に役立つ拡張メタデータ**を提供し **GA**。あわせて複数の要素を組み合わせて有効性を確認する multipart validation にも対応。漏洩検知後のトリアージを行うセキュリティ担当向けで、GHAS / secret scanning 利用者は追加設定なしで情報が拡充される。

## Restrict who can dismiss reviews in rulesets

- 公開日 (UTC): `2026-07-07 15:15:54`
- リンク: <https://github.blog/changelog/2026-07-07-restrict-who-can-dismiss-reviews-in-rulesets>

リポジトリの **rulesets で「PR レビューを dismiss（却下）できる人」を直接制限**できるように（**GA**）。誰がレビュー承認をクリアできるかを厳密に制御でき、レビュー統制を強化できる。ブランチ保護やガバナンスを設計するリポジトリ／組織管理者向けで、rulesets に新しい制御項目として追加される。

## GitHub Copilot app available to all

- 公開日 (UTC): `2026-07-07 15:10:14`
- リンク: <https://github.blog/changelog/2026-07-07-github-copilot-app-available-to-all>

**GitHub Copilot デスクトップアプリ**が全 Copilot プランで利用可能に。GitHub アカウントでサインインすれば、デスクトップからエージェント駆動の開発を開始できる。macOS / Windows / Linux 対応。すべての Copilot 利用者が対象で、これまで限定されていた提供範囲が全プランへ拡大した。

## Copilot Billing Preview app will be retired on August 3

- 公開日 (UTC): `2026-07-07 14:51:13`
- リンク: <https://github.blog/changelog/2026-07-07-copilot-billing-preview-app-will-be-retired-on-august-3>

**Copilot Billing Preview アプリが 2026-08-03 に廃止（リタイア）**。Copilot の支出レビューに利用している場合は、より詳細な可視化が提供される正式の billing 機能へ移行する必要がある。**要対応**: 現在このアプリを使っている管理者は、8/3 の廃止までに移行先（billing UI のコストセンター／予算機能）を確認・切り替えること。
