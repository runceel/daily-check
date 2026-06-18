# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Read remote repository content with GitHub CLI

- 公開日 (UTC): `2026-06-17 20:03:57`
- リンク: <https://github.blog/changelog/2026-06-17-read-remote-repository-content-with-github-cli>

GitHub CLI に `gh repo read-file` と `gh repo read-dir` が追加され、clone せずにリモートリポジトリのファイルやディレクトリ内容を端末から確認できるようになりました。
調査・自動化・軽量レビュー用途の利便性向上で、既存ワークフローへの破壊的変更ではありません。

## Secret scanning updates – June 2026

- 公開日 (UTC): `2026-06-17 19:23:42`
- リンク: <https://github.blog/changelog/2026-06-17-secret-scanning-updates-june-2026>

Secret scanning の検出対象が新しいパートナーや追加パターンに広がり、push protection で既定ブロックされるパターン、妥当性チェック、漏えいシークレットのメタデータも強化されました。
GitHub Advanced Security を使う組織では検出精度とブロック範囲が広がるため、誤検知運用や例外申請フローを確認しておくと安全です。

## Enterprise-managed settings now support bypass permission controls

- 公開日 (UTC): `2026-06-17 17:13:47`
- リンク: <https://github.blog/changelog/2026-06-17-enterprise-managed-settings-now-support-bypass-permission-controls>

Enterprise-managed settings にバイパス権限制御が追加され、管理者は `settings.json` の `disableBypassPermissionsMode` を `disable` にして Copilot CLI / VS Code でのバイパスを防げます。
Copilot 利用ポリシーを中央統制したい Enterprise 管理者向けのガバナンス強化で、適用前に開発者の既存例外運用への影響確認が必要です。

## Auto mode in Copilot Chat available for all users

- 公開日 (UTC): `2026-06-17 16:24:33`
- リンク: <https://github.blog/changelog/2026-06-17-auto-mode-in-copilot-chat-available-for-all-users>

github.com と GitHub mobile app の Copilot Chat で、全 Copilot プラン向けに auto model selection が GA になりました。
利用者がモデルを明示選択しなくても Copilot が会話内容に応じてモデルを選ぶ機能で、通常利用では有効化済みの選択肢として扱えます。

## Limit open pull requests for users without write access

- 公開日 (UTC): `2026-06-17 16:23:56`
- リンク: <https://github.blog/changelog/2026-06-17-limit-open-pull-requests-for-users-without-write-access>

write 権限を持たないユーザーが同時に開ける Pull Request 数を制限する機能が追加され、メンテナーは低品質・大量投稿によるレビューキューの圧迫を抑えられます。
OSS リポジトリのトリアージ負荷を下げるための管理機能で、外部コントリビューションが多いリポジトリでは制限値と運用ルールを確認する価値があります。

## Agent finder for GitHub Copilot now available

- 公開日 (UTC): `2026-06-17 16:21:56`
- リンク: <https://github.blog/changelog/2026-06-17-agent-finder-for-github-copilot-now-available>

GitHub Copilot の agent finder が利用可能になり、MCP servers・skills・canvases・agents・tools を手作業で組み合わせなくても、Copilot が文脈に応じて必要なエージェント機能を見つけやすくなります。
複数ツールを組み込む Copilot ワークフローの設定負荷を下げる機能で、既存の手動構成を置き換える前に利用可能範囲を確認するとよさそうです。

## Copilot individual plan sign-ups are reopening

- 公開日 (UTC): `2026-06-17 14:10:00`
- リンク: <https://github.blog/changelog/2026-06-17-copilot-individual-plan-sign-ups-are-reopening>

GitHub Copilot Student / Pro / Pro+ / Max の個人プラン新規サインアップが、今後数週間かけて段階的に再開されます。
新規利用待ちだった個人ユーザー向けの提供再開告知で、組織管理者向けの設定変更や移行対応は不要です。

## GitHub Copilot app generally available

- 公開日 (UTC): `2026-06-17 13:00:33`
- リンク: <https://github.blog/changelog/2026-06-17-github-copilot-app-generally-available>

macOS / Windows / Linux 向けの GitHub Copilot app が GA になりました。
GitHub ネイティブのエージェント駆動開発用デスクトップアプリとして利用できるため、Copilot を IDE 外でも使うチームは配布・認証・社内ポリシーとの整合を確認して導入できます。

## GitHub Models is no longer available to new customers

- 公開日 (UTC): `2026-06-16 20:24:41`
- リンク: <https://github.blog/changelog/2026-06-16-github-models-is-no-longer-available-to-new-customers>

GitHub Models のリタイアに向けた第一段階として、新規顧客は利用できなくなりました。
既存利用がない Organization / Enterprise では GitHub Models が表示されないため、新規採用を検討していたチームは代替のモデル利用基盤を確認する必要があります。

## GitHub Code Quality generally available July 20, 2026

- 公開日 (UTC): `2026-06-16 16:25:31`
- リンク: <https://github.blog/changelog/2026-06-16-github-code-quality-generally-available-july-20-2026>

GitHub Code Quality が 2026-07-20 に GA 予定で、保守性・信頼性の問題検出、品質ゲート、コードカバレッジ追跡を正式機能として利用できるようになります。
Public preview 利用中の Enterprise は、GA 後の料金・ポリシー・品質ゲート運用への切り替え準備を進める段階です。
