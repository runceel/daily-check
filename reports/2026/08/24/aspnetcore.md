# dotnet/aspnetcore

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 80 |
| クローズ (未マージ) PR     | 19 |
| 新規 PR (オープン中)       | 41 |
| 新規 Issue                 | 64 |
| クローズ Issue             | 72 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#68465](https://github.com/dotnet/aspnetcore/pull/68465) — Harden chunked encoding parsing （PR / open / Youssef1313）
  ASP.NET Core 利用者は関連する変更の影響を確認し、該当する認証・HTTP・Blazor 設定をテストしてください。
- **⚠ 破壊的変更** [#47410](https://github.com/dotnet/aspnetcore/issues/47410) — Only call AddDataProtection in Authentication Services that require it （Issue / open / eerhardt）
  認証サービスの利用者は Data Protection の登録条件変更を確認してください。
- **⚠ セキュリティ** [#68694](https://github.com/dotnet/aspnetcore/issues/68694) — Consider clock skew for Identity security stamp validation intervals （Issue / open / javiercn）
  Identity 利用者は時計ずれを考慮したセキュリティスタンプ検証を確認してください。
- **⚠ セキュリティ** [#68666](https://github.com/dotnet/aspnetcore/issues/68666) — Blazor Web App OpenID Connect sign-in fails with "failed antiforgery validation" on the form_post callback under .NET 11 automatic CSRF protection （Issue / closed / mattleibow）
  .NET 11 の Blazor OIDC 利用者は antiforgery 検証の修正状況を確認してください。
- **⚠ セキュリティ** [#68486](https://github.com/dotnet/aspnetcore/issues/68486) — [Validation] A new Blazor Web App under a strict Content Security Policy （Issue / open / oroztocil）
  厳格な CSP を設定する Blazor 利用者は新規アプリのポリシー互換性を検証してください。
- **⚠ セキュリティ** [#67721](https://github.com/dotnet/aspnetcore/issues/67721) — SNI parsing accepts malformed server names （Issue / closed / DeagleGross）
  SNI を扱うサーバー運用者は不正なサーバー名の解析修正を確認してください。
- **⚠ セキュリティ** [#67559](https://github.com/dotnet/aspnetcore/issues/67559) — Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData （Issue / closed / rokonec）
  認可要件を利用する開発者はセキュリティメタデータの検査範囲を確認してください。
- **⚠ セキュリティ** [#64952](https://github.com/dotnet/aspnetcore/issues/64952) — WebAssembly.Authentication breaks content security policy, requires unsafe-eval （Issue / open / dosolkowski-work）
  WebAssembly Authentication 利用者は unsafe-eval を要する CSP 影響を確認してください。
- **⚠ セキュリティ** [#47368](https://github.com/dotnet/aspnetcore/issues/47368) — [Upgrade to .Net7] `SecurityStampValidator<TUser>` forces signout of `TwoFactorRememberMeScheme` which leads to InvalidOperationException in case scheme is not registered （Issue / closed / plachor）
  古い Identity の二要素認証スキーム利用者はアップグレード時のサインアウト挙動を確認してください。
- **非推奨/廃止** [#68575](https://github.com/dotnet/aspnetcore/pull/68575) — [release/11.0-rc1] Obsolete Bootstrap 4 Identity UI support （PR / merged / github-actions[bot]）
  Bootstrap 4 の Identity UI 利用者は後継 UI への移行計画を確認してください。
- **非推奨/廃止** [#68477](https://github.com/dotnet/aspnetcore/pull/68477) — Obsolete Bootstrap 4 Identity UI support （PR / merged / Copilot）
  Bootstrap 4 の Identity UI 利用者は後継 UI への移行計画を確認してください。
- **非推奨/廃止** [#64400](https://github.com/dotnet/aspnetcore/pull/64400) — Obsolete IdentityUserContext.SchemaVersion property （PR / open / Copilot）
  IdentityUserContext.SchemaVersion 利用者は非推奨化と代替 API を確認してください。
- **非推奨/廃止** [#64059](https://github.com/dotnet/aspnetcore/pull/64059) — Add comprehensive ObsoletionReport.md tracking all obsolete APIs across the codebase （PR / open / Copilot）
  ASP.NET Core 利用者は Obsolete API の一覧を確認し、将来の移行候補を整理してください。
- **非推奨/廃止** [#63494](https://github.com/dotnet/aspnetcore/issues/63494) — OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute （Issue / closed / desjoerd）
  OpenAPI 生成利用者は Obsolete 属性が仕様へ反映される挙動を確認してください。
- **非推奨/廃止** [#62728](https://github.com/dotnet/aspnetcore/issues/62728) — Obsolete ResponseCaching （Issue / open / danmoseley）
  ResponseCaching 利用者は非推奨化の進展と代替手段を確認してください。
- **非推奨/廃止** [#62552](https://github.com/dotnet/aspnetcore/pull/62552) — Remove all SYSLIB0057 suppressions and replace obsolete X509Certificate2 constructors with X509CertificateLoader （PR / open / Copilot）
  X509Certificate2 の旧コンストラクター利用者は X509CertificateLoader への移行を計画してください。

## 主要な変更点

- HTTP チャンク解析、SNI 解析、認証・認可に関するセキュリティ強化が進んでいます。
- Bootstrap 4 Identity UI と複数の Identity API の非推奨化が進み、移行準備が必要です。
- Blazor の OIDC、CSP、WebAssembly Authentication ではセキュリティポリシーとの互換性確認が重要です。
- 対象期間はオープン Issue と修正 PR が中心で、利用中の機能に応じた個別確認が必要です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68665 | Fix duplicate schema component for nullable unions in OpenAPI | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68665> |
| PR | #68254 | Prevent SFX restores from overwriting assets for another RID | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68254> |
| PR | #68676 | Update SignalR authentication refresh APIs | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68676> |
| PR | #68682 | [test-quarantine] Quarantine QuickGridInteractiveCompatTest.PaginatorCorrectItemsPerPage | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68682> |
| PR | #68684 | [main] (deps): Bump src/submodules/googletest from `49495ea` to `7358557` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68684> |
| PR | #68686 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from acdb3e708ba600e766667825c84f9fa4a49e6c8f to 1353cab671305cff0ae5afc0d96ff3d03f239e0c | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68686> |
| PR | #68685 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from acdb3e708ba600e766667825c84f9fa4a49e6c8f to 1353cab671305cff0ae5afc0d96ff3d03f239e0c | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68685> |
| PR | #68102 | Fix h3 connection-level and stream-level abort locking | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/68102> |
| PR | #68670 | Make HostMatcherPolicy DFA edges case-insensitive | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/68670> |
| PR | #68327 | [Blazor] Add Components.AI server tool rendering | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68327> |
| PR | #68681 | [test-quarantine] Quarantine VirtualizationTest.ScrollToItem_AfterEndJump_LandsAtTarget | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68681> |
| PR | #68700 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68700> |
| PR | #68690 | [release/11.0-rc1] Make HostMatcherPolicy DFA edges case-insensitive | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68690> |
| PR | #68695 | [automated] Merge branch 'release/11.0-rc1' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68695> |
| PR | #68702 | [release/11.0-rc1] Update SignalR authentication refresh APIs | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68702> |
| PR | #68658 | [release/11.0-rc1] Extract IsAuthenticated helper method | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68658> |
| PR | #68669 | Don't apply the CSRF verdict to remote authentication callbacks | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68669> |
| PR | #68654 | [release/11.0-rc1] SignInManager: return SignInResult.Failed for expired passkey session challenge | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68654> |
| PR | #68649 | [release/11.0-rc1] Preserve BadHttpRequestException status codes | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68649> |
| PR | #68655 | [release/11.0-rc1] Honor all sign-in confirmation requirements after registration | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68655> |
| PR | #68638 | [release/11.0-rc1] Reject duplicate SignalR upload stream IDs | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68638> |
| PR | #68660 | [release/11.0-rc1] Clarify AllowUpdates property summary comment | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68660> |
| PR | #68689 | [release/11.0-rc1] Fix  InitialItemIndex viewport underfill for small items in big container or on window resize | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68689> |
| PR | #68688 | [release/11.0-rc1] Use model display names in Blazor input parsing errors | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68688> |
| PR | #68015 | Reject malformed SNI server names in Kestrel's SniOptionsSelector | merged | TemRevil | <https://github.com/dotnet/aspnetcore/pull/68015> |
| PR | #67936 | Fix  InitialItemIndex viewport underfill for small items in big container or on window resize | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67936> |
| PR | #68129 | Support the WebAuthn signals API for passkeys | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68129> |
| PR | #68667 | Use model display names in Blazor input parsing errors | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68667> |
| PR | #68325 | [Blazor] Add Components.AI client tool rendering | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68325> |
| PR | #68631 | Honor all sign-in confirmation requirements after registration | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68631> |
| PR | #67663 | Unexpected DOM persistence: Omitted attributes not removed during re-render | merged | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67663> |
| PR | #67539 | SignInManager: return SignInResult.Failed for expired passkey session challenge | merged | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/67539> |
| PR | #68650 | Avoid duplicate framework builds from Components E2E publishes | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68650> |
| PR | #68645 | Extract IsAuthenticated helper method | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68645> |
| PR | #68596 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 09a0bcffb8286738e8679282171cd1ba548c8c52 to acdb3e708ba600e766667825c84f9fa4a49e6c8f | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68596> |
| PR | #68597 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 09a0bcffb8286738e8679282171cd1ba548c8c52 to acdb3e708ba600e766667825c84f9fa4a49e6c8f | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68597> |
| PR | #68600 | [main] (deps): Bump src/submodules/googletest from `d89aac5` to `49495ea` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68600> |
| PR | #68643 | [test-quarantine] Quarantine RoutingTest.NavigationLock_OverlappingNavigationsCancelExistingNavigations_PushState | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68643> |
| PR | #68218 | [test-quarantine] Stabilize WebSocket ping timeout test | merged | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/68218> |
| PR | #68628 | Mature skill evaluation infrastructure | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68628> |
| PR | #68632 | Preserve BadHttpRequestException status codes | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/68632> |
| PR | #68344 | Fix ApiExplorer to include FromQuery(Name) prefix in parameter names | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68344> |
| PR | #68634 | Don't trim trailing whitespace in resx files | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68634> |
| PR | #67972 | Use fully qualified names, including `global::`, in OpenAPI XML generator output | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67972> |
| PR | #68525 | Reject duplicate SignalR upload stream IDs | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68525> |
| PR | #66569 | Identity: Use TimeProvider for Passkey CreatedAt | merged | Vladik29w | <https://github.com/dotnet/aspnetcore/pull/66569> |
| PR | #68629 | OutputCaching: Avoid locking request with invalid cache key when another request is in-flight | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68629> |
| PR | #68618 | Clarify AllowUpdates property summary comment | merged | guardrex | <https://github.com/dotnet/aspnetcore/pull/68618> |
| PR | #68598 | [release/10.0] (deps): Bump src/submodules/googletest from `3940de9` to `49495ea` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68598> |
| PR | #68640 | Align authentication-state revalidation with authorization semantics | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68640> |
| PR | #68624 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68624> |
| PR | #68489 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68489> |
| PR | #68626 | Remove misleading debug log message from AuthenticationService.ts | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/68626> |
| PR | #68521 | Produce different keys for inline ratelimiting policies | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68521> |
| PR | #68591 | OpenAPI: Add snapshot test for nullable reference type arrays | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68591> |
| PR | #68616 | Collapse issue triage into a single agentic workflow | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68616> |
| PR | #67310 | Fix Inconsistent behavior occurs when using @bind and @bind-value in input date type | merged | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67310> |
| PR | #68576 | [release/11.0-rc1] Avoid ignoring authorization failure reasons | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68576> |
| PR | #68589 | [automated] Merge branch 'release/11.0-rc1' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68589> |
| PR | #68612 | [release/11.0-rc1] Fix auto-pause when circuit starts after enhanced navigation | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68612> |
| PR | #68590 | [release/11.0-rc1] Hide experimental circuit JSON resolver API | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68590> |
| PR | #68540 | Fix auto-pause when circuit starts after enhanced navigation | merged | surya3655 | <https://github.com/dotnet/aspnetcore/pull/68540> |
| PR | #68558 | [test-quarantine] Re-quarantine DataProtectionProviderTests.System_UsesProvidedCertificateNotFromStore | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68558> |
| PR | #68594 | Add automation for merging release/11.0 to main | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68594> |
| PR | #68592 | Exclude WiX SDK from Dependabot | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68592> |
| PR | #68459 | Harden SignalR authentication refresh | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68459> |
| PR | #68585 | Hide experimental circuit JSON resolver API | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68585> |
| PR | #68586 | Add automated merge configurations for 11.0 release branches | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/68586> |
| PR | #68572 | Avoid ignoring authorization failure reasons | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68572> |
| PR | #68571 | Check if TwoFactorRememberMeScheme is registered before signing out | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68571> |
| PR | #68269 | [test-quarantine] Stabilize the async NavigationException E2E test | merged | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/68269> |
| PR | #68477 | Obsolete Bootstrap 4 Identity UI support | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68477> |
| PR | #68554 | Fix TryServeFromCacheAsync_ReturnsFalse_IfVaryByKeyContainsDelimiters failure | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68554> |
| PR | #68561 | Update Helix Job Monitor to preserve failures | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/68561> |
| PR | #68560 | [test-quarantine] Quarantine VirtualizationTest.QuickGrid_ScrollToItem_NegativeIndex_ScrollsToTop | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68560> |
| PR | #68593 | [release/11.0-rc1] Harden SignalR authentication refresh | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68593> |
| PR | #68577 | [release/11.0-rc1] Check if TwoFactorRememberMeScheme is registered before signing out | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68577> |
| PR | #68578 | [release/11.0-rc1] Fix TryServeFromCacheAsync_ReturnsFalse_IfVaryByKeyContainsDelimiters failure | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68578> |
| PR | #68575 | [release/11.0-rc1] Obsolete Bootstrap 4 Identity UI support | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68575> |
| PR | #68312 | [Blazor] Version Components.AI independently as 0.1.0-alpha.1 | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68312> |
| PR | #68692 | [release/11.0-rc1] Fix h3 connection-level and stream-level abort locking | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68692> |
| PR | #66954 | Fix OutputCache caching truncated responses for aborted requests | closed | Bellambharath | <https://github.com/dotnet/aspnetcore/pull/66954> |
| PR | #68504 | Fix static web assets lock-race issue for E2E tests | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/68504> |
| PR | #68646 | [automated] Merge branch 'release/11.0' => 'main' | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68646> |
| PR | #68513 | Support signaling unknown passkey credentials | closed | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68513> |
| PR | #68008 | Fix SignalR reconnect identity bypass with EnableAuthenticationRefresh | closed | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68008> |
| PR | #68262 | Remove Publish-Build-Assets variable group from release/11.0-preview5 | closed | missymessa | <https://github.com/dotnet/aspnetcore/pull/68262> |
| PR | #68264 | Remove Publish-Build-Assets variable group from release/11.0-preview7 | closed | missymessa | <https://github.com/dotnet/aspnetcore/pull/68264> |
| PR | #68263 | Remove Publish-Build-Assets variable group from release/11.0-preview6 | closed | missymessa | <https://github.com/dotnet/aspnetcore/pull/68263> |
| PR | #66775 | Make MVC API analyzers detect undocumented status codes in conditional returns | closed | KitKeen | <https://github.com/dotnet/aspnetcore/pull/66775> |
| PR | #65893 | Support conditional expressions in API1000/API1001 analyzers | closed | luissena | <https://github.com/dotnet/aspnetcore/pull/65893> |
| PR | #65815 | Add Name parameter to UserPasskeyInfo constructor | closed | BloodShop | <https://github.com/dotnet/aspnetcore/pull/65815> |
| PR | #68608 | Add deterministic Blazor component readiness validation | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68608> |
| PR | #68509 | [release/10.0] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68509> |
| PR | #68355 | [release/9.0] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68355> |
| PR | #68354 | [release/10.0] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68354> |
| PR | #68352 | [release/8.0] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68352> |
| PR | #68587 | Bump Microsoft.WixToolset.Sdk from 6.0.3-dotnet.6 to 6.0.3-dotnet.14 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68587> |
| PR | #56880 | [release/8.0] [Infrastructure] Update jquery validate periodically | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/56880> |
| PR | #68627 | Add generalized Blazor component readiness tooling | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68627> |
| PR | #68720 | Fix BL0012 false positive on await foreach and await using | open | AzeemullahRg | <https://github.com/dotnet/aspnetcore/pull/68720> |
| PR | #68733 | [test-quarantine] Quarantine AnchorMode_WindowScroll_End_PrependAtTop_ViewportStaysStable | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68733> |
| PR | #68731 | [test-quarantine] Quarantine QuickGrid_AnchorMode_End_PrependAtTop_ViewportStaysStable | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68731> |
| PR | #68729 | [test-quarantine] Quarantine AnchorMode_Start_LargePrependAtTop_StillShowsNewItems | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68729> |
| PR | #68727 | [test-quarantine] Quarantine QuickGrid_AnchorMode_NearTop_AppendKeepsViewportStable | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68727> |
| PR | #68725 | [test-quarantine] Quarantine QuickGrid_InitialIndex_TallContainer_NearEnd_FillsViewportWithoutUserScroll | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68725> |
| PR | #68709 | [Blazor] Keep Virtualize spacer callbacks programmatic while an alignment is pending | open | lewing | <https://github.com/dotnet/aspnetcore/pull/68709> |
| PR | #68625 | Add ASP.NET Core adversarial fix workflows | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68625> |
| PR | #68721 | Fix rewrite map lookups nested in a pattern | open | astralmaster | <https://github.com/dotnet/aspnetcore/pull/68721> |
| PR | #68714 | Fail pending server JS interop calls when circuits disconnect | open | imsouvik | <https://github.com/dotnet/aspnetcore/pull/68714> |
| PR | #68706 | Validate rewritten Helix Job Monitor | open | mmitche | <https://github.com/dotnet/aspnetcore/pull/68706> |
| PR | #68691 | Reject stale Blazor Virtualize viewport measurements | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68691> |
| PR | #68707 | Remove OS platform check from test setup | open | waqarkabir | <https://github.com/dotnet/aspnetcore/pull/68707> |
| PR | #68668 | [release/11.0-rc1] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68668> |
| PR | #68663 | Use SignalR authentication refresh for Blazor Identity | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68663> |
| PR | #68701 | [automated] Merge branch 'release/11.0-rc1' => 'release/11.0' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68701> |
| PR | #68704 | [Blazor] Document Components design invariants | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68704> |
| PR | #68683 | Don't cache truncated/aborted responses in OutputCacheMiddleware | open | karimsalem1 | <https://github.com/dotnet/aspnetcore/pull/68683> |
| PR | #68698 | Add public API governance instruction evaluation | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68698> |
| PR | #68679 | Added DotNetBuild=true target in NativeAotTestApp project | open | ashutoshjadhav9 | <https://github.com/dotnet/aspnetcore/pull/68679> |
| PR | #68696 | Fix OneLoc GitHub App installation selection | open | missymessa | <https://github.com/dotnet/aspnetcore/pull/68696> |
| PR | #68664 | Run DirectTls handshake user callbacks off the epoll pump thread | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68664> |
| PR | #68671 | [Blazor] Ship Components.AI with the .NET release cadence | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68671> |
| PR | #68672 | [Blazor] Add multimodal message input components | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68672> |
| PR | #68648 | Support passwordless account creation | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68648> |
| PR | #68657 | [release/8.0] Extract IsAuthenticated helper method | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68657> |
| PR | #68656 | [release/10.0] Extract IsAuthenticated helper method | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68656> |
| PR | #68659 | [release/9.0] Extract IsAuthenticated helper method | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68659> |
| PR | #68620 | Clarify that default passkey origin validation enforces same-origin | open | JanKrivanek | <https://github.com/dotnet/aspnetcore/pull/68620> |
| PR | #68621 | Clarify that the certificate validation cache is safely scoped per scheme | open | JanKrivanek | <https://github.com/dotnet/aspnetcore/pull/68621> |
| PR | #68635 | Remove unused Publish-Build-Assets variable group from components-ai-daily.yml | open | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/68635> |
| PR | #68633 | Fixed circuit disconnects caused by navigation during slow custom CircuitHandler execution | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/68633> |
| PR | #68630 | Clarify faithful behavioral proof guidance | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68630> |
| PR | #68601 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68601> |
| PR | #68613 | Reject empty reference tokens in JsonPatch | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68613> |
| PR | #68611 | Surface SignalR Java WebSocket handshake HTTP errors | open | HengYpinn | <https://github.com/dotnet/aspnetcore/pull/68611> |
| PR | #68599 | [release/9.0] (deps): Bump src/submodules/googletest from `3940de9` to `49495ea` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68599> |
| PR | #68595 | [release/8.0] (deps): Bump src/submodules/googletest from `3940de9` to `49495ea` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68595> |
| PR | #68588 | Add NativeAOT support for the Blazor Gateway CLI | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68588> |
| PR | #68570 | [release/9.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68570> |
| Issue | #68708 | [Known Build Error] VirtualizationTest.QuickGrid_InitialIndex_TallContainer_NearEnd_FillsViewportWithoutUserScroll — top rendered index was -1 | open | lewing | <https://github.com/dotnet/aspnetcore/issues/68708> |
| Issue | #68735 | Perf regression: json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68735> |
| Issue | #68712 | Perf regression: antiforgery-noop, json, json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68712> |
| Issue | #68713 | Perf regression: antiforgery-generation, antiforgery-validation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68713> |
| Issue | #68722 | Perf improvement: fortunes, fortunes, fortunes_dapper | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68722> |
| Issue | #68732 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.AnchorMode_WindowScroll_End_PrependAtTop_ViewportSta
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68732> |
| Issue | #68730 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.QuickGrid_AnchorMode_End_PrependAtTop_ViewportStaysS
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68730> |
| Issue | #68728 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.AnchorMode_Start_LargePrependAtTop_StillShowsNewItem
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68728> |
| Issue | #68726 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.QuickGrid_AnchorMode_NearTop_AppendKeepsViewportStab
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68726> |
| Issue | #68724 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.QuickGrid_InitialIndex_TallContainer_NearEnd_FillsVi
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68724> |
| Issue | #68723 | Perf improvement: json, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68723> |
| Issue | #68718 | Perf improvement: fortunes_ef, fortunes_ef, mTls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68718> |
| Issue | #68719 | Perf regression: antiforgery-generation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68719> |
| Issue | #68717 | Perf improvement: kestrel-header-symbols, mTls-handshakes-kestrel, tls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68717> |
| Issue | #68716 | Perf improvement: antiforgery-noop, json, mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68716> |
| Issue | #68715 | Perf improvement: json, json_middleware, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68715> |
| Issue | #68711 | Perf improvement: fortunes, fortunes_dapper, single_query | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68711> |
| Issue | #68710 | Perf improvement: antiforgery-generation, csrf-accepted, fortunes | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68710> |
| Issue | #68705 | Customizing the validation error response shape | open | justindbaur | <https://github.com/dotnet/aspnetcore/issues/68705> |
| Issue | #68703 | Perf improvement: tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68703> |
| Issue | #68661 | Perf regression: fortunes_ef, mvc, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68661> |
| Issue | #68666 | Blazor Web App OpenID Connect sign-in fails with "failed antiforgery validation" on the form_post callback under .NET 11 automatic CSRF protection | closed | mattleibow | <https://github.com/dotnet/aspnetcore/issues/68666> |
| Issue | #68697 | Blazor WebAssembly runtime intermittently fails to start under concurrent page loads (.NET 10) | open | Memphizzz | <https://github.com/dotnet/aspnetcore/issues/68697> |
| Issue | #68694 | Consider clock skew for Identity security stamp validation intervals | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68694> |
| Issue | #68693 | Add ForwardedHeadersOptions.RequireKnownProxyAddress | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68693> |
| Issue | #68609 | Validation Message Displays Property Name Instead of Display Attribute Value | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/68609> |
| Issue | #68637 | Interactive Server page flickers during navigation in Interactive Auto Blazor app | closed | surya3655 | <https://github.com/dotnet/aspnetcore/issues/68637> |
| Issue | #68680 | Quarantine QuickGridInteractiveCompatTest.PaginatorCorrectItemsPerPage | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68680> |
| Issue | #68678 | Browser Link triggers "Permissions policy violation: unload is not allowed in this document" in Edge during Blazor Web App debugging | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68678> |
| Issue | #68677 | Mobile menu remains open after navigation in Blazor Web App interactive render modes (.NET 11) | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68677> |
| Issue | #68644 | Quarantine VirtualizationTest.ScrollToItem_AfterEndJump_LandsAtTarget | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68644> |
| Issue | #68675 | [Blazor Hybrid] WebViewRenderer applies no backpressure — unacknowledged render batches accumulate without bound | open | alexyakunin | <https://github.com/dotnet/aspnetcore/issues/68675> |
| Issue | #68674 | [Blazor Hybrid] A single lost render-batch ack permanently corrupts WebViewRenderer's unacknowledged batch queue | open | alexyakunin | <https://github.com/dotnet/aspnetcore/issues/68674> |
| Issue | #68673 | Minimal API JSON body binding failure falls through to SPA fallback and returns 405 instead of 400 | open | BruceIGEN | <https://github.com/dotnet/aspnetcore/issues/68673> |
| Issue | #68653 | OpenAPI duplicates a polymorphic union case when the union is used as a property | open | verdie-g | <https://github.com/dotnet/aspnetcore/issues/68653> |
| Issue | #68642 | Quarantine RoutingTest.NavigationLock_OverlappingNavigationsCancelExistingNavigations_PushState | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68642> |
| Issue | #68662 | Support email as login identifier in Identity API endpoints | open | seifhesham22 | <https://github.com/dotnet/aspnetcore/issues/68662> |
| Issue | #68641 | Custom BeforeBuild target's generated wwwroot file missing from staticwebassets.endpoints.json depending on build environment | open | Popl7 | <https://github.com/dotnet/aspnetcore/issues/68641> |
| Issue | #68651 | Perf improvement: json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68651> |
| Issue | #68652 | Perf regression: antiforgery-generation, fortunes_ef | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68652> |
| Issue | #68619 | Consider targeting all supported .NET versions in Microsoft.AspNetCore.OpenApi | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68619> |
| Issue | #68623 | Allow Blazor components to specify the default render fragment | closed | ViRuSTriNiTy | <https://github.com/dotnet/aspnetcore/issues/68623> |
| Issue | #68647 | [DirectTLS] run user-callbacks on the threadpool, not on the transport event-pump threads | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68647> |
| Issue | #68639 | gRPC JsonTranscoding: query string parameter from a `oneof` sibling clears a route-bound field | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68639> |
| Issue | #68636 | Absolute-form request target with backslash in path is silently normalized by System.Uri instead of being rejected | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68636> |
| Issue | #68617 | Support `signalAllAcceptedCredentials` and `signalCurrentUserDetails` for passkeys | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68617> |
| Issue | #68622 | Recreate a deleted temp directory instead of failing all later buffered requests | open | VAllens | <https://github.com/dotnet/aspnetcore/issues/68622> |
| Issue | #68573 | Recycling and Shadow Copy combined lead to race condition, new instance fails to start, error code 0x8000ffff | open | JoKeKt | <https://github.com/dotnet/aspnetcore/issues/68573> |
| Issue | #68615 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68615> |
| Issue | #68581 | Authorization is not re-evaluated after a mid-pipeline reroute in implicit-routing minimal hosting | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68581> |
| Issue | #68614 | CORS middleware applies a stale policy decision after pipeline re-execution | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68614> |
| Issue | #68610 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68610> |
| Issue | #68606 | Perf improvement: antiforgery-generation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68606> |
| Issue | #68607 | Perf regression: https, json, json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68607> |
| Issue | #68604 | Perf improvement: antiforgery-generation, antiforgery-validation, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68604> |
| Issue | #68605 | Perf improvement: antiforgery-validation, kestrel-encoded-url, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68605> |
| Issue | #68602 | Perf improvement: csrf-accepted, csrf-rejected, csrf-rejected | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68602> |
| Issue | #68603 | Perf improvement: json, json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68603> |
| Issue | #68574 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68574> |
| Issue | #68580 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68580> |
| Issue | #68583 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68583> |
| Issue | #68584 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68584> |
| Issue | #68582 | Authorization-invoked marker is not endpoint-specific | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68582> |
| Issue | #68579 | JsonHubProtocol does not use PayloadSerializerOptions.MaxDepth when parsing invocation envelopes | open | todorovrosen | <https://github.com/dotnet/aspnetcore/issues/68579> |
| Issue | #67226 | [API Proposal] SignalR Authentication Refresh | closed | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/67226> |
| Issue | #68101 | Fix h3 connection-level and stream-level abort locking | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68101> |
| Issue | #68349 | HostMatcherPolicy builds case-sensitive DFA edges although host matching is case-insensitive | closed | tompostler | <https://github.com/dotnet/aspnetcore/issues/68349> |
| Issue | #67933 | Virtualize doesn't render items for small `InitialIndex` until the first scroll | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67933> |
| Issue | #66929 | SignInManager.GetTwoFactorAuthenticationUserAsync() returns null in .NET 10 — GetUserId returns UserName instead of GUID | closed | elvisw | <https://github.com/dotnet/aspnetcore/issues/66929> |
| Issue | #67721 | SNI parsing accepts malformed server names | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67721> |
| Issue | #27889 | Improvements to web api experience around OpenAPI and API Explorer | closed | pranavkm | <https://github.com/dotnet/aspnetcore/issues/27889> |
| Issue | #4410 | Mvc.Api.Analyzers not recognizing methods from a Base Class | closed | prmces | <https://github.com/dotnet/aspnetcore/issues/4410> |
| Issue | #56463 | Unexpected DOM persistence: Omitted attributes not removed during re-render | closed | sergeyyurkov | <https://github.com/dotnet/aspnetcore/issues/56463> |
| Issue | #67574 | [area-blazor] Blazor WASM Client exceptions do not trigger debugger in .NET 11 Preview 6 | closed | Chakolito | <https://github.com/dotnet/aspnetcore/issues/67574> |
| Issue | #67410 | SignInManager.PasskeySignInAsync throws InvalidOperationException when session challenge has expired instead of returning SignInResult.Failed | closed | doogdeb-work | <https://github.com/dotnet/aspnetcore/issues/67410> |
| Issue | #26279 | SignInManager using ClaimTypes instead of IdentityOptions.ClaimsIdentity where appropriate | closed | joshua-phillips | <https://github.com/dotnet/aspnetcore/issues/26279> |
| Issue | #68474 | Improve authenticated check on output caching | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68474> |
| Issue | #43831 | Pass through response status codes from BadHttpRequestException in ExceptionHandlerMiddleware | closed | DamianEdwards | <https://github.com/dotnet/aspnetcore/issues/43831> |
| Issue | #65080 | Quarantine Microsoft.AspNetCore.WebSockets.Test.WebSocketMiddlewareTests.PingTimeoutCancelsReceiveAsync | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/65080> |
| Issue | #43464 | ApiExplorer does not respect [FromQuery.Name] for complex parameter types | closed | IvMisticos | <https://github.com/dotnet/aspnetcore/issues/43464> |
| Issue | #58213 | Microsoft.AspNetCore.OpenApi fails to generate document when using polymorphic types | closed | ptffr | <https://github.com/dotnet/aspnetcore/issues/58213> |
| Issue | #68511 | Signal options for unknown passkey credentials | closed | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68511> |
| Issue | #68301 | SignalR should reject duplicate client upload stream IDs instead of replacing active streams | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68301> |
| Issue | #66477 | Passkey CreatedAt ignores TimeProvider | closed | ridercz | <https://github.com/dotnet/aspnetcore/issues/66477> |
| Issue | #67763 | OutputCaching invalid cache keys can coalesce unrelated concurrent responses | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/67763> |
| Issue | #67326 | RequireRateLimiting(IRateLimiterPolicy<T>) inline policies share a partition-key namespace, causing cross-policy partition collisions | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/67326> |
| Issue | #15385 | API analyzers should support undeclared 200 status codes | closed | jawn | <https://github.com/dotnet/aspnetcore/issues/15385> |
| Issue | #28589 | AD0001 Warnings from exceptions in OpenAPIAnalyzers for ValidationProblem method | closed | ChristophHornung | <https://github.com/dotnet/aspnetcore/issues/28589> |
| Issue | #36315 | API1001 False Positive on 202 response | closed | Cyberboss | <https://github.com/dotnet/aspnetcore/issues/36315> |
| Issue | #20661 | Web API Analyzers don't take web api conventions into consideration | closed | giggio | <https://github.com/dotnet/aspnetcore/issues/20661> |
| Issue | #33105 | Analyzers API1000 and API1001 should trigger on conditional returns | closed | eatdrinksleepcode | <https://github.com/dotnet/aspnetcore/issues/33105> |
| Issue | #40312 | API1000 analyser should recognise annotations in XML docs | closed | lonix1 | <https://github.com/dotnet/aspnetcore/issues/40312> |
| Issue | #39632 | API1000 analyser should respect custom subclassed attributes | closed | lonix1 | <https://github.com/dotnet/aspnetcore/issues/39632> |
| Issue | #65774 | UserPasskeyInfo should have Name in the constructor | closed | r2go-beep | <https://github.com/dotnet/aspnetcore/issues/65774> |
| Issue | #40660 | @bind and @bind-Value and @bind-Value for extra model behave different for datetime | closed | MarvinKlein1508 | <https://github.com/dotnet/aspnetcore/issues/40660> |
| Issue | #68337 | Blazor AutoPause doesn't initialize when Interactive Server starts after enhanced navigation | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68337> |
| Issue | #67913 | [Experimental] [Perf] Restore accept4() single-syscall accept path for the DirectTls transport (Connection: close) | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67913> |
| Issue | #67909 | DirectTls transport — public API | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67909> |
| Issue | #68284 | Support Blazor Server identity changes during SignalR authentication refresh | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68284> |
| Issue | #52682 | UserAuthorizationFailed log message loses information about FailureReasons | closed | wasker | <https://github.com/dotnet/aspnetcore/issues/52682> |
| Issue | #47368 | [Upgrade to .Net7] `SecurityStampValidator<TUser>` forces signout of `TwoFactorRememberMeScheme` which leads to InvalidOperationException in case scheme is not registered | closed | plachor | <https://github.com/dotnet/aspnetcore/issues/47368> |
| Issue | #63191 | Consider obsoleting Bootstrap 4 support in the default Identity UI package | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/63191> |
| Issue | #66118 | Quarantine RedirectionTest.NavigationException_InAsyncContext_DoesNotBecomeUnobservedTaskException | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66118> |
| Issue | #68565 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68565> |
| Issue | #68552 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68552> |
| Issue | #68550 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68550> |
| Issue | #68548 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68548> |
| Issue | #68547 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68547> |
| Issue | #68542 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68542> |
| Issue | #68538 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68538> |
| Issue | #68537 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68537> |
| Issue | #68534 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68534> |
| Issue | #68533 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68533> |
| Issue | #68532 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68532> |
| Issue | #68519 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68519> |
| Issue | #68518 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68518> |
| Issue | #68512 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68512> |
| Issue | #68508 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68508> |
| Issue | #68566 | aos | closed | krobchai32659-jpg | <https://github.com/dotnet/aspnetcore/issues/68566> |
| Issue | #68567 | Quarantine <FAILING_TEST_NAME> | closed | krobchai32659-jpg | <https://github.com/dotnet/aspnetcore/issues/68567> |
