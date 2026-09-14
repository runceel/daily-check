# dotnet/aspnetcore

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 41 |
| クローズ (未マージ) PR     | 15 |
| 新規 PR (オープン中)       | 39 |
| 新規 Issue                 | 32 |
| クローズ Issue             | 40 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#65369](https://github.com/dotnet/aspnetcore/pull/65369) — feat(hosting): add url.query redaction for telemetry sensitive parameter （PR / open / claudiogodoy99）
  テレメトリに機密性の高いクエリパラメーターを含めるアプリケーションは、PR の redaction 方針と既存ログへの影響を確認してください。
- **非推奨/廃止** [#66377](https://github.com/dotnet/aspnetcore/pull/66377) — Use `UseNode@1` instead of the deprecated `NodeTool@0` （PR / merged / Youssef1313）
  ASP.NET Core の CI を保守する担当者は、廃止予定の `NodeTool@0` から `UseNode@1` へ移行し、各リリースブランチのワークフローを確認してください。
- **非推奨/廃止** [#66006](https://github.com/dotnet/aspnetcore/issues/66006) — Razor compiler warnings are not shown in dotnet build output （Issue / open / Schuttrim）
  Razor の警告をビルドで扱う利用者は、警告表示の欠落を回避するため対象 SDK・コンパイラーの挙動を確認し、Issue の対応状況を追跡してください。
- **非推奨/廃止** [#64372](https://github.com/dotnet/aspnetcore/issues/64372) — Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 （Issue / closed / joperezr）
  `AddRazorRuntimeCompilation` を使うアプリケーションは .NET 10 の非推奨化方針を確認し、代替の開発時コンパイル手段へ移行してください。

## 主要な変更点

- **セキュリティ**面では、ホスティングのテレメトリで機密クエリーパラメーターをマスクする変更が進行中です（#65369）。
- CI の非推奨対応として `NodeTool@0` から `UseNode@1` への移行が行われ、release/10.0 へのバックポートも実施されました（#66377、#69047）。
- 2FA のパスワードリセット競合を強化し、フォームバインディング、Blazor の検証・HTML template、KeyPerFile の非同期変更通知などの不具合を修正しました。
- release/10.0・11.0 と main のソース同期、依存関係更新、テストの quarantine 解除が多数行われています。
- Razor の runtime compilation API の非推奨化と、ビルド出力で Razor 警告が表示されない問題は、利用者側で継続確認が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69019 | Delete ML-based issue/PR labeler | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69019> |
| PR | #68902 | [test-quarantine] Unquarantine 2 reliably-passing tests | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68902> |
| PR | #69044 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69044> |
| PR | #68350 | Harden race condition when submitting 2FA during password reset | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68350> |
| PR | #69053 | [main] (deps): Bump src/submodules/googletest from `36ba75f` to `d94a732` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69053> |
| PR | #69054 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 306225d7029934938d109e18df390f04e366a68d to 96ac7c3d84e2b772f0b3a125e17482394d67a61a | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69054> |
| PR | #69055 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 306225d7029934938d109e18df390f04e366a68d to 96ac7c3d84e2b772f0b3a125e17482394d67a61a | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69055> |
| PR | #68679 | Added DotNetBuild=true target in NativeAotTestApp project | merged | ashutoshjadhav9 | <https://github.com/dotnet/aspnetcore/pull/68679> |
| PR | #69041 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69041> |
| PR | #68977 | Prevent Microsoft.AspNetCore.App.Internal.Assets from packing without framework assets | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68977> |
| PR | #69030 | Fix skill evaluation authentication and runtime | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69030> |
| PR | #69002 | Respect IBufferWriter leases after commit | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69002> |
| PR | #61667 | [Blazor] Remove build-time disabling of preloading in tests | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/61667> |
| PR | #69043 | Upgrade workflows to gh-aw v0.88.2 | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69043> |
| PR | #66779 | Fix form binding error when child object has validation errors | merged | sheiksyedm | <https://github.com/dotnet/aspnetcore/pull/66779> |
| PR | #68267 | [test-quarantine] Stabilize the NavigationLock overlapping navigation E2E test | merged | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/68267> |
| PR | #67660 | Blazor messes up standard HTMLTemplateElement <template> | merged | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67660> |
| PR | #68937 | [build-ops] Update Selenium and Playwright dependencies to latest stable versions | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68937> |
| PR | #69065 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69065> |
| PR | #67732 | Use async ChangeToken.OnChange overload in KeyPerFileConfigurationProvider | merged | svick | <https://github.com/dotnet/aspnetcore/pull/67732> |
| PR | #60884 | [release/8.0] Fix ResponseCompressionMiddleware tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/60884> |
| PR | #69033 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69033> |
| PR | #69026 | [release/11.0] Fix Blazor client-side validation support for custom attributes | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69026> |
| PR | #69013 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69013> |
| PR | #69047 | Backport UseNode@1 pipeline fix for release/10.0 | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69047> |
| PR | #66614 | Fix warning layout in build command documentation | merged | rikki3 | <https://github.com/dotnet/aspnetcore/pull/66614> |
| PR | #69012 | Add Identity to CODEOWNERS | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69012> |
| PR | #68869 | Complete triage type guidance and preserve existing types | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68869> |
| PR | #69010 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69010> |
| PR | #68969 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68969> |
| PR | #67817 | Harden KnownProxies/KnownNetworks for non-IP transports | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67817> |
| PR | #69008 | Add deterministic GH workflow PR labeler | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69008> |
| PR | #64885 | Rename ValidationRouteHandlerBuilderExtensions.cs to ValidationEndpoi… | merged | fkucukkara | <https://github.com/dotnet/aspnetcore/pull/64885> |
| PR | #65251 | OpenAPI: Prune null from enum/type in componentized schemas | merged | desjoerd | <https://github.com/dotnet/aspnetcore/pull/65251> |
| PR | #69007 | Use diagnostics IPC for non-Windows hang dump capture | merged | tommcdon | <https://github.com/dotnet/aspnetcore/pull/69007> |
| PR | #67426 | Warn on Blazor components with Dispose()/DisposeAsync() but no interface | merged | dkamburov | <https://github.com/dotnet/aspnetcore/pull/67426> |
| PR | #68972 | [release/11.0] CacheView optimizations | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68972> |
| PR | #69015 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69015> |
| PR | #68948 | [release/11.0] Update Bootstrap to 5.3.8 in templates and Identity UI | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68948> |
| PR | #68762 | [release/10.0] Fix JsonIgnore validation bypass for write-only conditions | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/68762> |
| PR | #69020 | Fix Blazor client-side validation support for custom attributes | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69020> |
| PR | #69083 | Add discussion and publishing for issue investigations | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69083> |
| PR | #68998 | Improve template navigation focus contrast | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/68998> |
| PR | #68787 | Require Selenium for browser-owned Components regressions | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68787> |
| PR | #59526 | Consume `M.A.App.Internal.Assets` from the SDK during source build | closed | MackinnonBuck | <https://github.com/dotnet/aspnetcore/pull/59526> |
| PR | #67492 | Fix tests that use AppContextSwitch | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67492> |
| PR | #69050 | [WIP] Fix certificate managers deadlocks in .NET 10 | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/69050> |
| PR | #69021 | Add deterministic test quarantine KBE shadow evaluator | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69021> |
| PR | #69038 | probe | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69038> |
| PR | #69029 | Fix skill evaluation token selection | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69029> |
| PR | #68821 | Improve agent guidance for cross-runtime Components work | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/68821> |
| PR | #68310 | [Blazor] Add Components.AI dojo and browser testing | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/68310> |
| PR | #66584 | Fix handling of get-only non-nullable properties in OpenAPI schema generation | closed | marcominerva | <https://github.com/dotnet/aspnetcore/pull/66584> |
| PR | #67456 | Add additionalProperties for JsonExtensionData schemas | closed | mete0rfish | <https://github.com/dotnet/aspnetcore/pull/67456> |
| PR | #63929 | made changes to fix xml comment not rendering properly | closed | AtolagbeMuiz | <https://github.com/dotnet/aspnetcore/pull/63929> |
| PR | #66533 | Fix race condition in FeatureReferences<T>.Fetch | closed | eocrawford | <https://github.com/dotnet/aspnetcore/pull/66533> |
| PR | #69027 | Replace IValidationMessageFormatter with ValidationAttribute.FormatMessage | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69027> |
| PR | #69106 | Fail TestServer requests as soon as the client cancels | open | georgehotca | <https://github.com/dotnet/aspnetcore/pull/69106> |
| PR | #69028 | Add issue investigation skill | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69028> |
| PR | #69074 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69074> |
| PR | #69052 | Move JSInterop under Components | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69052> |
| PR | #69063 | Add ASP.NET Core PR attention canvas | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69063> |
| PR | #69081 | Add ASP.NET Core issue triage canvas | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69081> |
| PR | #69051 | Fix certificate manager process deadlocks in .NET 10 | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69051> |
| PR | #69032 | Update AddValidation doc comment | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69032> |
| PR | #69091 | Fix focus indicator contrast in templates | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69091> |
| PR | #69094 | [test-quarantine] Quarantine flaky VirtualizationTest.InitialIndex_PendingGrowth_TallItemsBeforeTarget_KeepsTargetAligned | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69094> |
| PR | #69098 | [test-quarantine] Unquarantine Http3TimeoutTests.HEADERS_TrailerIncompleteFrameReceivedWithinRequestHeadersTimeout_StreamError | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69098> |
| PR | #69097 | [test-quarantine] Unquarantine HttpConnectionManagerTests.CriticalErrorLoggedIfApplicationDoesntComplete | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69097> |
| PR | #69096 | [test-quarantine] Quarantine flaky BlazorWebTemplateTest.BlazorWebTemplate_CanUsePasskeys and BlazorWebTemplate_CanRequireConfir
[Content truncate | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69096> |
| PR | #69036 | [release/10.0] Enable Helix Job Monitor | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69036> |
| PR | #69025 | Exclude Moq from src/Servers | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69025> |
| PR | #69089 | Revert "[test-quarantine] Quarantine flaky RedirectionTest.RedirectEnhancedNonBlazorGetToExternal" | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69089> |
| PR | #69088 | [release/11.0] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69088> |
| PR | #69087 | [main] Update dependencies from dnceng/internal/dotnet-optimization | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69087> |
| PR | #69086 | [release/11.0] Update dependencies from dnceng/internal/dotnet-optimization | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69086> |
| PR | #69085 | [release/9.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69085> |
| PR | #69084 | [main] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69084> |
| PR | #69014 | Fix spelling in HostingPathResolver method names | open | z0rimo | <https://github.com/dotnet/aspnetcore/pull/69014> |
| PR | #69071 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69071> |
| PR | #69040 | Add pull request attention queue skill | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69040> |
| PR | #69039 | Create validated KBEs for new test quarantines | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69039> |
| PR | #69075 | Honor two-factor authentication on external-login sign-in | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/69075> |
| PR | #69070 | Add Read(Span<byte>) override to MultipartReaderStream | open | SimonCropp | <https://github.com/dotnet/aspnetcore/pull/69070> |
| PR | #69069 | Forward HttpResponseStreamWriter array and string overloads to span | open | SimonCropp | <https://github.com/dotnet/aspnetcore/pull/69069> |
| PR | #69068 | Add Write(ReadOnlySpan<byte>) override to FileBufferingWriteStream | open | SimonCropp | <https://github.com/dotnet/aspnetcore/pull/69068> |
| PR | #69067 | Add Span overrides to BufferedReadStream | open | SimonCropp | <https://github.com/dotnet/aspnetcore/pull/69067> |
| PR | #69066 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69066> |
| PR | #69062 | [release/11.0] Harden race condition when submitting 2FA during password reset | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69062> |
| PR | #69042 | [release/11.0] Fix h3 connection-level and stream-level abort locking | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69042> |
| PR | #69064 | Require Selenium for browser-owned Components regressions | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69064> |
| PR | #69059 | Fix rendering of messages after tool call | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69059> |
| PR | #69037 | [SignalR] [Java] Fix hang when reading an HTTP response body fails | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69037> |
| PR | #69024 | Document LDAP group CN requirements for Negotiate roles | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69024> |
| PR | #69017 | Add generic ConsumesAttribute<T> | open | campersau | <https://github.com/dotnet/aspnetcore/pull/69017> |
| Issue | #69105 | [Validation] IJSObjectReference.DisposeAsync suppresses JSDisconnectedException | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69105> |
| Issue | #69104 | [Validation] Custom event registration rejects name collision with browser events | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69104> |
| Issue | #69101 | [OpenAPI] Nullable struct doesn't get description in schema | open | dnperfors | <https://github.com/dotnet/aspnetcore/issues/69101> |
| Issue | #69103 | New Blazor app fails after minor modification | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/69103> |
| Issue | #69102 | Blazor WebAssembly Release mode fails with mono/runtime out of sync | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/69102> |
| Issue | #69100 | Blazor WebAssembly publish fails with InvalidOperationException for publish.dotnet.js | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/69100> |
| Issue | #69093 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.InitialIndex_PendingGrowth_TallItemsBeforeTarget_Kee
[Content t | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69093> |
| Issue | #69095 | Quarantine BlazorTemplates.Tests.BlazorWebTemplateTest.BlazorWebTemplate_CanUsePasskeys and BlazorWebTemplate_CanRequireConfirme
[Content t | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69095> |
| Issue | #69072 | Revise JSInterop analzyer | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69072> |
| Issue | #69092 | [OpenTelemetry] Support configuring sensitive URL query parameters | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69092> |
| Issue | #69035 | Static SSR: stack overflow — StaticHtmlRenderer's HTML walk cycles through a disposed SectionOutletContentRenderer when a section registration races the walk | open | sskieller | <https://github.com/dotnet/aspnetcore/issues/69035> |
| Issue | #69090 | SignalR connection tokens are not bound to the endpoint that negotiated them | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69090> |
| Issue | #69076 | Perf regression: antiforgery-generation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69076> |
| Issue | #69080 | Schema transformers receive an ignored property's metadata for a polymorphic discriminator node | open | iPilot | <https://github.com/dotnet/aspnetcore/issues/69080> |
| Issue | #69079 | Perf improvement: json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69079> |
| Issue | #69078 | VS "ASP.NET Core with Angular" template: weather data never renders (zoneless CD), plus broken unit-test setup | open | ahmadakra | <https://github.com/dotnet/aspnetcore/issues/69078> |
| Issue | #69060 | AuthenticationMiddleware should prefer the authentication scheme specified in endpoint metadata | open | heku | <https://github.com/dotnet/aspnetcore/issues/69060> |
| Issue | #69077 | Enum query-parameter binding in Minimal APIs ignores [JsonConverter], unlike request/response body serialization | closed | gprossliner | <https://github.com/dotnet/aspnetcore/issues/69077> |
| Issue | #69073 | Add telemetry for ASP.NET Core analyzers to understand usages | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69073> |
| Issue | #69046 | Perf regression: json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69046> |
| Issue | #69034 | Perf improvement: tls-renegotiation-httpsys | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69034> |
| Issue | #69018 | [PersistentState] an unreadable persisted value throws during parameter supply, so the component never hydrates and nothing can catch it | closed | aryehsilver | <https://github.com/dotnet/aspnetcore/issues/69018> |
| Issue | #69061 | RateLimitingMiddleware never disposes the limiter it creates, keeping disposed hosts alive | open | themidnightgospel | <https://github.com/dotnet/aspnetcore/issues/69061> |
| Issue | #69058 | AgentContext swallows exceptions | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69058> |
| Issue | #69057 | Fix tool calls | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69057> |
| Issue | #69056 | Fix keyboard and sizing behavior | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69056> |
| Issue | #69048 | Review passkey logging and instrumentation | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/69048> |
| Issue | #69045 | `GetBrowserOptions(HttpContext)` usage in #68815 does not match the shipped API invocation | closed | irfanajaffer | <https://github.com/dotnet/aspnetcore/issues/69045> |
| Issue | #69049 | Fix certificate managers deadlocks in .NET 10 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69049> |
| Issue | #69031 | MEV analyzers: warn on polymorphic derived types registered via IJsonTypeInfoResolver | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69031> |
| Issue | #69023 | Document LDAP group common-name requirements for Negotiate role claims | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69023> |
| Issue | #69016 | Support validation of nested collections in Microsoft.Extensions.Validation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69016> |
| Issue | #66400 | [PERF] Minimal API H2 - H3 performance difference | closed | MDA2AV | <https://github.com/dotnet/aspnetcore/issues/66400> |
| Issue | #64850 | Include url.query with HTTP server activity | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/64850> |
| Issue | #68487 | [Validation] Form labels with the DisplayName and Label components | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68487> |
| Issue | #61080 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerRoutingTest.NavigationLock_OverlappingNavigationsCancelExistingNavigations_HistoryNavigation | closed | radical | <https://github.com/dotnet/aspnetcore/issues/61080> |
| Issue | #50831 | Blazor messes up standard  HTMLTemplateElement <template> | closed | datvm | <https://github.com/dotnet/aspnetcore/issues/50831> |
| Issue | #12791 | Add support for controller gen to service ref feature | closed | dougbu | <https://github.com/dotnet/aspnetcore/issues/12791> |
| Issue | #31996 | VS2019-integrated OpenAPI client support fails for multitargeted assemblies | closed | lscorcia | <https://github.com/dotnet/aspnetcore/issues/31996> |
| Issue | #34795 | Generated OpenApi source not included in build if WPF Window exists in project. | closed | programatix | <https://github.com/dotnet/aspnetcore/issues/34795> |
| Issue | #65873 | [OpenTelemetry] ASP.NET Core 11 does not fully implement the HTTP server semantic conventions | closed | martincostello | <https://github.com/dotnet/aspnetcore/issues/65873> |
| Issue | #67983 | Allow configuration of DefaultWebAssemblyRuntime JsonSerializerOptions Converters | closed | The3G | <https://github.com/dotnet/aspnetcore/issues/67983> |
| Issue | #31734 | InputDateInteractsWithEditContext_NonNullableDateTime test flakiness | closed | captainsafia | <https://github.com/dotnet/aspnetcore/issues/31734> |
| Issue | #67243 | Flaky test: InputDateInteractsWithEditContext_NullableDateTimeOffset | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/67243> |
| Issue | #36859 | Type mismatches between parameter and route constraints not caught | closed | captainsafia | <https://github.com/dotnet/aspnetcore/issues/36859> |
| Issue | #50880 | ASP0001 warning (UseAuthorization should appear between UseRouting and UseEndpoints is incorrectly reported when middleware is nested in app.Map | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/50880> |
| Issue | #45956 | `string[]` bound to querystring in minimal API should return `400` when not present | closed | andrewlock | <https://github.com/dotnet/aspnetcore/issues/45956> |
| Issue | #55118 | Support custom task types in Minimal API endpoints | closed | ericmutta | <https://github.com/dotnet/aspnetcore/issues/55118> |
| Issue | #51484 | WebApplicationFactory with no <T> auto uses Program.cs in a minimal api | closed | PureKrome | <https://github.com/dotnet/aspnetcore/issues/51484> |
| Issue | #68949 | Document `OpenApiGenerationEnvironment` MSBuild property | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68949> |
| Issue | #69000 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69000> |
| Issue | #69001 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69001> |
| Issue | #67352 | Quarantine VirtualizationCspTest.Virtualize_WithItems_DoesNotViolate_StrictStyleCspPolicy | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67352> |
| Issue | #67340 | Quarantine Microsoft.AspNetCore.Mvc.FunctionalTests.RealServerUsingMinimalBackedIntegrationTests.CanResolveServices | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67340> |
| Issue | #66824 | Harden race condition when submitting 2FA during password reset | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66824> |
| Issue | #68975 | Prevent Microsoft.AspNetCore.App.Internal.Assets from packing without framework assets | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68975> |
| Issue | #68148 | Kestrel writes response body into a transport `PipeWriter` buffer it has already `Advance`d past (no intervening `GetSpan`/`GetMemory`) | closed | mgravell | <https://github.com/dotnet/aspnetcore/issues/68148> |
| Issue | #65010 | Bug with Blazor form binding when child object has validation error | closed | neoGeneva | <https://github.com/dotnet/aspnetcore/issues/65010> |
| Issue | #68970 | Perf regression: antiforgery-noop | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68970> |
| Issue | #68122 | [dotnet-sdk-11.0.100-preview.7.26378.106] OpenMU first-time build failed with error: The "DiscoverPrecompressedAssets" task failed unexpectedly. System.ArgumentException: An item with the same key has already been added. | closed | WeiweiCaiAcpt | <https://github.com/dotnet/aspnetcore/issues/68122> |
| Issue | #64372 | Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 | closed | joperezr | <https://github.com/dotnet/aspnetcore/issues/64372> |
| Issue | #68971 | Blazor.start silently ignores unknown or misspelled startup options | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/68971> |
| Issue | #67816 | Harden KnownProxies/KnownNetworks for non-IP transports | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67816> |
| Issue | #68268 | Support unions in ValidationsGenerator | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68268> |
| Issue | #51714 | [Blazor] IDisposable Sanity check on Blazor Component | closed | naice | <https://github.com/dotnet/aspnetcore/issues/51714> |
| Issue | #69006 | Perf regression: tls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69006> |
