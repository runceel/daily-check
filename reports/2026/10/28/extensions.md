# dotnet/extensions

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 6 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 10 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#6594](https://github.com/dotnet/extensions/issues/6594) — [API Proposal]: Obsolete HybridCache compression options （Issue / closed / slang25）
`HybridCacheOptions.DisableCompression` を使っている利用者は、PR #7885 による非推奨化を踏まえて圧縮設定の利用方法を確認し、将来の削除に備えてコードを更新してください。

## 主要な変更点

- HybridCache の `DisableCompression` オプションが obsolete とされました（PR #7885）。該当設定を使う利用者は、代替の圧縮制御方法を確認してください。
- Source-generated metric tags で `bool` と数値型を強く型付けして扱えるようになりました（PR #7877）。
- `DataClassificationSet` を static 化して割り当てを減らし、分類済みログタグ処理の性能を改善しています（PR #7874）。関連するメトリクス生成時の不要な割り当ても課題として報告・対応されました。
- Logging generator が transitive property に付いた `[LogPropertyIgnore]` を尊重するようになり、分類済みプロパティの処理を修正しました（PR #7868）。
- HybridCache では並行 miss 時の reservation 過剰解放を直す提案（PR #7879）や、値を作成せずに読む `GetAsync` 拡張（PR #7876）がレビュー中です。
- HTTP logging の catch-all route parameter の欠落と、`resolv.conf` のタブ区切り nameserver の未認識について、修正提案がオープンです（PR #7884、#7882）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7890 | Bump qs from 6.15.2 to 6.16.1 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7890> |
| PR | #7885 | Mark HybridCacheOptions.DisableCompression as obsolete | merged | slang25 | <https://github.com/dotnet/extensions/pull/7885> |
| PR | #7877 | Allow bool and numeric types for strongly-typed metric tags | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7877> |
| PR | #7888 | Bump PowerShell from 7.6.8 to 7.6.9 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7888> |
| PR | #7887 | Bump microsoft.visualstudio.slngen.tool from 12.0.53 to 12.0.58 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7887> |
| PR | #7878 | Bump PowerShell from 7.6.7 to 7.6.8 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7878> |
| PR | #7874 | Make DataClassificationSet static to decrease allocations | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7874> |
| PR | #7868 | Honor [LogPropertyIgnore] under Transitive and Transitive on properties | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7868> |
| PR | #7872 | Pass redacted log tag values to providers as strings | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7872> |
| PR | #7891 | Fix merging of code coverage reports | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7891> |
| PR | #7886 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7886> |
| PR | #7884 | Keep the whole catch-all parameter value in formatted HTTP paths | open | johnkaram02 | <https://github.com/dotnet/extensions/pull/7884> |
| PR | #7882 | Accept tab-separated nameserver lines in resolv.conf | open | johnkaram02 | <https://github.com/dotnet/extensions/pull/7882> |
| PR | #7879 | Fix HybridCache reservation over-release on DisableUnderlyingData miss | open | Eng3bbas | <https://github.com/dotnet/extensions/pull/7879> |
| PR | #7876 | Add HybridCache GetAsync extension that reads without creating | open | Eng3bbas | <https://github.com/dotnet/extensions/pull/7876> |
| Issue | #7889 | AI Chat Web template: scaffolded Identity pages are inaccessible because App.razor applies an interactive render mode unconditionally | open | Renaissance-Dad | <https://github.com/dotnet/extensions/issues/7889> |
| Issue | #7883 | HTTP logging truncates catch-all route parameters in the formatted request path | open | johnkaram02 | <https://github.com/dotnet/extensions/issues/7883> |
| Issue | #7881 | Managed DNS resolver ignores tab-separated nameserver lines in /etc/resolv.conf | open | johnkaram02 | <https://github.com/dotnet/extensions/issues/7881> |
| Issue | #7880 | HybridCache over-releases the shared default cache item on concurrent DisableUnderlyingData misses | open | svick | <https://github.com/dotnet/extensions/issues/7880> |
| Issue | #7873 | Logging generator allocates a DataClassificationSet for each classified tag on every call | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/issues/7873> |
| Issue | #7875 | [API Proposal]: HybridCache GetAsync that reads without creating | closed | Eng3bbas | <https://github.com/dotnet/extensions/issues/7875> |
| Issue | #6594 | [API Proposal]: Obsolete HybridCache compression options | closed | slang25 | <https://github.com/dotnet/extensions/issues/6594> |
| Issue | #5087 | Conditionally remove instrument caching in Metrics source-gen | closed | xakep139 | <https://github.com/dotnet/extensions/issues/5087> |
| Issue | #6153 | No body logged for the HttpClient response under debug | closed | m0a0k0s | <https://github.com/dotnet/extensions/issues/6153> |
| Issue | #6720 | Microsoft.Gen.Metrics doesn't allow int-typed tag (error METGEN012) | closed | KalleOlaviNiemitalo | <https://github.com/dotnet/extensions/issues/6720> |
| Issue | #7856 | [Microsoft.Gen.Logging] Expanding a classified property drops its data classification, and Transitive logs [LogPropertyIgnore] properties | closed | AdCodicem | <https://github.com/dotnet/extensions/issues/7856> |
| Issue | #6549 | Redaction Library Limitations with Complex Types | closed | JingzeChen | <https://github.com/dotnet/extensions/issues/6549> |
| Issue | #6430 | Exception arguments to LoggerMessage methods are ignored by the generated formatter | closed | westin-m | <https://github.com/dotnet/extensions/issues/6430> |
| Issue | #5196 | Specifying custom tag names does not work | closed | thompson-tomo | <https://github.com/dotnet/extensions/issues/5196> |
