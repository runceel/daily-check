# dotnet/aspnetcore

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 26 |
| クローズ (未マージ) PR     | 18 |
| 新規 PR (オープン中)       | 18 |
| 新規 Issue                 | 18 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

- **⚠ 互換性に注意** [dotnet/aspnetcore#70578](https://github.com/dotnet/aspnetcore/pull/70578) — Kestrel が要求ターゲット内のリテラル `#` を拒否する変更がマージ済みです。該当する独自クライアント／プロキシを確認してください。従来動作へ戻す `Microsoft.AspNetCore.Server.Kestrel.AllowFragmentInRequestTarget` AppContext スイッチも用意されています。
- **⚠ HTTP/2 入力検証** [dotnet/aspnetcore#70631](https://github.com/dotnet/aspnetcore/pull/70631) — padding を含む DATA 全体で受信ウィンドウを計上する修正がマージ済みです。HTTP/2 運用者は反映リリースを追跡してください。CVE や公開済み修正版の告知とは区別します。

自動抽出された dotnet/aspnetcore#70175 と dotnet/aspnetcore#69559 は、認証／認可処理の割り当て削減であり、脆弱性修正という分類からは除外しました。

## 主要な変更点

- Kestrel はリテラル `#` の拒否と HTTP/2 padding のフロー制御計上を修正しました。非標準の要求ターゲットを送るクライアントは互換性確認が必要です。
- HTTP/2 ストリーム再利用時の window update と最終書き込みの競合によるハング修正が、10.0／11.0 の両リリースブランチへマージされました（dotnet/aspnetcore#70100、dotnet/aspnetcore#70099）。
- UserValidator、SignalR ヘッダー処理・ストリーム変換、HTTP/3 フレーム再利用、DFA matcher で呼び出しコストや割り当てを抑える変更がマージされています。
- Blazor は hydration 時のタイトル点滅、InputBase の古い検証状態、ErrorBoundary のイベント例外、nullable IParsable の空フォーム値、破棄済み Hybrid renderer の扱いを修正しました。
- RazorComponentResult のパラメーター検証 analyzer と Screen Orientation API の追加もマージ済みです。SignalR TypeScript クライアントの再接続・タイマー・依存関係などの新規 Issue は、報告段階として追跡します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70224 | Reduce per-call overhead in UserValidator | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70224> |
| PR | #70137 | Avoid per-header allocations in SignalR hub protocols | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70137> |
| PR | #70130 | Lazily allocate TemplateInfo visited objects set | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70130> |
| PR | #70118 | Reuse Http3RawFrame across pooled HTTP/3 streams | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70118> |
| PR | #70188 | Cache SignalR stream converter factories instead of reflecting per uploaded stream | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70188> |
| PR | #70614 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70614> |
| PR | #70635 | test-quarantine: use most recent Case B issue and accept earlier verified issues | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70635> |
| PR | #70100 | [release/10.0] Fix HTTP/2 hang on reused streams when a window update races the final write | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70100> |
| PR | #70099 | [release/11.0] Fix HTTP/2 hang on reused streams when a window update races the final write | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70099> |
| PR | #70631 | Fix Kestrel padded DATA flow control accounting | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70631> |
| PR | #70586 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70586> |
| PR | #70587 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70587> |
| PR | #70578 | Reject literal fragments in Kestrel request targets | merged | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/70578> |
| PR | #70138 | Share per-endpoint candidate data when building the DFA matcher | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70138> |
| PR | #70582 | Wait for Kestrel shutdown metric before asserting | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/70582> |
| PR | #70318 | Add review-candidate-verifier Vally suite and evaluation harness | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70318> |
| PR | #68840 | Prevent page title flash during WebAssembly hydration | merged | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/68840> |
| PR | #69706 | [Blazor] Clarify internal JS/.NET compatibility during servicing | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69706> |
| PR | #67617 | Add analyzer for RazorComponentResult parameter validation | merged | dkamburov | <https://github.com/dotnet/aspnetcore/pull/67617> |
| PR | #70581 | Fence frozen-bundle review skill off from CCR and adapt domain skills for source-only PR review | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70581> |
| PR | #70525 | BL0014 NullReferenceException when array values are passed to attributes after @for loops | merged | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/70525> |
| PR | #70304 | [Blazor Hybrid] Guard HandleComponentException after renderer disposal | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/70304> |
| PR | #69957 | Fix ErrorBoundary exception routing for non-component event receivers | merged | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69957> |
| PR | #67406 | Fix InputBase retaining invalid parsing state and stale validation messages after Value change | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/67406> |
| PR | #69994 | Fix empty form values for nullable custom IParsable structs | merged | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69994> |
| PR | #70562 | Add the Screen Orientation API to Microsoft.AspNetCore.Components.Platform | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70562> |
| PR | #70226 | Speed up TOTP validation by reusing the HMAC and input buffer across timesteps | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70226> |
| PR | #70166 | Reduce allocations in output formatter content negotiation | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70166> |
| PR | #70126 | Skip ValidationContext allocation for valid values of built-in DataAnnotations attributes | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70126> |
| PR | #70168 | Avoid rebuilding and redundantly cloning OpenAPI schema trees when resolving references | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70168> |
| PR | #70222 | Reduce UserManager construction cost | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70222> |
| PR | #70199 | Avoid per-request policy list, enumerator and tag set allocations in OutputCacheMiddleware | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70199> |
| PR | #70159 | Reuse work lists in DfaMatcherBuilder.ApplyPolicies | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70159> |
| PR | #70133 | Avoid redundant dictionary lookups when diffing keyed items | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70133> |
| PR | #70179 | Avoid allocating HttpContext.Items in StatusCodePagesMiddleware when unused | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70179> |
| PR | #70164 | Avoid StreamReader allocations in MultipartSection.ReadAsStringAsync | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70164> |
| PR | #70152 | Skip processing lower-priority candidates once a match is found in DfaMatcher | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70152> |
| PR | #70223 | Avoid LINQ and allocations in PasswordValidator | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70223> |
| PR | #69963 | POC: General lazy HTTP/1.1 request-header values | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/69963> |
| PR | #70615 | [release/9.0] Update dependencies from dotnet/arcade | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70615> |
| PR | #70624 | Wait for the shutdown duration metric in the HTTP/2 abort test | closed | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70624> |
| PR | #69769 | Reduce Blazor Server Native AOT publish warnings | closed | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/69769> |
| PR | #69851 | Use circuit JSON resolvers for persistent service state | closed | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69851> |
| PR | #69505 | Prevent multiple browser file uploads from hanging | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/69505> |
| PR | #70618 | Prevent multiple browser file uploads from hanging | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70618> |
| PR | #70617 | Fix Request Delegate Generator handling of negative-zero double and decimal defaults | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/70617> |
| PR | #70639 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70639> |
| PR | #70637 | Use prebuilt Nginx image for Linux platform tests | open | richlander | <https://github.com/dotnet/aspnetcore/pull/70637> |
| PR | #70628 | Keep discarded review candidates out of inline findings | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70628> |
| PR | #70632 | Fail pending JS interop calls when the runtime disconnects | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70632> |
| PR | #70630 | Release the Virtualize scroll source after an anchor restore | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70630> |
| PR | #70634 | Do not publish precompressed RCL assets from Blazor Hybrid apps | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70634> |
| PR | #70629 | Use the declared spacer height for the Virtualize scale factor | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70629> |
| PR | #70633 | Do not run client page initializers in the Blazor Web Worker template | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70633> |
| PR | #70623 | Do not handle Home and End from editable elements in Virtualize | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70623> |
| PR | #70626 | Fix skill-eval result gate ownership and diagnostics | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70626> |
| PR | #70627 | Add problem details to the Native AOT web API template | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70627> |
| PR | #70622 | Do not root collectible types in ParameterBindingMethodCache | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70622> |
| PR | #70620 | Make the dotnet-getdocument timeouts configurable | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70620> |
| PR | #70619 | Apply LowercaseUrls to the OpenAPI route pattern for MVC actions | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70619> |
| PR | #70621 | Snapshot IConnectionEndPointFeature in HttpConnectionDispatcher for LongPolling (#69948) | open | lqkhanh295 | <https://github.com/dotnet/aspnetcore/pull/70621> |
| PR | #70616 | Fix overlapping Blazor Server root-component state restoration | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/70616> |
| Issue | #70640 | Static SSR: ErrorBoundary catching an exception fails the request when the page has a named form | open | israel-dryer | <https://github.com/dotnet/aspnetcore/issues/70640> |
| Issue | #70653 | SignalR TS client: IStreamSubscriber.closed is documented, but the client never sets it | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70653> |
| Issue | #70650 | SignalR TS client: tough-cookie is loaded at run time but is not declared as a dependency | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70650> |
| Issue | #70648 | SignalR TS client: with a binary hub protocol, the handshake response is decoded as Latin-1, not as UTF-8 | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70648> |
| Issue | #70654 | SignalR TS client: the timeout and the abort signal of FetchHttpClient stop at the response headers | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70654> |
| Issue | #70651 | SignalR TS client: after stop() and start(), the Ack timer of the old connection sends on the new connection | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70651> |
| Issue | #70647 | SignalR TS client: send() and invoke() reject with a string, not with an Error | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70647> |
| Issue | #70649 | SignalR TS client: a client method named "constructor" breaks on() and the client results | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70649> |
| Issue | #70652 | SignalR TS client: the check for multiple client results ignores a falsy result | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70652> |
| Issue | #70643 | SignalR TS client: after a failed stateful reconnect, the automatic reconnect connects, but no message goes in or out | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70643> |
| Issue | #70646 | SignalR TS client: the client continues to send an upload stream after the server completes the invocation | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70646> |
| Issue | #70645 | SignalR TS client: a failed Server-Sent Events connect does not close its EventSource | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70645> |
| Issue | #70644 | SignalR TS client: with stateful reconnect, a message in the frame of the handshake response is not counted | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70644> |
| Issue | #70642 | SignalR TS client: an onclose, onreconnecting or onreconnected callback that throws stops the callbacks after it | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70642> |
| Issue | #70641 | SignalR TS client: the second of two adjacent stream arguments is sent as a plain argument | open | mark1russell7 | <https://github.com/dotnet/aspnetcore/issues/70641> |
| Issue | #70638 | Request Delegate Generator: [AsParameters] with service properties adds IAcceptsMetadata to a GET endpoint, so a catch-all endpoint takes the request (404) | open | nymankla | <https://github.com/dotnet/aspnetcore/issues/70638> |
| Issue | #70636 | Discard output staged before a response start when response startup fails | open | elinor-fung | <https://github.com/dotnet/aspnetcore/issues/70636> |
| Issue | #70625 | Minimal API validation returns 500 instead of 400 in the webapiaot template (HttpValidationProblemDetails missing from JSON metadata) | open | marcinborecki | <https://github.com/dotnet/aspnetcore/issues/70625> |
| Issue | #68346 | Blazor Web App (InteractiveWebAssembly): Page title flashes to domain name during hydration | closed | bergy6808 | <https://github.com/dotnet/aspnetcore/issues/68346> |
| Issue | #51923 | Improving type-safety of RazorComponentResult<T> | closed | KennethHoff | <https://github.com/dotnet/aspnetcore/issues/51923> |
| Issue | #70492 | BL0014 analyser (ForLoopIteratorInClosureAnalyzer) throws NullReferenceException (AD0001) when an array value is passed to an attribute after a @for loop | closed | davidnmbond | <https://github.com/dotnet/aspnetcore/issues/70492> |
| Issue | #66322 | [Blazor Hybrid] Consider guarding HandleComponentException when Renderer is Disposed | closed | ScarletKuro | <https://github.com/dotnet/aspnetcore/issues/66322> |
| Issue | #69765 | ErrorBoundary doesn't catch exceptions from event handlers whose receiver isn't a component | closed | danielchalmers | <https://github.com/dotnet/aspnetcore/issues/69765> |
| Issue | #69901 | Blazor static form mapping: an empty field cannot bind `null` to a nullable custom `IParsable<T>` struct | closed | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69901> |
| Issue | #60334 | [Blazor] New parameter value not being reflected when `InputBase`-derived component displays `_incomingValueBeforeParsing` (`_parsingFailed` is `true`) | closed | hakenr | <https://github.com/dotnet/aspnetcore/issues/60334> |
| Issue | #70609 | Blazor support for IC devices | closed | ghorner2 | <https://github.com/dotnet/aspnetcore/issues/70609> |
