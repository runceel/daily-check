# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

対象期間内の Azure RSS 新着は **4 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Announcing: Azure Databricks Runtime 10.4 LTS will reach end of life on November 1, 2026

- 公開日 (UTC): `2026-08-14 17:43:51`
- リンク: <https://azure.microsoft.com/updates?id=569353>

Azure Databricks Runtime 10.4 LTS は 2026 年 11 月 1 日に廃止され、以後は利用できなくなります。すでにサポート終了済みのため、該当ランタイムを使うワークロードは早急に新しい LTS へ移行してください。移行前にライブラリ、ジョブ、クラスター設定の互換性を検証します。

## [Launched] Generally Available: Control plane metrics collection for AKS with Managed Prometheus

- 公開日 (UTC): `2026-08-13 16:19:56`
- リンク: <https://azure.microsoft.com/updates?id=568830>

Azure Monitor Managed Service for Prometheus を使った AKS コントロール プレーン メトリック収集が GA になりました。API サーバーなど管理対象コンポーネントの状態をネイティブに監視でき、AKS 運用者の可観測性を高めます。既存の Managed Prometheus 構成で対象メトリックとコストを確認して有効化できます。

## [Launched] Generally Available: Live Resize for Shared Premium SSD v2 and Ultra Data Disks

- 公開日 (UTC): `2026-08-13 16:17:41`
- リンク: <https://azure.microsoft.com/updates?id=569281>

共有 Premium SSD v2 と Ultra Disk の Live Resize が GA になり、アプリケーションを停止せずにディスク容量を拡張できます。共有ディスクを使う高可用性ワークロードでも、容量逼迫時の停止を避けながら段階的に増量できます。拡張後のゲスト OS 認識と課金影響を確認して運用に組み込んでください。

## [Launched] Generally Available: Pre-upgrade validation checks for Azure Database for PostgreSQL Flexible Server 

- 公開日 (UTC): `2026-08-13 16:13:22`
- リンク: <https://azure.microsoft.com/updates?id=568419>

Azure Database for PostgreSQL Flexible Server のメジャー バージョン アップグレード事前検証が GA になりました。アップグレード開始前に互換性や構成上の問題を検出できるため、運用停止を伴う MVU の計画精度を高められます。対象サーバーで事前チェックを実行し、指摘事項を解消してから本番アップグレードを行ってください。
