# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

対象期間内の Azure RSS 新着は **2 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [Launched] Generally Available: Workload identity support for Azure Files CSI driver (SMB) in Azure

- 公開日 (UTC): `2026-08-28 20:25:22`
- リンク: <https://azure.microsoft.com/updates?id=570120>

AKS の Azure Files CSI driver（SMB）が **Workload identity** による Pod 単位の認証に対応しました。Azure Files を SMB マウントするワークロードは、ノードや共有の認証方式を見直し、Workload identity を構成することで、より細かな権限分離を適用できます。既存の managed identity 利用者は必須移行ではありませんが、新規構成では推奨方式を確認してください。

## [Launched] Generally Available: Azure VM Image Builder in sovereign and air-gapped clouds

- 公開日 (UTC): `2026-08-28 15:45:32`
- リンク: <https://azure.microsoft.com/updates?id=570105>

Azure VM Image Builder が Azure Government、China North 3、Azure Government Secret、Azure Government Top Secret で **一般提供（GA）** になりました。これらの主権クラウド／エアギャップ環境でも、通常の Azure と同じマネージドなイメージ作成サービスを利用できます。対象環境でイメージパイプラインを運用する組織は、利用可能リージョンと接続要件を確認して導入できます。
