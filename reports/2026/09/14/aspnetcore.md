# dotnet/aspnetcore

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 59 |
| クローズ (未マージ) PR     | 12 |
| 新規 PR (オープン中)       | 54 |
| 新規 Issue                 | 66 |
| クローズ Issue             | 49 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69257](https://github.com/dotnet/aspnetcore/pull/69257) — Drop MVC F# project template support （PR / open / Copilot）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **⚠ セキュリティ** [#67730](https://github.com/dotnet/aspnetcore/pull/67730) — Rename private static fields to use s_ prefix (part 1) （PR / closed / BekAllaev）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **⚠ セキュリティ** [#64280](https://github.com/dotnet/aspnetcore/issues/64280) — Microsoft.AspNetCore.Razor.Design package contains vulnerable Newtonsoft.Json.dll CVE-2024-21907 （Issue / closed / boi2ot）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **非推奨/廃止** [#69114](https://github.com/dotnet/aspnetcore/pull/69114) — Update MVC F# project template to resolve deprecated warnings （PR / merged / Copilot）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **非推奨/廃止** [#69113](https://github.com/dotnet/aspnetcore/issues/69113) — MVC F# project build with warning "FS0044: This construct is deprecated", should update the project template. （Issue / closed / jinzhao1127）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **非推奨/廃止** [#69107](https://github.com/dotnet/aspnetcore/issues/69107) — Kestrel Libuv Transport NuGet package is not marked deprecated （Issue / closed / Arthri）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。

## 主要な変更点

- 対象期間中の主要変更を確認し、実装・依存関係・テスト基盤の更新を整理しました。
- 重要度付きの変更は、既存利用者の互換性とセキュリティ確認を優先してください。
- 詳細は下表の各 PR / Issue とリンク先で確認できます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69240 | Restrict JavaScript root component operations | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69240> |
| PR | #69197 | Update identity redirect handling | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69197> |
| PR | #69187 | Fix unbounded request decompression on IIS out-of-process (MaxRequestBodySize) | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69187> |
| PR | #69039 | Add validated Known Build Error support to test quarantine | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69039> |
| PR | #69221 | Enable QuickGrid anchoring tests | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69221> |
| PR | #69228 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 96ac7c3d84e2b772f0b3a125e17482394d67a61a to bb31c98899c1070a3b82333ead0a8663fc2c0c12 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69228> |
| PR | #69227 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 96ac7c3d84e2b772f0b3a125e17482394d67a61a to bb31c98899c1070a3b82333ead0a8663fc2c0c12 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69227> |
| PR | #68194 | Support conditional passkey creation | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68194> |
| PR | #69210 | [ResponseCaching] Correctly handle Vary: * in delimited or multi-value headers (RFC 9111) | merged | Sadik00789 | <https://github.com/dotnet/aspnetcore/pull/69210> |
| PR | #69206 | [release/11.0] [SignalR] [Java] Fix hang when reading an HTTP response body fails | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69206> |
| PR | #69207 | [release/10.0] [SignalR] [Java] Fix hang when reading an HTTP response body fails | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69207> |
| PR | #69208 | [release/9.0] [SignalR] [Java] Fix hang when reading an HTTP response body fails | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69208> |
| PR | #69209 | [release/8.0] [SignalR] [Java] Fix hang when reading an HTTP response body fails | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69209> |
| PR | #69066 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69066> |
| PR | #69005 | Handle zero size hints in Http1OutputProducer | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69005> |
| PR | #69037 | [SignalR] [Java] Fix hang when reading an HTTP response body fails | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69037> |
| PR | #69175 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69175> |
| PR | #69199 | Add pull request attention queue skill | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69199> |
| PR | #69147 | Add Blazor Components architecture overview | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69147> |
| PR | #69052 | Move JSInterop under Components | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69052> |
| PR | #69186 | Properly validate segments and cap cache of pathDescriptors | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69186> |
| PR | #69172 | [test-quarantine] Stabilize Virtualization Home/End test assertions | merged | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69172> |
| PR | #66968 | Add build-time analyzer for invalid Virtualize spacer elements | merged | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/66968> |
| PR | #69158 | [SignalR] Fix CTS disposal | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69158> |
| PR | #69051 | Fix certificate manager process deadlocks in .NET 10 | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69051> |
| PR | #68743 | Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | merged | amf-fs | <https://github.com/dotnet/aspnetcore/pull/68743> |
| PR | #69084 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69084> |
| PR | #69096 | [test-quarantine] Quarantine flaky BlazorWebTemplateTest.BlazorWebTemplate_CanUsePasskeys and BlazorWebTemplate_CanRequireConfir
[Content truncate | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69096> |
| PR | #69097 | [test-quarantine] Unquarantine HttpConnectionManagerTests.CriticalErrorLoggedIfApplicationDoesntComplete | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69097> |
| PR | #69094 | [test-quarantine] Quarantine flaky VirtualizationTest.InitialIndex_PendingGrowth_TallItemsBeforeTarget_KeepsTargetAligned | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69094> |
| PR | #69098 | [test-quarantine] Unquarantine Http3TimeoutTests.HEADERS_TrailerIncompleteFrameReceivedWithinRequestHeadersTimeout_StreamError | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69098> |
| PR | #69089 | Revert "[test-quarantine] Quarantine flaky RedirectionTest.RedirectEnhancedNonBlazorGetToExternal" | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69089> |
| PR | #69087 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69087> |
| PR | #69168 | Stabilize Virtualize cancellation test case | merged | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/69168> |
| PR | #68720 | Fix BL0012 false positive on await foreach and await using | merged | AzeemullahRg | <https://github.com/dotnet/aspnetcore/pull/68720> |
| PR | #68886 | Stabilize Virtualize initial item positioning | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68886> |
| PR | #69088 | [release/11.0] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69088> |
| PR | #69042 | [release/11.0] Fix h3 connection-level and stream-level abort locking | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69042> |
| PR | #69170 | [release/11.0] Stabilize Virtualize initial item positioning | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69170> |
| PR | #69179 | Merging internal commits for release/9.0 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/69179> |
| PR | #69178 | Merging internal commits for release/8.0 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/69178> |
| PR | #69074 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69074> |
| PR | #69086 | [release/11.0] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69086> |
| PR | #69143 | [release/11.0] Move BasePath into Components | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69143> |
| PR | #69116 | [release/11.0] Replace IValidationMessageFormatter with ValidationAttribute.FormatMessage | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69116> |
| PR | #69114 | Update MVC F# project template to resolve deprecated warnings | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69114> |
| PR | #69091 | Fix focus indicator contrast in templates | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69091> |
| PR | #69062 | [release/11.0] Harden race condition when submitting 2FA during password reset | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69062> |
| PR | #69150 | [release/10.0] Fix h3 connection-level and stream-level abort locking | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69150> |
| PR | #69152 | [release/8.0] Fix h3 connection-level and stream-level abort locking | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69152> |
| PR | #69151 | [release/9.0] Fix h3 connection-level and stream-level abort locking | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69151> |
| PR | #69036 | [release/10.0] Enable Helix Job Monitor | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69036> |
| PR | #69085 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69085> |
| PR | #69112 | Stop output/response caching from reordering request values | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69112> |
| PR | #69004 | Skip expensive PR pipelines for doc-only and metadata-only changes | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69004> |
| PR | #69117 | Move BasePath into Components.Web | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69117> |
| PR | #69027 | Replace IValidationMessageFormatter with ValidationAttribute.FormatMessage | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69027> |
| PR | #69014 | Fix spelling in HostingPathResolver method names | merged | z0rimo | <https://github.com/dotnet/aspnetcore/pull/69014> |
| PR | #68671 | [Blazor] Ship Components.AI with the .NET release cadence | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68671> |
| PR | #69196 | Restrict JavaScript root component operations | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69196> |
| PR | #68627 | Add generalized Blazor component readiness tooling | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68627> |
| PR | #67730 | Rename private static fields to use s_ prefix (part 1) | closed | BekAllaev | <https://github.com/dotnet/aspnetcore/pull/67730> |
| PR | #69063 | Add ASP.NET Core PR attention canvas | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69063> |
| PR | #69205 | [automated] Merge branch 'release/11.0' => 'main' | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69205> |
| PR | #69040 | Add pull request attention queue skill | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69040> |
| PR | #67398 | Increase timeout for CertificateChangedOnDisk_Symlink test in DEBUG mode | closed | amf-fs | <https://github.com/dotnet/aspnetcore/pull/67398> |
| PR | #69071 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69071> |
| PR | #69171 | [test-quarantine] Re-quarantine QuickGrid_InitialIndex_TallContainer_NearEnd_FillsViewportWithoutUserScroll | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69171> |
| PR | #68691 | Reject stale Blazor Virtualize viewport measurements | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/68691> |
| PR | #68974 | Disable runtime-async for ppc64le, s390x, and Mono runtimes | closed | shrinivas-sidral | <https://github.com/dotnet/aspnetcore/pull/68974> |
| PR | #69118 | Move BasePath into Components.Web | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69118> |
| PR | #69176 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69176> |
| PR | #69212 | feat(components): add BL0020 analyzer for code after NavigationManager.NavigateTo | open | ousamabenyounes | <https://github.com/dotnet/aspnetcore/pull/69212> |
| PR | #69263 | [test-quarantine] Unquarantine ServerVirtualizationTest.AnchorMode_End_AppendAfterLeavingBottom_DoesNotReengage | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69263> |
| PR | #69262 | [test-quarantine] Unquarantine HubConnectionTests.LongPollingUsesHttp2ByDefault | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69262> |
| PR | #69260 | Fix RouteHandlerAnalyzer Crash On Method Groups From Referenced Assemblies | open | AzeemullahRg | <https://github.com/dotnet/aspnetcore/pull/69260> |
| PR | #69256 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69256> |
| PR | #69257 | Drop MVC F# project template support | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69257> |
| PR | #69251 | [automated] Merge branch 'release/11.0' => 'main' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69251> |
| PR | #69203 | Add PATH_INFO support to IIS URL rewrite rules | open | georgehotca | <https://github.com/dotnet/aspnetcore/pull/69203> |
| PR | #69255 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69255> |
| PR | #69250 | [release/8.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69250> |
| PR | #69253 | [release/8.0] Scope sections E2E assertions to mounted app | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69253> |
| PR | #69252 | [release/9.0] Scope sections E2E assertions to mounted app | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69252> |
| PR | #69241 | Fix OpenAPI property-level [JsonConverter] on [AsParameters] enum ignored with request body | open | fahmymohammed | <https://github.com/dotnet/aspnetcore/pull/69241> |
| PR | #69248 | [release/10.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69248> |
| PR | #69247 | [release/11.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69247> |
| PR | #69249 | [release/9.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69249> |
| PR | #69246 | Fix flaky HTTP/3 request trailer validation test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69246> |
| PR | #69225 | [test-quarantine] Quarantine flaky Http3StreamTests.RequestTrailers_ContainsNewlines | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69225> |
| PR | #69242 | Add Hosting integration architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69242> |
| PR | #69146 | Add shared contributor guidance and optional PR review skill | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69146> |
| PR | #69243 | Add MVC architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69243> |
| PR | #69216 | Add gRPC architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69216> |
| PR | #69198 | Fix support for unions with null values as root component parameters | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69198> |
| PR | #69215 | Fix TagHelperContent.AppendHtml replacing child content instead of appending | open | fahmymohammed | <https://github.com/dotnet/aspnetcore/pull/69215> |
| PR | #69231 | [Caching] Include response cache keys in size accounting | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69231> |
| PR | #69239 | [MVC] Use sorted keys for prefix lookup | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69239> |
| PR | #69230 | [IIS] Fix ServerErrorHandler response content lifetime | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69230> |
| PR | #69234 | [SignalR] Reject duplicate JSON target properties | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69234> |
| PR | #69237 | [gRPC] Use typed API to read certificate DNS names | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69237> |
| PR | #69200 | Add SignalR architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69200> |
| PR | #69238 | [Kestrel] Tighten HTTP/2 and HTTP/3 path validation | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69238> |
| PR | #69233 | [Caching] Distinguish absent and empty cache key values | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69233> |
| PR | #69236 | [Authorization] Make middleware marker endpoint-specific | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69236> |
| PR | #69235 | [Identity] Validate RSA passkey public keys | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69235> |
| PR | #69232 | [MVC] Account for CacheTagHelper vary-by key size | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69232> |
| PR | #69229 | [ResponseCaching] Include retained cache key bytes in MemoryCacheEntryOptions.Size | open | Sadik00789 | <https://github.com/dotnet/aspnetcore/pull/69229> |
| PR | #69226 | [main] (deps): Bump src/submodules/googletest from `d94a732` to `283c175` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69226> |
| PR | #69141 |  Fix ApiExplorer decomposition for [FromHeader] complex parameters | open | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/69141> |
| PR | #69144 | [DirectTLS] exclude experimental transport from release 11 | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69144> |
| PR | #69193 | Stabilize Blazor Web JS Initializers test case | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69193> |
| PR | #69108 | Write W3C log entries directly to StreamWriter | open | z0rimo | <https://github.com/dotnet/aspnetcore/pull/69108> |
| PR | #69213 | [SignalR] [Java] Fix hung start/stop after a failed connection attempt | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69213> |
| PR | #69211 | Update copilot-instructions.md | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69211> |
| PR | #69201 | Add review candidate groups to PR attention queue | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69201> |
| PR | #69189 | Improve SignalR hot paths and add regression benchmarks | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/69189> |
| PR | #69167 | Run dojo scenarios against AG-UI and direct IChatClient | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69167> |
| PR | #69149 | Limit Markdown-only CI exclusions to root files | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69149> |
| PR | #69174 | Avoid starting the response when navigating with exception | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69174> |
| PR | #69188 | [test-quarantine] Stabilize the QuickGrid paginator E2E test | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/69188> |
| PR | #69183 | Add MVC1007 analyzer to detect ActionResult<T> type mismatches in 2xx results | open | fahmymohammed | <https://github.com/dotnet/aspnetcore/pull/69183> |
| PR | #69173 | [test-quarantine] Fix flakiness in anchor mode large prepend test | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69173> |
| PR | #69163 | Server.IntegrationTesting: ApplicationPublisher: avoid recompiling framework project with different properties than the main build. | open | tmds | <https://github.com/dotnet/aspnetcore/pull/69163> |
| PR | #69110 | Prevent Static SSR Stack Overflow During Section Updates | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/69110> |
| Issue | #69266 | [Blazor][Components.AI] Allow custom handlers to replace structured RichContentBlock content | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69266> |
| Issue | #69265 | [Blazor][Components.AI] Add a finalization callback for active content block handlers | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69265> |
| Issue | #69264 | dotnet watch Blazor Hot Reload WebSocket connection fails on custom TLD in SDK 10.0.401 | open | guimabdo | <https://github.com/dotnet/aspnetcore/issues/69264> |
| Issue | #69261 | Components.AI net11 package depends on unavailable .NET 12 package | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69261> |
| Issue | #69258 | Perf improvement: fortunes | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69258> |
| Issue | #69259 | RateLimitingMiddleware never disposes the endpoint PartitionedRateLimiter it creates, so every disposed app stays reachable | open | joaofonsecasynget | <https://github.com/dotnet/aspnetcore/issues/69259> |
| Issue | #69254 | https://gkn.ivalua.com/ is not working error 500 | closed | mendietrk | <https://github.com/dotnet/aspnetcore/issues/69254> |
| Issue | #69107 | Kestrel Libuv Transport NuGet package is not marked deprecated | closed | Arthri | <https://github.com/dotnet/aspnetcore/issues/69107> |
| Issue | #69154 | Perf regression: updates | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69154> |
| Issue | #69165 | Perf regression: multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69165> |
| Issue | #69204 | Perf regression: https, json_middleware | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69204> |
| Issue | #69219 | Perf regression: tls-handshakes-httpsys | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69219> |
| Issue | #69245 | testing | closed | Bassya | <https://github.com/dotnet/aspnetcore/issues/69245> |
| Issue | #69244 | Configuration error on startup | closed | Bassya | <https://github.com/dotnet/aspnetcore/issues/69244> |
| Issue | #69119 | [Validation] Caching an expensive page section | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69119> |
| Issue | #69138 | [Validation] Session configuration failures for TempData and session parameters | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69138> |
| Issue | #69139 | [Validation] Keys and value lifetime for the TempData and session parameter attributes | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69139> |
| Issue | #69214 | Response Caching: include retained cache-key bytes in MemoryCacheEntryOptions.Size | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69214> |
| Issue | #69132 | [Validation] What QuickGrid's URL navigation changes for an existing app | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69132> |
| Issue | #69192 | Incorrect cache handling with `Vary: *` with response compression | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69192> |
| Issue | #69123 | [Validation] Live components inside a CacheView | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69123> |
| Issue | #69223 | Passkey telemetry: proposed metrics, tags and logging | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/69223> |
| Issue | #69224 | Quarantine Microsoft.AspNetCore.Server.Kestrel.Core.Tests.Http3StreamTests.RequestTrailers_ContainsNewlines | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69224> |
| Issue | #69137 | [Validation] The TempData cookie | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69137> |
| Issue | #69220 | Opening MVC F# project after dotnet run shows an unhandled exception while processing the request due to missing files in .NET 11 RC2 | open | Chakolito | <https://github.com/dotnet/aspnetcore/issues/69220> |
| Issue | #69113 | MVC F# project build with warning "FS0044: This construct is deprecated", should update the project template. | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/69113> |
| Issue | #69129 | [Validation] QuickGrid query parameter names | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69129> |
| Issue | #69153 | Perf improvement: multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69153> |
| Issue | #69195 | Add an analyzer to warn about code that runs after calling NavigationManager.NavigateTo in server side contexts | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69195> |
| Issue | #69133 | [Validation] QuickGrid column item type mismatch | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69133> |
| Issue | #69218 | Navigating away while a Web Worker operation is running can sometimes cause an unhandled error in the browser console. | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/issues/69218> |
| Issue | #69217 | HtmlAttributePropertyHelper metadata-update handler roots trim-unsafe methods in Native AOT builds | open | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69217> |
| Issue | #69181 | Perf improvement: json_middleware | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69181> |
| Issue | #69140 | BasePath Component Fails to Preserve Sub-path Casing Behind a Reverse Proxy | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/69140> |
| Issue | #69131 | [Validation] Virtualized QuickGrid: initial position, scrolling and prepended data | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69131> |
| Issue | #69190 | Template blazorwasm-servicedefaults tries to resolve unpublished package | open | jjonescz | <https://github.com/dotnet/aspnetcore/issues/69190> |
| Issue | #69135 | [Validation] TempData on a streaming page, and switching to session storage | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69135> |
| Issue | #69191 | [Blazor][Components.AI] Add a built-in default renderer for `UIActionBlock` that auto-invokes client tool calls | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/69191> |
| Issue | #69164 | Perf improvement: fortunes | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69164> |
| Issue | #69182 | Perf regression: antiforgery-validation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69182> |
| Issue | #69121 | [Validation] CacheView cache keys and capacity | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69121> |
| Issue | #69136 | [Validation] Property types for the TempData and session parameter attributes | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69136> |
| Issue | #69124 | [Validation] Forms and interactive components inside a CacheView | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69124> |
| Issue | #69125 | [Validation] Components that refuse to be cached in CacheView | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69125> |
| Issue | #69122 | [Validation] CacheView vary-by dimensions | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69122> |
| Issue | #69184 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | open | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69184> |
| Issue | #69185 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | open | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69185> |
| Issue | #69115 | BasePath Component Fails to Trigger Build Error or Documentation Lacks Sufficient Guidelines When Required Namespace Is Missing in .NET 10 to .NET 11 Upgraded Apps | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/69115> |
| Issue | #69180 | DBSC registration returns 500 instead of 400 for a proof with invalid UTF-8 in the jwk | open | pawlos | <https://github.com/dotnet/aspnetcore/issues/69180> |
| Issue | #69177 | [Validation] Replacing property injection with a custom IComponentPropertyActivator | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69177> |
| Issue | #69142 | Static SSR fails to use proxy domain when constructing absolute URIs | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/69142> |
| Issue | #69169 | gRPC AuthContext: SAN dNSName extraction relies on parsing X509Extension.Format() text instead of typed API | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69169> |
| Issue | #69166 | Make dojo app and AiApp handle same E2E tests | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69166> |
| Issue | #69159 | [Validation] JavaScript functions can return ElementReference to .NET | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69159> |
| Issue | #69128 | [Validation] QuickGrid paging and the Paginator | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69128> |
| Issue | #69127 | [Validation] QuickGrid sorting through the URL | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69127> |
| Issue | #69130 | [Validation] QuickGrid row clicks | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69130> |
| Issue | #69134 | [Validation] TempData across a redirect in static SSR | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69134> |
| Issue | #69120 | [Validation] CacheView expiration | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69120> |
| Issue | #69157 | MEV skips validation for constructor parameters that map to a property in base class | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69157> |
| Issue | #69156 | OpenAPI property-level `[JsonConverter]` on `[AsParameters]` enum ignored when the operation has a request body | open | mills-git | <https://github.com/dotnet/aspnetcore/issues/69156> |
| Issue | #69109 | OutputCacheKeyProvider mutates request query and header values | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69109> |
| Issue | #69111 | Perf regression: mTls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69111> |
| Issue | #69148 | Some CI legs are still running for .md changes | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69148> |
| Issue | #69145 | RequireClaim ignores identity-specific claim-type comparison | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69145> |
| Issue | #69126 | [Validation] CacheView backed by HybridCache | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69126> |
| Issue | #68775 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerVirtualizationTest.QuickGrid_AnchorMode_End_Append
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68775> |
| Issue | #68730 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.QuickGrid_AnchorMode_End_PrependAtTop_ViewportStaysS
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68730> |
| Issue | #68017 | Quarantine ServerVirtualizationTest.QuickGrid_AnchorMode_Top_AppendKeepsViewportStable | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68017> |
| Issue | #68726 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.QuickGrid_AnchorMode_NearTop_AppendKeepsViewportStab
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68726> |
| Issue | #68559 | Quarantine VirtualizationTest.QuickGrid_ScrollToItem_NegativeIndex_ScrollsToTop | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68559> |
| Issue | #67865 | Fix Quarantined QuickGrid tests | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67865> |
| Issue | #67298 | Support [conditional create](https://developer.chrome.com/docs/identity/webauthn-conditional-create) to allow the user to seamlessly upgrade a password to a passkey after signing in | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67298> |
| Issue | #68724 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.QuickGrid_InitialIndex_TallContainer_NearEnd_FillsVi
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68724> |
| Issue | #68708 | [Known Build Error] VirtualizationTest.QuickGrid_InitialIndex_TallContainer_NearEnd_FillsViewportWithoutUserScroll — top rendered index was -1 | closed | lewing | <https://github.com/dotnet/aspnetcore/issues/68708> |
| Issue | #58644 | Http1OutputProducer does not handle GetSpan/GetMemory(sizeHint: 0) correctly | closed | NinoFloris | <https://github.com/dotnet/aspnetcore/issues/58644> |
| Issue | #52310 | OutputCache - Racing condition returns empty response when locking enabled | closed | FP3ixoto | <https://github.com/dotnet/aspnetcore/issues/52310> |
| Issue | #65064 | Blazor build is producing inconsistent hashes for dotnet.runtime.8.0.19.js | closed | mwelsh1118 | <https://github.com/dotnet/aspnetcore/issues/65064> |
| Issue | #65461 | Missing APIs in M.A.Server.HttpSys.xml and M.A.Server.IIS.xml in source-build | closed | omajid | <https://github.com/dotnet/aspnetcore/issues/65461> |
| Issue | #69100 | Blazor WebAssembly publish fails with InvalidOperationException for publish.dotnet.js | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/69100> |
| Issue | #66431 | Missing release tag for dotnet/aspnetcore v10.0.7 | closed | jekula | <https://github.com/dotnet/aspnetcore/issues/66431> |
| Issue | #69103 | New Blazor app fails after minor modification | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/69103> |
| Issue | #68772 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerVirtualizationTest.InitialIndex_RetainsTargetWhenP
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68772> |
| Issue | #43102 | Consider adding an analyzer to detect when the Blazor Virtualize component is used in an element that doesn't permit child div elements | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/43102> |
| Issue | #68371 | Harden HTTP/2 CR/LF in trailer header values | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68371> |
| Issue | #67346 | Quarantine Http3TimeoutTests.HEADERS_TrailerIncompleteFrameReceivedWithinRequestHeadersTimeout_StreamError | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67346> |
| Issue | #68673 | Minimal API JSON body binding failure falls through to SPA fallback and returns 405 instead of 400 | closed | BruceIGEN | <https://github.com/dotnet/aspnetcore/issues/68673> |
| Issue | #69049 | Fix certificate managers deadlocks in .NET 10 | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69049> |
| Issue | #64280 | Microsoft.AspNetCore.Razor.Design package contains vulnerable Newtonsoft.Json.dll CVE-2024-21907 | closed | boi2ot | <https://github.com/dotnet/aspnetcore/issues/64280> |
| Issue | #68852 | Quarantine VirtualizeTest.ScrollToIndexAsync_CancellationCancelsProviderRequest | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68852> |
| Issue | #68485 | [Validation] Analyzer diagnostics for Virtualize item identity | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68485> |
| Issue | #68999 | [Infrastructure] Limit the CI configurations that run when not making code changes | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68999> |
| Issue | #11016 | ResponseCache sometimes reorders [FromQuery] array / List parameters depending on the Cache-Control header | closed | marcelltoth | <https://github.com/dotnet/aspnetcore/issues/11016> |
| Issue | #60936 | OpenApi doesn't convert query params to snake_case | closed | esd-thg | <https://github.com/dotnet/aspnetcore/issues/60936> |
| Issue | #69079 | Perf improvement: json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69079> |

