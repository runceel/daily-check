# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

対象期間内の Azure RSS 新着は **20 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Azure Files cross-region data copy and synchronization with Azure Storage Mover

- 公開日 (UTC): `2026-10-15 19:05:18`
- リンク: <https://azure.microsoft.com/updates?id=576542>

Azure Storage Mover を使い、同一テナント内のストレージアカウント・リージョン・サブスクリプションをまたいで Azure Files の共有データをコピー／同期できる機能がパブリックプレビューになりました。増分転送をスケジュールしてセカンダリコピーを維持できるため、複製や事業継続用途を検討する利用者はプレビュー条件を確認して試用できます。

## [Launched] Generally Available: Standard service endpoint 

- 公開日 (UTC): `2026-10-15 17:39:51`
- リンク: <https://azure.microsoft.com/updates?id=571025>

Azure IaaS ワークロードから Azure PaaS サービスへ接続する Standard service endpoint が一般提供されました。Private Link ファミリーの新機能として、従来のサービスエンドポイントにおける管理性や規模の制約に対処するもので、ネットワーク接続の設計・運用を見直す場合に利用可能です。

## [Launched] Generally Availabile: Automatic zone balance for Virtual Machine Scale Sets

- 公開日 (UTC): `2026-10-15 16:54:20`
- リンク: <https://azure.microsoft.com/updates?id=576334>

可用性ゾーンにまたがる Virtual Machine Scale Sets の Automatic zone balance が一般提供されました。ゾーン間のインスタンス数の偏りを継続監視し、自動再配置するため、対象のスケールセット利用者はゾーン分散の運用負荷軽減に利用できます。既存構成での適用条件を確認してください。

## [Launched] Generally Available: Azure Cloud HSM hardware audit logging

- 公開日 (UTC): `2026-10-14 19:17:47`
- リンク: <https://azure.microsoft.com/updates?id=576377>

Azure Cloud HSM の Hardware Audit Logging が一般提供され、対応する HSM 管理操作についてハードウェア生成の監査記録を利用できるようになりました。監査・コンプライアンス・フォレンジックを強化したい利用者は、ログの有効化や既存の監視基盤への取り込みを確認してください。

## [Launched] Generally Available: Azure Site Recovery Support for Azure ARC-enabled Windows VMWare/Physical servers

- 公開日 (UTC): `2026-10-14 19:13:31`
- リンク: <https://azure.microsoft.com/updates?id=576214>

Azure Site Recovery が Azure Arc 対応の Windows VMware 仮想マシンとオンプレミス物理サーバーの災害復旧を一般提供でサポートします。Azure Arc によるガバナンスやインベントリ管理を継続しながら ASR で保護できるため、該当するサーバーを運用する組織は復旧計画への追加を検討できます。

## Retirement: Azure Key Vault Secrets Provider Extension for Azure Arc enabled Kubernetes clusters

- 公開日 (UTC): `2026-10-09 20:27:17`
- リンク: <https://azure.microsoft.com/updates?id=570313>

Azure Arc 対応 Kubernetes 向け Azure Key Vault Secrets Provider Extension は **2027年10月9日に廃止**されます。利用中のクラスター管理者は、廃止日までに後継の Azure Key Vault Secret Store Extension への移行を計画し、シークレット連携の設定・動作を検証してください。

## [Launched] Generally Available: Managed StandardV2 NAT Gateway for AKS

- 公開日 (UTC): `2026-10-08 22:51:01`
- リンク: <https://azure.microsoft.com/updates?id=574430>

AKS 管理仮想ネットワークを使うクラスター向けに、AKS が StandardV2 NAT Gateway を作成・管理する機能が一般提供されました。対応リージョンで `managedNATGateway` outbound type を選ぶ新規クラスターでは StandardV2 が既定 SKU となるため、ネットワーク要件や費用を確認のうえ新規構築に適用してください。

## [Launched] Generally Available: Azure Database for PostgreSQL flexible server in East US 3 

- 公開日 (UTC): `2026-10-08 19:56:31`
- リンク: <https://azure.microsoft.com/updates?id=573691>

Azure Database for PostgreSQL フレキシブル サーバーを East US 3 リージョンにデプロイできるようになりました。新規配置やリージョン要件のある利用者向けの提供地域拡大であり、既存環境の移行は不要です。

## Retirement: Microsoft Dev Box will be retired on September 18, 2028

- 公開日 (UTC): `2026-10-08 18:23:25`
- リンク: <https://azure.microsoft.com/updates?id=567933>

Microsoft Dev Box は **2028年9月18日に廃止**され、2026年9月14日からサービス終了に向けた段階的な縮小が始まっています。新機能追加がないメンテナンス状態のため、利用組織は開発環境の代替策を評価し、ユーザー・設定・ワークロードの移行計画を早めに策定してください。

## Retirement: Azure Deployment Environments will be retired on February 22, 2027

- 公開日 (UTC): `2026-10-08 18:20:34`
- リンク: <https://azure.microsoft.com/updates?id=567934>

Azure Deployment Environments は **2027年2月22日に廃止**され、2026年9月14日から終了プロセスが始まっています。利用者は案内されている代替手段を確認し、開発環境テンプレートやデプロイ運用を期限までに移行してください。サービス停止に備え、依存するチームとスケジュールを共有する必要があります。

