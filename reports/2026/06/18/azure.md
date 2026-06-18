# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

対象期間内の Azure RSS 新着は **6 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Azure Migrate – GitHub Copilot Modernization integration for at scale code assessments

- 公開日 (UTC): `2026-06-17 18:00:18`
- リンク: <https://azure.microsoft.com/updates?id=566145>

Azure Migrate のポートフォリオ単位の検出・評価に GitHub Copilot Modernization のコード解析を組み合わせ、移行対象アプリの近代化ポイントを大規模に把握できるようになるプレビューです。
アプリ移行計画を Azure Migrate で管理しているチームは、インベントリ評価からコード修正候補の把握までをつなげられるため、まず対象リポジトリと評価スコープを限定して試すのがよさそうです。

## [Launched] Generally Available: Azure Databricks native read access to Microsoft OneLake 

- 公開日 (UTC): `2026-06-17 18:00:18`
- リンク: <https://azure.microsoft.com/updates?id=565733>

Azure Databricks から Unity Catalog 経由で Microsoft OneLake 上のデータをネイティブに読み取れる機能が GA になりました。
OneLake のデータをコピーせずに Databricks で分析できるため、Fabric / OneLake をデータレイクの中心にしている環境ではデータ移動コストと鮮度の課題を減らせます。

## [In preview] Public Preview: Azure Databricks natively storing data in Microsoft OneLake 

- 公開日 (UTC): `2026-06-17 18:00:18`
- リンク: <https://azure.microsoft.com/updates?id=565706>

Azure Databricks の managed Delta tables を Microsoft OneLake に直接書き込めるプレビューです。
Databricks ワークロード用に別ストレージを管理せず OneLake を共通ストレージ層に寄せられるため、データ配置を統一したいチームはテーブル管理・権限・既存パイプラインへの影響を検証する段階です。

## [Launched] Generally Available: ICMP Support for Azure Standard V2 NAT Gateway

- 公開日 (UTC): `2026-06-17 16:30:04`
- リンク: <https://azure.microsoft.com/updates?id=565487>

Azure Standard V2 NAT Gateway でアウトバウンドの ICMP Echo Request / Reply が GA サポートされ、`ping` などで疎通確認しやすくなりました。
Standard V2 NAT Gateway 配下のワークロードでネットワーク切り分けを行う運用チームは、既存の診断手順に ICMP ベースの確認を追加できます。

## [In preview] Public Preview: New project templates and template gallery for Azure Functions in VS Code

- 公開日 (UTC): `2026-06-16 19:00:15`
- リンク: <https://azure.microsoft.com/updates?id=562497>

VS Code の Azure Functions 拡張で、新規プロジェクト作成 UI とテンプレートギャラリーがプレビュー提供されました。
Quick Pick の段階的な選択ではなく検索・フィルター可能な視覚的ギャラリーからテンプレートを選べるため、新規 Functions プロジェクトの作成体験を改善したい開発者向けの告知です。

## [Launched] Generally Available: Log Analytics Summary Rules experience

- 公開日 (UTC): `2026-06-16 17:15:28`
- リンク: <https://azure.microsoft.com/updates?id=562027>

Log Analytics の Summary Rules を Azure portal から扱う新しい体験が GA になりました。
大量ログを定期集計してサマリーテーブルに保存し、クエリ性能・レポート・長期分析を改善する用途の機能なので、ログ量が多いワークスペースでは集計ルールの設計と保存コストを確認して導入できます。
