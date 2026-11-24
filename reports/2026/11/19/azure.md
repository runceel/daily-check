# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

対象期間内の Azure RSS 新着は **165 件** です。新着20件を解説し、残り145件も確認したうえで、GA告知と監視対象に関係する追加更新を末尾にまとめました。RSSの説明は一部が途中で切れているため、確認できる条件だけを記載しています。

## [In preview] Public Preview: AI bot ruleset for Azure Front Door Premium WAF

- 公開日 (UTC): `2026-11-18 18:27:29`
- リンク: <https://azure.microsoft.com/updates?id=581604>

Azure Front Door PremiumのWAFに、AIボット向けルールセットが**パブリックプレビュー**で追加されました。
サイトを訪れるAIクローラーやエージェントへのアクセス制御が対象です。robots.txtへの協力だけに依存したくない運用者は、既存WAFルールと合わせて評価してください。

## Announcing: The new Azure Databricks on Azure Government is now in Beta

- 公開日 (UTC): `2026-11-18 18:01:03`
- リンク: <https://azure.microsoft.com/updates?id=581645>

Azure Government向けの新しいAzure Databricks環境が**ベータ**になりました。
米国公共機関とそのパートナーが対象で、グローバルAzureのデータ・AI基盤を第一者サービスとして利用する選択肢です。通常のAzure向け環境と同一の提供条件とは限らないため、利用可能機能を確認して評価してください。

## [Launched] Generally Available: Cross-subscription backup for Azure Virtual Machines in Azure Backup

- 公開日 (UTC): `2026-11-18 18:00:04`
- リンク: <https://azure.microsoft.com/updates?id=581048>

Azure VMを、**同一テナント内の別サブスクリプション**にあるRecovery Servicesコンテナーで保護する機能が**GA**になりました。
業務用サブスクリプションとバックアップ管理を分離したい組織が対象です。既存構成の移行必須という告知ではなく、集中管理を設計する際に権限と対応条件を確認する更新です。

## [In preview] Public Preview: AI-powered application and database modernization with Modernize CLI

- 公開日 (UTC): `2026-11-18 17:58:45`
- リンク: <https://azure.microsoft.com/updates?id=579943>

アプリケーションとデータベースのモダナイズを連携して進めるModernize CLIが**パブリックプレビュー**になりました。
アーキテクチャ、依存関係、クラウド対応状況の評価に加え、依存データベースの検出も扱います。移行担当者向けの新しい評価手段であり、既存アプリの変更や移行が自動的に必要になる告知ではありません。

## [In preview] Public Preview: Immutable snapshots for Azure Disk Storage 

- 公開日 (UTC): `2026-11-18 00:00:09`
- リンク: <https://azure.microsoft.com/updates?id=581503>

Azure Disk Storageのスナップショットに、最大**90日間**の削除防止ポリシーを適用できる機能が**パブリックプレビュー**になりました。
全Azureディスク種類のスナップショットが対象とされています。誤削除・攻撃への保護を検討する運用者は、有効期間中は削除できない点を踏まえて保持・コスト方針を確認してください。

## Announcing: Azure Boost observability for NVMe disks

- 公開日 (UTC): `2026-11-18 00:00:09`
- リンク: <https://azure.microsoft.com/updates?id=581227>

対応するAzure VM内で実行する、NVMeディスク向けのオープンソース観測CLIが案内されました。
リモートディスクのI/O・遅延メトリックと、ゲスト内ディスクと対応ディスクのマッピングを確認できます。ストレージ性能を調査する担当者は、まず利用VMの対応状況を確認してください。

## Generally Available: Cobalt 200 Arm-based Dplsv7, Dpsv7, Epsv7, Mpsv4, and Lpsv5-series Virtual Machines

- 公開日 (UTC): `2026-11-17 23:55:53`
- リンク: <https://azure.microsoft.com/updates?id=581298>

Cobalt 200ベースのArm VMが**GA**になりました。汎用Dpsv7/Dplsv7、メモリ最適化Epsv7、大容量メモリMpsv4、高密度ストレージLpsv5が対象です。
Arm対応ワークロードの新しい選択肢です。既存x64環境を置き換える場合は、ネイティブ依存関係のArm64対応と実負荷での性能を確認してください。

## [Launched] Generally Available: Intel and AMD v6 with temp disk for Azure Database for PostgreSQL 

- 公開日 (UTC): `2026-11-17 23:52:49`
- リンク: <https://azure.microsoft.com/updates?id=579590>

