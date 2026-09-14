# dotnet/aspnetcore

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 34 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 13 |
| 新規 Issue                 | 23 |
| クローズ Issue             | 20 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#68738](https://github.com/dotnet/aspnetcore/pull/68738) — Add AntiforgeryOptions.AllowBackForwardCache （PR / open / astralmaster）
  Antiforgery token を含むページで back/forward cache を許可したい開発者向けの opt-in 案であり、既定値は変わりません。採用時は共有キャッシュを避ける `private` 指定と再表示時の安全性を検証してください。
- **⚠ セキュリティ** [#68054](https://github.com/dotnet/aspnetcore/issues/68054) — AntiforgeryMiddleware needs an escape-hatch for troubleshooting and logging, and customizing the final response （Issue / open / daiplusplus）
  CSRF 検証失敗時に form 内容を安全に診断し、適切なエラーレスポンスへ変換する API の要望です。現時点では未実装のため、非公開の `HttpContext.Items` キーに依存する回避策は避け、今後の設計を追跡してください。

## 主要な変更点

- Antiforgery では [back/forward cache を opt-in で許可する PR #68738](https://github.com/dotnet/aspnetcore/pull/68738) と、[CSRF 失敗時の診断・応答カスタマイズ Issue #68054](https://github.com/dotnet/aspnetcore/issues/68054) が継続検討中です。どちらも現時点では未リリースです。
- [PR #68770](https://github.com/dotnet/aspnetcore/pull/68770) により、途中で切断・中止されたレスポンスを Output Cache に保存しない修正が release/10.0 に入りました。
- Blazor では [予測的 state update](https://github.com/dotnet/aspnetcore/pull/68335) が追加され、JS／.NET 内部境界の互換性ルールも文書化されました。
- CacheView は [HTTP HEAD 対応](https://github.com/dotnet/aspnetcore/pull/68950) と最適化がマージされ、OpenAPI 依存も各 servicing branch で更新されています。
- そのほかは release branch の source・branding・dependency 更新が中心で、新規の明示的な破壊的変更は確認されませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68929 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68929> |
| PR | #69009 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69009> |
| PR | #61779 | [release/2.3] Update Microsoft.Extensions.DependencyModel to 8.0.2 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/61779> |
| PR | #68951 | [release/11.0] Fix menu problem in templates | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68951> |
| PR | #69003 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69003> |
| PR | #68931 | [release/11.0] Fix installer background for bundles | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68931> |
| PR | #68832 | Add manually triggered skill evaluations | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68832> |
| PR | #68922 | [release/8.0] (deps): Bump src/submodules/googletest from `3940de9` to `36ba75f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68922> |
| PR | #68966 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68966> |
| PR | #68770 | [release/10.0] Don't cache truncated/aborted responses in OutputCacheMiddleware | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68770> |
| PR | #68918 | [release/10.0] (deps): Bump src/submodules/googletest from `49495ea` to `36ba75f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68918> |
| PR | #68836 | [release/10.0] Update OpenApi to 2.12.2 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68836> |
| PR | #68981 | Document Individual-auth custom-hive template validation | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68981> |
| PR | #68656 | [release/10.0] Extract IsAuthenticated helper method | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68656> |
| PR | #68930 | Fix installer background for bundles | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68930> |
| PR | #68932 | [release/10.0] Fix installer background for bundles | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68932> |
| PR | #68984 | Document test project conventions | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68984> |
| PR | #68570 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68570> |
| PR | #68657 | [release/8.0] Extract IsAuthenticated helper method | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68657> |
| PR | #68659 | [release/9.0] Extract IsAuthenticated helper method | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68659> |
| PR | #68837 | [release/9.0] Update OpenApi to 1.6.31 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68837> |
| PR | #68838 | [release/8.0] Update OpenApi to 1.6.31 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68838> |
| PR | #68919 | [release/9.0] (deps): Bump src/submodules/googletest from `3940de9` to `36ba75f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68919> |
| PR | #68940 | [release/8.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68940> |
| PR | #68958 | [release/8.0] Update dependencies from dotnet/source-build-externals | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68958> |
| PR | #68967 | [release/9.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68967> |
| PR | #68968 | [release/8.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68968> |
| PR | #68963 | [release/8.0] Update branding to 8.0.32 | merged | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/68963> |
| PR | #68962 | [release/9.0] Update branding to 9.0.21 | merged | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/68962> |
| PR | #68997 | Fix issue triage workflow dispatches | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68997> |
| PR | #68335 | [Blazor] Add predictive state updates | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68335> |
| PR | #68979 | Document Blazor JS/.NET internal boundary compatibility rules for agents | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/68979> |
| PR | #68950 | Support HTTP HEAD requests in CacheView | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68950> |
| PR | #68953 | CacheView optimizations | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68953> |
| PR | #69011 | Add a read-only expert pull request review skill | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69011> |
| PR | #69010 | [automated] Merge branch 'release/11.0' => 'main' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69010> |
| PR | #68983 | Wait for in-flight health check publishers in HealthCheckPublisherHostedService.StopAsync | open | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68983> |
| PR | #69008 | Add deterministic GH workflow PR labeler | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69008> |
| PR | #69007 | Use diagnostics IPC for non-Windows hang dump capture | open | tommcdon | <https://github.com/dotnet/aspnetcore/pull/69007> |
| PR | #68972 | [release/11.0] CacheView optimizations | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68972> |
| PR | #68977 | Prevent Microsoft.AspNetCore.App.Internal.Assets from packing without framework assets | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68977> |
| PR | #68982 | Honor nullable collection elements in OpenAPI schemas | open | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68982> |
| PR | #68998 | Improve template navigation focus contrast | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68998> |
| PR | #68974 | Disable runtime-async for ppc64le, s390x, and Mono runtimes | open | shrinivas-sidral | <https://github.com/dotnet/aspnetcore/pull/68974> |
| PR | #69004 | Skip expensive PR pipelines for doc-only and metadata-only changes | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69004> |
| PR | #69005 | Handle zero size hints in Http1OutputProducer | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69005> |
| PR | #69002 | Respect IBufferWriter leases after commit | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69002> |
| Issue | #69006 | Perf regression: tls-handshakes-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69006> |
| Issue | #68999 | [Infrastructure] Limit the CI configurations that run when not making code changes | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68999> |
| Issue | #69000 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | open | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69000> |
| Issue | #68980 | Document custom-hive Individual-auth template validation | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68980> |
| Issue | #69001 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | open | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69001> |
| Issue | #68996 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68996> |
| Issue | #68995 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68995> |
| Issue | #68994 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68994> |
| Issue | #68993 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68993> |
| Issue | #68992 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68992> |
| Issue | #68991 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68991> |
| Issue | #68990 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68990> |
| Issue | #68989 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68989> |
| Issue | #68988 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68988> |
| Issue | #68987 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68987> |
| Issue | #68986 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68986> |
| Issue | #68985 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68985> |
| Issue | #68976 | RouteHandlerAnalyzer throws IndexOutOfRangeException (AD0001) when the route handler is a method group from a referenced assembly | open | omrcm | <https://github.com/dotnet/aspnetcore/issues/68976> |
| Issue | #68978 | Clarify Blazor backwards compatibility requirements for JS and .NET code | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68978> |
| Issue | #68975 | Prevent Microsoft.AspNetCore.App.Internal.Assets from packing without framework assets | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68975> |
| Issue | #68973 | OpenAPI schema generation marks a required property as nullable when its declared type is an open generic type parameter | open | gprossliner | <https://github.com/dotnet/aspnetcore/issues/68973> |
| Issue | #68971 | Blazor.start silently ignores unknown or misspelled startup options | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/68971> |
| Issue | #68970 | Perf regression: antiforgery-noop | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68970> |
| Issue | #66134 | error BLAZOR106: The JS module file 'C:\Projects\MyApp\MyApp.Mvc\wwwroot\_content\Microsoft.AspNetCore.Components.QuickGrid\QuickGrid.razor.js' ERROR | closed | argelj289 | <https://github.com/dotnet/aspnetcore/issues/66134> |
| Issue | #67892 | Startup Project reset on restarting Visual Studio | closed | silentdiverchris | <https://github.com/dotnet/aspnetcore/issues/67892> |
| Issue | #65993 | InteractiveAuto WebAssembly fails under FallbackPolicy RequireAuthenticatedUser | closed | alexaka1 | <https://github.com/dotnet/aspnetcore/issues/65993> |
| Issue | #68916 | CacheView does not apply to HTTP HEAD requests | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68916> |
| Issue | #67669 | Blazor Identity LoginWith2fa "Remember this machine" checkbox label has a for that matches no element | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67669> |
| Issue | #67614 | Accessibility: scaffolded Identity validation summary produces an invalid ul with role=alert | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67614> |
