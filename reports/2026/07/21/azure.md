# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

対象期間内の Azure RSS 新着は **6 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Protect sensitive generative AI telemetry in Application Insights and Microsoft Foundry

- 公開日 (UTC): `2026-07-20 15:09:43`
- リンク: <https://azure.microsoft.com/updates?id=567594>

Application Insights と Microsoft Foundry の生成 AI コンテンツが、Log Analytics の `AppGenAIContent` に対応する専用 `GenAIContent` テーブルへ保存され、機微な AI テレメトリに個別のアクセス制御を適用できるようになります。**Public Preview** のため即時移行は必須ではありませんが、プロンプトや応答を収集する組織は、既存クエリと閲覧権限への影響を検証してください。

## [Launched] Generally Available: IPv6 support for Azure VPN Gateway

- 公開日 (UTC): `2026-07-20 14:59:26`
- リンク: <https://azure.microsoft.com/updates?id=567847>

Azure VPN Gateway が **IPv6 内部トラフィックを GA サポート**し、Standard Public IP を使う全本番 SKU でデュアルスタック VPN トンネルを構成できるようになりました。IPv6 接続が必要な利用者は導入を検討できますが、既存の IPv4 構成に必須の変更はありません。

## [Launched] Generally Available: Azure Functions support for Python 3.14

- 公開日 (UTC): `2026-07-17 17:47:00`
- リンク: <https://azure.microsoft.com/updates?id=567646>

Linux の Azure Functions プランで **Python 3.14 が GA**となり、ローカル開発からデプロイまで利用可能になりました。現行アプリの即時移行は必須ではありませんが、長いサポート期間とセキュリティ改善を得るため、依存パッケージの互換性を確認したうえで更新を計画してください。

## [Launched] Public Preview: Azure Functions Support for PowerShell 7.6 

- 公開日 (UTC): `2026-07-17 17:44:00`
- リンク: <https://azure.microsoft.com/updates?id=567651>

Azure Functions で PowerShell 7.6 を使ったローカル開発とデプロイが **Public Preview** になりました。PowerShell ベースの Functions 利用者は検証環境で互換性を確認できますが、プレビュー段階のため本番移行は GA とサポート方針を確認して判断してください。

## [Launched] Generally Available: Microsoft Defender security assessments for Azure Database for PostgreSQL Flexible Server 

- 公開日 (UTC): `2026-07-17 14:55:28`
- リンク: <https://azure.microsoft.com/updates?id=567527>

Microsoft Defender CSPM による Azure Database for PostgreSQL Flexible Server のセキュリティ評価が **GA** となり、データベースのセキュリティ態勢を継続的に評価できるようになりました。対象サーバーを運用する組織は Defender for Cloud の評価結果と推奨事項を確認し、検出された構成上のリスクを是正してください。

## [Launched] Generally Available: Encryption in Transit for Azure Files NFS Shares in Azure Kubernetes Service (AKS)

- 公開日 (UTC): `2026-07-17 14:54:09`
- リンク: <https://azure.microsoft.com/updates?id=567787>

AKS の Azure File CSI ドライバーで、Azure Files NFS v4.1 ボリュームの **転送中暗号化（EiT）が GA** になりました。AKS ワークロードと NFS 共有間の通信を暗号化できるため、機密データを扱う利用者は対応構成を確認して EiT を有効化してください。
