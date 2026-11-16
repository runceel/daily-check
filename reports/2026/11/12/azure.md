# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

対象期間内の Azure RSS 新着は **9 件** です。Static Web Apps の .NET 8 / 9 サポート終了は既に期日を迎えており、優先して対応を確認してください。

## [In preview] Public Preview: Rate limit grouping for Azure Front Door Premium WAF

- 公開日 (UTC): `2026-11-11 18:18:27`
- リンク: <https://azure.microsoft.com/updates?id=580155>

Azure Front Door Premium の WAF に、レート制限のグループ化がパブリックプレビューで追加されました。
既定のクライアント IP 単位の集計だけでは対処しにくい分散攻撃を想定した機能です。
Premium の WAF 管理者は、既存ルールと比較して集計単位・遮断範囲が適切か検証してください。RSS 抜粋では設定項目の詳細までは確認できません。

## [In preview] Public Preview: Distributed accelerator for cloud storage on AKS

- 公開日 (UTC): `2026-11-10 20:08:32`
- リンク: <https://azure.microsoft.com/updates?id=578454>

AKS 上の AI ワークロード向けに、Distributed accelerator for cloud storage（DACS）がパブリックプレビューになりました。
クラスター内の複数ノードのローカル NVMe を使う分散 read-through キャッシュで、クラウドストレージからの読み込みを支援します。
データ読み込みがボトルネックの利用者は、対応ノードや容量条件を確認して検証する段階であり、既存構成の移行は必須ではありません。

## [Launched] Generally Available: Azure Functions support for .NET 11

- 公開日 (UTC): `2026-11-10 20:07:45`
- リンク: <https://azure.microsoft.com/updates?id=578773>

Azure Functions の .NET 11 対応が **GA** になりました。
対象は分離ワーカーモデルで、Functions のプログラミングモデルとホスト統合を維持したまま .NET 11 をターゲットにできます。
採用するアプリは SDK・ワーカーパッケージ・ホスティング環境の対応を確認してください。in-process モデルへの対応を意味する告知ではありません。

## [In preview] Public Preview: Azure Front Door adds native gRPC support 

- 公開日 (UTC): `2026-11-10 18:55:53`
- リンク: <https://azure.microsoft.com/updates?id=579383>

Azure Front Door Standard / Premium のネイティブ gRPC 対応がパブリックプレビューになりました。
gRPC のサービスやメソッドに応じた呼び出しのルーティングが可能になります。
gRPC API を公開する利用者はプレビューの制約とバックエンドとの接続互換性を検証してください。既存 HTTP アプリに変更を求める告知ではありません。

## [Launched] Generally Available: Azure Front Door edge actions 

- 公開日 (UTC): `2026-11-10 18:55:09`
- リンク: <https://azure.microsoft.com/updates?id=579310>

Azure Front Door の edge actions が **GA** になりました。
クライアントのリクエスト／レスポンス処理中に軽量な JavaScript 関数をエッジで実行でき、オリジンに到達する前後の処理を実装できます。
採用時は実行制限と料金をリンク先で確認してください。RSS 抜粋には詳細な上限や課金条件が記載されていません。

## Public Preview: Azure Route Server dual-stack IPv4/IPv6 support

- 公開日 (UTC): `2026-11-10 18:21:41`
- リンク: <https://azure.microsoft.com/updates?id=579746>

Azure Route Server の IPv4 / IPv6 デュアルスタック対応がパブリックプレビューになりました。
対応するハイブリッド接続で両アドレスファミリーの経路を交換でき、既存の IPv4 接続は変更されません。
IPv6 導入を計画するネットワーク管理者は、対応接続と経路設計を検証してください。IPv4 のみの環境に即時対応は不要です。

## Retirement: Support for .NET 8 and .NET 9 on Static Web Apps is ending November 10, 2026

- 公開日 (UTC): `2026-11-09 22:50:01`
- リンク: <https://azure.microsoft.com/updates?id=575106>

Static Web Apps のマネージド Functions API における .NET 8 / .NET 9 のサポートは **2026年11月10日に終了**しました。
アプリの動作は継続しますが、セキュリティ更新とサポートを受け続けるには **.NET 10 へ移行**する必要があります。
対象 API の管理者は期日を過ぎていることを踏まえ、ランタイム設定・依存パッケージ・デプロイ後の動作を優先して確認してください。

## [In preview] Public Preview: Modernize Arc-enabled Windows Servers with Azure File Sync

- 公開日 (UTC): `2026-11-09 17:20:57`
- リンク: <https://azure.microsoft.com/updates?id=579854>

Arc 対応 Windows Server と Azure File Sync を組み合わせるための、Azure ポータルのガイド付き操作がパブリックプレビューになりました。
ローカルのファイルサーバーとしての使い勝手を保ちながら、Azure Files とのハイブリッド利用や移行を進めるための改善です。
対象サーバーの管理者はプレビューの前提条件を確認して評価してください。既存ファイル共有の即時移行を求めるものではありません。

## [Launched] Generally Available: Azure Front Door TLS key exchange policy with post-quantum support 

- 公開日 (UTC): `2026-11-05 23:19:48`
- リンク: <https://azure.microsoft.com/updates?id=577668>

Azure Front Door の TLS 鍵交換ポリシーが **GA** になり、ハイブリッド耐量子鍵交換を含むポリシーを構成できるようになりました。
暗号要件とクライアント互換性に応じた選択を可能にする追加機能であり、既存接続の脆弱性修正という告知ではありません。
採用する管理者は接続クライアントの互換性を確認し、ポリシー変更を段階的に検証してください。
