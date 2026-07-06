# dotnet/aspnetcore

対象期間: 2026-07-05 04:03:53 〜 2026-07-06 01:30:41 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 1 件の PR がクローズされ、`publish-compressed` フレームワークアセットをビルド時に事前生成する改善が取り上げられました。配布アセットの生成タイミングと圧縮済み成果物の扱いに関わる変更として注目できます。
- パフォーマンスに関する Issue が複数あり、`fortunes` / `https` の改善提案と `kestrel-hostheader-mismatch` の回帰報告が確認されました。実運用での安定性に関する観点が引き続き重要です。
- `MarkupString` の JSON round-trip 支援や、コントローラの複雑なクエリパラメータに対する XML doc 生成の継承挙動改善に関する議論も見られました。API 利用者の期待値と実装の整合性を高める方向性です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67500 | Pre-generate publish-compressed framework assets during build | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67500> |
| Issue | #67610 | XML doc `<summary>` is dropped for *inherited* properties of a controller's complex query parameter | open | Groxan | <https://github.com/dotnet/aspnetcore/issues/67610> |
| Issue | #67609 | Perf improvement: fortunes, kestrel-encoded-url | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67609> |
| Issue | #67608 | MarkupString should support Json roundtrip | open | leotsarev | <https://github.com/dotnet/aspnetcore/issues/67608> |
| Issue | #67607 | Perf improvement: https | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67607> |
| Issue | #67606 | Perf regression: kestrel-hostheader-mismatch | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67606> |
