# dotnet/extensions

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 今週の `dotnet/extensions` は、AI 評価レポートとホスト型画像生成ツールのストリーミング挙動に関する 2 件の Issue が中心で、実運用でのデバッグ体験改善が主眼でした。
- そのため、既存の API 変更やセキュリティ上の重点対応は見当たらず、リポジトリは比較的静かな週でした。
- 今後は「最終実行時と非最新実行時のトランスクリプト表示差分」を確認し、AIEval 系ユースケースでの可視化が妥当かを見ておくとよいです。
- 画像生成ツールのストリーミング結果が途中で止まる事象も、利用者にとっては大きな体験障害なので、対応が進むかを注視する価値があります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #7759 | dotnet aieval report Cases tab: "No transcript for this case" gives no indication the transcript was intentionally stripped for non-latest executions | open | jzuras | <https://github.com/dotnet/extensions/issues/7759> |
| Issue | #7758 | [Microsoft.Extensions.AI.OpenAI] Final image is never yielded when streaming a response that uses HostedImageGenerationTool | open | marcominerva | <https://github.com/dotnet/extensions/issues/7758> |
