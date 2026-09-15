# dotnet/aspnetcore

対象期間: 2026-09-14 03:34:25 〜 2026-09-15 00:08:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 15 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 10 |
| クローズ Issue             | 17 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69277](https://github.com/dotnet/aspnetcore/pull/69277) — [Identity] Use ordinal equality for external login keys （PR / open / javiercn）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。
- **⚠ セキュリティ** [#65369](https://github.com/dotnet/aspnetcore/pull/65369) — feat(hosting): add url.query redaction for telemetry sensitive parameter （PR / open / claudiogodoy99）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。

## 主要な変更点

- HTTP/2 の trailer と動的 HPACK テーブルで改行文字を拒否する hardening が 8.0〜11.0 系へ反映されました。
- Identity の外部ログインキー比較を ordinal equality にする変更と、telemetry の `url.query` redact が提案されています。採用時は既存キー照合と診断ログへの影響を確認してください。
- SignalR、Authorization、Minimal APIs、証明書認証、Blazor virtualization でも不具合修正と改善が継続しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69268 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69268> |
| PR | #69144 | [DirectTLS] [release/11.0] exclude experimental transport from release 11 | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69144> |
| PR | #69255 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69255> |
| PR | #69252 | [release/9.0] Scope sections E2E assertions to mounted app | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69252> |
| PR | #69253 | [release/8.0] Scope sections E2E assertions to mounted app | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69253> |
| PR | #69247 | [release/11.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69247> |
| PR | #69293 | [release/11.0] Add AggressiveOptimization to key long-running async methods | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69293> |
| PR | #69250 | [release/8.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69250> |
| PR | #69249 | [release/9.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69249> |
| PR | #69248 | [release/10.0] Fix: hardening http2 to refuse newline chars on trailers and dynamic HPACK table | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69248> |
| PR | #69287 | Add AggressiveOptimization to key long-running async methods | merged | jakobbotsch | <https://github.com/dotnet/aspnetcore/pull/69287> |
| PR | #69281 | Bump microsoft.dotnet.helix.jobmonitor from 11.0.0-beta.26453.108 to 11.0.0-beta.26457.6 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69281> |
| PR | #69271 | Unquarantine passing `AnchorMode_Start_LargePrependAtTop_StillShowsNewItems` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69271> |
| PR | #69263 | [test-quarantine] Unquarantine ServerVirtualizationTest.AnchorMode_End_AppendAfterLeavingBottom_DoesNotReengage | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69263> |
| PR | #69267 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69267> |
| PR | #69201 | Add review candidate groups to PR attention queue | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69201> |
| PR | #69294 | [release/10.0] Fix unbounded request decompression on IIS out-of-process (MaxRequestBodySize) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69294> |
| PR | #69296 | [release/9.0] Fix unbounded request decompression on IIS out-of-process (MaxRequestBodySize) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69296> |
| PR | #69295 | [release/8.0] Fix unbounded request decompression on IIS out-of-process (MaxRequestBodySize) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69295> |
| PR | #69236 | [Authorization] Make middleware marker endpoint-specific | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/69236> |
| PR | #69299 | Support XDG Firefox NSS databases in dev-certs | open | danegsta | <https://github.com/dotnet/aspnetcore/pull/69299> |
| PR | #69298 | [pr-attention-pulse] Add deterministic PR attention dashboard | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69298> |
| PR | #69275 | [Minimal APIs] Honor inherited service metadata for AsParameters | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69275> |
| PR | #69276 | [CORS] Fix stale policy state across pipeline re-execution | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69276> |
| PR | #69277 | [Identity] Use ordinal equality for external login keys | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69277> |
| PR | #69288 | Fix Virtualize user scroll during pending `ScrollToItemAsync` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69288> |
| PR | #69292 | Add OpenAPI architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69292> |
| PR | #69279 | [SignalR] Bind connection tokens to their endpoint mapping | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69279> |
| PR | #69286 | Fix Windows quarantined template test environment. | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69286> |
| PR | #69272 | Fix Components.AI package dependency | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/69272> |
| PR | #69280 | Fix certificate auth cache key corrupted by reentrant scheme calls | open | Selahattinozdmr | <https://github.com/dotnet/aspnetcore/pull/69280> |
| PR | #69274 | [Authorization] Replay automatic authorization after implicit rerouting | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69274> |
| PR | #69278 | [Kestrel] Warn when HTTP/3 certificate trust lacks validation | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69278> |
| PR | #69269 | [release/11.0] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69269> |
| Issue | #69297 | Perf improvement: fortunes, json, kestrel-hostheader-mismatch | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69297> |
| Issue | #69285 | [SignalR] Unknown message type wedges the connection when MaximumReceiveMessageSize is set (the default) | open | madhu873 | <https://github.com/dotnet/aspnetcore/issues/69285> |
| Issue | #69289 | Quarantine <FAILING_TEST_NAME> | closed | bgln1995 | <https://github.com/dotnet/aspnetcore/issues/69289> |
| Issue | #69291 | Boss money revolution update my transaction | closed | bgln1995 | <https://github.com/dotnet/aspnetcore/issues/69291> |
| Issue | #69290 | Boss money revolution update my transaction | closed | bgln1995 | <https://github.com/dotnet/aspnetcore/issues/69290> |
| Issue | #69284 | [SignalR] Client-result invocation IDs are a predictable process-wide counter, and the return-type lookup is not connection-scoped | open | madhu873 | <https://github.com/dotnet/aspnetcore/issues/69284> |
| Issue | #69283 | [SignalR] Negative SequenceMessage.SequenceId permanently silences a connection | open | madhu873 | <https://github.com/dotnet/aspnetcore/issues/69283> |
| Issue | #69282 | Define middleware state responsibilities during endpoint rerouting and re-execution | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69282> |
| Issue | #69270 | Blazor Server Native AOT publish emits detailed trimming and AOT warnings on .NET 11 | open | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69270> |
| Issue | #69273 | Certificate validation cache key is not stable across application event callbacks | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69273> |
| Issue | #69184 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69184> |
| Issue | #69138 | [Validation] Session configuration failures for TempData and session parameters | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69138> |
| Issue | #69119 | [Validation] Caching an expensive page section | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69119> |
| Issue | #69105 | [Validation] IJSObjectReference.DisposeAsync suppresses JSDisconnectedException | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69105> |
| Issue | #68820 | [Validation] InputFile OnChange when the user cancels the file picker | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68820> |
| Issue | #68541 | [Validation] Rendering MathML in Blazor components | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68541> |
| Issue | #68536 | [Validation] Empty nullable TimeSpan, Guid, Int128, UInt128 and Half form fields | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68536> |
| Issue | #68526 | [Validation] Browser configuration reaching WebAssembly started by a navigation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68526> |
| Issue | #68482 | [Validation] Showing content per environment with EnvironmentView | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68482> |
| Issue | #68811 | [Validation] BasePath when one deployment answers on several path prefixes | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68811> |
| Issue | #68728 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.VirtualizationTest.AnchorMode_Start_LargePrependAtTop_StillShowsNewItem
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68728> |
| Issue | #66139 | Quarantine ServerVirtualizationTest.DynamicContent_PrependItemsWhileScrolledToMiddle_VisibleItemsStayInPlace | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66139> |
| Issue | #68854 | Quarantine ServerVirtualizationTest.AnchorMode_WindowScroll_End_PrependAtTop_ViewportStaysStable | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68854> |
| Issue | #66970 | Quarantine ServerVirtualizationTest.AnchorMode_End_AppendAfterLeavingBottom_DoesNotReengage flaky test | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66970> |
