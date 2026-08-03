# dotnet/aspnetcore

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 56 |
| クローズ (未マージ) PR     | 13 |
| 新規 PR (オープン中)       | 27 |
| 新規 Issue                 | 39 |
| クローズ Issue             | 85 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67902](https://github.com/dotnet/aspnetcore/issues/67902) — Failed to restore dogfooding tests due to error NU1902: Package 'AngleSharp' 0.9.9 has a known moderate severity vulnerability （Issue / closed / EmilyFeng97）
  脆弱な AngleSharp 0.9.9 による dogfooding test の restore 失敗は依存更新で解消済みで、ASP.NET Core アプリ利用者への直接の移行はありません。
- **⚠ セキュリティ** [#67559](https://github.com/dotnet/aspnetcore/issues/67559) — Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData （Issue / closed / rokonec）
  Routing の fail-fast guard が全 authorization metadata 形状を検出するよう PR #67742 で修正されており、独自 metadata を使う利用者は更新版で防御強化を取り込んでください。
- **⚠ セキュリティ** [#66071](https://github.com/dotnet/aspnetcore/issues/66071) — Prototype Pollution Vulnerabilities in @middy/util （Issue / open / dfzysmy2tf-create）
  `@microsoft/signalr` の prototype pollution を主張する未検証の報告がオープン中のため、JavaScript client 利用者は正式な triage と advisory の有無を継続確認してください。
- **非推奨/廃止** [#67984](https://github.com/dotnet/aspnetcore/pull/67984) — Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom （PR / open / Copilot）
  JsonPatch.STJ の `OperationBase.ShouldSerializeFrom` を obsolete にする PR は未マージであり、直接参照しているコードは今後の代替 API と警告内容を確認する必要があります。
- **非推奨/廃止** [#67953](https://github.com/dotnet/aspnetcore/pull/67953) — [release/11.0-preview7]: Map [Obsolete] to deprecated in OpenAPI （PR / merged / Copilot）
  .NET 11 Preview 7 の OpenAPI 出力に `[Obsolete]` 由来の `deprecated: true` が追加されるため、document snapshot と downstream code generation の差分を確認してください。
- **非推奨/廃止** [#67862](https://github.com/dotnet/aspnetcore/pull/67862) — Deprecate the Blazor WebAssembly DevServer package （PR / merged / Copilot）
  standalone Blazor WebAssembly の開発ホスト利用者は、非推奨となった DevServer から `Microsoft.AspNetCore.Components.Gateway` への移行を計画してください。
- **非推奨/廃止** [#67134](https://github.com/dotnet/aspnetcore/issues/67134) — Deprecate Microsoft.AspNetCore.Grpc.Swagger （Issue / closed / danroth27）
  `Microsoft.AspNetCore.Grpc.Swagger` は PR #67919 で削除されたため、利用者は `Swashbuckle.AspNetCore` または gRPC JSON transcoding へ移行する必要があります。
- **非推奨/廃止** [#66355](https://github.com/dotnet/aspnetcore/pull/66355) — Map [Obsolete] attribute to deprecated in OpenAPI documents （PR / merged / fickleEfrit）
  main branch でも endpoint、type、property の `[Obsolete]` が自動的に OpenAPI の deprecated flag へ反映され、抑制が必要な場合は transformer で上書きします。
- **非推奨/廃止** [#62761](https://github.com/dotnet/aspnetcore/issues/62761) — Obsolete legacy Blazor hosting models in favor of the unified Blazor Web App model （Issue / open / danroth27）
  legacy Blazor Server / hosted WebAssembly model の obsolete 化はまだ提案段階で、該当アプリは unified Blazor Web App への移行上の不足機能を確認しておく必要があります。

## 主要な変更点

- PR #67862 で Blazor WebAssembly DevServer package が非推奨となり、後継の `Microsoft.AspNetCore.Components.Gateway` と起動時の移行警告が追加されました。
- PR #67919 では experimental な `Microsoft.AspNetCore.Grpc.Swagger` が削除され、Swashbuckle または gRPC JSON transcoding が推奨移行先です。
- PR #66355 と Preview 7 backport #67953 により、`[Obsolete]` な endpoint / schema / property が OpenAPI の `deprecated: true` へ自動反映されます。
- authorization metadata guard の不足は PR #67742 で修正され、SignalR でも stateful reconnect と `negotiateVersion` parsing の hardening が入りました。未検証の prototype pollution 報告 #66071 は継続監視が必要です。
- Kestrel は HTTP/1.1 CONNECT の RFC 9931 §8 対応を追加し、Data Protection の forced refresh による thread pool starvation も修正されました。
- Blazor / QuickGrid / Virtualize では Gateway CLI、scroll position API、viewport drift や scroll jump の修正がまとまって入りました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67996 | [main] (deps): Bump src/submodules/googletest from `4141c38` to `a503186` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67996> |
| PR | #67997 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from d251ce39e611c4662478b973f9c90b628276c3e6 to b166c7e04055f96bcfe4b58ee1205cc9f24e2020 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67997> |
| PR | #67998 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from d251ce39e611c4662478b973f9c90b628276c3e6 to b166c7e04055f96bcfe4b58ee1205cc9f24e2020 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67998> |
| PR | #67877 | [test-quarantine] Unquarantine Http2ConnectionTests.RequestHeaderStringReuse_MultipleStreams_KnownHeaderReused | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67877> |
| PR | #68002 | Add failure-frequency stats and build links to quarantine issues | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68002> |
| PR | #67986 | Fix KeyRingProvider thread pool starvation on forced refresh | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67986> |
| PR | #67821 |  Handle passing a Func expression to Map* in ValidationsGenerator and RDG | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67821> |
| PR | #67967 | Optimize TextOutputFormatter Accept-Charset sort | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67967> |
| PR | #67599 | Creating Blazor Gateway CLI package and tests | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67599> |
| PR | #68005 | [release/11.0-preview7] Streamline localization in Microsoft.Extensions.Validation | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68005> |
| PR | #67999 | [release/11.0-preview7]  Handle passing a Func expression to Map* in ValidationsGenerator and RDG | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67999> |
| PR | #67987 | Streamline localization in Microsoft.Extensions.Validation | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67987> |
| PR | #67959 | Virtualize tests with `ItemProvider` should always contain a delay | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67959> |
| PR | #67918 | Reshape BrowserOptions server-to-client configuration API per review | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67918> |
| PR | #67978 | Fix flaky QuickGrid paginator E2E test by waiting for rerender completion | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/67978> |
| PR | #67990 | [release/11.0-preview7] Creating Blazor Gateway CLI package and tests | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67990> |
| PR | #67989 | [release/11.0-preview7] Update the weather page in the Blazor Web App template to persist prerendered state | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67989> |
| PR | #67975 | [release/11.0-preview7]: Move the abstract `Validatable*Info` from Microsoft.Extensions.Validation to be source-generated | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67975> |
| PR | #67971 | [release/11.0-preview7] Respect IModelNameProvider when matching OpenAPI parameters | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67971> |
| PR | #67968 | [release/11.0-preview7] Ignore From when serializing a JsonPatchDocument for add, remove, rep… | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67968> |
| PR | #67953 | [release/11.0-preview7]: Map [Obsolete] to deprecated in OpenAPI | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67953> |
| PR | #67789 | [Kestrel] Deflake HTTP/2 connection closing tests | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/67789> |
| PR | #67929 | Implement RFC 9931 §8 for HTTP/1.1 CONNECT in Kestrel | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67929> |
| PR | #67049 | Clear cached session key in cookie auth handler sign-out | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/67049> |
| PR | #67942 | Improve antiforgery error message for unauthenticated requests with authenticated tokens | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67942> |
| PR | #67919 | Drop Microsoft.AspNetCore.Grpc.Swagger | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67919> |
| PR | #67896 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67896> |
| PR | #67935 | Fix QuickGrid Start-mode async-provider prepend viewport drift. | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67935> |
| PR | #67828 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67828> |
| PR | #67928 | Fix url normalizer backslashes | merged | Vladik29w | <https://github.com/dotnet/aspnetcore/pull/67928> |
| PR | #67931 | Fix QuickGrid None-mode async-provider prepend viewport drift  | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67931> |
| PR | #67905 | Enable prepend/append detection with the default `ItemComparer` in `Virtualize<TItem>` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67905> |
| PR | #67549 | Remove DataAnnotations' ValidationContext from MEV public API | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67549> |
| PR | #67917 | Rename ConfigureHostApplicationBuilder to ConfigureWebApplicationBuilder | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67917> |
| PR | #67914 | Expose InitialItemIndex parameter and ScrollToItemAsync method on QuickGrid  | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67914> |
| PR | #67862 | Deprecate the Blazor WebAssembly DevServer package | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67862> |
| PR | #67900 | Adding analyzer to warn about JSInterop calls not wrapped in a try catch block | merged | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/67900> |
| PR | #67921 | Delete dead code in DelegateOpenApiDocumentTransformer | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67921> |
| PR | #67985 | Issue triage agent: require issue_read when the event payload is empty | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67985> |
| PR | #67956 | Move the abstract `Validatable*Info` from Microsoft.Extensions.Validation to be source-generated | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67956> |
| PR | #64535 | Respect IModelNameProvider when matching OpenAPI parameters | merged | khellang | <https://github.com/dotnet/aspnetcore/pull/64535> |
| PR | #64457 | Ignore From when serializing a JsonPatchDocument for add, remove, rep… | merged | akshay-zz | <https://github.com/dotnet/aspnetcore/pull/64457> |
| PR | #64644 | Update the weather page in the Blazor Web App template to persist prerendered state | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/64644> |
| PR | #67879 | [test-quarantine] Unquarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67879> |
| PR | #67878 | [test-quarantine] Unquarantine RedirectionTest.RedirectStreamingEnhancedGetToInternal | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67878> |
| PR | #67962 | Fix issue-triage-agent: correct MCP tool name and read issue from payload | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67962> |
| PR | #67950 | [Infrastructure] Updated npm packages 2026-07-21 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67950> |
| PR | #67949 | Update IdentityModelVersion to 8.19.2 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67949> |
| PR | #67742 | Fix authz metadata guard consistency | merged | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/67742> |
| PR | #67409 | Harden SignalR stateful reconnect. | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67409> |
| PR | #67908 | Harden SignalR `negotiateVersion` parsing. | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67908> |
| PR | #66355 | Map [Obsolete] attribute to deprecated in OpenAPI documents | merged | fickleEfrit | <https://github.com/dotnet/aspnetcore/pull/66355> |
| PR | #67973 | [release/11.0-preview7] Fix Virtualize scroll jump from native/JS anchoring double-compensation | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67973> |
| PR | #67934 | Fix Virtualize scroll jump from native/JS anchoring double-compensation | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67934> |
| PR | #67938 | Fix QuickGrid End-mode async-provider prepend viewport drift | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67938> |
| PR | #67943 | [release/8.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67943> |
| PR | #68006 | [release/11.0-preview7] Streamline localization in Microsoft.Extensions.Validation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68006> |
| PR | #62607 | QuickGrid: Adds option to disable rendering of filler rows | closed | los93sol | <https://github.com/dotnet/aspnetcore/pull/62607> |
| PR | #66060 | Fix/non asset framework files | closed | NetherGranite | <https://github.com/dotnet/aspnetcore/pull/66060> |
| PR | #66159 | [blazor] Add parameter to ErrorBoundary to let it render ChildContent when an exception was thrown | closed | zachneu | <https://github.com/dotnet/aspnetcore/pull/66159> |
| PR | #67974 | Fix duplicate SetParametersAsync invocations when route and query parameters change together | closed | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/67974> |
| PR | #65827 | Fix OpenAPI request body description uses wrong parameter comment | closed | BloodShop | <https://github.com/dotnet/aspnetcore/pull/65827> |
| PR | #66915 | Prevent null 'from' property from being serialized | closed | bbratic | <https://github.com/dotnet/aspnetcore/pull/66915> |
| PR | #67748 | Update IdentityModelVersion to latest | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67748> |
| PR | #66550 | Add OpenAPI API proposal for versioning extensibility | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/66550> |
| PR | #63475 | SignalR: Throw exception when method does not exist. | closed | naeemaei | <https://github.com/dotnet/aspnetcore/pull/63475> |
| PR | #63241 | Improve antiforgery error message for unauthenticated users with authenticated tokens | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/63241> |
| PR | #67941 | [DO NOT MERGE] Install Scripts Update Validation PR | closed | ellahathaway | <https://github.com/dotnet/aspnetcore/pull/67941> |
| PR | #67781 | Fix Virtualize scroll jump caused by native overflow-anchor double compensation | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67781> |
| PR | #68015 | Reject malformed SNI server names in Kestrel's SniOptionsSelector | open | TemRevil | <https://github.com/dotnet/aspnetcore/pull/68015> |
| PR | #67984 | Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67984> |
| PR | #67993 | Add MEV analyzers | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67993> |
| PR | #68022 | [test-quarantine] Quarantine FormWithParentBindingContextTest.CanDisplayBindingErrorsCollectionsToDefaultForm | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68022> |
| PR | #68020 | [test-quarantine] Quarantine HubConnectionTests authentication refresh tests | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68020> |
| PR | #68018 | [test-quarantine] Quarantine ServerVirtualizationTest.QuickGrid_AnchorMode_Top_AppendKeepsViewportStable | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68018> |
| PR | #68016 | [test-quarantine] Re-quarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68016> |
| PR | #68012 | Configure Dependabot to update NuGet dependencies not automated by Maestro | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68012> |
| PR | #68014 | Move to Roslyn's unified ExternalAccess library | open | JoeRobich | <https://github.com/dotnet/aspnetcore/pull/68014> |
| PR | #68007 | Integrate Helix Job Monitor into all Helix-submitting pipelines | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68007> |
| PR | #67964 | Add SignalR TypeScript auth refresh | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67964> |
| PR | #68008 | Fix SignalR reconnect identity bypass with EnableAuthenticationRefresh | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68008> |
| PR | #67977 | Improve Sections warning messaging | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67977> |
| PR | #67939 | Throw from client IInvocationBinder.GetParameterTypes when the target method does not exist | open | Arul1998 | <https://github.com/dotnet/aspnetcore/pull/67939> |
| PR | #67936 | Fix  InitialItemIndex viewport underfill for small indices | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67936> |
| PR | #68001 | [release/10.0] Fix KeyRingProvider thread pool starvation on forced refresh | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68001> |
| PR | #67995 | Harden SocialSample FailureMessage rendering | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67995> |
| PR | #67988 | Fix InputNumber validation for scientific notation values | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67988> |
| PR | #67970 | Fix draggable Attribute Rendering for Blazor Elements | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/67970> |
| PR | #67972 | Use fully qualified names, including `global::`, in OpenAPI XML generator output | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67972> |
| PR | #67969 | Add JSInterop analyzer ensuring 'IsInteractive' is checked before using it. | open | skrustev | <https://github.com/dotnet/aspnetcore/pull/67969> |
| PR | #67961 | Fix memory leak in the SignalR Java client stream() | open | ilyagorbunov | <https://github.com/dotnet/aspnetcore/pull/67961> |
| PR | #67976 | Fix ReturnUrl/query parameter lost during enhanced navigation redirect with active interactive circuit | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67976> |
| PR | #67955 | [release/8.0] Drop Microsoft.AspNetCore.Grpc.Swagger | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67955> |
| PR | #67952 | [release/10.0] Drop Microsoft.AspNetCore.Grpc.Swagger | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67952> |
| PR | #67954 | [release/9.0] Drop Microsoft.AspNetCore.Grpc.Swagger | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67954> |
| PR | #67944 | Fix UseAuthorization failing without routing registered (#53332) | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67944> |
| Issue | #68029 | Perf improvement: antiforgery-generation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68029> |
| Issue | #68030 | Perf regression: multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68030> |
| Issue | #68028 | Perf improvement: kestrel-hostheader-mismatch, tls-renegotiation-kestrel, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68028> |
| Issue | #68026 | Perf regression: antiforgery-noop, json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68026> |
| Issue | #68027 | Perf regression: json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68027> |
| Issue | #68024 | Perf improvement: antiforgery-generation, antiforgery-validation, mTls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68024> |
| Issue | #68023 | Perf improvement: antiforgery-validation, kestrel-header-symbols, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68023> |
| Issue | #68025 | Perf improvement: antiforgery-generation, fortunes, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68025> |
| Issue | #68009 | Perf improvement: single_query | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68009> |
| Issue | #68010 | Perf regression: antiforgery-validation, kestrel-header-symbols, tls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68010> |
| Issue | #68021 | Quarantine FormWithParentBindingContextTest.CanDisplayBindingErrorsCollectionsToDefaultForm | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68021> |
| Issue | #68019 | Quarantine HubConnectionTests.RefreshingAuth* (authentication refresh functional tests) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68019> |
| Issue | #68017 | Quarantine ServerVirtualizationTest.QuickGrid_AnchorMode_Top_AppendKeepsViewportStable | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68017> |
| Issue | #68011 | Perf regression: antiforgery-generation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68011> |
| Issue | #68013 | Use Roslyn's unified ExternalAccess library | open | JoeRobich | <https://github.com/dotnet/aspnetcore/issues/68013> |
| Issue | #68004 | Blazor WASM: page is instantiated twice when navigating between pages with different layouts | open | maraf | <https://github.com/dotnet/aspnetcore/issues/68004> |
| Issue | #68000 | Docker build fails while installing .NET SDK 8.0 for Azure Function App | open | darshan-vebuin | <https://github.com/dotnet/aspnetcore/issues/68000> |
| Issue | #67994 | Harden SocialSample's handling of FailureMessage | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67994> |
| Issue | #67992 | Improve formatting of summaries in OpenAPI output | open | Timovzl | <https://github.com/dotnet/aspnetcore/issues/67992> |
| Issue | #67991 | Setup JwtBearer authentication with faulty authority should crash | open | svrooij | <https://github.com/dotnet/aspnetcore/issues/67991> |
| Issue | #67965 | Improve Accept-Charset sorting in TextOutputFormatter | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67965> |
| Issue | #67947 | Perf regression: fortunes, tls-renegotiation-kestrel, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67947> |
| Issue | #67983 | Allow configuration of DefaultWebAssemblyRuntime JsonSerializerOptions Converters | open | The3G | <https://github.com/dotnet/aspnetcore/issues/67983> |
| Issue | #67981 | HTTP/3: QPackDecoder can throw IndexOutOfRangeException / HPackDecodingException that ProcessHeadersFrameAsync doesn't catch | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67981> |
| Issue | #67980 | Blazor Web: exception during WASM root component activation is silently discarded — InteractiveAuto page stays a dead prerender with no error and no Server fallback | open | alexaka1 | <https://github.com/dotnet/aspnetcore/issues/67980> |
| Issue | #67979 | Blazor WebAssembly loading progress decreases from 100% to 98% | open | RoellinRacing | <https://github.com/dotnet/aspnetcore/issues/67979> |
| Issue | #67963 | IAKerb support | open | jhudsoncedaron | <https://github.com/dotnet/aspnetcore/issues/67963> |
| Issue | #67960 | Microsoft.Extensions.Validation API stabilization for .NET 11 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67960> |
| Issue | #67966 | Obsolete `OperationBase.ShouldSerializeFrom` from JsonPatch.STJ | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67966> |
| Issue | #67957 | validating the service descriptor for PinnedBlockMemoryPoolFactory fails when a custom scoped TimeProvider is registered | open | jjanuszkiewicz | <https://github.com/dotnet/aspnetcore/issues/67957> |
| Issue | #67958 | Cleanup custom handling of Obsolete attribute once we get updates from STJ flowing | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67958> |
| Issue | #67948 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/67948> |
| Issue | #67945 | Perf improvement: json, multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67945> |
| Issue | #67946 | Perf regression: caching, single_query, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67946> |
| Issue | #67940 | Microsoft.OpenApi Deprecated Issue | closed | MaxAllan-Smith | <https://github.com/dotnet/aspnetcore/issues/67940> |
| Issue | #67937 | Add OpenApiOption property to disable OpenAPI XML documentation generation | open | UniMichael | <https://github.com/dotnet/aspnetcore/issues/67937> |
| Issue | #67933 | Virtualize doesn't render items for small `InitialIndex` until the first scroll | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67933> |
| Issue | #67932 | Dependency problem with Microsoft.AspNetCore.OpenApi | closed | OgreTransporter | <https://github.com/dotnet/aspnetcore/issues/67932> |
| Issue | #67930 | The `Microsoft.AspNetCore.OpenApi` nuget package version 10.0.x nuget dependency to `Microsoft.OpenApi` v2.0.0 is incorrect and it should be constrained | closed | eriawan | <https://github.com/dotnet/aspnetcore/issues/67930> |
| Issue | #64395 | Microsoft.AspNetCore.OpenApi: The route template cannot start with a '~' character | closed | dp-sgr | <https://github.com/dotnet/aspnetcore/issues/64395> |
| Issue | #64425 | OpenApiXmlCommentSupport borked when used with document transformers when using Microsoft.AspNetCore.OpenApi 10.0.0 | closed | J35P1N | <https://github.com/dotnet/aspnetcore/issues/64425> |
| Issue | #64520 | Build performance degradation caused by Microsoft.Extensions.Validation.ValidationsGenerator | closed | JakubLinhart | <https://github.com/dotnet/aspnetcore/issues/64520> |
| Issue | #66120 | Quarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66120> |
| Issue | #67134 | Deprecate Microsoft.AspNetCore.Grpc.Swagger | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67134> |
| Issue | #65915 | Quarantine Microsoft.AspNetCore.Server.Kestrel.Core.Tests.Http2ConnectionTests.RequestHeaderStringReuse_MultipleStreams_KnownHea
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/65915> |
| Issue | #64146 | Sign aspnetcore runtime archives and publish detached signatures as part official builds | closed | MichaelSimons | <https://github.com/dotnet/aspnetcore/issues/64146> |
| Issue | #30503 | [release/2.1] Microsoft.AspNetCore.Identity.UI does not build correctly | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/30503> |
| Issue | #66393 | API Proposal: BrowserOptions for server-to-client configuration | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66393> |
| Issue | #67350 | Quarantine QuickGridInteractiveTest.PaginatorCorrectItemsPerPage (StaleElementReferenceException) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67350> |
| Issue | #66380 | KeyRingProvider causes thread pool starvation on cold start in .NET 10 | closed | ivan-stp | <https://github.com/dotnet/aspnetcore/issues/66380> |
| Issue | #57337 | [Question] Is there a way to properly emulate InvalidModelStateResponseFactory in minimal apis? | closed | michaeltg17 | <https://github.com/dotnet/aspnetcore/issues/57337> |
| Issue | #64381 | Blazor app with RCL and UseStaticFiles will not server blazor.web.js in .NET 10 | closed | TimPurdum | <https://github.com/dotnet/aspnetcore/issues/64381> |
| Issue | #51205 | Update the weather page in the Blazor Web App template to persist prerendered state | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/51205> |
| Issue | #53678 | Improve Error Message and/or Docs around InvariantGlobalization true by default | closed | ardalis | <https://github.com/dotnet/aspnetcore/issues/53678> |
| Issue | #57980 | OpenApi Flags enum not handled correctly | closed | dnv-kimbell | <https://github.com/dotnet/aspnetcore/issues/57980> |
| Issue | #65005 | Perf regression: antiforgery-generation, fortunes_ef | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65005> |
| Issue | #65009 | Perf regression: fortunes, fortunes_dapper | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65009> |
| Issue | #65091 | Perf regression: kestrel-encoded-url | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65091> |
| Issue | #65106 | Perf regression: https, httpsys-encoded-url, mTls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65106> |
| Issue | #65214 | Perf regression: fortunes | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65214> |
| Issue | #65240 | Perf regression: https | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65240> |
| Issue | #65246 | Perf regression: mvc, mvc | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65246> |
| Issue | #65258 | Perf regression: https, mvc, tls-handshakes-httpsys | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65258> |
| Issue | #65270 | Perf regression: mvc | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65270> |
| Issue | #65385 | Perf regression: tls-renegotiation-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65385> |
| Issue | #65582 | Perf regression: https, kestrel-hostheader-mismatch, tls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65582> |
| Issue | #65583 | Perf regression: mTls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65583> |
| Issue | #65570 | Perf regression: single_query | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/65570> |
| Issue | #67139 | Perf regression: https, json, tls-renegotiation-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67139> |
| Issue | #67982 | [API Proposal] SqlServerCache: exposing sql connection factory | closed | ricsiLT | <https://github.com/dotnet/aspnetcore/issues/67982> |
| Issue | #67729 | Virtualize unexpectedly jumps to the beginning/end of the list while scrolling after PR #65951 (.NET 11 Preview 4 regression) | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/67729> |
| Issue | #66861 | Add support to gRPC Swagger for AIP style endpoints | closed | adam8797 | <https://github.com/dotnet/aspnetcore/issues/66861> |
| Issue | #64879 | gRPC SwaggerGen does not handle conflicting paths | closed | adam8797 | <https://github.com/dotnet/aspnetcore/issues/64879> |
| Issue | #65805 | OpenAPI document generation uses wrong XML comments | closed | dosolkowski-work | <https://github.com/dotnet/aspnetcore/issues/65805> |
| Issue | #67076 | Check BindingSource when emitting OpenAPI spec for parameters | closed | khellang | <https://github.com/dotnet/aspnetcore/issues/67076> |
| Issue | #64534 | [OpenAPI] XML comment for parameter is not found when operation parameter name doesn't match the action parameter name | closed | khellang | <https://github.com/dotnet/aspnetcore/issues/64534> |
| Issue | #64521 | Open API documentation is not generated from XML comments with header parameters | closed | vijuhe | <https://github.com/dotnet/aspnetcore/issues/64521> |
| Issue | #64123 | JsonPatch.SystemTextJson: When serializing a `JsonPatchDocument`, "value":null is incorrectly emitted for "remove", "move" and "copy" operations. | closed | dbc2 | <https://github.com/dotnet/aspnetcore/issues/64123> |
| Issue | #63862 | JsonPatch.SystemTextJson: When serializing a `JsonPatchDocument`, `"from":null` is incorrectly emitted for "add", "remove", "replace" and "test" operations. | closed | dbc2 | <https://github.com/dotnet/aspnetcore/issues/63862> |
| Issue | #62855 | Improve disposal of Blazor server resources for disconnected clients | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/62855> |
| Issue | #66709 | Quarantine RedirectionTest.RedirectStreamingEnhancedGetToInternal | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66709> |
| Issue | #64671 | [Blazor] Does @bind-{PARAMETER}:set behave differently than {PARAMETER}Changed for component parameters? | closed | UniMichael | <https://github.com/dotnet/aspnetcore/issues/64671> |
| Issue | #50548 | [Blazor] Remove obsolete APIs | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/50548> |
| Issue | #63457 | [Blazor] Blazor Webassembly HotReload logging | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/63457> |
| Issue | #59468 | [Blazor] Get rid of special webassembly behavior in the static web assets SDK | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/59468> |
| Issue | #64893 | Static Server-Side Rendering Feature Parity | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64893> |
| Issue | #30116 | [Blazor] Provide the ability to flow configuration from the host to the browser | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/30116> |
| Issue | #65875 | Blazor Hybrid (WebViewRenderer) should support per-page/component render modes as no-ops | closed | mattleibow | <https://github.com/dotnet/aspnetcore/issues/65875> |
| Issue | #66878 | [Blazor] GenerateE2EManifest task crashes with MissingMethodException on JsonObjectInfoValues<T>.set_PolymorphismOptions in Preview 5 | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/66878> |
| Issue | #66879 | Standalone Blazor WebAssembly app log output is very verbose on .NET 11 Preview 5 | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/66879> |
| Issue | #66882 | Clean up Blazor WebAssembly Service Defaults template | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/66882> |
| Issue | #67778 | QUERY verb support | closed | blowdart | <https://github.com/dotnet/aspnetcore/issues/67778> |
| Issue | #64892 | Blazor Form Validation Enhancements | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64892> |
| Issue | #64889 | Virtualize support for controlling scroll position | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64889> |
| Issue | #65161 | Make Microsoft.Extensions.Validation no longer experimental | closed | IeuanWalker | <https://github.com/dotnet/aspnetcore/issues/65161> |
| Issue | #67747 | Make GetValidationAttributes virtual instead of abstract | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67747> |
| Issue | #67454 | [API proposal]: `ValidatablePropertyInfo.GetPropertyValue(object containingObject)` | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67454> |
| Issue | #63494 | OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute | closed | desjoerd | <https://github.com/dotnet/aspnetcore/issues/63494> |
| Issue | #67922 | Different antiforgery behavior on Windows and Linux ASPNET Core 11 preview | closed | ladeak | <https://github.com/dotnet/aspnetcore/issues/67922> |
| Issue | #67559 | Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/67559> |
| Issue | #67311 | Harden SignalR stateful reconnect with different NameIdentifier by rejecting it instead of only logging it | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67311> |
| Issue | #67751 | Connection downgrades to negotiateVersion=0 when hub URL contains the substring negotiateVersion | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67751> |
| Issue | #63218 | Better error message for AntiforgeryValidationException: The provided antiforgery token was meant for a different claims-based user than the current user | closed | davhdavh | <https://github.com/dotnet/aspnetcore/issues/63218> |
| Issue | #65228 | Package conflicts between Microsoft.AspNetCore.Grpc.Swagger and Microsoft.AspNetCore.OpenApi in .NET 10 | closed | jeremeevans | <https://github.com/dotnet/aspnetcore/issues/65228> |
| Issue | #61501 | [Blazor] Improve authentification and usage of web apis (docs improvements) | closed | MarvinKlein1508 | <https://github.com/dotnet/aspnetcore/issues/61501> |
| Issue | #63688 | Update to the latest msal.js version | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/63688> |
| Issue | #67812 | Fix scheme-relative behavior in Rewrite middleware | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67812> |
| Issue | #67895 | Debugging Blazor Server app 'Edit and Continue' says 'Applying code updates' when no source changed | closed | silentdiverchris | <https://github.com/dotnet/aspnetcore/issues/67895> |
| Issue | #67004 | ValidationContext passed to IsValid method of validation attributes always has root ValidatableType as the ObjectInstance | closed | BurningLights | <https://github.com/dotnet/aspnetcore/issues/67004> |
| Issue | #67550 | Remove DataAnnotations dependency in MEV public API | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67550> |
| Issue | #67393 | Consider renaming `ConfigureHostApplicationBuilder` to `ConfigureWebApplicationBuilder` | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67393> |
| Issue | #67857 | Deprecate the Microsoft.AspNetCore.Components.WebAssembly.DevServer package | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67857> |
| Issue | #67306 | [Blazor] Analyzer to warn about JSInterop calls not wrapped in a try catch block | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67306> |
| Issue | #64317 | Auto-updates to Microsoft.OpenApi 3.0.0 don't work with .NET 10 | closed | jacobrillema | <https://github.com/dotnet/aspnetcore/issues/64317> |
