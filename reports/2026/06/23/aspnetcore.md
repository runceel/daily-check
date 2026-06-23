# dotnet/aspnetcore

対象期間: 2026-06-20 10:51:22 〜 2026-06-23 06:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 16 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 18 |
| 新規 Issue                 | 16 |
| クローズ Issue             | 10 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Blazor 系では `NavigationManager.GetUriWithFragment` の API 命名整理や、BrowserConfiguration/EnvironmentBoundary 周辺の構造調整が進み、UI/フレームワークの公開面を見直す動きがありました。
- OpenAPI や検証系では、document name 解決や nullable enum / validation state の扱いが改善され、API 利用時の型整合性が高まっています。
- Host filtering / hot reload / test quarantine 周辺では、既存の挙動に影響しうる修正が複数あり、フォーム・ホスティング・テスト基盤の回帰確認が必要です。
- 期間内のマージ済み PR はテスト安定化・依存更新・小規模 API 整理が中心で、特段の大規模な破壊的変更は確認されませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67368 | [Blazor] Rename API to NavigationManager.GetUriWithFragment | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67368> |
| PR | #67363 | Use globalized type names in validations gen | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67363> |
| PR | #67356 | Fix test-quarantine unquarantine matching and re-quarantine detection | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67356> |
| PR | #67353 | [test-quarantine] Quarantine VirtualizationCspTest.Virtualize_WithItems_DoesNotViolate_StrictStyleCspPolicy | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67353> |
| PR | #67349 | [test-quarantine] Re-Quarantine TestServerTests.LongPollingWorks | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67349> |
| PR | #67341 | [test-quarantine] Quarantine RealServerUsingMinimalBackedIntegrationTests.CanResolveServices | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67341> |
| PR | #67339 | [test-quarantine] Re-quarantine Http3RequestTests.GET_GracefulServerShutdown_AbortRequestsAfterHostTimeout | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67339> |
| PR | #67338 | Fix test-quarantine activation crash from oversized part1_data env var | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67338> |
| PR | #67337 | Reshape BrowserConfiguration API per review (BrowserOptions) while preserving the JS wire format | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67337> |
| PR | #67334 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67334> |
| PR | #67316 | [main] (deps): Bump src/submodules/googletest from `7140cd4` to `0b1e895` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67316> |
| PR | #67315 | [main] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67315> |
| PR | #67265 | Harden host filtering middleware matching leading dot when using wildcard | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67265> |
| PR | #66692 | Allow OpenAPI registration to resolve document names upon request | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/66692> |
| PR | #63642 | Use StringSyntaxAttribute in analyzer test helpers | merged | Alex-Sob | <https://github.com/dotnet/aspnetcore/pull/63642> |
| PR | #63641 | Fix RouteHandlerAnalyzer to avoid exception when generic type parameter is used in a handler | merged | Alex-Sob | <https://github.com/dotnet/aspnetcore/pull/63641> |
| PR | #67357 | [DO NOT MERGE] Diagnostic: overlay MSBuild Copy-delete logging + revert #66440 | closed | OvesN | <https://github.com/dotnet/aspnetcore/pull/67357> |
| PR | #67355 | [test-quarantine] Unquarantine HelloWorldTest.HelloWorld | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67355> |
| PR | #67354 | [test-quarantine] Unquarantine NavigationLock and CanNavigateToQueryStringPageWithNoQuery | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67354> |
| PR | #67321 | TEMPORARY: trace MSB3030 copy-race (dotnet/msbuild#12927) | closed | OvesN | <https://github.com/dotnet/aspnetcore/pull/67321> |
| PR | #67376 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67376> |
| PR | #67375 | [Blazor] Model WebView blazor.modules.json as a framework asset (#67374) | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67375> |
| PR | #67373 | Add nullable enum OpenAPI coverage for body and non-body inputs | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67373> |
| PR | #67372 | Hot reload: scope ShouldRender bypass to first render per component to prevent unbounded re-render loop (OOM) | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67372> |
| PR | #67369 | [Blazor] Rename EnvironmentBoundary component to EnvironmentView | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67369> |
| PR | #67367 | Fix culture persistence to not have public API | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67367> |
| PR | #67366 | Synchronize docs/list-of-diagnostics.md with codebase | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67366> |
| PR | #67365 | fix(blazor,analyzer): parameter attribute code fix multi-modifier handling | open | damyanpetev | <https://github.com/dotnet/aspnetcore/pull/67365> |
| PR | #67362 | Add IsValid property to ValidationStateChangedEventArg | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67362> |
| PR | #67360 | [main] Update dependencies from dnceng/internal/dotnet-optimization | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67360> |
| PR | #67359 | [main] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67359> |
| PR | #67351 | [test-quarantine] Quarantine QuickGridInteractiveTest.PaginatorCorrectItemsPerPage | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67351> |
| PR | #67347 | [test-quarantine] Quarantine Http3TimeoutTests.HEADERS_TrailerIncompleteFrameReceivedWithinRequestHeadersTimeout_StreamError | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67347> |
| PR | #67345 | [test-quarantine] Quarantine HubConnectionTests.ServerWithOldProtocol...DoesNotAllowStatefulReconnect | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67345> |
| PR | #67343 | [test-quarantine] Quarantine flaky RedirectionTest methods (WebDriver timeout) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67343> |
| PR | #67335 | Add review-public-api Copilot skill | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67335> |
| PR | #67333 | Use IValidatableTypeInfo.TryFindProperty instead of ValidationOptions.TryGetValidatablePropertyInfo | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67333> |
| PR | #67332 | Add author-analyzer-skill Copilot skill | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67332> |
| Issue | #67374 | BlazorWebView: model blazor.modules.json as a Framework asset (fixes publish-time Sequence contains more than one element in MAUI Blazor Hybrid + RCL) | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67374> |
| Issue | #67371 | Hot reload: scope ShouldRender bypass to first render per component to prevent unbounded re-render loop (OOM) | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67371> |
| Issue | #67370 | Microsoft.AspNetCore.Http 2.3.x packages don't clearly indicate they are only intended for ASP.NET Core on .NET Framework | open | Frulfump | <https://github.com/dotnet/aspnetcore/issues/67370> |
| Issue | #67364 | Blazor analyzer public `[Parameter]` code fix fails to replace multiple modifiers | open | damyanpetev | <https://github.com/dotnet/aspnetcore/issues/67364> |
| Issue | #67361 | Perf regression: antiforgery-noop | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67361> |
| Issue | #67358 | Perf improvement: multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67358> |
| Issue | #67352 | Quarantine VirtualizationCspTest.Virtualize_WithItems_DoesNotViolate_StrictStyleCspPolicy | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67352> |
| Issue | #67350 | Quarantine QuickGridInteractiveTest.PaginatorCorrectItemsPerPage (StaleElementReferenceException) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67350> |
| Issue | #67348 | Quarantine TestServerTests.LongPollingWorks (ObjectDisposedException in DefaultHubDispatcher) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67348> |
| Issue | #67346 | Quarantine Http3TimeoutTests.HEADERS_TrailerIncompleteFrameReceivedWithinRequestHeadersTimeout_StreamError | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67346> |
| Issue | #67344 | Quarantine HubConnectionTests.ServerWithOldProtocolVersionClientWithNewProtocolVersionWorksDoesNotAllowStatefulReconnect | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67344> |
| Issue | #67342 | Quarantine flaky RedirectionTest methods (RedirectStreamingPostToExternal, RedirectEnhancedNonBlazorGetToExternal, RedirectEnhan
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67342> |
| Issue | #67340 | Quarantine Microsoft.AspNetCore.Mvc.FunctionalTests.RealServerUsingMinimalBackedIntegrationTests.CanResolveServices | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67340> |
| Issue | #67336 | API review feedback: BrowserConfiguration shape/placement (#66393) | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67336> |
| Issue | #67331 | Perf regression: caching, fortunes_dapper, fortunes_ef | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67331> |
| Issue | #67330 | Perf improvement: json_middleware | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67330> |
| Issue | #67210 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67210> |
| Issue | #67201 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67201> |
| Issue | #66725 | API proposal: Allow OpenAPI registration to resolve document names upon request | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/66725> |
| Issue | #66652 | HostFiltering middleware improperly matches hosts with leading dot | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66652> |
| Issue | #66408 | API Proposal: Microsoft.AspNetCore.OpenAPI Not Extensible Due To Internal Types | closed | commonsensesoftware | <https://github.com/dotnet/aspnetcore/issues/66408> |
| Issue | #56831 | Warning AD0001 : Analyzer 'Microsoft.AspNetCore.Analyzers.RouteHandlers.RouteHandlerAnalyzer' NullReferenceException due to generics in minimal API | closed | madskonradsen | <https://github.com/dotnet/aspnetcore/issues/56831> |
