# dotnet/aspnetcore

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 22 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 43 |
| 新規 Issue                 | 38 |
| クローズ Issue             | 32 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#61123](https://github.com/dotnet/aspnetcore/issues/61123) — Microsoft.OpenAPI 2.0.0.0 has breaking changes （Issue / closed / bhrugen）
  Microsoft.OpenAPI 2.0.0.0 へ更新する利用者は、既存 issue に記録された破壊的変更を確認し、使用中 API の互換性を移行前に検証してください。
- **⚠ セキュリティ** [#69953](https://github.com/dotnet/aspnetcore/issues/69953) — Negotiate LDAP: do not traverse parents of groups that are not security-enabled （Issue / open / rokonec）
  Negotiate LDAP 認証を利用する管理者は、セキュリティ有効でないグループの親まで claims に含めない修正の進捗を確認し、グループ継承の想定を見直してください。
- **⚠ セキュリティ** [#69867](https://github.com/dotnet/aspnetcore/issues/69867) — Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. （Issue / open / jinzhao1127）
  .NET 10.0 の SQL Server プロジェクト作成で Pkcs 9.0.11 の既知の中程度脆弱性が報告されています。該当テンプレート・依存関係を使う開発者は、修正版の有無を確認し、安全なバージョンへ更新してください。
- **⚠ セキュリティ** [#67876](https://github.com/dotnet/aspnetcore/issues/67876) — @microsoft/signalr@10.0.0 has vulnerable package ws@7.5.11 - needs upgrade to 8.21.1 （Issue / open / RobTerrins-WM）
  SignalR JavaScript client 10.0.0 を使う利用者は、依存する `ws` 7.5.11 の脆弱性と更新状況を確認し、修正版が公開されたら更新してください。
- **⚠ セキュリティ** [#67407](https://github.com/dotnet/aspnetcore/issues/67407) — SingalR 8.* version has vulnerable package ws 7.5.10 （Issue / open / birarroshan）
  SignalR 8.x JavaScript client に含まれる `ws` 7.5.10 の脆弱性報告です。該当クライアントを配布する利用者は解決済みバージョンと依存更新を確認してください。
- **⚠ セキュリティ** [#64301](https://github.com/dotnet/aspnetcore/issues/64301) — Validating the security stamp is extending the session if allowRefresh is false （Issue / open / jgtestw）
  `allowRefresh=false` を設定している認証利用者は、security stamp 検証時にセッションが延長される可能性がある issue の状況を確認し、意図した有効期限が守られているか検証してください。

## 主要な変更点

- .NET 10.0 の SQL Server プロジェクトで報告された `System.Security.Cryptography.Pkcs` 9.0.11 の脆弱性と、SignalR JavaScript client の `ws` 脆弱性について、該当依存関係の修正状況を確認してください。
- Negotiate LDAP claims で security-enabled でないグループの親をたどらない対応、および security stamp 検証による意図しないセッション延長の修正状況は、認証構成を運用する利用者に関係します。
- Microsoft.OpenAPI 2.0.0.0 の破壊的変更に関する既存 issue がクローズされており、バージョン更新時は利用 API の互換性確認が必要です。
- PR #70048 で trie routing の比較を ordinal に統一し、関連する誤マッチ issue #70047 を解消しました。
- QuickGrid のページ変更通知・ページ末尾スクロール（PR #70017、#69926）や Blazor の表示・テスト安定性に関する修正が複数マージされています。
- PR #69845 は Components.Platform に Cookie Store API を追加し、ブラウザー API の型付き利用範囲を広げました。
- .NET 11／main 向けのソース同期が複数回行われ、引き続きルーティング、認証、Blazor、HTTP/3 周辺の修正提案がオープンです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69981 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69981> |
| PR | #70048 | Fix trie routing implementation to use ordinal comparison | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70048> |
| PR | #69866 | [tests] Delay OpenAPI trimming tests | merged | mauroa | <https://github.com/dotnet/aspnetcore/pull/69866> |
| PR | #69983 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69983> |
| PR | #70021 | Keep Blazor Weather table scrolling within the page | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70021> |
| PR | #70032 | Fix PR review setup, worker lifecycle, and exclusion reuse | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70032> |
| PR | #70054 | Unquarantine BlazorWasmTemplateTest | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/70054> |
| PR | #70017 | Fix QuickGrid paginator page-change announcements | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/70017> |
| PR | #66578 | Drop redundant fixed in HttpSys SetDataChunkWithPinnedData | merged | unsafePtr | <https://github.com/dotnet/aspnetcore/pull/66578> |
| PR | #69978 | Serialize SignalR Java builds | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69978> |
| PR | #69926 | Fix Virtualize jumping away rom the bottom | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69926> |
| PR | #69999 | [main] (deps): Bump src/submodules/googletest from `b66cffc` to `cd8e73f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69999> |
| PR | #70000 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1c4a1644edd3811541f70371cd9494058ba29235 to 8e37f0f5f6447a190988e888821f2e8d802f5be7 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70000> |
| PR | #70001 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1c4a1644edd3811541f70371cd9494058ba29235 to 8e37f0f5f6447a190988e888821f2e8d802f5be7 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70001> |
| PR | #69997 | [test-quarantine] Quarantine flaky TempDataSessionStorageTest.TempDataPersistWithoutAccessing | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69997> |
| PR | #69974 | Re-enable .NET 12 framework assembly checks | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69974> |
| PR | #69976 | Skip native build when building Kestrel locally | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69976> |
| PR | #69836 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69836> |
| PR | #69927 | Fix AutoPause JS initializer fingerprinting | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69927> |
| PR | #69958 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69958> |
| PR | #69845 | Add the Cookie Store API to Microsoft.AspNetCore.Components.Platform | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69845> |
| PR | #69961 | [release/11.0] Fix test failures in dependency update #69958 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69961> |
| PR | #67616 | [Blazor] Preserve null values for <option value="@null"> in single select binding | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67616> |
| PR | #70037 | [test-quarantine] Re-quarantine AddValidationIntegrationTest.FormWithNestedValidation_Works | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70037> |
| PR | #70025 | [release/10.0] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70025> |
| PR | #69979 | [release/10.0] Update branding to 10.0.15 | closed | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/69979> |
| PR | #67146 | Fix null reference issue caused by validation exception when circuit is disposed | closed | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/67146> |
| PR | #70068 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70068> |
| PR | #70067 | Use JavaNetCookieJar in the SignalR Java client | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70067> |
| PR | #70058 | Bound PR review inputs for native readers | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70058> |
| PR | #69995 | Harden skill-evals CI workflow and update Vally dependency | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69995> |
| PR | #70038 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70038> |
| PR | #70057 | Reject zero HPACK indexed header fields | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70057> |
| PR | #70062 | [StaticAssets] Avoid caching responses for missing manifest assets | open | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/70062> |
| PR | #70002 | Give QuickGrid paginator navigation an accessible name | open | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/70002> |
| PR | #70055 | Add trace-aware pull request review evals | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70055> |
| PR | #70049 | Fix Paginator RTL navigation alignment | open | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/70049> |
| PR | #70060 | Fix an Issue of dispose a component's JS complement in a Blazor Web App using mixed render modes | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/70060> |
| PR | #70063 | Fix Blazor activity route correlation for per-page interactivity | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70063> |
| PR | #70061 | Add a persistent live region to interactive ValidationSummary | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70061> |
| PR | #70019 | [release/11.0] Fix Virtualize jumping away rom the bottom | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70019> |
| PR | #70043 | Fix cross-site antiforgery cookie resets in Blazor SSR | open | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/70043> |
| PR | #69986 | Fix [openapi]: Emit required properties for MVC form models | open | wteja | <https://github.com/dotnet/aspnetcore/pull/69986> |
| PR | #69993 | Pass a FeatureContext to Components.Platform feature factories | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69993> |
| PR | #70022 | Fix virtualized QuickGrid ARIA row count | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70022> |
| PR | #70050 | [release/11.0] Fix QuickGrid paginator page-change announcements | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70050> |
| PR | #69994 | Fix empty form values for nullable custom IParsable structs | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69994> |
| PR | #70018 | Fix `Blazor WASM page is instantiated twice when navigating between pages with different layouts` issue | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/pull/70018> |
| PR | #69990 | [Blazor] Fix ErrorBoundary recovery for nested throwing components | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69990> |
| PR | #70020 | Expose QuickGrid column-options expanded state | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70020> |
| PR | #70045 | Add AbortLink to cancel browser operations with a CancellationToken | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70045> |
| PR | #69998 | Fix Blazor Error page being replaced by NotFound during WebAssembly activation | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/69998> |
| PR | #70042 | [release/9.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70042> |
| PR | #70041 | Bound nested-group recursion depth in Negotiate LdapAdapter | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/70041> |
| PR | #70036 | Publish IIS server addresses before registering request callbacks | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/70036> |
| PR | #70035 | Don't expire infinite Kestrel timeouts on the next heartbeat | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/70035> |
| PR | #70034 | Reject chunk sizes larger than Int32.MaxValue with 400 | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/70034> |
| PR | #70033 | Reject HTTP/1.1 request lines with no space before the version | open | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/70033> |
| PR | #70028 | Cancel pending cookie renewal when the principal is rejected | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/70028> |
| PR | #70024 | Fix NRE in RouteHandlerAnalyzer for delegate creation handlers | open | AnsElgyarDev | <https://github.com/dotnet/aspnetcore/pull/70024> |
| PR | #69973 | [release/11.0] Fix AutoPause JS initializer fingerprinting | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69973> |
| PR | #69992 | Represent CookieSameSite as a readonly record struct | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69992> |
| PR | #69989 | Update the Components.Platform porting skill with rules settled by Cookie Store | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69989> |
| PR | #69985 | Ensure HostString.ToUriComponent adds brackets to unbracketed IPv6 addresses | open | austinaviv | <https://github.com/dotnet/aspnetcore/pull/69985> |
| PR | #69982 | Preserve TLS channel binding when forwarding client certificates | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/69982> |
| PR | #69980 | Update SignalR TS CHANGELOG for v12.0.0-preview.1 | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69980> |
| PR | #69977 | Fix ASP0022 false positive for Map beside MapGet | open | AnsElgyarDev | <https://github.com/dotnet/aspnetcore/pull/69977> |
| PR | #69970 | Add Screen to Microsoft.AspNetCore.Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69970> |
| PR | #69968 | Add Navigator to Microsoft.AspNetCore.Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69968> |
| PR | #69966 | Surface failed updates from the Identity API /manage/2fa endpoint | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/69966> |
| Issue | #70016 | Microsoft Visual Studio Failed to launch debug adapter "Unable to launch browser" | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70016> |
| Issue | #70047 | Trie routing incorrectly matches endpoints using invariant culture instead of ordinal comparison | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70047> |
| Issue | #70029 | RedisOutputCacheStore force reconnect can release the current connection instead of the failed one | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/issues/70029> |
| Issue | #70052 | RemoteAuthenticationHandler ignores TicketReceivedContext.Fail() and proceeds to sign-in | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/70052> |
| Issue | #70066 | `HostString.FromUriComponent` throws `ArgumentException` for malformed punycode Host values (e.g. `xn--a`) | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70066> |
| Issue | #70065 | Output caching: a client disconnect on the leading request fails all coalesced requests with 500 | open | manuel-umu | <https://github.com/dotnet/aspnetcore/issues/70065> |
| Issue | #70064 | Blazor WebAssembly debugging fails after update: “Unable to launch browser: Could not connect to debug target … Socket closed before the connection was established” | open | emschnee | <https://github.com/dotnet/aspnetcore/issues/70064> |
| Issue | #70015 | Visual Studio fails to launch browser for ASP.NET Core Blazor apps | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70015> |
| Issue | #70023 | Streaming SSR: `NavigateTo` writes the redirection into the middle of the page after the response has started (`OnNavigateTo` bypasses the response's buffered writer) | open | jeagleton | <https://github.com/dotnet/aspnetcore/issues/70023> |
| Issue | #70004 | Blazor Server host process terminates (exit code 0xFFFFFFFF) on file <input> selection — only when launched via F5 debug | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70004> |
| Issue | #70046 | [API Proposal] Add the Fetch API to the typed browser platform APIs for Blazor | open | skrustev | <https://github.com/dotnet/aspnetcore/issues/70046> |
| Issue | #70044 | How Components.Platform should cancel browser operations with a CancellationToken | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/70044> |
| Issue | #70053 | Identity API /manage/2fa ignores IdentityResult from SetTwoFactorEnabledAsync | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/70053> |
| Issue | #70051 | Migrate Blazor E2E tests to Components.Testing | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70051> |
| Issue | #70030 | [API Proposal] Capture pending JSRuntime calls for deferred failure | open | imsouvik | <https://github.com/dotnet/aspnetcore/issues/70030> |
| Issue | #69991 | How Components.Platform should represent Web IDL enums | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69991> |
| Issue | #70008 | PSA — Syncfusion Blazor 34.2.9+ silently sends Application Insights telemetry from Blazor WASM apps. Initially looks like a Blazor Framework Issue. | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70008> |
| Issue | #69987 | Components.Platform typed browser APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69987> |
| Issue | #69988 | Design Proposal: Analyzer for Forms Incompatible with Enhanced Navigation | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/69988> |
| Issue | #70031 | [Blazor] DisplayName/Label: ExpressionMemberAccessor caches every accessor expression instance (memory leak on Blazor Server) | open | pavolmaly66-alt | <https://github.com/dotnet/aspnetcore/issues/70031> |
| Issue | #70027 | Kestrel can deadlock registering a certificate file watch (CertificatePathWatcher._metadataLock vs CompositeChangeToken._callbackLock) | open | BrianWhy | <https://github.com/dotnet/aspnetcore/issues/70027> |
| Issue | #70014 | Visual Studio Insiders blocks ASP.NET builds on unmatched scoped CSS endpoints | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70014> |
| Issue | #70013 | Blazor Editor Warns that App Needs Restarting When Run Without Debugging and No Longer Running | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70013> |
| Issue | #70012 | Visual Studio Browse With compiles Blazor project but shows no dialog | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70012> |
| Issue | #70011 | Visual Studio: Blazor Recognition and Suggestions Generate Errors | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70011> |
| Issue | #70010 | Blazor .NET 10: Button @onclick Does Not Invoke the Handler Method | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70010> |
| Issue | #70009 | Azure Maps 4 getMapContainer method fails in Blazor JSInterop | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70009> |
| Issue | #70007 | Fileupload for https://github.com/dotnet/aspnetcore/issues/67842 | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70007> |
| Issue | #70006 | Blazor debugger fails to hit breakpoints in all browsers | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70006> |
| Issue | #70005 | Blazor WASM debug fails SRI checks with stale staticwebassets.build.json | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70005> |
| Issue | #70003 | Blazor Web App WASM debug startup hits MONO debugger-agent assertion | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70003> |
| Issue | #69996 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.TempDataSessionStorageTest.TempDataPersistWithoutAccessing | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69996> |
| Issue | #69975 | Script and Link Tag Helper globbing cache reuses URLs across different request base paths | open | hoyosjs | <https://github.com/dotnet/aspnetcore/issues/69975> |
| Issue | #69984 | HostString.ToUriComponent does not add brackets to unbracketed IPv6 addresses | open | austinaviv | <https://github.com/dotnet/aspnetcore/issues/69984> |
| Issue | #69972 | ASP0022 false positive for `Map` beside `MapGet` on the same route pattern | open | glen-84 | <https://github.com/dotnet/aspnetcore/issues/69972> |
| Issue | #69971 | Blazor AI components IChatClient construct failed | closed | xccu | <https://github.com/dotnet/aspnetcore/issues/69971> |
| Issue | #69969 | [API Proposal] Add the Screen to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69969> |
| Issue | #69967 | [API Proposal] Add the Navigator to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69967> |
| Issue | #66293 | Quarantine BlazorWasmTemplateTest (NU1603 NuGet restore failures) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66293> |
| Issue | #69524 | [Validation] Localized form messages in static and interactive Blazor | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69524> |
| Issue | #69525 | [Validation] Async whole-form validation on submit | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69525> |
| Issue | #68817 | [Validation] Blazor Web startup options format in the Server and WebAssembly scripts | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68817> |
| Issue | #68816 | [Validation] Setting WebAssembly culture, environment and variables from the server | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68816> |
| Issue | #68535 | [Validation] PWA service worker when the start page is reached through a redirect | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68535> |
| Issue | #68530 | [Validation] Scroll position and hash links during enhanced navigation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68530> |
| Issue | #68529 | [Validation] Navigating away from a page that hosts an interactive component | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68529> |
| Issue | #68528 | [Validation] Enhanced navigation no longer preloads WebAssembly assets | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68528> |
| Issue | #68527 | [Validation] data-permanent preserves the marked element's own attributes | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68527> |
| Issue | #68515 | [Validation] HTTP HEAD requests to Razor component endpoints | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68515> |
| Issue | #68480 | [Validation] C# unions in component parameters and prerendered state | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68480> |
| Issue | #69530 | [Validation] Distinguish async validation failures from invalid values | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69530> |
| Issue | #69529 | [Validation] Nested-field validation in a static SSR form | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69529> |
| Issue | #69528 | [Validation] Opt out of static SSR browser validation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69528> |
| Issue | #69526 | [Validation] Custom validation attribute across browser and server | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69526> |
| Issue | #68812 | [Validation] Reusing components with render modes in a Blazor Hybrid app | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68812> |
| Issue | #69531 | [Validation] Browser feedback and server validation in a static SSR form | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69531> |
| Issue | #69823 | Virtualize AnchorMode.End end scroll is undone by stale spacer correction | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69823> |
| Issue | #69942 | Clarify rate-limiter ordering with `UseStatusCodePagesWithReExecute` | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69942> |
| Issue | #69912 | AutoPause JS initializer has no fingerprinted endpoint, so it is revalidated on every page load | closed | cardasac | <https://github.com/dotnet/aspnetcore/issues/69912> |
| Issue | #61796 | Blazor Hot Reload not working [JSInvokableAttribute("ApplyHotReloadDeltas")] error | closed | divvjson | <https://github.com/dotnet/aspnetcore/issues/61796> |
| Issue | #44937 | [Blazor] We should support updating and removing statically rendered root components | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/44937> |
| Issue | #49941 | Improve error report on HotReloadAgent | closed | isadorasophia | <https://github.com/dotnet/aspnetcore/issues/49941> |
| Issue | #40683 | Ability to use System.Text.Json's generated sources to improve PersistentComponentState's json read performance | closed | yasmoradi | <https://github.com/dotnet/aspnetcore/issues/40683> |
| Issue | #43688 | Using Blazor server components without ending whitespace in wrapping container places the last component first | closed | Gebov | <https://github.com/dotnet/aspnetcore/issues/43688> |
| Issue | #17996 | Add extensibility point for EditContext FieldCSSClass for Blazor forms - The current options are too limited | closed | ericgholland | <https://github.com/dotnet/aspnetcore/issues/17996> |
| Issue | #39469 | Blazor Server behind reverse-proxy is case sensitive when app base path is changed | closed | bjorkstromm | <https://github.com/dotnet/aspnetcore/issues/39469> |
| Issue | #42487 | Disable MS Graph options on the Blazor wasm template for B2C | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/42487> |
