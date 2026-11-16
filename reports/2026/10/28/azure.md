# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

対象期間内の Azure RSS 新着は **6 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Higher limit of Azure Blob Storage accounts per region per subscription

- 公開日 (UTC): `2026-10-27 21:16:52`
- リンク: <https://azure.microsoft.com/updates?id=578358>

標準エンドポイントを使う Storage アカウントの上限が、サブスクリプション・リージョンあたり既定 250 から最大 1,000 に引き上げられ、GA になりました。多数のアカウントを単一サブスクリプションで運用する場合に有効ですが、既存環境の変更は不要です。

## [Launched] Generally Available: Cost management and tagging for Claude models in Microsoft Foundry

- 公開日 (UTC): `2026-10-27 17:19:43`
- リンク: <https://azure.microsoft.com/updates?id=577260>

Microsoft Foundry 上の Claude モデルの利用料金とタグが Azure Cost Management で他の Foundry 支出と一緒に確認できるようになり、GA になりました。Claude のコスト配賦やタグ別分析を行うチームは、既存のコスト管理ビューで利用状況を確認できます。移行作業は不要です。

## [Launched] Generally Available: Azure Front Door profile and route level WAF policies 

- 公開日 (UTC): `2026-10-27 16:58:04`
- リンク: <https://azure.microsoft.com/updates?id=578153>

Azure Front Door Premium の WAF ポリシーをプロファイルまたはルート単位で適用できる機能が GA になりました。個別ドメインに限らず、共通のベースライン保護やルートごとの制御を構成できます。Front Door の WAF 管理者はポリシーの適用範囲を見直し、必要に応じて設定を更新してください。

## [Launched] Generally Available: Network Watcher VNet flow logs filtering

- 公開日 (UTC): `2026-10-26 16:02:05`
- リンク: <https://azure.microsoft.com/updates?id=577782>

Network Watcher の VNet フローログで、IP アドレス、ポート、プロトコル、暗号化・フロー状態、通信方向などの条件による記録対象の絞り込みが GA になりました。ログ量や分析対象を制御したいネットワーク運用者は、要件に合わせたフィルターを設定できます。必須の移行対応はありません。

## [Launched] Generally Available: Item Level Recovery for Azure VMs with Premium SSDv2 and Ultra Disks in Azure Backup

- 公開日 (UTC): `2026-10-23 19:21:07`
- リンク: <https://azure.microsoft.com/updates?id=577963>

Azure Backup の Item-Level Recovery（ILR）が、Premium SSD v2 および Ultra Disk を使用する VM（論理セクターサイズ 512 バイト／4 KB）に対応し、GA になりました。対象 VM のバックアップからファイルやフォルダー単位で復元できるため、ディスク全体の復旧を避けたい運用者は復元手順で ILR を利用できます。

## [Launched] Generally Available: ABFS Vectored Read for Azure Data Lake Storage

- 公開日 (UTC): `2026-10-22 18:01:00`
- リンク: <https://azure.microsoft.com/updates?id=577618>

Azure Data Lake Storage の ABFS Vectored Read が GA になりました。対応する分析エンジンは、近接するファイル範囲の読み取りをまとめて非同期に実行し、要求数やネットワーク往復を減らせます。利用者はエンジン側の対応状況と設定を確認し、選択的読み取りの性能改善に活用できます。
