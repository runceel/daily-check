# dotnet/aspnetcore

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 22 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 16 |
| 新規 Issue                 | 13 |
| クローズ Issue             | 12 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` （PR / merged / DeagleGross）
  フォーム処理で従来の自動 CSRF 拒否に依存している利用者は、`IAntiforgeryValidationFeature` を参照した明示的な拒否処理へ実装を見直す必要があります。
- **⚠ セキュリティ** [#67280](https://github.com/dotnet/aspnetcore/pull/67280) — [release/10.0] Add reference to System.Security.Cryptography.Xml in RepoTasks （PR / merged / wtgodbe）
  release/10.0 のビルド/配布を担当するチームは、暗号関連依存の追加に伴うビルド再現性・脆弱性スキャン結果を確認してください。

## 主要な変更点

- **破壊的変更**として、Antiforgery/CSRF の拒否タイミングがフレームワーク内即時拒否からフォーム利用側の判断へ寄る方向に変更されました（#67082）。  
- セキュリティ/供給網観点では、release/10.0 系で `System.Security.Cryptography.Xml` 参照が追加され、ビルド基盤の依存管理が更新されています（#67280）。  
- 期間内は NativeAOT 関連のビルド競合対策やトークン漏えいログのスクラブなど、CI 安定化・安全化のメンテナンス PR が目立ちました。  
- Blazor ではフォーム検証・QuickGrid・プリレンダー関連の改善/不具合修正が継続し、UI/開発体験の改善が進行中です。  
- 新規 Issue では passkey/passwordless 対応や SignalR 再接続の堅牢化など、認証・リアクティブ機能の次段階検討が活発です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67327 | Fully dedupe aspnetcoretools build to fix NativeAOT sourcelink race | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67327> |
| PR | #67322 | Scrub leaked tokens from test-quarantine Part 1 output | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67322> |
| PR | #67320 | Fix NativeAOT tool build race in NativeAot.Tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67320> |
| PR | #67319 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 5f63985fe82894604956e653d43c161ebbc1b576 to f9ac0f477422ae5fffb6efd428666e28ee23049c | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67319> |
| PR | #67318 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 5f63985fe82894604956e653d43c161ebbc1b576 to f9ac0f477422ae5fffb6efd428666e28ee23049c | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67318> |
| PR | #67317 | [main] (deps): Bump actions/checkout from 6.0.3 to 7.0.0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67317> |
| PR | #67309 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67309> |
| PR | #67296 | Verify Blazor union support; fix prerendering of unions with a null active case | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67296> |
| PR | #67290 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67290> |
| PR | #67282 | Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67282> |
| PR | #67280 | [release/10.0] Add reference to System.Security.Cryptography.Xml in RepoTasks | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67280> |
| PR | #67275 | [release/10.0] Update Selenium and Playwright versions to match main | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67275> |
| PR | #67267 | Break Blazor WASM OTLP DI cycle with lazy logger resolution | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67267> |
| PR | #67263 | [test-quarantine] Unquarantine BlazorWebJsInitializersTest.InitializersRunsModernCallbacksByDefaultWhenPresent | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67263> |
| PR | #67262 | [test-quarantine] Unquarantine ServerVirtualizationTest.DynamicContent_PrependItemsWhileScrolledToMiddle_VisibleItemsStayInPlace | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67262> |
| PR | #67253 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67253> |
| PR | #67250 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67250> |
| PR | #67249 | Add short circuit attribute | merged | Porozhniakov | <https://github.com/dotnet/aspnetcore/pull/67249> |
| PR | #67190 | Opt pooled async methods out of runtime async | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67190> |
| PR | #67130 | Separate media components into Microsoft.AspNetCore.Components.Media package | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67130> |
| PR | #67082 | [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67082> |
| PR | #66808 | Batch small Helix work items to reduce per-item overhead (-53% compute) | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/66808> |
| PR | #67294 | 1032820: Add type-safe navigation to NavigationManager | closed | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/67294> |
| PR | #67292 | Remove redundant ToArray. | closed | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67292> |
| PR | #67264 | Fix Blazor Replacing EditForm Model causes component destruction | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67264> |
| PR | #67328 | [release/9.0] Update dependencies from dotnet/source-build-assets | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67328> |
| PR | #67325 | Generate test certificates at runtime | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67325> |
| PR | #67324 | Improve Blazor SSR client-side form validation | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67324> |
| PR | #67323 | Improve Blazor async form validation | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67323> |
| PR | #67321 | TEMPORARY: trace MSB3030 copy-race (dotnet/msbuild#12927) | open | OvesN | <https://github.com/dotnet/aspnetcore/pull/67321> |
| PR | #67316 | [main] (deps): Bump src/submodules/googletest from `7140cd4` to `0b1e895` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67316> |
| PR | #67315 | [main] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67315> |
| PR | #67314 | QuickGrid: Add active filter indicator for ColumnOptions button | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67314> |
| PR | #67313 | API review rename of `AnchorMode` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67313> |
| PR | #67312 | API review rename of `InitialIndex` and `ScrollToIndexAsync` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67312> |
| PR | #67310 | Fix Inconsistent behavior occurs when using @bind and @bind-value in input date type | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67310> |
| PR | #67307 | Fix cross-origin POST to a named CORS policy wrongly rejected by default CSRF protection | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67307> |
| PR | #67303 | 1029637: Added Grid Layout Support to Virtualize Component with ItemWidth and ItemHeight | open | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/67303> |
| PR | #67295 | Fix child prerender=false being ignored when parent is prerendered | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67295> |
| PR | #67293 | QuickGrid: Add OnDataLoading and OnDataLoaded events | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67293> |
| PR | #67291 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67291> |
| Issue | #67329 | Signals (Reactivity Components) for Blazor Interactive Render Modes | open | linkdotnet | <https://github.com/dotnet/aspnetcore/issues/67329> |
| Issue | #67326 | RequireRateLimiting(IRateLimiterPolicy<T>) inline policies share a partition-key namespace, causing cross-policy partition collisions | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67326> |
| Issue | #67311 | Harden SignalR stateful reconnect with different NameIdentifier by rejecting it instead of only logging it | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67311> |
| Issue | #67308 | InputCheckbox inside QuickGrid has 2 observed bugs: Stuck in Checked Position, and databinding not working as expected | open | htmlsplash | <https://github.com/dotnet/aspnetcore/issues/67308> |
| Issue | #67306 | [Blazor] Analyzer to warn about JSInterop calls not wrapped in a try catch block | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67306> |
| Issue | #67305 | Flaky: ComponentsMetricsTest.FailParametersSync_RecordsErrorMetric (timing-sensitive duration assertion) | closed | mmitche | <https://github.com/dotnet/aspnetcore/issues/67305> |
| Issue | #67304 | HealthCheckPublisherHostedService.StopAsync uses Timer.Dispose() instead of the overload that waits for a running callback | open | youribroskij | <https://github.com/dotnet/aspnetcore/issues/67304> |
| Issue | #67302 | Update `Microsoft.AspNetCore.Identity.UI` to support the same passkey UI that got added to the Blazor Web App template | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67302> |
| Issue | #67301 | Update `MapIdentityApi()` to add endpoints for passkeys | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67301> |
| Issue | #67300 | Make it easy to configure [well-known passkey endpoints](https://w3c.github.io/webappsec-passkey-endpoints/passkey-endpoints.html) so that authenticators can automatically upgrade passwords to passkeys without requiring the customer to visit the site | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67300> |
| Issue | #67299 | Use the [signals API](https://developer.chrome.com/docs/identity/webauthn-signal-api) to, e.g., inform the authenticator when a passkey was revoked so it doesn't get presented to the user as an option when signing in | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67299> |
| Issue | #67298 | Support [conditional create](https://developer.chrome.com/docs/identity/webauthn-conditional-create) to allow the user to seamlessly upgrade a password to a passkey after signing in | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67298> |
| Issue | #67297 | Support passwordless account creation | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67297> |
| Issue | #67193 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67193> |
| Issue | #67124 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67124> |
| Issue | #67096 | Documentation on unions support in aspnetcore | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67096> |
| Issue | #67081 | Investigate CSRF usage in Blazor | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67081> |
| Issue | #66548 | Blazor: Verify union types work in component parameters and JSInterop | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66548> |
| Issue | #66439 | [blazor][wasm] adopt download() runtime API for render mode auto | closed | pavelsavara | <https://github.com/dotnet/aspnetcore/issues/66439> |
| Issue | #66308 | Quarantine ServerVirtualizationTest.DynamicContent_PrependItemsWhileScrolledToMiddle_VisibleItemsStayInPlace is flaky | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66308> |
| Issue | #66307 | Quarantine BlazorWebJsInitializersTest.InitializersRunsModernCallbacksByDefaultWhenPresent is flaky | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66307> |
| Issue | #60235 | Short circuit attribute | closed | Porozhniakov | <https://github.com/dotnet/aspnetcore/issues/60235> |
| Issue | #49418 | Change IJSObjectReference.Dispose specifically so that it deals with catching and discarding JSDisconnectedException internally | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/49418> |
| Issue | #49181 | Short circuit attribute | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/49181> |
