# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## AI credits consumed per user now in the Copilot usage metrics API

- 公開日 (UTC): `2026-06-19 16:23:29`
- リンク: <https://github.blog/changelog/2026-06-19-ai-credits-consumed-per-user-now-in-the-copilot-usage-metrics-api>

Copilot usage metrics API で、ユーザーごとの日次 AI クレジット消費量を取得できるようになりました。  
請求 API と同じ消費データを参照するため、部門別の配賦や利用状況監査を同じ指標で行えます。  
利用ベース課金で運用している組織は、既存ダッシュボードの指標追加を検討するとよいです。

## Upcoming deprecation of Opus 4.6 (fast)

- 公開日 (UTC): `2026-06-18 23:58:34`
- リンク: <https://github.blog/changelog/2026-06-18-upcoming-deprecation-of-opus-4-6-fast>

2026-06-29 に Copilot 各サーフェス（Chat / inline edit / ask / agent / completion）で Opus 4.6 (fast) が廃止予定です。  
モデルを明示指定している設定や社内ガイドがある場合は、期限前に代替モデルへ切り替えが必要です。  
既定モデル任せの運用でも、回答品質やレイテンシの変化を事前に確認しておくと安全です。

## MAI-Code-1-Flash available on more Copilot surfaces

- 公開日 (UTC): `2026-06-18 20:11:24`
- リンク: <https://github.blog/changelog/2026-06-18-mai-code-1-flash-available-on-more-copilot-surfaces>

MAI-Code-1-Flash が Copilot CLI や GitHub 上の Copilot Chat など、利用可能な画面に拡大されました。  
軽量モデルを優先したいチームは、より多くの作業面で同一モデル方針を適用できます。  
既存機能の置換ではなく選択肢追加なので、用途別にモデルを使い分ける運用が現実的です。

## Copilot code review: AGENTS.md support and UI improvements

- 公開日 (UTC): `2026-06-18 19:11:51`
- リンク: <https://github.blog/changelog/2026-06-18-copilot-code-review-agents-md-support-and-ui-improvements>

Copilot code review がリポジトリ直下の `AGENTS.md` を参照できるようになり、レビュー方針をリポジトリ単位で反映しやすくなりました。  
ドラフト PR でも Request ボタンからレビュー依頼しやすくなり、初期段階の自動レビュー運用が現実的になります。  
運用側は `AGENTS.md` にレビュー観点を明文化しておくと効果が出やすいです。

## Detecting Duplicate Issues – Public Preview and issue fields MCP support for GitHub Issues

- 公開日 (UTC): `2026-06-18 18:04:33`
- リンク: <https://github.blog/changelog/2026-06-18-duplicate-detection-and-issue-fields-mcp-support-for-github-issues>

重複 Issue 検出が Public Preview になり、同一不具合の重複起票を保守者側で見つけやすくなりました。  
加えて Issue fields の MCP サポートにより、外部ツールから課題フィールドを扱う自動化の幅が広がります。  
Issue 件数が多いリポジトリほど、トリアージ工数削減の効果が大きい変更です。

## Copilot-authored pull requests now included in author searches

- 公開日 (UTC): `2026-06-18 16:24:05`
- リンク: <https://github.blog/changelog/2026-06-18-copilot-authored-pull-requests-now-included-in-author-searches>

`author:` 検索に、Copilot cloud agent が代理作成した PR も含まれるようになりました。  
`author:@me` で自分起点の PR を人手作成とエージェント作成の両方まとめて追跡できます。  
検索式の変更は不要で、既存の運用フローにそのまま取り込めます。

## Repository switcher generally available in global navigation

- 公開日 (UTC): `2026-06-18 16:23:00`
- リンク: <https://github.blog/changelog/2026-06-18-repository-switcher-generally-available-in-global-navigation>

グローバルナビゲーションのリポジトリ切替 UI が GA になり、ページ遷移を減らして別リポジトリへ移動できます。  
複数リポジトリを横断してレビューや調査を行う日常運用で、コンテキスト切替の手間が下がります。  
機能追加扱いのため有効化作業は不要です。

## Actions: Build custom images from custom images

- 公開日 (UTC): `2026-06-18 15:32:44`
- リンク: <https://github.blog/changelog/2026-06-18-actions-build-custom-images-from-custom-images>

GitHub-hosted runner のカスタムイメージで、既存カスタムイメージを基底にした再ビルドが可能になりました。  
イメージ生成パイプラインを段階化できるため、共通ベースの再利用と更新差分の管理がしやすくなります。  
ランナー最適化を進める組織では、ビルド時間と運用保守性の両面で効果が見込めます。

## Safer pull_request_target defaults for GitHub Actions checkout

- 公開日 (UTC): `2026-06-18 14:06:55`
- リンク: <https://github.blog/changelog/2026-06-18-safer-pull_request_target-defaults-for-github-actions-checkout>

`pull_request_target` の誤用による権限昇格リスクを抑えるため、Actions checkout の既定がより安全側に調整されました。  
このイベントは base リポジトリのトークン/シークレット文脈で動くため、既存ワークフローの安全性確認は引き続き必須です。  
特に fork 起点 PR を扱うリポジトリは、checkout 条件と実行ステップを再点検してください。

## Control who and what triggers GitHub Actions workflows

- 公開日 (UTC): `2026-06-18 14:06:18`
- リンク: <https://github.blog/changelog/2026-06-18-control-who-and-what-triggers-github-actions-workflows>

Workflow execution protections が Public Preview となり、Actions 実行を許可する主体・条件を allow list で制御できるようになりました。  
Enterprise / Organization / Repository 各レベルで実行トリガーを絞れるため、不要実行や悪用リスクを下げられます。  
大規模組織は、既存のブランチ保護や環境承認と合わせた実行ポリシー設計を進めるべき変更です。
