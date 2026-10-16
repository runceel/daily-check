# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

対象期間内の Azure RSS 新着は **44 件** です。自動展開の先頭20件に加え、残り24件も確認・補足しました。廃止項目は公式の詳細情報で期日と移行先を確認しています。

## [In preview] Public Preview: Azure HorizonDB expands to additional regions

- 公開日 (UTC): `2026-10-05 18:51:57`
- リンク: <https://azure.microsoft.com/updates?id=572940>

Azure HorizonDB のプレビュー提供リージョンが拡大し、PostgreSQL ワークロードをアプリや利用者に近い場所へ配置しやすくなりました。
新規導入・評価向けの選択肢拡大であり、既存環境の移行義務はありません。採用時は利用可能リージョンを確認してください。

## [Launched] Generally Available: SQL Server on Azure Virtual Machines in Azure Bleu 

- 公開日 (UTC): `2026-10-05 18:12:09`
- リンク: <https://azure.microsoft.com/updates?id=571499>

SQL Server on Azure Virtual Machines がフランスのソブリンクラウド Azure Bleu で **GA** となりました。
データ所在地・主権要件のある組織が対象です。Azure Bleu での新規配置を検討する際に提供条件を確認する告知であり、他リージョンの既存環境に変更は要求されていません。

## Announcing: Table discovery in OneLake Catalog search

- 公開日 (UTC): `2026-10-05 17:55:23`
- リンク: <https://azure.microsoft.com/updates?id=573875>

2026年10月15日から、Microsoft Fabric の検索結果にセマンティックモデル・レイクハウス・ミラーリングされたデータベースのテーブルが個別に表示されます。
テーブル名・説明や列名の完全一致で発見できるようになります。利用者は検索結果の粒度変更を把握すればよく、データの移行は不要です。

## [In preview] Public Preview: Azure Backup for PostgreSQL flexible server and elastic cluster (v2)

- 公開日 (UTC): `2026-10-05 17:44:31`
- リンク: <https://azure.microsoft.com/updates?id=573425>

PostgreSQL flexible server と elastic cluster 向け Azure Backup v2 がパブリックプレビューになりました。
マネージドディスクのスナップショットによる物理バックアップを Backup vault に保存する長期保持機能です。長期保存が必要な管理者は対応構成・復元手順を評価してください。既存バックアップの自動移行を意味する告知ではありません。

## [In preview] Public Preview: IPv6 Support for Application Gateway WAF 

- 公開日 (UTC): `2026-10-05 17:41:41`
- リンク: <https://azure.microsoft.com/updates?id=573861>

Application Gateway WAF による IPv6 トラフィックの検査・ルール適用がパブリックプレビューになりました。
IPv6 公開サービスを保護したい利用者向けの機能追加です。採用前に IPv6 経路と WAF ルールの動作を検証し、プレビューの適用条件を確認してください。

## [In preview] Public Preview:  Major version upgrades (MVU) for Azure Database for PostgreSQL elastic clusters 

- 公開日 (UTC): `2026-10-02 17:35:21`
- リンク: <https://azure.microsoft.com/updates?id=571504>

PostgreSQL elastic cluster のメジャーバージョンを既存クラスタ上で更新する機能がプレビューになりました。
置き換えクラスタの作成や分散データ移行を避けられる選択肢です。更新を予定する管理者はサポート対象バージョンと拡張機能・アプリの互換性を事前検証してください。

## Retirement: DCsv3 and DCdsv3-series Azure Virtual Machines will be retired on October 31, 2029

- 公開日 (UTC): `2026-10-01 17:02:55`
- リンク: <https://azure.microsoft.com/updates?id=569592>