Azure Database for PostgreSQL Flexible Serverで、ローカル一時ディスク付きIntel/AMD v6コンピュートが**GA**になりました。
新世代コンピュートの性能・規模を利用したい利用者向けです。既存サーバーの変更は必須ではなく、対応リージョンとSKU、負荷特性に合わせて採用を検討してください。

## [Launched] Generally Available: Intel and AMD v5 diskless tier for Azure Database for PostgreSQL 

- 公開日 (UTC): `2026-11-17 23:51:44`
- リンク: <https://azure.microsoft.com/updates?id=579595>

PostgreSQL Flexible Serverに、ローカル一時ディスクを持たないIntel/AMD v5コンピュートが**GA**で追加されました。
General PurposeとMemory Optimizedの構成選択肢が広がります。一時ディスク付きSKUと同じ条件と決めつけず、必要な性能・価格を比較してください。

## [Launched] Generally Available: Cobalt 200 compute for Azure Database for PostgreSQL 

- 公開日 (UTC): `2026-11-17 23:50:40`
- リンク: <https://azure.microsoft.com/updates?id=579585>

PostgreSQL Flexible Serverで、Microsoft設計のArm64ベースCobalt 200コンピュートが**GA**になりました。
データベース用コンピュートのアーキテクチャ選択肢が増えます。採用時は拡張機能や対応構成を確認し、既存負荷で性能を比較することが重要です。

## [Launched] Generally Available: Geo-redundant backup and restore for Azure HorizonDB

- 公開日 (UTC): `2026-11-17 23:47:55`
- リンク: <https://azure.microsoft.com/updates?id=574168>

Azure HorizonDBで、別のAzureリージョンへ復元するための地理冗長バックアップ・復元が**GA**として告知されました。
リージョン障害に備える利用者が対象です。バックアップからの復元と常時稼働のフェールオーバーは区別し、復旧要件に合う構成を確認してください。

## [In preview] Generally Available: Customize backup retention from 1 to 35 days in Azure HorizonDB

- 公開日 (UTC): `2026-11-17 23:46:26`
- リンク: <https://azure.microsoft.com/updates?id=574163>

HorizonDBのバックアップ保持期間を**1〜35日**で設定できるようになりました。
復元要件に合わせた保持期間を選べます。RSSの状態ラベルは「In preview」、タイトルは「Generally Available」と不一致のため、正式な提供段階はリンク先で確認してください。

## [Launched] Generally Available: Throughput buckets in Azure Cosmos DB 

- 公開日 (UTC): `2026-11-17 23:44:26`
- リンク: <https://azure.microsoft.com/updates?id=571488>

Azure Cosmos DBのthroughput bucketsが**GA**になりました。
同じコンテナーを利用する複数ワークロードについて、それぞれが消費できる最大スループットを制限できます。特定処理によるリソース占有を抑えたい利用者は、ワークロードごとの上限設計を検討してください。

## [In preview] Limited Preview: AI model management in Azure HorizonDB

- 公開日 (UTC): `2026-11-17 23:42:10`
- リンク: <https://azure.microsoft.com/updates?id=563097>

Azure HorizonDBのAIモデル管理が**限定プレビュー**になりました。
埋め込み、意味的ランキング、生成に使うマネージドAIモデルのプロビジョニングを簡略化する機能です。データベースにAI処理を組み込みたい開発者は、参加条件と対応モデルを確認してください。

## [Launched] Generally Available: Semantic Reranker in Azure Cosmos DB 

- 公開日 (UTC): `2026-11-17 23:07:42`
- リンク: <https://azure.microsoft.com/updates?id=577520>

Azure Cosmos DBのSemantic Rerankerが**GA**になりました。
検索文字列の意味と文脈をAIモデルで評価し、候補ドキュメントを再順位付けします。検索やRAGの開発者は、既存ランキングに対する品質改善を実データで評価してください。

## [In preview] Public Preview: Pod Sandboxing kata-vm-isolation-v2 runtime class 

- 公開日 (UTC): `2026-11-17 23:00:02`
- リンク: <https://azure.microsoft.com/updates?id=581120>

Pod Sandboxingの`kata-vm-isolation-v2`ランタイムクラスが**パブリックプレビュー**になりました。
従来のPodごとのKata VM起動に伴うコールドスタートとメモリ負荷の課題に対応する更新です。隔離Podを使う運用者は、既存方式との隔離要件・起動特性の違いを確認して評価してください。

