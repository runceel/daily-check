# dotnet/aspnetcore

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 24 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 52 |
| 新規 Issue                 | 23 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#70566](https://github.com/dotnet/aspnetcore/issues/70566) — Microsoft.AspNetCore.Http v2.3.14 is dependent on v2.3.13 of other vulnerable Microsoft.AspNetCore packages （Issue / open / drieseng）
ASP.NET Core 2.3.14 の依存パッケージに脆弱な 2.3.13 が含まれるとの報告です。該当バージョンを使う利用者は依存関係と公式の修正版情報を確認してください。
- **⚠ セキュリティ** [#70453](https://github.com/dotnet/aspnetcore/pull/70453) — Bound Blazor client validation caching （PR / merged / rbhanda）
Blazor のクライアント検証キャッシュに上限を設ける修正です。該当する ASP.NET Core を利用するアプリは、この修正を含む更新版への更新を確認してください。
- **⚠ セキュリティ** [#70452](https://github.com/dotnet/aspnetcore/pull/70452) — Avoid simple requests for SignalR authentication refresh （PR / merged / rbhanda）
SignalR の認証更新で単純リクエストを避ける修正です。認証 refresh を使うアプリは更新版を適用し、認証更新フローを検証してください。
- **⚠ セキュリティ** [#70451](https://github.com/dotnet/aspnetcore/pull/70451) — Respect case in SignalR Redis group subscriptions （PR / merged / rbhanda）
SignalR Redis の group subscription で大文字・小文字を区別する修正です。group 名の大小文字を使い分けるアプリは、更新後の購読・配信先を確認してください。
- **⚠ セキュリティ** [#70450](https://github.com/dotnet/aspnetcore/pull/70450) — Bind SignalR connections to negotiated identity （PR / merged / rbhanda）
SignalR 接続を negotiate 時の identity に結び付ける修正です。認証状態が接続後に変わる構成を含め、更新版で接続・認証動作を確認してください。
- **⚠ セキュリティ** [#70449](https://github.com/dotnet/aspnetcore/pull/70449) — [main] Avoid repeated validation error copies (CVE-2026-118749) （PR / merged / rbhanda）
CVE-2026-118749 に対応し、検証エラーの重複コピーを抑える修正です。影響を受ける ASP.NET Core 利用者は修正を含むリリースへ更新してください。
- **⚠ セキュリティ** [#70448](https://github.com/dotnet/aspnetcore/pull/70448) — [main] Protect named pipe policy during recovery (CVE-2026-114157) （PR / merged / rbhanda）
CVE-2026-114157 に対応し、回復処理中に named pipe の policy を保護する修正です。named pipe を利用するアプリは該当する修正版への更新を確認してください。
- **⚠ セキュリティ** [#70447](https://github.com/dotnet/aspnetcore/pull/70447) — [main] Restore slash-only PathString boundaries (CVE-2026-114156) （PR / merged / rbhanda）
PathString の境界判定を修正する CVE-2026-114156 対応です。パス境界を使った routing / middleware の判定を含むアプリは、修正版の適用を確認してください。
- **⚠ セキュリティ** [#70446](https://github.com/dotnet/aspnetcore/pull/70446) — [main] Escape semicolons in derived cookie paths (CVE-2026-109476) （PR / merged / rbhanda）
Cookie path 生成時にセミコロンを escape する CVE-2026-109476 対応です。cookie path を使用するアプリは修正版へ更新し、cookie の path 属性を確認してください。
- **⚠ セキュリティ** [#70445](https://github.com/dotnet/aspnetcore/pull/70445) — [main] Clear HTTP logging buffer tail on reset (CVE-2026-114150) （PR / merged / rbhanda）
HTTP logging buffer の reset 時に末尾を消去する CVE-2026-114150 対応です。HTTP logging を利用するアプリは修正を含む更新版を適用してください。
- **⚠ セキュリティ** [#70444](https://github.com/dotnet/aspnetcore/pull/70444) — [main] Enforce multipart header line count limits (CVE-2026-114149) （PR / merged / rbhanda）
multipart header の行数上限を強制する CVE-2026-114149 対応です。multipart request を処理するアプリは修正版への更新を確認してください。

## 主要な変更点

- セキュリティ修正が複数マージされました。SignalR の認証更新・接続 identity・Redis group の大小文字処理に加え、Blazor client validation cache に上限を設けています。
- CVE-2026-118749、CVE-2026-114157、CVE-2026-114156、CVE-2026-109476、CVE-2026-114150、CVE-2026-114149 に対する修正が main に入りました。対象アプリは各修正を含むリリースの適用状況を確認してください。
- Blazor では QuickGrid のキーボード操作、FocusOnNavigate の focus 維持、Web Worker の CoreCLR 初期化などの改善がマージされました。
- ASP.NET Core 2.3.14 の依存パッケージに関する未解決の脆弱性報告 (#70566) があり、旧バージョン利用者は依存関係を確認する必要があります。
- Linux build / Helix 環境では C.UTF-8 と Azure Linux の更新が進んでいます。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70585 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70585> |
| PR | #70560 | Use C.UTF-8 for Linux build jobs | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70560> |
| PR | #70579 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70579> |
| PR | #70557 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70557> |
| PR | #70569 | [test-quarantine] Quarantine BlazorWebTemplate_RecoveryEmailsUseStoredAddressAndDoNotSendWithoutIt | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70569> |
| PR | #70433 | [release/11.0] Fix contrast of Identity instructional text | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70433> |
| PR | #70420 | [release/11.0] Add keyboard navigation and row activation to QuickGrid | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70420> |
| PR | #70309 | [release/11.0] Use h1 heading in Blazor NotFound.razor template page | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70309> |
| PR | #70537 | [release/11.0] Preserve FocusOnNavigate focus when interactive component replaces prerendered DOM | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70537> |
| PR | #70570 | [main] (deps): Bump src/submodules/googletest from `2499058` to `845e54d` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70570> |
| PR | #70571 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 8231dc4e0c601ba6f23de52772ec05634517b03b to ffc98fd0de10a312712802f9b6b43da9326781fc | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70571> |
| PR | #70572 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 8231dc4e0c601ba6f23de52772ec05634517b03b to ffc98fd0de10a312712802f9b6b43da9326781fc | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70572> |
| PR | #70201 | Avoid parsing common Content-Type values when resolving response encoding | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70201> |
| PR | #70520 | Preserve WebApplicationFactory Kestrel port precedence | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70520> |
| PR | #70519 | Build Site Extension XDT helper as AnyCPU | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70519> |
| PR | #70308 | Preserve FocusOnNavigate focus when interactive component replaces prerendered DOM | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70308> |
| PR | #70504 | [blazor] Fix Web Worker initialization on CoreCLR | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70504> |
| PR | #70512 | [Infrastructure] Updated npm packages 2026-11-11 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70512> |
| PR | #70522 | Use Azure Linux 4 for Linux Helix container hosts | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70522> |
| PR | #70549 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70549> |
| PR | #70521 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70521> |
| PR | #70542 | [release/10.0] Disable SDK certificate generation in macOS Helix | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70542> |
| PR | #70535 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70535> |
| PR | #70523 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70523> |
| PR | #70613 | Move source-build container to Azure Linux 4 | closed | richlander | <https://github.com/dotnet/aspnetcore/pull/70613> |
| PR | #67551 | feat: Add EditForm.SubmitAsync for programmatic form submission | closed | JayArrowz | <https://github.com/dotnet/aspnetcore/pull/67551> |
| PR | #70527 | Backport SignalR auth-refresh and Kestrel fragment hotfixes to release/11.0 | closed | springmin | <https://github.com/dotnet/aspnetcore/pull/70527> |
| PR | #70116 | Fix missing binding callback validation with CaptureUnmatchedValues | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/70116> |
| PR | #70562 | Add the Screen Orientation API to Microsoft.AspNetCore.Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70562> |
| PR | #70532 | Fix ambiguous Blazor framework endpoints when mapping multiple roots | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70532> |
| PR | #70531 | [Blazor] Dispose retention CancellationTokenSource when circuit persistence is rejected at capacity | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/70531> |
| PR | #70558 | Cross-build Linux x64 against the sysroot; move default Linux agents to Azure Linux 3 | open | richlander | <https://github.com/dotnet/aspnetcore/pull/70558> |
| PR | #70614 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70614> |
| PR | #70611 | Decode percent-encoded form bytes with the request charset | open | seragAhmed | <https://github.com/dotnet/aspnetcore/pull/70611> |
| PR | #70610 | Catch and log exceptions from HttpSys OnCompleted callbacks | open | seragAhmed | <https://github.com/dotnet/aspnetcore/pull/70610> |
| PR | #70581 | Fence frozen-bundle review skill off from CCR and adapt domain skills for source-only PR review | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70581> |
| PR | #70587 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70587> |
| PR | #70605 | Skip missing parameter syntax for metadata route handlers | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70605> |
| PR | #70608 | Honor string defaults for explicit query header and route binding | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70608> |
| PR | #70607 | Preserve signed-zero request delegate defaults | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70607> |
| PR | #70606 | Preserve literal single-segment gRPC transcoding variables | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70606> |
| PR | #70602 | Preserve properties replaced by the WS-Federation token event | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70602> |
| PR | #70604 | Persist passkey AAGUIDs in both EF Core stores | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70604> |
| PR | #70603 | Distinguish comma-containing values in query cache keys | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70603> |
| PR | #70601 | Create an independent default WebSocket accept context | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70601> |
| PR | #70600 | Keep infinite Kestrel timeouts from overflowing their deadlines | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70600> |
| PR | #70599 | Reject overflowing HTTP chunk sizes as bad requests | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70599> |
| PR | #70598 | Guard unresolved route usage contexts in the route analyzer | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70598> |
| PR | #70597 | Cancel Redis output-cache garbage collection delays on disposal | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70597> |
| PR | #70596 | Normalize nullable enum defaults before OpenAPI serialization | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70596> |
| PR | #70595 | Stop JSON Patch moves when source removal fails | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70595> |
| PR | #70594 | Report failed persistence from the Identity two-factor API | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70594> |
| PR | #70591 | Normalize unbracketed IPv6 hosts in ToUriComponent | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70591> |
| PR | #70593 | Avoid ASP0022 for method-specific routes beside Map | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70593> |
| PR | #70592 | Include the request base path in tag-helper globbing cache keys | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70592> |
| PR | #70590 | Reacquire UTF-8 writer memory after Flush advances the buffer | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70590> |
| PR | #70589 | Fix nested wildcard host endpoint selection | open | anandt1201 | <https://github.com/dotnet/aspnetcore/pull/70589> |
| PR | #70586 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70586> |
| PR | #70582 | Wait for Kestrel shutdown metric before asserting | open | mmitche | <https://github.com/dotnet/aspnetcore/pull/70582> |
| PR | #70580 | Buffer the locking leader's response in memory before flushing | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70580> |
| PR | #70577 | Add GeneratedCode to the emitted validation template classes | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70577> |
| PR | #70578 | Reject literal fragments in Kestrel request targets | open | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/70578> |
| PR | #70538 | Populate OTel schema URL on ASP.NET Core meters and activity source | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/70538> |
| PR | #70567 | Keep app-set Activity.DisplayName when a route matches | open | sainimal1ba-hue | <https://github.com/dotnet/aspnetcore/pull/70567> |
| PR | #70573 | Fix SignalR invocation cleanup when the invocation ID is already in use | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70573> |
| PR | #70575 | Trim only SP and HTAB after a multipart boundary | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70575> |
| PR | #70526 | Fix Blazor browser option handling | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/70526> |
| PR | #70525 | BL0014 NullReferenceException when array values are passed to attributes after @for loops | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/70525> |
| PR | #70556 | Fix Apache RewriteCond negation for string and integer comparisons | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70556> |
| PR | #70559 | Fix InputFile OnChange exception handling across component disposal | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/70559> |
| PR | #70534 | Fix missing binding callback validation with CaptureUnmatchedValues | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70534> |
| PR | #70530 | Add the online and offline events to Microsoft.AspNetCore.Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70530> |
| PR | #70552 | Remove obsolete HTTP/1 parsing helpers | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70552> |
| PR | #70555 | Add review-pull-request L1 Vally suite | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70555> |
| PR | #70544 | [release/11.0] Build Site Extension XDT helper as AnyCPU | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70544> |
| PR | #70543 | [release/10.0] Build Site Extension XDT helper as AnyCPU | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70543> |
| PR | #70539 | Fix: ResponseCookies Append should all throw | open | amf-fs | <https://github.com/dotnet/aspnetcore/pull/70539> |
| PR | #70536 | [blazor] Sync runtime dotnet.d.ts to Blazor | open | maraf | <https://github.com/dotnet/aspnetcore/pull/70536> |
| PR | #70533 | [blazor] Avoid quadratic MarkupString insertion | open | maraf | <https://github.com/dotnet/aspnetcore/pull/70533> |
| PR | #70528 | Add the Storage API (navigator.storage) to Microsoft.AspNetCore.Components.Platform | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70528> |
| Issue | #70612 | Controller assemblies in a collectible AssemblyLoadContext can never be unloaded: ParameterBindingMethodCache (and PropertyHelper) statically root their model types | open | thomasvanveen | <https://github.com/dotnet/aspnetcore/issues/70612> |
| Issue | #70609 | Blazor support for IC devices | open | ghorner2 | <https://github.com/dotnet/aspnetcore/issues/70609> |
| Issue | #70588 | dotnet-getdocument: make the hardcoded 2-minute process / 1-minute per-document timeouts configurable | open | mkusaka | <https://github.com/dotnet/aspnetcore/issues/70588> |
| Issue | #70584 | OpenAPI document paths ignore RouteOptions.LowercaseUrls for [controller] routes in .NET 11 | open | russcam | <https://github.com/dotnet/aspnetcore/issues/70584> |
| Issue | #70583 | KestrelMetricsTests.Http2Connection_ServerShutdown_Abort intermittently misses shutdown metric | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/70583> |
| Issue | #70546 | [review-pull-request] Stop publishing contradicted [DISCARDED] candidates as inline GitHub PR review comments | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70546> |
| Issue | #70576 | JavaScript SDK files not generating fingerprint placeholders and endpoints in static web asset pipeline | open | UniMichael | <https://github.com/dotnet/aspnetcore/issues/70576> |
| Issue | #70566 | Microsoft.AspNetCore.Http v2.3.14 is dependent on v2.3.13 of other vulnerable Microsoft.AspNetCore packages | open | drieseng | <https://github.com/dotnet/aspnetcore/issues/70566> |
| Issue | #70574 | Validation source generator emits the Validatable*Info template classes without [GeneratedCode] | open | milkshakeuk | <https://github.com/dotnet/aspnetcore/issues/70574> |
| Issue | #70547 | [review-pull-request] Calibrate review-candidate-verifier external/unestablished handling and exclude unestablished DROPs from inline publication | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70547> |
| Issue | #70550 | [Review Agent Failure] Intentional test/sample opt-outs and secondary-failure exception suppression certified as defects | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70550> |
| Issue | #70548 | [review-pull-request] Pass sibling-worker refutations to review-candidate-verifier and validate remedies against in-repo tests (#70497) | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70548> |
| Issue | #70568 | Quarantine BlazorTemplates.Tests.BlazorWebTemplateTest.BlazorWebTemplate_RecoveryEmailsUseStoredAddressAndDoNotSendWithoutIt | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/70568> |
| Issue | #70565 | [Review Agent Failure] Routed guides omit package-specific skills (e.g. port-components-platform-api) and verifier returns intent=n/a when PR body cites a repository skill (#70562) | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70565> |
| Issue | #70540 | Virtualize regression in .NET 11: a list that grows while scrolled jumps towards its end, then ignores scripted scrolls and scrollbar drags | open | tombrewer-onwave | <https://github.com/dotnet/aspnetcore/issues/70540> |
| Issue | #70553 | Virtualize regression in .NET 11: fractional row heights stop the window following the scroll and leave the viewport blank | open | danielchalmers | <https://github.com/dotnet/aspnetcore/issues/70553> |
| Issue | #70563 | Announcing ASP.NET Core in .NET 11 | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/70563> |
| Issue | #70561 | [API Proposal] Add the Screen Orientation API to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/70561> |
| Issue | #70541 | Virtualize regression in .NET 11: wheel scrolling runs ahead by whole windows in a div scroller when hovering a row changes its layout | open | tombrewer-onwave | <https://github.com/dotnet/aspnetcore/issues/70541> |
| Issue | #70554 | Virtualize regression in .NET 11: Home and End typed in a text input jump the list to its first or last item | open | danielchalmers | <https://github.com/dotnet/aspnetcore/issues/70554> |
| Issue | #70551 | [Review Agent Failure] Missing review-thread resolution metadata in feedback.json leads to re-litigating resolved threads | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70551> |
| Issue | #70545 | Enforce stricter boundary checks in MultipartReaderStream | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/70545> |
| Issue | #70529 | [API Proposal] Add the online and offline events to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/70529> |
| Issue | #70508 | Query-component validation (#68320) not backported to release/10.0: HTTP/2 :path query with SP/HTAB/CTL still accepted on .NET 10 LTS | closed | HuyTran2503 | <https://github.com/dotnet/aspnetcore/issues/70508> |
| Issue | #70502 | Re-enable Web Worker template tests after runtime JSExport fix flows | closed | akoeplinger | <https://github.com/dotnet/aspnetcore/issues/70502> |
