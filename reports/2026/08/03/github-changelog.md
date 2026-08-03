# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Gemini 2.5 Pro and Gemini 3 Flash deprecated

- 公開日 (UTC): `2026-07-31 20:04:01`
- リンク: <https://github.blog/changelog/2026-07-31-gemini-2-5-pro-and-gemini-3-flash-deprecated>

GitHub Copilot の Chat、インライン編集、Ask、Agent、コード補完など全体で Gemini 2.5 Pro と Gemini 3 Flash が非推奨になりました。これらのモデルを指定している利用者・管理者は、現在利用可能な後継モデルへ設定を切り替え、プロンプトや品質を再検証してください。

## Enterprise teams model policy targeting in public preview

- 公開日 (UTC): `2026-07-31 18:11:50`
- リンク: <https://github.blog/changelog/2026-07-31-enterprise-teams-model-policy-targeting-in-public-preview>

GitHub Enterprise の Copilot Business / Enterprise で、ユーザー単位にモデル ポリシーを割り当てる機能がパブリック プレビューになりました。AI 管理者は組織の基準モデルを定めつつ、チームやユーザーごとに許可モデルを調整できます。管理設定で有効化し、対象グループへの影響を確認してください。

## Restricting npm bypass-2FA granular access tokens

- 公開日 (UTC): `2026-07-31 16:45:50`
- リンク: <https://github.blog/changelog/2026-07-31-restricting-npm-bypass-2fa-granular-access-tokens>

npm の 2FA バイパス設定付き granular access token（GAT）は、アカウント・組織・パッケージ管理などの機密操作に使えなくなりました。該当する自動化や管理者は、対話的な 2FA チャレンジに対応できる運用へ変更し、CI/CD で失敗しないことを確認してください。

## GitHub Models is now retired

- 公開日 (UTC): `2026-07-30 19:14:22`
- リンク: <https://github.blog/changelog/2026-07-30-github-models-is-now-retired>

GitHub Models は 2026 年 7 月 30 日をもって廃止され、Playground、モデル カタログ、Inference API、BYOK が利用できなくなりました。これらを使う開発者は、利用中の実験・API 呼び出し・キー管理を別の提供元または GitHub の後継サービスへ移行する必要があります。

## Reference same-repository actions with self-repository syntax

- 公開日 (UTC): `2026-07-30 17:39:46`
- リンク: <https://github.blog/changelog/2026-07-30-reference-same-repository-actions-with-self-repository-syntax>

同じリポジトリ内の Action や再利用可能ワークフローを、`uses:` の値を `$/` で始める self-repository 構文で参照できるようになりました。Workflow のリポジトリ名の重複記述を減らしたい開発者は新構文を利用できます。既存構文は急いで変更せず、段階的に置き換えてください。

## Stacked pull requests are now in public preview

- 公開日 (UTC): `2026-07-30 16:14:29`
- リンク: <https://github.blog/changelog/2026-07-30-stacked-pull-requests-are-now-in-public-preview>

Stacked pull requests がパブリック プレビューになり、大きな変更をレビューしやすい小さな PR の順序付きスタックに分割できます。段階的なレビューや依存関係のある変更を扱う開発チーム向けです。プレビューの制約を確認し、重要なブランチ運用では試行後に採用してください。

## GitHub Copilot in Visual Studio — July update

- 公開日 (UTC): `2026-07-30 15:01:48`
- リンク: <https://github.blog/changelog/2026-07-30-github-copilot-in-visual-studio-july-update>

Visual Studio の GitHub Copilot に、Copilot SDK ベースの新しい Agent、.NET / Azure チームの専門知識、応答や動作を調整する設定が追加されました。Visual Studio 利用者は更新後に利用可能な Agent と組織ポリシーを確認し、開発フローへの適合性を評価できます。

## Limit remote control to managed devices

- 公開日 (UTC): `2026-07-30 14:54:47`
- リンク: <https://github.blog/changelog/2026-07-30-limit-remote-control-to-managed-devices>

企業・組織は、リモート操作される Copilot セッションをホストできるデバイスを管理対象に限定できるようになりました。管理者は `remoteControl` 関連ポリシーでアクセス可能な端末を絞り、端末管理やコンプライアンス要件に合わせて設定してください。

## GitHub Copilot in Visual Studio Code, July 2026 releases

- 公開日 (UTC): `2026-07-30 08:00:00`
- リンク: <https://github.blog/changelog/2026-07-30-github-copilot-in-visual-studio-code-july-2026-releases>

VS Code 1.127〜1.131 の 7 月リリースで、Agent 操作、変更レビュー、Chat、ナビゲーションが改善されました。VS Code と Copilot の利用者は拡張機能・設定との互換性を確認し、組織で固定しているバージョンがあれば更新計画を見直してください。

## Copilot code review: Agent skills and MCP now generally available

- 公開日 (UTC): `2026-07-29 21:26:19`
- リンク: <https://github.blog/changelog/2026-07-29-copilot-code-review-agent-skills-and-mcp-now-generally-available>

Copilot code review の Agent skills と MCP サーバー対応が、Copilot Pro、Pro+、Business、Enterprise の全ユーザー向けに一般提供されました。レビュー時に組織のスキルや MCP を利用したいチームは、権限・接続先・データ取り扱いを確認して有効化できます。
