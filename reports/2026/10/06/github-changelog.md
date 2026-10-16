# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。トークン形式変更・npm の公開条件・Copilot モデル非推奨化は既存連携の確認が必要です。

## Secret scanning adds detectors for Lovable, Supabase, and more

- 公開日 (UTC): `2026-10-05 22:42:14`
- リンク: <https://github.blog/changelog/2026-10-05-secret-scanning-adds-detectors-for-lovable-supabase-and-more>

Lovable Labs、Pydantic Services、Supabase の新しいシークレット種別が検出対象になりました。
これらのサービスを使うリポジトリ管理者は secret scanning の設定と新規アラートを確認し、検出された有効な鍵は失効・再発行してください。検出範囲拡大の告知であり、サービス移行は不要です。

## Stateless GitHub App installation tokens rolled out

- 公開日 (UTC): `2026-10-02 22:18:23`
- リンク: <https://github.blog/changelog/2026-10-02-stateless-github-app-installation-tokens-rolled-out>

GitHub App installation token の stateless 形式への展開が完了しました。`ghs_` プレフィックスは維持されますが、長さは40文字から約520文字の `ghs_APPID_JWT` 形式になります。権限・対象リポジトリ・1時間の有効期限は変わりません。
**既存連携は固定長検証、DB／シークレット格納先、Authorization ヘッダー、マスキング規則を確認してください。** 一時ヘッダー `X-GitHub-Stateless-S2S-Token` は2026年11月30日以降無視されるため、両形式の検証後に本番コードから削除します。

## Copilot code review: API support and new default effort level

- 公開日 (UTC): `2026-10-02 19:13:50`
- リンク: <https://github.blog/changelog/2026-10-02-copilot-code-review-api-support-and-new-default-effort-level>

REST／GraphQL API から Copilot code review を要求し、要求ごとに effort level を指定できるようになりました。
既定値は **Balanced** になります。レビューを自動化するチームは API を利用でき、従来の既定動作に依存する運用では必要な effort を明示するか確認してください。

## Unvalidated npm trusted publishing configurations now expire

- 公開日 (UTC): `2026-10-02 19:07:04`
- リンク: <https://github.blog/changelog/2026-10-02-unvalidated-npm-trusted-publishing-configurations-now-expire>

**未検証の npm trusted publishing 設定は作成48時間後に失効**し、公開を許可しなくなります。最初の公開成功で検証済みとなり失効対象外になりますが、失効した設定は再作成が必要です。
また GitHub Actions の `issue_comment` イベントによるトークンが拒否されます。該当する公開ワークフローは `push`／`release`／`workflow_dispatch` 等へ変更してください。既存の `pull_request_target` 禁止も継続します。

## npm staged publishing now supports creating new packages

- 公開日 (UTC): `2026-10-02 19:05:17`
- リンク: <https://github.blog/changelog/2026-10-02-npm-staged-publishing-now-supports-creating-new-packages>

`npm stage publish` で新しいパッケージも作成でき、ローカルセッションや granular access token、stage-only token を使えます。
初回公開を含めて段階的な公開手順を組みたいメンテナー向けです。導入時はトークン権限とステージ後の公開フローを確認し、既存の公開方法からの移行は任意です。

## Selected models in GitHub Copilot deprecated

- 公開日 (UTC): `2026-10-02 18:24:19`
- リンク: <https://github.blog/changelog/2026-10-02-selected-models-in-github-copilot-deprecated>

**2026年10月2日付で Gemini 3.5 Flash／3.6 Flash、Kimi K2.7 Code、Claude Opus 4.7 が非推奨化**されました。推奨代替はそれぞれ Gemini 3.8 Flash、Kimi K3、Claude Opus 5.5 です。
Chat・編集・エージェント・補完を含む全 Copilot 体験が対象です。モデルを固定するワークフロー・連携を更新し、Enterprise 管理者は代替モデルのポリシーを有効化してください。旧モデルを手動削除する必要はありません。

## New fields for SecurityAdvisory GraphQL API

- 公開日 (UTC): `2026-10-02 13:18:00`
- リンク: <https://github.blog/changelog/2026-10-02-new-fields-for-securityadvisory-graphql-api>

`SecurityAdvisory` に `cveId`、`sourceCodeLocation`、`githubReviewedAt`、`nvdPublishedAt`、`repositoryAdvisoryUrl` が追加され、`securityAdvisories` に `severities`／`isWithdrawn` フィルターが追加されました。
脆弱性情報を収集する連携で REST への追加問い合わせやクライアント側の絞り込みを減らせます。読み取り用の追加変更なので既存クエリはそのまま動作し、移行は任意です。

## Confidential comments on repository security advisories

- 公開日 (UTC): `2026-10-02 13:15:40`
- リンク: <https://github.blog/changelog/2026-10-02-confidential-comments-on-repository-security-advisories>

Repository security advisory に、リポジトリの write 権限を持つ人だけが閲覧できる confidential comment を投稿できます。
メンテナー内部の調整と報告者との議論を分離する機能です。機密な調査メモを投稿する際は公開範囲を確認し、通常コメントとの使い分けを決めてください。

## Repository security advisory comments API in public preview

- 公開日 (UTC): `2026-10-02 13:15:25`
- リンク: <https://github.blog/changelog/2026-10-02-repository-security-advisory-comments-api-in-public-preview>

REST API から repository security advisory のコメントを取得・追加・編集できる機能がパブリックプレビューになりました。非公開脆弱性報告から作られた advisory も対象です。
セキュリティ対応を外部の管理ツールに連携するチームは、必要権限と機密情報の扱いを確認して評価できます。既存の画面操作からの移行義務はありません。

## Rate limits for private vulnerability reports

- 公開日 (UTC): `2026-10-01 19:57:39`
- リンク: <https://github.blog/changelog/2026-10-01-rate-limits-for-private-vulnerability-reports>

非公開脆弱性報告の新規投稿に、ユーザー単位・日単位のリポジトリ別／GitHub 全体の制限が導入されました。既存 advisory へのコメントは対象外です。
公開リポジトリの管理者は Advanced Security の Private vulnerability reporting 設定で全体上限と信頼済み報告者の allow list を設定できます。自動報告ツールは制限到達時の再試行を見直してください。
