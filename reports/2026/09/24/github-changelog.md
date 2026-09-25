# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## More ways to request and configure Copilot code reviews

- 公開日 (UTC): `2026-09-23 21:25:58`
- リンク: <https://github.blog/changelog/2026-09-23-copilot-code-review-more-ways-to-request-and-configure-reviews>

Copilot code review の個人向け設定が対象プランに拡大され、Enterprise では組織の既定値も設定できるようになりました（GA）。利用者は個人設定を、管理者は Enterprise の既定値を確認し、組織のレビュー運用に合わせて構成してください。

## Node 20 is no longer available in GitHub Actions

- 公開日 (UTC): `2026-09-23 20:46:07`
- リンク: <https://github.blog/changelog/2026-09-23-node-20-is-no-longer-available-in-github-actions>

GitHub Actions の runner で Node 20 が利用できなくなり、JavaScript Actions は Node 24 で実行されます。Node 20 前提の古い Action は更新が必要な場合があるため、ワークフローで使用中の Action の Node 24 対応を確認してください。

## Local sandboxing in the GitHub Copilot app

- 公開日 (UTC): `2026-09-23 15:00:57`
- リンク: <https://github.blog/changelog/2026-09-23-local-sandboxing-in-the-github-copilot-app>

GitHub Copilot app のローカル・サンドボックスは、ファイル、ネットワーク、資格情報へのアクセスを制限し、意図しないコマンドの影響を抑えます。ローカルでエージェントを実行する利用者は設定を確認し、開発環境の保護レベルに合わせて有効化を検討してください。

## OpenTelemetry in the GitHub Copilot app

- 公開日 (UTC): `2026-09-23 02:14:54`
- リンク: <https://github.blog/changelog/2026-09-22-opentelemetry-in-the-github-copilot-app>

GitHub Copilot app が Enterprise 管理設定を通じた OpenTelemetry（OTel）構成に対応し、エージェントのモデル／ツール利用状況を可観測化できます。組織の管理者はテレメトリ設定とデータ取り扱いポリシーを確認し、必要に応じて監視基盤へ連携してください。

## New features and improvements in Copilot for JetBrains

- 公開日 (UTC): `2026-09-23 00:34:18`
- リンク: <https://github.blog/changelog/2026-09-22-new-features-and-improvements-in-copilot-for-jetbrains>

Copilot for JetBrains 1.18.0 では、AI 支援によるツール承認、エージェント会話の制御、組織共有の skills／instructions が追加され、Codex の計画レビューにも対応します。JetBrains 利用者と管理者は、更新後に承認・共有設定を確認して活用できます。

## Faster C++ code intelligence with whole codebase indexing

- 公開日 (UTC): `2026-09-22 22:24:48`
- リンク: <https://github.blog/changelog/2026-09-22-faster-c-code-intelligence-with-whole-codebase-indexing>

GitHub Copilot CLI の C++ コードインテリジェンスがコードベース全体のインデックスに対応し、大規模で相互依存の多いリポジトリでも解析を高速化します。C++ 開発者は Copilot CLI で利用でき、既存コードの移行は不要です。

## Claude Opus 5.5 is now available in GitHub Copilot

- 公開日 (UTC): `2026-09-22 17:10:23`
- リンク: <https://github.blog/changelog/2026-09-22-claude-opus-5-5-is-now-available-in-github-copilot>

Claude Opus 5.5 が GitHub Copilot で利用可能になり、エージェント型コーディング、長時間タスク、知識作業に選択できます。利用者は Copilot のモデル選択肢を確認し、タスクに適したモデルを選んでください。

## OpenAI’s GPT-6 Sol and GPT-6 Luna now available

- 公開日 (UTC): `2026-09-22 17:00:14`
- リンク: <https://github.blog/changelog/2026-09-22-openais-gpt-6-sol-and-gpt-6-luna-now-available>

GitHub Copilot の GPT-6 ファミリーに GPT-6 Sol と GPT-6 Luna が加わり、既存の GPT-6 Astra と合わせてモデルを選択できます。新しいモデルを試す場合は、Copilot の利用可能なモデル一覧と組織の利用設定を確認してください。

## Security improvements for SSH

- 公開日 (UTC): `2026-09-22 14:11:47`
- リンク: <https://github.blog/changelog/2026-09-22-security-improvements-for-ssh>

GitHub は SSH の安全性向上のため、複数のアルゴリズムを廃止し、新しいアルゴリズムを追加するとともに RSA SSH キーにより大きな鍵長を要求します。SSH 接続を使う利用者は告知の対象アルゴリズムと適用日を確認し、必要に応じて鍵・クライアント設定を更新してください。

## Deprecation notice: All-platform CodeQL bundle

- 公開日 (UTC): `2026-09-22 09:21:03`
- リンク: <https://github.blog/changelog/2026-09-22-deprecation-notice-all-platform-codeql-bundle>

CodeQL CLI 2.27.0 以降、全対応プラットフォームのバイナリを含む all-platform bundle（`codeql-bundle.tar.gz` / `.tar.zst`）は非推奨です。これらを取得する CI／運用スクリプトは、利用環境に対応するプラットフォーム別バンドルへ切り替えてください。
