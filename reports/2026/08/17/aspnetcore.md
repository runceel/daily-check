# dotnet/aspnetcore

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 38 |
| クローズ (未マージ) PR     | 16 |
| 新規 PR (オープン中)       | 19 |
| 新規 Issue                 | 58 |
| クローズ Issue             | 19 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#68486](https://github.com/dotnet/aspnetcore/issues/68486) — [Validation] A new Blazor Web App under a strict Content Security Policy （Issue / open / oroztocil）
  厳格な CSP を適用する Blazor Web App は、テンプレートが必要とするスクリプト・nonce・接続先を棚卸しし、検証 Issue の結果を本番ポリシーへ反映してください。
- **⚠ セキュリティ** [#57023](https://github.com/dotnet/aspnetcore/issues/57023) — Net 8 Blazor Web App (Interactive server w/ prerendering ) - multiple schemes doesn't work （Issue / open / olejsc）
  .NET 8 の Blazor Server prerendering で複数認証スキームを使う利用者は、認証チャレンジと prerender 後の回復動作を確認し、回避策の有無を追跡してください。
- **非推奨/廃止** [#68477](https://github.com/dotnet/aspnetcore/pull/68477) — Obsolete Bootstrap 4 Identity UI support （PR / open / Copilot）
  Bootstrap 4 Identity UI に依存するアプリは非推奨化に備え、Bootstrap 5 または独自 UI への移行計画とテンプレート差分を確認してください。
- **非推奨/廃止** [#67958](https://github.com/dotnet/aspnetcore/issues/67958) — Cleanup custom handling of Obsolete attribute once we get updates from STJ flowing （Issue / open / Youssef1313）
  STJ の更新後に独自の `Obsolete` 処理を保持する実装者は、標準メタデータへ統合する変更範囲を確認してください。
- **非推奨/廃止** [#64372](https://github.com/dotnet/aspnetcore/issues/64372) — Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 （Issue / open / joperezr）
  `AddRazorRuntimeCompilation` と関連 API を使うアプリは .NET 10 での非推奨化を前提に、代替の開発時コンパイル手順へ移行してください。
- **非推奨/廃止** [#63192](https://github.com/dotnet/aspnetcore/pull/63192) — Add [Obsolete] attribute to Bootstrap 4 support in Identity UI （PR / closed / Copilot）
  Bootstrap 4 の Identity UI は非推奨属性が追加されたため、対象テンプレートを新規採用する利用者は Bootstrap 5 への移行を優先してください。

## 主要な変更点

- **非推奨:** Bootstrap 4 Identity UI と Razor runtime compilation 関連 API の廃止準備が進み、利用者は代替 UI／開発フローを確認する必要があります。
- Blazor の CSP、認証スキーム、Enhanced Navigation など新しい Web アプリ構成の検証 Issue が増えています。
- OpenAPI 3.10 更新、Components.AI リッチテキスト、Native AOT 向け Aspire Dashboard 対応がマージされました。
- IIS のシャットダウン、HTTP/3、Response/Output cache、SignalR 認証などの安定性・セキュリティ修正が継続しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68272 | [test-quarantine] Quarantine flaky IISExpress RequestResponseTests class | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68272> |
| PR | #68341 | Fix ANCM app_offline.htm notification match using QueryCCH | merged | aw0lid | <https://github.com/dotnet/aspnetcore/pull/68341> |
| PR | #68553 | Remove InsecureChunkedParsing app context switch | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68553> |
| PR | #65733 | Fix shutdown hang with IIS | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/65733> |
| PR | #68462 | Update Microsoft.OpenApi to 3.10 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68462> |
| PR | #66642 | Update repo ownership mappings | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/66642> |
| PR | #68499 | Derive Helix tool versions from dotnet-tools.json | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68499> |
| PR | #68502 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 6ba2d0cd3df5ddecdd660a41eba00587835eb099 to 337495e7f4aadd92fc2b7fe462377038667613ec | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68502> |
| PR | #68503 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 6ba2d0cd3df5ddecdd660a41eba00587835eb099 to 337495e7f4aadd92fc2b7fe462377038667613ec | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68503> |
| PR | #68496 | Exclude dotnet-dump and dotnet-serve from Dependabot | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68496> |
| PR | #68500 | Update agentic workflows to gh-aw v0.86.2 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68500> |
| PR | #68493 | Document framework assembly access rule | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68493> |
| PR | #68460 | Fix nullref in Identity on netfx/netstandard | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68460> |
| PR | #68451 | Fix BL0013 diagnostic location for GetAuthenticationStateAsync | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68451> |
| PR | #68472 | Bump the JobMonitor | merged | premun | <https://github.com/dotnet/aspnetcore/pull/68472> |
| PR | #68317 | Use TLS channel binding in Negotiate authentication | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68317> |
| PR | #68307 | [Blazor] Support Aspire Dashboard on Native AOT | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68307> |
| PR | #68260 | Remove Publish-Build-Assets variable group from main | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/68260> |
| PR | #67912 | [Experimental] DirectTls transport implementation | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67912> |
| PR | #68524 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 337495e7f4aadd92fc2b7fe462377038667613ec to 09a0bcffb8286738e8679282171cd1ba548c8c52 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68524> |
| PR | #68523 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 337495e7f4aadd92fc2b7fe462377038667613ec to 09a0bcffb8286738e8679282171cd1ba548c8c52 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68523> |
| PR | #68457 | Require red/green proof before claiming a bug fix is verified | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68457> |
| PR | #68464 | Add eng/common Copilot review instructions | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68464> |
| PR | #68478 | Propagate `ScrollToItemAsync` cancellation to pending item-provider work   | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68478> |
| PR | #68514 | Resolve NuGet Audit warnings | merged | ViktorHofer | <https://github.com/dotnet/aspnetcore/pull/68514> |
| PR | #68324 | [Blazor] Add Components.AI rich text rendering | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68324> |
| PR | #68320 | Validate the query component of the HTTP/2 and HTTP/3 :path pseudo-header | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68320> |
| PR | #68517 | Harden Response/Output cache | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68517> |
| PR | #67988 | Fix InputNumber validation for scientific notation values | merged | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67988> |
| PR | #68111 | Fix Flaky HTTP/3 Test: `POST_ClientCancellationUpload_RequestAbortRaised` | merged | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/68111> |
| PR | #68510 | Use ASCII group separator (GS) for separating key/value in caching middleware | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68510> |
| PR | #68285 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68285> |
| PR | #68491 | [release/8.0] Update OpenAPI to latest | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68491> |
| PR | #68492 | [release/9.0] Update OpenAPI to latest | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68492> |
| PR | #68468 | [release/10.0] Update OpenApi to 2.12 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68468> |
| PR | #68466 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68466> |
| PR | #63813 | Add code-behind option to RazorComponent item template | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/63813> |
| PR | #68114 | Fix `InitialItemIndex` is intermittently ignored on fresh page load  | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68114> |
| PR | #68563 | Create Asp.net | closed | riazahemd730-cpu | <https://github.com/dotnet/aspnetcore/pull/68563> |
| PR | #67818 | Support validating dictionary values in Microsoft.Extensions.Validation | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67818> |
| PR | #68201 | Exclude restored packages from CodeQL analysis | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68201> |
| PR | #68278 | Add kotlarmilos as a Blazor WASM area owner | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68278> |
| PR | #68494 | Support user identifier changes during SignalR authentication refresh | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68494> |
| PR | #68506 | Merge test result files before publishing | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68506> |
| PR | #68505 | Avoid PublishTestResults warnings in PR builds | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68505> |
| PR | #68501 | Serialize trimmed app publishes to avoid static asset lock races | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68501> |
| PR | #68495 | [Blazor] Cover AllowUpdates state on enhanced navigation | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/68495> |
| PR | #68467 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68467> |
| PR | #68191 | [test-quarantine] Fix LongPolling Teardown Race on Forbidden Cleanup DELETE | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68191> |
| PR | #63192 | Add [Obsolete] attribute to Bootstrap 4 support in Identity UI | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/63192> |
| PR | #68316 | Fix Flaky HTTP/3 Test: GET_ConnectionsMakingMultipleRequests_AllSuccess | closed | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/68316> |
| PR | #68473 | Add daily repository activity report | closed | mariam-abdulla | <https://github.com/dotnet/aspnetcore/pull/68473> |
| PR | #68167 | [test-quarantine] Stabilize the POST_MultipleRequests_PooledStreamAndHeaders E2E test | closed | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/68167> |
| PR | #68470 | Sync shared code from runtime | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68470> |
| PR | #68562 | Follow links when the interactive router is disconnected | open | oguzozshn | <https://github.com/dotnet/aspnetcore/pull/68562> |
| PR | #68561 | Update Helix Job Monitor to preserve failures | open | mmitche | <https://github.com/dotnet/aspnetcore/pull/68561> |
| PR | #68540 | Fix auto-pause when circuit starts after enhanced navigation | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/68540> |
| PR | #68560 | [test-quarantine] Quarantine VirtualizationTest.QuickGrid_ScrollToItem_NegativeIndex_ScrollsToTop | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68560> |
| PR | #68558 | [test-quarantine] Re-quarantine DataProtectionProviderTests.System_UsesProvidedCertificateNotFromStore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68558> |
| PR | #68554 | Fix TryServeFromCacheAsync_ReturnsFalse_IfVaryByKeyContainsDelimiters failure | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68554> |
| PR | #68509 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68509> |
| PR | #68471 | Flow mapped assemblies to the Router | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68471> |
| PR | #68531 | Update gRPC dependencies to 2.83.0 | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68531> |
| PR | #68539 | Fix Blazor per-page activity links | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68539> |
| PR | #68489 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68489> |
| PR | #68522 | Require reauthentication before adding a passkey or setting a password | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68522> |
| PR | #68546 | Target latest runtime in RepoTasks | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68546> |
| PR | #68525 | Reject duplicate SignalR upload stream IDs | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68525> |
| PR | #68504 | Fix static web assets lock-race issue for E2E tests | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68504> |
| PR | #68513 | Support signaling unknown passkey credentials | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68513> |
| PR | #68477 | Obsolete Bootstrap 4 Identity UI support | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68477> |
| PR | #68521 | Produce different keys for inline ratelimiting policies | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68521> |
| PR | #68520 | Align DBSC with ASP.NET Core auth-scheme conventions | open | rokonec | <https://github.com/dotnet/aspnetcore/pull/68520> |
| Issue | #68569 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68569> |
| Issue | #68568 | libmsalruntime.so and .NET 10.0.11 | open | sbwalker | <https://github.com/dotnet/aspnetcore/issues/68568> |
| Issue | #68566 | aos | open | krobchai32659-jpg | <https://github.com/dotnet/aspnetcore/issues/68566> |
| Issue | #68567 | Quarantine <FAILING_TEST_NAME> | open | krobchai32659-jpg | <https://github.com/dotnet/aspnetcore/issues/68567> |
| Issue | #68565 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68565> |
| Issue | #68564 | OpenAPI document generation retains collectible endpoint contract assemblies | open | sfmskywalker | <https://github.com/dotnet/aspnetcore/issues/68564> |
| Issue | #68549 | Blazor WebAssembly MSAL 10.0.10 throws uninitialized_public_client_application after Firefox refresh; 10.0.7 works | open | LongJohnBlackbeard | <https://github.com/dotnet/aspnetcore/issues/68549> |
| Issue | #68559 | Quarantine VirtualizationTest.QuickGrid_ScrollToItem_NegativeIndex_ScrollsToTop | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68559> |
| Issue | #68555 | Perf improvement: antiforgery-noop, fortunes, multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68555> |
| Issue | #68557 | Perf regression: json, kestrel-header-symbols, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68557> |
| Issue | #68556 | Perf regression: mTls-handshakes-kestrel, single_query, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68556> |
| Issue | #68552 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68552> |
| Issue | #68551 | http.server.request.duration reports the error-page route after pipeline re-execution | open | Lei863 | <https://github.com/dotnet/aspnetcore/issues/68551> |
| Issue | #68550 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68550> |
| Issue | #68548 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68548> |
| Issue | #68545 | [Validation] The template Error page and its persisted RequestId | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68545> |
| Issue | #68547 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68547> |
| Issue | #68544 | [Validation] PersistentState with AllowUpdates on the template Weather page | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68544> |
| Issue | #68543 | [Validation] Enabling container support when creating a Blazor Web App | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68543> |
| Issue | #68542 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68542> |
| Issue | #68541 | [Validation] Rendering MathML in Blazor components | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68541> |
| Issue | #68536 | [Validation] Empty nullable TimeSpan, Guid, Int128, UInt128 and Half form fields | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68536> |
| Issue | #68538 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68538> |
| Issue | #68537 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68537> |
| Issue | #68535 | [Validation] PWA service worker when the start page is reached through a redirect | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68535> |
| Issue | #68534 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68534> |
| Issue | #68526 | [Validation] Browser configuration reaching WebAssembly started by a navigation | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68526> |
| Issue | #68475 | Propagate `ScrollToItemAsync` cancellation to pending item-provider work | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/68475> |
| Issue | #68533 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68533> |
| Issue | #68532 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68532> |
| Issue | #68507 | Update gRPC dependencies to latest versions | open | JamesNK | <https://github.com/dotnet/aspnetcore/issues/68507> |
| Issue | #68527 | [Validation] data-permanent preserves the marked element's own attributes | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68527> |
| Issue | #68528 | [Validation] Enhanced navigation no longer preloads WebAssembly assets | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68528> |
| Issue | #68529 | [Validation] Navigating away from a page that hosts an interactive component | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68529> |
| Issue | #68530 | [Validation] Scroll position and hash links during enhanced navigation | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68530> |
| Issue | #68481 | [Validation] C# unions across JavaScript interop | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68481> |
| Issue | #68490 | [Validation] Analyzer diagnostics for loop iterators captured in closures | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68490> |
| Issue | #68484 | [Validation] Analyzer diagnostics for unnecessary StateHasChanged calls | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68484> |
| Issue | #68483 | [Validation] Analyzer diagnostics for JavaScript interop | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68483> |
| Issue | #68488 | [Validation] Analyzer diagnostics for authentication state | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68488> |
| Issue | #68519 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68519> |
| Issue | #68516 | [Validation] Navigating between pages that use different render modes | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68516> |
| Issue | #68518 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68518> |
| Issue | #68515 | [Validation] HTTP HEAD requests to Razor component endpoints | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68515> |
| Issue | #68512 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68512> |
| Issue | #68511 | Signal options for unknown passkey credentials | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68511> |
| Issue | #68485 | [Validation] Analyzer diagnostics for Virtualize item identity | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68485> |
| Issue | #68480 | [Validation] C# unions in component parameters and prerendered state | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68480> |
| Issue | #68482 | [Validation] Showing content per environment with EnvironmentView | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68482> |
| Issue | #68487 | [Validation] Form labels with the DisplayName and Label components | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68487> |
| Issue | #68508 | [aw] Failed jobs: Issue Triage Agent for dotnet/aspnetcore | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68508> |
| Issue | #68498 | Consider honoring two-factor on external-login sign-in in the default Identity UI (currently bypassed for 2FA-enabled accounts) | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/68498> |
| Issue | #68497 | Consider honoring two-factor on external-login sign-in in the default Identity UI (currently bypassed for 2FA-enabled accounts) | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68497> |
| Issue | #68486 | [Validation] A new Blazor Web App under a strict Content Security Policy | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68486> |
| Issue | #68479 | Blazor Validation Testing Manual | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68479> |
| Issue | #68476 | Scope `JSComponentInterop.SetRootComponentParameters` to JS-registered dynamic roots | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68476> |
| Issue | #68474 | Improve authenticated check on output caching | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68474> |
| Issue | #68469 | Harden email change in IdentityApiEndpointRouteBuilderExtensions | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68469> |
| Issue | #68283 | ANCM FILE_WATCHER: app_offline.htm notification match compares buffer capacity instead of string length, making the match path unreachable | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/68283> |
| Issue | #18943 | The runtime<->aspnetcore shared src is out of sync | closed | Tratcher | <https://github.com/dotnet/aspnetcore/issues/18943> |
| Issue | #67849 | Kestrel does not validate the query component of HTTP/2/3 :path, allowing raw whitespace/control chars | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67849> |
| Issue | #67907 | Hardening: make Response/Output cache base-key serialization injective across PathBase and Path | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/67907> |
| Issue | #6326 | Incorrect validation of floating point data | closed | AlbertoPa | <https://github.com/dotnet/aspnetcore/issues/6326> |
| Issue | #67518 | Quarantine Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67518> |
| Issue | #66740 | Publish guidance of how (not) to use `SetIsOriginAllowed(_ => true)` (CORS) | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66740> |
| Issue | #67760 | ResponseCaching: VaryByQueryKeys vary key can collide because the '=' name/value separator is not escaped | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/67760> |
| Issue | #65436 | NET10 + IIS (InProcess with Preload Enabled) causes Windows to hang during shutdown | closed | BlaineM-SeriouslyRAD | <https://github.com/dotnet/aspnetcore/issues/65436> |
| Issue | #68240 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/68240> |
| Issue | #63996 | Blazor [PersistentState(AllowUpdates = true)] issue with @rendermode InteractiveWebAssembly | closed | SimSef | <https://github.com/dotnet/aspnetcore/issues/63996> |
| Issue | #47030 | Have an option for a new Razor Component item template to automatically create a code-behind (.cs) file | closed | mkArtakMSFT | <https://github.com/dotnet/aspnetcore/issues/47030> |
| Issue | #68099 | Virtualize: InitialItemIndex is intermittently ignored on fresh page load (startup race with spacer IntersectionObserver callback) | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68099> |
| Issue | #54634 | RFC 6238 Two-Factor Authentication service fails on .NET Framework 4.8 | closed | Choonster | <https://github.com/dotnet/aspnetcore/issues/54634> |
| Issue | #68205 | Perf improvement: caching, csrf-rejected | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68205> |
| Issue | #68339 | BL0013 highlights unrelated code at the top of Razor files | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68339> |
| Issue | #68315 | Use TLS channel binding tokens in NegotiateHandler | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68315> |
