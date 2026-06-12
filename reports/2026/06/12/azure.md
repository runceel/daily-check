# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-06-11 00:49:32 〜 2026-06-12 02:03:55 (UTC)

対象期間内の Azure RSS 新着は **5 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Retirement: Av2-series, F-series, Fs-series, Fsv2-series, G-series, Gs-series, and Lsv2-series Virtual Machines for Azure Batch pools

- 公開日 (UTC): `2026-06-11 19:00:41`
- リンク: <https://azure.microsoft.com/updates?id=564774>

Azure Batch が複数の旧世代 VM シリーズ（Av2、F、Fs、Fsv2、G、Gs、Lsv2）を **2028年11月15日** に廃止します。これらの VM を使用している Batch プール は移行が必要で、新規作成もできなくなります。最新世代の VM（Ev3、Esv3 など）への移行を計画してください。

## Retirement: D-series, Ds-series, Dv2-series, Dsv2-series, and Ls-series Virtual Machines for Azure Batch pools

- 公開日 (UTC): `2026-06-11 19:00:41`
- リンク: <https://azure.microsoft.com/updates?id=564772>

さらに D、Ds、Dv2、Dsv2、Ls シリーズも **2028年5月1日** に廃止されます。こちらも Batch プールの移行対象で、期日以降は新規作成ができません。既存の Batch プール構成を確認し、後継の新世代 VM への移行計画を立てることが重要です。

## Retirement: GPv1 and Legacy Blob storage account creation

- 公開日 (UTC): `2026-06-11 19:00:41`
- リンク: <https://azure.microsoft.com/updates?id=564441>

General Purpose v1（GPv1）および旧型 Blob Storage アカウントの新規作成を廃止します。Azure Storage ポートフォリオの効率化と性能向上を目的とした施策で、既存の GPv1 アカウントは機能し続けますが、新規作成はできません。新規ストレージはGPv2 または適切な Blob Storage アカウントを選択してください。

## [Launched] Generally Available: SQL MCP Server

- 公開日 (UTC): `2026-06-11 18:45:02`
- リンク: <https://azure.microsoft.com/updates?id=564734>

**SQL MCP Server が一般提供（GA）開始** しました。本サーバーは AI エージェント向けに SQL / PostgreSQL / Azure Cosmos DB へのセキュアで制御されたアクセスを提供し、production データへの安全なクエリ実行が可能です。Copilot などの AI 統合を検討している場合は、本サービスの利用を選択肢に入れてください。

## Retirement: Azure Load Balancer Inbound NAT rule version 1 for Azure VMSS (aka Inbound NAT Pools)

- 公開日 (UTC): `2026-06-11 16:15:07`
- リンク: <https://azure.microsoft.com/updates?id=565482>

以前の廃止予告の範囲が縮小されました。元々は単一 VM の NAT ルールと VMSS 用 NAT プール両方の廃止を予告していましたが、今回は **VMSS のみを対象** に絞られました。VMSS で NAT ルール v1 を使用している場合は、新しい NAT ルール v2 への移行計画が必要です。
