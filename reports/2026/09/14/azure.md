# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

対象期間内の Azure RSS 新着は **8 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Retirement: Azure Linux with OS Guard in Azure Kubernetes Service

- 公開日 (UTC): `2026-09-11 18:08:28`
- リンク: <https://azure.microsoft.com/updates?id=571257>

**2026年12月10日で Azure Linux with OS Guard の AKS サポートが終了**し、新規クラスターでは利用できなくなります。既存環境の継続利用にも制約が生じるため、対象クラスターは後継の **Azure Container Linux** への移行計画を立ててください。

## [In preview] Public Preview: Agentless migration of on-premises SMB file shares to Azure Files (SMB)

- 公開日 (UTC): `2026-09-11 15:58:56`
- リンク: <https://azure.microsoft.com/updates?id=570910>

Azure Storage Mover で、Windows Server や NAS の SMB 共有を、移行エージェントなしで Azure Files へ移行できるパブリックプレビューが始まりました。移行エージェントの配備・登録・保守を減らせるため、検証環境で容量・権限・切り替え手順を確認してから本番利用してください。

## [Launched] Generally Available: TLS/SSL certificate and end-to-end TLS encryption support for Azure Functions Flex Consumption 

- 公開日 (UTC): `2026-09-10 16:12:49`
- リンク: <https://azure.microsoft.com/updates?id=570940>

Azure Functions Flex Consumption で、サイト単位の証明書モデルによる TLS/SSL 証明書とエンドツーエンド TLS 暗号化が GA になりました。関数アプリごとに秘密証明書（.pfx）3件、公的証明書（.cer）3件まで扱えるため、証明書を直接アップロードまたは Azure Key Vault から取り込み、通信要件に合わせて設定できます。

## [Launched] Generally Available: Azure Copilot Troubleshooting Agent

- 公開日 (UTC): `2026-09-10 15:25:52`
- リンク: <https://azure.microsoft.com/updates?id=570980>

Azure Copilot Troubleshooting Agent が GA となり、Azure Copilot と Support の両方から運用障害の調査・解決を支援できるようになりました。運用担当者は既存のサポート導線から利用し、提案内容を確認したうえで変更を適用してください。

## [Launched] Generally Available: User-bound user delegation SAS for Azure Storage 

- 公開日 (UTC): `2026-09-09 22:30:41`
- リンク: <https://azure.microsoft.com/updates?id=569241>

Azure Storage の user-bound user delegation SAS が GA になり、SAS の柔軟な期限・権限設定と Entra ID に紐づく利用者制御を組み合わせられます。共有キー依存を減らしたいアプリケーションは、対象 SDK とストレージサービスの対応状況を確認して段階的に切り替えてください。

## [Launched] Generally Available: Azure Ephemeral OS Disk with full caching for VM/VMSS 

- 公開日 (UTC): `2026-09-09 21:24:37`
- リンク: <https://azure.microsoft.com/updates?id=570551>

新規 VM / VMSS で、OS イメージ全体をローカルストレージにキャッシュする Ephemeral OS Disk の full caching が GA になりました。キャッシュ完了後はリモートストレージ読み取りを減らせるため、起動・I/O 性能を重視するワークロードで、ローカル容量・再作成時のデータ揮発性を確認して利用してください。

## [Launched] Generally Available: Playwright Workspaces in Australia East, Japan East, and Switzerland North

- 公開日 (UTC): `2026-09-08 17:35:32`
- リンク: <https://azure.microsoft.com/updates?id=570919>

Azure App Testing の Playwright Workspaces が Switzerland North、Japan East、Australia East でも GA になりました。管理不要のクラウドブラウザーで並列 E2E テストを実行できるため、対象リージョンの開発チームは既存のテスト基盤から接続先リージョンと実行コストを確認して移行できます。

## [Launched] Generally Available: Azure Developer CLI (azd) Extension Framework

- 公開日 (UTC): `2026-09-08 17:18:38`
- リンク: <https://azure.microsoft.com/updates?id=570881>

Azure Developer CLI（azd）の Extension Framework が GA になり、開発者・チーム・パートナーが独自コマンドやワークフローを拡張として提供できるようになりました。azd の標準フローに組み込みたい社内処理は、拡張の配布・権限・互換性を確認しながら導入してください。

