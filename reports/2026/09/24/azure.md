# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

対象期間内の Azure RSS 新着は **15 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Retirement: Support for PowerShell 7.4 ends on November 10, 2026

- 公開日 (UTC): `2026-09-23 16:50:05`
- リンク: <https://azure.microsoft.com/updates?id=572770>

Azure Functions の PowerShell 7.4 サポートは **2026年11月10日** に終了し、以降はアプリが稼働してもセキュリティ更新とサポートを受けられません。該当する Function アプリを棚卸しし、期限までに PowerShell 7.6 へ移行してください。

## Retirement: Support for .NET 8 and .NET 9 ends on November 10, 2026—upgrade your apps to .NET 10  

- 公開日 (UTC): `2026-09-23 16:46:49`
- リンク: <https://azure.microsoft.com/updates?id=572838>

Azure Functions 上の .NET 8 / .NET 9 サポートは **2026年11月10日** に終了し、以降もアプリは動作しますがセキュリティ更新とサポートが停止します。対象アプリの互換性を確認し、期限までに .NET 10 へ更新してください。

## Retirement: Support for Node.js 22 ends on April 30, 2027

- 公開日 (UTC): `2026-09-22 19:22:34`
- リンク: <https://azure.microsoft.com/updates?id=572771>

Azure Functions の Node.js 22 サポートは **2027年4月30日** に終了します。終了後もアプリは動作しますがセキュリティ修正・更新とサポートがなくなるため、Node.js 24 への移行を計画してください。

## [In preview] Public Preview: Flex Nodes for AKS

- 公開日 (UTC): `2026-09-22 18:51:48`
- リンク: <https://azure.microsoft.com/updates?id=571919>

AKS の Flex Nodes は、ハイブリッド／エッジ環境のノードを Azure 上の AKS コントロールプレーンに接続して使うデプロイ方式です。分散環境でも一貫した Kubernetes 管理を求めるアプリ／プラットフォームチーム向けのプレビューで、対象インフラとの適合性を検証できます。

## [Launched] Generally Available: Azure Sphere OS version 26.09 is now available

- 公開日 (UTC): `2026-09-21 18:44:49`
- リンク: <https://azure.microsoft.com/updates?id=572579>

Azure Sphere OS 26.09 が Retail フィードで提供され、更新対象は OS のみで SDK の変更はありません。インターネット接続済みデバイスにはクラウド経由で配信されるため、デバイス管理者は更新適用状況を確認してください。

## [In preview] Public Preview: Introducing a Guided Copilot Experience for Building Azure Apps in VS Code

- 公開日 (UTC): `2026-09-21 16:58:19`
- リンク: <https://azure.microsoft.com/updates?id=572214>

VS Code の GitHub Copilot に、アイデアから Azure アプリのデプロイまでを段階的に案内するプレビュー体験が追加されます。自由形式のチャットより予測可能な開発フローを試したい Azure アプリ開発者向けの告知で、既存アプリへの移行対応は示されていません。

## [Launched] Generally Available: Azure Functions support for PowerShell 7.6

- 公開日 (UTC): `2026-09-21 16:55:34`
- リンク: <https://azure.microsoft.com/updates?id=572219>

Azure Functions で PowerShell 7.6 の利用が GA となり、ローカル開発から Functions へのデプロイまで正式にサポートされます。PowerShell 7.4 のサポート終了も告知されているため、対象アプリは 7.6 への更新を進めてください。

## [In preview] Public Preview: Foundry Routines in Foundry Agent Service

- 公開日 (UTC): `2026-09-18 19:10:53`
- リンク: <https://azure.microsoft.com/updates?id=563536>

Foundry Agent Service の Foundry Routines は、公開済みエージェントをスケジュールや業務イベントに応じて自動実行するネイティブなトリガー機能です。外部コンポーネントを組み合わせていた定期／イベント駆動処理を簡素化できるプレビューで、運用要件に合う場合は評価できます。

## [In preview] Public Preview: Mdsv4 and Msv4 Series Virtual Machines for SAP

- 公開日 (UTC): `2026-09-18 17:29:29`
- リンク: <https://azure.microsoft.com/updates?id=571530>

Mdsv4 / Msv4 は第6世代 Intel Xeon Scalable、強化されたセキュリティ機能、Azure Boost を採用するメモリ最適化 VM シリーズとしてプレビュー提供されます。SAP などメモリ負荷の高いワークロードを運用するチームは、必要な性能・リージョン・構成を確認したうえで評価できます。

## [Launched] Generally Available: Enable and disable controls for Microsoft Foundry agents in Agent 365

- 公開日 (UTC): `2026-09-18 17:24:02`
- リンク: <https://azure.microsoft.com/updates?id=571826>

Microsoft Admin Center の Agent 365 ガバナンス画面から、Foundry エージェントを有効／無効にする操作が GA になりました。管理者は組織内でのエージェント利用可否を制御できるため、既存の承認・停止手順にこの管理機能を組み込めます。

## [In preview] Public Preview: Network egress controls for hosted agents in Microsoft Foundry

- 公開日 (UTC): `2026-09-18 17:23:21`
- リンク: <https://azure.microsoft.com/updates?id=571821>

Microsoft Foundry のホステッドエージェントに、宛先ホスト（ワイルドカードを含む FQDN）に基づいて送信接続を許可／拒否するルールを設定できるプレビュー機能が追加されます。外部通信を制限する必要がある管理者は、ルールの順序や必要な宛先を検証し、ネットワークポリシーに適合するか評価してください。

## [Launched] Generally Available: Publishing Microsoft Foundry agents to Microsoft 365 Copilot and Teams

- 公開日 (UTC): `2026-09-18 17:21:06`
- リンク: <https://azure.microsoft.com/updates?id=571816>

Microsoft Foundry エージェントを Microsoft 365 Copilot と Teams に公開する機能が GA になりました。Foundry 開発者は利用者向けの展開経路として活用でき、公開前に対象ユーザーやエージェントの運用・ガバナンス要件を確認してください。

## [Launched] Generally Available: Logical replication slot sync status metric for Azure PostgreSQL Flexible Server 

- 公開日 (UTC): `2026-09-18 16:44:11`
- リンク: <https://azure.microsoft.com/updates?id=568414>

Azure Database for PostgreSQL Flexible Server に、論理レプリケーションスロットの同期状態を示す `logical_replication_slot_sync_status` Azure Monitor メトリックが GA で追加されました。レプリケーションを運用する担当者は、このメトリックを監視・アラートに取り込み、スロット同期の状態把握に利用できます。

## [Launched] Generally Available: New and improved troubleshooting guides for Azure Database for PostgreSQL 

- 公開日 (UTC): `2026-09-18 15:51:06`
- リンク: <https://azure.microsoft.com/updates?id=571042>

Azure Database for PostgreSQL Flexible Server のトラブルシューティングガイドが拡充され、CPU／メモリ／IOPS の高負荷、一時ファイル、autovacuum の問題を診断しやすくなりました。運用担当者は該当する障害調査時に新しい手順を参照し、原因特定に活用できます。

## [Launched] Generally Available: PG18 support for Azure Database for PostgreSQL elastic clusters 

- 公開日 (UTC): `2026-09-18 15:49:46`
- リンク: <https://azure.microsoft.com/updates?id=571047>

Azure Database for PostgreSQL elastic clusters で PostgreSQL 18 が GA となり、分散型の大規模ワークロードで新しい PostgreSQL の機能を利用できます。新規構築または更新を検討するチームは、拡張機能やアプリ互換性を確認して採用可否を判断してください。
