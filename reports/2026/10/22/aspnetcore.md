# dotnet/aspnetcore

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 20 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 37 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69605](https://github.com/dotnet/aspnetcore/issues/69605) — Cookie name matching is case-insensitive, diverging from RFC 6265's case-sensitive semantics （Issue / open / DeagleGross）
  Cookie 名の大文字小文字を実装依存で扱うアプリは、仕様差異と認証／セッション分離への影響を確認してください。
- **⚠ セキュリティ** [#69955](https://github.com/dotnet/aspnetcore/pull/69955) — Do not emit or traverse non-security-enabled groups in Negotiate LDAP claims （PR / open / rokonec）
  Negotiate LDAP とグループベース認可を使う管理者は、セキュリティ無効グループがクレームへ混入しない変更を確認してください。
- **⚠ セキュリティ** [#69953](https://github.com/dotnet/aspnetcore/issues/69953) — Negotiate LDAP: do not traverse parents of groups that are not security-enabled （Issue / open / rokonec）
  LDAP グループを認可へ利用する環境は親グループ探索の停止と権限評価への影響を検証してください。

## 主要な変更点

## 主要な変更点

- Negotiate LDAP のセキュリティクレーム処理では、非セキュリティグループとその親グループを扱わない修正が提案されています。
- Minimal API と MVC の Union ケース検証、スキップしたバリデーションケースの修正がマージされました。
- ResponseCaching では中止されたレスポンスをキャッシュしない変更が入り、不要なキャッシュ保持を避けます。
- Blazor WebView の Trim/NativeAOT 対応やブラウザー API の追加提案など、Open API/Browser API 周辺の提案が継続しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69965 | Improve local development with copilot-instructions | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69965> |
| PR | #69806 | [release/10.0] Fix ResponseCompression tests to work with different zlib implementations (#63988) | merged | omajid | <https://github.com/dotnet/aspnetcore/pull/69806> |
| PR | #69702 | Assert WebAssembly browser configuration environment name | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69702> |
| PR | #69949 | Don't cache aborted responses in ResponseCaching | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69949> |
| PR | #69934 | [release/9.0] Update branding to 9.0.23 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69934> |
| PR | #69935 | [release/8.0] Update branding to 8.0.34 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69935> |
| PR | #69940 | [release/10.0] Update OpenApi to 2.13.0 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69940> |
| PR | #68865 | Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3109729 | merged | dotnet-oneloc-localization[bot] | <https://github.com/dotnet/aspnetcore/pull/68865> |
| PR | #69937 | Update OpenApi to 3.11 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69937> |
| PR | #69936 | [release/11.0] Update OpenAPI to 3.11 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69936> |
| PR | #69920 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69920> |
| PR | #69932 | Improve ASP.NET Core Runtime site extension package documentation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69932> |
| PR | #69733 | Update `MaxConcurrentUpgradedConnections` remarks to call out it isn't for HTTP/2 since it doesn't get upgraded | merged | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/69733> |
| PR | #69921 | [release/11.0] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69921> |
| PR | #69923 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69923> |
| PR | #69928 | [release/11.0] Fix skipped and collection union cases in Minimal API validation | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69928> |
| PR | #69929 | [release/11.0] Validate active union cases in MVC | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69929> |
| PR | #69870 | Fix skipped and collection union cases in Minimal API validation | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69870> |
| PR | #69834 | Validate active union cases in MVC | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69834> |
| PR | #69829 | Add an agent skill for porting browser APIs to Components.Platform | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69829> |
| PR | #69229 | [ResponseCaching] Include retained cache key bytes in MemoryCacheEntryOptions.Size | closed | Sadik00789 | <https://github.com/dotnet/aspnetcore/pull/69229> |
| PR | #69402 | Run each hosting startup independently so one failure can't skip the rest | closed | Mathiew1618 | <https://github.com/dotnet/aspnetcore/pull/69402> |
| PR | #69933 | [release/2.3] Update patched assembly test target | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69933> |
| PR | #69963 | POC: HTTP/1.1-only lazy User-Agent allocation in Kestrel | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/69963> |
| PR | #69961 | [release/11.0] Fix test failures in dependency update #69958 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69961> |
| PR | #69964 | Update doc for `MinDataRate.GracePeriod` to clarify different usage | open | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/69964> |
| PR | #69958 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69958> |
| PR | #69960 | Apply MapStaticAssets conventions to the runtime fallback endpoint | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/69960> |
| PR | #69957 | Fix ErrorBoundary exception routing for non-component event receivers | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69957> |
| PR | #69926 | Fix Virtualize jumping away rom the bottom | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69926> |
| PR | #69927 | Fix AutoPause JS initializer fingerprinting | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69927> |
| PR | #69950 | Make Microsoft.AspNetCore.Components.WebView trim/NativeAOT compatible | open | ScarletKuro | <https://github.com/dotnet/aspnetcore/pull/69950> |
| PR | #69955 | Do not emit or traverse non-security-enabled groups in Negotiate LDAP claims | open | rokonec | <https://github.com/dotnet/aspnetcore/pull/69955> |
| PR | #69952 | Add the openharmony RIDs and skip repo-side NativeAOT for openharmony | open | springmin | <https://github.com/dotnet/aspnetcore/pull/69952> |
| PR | #69945 | Fix malformed default URL for Blazor WebAssembly B2C instance | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/69945> |
| PR | #69925 | Add URL and URLSearchParams browser platform APIs | open | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/69925> |
| PR | #69944 | Prevent stale layout Body reuse without clearing page defaults | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/69944> |
| Issue | #69962 | Track HTTP/1.1 lazy request-header allocation POC and Crank validation | open | davidfowl | <https://github.com/dotnet/aspnetcore/issues/69962> |
| Issue | #69959 | Harden skill-evals CI workflow and update Vally dependency | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69959> |
| Issue | #69954 | Microsoft Visual Studio Failed to launch debug adapter "Unable to launch browser" | open | mathdx1111 | <https://github.com/dotnet/aspnetcore/issues/69954> |
| Issue | #69942 | Clarify rate-limiter ordering with `UseStatusCodePagesWithReExecute` | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69942> |
| Issue | #69956 | Design Proposal: MarkupString JSON Round-Trip Support | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/issues/69956> |
| Issue | #69924 | [API Proposal] Add URL and URLSearchParams browser platform APIs | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69924> |
| Issue | #69953 | Negotiate LDAP: do not traverse parents of groups that are not security-enabled | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69953> |
| Issue | #69946 | Make Microsoft.AspNetCore.Components.WebView trim/NativeAOT compatible | open | ScarletKuro | <https://github.com/dotnet/aspnetcore/issues/69946> |
| Issue | #69922 | [API Proposal] Add browser event listeners to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69922> |
| Issue | #69947 | Nullable type param warns on use with other parameters (razor components) | open | stbau04 | <https://github.com/dotnet/aspnetcore/issues/69947> |
| Issue | #69931 | [Blazor] Reconnect UI stuck for good (no further attempts, no Retry) after an attempt whose ConnectCircuit or ResumeCircuit invocation throws | open | eeroglu | <https://github.com/dotnet/aspnetcore/issues/69931> |
| Issue | #69951 | runtime version on startup | open | okarpov | <https://github.com/dotnet/aspnetcore/issues/69951> |
| Issue | #69948 | SignalR on IIS in-process reads the local endpoint of a completed long polling request (AccessViolationException in w3wp, 11.0 RC2) | open | yasmoradi | <https://github.com/dotnet/aspnetcore/issues/69948> |
| Issue | #69943 | OpenAPI: `required` is not emitted for properties of a `[FromForm]` complex type in MVC controllers | open | myextend | <https://github.com/dotnet/aspnetcore/issues/69943> |
| Issue | #69941 | Identity API `/manage/2fa` returns success when a concurrent update prevents saving changes | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69941> |
| Issue | #69939 | Microsoft.Extensions.Caching.SqlServer 11.0.0 RC still includes unused Azure.Identity | open | austinw-fineart | <https://github.com/dotnet/aspnetcore/issues/69939> |
| Issue | #69938 | [API Proposal] Ensure SSR scopes use HttpNavigationManager and interactive server scopes use RemoteNavigationManager | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/issues/69938> |
| Issue | #69930 | Provide a way to have internal Blazor components | closed | Felix-CodingClimber | <https://github.com/dotnet/aspnetcore/issues/69930> |
| Issue | #69919 | MEV should respect JsonConstructorAttribute | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69919> |
| Issue | #54197 | Way to generate 4xx response when non-nullable model property setter throws ArgumentNullException | closed | mikernet | <https://github.com/dotnet/aspnetcore/issues/54197> |
| Issue | #68847 | caching of JWT + Claims | closed | JanEggers | <https://github.com/dotnet/aspnetcore/issues/68847> |
| Issue | #65746 | Scaffolding is Broken in .NET 11 | closed | bhrugen | <https://github.com/dotnet/aspnetcore/issues/65746> |
| Issue | #51759 | Cannot provide a value for property 'AuthenticationService' on type 'Microsoft.AspNetCore.Components.WebAssembly.Authentication.RemoteAuthenticatorView'. There is no registered service of type 'Microsoft.AspNetCore.Components.WebAssembly.Authentication.IRemoteAuthenticationService`1[Microsoft.AspNetCore.Components.WebAssembly.Authentication.RemoteAuthenticationState | closed | dlgombert | <https://github.com/dotnet/aspnetcore/issues/51759> |
| Issue | #66059 | Fix serving of blazor.web.js and blazor.server.js under the original static assets model | closed | NetherGranite | <https://github.com/dotnet/aspnetcore/issues/66059> |
| Issue | #63216 | Build-time compiler errors for Blazor | closed | mapgie | <https://github.com/dotnet/aspnetcore/issues/63216> |
| Issue | #69917 | SignalR JS reuses Azure redirect token at application negotiate endpoint after reconnect | closed | fredrikbernholm | <https://github.com/dotnet/aspnetcore/issues/69917> |
| Issue | #48855 | InputNumber validation breaks when hidden and subsequently rerendered | closed | shirkrm | <https://github.com/dotnet/aspnetcore/issues/48855> |
| Issue | #50536 | Potentially unsound trimming suppression in DefaultAntiforgeryStateProvider | closed | halter73 | <https://github.com/dotnet/aspnetcore/issues/50536> |
| Issue | #52478 | Blazor Web App template: The `Layout` folder (namespace) isn't present in the `_Imports` file | closed | guardrex | <https://github.com/dotnet/aspnetcore/issues/52478> |
| Issue | #53815 | Certain protocols trigger disconnect in Blazor | closed | MarvinKlein1508 | <https://github.com/dotnet/aspnetcore/issues/53815> |
| Issue | #52937 | Provide full `updateTypes` to MetadataUpdateHandlers | closed | jeromelaban | <https://github.com/dotnet/aspnetcore/issues/52937> |
| Issue | #46474 | JSON Web Key Sets (JWKS) for Blazor WebAssembly App with Individual Accounts and ASP.NET Core Hosted | closed | Ogglas | <https://github.com/dotnet/aspnetcore/issues/46474> |
| Issue | #42533 | [Blazor] Annotate Microsoft.AspNetCore.Components.WebAssembly.Authentication for nullability | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/42533> |
| Issue | #24316 | InvalidOperationException: Invalid return url. The return url needs to have the same origin as the current page. | closed | michaeldz | <https://github.com/dotnet/aspnetcore/issues/24316> |
| Issue | #34288 | @onpointerenter and @onpointerleave not firing | closed | iownbey | <https://github.com/dotnet/aspnetcore/issues/34288> |
| Issue | #45904 | Blazor Server <HeadContent> dont merge in LayoutPage and Index Page | closed | baktay | <https://github.com/dotnet/aspnetcore/issues/45904> |
| Issue | #42676 | Trim warnings from components assemblies | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/42676> |
| Issue | #43081 | Make it possible to embed wwwroot in single file publish | closed | TimChen44 | <https://github.com/dotnet/aspnetcore/issues/43081> |
| Issue | #65711 | Web Assembly Renderer Errors | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/65711> |
| Issue | #65189 | Server/Remote functions | closed | MrExpreess | <https://github.com/dotnet/aspnetcore/issues/65189> |
| Issue | #50835 | Transfer component state from server component to client component | closed | kaniosm | <https://github.com/dotnet/aspnetcore/issues/50835> |
| Issue | #48755 | Improve RenderTreeFrameArrayBuilder pooling | closed | SteveSandersonMS | <https://github.com/dotnet/aspnetcore/issues/48755> |
| Issue | #67507 | [area-blazor] When debugging the Blazor WebAssembly project, the breakpoint in Counter.razor file can't be hit | closed | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67507> |
| Issue | #69056 | Fix keyboard and sizing behavior | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69056> |
| Issue | #55030 | Rename and update description of AspNetCoreRuntime package | closed | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/55030> |
| Issue | #64114 | [Wix 5] The .NET SDK/Runtime/Hosting bundle installer displays name and icons are incorrect in the taskbar | closed | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/64114> |
| Issue | #50888 | Consistent naming standard for private static fields | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/50888> |
| Issue | #63518 | ErrorBoundary does not work for Blazor Web App even inside InteractiveWebAssembly with no prerendering | closed | datvm | <https://github.com/dotnet/aspnetcore/issues/63518> |
| Issue | #48613 | EditForm: change API to allow form subission from code | closed | luisabreu | <https://github.com/dotnet/aspnetcore/issues/48613> |
| Issue | #50498 | Add EmptyContent on quickgrid | closed | CrahunGit | <https://github.com/dotnet/aspnetcore/issues/50498> |
| Issue | #53982 | Blazor QuickGrid - Add class based on row item context property value | closed | aditya119 | <https://github.com/dotnet/aspnetcore/issues/53982> |
| Issue | #54930 | QuickGrid - RowDetail | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/54930> |
| Issue | #62677 | QuickGrid: Add EmptyContentTemplate | closed | ashortland-eqix | <https://github.com/dotnet/aspnetcore/issues/62677> |
| Issue | #58711 | Footer in QuickGrid | closed | chiendang1709 | <https://github.com/dotnet/aspnetcore/issues/58711> |
| Issue | #67003 | .NET 10 regression in publishing extra files | closed | miloush | <https://github.com/dotnet/aspnetcore/issues/67003> |