## [In preview] Pulic Preview: Azure Elastic SAN Next Generation

- 公開日 (UTC): `2026-11-17 22:54:18`
- リンク: <https://azure.microsoft.com/updates?id=581634>

Azure Elastic SAN Next Generationが**パブリックプレビュー**になりました。
ブロックストレージを単一SAN階層に集約し、性能を動的に共有する利点を引き継ぐ次世代版です。既存Elastic SANからの移行が必須という告知ではなく、対応構成と機能差を確認する段階です。

## [In preview] Limited Preview: Azure Workload Center for SAP and Azure Copilot Run SAP Agent

- 公開日 (UTC): `2026-11-17 22:48:10`
- リンク: <https://azure.microsoft.com/updates?id=581209>

Azure上のSAP運用向けに、Workload Center for SAPとAzure Copilot Run SAP Agentが**限定プレビュー**になりました。
Workload Virtual Instanceを基盤にワークロードを把握する運用体験です。SAP運用者は参加条件を確認し、既存の監視・運用手順と合わせて評価してください。

## [In preview] Limited Preview: Azure Workload Center for Oracle and Azure Copilot Run Oracle Agent

- 公開日 (UTC): `2026-11-17 22:46:30`
- リンク: <https://azure.microsoft.com/updates?id=581214>

Azure上のOracle運用向けに、Workload Center for OracleとAzure Copilot Run Oracle Agentが**限定プレビュー**になりました。
Workload Virtual Instanceを基盤に、Oracleワークロードを意識した運用体験を提供します。利用可能な環境と支援範囲を確認して評価する更新です。

## [In preview] Public Preview: Database Agent for SQL with contextual Copilot 

- 公開日 (UTC): `2026-11-17 22:43:01`
- リンク: <https://azure.microsoft.com/updates?id=580091>

SQL向けDatabase Agentのcontextual Copilotが**パブリックプレビュー**になりました。
検出された問題について、根拠に基づくAI推奨として重要性、推定原因、次の対応を提示します。DB運用者は診断支援として利用し、推奨をそのまま自動修復の実施結果とは扱わないようにしてください。

## 20件の展開枠外で確認した重要告知

以下は残り145件から確認したGA告知です。同機能の重複告知はまとめています。特記しない限り既存利用者への即時移行要求ではなく、新機能の採用可否を確認する更新です。

