# dotnet/extensions

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 重要度高の自動検出項目はありませんでしたが、音声処理と MEDI 系で実装改善が進みました。  
- `OpenAISpeechToTextClient` で音声フォーマット自動判定が入ったことで、入力側の前処理負担が下がり、STT 呼び出しの実装が簡潔になります（#7575）。  
- `IngestionChunk` の非ジェネリック化（#7557）により API 形状が整理され、関連 Issue（#7404）がクローズされています。  
- `ISpeechToTextClient` のファイル名指定不足に関する Issue（#7543）もクローズ済みで、音声入力 API 周辺の使い勝手改善が継続しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7575 | Auto-detect audio format in OpenAISpeechToTextClient | merged | jozkee | <https://github.com/dotnet/extensions/pull/7575> |
| PR | #7557 | [MEDI] Make the IngestionChunk non-generic | merged | Copilot | <https://github.com/dotnet/extensions/pull/7557> |
| Issue | #7543 | ISpeechToTextClient does not allow to specify the audio FileName | closed | marcominerva | <https://github.com/dotnet/extensions/issues/7543> |
| Issue | #7404 | [MEDI] Make the IngestionChunk non-generic | closed | adamsitnik | <https://github.com/dotnet/extensions/issues/7404> |
