# dotnet/extensions

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 08:27:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [#7557](https://github.com/dotnet/extensions/pull/7557) — [MEDI] Make the IngestionChunk non-generic （PR / merged）
  `IngestionChunk<T>` と関連型が `AIContent` ベースの非ジェネリック設計に変わるため、Data Ingestion Preview 利用者は型引数前提コードを見直す必要があります。

## 主要な変更点

- [#7557](https://github.com/dotnet/extensions/pull/7557) で Data Ingestion Preview 2 向けに `IngestionChunk<T>` 系が非ジェネリック化され、mixed-content pipeline を扱いやすくする一方で既存利用者には破壊的変更になります。
- [#7575](https://github.com/dotnet/extensions/pull/7575) では `OpenAISpeechToTextClient` が音声ストリームの magic bytes からフォーマットを自動判定できるようになり、`FileStream` 以外の入力で 400 が返る問題を改善しました。
- open PR の [#7568](https://github.com/dotnet/extensions/pull/7568) は `HybridCache.GetOrCreateAsync` の動的 options 指定と `LocalSize` を進めており、キャッシュ API 拡張の次の焦点です。
- 依存更新では `js-yaml` の DoS 修正を含む [#7570](https://github.com/dotnet/extensions/pull/7570) がまだ open のため、セキュリティ観点ではこちらのマージ待ちが残っています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 補足 |
| ---- | ---- | -------- | ---- | ---- |
| PR | [#7575](https://github.com/dotnet/extensions/pull/7575) | Auto-detect audio format in OpenAISpeechToTextClient | merged | 音声入力の実用バグ修正 |
| PR | [#7557](https://github.com/dotnet/extensions/pull/7557) | [MEDI] Make the IngestionChunk non-generic | merged | Data Ingestion Preview 2 の破壊的再設計 |
| PR | [#7568](https://github.com/dotnet/extensions/pull/7568) | Add HybridCache.GetOrCreateAsync overloads for dynamic setting of options | open | runtime 側待ちの機能拡張 |
| PR | [#7570](https://github.com/dotnet/extensions/pull/7570) | Bump js-yaml to 4.2.0 | open | DoS 修正を含む依存更新 |
| Issue | [#7543](https://github.com/dotnet/extensions/issues/7543) | ISpeechToTextClient does not allow to specify the audio FileName | closed | #7575 で解消 |
| Issue | [#7404](https://github.com/dotnet/extensions/issues/7404) | [MEDI] Make the IngestionChunk non-generic | closed | #7557 で解消 |