| 告知 | 変更と利用者への影響 |
| --- | --- |
| [Database Hubダッシュボード](https://azure.microsoft.com/updates?id=579644) / [Database Hub GA](https://azure.microsoft.com/updates?id=579216) | SQL、PostgreSQL、Cosmos DBなどの探索・管理・監視を集約。リアルタイム性能画面でCPU、メモリ、ストレージ、I/Oを確認する運用を検討できます。 |
| [DocumentDBの高速プロビジョニング](https://azure.microsoft.com/updates?id=579349) | M10〜M30階層で、従来の待ち時間を減らした作成が利用可能になります。短時間で環境を準備したい開発者向けです。 |
| [AKSのIntel TDX対応Confidential VM](https://azure.microsoft.com/updates?id=581130) | 機密VMノードプールのハードウェア保護方式にIntel TDXが加わります。Intelのアテステーションに標準化した組織は対応ノード構成を確認してください。 |
| [HorizonDB Private Endpoint](https://azure.microsoft.com/updates?id=574153) | Private LinkとプライベートDNSを利用し、公開アクセスを無効化する構成が可能です。タイトルはGAですがRSS状態はプレビューのため提供段階を要確認です。 |
| [IBM Spectrum LSFとCompute Fleet](https://azure.microsoft.com/updates?id=581259) | LSF Resource Connectorが負荷に応じて計算資源を確保・解放します。オンプレミスHPCをAzureへ拡張する運用者向けです。 |
| [Data Guardianの発見導線](https://azure.microsoft.com/updates?id=581226) | パブリックプレビューのSovereign Control PanelからData Guardianを確認できます。EUの対象システムへのMicrosoft技術者のリモートアクセス監督に関係します。 |
| [HorizonDBのAzure Policy対応](https://azure.microsoft.com/updates?id=581180) | 診断設定の自動展開など、ガバナンス・観測設定の統一を支援します。GAタイトルに対して説明はプレビューと記載されており、正式段階を要確認です。 |
| [HorizonDBシステム管理メンテナンス](https://azure.microsoft.com/updates?id=581170) | 利用者が保守スケジュールを管理しなくても計画アップグレードを実施する方式です。保守運用とアプリの再接続方針を確認してください。 |
| [Azure Linux 4.0](https://azure.microsoft.com/updates?id=581165) | VMとVM Scale Sets向けのMicrosoft製Linuxの新メジャー版がGAです。既存イメージを更新する前にアプリ・エージェント互換性を評価してください。 |
| [Ebsv6/Ebdsv6](https://azure.microsoft.com/updates?id=581160) | 第5世代Intel XeonとAzure BoostによるI/O重視VMです。データベースなどストレージ性能が重要な負荷の移行候補です。 |
| [MySQLサーバー名変更](https://azure.microsoft.com/updates?id=581140) | サーバーの再作成やデータ移行をせずに名前を変更できる機能です。採用時は接続設定への影響と変更手順を確認してください。 |
| [DDoS Protectionカスタムポリシー](https://azure.microsoft.com/updates?id=580852) | 自動学習による既定しきい値に加えてポリシーを調整する選択肢です。遅延に敏感な負荷を保護する担当者は誤検知とのバランスを評価してください。 |
| [Infrastructure Resiliency Manager](https://azure.microsoft.com/updates?id=580748) | ゾーン冗長テンプレートやアプリ評価を通じ、目標に基づいた回復性改善を支援するサービスがGAです。 |
| [Azure Monitor Health Models](https://azure.microsoft.com/updates?id=580261) | メトリック・ログ・依存関係を集約してワークロードの健全性をモデル化できます。単一リソース監視から業務全体の状態評価へ広げたい運用者向けです。 |
| [ARO hosted control planes](https://azure.microsoft.com/updates?id=580136) | OpenShiftのコントロールプレーンとアプリ用ワーカーノードを分離する配置方式がGAです。既存クラスターとは別に対応条件を確認してください。 |
| [Azure AI Gateway](https://azure.microsoft.com/updates?id=580080) | 旧API ManagementのAI Gateway tierが、モデルとMCPツールへの接続を扱う完全マネージドサービスとしてGAです。既存利用者は名称だけでなく構成・提供条件の違いを確認してください。 |
| [Agent 365連携](https://azure.microsoft.com/updates?id=580055) | API ManagementとAI Gatewayを通じたAIエージェント・MCPツールの集中管理と、実行時のアクセス制御がGAです。 |
| [API Management Premium v2](https://azure.microsoft.com/updates?id=580046) | 35リージョンで提供され、配置先の選択肢が拡大します。利用地域での可用性を再確認してください。 |
| [Azure Connector Namespace](https://azure.microsoft.com/updates?id=580041) | Microsoft・SaaS・業務システムに接続する再利用可能なコネクターのマネージド基盤がGAです。アプリ・エージェント開発者向けです。 |
| [Unified Model API](https://azure.microsoft.com/updates?id=580036) | API Managementで複数プロバイダーのAIモデルを標準化したAPI経由で扱えます。プロバイダーごとの実装差を減らしたい開発者向けです。 |
| [HorizonDBとAdvisor](https://azure.microsoft.com/updates?id=579938) | リソースの分析に基づく個別の最適化推奨を利用できます。推奨内容を確認してから環境へ適用してください。 |
| [HorizonDBのアラート](https://azure.microsoft.com/updates?id=579933) | Azure Monitorでメトリックのしきい値に基づく通知ルールを構成できます。監視担当者は必要なルールと通知先を設定してください。 |
| [HorizonDBの監査](https://azure.microsoft.com/updates?id=579928) | pgAuditでデータアクセス、変更、ロール・DDL操作などを選択して記録し、Log Analyticsへ送信できます。監査要件に合わせた対象設定が必要です。 |
| [Multicloud Interconnect](https://azure.microsoft.com/updates?id=579766) | Azureと他クラウド間のプライベート接続が対象。サービス・AWS対応はGA、Google Cloud対応はパブリックプレビューと段階が異なります。 |
| [FoundryのBusiness Applications in Work IQ対応](https://azure.microsoft.com/updates?id=579680) | 業務データに接続したエージェント開発を支援し、独自の連携実装を減らす機能です。 |
| [HorizonDBのApache AGE改善](https://azure.microsoft.com/updates?id=579660) | クエリ計画・グラフ結合、重複検出やメモリ処理を改善。ナレッジグラフ利用者は対象クエリの性能を比較してください。 |
| [HorizonDBのLog Analytics連携](https://azure.microsoft.com/updates?id=579574) | Azure Monitor診断設定からデータベースログ・診断データを集約できます。送信先と保持方針を確認してください。 |
| [Azure SQLのAES TDE保護キー](https://azure.microsoft.com/updates?id=579531) | Key Vault PremiumまたはManaged HSMのAES-256キーをTDE protectorとして利用可能です。RSAから変更する場合は鍵管理・復旧手順を確認してください。 |
| [Functions Managed Connectors](https://azure.microsoft.com/updates?id=579440) | Microsoft 365、SaaS、業務システムのイベントとアクションをFunctionsのプログラミングモデルで扱う機能がGAです。 |
| [Azure HorizonDB](https://azure.microsoft.com/updates?id=579388) | 高性能・AI・大規模負荷向けの完全マネージドPostgreSQLサービスがGAです。既存PostgreSQLからの移行は任意で、互換性と運用条件を確認してください。 |
| [Key Vault Premiumの対称鍵](https://azure.microsoft.com/updates?id=579374) | `oct-HSM`鍵種別とAESによる対称暗号機能がGAです。暗号処理を実装する開発者は対応操作とキー要件を確認してください。 |
| [DocumentDBの任意ノードへのクエリ](https://azure.microsoft.com/updates?id=579354) | 複数シャードのどのノードもクエリを受け、必要なシャードへ転送できます。接続・ルーティング設計の選択肢が増えます。 |
| [Cosmos DBのAzure Backup](https://azure.microsoft.com/updates?id=579147) / [同機能の追加告知](https://azure.microsoft.com/updates?id=578044) | ソースアカウントから分離したコンテナーに、変更不能な長期バックアップを保存する保護層がGAです。既存の復旧方式を補完する選択肢です。 |
| [Government/ChinaのSmart Tier](https://azure.microsoft.com/updates?id=579040) | Blob・ADLSのオンライン階層の自動配置を政府・中国クラウドでも利用できます。該当環境のストレージ運用者向けです。 |
| [SQLのあいまい文字列一致](https://azure.microsoft.com/updates?id=578998) | Azure SQL Database、Managed Instance、Fabric SQL、SQL Server 2025で類似度に基づく文字列比較がGAです。完全一致では拾えない照合処理に利用できます。 |
| [Agent Framework Durable Task拡張](https://azure.microsoft.com/updates?id=578829) | C#とPythonで、長時間動作するエージェント、複数エージェント、ワークフローの永続実行を支える拡張がGAです。リポジトリの更新件数とは別に重要な製品告知です。 |
| [Durable Task SchedulerのPrivate Endpoint](https://azure.microsoft.com/updates?id=578824) | Dedicated・Consumptionの両SKUでプライベートIP経由の接続がGAです。閉域構成の利用者はDNS・ネットワーク要件を確認してください。 |
| [Functions Flex ConsumptionのGo対応](https://azure.microsoft.com/updates?id=578812) | 型付きハンドラー、Go modules、Core Tools・Azure CLI連携を備えたGo workerがGAです。Goによるイベント駆動アプリの新しい選択肢です。 |
| [Durable Task SchedulerのCMK](https://azure.microsoft.com/updates?id=578768) | Dedicated SKUで顧客管理キーによるワークフローデータ保護がGAです。独自鍵管理が必要な組織は権限と鍵のライフサイクルを設計してください。 |
| [Azure SQL 11月中旬更新](https://azure.microsoft.com/updates?id=578471) | あいまい文字列一致などのGA更新をまとめた告知です。個別告知と重複するため、独立した機能数としては数えません。 |
| [SQL Managed Instance 11月中旬更新](https://azure.microsoft.com/updates?id=578465) | Next-gen GPのログレートが最大220 MiB/sへ向上するなどの改善。実構成の上限・対応条件を確認してください。 |
| [Cosmos DB Shell](https://azure.microsoft.com/updates?id=578439) | 人とAIエージェントの双方から使える、スクリプト化可能なCosmos DB向けCLI体験がGAです。 |
| [HorizonDBの15リージョン展開](https://azure.microsoft.com/updates?id=578314) | データベースをアプリや利用者の近くに配置する選択肢が拡大します。必要機能が対象リージョンで提供されるか確認してください。 |
| [DocumentDB VS Code拡張](https://azure.microsoft.com/updates?id=578237) | Azure DocumentDBとオープンソースDocumentDB向けの無料・OSS拡張がGAです。MongoDB API互換ワークロードの開発に利用できます。 |
| [Cosmos DB Rust SDK](https://azure.microsoft.com/updates?id=578054) | Cosmos DB for NoSQLをRustから利用するネイティブクライアントがGAです。既存の他言語SDKを変更する必要はありません。 |
| [SQL MI Next-gen GPのゾーン冗長](https://azure.microsoft.com/updates?id=578033) | 重要コンポーネントを可用性ゾーンに分散してゾーン障害への耐性を高めます。対象構成・リージョンを確認してください。 |
| [SQL MI linkの複数DB可用性グループ対応](https://azure.microsoft.com/updates?id=578028) | 単一リンクで複数DBのAlways On可用性グループをAzure SQL MIへ拡張できます。移行・災害対策の設計者向けです。 |
| [Azure Managed Redis移行ツール](https://azure.microsoft.com/updates?id=577579) | Azure Cache for Redisからの移行を支援するツールがGAです。この告知単独では廃止期限を示していないため、期限を推測せず別途確認してください。 |
| [Redis keyspace notifications](https://azure.microsoft.com/updates?id=577558) | データ変更イベントをpub/subで受信できます。対象イベントを構成し、アプリ側で必要な通知を購読してください。 |
| [RedisのDB連携ガイダンス](https://azure.microsoft.com/updates?id=577553) | PostgreSQL、Cosmos DB、Azure SQLとキャッシュを組み合わせる手順・参照設計が拡充されます。新API追加ではなく実装支援資料の更新です。 |
| [Cosmos DBのBM25スコア投影](https://azure.microsoft.com/updates?id=577531) | 全文検索結果ごとの関連度スコアを取得できます。検索順位の説明・調整に利用する開発者向けです。 |
| [HorizonDB Entra認証](https://azure.microsoft.com/updates?id=575111) | IDベース認証を集中管理できます。採用時はデータベースの権限とアプリの認証方法を確認してください。 |
| [HorizonDBユーザー割り当てマネージドID](https://azure.microsoft.com/updates?id=575069) | クラスターにIDを割り当てて一元管理できます。資格情報を減らす設計では接続先の権限付与も確認してください。 |

### Functions・エージェント関連の追加プレビュー

- [Task Queues](https://azure.microsoft.com/updates?id=578989): 同一task hub内に名前付きキューを作り、負荷ごとの処理量や下流制限を考慮する機能がパブリックプレビューです。
- [Network Troubleshooter v2](https://azure.microsoft.com/updates?id=578980): Storage、Service Bus、Azure Filesなどへの依存関係を俯瞰して調査する機能がパブリックプレビューです。
- [Flex ConsumptionのコンテナーによるOS依存対応](https://azure.microsoft.com/updates?id=578975): 従来のマネージドworkerでは追加できなかったネイティブ実行ファイルやシステムライブラリを必要とするアプリ向けのプレビューです。
- [Hosted Skill / Agent bindings](https://azure.microsoft.com/updates?id=578845): エージェントの準備・ライフサイクルに必要な接続コードを減らすバインディングがパブリックプレビューです。下記ランタイムリポジトリの変更有無とは別に評価してください。
- [Node.js 26](https://azure.microsoft.com/updates?id=578807) / [Python 3.15](https://azure.microsoft.com/updates?id=578802): 新ランタイムのパブリックプレビュー。依存ライブラリ・ネイティブ拡張・デプロイ手順の互換性評価が必要で、即時切り替えは要求されていません。
- [Durable Task Scheduler災害復旧](https://azure.microsoft.com/updates?id=578762): 対応リージョンのDedicated SKU向けパブリックプレビューです。オーケストレーション状態を作り直さず復旧する方式について、復旧手順と条件を確認してください。
- [Agent Sandbox cluster extension](https://azure.microsoft.com/updates?id=580916): モデルが生成した信頼できないコードを実行するセッションの隔離を扱うパブリックプレビューです。Kubernetes上で独自実装していたサンドボックス管理を見直す候補になります。
- [Azure Firewall Premium AI Security](https://azure.microsoft.com/updates?id=580694): AIアプリ・機密データ・マルウェア対策などを扱う追加機能がパブリックプレビューです。既存Premium契約に無条件で含まれるとは判断せず、提供条件を確認してください。

残り145件のタイトルには、廃止期限や破壊的変更を明示する告知は確認できませんでした。ただし、RSS説明の省略と、HorizonDB関連などの提供段階表記の不一致は継続確認事項です。
