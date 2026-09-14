# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## GitHub Copilot weekly releases — August 31

- 公開日 (UTC): `2026-09-04 21:05:01`
- リンク: <https://github.blog/changelog/2026-09-04-github-copilot-weekly-releases-august-31>

GitHub Copilot の選択可能なモデルとコンテンツ保護が拡充され、VS Code ではエージェントセッションの管理や PR をマージ可能な状態に整える機能が追加されました。  
Copilot と VS Code の利用者は、更新後のモデル一覧やセッション管理 UI を確認し、必要に応じて設定を見直してください。

## GPT-6 Astra is generally available in GitHub Copilot

- 公開日 (UTC): `2026-09-04 18:59:51`
- リンク: <https://github.blog/changelog/2026-09-04-gpt-6-astra-is-generally-available-in-github-copilot>

OpenAI の GPT-6 Astra が GitHub Copilot で **GA** となり、長時間にわたる自律的なコーディングやエージェント型タスクに対応します。  
対象プランの利用者はモデル選択画面から有効化できます。既存モデルから切り替える場合は、出力品質・コスト・権限制御を検証してから標準モデルを変更してください。

## New API endpoint provides privacy-safe star history data

- 公開日 (UTC): `2026-09-04 16:43:56`
- リンク: <https://github.blog/changelog/2026-09-04-new-api-endpoint-provides-privacy-safe-star-history-data>

新しい star history REST API により、スターを付けた利用者の身元を公開せずに、リポジトリのスター数の推移を取得できるようになりました。  
分析・レポート用途の API 利用者は新エンドポイントへの移行を検討してください。従来の stargazer 一覧 API に依存する実装では、権限制限も含めて見直しが必要です。

## Multiple trusted publishing configurations for npm

- 公開日 (UTC): `2026-09-03 20:34:34`
- リンク: <https://github.blog/changelog/2026-09-03-multiple-trusted-publishing-configurations-for-npm>

npm の trusted publishing で、1 パッケージに複数の公開設定を登録できる機能など、メンテナー向けの改善が **GA** になりました。  
複数の CI/CD 経路や段階的リリースを運用する npm パッケージは、公開設定を分離して運用できます。既存設定への影響を確認し、必要なワークフローだけを追加してください。

## GitHub Actions: Early September 2026 updates

- 公開日 (UTC): `2026-09-03 20:30:53`
- リンク: <https://github.blog/changelog/2026-09-03-github-actions-early-september-2026-updates>

GitHub Actions に、runner バージョンの非推奨時期を返す REST API など、ワークフローの可視性と制御性を高める更新が追加されました。  
runner の更新計画や監査を自動化しているチームは新 API を確認し、非推奨予定を検知してワークフロー更新を前倒しできるようにしてください。

## Upcoming deprecation of selected GitHub Copilot models

- 公開日 (UTC): `2026-09-03 19:40:14`
- リンク: <https://github.blog/changelog/2026-09-03-upcoming-deprecation-of-selected-github-copilot-models>

GitHub Copilot の Chat、インライン編集、Ask/Agent モード、コード補完で、選択されたモデルが **2026 年 10 月 2 日に非推奨** になります。  
該当モデルを固定している利用者・組織管理者は、期日までに後継モデルへ切り替え、プロンプト・品質・ポリシーへの影響を検証してください。

## GitHub CLI Linux package signing key expires September 5

- 公開日 (UTC): `2026-09-03 19:05:40`
- リンク: <https://github.blog/changelog/2026-09-03-github-cli-linux-package-signing-key-expires-september-5>

GitHub CLI の Linux APT/RPM パッケージリポジトリで使用していた PGP 署名鍵が **2026 年 9 月 5 日に失効**し、以後のリリースではリポジトリメタデータの署名鍵が更新されます。  
Linux 環境で GitHub CLI をパッケージ管理している場合は、公式手順に従って新しい鍵を登録してください。鍵を更新しないと、今後の更新で検証エラーになる可能性があります。

## Gemini 3.8 Flash is now available in GitHub Copilot

- 公開日 (UTC): `2026-09-03 18:50:38`
- リンク: <https://github.blog/changelog/2026-09-03-gemini-3-8-flash-is-now-available-in-github-copilot>

Google の Gemini 3.8 Flash が GitHub Copilot で利用可能になり、複雑なターミナル操作を伴うコーディングなどでの利用が想定されています。  
対象プランの利用者はモデル選択から試用できます。既存のモデル設定を変更する場合は、リポジトリ権限や実行コストを含む評価を先に行ってください。

## Reopening Copilot Business and Enterprise signups

- 公開日 (UTC): `2026-09-03 14:40:43`
- リンク: <https://github.blog/changelog/2026-09-03-reopening-copilot-business-and-enterprise-signups>

クレジットカードまたは PayPal で支払う Copilot Business / Enterprise の新規申し込みが、数週間かけて段階的に再開されます。  
導入待ちの組織は順次申し込みを試せますが、利用可能になる時期は段階展開の状況に左右されるため、管理者は契約・ユーザー割り当ての準備を進めてください。

## CodeQL 2.26.4 improves GitHub actions security detections

- 公開日 (UTC): `2026-09-03 14:04:59`
- リンク: <https://github.blog/changelog/2026-09-03-codeql-2-26-4-improves-github-actions-security-detections>

CodeQL 2.26.4 で Go 1.27 のサポートが追加され、GitHub Actions に関するセキュリティ検出も改善されました。  
コードスキャンを利用するチームは CodeQL の更新内容と互換性を確認し、ワークフローで利用する CodeQL バージョンを更新して検出精度の向上を取り込んでください。