**2029年10月31日に廃止**され、Linux・Windows・Dedicated Host の対象 VM は利用・購入できなくなります。VM ベースの移行先は DCasv6／DCadsv6／DCesv6／DCedsv6 または EC 系 v6 の confidential VM、コンテナは Confidential Container Instances 等を評価してください。
**2026年10月31日で1年・3年予約の購入・更新が終了し、11月1日から容量制限が始まります。** 廃止日を待たず、容量確保・暗号化要件・費用を確認して移行を計画する必要があります。

## [In preview] Public Preview: SQL performance monitoring for SQL Server on Azure Virtual Machines 

- 公開日 (UTC): `2026-09-30 21:13:13`
- リンク: <https://azure.microsoft.com/updates?id=571894>

SQL Server on Azure VM の Microsoft 管理の性能監視がパブリックプレビューになりました。
独自の収集スクリプトや複数ツール間の手動相関を減らしたい運用者向けです。現行監視との比較評価から始められ、既存監視を直ちに廃止する必要はありません。

## Retirement: NVv3-series Azure Virtual Machines

- 公開日 (UTC): `2026-09-30 18:26:47`
- リンク: <https://azure.microsoft.com/updates?id=573414>

**2026年9月30日に廃止済み**です。残存 VM は割り当て解除され、動作・課金が停止し、SLA とサポートの対象外になります。NVadsA10_v5 等への移行と移行先 GPU クォータの確保を至急確認してください。
例外として UAE North は **2027年1月31日まで延長**されています。[移行ガイド](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes/lifecycle/retirement/nvv3-series-retirement)で用途別 SKU を選択してください。

## Retirement: NVv4-series Azure Virtual Machines

- 公開日 (UTC): `2026-09-30 18:24:01`
- リンク: <https://azure.microsoft.com/updates?id=573415>

**2026年9月30日に廃止済み**で、残存 VM は割り当て解除・動作停止となり、SLA とサポートも終了します。推奨移行先は NVads_V710_v5、用途に応じて NVadsA10_v5 や NGads_V620 も選択肢です。
NVads_V710_v5 へのリサイズには既知のエラーがあり、`VMTempDiskResizePreview` の登録状態確認が必要です。[移行ガイド](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes/lifecycle/retirement/nvv4-retirement)に沿ってクォータ・ドライバ・可用性を確認してください。

## [In preview] Public Preview: Ubuntu 26.04 support in AKS

- 公開日 (UTC): `2026-09-30 17:11:11`
- リンク: <https://azure.microsoft.com/updates?id=573214>

AKS で Ubuntu 26.04 の `Ubuntu2604` OS SKU がプレビュー提供され、Ubuntu Minimal ベースのノードを評価できます。
Ubuntu ノードプールの次期 OS を検討するチーム向けです。既存プールを即時更新する告知ではなく、必要パッケージやワークロードの互換性検証を先に行ってください。

## Announcing: Azure canvases for GitHub Copilot

- 公開日 (UTC): `2026-09-30 17:09:51`
- リンク: <https://azure.microsoft.com/updates?id=573385>

GitHub Copilot の会話と並行して Azure のツール・ダッシュボード・ガイド付き操作を使える Azure canvases が紹介されました。
リソース探索、コスト分析、ホストされるスキルの構築などを対話型ワークスペースで進める選択肢です。機能の紹介であり、既存 Azure リソースへの移行作業は不要です。

## Retirement: Dv3, Dsv3, Ev3, and Esv3 Azure VMs 

- 公開日 (UTC): `2026-09-30 17:07:30`
- リンク: <https://azure.microsoft.com/updates?id=572346>

**2029年11月15日に Dv3／Dsv3／Ev3／Esv3 が廃止**されます。未移行 VM はサポート対象外となり、ハードウェア撤去に伴い割り当て解除・最終的な削除の可能性があります。
対象を棚卸しし、Dsv5／Esv5 等の新世代へ期限前に移行してください。1年・3年予約の購入・更新は2026年7月1日に終了済みで、既存予約と savings plan の扱いも確認が必要です。

## Retirement: Functions on Azure Container Apps V1 

