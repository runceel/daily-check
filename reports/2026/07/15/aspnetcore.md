# dotnet/aspnetcore

対象期間: 2026-07-14 01:26:38 〜 2026-07-15 04:59:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 8 |
| 新規 Issue                 | 14 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67794](https://github.com/dotnet/aspnetcore/issues/67794) — DBSC: share source scheme ITicketStore (server-side revocation) with derived cookies （Issue / open / rokonec）
  DBSC と派生 Cookie のサーバー側失効を利用するアプリは、共有 ITicketStore の設計と失効境界を確認してください。
- **非推奨/廃止** [#67134](https://github.com/dotnet/aspnetcore/issues/67134) — Deprecate Microsoft.AspNetCore.Grpc.Swagger （Issue / open / danroth27）
  `Microsoft.AspNetCore.Grpc.Swagger` 利用者は、代替の OpenAPI 構成と移行時期を確認し、新規採用を避けてください。
- **非推奨/廃止** [#66355](https://github.com/dotnet/aspnetcore/pull/66355) — Map [Obsolete] attribute to deprecated in OpenAPI documents （PR / open / fickleEfrit）
  OpenAPI 文書生成を利用するチームは、`[Obsolete]` が deprecated として出力される際のクライアント生成影響を確認してください。

## 主要な変更点

- DBSC の Cookie 失効設計に関するセキュリティ検討事項が追加されました。
- `Microsoft.AspNetCore.Grpc.Swagger` の非推奨化が提案されています。
- OpenAPI 文書で `[Obsolete]` を deprecated として表現する変更が進行中です。
- QuickGrid、Virtualize、Kestrel h2c などの API・動作改善が複数提案されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67796 | Merging internal commits for release/8.0 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/67796> |
| PR | #67795 | Merging internal commits for release/9.0 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/67795> |
| PR | #67784 | [release/2.3] Update IdentityModel dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67784> |
| PR | #67776 | Fix API for CacheView | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67776> |
| PR | #67771 | Limit Microsoft.OpenApi to disallow next major | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67771> |
| PR | #67770 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67770> |
| PR | #67753 | [test-quarantine] Unquarantine IIS NewShim ShutdownTests (dotnet/runtime#126925) | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67753> |
| PR | #67679 | Fix placeholder flash when appending to an End-anchored virtualized list | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67679> |
| PR | #67799 | Merging internal commits for release/8.0 | closed | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/67799> |
| PR | #67768 | Run Blazor WebAssembly in a Web Worker | closed | danielpastoor | <https://github.com/dotnet/aspnetcore/pull/67768> |
| PR | #67687 | Add more tests for OpenApi enums | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67687> |
| PR | #66003 | TEMPORARY: Overlay custom MSBuild for dotnet/msbuild#12927 investigation | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/66003> |
| PR | #67802 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67802> |
| PR | #67801 | [release/8.0] Update dependencies from dotnet/source-build-externals | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67801> |
| PR | #67797 | [release/10.0] Move Linux CI jobs off Microsoft-hosted pools (backport #64842, #65867) | open | mmitche | <https://github.com/dotnet/aspnetcore/pull/67797> |
| PR | #67789 | [Kestrel] Deflake HTTP/2 connection closing tests | open | halter73 | <https://github.com/dotnet/aspnetcore/pull/67789> |
| PR | #67783 | Expose experimental `AnchorMode` and `ItemComparer` on `QuickGrid` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67783> |
| PR | #67782 | Kestrel: enable RFC 7540 prior-knowledge h2c on cleartext mixed endpoints | open | bbartels | <https://github.com/dotnet/aspnetcore/pull/67782> |
| PR | #67781 | Fix Virtualize scroll jump caused by native overflow-anchor double compensation | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67781> |
| PR | #67772 | [release/10.0] Limit Microsoft.OpenApi to disallow next major | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67772> |
| Issue | #67803 | new issueTmp | open | yaasiinmd1 | <https://github.com/dotnet/aspnetcore/issues/67803> |
| Issue | #67800 | [API Proposal] Client-side validation for Blazor static SSR forms | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/67800> |
| Issue | #67794 | DBSC: share source scheme ITicketStore (server-side revocation) with derived cookies | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67794> |
| Issue | #67793 | Benchmark stopped running: blazorWebInteractiveWebAssembly | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67793> |
| Issue | #67792 | Perf regression: fortunes, json, single_query | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67792> |
| Issue | #67791 | Perf regression: json, kestrel-header-symbols, kestrel-header-symbols | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67791> |
| Issue | #67790 | Perf improvement: multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67790> |
| Issue | #67780 | SWA: use ZStandard to pre-compress files | closed | pavelsavara | <https://github.com/dotnet/aspnetcore/issues/67780> |
| Issue | #67779 | Add seekable stream support to InputFile | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67779> |
| Issue | #67778 | QUERY verb support | open | blowdart | <https://github.com/dotnet/aspnetcore/issues/67778> |
| Issue | #67777 | Design of warnings for incorrect spacer element usage based on parent element | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67777> |
| Issue | #67775 | Harden DistributedCacheTagHelper key serialization to be injective (CacheTagKey) | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67775> |
| Issue | #67774 | Design for BlurAsync API of ElementReference | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67774> |
| Issue | #67773 | Support nullable properties in ValidationMessageStore.Add expression-based overloads | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/67773> |
| Issue | #67724 | API Proposal: CacheBoundary | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/67724> |
| Issue | #66304 | OpenApi 3.0 omits integer item type when generating int[] | closed | Regenhardt | <https://github.com/dotnet/aspnetcore/issues/66304> |
