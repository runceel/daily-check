# dotnet/aspnetcore

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 27 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 18 |
| 新規 Issue                 | 18 |
| クローズ Issue             | 6 |

## ⚠ 重要な変更（要確認）

- **入力検証の挙動変更** [dotnet/aspnetcore#70033](https://github.com/dotnet/aspnetcore/pull/70033): HTTP/1.1バージョン直前に空白がない不正リクエスト行を400で拒否するよう修正。独自クライアント・プロキシの担当者は、不正な形式を送信していないか確認してください。CVE修正とは告知されていません。
- **フォーム拒否時の応答修正** [dotnet/aspnetcore#70234](https://github.com/dotnet/aspnetcore/pull/70234): RDGのantiforgery検証失敗が500ではなく400になります。エラー応答を検証する利用者は期待値を確認してください。公開API変更はありません。

自動抽出されたdotnet/aspnetcore#70175とdotnet/aspnetcore#69559は、認証ロガー・認可メトリックの性能改善案であり、脆弱性修正の告知ではないためセキュリティ警告から除外しました。いずれも未マージです。

## 主要な変更点

- 27件がマージ。dotnet/aspnetcore#70234はRDGのフォームantiforgery失敗時の400応答を、実行時RequestDelegateFactoryと揃えます。
- dotnet/aspnetcore#70033は不正HTTP/1.1リクエスト行を再び拒否。dotnet/aspnetcore#70552は内部の旧HTTP/1パーサーヘルパーを非throw経路へ統一する整理で、公開API廃止ではありません。
- dotnet/aspnetcore#69888はModelMetadataのハッシュ値の遅延初期化競合を修正し、recordの検証が再起動まで失敗し続ける問題に対応します。10.0/11.0へのバックポート案はまだオープンです。
- dotnet/aspnetcore#70421はCacheViewで型にrender modeを宣言した子コンポーネントのキャッシュヒットが500になる問題を修正し、公開APIは維持します。
- dotnet/aspnetcore#70558、dotnet/aspnetcore#70702、dotnet/aspnetcore#70703などでLinuxビルド・試験基盤をAzure Linux 3へ移行。利用アプリのOS変更を要求するものではありません。
- dotnet/aspnetcore#70175・dotnet/aspnetcore#69559の性能改善は提案段階です。マージ済みコードも配布パッケージへの収録とは区別し、採用バージョンの確認が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70702 | [release/10.0] Move default Linux agents and Linux tests to Azure Linux 3 | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70702> |
| PR | #70703 | [release/11.0] Cross-build Linux x64 against the sysroot; move Linux agents and tests to Azure Linux 3 | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70703> |
| PR | #70685 | Use Ubuntu Resolute for the Playwright benchmark image | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70685> |
| PR | #70684 | Clarify browser-observed rendering test boundaries | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70684> |
| PR | #68704 | [Blazor] Document Components design invariants | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68704> |
| PR | #70234 | Fix RDG handling of failed form antiforgery validation | merged | DamianEdwards | <https://github.com/dotnet/aspnetcore/pull/70234> |
| PR | #70688 | Run quarantined Linux tests in the Azure Linux test container | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70688> |
| PR | #70665 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70665> |
| PR | #70680 | Preserve WebApplicationFactory ports for captured startup errors | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70680> |
| PR | #70682 | Skip public build and quarantine CI for skill-eval-only PRs | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70682> |
| PR | #70681 | Add aspnet-build-triage and update-npm-dependencies agent skills | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70681> |
| PR | #70639 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70639> |
| PR | #70664 | [test-quarantine] Unquarantine HubConnectionTests.RefreshingAuthAddingClaimAllowsAuthorizedMethod | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70664> |
| PR | #70558 | Cross-build Linux x64 against the sysroot; move default Linux agents to Azure Linux 3 | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70558> |
| PR | #70033 | Reject HTTP/1.1 request lines with no space before the version | merged | Souheyl7Gouadria | <https://github.com/dotnet/aspnetcore/pull/70033> |
| PR | #70411 | Clarify Blazor test proportionality and permanent regression test boundaries | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70411> |
| PR | #70677 | Clarify effective nullable context for coding agents | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70677> |
| PR | #70675 | Reduce ModelMetadataIdentity struct size | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70675> |
| PR | #70663 | [test-quarantine] Quarantine RealServerUsingMinimalBackedIntegrationTests.RetrievesDataFromRealServer | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70663> |
| PR | #70661 | [test-quarantine] Re-quarantine QuicStreamContextTests.BidirectionalStream_MultipleStreamsOnConnection_ReusedFromPool | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70661> |
| PR | #70626 | Fix skill-eval result gate ownership and diagnostics | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70626> |
| PR | #69705 | Clarify Interactive Auto selection in the Components architecture overview | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69705> |
| PR | #70552 | Remove obsolete HTTP/1 parsing helpers | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70552> |
| PR | #70076 | Fix product process-output hang and process-wrapper leaks | merged | adamsitnik | <https://github.com/dotnet/aspnetcore/pull/70076> |
| PR | #69888 | Fix race in ModelMetadata.GetHashCode | merged | gearsetdave | <https://github.com/dotnet/aspnetcore/pull/69888> |
| PR | #70637 | Run Linux platform tests in an Azure Linux container | merged | richlander | <https://github.com/dotnet/aspnetcore/pull/70637> |
| PR | #70421 | Prevent duplicate render modes when replaying cached components. | merged | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/70421> |
| PR | #70679 | Add QuickGrid keyboard and focus restoration E2E coverage | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70679> |
| PR | #70687 | Disable keep-alive for all HTTP/1.x CONNECT responses in Kestrel | closed | mdh1418 | <https://github.com/dotnet/aspnetcore/pull/70687> |
| PR | #70131 | Lazily allocate and right-size the model binding state stack | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70131> |
| PR | #70143 | Reduce allocations when parsing SignalR MessagePack messages | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70143> |
| PR | #70167 | Reduce allocations in InputTagHelper rendering | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70167> |
| PR | #70701 | JsonPatch (Newtonsoft): use the document's ContractResolver for copy and test | open | armin-azar | <https://github.com/dotnet/aspnetcore/pull/70701> |
| PR | #70706 | Fix `NativeRequestContext.GetChunks` across multiple chunks | open | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/70706> |
| PR | #70700 | Validate leading URI scheme and normalize relative paths at sink in Rewrite middleware | open | rokonec | <https://github.com/dotnet/aspnetcore/pull/70700> |
| PR | #70704 | [release/10.0] Preserve OpenAPI descriptions for inherited query properties | open | rgsivaraman | <https://github.com/dotnet/aspnetcore/pull/70704> |
| PR | #70692 | Fix Virtualize end-anchor scrolling after variable-height item recalibration | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/70692> |
| PR | #70691 | Fix the target framework claim in the JwtBearer package README | open | farisbasha | <https://github.com/dotnet/aspnetcore/pull/70691> |
| PR | #70689 | Run Components E2E tests in Chrome container | open | richlander | <https://github.com/dotnet/aspnetcore/pull/70689> |
| PR | #70686 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70686> |
| PR | #70683 | Add scoped Components code-review checks | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70683> |
| PR | #70667 | [release/11.0] Fix race in ModelMetadata.GetHashCode | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70667> |
| PR | #70666 | [release/10.0] Fix race in ModelMetadata.GetHashCode | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70666> |
| PR | #70676 | Add customer reported field to backport template | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70676> |
| PR | #70669 | Modernize product process management APIs | open | adamsitnik | <https://github.com/dotnet/aspnetcore/pull/70669> |
| PR | #70672 | Don't let ReadFormAsync return null when the body completes on another thread | open | b84330808 | <https://github.com/dotnet/aspnetcore/pull/70672> |
| PR | #70668 | Modernize process management in tests and non-shipping infrastructure | open | adamsitnik | <https://github.com/dotnet/aspnetcore/pull/70668> |
| PR | #70658 | Fix excessive wheel scrolling over hovered rows in Virtualize | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/70658> |
| PR | #70659 | Apply the service check to [AsParameters] properties in the Request Delegate Generator | open | joshbarros | <https://github.com/dotnet/aspnetcore/pull/70659> |
| PR | #70660 | Fix static SSR ErrorBoundary failures when disposing named forms | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70660> |
| Issue | #70705 | JsonPatch PocoAdapter TryTest incorrectly formats the current value on error. | open | wertzui | <https://github.com/dotnet/aspnetcore/issues/70705> |
| Issue | #70657 | Untagged submodules | closed | jekula | <https://github.com/dotnet/aspnetcore/issues/70657> |
| Issue | #70696 | [Flakiness] HTTP/3 shutdown test misses control-stream error log | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/70696> |
| Issue | #70697 | [Flakiness] CookieStore shared acquisition loses a recorded invocation | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/70697> |
| Issue | #70698 | [Flakiness] H2Spec parameterized test fails without retained case details | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/70698> |
| Issue | #70699 | [Flakiness] CircuitRegistry reconnect leaves an evicted circuit registered | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/70699> |
| Issue | #70695 | Validate leading URI scheme and normalize relative paths at sink in URL Rewrite middleware | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/70695> |
| Issue | #70694 | QuickGrid regression in .NET 11: placeholders stay after text resize and ItemsProvider is not called | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/70694> |
| Issue | #70693 | ANCM out-of-process: duplicated `MS-ASPNETCORE-WINAUTHTOKEN` handle is not closed when the request never reaches `IISMiddleware` | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70693> |
| Issue | #70690 | JwtBearer PACKAGE.md claims support for .NET Core 3.0+ and .NET Standard 2.1 | open | ojamte | <https://github.com/dotnet/aspnetcore/issues/70690> |
| Issue | #70678 | Identity: DataProtectorTokenProvider ignores TimeProvider, though the ASP.NET Core 11 release notes list token expiration | open | denisulmer | <https://github.com/dotnet/aspnetcore/issues/70678> |
| Issue | #70674 | [review-pull-request] CCR overview cards deduplicate distinct anchored worker candidates without verification (#70532) | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70674> |
| Issue | #70673 | [Flakiness] Windows local development validation succeeds on retry after build exit | open | mmitche | <https://github.com/dotnet/aspnetcore/issues/70673> |
| Issue | #70671 | Why is there reluctance to unify file encoding formats? I upgraded to dotnet 11, but it's still disappointing | closed | hgaoping | <https://github.com/dotnet/aspnetcore/issues/70671> |
| Issue | #70670 | SignalR JS client stays in Reconnecting forever when a handshake error is received while HttpConnection is still Connecting (stop() never resolves) | open | skynightz | <https://github.com/dotnet/aspnetcore/issues/70670> |
| Issue | #70662 | Quarantine Microsoft.AspNetCore.Mvc.FunctionalTests.RealServerUsingMinimalBackedIntegrationTests.RetrievesDataFromRealServer | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/70662> |
| Issue | #70656 | Failed to parse '...\obj\Debug\net11.0\staticwebassets.development.json': Missing Asset | open | SandroRiz | <https://github.com/dotnet/aspnetcore/issues/70656> |
| Issue | #70655 | [API Proposal] Add paused-circuit cleanup callback to Blazor reconnection handlers | open | surya3655 | <https://github.com/dotnet/aspnetcore/issues/70655> |
| Issue | #70229 | Request Delegate Generator returns HTTP 500 instead of 400 for failed form antiforgery validation (.NET 10 and 11 RC3) | closed | DamianEdwards | <https://github.com/dotnet/aspnetcore/issues/70229> |
| Issue | #70330 | CacheView: second and later requests return HTTP 500 when a cached child declares @rendermode on its own type | closed | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70330> |
| Issue | #69857 | Kestrel accepts HTTP/1.1 request lines with no space before the version and silently rewrites the target (regression in #51535) | closed | v-yun | <https://github.com/dotnet/aspnetcore/issues/69857> |
| Issue | #59384 | Unexpected error when using records | closed | TimSon777 | <https://github.com/dotnet/aspnetcore/issues/59384> |