- 公開日 (UTC): `2026-09-29 19:41:09`
- リンク: <https://azure.microsoft.com/updates?id=570800>

**2027年9月29日に ACA V1 ホスティングが廃止**され、対象 Functions は要求・イベントトリガーを処理できなくなります。期限前に `kind=functionapp` のネイティブ Container App を用いる ACA V2 へ移行してください。
既存コンテナイメージは再利用でき、標準経路では関数コード変更は不要です。[移行アシスタント](https://github.com/Azure-Samples/functions-on-container-apps-v1-migration-assistant)または[移行手順](https://learn.microsoft.com/azure/container-apps/migrate-functions)で、シークレット・ID・ネットワーク・スケーリングを再設定し、全トリガーと本番切替を検証する必要があります。

## [Launched] Generally Available: Storage optimized Lasv5 and Laosv5 Azure VM series 

- 公開日 (UTC): `2026-09-29 19:27:09`
- リンク: <https://azure.microsoft.com/updates?id=572630>

第5世代 AMD EPYC ベースのストレージ最適化 VM Lasv5／Laosv5 が **GA** になりました。
2〜160 vCPU、vCPU あたり8 GiB メモリと720 GB のローカル NVMe を備え、I/O 集約型ワークロード向けの選択肢が増えます。導入時はローカルディスクの永続性・リージョン・費用を確認してください。

## [In preview] Public Preview: Automatic Zone Placement for Virtual Machine Scale Sets

- 公開日 (UTC): `2026-09-29 19:17:59`
- リンク: <https://azure.microsoft.com/updates?id=571075>

VM Scale Sets のゾーン配置を SKU の提供状況・容量・配置要件に応じて Azure が選ぶ機能がプレビューになりました。
手動でゾーン一覧を維持する運用負担を減らす選択肢です。評価時は既存の障害分離・配置要件を満たすか確認し、既存設定の自動置換とは区別してください。

## [Launched] Generally Available: Azure Arc-enabled SQL Server in Germany West Central

- 公開日 (UTC): `2026-09-29 19:07:44`
- リンク: <https://azure.microsoft.com/updates?id=570696>

Germany West Central で Azure Arc-enabled SQL Server が **GA** になりました。
対象リージョンで SQL Server を Arc に接続し、台帳・ガバナンス・セキュリティ評価・ライセンス管理を利用できます。地域拡大の告知で、既存接続先の変更は必須ではありません。

## [Launched] Generally Available: Azure Arc-enabled SQL Server Available in Italy North

- 公開日 (UTC): `2026-09-29 19:06:50`
- リンク: <https://azure.microsoft.com/updates?id=570763>

Italy North で Azure Arc-enabled SQL Server が **GA** になりました。
SQL Server の Azure ベースの台帳・ガバナンス・評価・ライセンス管理を同リージョンで利用できます。新規 Arc 導入時に地域要件と接続設定を確認してください。

## [In preview] Public Preview: Azure Database for PostgreSQL Ultra Disk 

- 公開日 (UTC): `2026-09-29 18:14:46`
- リンク: <https://azure.microsoft.com/updates?id=571909>

PostgreSQL flexible server で Ultra Disk の利用がパブリックプレビューになりました。
低遅延を求める I/O 集約型・トランザクション負荷の高い DB 向けです。採用時は性能と費用を実測し、サポート構成を確認してください。既存ストレージの変更義務はありません。

## [In preview] Public Preview: SQL Performance Monitoring for Azure SQL Database

- 公開日 (UTC): `2026-09-29 18:13:31`
- リンク: <https://azure.microsoft.com/updates?id=571867>

Azure SQL Database の Microsoft 管理の性能監視がパブリックプレビューになりました。
収集スクリプト作成や分断されたツール間の相関作業を減らしたい DB 運用者が対象です。既存監視と並行して評価し、利用条件を確認してください。

## 自動展開の上限外にあった廃止告知

### Azure Arc-enabled SCVMM の廃止

- 公開日 (UTC): `2026-09-29 17:36:13`
- リンク: <https://azure.microsoft.com/updates?id=570283>

**2029年9月30日に廃止**されます。監視・セキュリティ・ガバナンス・更新・ライセンス管理は Azure Arc-enabled Servers への移行が推奨されています。
VM 作成・起動停止等のライフサイクル管理が必要な場合は同等移行先が一律に示されていないため、`arc-vmm-feedback@microsoft.com` に相談し、期限前の移行計画を立ててください。

### Microsoft HPC Pack のサポート終了

- 公開日 (UTC): `2026-09-29 17:26:50`
- リンク: <https://azure.microsoft.com/updates?id=570046>

**全バージョンが2027年8月27日にサポート終了**します。それまでも対応はセキュリティ更新などの廃止対応に限定され、終了後は更新・修正・技術サポートがありません。
Azure Batch 等への移行を評価してください。機能の1対1対応は保証されず、既存環境は動作してもサポート外になるため、スケジューラ・依存関係の棚卸しと移行検証が必要です。

### Azure IoT Central の廃止

- 公開日 (UTC): `2026-09-29 17:25:10`
- リンク: <https://azure.microsoft.com/updates?id=569914>

**2029年9月20日に廃止**されます。デバイス接続・プロビジョニングは Azure IoT Hub と DPS、デバイス管理は Azure Device Registry、分析・ダッシュボードは Microsoft Fabric を候補にしてください。
アプリ・デバイス・ダッシュボード・外部連携を棚卸しし、公式 migration playbook に沿って期限前に再構築・移行する必要があります。

## 自動展開の上限外にあった GA

各項目は新機能・提供範囲の拡大です。廃止告知と異なり、既存環境の一律移行を求めるものではありません。

| 公開日 (UTC) | 告知 | 変更点・対象利用者・対応 |
| --- | --- | --- |
| 2026-09-29 18:05:11 | [Azure SQL 更新](https://azure.microsoft.com/updates?id=571643) | Hyperscale Premium series に160／192 vCore が追加。大規模 DB の拡張時に容量・費用を評価する。 |
| 2026-09-29 17:57:36 | [PostgreSQL のクロステナント CMK](https://azure.microsoft.com/updates?id=571783) | 別 Entra テナントの Key Vault／Managed HSM の鍵で暗号化可能。鍵管理を分離したい組織はアクセス権・鍵ライフサイクルを確認する。 |
| 2026-09-29 17:51:34 | [SQL Server on Azure Local Disconnected](https://azure.microsoft.com/updates?id=571836) | 常時 Azure 接続が困難な規制・隔離環境で SQL Server を利用する選択肢。導入要件を確認する。 |
| 2026-09-29 17:50:20 | [SQL Server on Azure Local connected mode](https://azure.microsoft.com/updates?id=571841) | Azure Local 上の SQL Server を Arc 経由で一元管理。接続可能なオンプレミス拠点で管理・監視・ライセンス条件を評価する。 |
| 2026-09-29 17:42:47 | [SSMS の Database DevOps](https://azure.microsoft.com/updates?id=571852) | Microsoft.Build.Sql プロジェクトによる DB オブジェクト定義と共同変更管理が可能。DB 開発者はプロジェクト化を検討する。 |
| 2026-09-29 17:39:36 | [SQL Formatter](https://azure.microsoft.com/updates?id=571872) | VS Code で SQL スクリプトを設定可能なスタイルで整形。チームの書式に合わせて設定する。 |
| 2026-09-29 17:38:16 | [SQL Migration Agent Skills](https://azure.microsoft.com/updates?id=571899) | SQL Server から Azure への評価・移行先選択・実行・移行後検証を支援。移行担当者は生成結果を確認しながら利用する。 |
| 2026-09-29 17:12:40 | [NetApp Files large volume breakthrough mode](https://azure.microsoft.com/updates?id=573027) | 最大2 PiB、ワークロードに応じて最大80 GiB/s の大容量・高性能を提供。HPC／EDA 利用者は容量と実効性能を確認する。 |
| 2026-09-29 17:09:58 | [NetApp Files cool access 拡張](https://azure.microsoft.com/updates?id=573032) | Premium／Ultra の cool access 有効時の QoS を改善。階層化するデータ量に応じたスループットと費用を評価する。 |
| 2026-09-28 22:07:19 | [Azure SQL のベクトル検索・インデックス](https://azure.microsoft.com/updates?id=571800) | `CREATE VECTOR INDEX` と `VECTOR_SEARCH` による ANN 検索が GA。意味検索等の実装者は検索精度・性能を検証して採用する。 |
| 2026-09-28 18:52:10 | [SQL Managed Instance 更新](https://azure.microsoft.com/updates?id=571632) | flexible memory によるメモリ割り当て調整などを提供。管理者は必要リソースと対象条件を確認する。 |
| 2026-09-28 17:08:48 | [Luxembourg Azure Extended Zone](https://azure.microsoft.com/updates?id=572968) | 低遅延・データ所在地要件向けの地域拡大。新規配置時に対応サービスと制約を確認する。 |

## 自動展開の上限外にあったプレビュー

| 公開日 (UTC) | 告知 | 変更点・対象利用者・対応 |
| --- | --- | --- |
| 2026-09-29 18:11:15 | [Arc-enabled SQL Server の性能監視](https://azure.microsoft.com/updates?id=571904) | 管理された監視データを telemetry endpoint から直接照会可能。運用者は可視化・クエリ連携を評価する。 |
| 2026-09-29 17:52:59 | [Linux VM の SQL Server スクリプト配備](https://azure.microsoft.com/updates?id=571810) | 旧 Marketplace イメージに代わるスクリプトベースの構築方法。新規導入時にカスタマイズと運用手順を検証する。 |
| 2026-09-29 17:49:15 | [Azure SQL プレビュー更新](https://azure.microsoft.com/updates?id=571846) | Fabric の Database Hub で SQL Server／Azure SQL 等の発見・管理・監視を統合。DB 管理者は対象接続を評価する。 |
| 2026-09-29 17:40:40 | [Hyperscale Serverless の自動停止・再開](https://azure.microsoft.com/updates?id=571857) | 非アクティブ時の停止と利用再開を設定可能。断続的な DB 利用では復帰時の挙動と費用を検証する。 |
| 2026-09-29 17:34:44 | [Arc から Azure SQL Database への移行](https://azure.microsoft.com/updates?id=571795) | Hyperscale を含む移行先選択と DMS／Self-hosted IR の構築をガイド。移行担当者は互換性と接続条件を確認する。 |
| 2026-09-29 17:31:11 | [Microsoft SQL Agent Skills](https://azure.microsoft.com/updates?id=573003) | AI エージェントの SQL 開発・運用・移行に製品固有のガイダンスを提供。利用者は自環境への適用をレビューする。 |
| 2026-09-29 17:28:57 | [PostgreSQL LTR v2](https://azure.microsoft.com/updates?id=571914) | v1 の論理バックアップから Backup Vault 統合の物理スナップショット方式へ。長期保持の利用者は復元方法と対応構成を評価する。 |
| 2026-09-29 17:07:55 | [NetApp Files の Entra Kerberos](https://azure.microsoft.com/updates?id=573041) | SMB ボリュームへハイブリッド／クラウド専用 ID で認証。管理者は既存認証・アクセス制御との適合性を検証する。 |
| 2026-09-28 22:06:05 | [Azure SQL Dev Hub](https://azure.microsoft.com/updates?id=572998) | .NET／Python／Node.js／Java 等の接続・開発ガイダンスを集約。開発開始時に利用でき、移行義務はない。 |
