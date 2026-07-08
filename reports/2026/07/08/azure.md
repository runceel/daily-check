# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

対象期間内の Azure RSS 新着は **8 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## [In preview] Public Preview: Exceptions in WAF for Azure Application Gateway and Azure Front Door

- 公開日 (UTC): `2026-07-07 17:42:50`
- リンク: <https://azure.microsoft.com/updates?id=567218>

Application Gateway / Front Door の WAF に、安全なリクエストの誤ブロック（false positive）を減らす新しい **例外 (Exceptions)** が Public Preview で追加。従来の除外 (exclusions) が特定フィールドを丸ごと検査対象から外すのに対し、Exceptions は「特定の条件を満たすリクエストのときだけルールを緩める」条件付き制御ができる。WAF を運用するアプリ担当者向けの新機能で、要対応ではなく告知。プレビューのため本番適用前に検証を推奨。

## [In preview] Public Preview: Azure Chaos Studio Workspaces and Scenarios

- 公開日 (UTC): `2026-07-07 17:40:32`
- リンク: <https://azure.microsoft.com/updates?id=567184>

Azure Chaos Studio に **Workspaces** と **Scenarios** が追加され、アプリケーション中心でより素早く障害耐性を検証できるようになった（Public Preview）。Workspace をサブスクリプション／リソースグループ／サービスグループといったアプリのスコープに向けるだけで、対象範囲全体に対する障害注入を組み立てられる。カオスエンジニアリングを行う SRE・信頼性チーム向けの新機能で、告知段階。

## [In preview] Public Preview: Export historical data from Log Analytics workspace with Export jobs 

- 公開日 (UTC): `2026-07-07 17:37:55`
- リンク: <https://azure.microsoft.com/updates?id=566591>

Log Analytics ワークスペースの履歴データを、指定したクエリと期間に基づいて Azure Storage アカウントへエクスポートできる **Export jobs** が Public Preview に。全テーブルを継続的に書き出す既存の Data Export と異なり、必要なデータだけを抽出して外部システムへ移送できる。ログの長期保管・外部分析・コンプライアンス保存が必要な運用者向け。プレビュー段階の新機能。

## [Launched] Generally Available: Network Security Perimeter support for Azure Event Hubs

- 公開日 (UTC): `2026-07-07 17:35:19`
- リンク: <https://azure.microsoft.com/updates?id=567203>

Azure Event Hubs が **Network Security Perimeter (NSP)** に対応し **GA**。PaaS リソースの周囲に論理的なネットワーク分離境界を定義し、境界ベースのアクセスルールでパブリックネットワークアクセスを制御できる。データ流出（exfiltration）対策を求めるセキュリティ・ネットワーク管理者向けで、既に NSP を導入している環境では Event Hubs も同じ境界に組み込める。**要確認**: 公開アクセスを前提に接続しているクライアントは、NSP 適用時にアクセスルールの見直しが必要。

## [Launched] Generally Available: Confidential Computing support for Azure Event Hubs Dedicated

- 公開日 (UTC): `2026-07-07 17:33:53`
- リンク: <https://azure.microsoft.com/updates?id=567212>

Azure Event Hubs Dedicated が **Confidential Computing** に対応し **GA**。ハードウェアベースの Trusted Execution Environment (TEE) を用い、処理中（メモリ上）のストリーミングデータも保護できる。金融・医療など規制の厳しい業種で機密データをストリーミングする組織向け。対象は Dedicated クラスタ利用者で、保存時・転送時に加えて「使用中」の暗号化を求める要件に対応する。

## [Launched] Generally Available: Azure Red Hat OpenShift in Chile Central

- 公開日 (UTC): `2026-07-07 17:31:55`
- リンク: <https://azure.microsoft.com/updates?id=566732>

Azure Red Hat OpenShift (ARO) が新設の **Azure Chile Central** リージョンで **GA**。南米での OpenShift デプロイの選択肢が広がる。チリ国内でのデータ所在（データレジデンシー）や低遅延を求める顧客向け。リージョン拡張の告知であり、既存リージョンの利用者への影響はない。

## [Launched] Generally Available: Microsoft Entra ID-based access for Azure Blob Storage SFTP

- 公開日 (UTC): `2026-07-06 15:54:08`
- リンク: <https://azure.microsoft.com/updates?id=567085>

Azure Blob Storage の SFTP エンドポイントで **Microsoft Entra ID ベースの認証・認可**が全リージョンで **GA**。SFTP 固有のローカルユーザー（パスワード／SSH 公開鍵）に代わり、ゲストを含む Entra ID の ID で接続でき、資格情報管理と RBAC を一元化できる。SFTP でストレージにアクセスする運用者・セキュリティ担当向け。既存のローカルユーザー方式は併用可能だが、ガバナンス強化のため Entra ID への移行を検討できる。

## [Launched] Generally Available: Support 5x churn in Azure Site Recovery

- 公開日 (UTC): `2026-07-06 15:00:33`
- リンク: <https://azure.microsoft.com/updates?id=566966>

Azure Site Recovery (ASR) が最大 **5 倍の churn（VM あたり 500 MB/s）** をサポートし **GA**。データベースなど高 IOPS・高書き込み量のワークロードでも安定してレプリケーションでき、これまで churn 上限で対象外だったアプリも DR 構成に含められる。ASR で災害復旧を運用しているチーム向け。上限引き上げのため設定変更は不要で、高負荷 VM の保護対象が広がる。
