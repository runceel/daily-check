# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

対象期間内の Azure RSS 新着は **6 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Azure Payments HSM v2

- 公開日 (UTC): `2026-09-17 18:36:44`
- リンク: <https://azure.microsoft.com/updates?id=570509>

Azure Payments HSM v2 は、決済処理や証明書発行、PIN/認証データ保護を担う専用の Payment HSM を単一テナントで提供するサービスです。支払い基盤やセキュアな鍵管理を構築する顧客にとって、専用管理権と高可用性が大きな利点になります。プレビュー段階のため、導入対象リージョンと契約条件を確認し、既存の決済インフラに対する適用可否を事前に判断する必要があります。

## [Launched] Generally Available: High-scale mesh in Azure Virtual Network Manager

- 公開日 (UTC): `2026-09-17 17:40:33`
- リンク: <https://azure.microsoft.com/updates?id=571572>

Azure Virtual Network Manager の高スケール mesh が GA になり、対象リージョンでは 1 つの接続構成で最大 3,000 件の VNet を接続できるようになりました。大規模なマルチ VNet 環境を運用するネットワーク担当者にとって、管理と拡張性の面で大きな改善です。既存構成の大きな移行は不要ですが、対象リージョンと接続数要件を確認し、導入が適しているかを評価するのがよいです。

## Retirement Update: SAP container images removed October 14, 2026

- 公開日 (UTC): `2026-09-16 17:19:02`
- リンク: <https://azure.microsoft.com/updates?id=571342>

SAP 用コンテナイメージは 2026 年 10 月 14 日に削除され、旧 Data Collector API も非推奨・未保守の状態で運用継続が難しくなります。既存の TLS 対応エージェントは引き続き廃止済み API を使い続けられますが、将来のサポート対象外となるため、早めの代替手段検討が必要です。SAP ログ収集を利用している場合は、移行先構成と期日を確認し、廃止前に接続方式を切り替える対応が必要です。

## [In preview] Public Preview: Azure SQL updates for mid-September 2026 

- 公開日 (UTC): `2026-09-16 17:15:10`
- リンク: <https://azure.microsoft.com/updates?id=571056>

Azure SQL では、論理サーバー削除時に一定期間の soft delete を有効化できるようになり、誤削除からの回復がしやすくなりました。運用担当者にとっては復旧手順の簡略化につながる一方、保持期間や復元可否を運用ポリシーとして明確にしておく必要があります。既存環境への強制移行は不要ですが、管理者は削除ポリシーとバックアップ計画にこの動作を反映することを検討するとよいです。

## [In preview] Public Preview: Azure Red Hat OpenShift with hosted control planes 

- 公開日 (UTC): `2026-09-16 14:13:08`
- リンク: <https://azure.microsoft.com/updates?id=571621>

Azure Red Hat OpenShift で、制御プレーンをマネージドにした hosted control planes がパブリック プレビューになりました。ワーカーノードは顧客側で実行しつつ、OpenShift の制御プレーンを Azure が管理するため、運用負荷を下げながら基盤の一貫性を高められます。新しい導入パターンであり、既存クラスターの自動移行は不要ですが、リージョン対応とノード構成の要件を確認して適用範囲を判断する必要があります。

## [In preview] Public Preview: PostgreSQL skills and MCP plugin for Azure Database for PostgreSQL 

- 公開日 (UTC): `2026-09-16 14:07:14`
- リンク: <https://azure.microsoft.com/updates?id=569664>

Azure Database for PostgreSQL 向けに PostgreSQL スキルと MCP プラグインが追加され、対応する AI コーディング支援ツールがデータベースに対して文脈に応じたガイダンスと実行支援を行えるようになりました。開発者やDB管理者にとって、設計や運用の判断を迅速に行いやすくなりますが、対象 AI ツールと接続済み PostgreSQL 環境が必要です。利用を検討する場合は、サポート対象クライアントと接続構成を確認し、非本番環境でスキルの適用範囲を試すとよいです。
