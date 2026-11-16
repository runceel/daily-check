# dotnet/aspnetcore

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 133 |
| クローズ (未マージ) PR     | 20 |
| 新規 PR (オープン中)       | 29 |
| 新規 Issue                 | 76 |
| クローズ Issue             | 31 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#70453](https://github.com/dotnet/aspnetcore/pull/70453) — Bound Blazor client validation caching （PR / merged / rbhanda）
  Blazor 利用者は不明な field 名をキャッシュしない修正（CVE-2026-118748）の取り込み版を確認してください。PR マージだけでは配布版の特定はできません。
- **⚠ セキュリティ** [#70452](https://github.com/dotnet/aspnetcore/pull/70452) — Avoid simple requests for SignalR authentication refresh （PR / merged / rbhanda）
  SignalR 利用者は認証更新を非 simple request と明示 challenge に限定する修正（CVE-2026-109481）について、server / client の対応版を確認してください。
- **⚠ セキュリティ** [#70451](https://github.com/dotnet/aspnetcore/pull/70451) — Respect case in SignalR Redis group subscriptions （PR / merged / rbhanda）
  Redis backplane 利用者は group 名の大文字小文字を区別する修正（CVE-2026-114147）と既存の命名を確認してください。
- **⚠ セキュリティ** [#70450](https://github.com/dotnet/aspnetcore/pull/70450) — Bind SignalR connections to negotiated identity （PR / merged / rbhanda）
  SignalR 利用者は negotiate 時と transport / refresh 時の identity 不一致を拒否する修正（CVE-2026-114146）を確認してください。
- **⚠ セキュリティ** [#70449](https://github.com/dotnet/aspnetcore/pull/70449) — [main] Avoid repeated validation error copies (CVE-2026-118749) （PR / merged / rbhanda）
  validation 結果を繰り返し読むアプリは、エラー辞書の再コピーを防ぐ修正（CVE-2026-118749）の適用版を確認してください。
- **⚠ セキュリティ** [#70448](https://github.com/dotnet/aspnetcore/pull/70448) — [main] Protect named pipe policy during recovery (CVE-2026-114157) （PR / merged / rbhanda）
  named pipe 利用ホストは、listener 復旧時のアクセス方針を保護する修正（CVE-2026-114157）の取り込みを確認してください。
- **⚠ セキュリティ** [#70447](https://github.com/dotnet/aspnetcore/pull/70447) — [main] Restore slash-only PathString boundaries (CVE-2026-114156) （PR / merged / rbhanda）
  PathString を使う routing / middleware は slash のみを境界とする修正（CVE-2026-114156）で backslash 前提の判定が変わらないか確認してください。
- **⚠ セキュリティ** [#70446](https://github.com/dotnet/aspnetcore/pull/70446) — [main] Escape semicolons in derived cookie paths (CVE-2026-109476) （PR / merged / rbhanda）
  PathBase 由来の cookie path を使う認証・antiforgery・TempData は、semicolon escape 修正（CVE-2026-109476）の適用版を確認してください。明示的 path 設定は維持されます。
- **⚠ セキュリティ** [#70445](https://github.com/dotnet/aspnetcore/pull/70445) — [main] Clear HTTP logging buffer tail on reset (CVE-2026-114150) （PR / merged / rbhanda）
  HTTP logging 利用者は stream 再利用時に response-tail memory を消去する修正（CVE-2026-114150）の取り込みを確認してください。
- **⚠ セキュリティ** [#70444](https://github.com/dotnet/aspnetcore/pull/70444) — [main] Enforce multipart header line count limits (CVE-2026-114149) （PR / merged / rbhanda）
  multipart を受けるアプリは重複 header 名も `HeadersCountLimit` へ計上する修正（CVE-2026-114149）と、正当な大量 header 入力の制限値を確認してください。
- **⚠ セキュリティ** [#69867](https://github.com/dotnet/aspnetcore/issues/69867) — Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. （Issue / closed / jinzhao1127）
  クローズ済みの脆弱依存報告です。該当テンプレートや依存グラフを持つ利用者は advisory と実際に解決された PKCS パッケージ版を確認し、Issue の close を修正配布の証拠にしないでください。
- **⚠ セキュリティ** [#69312](https://github.com/dotnet/aspnetcore/pull/69312) — Unify claims principal cache identity （PR / open / javiercn）
  未マージ。利用者単位キャッシュの分離を強化する提案で、適用時は Cache Tag Helper / CacheView の cache miss 増加を確認してください。既存 antiforgery token は互換維持の方針です。

## 主要な変更点

補足：[dotnet/aspnetcore#70442](https://github.com/dotnet/aspnetcore/pull/70442) は自動分類外の認証関連修正です。Blazor Identity の password-reset / confirmation と ExternalClaims サンプルで、入力された検索用 email ではなく照合済みユーザーの保存 email へ送信します。既存アプリへテンプレート更新は自動反映されないため、該当生成コードを持つ利用者は公開 advisory `GHSA-x3vp-85cm-q97r` と照合してください。

- **セキュリティ修正**が集中：SignalR の identity 固定・認証 refresh・Redis group（dotnet/aspnetcore#70450、dotnet/aspnetcore#70452、dotnet/aspnetcore#70451）と Blazor validation cache（dotnet/aspnetcore#70453）を確認してください。
- multipart header 行数、HTTP logging buffer 消去、cookie path escape、PathString 境界、named pipe 復旧、validation 結果コピーの6件も CVE 対応としてマージ済みです。main へのマージとサポート版への配布は分けて確認が必要です。
- dotnet/aspnetcore#69312 は user-varied cache identity の統一提案で未マージ、dotnet/aspnetcore#69867 は脆弱依存のクローズ報告であり、どちらも配布済み修正と断定しません。
- クエリ・cookie・header・認可処理の allocation 削減が複数マージされました。SecurityStampValidator の logger cache と認可 metrics boxing 削減は性能改善で、脆弱性修正の一覧から除外しています。
- Blazor は QuickGrid の keyboard navigation / row activation、Components.Platform の Navigator・Screen・event listener を追加。dotnet/aspnetcore#69323 の同期コンテキスト不具合は未解決として継続確認します。
- 11.0 API を shipped として記録する一方、main では12.0向け版番号整備が進行。利用対象ブランチと実際の SDK / runtime 更新情報を照合してください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70452 | Avoid simple requests for SignalR authentication refresh | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70452> |
| PR | #70513 | [release/10.0] Updated npm packages 2026-11-11 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70513> |
| PR | #70511 | [release/11.0] Updated npm packages 2026-11-11 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70511> |
| PR | #70427 | Reject duplicate existing-feedback findings in catch-policy eval | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70427> |
| PR | #70482 | Merging internal commits for release/8.0 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/70482> |
| PR | #70483 | Merging internal commits for release/9.0 | merged | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/70483> |
| PR | #70302 | [release/11.0] [StaticAssets] Avoid caching responses for missing manifest assets | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70302> |
| PR | #70485 | [release/11.0] Update template precedence to 11000 for BlazorWasmServiceDefaults and BlazorWebWorker | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70485> |
| PR | #70295 | Escape typed-JsonPatchDocument path in JsonPatch | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70295> |
| PR | #70486 | [release/10.0] Synchronize navigation lock E2E test with browser prompt updates | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70486> |
| PR | #70488 | [release/11.0] Stabilize Blazor Web JS initializer tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70488> |
| PR | #70487 | [release/10.0] Stabilize HTTP/2 stream pooling test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70487> |
| PR | #70489 | [release/11.0] Stabilize HTTP/2 stream pooling test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70489> |
| PR | #70490 | [release/11.0] Synchronize navigation lock E2E test with browser prompt updates | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70490> |
| PR | #70466 | [release/11.0] Use End in the variable-height table test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70466> |
| PR | #70120 | Avoid intermediate allocation when decoding query string names/values | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70120> |
| PR | #70501 | [test-quarantine] Unquarantine VirtualizationTest.InitialIndex_PendingGrowth_TallItemsBeforeTarget_KeepsTargetAligned | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70501> |
| PR | #70496 | Remove expression-keyed MemberInfo cache in ExpressionMemberAccessor | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70496> |
| PR | #70463 | [release/11.0] Quarantine server window-scroll variable-height provider case | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70463> |
| PR | #70447 | [main] Restore slash-only PathString boundaries (CVE-2026-114156) | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70447> |
| PR | #70500 | [test-quarantine] Re-quarantine VirtualizationTest.ScrollToItem_AfterEndJump_LandsAtTarget | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70500> |
| PR | #70494 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70494> |
| PR | #70484 | Remaining 12.0 major version update items | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70484> |
| PR | #70491 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70491> |
| PR | #70455 | [release/2.3] Update branding to 2.3.15 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70455> |
| PR | #70227 | Speed up Base32.FromBase32 decoding for authenticator keys | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70227> |
| PR | #70481 | Remove Mono browser runtime usage from build and test infrastructure | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/70481> |
| PR | #68131 | [test-quarantine] Stabilize DelegateTests.DelegateAfterReceiverRestart Quarantine test | merged | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/68131> |
| PR | #67714 | Fix flaky WebApplicationFactory Kestrel port race | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67714> |
| PR | #70441 | Update `HostFilteringOptions.AllowedHosts` doc | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70441> |
| PR | #70204 | Avoid StringBuilder when encoding Content-Disposition file names | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70204> |
| PR | #70203 | Reuse a cached StringBuilder when formatting header values | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70203> |
| PR | #70453 | Bound Blazor client validation caching | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70453> |
| PR | #70448 | [main] Protect named pipe policy during recovery (CVE-2026-114157) | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70448> |
| PR | #70449 | [main] Avoid repeated validation error copies (CVE-2026-118749) | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70449> |
| PR | #70444 | [main] Enforce multipart header line count limits (CVE-2026-114149) | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70444> |
| PR | #70465 | [release/11.0] Quarantine RetrievesDataFromRealServer | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70465> |
| PR | #70185 | Avoid closure allocations and lock-all Count when adding a SignalR connection to a group | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70185> |
| PR | #70457 | [release/10.0] (deps): Bump src/submodules/googletest from `a8380b0` to `2499058` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70457> |
| PR | #70446 | [main] Escape semicolons in derived cookie paths (CVE-2026-109476) | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70446> |
| PR | #70464 | [release/11.0] Re-quarantine server external navigation test | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70464> |
| PR | #70450 | Bind SignalR connections to negotiated identity | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70450> |
| PR | #70459 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 85bfd17305322c5e82908b990c75495ef07ccf88 to 8231dc4e0c601ba6f23de52772ec05634517b03b | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70459> |
| PR | #70458 | [main] (deps): Bump src/submodules/googletest from `a8380b0` to `2499058` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70458> |
| PR | #70456 | [release/11.0] (deps): Bump src/submodules/googletest from `a8380b0` to `2499058` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70456> |
| PR | #70445 | [main] Clear HTTP logging buffer tail on reset (CVE-2026-114150) | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70445> |
| PR | #70451 | Respect case in SignalR Redis group subscriptions | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70451> |
| PR | #70442 | Use stored email for Identity recovery messages | merged | rbhanda | <https://github.com/dotnet/aspnetcore/pull/70442> |
| PR | #70460 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 85bfd17305322c5e82908b990c75495ef07ccf88 to 8231dc4e0c601ba6f23de52772ec05634517b03b | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70460> |
| PR | #70410 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70410> |
| PR | #70443 | [release/2.3] Merge internal commits for November | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70443> |
| PR | #70440 | Remove Mono from the Components E2E pipeline | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/70440> |
| PR | #69980 | Update SignalR TS CHANGELOG for v12.0.0-preview.1 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69980> |
| PR | #70438 | Remove release/8.0 and release/9.0 branch automation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70438> |
| PR | #70437 | Mark 11.0.0 APIs as shipped on main | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70437> |
| PR | #70415 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70415> |
| PR | #70436 | [release/11.0] Mark 11.0.0 APIs as shipped | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70436> |
| PR | #70414 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70414> |
| PR | #70317 | [Blazor] Read WebAssembly appsettings through runtime APIs | merged | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/70317> |
| PR | #70398 | [release/11.0] Fix Blazor Identity floating labels at constrained widths | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70398> |
| PR | #70319 | Refine review-candidate-verifier rules for external triggers, test gaps, and secondary-failure catches | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70319> |
| PR | #70281 | Stabilize HTTP/2 stream pooling test | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70281> |
| PR | #70382 | [blazor] Synchronize navigation lock test with browser prompt updates | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70382> |
| PR | #70417 | Update the Components.Platform porting skill with rules settled by events, enums, and URL | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70417> |
| PR | #70301 | Guard Kestrel method hash against non-ASCII starts | merged | hoyosjs | <https://github.com/dotnet/aspnetcore/pull/70301> |
| PR | #70181 | Pre-size the HttpLogging parameter lists | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70181> |
| PR | #69968 | Add Navigator to Microsoft.AspNetCore.Components.Platform | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69968> |
| PR | #70248 | Add keyboard navigation and row activation to QuickGrid | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70248> |
| PR | #70312 | Improve reviewer handling of secondary failure suppression | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70312> |
| PR | #70388 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70388> |
| PR | #70402 | [test-quarantine] Re-quarantine VirtualizationTest.QuickGrid_AnchorMode_NearTop_AppendKeepsViewportStable | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70402> |
| PR | #70375 | [test-quarantine] Re-quarantine ServerEventTest.EventDuringBatchRendering_CanTriggerDOMEvents | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70375> |
| PR | #70377 | [test-quarantine] Re-quarantine RealServerUsingMinimalBackedIntegrationTests.CanResolveServices | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70377> |
| PR | #69952 | Add the openharmony RIDs and skip repo-side NativeAOT for openharmony | merged | springmin | <https://github.com/dotnet/aspnetcore/pull/69952> |
| PR | #70186 | Avoid intermediate substring when unescaping request cookie values | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70186> |
| PR | #70401 | Preserve validation summary list semantics in reauthentication | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70401> |
| PR | #69992 | Represent CookieSameSite as a readonly struct | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69992> |
| PR | #70258 | Stabilize Blazor Web JS initializer tests | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70258> |
| PR | #69970 | Add Screen to Microsoft.AspNetCore.Components.Platform | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69970> |
| PR | #70378 | [test-quarantine] Unquarantine VirtualizeTest.ScrollToIndexAsync_CancellationCancelsProviderRequest | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70378> |
| PR | #69989 | Update the Components.Platform porting skill with rules settled by Cookie Store | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69989> |
| PR | #70340 | Add event listeners to Microsoft.AspNetCore.Components.Platform | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70340> |
| PR | #70380 | [test-quarantine] Unquarantine VirtualizationTest.ScrollToItem_AfterEndJump_LandsAtTarget | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70380> |
| PR | #70379 | [test-quarantine] Unquarantine RedirectionTest.RedirectEnhancedNonBlazorGetToInternal | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70379> |
| PR | #70348 | Clarify Blazor debugger, cache, and circuit behavior | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/70348> |
| PR | #70345 | Fix Blazor Identity floating labels at constrained widths | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/70345> |
| PR | #70389 | Update Dispose method summary in UserManager | merged | Bootykit | <https://github.com/dotnet/aspnetcore/pull/70389> |
| PR | #70182 | Avoid Split/ToArray allocations in ContentDispositionHeaderValue MIME decoding | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70182> |
| PR | #70163 | Avoid parsing Content-Type and allocating Items in HasFormContentType | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70163> |
| PR | #70147 | Avoid enumerator allocations when evaluating authorization handlers | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70147> |
| PR | #70374 | Revert "[blazor] Extract current dotnet.d.ts from runtime pack for re… | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70374> |
| PR | #70156 | Avoid per-line MemoryStream in BufferedReadStream.ReadLine | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70156> |
| PR | #70228 | Use span-based data protection in SecureDataFormat | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70228> |
| PR | #70362 | Capture passkey upgrade HTML before automatic navigation | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/70362> |
| PR | #70371 | Fix quarantine eligibility blind spots | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70371> |
| PR | #70369 | [test-quarantine] Re-quarantine ServerRoutingTest.NavigationLock_CanBlockExternalNavigation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70369> |
| PR | #70338 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70338> |
| PR | #70183 | Materialize trimmed [Authorize] roles once in AuthorizationPolicy.CombineAsync | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70183> |
| PR | #70294 | Stabilize IIS child process restart test | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70294> |
| PR | #69964 | Update doc for `MinDataRate.GracePeriod` to clarify different usage | merged | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/69964> |
| PR | #70353 | Fix contrast of Identity instructional text | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70353> |
| PR | #69993 | Pass a FeatureContext to Components.Platform feature factories | merged | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69993> |
| PR | #70354 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from af144b37e5910c6d28b516bd9b6ea2c4a75c95ae to 85bfd17305322c5e82908b990c75495ef07ccf88 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70354> |
| PR | #70356 | [main] (deps): Bump actions/setup-dotnet from 6.0.0 to 6.1.0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70356> |
| PR | #70355 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from af144b37e5910c6d28b516bd9b6ea2c4a75c95ae to 85bfd17305322c5e82908b990c75495ef07ccf88 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70355> |
| PR | #70191 | Avoid intermediate copies in TimeLimitedDataProtector | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70191> |
| PR | #70346 | Fix account-name overflow in web templates | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/70346> |
| PR | #70187 | Reduce allocations in DataProtection string Protect/Unprotect | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70187> |
| PR | #70344 | [blazor] Extract current dotnet.d.ts from runtime pack for repository build | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70344> |
| PR | #70084 | Fix Blazor fatal error banner persisting after successful reconnection | merged | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/70084> |
| PR | #69871 | Fix orphaned RemoteJSDataStream when sendJSDataStream initiation throws | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/69871> |
| PR | #69848 | [blazor] Migrate startup callbacks to runtime builder APIs | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/69848> |
| PR | #69832 | Avoid SectionRenderModeMismatch warning for PageTitle in default Blazor apps | merged | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/69832> |
| PR | #68110 | Stabilize `CachedResponseBodyTests.Copy_SingleSegment` | merged | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68110> |
| PR | #67088 | Fix Blazor TextArea Not Updating | merged | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67088> |
| PR | #70247 | [release/11.0] [Blazor] Fix Endpoints linker substitution assembly name | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70247> |
| PR | #70050 | [release/11.0] Fix QuickGrid paginator page-change announcements | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70050> |
| PR | #70306 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70306> |
| PR | #70339 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70339> |
| PR | #69891 | [release/8.0] Update http-cache-semantics to 4.3.0 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69891> |
| PR | #70208 | [release/8.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70208> |
| PR | #70241 | [release/11.0] Keep Blazor Weather table scrolling within the page | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70241> |
| PR | #70111 | [release/11.0] Expose QuickGrid column-options expanded state | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70111> |
| PR | #70092 | [release/11.0] Fix Paginator RTL navigation alignment | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70092> |
| PR | #70110 | [release/11.0] Fix virtualized QuickGrid ARIA row count | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70110> |
| PR | #70352 | [release/11.0] Fix account-name overflow in web templates | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70352> |
| PR | #70322 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70322> |
| PR | #70146 | Reduce allocations in managed DataProtection protect/unprotect | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70146> |
| PR | #70193 | Write AES-GCM key modifier and nonce directly into the output buffer | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70193> |
| PR | #70192 | Build the DataProtection AAD template lazily | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70192> |
| PR | #70255 | [Hosting] Redact AWSAccessKeyId and Signature | merged | martincostello | <https://github.com/dotnet/aspnetcore/pull/70255> |
| PR | #69827 | [Blazor] Signal LocationChangingContext.CancellationToken only for canceled navigations | merged | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69827> |
| PR | #70324 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70324> |
| PR | #69193 | [test-quarantine] Stabilize Blazor Web JS Initializers test case | closed | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/69193> |
| PR | #70397 | [release/9.0] Update dependencies from dotnet/arcade | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70397> |
| PR | #70413 | [release/8.0] Fix HTTP/2 hang on reused streams when a window update races the final write | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70413> |
| PR | #70383 | [blazor] Use runtime dotnet.d.ts declaration in VMR builds | closed | maraf | <https://github.com/dotnet/aspnetcore/pull/70383> |
| PR | #69998 | Fix Blazor Error page being replaced by NotFound during WebAssembly activation | closed | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/69998> |
| PR | #70385 | Prevent Blazor WebAssembly loading progress from decreasing or reaching 100% early | closed | shanewas | <https://github.com/dotnet/aspnetcore/pull/70385> |
| PR | #69843 | Track Blazor WebAssembly PWA service worker changes during build | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/69843> |
| PR | #70376 | [test-quarantine] Re-quarantine VirtualizationTest.QuickGrid_AnchorMode_NearTop_AppendKeepsViewportStable | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70376> |
| PR | #70042 | [release/9.0] Update dependencies from dotnet/arcade | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70042> |
| PR | #69890 | [release/9.0] Update http-cache-semantics to 4.3.0 | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69890> |
| PR | #69893 | [release/9.0] Update RepoTasks cryptography dependency | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69893> |
| PR | #70213 | [release/8.0] (deps): Bump src/submodules/googletest from `b66cffc` to `a8380b0` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70213> |
| PR | #70214 | [release/9.0] (deps): Bump src/submodules/googletest from `b66cffc` to `a8380b0` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70214> |
| PR | #70333 | [release/9.0] Update branding to 9.0.24 | closed | dotnet-release-bot[bot] | <https://github.com/dotnet/aspnetcore/pull/70333> |
| PR | #70211 | Avoid ViewLocationExpanderContext allocations on Razor view lookup cache hits | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70211> |
| PR | #70129 | Reduce allocations in MVC model validation | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70129> |
| PR | #70061 | Add a persistent live region to interactive ValidationSummary | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70061> |
| PR | #70225 | Avoid an extra task allocation in DefaultAuthorizationServiceImpl.AuthorizeAsync | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70225> |
| PR | #70218 | Avoid allocating a token substring when authenticating bearer tokens | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70218> |
| PR | #70341 | Use cached IItemsFeature in TryGetItem (follow-up to #70161) | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70341> |
| PR | #70522 | Use Azure Linux 4 for Linux Helix container hosts | open | richlander | <https://github.com/dotnet/aspnetcore/pull/70522> |
| PR | #70523 | [release/11.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70523> |
| PR | #70521 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70521> |
| PR | #70520 | Preserve WebApplicationFactory Kestrel port precedence | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70520> |
| PR | #70519 | Build Site Extension XDT helper as AnyCPU | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70519> |
| PR | #70518 | Harden JS unit-test failure enforcement in Npm.Workspace.nodeproj and AzDO JUnit publishing | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70518> |
| PR | #70512 | [Infrastructure] Updated npm packages 2026-11-11 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70512> |
| PR | #70429 | Fix captured value-type index formatting in Blazor forms | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70429> |
| PR | #70504 | [blazor] Fix Web Worker initialization on CoreCLR | open | maraf | <https://github.com/dotnet/aspnetcore/pull/70504> |
| PR | #70350 | Fix stale conditional request validation for runtime-updated static assets | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/70350> |
| PR | #70367 | Stop RedisOutputCacheStore GC loop on dispose | open | EnesKartal | <https://github.com/dotnet/aspnetcore/pull/70367> |
| PR | #70509 | Add EnumeratorCancellation to ServerSentEventsResult.WrapEvents | open | bharatprajapati-coder | <https://github.com/dotnet/aspnetcore/pull/70509> |
| PR | #70421 | Prevent duplicate render modes when replaying cached components. | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/70421> |
| PR | #70347 |  Fix stale navigation state during Blazor WebAssembly startup | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/70347> |
| PR | #70495 | Fix retained references during Blazor renderer and WebView disposal | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/70495> |
| PR | #70497 | Prevent obsolete circuit resumes after enhanced navigation to static SSR. | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/70497> |
| PR | #70499 | Fix Blazor Server navigation during circuit startup | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/70499> |
| PR | #70480 | Observe streaming renderer quiescence failures | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70480> |
| PR | #70411 | Clarify Blazor test proportionality and permanent regression test boundaries | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70411> |
| PR | #70433 | [release/11.0] Fix contrast of Identity instructional text | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70433> |
| PR | #70420 | [release/11.0] Add keyboard navigation and row activation to QuickGrid | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70420> |
| PR | #70426 | Add MessageChannel and BroadcastChannel support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/70426> |
| PR | #70343 | Fix InputSelect initial selection for null values | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/70343> |
| PR | #70400 | Fix PAT pool validation and seed Pulse compilation | open | jeffhandley | <https://github.com/dotnet/aspnetcore/pull/70400> |
| PR | #70381 | OutputCaching: Avoid caching exceptions when request is canceled | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70381> |
| PR | #70387 | Cleanup unused parameter from /PasskeyRequestOptions | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70387> |
| PR | #70328 | Automatically marshal cancellation arguments in JSInterop | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/70328> |
| PR | #70323 | JsonPatch: allow test operations against null and empty-string values | open | ivarne | <https://github.com/dotnet/aspnetcore/pull/70323> |
| PR | #70334 | Preserve JavaScript error names in async Blazor interop | open | osamashtayat | <https://github.com/dotnet/aspnetcore/pull/70334> |
| Issue | #70524 | Move source-build container to Azure Linux 4 after Arcade trailing-backslash fix | open | richlander | <https://github.com/dotnet/aspnetcore/issues/70524> |
| Issue | #70515 | AccessViolationException crashes w3wp on .NET 11 with IIS in-process hosting (SignalR hub invocation reads local endpoint in IISHttpContext.InitializeLocalEndpoint) | open | almostEric | <https://github.com/dotnet/aspnetcore/issues/70515> |
| Issue | #70517 | Harden JS unit-test failure enforcement in Npm.Workspace.nodeproj and AzDO JUnit publishing | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70517> |
| Issue | #70516 | [OpenTelemetry] Hosting replaces an Activity.DisplayName that the app set, when a route matches | open | PetarJerinic | <https://github.com/dotnet/aspnetcore/issues/70516> |
| Issue | #70514 | Blazor Interop with Typescript | open | ghorner2 | <https://github.com/dotnet/aspnetcore/issues/70514> |
| Issue | #70454 | Minimal APIs: a C# union of IResult cases is serialized as JSON with 200 instead of executing the active case | open | HaikAsatryan | <https://github.com/dotnet/aspnetcore/issues/70454> |
| Issue | #70373 | [API Proposal]: AuthenticationProperties.RotateSessionKey, to rotate the cookie session identifier on sign-in | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70373> |
| Issue | #70510 | Blazor browser options are ignored or applied incorrectly | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/70510> |
| Issue | #70508 | Query-component validation (#68320) not backported to release/10.0: HTTP/2 :path query with SP/HTAB/CTL still accepted on .NET 10 LTS | open | HuyTran2503 | <https://github.com/dotnet/aspnetcore/issues/70508> |
| Issue | #70507 | missing Microsoft.AspNetCore.Razor.Runtime.xml in aspnetcore build | open | corngood | <https://github.com/dotnet/aspnetcore/issues/70507> |
| Issue | #70506 | OutputCache with locking should ensure the response is fully written in memory first | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70506> |
| Issue | #70419 | [SSE] ServerSentEventsResult.WrapEvents is missing [EnumeratorCancellation], so RequestAborted never reaches the app's generator on the IAsyncEnumerable<T> overload | open | 8e88no12-creator | <https://github.com/dotnet/aspnetcore/issues/70419> |
| Issue | #70505 | Apache RewriteCond negation is incorrectly applied to string and integer comparisons | open | mauroa | <https://github.com/dotnet/aspnetcore/issues/70505> |
| Issue | #70503 | Inserting a MarkupString with many top-level nodes is quadratic since .NET 11 (insertLogicalChild orphan scan) | open | Daeer-Projects | <https://github.com/dotnet/aspnetcore/issues/70503> |
| Issue | #70461 | Two MapRazorComponents roots map the framework's internal endpoints twice: AmbiguousMatchException on hot-reload-settings.json (.NET 11) and opaque-redirect | open | lahma | <https://github.com/dotnet/aspnetcore/issues/70461> |
| Issue | #70502 | Re-enable Web Worker template tests after runtime JSExport fix flows | open | akoeplinger | <https://github.com/dotnet/aspnetcore/issues/70502> |
| Issue | #70418 | [Blazor] DefaultInMemoryCircuitPersistenceProvider never disposes the retention CancellationTokenSource when a persist is rejected at capacity | open | 8e88no12-creator | <https://github.com/dotnet/aspnetcore/issues/70418> |
| Issue | #70498 | Investigate SSR/interactive inconsistencies in table structure and select defaults | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/70498> |
| Issue | #70492 | BL0014 analyser (ForLoopIteratorInClosureAnalyzer) throws NullReferenceException (AD0001) when an array value is passed to an attribute after a @for loop | open | davidnmbond | <https://github.com/dotnet/aspnetcore/issues/70492> |
| Issue | #70493 | Open redirect fix #66961 not backported to release/10.0: scheme-relative Location still emitted on .NET 10 LTS | open | HuyTran2503 | <https://github.com/dotnet/aspnetcore/issues/70493> |
| Issue | #70462 | [release/11.0] Quarantine server window-scroll true/true row: initial item is missing | open | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/70462> |
| Issue | #70392 | WebViewJSRuntime / JSRuntime never cancels or faults in-flight _pendingTasks when disconnected | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70392> |
| Issue | #70439 | Microsoft.Extensions.ApiDescription.Server version 10.0.15 throws TypeInitializationException on build | open | codingfreak | <https://github.com/dotnet/aspnetcore/issues/70439> |
| Issue | #70425 | [Blazor] Component diagnostics for agents tracking issue | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70425> |
| Issue | #70435 | [API Proposal] Span-based formatting for ContentDispositionHeaderValue | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70435> |
| Issue | #70424 | [Blazor] Agent development cost tracking issue | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70424> |
| Issue | #70434 | Introduce generated discovery and application composition for Blazor | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70434> |
| Issue | #70432 | Make Blazor component descriptor serialization Native AOT and trimming compatible | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70432> |
| Issue | #70390 | [Blazor] Interactive server component added while the circuit's first UpdateRootComponents is still pending is never rendered ("Cannot update existing state: previous state has not been cleared") | open | ricky-ff | <https://github.com/dotnet/aspnetcore/issues/70390> |
| Issue | #70431 | Integrate persistent component state with the Blazor serialization contract | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70431> |
| Issue | #70430 | Make Blazor session value serialization Native AOT and trimming compatible | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70430> |
| Issue | #70428 | Make Blazor TempData value serialization Native AOT and trimming compatible | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70428> |
| Issue | #70329 | [API Proposal] Add MessageChannel and BroadcastChannel support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/70329> |
| Issue | #70423 | [Blazor] MCP Apps tracking issue | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70423> |
| Issue | #70422 | [Blazor] Prototype A2UI support with build-time Razor generation | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70422> |
| Issue | #70391 | [Blazor] Server: an enhanced navigation made before the circuit's renderer attaches never reaches it; NavigationManager.Uri stays on the start address | open | ricky-ff | <https://github.com/dotnet/aspnetcore/issues/70391> |
| Issue | #70393 | Renderer.Dispose does not clear _eventBindings or cascading parameter subscriptions, retaining disposed components | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70393> |
| Issue | #70416 | [SignalR] ExecuteInvocation skips CleanupInvocation when the invocation ID is already in use | open | 8e88no12-creator | <https://github.com/dotnet/aspnetcore/issues/70416> |
| Issue | #70406 | FieldIdentifier.Create throws ArgumentException when an indexer argument is a captured long, Guid or other non-int value type | open | khuongntrd | <https://github.com/dotnet/aspnetcore/issues/70406> |
| Issue | #70409 | Virtualize stops loading earlier variable-height items after appending and scrolling to the end | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/70409> |
| Issue | #70412 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/70412> |
| Issue | #70368 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/70368> |
| Issue | #70351 | [Backport request] Kestrel accepts Content-Length with a leading '+' on release/10.0 (fixed in main by #67635) | closed | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70351> |
| Issue | #70408 | Expose an API to explicitly refresh authentication for a Blazor Server circuit | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/70408> |
| Issue | #70407 | Add a format-agnostic, composable Blazor serialization contract | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70407> |
| Issue | #70405 | [Blazor] Components.AI tracking issue | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/70405> |
| Issue | #70404 | Introduce generated binding-target metadata for Blazor forms | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70404> |
| Issue | #70403 | Make Blazor attribute binding conversion Native AOT and trimming compatible | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70403> |
| Issue | #70326 | [Design proposal] Automatic AbortSignal and CancellationToken argument marshalling | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70326> |
| Issue | #70395 | Kestrel WebTransport never releases finished streams: session stalls after 100 streams and leaks ~3.7 KB per stream | open | JohnGalt1717 | <https://github.com/dotnet/aspnetcore/issues/70395> |
| Issue | #70396 | Kestrel HTTP/3: a peer reset of a not-yet-identified bidirectional stream faults the whole connection | open | JohnGalt1717 | <https://github.com/dotnet/aspnetcore/issues/70396> |
| Issue | #70372 | [Blazor] Transparent service invocation across Interactive Server and WebAssembly render modes | closed | nkarg90 | <https://github.com/dotnet/aspnetcore/issues/70372> |
| Issue | #70330 | CacheView: second and later requests return HTTP 500 when a cached child declares @rendermode on its own type | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70330> |
| Issue | #70360 | [Review agent] Calibrate Blazor DI scope teardown IJSObjectReference disposal findings (#69970, #70340) | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70360> |
| Issue | #70327 | [API Proposal] Automatically marshal AbortSignal and CancellationToken arguments | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70327> |
| Issue | #70394 | Blazor Hybrid Windows publish still copies precompressed .gz and .br assets from referenced RCLs into publish/wwwroot | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70394> |
| Issue | #70399 | Blazor Web Worker template imports JavaScript initializers into the worker | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/70399> |
| Issue | #70384 | Kestrel WebTransport rejects RFC 9297 clients: H3_DATAGRAM uses draft codepoint 0xffd277 instead of 0x33 | open | JohnGalt1717 | <https://github.com/dotnet/aspnetcore/issues/70384> |
| Issue | #70386 | Kestrel WebTransport completes a client unidirectional stream's reader at FIN, before the app reads buffered data | open | JohnGalt1717 | <https://github.com/dotnet/aspnetcore/issues/70386> |
| Issue | #70366 | [API Proposal]: Opt-in explicit server certificate chain presentation in Kestrel | open | halter73 | <https://github.com/dotnet/aspnetcore/issues/70366> |
| Issue | #70370 | Revalidate redirects after expanding `PathBase` | open | elinor-fung | <https://github.com/dotnet/aspnetcore/issues/70370> |
| Issue | #70332 | SignalR stateful reconnect: keep-alive ping can keep holding `HubConnectionContext._writeLock` after reconnect/disconnect | open | elinor-fung | <https://github.com/dotnet/aspnetcore/issues/70332> |
| Issue | #70331 | IIS in-process: response silently truncated after first flush when a System.Web module subscribes to PreSendRequestContent | open | m0nkey653 | <https://github.com/dotnet/aspnetcore/issues/70331> |
| Issue | #70365 | Introduce Microsoft.AspNetCore.FormData with source-generated form binding | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70365> |
| Issue | #70364 | Support Native AOT and full trimming in Blazor | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/70364> |
| Issue | #70363 | [Flakiness triage] Blazor passkey template response-body race | closed | mmitche | <https://github.com/dotnet/aspnetcore/issues/70363> |
| Issue | #70361 | [Review agent] Enforce strict 11-key JSON output from review-candidate-verifier with bounded normalization/retry (#70299, #70340) | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70361> |
| Issue | #70359 | [Review agent] Flag unrelated submodule gitlink pointer changes instead of downgrading them to UNRESOLVED (#70340) | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70359> |
| Issue | #70358 | [API Proposal] Span-based Protect/Unprotect on ITimeLimitedDataProtector | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70358> |
| Issue | #70357 | [API Proposal] Span-based Unprotect/TryProtect on ISecureDataFormat<TData> | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70357> |
| Issue | #70349 | [OpenTelemetry] Support opt-in capture of request and response headers | open | stevejgordon | <https://github.com/dotnet/aspnetcore/issues/70349> |
| Issue | #70342 | `Grpc.JsonTranscoding` `GetDurationText` unreachable branch / incorrect validation via `IsNormalized` due `toTimestamp` validator reuse | open | AristidesASm | <https://github.com/dotnet/aspnetcore/issues/70342> |
| Issue | #70337 | [Review agent] Check cross-render-mode event-ordering differences when synchronous WebAssembly handlers call NavigationManager.NavigateTo on links | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70337> |
| Issue | #70336 | [Review agent] Require exact test-endpoint reachability and non-copied fixture delta before keeping test-asset findings | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70336> |
| Issue | #70335 | [Review agent] Pass PR description and linked issue context to review-candidate-verifier to avoid false intent-downgrade questions | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70335> |
| Issue | #70325 | SignalR: keep-alive ping and stateful reconnect ack race on Transport.Output, corrupting the stream | open | tomaskovarik | <https://github.com/dotnet/aspnetcore/issues/70325> |
| Issue | #70291 | `JsonPatch<TModel>` should escape the given expression | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70291> |
| Issue | #69093 | VirtualizationTest.InitialIndex_PendingGrowth_TallItemsBeforeTarget の flaky test 隔離 | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69093> |
| Issue | #60141 | Quarantine Microsoft.AspNetCore.Server.HttpSys.FunctionalTests.DelegateTests.DelegateAfterReceiverRestart | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/60141> |
| Issue | #67340 | Quarantine Microsoft.AspNetCore.Mvc.FunctionalTests.RealServerUsingMinimalBackedIntegrationTests.CanResolveServices | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67340> |
| Issue | #70053 | Identity API /manage/2fa ignores IdentityResult from SetTwoFactorEnabledAsync | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/70053> |
| Issue | #68215 | Missing release notes for SignalR TS client v10 | closed | vladislav-karamfilov | <https://github.com/dotnet/aspnetcore/issues/68215> |
| Issue | #70233 | [Review agent] Incorrect instrument-duplication claim and ineffective test fix on #70174 | closed | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70233> |
| Issue | #70232 | [Review agent] False positive: MessagePack count validation ignored on #70143 | closed | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70232> |
| Issue | #70300 | Kestrel method pseudoheader parsing throws for short names with non-ASCII starts | closed | hoyosjs | <https://github.com/dotnet/aspnetcore/issues/70300> |
| Issue | #69947 | Nullable type param warns on use with other parameters (razor components) | closed | stbau04 | <https://github.com/dotnet/aspnetcore/issues/69947> |
| Issue | #70269 | [Review agent] Distinguish primary errors from newly suppressed secondary failures (#69445) | closed | maraf | <https://github.com/dotnet/aspnetcore/issues/70269> |
| Issue | #68852 | Quarantine VirtualizeTest.ScrollToIndexAsync_CancellationCancelsProviderRequest | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68852> |
| Issue | #67342 | RedirectionTest の外部 redirect 関連 flaky test 隔離 | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67342> |
| Issue | #68814 | [Validation] Building and publishing a Blazor Hybrid app with its own JavaScript modules | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68814> |
| Issue | #69177 | [Validation] Replacing property injection with a custom IComponentPropertyActivator | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69177> |
| Issue | #69527 | [Validation] Async field validation while editing a form | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69527> |
| Issue | #68813 | [Validation] Blazor Hybrid teardown while JavaScript calls are in flight | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68813> |
| Issue | #68481 | [Validation] C# unions across JavaScript interop | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68481> |
| Issue | #69494 | BlazorWebTemplate_ConditionalPasskeyRegistration reads response body after navigation | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/69494> |
| Issue | #45951 | Blazor TextArea Not Updating | closed | Kevin-Andrew | <https://github.com/dotnet/aspnetcore/issues/45951> |
| Issue | #47164 | View Transitions API with Blazor WASM | closed | Erakx | <https://github.com/dotnet/aspnetcore/issues/47164> |
| Issue | #69673 | Default Blazor Web App emits SectionRenderModeMismatch warning for Counter PageTitle | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69673> |
| Issue | #61670 | Retry Microsoft.AspNetCore.ResponseCaching.Tests.CachedResponseBodyTests.Copy_SingleSegment | closed | radical | <https://github.com/dotnet/aspnetcore/issues/61670> |
| Issue | #69838 | Blazor Server: RemoteJSDataStream is orphaned and ends the circuit when sendJSDataStream initiation throws | closed | paulszabo-cmyk | <https://github.com/dotnet/aspnetcore/issues/69838> |
| Issue | #55892 | Backport #52687 to .NET8 | closed | ScarletKuro | <https://github.com/dotnet/aspnetcore/issues/55892> |
| Issue | #45618 | [Blazor] NavigationLock LocationChangingContext CancellationToken cancelled every time navigation location changes | closed | pantoast | <https://github.com/dotnet/aspnetcore/issues/45618> |
