# dotnet/aspnetcore

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 64 |
| クローズ (未マージ) PR     | 10 |
| 新規 PR (オープン中)       | 24 |
| 新規 Issue                 | 24 |
| クローズ Issue             | 43 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69277](https://github.com/dotnet/aspnetcore/pull/69277) — [Identity] Use ordinal equality for external login keys （PR / open / javiercn）
外部ログインキーの比較方法を変更するオープン PR です。Identity 利用者は大文字小文字などのキー一致条件と、既存ログイン情報との互換性を確認してください。
- **⚠ セキュリティ** [#69394](https://github.com/dotnet/aspnetcore/pull/69394) — Rotate security stamp on passkey removal （PR / open / Copilot）
パスキー削除時に security stamp を更新するセキュリティ強化のオープン PR です。Passkey 認証を使うアプリは、マージ後に削除済み資格情報の既存セッションが無効化される動作を確認してください。
- **⚠ セキュリティ** [#69312](https://github.com/dotnet/aspnetcore/pull/69312) — Unify claims principal cache identity （PR / open / javiercn）
ClaimsPrincipal cache の識別方法を統一するオープン PR です。認証キャッシュを使うアプリは、principal の共有・分離条件とユーザー間のキャッシュ混同がないことを確認してください。
- **非推奨/廃止** [#69385](https://github.com/dotnet/aspnetcore/pull/69385) — [release/11.0] Stop shipping the obsolete Components.AI package （PR / merged / kotlarmilos）
ASP.NET Core 11.0 では obsolete な `Components.AI` package を配布しなくなります。これに依存するアプリは該当パッケージを特定し、サポートされる後継・移行先を確認してください。
- **非推奨/廃止** [#67134](https://github.com/dotnet/aspnetcore/issues/67134) — Deprecate Microsoft.AspNetCore.Grpc.Swagger （Issue / closed / danroth27）
`Microsoft.AspNetCore.Grpc.Swagger` の非推奨化を追跡した issue です。gRPC API の Swagger/OpenAPI 文書化に利用しているプロジェクトは、現在のサポート方針と移行先を確認してください。

## 主要な変更点

- ASP.NET Core 11.0 では obsolete な `Components.AI` package の配布を停止しました（[#69385](https://github.com/dotnet/aspnetcore/pull/69385)）。同 package の利用者は後継・移行先を確認してください。
- Identity では外部ログインキー比較の変更提案と、パスキー削除時の security stamp 更新提案が進行中です（[#69277](https://github.com/dotnet/aspnetcore/pull/69277)、[#69394](https://github.com/dotnet/aspnetcore/pull/69394)）。
- ClaimsPrincipal cache の識別統一もオープン PR で提案されており、認証キャッシュの分離動作が焦点です（[#69312](https://github.com/dotnet/aspnetcore/pull/69312)）。
- gRPC Swagger package の非推奨化を追跡した issue はクローズされました（[#67134](https://github.com/dotnet/aspnetcore/issues/67134)）。
- その他は ASP.NET Core 11.0 の依存更新、Blazor のスクロール・UI 修正、テスト安定化が中心です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69472 | [automated] Merge branch 'release/11.0-rc2' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69472> |
| PR | #69466 | [release/11.0] Avoid false positive prepend detection that causes backward scroll jumps- #69448 | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69466> |
| PR | #69447 | [release/11.0-rc2] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69447> |
| PR | #69471 | Harden test quarantine evidence gates | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69471> |
| PR | #69456 | [test-quarantine] Re-quarantine Http2ConnectionTests.AbortedStream_ResetsAndDrainsRequest_RefusesFramesAfterClientReset | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69456> |
| PR | #69442 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69442> |
| PR | #69458 | [test-quarantine] Unquarantine TestServerTests.WebSocketsWorks | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69458> |
| PR | #69468 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69468> |
| PR | #69470 | [Infrastructure] Update npm dependencies for release/2.3 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69470> |
| PR | #69454 | [test-quarantine] Re-quarantine AppOfflineIISExpressTests.AppOfflineDroppedWhileSiteStarting_SiteShutsDown_InProcess | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69454> |
| PR | #69446 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69446> |
| PR | #69443 | [automated] Merge branch 'release/11.0-rc2' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69443> |
| PR | #69453 | [test-quarantine] Re-quarantine HubConnectionTests.LongPollingUsesHttp2ByDefault | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69453> |
| PR | #69457 | [test-quarantine] Unquarantine WebSocketMiddlewareTests.PingTimeoutCancelsReceiveAsync | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69457> |
| PR | #69455 | [test-quarantine] Re-quarantine QuicStreamContextTests.BidirectionalStream_ServerReadsDataAndCompletes_GracefullyClosed | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69455> |
| PR | #69444 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69444> |
| PR | #69462 | Delete implementation of DeviceBoundSessions | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69462> |
| PR | #69450 | [test-quarantine] Quarantine flaky BlazorWebJsInitializersTest.InitializersRunsClassicInitializersWhenEnabled | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69450> |
| PR | #69362 | Avoid false positive prepend detection that causes backward scroll jumps | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69362> |
| PR | #69425 | Avoid logging IIS pairing token | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/69425> |
| PR | #69415 | [pr-attention-queue] Fix merge-state refresh and Pulse detector auth | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69415> |
| PR | #69424 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69424> |
| PR | #68867 | Add a /review workflow for pull requests | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68867> |
| PR | #69438 | Prevent documentation workflow tool retry loops | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69438> |
| PR | #69416 | Replace explicit command after navigation with automatic dismissing by ChromeDriver. | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69416> |
| PR | #69435 | Fix documentation workflow output handling | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69435> |
| PR | #69431 | Use shared Copilot PAT pool for docs workflow | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69431> |
| PR | #68198 | Add passkey endpoints to MapIdentityApi | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68198> |
| PR | #69437 | Fix Native AOT completion for JS-invoked Tasks | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69437> |
| PR | #69440 | [release/11.0] Replace explicit command after navigation with automatic dismissing by ChromeDriver. | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69440> |
| PR | #69426 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69426> |
| PR | #69430 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69430> |
| PR | #69417 | [release/11.0] Use a controlled external origin in redirection tests | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69417> |
| PR | #69401 | [release/11.0] Update Blazor WASM service defaults to OpenTelemetry 1.19 | merged | danroth27 | <https://github.com/dotnet/aspnetcore/pull/69401> |
| PR | #69367 | Update MessagePack to 2.5.303 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69367> |
| PR | #69423 | Use GITHUB_TOKEN for docs workflow source access | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69423> |
| PR | #68786 | Reject authentication schemes on SignalR hub methods | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68786> |
| PR | #69419 | [Infrastructure] Use inline threat detection for agentic workflows | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69419> |
| PR | #69366 | Update MessagePack 2.5.303 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69366> |
| PR | #69418 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69418> |
| PR | #69391 | Create auto-documenting workflow | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69391> |
| PR | #69379 | Stabilize and Unquarantine VirtualizationTest.ScrollToItem_AfterEndJump_LandsAtTarget | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/69379> |
| PR | #69389 | Unblock WebWorkerTemplateE2ETest  | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69389> |
| PR | #69390 | Add browser tools settings fallback endpoints | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69390> |
| PR | #69411 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69411> |
| PR | #69361 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69361> |
| PR | #69413 | [release/11.0] Add browser tools settings fallback endpoints | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69413> |
| PR | #69404 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69404> |
| PR | #69410 | [release/11.0] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69410> |
| PR | #69385 | [release/11.0] Stop shipping the obsolete Components.AI package | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/69385> |
| PR | #69414 | [release/11.0] Unblock WebWorkerTemplateE2ETest  | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69414> |
| PR | #69370 | Update MessagePack to 2.5.303 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69370> |
| PR | #69369 | Update MessagePack to 2.5.303 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69369> |
| PR | #69368 | Update MessagePack to 2.5.303 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69368> |
| PR | #69403 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69403> |
| PR | #69396 | [Infrastructure] Updated npm packages 2026-09-18 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69396> |
| PR | #69365 | Configure Gradle Wrapper retries for transient distribution downloads | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69365> |
| PR | #69371 | Don't run _CreateHelixWorkItem target for excluded projects | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69371> |
| PR | #69310 | Fix Virtualize End anchoring after initial provider load | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69310> |
| PR | #69384 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 291c2c52fe3d6079af97062f8918eda41e02e133 to e6049f34a4bf0741889f37fc26313cda7b59c46a | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69384> |
| PR | #69383 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 291c2c52fe3d6079af97062f8918eda41e02e133 to e6049f34a4bf0741889f37fc26313cda7b59c46a | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69383> |
| PR | #69286 | Fix Windows quarantined template test environment. | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69286> |
| PR | #69378 | [release/11.0] Fix Windows quarantined template test environment. | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69378> |
| PR | #69388 | [release/11.0] Fix Virtualize End anchoring after initial provider load | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69388> |
| PR | #69448 | [release/11.0] Avoid false positive prepend detection that causes backward scroll jumps | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69448> |
| PR | #69422 | Use committed local criteria and concise output for PR reviews | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69422> |
| PR | #69451 | [test-quarantine] quarantine RoutingTest.NavigationLock_CanBlockExternalNavigation | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69451> |
| PR | #69452 | [test-quarantine] quarantine NavigationLockPrerenderingTest.ExternalNavigationIsLockedAfterPrerendering | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69452> |
| PR | #69176 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69176> |
| PR | #69421 | [release/11.0] Avoid false positive prepend detection that causes backward scroll jumps | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69421> |
| PR | #66573 | Add milestone changelog gh-aw workflow | closed | JamesNK | <https://github.com/dotnet/aspnetcore/pull/66573> |
| PR | #66246 |  Fix Virtualize table-mode scrolling in CSS Grid layouts (e.g. Aspire Dashboard) | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/66246> |
| PR | #66924 | fix(SpaProxy): support pnpm installed via standalone script | closed | EduardF1 | <https://github.com/dotnet/aspnetcore/pull/66924> |
| PR | #69358 | [release/11.0] [Hosting] Avoid allocations for OpenTelemetry | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69358> |
| PR | #69476 | [automated] Merge branch 'release/11.0' => 'main' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69476> |
| PR | #69475 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69475> |
| PR | #69474 | [release/11.0-rc2] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69474> |
| PR | #69441 | Stabilize Virtualize anchor mode test setup | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69441> |
| PR | #69467 | Simplify PR review output and reviewer guidance selection | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69467> |
| PR | #69465 | Stabilize Virtualize mid-list scroll setup | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69465> |
| PR | #69464 | Document endpoint short-circuit authorization fallback behavior | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69464> |
| PR | #69460 | Fix NullReferenceException in Renderer.DispatchEventAsync for null-delegate EventCallback | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69460> |
| PR | #69463 | Require reauthentication before linking external logins | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69463> |
| PR | #69461 | [Identity] Reject semantically duplicate attestation object keys | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69461> |
| PR | #69394 | Rotate security stamp on passkey removal | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69394> |
| PR | #69445 | Log AgentContext processing exceptions | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/69445> |
| PR | #69439 | Support asp-items for datalist element | open | FestimReqi | <https://github.com/dotnet/aspnetcore/pull/69439> |
| PR | #69427 | Enhance IdentityPasskeyOptions documentation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69427> |
| PR | #69429 | Fix MVC1004 false positive for [FromServices] parameters | open | ousamabenyounes | <https://github.com/dotnet/aspnetcore/pull/69429> |
| PR | #69428 | Fix Razor Pages path combination with leading slash segments | open | pradeep-ramola | <https://github.com/dotnet/aspnetcore/pull/69428> |
| PR | #69409 | [release/9.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69409> |
| PR | #69398 | Fix empty PathBase on first IIS in-process request after startup | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/69398> |
| PR | #69397 | Skip ignored hub messages instead of stalling the SignalR connection | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/69397> |
| PR | #69399 | Reject non-positive SignalR sequence IDs | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/69399> |
| PR | #69402 | Run each hosting startup independently so one failure can't skip the rest | open | Mathiew1618 | <https://github.com/dotnet/aspnetcore/pull/69402> |
| PR | #69377 | Require reauthentication before setting a password in Identity UI | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/69377> |
| PR | #69395 | Canonicalize IDN host names in Kestrel SNI configuration | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/69395> |
| PR | #69375 | Documentation clarification WebApplicationFactoryContentRootAttribute | open | LukasChristel | <https://github.com/dotnet/aspnetcore/pull/69375> |
| Issue | #69473 | Blazor Server: a server-initiated NavigateTo whose interop reply is lost during a transient disconnect terminates the reconnected circuit one minute later | open | DevonEast | <https://github.com/dotnet/aspnetcore/issues/69473> |
| Issue | #69469 | [Blazor][Components.AI] Correct the AG-UI Dojo frontend tool sample to avoid an unnecessary UIActionBlock | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69469> |
| Issue | #69459 | [Blazor] .NET 10: NullReferenceException in Renderer.DispatchEventAsync when an event handler has a receiver but a null delegate (tracing path) | open | dmitry-pavlov | <https://github.com/dotnet/aspnetcore/issues/69459> |
| Issue | #69432 | [Native AOT] JSInvokable Task completes in .NET but invokeMethodAsync promise never settles | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69432> |
| Issue | #69449 | Quarantine Microsoft.AspNetCore.Components.E2ETests.ServerRenderingTests.BlazorWebJsInitializersTest.InitializersRunsClassicInitializersWhenEnabled | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69449> |
| Issue | #69433 | Blazor SSR: exception in OnInitializedAsync during a named-form POST bypasses ErrorBoundary and returns a bare 400 "form not found" | open | shinkathe | <https://github.com/dotnet/aspnetcore/issues/69433> |
| Issue | #69381 | QuickGrid issues duplicate ItemsProvider requests during prepend and append refreshes | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/69381> |
| Issue | #69380 | QuickGrid Start anchoring does not preserve viewport after prepending rows in Server-rendered modes | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/69380> |
| Issue | #69436 | OpenAPI document generation ignores comments on [FromHeader] properties within [AsParameters] bound types, incorrectly placing them in the requestBody part | open | deadcativan | <https://github.com/dotnet/aspnetcore/issues/69436> |
| Issue | #69434 | [aw] Failed jobs: PR Documentation Check | open | aspnetcore-docs-bot[bot] | <https://github.com/dotnet/aspnetcore/issues/69434> |
| Issue | #69387 | Blazor reconnect modal uses white instead of the system Canvas color | open | martinhrod | <https://github.com/dotnet/aspnetcore/issues/69387> |
| Issue | #69412 | Perf improvement: mTls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69412> |
| Issue | #69420 | Remove inline threat detection workaround after gh-aw update | open | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/69420> |
| Issue | #69408 | Perf improvement: csrf-accepted | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69408> |
| Issue | #69407 | Perf improvement: fortunes_ef, kestrel-hostheader-mismatch, mTls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69407> |
| Issue | #69406 | Rework ScriptTagHelper to use proper way of generating fallbacks script (no document.write) | open | ChaosEngine | <https://github.com/dotnet/aspnetcore/issues/69406> |
| Issue | #69405 | API Proposal: JSON Merge Patch (RFC 7396) for ASP.NET Core | open | lqlive | <https://github.com/dotnet/aspnetcore/issues/69405> |
| Issue | #69373 | Microsoft.AspNetCore.Server.Kestrel.BadRequests | open | jie-147 | <https://github.com/dotnet/aspnetcore/issues/69373> |
| Issue | #69386 | Output caching: authenticated-user check added to DefaultPolicy.ServeResponseAsync in 10.0.9 silently disables custom policies | open | lukasvosyka | <https://github.com/dotnet/aspnetcore/issues/69386> |
| Issue | #69392 | IIS in-process: first request after startup can get an empty PathBase because IISHttpServer.StartAsync registers callbacks before reading the virtual application path (10.0 regression) | open | PietroPPerini | <https://github.com/dotnet/aspnetcore/issues/69392> |
| Issue | #69400 | [Blazor] Update WebAssembly service defaults template to OpenTelemetry 1.19 and remove OTLP workaround | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69400> |
| Issue | #69376 | Reauthentication members on the Identity UI SetPassword page model | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/69376> |
| Issue | #69393 | Adding external login should require re-authentication | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69393> |
| Issue | #69382 | ASP0030 help link redirects to generic Bing page instead of diagnostic guidance | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/69382> |
| Issue | #5297 | Refreshing auth tokens for SignalR | closed | analogrelay | <https://github.com/dotnet/aspnetcore/issues/5297> |
| Issue | #69191 | [Blazor][Components.AI] Add a built-in default renderer for `UIActionBlock` that auto-invokes client tool calls | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/69191> |
| Issue | #66043 | Quarantine NavigationLockPrerenderingTest | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/66043> |
| Issue | #66041 | Quarantine RoutingTest.NavigationLock_CanBlockExternalNavigation | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/66041> |
| Issue | #69126 | [Validation] CacheView backed by HybridCache | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69126> |
| Issue | #69127 | [Validation] QuickGrid sorting through the URL | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69127> |
| Issue | #69104 | [Validation] Custom event registration rejects name collision with browser events | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69104> |
| Issue | #69120 | [Validation] CacheView expiration | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69120> |
| Issue | #69159 | [Validation] JavaScript functions can return ElementReference to .NET | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69159> |
| Issue | #69139 | [Validation] Keys and value lifetime for the TempData and session parameter attributes | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69139> |
| Issue | #68199 | Manage existing passkeys in MapIdentityApi() | closed | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68199> |
| Issue | #67301 | Update `MapIdentityApi()` to add endpoints for passkeys | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67301> |
| Issue | #68801 | Remove the Blazor WebAssembly Service Defaults OTLP export workaround after OpenTelemetry supports async export | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68801> |
| Issue | #66164 | Perf regression: https, https, https | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/66164> |
| Issue | #66869 | Quarantine RedirectionTest.RedirectStreamingEnhancedPostToExternal | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66869> |
| Issue | #68947 | Quarantine RedirectionTest.RedirectEnhancedNonBlazorGetToExternal is flaky | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68947> |
| Issue | #68490 | [Validation] Analyzer diagnostics for loop iterators captured in closures | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68490> |
| Issue | #62851 | CI template tests are not running with the same framework version | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/62851> |
| Issue | #68810 | [Validation] BasePath when hosting a Blazor Web App under a sub-path | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68810> |
| Issue | #68483 | [Validation] Analyzer diagnostics for JavaScript interop | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68483> |
| Issue | #69131 | [Validation] Virtualized QuickGrid: initial position, scrolling and prepended data | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69131> |
| Issue | #68488 | [Validation] Analyzer diagnostics for authentication state | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68488> |
| Issue | #68545 | [Validation] The template Error page and its persisted RequestId | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68545> |
| Issue | #68484 | [Validation] Analyzer diagnostics for unnecessary StateHasChanged calls | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68484> |
| Issue | #68644 | Quarantine VirtualizationTest.ScrollToItem_AfterEndJump_LandsAtTarget | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68644> |
| Issue | #35018 | Quarantining `InputDateInteractsWithEditContext_TimeInput` | closed | TanayParikh | <https://github.com/dotnet/aspnetcore/issues/35018> |
| Issue | #66292 | Quarantine WebWorkerTemplateE2ETest (re-quarantine after #66072) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66292> |
| Issue | #68892 | [Blazor] Creating Interactive WebAssembly or Auto apps with Container Support triggers missing launchSettings.json error popup | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68892> |
| Issue | #68894 | [Blazor] Container Support generates unnecessary Dockerfile for Client project in Interactive WebAssembly and Interactive Auto apps | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68894> |
| Issue | #69218 | Navigating away while a Web Worker operation is running can sometimes cause an unhandled error in the browser console. | closed | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/issues/69218> |
| Issue | #68881 | Automatic code fixes unavailable for BL0015 in components and BL0016 in all project types (.NET 11) | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/68881> |
| Issue | #69220 | Opening MVC F# project after dotnet run shows an unhandled exception while processing the request due to missing files in .NET 11 RC2 | closed | Chakolito | <https://github.com/dotnet/aspnetcore/issues/69220> |
| Issue | #63521 | [Blazor] Update the templates to enable adding entra support | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/63521> |
| Issue | #69364 | Retry transient network failures when bootstrapping the SignalR Java Gradle distribution | closed | mmitche | <https://github.com/dotnet/aspnetcore/issues/69364> |
| Issue | #69302 | Virtualize AnchorMode.End does not position at the end after the initial ItemsProvider result | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69302> |
| Issue | #66403 | Quarantine BlazorWebTemplateTest.BlazorWebTemplate_Works | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66403> |
| Issue | #69374 | Microsoft.AspNetCore.Server.Kestrel.BadRequests | closed | jie-147 | <https://github.com/dotnet/aspnetcore/issues/69374> |
