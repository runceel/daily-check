# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

対象期間内の GitHub Changelog 新着は **8 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Claude Sonnet 5 is generally available for GitHub Copilot

- 公開日 (UTC): `2026-06-30 17:25:51`
- リンク: <https://github.blog/changelog/2026-06-30-claude-sonnet-5-is-generally-available-for-github-copilot>

Anthropic の最新 Sonnet 系モデル **Claude Sonnet 5** が GitHub Copilot で GA になりました。通常のコーディングとエージェント的ワークフローの双方で高いコーディング性能を提供し、モデル選択に新しい Sonnet 系の選択肢が加わります。Copilot 利用者はモデル選択メニューから任意に切り替え可能で、既存設定への影響はありません。

## GitHub code coverage merge protection for pull requests

- 公開日 (UTC): `2026-06-30 16:42:21`
- リンク: <https://github.blog/changelog/2026-06-30-github-code-coverage-merge-protection-for-pull-requests>

ブランチルールセットで、テストカバレッジが設定したしきい値を下回った場合に PR のマージをブロックできるようになりました。最小カバレッジ率や許容できる低下幅などを設定でき、CI でカバレッジ品質を強制したいリポジトリ管理者に有用です。既存ルールへの影響はなく、任意で有効化する追加機能です。

## Releases: Sidebar navigation and per-asset download counts

- 公開日 (UTC): `2026-06-30 16:36:06`
- リンク: <https://github.blog/changelog/2026-06-30-releases-sidebar-navigation-and-per-asset-download-counts>

Releases ページに専用のサイドバー目次が追加され、リリースノートの走査・ナビゲーションがしやすくなりました。あわせてリリースメタデータの配置も見直され、アセットごとのダウンロード数もより一貫したレイアウトで確認できます。UI 変更のみで対応作業は不要です。

## Copilot Agent is now available in JetBrains AI Assistant

- 公開日 (UTC): `2026-06-30 16:00:19`
- リンク: <https://github.blog/changelog/2026-06-30-copilot-agent-is-now-available-in-jetbrains-ai-assistant>

JetBrains AI Assistant と GitHub Copilot の連携が強化され、Copilot Agent が JetBrains AI Assistant からも利用できるようになりました。すでに Copilot プラグインを AI ペアプログラミングに使っている JetBrains IDE ユーザーは、追加設定なしでエージェント機能にアクセスできます。

## Open source license compliance is in public preview

- 公開日 (UTC): `2026-06-30 16:00:17`
- リンク: <https://github.blog/changelog/2026-06-30-open-source-license-compliance-is-in-public-preview>

依存関係のライセンスをルールセットベースで一元管理できる「オープンソースライセンスコンプライアンス」がパブリックプレビューになりました。エンタープライズ管理者はポリシーに反するライセンスの依存関係を持つ PR をブロックできます。導入は任意で、現時点では既存ワークフローへの強制はありません。

## Dependabot no longer infers .npmrc

- 公開日 (UTC): `2026-06-30 13:53:48`
- リンク: <https://github.blog/changelog/2026-06-30-dependabot-no-longer-infers-npmrc>

Dependabot は npm のプライベートレジストリ向けに、ロックファイルの resolved URL から `.npmrc` 設定を推測する挙動を廃止しました。誤った URL やロックファイル形式に起因する解決失敗を防ぐための変更で、プライベートレジストリを利用しているリポジトリは明示的な `.npmrc` 設定が必要になる場合があります。**要確認**: Dependabot の npm 依存更新が失敗し始めた場合は `.npmrc` の明示設定を確認してください。

## Upcoming cloud data retention policy for closed security alerts

- 公開日 (UTC): `2026-06-30 13:24:21`
- リンク: <https://github.blog/changelog/2026-06-30-cloud-data-retention-policy-for-closed-security-alerts>

2026 年 8 月 25 日より、クローズ済みの Dependabot セキュリティアラートに対するデータ保持ポリシーが導入されます。アラートデータの保持期間が明確化される変更で、長期の監査ログや履歴分析のためにアラートデータをエクスポート・保存している組織は、保持期間内にデータを退避する必要がないか事前に確認しておくことが望まれます。

## Per-user AI credit budgets available for cost centers

- 公開日 (UTC): `2026-06-30 07:45:13`
- リンク: <https://github.blog/changelog/2026-06-30-per-user-ai-credit-budgets-available-for-cost-centers>

コストセンターに対して、所属メンバー全員に適用される「ユーザー単位の AI クレジット予算」を設定できるようになりました。メンバーの増減に応じて予算枠が自動的に適用されるため、エンタープライズ管理者は AI 利用コストをチーム単位でより細かく統制できます。
