# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-08-13 00:02:03 〜 2026-08-14 00:21:27 (UTC)

対象期間内の Azure RSS 新着は **3 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Control plane metrics collection for AKS with Managed Prometheus

- 公開日 (UTC): `2026-08-13 16:19:56`
- リンク: <https://azure.microsoft.com/updates?id=568830>

AKS の主要なマネージド・コントロールプレーンコンポーネントを、Azure Monitor Managed Service for Prometheus でネイティブに監視できる機能が **GA** になりました。AKS 運用者は既存の Managed Prometheus とメトリック収集設定を確認し、可観測性とアラート対象を拡張できます。既存アプリの移行は不要ですが、監視コストと保持期間を確認してください。

## [Launched] Generally Available: Live Resize for Shared Premium SSD v2 and Ultra Data Disks

- 公開日 (UTC): `2026-08-13 16:17:41`
- リンク: <https://azure.microsoft.com/updates?id=569281>

共有 Premium SSD v2 と Ultra Disk の容量を、アプリケーションを停止せずに動的拡張できる Live Resize が **GA** になりました。容量逼迫時の計画停止を避けたい VM ワークロードが対象です。対象ディスクの対応リージョン・SKU と料金を確認したうえで、必要なタイミングに拡張を実施してください。

## [Launched] Generally Available: Pre-upgrade validation checks for Azure Database for PostgreSQL Flexible Server 

- 公開日 (UTC): `2026-08-13 16:13:22`
- リンク: <https://azure.microsoft.com/updates?id=568419>

Azure Database for PostgreSQL Flexible Server のメジャーバージョンアップグレード前検証が **GA** になり、実際のアップグレード前に互換性や準備状況を確認できます。アップグレードを計画する運用者は事前チェックを実行し、検出された問題を解消してから本番変更を行ってください。既存サーバーへの即時移行は不要です。
