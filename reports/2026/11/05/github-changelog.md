# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## CodeQL 2.27.4 improves accuracy and query metadata

- 公開日 (UTC): `2026-11-04 20:04:52`
- リンク: <https://github.blog/changelog/2026-11-04-codeql-2-27-4-improves-accuracy-and-query-metadata>

CodeQL 2.27.4 では複数のクエリの検出精度が改善され、クエリメタデータも更新されました。GitHub code scanning で CodeQL を利用するチームは、通常の解析更新を通じて変更を取り込み、検出結果を確認してください。

## GitHub Copilot is now available in Xcode’s coding assistant

- 公開日 (UTC): `2026-11-04 19:10:40`
- リンク: <https://github.blog/changelog/2026-11-04-github-copilot-is-now-available-in-xcodes-coding-assistant>

GitHub Copilot を Xcode 内蔵のコーディングアシスタントから直接利用できる統合機能がパブリックプレビューになり、Xcode のネイティブな開発フローで Copilot を使えます。
Xcode を利用する開発者は、プレビュー提供条件と対応バージョンを告知先で確認して試用してください。既存の Xcode 作業フローを移行する必要があるとの告知ではありません。

## BYOK and enterprise custom models in the Copilot usage API

- 公開日 (UTC): `2026-11-04 00:32:19`
- リンク: <https://github.blog/changelog/2026-11-03-byok-and-enterprise-custom-models-in-the-copilot-usage-api>

Copilot usage metrics API が BYOK 利用量を可視化し、Copilot 提供モデルの利用量と区別できるようになりました。レポートは BYOK とエンタープライズのカスタムモデル利用を扱います。
Copilot の利用状況を集計する管理者は、API の新しい利用量データを確認し、既存のレポートや分析でモデル種別を分けて把握してください。

## Dependabot version updates support Agent Package Manager

- 公開日 (UTC): `2026-11-03 20:24:07`
- リンク: <https://github.blog/changelog/2026-11-03-dependabot-version-updates-support-agent-package-manager>

Dependabot version updates が Agent Package Manager（APM）に対応し、AI エージェントのスキル、プロンプト、指示ファイルなどの対応パッケージ更新をプルリクエストで提案できるようになりました。
APM で管理するエージェント資産を保守するチームは、Dependabot の設定と対応パッケージを確認し、更新 PR をレビューする運用を整えてください。

## Look up a resource’s cost center with the GitHub REST API

- 公開日 (UTC): `2026-11-03 15:27:13`
- リンク: <https://github.blog/changelog/2026-11-03-look-up-a-resources-cost-center-with-the-github-rest-api>

GitHub REST API で、ユーザー、Organization、リポジトリ、Enterprise team が所属するコストセンターを直接検索できるようになりました。従来のように全コストセンターを列挙して照合する必要がありません。
費用配賦や資産管理を自動化している管理者は、API を利用して対象リソースのコストセンターを効率よく参照できます。

## GitHub Copilot is now available in JetBrains Air

- 公開日 (UTC): `2026-11-03 15:11:46`
- リンク: <https://github.blog/changelog/2026-11-03-github-copilot-is-now-available-in-jetbrains-air>

JetBrains Air で GitHub Copilot を利用し、コーディングタスクの委任、実行のガイド、結果のレビューを行えるようになりました。統合には Agent Client Protocol（ACP）が使われます。
JetBrains Air の利用者は、対応するタスクや有効化条件を告知先で確認して利用してください。既存の IDE 利用を変更する必要があるとの案内ではありません。

## CodeQL 2.27.3 adds Python 3.15 features and JSON data extensions

- 公開日 (UTC): `2026-11-03 14:56:03`
- リンク: <https://github.blog/changelog/2026-11-03-codeql-2-27-3-adds-python-3-15-features-and-json-data-extensions>

CodeQL 2.27.3 は Python 3.15 の新しい言語機能をサポートし、JSON データ拡張も追加しました。CodeQL code scanning を使う Python / JSON プロジェクトに関係する更新です。
対象リポジトリの担当者は、CodeQL の解析を更新して新しい言語機能の検査対応を取り込み、結果に予期しない変化がないか確認してください。

## Dependabot now supports Python 3.15

- 公開日 (UTC): `2026-11-03 13:49:32`
- リンク: <https://github.blog/changelog/2026-11-03-dependabot-now-supports-python-3-15>

Dependabot が Python 3.15 をサポートし、Python 3.15 にアップグレードしたプロジェクトも依存関係更新を受け取れるようになりました。github.com の全ユーザーが利用できます。
Python 3.15 を採用するプロジェクトは、Dependabot が引き続き更新を検出できることを確認し、通常どおり提案された更新をレビューしてください。

## GitHub Desktop adds short-lived authentication tokens

- 公開日 (UTC): `2026-11-03 07:55:58`
- リンク: <https://github.blog/changelog/2026-11-02-github-desktop-adds-short-lived-authentication-tokens>

GitHub Desktop 3.6.10 以降では、対象アカウントが短命で自動更新される認証トークンを利用できます。トークンの有効期間を短くすることで、漏えい時の悪用可能な時間を抑えます。
対象アカウントの利用者は GitHub Desktop を対応バージョン以降に更新し、サインイン時に新しい認証方式が適用されるか確認してください。

## Security risk assessments include repository protection status

- 公開日 (UTC): `2026-11-02 15:47:21`
- リンク: <https://github.blog/changelog/2026-11-02-security-risk-assessments-include-repository-protection-status>

GitHub の code security / secret risk assessment で、検出事項が保護済みまたは未保護のリポジトリのどちらにあるかを確認できるようになりました。セキュリティ範囲の不足箇所を見つける助けになります。
Organization 管理者やセキュリティ担当者は未保護リポジトリの検出結果を確認し、必要なリポジトリ保護やセキュリティ機能の適用範囲を見直してください。
