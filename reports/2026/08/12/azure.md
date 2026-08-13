# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

対象期間内の Azure RSS 新着は **15 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: 2.2X IDPS performance optimization in Azure Firewall

- 公開日 (UTC): `2026-08-11 17:26:51`
- リンク: <https://azure.microsoft.com/updates?id=569256>

Azure Firewall Premium の TLS 検査と IDPS（Deny モード）利用時のスループットが最大 22 Gbps に向上し、TCP 接続単位でも最大 600 Mbps に倍増しました。高スループットの検査環境を運用する利用者は、既存構成を変えずに性能向上を見込めますが、実ワークロードで効果を確認してください。

## Announcing: Microsoft Fabric Item Recovery will be enabled by default for tenants without an explicit setting

- 公開日 (UTC): `2026-08-10 17:50:54`
- リンク: <https://azure.microsoft.com/updates?id=569140>

2026 年 8 月 23 日から、設定を明示していないテナントでは Microsoft Fabric の Item Recovery が既定で有効になり、対応アイテムを 3 日間復旧できるようになります。Fabric 管理者は設定を確認し、保持期間や運用ポリシーに合わない場合は事前に変更してください。

## [In preview] Public Preview: Azure ExpressRoute resiliency guard

- 公開日 (UTC): `2026-08-07 15:52:31`
- リンク: <https://azure.microsoft.com/updates?id=568666>

ExpressRoute 仮想ネットワーク ゲートウェイで、単一接続または複数接続を想定した構成を指定できる resiliency guard がパブリックプレビューになりました。冗長構成を設計・検証するネットワーク管理者は、プレビューの制約を確認したうえで障害時の動作を評価できます。

## Announcing:  Azure Databricks Genie One and Genie Agents Free Usage extended through January 31, 2027 

- 公開日 (UTC): `2026-08-06 19:41:52`
- リンク: <https://azure.microsoft.com/updates?id=568964>

Azure Databricks の Genie One と Genie Agents の無料利用期間が 2027 年 1 月 31 日まで延長されました。期間中は予算コントロールの対象外となるため、評価利用を続けるチームは終了日と利用量を把握し、終了後のコストを見積もってください。

## [In preview] Public Preview: Migrate from AWS FSx for Windows File Server to Azure Files with Azure Storage Mover

- 公開日 (UTC): `2026-08-06 16:40:19`
- リンク: <https://azure.microsoft.com/updates?id=567979>

Azure Storage Mover が、AWS FSx for Windows File Server（SMB）から Azure Files（SMB）へのエージェントレス移行をプレビューでサポートしました。FSx からの移行を検討する管理者は、移行元・移行先の互換性とプレビューの制限を確認して試行できます。

## [Launched] Generally Available: SharePoint Connector for Azure Databricks

- 公開日 (UTC): `2026-08-05 22:34:02`
- リンク: <https://azure.microsoft.com/updates?id=568905>

Azure Databricks の SharePoint コネクターが一般提供され、Lakeflow Connect で SharePoint のファイルを取り込めるようになりました。企業コンテンツをデータ分析や AI ワークフローに統合したい組織は、権限・更新頻度・取り込み対象を設計して本番利用を開始できます。

## [Launched] Generally Available: Unity AI Gateway on Azure Databricks

- 公開日 (UTC): `2026-08-05 22:32:45`
- リンク: <https://azure.microsoft.com/updates?id=568910>

Azure Databricks の Unity AI Gateway が一般提供され、モデル・エージェント・ツール・MCP サービスを一元的に統制できるようになりました。AI 利用量やコストの監視、ガードレール、アクセス制御を標準化したい運用者は、既存の接続方式と権限モデルを確認して導入してください。

## [Launched] Generally Available: Explicit proxy in Azure Firewall 

- 公開日 (UTC): `2026-08-05 14:54:08`
- リンク: <https://azure.microsoft.com/updates?id=568825>

