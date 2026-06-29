# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

対象期間内の Azure RSS 新着は **1 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Retirement: Migrate from Azure Blueprints by January 31, 2027

- 公開日 (UTC): `2026-06-25 16:00:03`
- リンク: <https://azure.microsoft.com/updates?id=564806>

Azure Blueprints の廃止期限が 2026-07-11 から 2027-01-31 へ延長され、2026-07-31 からは新規定義作成ができなくなるため、既存の構成管理手順を見直す必要があります。特に既に Blueprint を利用している部門では、移行先の IaC / ARM / Bicep などの実装方針を早めに定義しておくと安心です。既存の定義や自動化スクリプトがある場合は、廃止前に依存関係を洗い出して移行計画に落とし込むのが重要です。
