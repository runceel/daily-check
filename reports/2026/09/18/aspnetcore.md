# dotnet/aspnetcore

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 19 |
| クローズ (未マージ) PR     | 7 |
| 新規 PR (オープン中)       | 15 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 10 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69323](https://github.com/dotnet/aspnetcore/issues/69323) — Blazor: RendererSynchronizationContext can be left installed on an unrelated thread-pool thread, breaking Dispatcher mutual exclusion （Issue / open / alexyakunin）
  Blazor のカスタム同期コンテキストを使うアプリケーションは、Dispatcher の相互排他が崩れる可能性があるため、UI スレッド依存の処理や非同期レンダリングのテストを確認する必要があります。
- **⚠ 破壊的変更** [#69257](https://github.com/dotnet/aspnetcore/pull/69257) — Drop MVC F# project template support （PR / closed / Copilot）
  F# ベースの MVC テンプレートを使っているチームは、テンプレート自体を置き換えるか、独自のプロジェクト構成に移行する必要があります。

## 主要な変更点

- 主要な注目点は Blazor の Dispatcher 互換性修正と MVC F# テンプレート廃止で、既存アプリのスレッド依存性とテンプレート利用に影響が出ます。
- 併せて `Fetch-Metadata` の CSRF / CORS 信頼設定調整や `null` を許容する union root component parameter の修正が入り、入力バインディングとセキュリティの堅牢化が進んでいます。
- その一方で `Passkey` attestation の重複検証や Docker/Blazor のアセット配信問題など、実運用での回帰や互換性の修正が継続している状態です。
- 週のトーンとしては、破壊的変更の管理と、実環境の CI / デプロイ安定性の両方を見ておく必要がある週でした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69300 | [release/11.0] Fix compiled Razor views in F# MVC template | merged | danroth27 | <https://github.com/dotnet/aspnetcore/pull/69300> |
| PR | #69359 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69359> |
| PR | #69354 | [release/11.0] Remove experimental API from QuickGrid | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69354> |
| PR | #69357 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69357> |
| PR | #69345 | Align Fetch-Metadata CSRF trust with CORS credentials intent | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69345> |
| PR | #69355 | [pr-attention-queue] Guard merge recommendations with current review evidence | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69355> |
| PR | #69338 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69338> |
| PR | #69316 | [release/11.0] Fix support for unions with null values as root component parameters | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69316> |
| PR | #67440 | [Hosting] Avoid allocations for OpenTelemetry | merged | martincostello | <https://github.com/dotnet/aspnetcore/pull/67440> |
| PR | #69335 | [main] (deps): Bump src/submodules/googletest from `d94a732` to `8eff9e3` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69335> |
| PR | #69146 | Add shared contributor guidance and optional PR review skill | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69146> |
| PR | #69064 | Require Selenium for browser-owned Components regressions | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69064> |
| PR | #69350 | Remove experimental API from QuickGrid | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69350> |
| PR | #69298 | [pr-attention-pulse] Add scoped PR attention dashboards | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69298> |
| PR | #67492 | Fix tests that use AppContextSwitch | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67492> |
| PR | #69251 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69251> |
| PR | #68648 | Support passwordless account creation | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68648> |
| PR | #69333 | [release/10.0] (deps): Bump src/submodules/googletest from `49495ea` to `8eff9e3` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69333> |
| PR | #69353 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69353> |
| PR | #69372 | Run Components WASM tests on CoreCLR | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/69372> |
| PR | #69257 | Drop MVC F# project template support | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/69257> |
| PR | #69167 | Run dojo scenarios against AG-UI and direct IChatClient | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69167> |
| PR | #69188 | [test-quarantine] Stabilize the QuickGrid paginator E2E test | closed | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/69188> |
| PR | #68900 | Fix standalone Blazor WASM hot reload in Gateway | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/68900> |
| PR | #68917 |  [DirectTls] Add metrics, logging, and epoll telemetry | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68917> |
| PR | #69173 | [test-quarantine] Fix flakiness in anchor mode large prepend test | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69173> |
| PR | #69371 | Don't run _CreateHelixWorkItem target for excluded projects | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69371> |
| PR | #69367 | Update MessagePack to 2.5.303 | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69367> |
| PR | #69368 | Update MessagePack to 2.5.303 | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69368> |
| PR | #69369 | Update MessagePack to 2.5.303 | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69369> |
| PR | #69370 | Update MessagePack to 2.5.303 | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69370> |
| PR | #69361 | [automated] Merge branch 'release/11.0' => 'main' | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69361> |
| PR | #69358 | [release/11.0] [Hosting] Avoid allocations for OpenTelemetry | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69358> |
| PR | #69366 | Update MessagePack 2.5.303 | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69366> |
| PR | #69365 | Retry transient Gradle distribution bootstrap failures | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69365> |
| PR | #69362 | Avoid false positive prepend detection that causes backward scroll jumps | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69362> |
| PR | #69352 | Fail form binding for types with multiple public constructors | open | mariam-abdulla | <https://github.com/dotnet/aspnetcore/pull/69352> |
| PR | #69356 | Harden RendererSynchronizationContext restoration | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69356> |
| PR | #69342 | Fix blank ErrorBoundary when multiple exceptions thrown in one batch | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69342> |
| PR | #69349 | Fix ANCM server process dispatch lifetime | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69349> |
| PR | #69340 | Read KestrelServerOptions and limits from configuration | open | marcominerva | <https://github.com/dotnet/aspnetcore/pull/69340> |
| Issue | #69343 | Reject semantically duplicate CBOR keys in passkey attestation objects | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69343> |
| Issue | #69364 | Retry transient network failures when bootstrapping the SignalR Java Gradle distribution | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/69364> |
| Issue | #69363 | Per-property opt out of implicit required validation. | open | PleasantD | <https://github.com/dotnet/aspnetcore/issues/69363> |
| Issue | #69360 | Revise (and reduce) aka.ms links for diagnostics | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69360> |
| Issue | #69341 | Microsoft.AspNetCore.App.Internal.Assets is only injected when .razor files exist at restore time — the canonical Docker "restore before copying sources" pattern silently publishes a Blazor app without _framework assets (blazor.web.js → 404) | open | borgez | <https://github.com/dotnet/aspnetcore/issues/69341> |
| Issue | #69347 | CacheView GUID Changes After Form Submission and Page Refresh | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/69347> |
| Issue | #69339 | Perf regression: antiforgery-noop, https, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69339> |
| Issue | #69346 | Update "Key management in ASP.NET Core" docs to cover revocation and multi-process/-machine scenarios | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69346> |
| Issue | #69351 | CertificateAuthenticationHandler discards TLS-supplied intermediates and re-resolves them via AIA | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69351> |
| Issue | #69166 | Make dojo app and AiApp handle same E2E tests | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69166> |
| Issue | #69122 | [Validation] CacheView vary-by dimensions | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69122> |
| Issue | #69329 | Perf improvement: multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69329> |
| Issue | #67915 | [Experimental] [DirectTls] Support ClientCertificateMode.DelayCertificate (post-handshake client authentication) | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67915> |
| Issue | #67916 | [DirectTls] Add metrics, tracing, and logging on par with the Sockets transport and runtime epoll engine | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67916> |
| Issue | #69128 | [Validation] QuickGrid paging and the Paginator | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69128> |
| Issue | #69134 | [Validation] TempData across a redirect in static SSR | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69134> |
| Issue | #67297 | Support passwordless account creation | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67297> |
