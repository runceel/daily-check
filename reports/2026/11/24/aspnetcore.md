# dotnet/aspnetcore

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 31 |
| クローズ (未マージ) PR     | 24 |
| 新規 PR (オープン中)       | 37 |
| 新規 Issue                 | 32 |
| クローズ Issue             | 17 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- マージ済み変更は 31 件。Blazor のホバースクロール、値型キャプチャ、サーバーコンポーネント診断、回線永続化など、複数の不具合修正が含まれています。
- Blazor WebAssembly の起動リソース再試行やルートコンポーネントの遅延読み込み、Identity リダイレクト処理など、アプリ起動と認証周辺の堅牢性を高めるPRが進行中です。
- OpenAPI では、変換処理を nullable struct のメンバーにも適用し、nullable オブジェクトのプロパティを保持する修正が提案されています。
- Kestrel と HTTP/2 周辺では、無限タイムアウトの期限切れ防止、ストリーム制限時のドレイン、リクエストヘッダー検証などの安定性改善がマージまたはレビュー中です。
- Virtualize と QuickGrid、Rendering、Static Files など UI・配信基盤でも、スクロールやプレースホルダー、If-* ヘッダーの比較に関する不具合修正が継続しています。
- Issue 側では、Blazor の Identity オープンリダイレクト懸念や HTTP/3・YARP、キャッシュ待機、キャンセル伝播など運用上の問題が報告されており、次回に解決状況を確認します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70792 | Switch hosted PR review to GPT-6.2 Sol | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70792> |
| PR | #70761 | Add offline, code-only replay inputs for review-pull-request evaluation | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70761> |
| PR | #69915 | Clarify PR Attention Pulse publication and omission counts | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69915> |
| PR | #70785 | [test-quarantine] Re-quarantine VirtualizationTest.InitialIndex_RetainsTargetWhenPreviousItemExpandsThenHomeEndTakeOver | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70785> |
| PR | #70737 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70737> |
| PR | #70742 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70742> |
| PR | #70543 | [release/10.0] Build Site Extension XDT helper as AnyCPU | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70543> |
| PR | #70544 | [release/11.0] Build Site Extension XDT helper as AnyCPU | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70544> |
| PR | #70748 | [main] (deps): Bump src/submodules/MessagePack-CSharp from `be938cd` to `8dafb0f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70748> |
| PR | #70751 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from ffc98fd0de10a312712802f9b6b43da9326781fc to c27ac90fa251c0460888a432a4fb41f22643a64f | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70751> |
| PR | #70750 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from ffc98fd0de10a312712802f9b6b43da9326781fc to c27ac90fa251c0460888a432a4fb41f22643a64f | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70750> |
| PR | #70668 | Modernize process management in tests and non-shipping infrastructure | merged | adamsitnik | <https://github.com/dotnet/aspnetcore/pull/70668> |
| PR | #70669 | Modernize product process management APIs | merged | adamsitnik | <https://github.com/dotnet/aspnetcore/pull/70669> |
| PR | #70658 | Fix excessive wheel scrolling over hovered rows in Virtualize | merged | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/70658> |
| PR | #70720 | [test-quarantine] Re-quarantine Http2ConnectionTests.RequestHeaderStringReuse_MultipleStreams_KnownHeaderReused | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70720> |
| PR | #70719 | [test-quarantine] Re-quarantine Http3RequestTests.ConnectionLifetimeNotificationFeature_RequestClose_ConnectionEnds | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70719> |
| PR | #70739 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70739> |
| PR | #69752 | Include parameter default value in RDG endpoint comparison | merged | AnsElgyarDev | <https://github.com/dotnet/aspnetcore/pull/69752> |
| PR | #70531 | [Blazor] Dispose retention CancellationTokenSource when circuit persistence is rejected at capacity | merged | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/70531> |
| PR | #70429 | Fix captured value-type index formatting in Blazor forms | merged | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70429> |
| PR | #69693 | Improve diagnostics for Interactive Server component activation failures caused by missing DI services | merged | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69693> |
| PR | #70667 | [release/11.0] Fix race in ModelMetadata.GetHashCode | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70667> |
| PR | #70035 | Don't expire infinite Kestrel timeouts on the next heartbeat | merged | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/70035> |
| PR | #70278 | Stabilize HTTP/2 client reset test | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70278> |
| PR | #70628 | Keep discarded review candidates out of inline findings | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70628> |
| PR | #70733 | Remove 2.3 packaging section from shiproom template | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70733> |
| PR | #70715 | Update Web dependency version | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70715> |
| PR | #70708 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70708> |
| PR | #70686 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70686> |
| PR | #70723 | [release/10.0] [test-quarantine] Re-quarantine ServerEventTest.EventDuringBatchRendering_CanTriggerDOMEvents | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70723> |
| PR | #70710 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70710> |
| PR | #70773 | [release/9.0] Update dependencies from dotnet/arcade | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70773> |
| PR | #70778 | [release/9.0] Fix race condition in EventTest.PreventDefault_DoNotApplyByDefault | closed | maraf | <https://github.com/dotnet/aspnetcore/pull/70778> |
| PR | #70683 | Add scoped Components code-review checks | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70683> |
| PR | #70757 | Publish no-findings review summary when all review candidates are discarded | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70757> |
| PR | #70754 | Preserve nullable object properties in transformer-generated OpenAPI schemas | closed | XmmShp | <https://github.com/dotnet/aspnetcore/pull/70754> |
| PR | #70299 | Fix @OnClick:preventDefault not being respected by Blazor enhanced navigation  | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70299> |
| PR | #68789 | Throw clear error when invoking async JSInvokable method synchronously | closed | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68789> |
| PR | #65880 | Throw meaningful exception when async JSInvokable method is called synchronously from JS | closed | iamcymentho | <https://github.com/dotnet/aspnetcore/pull/65880> |
| PR | #68790 | Improve ParameterView cast exception to name the parameter and types | closed | SergioAlmeida29 | <https://github.com/dotnet/aspnetcore/pull/68790> |
| PR | #67452 | Fix 67285 parameter view cast message | closed | dx3mirror | <https://github.com/dotnet/aspnetcore/pull/67452> |
| PR | #66921 | [Blazor] Add blob() to the JS DotNetStreamReference | closed | EduardF1 | <https://github.com/dotnet/aspnetcore/pull/66921> |
| PR | #66679 | [#61826] Add blob() method to DotNetStreamReference | closed | andersabjorn | <https://github.com/dotnet/aspnetcore/pull/66679> |
| PR | #67970 | Fix rendering of HTML enumerated boolean attributes (draggable, spellcheck, contenteditable) | closed | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/67970> |
| PR | #67631 | Add BlurAsync API for ElementReference | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67631> |
| PR | #66999 | Add CellClass support to PropertyColumn and TemplateColumn in QuickGrid | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/66999> |
| PR | #68035 | Replace `WebEncoders.Base64UrlDecode` with `Base64Url.Decode` in Antiforgery | closed | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68035> |
| PR | #67019 | 1030637: Improved InputDateType Test Coverage in Blazor  | closed | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/67019> |
| PR | #67234 | Improve error message for malformed component marker during Blazor hydration | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67234> |
| PR | #69721 | Handle direct navigation to the authentication login callback | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69721> |
| PR | #70734 | Normalize decoded backslashes in request paths | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70734> |
| PR | #70600 | Keep infinite Kestrel timeouts from overflowing their deadlines | closed | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70600> |
| PR | #70721 | [test-quarantine] Re-quarantine AddValidationIntegrationTest.FormWithNestedValidation_Works | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70721> |
| PR | #70722 | Restore Components.AI project reference | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/70722> |
| PR | #70666 | [release/10.0] Fix race in ModelMetadata.GetHashCode | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70666> |
| PR | #70749 | [main] (deps): Bump src/submodules/googletest from `845e54d` to `a46a601` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70749> |
| PR | #70796 | Harden identity redirect handling in Blazor template | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/70796> |
| PR | #70799 | [Blazor] Enable WebAssembly boot resource retries by default | open | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/70799> |
| PR | #70788 | Honor cancellation for OutputCache waiters | open | mariam-abdulla | <https://github.com/dotnet/aspnetcore/pull/70788> |
| PR | #70794 | Run OpenAPI schema transformers for the members of nullable structs | open | jeremy-morren | <https://github.com/dotnet/aspnetcore/pull/70794> |
| PR | #70772 | [main] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70772> |
| PR | #70762 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70762> |
| PR | #70795 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70795> |
| PR | #70790 | Forward request cancellation for non-UTF-8 JSON output | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70790> |
| PR | #70747 | [release/11.0] Fix excessive wheel scrolling over hovered rows in Virtualize | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70747> |
| PR | #70774 | [release/11.0] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70774> |
| PR | #70780 | Fix RDG delegate generation for params, optional parameters, and named delegates | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/70780> |
| PR | #70786 | [test-quarantine] Unquarantine BlazorWebJsInitializersTest.InitializersRunsClassicInitializersWhenEnabled | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70786> |
| PR | #70781 | Fix lazy-loaded root component resolution in Blazor WebAssembly | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/70781> |
| PR | #70779 | Handle malformed codes in Identity account links | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/70779> |
| PR | #70740 | Fix input binding inside open Shadow DOM roots | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/70740> |
| PR | #70744 | Stabilize the Blazor circuit reconnect test | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/70744> |
| PR | #70713 | Stabilize CookieStore_SharesPendingAcquisitionBetweenCallers | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/70713> |
| PR | #70768 | [Validation] Prefer JsonConstructor when selecting record constructors | open | pradeep-ramola | <https://github.com/dotnet/aspnetcore/pull/70768> |
| PR | #70765 | Fix HTTP/2 draining at the tracked stream limit | open | abhisheksinghbaghel | <https://github.com/dotnet/aspnetcore/pull/70765> |
| PR | #70766 | [DO NOT MERGE] Components E2E Ubuntu infrastructure control | open | richlander | <https://github.com/dotnet/aspnetcore/pull/70766> |
| PR | #70764 | [SignalR] Include consumer Proguard and R8 rules in Java client | open | ghouseahmed226-debug | <https://github.com/dotnet/aspnetcore/pull/70764> |
| PR | #70760 | Reuse equivalent routing DFA subtrees | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/70760> |
| PR | #70759 | Validate Kestrel request header names | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70759> |
| PR | #70755 | Preserve nullable object properties in transformer-generated OpenAPI schemas | open | XmmShp | <https://github.com/dotnet/aspnetcore/pull/70755> |
| PR | #70746 | Fix RDG grouping for mixed MapFallback overloads | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/70746> |
| PR | #70725 | [test-quarantine] Fix the window-scroll prepend E2E test | open | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/70725> |
| PR | #70741 | Fix QuickGrid placeholders remaining after text resize | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/70741> |
| PR | #70711 | Throw for mismatched render modes in named sections | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70711> |
| PR | #70745 | [release/11.0] BL0014 NullReferenceException when array values are passed to attributes after @for loops | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70745> |
| PR | #70743 | Fix stylesheet flash during HeadContent replacement | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/70743> |
| PR | #70738 | Format current value as JSON in JsonPatch TryTest error message | open | flair8 | <https://github.com/dotnet/aspnetcore/pull/70738> |
| PR | #70735 | Gate Linux x64 native tools on the runtime ABI baseline | open | richlander | <https://github.com/dotnet/aspnetcore/pull/70735> |
| PR | #70718 | Fix MEV cross-assembly validation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70718> |
| PR | #70714 | Remove Microsoft.dotnet-openapi tool | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/70714> |
| PR | #70709 | Add camelCase callback names to SignalR TS client | open | dzdzdzd123 | <https://github.com/dotnet/aspnetcore/pull/70709> |
| PR | #70707 | Skip lock and flush for empty HTTP/3 DATA frames | open | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/70707> |
| Issue | #70767 | Track Components E2E portability across newer Linux images | open | richlander | <https://github.com/dotnet/aspnetcore/issues/70767> |
| Issue | #70798 | .NET 11: HTTP/3 fails with YARP SNI configuration | open | JeepNL | <https://github.com/dotnet/aspnetcore/issues/70798> |
| Issue | #70752 | Honor cancellation for OutputCache waiters | open | mariam-abdulla | <https://github.com/dotnet/aspnetcore/issues/70752> |
| Issue | #70797 | Open redirect possible in Blazor template `IdentityRedirectManager.RedirectTo` | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70797> |
| Issue | #70793 | OpenAPI: schema transformers aren't called for the members of a nullable struct | open | jeremy-morren | <https://github.com/dotnet/aspnetcore/issues/70793> |
| Issue | #70791 | CacheView: async parent initialization can leave cache fills pending and hang subsequent requests | open | jsneedles | <https://github.com/dotnet/aspnetcore/issues/70791> |
| Issue | #70789 | SystemTextJsonOutputFormatter should forward cancellation token in the utf16 path | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70789> |
| Issue | #70777 | [WebToolsE2E][ARM64] EF Core 10620 warnings appear after registering an account in .NET 11 Blazor Web App | open | v-korosales | <https://github.com/dotnet/aspnetcore/issues/70777> |
| Issue | #70712 | [Blazor] Support strongly typed parameters on RenderFragment templates | open | stsrki | <https://github.com/dotnet/aspnetcore/issues/70712> |
| Issue | #70787 | [Feature Request] Allow NuGet Package Manager to Filter Updates by Target .NET Version | open | MaxAllan-Smith | <https://github.com/dotnet/aspnetcore/issues/70787> |
| Issue | #70775 | Design proposal: QuickGrid column options customization and active filter indicator | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/70775> |
| Issue | #70776 | blazor hosted template | closed | mammadkoma | <https://github.com/dotnet/aspnetcore/issues/70776> |
| Issue | #70783 | [blazor] Sections: support opt-in aggregation of section content | open | maraf | <https://github.com/dotnet/aspnetcore/issues/70783> |
| Issue | #70782 | [blazor] Sections: support fallback content on SectionOutlet | open | maraf | <https://github.com/dotnet/aspnetcore/issues/70782> |
| Issue | #70784 | [blazor] Sections: expose content presence and support outlet-side wrappers | open | maraf | <https://github.com/dotnet/aspnetcore/issues/70784> |
| Issue | #70736 | [Blazor] Server: `Blazor.start()` gives no signal when the first circuit start fails | open | vismacristianflorea | <https://github.com/dotnet/aspnetcore/issues/70736> |
| Issue | #70727 | [Blazor] Agent benchmark on a realistic Blazor app and framework comparison | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70727> |
| Issue | #70756 | Blazor WebAssembly- Hot Reload does not terminate after debug session | open | mguerrieri-tortx | <https://github.com/dotnet/aspnetcore/issues/70756> |
| Issue | #70770 | Static files and file results don't ignore If-Modified-Since when If-None-Match is present (or If-Unmodified-Since when If-Match is present) | open | Manish-1kumar | <https://github.com/dotnet/aspnetcore/issues/70770> |
| Issue | #70769 | UseStaticFiles uses strong comparison for If-None-Match, and MapStaticAssets uses weak comparison for If-Match | open | Manish-1kumar | <https://github.com/dotnet/aspnetcore/issues/70769> |
| Issue | #70763 | ASP.Net 11 OpenAPI 3.2 swagger page throws `error:0A000416:SSL routines::ssl/tls alert certificate unknown` | open | khteh | <https://github.com/dotnet/aspnetcore/issues/70763> |
| Issue | #70758 | JSON output formatters label the response `charset=utf-16` but write UTF-16LE without a BOM, so a conforming client decodes it as big-endian | open | carlos-ireckonu | <https://github.com/dotnet/aspnetcore/issues/70758> |
| Issue | #70753 | OpenAPI: GetOrCreateSchemaAsync drops nullability of object properties in transformers | open | XmmShp | <https://github.com/dotnet/aspnetcore/issues/70753> |
| Issue | #70724 | Support caching HTTP QUERY requests in OutputCache | open | marcominerva | <https://github.com/dotnet/aspnetcore/issues/70724> |
| Issue | #70732 | [Blazor] Prototype agent-generated UI with a build-time component catalog | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70732> |
| Issue | #70726 | [Blazor] Agent benchmark from merged Blazor pull requests and model comparison | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70726> |
| Issue | #70731 | [Blazor] Add Blazor tasks to public agent benchmarks | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70731> |
| Issue | #70730 | [Blazor] Blazor in Web-Bench | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70730> |
| Issue | #70729 | [Blazor] Blazor compared with other UI frameworks | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70729> |
| Issue | #70728 | [Blazor] Model comparison on public SWE benchmarks | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70728> |
| Issue | #70717 | HTTP/2 DATA frame padding is credited to flow control but never debited | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70717> |
| Issue | #70716 | Harden `HtmlDirectoryFormatter` breadcrumb generation for long paths with `\` aliases | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70716> |
| Issue | #65291 | Blazor WebAssembly fails to hydrate when "build --no-restore" | closed | gusarov | <https://github.com/dotnet/aspnetcore/issues/65291> |
| Issue | #53454 | aspnetcore-browser-refresh injection doesn't respect path prefix | closed | ProTip | <https://github.com/dotnet/aspnetcore/issues/53454> |
| Issue | #52598 | Blank page and no error when injecting undefined service in InteractiveServer | closed | kevingolding2001 | <https://github.com/dotnet/aspnetcore/issues/52598> |
| Issue | #70418 | [Blazor] DefaultInMemoryCircuitPersistenceProvider never disposes the retention CancellationTokenSource when a persist is rejected at capacity | closed | 8e88no12-creator | <https://github.com/dotnet/aspnetcore/issues/70418> |
| Issue | #70406 | FieldIdentifier.Create throws ArgumentException when an indexer argument is a captured long, Guid or other non-int value type | closed | khuongntrd | <https://github.com/dotnet/aspnetcore/issues/70406> |
| Issue | #54510 | Unclear error message when nesting Counter Control inside html paragraph tags | closed | htmlsplash | <https://github.com/dotnet/aspnetcore/issues/54510> |
| Issue | #70541 | Virtualize regression in .NET 11: wheel scrolling runs ahead by whole windows in a div scroller when hovering a row changes its layout | closed | tombrewer-onwave | <https://github.com/dotnet/aspnetcore/issues/70541> |
| Issue | #66203 | ANCM ignores 10.0.105 Site Extension, falls back to incompatible 10.0.103 native runtime (SDK 10.0.201) | closed | RoChess | <https://github.com/dotnet/aspnetcore/issues/66203> |
| Issue | #66665 | Normalize backslashes in PathDecoder | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66665> |
| Issue | #69675 | Request Delegate Generator: handlers that differ only by a parameter's default value share one interceptor, InvalidCastException at startup | closed | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69675> |
| Issue | #69692 | HTTP/1.1 infinite KeepAliveTimeout and RequestHeadersTimeout expire on the next heartbeat due to deadline overflow | closed | ramazan199 | <https://github.com/dotnet/aspnetcore/issues/69692> |
| Issue | #70546 | [review-pull-request] Stop publishing contradicted [DISCARDED] candidates as inline GitHub PR review comments | closed | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70546> |
| Issue | #69309 | Restore Components.AI references for .NET 12 Preview 1 | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/69309> |
