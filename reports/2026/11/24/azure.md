# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

対象期間内の Azure RSS 新着は **29 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Enterprise Knowledge Graph in Foundry IQ

- 公開日 (UTC): `2026-11-23 21:16:32`
- リンク: <https://azure.microsoft.com/updates?id=581333>

Foundry IQ に、コンテンツ間の関係性を使って回答するための Enterprise Knowledge Graph がナレッジソースとして追加されました。ユーザーがオントロジーを指定してインデックス時にエンティティと関係性を抽出するため、組織固有の関連情報を参照するエージェントでは、従来より文脈を保った検索を試せます。

## [In preview] Public Preview: Updated Guardrails experience in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 21:15:04`
- リンク: <https://azure.microsoft.com/updates?id=581338>

Microsoft Foundry の Guardrails は、分類器、決定論的ルール、LLM ベースの判定を含む実行時安全管理を一元的に設定できるプレビュー体験を更新しました。管理者ポリシーで統制が要求される場合は該当項目がプロジェクト設定画面に表示されるため、エージェント開発者と管理者はポリシー準拠状況を確認しやすくなります。

## [In preview] Public Preview: IQ Retriever Zero in Foundry IQ

- 公開日 (UTC): `2026-11-23 21:13:44`
- リンク: <https://azure.microsoft.com/updates?id=581343>

Foundry IQ の IQ Retriever Zero は、複雑な質問を段階的な検索に分解し、必要に応じて検索結果を確認して再検索する反復検索モデルです。検索予算内で根拠を集めて回答モデルへ渡すため、複数の条件や関係性をまたぐ問い合わせでは、検索品質を確認しながら利用を検討できます。

## [Launched] Public Preview: Style and instruction control for HD V3 voices in Azure Speech in Foundry Tools

- 公開日 (UTC): `2026-11-23 21:12:25`
- リンク: <https://azure.microsoft.com/updates?id=581353>

Azure Speech in Foundry Tools では、HD V3 音声にスタイルと話し方の指示制御がパブリックプレビューで追加されています。音声エージェントやナレーションではサポートされる制御項目を指定して声色や発話方法を調整できるため、会話体験の設計対象であればテスト環境から利用可能です。

## [In preview] Public Preview: Human annotation for agent evaluations in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 21:11:23`
- リンク: <https://azure.microsoft.com/updates?id=581358>

Microsoft Foundry のエージェント評価に、人手による注釈機能がパブリックプレビューで追加されました。レビュー担当者はトレースに評価、タグ、コメント、期待される出力を付与でき、注釈済み会話を評価データセットや改善対象の特定に使えます。エージェント品質の検証プロセスを運用するチームの確認が必要です。

## [Launched] Generally Available: Agent insights in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 21:10:07`
- リンク: <https://azure.microsoft.com/updates?id=581363>

Microsoft Foundry の Agent insights は、エージェントのトレースから繰り返し発生するパターンを抽出し、関連する問題をグループ化する一般提供機能です。提示された根拠トレースを確認して優先改善項目を選び、Agent optimizer で改善案を検証できるため、本番エージェントの品質分析を行うチームは利用価値があります。

## [Launched] Generally Available: Files knowledge source for Foundry IQ

- 公開日 (UTC): `2026-11-23 21:08:46`
- リンク: <https://azure.microsoft.com/updates?id=581368>

Foundry IQ のファイルナレッジソースが一般提供され、ファイルをマネージドナレッジソースへ直接アップロードできるようになりました。アップロードしたファイルは知識ベース経由の検索用に処理・インデックス化されるため、ストレージアカウントやスケジュール型インデクサーを個別に準備する必要がありません。

## [In preview] Public Preview: Call model router without a deployment in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 20:32:57`
- リンク: <https://azure.microsoft.com/updates?id=581378>

Microsoft Foundry の model router は、最初にルーターをデプロイせず利用できるプレビュー機能です。対応リージョンの Foundry リソースでは、Responses または Chat Completions リクエストの model を auto に設定し、既定では Balanced モードで利用できます。デプロイ管理を簡略化したいアプリケーションが対象です。

## [In preview] Public Preview: Use the Messages API with model router in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 20:31:40`
- リンク: <https://azure.microsoft.com/updates?id=581383>

Microsoft Foundry の model router が Messages API のパブリックプレビューをサポートしました。Anthropic 形式のリクエストとレスポンスを維持したまま自動モデル選択を利用できるため、Messages ベースのアプリやコーディングツールでルーティング対象モデルの対応状況を確認して導入を検討できます。

## [In preview] Public Preview: Use your model deployments with model router in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 20:29:36`
- リンク: <https://azure.microsoft.com/updates?id=581388>

Microsoft Foundry の model router は、既存のモデルデプロイメントをルーティング先として利用できるパブリックプレビュー機能です。モデルを選択した後は、選択先へリクエストを転送できるため、既存キャパシティを活用するチームはデプロイ先の選定とリージョン対応を確認してテストできます。

## [Launched] Generally Available: Model router now supports the Responses API protocol in Microsoft Foundry

- 公開日 (UTC): `2026-11-23 20:28:24`
- リンク: <https://azure.microsoft.com/updates?id=581393>

