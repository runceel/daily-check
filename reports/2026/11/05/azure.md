# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

対象期間内の Azure RSS 新着は **19 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Azure Database for PostgreSQL stable REST API version 2026-10-01

- 公開日 (UTC): `2026-11-04 18:42:12`
- リンク: <https://azure.microsoft.com/updates?id=579300>

Azure Database for PostgreSQL Flexible Server の REST API `2026-10-01` が GA となり、メンテナンス管理、イミュータブルバックアップ、クロステナント暗号化などの機能が拡張されました。
同サービスを API で管理する利用者は、新しい安定版 API と追加機能を確認し、必要に応じてクライアントや運用手順を更新してください。

## Generally Available: Route maps for Azure Route Server

- 公開日 (UTC): `2026-11-04 18:39:41`
- リンク: <https://azure.microsoft.com/updates?id=578966>

Azure Route Server のルートマップがパブリッククラウドで GA となり、ハイブリッド接続における受信・送信経路の広告を細かく制御できるようになりました。
経路制御を管理するネットワーク担当者は、既存のルーティングポリシーに適用できるか確認し、必要なルートマップを構成してください。

## [In preview] Public Preview: Azure Firewall IPv6 now supports application rules

- 公開日 (UTC): `2026-11-04 18:09:43`
- リンク: <https://azure.microsoft.com/updates?id=579507>

Azure Firewall で IPv6 の HTTP/HTTPS トラフィックに対するアプリケーションルールがパブリックプレビューになり、IPv6・デュアルスタック環境でも L7 フィルターを利用できます。
対象環境の管理者はプレビュー機能として評価し、IPv4 と同等のアプリケーション制御が必要な箇所で動作を確認してください。

## [In preview] Public Preview: Multi-disk crash-consistent VM restore points for Premium SSD v2 and Ultra Disks on VMs with SCSI disk controller

- 公開日 (UTC): `2026-11-04 17:13:51`
- リンク: <https://azure.microsoft.com/updates?id=579162>

SCSI ディスクコントローラーを使用する Azure VM で、Premium SSD v2 および Ultra データディスクを含む複数ディスクのクラッシュ整合性復元ポイントがパブリックプレビューになりました。
対象ディスク構成の VM を運用する場合は、エージェントレスの復元ポイントをプレビューで検証し、復旧要件に適合するか評価してください。

## [In preview] Public Preview: JWT validation for Application Gateway for Containers

- 公開日 (UTC): `2026-11-03 21:17:08`
- リンク: <https://azure.microsoft.com/updates?id=576382>

Application Gateway for Containers が `AuthPolicy` カスタムリソースによる JWT の集中検証に対応し、信頼された HTTP エンドポイントから取得する署名鍵を使って署名、発行者、有効期間、audience を検証できます。
同ゲートウェイを利用するチームはプレビューとしてポリシー設定と認証フローを検証し、アプリケーション側の認証要件との整合を確認してください。

## [In preview] Public Preview: MCP gateway for Application Gateway for Containers

- 公開日 (UTC): `2026-11-03 21:16:36`
- リンク: <https://azure.microsoft.com/updates?id=576388>

Application Gateway for Containers に新しい `MCPRoute` カスタムリソースが追加され、MCP サーバーを安定したホスト名・パスで公開し、TLS や JWT 検証、Web Application Firewall などのゲートウェイ機能と併用できます。
MCP サーバーを公開するプラットフォームチームは、プレビュー機能としてルーティングと既存の保護ポリシーを検証してください。

## [In preview] Public Preview: Private ingress for Application Gateway for Containers

- 公開日 (UTC): `2026-11-03 21:15:46`
- リンク: <https://azure.microsoft.com/updates?id=576393>

Application Gateway for Containers で、承認済みの Azure Private Link プライベートエンドポイントからのみ到達できるプライベートフロントエンドがパブリックプレビューになりました。
内部アプリや共有サービスを公開する組織は、プライベート接続要件に適合するかを検証し、許可する Private Link 接続を構成してください。

## [In preview] Public Preview: Advanced capacity insights are now available in Azure Storage Discovery

- 公開日 (UTC): `2026-11-03 20:20:29`
- リンク: <https://azure.microsoft.com/updates?id=578655>

Azure Storage Discovery の高度な容量分析がプレビューとなり、アクセスパターン、データの経過期間、ストレージ層、オブジェクトサイズ分布、保持状況などから利用状況を把握できます。
容量計画やデータ配置を行うストレージ管理者は、分析結果を評価し、現行の最適化判断に活用できるか確認してください。

## [In preview] Public Preview: Extend immutability for PITR backups for Azure SQL Database and Azure SQL Managed Instance

- 公開日 (UTC): `2026-11-03 18:36:12`
- リンク: <https://azure.microsoft.com/updates?id=579305>

Azure SQL Database と Azure SQL Managed Instance の PITR バックアップで、既定の7日を超えて、構成済みの PITR 保持期間に合わせてイミュータブル保持をロックできる機能がプレビューになりました。
長期保持が必要な金融などの利用者は、必要な保持日数と復旧要件を確認し、プレビューで適用可否を評価してください。

## [Launched] Generally Available: Enhanced Azure Site Recovery support for VMSS Flex

- 公開日 (UTC): `2026-11-03 18:32:01`
- リンク: <https://azure.microsoft.com/updates?id=578926>

