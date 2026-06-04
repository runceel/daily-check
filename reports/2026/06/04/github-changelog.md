# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

GitHub Changelog フィードから直近 **8 件** を取り込みました。

---

## GitHub Copilot in Visual Studio Code, May releases

- 公開日 (UTC): `2026-06-03 13:30:58`
- リンク: <https://github.blog/changelog/2026-06-03-github-copilot-in-visual-studio-code-may-releases>

VS Code の GitHub Copilot 拡張が 5 月中に v1.120〜v1.123 の 4 週分をリリース。主なトピックは Agents モードの強化・UI の改善・ラバーダック機能の統合。VS Code ユーザーはすでに自動更新で受け取っているはず。詳細は各バージョンのリリースノートを参照。

## GPT-4.1 deprecated

- 公開日 (UTC): `2026-06-02 23:58:52`
- リンク: <https://github.blog/changelog/2026-06-02-gpt-4-1-deprecated>

**GPT-4.1 がすべての Copilot 体験（Chat・Inline Edit・Ask/Agent モード・コード補完）から 2026-06-01 付けで廃止された。**  
代替モデルへの移行を推奨。Copilot Chat ではモデルセレクターで他のモデルを選択することで継続利用できる。API 経由で GPT-4.1 を指定していた場合は移行先モデルの確認が必要。

## Expanded technical preview availability for the GitHub Copilot app

- 公開日 (UTC): `2026-06-02 17:36:00`
- リンク: <https://github.blog/changelog/2026-06-02-expanded-technical-preview-availability-for-the-github-copilot-app>

GitHub Copilot アプリ（デスクトップ版）のテクニカルプレビューが **Copilot Pro / Pro+ / Business / Enterprise** の既存ユーザー全員に拡大。Windows・macOS・Linux 向けのダウンロードが可能。IDE に縛られずに Copilot のエージェント機能を単独アプリで使いたいユーザー向け。

## **[GA]** Copilot SDK is now generally available

- 公開日 (UTC): `2026-06-02 17:30:00`
- リンク: <https://github.blog/changelog/2026-06-02-copilot-sdk-is-now-generally-available>

**GitHub Copilot SDK が GA** となり、安定 API + 本番サポート付きで自社アプリやサービス・開発ツールに Copilot のエージェントエンジンを組み込めるようになった。  
microsoft/agent-framework の Python チャネル `agent-framework-hosting-a2a` や `github-copilot` チャネルが SDK v1.0.0 に対応した変更（PR #6292）とも連動している。SDK を使って Copilot を外部サービスに統合したい開発者にとって重要なマイルストーン。

## Copilot CLI: Improved UI, rubber duck, prompt scheduling, and voice input

- 公開日 (UTC): `2026-06-02 17:27:00`
- リンク: <https://github.blog/changelog/2026-06-02-copilot-cli-improved-ui-rubber-duck-prompt-scheduling-and-voice-input>

Microsoft Build 2026 に合わせた大型アップデート。**ラバーダック機能と音声入力が GA**、プロンプトスケジューリングと新しい実験的ターミナル UI は Public Preview として提供開始。ターミナルワークフローの自動化・音声操作を活用したい開発者はアップデートを確認。

## Cloud and local sandboxes for GitHub Copilot now in public preview

- 公開日 (UTC): `2026-06-02 17:25:00`
- リンク: <https://github.blog/changelog/2026-06-02-cloud-and-local-sandboxes-for-github-copilot-now-in-public-preview>

Copilot のツール実行を **ローカルおよびクラウドの分離サンドボックス** 内で行える機能が Public Preview に。セキュリティ上の理由でツールがホスト環境に直接アクセスするのを避けたい企業・チームが主な対象。クラウドサンドボックスは CI 的なエフェメラル環境として、ローカルサンドボックスはコンテナベースで動作する。

## GitHub Copilot code review for Azure Repos is now in technical preview

- 公開日 (UTC): `2026-06-02 17:22:00`
- リンク: <https://github.blog/changelog/2026-06-02-github-copilot-code-review-for-azure-repos-is-now-in-technical-preview>

GitHub Copilot のコードレビュー機能が **Azure DevOps / Azure Repos のプルリクエスト** にも対応（テクニカルプレビュー）。Azure DevOps ワークフローをそのまま使いながら Copilot による PR レビューを取り込める。GitHub への移行なしに Copilot レビューを試したい Azure DevOps 組織に朗報。

## Shape Copilot code review around your team

- 公開日 (UTC): `2026-06-02 17:22:00`
- リンク: <https://github.blog/changelog/2026-06-02-shape-copilot-code-review-around-your-team>

Copilot コードレビューに **エージェントスキルと MCP** を用いてチーム固有のツール・標準・ルールを組み込める Public Preview が公開。変更の複雑さに応じてレビューの深さを自動調整する機能も含む。コードレビューポリシーをカスタマイズしたいエンジニアリングチームにとって重要なアップデート。