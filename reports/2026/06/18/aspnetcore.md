# dotnet/aspnetcore

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 13 |
| クローズ (未マージ) PR     | 9 |
| 新規 PR (オープン中)       | 25 |
| 新規 Issue                 | 12 |
| クローズ Issue             | 19 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67097](https://github.com/dotnet/aspnetcore/pull/67097) — Update default OpenApi version to 3.2 （PR / merged / Youssef1313）
  OpenAPI 生成結果の既定バージョンが 3.2 になるため、OpenAPI 3.0/3.1 前提のツールチェーンやスナップショットを持つ利用者は互換性確認が必要です。
- **⚠ セキュリティ** [#56723](https://github.com/dotnet/aspnetcore/issues/56723) — [Component Vulnerability]please consider to upgrade ws in @microsoft/signalr from @^7.4.5 to @^7.5.10 （Issue / closed / tmbp95）
  SignalR npm パッケージの `ws` 脆弱性追跡はクローズ済みですが、該当バージョンを固定している利用者は依存更新済みか確認してください。
- **非推奨/廃止** [#63494](https://github.com/dotnet/aspnetcore/issues/63494) — OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute （Issue / open / desjoerd）
  `[Obsolete]` を OpenAPI の deprecated 表現に反映する検討で、API クライアント生成やドキュメント運用への影響を確認する必要があります。

## 主要な変更点

- OpenAPI では #67097 により既定バージョンが 3.2 へ更新され、生成物を固定比較しているプロジェクトでは差分確認が必要です。
- OpenAPI / Validation 周辺では #67183 の `IValidatableInfo` 分割、#67233 の nullable complex property 生成問題、#63494 の `[Obsolete]` 反映検討が並行して動いています。
- CI / リリース作業として Windows 2022 image への更新、npm 依存更新、Docker image fix のバックポート、NativeAOT cross-build 修正が複数ブランチで進みました。
- Blazor では WASM OpenTelemetry / ServiceDefaults の循環依存、EditForm / Virtualize / passkey login などの修正・調査が続いています。
- Security 自動判定では `ws` 脆弱性 Issue #56723 がクローズ済みとして残っており、SignalR npm 依存を固定している利用者は更新状態の確認が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67288 | [release/10.0] Update CI pipeline to use Windows 2022 image | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67288> |
| PR | #67286 | Update CI pipeline to use Windows 2022 image | merged | hoyosjs | <https://github.com/dotnet/aspnetcore/pull/67286> |
| PR | #67281 | [release/10.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67281> |
| PR | #67279 | [release/8.0] Backport docker image fix | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67279> |
| PR | #67278 | Quarantine only flaky tests, not consistent regressions | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67278> |
| PR | #67261 | [test-quarantine] Unquarantine TestServerTests.WebSocketsWorks | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67261> |
| PR | #67260 | [test-quarantine] Unquarantine AbortedStream_ResetsAndDrainsRequest_RefusesFramesAfterClientReset | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67260> |
| PR | #67252 | Fix public/unofficial CI NativeAOT cross-build for ARM/ARM64/musl legs | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67252> |
| PR | #67241 | Revert "Skip .NET SDK first-run experience in Helix work items" | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67241> |
| PR | #67232 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67232> |
| PR | #67214 | Delete dead code in MEV | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67214> |
| PR | #67183 | Split IValidatableInfo to multiple interfaces | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67183> |
| PR | #67097 | Update default OpenApi version to 3.2 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67097> |
| PR | #67276 | [DO NOT MERGE] [probe p9] Runtime bisect: preview.5.26269.119 (idx15, May 21) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67276> |
| PR | #67256 | [DO NOT MERGE] Bisection probe p8: runtime preview.6.26305.101 (#67024) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67256> |
| PR | #67255 | [DO NOT MERGE] Bisection probe p6: runtime preview.5.26272.101 (#66795) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67255> |
| PR | #67254 | [DO NOT MERGE] Bisection probe p7: runtime preview.6.26280.103 (#66933) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67254> |
| PR | #67251 | [experiment] Disable shared compilation on macOS to test VSD DispatchCache hang | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67251> |
| PR | #67246 | [Do not merge] Runtime hang bisect — preview.5.26268 (May 19) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67246> |
| PR | #67245 | [Do not merge] Runtime hang bisect — preview.4.26224 (Apr 27) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67245> |
| PR | #67244 | [Do not merge] Runtime hang bisect — preview.3.26176 (Mar 31) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67244> |
| PR | #67240 | [Do not merge] Try a build on macos-26 | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67240> |
| PR | #67289 | [release/8.0] Update CI pipeline to use Windows 2022 image | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67289> |
| PR | #67287 | [release/9.0] Update CI pipeline to use Windows 2022 image | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67287> |
| PR | #67284 | Avoid InvalidCast in AsParameters validation attribute lookup | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67284> |
| PR | #67282 | Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67282> |
| PR | #67280 | [release/10.0] Add reference to System.Security.Cryptography.Xml in RepoTasks | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67280> |
| PR | #67277 | [release/9.0] Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67277> |
| PR | #67275 | [release/10.0] Update Selenium and Playwright versions to match main | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67275> |
| PR | #67274 | [release/9.0] Update Selenium and Playwright versions to match main | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67274> |
| PR | #67273 | [release/8.0] Update Selenium and Playwright versions to match main | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67273> |
| PR | #67267 | Break Blazor WASM OTLP DI cycle with lazy logger resolution | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67267> |
| PR | #67266 | Add test case for two leading dots | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67266> |
| PR | #67265 | Harden host filtering middleware matching leading dot when using wildcard | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67265> |
| PR | #67264 | Fix Blazor Replacing EditForm Model causes component destruction | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67264> |
| PR | #67263 | [test-quarantine] Unquarantine BlazorWebJsInitializersTest.InitializersRunsModernCallbacksByDefaultWhenPresent | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67263> |
| PR | #67262 | [test-quarantine] Unquarantine ServerVirtualizationTest.DynamicContent_PrependItemsWhileScrolledToMiddle_VisibleItemsStayInPlace | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67262> |
| PR | #67258 | Fix passkey login broken by SSR client-side validation | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67258> |
| PR | #67253 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67253> |
| PR | #67250 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67250> |
| PR | #67249 | Add short circuit attribute | open | Porozhniakov | <https://github.com/dotnet/aspnetcore/pull/67249> |
| PR | #67248 | Fix model binding for indexed IFormFile collections | open | KieranDevvs | <https://github.com/dotnet/aspnetcore/pull/67248> |
| PR | #67242 | [release/9.0] Update Node.js version from 20.x to 24.x | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67242> |
| PR | #67238 | Add AddHealthChecks(IServiceCollection, Action<HealthCheckServiceOptions>) overload | open | SamoanProgrammer | <https://github.com/dotnet/aspnetcore/pull/67238> |
| PR | #67237 | Enhance nullability support for TValue in EventCallback | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67237> |
| PR | #67235 | Add public FormSubmitAsync method to EditForm | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67235> |
| PR | #67234 | Improve error message for malformed component marker during Blazor hydration | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67234> |
| Issue | #67285 | ParameterView unchecked type casts when splatting provides unhelpful error messages | open | sconosciute | <https://github.com/dotnet/aspnetcore/issues/67285> |
| Issue | #67283 | Perf improvement: caching, caching, fortunes_ef | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67283> |
| Issue | #67272 | [Blazor] Type inference improvement: RenderFragment parameters | open | NoahS2003 | <https://github.com/dotnet/aspnetcore/issues/67272> |
| Issue | #67271 | Old `ws` dependency in @microsoft/signalr npm package | closed | stasberkov | <https://github.com/dotnet/aspnetcore/issues/67271> |
| Issue | #67269 | Suggestion: introduce limiting for PING and SETTINGS frames in HTTP/2 or HTTP/3 | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67269> |
| Issue | #67268 | Document and guard against known tricky middleware-ordering traps (output caching, diagnostics re-execution) | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67268> |
| Issue | #67259 | [Blazor WASM] BlazorWasmServiceDefaults template has circular DI dependency in IPostConfigureOptions<OtlpExporterOptions> on .NET 11 preview | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67259> |
| Issue | #67270 | aspnet:10.0 - FailFast crash in TypeDescriptor.GetProperties() / ConcurrentDictionary..ctor() after upgrading from 10.0.8 to 10.0.9 | open | SPichichi | <https://github.com/dotnet/aspnetcore/issues/67270> |
| Issue | #67257 | Consider Backporting Reconnection Fix to .NET 10 | open | Mike-E-angelo | <https://github.com/dotnet/aspnetcore/issues/67257> |
| Issue | #67243 | Flaky test: InputDateInteractsWithEditContext_NullableDateTimeOffset | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67243> |
| Issue | #67239 | NullReferenceException in Kestrel Http2Stream.OnHeader() during load test | closed | Bot-GJ16 | <https://github.com/dotnet/aspnetcore/issues/67239> |
| Issue | #67233 | Microsoft.AspNetCore.OpenApi drops null-acceptance for get-only constructor-bound nullable complex properties (emits a bare $ref) | open | sdukehart-omnesoft | <https://github.com/dotnet/aspnetcore/issues/67233> |
| Issue | #67211 | Microsoft.Extensions.Validation: IsNullable implementation is always false | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67211> |
| Issue | #67080 | [API proposal]: Split Microsoft.Extensions.Validation interfaces | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67080> |
| Issue | #67066 | Blazor templates shouldn't contain "inspectUri" | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67066> |
| Issue | #67032 | Blazor WebAssembly app throws CircularDependencyException (ILoggerFactory) when calling AddBlazorClientServiceDefaults() | closed | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67032> |
| Issue | #66925 | Revert https://github.com/dotnet/aspnetcore/pull/66916 once root cause is fixed | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/66925> |
| Issue | #66840 | Blazor Virtualize requires inline styles, preventing strict CSP enforcement | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/66840> |
| Issue | #66745 | Fix `TempData` and `SupplyParameterFromSession` to support streaming SSR | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/66745> |
| Issue | #66594 | Unable to find package `Microsoft.Extensions.ServiceDiscovery` with version (>= 10.6.0-preview.1.26210.2) after creating blazor-wasm-servicedefaults project | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/66594> |
| Issue | #66454 | [dotnet watch with hot reload]There is an error "Exited with error code -1" when pressing Ctrl+C to exit dotnet-watch for web project after installing 11.0 P4 SDK | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/66454> |
| Issue | #66309 | Quarantine Http2ConnectionTests.AbortedStream_ResetsAndDrainsRequest_RefusesFramesAfterClientReset is flaky | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66309> |
| Issue | #65914 | Quarantine Microsoft.AspNetCore.SignalR.Client.Tests.TestServerTests.WebSocketsWorks | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/65914> |
| Issue | #65527 | `DocumentationCommentIdHelper` should not be Generated | closed | viceroypenguin | <https://github.com/dotnet/aspnetcore/issues/65527> |
| Issue | #65503 | The .net8's update "IFormFile parameters require anti-forgery checks" seems not working. | closed | faust21 | <https://github.com/dotnet/aspnetcore/issues/65503> |
| Issue | #65417 | [OpenAPI] XML documentation not included when AddOpenApi is called from a library | closed | ebuter9292 | <https://github.com/dotnet/aspnetcore/issues/65417> |
| Issue | #64890 | [Blazor] WebAssembly OpenTelemetry integration | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64890> |
| Issue | #64575 | [Blazor] Consider enabling MetricsSupport and EventSourceSupport by default for WebAssembly | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64575> |
| Issue | #55286 | `/*#__PURE__*/` annotations dont work well with Vite / Rollup | closed | lukedukeus | <https://github.com/dotnet/aspnetcore/issues/55286> |
