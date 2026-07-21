# dotnet/aspnetcore

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 20 |
| クローズ (未マージ) PR     | 8 |
| 新規 PR (オープン中)       | 21 |
| 新規 Issue                 | 33 |
| クローズ Issue             | 32 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67097](https://github.com/dotnet/aspnetcore/pull/67097) — Update default OpenApi version to 3.2 （PR / merged / Youssef1313）
  OpenAPI の版を明示していないアプリは既定出力が 3.1 から 3.2 に変わるため、コード生成・検証ツールの 3.2 対応を確認し、必要なら `OpenApiVersion` を明示してください。
- **⚠ セキュリティ** [#67902](https://github.com/dotnet/aspnetcore/issues/67902) — Failed to restore dogfooding tests due to error NU1902: Package 'AngleSharp' 0.9.9 has a known moderate severity vulnerability （Issue / closed / EmilyFeng97）
  リポジトリ内テスト依存の AngleSharp 脆弱性は [#67898](https://github.com/dotnet/aspnetcore/pull/67898) の最新版更新で解消済みであり、ASP.NET Core 利用アプリへの直接対応は不要です。
- **⚠ セキュリティ** [#67876](https://github.com/dotnet/aspnetcore/issues/67876) — @microsoft/signalr@10.0.0 has vulnerable package ws@7.5.11 - needs upgrade to 8.21.1 （Issue / open / RobTerrins-WM）
  `@microsoft/signalr@10.0.0` 利用者は推移依存 `ws@7.5.11` の脆弱性影響を確認し、修正版パッケージが公開されたら更新してください。
- **非推奨/廃止** [#67862](https://github.com/dotnet/aspnetcore/pull/67862) — Deprecate the Blazor WebAssembly DevServer package （PR / open / Copilot）
  standalone Blazor WebAssembly の DevServer 利用者は、後継の `Microsoft.AspNetCore.Components.Gateway` への移行計画を立て、起動時の非推奨警告を確認してください。
- **非推奨/廃止** [#67861](https://github.com/dotnet/aspnetcore/pull/67861) — Deprecate UseWebAssemblyDebugging and remove it from Blazor templates （PR / merged / Copilot）
  `UseWebAssemblyDebugging` は `ASPDEPR011` で obsolete となり新規 Blazor テンプレートから削除されたため、既存アプリは IDE の現行デバッガー経路へ移行して呼び出しを削除してください。

## 主要な変更点

- [#67097](https://github.com/dotnet/aspnetcore/pull/67097) で既定の OpenAPI 出力が 3.2 に変更され、未指定アプリでは version 文字列や `QUERY` operation の表現が変わります。
- Blazor WebAssembly では [#67861](https://github.com/dotnet/aspnetcore/pull/67861) により `UseWebAssemblyDebugging` が非推奨化され、DevServer も [#67862](https://github.com/dotnet/aspnetcore/pull/67862) で Gateway への置き換えが進行中です。
- セキュリティ面では AngleSharp の既知脆弱性が [#67898](https://github.com/dotnet/aspnetcore/pull/67898) で解消された一方、`@microsoft/signalr@10.0.0` の `ws` 脆弱性 [#67876](https://github.com/dotnet/aspnetcore/issues/67876) は対応待ちです。
- [#67875](https://github.com/dotnet/aspnetcore/pull/67875) は WASM デバッグページの受信パラメーターを HTML encode し、[#67840](https://github.com/dotnet/aspnetcore/pull/67840) は buffer をまたぐ multipart header にも長さ上限を適用して入力処理を堅牢化しました。
- Authorization metadata の対応範囲拡大 [#67765](https://github.com/dotnet/aspnetcore/pull/67765) と、リダイレクト環境での SignalR 認証更新修正 [#67612](https://github.com/dotnet/aspnetcore/pull/67612) もマージされています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67903 | Fix local WASM Components E2E tests returning 404 | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67903> |
| PR | #67901 | Update agentic workflows for gh aw v0.82.13 | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67901> |
| PR | #67898 | Update AngleSharp to latest | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67898> |
| PR | #67883 | [main] (deps): Bump actions/setup-dotnet from 5 to 6 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67883> |
| PR | #67882 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 70cf973cec34c1b98ab09894537975ca677452ae to d251ce39e611c4662478b973f9c90b628276c3e6 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67882> |
| PR | #67881 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 70cf973cec34c1b98ab09894537975ca677452ae to d251ce39e611c4662478b973f9c90b628276c3e6 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67881> |
| PR | #67880 | [main] (deps): Bump src/submodules/googletest from `8240fa7` to `4141c38` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67880> |
| PR | #67875 | [wasm] Html Encode incoming parameters to debug page | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/67875> |
| PR | #67873 | Revert "Adding analyzer to warn about JSInterop calls not wrapped in a try catch block" | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67873> |
| PR | #67871 | Fix ValidatableTypeInfo line endings | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67871> |
| PR | #67861 | Deprecate UseWebAssemblyDebugging and remove it from Blazor templates | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67861> |
| PR | #67840 | Enforce MultipartHeadersLengthLimit across BufferedReadStream buffers | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67840> |
| PR | #67783 | Expose experimental `AnchorMode` and `ItemComparer` on `QuickGrid` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67783> |
| PR | #67765 | Support AuthorizationPolicy and IAuthorizationRequirementData metadata everywhere | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67765> |
| PR | #67757 | Harden wildcard matching with empty segments inside | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67757> |
| PR | #67731 | Allow `null` on `UserOptions.AllowedUserNameCharacters` | merged | justindbaur | <https://github.com/dotnet/aspnetcore/pull/67731> |
| PR | #67661 | Fix nullability handling in OpenApi | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67661> |
| PR | #67639 | Improve `AnchorMode` tests | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67639> |
| PR | #67612 | SignalR .NET client: make auth refresh work behind a redirecting server (Azure SignalR) | merged | MoChilia | <https://github.com/dotnet/aspnetcore/pull/67612> |
| PR | #67530 | Adding analyzer to warn about JSInterop calls not wrapped in a try catch block | merged | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/67530> |
| PR | #67927 | Fix url normalizer backslashes | closed | Vladik29w | <https://github.com/dotnet/aspnetcore/pull/67927> |
| PR | #67860 | Obsolete UseWebAssemblyDebugging and remove it from Blazor templates | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/67860> |
| PR | #67750 | [Withdrawn] Pool MVC action-selection lookup key (CPU regression) | closed | artl93 | <https://github.com/dotnet/aspnetcore/pull/67750> |
| PR | #67613 | Add Forbidden state support to AuthorizeView | closed | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67613> |
| PR | #67510 | Use internal test hooks for cached AppContext switch overrides | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67510> |
| PR | #67237 | Enhance nullability support for TValue in EventCallback | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67237> |
| PR | #67178 | Add object-level validation APIs to EditContext | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67178> |
| PR | #67172 | Improve constructor handling in SSR by supporting parameterless constructors and refining error reporting | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67172> |
| PR | #67929 | Implement RFC 9931 §8 for HTTP/1.1 CONNECT in Kestrel | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67929> |
| PR | #67928 | Fix url normalizer backslashes | open | Vladik29w | <https://github.com/dotnet/aspnetcore/pull/67928> |
| PR | #67925 | fix: honor OpenAPI transformer registration order | open | baywet | <https://github.com/dotnet/aspnetcore/pull/67925> |
| PR | #67921 | Delete dead code in DelegateOpenApiDocumentTransformer | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67921> |
| PR | #67919 | Drop Microsoft.AspNetCore.Grpc.Swagger | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67919> |
| PR | #67918 | Reshape BrowserOptions server-to-client configuration API per review | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67918> |
| PR | #67917 | Rename ConfigureHostApplicationBuilder to ConfigureWebApplicationBuilder | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67917> |
| PR | #67914 | Expose InitialItemIndex parameter and ScrollToItemAsync method on QuickGrid  | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67914> |
| PR | #67912 | [Experimental] DirectTls transport implementation | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67912> |
| PR | #67910 | Blazor Gateway: read reverse-proxy config from the app project's config files | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67910> |
| PR | #67908 | Harden SignalR `negotiateVersion` parsing. | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67908> |
| PR | #67905 | Enable prepend/append detection with the default `ItemComparer` in `Virtualize<TItem>` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67905> |
| PR | #67900 | Adding analyzer to warn about JSInterop calls not wrapped in a try catch block | open | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/67900> |
| PR | #67899 | Fix SignalR token retry for thrown 401 errors | open | pradeep-ramola | <https://github.com/dotnet/aspnetcore/pull/67899> |
| PR | #67897 | [release/9.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67897> |
| PR | #67896 | [main] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67896> |
| PR | #67894 | Use schema examples for XML comment examples | open | pradeep-ramola | <https://github.com/dotnet/aspnetcore/pull/67894> |
| PR | #67890 | Fix context leak in `RazorPageBase` causing attribute prefix pollution in TagHelpers | open | Anduin2017 | <https://github.com/dotnet/aspnetcore/pull/67890> |
| PR | #67879 | [test-quarantine] Unquarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67879> |
| PR | #67878 | [test-quarantine] Unquarantine RedirectionTest.RedirectStreamingEnhancedGetToInternal | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67878> |
| PR | #67877 | [test-quarantine] Unquarantine Http2ConnectionTests.RequestHeaderStringReuse_MultipleStreams_KnownHeaderReused | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67877> |
| Issue | #67926 | Support for serializing/deserializing `float[]` as `Float32Array` via Blazor JSInterop | open | KristofferStrube | <https://github.com/dotnet/aspnetcore/issues/67926> |
| Issue | #67924 | Perf improvement: updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67924> |
| Issue | #67923 | Perf improvement: antiforgery-noop, fortunes_dapper, mTls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67923> |
| Issue | #67922 | Different antiforgery behavior on Windows and Linux ASPNET Core 11 preview | open | ladeak | <https://github.com/dotnet/aspnetcore/issues/67922> |
| Issue | #67920 | Support certificate lookup by thumbprint in Kestrel | open | Edythator | <https://github.com/dotnet/aspnetcore/issues/67920> |
| Issue | #67916 | [DirectTls] Add metrics, tracing, and logging on par with the Sockets transport and runtime epoll engine | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67916> |
| Issue | #67915 | [Experimental] [DirectTls] Support ClientCertificateMode.DelayCertificate (post-handshake client authentication) | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67915> |
| Issue | #67913 | [Experimental] [Perf] Restore accept4() single-syscall accept path for the DirectTls transport (Connection: close) | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67913> |
| Issue | #67911 | Output Caching: MemoryCacheEntryOptions.Size omits retained cache-key bytes from SizeLimit accounting | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67911> |
| Issue | #67909 | DirectTls transport — public API | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67909> |
| Issue | #67907 | Hardening: make Response/Output cache base-key serialization injective across PathBase and Path | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67907> |
| Issue | #67906 | [Test] A test issue | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67906> |
| Issue | #67904 | Singleton HybridCache is created twice when RedisCache uses ConnectionMultiplexerFactory — re-entrant GetService<HybridCache>() during DefaultHybridCache construction breaks RemoveByTagAsync | open | CaptainJackCode | <https://github.com/dotnet/aspnetcore/issues/67904> |
| Issue | #67902 | Failed to restore dogfooding tests due to error NU1902: Package 'AngleSharp' 0.9.9 has a known moderate severity vulnerability | closed | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67902> |
| Issue | #67895 | Debugging Blazor Server app 'Edit and Continue' says 'Applying code updates' when no source changed | open | silentdiverchris | <https://github.com/dotnet/aspnetcore/issues/67895> |
| Issue | #67893 | Hot Reload of Blazor Server project requires restart reporting attributes in unchanged projects prevent hot reload ENC0033. | open | silentdiverchris | <https://github.com/dotnet/aspnetcore/issues/67893> |
| Issue | #67892 | Startup Project reset on restarting Visual Studio | open | silentdiverchris | <https://github.com/dotnet/aspnetcore/issues/67892> |
| Issue | #67891 | [Razor] State pollution in `BeginWriteTagHelperAttribute` due to uncleared `_attributeInfo` in `RazorPageBase.EndWriteAttribute` | open | Anduin2017 | <https://github.com/dotnet/aspnetcore/issues/67891> |
| Issue | #67889 | Perf improvement: antiforgery-generation, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67889> |
| Issue | #67888 | Perf improvement: caching, fortunes_ef, mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67888> |
| Issue | #67887 | Blazor Gateway: read reverse-proxy configuration from the app project's config files | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67887> |
| Issue | #67886 | ForwardedHeadersMiddleware has no options hot-reload, and ForwardedHeadersOptions fails to compile with the Configuration Binding source generator (CS0102/CS0111 on IPNetwork) | open | yasmoradi | <https://github.com/dotnet/aspnetcore/issues/67886> |
| Issue | #67885 | Expose Authorization Result and Add Forbidden State to Blazor AuthorizeView | closed | surya3655 | <https://github.com/dotnet/aspnetcore/issues/67885> |
| Issue | #67884 | Blazor WASM on IIS Express: Unable to correctly rewrite content-encoding of precompressed static file | open | jonganej | <https://github.com/dotnet/aspnetcore/issues/67884> |
| Issue | #67876 | @microsoft/signalr@10.0.0 has vulnerable package ws@7.5.11 - needs upgrade to 8.21.1 | open | RobTerrins-WM | <https://github.com/dotnet/aspnetcore/issues/67876> |
| Issue | #67874 | API Proposal: Redis GCRA native command with Lua fallback | open | lqlive | <https://github.com/dotnet/aspnetcore/issues/67874> |
| Issue | #67872 | Design for CellClass support to PropertyColumn and TemplateColumn in QuickGrid | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67872> |
| Issue | #67870 | Add `AuthorizationPolicy.CombineAsync` overload that accepts endpoint metadata | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67870> |
| Issue | #67869 | API Proposal: Add OnPageChanging and OnPageChanged event support to Paginator | closed | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/issues/67869> |
| Issue | #67868 | Design for Provide the column resize support to Quick Grid component | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67868> |
| Issue | #67867 | Design for Provide the RowDetailsTemplate support to QuickGrid component | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67867> |
| Issue | #67866 | Design Proposal: ValidationStateChangedEventArgs IsValid Property | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67866> |
| Issue | #67865 | Fix Quarantined QuickGrid tests | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67865> |
| Issue | #67858 | Obsolete UseWebAssemblyDebugging and remove it from Blazor project templates | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67858> |
| Issue | #67848 | Design Proposal: Footer Templates for QuickGrid and Its Columns | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/issues/67848> |
| Issue | #67847 | Design proposal: OIDC token storage option for Blazor WebAssembly | closed | karmegams02 | <https://github.com/dotnet/aspnetcore/issues/67847> |
| Issue | #67846 | Design Proposal: Provide a JavaScript Signal for Interactive Rendering | closed | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/issues/67846> |
| Issue | #67845 | Design for Add RoutePrefix Parameter to Blazor Router for Localized URL Support | closed | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/issues/67845> |
| Issue | #67843 | Proposal: Synchronize form reset behavior with EditContext and InputBase | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67843> |
| Issue | #67841 | Design for Enhance nullability support for TValue in EventCallback | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67841> |
| Issue | #67838 | `FormOptions.MultipartHeadersLengthLimit` not enforced when a multipart header line spans multiple `BufferedReadStream` buffers | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67838> |
| Issue | #67837 | Design Proposal: Make ColumnBase.IsSortableByDefault() Public in QuickGrid | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67837> |
| Issue | #67835 | Design for preserve null values for in single select binding | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67835> |
| Issue | #67834 | Design Proposal: Dynamic Columns for QuickGrid | closed | karmegams02 | <https://github.com/dotnet/aspnetcore/issues/67834> |
| Issue | #67833 | Design Proposal: Expose QuickGrid Columns to Derived Classes | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67833> |
| Issue | #67832 | Proposal: Add object-level validation APIs to EditContext | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67832> |
| Issue | #67831 | Proposal: Add QuickGrid OnDataLoading and OnDataLoaded Events | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67831> |
| Issue | #67830 | QuickGrid - Add built-in localization for pagination | closed | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/issues/67830> |
| Issue | #67829 | Proposal: Custom Comparer Support for QuickGrid In-Memory Sorting | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67829> |
| Issue | #67815 | Design proposal: Add FieldIdentifier support to EditContext validation notifications | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67815> |
| Issue | #67808 | Design for SSR Constructor Enhancements | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67808> |
| Issue | #67807 | Design for Virtualize SSR Initial Item Rendering | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67807> |
| Issue | #67777 | Design of warnings for incorrect spacer element usage based on parent element | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67777> |
| Issue | #67774 | Design for BlurAsync API of ElementReference | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67774> |
| Issue | #67756 | Harden wildcard matching with empty segments inside | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67756> |
| Issue | #67644 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/67644> |
| Issue | #67185 | [API Proposal]: Drop the validatable type interfaces | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67185> |
