# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-06-09 23:05:02 〜 2026-06-11 00:49:32 (UTC)

対象期間内の Azure RSS 新着は **4 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Microsoft Entra server principals on Azure SQL Database 

- 公開日 (UTC): `2026-06-10 20:45:26`
- リンク: <https://azure.microsoft.com/updates?id=565154>

Azure SQL Database で Microsoft Entra のサーバー プリンシパル（ログイン）が GA になりました。仮想 `master` データベースで `CREATE LOGIN ... FROM EXTERNAL PROVIDER` を使えるため、SQL ログインに近い形で Entra ID ベースのログイン管理を標準機能として扱えます。
Azure SQL Database の認証を Entra ID に寄せているチームは、既存の権限設計や運用手順にサーバー レベルの Entra ログインを取り込めるか確認するとよいです。

## Retirement: Azure Synapse Link for Azure Cosmos DB NoSQL

- 公開日 (UTC): `2026-06-10 17:00:06`
- リンク: <https://azure.microsoft.com/updates?id=558560>

Azure Cosmos DB NoSQL の Azure Synapse Link は廃止予定です。2026-03-31 以降は新規アカウントで有効化できず、既存利用者も 2029-03-31 の終了までに移行計画が必要です。
Cosmos DB から分析基盤へ連携しているシステムは、代替のデータ連携方式や分析パイプラインへの移行先を早めに検証してください。

## Retirement: Azure VPN Client for Linux (Preview) will be retired on August 31, 2026 

- 公開日 (UTC): `2026-06-10 16:15:16`
- リンク: <https://azure.microsoft.com/updates?id=565393>

Azure VPN Client for Linux (Preview) は GA へ進まず、2026-08-31 に廃止されます。Linux クライアントから Azure VPN 接続を利用しているユーザーは、廃止日までにサポートされる接続方式へ移行する必要があります。
本番運用でプレビュー版クライアントに依存している場合は、セキュリティ要件と接続手順を含めて代替手段を検証してください。

## [In preview] Public Preview: Agent mode for GitHub Copilot in SQL Server Management Studio (SSMS) 

- 公開日 (UTC): `2026-06-09 23:45:10`
- リンク: <https://azure.microsoft.com/updates?id=562637>

SQL Server Management Studio (SSMS) で GitHub Copilot の Agent mode がパブリック プレビューになりました。性能問題の調査、クエリ チューニング、メンテナンスや構成レビュー、セキュリティ懸念の洗い出しなどを対話的に支援します。
DBA や SQL Server 運用担当者は、まず検証環境で提案内容の妥当性や組織のレビュー手順との相性を確認する段階です。
