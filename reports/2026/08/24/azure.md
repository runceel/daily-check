# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

対象期間内の Azure RSS 新着は **14 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Summarized advertised gateway prefixes for route advertisement

- 公開日 (UTC): `2026-08-20 17:02:23`
- リンク: <https://azure.microsoft.com/updates?id=569743>

Azure gateway がオンプレミスへ広告する経路を集約プレフィックスで指定できる機能が GA になりました。多数の VNet 経路を扱うハイブリッド接続の管理者は、広告設定を見直して経路数を抑えられます。

## Announcing: Azure Copilot introduces direct access to agents

- 公開日 (UTC): `2026-08-20 16:08:02`
- リンク: <https://azure.microsoft.com/updates?id=569685>

Azure Copilot から目的に合った専用エージェントへ直接アクセスできるようになり、質問から実行までの導線が短くなります。利用者は目的に応じたエージェントを選択して操作しますが、既存の Azure リソース設定を変更する必要はありません。

## [Launched] Generally Available: Azure Databricks Lakebase in four additional regions

- 公開日 (UTC): `2026-08-19 21:04:18`
- リンク: <https://azure.microsoft.com/updates?id=569684>

Azure Databricks Lakebase が North Central US、France Central、Germany West Central、East Asia の 4 リージョンで GA になりました。対象地域のデータレジデンシーや遅延要件を持つ利用者は、新規配置先として選択できます。

## [Launched] Generally Available: Azure SQL updates for mid-August 2026 

- 公開日 (UTC): `2026-08-19 21:01:47`
- リンク: <https://azure.microsoft.com/updates?id=569145>

Azure SQL 関連の Visual Studio Code 拡張で、Quick Queries、Results Grid、Query Editor のキーボードショートカットをエディター内でカスタマイズできるようになりました。開発者は自分の操作体系に合わせて設定を調整できます。

## [In preview] Public Preview: SQL Formatter in MSSQL extension 

- 公開日 (UTC): `2026-08-19 21:00:19`
- リンク: <https://azure.microsoft.com/updates?id=569155>

MSSQL 拡張の SQL Formatter がパブリックプレビューとなり、エディター内で SQL を整形できるようになりました。書式設定の選択肢も増えているため、チーム標準に合わせて試用できますが、プレビュー機能のため本番運用前に挙動を確認してください。

## [Launched] Generally Available: Azure SQL Database provisioning in MSSQL extension 

- 公開日 (UTC): `2026-08-19 20:59:19`
- リンク: <https://azure.microsoft.com/updates?id=569160>

MSSQL 拡張から Azure SQL Database を作成・接続できるプロビジョニング機能が GA になりました。ARM、Bicep、Terraform のテンプレートも利用できるため、開発者はエディターから検証環境を構築し、必要に応じて IaC 化できます。

## [Launched] Generally Available: vCore Customization: Disable Multithreading and Configurable Constrained Cores  

- 公開日 (UTC): `2026-08-19 17:20:42`
- リンク: <https://azure.microsoft.com/updates?id=569051>

Azure VM の vCore Customization が GA となり、SMT/HT の無効化と、制約付きコア数の構成が可能になりました。ライセンスや性能分離の要件がある VM 利用者は、ワークロードごとにコア構成を見直してください。

## [Launched] Generally Available: BYON (Bring Your Own NIC) in Azure Site Recovery

- 公開日 (UTC): `2026-08-19 16:36:30`
- リンク: <https://azure.microsoft.com/updates?id=569515>

Azure Site Recovery の Azure-to-Azure のテストフェイルオーバー／フェイルオーバーで、ターゲットリージョンに事前作成した NIC を接続できる BYON が GA になりました。復旧時のネットワーク設定や予約済みアドレスを維持したい運用者は、既存の復旧手順への組み込みを検討できます。

## Retirement: Azure VMware Solution License-included service will be retired August 30, 2027

- 公開日 (UTC): `2026-08-18 19:52:06`
- リンク: <https://azure.microsoft.com/updates?id=569535>

Azure VMware Solution のライセンス込みサービスは 2027 年 8 月 30 日に廃止され、VCF のポータブルライセンス持ち込みが必要になります。該当顧客は期限までに Broadcom のライセンスを用意し、BYOL 構成への移行計画と契約影響を確認してください。

## [Launched] Generally Available: Managed Instance on Azure App Service

- 公開日 (UTC): `2026-08-18 17:26:25`
- リンク: <https://azure.microsoft.com/updates?id=568952>

Managed Instance on Azure App Service が GA になりました。オンプレミスや VM 上の Web アプリを大きなコード変更なしで App Service へ移行しやすくなるため、既存アプリの移行候補を評価できます。

## [In preview] Public Preview: Ipv6 support in Azure Firewall

- 公開日 (UTC): `2026-08-18 17:25:30`
- リンク: <https://azure.microsoft.com/updates?id=569520>

Azure Firewall と Firewall Policy を IPv4/IPv6 のデュアルスタックで構成できる IPv6 対応がパブリックプレビューになりました。IPv6 ネットワークを導入する管理者は、ネットワークルールと DNS Proxy を検証できますが、プレビューのため本番採用はサポート範囲を確認してください。

## [In preview] Public Preview: Zone redundancy for Azure SQL Managed Instance Next-gen General Purpose

- 公開日 (UTC): `2026-08-17 19:54:52`
- リンク: <https://azure.microsoft.com/updates?id=568344>

Azure SQL Managed Instance Next-gen General Purpose でゾーン冗長がパブリックプレビューになり、コンピュートとデータを複数可用性ゾーンへ分散できます。可用性要件の高い利用者は、リージョンや性能への影響を確認したうえで評価してください。

## [Launched] Generally Available: Dragon Copilot Physician Apps and Agents on Microsoft Marketplace 

- 公開日 (UTC): `2026-08-17 19:37:49`
- リンク: <https://azure.microsoft.com/updates?id=557775>

Dragon Copilot Physician Apps と Agents を Microsoft Marketplace で検索・評価・購入できるようになりました。米国の Dragon Copilot 顧客は、既存の調達プロセスや契約条件に合わせて Marketplace 利用を検討できます。

## [In preview] Public Preview: Azure Linux on WSL

- 公開日 (UTC): `2026-08-17 17:08:40`
- リンク: <https://azure.microsoft.com/updates?id=569376>

Azure Linux on WSL がパブリックプレビュー（Beta）で利用可能になりました。開発者は本番に近い構成で挙動を検証し、問題を再現しやすくできますが、Beta のため開発・検証用途から導入してください。