Microsoft Foundry の model router は Responses API プロトコルをリソースエンドポイントとプロジェクトエンドポイントの双方で一般提供しました。Responses ベースのアプリでは model にルーターのデプロイ名を指定して自動モデル選択を利用できるため、現在の実装から移行する場合はエンドポイントとデプロイ設定の対応を確認してください。

## [In preview] Public Preview: Use model router with AI Gateway

- 公開日 (UTC): `2026-11-23 20:15:53`
- リンク: <https://azure.microsoft.com/updates?id=581398>

AI Gateway の自動モデル選択は、Microsoft Foundry の model router を使ってエイリアス配下のモデルをリクエストごとに順位付けします。エイリアスの優先度や重みと組み合わせてバックエンドを選択し、ゲートウェイのアクセス制御を維持するため、ルーティングポリシーと権限設計を確認する管理者向けのプレビュー機能です。

## [Launched] Generally Available: Deploy hosted agents from your own container registry in Foundry Toolkit for VS Code

- 公開日 (UTC): `2026-11-23 20:13:42`
- リンク: <https://azure.microsoft.com/updates?id=581478>

Foundry Toolkit for Visual Studio Code では、顧客管理のコンテナー レジストリにあるビルド済みイメージからホスト型エージェントをデプロイできる機能が一般提供されました。Foundry プロジェクトで対応するレジストリ接続を選択するため、Azure Container Registry以外を使うチームも接続設定とイメージ公開手順を確認できます。

## [Launched] Generally Available: Wildcard domain support in Azure Firewall network rules 

- 公開日 (UTC): `2026-11-23 18:51:31`
- リンク: <https://azure.microsoft.com/updates?id=582030>

Azure Firewall ネットワークルールでワイルドカードドメインのサポートが一般提供されました。`*.contoso.com` のようなパターンを FQDN ベースルールへ指定できるため、宛先ドメイン構成を簡略化できる一方、許可範囲の広がりを確認してルールを更新する必要があります。

## Retirement: Azure AI Content Safety selected features will be retired on April 30, 2027

- 公開日 (UTC): `2026-11-23 18:11:31`
- リンク: <https://azure.microsoft.com/updates?id=577474>

**2027 年 4 月 30 日** に、Azure AI Content Safety の Analyze Multimodal、Rapid カスタムカテゴリ、各種 Text/Image/Prompt Shields の接続・非接続コンテナーなど、複数のプレビュー機能がリタイアします。これらを利用中のワークロードは、代替 API・サポート対象サービスへの移行計画を今から確認し、リタイア日前に検証と切り替えを完了してください。

## [In preview] Public Preview: Azure Database for PostgreSQL enhanced Burstable tier (Basv2) 

- 公開日 (UTC): `2026-11-23 18:09:39`
- リンク: <https://azure.microsoft.com/updates?id=574535>

Azure Database for PostgreSQL の強化版 Burstable tier（Basv2）がパブリックプレビューになりました。既存のバーストモデルを基にパフォーマンス予測性とバースト利用効率を改善し、定常負荷をコスト効率よく処理しつつ急な負荷に対応できるため、現在の Burstable 利用環境はリージョン対応と料金を確認して評価できます。

## [Launched] Generally Available: WAF Insights for Azure Application Gateway

- 公開日 (UTC): `2026-11-23 18:02:38`
- リンク: <https://azure.microsoft.com/updates?id=579280>

Azure Application Gateway WAF の WAF Insights が一般提供されました。WAF ポリシー内でログとメトリックを統合した対話型ダッシュボードからブロックされたリクエストや攻撃パターンを調査できるため、運用チームは既存ポリシーの可視化とトラブルシューティングを強化できます。

## [Launched] Generally Available: WAF Insights for Azure Front Door

- 公開日 (UTC): `2026-11-23 18:01:19`
- リンク: <https://azure.microsoft.com/updates?id=579285>

Azure Front Door WAF の WAF Insights が一般提供されました。WAF ポリシーのダッシュボードでログとメトリックを組み合わせ、ブロック理由や攻撃傾向を調査できるため、CDN/WAF を運用するチームは既存ポリシーの可視性を確認して活用できます。

## [Launched] Generally Available: Governance policy guidance in Foundry Canvas and VS Code

- 公開日 (UTC): `2026-11-21 00:45:13`
- リンク: <https://azure.microsoft.com/updates?id=581463>

Microsoft Foundry のガバナンスガイダンスが Foundry Canvas と Foundry Toolkit for VS Code で利用可能になりました。エージェント、モデル、ツール、ガードレールに関連するポリシーと警告を開発中に表示するため、管理者は組織ポリシーの設定を確認し、開発者は設計段階でコンプライアンス違反を検知できます。

## [In preview] Public Preview: Microsoft Copilot harness support in Foundry Toolkit for VS Code

- 公開日 (UTC): `2026-11-21 00:43:13`
- リンク: <https://azure.microsoft.com/updates?id=581468>

Foundry Toolkit for VS Code の Agent Builder は、Microsoft Copilot harness を使うプロンプトエージェントをパブリックプレビューでサポートしました。ツールやスキルの設定、ローカル YAML の編集、Foundry へのデプロイ、デバッグを VS Code から試せるため、Copilot harness を利用する開発チームはプレビュー環境で互換性を検証できます。
