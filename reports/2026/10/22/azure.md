# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

対象期間内の Azure RSS 新着は **8 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Announcing: Choose Your Own Telephony (CYOT) for Microsoft Entra

- 公開日 (UTC): `2026-10-21 17:38:32`
- リンク: <https://azure.microsoft.com/updates?id=577273>

Microsoft Entra ID で、2026年10月30日からサポート対象のサードパーティ通信事業者を SMS・音声認証に利用できる Choose Your Own Telephony Provider が利用可能になります。SMS／音声認証の事業者選択や契約形態を変更できるため、Entra ID の認証構成を運用する管理者は、対象リージョン・プロバイダー・料金・フェイルオーバー要件を確認する必要があります。

## [Launched] Generally Available: Azure Cosmos DB Safe Key Rotation

- 公開日 (UTC): `2026-10-21 17:13:16`
- リンク: <https://azure.microsoft.com/updates?id=576716>

Azure Cosmos DB の Safe Key Rotation が GA になりました。各アカウントキーの最終使用時刻を確認できるため、利用中のキーを誤って無効化するリスクを抑えながらローテーションや廃止を計画できます。データベース運用担当者は既存キーの使用状況を確認し、アプリケーション側の接続更新手順と併せて段階的にローテーションするのが安全です。

## [In preview] Public Preview: Disable VNet peering route

- 公開日 (UTC): `2026-10-20 18:55:47`
- リンク: <https://azure.microsoft.com/updates?id=576242>

VNet ピアリング間のルートを細かく制御できる Disable VNet peering route がパブリックプレビューです。ルートテーブルに紐づくサブネットでシステム生成のピアリングルートを抑制できるため、不要な経路を通さず通信経路を分離しやすくなります。ネットワーク設計者はプレビュー環境で到達性とルーティングの影響を検証し、本番適用前に明示的な代替経路や経路監視を用意してください。

## [Launched] Generally Available: Service tag match condition for Azure Front Door Premium WAF

- 公開日 (UTC): `2026-10-20 16:57:35`
- リンク: <https://azure.microsoft.com/updates?id=577156>

Azure Front Door Premium WAF のカスタムルールで、Service tag マッチ条件が GA になりました。Azure サービスの IP プレフィックスをサービスタグで参照できるため、個別 IP の管理負担を減して許可・拒否ルールを保守できます。IP ベースの既存ルールを移行する際は、更新後のサービスタグ範囲が想定通信を網羅することをテストし、必要に応じて段階的に置き換えてください。

## [Launched] Generally Available: Keyless TLS on Application Gateway with Azure Key Vault Managed HSM

- 公開日 (UTC): `2026-10-20 16:55:59`
- リンク: <https://azure.microsoft.com/updates?id=577130>

Azure Application Gateway の TLS 終端で、Azure Key Vault Managed HSM に保持された秘密鍵を使う Keyless TLS が GA になりました。TLS ハンドシェイク時の署名は HSM 内で実行され秘密鍵がゲートウェイへ出ないため、高度な鍵保護要件を持つ運用に適します。Managed HSM を利用する場合は証明書、アクセス制御、リージョン対応、コストを事前確認し、既存証明書から段階的に移行してください。

## [Launched] Generally Available: Advanced platform metrics for Azure Monitor

- 公開日 (UTC): `2026-10-20 16:54:24`
- リンク: <https://azure.microsoft.com/updates?id=575329>

Azure Monitor の Advanced platform metrics が GA になりました。より細かなプラットフォームシグナルを利用できるため、リソース状態や傾向の変化を従来より早く特定しやすくなります。監視を担当するチームは対象リソースの利用可能なメトリックを確認し、既存アラートやダッシュボードへ追加することでトラブル検知の精度向上を検討できます。

## [Launched] Generally Available: Metrics usage insights for Azure Monitor workspace

- 公開日 (UTC): `2026-10-19 20:23:15`
- リンク: <https://azure.microsoft.com/updates?id=577165>

Azure Monitor ワークスペース向け Metrics usage insights が GA になりました。ワークスペースの利用状況、未使用メトリック、利用傾向、急激な使用量変化を可視化できるため、メトリクス費用を削減しつつ必要な監視を維持できます。コスト管理担当者は GA 後の利用レポートを確認し、未使用項目や異常な増加元から収集設定を見直してください。

## [Launched] Generally Available: Azure DNS enables DNS-based load balancing through Traffic Manager linked records

- 公開日 (UTC): `2026-10-19 17:55:40`
- リンク: <https://azure.microsoft.com/updates?id=573917>

Azure DNS が Azure Traffic Manager の linked records と連携し、DNS ベースの負荷分散を GA で提供します。DNS レコードセットを Traffic Manager プロファイルへ直接関連付けられるため、Traffic Manager の DNS 名を指す CNAME を別途管理する手間を減らせます。既存構成ではレコードセットの関連付けを確認し、ルーティング方式やヘルスプローブ、フェイルオーバーの挙動をテストしてから切り替えてください。
