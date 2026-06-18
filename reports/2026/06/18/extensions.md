# dotnet/extensions

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- マージ済み PR はドキュメント・テンプレート整理が中心で、#7577 ではテンプレートの重複した `WebAPI` 分類を削除しています。
- #7574 では `ai-samples` repo へのリンクが削除され、参照先の整理が行われました。
- オープン PR では #7575 が `OpenAISpeechToTextClient` の音声フォーマット自動検出を追加しようとしており、AI 音声入力まわりの使い勝手改善が見込まれます。
- 新規 Issue #7573 では metric source-generator で 30 個を超える tag name を持つ metric class を扱えるようにする要望が出ています。
- 自動判定上の重要変更はなく、破壊的変更やセキュリティ修正は検出されませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7577 | Remove duplicate 'WebAPI' classification from template | merged | danroth27 | <https://github.com/dotnet/extensions/pull/7577> |
| PR | #7574 | Remove links to ai-samples repo | merged | gewarren | <https://github.com/dotnet/extensions/pull/7574> |
| PR | #7576 | Bump PowerShell from 7.6.2 to 7.6.3 | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7576> |
| PR | #7575 | Auto-detect audio format in OpenAISpeechToTextClient | open | jozkee | <https://github.com/dotnet/extensions/pull/7575> |
| Issue | #7573 | [Metric source-generator] Allow metric-classes to have more than 30 tag names | open | iliar-turdushev | <https://github.com/dotnet/extensions/issues/7573> |
