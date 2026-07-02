# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

対象期間内の Azure RSS 新着は **5 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: New Powershell module:  Az.PostgreSQLFlexibleServer  

- 公開日 (UTC): `2026-07-01 17:19:25`
- リンク: <https://azure.microsoft.com/updates?id=566209>

Azure Database for PostgreSQL Flexible Server を PowerShell から管理するための新モジュール `Az.PostgreSQLFlexibleServer` が GA しました。従来の `Az.PostgreSql` モジュールの機能を引き継ぎつつ、命名をリソース種別に合わせて整理したもので、より一貫した操作感を提供します。既存スクリプトを持つ運用者は、今後のモジュール切り替え（旧モジュールからの移行）を計画するとよいでしょう。単なる告知であり緊急対応は不要です。

## [Launched] Public Preview: Document PII playground sample in Microsoft Foundry NextGen

- 公開日 (UTC): `2026-07-01 17:04:40`
- リンク: <https://azure.microsoft.com/updates?id=563331>

Azure AI Language のドキュメント PII（個人識別情報）検出機能について、Microsoft Foundry NextGen ポータル上でサンプルドキュメントを使って動作を試せるプレイグラウンドがパブリックプレビューとして追加されました。サンプル文書を読み込み、検出結果と匿名化（マスキング）後の出力をその場で確認できます。PII 検出の導入検討中のチームにとって、コード不要でお試しできる点が利点です。

## [Launched] Generally Available: Document PII NextGen Playground in Azure AI Language

- 公開日 (UTC): `2026-07-01 17:01:07`
- リンク: <https://azure.microsoft.com/updates?id=564382>

上記のドキュメント PII プレイグラウンドがリニューアルされ GA になりました。あらかじめ用意されたサンプル入出力により、PII 検出の評価をより速く行えます。プレビュー版を試していたチームは GA 版の UI 差分を確認し、本番評価に利用を切り替えられます。

## [In preview] Public Preview: Instant Access via application consistent restore points

- 公開日 (UTC): `2026-07-01 16:59:39`
- リンク: <https://azure.microsoft.com/updates?id=565758>

VM の application consistent restore point 作成直後に、バックグラウンドのデータレプリケーション完了を待たずにディスクを即座に復元できる「Instant Access」機能がパブリックプレビューとして登場しました。復元時間（RTO）短縮が主な狙いで、災害対策・迅速復旧を重視するワークロード運用者に有効です。既存の復元ポイント運用フローの見直しを検討する価値があります。

## [Launched] Public Preview: Azure Storage Mover now supports migration from Google Cloud Storage (GCS)

- 公開日 (UTC): `2026-07-01 16:56:50`
- リンク: <https://azure.microsoft.com/updates?id=566948>

Azure Storage Mover が Google Cloud Storage (GCS) から Azure Blob Storage へのクラウド間移行をサポートしました（パブリックプレビュー）。GCS の S3 互換インターフェースを利用してデータを移行できるため、マルチクラウド環境を Azure に集約したい組織にとって移行作業を簡素化できます。GCS からの移行を計画しているチームは対象です。
