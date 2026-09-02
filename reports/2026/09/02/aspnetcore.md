# dotnet/aspnetcore

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 25 |
| クローズ (未マージ) PR     | 10 |
| 新規 PR (オープン中)       | 26 |
| 新規 Issue                 | 25 |
| クローズ Issue             | 17 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` （PR / merged / DeagleGross）
  antiforgery 検証を利用するアプリは、拒否タイミングが form consumer 側へ移ったため、`IAntiforgeryValidationFeature` と既存のエラーハンドリングを確認してください。
- **⚠ セキュリティ** [#68964](https://github.com/dotnet/aspnetcore/issues/68964) — Authorization execution guard trusts an identity-blind 'invoked' flag: endpoint substitution after UseAuthorization bypasses [Authorize] （Issue / closed / annatchijova）
  `UseAuthorization` 後のエンドポイント差し替えを行うアプリは、認証主体を考慮しない invoked フラグによる認可バイパスがないか直ちに確認してください。
- **⚠ セキュリティ** [#68486](https://github.com/dotnet/aspnetcore/issues/68486) — [Validation] A new Blazor Web App under a strict Content Security Policy （Issue / closed / oroztocil）
  厳格な CSP を設定する Blazor Web App の開発者は、必要なスクリプト許可と起動時のセキュリティ挙動を検証してください。
- **非推奨/廃止** [#68841](https://github.com/dotnet/aspnetcore/pull/68841) — Mark AddRazorRuntimeCompilation methods obsolete （PR / merged / Copilot）
  `AddRazorRuntimeCompilation` を呼び出すアプリは非推奨警告を確認し、将来の代替手段と削除時期を計画してください。

## 主要な変更点

- **破壊的変更**として antiforgery/CSRF 拒否を form consumer 側へ遅延させる契約が導入され、関連アプリは検証フローを見直す必要があります。
- 認可ガードのセキュリティ問題が報告・修正対象となり、`UseAuthorization` 後のエンドポイント差し替えを行う構成は重点確認が必要です。
- Blazor では CSP 検証、DOM listener のライフサイクル、Identity ページの validation summary、Hot Reload キャッシュなどの改善が進みました。
- Kestrel の URI バックスラッシュ拒否や IIS 同期 flush 制限など、入力処理と応答制御の堅牢化が行われました。
- `AddRazorRuntimeCompilation` メソッドが非推奨となり、利用プロジェクトは移行先を確認してください。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68823 | [Blazor] Document DOM listener lifecycle ownership | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68823> |
| PR | #68844 | Fix LoginWith2fa remember-machine checkbox label association | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68844> |
| PR | #68913 | Fix validation summary list semantics in Blazor Identity pages | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68913> |
| PR | #68846 | Support validation for C# union cases | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68846> |
| PR | #68860 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68860> |
| PR | #68767 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68767> |
| PR | #68899 | Document and repair local template validation | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68899> |
| PR | #68935 | [package] Update Microsoft.Windows.CsWin32 to 0.3.298 | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68935> |
| PR | #68944 | [test-quarantine] Quarantine flaky Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68944> |
| PR | #68946 | [test-quarantine] Quarantine flaky RedirectionTest.RedirectEnhancedNonBlazorGetToExternal | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68946> |
| PR | #68959 | Clarify API review timing and add authoring skill | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68959> |
| PR | #68885 | [Blazor] Fix cascading parameter hot reload caching | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68885> |
| PR | #68768 | Fix menu problem in templates | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68768> |
| PR | #68898 | Update Bootstrap to 5.3.8 in templates and Identity UI | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68898> |
| PR | #68891 | Surface WebAssembly root component activation faults | merged | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/68891> |
| PR | #68880 | Kestrel: Reject backslash in Uri parsing | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68880> |
| PR | #68763 | Disallow synchronous IIS response flushes | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/68763> |
| PR | #68841 | Mark AddRazorRuntimeCompilation methods obsolete | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68841> |
| PR | #68878 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68878> |
| PR | #68920 | [main] (deps): Bump src/submodules/googletest from `7358557` to `36ba75f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68920> |
| PR | #68877 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68877> |
| PR | #68921 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1353cab671305cff0ae5afc0d96ff3d03f239e0c to 306225d7029934938d109e18df390f04e366a68d | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68921> |
| PR | #68923 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1353cab671305cff0ae5afc0d96ff3d03f239e0c to 306225d7029934938d109e18df390f04e366a68d | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68923> |
| PR | #68882 | [release/11.0] Stabilize `QuickGrid` anchor mode test setup | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68882> |
| PR | #68014 | Move to Roslyn's unified ExternalAccess library | merged | JoeRobich | <https://github.com/dotnet/aspnetcore/pull/68014> |
| PR | #68939 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68939> |
| PR | #68873 | [release/11.0-rc1] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68873> |
| PR | #68914 | Fix/67856 attribute usage inheritance | closed | vipulm12 | <https://github.com/dotnet/aspnetcore/pull/68914> |
| PR | #68595 | [release/8.0] (deps): Bump src/submodules/googletest from `3940de9` to `49495ea` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68595> |
| PR | #68889 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1353cab671305cff0ae5afc0d96ff3d03f239e0c to 054b17f6b9f308896eaf66b9e2cab454141fa4e0 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68889> |
| PR | #68890 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1353cab671305cff0ae5afc0d96ff3d03f239e0c to 054b17f6b9f308896eaf66b9e2cab454141fa4e0 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68890> |
| PR | #68888 | [main] (deps): Bump src/submodules/googletest from `7358557` to `e273a2d` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68888> |
| PR | #68599 | [release/9.0] (deps): Bump src/submodules/googletest from `3940de9` to `49495ea` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68599> |
| PR | #68907 | Perf: cache UTF8-encoded bytes in CacheViewKeyResolver to reduce repe… | closed | vipulm12 | <https://github.com/dotnet/aspnetcore/pull/68907> |
| PR | #68908 | Perf/type namehash arraypool | closed | vipulm12 | <https://github.com/dotnet/aspnetcore/pull/68908> |
| PR | #68969 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68969> |
| PR | #68968 | [release/8.0] Update dependencies from dotnet/source-build-assets | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68968> |
| PR | #68967 | [release/9.0] Update dependencies from dotnet/source-build-assets | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68967> |
| PR | #68966 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68966> |
| PR | #68932 | [release/10.0] Fix installer background for bundles | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68932> |
| PR | #68961 | [Blazor] Generalize host startup and initialization | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68961> |
| PR | #68963 | [release/8.0] Update branding to 8.0.32 | open | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/68963> |
| PR | #68962 | [release/9.0] Update branding to 9.0.21 | open | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/68962> |
| PR | #68926 | Preserve regex escapes in Apache rewrite rules | open | vipulm12 | <https://github.com/dotnet/aspnetcore/pull/68926> |
| PR | #68929 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68929> |
| PR | #68925 | Fix/67856 attribute usage inheritance | open | vipulm12 | <https://github.com/dotnet/aspnetcore/pull/68925> |
| PR | #68917 |  [DirectTls] Add metrics, logging, and epoll telemetry | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68917> |
| PR | #68950 | Support HTTP HEAD requests in CacheView | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68950> |
| PR | #68953 | CacheView optimizations | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68953> |
| PR | #68958 | [release/8.0] Update dependencies from dotnet/source-build-externals | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68958> |
| PR | #68955 | [Blazor] Add E2E testing skill | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68955> |
| PR | #68951 | [release/11.0] Fix menu problem in templates | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68951> |
| PR | #68948 | [release/11.0] Update Bootstrap to 5.3.8 in templates and Identity UI | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68948> |
| PR | #68940 | [release/8.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68940> |
| PR | #68937 | [build-ops] Update Selenium and Playwright dependencies to latest stable versions | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68937> |
| PR | #68934 | Add missing ExpandoObject test coverage in ObjectVisitorTest | open | denizguney | <https://github.com/dotnet/aspnetcore/pull/68934> |
| PR | #68930 | Fix installer background for bundles | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68930> |
| PR | #68931 | [release/11.0] Fix installer background for bundles | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68931> |
| PR | #68918 | [release/10.0] (deps): Bump src/submodules/googletest from `49495ea` to `36ba75f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68918> |
| PR | #68922 | [release/8.0] (deps): Bump src/submodules/googletest from `3940de9` to `36ba75f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68922> |
| PR | #68919 | [release/9.0] (deps): Bump src/submodules/googletest from `3940de9` to `36ba75f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68919> |
| Issue | #68964 | Authorization execution guard trusts an identity-blind 'invoked' flag: endpoint substitution after UseAuthorization bypasses [Authorize] | closed | annatchijova | <https://github.com/dotnet/aspnetcore/issues/68964> |
| Issue | #68965 | HPACK/QPACK Huffman output cap is checked after unbounded Array.Resize doubling (bounded, hardening) | open | annatchijova | <https://github.com/dotnet/aspnetcore/issues/68965> |
| Issue | #68957 | [API Proposal] Blazor host startup values and initialization pipeline | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68957> |
| Issue | #68956 | Clarify API approval as an RTM requirement | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68956> |
| Issue | #68960 | Remove redundant __ASPNETCORE_BROWSER_TOOLS propagation for modern Blazor WebAssembly | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68960> |
| Issue | #68924 | [dnceng-bot] Branch `aspnetcore/main` can't be mirrored to Azdo fast forward branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/68924> |
| Issue | #68954 | [Blazor] A RenderFragment's roots cannot be given a `slot` attribute | open | simonziegler | <https://github.com/dotnet/aspnetcore/issues/68954> |
| Issue | #68952 | Design Proposal: #5981 Performance of Rewrite Middleware | open | cdincer | <https://github.com/dotnet/aspnetcore/issues/68952> |
| Issue | #68949 | Document `OpenApiGenerationEnvironment` MSBuild property | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68949> |
| Issue | #68927 | Blazor - Navigating to same [Authorized] page should not recreate page component | open | UniMichael | <https://github.com/dotnet/aspnetcore/issues/68927> |
| Issue | #68938 | Kestrel SNI configuration does not canonicalize IDN host names | open | halter73 | <https://github.com/dotnet/aspnetcore/issues/68938> |
| Issue | #68947 | Quarantine RedirectionTest.RedirectEnhancedNonBlazorGetToExternal is flaky | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68947> |
| Issue | #68945 | Quarantine Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised is flaky | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68945> |
| Issue | #68943 | Output and Response Caching treat absent and empty query/header values as the same cache key | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68943> |
| Issue | #68942 | Revise Json Patch handling of the "-" token | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68942> |
| Issue | #68941 | Perf improvement: fortunes_ef | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68941> |
| Issue | #68910 | Perf improvement: json, json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68910> |
| Issue | #68928 | Perf regression: updates | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68928> |
| Issue | #68936 | Align Device Bound Sessions package with platform prerelease versioning | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68936> |
| Issue | #68915 | Kestrel leaves ~20% of a 24-core Linux host idle under high-concurrency HTTP/1.1 load | open | mysteriousmy | <https://github.com/dotnet/aspnetcore/issues/68915> |
| Issue | #68933 | Add missing ExpandoObject test coverage in ObjectVisitorTest | open | denizguney | <https://github.com/dotnet/aspnetcore/issues/68933> |
| Issue | #68911 | Perf regression: fortunes_dapper | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68911> |
| Issue | #68916 | CacheView does not apply to HTTP HEAD requests | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68916> |
| Issue | #68909 | HEAD requests to streamed Razor components return response headers immediately while GET waits for rendering completion | closed | surya3655 | <https://github.com/dotnet/aspnetcore/issues/68909> |
| Issue | #68912 | Cache-key collision in Microsoft.AspNetCore.OutputCaching | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68912> |
| Issue | #68486 | [Validation] A new Blazor Web App under a strict Content Security Policy | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68486> |
| Issue | #67624 | Hot Reload: CascadingParameterState static cache is never cleared, so new [CascadingParameter] additions require a restart | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67624> |
| Issue | #67666 | Update Bootstrap in project templates from 5.3.3 to latest 5.x (5.3.8) | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67666> |
| Issue | #68677 | Mobile menu remains open after navigation in Blazor Web App interactive render modes (.NET 11) | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68677> |
| Issue | #67980 | Blazor Web: exception during WASM root component activation is silently discarded — InteractiveAuto page stays a dead prerender with no error and no Server fallback | closed | alexaka1 | <https://github.com/dotnet/aspnetcore/issues/67980> |
| Issue | #68013 | Use Roslyn's unified ExternalAccess library | closed | JoeRobich | <https://github.com/dotnet/aspnetcore/issues/68013> |
| Issue | #68693 | Add ForwardedHeadersOptions.RequireKnownProxyAddress | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68693> |
| Issue | #68636 | Absolute-form request target with backslash in path is silently normalized by System.Uri instead of being rejected | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68636> |
| Issue | #68906 | Perf regression: tls-renegotiation-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68906> |
