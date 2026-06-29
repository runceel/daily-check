# dotnet/aspnetcore

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 22 |
| クローズ (未マージ) PR     | 6 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 14 |
| クローズ Issue             | 13 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67407](https://github.com/dotnet/aspnetcore/issues/67407) — SingalR 8.* version has vulnerable package ws 7.5.10 （Issue / open / birarroshan）
  依存関係を利用しているアプリケーションでは、SignalR 8 系のパッケージ更新と `ws` のパッチ適用を確認する必要があります。
- **⚠ セキュリティ** [#39761](https://github.com/dotnet/aspnetcore/issues/39761) — Automatically infer `OpenApiSecuritySchemes` from authentication configuration （Issue / open / captainsafia）
  OpenAPI 生成の挙動が変わる可能性があるため、認証設定を持つ API では生成結果の差分を確認する必要があります。
- **非推奨/廃止** [#67077](https://github.com/dotnet/aspnetcore/pull/67077) — Remove long-obsolete MVC APIs targeted for removal （PR / merged / Copilot）
  旧 MVC API 依存のコードがある場合は、移行先の推奨 API へ切り替える計画を用意しておくと安全です。

## 主要な変更点

- `Microsoft.Extensions.Validation` に同期 `Validate` が追加され、カスタム検証の利用がより扱いやすくなっています。
- Passkey / Blazor 周辺のログイン・バリデーション挙動の修正が入り、認証系の不具合緩和が進んでいます。
- `PathString.StartsWithSegments` の境界扱いや Blazor テンプレートの antiforgery 利用が整理され、互換性の問題を減らす方向です。
- 依存関係の更新やテストの安定化も進められており、今後のリリース品質向上に寄与しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67446 | [test-quarantine] Unquarantine Http2ConnectionTests.AbortedStream_ResetsAndDrainsRequest_RefusesFramesAfterEndOfStream (issue #66037) | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67446> |
| PR | #67445 | [test-quarantine] Quarantine RedirectionTest.RedirectEnhancedPostToExternal | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67445> |
| PR | #67441 | Capture minidumps instead of full dumps for build/test hangs | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67441> |
| PR | #67435 | [main] (deps): Bump actions/cache/restore from 5.0.5 to 6.0.0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67435> |
| PR | #67434 | [main] (deps): Bump actions/cache/save from 5.0.5 to 6.0.0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67434> |
| PR | #67433 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from f9ac0f477422ae5fffb6efd428666e28ee23049c to 7013d9d28581f8597f7ddc73dcd79e4d91af866d | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67433> |
| PR | #67432 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from f9ac0f477422ae5fffb6efd428666e28ee23049c to 7013d9d28581f8597f7ddc73dcd79e4d91af866d | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67432> |
| PR | #67430 | [main] (deps): Bump src/submodules/googletest from `0b1e895` to `8b53336` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67430> |
| PR | #67427 | Add synchronous Validate method in Microsoft.Extensions.Validation | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67427> |
| PR | #67418 | [test-quarantine] Unquarantine IIS StartupTests (dotnet/runtime#126925) | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67418> |
| PR | #67417 | [test-quarantine] Unquarantine ServerRoutingTest.CanNavigateToQueryStringPageWithNoQuery | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67417> |
| PR | #67416 | [test-quarantine] Re-Quarantine IIS.NewHandler.FunctionalTests.StartupTests.SetCurrentDirectoryHandlerSettingWorks | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67416> |
| PR | #67414 | Unquarantine SignalR long-polling TestServerTests | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67414> |
| PR | #67402 | Pin Node.js to 24.14.1 to avoid v24.15.0+ native crash | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67402> |
| PR | #67399 | ValidationsGenerator: Allow validating internal types | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67399> |
| PR | #67365 | Fix Blazor [Parameter] public code fix handling of multiple access modifiers | merged | damyanpetev | <https://github.com/dotnet/aspnetcore/pull/67365> |
| PR | #67333 | Use IValidatableTypeInfo.TryFindProperty instead of ValidationOptions.TryGetValidatablePropertyInfo | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67333> |
| PR | #67284 | Fix InvalidCastException when retrieving attributes for PropertyAsParameterInfo | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67284> |
| PR | #67258 | Fix passkey login broken by SSR client-side validation | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67258> |
| PR | #67150 | Use more performant span APIs | merged | martincostello | <https://github.com/dotnet/aspnetcore/pull/67150> |
| PR | #67119 | Remove redundant app.UseAntiforgery() from Blazor Web templates | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67119> |
| PR | #67093 | Make PathString.StartsWithSegments treat backslash also as a boundary | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67093> |
| PR | #67443 | [test-quarantine] Re-Quarantine TestServerTests.WebSocketsWorks | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67443> |
| PR | #67437 | [review draft] Circuit can be paused by Blazor when inactivity is detected | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67437> |
| PR | #67431 | [main] (deps): Bump actions/checkout from 6.0.3 to 7.0.0 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67431> |
| PR | #67429 | [Review draft] Fix culture persistence to not have public API | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67429> |
| PR | #67415 | [test-quarantine] Re-Quarantine TestServerTests.WebSocketsWorks | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67415> |
| PR | #67087 | Preserve TagHelper child content when appending output content | closed | Wezylnia | <https://github.com/dotnet/aspnetcore/pull/67087> |
| PR | #67442 | Run macOS quarantine leg arm64-native on Apple Silicon agents (avoid Rosetta deadlock, runtime#89272) | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67442> |
| PR | #67440 | [Hosting] Avoid allocations for OpenTelemetry | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/67440> |
| PR | #67439 | [release/11.0-preview6] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67439> |
| PR | #67436 | Add API to access TLS channel binding tokens | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67436> |
| PR | #67428 | Fix typos in code | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67428> |
| PR | #67426 | Warn on Blazor components with Dispose()/DisposeAsync() but no interface | open | dkamburov | <https://github.com/dotnet/aspnetcore/pull/67426> |
| PR | #67422 | [SpaProxy] Fall back to .exe when no .cmd shim is on PATH | open | bsallesp | <https://github.com/dotnet/aspnetcore/pull/67422> |
| PR | #67420 | Add IHealthChecksBuilder.ConfigureHealthCheckOptions extension | open | bsallesp | <https://github.com/dotnet/aspnetcore/pull/67420> |
| PR | #67413 | Improve QuickGrid diagnostics for mismatched GridSort types | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/pull/67413> |
| PR | #67411 | Adopt the PAT pool for agentic workflows | open | jeffhandley | <https://github.com/dotnet/aspnetcore/pull/67411> |
| PR | #67409 | Harden SignalR stateful reconnect. | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67409> |
| PR | #67408 | Update ws package version to 7.5.11 | open | birarroshan | <https://github.com/dotnet/aspnetcore/pull/67408> |
| PR | #67406 | Fix InputBase retaining invalid parsing state and stale validation messages after Value change | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/67406> |
| PR | #67405 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67405> |
| Issue | #67450 | Perf improvement: updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67450> |
| Issue | #67449 | Perf improvement: kestrel-hostheader-mismatch, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67449> |
| Issue | #67448 | Perf improvement: antiforgery-generation, https, https | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67448> |
| Issue | #67447 | Data Protection: CreateProtector reads the key store eagerly on .NET 11 (was lazy until first Protect/Unprotect on .NET 10) | open | KennethHoff | <https://github.com/dotnet/aspnetcore/issues/67447> |
| Issue | #67444 | Quarantine Microsoft.AspNetCore.Components.E2ETests.ServerRenderingTests.RedirectionTest.RedirectEnhancedPostToExternal | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67444> |
| Issue | #67438 | Redis Cache : Allow Redis Connection Disposal to be controlled externally | open | ricardomomm | <https://github.com/dotnet/aspnetcore/issues/67438> |
| Issue | #67425 | Perf improvement: https, mTls-handshakes-kestrel, tls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67425> |
| Issue | #67424 | [dotnet-sdk-11.0.100-preview.7.26325.110] HackSystem login failed with "Access to XMLHttpRequest has been blocked by CORS policy" and "System.InvalidOperationException" errors | open | appcompat-wx | <https://github.com/dotnet/aspnetcore/issues/67424> |
| Issue | #67423 | ANCM Out-of-Process return 502 Bad Gateway on HTTP/2 split-frame GET and HTTP/1.1 chunked GET | open | cs8425 | <https://github.com/dotnet/aspnetcore/issues/67423> |
| Issue | #67421 | [Validation] Add Validate() that only runs synchronous ValidationAttribute | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67421> |
| Issue | #67419 | HttpSys AsyncAcceptContext can repeatedly fail after stale NativeOverlapped is freed | open | sjovanovic974 | <https://github.com/dotnet/aspnetcore/issues/67419> |
| Issue | #67412 | ValidationsGenerator doesn't unwrap array types | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67412> |
| Issue | #67410 | SignInManager.PasskeySignInAsync throws InvalidOperationException when session challenge has expired instead of returning SignInResult.Failed | open | doogdeb-work | <https://github.com/dotnet/aspnetcore/issues/67410> |
| Issue | #67407 | SingalR 8.* version has vulnerable package ws 7.5.10 | open | birarroshan | <https://github.com/dotnet/aspnetcore/issues/67407> |
| Issue | #67364 | Blazor analyzer public `[Parameter]` code fix fails to replace multiple modifiers | closed | damyanpetev | <https://github.com/dotnet/aspnetcore/issues/67364> |
| Issue | #67348 | Quarantine TestServerTests.LongPollingWorks (ObjectDisposedException in DefaultHubDispatcher) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67348> |
| Issue | #67084 | Rework `Antiforgery` usage in aspnetcore template | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67084> |
| Issue | #66665 | Normalize backslashes in PathDecoder | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66665> |
| Issue | #66195 | Quarantine ServerRoutingTest.CanNavigateToQueryStringPageWithNoQuery | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66195> |
| Issue | #66037 | Quarantine Http2ConnectionTests (AbortedStream_ResetsAndDrainsRequest_RefusesFramesAfterEndOfStream, StopProcessingNextRequestSendsGracefulGOAWAYThenFinalGOAWAYWhenAllStreamsComplete, AbortSendsFinalGOAWAY, GOAWAY_Received_ConnectionLifetimeNotification_Cancelled) | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/66037> |
| Issue | #65874 | Issue Triage Agent action fails when issue opened | closed | martincostello | <https://github.com/dotnet/aspnetcore/issues/65874> |
| Issue | #65529 | OpenAPI: Characters are getting escaped when parsed from XML comments | closed | Dubzer | <https://github.com/dotnet/aspnetcore/issues/65529> |
| Issue | #65348 | InvalidCastException when using [AsParameters] with primary constructor record that has ValidationAttribute on constructor parameters | closed | XmmShp | <https://github.com/dotnet/aspnetcore/issues/65348> |
| Issue | #58810 | Support modeling unions are responses in OpenAPI documents | closed | SpaceOgre | <https://github.com/dotnet/aspnetcore/issues/58810> |
| Issue | #51981 | MapRazorComponents unexpectedly requires antiforgery middleware | closed | SteveSandersonMS | <https://github.com/dotnet/aspnetcore/issues/51981> |
| Issue | #39771 | Use ReadOnlySpan<char> equivalents for string methods? | closed | martincostello | <https://github.com/dotnet/aspnetcore/issues/39771> |
