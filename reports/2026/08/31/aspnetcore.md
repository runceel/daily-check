# dotnet/aspnetcore

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 21 |
| クローズ (未マージ) PR     | 13 |
| 新規 PR (オープン中)       | 34 |
| 新規 Issue                 | 20 |
| クローズ Issue             | 15 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#68655](https://github.com/dotnet/aspnetcore/pull/68655) — [release/11.0-rc1] Honor all sign-in confirmation requirements after registration （PR / merged / github-actions[bot]）
  .NET 11 RC1 の Identity 利用者は、登録後のサインイン確認フローが厳格化されるため、確認要求を前提にしたテストとユーザー導線を見直してください。
- **⚠ 破壊的変更** [#68465](https://github.com/dotnet/aspnetcore/pull/68465) — Harden chunked encoding parsing （PR / merged / Youssef1313）
  Kestrel の不正な chunked encoding の受け入れ方が変わる可能性があるため、HTTP プロキシや独自クライアントを使う運用者は互換性を確認してください。
- **⚠ セキュリティ** [#64280](https://github.com/dotnet/aspnetcore/issues/64280) — Microsoft.AspNetCore.Razor.Design package contains vulnerable Newtonsoft.Json.dll CVE-2024-21907 （Issue / open / boi2ot）
  Razor tooling を利用する開発者は、脆弱な Newtonsoft.Json DLL の影響を受けるバージョンを特定し、修正版パッケージまたは SDK への更新を確認してください。
- **非推奨/廃止** [#68841](https://github.com/dotnet/aspnetcore/pull/68841) — Mark AddRazorRuntimeCompilation methods obsolete （PR / open / Copilot）
  `AddRazorRuntimeCompilation` を使うアプリは .NET 10 以降の非推奨化に備え、代替の開発時ビルド／ホットリロード手段を確認してください。
- **非推奨/廃止** [#64372](https://github.com/dotnet/aspnetcore/issues/64372) — Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 （Issue / open / joperezr）
  関連する Razor runtime compilation API 全体が非推奨化される見込みのため、利用箇所を洗い出し、.NET 10 以降の移行方針を決めてください。

## 主要な変更点

- .NET 11 RC1 の Identity で、登録後に必要なサインイン確認要件をすべて尊重するよう修正されました。
- Kestrel の chunked encoding パーサーが強化され、不正な転送エンコーディングへの対応が厳格化されました。
- Razor runtime compilation の `AddRazorRuntimeCompilation` 系 API は .NET 10 以降の非推奨化が進行中です。
- Passkey の well-known endpoint と WebAuthn signals API のサポートが追加されました。
- Output Caching のクエリ文字列キー衝突修正、OpenTelemetry HTTP サーバー属性追加、Blazor／QuickGrid の安定化がマージされました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68334 | [Blazor] Add shared agent and UI state | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68334> |
| PR | #68760 | Clarify form limits for multipart requests | merged | halter73 | <https://github.com/dotnet/aspnetcore/pull/68760> |
| PR | #68800 | Fix stale JS bundle and E2E build blockers in Components AGENTS.md | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68800> |
| PR | #68803 | Fix issue-triage-agent area guidance for Blazor Forms/QuickGrid/CustomElements | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68803> |
| PR | #68874 | Update Helix Job Monitor to 11.0.0-beta.26427.10 | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/68874> |
| PR | #68522 | Require reauthentication before adding a passkey or setting a password | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68522> |
| PR | #68875 | [release/11.0] Update Helix Job Monitor to 11.0.0-beta.26427.10 | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/68875> |
| PR | #68864 | Stabilize `QuickGrid` anchor mode test setup | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68864> |
| PR | #68866 | Temporarily disable Helix JobMonitor | merged | garath | <https://github.com/dotnet/aspnetcore/pull/68866> |
| PR | #68792 | Fix Output Caching query-string cache-key collision | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68792> |
| PR | #68851 | [test-quarantine] Quarantine flaky Http3RequestTests.POST_Bidirectional_LargeData_Cancellation_Error | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68851> |
| PR | #68862 | Fix test quarantine failure evidence | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68862> |
| PR | #68857 | [test-quarantine] Quarantine flaky BlazorWebJsInitializersTest.InitializersRunsModernCallbacksByDefaultWhenPresent | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68857> |
| PR | #68853 | [test-quarantine] Quarantine flaky VirtualizeTest.ScrollToIndexAsync_CancellationCancelsProviderRequest | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68853> |
| PR | #68791 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68791> |
| PR | #68795 | Add well-known passkey endpoints and WebAuthn signals support | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68795> |
| PR | #68824 | Adds missing OpenTelemetry HTTP server semantic-convention attributes | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68824> |
| PR | #68785 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68785> |
| PR | #68845 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68845> |
| PR | #68835 | Update Microsoft.OpenApi to latest | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68835> |
| PR | #68794 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68794> |
| PR | #62789 | Add visibility change beacon and circuit cleanup heuristic for Blazor Server | closed | oroztocil | <https://github.com/dotnet/aspnetcore/pull/62789> |
| PR | #68883 | [release/11.0-rc1] Use SignalR authentication refresh for Blazor Identity | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68883> |
| PR | #68876 | [release/11.0-rc1] Update Helix Job Monitor to 11.0.0-beta.26427.10 | closed | mmitche | <https://github.com/dotnet/aspnetcore/pull/68876> |
| PR | #68748 | [Blazor] Re-derive Virtualize at-bottom state when the anchor mode changes | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/68748> |
| PR | #68086 | Update SDK to latest main build | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68086> |
| PR | #68625 | Add ASP.NET Core adversarial fix workflows | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68625> |
| PR | #68822 | [Hosting] Add recommended HTTP server span attributes | closed | martincostello | <https://github.com/dotnet/aspnetcore/pull/68822> |
| PR | #68861 | [release/11.0-rc1] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68861> |
| PR | #68855 | [test-quarantine] Quarantine flaky ServerVirtualizationTest.AnchorMode_WindowScroll_End_PrependAtTop_ViewportStaysStable | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68855> |
| PR | #68849 | [test-quarantine] Quarantine flaky RedirectionTest external-navigation tests | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68849> |
| PR | #68833 | [release/11.0-rc1] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68833> |
| PR | #67664 | Merge endpoint metadata for dynamic endpoints. | closed | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67664> |
| PR | #68313 | [test-quarantine] Stabilize RedirectionTest.RedirectEnhancedPostToExternal Quarantine test | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/68313> |
| PR | #68887 | Harden email change in Identity API | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68887> |
| PR | #68878 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68878> |
| PR | #68877 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68877> |
| PR | #68902 | [test-quarantine] Unquarantine 3 reliably-passing tests | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68902> |
| PR | #68865 | Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3061391 | open | dotnet-oneloc-localization[bot] | <https://github.com/dotnet/aspnetcore/pull/68865> |
| PR | #68859 | Add documentation for AuthenticateResult.Fail failureMessage parameter | open | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68859> |
| PR | #68858 | Allow dots in explicit --file-name values in GetDocument.Insider | open | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68858> |
| PR | #68873 | [release/11.0-rc1] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68873> |
| PR | #68901 | Return 500 for invalid transfer encoding on non-body responses | open | zeohhh | <https://github.com/dotnet/aspnetcore/pull/68901> |
| PR | #68900 | Fix standalone Blazor WASM hot reload in Gateway | open | lewing | <https://github.com/dotnet/aspnetcore/pull/68900> |
| PR | #68899 | Document ProjectTemplates validation prerequisites | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68899> |
| PR | #68898 | Update Bootstrap to 5.3.8 in templates and Identity UI | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68898> |
| PR | #68880 | Kestrel: Reject backslash in Uri parsing | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68880> |
| PR | #68882 | [release/11.0] Stabilize `QuickGrid` anchor mode test setup | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68882> |
| PR | #68895 | [release/11.0] Use SignalR authentication refresh for Blazor Identity | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68895> |
| PR | #68844 | Fix LoginWith2fa remember-machine checkbox label association | open | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68844> |
| PR | #68885 | [Blazor] Fix cascading parameter hot reload caching | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68885> |
| PR | #68891 | Surface WebAssembly root component activation faults | open | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/68891> |
| PR | #68860 | [automated] Merge branch 'release/11.0' => 'main' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68860> |
| PR | #68890 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1353cab671305cff0ae5afc0d96ff3d03f239e0c to 054b17f6b9f308896eaf66b9e2cab454141fa4e0 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68890> |
| PR | #68889 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1353cab671305cff0ae5afc0d96ff3d03f239e0c to 054b17f6b9f308896eaf66b9e2cab454141fa4e0 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68889> |
| PR | #68888 | [main] (deps): Bump src/submodules/googletest from `7358557` to `e273a2d` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68888> |
| PR | #68886 | Stabilize Virtualize initial item positioning | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68886> |
| PR | #68841 | Mark AddRazorRuntimeCompilation methods obsolete | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68841> |
| PR | #68871 | Wire issue triage workflow to reusable skill | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68871> |
| PR | #68870 | Add reusable issue triage skill and Vally evals | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68870> |
| PR | #68869 | Complete issue triage type guidance | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68869> |
| PR | #68867 | Add a read-only /review command for pull requests (staged) | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68867> |
| PR | #68863 | [Blazor] Check compatibility switches during investigations | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68863> |
| PR | #68846 | Support validation for C# union cases | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68846> |
| PR | #68840 | Prevent page title flash during WebAssembly hydration | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/68840> |
| PR | #68836 | [release/10.0] Update OpenApi to 2.12.2 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68836> |
| PR | #68838 | [release/8.0] Update OpenApi to 1.6.31 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68838> |
| PR | #68837 | [release/9.0] Update OpenApi to 1.6.31 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68837> |
| Issue | #68906 | Perf regression: tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68906> |
| Issue | #68904 | Perf improvement: antiforgery-noop, https, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68904> |
| Issue | #68905 | Perf improvement: kestrel-header-symbols, kestrel-header-symbols | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68905> |
| Issue | #68903 | Perf improvement: https, https, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68903> |
| Issue | #68896 | Blazor download size regression: blazorwasmbenchmark | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68896> |
| Issue | #68897 | Blazor time to first UI regression: blazorwasmbenchmark | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68897> |
| Issue | #68881 | Automatic code fixes unavailable for BL0015 in components and BL0016 in all project types (.NET 11) | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/68881> |
| Issue | #68894 | [Blazor] Container Support generates unnecessary Dockerfile for Client project in Interactive WebAssembly and Interactive Auto apps | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68894> |
| Issue | #68893 | [SignalR Java client]: signalr-messagepack 8.0.24 drops Android 7 support in a patch release | open | alexeygritsenko | <https://github.com/dotnet/aspnetcore/issues/68893> |
| Issue | #68892 | [Blazor] Creating Interactive WebAssembly or Auto apps with Container Support triggers missing launchSettings.json error popup | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68892> |
| Issue | #68868 | Server action for Blazor wasm like Next.js | closed | ziaulhasanhamim | <https://github.com/dotnet/aspnetcore/issues/68868> |
| Issue | #68879 | Support FromQuery for Minimal API | closed | WeihanLi | <https://github.com/dotnet/aspnetcore/issues/68879> |
| Issue | #68847 | caching of JWT + Claims | open | JanEggers | <https://github.com/dotnet/aspnetcore/issues/68847> |
| Issue | #68848 | Quarantine RedirectionTest.RedirectStreamingPostToExternal and RedirectEnhancedPostToExternal | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68848> |
| Issue | #68854 | Quarantine ServerVirtualizationTest.AnchorMode_WindowScroll_End_PrependAtTop_ViewportStaysStable | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68854> |
| Issue | #68852 | Quarantine VirtualizeTest.ScrollToIndexAsync_CancellationCancelsProviderRequest | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68852> |
| Issue | #68856 | Quarantine BlazorWebJsInitializersTest.InitializersRunsModernCallbacksByDefaultWhenPresent | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68856> |
| Issue | #68850 | Quarantine Http3RequestTests.POST_Bidirectional_LargeData_Cancellation_Error | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68850> |
| Issue | #68843 | Preserve structured model binding and validation error information in ModelState | open | matra774 | <https://github.com/dotnet/aspnetcore/issues/68843> |
| Issue | #68839 | Perf regression: fortunes_ef, json_middleware, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68839> |
| Issue | #68569 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68569> |
| Issue | #67128 | Runtime update with uninstall set to nextSession uninstalls latest version as well | closed | LukasChristel | <https://github.com/dotnet/aspnetcore/issues/67128> |
| Issue | #66865 | Harden Components/Account/Pages/Manage/Passkeys.razor | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66865> |
| Issue | #68802 | Issue triage agent maps Blazor component projects to area-ui-rendering | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68802> |
| Issue | #68828 | Perf improvement: fortunes_ef, updates | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68828> |
| Issue | #67064 | Adding Azure Application Insights Connected Service fails with circular ILoggerFactory dependency on .NET 11 with Microsoft.ApplicationInsights.AspNetCore 3.1.2; works on ApplicationInsights 3.0.0 | closed | cyimperial | <https://github.com/dotnet/aspnetcore/issues/67064> |
| Issue | #68779 | Output Caching query-string key collision on `=` | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68779> |
| Issue | #68617 | Support `signalAllAcceptedCredentials` and `signalCurrentUserDetails` for passkeys | closed | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68617> |
| Issue | #68128 | Support `signalUnknownCredential` for revoked passkeys using signals API | closed | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68128> |
| Issue | #67300 | Make it easy to configure [well-known passkey endpoints](https://w3c.github.io/webappsec-passkey-endpoints/passkey-endpoints.html) so that authenticators can automatically upgrade passwords to passkeys without requiring the customer to visit the site | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67300> |
| Issue | #67299 | Support the WebAuthn signals API for passkeys | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67299> |
| Issue | #66666 | Dynamic endpoint discards the original endpoint's metadata | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66666> |
