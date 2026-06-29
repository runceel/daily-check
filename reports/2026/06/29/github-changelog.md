# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Track total merges by adoption phase in enterprise and organization reports

- 公開日 (UTC): `2026-06-26 20:55:03`
- リンク: <https://github.blog/changelog/2026-06-26-track-total-merges-by-adoption-phase-in-enterprise-and-organization-reports>

Enterprise / Organization レポートに、Copilot の導入段階別にマージ PR 数を集計する指標が追加されました。導入進捗を可視化したい管理者や運用担当にとって、組織全体の採用状況を把握しやすくなります。既に Copilot 利用状況 API を使っている場合は、今後のレポート比較にこの新指標を活用するとよいでしょう。

## MAI-Code-1-Flash for Copilot Business and Copilot Enterprise

- 公開日 (UTC): `2026-06-26 16:35:06`
- リンク: <https://github.blog/changelog/2026-06-26-mai-code-1-flash-for-copilot-business-and-copilot-enterprise>

MAI-Code-1-Flash が Copilot Business / Enterprise で一般提供され、コード生成やレビュー向けのモデル選択肢が広がりました。開発者体験の向上を狙った提供で、Copilot の各サーフェスでの利用が期待されます。組織で試験的に有効化する場合は、既存の Copilot 設定と併せて評価するのがよいでしょう。

## GitHub Desktop 3.6: Worktrees and deeper Copilot integration

- 公開日 (UTC): `2026-06-26 10:32:58`
- リンク: <https://github.blog/changelog/2026-06-26-github-desktop-3-6-worktrees-and-deeper-copilot-integration>

GitHub Desktop 3.6 では、Git worktree の操作がより使いやすくなり、Copilot によるコミット文生成やマージ競合解決が一段と統合されました。日常的な Git 操作をデスクトップ上でまとめて扱いたい開発者にとって、作業フローの効率化が期待できます。既存のワークフローに影響は少ないものの、worktree を使うチームでは新しい操作感に慣れておくとよいでしょう。

## Copilot code review: Analysis depth and efficiency updates

- 公開日 (UTC): `2026-06-25 21:41:18`
- リンク: <https://github.blog/changelog/2026-06-25-copilot-code-review-analysis-depth-and-efficiency-updates>

Copilot code review が Copilot CLI / SDK のファイル探索機能を使うようになり、レビューの分析深度とコスト効率を改善しています。既存のワークフローはほぼ変わらないため、導入時の摩擦が小さいのが特徴です。大規模 PR でレビュー品質を保ちたいチームでは、使い方のガイドラインを整えておくと効果的です。

## Enterprise-managed settings now support strictKnownMarketplaces in VS Code and GitHub Copilot CLI

- 公開日 (UTC): `2026-06-25 21:30:42`
- リンク: <https://github.blog/changelog/2026-06-25-enterprise-managed-settings-now-support-strictknownmarketplaces-in-vs-code-and-the-cli>

Enterprise では、VS Code / GitHub Copilot CLI で許可するプラグインを厳格に制御できるようになりました。組織ポリシーに合わせて導入を進めると、利用者の拡張機能導入を管理しやすくなります。公開プレビューの設定なので、まずは小規模なテナントで動作確認してから展開するのが安全です。

## Saved views for repository issues – Public Preview and adjustable row heights in projects

- 公開日 (UTC): `2026-06-25 18:29:01`
- リンク: <https://github.blog/changelog/2026-06-25-saved-views-for-repository-issues-and-adjustable-row-heights-in-projects>

Repository Issues に保存済みビューが追加され、チームごとのフィルタ状態を共有しやすくなりました。プロジェクトビューでも行の高さを調整できるため、情報量の多いボードを見やすく整理しやすくなっています。運用ルールが固まっているチームでは、まずは代表的なビューを定義して共有すると取り込みやすいです。

## More control over your GitHub-hosted runners

- 公開日 (UTC): `2026-06-25 18:16:46`
- リンク: <https://github.blog/changelog/2026-06-25-more-control-over-your-github-hosted-runners>

Organization 管理者は GitHub-hosted runner の標準ラベルを無効化したり、独自のラベルを追加したりできるようになりました。Actions の実行権限を細かく制御したい組織では、実行環境の標準化と利用制限を両立しやすくなっています。既存のワークフローに影響が出る場合は、ラベル依存の条件分岐を確認しておくとよいでしょう。

## Actions steps can now be run in parallel

- 公開日 (UTC): `2026-06-25 16:46:09`
- リンク: <https://github.blog/changelog/2026-06-25-actions-steps-can-now-be-run-in-parallel>

GitHub Actions では、ステップを `background` を使って並列実行できるようになりました。従来は順次実行だったため、独立した前処理や後処理を分けたいワークフローで並行化の余地が広がります。ただし、依存関係のあるステップがある場合は順序保証の見直しが必要です。

## npm adds preventive account protection for high-impact accounts

- 公開日 (UTC): `2026-06-25 16:02:09`
- リンク: <https://github.blog/changelog/2026-06-25-npm-adds-preventive-account-protection-for-high-impact-accounts>

npm は、影響の大きいアカウントに対して機密な変更を検知した際に一時的な保護をかけるようになりました。パッケージ公開権限の大きいメンテナが対象なので、Registry の安全性を高める意味合いが大きいです。利用者側で特別な対応を求めるものではありませんが、アカウント運用の監視体制を見直すきっかけになります。

## Red Hat Enterprise Linux runner images are now in public preview

- 公開日 (UTC): `2026-06-25 15:40:04`
- リンク: <https://github.blog/changelog/2026-06-25-red-hat-enterprise-linux-runner-images-are-now-in-public-preview>

GitHub-hosted の大容量ランナーで RHEL 9 / 10 イメージがパブリックプレビューとして利用可能になりました。Red Hat 環境で CI を回したい組織は、従来の Ubuntu 系と並行して評価しやすくなっています。プレビュー段階なので、まずは非本番のワークフローで動作確認してから本格導入するとよいでしょう。