Azure Site Recovery の VMSS Flex 対応が強化され、ターゲット構成やフェールオーバー、再保護を含む一連の復旧ワークフローが改善されました。
柔軟なオーケストレーションの VM Scale Sets を保護する利用者は、GA 機能を利用して既存の復旧構成と手順を確認してください。

## [In preview] Public Preview: On-prem NAS share discovery and assessment are now available using Azure Migrate

- 公開日 (UTC): `2026-11-02 19:37:11`
- リンク: <https://azure.microsoft.com/updates?id=577975>

Azure Migrate でオンプレミス NAS の検出・評価がプレビューとなり、Dell PowerScale（OneFS）および NetApp ONTAP から Azure への移行計画を支援します。
該当 NAS の移行を検討する顧客・パートナーは、Azure Migrate appliance による共有の検出結果を評価し、移行計画に反映してください。

## Retirement: OT security in Microsoft Defender for IoT

- 公開日 (UTC): `2026-11-02 19:22:28`
- リンク: <https://azure.microsoft.com/updates?id=576255>

Microsoft Defender for IoT の OT セキュリティ機能は、3年間の移行期間を経て **2029年10月に廃止** される予定です。
該当機能を利用中の組織は影響範囲を棚卸しし、移行先の選定と計画を進めてください。告知では具体的な移行先は示されていないため、公式案内の続報を確認してください。

## [Launched] Generally Available: Change from virtual network integration to a private endpoint capable network configuration in Azure Database for PostgreSQL flexible server  

- 公開日 (UTC): `2026-11-02 19:20:33`
- リンク: <https://azure.microsoft.com/updates?id=574541>

Azure Database for PostgreSQL Flexible Server で、既存の VNet 統合サーバーを委任サブネット方式から Private Endpoint 対応構成へ変更できる機能が GA となりました。
ネットワーク構成の変更を検討する利用者は、既存サーバーの接続・セキュリティ要件を確認したうえで、必要に応じてプライベートエンドポイント方式へ移行してください。

## Retirement: Azure Fluid Relay

- 公開日 (UTC): `2026-11-02 19:01:41`
- リンク: <https://azure.microsoft.com/updates?id=570498>

Azure Fluid Relay は **2027年2月2日に廃止** され、以降は利用できなくなるため、依存するワークロードは停止・中断する可能性があります。
利用中の組織は依存関係を特定して期日までに移行計画を立ててください。Fluid Framework はオープンソースとして引き続き利用可能ですが、告知には Azure Fluid Relay の直接の移行先は示されていません。

## [Launched] Generally Available: Azure Storage Actions adds automatic task updates, execution controls, and case-sensitive matching

- 公開日 (UTC): `2026-11-02 18:34:01`
- リンク: <https://azure.microsoft.com/updates?id=578628>

Azure Storage Actions が GA となり、Blob / Data Lake Storage の自動処理で、タスク定義更新の自動反映、実行制御、大文字・小文字を区別した照合が可能になりました。
Storage Actions のタスク管理者は、既存タスクの更新・対象選定・実行設定を見直し、新しい制御を必要に応じて利用してください。

## [Launched] Generally Available: Restart databases in Azure SQL DB via the Azure portal 

- 公開日 (UTC): `2026-11-02 18:02:48`
- リンク: <https://azure.microsoft.com/updates?id=577992>

Azure SQL Database の単一データベース、Hyperscale データベース、エラスティックプール内データベースを、Azure portal から直接再起動またはフェールオーバーできるようになりました。
運用担当者は REST API 用のスクリプトやサポートへの依頼に頼らずポータルから操作できます。実行前に対象データベースと運用影響を確認してください。

## [Launched] Generally Available: Geo-Replication on partitioned namespaces for Azure Service Bus Premium

- 公開日 (UTC): `2026-11-02 18:00:51`
- リンク: <https://azure.microsoft.com/updates?id=579021>

Azure Service Bus Premium のパーティション分割された名前空間で、Geo-Replication が GA となりました。パーティションによるスループットと、メッセージおよびメタデータをセカンダリリージョンへ複製する可用性を組み合わせられます。
該当構成を運用する利用者は、リージョン間の復旧要件を確認し、必要に応じて複製設定とフェールオーバー手順を整備してください。

## [Launched] Generally Available: Azure Site Recovery for Azure Local

- 公開日 (UTC): `2026-11-02 17:49:48`
- リンク: <https://azure.microsoft.com/updates?id=579111>

Azure Local 向け Azure Site Recovery が GA となり、サポート対象の Windows / Linux VM を複製して災害復旧保護できるようになりました。
Azure Local を運用する組織は、対象 VM と復旧要件を確認し、Azure Site Recovery による保護および復旧手順を構成してください。

## [In preview] Public Preview: Support database-level managed identity (including FIC) in Create Database Scoped Credential T-SQL 

- 公開日 (UTC): `2026-10-30 17:16:27`
- リンク: <https://azure.microsoft.com/updates?id=577491>

Azure SQL Database でデータベース単位のマネージド ID（FIC を含む）を `CREATE DATABASE SCOPED CREDENTIAL` T-SQL から構成する機能がプレビューになりました。
ユーザー割り当て ID を使い、外部テーブルや `OPENROWSET` で Blob Storage / ADLS Gen2 のファイルを照会する利用者は、プレビューで認証構成を検証してください。
