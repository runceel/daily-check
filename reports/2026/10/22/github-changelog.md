# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## GitHub CLI: Opt in to expiring, auto-refreshing OAuth tokens

- 公開日 (UTC): `2026-10-21 16:43:23`
- リンク: <https://github.blog/changelog/2026-10-21-github-cli-opt-in-to-expiring-auto-refreshing-oauth-tokens>

GitHub CLI の OAuth 認証で、有効期限付きトークンと自動更新フローを利用できるパブリックプレビューです。対象を選択した環境では `gh` が更新可能な認証情報を管理するため、長期利用するワークフローでも資格情報の無期限化を避けられます。利用開始前に CLI バージョンと保存先の認証設定を確認し、まず開発端末や非本番 CI で再認証を検証してください。

## Bulk migrate branch protections to rulesets for a repository

- 公開日 (UTC): `2026-10-20 18:06:21`
- リンク: <https://github.blog/changelog/2026-10-20-bulk-migrate-branch-protections-to-rulesets-for-a-repository>

リポジトリ内のすべての Branch protection rules を、Rulesetsへ一括移行できるようになりました。管理者は単一ルールの変換に加えてリポジトリ全体をまとめて移行でき、既存ルールのレビューや引継ぎ作業を削減できます。移行前に対象ブランチ、必須チェック、管理者によるバイパス権限を比較し、段階的に適用してください。

## Updates to GitHub secret scanning

- 公開日 (UTC): `2026-10-20 18:03:55`
- リンク: <https://github.blog/changelog/2026-10-20-updates-to-github-secret-scanning>

GitHub secret scanning の監査ログ形式が更新され、2026年11月12日から一部の `secret_scanning_alert.*` と `secret_scanning_push_protection.bypass` イベントに含まれる `business` フィールドの値が変わります。企業監査ログを Slack、SIEM、独自レポートへ連携している運用者はフィールドの意味と既存フィルターへの影響を確認し、移行前後のイベントで検証してください。

## Dependabot alerts REST API now includes dependency versions

- 公開日 (UTC): `2026-10-20 17:13:40`
- リンク: <https://github.blog/changelog/2026-10-20-dependabot-alerts-rest-api-now-includes-dependency-versions>

Dependabot Alerts REST API のレスポンスから、脆弱な依存関係のバージョン要件を取得できるようになりました。各アラートの dependency オブジェクトに追加されたフィールドを利用すると、スキャン結果だけでなく修正対象を特定しやすくなります。API ベースの脆弱性レポートや自動修正フローを持つチームはレスポンススキーマを確認してください。

## GitHub package firewall in public preview

- 公開日 (UTC): `2026-10-20 16:11:53`
- リンク: <https://github.blog/changelog/2026-10-20-github-package-firewall-in-public-preview>

GitHub package firewall がパブリックプレビューとして提供され、インストール時に悪意あるパッケージをブロックできるようになります。依存関係を取得する開発環境やエージェント、CI でのサプライチェーン攻撃対策として利用できるため、許可・ブロックポリシーと既存ビルドへの影響を段階的に検証してください。まず非本番リポジトリで公開ポリシーを適用し、誤検知時の例外手順を整えることが推奨されます。

## Dependabot now supports npm 12, pnpm 11 and 12, and Bun 1.4

- 公開日 (UTC): `2026-10-20 13:52:38`
- リンク: <https://github.blog/changelog/2026-10-20-dependabot-now-supports-npm-12-pnpm-11-and-12-and-bun-1-4>

Dependabot が npm 12、pnpm 11/12、Bun 1.4 をサポートしました。これらへアップグレードしても依存関係更新の継続利用が可能になるため、最新ランタイムへ移行する Node.js プロジェクトは Dependabot 設定を維持できます。アップグレード時はロックファイル形式と npm/pnpm/Bun の CI 実行環境を同時に更新してください。

## Copilot model policy API for enterprise, orgs, and teams

- 公開日 (UTC): `2026-10-19 21:32:18`
- リンク: <https://github.blog/changelog/2026-10-19-copilot-model-policy-api-for-enterprise-orgs-and-teams>

Enterprise、Enterprise Team、Agent App、Organization の GitHub Copilot モデルポリシーを REST API で取得・更新できるようになりました。管理者はコードや自動化からポリシーを一括管理できるため、既存の組織管理 API と連携して監査可能な設定変更を行えます。利用開始時は API の権限要件と対象スコープを確認し、まず GET で現行ポリシーを取得してください。

## GitHub Copilot models deprecated on October 19, 2026

- 公開日 (UTC): `2026-10-19 21:27:10`
- リンク: <https://github.blog/changelog/2026-10-19-github-copilot-models-deprecated-on-october-19-2026>

2026年10月19日時点で、一部の GitHub Copilot モデルが複数の Copilot 体験から廃止されました。Chat、インライン編集、Agent、コード補完で固定モデルを指定する利用者や自動化は選択できなくなる可能性があるため、利用中モデルの設定を確認してサポート対象モデルへ変更する必要があります。

## Some Git over HTTPS may temporarily require authentication

- 公開日 (UTC): `2026-10-19 10:37:30`
- リンク: <https://github.blog/changelog/2026-10-19-some-git-over-https-may-temporarily-require-authentication>

GitHub のトラフィックが異常に増加した場合、公開リポジトリの HTTPS clone/fetch でも一時的に認証が要求されることがあります。認証なしの公開リポジトリ取得を前提にする CI/CD は予期せぬ認証失敗を回避できるよう、読み取り用トークンや GitHub Actions の認証設定を確認し、429 ではなく認証エラーが返る可能性も監視してください。

## CodeQL changes for macOS 27, Xcode 27, and Swift 6.4

- 公開日 (UTC): `2026-10-19 10:29:09`
- リンク: <https://github.blog/changelog/2026-10-19-codeql-changes-for-macos-27-xcode-27-and-swift-6-4>

macOS 27、Xcode 27、Swift 6.4 を使うワークロード向けに、CodeQL の解析環境と対象バージョンが更新されています。Apple が一部バイナリから Intel x86_64 コードを削除したため、従来の CodeQL ビルドトレースに影響する可能性があります。該当ツールチェーンで解析を行うリポジトリは GitHub Actions のランナーや CodeQL バージョンを最新に更新し、ビルド解析が正常に完了することを確認してください。
