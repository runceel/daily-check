# dotnet/aspnetcore

対象期間: 2026-06-23 06:00:53 〜 2026-06-25 00:23:12 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 21 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 12 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 21 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除してよいです。 -->
- **非推奨/廃止** [#66551](https://github.com/dotnet/aspnetcore/issues/66551) — Revise obsolete APIs intended to be removed, and consider removing in .NET 11 （Issue / closed / Youssef1313）
  ASP.NET Core の既存 API を使っている開発者は、.NET 11 での削除候補に該当しないかを確認しておくとよいでしょう。

## 主要な変更点

- Blazor 周辺では WebView の publish 互換性改善、enhanced navigation の再実行、`EnvironmentBoundary` の命名整理など、実装・開発体験の改善が続いています。
- SignalR では認証リフレッシュ対応が追加され、サーバー側と .NET クライアントの連携が強化されています。
- `Virtualize` / `NavLink` / `AnchorMode` などの API 命名や挙動に関するレビュー・リネームがあり、既存コードの互換性を気にする実装者は注意が必要です。
- Hot reload、OpenAPI / Minimal API の検証や nullable パラメータ周りの改善も進み、開発者体験と API の整合性を高める変更が目立ちました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67401 | [release/11.0-preview6] [Blazor] Fix WebView blazor.modules.json publish crash via conditional fallback (#67374) | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67401> |
| PR | #67400 | [release/11.0-preview6] Add SignalR Auth Refresh support to server and .NET client | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67400> |
| PR | #67389 | Stop setting EnableTypeScriptNuGetTarget for Components projects | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67389> |
| PR | #67387 | [Blazor] Execute `discoverBrowserConfiguration` on every enhanced navigation | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/67387> |
| PR | #67386 | Rename SupportsNullableProperty to DoesNotSupportNullValue | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67386> |
| PR | #67383 | feat(blazor,analyzer): direct AuthenticationStateProvider usage without StateChanged handler | merged | kdinev | <https://github.com/dotnet/aspnetcore/pull/67383> |
| PR | #67376 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67376> |
| PR | #67375 | [Blazor] Fix WebView blazor.modules.json publish crash via conditional fallback (#67374) | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67375> |
| PR | #67372 | Hot reload: scope ShouldRender bypass to first render per component to prevent unbounded re-render loop (OOM) | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67372> |
| PR | #67369 | [Blazor] Rename EnvironmentBoundary component to EnvironmentView | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67369> |
| PR | #67366 | Synchronize docs/list-of-diagnostics.md with codebase | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67366> |
| PR | #67360 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67360> |
| PR | #67359 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67359> |
| PR | #67351 | [test-quarantine] Quarantine QuickGridInteractiveTest.PaginatorCorrectItemsPerPage | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67351> |
| PR | #67347 | [test-quarantine] Quarantine Http3TimeoutTests.HEADERS_TrailerIncompleteFrameReceivedWithinRequestHeadersTimeout_StreamError | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67347> |
| PR | #67345 | [test-quarantine] Quarantine HubConnectionTests.ServerWithOldProtocol...DoesNotAllowStatefulReconnect | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67345> |
| PR | #67343 | [test-quarantine] Quarantine flaky RedirectionTest methods (WebDriver timeout) | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67343> |
| PR | #67313 | API review rename of `AnchorMode` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67313> |
| PR | #67312 | API review rename of `InitialIndex` and `ScrollToIndexAsync` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67312> |
| PR | #67307 | Defer implicit middlewares to run after Routing | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67307> |
| PR | #67266 | Add test case for two leading dots | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67266> |
| PR | #67396 | Expose a parameter of ShouldMatch for <NavLink /> | closed | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67396> |
| PR | #67373 | Add nullable enum OpenAPI coverage for body and non-body inputs | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67373> |
| PR | #67303 | 1029637: Added Grid Layout Support to Virtualize Component with ItemWidth and ItemHeight | closed | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/67303> |
| PR | #67403 | Fix weak reference Kestrel test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67403> |
| PR | #67402 | Pin Node.js to 24.14.1 to avoid v24.15.0+ native crash | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67402> |
| PR | #67399 | ValidationsGenerator: Allow validating internal types | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67399> |
| PR | #67398 | Increase timeout for CertificateChangedOnDisk_Symlink test in DEBUG mode | open | amf-fs | <https://github.com/dotnet/aspnetcore/pull/67398> |
| PR | #67397 | Fix example XML doc parsing for OpenApi | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67397> |
| PR | #67395 |  Fix validation for null nullable parameters in minimal APIs | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67395> |
| PR | #67394 | quickgrid pagination | open | Mohamed33-Fasul | <https://github.com/dotnet/aspnetcore/pull/67394> |
| PR | #67388 | Device Bound Session Credentials (DBSC) for cookie authentication (prototype) | open | rokonec | <https://github.com/dotnet/aspnetcore/pull/67388> |
| PR | #67385 | Fix preview 5 regression for OpenApi nullable enums | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67385> |
| PR | #67384 | Fix OpenApiSchemaService to handle implementation different from Dictionary<,> for schema.Properties | open | marcominerva | <https://github.com/dotnet/aspnetcore/pull/67384> |
| PR | #67380 | Add OnPageChanging and OnPageChanged event support to Paginator | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/67380> |
| PR | #67379 | Synchronize form reset behavior with EditContext and InputBase | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67379> |
| Issue | #67404 | Performance and interactivity issues when using the 10.0.x packages for Microsoft.AspNetCore.Components.WebView.Wpf | open | Iansa9 | <https://github.com/dotnet/aspnetcore/issues/67404> |
| Issue | #67393 | Consider renaming `ConfigureHostApplicationBuilder` to `ConfigureWebApplicationBuilder` | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67393> |
| Issue | #67392 | Perf regression: kestrel-header-symbols, tls-renegotiation-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67392> |
| Issue | #67391 | Perf regression: antiforgery-noop, json_middleware, mTls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67391> |
| Issue | #67390 | Perf improvement: tls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67390> |
| Issue | #67382 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67382> |
| Issue | #67381 | Ship ASP.NET Core bootstrapper packages with Visual Studio | open | CodingMarco | <https://github.com/dotnet/aspnetcore/issues/67381> |
| Issue | #67378 | Perf regression: mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67378> |
| Issue | #67377 | Perf improvement: antiforgery-generation, mTls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67377> |
| Issue | #67374 | BlazorWebView: model blazor.modules.json as a Framework asset (fixes publish-time Sequence contains more than one element in MAUI Blazor Hybrid + RCL) | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67374> |
| Issue | #67371 | Hot reload: scope ShouldRender bypass to first render per component to prevent unbounded re-render loop (OOM) | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67371> |
| Issue | #67216 | File result types don't evaluate If-Unmodified-Since unless enableRangeProcessing is set | closed | mikekistler | <https://github.com/dotnet/aspnetcore/issues/67216> |
| Issue | #67174 | Bug 3016548: [dotnet-sdk-11.0.100-preview.6.26309.107] CodeConverter Click “Convert Code” not work with error: Access to XMLHttpRequest has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource. | closed | Junjun-zhao | <https://github.com/dotnet/aspnetcore/issues/67174> |
| Issue | #67067 | WASM EnvironmentBoundary not always renders correct | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67067> |
| Issue | #67065 | API Proposal: Add InitialIndex parameter and ScrollToIndexAsync method to Virtualize<TItem> | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67065> |
| Issue | #67012 | dotnet watch grows my app's memory until it freezes my system | closed | MeikelLP | <https://github.com/dotnet/aspnetcore/issues/67012> |
| Issue | #66806 | CookieAuthenticationHandler.IsHostRelative should reject ASCII control characters to match Url.IsLocalUrl behavior | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/66806> |
| Issue | #66799 | API proposal for `AnchorMode` | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/66799> |
| Issue | #66724 | Improve CRLF / LF observability | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66724> |
| Issue | #66574 | [API Proposal]: WebApplicationFactory.ConfigureHostApplicationBuilder for early test config override | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/66574> |
| Issue | #66551 | Revise obsolete APIs intended to be removed, and consider removing in .NET 11 | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/66551> |
| Issue | #66486 | URL Rewrite middleware does not detect scheme-relative URLs (//host) in redirect targets | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/66486> |
| Issue | #65632 | Support internal request DTOs in built-in Minimal API validation | closed | BrunoBeraud | <https://github.com/dotnet/aspnetcore/issues/65632> |
| Issue | #65337 | [Blazor] Analyzer to warn about caching User instances without subscribing to changes | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/65337> |
| Issue | #65196 | [Blazor] StateHasChanged analyzer to flag unnecessary calls. | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/65196> |
| Issue | #64609 | Support async validation in minimal APIs | closed | captainsafia | <https://github.com/dotnet/aspnetcore/issues/64609> |
| Issue | #37680 | Minimal API test config overrides only apply after app has been built | closed | maisiesadler | <https://github.com/dotnet/aspnetcore/issues/37680> |
| Issue | #18163 | Suggestion: Expose a parameter of  `ShouldMatch` for `<NavLink />`  | closed | newbienewbie | <https://github.com/dotnet/aspnetcore/issues/18163> |
| Issue | #11542 | [SignalR] Possibility to cancel long running hub method from client | closed | ddweber | <https://github.com/dotnet/aspnetcore/issues/11542> |
