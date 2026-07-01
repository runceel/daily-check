# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

対象期間内の Azure RSS 新着は **2 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Client-side data integrity protections in Azure Blob Storage

- 公開日 (UTC): `2026-06-30 20:45:26`
- リンク: <https://azure.microsoft.com/updates?id=566895>

Azure Blob Storage のクライアント側データ整合性保護機能が **GA** になりました。従来の MD5 に加え、2019 年に対応した CRC64-NVME によるチェックサム検証が .NET / C++ / JavaScript 向け最新 Blob SDK に統合され、標準機能として利用できます。Blob SDK を利用しているアプリケーションであれば SDK を最新版に更新するだけで有効化でき、アップロード/ダウンロード時のデータ破損検出精度が向上します。既存コードの破壊的変更はなく、対応は任意です。

## [Launched] Generally Available: Toolboxes in Microsoft Foundry

- 公開日 (UTC): `2026-06-30 19:00:51`
- リンク: <https://azure.microsoft.com/updates?id=563481>

Microsoft Foundry の **Toolboxes** 機能が GA になりました。プロンプトエージェントでよく使うツール群を単一のエンドポイントから呼び出せるようになり、エージェント外からも同じツールを呼び出し可能です。これまで各チームがツールリストを個別に組み立てていた重複作業を解消し、共通のツールアーキテクチャとして再利用できます。Foundry でエージェント開発をしているチームは、個別実装しているツール呼び出しを Toolboxes への移行対象として検討する価値があります。
