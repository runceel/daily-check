# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Add VS Code Agents to Copilot usage metrics

- 公開日 (UTC): `2026-09-11 21:30:30`
- リンク: <https://github.blog/changelog/2026-09-11-add-vs-code-agents-to-copilot-usage-metrics>

Copilot 利用状況メトリクスに、VS Code の専用 Agents ウィンドウでの活動が GA 指標として追加されました。企業・組織の管理者は、既存レポートでエージェント機能の導入率と利用状況を確認できます。

## Auto-resolution and analysis updates in Copilot code review

- 公開日 (UTC): `2026-09-11 20:00:07`
- リンク: <https://github.blog/changelog/2026-09-11-auto-resolution-and-analysis-updates-in-copilot-code-review>

Copilot code review は、指摘を修正するとコメントを自動解決し、提案を適用した際に内容に応じたコミットメッセージを生成するようになりました。レビュー担当者は手動解決やメッセージ作成の手間を減らせますが、適用内容は従来どおり確認してください。

## GitHub Copilot weekly releases — September 7

- 公開日 (UTC): `2026-09-10 22:55:07`
- リンク: <https://github.blog/changelog/2026-09-10-github-copilot-weekly-releases-september-7>

今回の週次リリースでは、Copilot app の Jira 連携、Copilot CLI の Project HydraFusion による適応的なモデルオーケストレーション、Visual Studio Code の新しいエージェント自動化が追加されました。対象機能を使うチームは、管理ポリシーと利用権限を確認して有効化してください。

## Refreshed repository pull requests page in public preview

- 公開日 (UTC): `2026-09-10 21:27:17`
- リンク: <https://github.blog/changelog/2026-09-10-refreshed-repository-pull-requests-page-in-public-preview>

リポジトリ単位の Pull Request 一覧ページが刷新され、強化されたフィルターやコンパクト表示を利用できるパブリックプレビューになりました。全ユーザーが対象で、既存の一覧画面から新しい表示を試せます。

## AI Scan for pull request APIs in public preview

- 公開日 (UTC): `2026-09-10 20:20:58`
- リンク: <https://github.blog/changelog/2026-09-10-ai-scan-for-pull-request-apis-in-public-preview>

Code scanning の AI Scan for pull request を、組織レベルまたはリポジトリレベルの REST API から有効化・管理できるパブリックプレビューが始まりました。大規模運用では設定を IaC や管理スクリプトに組み込めますが、プレビュー機能である点を考慮してください。

## Control GitHub Actions cache access with cache-mode

- 公開日 (UTC): `2026-09-10 17:26:59`
- リンク: <https://github.blog/changelog/2026-09-10-control-github-actions-cache-access-with-cache-mode>

GitHub Actions の `cache-mode` により、ワークフローまたはジョブ単位でキャッシュへのアクセス権を最小権限に制限できるようになりました。共有 runner や複数ジョブ構成では、不要なキャッシュ読み取り・書き込みを減らす設定を検討してください。

## MAI-Code-1-Flash deprecated

- 公開日 (UTC): `2026-09-10 16:54:01`
- リンク: <https://github.blog/changelog/2026-09-10-mai-code-1-flash-deprecated>

**MAI-Code-1-Flash は 2026年9月10日付で GitHub Copilot の全体験から非推奨**になりました。Copilot Chat、インライン編集、Ask / Agent mode、コード補完で同モデルを指定している設定や運用手順は、案内されている代替モデルへ切り替えてください。

## Xcode 27 runner image now runs on macOS 27

- 公開日 (UTC): `2026-09-10 15:15:36`
- リンク: <https://github.blog/changelog/2026-09-10-xcode-27-runner-image-now-runs-on-macos-27>

GitHub-hosted macOS runner の Xcode 27 イメージが macOS 27 上で動作するパブリックプレビューになり、Apple アプリを次期 OS 環境で検証できます。iOS/macOS の互換性確認が必要な CI は、依存ツールと署名環境を確認したうえで試験導入してください。

## npm extends recovery-code security holds to all accounts

- 公開日 (UTC): `2026-09-09 21:55:55`
- リンク: <https://github.blog/changelog/2026-09-09-npm-extends-recovery-code-security-holds-to-all-accounts>

npm は recovery code によるログイン成功後、すべてのアカウントに一時的な **72時間のセキュリティ保留**を適用するようになりました。公開や設定変更が直ちに必要な自動化では、復旧コード利用後の保留時間を考慮し、通常の認証・復旧手順を整備してください。

## CodeQL 2.27.0 adds support for Linux ARM64

- 公開日 (UTC): `2026-09-09 21:45:06`
- リンク: <https://github.blog/changelog/2026-09-09-codeql-2-27-0-adds-support-for-linux-arm64>

CodeQL 2.27.0 が Linux ARM64 に対応し、Rust の新しいセキュリティクエリ、Java/Kotlin と C# のフレームワークカバレッジ拡張、複数言語の解析精度改善が含まれます。ARM64 runner を使うチームや対象言語のセキュリティ分析は、CodeQL bundle の更新を検討してください。

