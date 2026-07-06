# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

対象期間内の GitHub Changelog 新着は **6 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Improved accuracy and coverage in Copilot usage metrics reports

- 公開日 (UTC): `2026-07-02 23:19:06`
- リンク: <https://github.blog/changelog/2026-07-02-improved-accuracy-and-coverage-in-copilot-usage-metrics-reports>

Copilot の利用状況メトリクス API で、レポートの網羅性と精度が向上しました。GitHub Copilot CLI の提案行数や、利用が確認されたユーザーの扱いなどがより正確に反映されるようになり、管理者や運用担当者が利用実績を見直しやすくなっています。追加の設定は不要です。

## Upcoming deprecation of Gemini 2.5 Pro and Gemini 3 Flash

- 公開日 (UTC): `2026-07-02 23:07:06`
- リンク: <https://github.blog/changelog/2026-07-02-upcoming-deprecation-of-gemini-2-5-pro-and-gemini-3-flash>

GitHub Copilot の各体験（Copilot Chat、インライン編集、Ask/Agent モード、コード補完）から Gemini 2.5 Pro と Gemini 3 Flash が 2026年7月31日をもって非推奨になります。これらのモデルを使っているユーザーや、組織内で自動モデル選択を運用している管理者は、代替モデルへの切り替え計画を事前に検討しておく必要があります。

## Copilot CLI no longer needs a personal access token in GitHub Actions

- 公開日 (UTC): `2026-07-02 20:25:32`
- リンク: <https://github.blog/changelog/2026-07-02-copilot-cli-no-longer-needs-a-personal-access-token-in-github-actions>

GitHub Actions で GitHub Copilot CLI を実行する際、従来必要だった個人アクセストークンの代わりに組み込みの `GITHUB_TOKEN` を使えるようになりました。CI/CD パイプラインで Copilot CLI を利用しているチームは、認証設定を簡略化して既存ワークフローに反映しやすくなります。

## Copilot agent session streaming is now in public preview

- 公開日 (UTC): `2026-07-02 18:05:05`
- リンク: <https://github.blog/changelog/2026-07-02-copilot-agent-session-streaming-is-now-in-public-preview>

GitHub Enterprise Cloud の enterprise managed users 向けに、Copilot agent のセッションデータを各 Copilot クライアントから追跡できるパブリックプレビューが開始されました。監査や運用ログの可視性を重視する組織では、エージェント実行の状態をより把握しやすくなります。

## Cost centers now support AI credit pools

- 公開日 (UTC): `2026-07-02 16:00:51`
- リンク: <https://github.blog/changelog/2026-07-02-cost-centers-now-support-included-usage-caps>

Enterprise の cost center ごとに、月あたりの AI credit の使用上限を管理できるようになりました。REST API から設定できるため、組織の予算配分や利用制御を細かく行いたい管理者向けの機能です。既存の料金・利用ポリシーと整合させて導入を検討するとよいでしょう。

## Issue fields are now generally available

- 公開日 (UTC): `2026-07-02 08:17:17`
- リンク: <https://github.blog/changelog/2026-07-02-issue-fields-are-now-generally-available>

Issue fields が GitHub のすべての組織で一般提供され、Free / Team / Enterprise / GitHub Enterprise Cloud (data residency) まで幅広いプランで利用できるようになりました。Issue のメタデータを構造化して運用したいチームは、カスタムフィールドの整理やテンプレート自動化に活用しやすくなっています。
