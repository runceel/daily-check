# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

対象期間内の Azure RSS 新着は **12 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Azure Bastion shareable link expiration 

- 公開日 (UTC): `2026-08-26 16:57:56`
- リンク: <https://azure.microsoft.com/updates?id=570020>

Azure Bastion の共有リンクに有効期限を設定する機能が **GA** になりました。管理者は発行時に日時を指定でき、期限後の接続を自動的に拒否できます。共有リンクを運用している環境は、漏えい時の影響を抑えるため期限設定を確認してください。

## [In preview] Public Preview: IPv6 dual-stack support for Azure Bastion

- 公開日 (UTC): `2026-08-26 16:56:29`
- リンク: <https://azure.microsoft.com/updates?id=570025>

Azure Bastion で IPv4/IPv6 デュアルスタック構成がパブリックプレビューになりました。新規 Bastion に両方のパブリック IP を設定し、利用端末と Bastion 間の IPv6 接続を試せます。IPv6 導入を検討する利用者向けで、プレビュー利用時は制約を確認してください。

## [Launched] Generally Available: Connect to AKS clusters using Azure Bastion

- 公開日 (UTC): `2026-08-26 16:55:25`
- リンク: <https://azure.microsoft.com/updates?id=570030>

Azure Bastion 経由で AKS クラスターの API サーバーへ接続する統合機能が **GA** になりました。ローカル端末から Bastion の安全なトンネルを通して標準的な Kubernetes ツールを利用できます。AKS の管理 API を公開したくない運用では、既存ネットワークと権限を確認して有効化してください。

## [In preview] Public Preview: Introducing Live Reports for Azure SRE Agent

- 公開日 (UTC): `2026-08-26 16:52:23`
- リンク: <https://azure.microsoft.com/updates?id=569690>

Azure SRE Agent の会話から動的な運用ビューを作成し、接続したデータを継続更新する Live Reports がパブリックプレビューになりました。運用チームは調査結果をレポートとして共有しやすくなります。試行する場合は、接続データの権限とプレビュー機能の制約を確認してください。

## [Launched] Generally Available: Azure SRE Agent VNet Integration 

- 公開日 (UTC): `2026-08-26 16:51:31`
- リンク: <https://azure.microsoft.com/updates?id=569695>

Azure SRE Agent の VNet Integration が **GA** になり、NSG、プライベート DNS、ファイアウォールなど既存のネットワーク制御内で動作させられます。閉域要件のある運用環境は、エージェントの通信経路を既存 VNet に組み込む際の接続要件を確認してください。

## [Launched] Generally Available: Azure SRE Agent 30-Day Trial

- 公開日 (UTC): `2026-08-26 16:50:22`
- リンク: <https://azure.microsoft.com/updates?id=569760>

新規顧客向けに Azure SRE Agent を30日間試せる **GA** のトライアルが提供されます。期間中は運用ツールやデータソースを接続して機能を評価できます。導入判断前の検証に利用し、終了後の課金・保持条件は事前に確認してください。

## Announcing: Aspire 13.5 has shipped

- 公開日 (UTC): `2026-08-25 19:55:34`
- リンク: <https://azure.microsoft.com/updates?id=569910>

Aspire 13.5 ではダッシュボードと aspire.dev が刷新され、Interaction Service、スコープをまたぐ Azure 参照、Kubernetes 永続ボリューム、AppHost のライブターミナルが拡張されました。Aspire 利用者は開発体験とクラウドリソース連携の改善を確認し、更新時は互換性を確認してください。

## [Launched] Generally Available: Azure 248 and 372 vCPU sizes for D/E v7 series VMs 

- 公開日 (UTC): `2026-08-25 18:05:54`
- リンク: <https://azure.microsoft.com/updates?id=569546>

Intel Xeon 6 搭載の D/E v7 シリーズで 248/372 vCPU サイズが **GA** になりました。v6 世代比で最大20%の計算性能向上が見込まれ、大規模な汎用・メモリ最適化ワークロードの選択肢が増えます。対象リージョンの提供状況と割り当て上限、料金を確認して利用してください。

## Announcing: Extended Support for Azure Database for PostgreSQL Flexible Server 

- 公開日 (UTC): `2026-08-24 19:15:05`
- リンク: <https://azure.microsoft.com/updates?id=569526>

Azure Database for PostgreSQL Flexible Server に Extended Support が提供され、旧バージョンから新しい PostgreSQL への移行期間も重要なセキュリティ更新・修正・技術サポートを受けられます。既存環境の延命策として使えますが、恒久対応ではないため、対象バージョンの期限と移行計画を確認してください。

## [Launched] Generally Available: eBPF host routing in Advanced Container Networking Services for AKS

- 公開日 (UTC): `2026-08-24 18:36:01`
- リンク: <https://azure.microsoft.com/updates?id=569873>

AKS の Advanced Container Networking Services における eBPF Host Routing が **GA** になりました。パケット転送とルーティング判断を Linux カーネルに寄せることで、Kubernetes ネットワーク性能の改善が期待できます。対象クラスターはサポート要件と既存 CNI への影響を確認して有効化してください。

## Retirement: Support for Node 22 LTS ends on April 30, 2027

- 公開日 (UTC): `2026-08-24 17:30:43`
- リンク: <https://azure.microsoft.com/updates?id=567334>

App Service 上の Node 22 LTS は **2027年4月30日** にサポート終了となり、アプリは動き続けてもセキュリティ更新とカスタマーサポートが受けられなくなります。Node 24 LTS などサポート対象のランタイムへ移行し、依存関係・ビルド・本番動作を期限前に検証してください。

## [Launched] Generally Available: Custom block response code and body for Application Gateway WAF 

- 公開日 (UTC): `2026-08-24 17:25:03`
- リンク: <https://azure.microsoft.com/updates?id=569504>

Application Gateway 統合 Azure WAF で、ブロック時の HTTP ステータスコードとレスポンス本文をカスタマイズできる機能が **GA** になりました。利用者向けエラーページや API 契約に合わせた応答を設定できます。既存ルールへの影響を確認し、情報漏えいにならない本文を設計してください。
