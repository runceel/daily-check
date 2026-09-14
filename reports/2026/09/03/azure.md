# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

対象期間内の Azure RSS 新着は **2 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Azure Front Door profile and route level WAF policies

- 公開日 (UTC): `2026-09-02 17:00:51`
- リンク: <https://azure.microsoft.com/updates?id=569804>

Azure Front Door WAF ポリシーを、プロファイル全体だけでなく個別ルートにも関連付けられるパブリックプレビューです。共通のベースライン保護とルート固有のきめ細かな制御を併用したい運用者が対象で、現行構成の変更は必須ではありません。利用時はプレビュー機能として検証環境でポリシーの優先関係と適用範囲を確認してください。

## [In preview] Public Preview: Reader Endpoint for Azure Database for MySQL 

- 公開日 (UTC): `2026-09-02 16:59:15`
- リンク: <https://azure.microsoft.com/updates?id=569653>

Azure Database for MySQL Flexible Server で、複数の読み取りレプリカへの接続を単一の reader endpoint に集約し、読み取り専用接続を自動分散できるパブリックプレビューです。レプリカごとの接続先をアプリ側で管理している利用者は接続管理を簡素化できますが、既存接続の即時移行は不要です。採用時は読み取り専用ワークロードでフェイルオーバーと負荷分散の挙動を検証してください。
