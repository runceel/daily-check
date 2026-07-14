# dotnet/aspnetcore

対象期間: 2026-07-10 00:28:22 〜 2026-07-14 01:26:38 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 21 |
| クローズ (未マージ) PR     | 9 |
| 新規 PR (オープン中)       | 19 |
| 新規 Issue                 | 20 |
| クローズ Issue             | 14 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67722](https://github.com/dotnet/aspnetcore/issues/67722) — SNI hostname and HTTP Host can drift, with no visibility （Issue / open / DeagleGross）
 Kestrel/HTTPS の運用者は SNI と HTTP Host の不一致を検知・記録できるか確認し、ホスト名検証と監視の追加を検討してください。
- **⚠ セキュリティ** [#67721](https://github.com/dotnet/aspnetcore/issues/67721) — SNI parsing accepts malformed server names （Issue / open / DeagleGross）
 HTTPS サーバーを運用する利用者は、不正な SNI server name の受け入れがないか確認し、修正の進展を追跡してください。

## 主要な変更点

- **セキュリティ確認:** SNI と HTTP Host の乖離可視化、および不正な SNI 名の解析に関する Issue が起票されました。
- HttpSys の Strict hardening を適用できない場合に起動を失敗させる変更がマージされ、設定不備を早期検知しやすくなりました。
- Validation source generator の配列型処理、Problem/ValidationProblem の拡張キー競合、Blazor passkey 登録などの修正が入りました。
- Blazor の CacheBoundary 対応と `[JSInvokable]` 非公開メソッドへの警告・コード修正提案が進みました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67767 | Skip macOS quarantined-test job on PRs | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67767> |
| PR | #67764 | Harden test-quarantine workflow guardrails (B1/B2/B3) | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67764> |
| PR | #67754 | [test-quarantine] Unquarantine DataProtectionProviderTests.System_UsesProvidedCertificateNotFromStore | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67754> |
| PR | #67743 | Fix array type unwrapping in validation source generator | merged | Vladik29w | <https://github.com/dotnet/aspnetcore/pull/67743> |
| PR | #67739 | [test-quarantine] Quarantine RedirectionTest.RedirectEnhancedGetToExternal | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67739> |
| PR | #67736 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67736> |
| PR | #67728 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67728> |
| PR | #67727 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 98c1ba47b2ad80864b7020b2437e5fa7d26f3631 to 70cf973cec34c1b98ab09894537975ca677452ae | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67727> |
| PR | #67726 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 98c1ba47b2ad80864b7020b2437e5fa7d26f3631 to 70cf973cec34c1b98ab09894537975ca677452ae | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67726> |
| PR | #67725 | [main] (deps): Bump src/submodules/googletest from `3064a60` to `8240fa7` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67725> |
| PR | #67720 | HttpSys: fail startup when Strict hardening cannot be applied | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67720> |
| PR | #67717 | [release/11.0-preview6] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67717> |
| PR | #67715 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67715> |
| PR | #67712 | Revert "Fixed AmbiguousMatchException in DataAnnotationsValidator for Hidden Members (#67075)" | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67712> |
| PR | #67702 | Run Blazor E2E tests on Microsoft.Extensions.Validation changes | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67702> |
| PR | #67690 | Avoid ArgumentException when Problem/ValidationProblem extensions conflict with defaults | merged | UditDewan | <https://github.com/dotnet/aspnetcore/pull/67690> |
| PR | #67671 | Improve `QuickGrid` virtualization coverage | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67671> |
| PR | #67635 | HttpHeaders: reject Content-Length with leading `+` or `-` sign | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67635> |
| PR | #67589 | Fix Blazor passkey registration under CsrfProtection | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67589> |
| PR | #67137 | Add warning and code fix suggestion for non-public `[JSInvokable]` methods | merged | damyanpetev | <https://github.com/dotnet/aspnetcore/pull/67137> |
| PR | #65772 | CacheBoundary support for Blazor | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/65772> |
| PR | #67752 | [test-quarantine] Re-quarantine TestServerTests.WebSocketsWorks | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67752> |
| PR | #67740 | [test-quarantine] Unquarantine ServerVirtualizationTest.NonZeroStartIndex_ScrollToMiddleThenMeasure | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67740> |
| PR | #67572 | Fix unbounded memory allocation in TargetPickerUi debug proxy | closed | rustamque | <https://github.com/dotnet/aspnetcore/pull/67572> |
| PR | #67571 | Fix resource leaks and exception handling in OAuth and OpenIdConnect | closed | rustamque | <https://github.com/dotnet/aspnetcore/pull/67571> |
| PR | #67569 | Fix resource leaks in BlazorWindow (PhotinoPlatform sample) | closed | rustamque | <https://github.com/dotnet/aspnetcore/pull/67569> |
| PR | #67568 | Fix exception handling and culture-specific parsing in TargetPickerUi | closed | rustamque | <https://github.com/dotnet/aspnetcore/pull/67568> |
| PR | #67235 | Add public SubmitAsync method to EditForm | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67235> |
| PR | #66901 | Fix warning when using nullable properties in ValidationMessageStore.Add field accessor | closed | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/pull/66901> |
| PR | #66645 | Fix nullable annotation for ElementReference.Id | closed | sheiksyedm | <https://github.com/dotnet/aspnetcore/pull/66645> |
| PR | #67769 | WIP: DO NOT REVIEW - QueryFeature duplicate-key list pre-size (perf experiment) | open | artl93 | <https://github.com/dotnet/aspnetcore/pull/67769> |
| PR | #67768 | Run Blazor WebAssembly in a Web Worker | open | danielpastoor | <https://github.com/dotnet/aspnetcore/pull/67768> |
| PR | #67765 | Support AuthorizationPolicy and IAuthorizationRequirementData metadata everywhere | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67765> |
| PR | #67761 | WIP: DO NOT REVIEW - Reduce SignalR client/protocol allocations on stream-ID and header hot paths | open | artl93 | <https://github.com/dotnet/aspnetcore/pull/67761> |
| PR | #67759 | WIP: DO NOT REVIEW — ResponseCaching: avoid one-element string[] allocation on vary-by lookup | open | artl93 | <https://github.com/dotnet/aspnetcore/pull/67759> |
| PR | #67758 | WIP: DO NOT REVIEW Use generated regexes for gRPC JSON parsing | open | artl93 | <https://github.com/dotnet/aspnetcore/pull/67758> |
| PR | #67757 | Harden wildcard matching with empty segments inside | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67757> |
| PR | #67753 | [test-quarantine] Unquarantine IIS NewShim ShutdownTests (dotnet/runtime#126925) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67753> |
| PR | #67750 | WIP: DO NOT REVIEW — Eliminate per-request string[] allocation in conventional MVC action selection | open | artl93 | <https://github.com/dotnet/aspnetcore/pull/67750> |
| PR | #67749 | Fix agentic workflow detection job missing pat_pool dependency (stopgap; prefer gh-aw ≥ v0.82.6 recompile) | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67749> |
| PR | #67748 | Update IdentityModelVersion to latest | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67748> |
| PR | #67746 | Fix warning when using nullable properties in ValidationMessageStore.Add field accessor | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/pull/67746> |
| PR | #67742 | Fix authz metadata guard consistency | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/67742> |
| PR | #67737 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67737> |
| PR | #67733 | Fix API for QuickGrid | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67733> |
| PR | #67732 | Use async ChangeToken.OnChange overload in KeyPerFileConfigurationProvider | open | svick | <https://github.com/dotnet/aspnetcore/pull/67732> |
| PR | #67731 | Allow `null` on `UserOptions.AllowedUserNameCharacters` | open | justindbaur | <https://github.com/dotnet/aspnetcore/pull/67731> |
| PR | #67730 | Rename private static fields to use s_ prefix (part 1) | open | BekAllaev | <https://github.com/dotnet/aspnetcore/pull/67730> |
| PR | #67716 | Fix checkbox binding when input type is set dynamically | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67716> |
| Issue | #67766 | Blazor WASM with fingerprinting enabled will make blazor.webassembly.{..}.js point to dotnet.js in error | open | ricardomomm | <https://github.com/dotnet/aspnetcore/issues/67766> |
| Issue | #67763 | OutputCaching invalid cache keys can coalesce unrelated concurrent responses | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67763> |
| Issue | #67762 | Support `IOptionsMonitor<SqlServerCacheOptions>` for runtime configuration updates | open | eskour | <https://github.com/dotnet/aspnetcore/issues/67762> |
| Issue | #67760 | ResponseCaching: VaryByQueryKeys vary key can collide because the '=' name/value separator is not escaped | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67760> |
| Issue | #67756 | Harden wildcard matching with empty segments inside | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67756> |
| Issue | #67751 | Connection downgrades to negotiateVersion=0 when hub URL contains the substring negotiateVersion | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67751> |
| Issue | #67747 | Make GetValidationAttributes virtual instead of abstract | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67747> |
| Issue | #67755 | [dotnet-sdk-11.0.100-preview.7.26360.111] grandnode app launch failed with MethodNotFoundException | open | WeiweiCaiAcpt | <https://github.com/dotnet/aspnetcore/issues/67755> |
| Issue | #67744 | Perf improvement: fortunes_ef | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67744> |
| Issue | #67745 | Perf regression: antiforgery-noop, json, mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67745> |
| Issue | #67738 | Quarantine RedirectionTest.RedirectEnhancedGetToExternal | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67738> |
| Issue | #67735 | ch05_agent_coordination | closed | leveyp94-hash | <https://github.com/dotnet/aspnetcore/issues/67735> |
| Issue | #67734 | Perf improvement: fortunes_ef, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67734> |
| Issue | #67729 | Virtualize unexpectedly jumps to the beginning/end of the list while scrolling after PR #65951 (.NET 11 Preview 4 regression) | open | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/issues/67729> |
| Issue | #67724 | API Proposal: CacheBoundary | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/67724> |
| Issue | #67723 | Using `TypedResults` and an API convention in the same project causes conflicts | open | cremor | <https://github.com/dotnet/aspnetcore/issues/67723> |
| Issue | #67722 | SNI hostname and HTTP Host can drift, with no visibility | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67722> |
| Issue | #67721 | SNI parsing accepts malformed server names | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67721> |
| Issue | #67719 | Perf regression: antiforgery-noop, fortunes | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67719> |
| Issue | #67718 | Perf improvement: antiforgery-validation, tls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67718> |
| Issue | #67711 | Revert #67075: hidden-member validation fix is incomplete and regresses behavior | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67711> |
| Issue | #67693 | Benchmark stopped running: QueryCompilation | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67693> |
| Issue | #67692 | Perf regression: multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67692> |
| Issue | #67588 | Blazor Web App Individual-auth passkey registration fails with antiforgery 500 under the new CsrfProtection middleware | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67588> |
| Issue | #67412 | ValidationsGenerator doesn't unwrap array types | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67412> |
| Issue | #66637 | Quarantine Microsoft.AspNetCore.DataProtection.DataProtectionProviderTests.System_UsesProvidedCertificateNotFromStore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66637> |
| Issue | #66407 | Exception when trying to return `Problem` or `ValidationProblem` with an extension with a key that is already set internally | closed | bartvanandel | <https://github.com/dotnet/aspnetcore/issues/66407> |
| Issue | #65756 | CacheBoundary | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/65756> |
| Issue | #65235 | [Blazor] Warn + suggest code fix when a `[JSInvokable]` method is non-public.* | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/65235> |
| Issue | #58523 | ElementReference.Id has wrong nullable annotation | closed | ScarletKuro | <https://github.com/dotnet/aspnetcore/issues/58523> |
| Issue | #55520 | Add a Blazor Cache component | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/55520> |
| Issue | #14453 | Run every healthcheck in its own scope | closed | berghtho | <https://github.com/dotnet/aspnetcore/issues/14453> |
