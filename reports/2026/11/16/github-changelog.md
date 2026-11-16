# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

対象期間内の GitHub Changelog 新着は **7 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Upcoming deprecation of selected GitHub Copilot models in December

- 公開日 (UTC): `2026-11-13 20:40:05`
- リンク: <https://github.blog/changelog/2026-11-13-upcoming-deprecation-of-selected-github-copilot-models-in-december>

GitHub Copilot の各機能で、Claude Fable 5、Claude Haiku 4.5、Gemini 3.8 Flash、Gemini 4 Argon、Grok 4.6、Kimi K3 が **2026 年 12 月 14 日に廃止**されます。代替モデルは順に Claude Fable 5.2、Haiku 5.5、Gemini 4 Hydrogen、Gemini 4 Carbon、Grok 4.7（Kimi K3 は未発表）です。
Copilot Enterprise / Business では既定のモデル有効化が有効なら代替モデルが自動有効になりますが、管理者がグローバル既定を無効化している場合はモデルポリシーで有効化してください。廃止前にチャット、インライン編集、Ask / Agent、コード補完などの利用モデルを切り替えてください。
個人向け年額プランの Copilot 利用者は Claude Haiku 4.5 の廃止対象外です。廃止後にモデルを手動で削除する作業は不要です。

## GitHub Enterprise Server support in the GitHub Copilot app

- 公開日 (UTC): `2026-11-13 18:27:13`
- リンク: <https://github.blog/changelog/2026-11-13-github-enterprise-server-support-in-the-github-copilot-app>

GitHub Copilot app から GitHub Enterprise Server (GHES) のリモートリポジトリ、Issue、Pull Request を扱う機能が **一般提供 (GA)** になりました。利用には先に GitHub.com または GHE.com アカウントでサインインし、Settings > Accounts > Add account から GHES アカウントを追加します。
Copilot app 1.2.0 以降が必要です。GHES アカウントではクラウドセッションを利用できないため、利用環境を確認してください。

## Gemini 4 Hydrogen in GitHub Copilot

- 公開日 (UTC): `2026-11-13 18:23:48`
- リンク: <https://github.blog/changelog/2026-11-13-gemini-4-hydrogen-in-github-copilot>

Gemini 4 Hydrogen が GitHub Copilot で **一般提供 (GA)** され、Gemini 3.8 Flash より指示追従を改善した、高速なエージェント型コーディング、ツール利用、複数ステップ処理向けモデルとして利用できます。Copilot Pro / Pro+ / Max / Business / Enterprise が対象で、対応クライアントのモデル選択欄から選べます（段階的ロールアウト）。
利用量課金ではプロバイダーのリスト価格が適用されます。Enterprise / Business の管理者は Copilot 設定のモデルポリシーでアクセスを管理でき、既定のモデル有効化を無効にしている場合は必要に応じて個別に有効化してください。

## Manage AI Scan for repositories using the REST API

- 公開日 (UTC): `2026-11-13 12:22:41`
- リンク: <https://github.blog/changelog/2026-11-13-manage-ai-scan-for-repositories-using-the-rest-api>

Code scanning の AI Scan for repositories を組織・リポジトリ単位で REST API から有効/無効にする機能がパブリックプレビューになりました。既存の AI Scan 設定 API に `repository_scan` を追加し、組織およびリポジトリの GET / PATCH エンドポイントで管理できます。
組織で無効にすると配下のリポジトリでは有効化できず、組織で有効にすると各リポジトリに継承され、個別にオプトアウトできます。Enterprise ポリシーで許可されていない場合は 422 となり、`pr_scan` と同時更新時も片方がブロックされると双方変更されません。
設定を有効にしてもスキャンは自動開始されず、書き込み権限のある利用者が実行します。実行ごとに GitHub Code Security AI クレジットを消費するため、導入前に権限・ポリシー・クレジットを確認してください。

## Actions for ARM32 Linux & Windows retirement

- 公開日 (UTC): `2026-11-12 20:59:36`
- リンク: <https://github.blog/changelog/2026-11-12-actions-for-arm32-linux-windows-retirement>

GitHub Actions のホステッドランナーは **2026 年 12 月 8 日までに** Windows / Linux 上の ARM32 ジョブ実行を終了し、ネイティブ AArch32 ユーザー空間の実行もサポート対象外になります。Node 20 のサポート終了に続く変更で、後継の Node 24 が ARM32 をサポートしないことが背景です。
対象アーキテクチャを指定しているワークフローや依存アクションを確認し、期限までに ARM32 以外の実行環境へ移行してください。

## Secret scanning detects Cloudflare service tokens

- 公開日 (UTC): `2026-11-12 14:38:25`
- リンク: <https://github.blog/changelog/2026-11-12-secret-scanning-adds-a-detector-for-cloudflare>

Secret scanning が Cloudflare の `cloudflare_access_service_token` を新たに自動検出するようになりました。Cloudflare サービス用トークンを含むリポジトリでは、既存の Secret scanning による検出対象が追加されます。
公開リポジトリで見つかった Partner secret は Secret Scanning Partnership Program を通じて発行元へ自動報告され、User secret は公開・プライベート両方のリポジトリでアラートになります。該当トークンが検出された場合はアラートを確認し、漏えいした資格情報を失効・更新してください。

## Public monitoring alerts now have direct links

- 公開日 (UTC): `2026-11-12 14:37:38`
- リンク: <https://github.blog/changelog/2026-11-12-public-monitoring-alerts-now-have-direct-links>

GitHub Enterprise Cloud の Public monitoring で、各アラート番号から個別アラートの詳細を直接開けるようになりました。URL をブックマークしたり、アクセス権のあるチームメンバーと共有したりできます。
GitHub Secret Protection または GitHub Advanced Security を利用する Enterprise Cloud 顧客向けで、追加料金はありません。既存の Public monitoring ビューから利用でき、移行作業は不要です。