Azure Firewall の explicit proxy が一般提供され、アプリケーションやブラウザーのプロキシ設定から HTTP/HTTPS 通信を直接 Firewall へ送れるようになりました。ルートベース以外の通信制御を必要とする利用者は、プロキシ設定と既存のネットワーク経路が競合しないことを確認して利用できます。

## Retirement: Nested confidential (cc_v5) VMs will be retired on September 1, 2026

- 公開日 (UTC): `2026-08-05 00:22:49`
- リンク: <https://azure.microsoft.com/updates?id=568661>

cc_v5 confidential VM シリーズは 2026 年 9 月 1 日に廃止され、利用・購入できなくなります。対象 VM は期日までに代替サイズへリサイズしないと割り当て解除されるため、利用中の DCas_c 系サイズを洗い出し、移行先と停止影響を確認して早急に対応してください。

## [In preview] Public Preview: Perimeter link feature in network security perimeter 

- 公開日 (UTC): `2026-08-04 18:30:09`
- リンク: <https://azure.microsoft.com/updates?id=568837>

Network security perimeter の perimeter link により、異なる境界にある信頼済みリソースを Managed Identity（MSI）で安全に接続できる機能がプレビューになりました。複数の境界をまたぐ通信を設計する利用者は、追加のネットワーク公開を避けられる可能性がありますが、プレビュー制約とアクセス範囲を検証してください。

## [In preview] Public Preview: Azure Private Link support over IPv6 

- 公開日 (UTC): `2026-08-04 18:29:36`
- リンク: <https://azure.microsoft.com/updates?id=568842>

Azure Private Link が IPv6 経由のプライベートエンドポイントに対応し、IPv6 クライアントから Azure Storage や Azure SQL Database などの PaaS に非公開接続できるようになりました。IPv6 化を進めるネットワーク担当者は、対象サービスと DNS・経路設定の対応状況を確認して試用できます。

## [In preview] Public Preview: Azure DNS enables DNS-based load balancing through Traffic Manager integration

- 公開日 (UTC): `2026-08-04 17:04:55`
- リンク: <https://azure.microsoft.com/updates?id=565214>

Azure DNS のレコードセットを Traffic Manager プロファイルへ直接関連付けられるようになり、trafficmanager.net 向け CNAME を作成せずに DNS ベースの振り分けを構成できます。複数リージョンの名前解決を運用する担当者は、既存レコードへの影響を確認して構成を簡素化できます。

## [Launched] Generally Available: Azure Virtual Network routing appliance

- 公開日 (UTC): `2026-08-04 17:03:38`
- リンク: <https://azure.microsoft.com/updates?id=568605>

Azure Virtual Network routing appliance が一般提供され、専用ハードウェアによる低遅延・高スループットの VNet 間プライベート接続を利用できるようになりました。VM ベースのルーティング性能に課題がある環境は、対応リージョン・料金・既存経路との整合性を比較して導入を検討できます。

## [Launched] Generally Available: Trusted Launch as Default

- 公開日 (UTC): `2026-08-03 19:56:26`
- リンク: <https://azure.microsoft.com/updates?id=568600>

Trusted Launch as Default（TLaD）が一般提供され、新規の対応 Azure Gen2 VM と VM Scale Sets では Secure Boot と vTPM が自動的に有効になります。新規デプロイのセキュリティ基準が強化されるため、OS イメージや起動要件が既存運用と適合することを確認してください。

## [Launched] Generally Available: Immutability to the most recent seven days of backups on Azure SQL Database and Azure SQL Managed Instance 

- 公開日 (UTC): `2026-08-03 17:00:56`
- リンク: <https://azure.microsoft.com/updates?id=568339>

Azure SQL Database と Azure SQL Managed Instance では、直近 7 日分のバックアップに不変性が自動適用されるようになりました。全データベースで既定有効のため、運用者は復旧・保持要件と削除操作への影響を確認し、バックアップ保護の前提を更新してください。
