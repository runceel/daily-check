# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-09 23:05:02 〜 2026-06-11 00:49:32 (UTC)

対象期間内の GitHub Changelog 新着は **6 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## List, view, and create discussions in GitHub CLI

- 公開日 (UTC): `2026-06-10 22:22:07`
- リンク: <https://github.blog/changelog/2026-06-10-list-view-and-create-discussions-in-github-cli>

GitHub CLI に `gh discussion` コマンド群が追加され、Discussions の一覧表示・閲覧・作成・更新をターミナルから扱えるようになりました。ブラウザーを開かずにコミュニティ対応やメンテナンス作業を進めたいリポジトリ管理者に有用です。
既存運用の移行は必須ではありませんが、Discussions を定期確認する自動化や手順書に CLI 操作を組み込めます。

## Manage sub-issues, types, and dependencies from GitHub CLI

- 公開日 (UTC): `2026-06-10 22:20:55`
- リンク: <https://github.blog/changelog/2026-06-10-manage-sub-issues-types-and-dependencies-from-github-cli>

GitHub CLI から Issue type、親子 Issue、Issue 依存関係を直接操作できるようになりました。ターミナル中心で作業分解や依存管理を行うチームは、ブラウザーに切り替えずにワークアイテム構造を保守できます。
既存 Issue の運用変更は任意ですが、CLI ベースのトリアージやリリース準備フローで利用価値があります。

## Copilot Chat now sees your agent sessions

- 公開日 (UTC): `2026-06-10 20:46:17`
- リンク: <https://github.blog/changelog/2026-06-10-copilot-chat-now-sees-your-agent-sessions>

Web 版の Copilot Chat と Copilot cloud agent の引き継ぎが改善され、過去の agent session を検索・問い合わせできるようになりました。複数セッションで調査や修正を進めるユーザーは、過去の作業文脈を再利用しやすくなります。
特別な移行作業は不要ですが、agent を使った長期タスクの履歴確認フローに影響します。

## Enterprises can now create up to 500 cost centers

- 公開日 (UTC): `2026-06-10 14:01:19`
- リンク: <https://github.blog/changelog/2026-06-10-enterprises-can-now-create-up-to-500-cost-centers>

Enterprise ごとに作成できる cost center の上限が 250 から 500 に増えました。多数の事業部、部門、プロダクト単位で GitHub 利用コストを配賦している大規模組織向けの拡張です。
既存設定の変更は必須ではありませんが、細かいコスト管理を諦めていた組織は再設計の余地があります。

## Dedicated security review command now available in Copilot CLI

- 公開日 (UTC): `2026-06-10 11:44:41`
- リンク: <https://github.blog/changelog/2026-06-10-dedicated-security-review-command-now-available-in-copilot-cli>

GitHub Copilot CLI で `/security-review` スラッシュ コマンドを使い、コード変更に対するセキュリティレビューを直接実行できるようになりました。パブリック プレビューの実験的機能であり、PR 前のセルフチェックやレビュー補助に向きます。
本番のセキュリティ審査を置き換えるものではなく、検出結果は既存のレビュー・SAST・ポリシー確認と併用するのが安全です。

## Dependabot version updates now support the Deno ecosystem

- 公開日 (UTC): `2026-06-10 00:24:41`
- リンク: <https://github.blog/changelog/2026-06-09-dependabot-version-updates-now-support-the-deno-ecosystem>

Dependabot の version updates が Deno エコシステムをサポートしました。ただし対象はバージョン更新であり、セキュリティ更新は含まれません。
Deno プロジェクトでは `.github/dependabot.yml` に Deno の設定を追加すると、依存関係更新 PR を自動作成できます。
