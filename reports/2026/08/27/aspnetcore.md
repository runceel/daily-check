# dotnet/aspnetcore

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 53 |
| クローズ (未マージ) PR     | 8 |
| 新規 PR (オープン中)       | 35 |
| 新規 Issue                 | 32 |
| クローズ Issue             | 42 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#68465](https://github.com/dotnet/aspnetcore/pull/68465) — Harden chunked encoding parsing （PR / merged / Youssef1313）
  HTTP/1.1 のチャンク解析を実装・運用する利用者は、異常なエンコード入力への拒否動作とセキュリティ回帰を確認してください。
- **⚠ セキュリティ** [#66348](https://github.com/dotnet/aspnetcore/issues/66348) — NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) （Issue / closed / Gebov）
  NuGet 依存関係を持つ開発者は NU190x 警告をエラーとして扱う設定と脆弱性修正の適用状況を確認してください。
- **非推奨/廃止** [#64858](https://github.com/dotnet/aspnetcore/issues/64858) — Feedback / Concerns on Deprecation of OpenAPI Analyzers in .NET 10 Controllers （Issue / closed / sander1095）
  .NET 10 の Controller OpenAPI 利用者は、OpenAPI analyzer 非推奨化の影響と代替手段を確認してください。
- **非推奨/廃止** [#64400](https://github.com/dotnet/aspnetcore/pull/64400) — Obsolete IdentityUserContext.SchemaVersion property （PR / closed / Copilot）
  `IdentityUserContext.SchemaVersion` を参照するコードは、非推奨 API からの移行要否を確認してください。
- **非推奨/廃止** [#64372](https://github.com/dotnet/aspnetcore/issues/64372) — Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 （Issue / open / joperezr）
  Razor runtime compilation の `AddRazorRuntimeCompilation` 系 API 利用者は、.NET 10 の非推奨化と代替開発フローを確認してください。
- **非推奨/廃止** [#64361](https://github.com/dotnet/aspnetcore/issues/64361) — IUrlHelper depends on ActionContext obsoleted in ASP.NET Core 10 （Issue / closed / timstokman）
  `IUrlHelper` と `ActionContext` に依存するアプリは、ASP.NET Core 10 の非推奨 API 変更を確認してください。
- **非推奨/廃止** [#64338](https://github.com/dotnet/aspnetcore/issues/64338) — .NET 10 and Razor: Please clarify what you mean by "Razor runtime compilation is obsolete" （Issue / closed / PoseidonEnergy）
  Razor runtime compilation の非推奨化の意味と対象環境を確認し、開発時の再コンパイル手順を見直してください。
- **非推奨/廃止** [#63494](https://github.com/dotnet/aspnetcore/issues/63494) — OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute （Issue / closed / desjoerd）
  `[Obsolete]` を付けた OpenAPI の操作・スキーマ・プロパティが仕様に反映されるため、生成ドキュメントを確認してください。

## 主要な変更点

- **破壊的変更**として chunked encoding の解析が強化され、不正入力の扱いが厳格化されました。
- NuGet の脆弱性監査警告をエラー化する運用と、OpenAPI analyzer / Razor runtime compilation など .NET 10 の非推奨化議論が進んでいます。
- Blazor Components の agent 検証ガイダンス、生成 UI / human approval フロー、SignalR 認証更新が追加・改善されました。
- OutputCacheMiddleware は切断・不完全応答をキャッシュしないようになり、JsonPatch と gRPC 依存関係も更新されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68829 | [release/11.0] Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3058217 | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68829> |
| PR | #68825 | [Infrastructure] Updated npm packages 2026-08-26 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68825> |
| PR | #68746 | Fix validation of parsable types | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68746> |
| PR | #68465 | Harden chunked encoding parsing | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68465> |
| PR | #68826 | Update branding to 2.3.13 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68826> |
| PR | #68830 | Update Servicing.md with M2 approval process | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68830> |
| PR | #68827 | Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3058217 | merged | dotnet-oneloc-localization[bot] | <https://github.com/dotnet/aspnetcore/pull/68827> |
| PR | #68804 | Improve Components validation guidance | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68804> |
| PR | #68663 | Use SignalR authentication refresh for Blazor Identity | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68663> |
| PR | #68799 | Clarify Components agent validation guidance | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68799> |
| PR | #68806 | docs: fix typo publically -> publicly | merged | vaibhav8a | <https://github.com/dotnet/aspnetcore/pull/68806> |
| PR | #68613 | Fix JsonPatch to not drop empty reference tokens and adhere to RFC | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68613> |
| PR | #68333 | [Blazor] Add agentic generative UI state rendering | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68333> |
| PR | #68766 | Fix RDG for single argument BindAsync for nullable value types. | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/68766> |
| PR | #68783 | Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3057266 | merged | dotnet-oneloc-localization[bot] | <https://github.com/dotnet/aspnetcore/pull/68783> |
| PR | #68771 | [test-quarantine] Re-quarantine Http3RequestTests.POST_ClientCancellationBidirectional_RequestAbortRaised | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68771> |
| PR | #68696 | Fix OneLoc GitHub App installation selection | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/68696> |
| PR | #68630 | Clarify faithful behavioral proof guidance | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68630> |
| PR | #68168 | Add public API governance instructions | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68168> |
| PR | #68706 | Update Helix Job Monitor to 11.0.0-beta.26424.2 | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/68706> |
| PR | #68330 | [Blazor] Add tool-based generative UI dojo scenario | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68330> |
| PR | #68778 | [test-quarantine] Quarantine VirtualizationTest.ScrollToItem_UserScrollDuringProviderFetch_UserScrollWins | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68778> |
| PR | #68776 | [test-quarantine] Quarantine VirtualizationTest.QuickGrid_AnchorMode_End_AppendAfterLeavingBottom_DoesNotReengage | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68776> |
| PR | #68774 | [test-quarantine] Quarantine VirtualizationTest.InitialIndex_RetainsTargetWhenPreviousItemExpandsThenHomeEndTakeOver | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68774> |
| PR | #68683 | Don't cache truncated/aborted responses in OutputCacheMiddleware | merged | karimsalem1 | <https://github.com/dotnet/aspnetcore/pull/68683> |
| PR | #68329 | [Blazor] Add Components.AI human approval flows | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68329> |
| PR | #68782 | Use a controlled external origin in redirection tests | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68782> |
| PR | #68784 | [release/11.0] Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3057266 | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68784> |
| PR | #68773 | [release/11.0] Don't cache truncated/aborted responses in OutputCacheMiddleware | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68773> |
| PR | #68749 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68749> |
| PR | #68751 | [release/11.0-rc1] Run DirectTls handshake user callbacks off the epoll pump thread | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68751> |
| PR | #68750 | Fix Virtualize window anchoring after top prepends. | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68750> |
| PR | #68759 | [automated] Merge branch 'release/11.0-rc1' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68759> |
| PR | #68757 | [release/11.0] Enable CFG for ARM64X ANCM forwarders | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68757> |
| PR | #68758 | [release/10.0] Enable CFG for ARM64X ANCM forwarders | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68758> |
| PR | #68668 | [release/11.0-rc1] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68668> |
| PR | #68744 | Enable CFG for ARM64X ANCM forwarders | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/68744> |
| PR | #68531 | Update gRPC dependencies to 2.83.0 | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68531> |
| PR | #68635 | Remove unused Publish-Build-Assets variable group from components-ai-daily.yml | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/68635> |
| PR | #68752 | Preserve test names in test-quarantine data | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68752> |
| PR | #68279 | Add build review guidance for architecture and design-time builds | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68279> |
| PR | #68725 | [test-quarantine] Quarantine QuickGrid_InitialIndex_TallContainer_NearEnd_FillsViewportWithoutUserScroll | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68725> |
| PR | #68731 | [test-quarantine] Quarantine QuickGrid_AnchorMode_End_PrependAtTop_ViewportStaysStable | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68731> |
| PR | #68733 | [test-quarantine] Quarantine AnchorMode_WindowScroll_End_PrependAtTop_ViewportStaysStable | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68733> |
| PR | #68729 | [test-quarantine] Quarantine AnchorMode_Start_LargePrependAtTop_StillShowsNewItems | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68729> |
| PR | #68727 | [test-quarantine] Quarantine QuickGrid_AnchorMode_NearTop_AppendKeepsViewportStable | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68727> |
| PR | #68621 | Clarify that the certificate validation cache is safely scoped per scheme | merged | JanKrivanek | <https://github.com/dotnet/aspnetcore/pull/68621> |
| PR | #68737 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68737> |
| PR | #68747 | [release/11.0] [test-quarantine] Quarantine QuickGrid_InitialIndex_TallContainer_NearEnd_FillsViewportWithoutUserScroll | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68747> |
| PR | #68664 | Run DirectTls handshake user callbacks off the epoll pump thread | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68664> |
| PR | #68736 | [release/11.0] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68736> |
| PR | #68701 | [automated] Merge branch 'release/11.0-rc1' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68701> |
| PR | #68601 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68601> |
| PR | #68721 | Fix rewrite map lookups nested in a pattern | closed | astralmaster | <https://github.com/dotnet/aspnetcore/pull/68721> |
| PR | #68807 | Drop Microsoft.CSharp from JsonPatch | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68807> |
| PR | #68753 | [release/11.0] Update gRPC dependencies to 2.83.0 | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68753> |
| PR | #66231 | [release/10.0] Add arm64 support for ANCMDepProviderKey | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/66231> |
| PR | #68754 | chore: removes yaml reader dependency | closed | baywet | <https://github.com/dotnet/aspnetcore/pull/68754> |
| PR | #68222 | [test-quarantine] Improve reliability of HubConnectionTests.LongPollingUsesHttp2ByDefault | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68222> |
| PR | #68709 | [Blazor] Keep Virtualize spacer callbacks programmatic while an alignment is pending | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/68709> |
| PR | #64400 | Obsolete IdentityUserContext.SchemaVersion property | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/64400> |
| PR | #68834 | Validate COSE ALG+CRV combination when decoding passkey CredentialPublicKey | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/68834> |
| PR | #68767 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68767> |
| PR | #68794 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68794> |
| PR | #68833 | [release/11.0-rc1] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68833> |
| PR | #68832 | Add triggered skill evaluation workflow | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68832> |
| PR | #68785 | [automated] Merge branch 'release/11.0' => 'main' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68785> |
| PR | #68831 | Skip records with no validatable members in the validations generator | open | Arul1998 | <https://github.com/dotnet/aspnetcore/pull/68831> |
| PR | #68791 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68791> |
| PR | #68822 | [Hosting] Add recommended HTTP server span attributes | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/68822> |
| PR | #68824 | support OTEL url.query and http.request.method override | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68824> |
| PR | #68821 | Improve agent guidance for cross-runtime Components work | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68821> |
| PR | #68823 | [Blazor] Document DOM listener lifecycle ownership | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68823> |
| PR | #68797 | Delete the nonce cookie when the OIDC callback returns an error | open | astralmaster | <https://github.com/dotnet/aspnetcore/pull/68797> |
| PR | #68787 | Require Selenium for browser-owned Components regressions | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68787> |
| PR | #68809 | Fix Blazor mobile menu after hydration | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68809> |
| PR | #68795 | Add well-known passkey endpoints and WebAuthn signals support | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68795> |
| PR | #68808 | Fix rewrite map lookups nested in a pattern | open | astralmaster | <https://github.com/dotnet/aspnetcore/pull/68808> |
| PR | #68803 | Fix issue-triage-agent area guidance for Blazor Forms/QuickGrid/CustomElements | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68803> |
| PR | #68800 | Fix stale JS bundle and E2E build blockers in Components AGENTS.md | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68800> |
| PR | #68792 | Fix Output Caching query-string cache-key collision | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68792> |
| PR | #68790 | Improve ParameterView cast exception to name the parameter and types | open | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68790> |
| PR | #68788 | Fix ApacheModRewrite tokenizer throwing on regex shorthand escapes | open | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68788> |
| PR | #68789 | Throw clear error when invoking async JSInvokable method synchronously | open | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68789> |
| PR | #68786 | Reject authentication schemes on SignalR hub methods | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68786> |
| PR | #68760 | Clarify form limits for multipart requests | open | halter73 | <https://github.com/dotnet/aspnetcore/pull/68760> |
| PR | #68763 | Disallow synchronous IIS response flushes | open | halter73 | <https://github.com/dotnet/aspnetcore/pull/68763> |
| PR | #68762 | [release/10.0] Fix JsonIgnore validation bypass for write-only conditions | open | halter73 | <https://github.com/dotnet/aspnetcore/pull/68762> |
| PR | #68770 | [release/10.0] Don't cache truncated/aborted responses in OutputCacheMiddleware | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68770> |
| PR | #68768 | Fix menu problem in templates | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68768> |
| PR | #68748 | [Blazor] Re-derive Virtualize at-bottom state when the anchor mode changes | open | lewing | <https://github.com/dotnet/aspnetcore/pull/68748> |
| PR | #68743 | Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | open | amf-fs | <https://github.com/dotnet/aspnetcore/pull/68743> |
| PR | #68739 | Apply backpressure to WebViewRenderer's unacknowledged render batch queue | open | Kebechet | <https://github.com/dotnet/aspnetcore/pull/68739> |
| PR | #68740 | Recover WebViewRenderer's unacknowledged batch queue from lost acknowledgements | open | Kebechet | <https://github.com/dotnet/aspnetcore/pull/68740> |
| PR | #68742 | Fix OutputCache size calculation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68742> |
| PR | #68738 | Add AntiforgeryOptions.AllowBackForwardCache | open | astralmaster | <https://github.com/dotnet/aspnetcore/pull/68738> |
| Issue | #68805 | Validation source generator emits ValidatableTypeInfo for records with no validation attributes | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68805> |
| Issue | #68756 | Reject duplicate 'target' properties in SignalR hub protocol | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/68756> |
| Issue | #68828 | Perf improvement: fortunes_ef, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68828> |
| Issue | #68741 | Document .NET 11 MEV analyzers | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68741> |
| Issue | #68814 | [Validation] Building and publishing a Blazor Hybrid app with its own JavaScript modules | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68814> |
| Issue | #68813 | [Validation] Blazor Hybrid teardown while JavaScript calls are in flight | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68813> |
| Issue | #68810 | [Validation] BasePath when hosting a Blazor Web App under a sub-path | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68810> |
| Issue | #68811 | [Validation] BasePath when one deployment answers on several path prefixes | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68811> |
| Issue | #68819 | [Validation] Cancellation and timeouts on WebWorkerClient calls | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68819> |
| Issue | #68818 | [Validation] Offloading work with the blazorwebworker template | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68818> |
| Issue | #68812 | [Validation] Reusing components with render modes in a Blazor Hybrid app | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68812> |
| Issue | #68817 | [Validation] Blazor Web startup options format in the Server and WebAssembly scripts | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68817> |
| Issue | #68816 | [Validation] Setting WebAssembly culture, environment and variables from the server | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68816> |
| Issue | #68815 | [Validation] Setting BrowserOptions from server code | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68815> |
| Issue | #68820 | [Validation] InputFile OnChange when the user cancels the file picker | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68820> |
| Issue | #68802 | Issue triage agent maps Blazor component projects to area-ui-rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68802> |
| Issue | #68745 | BindAsync with nullable value-type not properly selected with RDG | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68745> |
| Issue | #68801 | Remove the Blazor WebAssembly Service Defaults OTLP export workaround after OpenTelemetry supports async export | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68801> |
| Issue | #68798 | NullableIntOrString with active null fails as interactive-root component parameter in WebAssembly (.NET 11 Preview 7) | open | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/issues/68798> |
| Issue | #68796 | Cookie TempData fails on non-streaming SSR EditForm redirect with legacy navigation behavior | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68796> |
| Issue | #68780 | Components.AI: Allow UI actions to complete without a model follow-up | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/68780> |
| Issue | #68793 | FromServicesAttribute isn't considered for inheritance when applied to a property | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68793> |
| Issue | #68777 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerVirtualizationTest.ScrollToItem_UserScrollDuringPr
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68777> |
| Issue | #68772 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerVirtualizationTest.InitialIndex_RetainsTargetWhenP
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68772> |
| Issue | #68779 | Output Caching query-string key collision on `=` | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68779> |
| Issue | #68755 | Validate Passkey Algorithm + CRV when decoding CredentialPublicKey | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/68755> |
| Issue | #68781 | Components.AI: Check compliance with AI dojo app | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/68781> |
| Issue | #68775 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerVirtualizationTest.QuickGrid_AnchorMode_End_Append
[Content truncated due to length] | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68775> |
| Issue | #68769 | Introduce stream-level cap on read bytes for HTTP/2 | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68769> |
| Issue | #68765 | Components.AI: Honor ToolApprovalRequestContent.RequiresConfirmation | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/68765> |
| Issue | #68764 | Add opt-in credential confirmation for MapIdentityApi 2FA management operations | open | halter73 | <https://github.com/dotnet/aspnetcore/issues/68764> |
| Issue | #68761 | HTTP/3: RemoteIpAddress remains unchanged after QUIC connection migration | open | halter73 | <https://github.com/dotnet/aspnetcore/issues/68761> |
| Issue | #66794 | Harden CR/LF handling when parsing chunked extension | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66794> |
| Issue | #68137 | Add a way to render a full component sub-tree in Blazor | closed | NiceWaffel | <https://github.com/dotnet/aspnetcore/issues/68137> |
| Issue | #66348 | NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) | closed | Gebov | <https://github.com/dotnet/aspnetcore/issues/66348> |
| Issue | #67819 | JsonPatch: `ParsedPath` drops empty JSON Pointer tokens (RFC 6901) | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67819> |
| Issue | #54330 | Reduce Polyfill packages for newer TFM | closed | thompson-tomo | <https://github.com/dotnet/aspnetcore/issues/54330> |
| Issue | #68662 | Support email as login identifier in Identity API endpoints | closed | seifhesham22 | <https://github.com/dotnet/aspnetcore/issues/68662> |
| Issue | #68476 | Scope `JSComponentInterop.SetRootComponentParameters` to JS-registered dynamic roots | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68476> |
| Issue | #64366 | Blazor apps with .NET 10 and Docker deployment do not trigger events | closed | gavdgavd | <https://github.com/dotnet/aspnetcore/issues/64366> |
| Issue | #66109 | For blazor SetParametersAsync(ParameterView parameters) event | closed | gbthakkar | <https://github.com/dotnet/aspnetcore/issues/66109> |
| Issue | #67698 | IJSObjectReference.SetValueAsync | closed | ghorner2 | <https://github.com/dotnet/aspnetcore/issues/67698> |
| Issue | #64071 | [dotnet watch with hot reload]There is an error "Exited with error code -1" when pressing Ctrl+C to exit dotnet-watch for Blazor wasm standalone project after installing 10.0 RTM | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/64071> |
| Issue | #67444 | Quarantine Microsoft.AspNetCore.Components.E2ETests.ServerRenderingTests.RedirectionTest.RedirectEnhancedPostToExternal | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67444> |
| Issue | #67342 | Quarantine flaky RedirectionTest methods (RedirectStreamingPostToExternal, RedirectEnhancedNonBlazorGetToExternal, RedirectEnhan
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67342> |
| Issue | #67738 | Quarantine RedirectionTest.RedirectEnhancedGetToExternal | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67738> |
| Issue | #66969 | Quarantine RedirectStreamingGetToExternal and RedirectStreamingEnhancedGetToExternal flaky tests | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66969> |
| Issue | #68723 | Perf improvement: json, json_middleware | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68723> |
| Issue | #64338 | .NET 10 and Razor: Please clarify what you mean by "Razor runtime compilation is obsolete" | closed | PoseidonEnergy | <https://github.com/dotnet/aspnetcore/issues/64338> |
| Issue | #68678 | Browser Link triggers "Permissions policy violation: unload is not allowed in this document" in Edge during Blazor Web App debugging | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/68678> |
| Issue | #65281 | [MVC and Razor Pages] RenderFragment-like generics support (as what is available in Blazor) in traditional MVC and Razor Pages | closed | techgems | <https://github.com/dotnet/aspnetcore/issues/65281> |
| Issue | #65159 | MapStaticAssets doesn't add correct Cache-Control headers | closed | CePur | <https://github.com/dotnet/aspnetcore/issues/65159> |
| Issue | #64343 | Razor Pages Should Evolve Into a Livewire-Style Framework — No Page Reload, No SPA Complexity | closed | ben0707 | <https://github.com/dotnet/aspnetcore/issues/64343> |
| Issue | #64731 | Blazor WebAssembly DevServer fails to use development HTTPS certificate after NuGet package upgrade | closed | LongJohnBlackbeard | <https://github.com/dotnet/aspnetcore/issues/64731> |
| Issue | #67247 | Angular+Asp.Net Core Template: WeatherForecast is not found | closed | suugbut | <https://github.com/dotnet/aspnetcore/issues/67247> |
| Issue | #65371 | ApiExplorer doesn't propagate non-success Results types | closed | klinki | <https://github.com/dotnet/aspnetcore/issues/65371> |
| Issue | #64858 | Feedback / Concerns on Deprecation of OpenAPI Analyzers in .NET 10 Controllers | closed | sander1095 | <https://github.com/dotnet/aspnetcore/issues/64858> |
| Issue | #61808 | gRPC Transcoding: SwaggerGen can not handle the enum option allow_alias | closed | Zetanova | <https://github.com/dotnet/aspnetcore/issues/61808> |
| Issue | #64424 | Missing GrpcXmlCommentsDocumentFilter, GrpcXmlCommentsOperationFilter in Microsoft.AspNetCore.Grpc.Swagger v0.10.0 | closed | kurtbugeja | <https://github.com/dotnet/aspnetcore/issues/64424> |
| Issue | #55733 | Microsoft.AspNetCore.Grpc.Swagger doesn't respect WriteEnumsAsIntegers for request contracts | closed | abbottdev | <https://github.com/dotnet/aspnetcore/issues/55733> |
| Issue | #64361 | IUrlHelper depends on ActionContext obsoleted in ASP.NET Core 10 | closed | timstokman | <https://github.com/dotnet/aspnetcore/issues/64361> |
| Issue | #60003 | ASP.NET Core starts streaming API reviews | closed | terrajobst | <https://github.com/dotnet/aspnetcore/issues/60003> |
| Issue | #65779 | [Blazor] Child component receives stale value for @bind parameter when rendered through forwarded ChildContent | closed | pkostaki | <https://github.com/dotnet/aspnetcore/issues/65779> |
| Issue | #67650 | [release/10.0] FormsInputDateTest InputDate/Time WASM e2e tests fail deterministically | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/67650> |
| Issue | #68647 | [DirectTLS] run user-callbacks on the threadpool, not on the transport event-pump threads | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68647> |
| Issue | #66877 | OutputCache caches truncated responses for aborted requests | closed | markalward | <https://github.com/dotnet/aspnetcore/issues/66877> |
| Issue | #56427 | Output caching middleware caches empty response body when request cancelled | closed | gnjack | <https://github.com/dotnet/aspnetcore/issues/56427> |
| Issue | #68732 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.AnchorMode_WindowScroll_End_PrependAtTop_ViewportSta
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68732> |
| Issue | #68507 | Update gRPC dependencies to latest versions | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/68507> |
| Issue | #68653 | OpenAPI duplicates a polymorphic union case when the union is used as a property | closed | verdie-g | <https://github.com/dotnet/aspnetcore/issues/68653> |
| Issue | #68544 | [Validation] PersistentState with AllowUpdates on the template Weather page | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68544> |
| Issue | #68735 | Perf regression: json_middleware | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68735> |