## [Launched] Generally Available: Exceptions in WAF for Azure Application Gateway and Azure Front Door

- 公開日 (UTC): `2026-10-08 17:29:30`
- リンク: <https://azure.microsoft.com/updates?id=574343>

Azure Application Gateway と Azure Front Door の Web Application Firewall で例外設定が一般提供されました。誤検知などで正当な通信が遮断される場合に、対象を限定して除外を構成できます。WAF 運用者は保護範囲を損なわないよう例外を最小限に設定し、ログとルール評価を確認してください。

## [In preview] Public Preview: Microsoft Agent 365 integration with Azure API Management

- 公開日 (UTC): `2026-10-08 17:24:34`
- リンク: <https://azure.microsoft.com/updates?id=574204>

Microsoft Agent 365 と Azure API Management の連携がパブリックプレビューになり、MCP サーバー／ツールの集中ガバナンスと実行時のポリシー適用を結び付けられます。エージェントや API を管理する組織は、公開プレビューの利用条件を確認し、検出・制御フローを検証できます。現時点ではプレビュー機能として本番依存に注意してください。

## Announcing: Multiparty private offers in Microsoft Marketplace expands to Hong Kong

- 公開日 (UTC): `2026-10-08 14:17:44`
- リンク: <https://azure.microsoft.com/updates?id=571831>

Microsoft Marketplace の Multiparty private offers の提供地域が香港に拡大しました。顧客向けに第三者のクラウド／AI ソリューションをパートナー経由で調達する企業や、パートナー販売を広げるソフトウェア企業が対象です。香港での取引を計画するパートナーは利用条件と提供範囲を確認してください。

## [Launched] Generally Available: Anyscale on Azure

- 公開日 (UTC): `2026-10-07 17:06:00`
- リンク: <https://azure.microsoft.com/updates?id=573744>

Ray を用いた分散 Python ワークロード向けマネージドプラットフォーム Anyscale on Azure が一般提供されました。利用者の AKS クラスターに直接デプロイし、チームが利用する Azure サービスと統合できます。Ray ワークロードを Azure 上で運用するチームは、対応構成を確認して導入を検討できます。

## [Launched] Generally Available: Enabling the Bulk admin role for SQL Server on Linux

- 公開日 (UTC): `2026-10-07 16:57:04`
- リンク: <https://azure.microsoft.com/updates?id=573443>

SQL Server on Linux で `bulkadmin` 固定サーバーロールと `ADMINISTER BULK OPERATIONS` 権限が利用可能になります（SQL Server 2025 CU9／SQL Server 2022 CU27 以降）。一括インポート担当者に sysadmin 相当の広い権限を付与せずに済むため、対象 CU への更新後、権限を最小化する運用を検討してください。

## Retirement: Pod name dimension in AKS pod platform metrics

- 公開日 (UTC): `2026-10-06 22:37:54`
- リンク: <https://azure.microsoft.com/updates?id=570232>

AKS の Azure Monitor プラットフォームメトリックで pod name ディメンションのサポートが **2027年9月30日から廃止**され、対象メトリックは集計 pod カウンターへ移行します。pod 名ディメンションを使うアラート、ダッシュボード、クエリを確認し、個別 pod 単位の依存を期限までに集計指標ベースへ変更してください。

## Retirement: Azure App Service on Azure Stack Hub

- 公開日 (UTC): `2026-10-06 18:24:43`
- リンク: <https://azure.microsoft.com/updates?id=568178>

Azure App Service on Azure Stack Hub は **2029年9月30日に廃止**されます。2026年9月30日以降、新規インストールはサポートされず、新機能・製品リリースも提供されません。既存環境の運用者はサポート対象の現行デプロイ条件を確認し、後継のアプリ実行基盤への移行計画を立ててください。

## Retirement: Support for Java 8, 11 and 17 will end on September 1, 2027

- 公開日 (UTC): `2026-10-06 18:21:59`
- リンク: <https://azure.microsoft.com/updates?id=568585>

App Service 上の Java 8、11、17 のサポートは **2027年9月1日に終了**します。アプリ自体は稼働を続けますが、その後はセキュリティ更新とサポートが提供されません。該当ランタイムを使うアプリの所有者は、サポート対象の Java バージョンへ更新し、互換性を事前検証してください。

## Retirement: Always Encrypted with Intel SGX Enclaves

- 公開日 (UTC): `2026-10-06 16:42:33`
- リンク: <https://azure.microsoft.com/updates?id=569236>

Azure SQL Database の Intel SGX Enclaves を使う Always Encrypted は、SGX 対応 DC シリーズの段階的終了に伴い **2027年10月31日に廃止**されます。利用中のデータベースは、ハードウェアに依存しない Virtualization-Based Security（VBS）enclaves へ移行し、アプリとセキュリティ構成を検証してください。

## [In preview] Public Preview: AKS on bare metal now on Ubuntu

- 公開日 (UTC): `2026-10-06 15:44:06`
- リンク: <https://azure.microsoft.com/updates?id=573782>

AKS on bare metal の Ubuntu 対応がパブリックプレビューになりました。仮想化層を追加せずオンプレミスのハードウェア上で Kubernetes を実行でき、特にローカルデータやアクセラレーターを必要とする AI ワークロードの選択肢になります。導入検討者はプレビューの要件・制約を確認して評価してください。
