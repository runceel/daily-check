# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

Azure RSS による新着項目は **4 件** です。

---

## 2.2 Public Preview

### [In preview] Public Preview: Azure Infrastructure Resiliency Manager

- 対象サービス: Azure Resiliency / Azure Advisor
- 公開日 (UTC): `2026-06-03 17:15:25`
- リンク: <https://azure.microsoft.com/updates?id=564759>

Availability Zones・Azure Advisor・Azure Chaos Studio の各機能を統合した **統合レジリエンシー管理ポータル** が Public Preview に入った。ゴール指向の UI でアプリケーション全体の冗長性を設計・評価・改善できる。  
対象は Azure 上でミッションクリティカルな可用性要件を持つアプリを設計・運用するすべての利用者。  
Azure Portal から「Infrastructure Resiliency Manager」を検索するか、フィードバックリンクから Preview 参加登録をすることで利用開始できる。  
Availability Zone 対応状況の把握や SLA ギャップ分析を自動化したい組織に特に有効。

### [In preview] Public Preview: Advanced full-text search in Azure DocumentDB

- 対象サービス: Azure DocumentDB (旧 Azure Cosmos DB for NoSQL のブランド展開)
- 公開日 (UTC): `2026-06-03 17:00:49`
- リンク: <https://azure.microsoft.com/updates?id=563077>

DocumentDB の全文検索機能に **ファジー検索・近傍検索・多言語サポート・BM25 ランキング** が追加され、ベクター検索との統合が可能になった。  
検索とデータ永続化を別サービスに分けていたアプリケーション（DocumentDB + Cognitive Search 構成など）は、単一データベースに統合できる可能性がある。  
Public Preview のため有効化は Azure Portal の DocumentDB アカウント設定から行う。本番利用には GA 後の SLA 確認を推奨。

---

## 2.3 Generally Available

### [Launched] Generally Available: Azure Database for PostgreSQL - Flexible Server: DuckDB extension

- 対象サービス: Azure Database for PostgreSQL Flexible Server
- 公開日 (UTC): `2026-06-03 17:00:49`
- リンク: <https://azure.microsoft.com/updates?id=563766>

Azure Database for PostgreSQL Flexible Server で **DuckDB 拡張機能** が GA となった。  
インプロセスの OLAP エンジンである DuckDB を PostgreSQL 上で直接実行できるため、列指向の分析クエリをトランザクションデータベース内で高速処理できる。ETL パイプラインを別途構築せずにアドホック集計や BI ワークロードをこなしたいチームに最適。  
`CREATE EXTENSION duckdb;` を実行するだけで利用開始できる。既存の Flexible Server インスタンスへの追加インストールも可。

### [Launched] Generally Available: Simple log alerts in Azure Monitor

- 対象サービス: Azure Monitor
- 公開日 (UTC): `2026-06-03 02:00:57`
- リンク: <https://azure.microsoft.com/updates?id=561978>

Azure Monitor の **シンプルログアラート** が GA になった。従来の Scheduled Query Rules (SQR) より設定ステップを大幅に削減し、KQL を書かずに主要なメトリクスを監視するアラートを GUI だけで作成できる。  
ログベースの監視をこれから始める小規模チームや、SQR の複雑さがボトルネックになっていた組織が主な対象。  
Azure Portal → Monitor → Alerts → 「Create alert rule」から「Simple」モードを選択すると利用開始できる。既存の SQR アラートとは共存可能で移行は任意。