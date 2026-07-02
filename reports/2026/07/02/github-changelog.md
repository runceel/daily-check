# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Enterprises can default to auto model selection

- 公開日 (UTC): `2026-07-01 22:27:16`
- リンク: <https://github.blog/changelog/2026-07-01-enterprises-can-default-to-auto-model-selection>

Enterprise 管理者が `.github-private` リポジトリの `managed-settings.json` に `model: auto` を設定することで、新規会話の Copilot モデル選択を組織全体で「自動選択」にデフォルト化できるようになりました。モデル選定をエンドユーザーに委ねず統制したい Enterprise 管理者向けの設定変更で、単なる新機能追加であり緊急対応は不要です。

## GitHub Models is being fully retired on July 30, 2026

- 公開日 (UTC): `2026-07-01 21:30:20`
- リンク: <https://github.blog/changelog/2026-07-01-github-models-is-being-fully-retired-on-july-30-2026>

**⚠ 廃止（要対応）**: GitHub Models は 2026年7月30日 に完全に廃止されます。6月時点で新規顧客への提供は既に停止済みで、今回は最終停止日の告知です。GitHub Models を利用している既存プロジェクトは、Azure AI Foundry など代替のモデル提供先への移行を 7/30 までに完了する必要があります。

## Enterprise managed-settings.json is generally available

- 公開日 (UTC): `2026-07-01 20:57:26`
- リンク: <https://github.blog/changelog/2026-07-01-enterprise-managed-settings-json-is-generally-available>

GitHub Enterprise Cloud で、選択した Organization 配下の `.github-private` リポジトリに置く `managed-settings.json` による AI ガバナンス設定機能が GA しました。Copilot の利用ルールを組織横断で一元管理したい Enterprise 管理者向けの機能で、上記の auto モデル選択のデフォルト化などもこの仕組み上で実現されています。

## Secret scanning adds validators for Asana, IBM, and MessageBird

- 公開日 (UTC): `2026-07-01 20:49:41`
- リンク: <https://github.blog/changelog/2026-07-01-secret-scanning-adds-validators-for-asana-ibm-and-messagebird>

Secret scanning が Asana・IBM・MessageBird のシークレットに対応する有効性チェック（validity check）に対応し、検出したシークレットが実際に有効かどうかを自動判定できるようになりました。これらのサービスのトークンを扱うリポジトリの管理者は、誤検出との切り分けが容易になります。

## New C++ language server config skill for Copilot CLI

- 公開日 (UTC): `2026-07-01 20:32:52`
- リンク: <https://github.blog/changelog/2026-07-01-new-c-language-server-config-skill-for-copilot-cli>

Microsoft C++ Language Server が Copilot Plugins マーケットプレイスにプラグインとして公開され、プロジェクトのセットアップを自動化する組み込み skill を備えました。Copilot CLI で C++ プロジェクトを扱う開発者は、このプラグインを導入することで言語サーバー設定の手間を省けます。

## Kimi K2.7 Code is generally available in GitHub Copilot

- 公開日 (UTC): `2026-07-01 19:00:21`
- リンク: <https://github.blog/changelog/2026-07-01-kimi-k2-7-is-now-available-in-github-copilot>

オープンウェイトモデル「Kimi K2.7 Code」が GitHub Copilot のモデルピッカーで選択可能な GA モデルとして追加されました。Copilot のモデルピッカーに初めて登場するオープンウェイトモデルで、コスト・特性面で選択肢を増やしたい開発者は試す価値があります。

## Copilot vision is generally available

- 公開日 (UTC): `2026-07-01 18:39:17`
- リンク: <https://github.blog/changelog/2026-07-01-copilot-vision-is-generally-available>

Copilot vision（画像・PDF をチャットプロンプトに添付し、コードと合わせて解釈させる機能）が GA しました。UI モックアップやエラー画面のスクリーンショット、仕様書 PDF などを直接貼り付けて質問したい開発者向けの機能で、追加設定なしに利用できます。

## Set AI credit session limits in Copilot CLI and SDK

- 公開日 (UTC): `2026-07-01 18:33:24`
- リンク: <https://github.blog/changelog/2026-07-01-set-ai-credit-session-limits-in-copilot-cli-and-sdk>

Copilot CLI と GitHub Copilot SDK で、1 セッションあたりの AI クレジット消費に上限を設定できるようになりました。自律的に長時間動くエージェントを運用するチームは、予期しないコスト超過を防ぐためにセッション上限の設定を検討するとよいでしょう。

## Browser tools for GitHub Copilot in VS Code are generally available

- 公開日 (UTC): `2026-07-01 16:01:00`
- リンク: <https://github.blog/changelog/2026-07-01-browser-tools-for-github-copilot-in-vs-code-are-generally-available>

VS Code の GitHub Copilot 向けブラウザ操作ツールが GA しました（本エントリは権限管理とネットワークドメイン制御に関する説明を追記した編集版）。Copilot にブラウザを操作させて Web ページの検証やデバッグを行いたい開発者向けの機能で、権限やアクセス可能なドメインは引き続きユーザー側で制御できます。

## Copilot CLI auto model selection routes based on task

- 公開日 (UTC): `2026-07-01 15:13:29`
- リンク: <https://github.blog/changelog/2026-07-01-copilot-cli-auto-model-selection-routes-based-on-task>

Copilot CLI の自動モデル選択が、タスク内容に応じて最適なモデルへ自動的にルーティングするようになりました（本エントリはプレミアムリクエストのコスト表記を AI クレジット基準に更新した編集版）。モデル選択を意識せずタスクごとに最適化させたい CLI 利用者向けの改善です。
