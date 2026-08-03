# dotnet/aspnetcore

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 28 |
| クローズ (未マージ) PR     | 9 |
| 新規 PR (オープン中)       | 46 |
| 新規 Issue                 | 37 |
| クローズ Issue             | 30 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#68052](https://github.com/dotnet/aspnetcore/pull/68052) — [Infrastructure] Updated npm packages 2026-07-27 （PR / merged / wtgodbe）
  npm 依存パッケージを使う ASP.NET Core 開発者は更新内容と監査結果を確認し、既知の脆弱性が残る依存を固定していないか確認してください。
- **⚠ セキュリティ** [#67543](https://github.com/dotnet/aspnetcore/issues/67543) — [NETSDKE2E][ARM64 Only] NET10.0.301 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project （Issue / closed / v-huiwong）
  .NET 10 ARM64 環境の利用者は Microsoft.OpenApi 2.0.0 の NU1903 警告と高重大度脆弱性を確認し、安全なバージョンへ更新してください。
- **⚠ セキュリティ** [#67505](https://github.com/dotnet/aspnetcore/issues/67505) — Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 （Issue / closed / LiorBanai）
  Microsoft.AspNetCore.OpenApi を参照する利用者は、CVE-2026-49451 の影響と修正版パッケージへの更新状況を確認してください。
- **非推奨/廃止** [#68072](https://github.com/dotnet/aspnetcore/pull/68072) — [release/2.3] Remove deprecated SignalR.Redis and SignalR.Protocols.MessagePack packages （PR / merged / wtgodbe）
  SignalR.Redis / SignalR.Protocols.MessagePack の利用者は、release/2.3 系から削除されるため代替パッケージへの移行計画を確認してください。
- **非推奨/廃止** [#67984](https://github.com/dotnet/aspnetcore/pull/67984) — Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom （PR / merged / Copilot）
  JsonPatch の OperationBase.ShouldSerializeFrom に依存するコードは非推奨 API への依存を外し、現行の STJ 対応へ移行してください。
- **非推奨/廃止** [#67958](https://github.com/dotnet/aspnetcore/issues/67958) — Cleanup custom handling of Obsolete attribute once we get updates from STJ flowing （Issue / open / Youssef1313）
  カスタム Obsolete 処理を利用する保守担当者は、System.Text.Json の更新後に不要となる処理を整理できるよう追跡してください。

## 主要な変更点

- **セキュリティ**: npm 依存と Microsoft.OpenApi / Microsoft.AspNetCore.OpenApi の脆弱性警告・CVE 対応が確認対象です。
- **非推奨・削除**: release/2.3 で SignalR.Redis と SignalR.Protocols.MessagePack が削除され、JsonPatch の旧 API も整理されています。
- OpenAPI の primitive format や nullable プロパティのスキーマ生成が改善されました。
- Cookie 認証向け Device Bound Session Credentials（DBSC）のプロトタイプが追加されました。
- SignalR の TypeScript 認証トークン更新や、非同期・テスト安定性に関する修正が入りました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67388 | Device Bound Session Credentials (DBSC) for cookie authentication (prototype) | merged | rokonec | <https://github.com/dotnet/aspnetcore/pull/67388> |
| PR | #68082 | Cleanup OpenAPI handling of primitive formats | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68082> |
| PR | #68139 | Use inbox `TaskToAsyncResult` class and remove `TaskToApm`. | merged | teo-tsirpanis | <https://github.com/dotnet/aspnetcore/pull/68139> |
| PR | #67995 | Harden SocialSample FailureMessage rendering and add READMEs into samples | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67995> |
| PR | #68116 | Fix nullable get-only/constructor-bound property schema generation in OpenAPI | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68116> |
| PR | #68115 | Fix cursor landing in `InputDateInteractsWithEditContext_TimeInput` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68115> |
| PR | #68097 | Only fail Dependencies.props CodeCheck for non-Maestro dependency changes | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68097> |
| PR | #68079 | Stabilize `VirtualizationTest.CancelsOutdatedRefreshes_Async` flaky test | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68079> |
| PR | #68121 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68121> |
| PR | #67964 | Add SignalR TypeScript auth refresh | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67964> |
| PR | #68107 | Fix `InputDateInteractsWithEditContext_NonNullableDateTime` and `InputDateInteractsWithEditContext_NullableDateTimeOffset` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68107> |
| PR | #68090 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68090> |
| PR | #68061 | Never stabilize Components.Media and Components.Testing packages | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68061> |
| PR | #68093 | Onboard aspnetcore-ci-unofficial to CFSClean2 network isolation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68093> |
| PR | #68089 | Add separate no-unquarantine-for-30-days label for unquarantine PRs | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68089> |
| PR | #67822 | Use ReadOnlyDictionary/ReadOnlyCollection for ValidateContext.ValidationErrors backing collections | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67822> |
| PR | #68078 | Improve circuit initialization error message for failed CircuitHandler dependency resolution | merged | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68078> |
| PR | #68074 | Harden input and output restrictions for test-quarantine workflow | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68074> |
| PR | #68069 | Fix Gateway publish race with concurrent top-level build | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68069> |
| PR | #68048 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from b166c7e04055f96bcfe4b58ee1205cc9f24e2020 to 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68048> |
| PR | #68047 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from b166c7e04055f96bcfe4b58ee1205cc9f24e2020 to 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68047> |
| PR | #67497 | Revamp Components Blazor samples + add validate-blazor-feature skill | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67497> |
| PR | #67335 | Add review-public-api Copilot skill | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67335> |
| PR | #68073 | [release/11.0-preview7] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68073> |
| PR | #68033 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68033> |
| PR | #68072 | [release/2.3] Remove deprecated SignalR.Redis and SignalR.Protocols.MessagePack packages | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68072> |
| PR | #68050 | [release/11.0-preview7] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68050> |
| PR | #68056 | Stabilize `CanDisplayBindingErrorsCollectionsToDefaultForm` flaky test | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68056> |
| PR | #68046 | [release/10.0] (deps): Bump src/submodules/googletest from `3064a60` to `b78aa5e` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68046> |
| PR | #68045 | [release/9.0] (deps): Bump src/submodules/googletest from `3064a60` to `b78aa5e` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68045> |
| PR | #68043 | [release/8.0] (deps): Bump src/submodules/googletest from `3064a60` to `b78aa5e` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68043> |
| PR | #68044 | [main] (deps): Bump src/submodules/googletest from `a503186` to `b78aa5e` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68044> |
| PR | #67513 | Fix Flaky test: FormsInputDateTest.InputDateInteractsWithEditContext_NullableDateTimeOffset | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67513> |
| PR | #68083 | [test-quarantine] Unquarantine Kestrel tests: HttpConnectionManagerTests and Http3RequestTests | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68083> |
| PR | #68075 | Log a message when ResourceManagerStringLocalizer cannot find a resource | closed | danroth27 | <https://github.com/dotnet/aspnetcore/pull/68075> |
| PR | #68068 | Fix parallel publish race in Gateway CLI packaging | closed | maraf | <https://github.com/dotnet/aspnetcore/pull/68068> |
| PR | #67397 | Fix example XML doc parsing for OpenApi | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67397> |
| PR | #68162 | Improve SignalR Redis server disconnection handling | open | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68162> |
| PR | #68163 | Enable Redis cache expiration and set/remove tests | open | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68163> |
| PR | #68161 | Update Gradle wrapper from 6.5 to 8.9 | open | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68161> |
| PR | #68156 | Add a description | open | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68156> |
| PR | #68145 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68145> |
| PR | #68155 | [release/10.0] (deps): Bump src/submodules/googletest from `3064a60` to `3ff51c3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68155> |
| PR | #68154 | [release/9.0] (deps): Bump src/submodules/googletest from `3064a60` to `3ff51c3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68154> |
| PR | #68153 | [release/8.0] (deps): Bump src/submodules/googletest from `3064a60` to `3ff51c3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68153> |
| PR | #68152 | [test-quarantine] Quarantine ShutdownTests.ConfigurationChangeForcesChildProcessRestart | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68152> |
| PR | #68151 | [test-quarantine] Quarantine HubConnectionTests.RefreshChangingUserIdentifierClosesConnection | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68151> |
| PR | #68144 | [release/2.3] Fix net46x test builds broken by Microsoft.Extensions.Configuration.Binder buildTransitive targets | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68144> |
| PR | #68146 | Handle DefaultConnectionContext abort/dispose cancellation race | open | scarab-systems | <https://github.com/dotnet/aspnetcore/pull/68146> |
| PR | #68129 | Add WebAuthn Signal API support for passkeys | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68129> |
| PR | #68077 | [release/11.0-preview7] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68077> |
| PR | #68103 | Harden RefreshSignInCoreAsync to revalidate cookie always | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/68103> |
| PR | #68085 | Fix double-publish compression error in TestContentPackage | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68085> |
| PR | #68143 | [Blazor] Add ToggleEventArgs for toggle events | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68143> |
| PR | #68142 | Add diagnostic for missing MessagePack submodule sources | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68142> |
| PR | #68138 | Fix dev-certs EventSource Boolean payload | open | HengYpinn | <https://github.com/dotnet/aspnetcore/pull/68138> |
| PR | #68114 | Fix `InitialItemIndex` is intermittently ignored on fresh page load  | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68114> |
| PR | #68127 | Avoid resolving HybridCache during Redis connection | open | svick | <https://github.com/dotnet/aspnetcore/pull/68127> |
| PR | #68102 | Fix h3 connection-level and stream-level abort locking | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/68102> |
| PR | #68135 | OpenAPI: Delete unused overload of WillBeComponentized | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68135> |
| PR | #68134 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 to be7c952ae97a0b6250f004dd11e6ce952ff4b36a | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68134> |
| PR | #68133 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 to be7c952ae97a0b6250f004dd11e6ce952ff4b36a | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68133> |
| PR | #68132 | [main] (deps): Bump src/submodules/googletest from `a503186` to `c6f0424` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68132> |
| PR | #68086 | Update SDK to latest main build | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68086> |
| PR | #68131 | Stabilize DelegateTests.DelegateAfterReceiverRestart Quarantine test | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/68131> |
| PR | #68126 | [release/9.0] Backport `FormsInputDateTest` fixes | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68126> |
| PR | #68125 | [release/8.0] Backport FormsInputDateTest fixes | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68125> |
| PR | #68110 | Stabilize `CachedResponseBodyTests.Copy_SingleSegment` | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68110> |
| PR | #68066 | Add serving of .well-known/passkey-endpoints to Identity | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68066> |
| PR | #68124 | [release/10.0] Backport `FormsInputDateTest` fixes | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68124> |
| PR | #68111 | Fix Flaky HTTP/3 Test: `POST_ClientCancellationUpload_RequestAbortRaised` | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/68111> |
| PR | #68120 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68120> |
| PR | #68119 | Emit framework versions from Blazor WASM benchmark Driver | open | LoopedBard3 | <https://github.com/dotnet/aspnetcore/pull/68119> |
| PR | #68113 |  Fix trim/AOT safety for custom event argument deserialization in Blazor | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/68113> |
| PR | #68098 | Add SkipStatusCodePages property to ApiBehaviorOptions | open | aw0lid | <https://github.com/dotnet/aspnetcore/pull/68098> |
| PR | #68091 | [Infrastructure] Updated npm packages 2026-07-29 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68091> |
| PR | #68096 | Fix flaky RefreshChangingUserIdentifierClosesConnection test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68096> |
| PR | #68092 | [release/10.0] [Infrastructure] Updated npm packages 2026-07-29 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68092> |
| PR | #68095 | [release/2.3] Ship everything in 2.3.12 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68095> |
| PR | #68088 | Fix persisted state being dropped on enhanced navigation | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68088> |
| PR | #68081 | Fix the UserManagerWillUseTokenProviderInstanceOverDefaults test failure | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/68081> |
| PR | #68064 | Fix `AnchorMode_End_PrependAtTop_ViewportStaysStable` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68064> |
| PR | #68063 | Refactor: ApiControllerSymbolCache shortned for clarity | open | GeorgiPopovIT | <https://github.com/dotnet/aspnetcore/pull/68063> |
| Issue | #68122 | [dotnet-sdk-11.0.100-preview.7.26378.106] OpenMU first-time build failed with error: The "DiscoverPrecompressedAssets" task failed unexpectedly. System.ArgumentException: An item with the same key has already been added. | open | WeiweiCaiAcpt | <https://github.com/dotnet/aspnetcore/issues/68122> |
| Issue | #68158 | Perf improvement: single_query | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68158> |
| Issue | #68160 | Perf regression: multiple_queries, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68160> |
| Issue | #68159 | Perf regression: fortunes_ef, json, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68159> |
| Issue | #68157 | Blazor Web App (Auto, per-page render mode) with prerendering disabled causes JAWS to lose focus sync on repeated button presses | open | code-dispenser | <https://github.com/dotnet/aspnetcore/issues/68157> |
| Issue | #68148 | Kestrel writes response body into a transport `PipeWriter` buffer it has already `Advance`d past (no intervening `GetSpan`/`GetMemory`) | open | mgravell | <https://github.com/dotnet/aspnetcore/issues/68148> |
| Issue | #68094 | add source generator for creating/binding to events of a IJSInProcessObjectReference/IJSObjectReference | open | The3G | <https://github.com/dotnet/aspnetcore/issues/68094> |
| Issue | #68150 | Quarantine ShutdownTests.ConfigurationChangeForcesChildProcessRestart | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68150> |
| Issue | #68149 | Quarantine HubConnectionTests.RefreshChangingUserIdentifierClosesConnection | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68149> |
| Issue | #68147 | OpenAPI schema for forms uses allOf incorrectly | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68147> |
| Issue | #68076 | Error Reporting for Minimal APIs Form Binding | open | bassem-mf | <https://github.com/dotnet/aspnetcore/issues/68076> |
| Issue | #68080 | Allow user code to access XML document comments generated by the source generator in custom transformer | open | CoreDX9 | <https://github.com/dotnet/aspnetcore/issues/68080> |
| Issue | #68141 | Perf improvement: json, json, tls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68141> |
| Issue | #68140 | Perf improvement: https, json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68140> |
| Issue | #68136 | RemoteAuthenticatorView ignores ReturnUrl after successful login in Microsoft.Authentication.WebAssembly.Msal 10.0.10 | open | BernhardDRX | <https://github.com/dotnet/aspnetcore/issues/68136> |
| Issue | #68137 | Add an option for force-render a component tree in Blazor | open | NiceWaffel | <https://github.com/dotnet/aspnetcore/issues/68137> |
| Issue | #68130 | Design Proposal for Formatting support for Input | closed | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/issues/68130> |
| Issue | #68123 | Blazor Serialize state for services DirectScopedResolvedFromRootException issue. | open | RedEye-Developers | <https://github.com/dotnet/aspnetcore/issues/68123> |
| Issue | #68128 | Support `signalUnknownCredential` for revoked passkeys using signals API | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68128> |
| Issue | #68084 | Harden RefreshSignInCoreAsync to revalidate cookie always | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68084> |
| Issue | #68100 | Blazor time to first UI regression: blazorwasmbenchmark | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68100> |
| Issue | #68118 | HTTP/3 Client migration behind LB | open | ladeak | <https://github.com/dotnet/aspnetcore/issues/68118> |
| Issue | #68117 | [API Proposal]: Device Bound Session Credentials (DBSC) for cookie authentication | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68117> |
| Issue | #68067 | Testcase failure with "Invalid IL code" error | open | ashutoshjadhav9 | <https://github.com/dotnet/aspnetcore/issues/68067> |
| Issue | #68112 | Harden CacheTagHelper vary-by-user: cache key can collide for distinct authenticated principals without a stable Identity.Name | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68112> |
| Issue | #68087 | Remove OpenAPI analyzers in .NET 11 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68087> |
| Issue | #68109 | Serve the well-known passkey endpoints document in Identity | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68109> |
| Issue | #68106 | ApiExplorer loses top-level BinderModelName when expanding complex query parameters | open | lorenzrox | <https://github.com/dotnet/aspnetcore/issues/68106> |
| Issue | #68105 | TestHost: exception during ReturnResponseMessageAsync's feature-collection copy orphans the response TCS — client awaits forever, cancellation cannot break it | open | jacodv | <https://github.com/dotnet/aspnetcore/issues/68105> |
| Issue | #68104 | Support async validation in MVC | closed | CoreDX9 | <https://github.com/dotnet/aspnetcore/issues/68104> |
| Issue | #68101 | Fix h3 connection-level and stream-level abort locking | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68101> |
| Issue | #68099 | Virtualize: InitialItemIndex is intermittently ignored on fresh page load (startup race with spacer IntersectionObserver callback) | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68099> |
| Issue | #68059 | SignalR not working correctly using native AoT-safe methods | closed | martincostello | <https://github.com/dotnet/aspnetcore/issues/68059> |
| Issue | #68071 | Perf regression: multiple_queries, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68071> |
| Issue | #68070 | Perf improvement: json_middleware, kestrel-encoded-url, single_query | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68070> |
| Issue | #68060 | Simplify repo MSBuild infrastructure | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68060> |
| Issue | #68065 | JsonStringEnumMemberName ignored in OpenAPI schema for query parameters | closed | divyeshio | <https://github.com/dotnet/aspnetcore/issues/68065> |
| Issue | #66338 | Set `AdditionalProperties` if Type has `JsonExtensionData` attribute. | closed | n-rowe | <https://github.com/dotnet/aspnetcore/issues/66338> |
| Issue | #67994 | Harden SocialSample's handling of FailureMessage | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67994> |
| Issue | #61074 | Quarantine RequestDelegateFactory_WhenJsonIsReflectionEnabledByDefaultTrue | closed | danmoseley | <https://github.com/dotnet/aspnetcore/issues/61074> |
| Issue | #52221 | DeniedValuesAttribute validation not working as expected when property is of type "short", in Blazor | closed | efonsecab | <https://github.com/dotnet/aspnetcore/issues/52221> |
| Issue | #55815 | InputNumber bound to int? fails to validate when its content is emtpy | closed | nangelgr | <https://github.com/dotnet/aspnetcore/issues/55815> |
| Issue | #30567 | FormatStrings not working with @bind-value:format for <InputNumber> in Blazor WebAssembly | closed | fingers10 | <https://github.com/dotnet/aspnetcore/issues/30567> |
| Issue | #5523 | Add support for binding decimal, double, float data type with configurable formatting | closed | Andrzej-W | <https://github.com/dotnet/aspnetcore/issues/5523> |
| Issue | #58192 | Microsoft.AspNetCore.OpenApi specifies non-nullable get-only properties as nullable | closed | ptffr | <https://github.com/dotnet/aspnetcore/issues/58192> |
| Issue | #67233 | Microsoft.AspNetCore.OpenApi drops null-acceptance for get-only constructor-bound nullable complex properties (emits a bare $ref) | closed | sdukehart-omnesoft | <https://github.com/dotnet/aspnetcore/issues/67233> |
| Issue | #62974 | OpenAPI: ICollection should generate as readOnly:true but does not. | closed | niemyjski | <https://github.com/dotnet/aspnetcore/issues/62974> |
| Issue | #59507 | OpenApi generation OpenApiSchemaComparer fails with null values for Properties, AllOf, or AnyOf | closed | FrankSzendzielarz | <https://github.com/dotnet/aspnetcore/issues/59507> |
| Issue | #66120 | Quarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66120> |
| Issue | #67798 | API | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/67798> |
| Issue | #62998 | Add passkey support into the MapIdentityApi endpoints | closed | mikekistler | <https://github.com/dotnet/aspnetcore/issues/62998> |
| Issue | #53659 | IConfiguration binding throws or returns erroneous data when configuration models have constructors | closed | Jack-Edwards | <https://github.com/dotnet/aspnetcore/issues/53659> |
| Issue | #53728 | Configuration Bind error with common pattern in PublishTrimmed | closed | christophwille | <https://github.com/dotnet/aspnetcore/issues/53728> |
| Issue | #67681 | Consider exposing immutable backing collections for ValidateContext.ValidationErrors | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67681> |
| Issue | #53300 | Poor handling of circuit handlers with unresolved dependencies in Blazor | closed | OliverShels | <https://github.com/dotnet/aspnetcore/issues/53300> |
| Issue | #63541 | SignalR connection breaks when using window.print() in browser | closed | cool-akash | <https://github.com/dotnet/aspnetcore/issues/63541> |
| Issue | #56043 | HybridCache can create multiple times the same key on Redis | closed | blastrock | <https://github.com/dotnet/aspnetcore/issues/56043> |
| Issue | #28653 | Blazor Virtualize: ItemsProvider called repeatedly after scrolling just far enough to load more items | closed | mrlife | <https://github.com/dotnet/aspnetcore/issues/28653> |
| Issue | #31393 | Move DebugProxy out of dev server package | closed | captainsafia | <https://github.com/dotnet/aspnetcore/issues/31393> |
| Issue | #55184 | Pass an object as a parameter to a minimal API endpoint | closed | htmlsplash | <https://github.com/dotnet/aspnetcore/issues/55184> |
| Issue | #68021 | Quarantine FormWithParentBindingContextTest.CanDisplayBindingErrorsCollectionsToDefaultForm | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68021> |
