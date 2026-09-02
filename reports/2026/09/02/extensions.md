# dotnet/extensions

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 6 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- publish 時に extension を検証しない変更がマージされ、公開手順の検証タイミングが見直されました。
- OpenAI パッケージ 2.13.0 への更新、画像オプションの null 暗黙変換回避、アップグレード用 skill の追加が進行中です。
- OpenAI Assistants API サポート削除の PR がオープンで、同 API に依存する利用者は Responses API などへの移行方針を確認してください。
- `HostedImageGenerationTool.MediaType` 未指定時の `ArgumentNullException` に関する Issue はクローズされました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7725 | Don't validate extension during publish step | merged | peterwald | <https://github.com/dotnet/extensions/pull/7725> |
| PR | #7728 | Add skill for upgrading OpenAI | open | jozkee | <https://github.com/dotnet/extensions/pull/7728> |
| PR | #7726 | Update OpenAI package version to 2.13.0 | open | jozkee | <https://github.com/dotnet/extensions/pull/7726> |
| PR | #7727 | OpenAI: Avoid null implicit conversions for image options | open | jozkee | <https://github.com/dotnet/extensions/pull/7727> |
| PR | #7724 | Remove OpenAI Assistants API support | open | jozkee | <https://github.com/dotnet/extensions/pull/7724> |
| PR | #7723 | Add cckr benchmarks | open | amadeuszl | <https://github.com/dotnet/extensions/pull/7723> |
| PR | #7722 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7722> |
| Issue | #7721 | OpenAIResponsesChatClient throws ArgumentNullException when HostedImageGenerationTool.MediaType is unspecified | closed | SergeyMenshykh | <https://github.com/dotnet/extensions/issues/7721> |
