# dotnet/aspnetcore

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 90 |
| クローズ (未マージ) PR     | 17 |
| 新規 PR (オープン中)       | 42 |
| 新規 Issue                 | 56 |
| クローズ Issue             | 27 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#69754](https://github.com/dotnet/aspnetcore/issues/69754) — MapStaticAssets: builder conventions (e.g. RequireAuthorization) are not applied to the runtime fallback endpoint （Issue / open / rokonec）
`MapStaticAssets` の runtime fallback endpoint を利用するアプリは、`RequireAuthorization` などの builder convention が適用されない可能性を確認し、修正状況を追跡してください。Issue はオープン中です。
- **⚠ セキュリティ** [#69697](https://github.com/dotnet/aspnetcore/pull/69697) — Enable central package transitive pinning （PR / merged / wtgodbe）
中央パッケージ管理を使う .NET リポジトリの保守者は、transitive package の pinning が有効になる変更を確認し、依存バージョンの解決結果と脆弱性対応を検証してください。
- **⚠ セキュリティ** [#69631](https://github.com/dotnet/aspnetcore/pull/69631) — Replace custom reference resolution with explicit references and CPM （PR / merged / wtgodbe）
参照解決と Central Package Management の構成変更です。依存更新を管理する保守者は明示的な参照指定後の restore／ビルド結果を確認してください。
- **⚠ セキュリティ** [#69614](https://github.com/dotnet/aspnetcore/issues/69614) — WsFederationHandler discards AuthenticationProperties replaced in OnSecurityTokenReceived （Issue / open / rokonec）
WsFederation の `OnSecurityTokenReceived` で `AuthenticationProperties` を差し替えるアプリは、その値が後続処理へ保持されない問題を確認し、回避策・修正リリースを追跡してください。
- **⚠ セキュリティ** [#69559](https://github.com/dotnet/aspnetcore/pull/69559) — [Security] Avoid boxing the authorization metrics tag （PR / open / martincostello）
authorization metrics を利用する運用者は、tag boxing を避ける提案による計測実装の変更を確認してください。PR は未マージで、利用者側の対応は現時点で不要です。
- **⚠ セキュリティ** [#69394](https://github.com/dotnet/aspnetcore/pull/69394) — Rotate security stamp on passkey removal （PR / merged / Copilot）
Identity の passkey を提供するアプリは、passkey 削除時に security stamp が更新される修正を確認し、既存認証 cookie／セッションの無効化動作を検証してください。
- **⚠ セキュリティ** [#69312](https://github.com/dotnet/aspnetcore/pull/69312) — Unify claims principal cache identity （PR / open / javiercn）
claims principal cache を利用する Identity アプリは、cache identity 統一案を追跡し、異なる principal が同一キーとして扱われないことを確認してください。PR は未マージです。
- **⚠ セキュリティ** [#68694](https://github.com/dotnet/aspnetcore/issues/68694) — Consider clock skew for Identity security stamp validation intervals （Issue / open / javiercn）
Identity の security stamp 検証間隔を運用する利用者は、時計ずれを考慮した失効タイミングの議論を確認し、現行の検証間隔とインフラ時刻同期を点検してください。
- **非推奨/廃止** [#69861](https://github.com/dotnet/aspnetcore/pull/69861) — Don't leak property-level [Obsolete] into shared OpenAPI component schemas （PR / open / sander1095）
OpenAPI schema を生成する利用者は、property-level `[Obsolete]` が共有 component 全体へ漏れる問題の修正提案を追跡し、生成された `deprecated` 表示を確認してください。PR は未マージです。
- **非推奨/廃止** [#69729](https://github.com/dotnet/aspnetcore/issues/69729) — OpenAPI: [Obsolete] on a property leaks `deprecated: true` into the shared component schema （Issue / open / sander1095）
OpenAPI client／schema の利用者は、property 単位の非推奨情報が共有 schema に誤って反映される Issue を把握し、生成結果と codegen に影響がないか確認してください。

## 主要な変更点

- MapStaticAssets の runtime fallback endpoint に認可 convention が適用されない可能性が報告されました（[#69754](https://github.com/dotnet/aspnetcore/issues/69754)）。利用者は保護対象の静的資産ルートを確認してください。
- Identity では passkey 削除時の security stamp 更新がマージされる一方、claims principal cache と security stamp の時計ずれに関する課題が継続しています（[#69394](https://github.com/dotnet/aspnetcore/pull/69394)、[#69312](https://github.com/dotnet/aspnetcore/pull/69312)、[#68694](https://github.com/dotnet/aspnetcore/issues/68694)）。
- WsFederation の `AuthenticationProperties` 差し替え後の保持不具合が Issue として報告されています（[#69614](https://github.com/dotnet/aspnetcore/issues/69614)）。
- Authorization metrics の tag boxing 回避案はオープン PR で、計測実装の変更は未確定です（[#69559](https://github.com/dotnet/aspnetcore/pull/69559)）。
- Central Package Management と明示的な参照解決に関するビルド構成変更がマージされました（[#69697](https://github.com/dotnet/aspnetcore/pull/69697)、[#69631](https://github.com/dotnet/aspnetcore/pull/69631)）。
- OpenAPI では property-level `[Obsolete]` が共有 component に漏れる問題が Issue／PR として追跡されています（[#69729](https://github.com/dotnet/aspnetcore/issues/69729)、[#69861](https://github.com/dotnet/aspnetcore/pull/69861)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69711 | fix: Include Arguments in AfterControllerActionMethodEventData | merged | unsafePtr | <https://github.com/dotnet/aspnetcore/pull/69711> |
| PR | #69818 | Merging internal commits for release/9.0 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69818> |
| PR | #69854 | [test-quarantine] Quarantine Http2KeepAliveTests.TimeoutExceeded_ConnectionFlowControlUsedUpThenPings_NoGoAway | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69854> |
| PR | #69852 | [test-quarantine] Re-quarantine Http3RequestTests.ConnectionLifetimeNotificationFeature_RequestClose_ConnectionEnds | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69852> |
| PR | #69712 | [release/10.0] Fix empty PathBase on first IIS in-process request after startup | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69712> |
| PR | #69837 | [release/11.0] Fix empty PathBase on first IIS in-process request after startup | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69837> |
| PR | #69783 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69783> |
| PR | #69839 | Restrict test-quarantine pull requests to the workflow repository | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69839> |
| PR | #69809 | [main] (deps): Bump src/submodules/googletest from `988ea2c` to `b66cffc` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69809> |
| PR | #69835 | [release/11.0] [SignalR] Bind connection tokens to their endpoint mapping | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69835> |
| PR | #69398 | Fix empty PathBase on first IIS in-process request after startup | merged | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/69398> |
| PR | #69768 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69768> |
| PR | #69817 | Merging internal commits for release/8.0 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69817> |
| PR | #69399 | Reject non-positive SignalR sequence IDs | merged | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/69399> |
| PR | #69279 | [SignalR] Bind connection tokens to their endpoint mapping | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69279> |
| PR | #69753 | [release/11.0] [test-quarantine] Quarantine flaky Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69753> |
| PR | #69828 | [release/11.0] Avoid validation algorithm allocation in ManagedAuthenticatedEncryptor | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69828> |
| PR | #69815 | [release/9.0] (deps): Bump src/submodules/googletest from `bc548fd` to `b66cffc` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69815> |
| PR | #69811 | [release/8.0] (deps): Bump src/submodules/googletest from `bc548fd` to `b66cffc` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69811> |
| PR | #69810 | [release/11.0] (deps): Bump src/submodules/googletest from `bc548fd` to `b66cffc` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69810> |
| PR | #69789 | Avoid validation algorithm allocation in ManagedAuthenticatedEncryptor | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69789> |
| PR | #69816 | [wasm] Improve debug page error display | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/69816> |
| PR | #69813 | [release/10.0] (deps): Bump src/submodules/googletest from `4267679` to `b66cffc` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69813> |
| PR | #69814 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 2985ec840e470ffea7951baef5209d335628c915 to 0af57167b5822a1500b314b9ef31029137e20208 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69814> |
| PR | #69812 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 2985ec840e470ffea7951baef5209d335628c915 to 0af57167b5822a1500b314b9ef31029137e20208 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69812> |
| PR | #69807 | Exclude release/11.0-only dependencies from Dependabot | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69807> |
| PR | #69808 | Keep release/11.0 Dependabot exclusions in sync | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69808> |
| PR | #69777 | [release/9.0] Update Handlebars to 4.7.10 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69777> |
| PR | #69804 | Fix test quarantine rename detection | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69804> |
| PR | #69772 | Update Newtonsoft.Json dependency | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69772> |
| PR | #69778 | [release/11.0] Update Handlebars to 4.7.10 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69778> |
| PR | #69708 | Fix WebTransport session cleanup | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69708> |
| PR | #69779 | [Infrastructure] Update Handlebars to 4.7.10 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69779> |
| PR | #69776 | [release/10.0] Update Handlebars to 4.7.10 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69776> |
| PR | #69780 | [release/2.3] Prepare packages for automated publishing | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69780> |
| PR | #69747 | Authorize policy-service bot for documentation merge checks | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69747> |
| PR | #69305 | [Prototype] Typed browser platform APIs for Blazor, starting with Web Storage | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69305> |
| PR | #65573 | Fix FieldIdentifier.GetHashCode() NullReferenceException for default struct | merged | kubaflo | <https://github.com/dotnet/aspnetcore/pull/65573> |
| PR | #69750 | Retry Gradle builds once in CI | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/69750> |
| PR | #69741 | [main] (deps): Bump src/submodules/googletest from `bc548fd` to `988ea2c` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69741> |
| PR | #69748 | Complete explicit reference migration cleanup | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69748> |
| PR | #69740 | Add missing projects to Identity.slnf | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69740> |
| PR | #69743 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 7042280515eb35cea60b5ba5026825e4674746d9 to 2985ec840e470ffea7951baef5209d335628c915 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69743> |
| PR | #69742 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 7042280515eb35cea60b5ba5026825e4674746d9 to 2985ec840e470ffea7951baef5209d335628c915 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69742> |
| PR | #69694 | Recognize docs PRs by branch and directly check merged main PRs | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69694> |
| PR | #69738 | Add Components Server logging guidance | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69738> |
| PR | #69427 | Enhance IdentityPasskeyOptions documentation | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69427> |
| PR | #69773 | [release/2.3] Update webpack-dev-middleware to 7.4.6 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69773> |
| PR | #69751 | [release/11.0] Avoid duplicate framework builds from Components E2E publishes | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69751> |
| PR | #69746 | [release/11.0] Configure Gradle Wrapper retries for transient distribution downloads | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69746> |
| PR | #69745 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69745> |
| PR | #69749 | Update branding to 2.3.14 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69749> |
| PR | #69725 | [release/10.0] Honor custom policies allowing output caching for authenticated users | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69725> |
| PR | #69724 | [release/11.0] Honor custom policies allowing output caching for authenticated users | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69724> |
| PR | #69731 | Update Node.js to 26.11.1 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69731> |
| PR | #69728 | Fix broken link and other doc updates for IHttpSysRequestPropertyFeature | merged | gewarren | <https://github.com/dotnet/aspnetcore/pull/69728> |
| PR | #69697 | Enable central package transitive pinning | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69697> |
| PR | #64811 | Revise contributing doc section for questions and discussions | merged | danroth27 | <https://github.com/dotnet/aspnetcore/pull/64811> |
| PR | #69394 | Rotate security stamp on passkey removal | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69394> |
| PR | #69580 | Honor custom policies allowing output caching for authenticated users | merged | marcominerva | <https://github.com/dotnet/aspnetcore/pull/69580> |
| PR | #69709 | fix PinnedBlockMemoryPoolFactory DI dependency on TimeProvider | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69709> |
| PR | #69686 | Clarify doc for `HttpsConnectionAdapterOptions.ClientCertificateValidation` | merged | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/69686> |
| PR | #69679 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69679> |
| PR | #69722 | [release/10.0] fix PinnedBlockMemoryPoolFactory DI dependency on TimeProvider | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69722> |
| PR | #69723 | [release/11.0] fix PinnedBlockMemoryPoolFactory DI dependency on TimeProvider | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69723> |
| PR | #69409 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69409> |
| PR | #69536 | [release/9.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69536> |
| PR | #69626 | [release/9.0] (deps): Bump src/submodules/googletest from `36ba75f` to `bc548fd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69626> |
| PR | #69638 | [release/9.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69638> |
| PR | #67939 | Throw from client IInvocationBinder.GetParameterTypes when the target method does not exist | merged | Arul1998 | <https://github.com/dotnet/aspnetcore/pull/67939> |
| PR | #69696 | Update reference and project inventory documentation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69696> |
| PR | #69662 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69662> |
| PR | #69631 | Replace custom reference resolution with explicit references and CPM | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69631> |
| PR | #69674 | Handle documentation draft reruns explicitly | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69674> |
| PR | #69715 | [release/10.0] Quarantine flaky HttpSys delegation test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69715> |
| PR | #69714 | [release/11.0] Quarantine flaky Virtualize cancellation test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69714> |
| PR | #69716 | [release/11.0] Quarantine flaky HTTP/3 cancellation test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69716> |
| PR | #69628 | [release/8.0] Update dependencies from dotnet/source-build-externals | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69628> |
| PR | #69326 | [release/9.0] Scope WebSocket request-body assertion to in-process hosting | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69326> |
| PR | #69327 | [release/8.0] Scope WebSocket request-body assertion to in-process hosting | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69327> |
| PR | #69522 | [release/11.0] Avoid sending JSInterop calls when component is disposed | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69522> |
| PR | #69538 | [release/8.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69538> |
| PR | #69616 | [release/9.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69616> |
| PR | #69623 | [release/8.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69623> |
| PR | #69625 | [release/8.0] (deps): Bump src/submodules/googletest from `36ba75f` to `bc548fd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69625> |
| PR | #69639 | [release/8.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69639> |
| PR | #69688 | [release/9.0] Update branding to 9.0.22 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69688> |
| PR | #69689 | [release/8.0] Update branding to 8.0.33 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69689> |
| PR | #69678 | Prevent malformed Blazor WebAssembly packages | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69678> |
| PR | #69636 | [release/11.0] Stabilize Virtualize mid-list scroll setup | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69636> |
| PR | #69174 | Avoid starting the response when navigating with exception | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69174> |
| PR | #69856 | sonarcloud | closed | val59roger | <https://github.com/dotnet/aspnetcore/pull/69856> |
| PR | #69840 | [WIP] Fix duplicate websocket header handling in IIS Out-Of-Process handler | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/69840> |
| PR | #69622 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69622> |
| PR | #69825 | Merging internal commits for release/9.0 | closed | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69825> |
| PR | #69822 | Merging internal commits for release/8.0 | closed | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69822> |
| PR | #69821 | Merging internal commits for release/9.0 | closed | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69821> |
| PR | #69824 | Merging internal commits for release/8.0 | closed | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/69824> |
| PR | #69787 | Bump microsoft.dotnet.helix.jobmonitor from 11.0.0-beta.26480.113 to 11.0.0-beta.26502.119 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69787> |
| PR | #66409 | Handle null FieldName in FieldIdentifier.GetHashCode | closed | MohamedOthman1 | <https://github.com/dotnet/aspnetcore/pull/66409> |
| PR | #69736 | Share a single JS initialization across concurrent RemoteAuthenticationService callers | closed | droyad | <https://github.com/dotnet/aspnetcore/pull/69736> |
| PR | #69735 | Make MSAL AuthenticationService.init safe to call concurrently | closed | droyad | <https://github.com/dotnet/aspnetcore/pull/69735> |
| PR | #69730 | [release/9.0] Quarantine Linux Kestrel QUIC TLS failures | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69730> |
| PR | #69713 | Update Node and capture native crash diagnostics | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69713> |
| PR | #69490 | Unquarantined InitialIndex_PendingGrowth_TallItemsBeforeTarget_KeepsTargetAligned | closed | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/69490> |
| PR | #66837 | Fixes  #57637 [FromQuery] Model binding fails in case of propertity with… | closed | FatTigerWang | <https://github.com/dotnet/aspnetcore/pull/66837> |
| PR | #69669 | Add SignalR guidance to the PR reviewer | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69669> |
| PR | #69866 | [tests] Delay OpenAPI trimming tests | open | mauroa | <https://github.com/dotnet/aspnetcore/pull/69866> |
| PR | #69865 | [docs] Fix runtime build commands in error docs | open | mauroa | <https://github.com/dotnet/aspnetcore/pull/69865> |
| PR | #69836 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69836> |
| PR | #69834 | Validate active union cases in MVC | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69834> |
| PR | #69863 | OpenAPI: put record constructor defaults on the `$ref`, not the shared component | open | sander1095 | <https://github.com/dotnet/aspnetcore/pull/69863> |
| PR | #69859 | Use keyed HMAC constructors in ManagedAuthenticatedEncryptor | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69859> |
| PR | #69861 | Don't leak property-level [Obsolete] into shared OpenAPI component schemas | open | sander1095 | <https://github.com/dotnet/aspnetcore/pull/69861> |
| PR | #69752 | Include parameter default value in RDG endpoint comparison | open | AnsElgyarDev | <https://github.com/dotnet/aspnetcore/pull/69752> |
| PR | #69733 | Update `MaxConcurrentUpgradedConnections` remarks to call out it isn't for HTTP/2 since it doesn't get upgraded | open | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/69733> |
| PR | #69860 | Document WS-Federation remote sign-out controls | open | Mr444-dev | <https://github.com/dotnet/aspnetcore/pull/69860> |
| PR | #69690 | Fix HTTP/2 hang on reused streams when a window update races the final write | open | danield137 | <https://github.com/dotnet/aspnetcore/pull/69690> |
| PR | #69693 | Improve diagnostics for Interactive Server component activation failures caused by missing DI services | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69693> |
| PR | #69829 | Add an agent skill for porting browser APIs to Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69829> |
| PR | #69855 | Cache output-cache predicate results per request | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/69855> |
| PR | #69850 | [Blazor] Preserve modal dialog state during enhanced SSR DOM synchronization | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69850> |
| PR | #69719 | Preserve ErrorBoundary content for failed static SSR form posts | open | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/69719> |
| PR | #69848 | [blazor] Migrate startup callbacks to runtime builder APIs | open | maraf | <https://github.com/dotnet/aspnetcore/pull/69848> |
| PR | #69702 | Assert WebAssembly browser configuration environment name | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69702> |
| PR | #69851 | Use circuit JSON resolvers for persistent service state | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69851> |
| PR | #69843 | Track Blazor WebAssembly PWA service worker changes during build | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69843> |
| PR | #69769 | Reduce Blazor Server Native AOT publish warnings | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/69769> |
| PR | #69827 | [Blazor] Cancel LocationChangingContext.CancellationToken only when navigation is superseded | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69827> |
| PR | #69845 | Add the Cookie Store API to Microsoft.AspNetCore.Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69845> |
| PR | #69767 | Keep reconnected circuits alive after navigation interop timeouts | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/69767> |
| PR | #69766 | Return 404 for missing mapped static assets | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/69766> |
| PR | #69700 | Prevent overflow in UserManager.AccessFailedAsync with large DefaultLockoutTimeSpan | open | SkyDevLab | <https://github.com/dotnet/aspnetcore/pull/69700> |
| PR | #69705 | Clarify Interactive Auto selection in the Components architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69705> |
| PR | #69706 | [Blazor] Clarify internal JS/.NET compatibility during servicing | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69706> |
| PR | #69703 | [Blazor] Cover browser configuration in initial streaming updates | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69703> |
| PR | #69685 | Surface app startup exceptions after the host is disposed in WebApplicationFactory | open | Demivan | <https://github.com/dotnet/aspnetcore/pull/69685> |
| PR | #69782 | Fix form mapping for file lists and dictionary keys containing brackets | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/69782> |
| PR | #69832 | Avoid SectionRenderModeMismatch warning for PageTitle in default Blazor apps | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69832> |
| PR | #69721 | Handle direct navigation to the authentication login callback | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69721> |
| PR | #69790 | Support {URL} server variable in IIS URL Rewrite | open | JohnyKid123 | <https://github.com/dotnet/aspnetcore/pull/69790> |
| PR | #69805 | Skip SharedFxTests, TargetingPackTests on non-helix | open | omajid | <https://github.com/dotnet/aspnetcore/pull/69805> |
| PR | #69806 | [release/10.0] Fix ResponseCompression tests to work with different zlib implementations (#63988) | open | omajid | <https://github.com/dotnet/aspnetcore/pull/69806> |
| PR | #69775 | Load Blazor WebAssembly appsettings in-memory without VFS | open | jkoritzinsky | <https://github.com/dotnet/aspnetcore/pull/69775> |
| PR | #69683 | Fix SignalR fallback authorization for non-authorization metadata | open | utsavjain2809 | <https://github.com/dotnet/aspnetcore/pull/69683> |
| PR | #69726 | Fix MSAL initialization | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69726> |
| PR | #69732 | Avoid reallocating HTTP/2 header buffers | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69732> |
| PR | #69699 | Prototype: preserve Kestrel configuration on derived WebApplicationFactory | open | halter73 | <https://github.com/dotnet/aspnetcore/pull/69699> |
| PR | #69687 | Align JS interop trimming warnings across synchronous and asynchronous APIs | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69687> |
| Issue | #69771 | PlanTask_StreamsSnapshotAndEachDeltaBeforeCompleting failing: Locator expected to have count '1' | open | elinor-fung | <https://github.com/dotnet/aspnetcore/issues/69771> |
| Issue | #69727 | OpenAPI: property-level annotations are emitted inside the `oneOf` branch for nullable componentized properties | open | sander1095 | <https://github.com/dotnet/aspnetcore/issues/69727> |
| Issue | #69864 | OpenAPI: nullable enum parameter with a default value throws InvalidCastException | open | sander1095 | <https://github.com/dotnet/aspnetcore/issues/69864> |
| Issue | #69862 | OpenAPI: record constructor default is written to the shared enum component instead of the $ref | open | sander1095 | <https://github.com/dotnet/aspnetcore/issues/69862> |
| Issue | #69858 | Backport #61316 (ParseHeaders throws ArgumentOutOfRangeException when CR is the last byte of a pipe segment) to release/8.0 and release/9.0 | open | v-yun | <https://github.com/dotnet/aspnetcore/issues/69858> |
| Issue | #69826 | A union that `System.Text.Json` cannot classify makes every Minimal API route return 500 (and fails startup with MVC) | open | robertodalmonte | <https://github.com/dotnet/aspnetcore/issues/69826> |
| Issue | #69857 | Kestrel accepts HTTP/1.1 request lines with no space before the version and silently rewrites the target (regression in #51535) | open | v-yun | <https://github.com/dotnet/aspnetcore/issues/69857> |
| Issue | #69823 | Virtualize AnchorMode.End end scroll is undone by stale spacer correction | open | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69823> |
| Issue | #69785 | Add NavigationOptions.ForceDocumentNavigation for Explicit Document Navigation Across SSR and Interactive Render Modes | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/issues/69785> |
| Issue | #69838 | Blazor Server: RemoteJSDataStream is orphaned and ends the circuit when sendJSDataStream initiation throws | open | paulszabo-cmyk | <https://github.com/dotnet/aspnetcore/issues/69838> |
| Issue | #69844 | [API Proposal] Add the Cookie Store API to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69844> |
| Issue | #69774 | Inject services from a host-owned DI scope into Razor components | open | ScarletKuro | <https://github.com/dotnet/aspnetcore/issues/69774> |
| Issue | #69770 | ErrorBoundary doesn't catch exceptions from event handlers whose receiver isn't a component | closed | austincolemicrosoft | <https://github.com/dotnet/aspnetcore/issues/69770> |
| Issue | #69853 | Quarantine Microsoft.AspNetCore.Server.Kestrel.Core.Tests.Http2KeepAliveTests.TimeoutExceeded_ConnectionFlowControlUsedUpThenPings_NoGoAway | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69853> |
| Issue | #69849 | `RedisOutputCacheStore` garbage collection loop ignores disposal, keeping disposed hosts reachable for ~5 minutes | open | jaboko | <https://github.com/dotnet/aspnetcore/issues/69849> |
| Issue | #69847 | Request new buffer in `Utf8BufferTextWriter.Flush` implementation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69847> |
| Issue | #69846 | Revise `AccessFailedCount` handling | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69846> |
| Issue | #69842 | Explicitly set `MaxDepth` when using `Newtonsoft.Json` for SignalR hub protocol | open | elinor-fung | <https://github.com/dotnet/aspnetcore/issues/69842> |
| Issue | #69820 | Kestrel HTTP/1: control characters accepted in header names, chunk extensions, and trailer names; RFC 9110 6.6 forbidden trailer fields stored unfiltered (hardening) | open | zakkariyaa | <https://github.com/dotnet/aspnetcore/issues/69820> |
| Issue | #69754 | MapStaticAssets: builder conventions (e.g. RequireAuthorization) are not applied to the runtime fallback endpoint | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69754> |
| Issue | #69831 | IIS out-of-process hosting truncates `X-Forwarded-For` when the forwarded value exceeds `USHORT` | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69831> |
| Issue | #69830 | JsonTranscodingRouteAdapter drops literal constraints from single-segment variables | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69830> |
| Issue | #69819 | Kestrel HTTP/1: chunk size greater than Int32.MaxValue produces unhandled IOException (OverflowException) and HTTP 500 instead of 400 | open | zakkariyaa | <https://github.com/dotnet/aspnetcore/issues/69819> |
| Issue | #69788 | Support collection-length validation for multiple-select inputs in Blazor SSR | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69788> |
| Issue | #69786 | Microsoft.AspNetCore.OpenApi XML comment generator emits OS-dependent line endings in summary/description | open | alexaka1 | <https://github.com/dotnet/aspnetcore/issues/69786> |
| Issue | #69784 | ANCM out-of-process handler can retain a stale backend after the listener process exits | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69784> |
| Issue | #69781 | Editing machine.config "crashes" the App Pools (shutdown) | open | lionkmp | <https://github.com/dotnet/aspnetcore/issues/69781> |
| Issue | #69765 | ErrorBoundary doesn't catch exceptions from event handlers whose receiver isn't a component | open | danielchalmers | <https://github.com/dotnet/aspnetcore/issues/69765> |
| Issue | #69764 | Blazor Interactive Server: Component does not re-render after successful SignalR circuit reconnection and state notification | closed | softdev03 | <https://github.com/dotnet/aspnetcore/issues/69764> |
| Issue | #69720 | OutputCachePolicyBuilder.With re-evaluates its predicate across policy phases | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69720> |
| Issue | #69762 | ANCM aspnetcorev2.dll 20.0.26234.12 crashes w3wp with heap corruption (double free in FLS callback) when the worker process shuts down | open | ericks-rs | <https://github.com/dotnet/aspnetcore/issues/69762> |
| Issue | #69763 | CertificateAuthentication: CustomTrustStore/CustomRootTrust is not applied to self-signed client certificates | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69763> |
| Issue | #69760 | RouteHandlerAnalyzer: NullReferenceException (AD0001) when the handler is a delegate creation, `new Func<int, string>(Method)`, or a lambda under a cast | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69760> |
| Issue | #69759 | Request Delegate Generator: an intercepted `MapFallback` endpoint is registered with order 0 instead of `int.MaxValue`, and without its fallback metadata | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69759> |
| Issue | #69757 | Request Delegate Generator: `MapFallback(handler)` and `MapFallback(pattern, handler)` with handlers of the same signature share one interceptor, build error CS9144 | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69757> |
| Issue | #69756 | Request Delegate Generator: a string bound through [FromQuery], [FromHeader] or [FromRoute] receives null instead of its default value | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69756> |
| Issue | #69758 | Request Delegate Generator: a double parameter defaulting to -0.0 receives +0.0 (the generated fallback is the int expression -0); a decimal -0.0m loses its sign too | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69758> |
| Issue | #69755 | Request Delegate Generator: InvalidCastException at the Map call for a `params` handler, and for a method converted to a named delegate type or, with a default value, to `Func<>` | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69755> |
| Issue | #69698 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69698> |
| Issue | #69744 | FormFeature.ReadFormAsync can return a null Task when the body completes on another thread (NullReferenceException in OpenIdConnectHandler) | open | olisago | <https://github.com/dotnet/aspnetcore/issues/69744> |
| Issue | #69739 | The new IISHostLifetime implementation introduced with .NET 10 isn't logging Microsoft.Hosting.Lifetime events | open | DavidZidar | <https://github.com/dotnet/aspnetcore/issues/69739> |
| Issue | #69737 | Nested wildcard host endpoint is incorrectly selected for a broader host match | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69737> |
| Issue | #69734 | [Blazor WASM / MSAL] Race in AuthenticationService.init drops the login return URL (regression in 10.0.8) | closed | droyad | <https://github.com/dotnet/aspnetcore/issues/69734> |
| Issue | #69718 | Blazor app returns 404 for ` _framework/dotnet-browser-tools/hot-reload-settings.json` after installing 11.0 RTM | open | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/69718> |
| Issue | #69729 | OpenAPI: [Obsolete] on a property leaks `deprecated: true` into the shared component schema | open | sander1095 | <https://github.com/dotnet/aspnetcore/issues/69729> |
| Issue | #69710 | `Http2Connection.ProcessPingFrameAsync` should validate PING-ACK payload | open | elinor-fung | <https://github.com/dotnet/aspnetcore/issues/69710> |
| Issue | #69717 | Form mapping problems still present in 11.0.0-rc.1: file lists in collection items, root IReadOnlyList<IFormFile>, ']' in dictionary keys | open | kkdev92 | <https://github.com/dotnet/aspnetcore/issues/69717> |
| Issue | #69695 | OpenIdConnectHandler.SignOutAsync should only use a saved ID token issued by its own scheme | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69695> |
| Issue | #69707 | Harden ClientCertificateMode config validation | open | hoyosjs | <https://github.com/dotnet/aspnetcore/issues/69707> |
| Issue | #69704 | IIS in-process: first request can observe empty IServerAddressesFeature.Addresses before startup publishes bindings | open | halter73 | <https://github.com/dotnet/aspnetcore/issues/69704> |
| Issue | #69701 | [Hardening] Cancel pending cookie renewal when principal validation rejects authentication | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69701> |
| Issue | #69684 | WebApplicationFactory sometimes throws ObjectDisposedException instead of the app's startup exception | open | Demivan | <https://github.com/dotnet/aspnetcore/issues/69684> |
| Issue | #69692 | HTTP/1.1 infinite KeepAliveTimeout and RequestHeadersTimeout expire on the next heartbeat due to deadline overflow | open | ramazan199 | <https://github.com/dotnet/aspnetcore/issues/69692> |
| Issue | #69681 | Garbage collection disposes fileContent before the formData is posted | closed | lirannl | <https://github.com/dotnet/aspnetcore/issues/69681> |
| Issue | #69682 | DBSC: full support for multiple DBSC schemes, including testing and validation | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69682> |
| Issue | #69680 | InvalidOperationException in SaveTempDataFilter in an App that doesn't seem to use TempData | closed | drauch | <https://github.com/dotnet/aspnetcore/issues/69680> |
| Issue | #69571 | Error On Building Blazor_WASM Project: mnMicrosoft.NET.Sdk.WebAssembly.Browser.targets | closed | KatzReveil | <https://github.com/dotnet/aspnetcore/issues/69571> |
| Issue | #68796 | Cookie TempData fails on non-streaming SSR EditForm redirect with legacy navigation behavior | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68796> |
| Issue | #68568 | libmsalruntime.so and .NET 10.0.11 | closed | sbwalker | <https://github.com/dotnet/aspnetcore/issues/68568> |
| Issue | #69283 | [SignalR] Negative SequenceMessage.SequenceId permanently silences a connection | closed | madhu873 | <https://github.com/dotnet/aspnetcore/issues/69283> |
| Issue | #69090 | SignalR connection tokens are not bound to the endpoint that negotiated them | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69090> |
| Issue | #66565 | Perf improvement: json, tls-handshakes-httpsys | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/66565> |
| Issue | #66536 | Perf regression: antiforgery-generation, antiforgery-validation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/66536> |
| Issue | #45096 | Blazor Value cannot be null. (Parameter 'obj') | closed | omuleanu | <https://github.com/dotnet/aspnetcore/issues/45096> |
| Issue | #67957 | validating the service descriptor for PinnedBlockMemoryPoolFactory fails when a custom scoped TimeProvider is registered | closed | jjanuszkiewicz | <https://github.com/dotnet/aspnetcore/issues/67957> |
| Issue | #23749 | Consider adding an event to the OAuth 2.0 base handler to validate token responses | closed | kevinchalet | <https://github.com/dotnet/aspnetcore/issues/23749> |
| Issue | #4683 | Offer a built-in JWKS endpoint to support encrypted tokens | closed | kevinchalet | <https://github.com/dotnet/aspnetcore/issues/4683> |
| Issue | #13343 | Review uses of IServiceScope to ensure registering IAsyncDisposable services doesn't cause exceptions | closed | kevinchalet | <https://github.com/dotnet/aspnetcore/issues/13343> |
| Issue | #63084 | IInvocationBinder throws or returns empty array inconsistently | closed | AArnott | <https://github.com/dotnet/aspnetcore/issues/63084> |
| Issue | #69606 | [IIS] [.NET9.0] Application Stopped is fired after Application Started after a pool recycling | closed | julienGrd | <https://github.com/dotnet/aspnetcore/issues/69606> |
| Issue | #69386 | Output caching: authenticated-user check added to DefaultPolicy.ServeResponseAsync in 10.0.9 silently disables custom policies | closed | lukasvosyka | <https://github.com/dotnet/aspnetcore/issues/69386> |
| Issue | #69392 | IIS in-process: first request after startup can get an empty PathBase because IISHttpServer.StartAsync registers callbacks before reading the virtual application path (10.0 regression) | closed | PietroPPerini | <https://github.com/dotnet/aspnetcore/issues/69392> |
| Issue | #61775 | Get rid of custom reference resolution system, use built-in nuget features | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/61775> |
| Issue | #69434 | [aw] Failed jobs: PR Documentation Check | closed | aspnetcore-docs-bot[bot] | <https://github.com/dotnet/aspnetcore/issues/69434> |
| Issue | #69406 | Rework ScriptTagHelper to use proper way of generating fallbacks script (no document.write) | closed | ChaosEngine | <https://github.com/dotnet/aspnetcore/issues/69406> |
| Issue | #69672 | [aw] Failed jobs: PR Documentation Check | closed | aspnetcore-docs-bot[bot] | <https://github.com/dotnet/aspnetcore/issues/69672> |
| Issue | #69121 | [Validation] CacheView cache keys and capacity | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69121> |
