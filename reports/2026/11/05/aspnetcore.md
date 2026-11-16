# dotnet/aspnetcore

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 60 |
| クローズ (未マージ) PR     | 16 |
| 新規 PR (オープン中)       | 126 |
| 新規 Issue                 | 35 |
| クローズ Issue             | 16 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#44873](https://github.com/dotnet/aspnetcore/pull/44873) — Remove default logging scope from ASP.NET Core （PR / closed / davidfowl）
  この PR はクローズ済みで、この期間のリリース変更ではありません。将来同様の変更が提案された場合に備え、既定 logging scope に依存するログ解析がないか確認してください。
- **⚠ 破壊的変更** [#38824](https://github.com/dotnet/aspnetcore/issues/38824) — Blazor server InputFile not properly handling exceptions （Issue / open / Davey-Rodriguez）
  Blazor Server の `InputFile` で例外処理に問題があるとの未解決報告です。ファイル入力を扱うアプリの担当者は、例外時の UI / 回復動作を確認し、Issue の修正状況を追跡してください。
- **⚠ セキュリティ** [#70175](https://github.com/dotnet/aspnetcore/pull/70175) — Cache SecurityStampValidator logger per ILoggerFactory （PR / open / davidfowl）
- **⚠ セキュリティ** [#69955](https://github.com/dotnet/aspnetcore/pull/69955) — Do not emit or traverse non-security-enabled groups in Negotiate LDAP claims （PR / open / rokonec）
  Negotiate 認証で LDAP claim を利用する管理者は、security-enabled でない group を claim に含めない提案の挙動と権限要件を確認してください（PR はオープン中）。
- **⚠ セキュリティ** [#69867](https://github.com/dotnet/aspnetcore/issues/69867) — Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. （Issue / closed / jinzhao1127）
  .NET 10 SQL Server プロジェクト作成時の `System.Security.Cryptography.Pkcs` 9.0.11 脆弱性報告はクローズ済みです。該当テンプレートを使う開発者は、解決済みの package version を含む SDK / template を利用しているか確認してください。
- **⚠ セキュリティ** [#69559](https://github.com/dotnet/aspnetcore/pull/69559) — [Security] Avoid boxing the authorization metrics tag （PR / open / martincostello）

## 主要な変更点

- ASP.NET Core 内の HTTP、認可、SignalR、静的アセット、Razor / Blazor で、要求ごとの割り当てや不要な処理を減らす性能改善が多数マージされました（例: #70220、#70190、#70170、#70136）。
- Kestrel の HTTP/3 動的テーブル header 値に改行文字が含まれるケースを検証する修正（#70202）が入りました。
- Blazor WebAssembly の `AuthorizationMessageHandler` における token 処理（#70106）や QuickGrid のアクセシビリティ関連修正（#70020、#70022）がマージされました。
- Negotiate LDAP claims の security-enabled group 制御は提案中（#69955）です。採用を検討する場合は認証・認可要件を確認してください。
- Blazor Server `InputFile` の例外処理問題（#38824）は未解決の Issue です。該当機能を使うアプリは修正状況を継続確認してください。
- その他、証明書認証キャッシュのキー破損修正（#69280）や Project Components の E2E 境界改善（#70271）がマージされています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70271 | Project Components permanent E2E boundary and preserve verifier candidate claims | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70271> |
| PR | #70272 | Localized file check-in by OneLocBuild Task: Build definition ID 1159: Build ID 3126510 | merged | dotnet-oneloc-localization[bot] | <https://github.com/dotnet/aspnetcore/pull/70272> |
| PR | #69280 | Fix certificate auth cache key corrupted by reentrant scheme calls | merged | Selahattinozdmr | <https://github.com/dotnet/aspnetcore/pull/69280> |
| PR | #70265 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70265> |
| PR | #70287 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70287> |
| PR | #69925 | Add URL and URLSearchParams browser platform APIs | merged | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/69925> |
| PR | #70263 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70263> |
| PR | #70220 | Cache the absence of authorization metadata in AuthorizationMiddleware | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70220> |
| PR | #70190 | Avoid parsing the Accept header on non-SSE SignalR connection GETs | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70190> |
| PR | #70170 | Reduce per-request work in StaticAssetsInvoker | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70170> |
| PR | #70136 | Use ulong.TryFormat for Content-Length values >= 1000 in Kestrel | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70136> |
| PR | #70119 | Add allocation-free fast path to HasJsonContentType | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70119> |
| PR | #70127 | Reduce allocations in DefaultLinkGenerator | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70127> |
| PR | #70221 | Avoid ClaimsPrincipal.Claims iterator allocations in ClaimsAuthorizationRequirement | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70221> |
| PR | #70161 | Avoid allocating HttpContext.Items in hosting RequestEnd | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70161> |
| PR | #70149 | Skip streaming-type reflection for primitive SignalR client arguments | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70149> |
| PR | #70134 | Avoid LINQ and intermediate strings in SetCommaSeparatedValues | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70134> |
| PR | #70162 | Kestrel: vectorize query string end search in HTTP/1.1 request line parsing | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70162> |
| PR | #70212 | Select Razor Pages handlers without allocating a candidate list | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70212> |
| PR | #70106 | Fix token handling in Blazor WebAssembly AuthorizationMessageHandler | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/70106> |
| PR | #70250 | Add candidate verifier agent with tiered intent handling to review-pull-request | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70250> |
| PR | #70125 | Write RenderBatchWriter frames and edits as single fixed-size records | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70125> |
| PR | #70246 | Reuse RenderBatchWriter across render batches in RemoteRenderer | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70246> |
| PR | #70256 | Harden PR review binary bundle preparation and restore source-only hosted execution | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70256> |
| PR | #70243 | Use End in the variable-height table test | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/70243> |
| PR | #70240 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70240> |
| PR | #70108 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70108> |
| PR | #69557 | [SignalR] Reduce hub invocation activity overhead | merged | martincostello | <https://github.com/dotnet/aspnetcore/pull/69557> |
| PR | #70202 | Validate newline chars in HTTP/3 dynamic-table header values | merged | earbona23 | <https://github.com/dotnet/aspnetcore/pull/70202> |
| PR | #70121 | Vectorize skipping of empty values in header list parsing | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70121> |
| PR | #70244 | Fix CsWin32 update workflow NuGet MCP tool name | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/70244> |
| PR | #69945 | Fix malformed default URL for Blazor WebAssembly B2C instance | merged | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/69945> |
| PR | #70087 | Enable adaptive validation in hosted PR reviews | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70087> |
| PR | #70113 | [main] (deps): Bump src/submodules/googletest from `cd8e73f` to `a8380b0` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70113> |
| PR | #70115 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 8e37f0f5f6447a190988e888821f2e8d802f5be7 to af144b37e5910c6d28b516bd9b6ea2c4a75c95ae | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70115> |
| PR | #70114 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 8e37f0f5f6447a190988e888821f2e8d802f5be7 to af144b37e5910c6d28b516bd9b6ea2c4a75c95ae | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70114> |
| PR | #70088 | Fix TempData persistence test navigation race | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70088> |
| PR | #70020 | Expose QuickGrid column-options expanded state | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70020> |
| PR | #70022 | Fix virtualized QuickGrid ARIA row count | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70022> |
| PR | #70305 | Use h1 heading in Blazor NotFound.razor template page | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70305> |
| PR | #70062 | [StaticAssets] Avoid caching responses for missing manifest assets | merged | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/70062> |
| PR | #69445 | Log AgentContext processing exceptions | merged | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/69445> |
| PR | #70239 | [release/11.0] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70239> |
| PR | #70277 | [release/11.0] Fix TempData persistence test navigation race | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70277> |
| PR | #70093 | [release/11.0] Give QuickGrid paginator navigation an accessible name | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70093> |
| PR | #70282 | [release/10.0] Shard Mono Components E2E tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70282> |
| PR | #70286 | [release/11.0] Shard Mono Components E2E tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70286> |
| PR | #70284 | [release/10.0] Split CI into independently retryable stages | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70284> |
| PR | #70273 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70273> |
| PR | #70285 | [release/11.0] Shard MVC template tests on Helix | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70285> |
| PR | #70283 | [release/11.0] Split CI into independently retryable stages | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70283> |
| PR | #70264 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70264> |
| PR | #69973 | [release/11.0] Fix AutoPause JS initializer fingerprinting | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69973> |
| PR | #70019 | [release/11.0] Fix Virtualize jumping away rom the bottom | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70019> |
| PR | #70068 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70068> |
| PR | #70215 | [release/10.0] (deps): Bump src/submodules/googletest from `b66cffc` to `a8380b0` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70215> |
| PR | #70107 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70107> |
| PR | #70216 | [release/11.0] (deps): Bump src/submodules/googletest from `b66cffc` to `a8380b0` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70216> |
| PR | #70242 | [Blazor] Fix Endpoints linker substitution assembly name | merged | maraf | <https://github.com/dotnet/aspnetcore/pull/70242> |
| PR | #70104 | [release/10.0] Update Microsoft.Identity.Web to 3.16.0 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70104> |
| PR | #70238 | Add review-pull-request reviewer regression Vally suite | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70238> |
| PR | #69775 | Load Blazor WebAssembly appsettings in-memory without VFS | closed | jkoritzinsky | <https://github.com/dotnet/aspnetcore/pull/69775> |
| PR | #70160 | Vectorize FastPathTokenizer | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70160> |
| PR | #70289 | Fix @onclick:preventDefault not being respected by Blazor enhanced navigation | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70289> |
| PR | #70261 | Unquarantine TempData cookie persistence test | closed | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70261> |
| PR | #67519 | [test-quarantine] Quarantine Microsoft.AspNetCore.Identity.Test.UserManagerTest | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67519> |
| PR | #67520 | [test-quarantine] Quarantine Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67520> |
| PR | #67521 | [test-quarantine] Unquarantine RazorRuntimeCompilationHostingStartupTest (issue #56553) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67521> |
| PR | #70055 | Add trace-aware pull request review evals | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70055> |
| PR | #67585 | Improve diagnostic logging for ComponentState lifecycle transitions | closed | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/67585> |
| PR | #70205 | Add reviewer concurrency capability eval | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70205> |
| PR | #70198 | Avoid a StreamReader per multipart form value in ReadAsStringAsync | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70198> |
| PR | #70196 | Skip MediaTypeHeaderValue parsing for common JSON request content types | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70196> |
| PR | #70194 | Avoid per-line MemoryStream allocation in BufferedReadStream.ReadLine | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70194> |
| PR | #70144 | Avoid resolving the default hub activator from DI for every hub invocation | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70144> |
| PR | #44873 | Remove default logging scope from ASP.NET Core | closed | davidfowl | <https://github.com/dotnet/aspnetcore/pull/44873> |
| PR | #70318 | Add compact review-pull-request Vally evaluation suite and staging support | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70318> |
| PR | #70308 | Preserve FocusOnNavigate focus when interactive component replaces prerendered DOM | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70308> |
| PR | #70319 | Refine review-candidate-verifier rules for external triggers, test gaps, and secondary-failure catches | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70319> |
| PR | #70274 | Stabilize CacheTagHelper concurrent awaiter tests | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70274> |
| PR | #70279 | Fix WebHost logging configuration test isolation | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70279> |
| PR | #70280 | Stabilize SignalR authentication refresh tests | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70280> |
| PR | #70312 | Improve reviewer handling of secondary failure suppression | open | maraf | <https://github.com/dotnet/aspnetcore/pull/70312> |
| PR | #70248 | Add keyboard navigation and row activation to QuickGrid | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70248> |
| PR | #70258 | Stabilize Blazor Web JS initializer tests | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70258> |
| PR | #70112 | Fix reconnect UI stuck after ConnectCircuit/ResumeCircuit failure | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/70112> |
| PR | #70317 | [Blazor] Read WebAssembly appsettings through runtime APIs | open | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/70317> |
| PR | #70281 | Stabilize HTTP/2 stream pooling test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70281> |
| PR | #70293 | Stabilize hostname address registration tests | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70293> |
| PR | #70288 | Stabilize old protocol stateful reconnect test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70288> |
| PR | #70292 | Stabilize LongPolling HTTP/2 cleanup test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70292> |
| PR | #70294 | Stabilize IIS child process restart test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70294> |
| PR | #70234 | Fix RDG handling of failed form antiforgery validation | open | DamianEdwards | <https://github.com/dotnet/aspnetcore/pull/70234> |
| PR | #70313 | Allow draft PRs to defer originating and API proposal issues | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/70313> |
| PR | #70315 | Don't add the value in JsonPatch move when removing it from 'from' fails | open | ewerton336 | <https://github.com/dotnet/aspnetcore/pull/70315> |
| PR | #70314 | Add MCP Apps hosting for Blazor AI content | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/70314> |
| PR | #70310 | Fix signedness disagreement in ILEmitTrieFactory | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70310> |
| PR | #70270 | Preserve matching prerendered DOM during interactive activation | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/70270> |
| PR | #70311 | Blazor event debounce and throttling prototype | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/70311> |
| PR | #70309 | [release/11.0] Use h1 heading in Blazor NotFound.razor template page | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70309> |
| PR | #70306 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70306> |
| PR | #70302 | [release/11.0] [StaticAssets] Avoid caching responses for missing manifest assets | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70302> |
| PR | #70304 | [Blazor Hybrid] Guard HandleComponentException after renderer disposal | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/70304> |
| PR | #70142 | Avoid allocating the target string per invocation received by the .NET SignalR client | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70142> |
| PR | #70299 | Fix @OnClick:preventDefault not being respected by Blazor enhanced navigation  | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/70299> |
| PR | #70303 | Add Razor component hosting for MCP Apps | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/70303> |
| PR | #70301 | Guard Kestrel method hash against non-ASCII starts | open | hoyosjs | <https://github.com/dotnet/aspnetcore/pull/70301> |
| PR | #70295 | Escape typed-JsonPatchDocument path in JsonPatch | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/70295> |
| PR | #70298 | Fix HTTP/2 response write timing after flow-control waits | open | hoyosjs | <https://github.com/dotnet/aspnetcore/pull/70298> |
| PR | #70290 | Stabilize stateful reconnect user change test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70290> |
| PR | #70120 | Avoid intermediate allocation when decoding query string names/values | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70120> |
| PR | #70241 | [release/11.0] Keep Blazor Weather table scrolling within the page | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70241> |
| PR | #70111 | [release/11.0] Expose QuickGrid column-options expanded state | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70111> |
| PR | #70110 | [release/11.0] Fix virtualized QuickGrid ARIA row count | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70110> |
| PR | #70200 | Reduce allocations in QueryHelpers.AddQueryString | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70200> |
| PR | #70276 | Avoid HTTP/2 flow-control abort lock inversion | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70276> |
| PR | #70278 | Stabilize HTTP/2 client reset test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70278> |
| PR | #70228 | Use span-based data protection in SecureDataFormat | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70228> |
| PR | #70275 | Stabilize HTTP/2 keep-alive flow-control test | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70275> |
| PR | #70218 | Avoid allocating a token substring when authenticating bearer tokens | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70218> |
| PR | #70175 | Cache SecurityStampValidator logger per ILoggerFactory | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70175> |
| PR | #70174 | Cache Identity UserManager/SignInManager metrics per IMeterFactory | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70174> |
| PR | #70172 | Reduce allocations when serializing authentication tickets | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70172> |
| PR | #70165 | Read authentication tickets directly from the payload buffer | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70165> |
| PR | #70255 | [Hosting] Redact AWSAccessKeyId and Signature | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/70255> |
| PR | #70150 | Coalesce small writes in BufferedTextWriter (static SSR) | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70150> |
| PR | #70139 | Reset BufferedTextWriter char segment buffer between flushes | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70139> |
| PR | #70247 | [release/11.0] [Blazor] Fix Endpoints linker substitution assembly name | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70247> |
| PR | #70109 | Restrict user-jwts signing key file permissions on Unix | open | edu-lvc | <https://github.com/dotnet/aspnetcore/pull/70109> |
| PR | #70117 | Avoid allocating the Content-Length string when writing HTTP/2 and HTTP/3 response headers | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70117> |
| PR | #70176 | Reduce per-request allocations in W3CLoggingMiddleware | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70176> |
| PR | #70152 | Skip processing lower-priority candidates once a match is found in DfaMatcher | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70152> |
| PR | #70260 | Validate SignalR Java MessagePack binary lengths before allocation | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/70260> |
| PR | #70118 | Reuse Http3RawFrame across pooled HTTP/3 streams | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70118> |
| PR | #70130 | Lazily allocate TemplateInfo visited objects set | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70130> |
| PR | #70126 | Skip ValidationContext allocation for valid values of built-in DataAnnotations attributes | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70126> |
| PR | #70181 | Pre-size the HttpLogging parameter lists | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70181> |
| PR | #70128 | Reduce per-render allocations in RazorPage, RazorView and RazorViewEngine | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70128> |
| PR | #70178 | Reduce per-request allocations and CPU in RewriteMiddleware | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70178> |
| PR | #70173 | Reduce per-request allocations in StaticFileMiddleware | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70173> |
| PR | #70183 | Materialize trimmed [Authorize] roles once in AuthorizationPolicy.CombineAsync | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70183> |
| PR | #70164 | Avoid StreamReader allocations in MultipartSection.ReadAsStringAsync | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70164> |
| PR | #70148 | Reduce allocations in output/response caching key generation and policy collection | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70148> |
| PR | #70180 | Skip the endpoint rate limiter when the endpoint has no rate limiting policy | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70180> |
| PR | #70137 | Avoid per-header allocations in SignalR hub protocols | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70137> |
| PR | #70147 | Avoid enumerator allocations when evaluating authorization handlers | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70147> |
| PR | #70177 | Avoid per-request allocations in ForwardedHeadersMiddleware | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70177> |
| PR | #70131 | Lazily allocate and right-size the model binding state stack | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70131> |
| PR | #70145 | Reduce allocations in CorsService.EvaluatePolicy | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70145> |
| PR | #70123 | Add WSLC hostname to HTTPS development certificates | open | afscrome | <https://github.com/dotnet/aspnetcore/pull/70123> |
| PR | #70182 | Avoid Split/ToArray allocations in ContentDispositionHeaderValue MIME decoding | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70182> |
| PR | #70203 | Reuse a cached StringBuilder when formatting header values | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70203> |
| PR | #70227 | Speed up Base32.FromBase32 decoding for authenticator keys | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70227> |
| PR | #70226 | Speed up TOTP validation by reusing the HMAC and input buffer across timesteps | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70226> |
| PR | #70225 | Avoid an extra task allocation in DefaultAuthorizationServiceImpl.AuthorizeAsync | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70225> |
| PR | #70209 | Avoid sorting small PrefixContainer key sets in value providers | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70209> |
| PR | #70224 | Reduce per-call overhead in UserValidator | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70224> |
| PR | #70223 | Avoid LINQ and allocations in PasswordValidator | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70223> |
| PR | #70222 | Reduce UserManager construction cost | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70222> |
| PR | #70211 | Avoid ViewLocationExpanderContext allocations on Razor view lookup cache hits | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70211> |
| PR | #70210 | Avoid per-parameter validation allocations for simple models | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70210> |
| PR | #70204 | Avoid StringBuilder when encoding Content-Disposition file names | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70204> |
| PR | #70201 | Avoid parsing common Content-Type values when resolving response encoding | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70201> |
| PR | #70199 | Avoid per-request policy list, enumerator and tag set allocations in OutputCacheMiddleware | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70199> |
| PR | #70197 | Avoid per-response allocations when matching Content-Type in ResponseCompressionProvider | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70197> |
| PR | #70195 | Use exact-size header arrays for output cache entries | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70195> |
| PR | #70193 | Write AES-GCM key modifier and nonce directly into the output buffer | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70193> |
| PR | #70192 | Build the DataProtection AAD template lazily | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70192> |
| PR | #70191 | Avoid intermediate copies in TimeLimitedDataProtector | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70191> |
| PR | #70189 | Allocate the HTTP/3 header encoding buffer on first use | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70189> |
| PR | #70186 | Avoid intermediate substring when unescaping request cookie values | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70186> |
| PR | #70185 | Avoid closure allocations and lock-all Count when adding a SignalR connection to a group | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70185> |
| PR | #70179 | Avoid allocating HttpContext.Items in StatusCodePagesMiddleware when unused | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70179> |
| PR | #70169 | Reduce allocations when serializing DistributedSession | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70169> |
| PR | #70168 | Avoid rebuilding and redundantly cloning OpenAPI schema trees when resolving references | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70168> |
| PR | #70166 | Reduce allocations in output formatter content negotiation | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70166> |
| PR | #70138 | Share per-endpoint candidate data when building the DFA matcher | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70138> |
| PR | #70159 | Reuse work lists in DfaMatcherBuilder.ApplyPolicies | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70159> |
| PR | #70158 | Kestrel: avoid name allocation and extra lookups when appending unknown request headers | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70158> |
| PR | #70157 | Reduce HPACK dynamic table name hashing | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70157> |
| PR | #70156 | Avoid per-line MemoryStream in BufferedReadStream.ReadLine | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70156> |
| PR | #70155 | Reduce allocations in RequestLocalizationMiddleware | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70155> |
| PR | #70151 | Classify element names once in StaticHtmlRenderer | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70151> |
| PR | #70141 | Avoid resolving the default IHubActivator from DI on every hub invocation | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70141> |
| PR | #70143 | Reduce allocations when parsing SignalR MessagePack messages | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70143> |
| PR | #70140 | Use pooled buffer for UTF-8 payload in DotNetDispatcher.EndInvokeJS | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70140> |
| PR | #70146 | Reduce allocations in managed DataProtection protect/unprotect | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70146> |
| PR | #70133 | Avoid redundant dictionary lookups when diffing keyed items | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70133> |
| PR | #70132 | Avoid HashSet and LINQ when selecting a response compression provider | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70132> |
| PR | #70129 | Reduce allocations in MVC model validation | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70129> |
| PR | #70214 | [release/9.0] (deps): Bump src/submodules/googletest from `b66cffc` to `a8380b0` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70214> |
| PR | #70213 | [release/8.0] (deps): Bump src/submodules/googletest from `b66cffc` to `a8380b0` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/70213> |
| PR | #70208 | [release/8.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70208> |
| PR | #70171 | Avoid materializing all custom attributes during OpenAPI schema generation | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70171> |
| PR | #70167 | Reduce allocations in InputTagHelper rendering | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70167> |
| PR | #70153 | Allocate a component's second RenderTreeBuilder on demand | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70153> |
| PR | #70187 | Reduce allocations in DataProtection string Protect/Unprotect | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70187> |
| PR | #70184 | Fast path for HTTP/2 and HTTP/3 :path validation | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70184> |
| PR | #70163 | Avoid parsing Content-Type and allocating Items in HasFormContentType | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70163> |
| PR | #70188 | Cache SignalR stream converter factories instead of reflecting per uploaded stream | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70188> |
| PR | #70154 | Reduce allocations in HttpMethodMatcherPolicy.GetEdges | open | davidfowl | <https://github.com/dotnet/aspnetcore/pull/70154> |
| PR | #70116 | Fix missing binding callback validation with CaptureUnmatchedValues | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/70116> |
| Issue | #70321 | Template `pr-docs-check` as a reusable gh-aw shared component for other dotnet repos | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70321> |
| Issue | #70320 | Loose quotes in razor component attributes crashes app on startup, requesting a compile time error | open | skyslide22 | <https://github.com/dotnet/aspnetcore/issues/70320> |
| Issue | #70231 | Review Agent Failure Tracking | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70231> |
| Issue | #70316 | RDG binds empty query to defaults and drops parameter name on parse fail | open | IvMisticos | <https://github.com/dotnet/aspnetcore/issues/70316> |
| Issue | #70307 | Routing IL Trie should have consistent handling of signedness of keys | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70307> |
| Issue | #70300 | Kestrel method pseudoheader parsing throws for short names with non-ASCII starts | open | hoyosjs | <https://github.com/dotnet/aspnetcore/issues/70300> |
| Issue | #70297 | HTTP/2 response write timing counter can become negative and suppress MinResponseDataRate timeouts | open | hoyosjs | <https://github.com/dotnet/aspnetcore/issues/70297> |
| Issue | #70268 | [Blazor] AuthorizeView should support requirements. | open | LasseHerget | <https://github.com/dotnet/aspnetcore/issues/70268> |
| Issue | #70252 | MVC validation repeatedly traverses shared object graphs without any limit | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/70252> |
| Issue | #70296 | Disposing the host deadlocks when an EndpointDataSource changes during disposal | open | glen-84 | <https://github.com/dotnet/aspnetcore/issues/70296> |
| Issue | #70291 | `JsonPatch<TModel>` should escape the given expression | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70291> |
| Issue | #70235 | [Review agent] False positive: unsupported-concurrency race in AuthorizationMessageHandler on #70106 | closed | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70235> |
| Issue | #70269 | [Review agent] Distinguish primary errors from newly suppressed secondary failures (#69445) | open | maraf | <https://github.com/dotnet/aspnetcore/issues/70269> |
| Issue | #70266 | Blazor WebAssembly boots into a stale page when an enhanced navigation happens during startup | open | 30yowizard | <https://github.com/dotnet/aspnetcore/issues/70266> |
| Issue | #70267 | `ResponseCookies.Append` overloads should all throw `ArgumentException` for invalid cookie names | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/70267> |
| Issue | #70245 | Potential memory leak in Microsoft.AspNetCore.Components.Web.HtmlRenderer | open | adams85 | <https://github.com/dotnet/aspnetcore/issues/70245> |
| Issue | #70219 | ASP.NET Core perf effort: summary of open performance PRs | open | davidfowl | <https://github.com/dotnet/aspnetcore/issues/70219> |
| Issue | #70262 | TestHost: `IRequestBodyPipeFeature` is added mid-request on first `Request.BodyReader` access, racing with gRPC duplex streaming response writes (intermittent NullReferenceException only under TestServer) | open | TakashiArakane | <https://github.com/dotnet/aspnetcore/issues/70262> |
| Issue | #70259 | SignalR Java client allocates binary values before validating MessagePack lengths | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/70259> |
| Issue | #70257 | CertificateAuthenticationHandler: the Name claim and the X500DistinguishedName claim disagree about the subject | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70257> |
| Issue | #70254 | Embedding components in MVC views and Razor Pages with Blazor Web App | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70254> |
| Issue | #70253 | Embedding components in JS apps with Blazor Web App | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/70253> |
| Issue | #70251 | ModelState.IsValid returns true for errors at the default depth boundary | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/70251> |
| Issue | #70249 | Harden MapStaticAssets headers for authorization-gated endpoints | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/70249> |
| Issue | #70236 | .NET 11 regression: malformed linker XML in Components.Endpoints causes IL2101 during trimmed publishing | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/70236> |
| Issue | #70237 | Kestrel HTTP/2 performs only two of the four field validations RFC 9113 8.2.1 requires: a space or a colon in a header name, and leading or trailing whitespace in a value, are accepted | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70237> |
| Issue | #70232 | [Review agent] False positive: MessagePack count validation ignored on #70143 | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70232> |
| Issue | #70233 | [Review agent] Incorrect instrument-duplication claim and ineffective test fix on #70174 | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/70233> |
| Issue | #70230 | ASP.NET Core's Web JSON preset keeps AllowDuplicateProperties enabled, and JsonElement has no case-insensitive lookup, so inspect-then-bind diverges | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70230> |
| Issue | #70229 | Request Delegate Generator returns HTTP 500 instead of 400 for failed form antiforgery validation (.NET 10 and 11 RC3) | open | DamianEdwards | <https://github.com/dotnet/aspnetcore/issues/70229> |
| Issue | #70217 | IResponseCookies.Append: the ReadOnlySpan overload does not validate the cookie name that the other two reject | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70217> |
| Issue | #70207 | Passkey ceremony state is stored in the two-factor cookie, so a passkey ceremony and a pending two-factor sign-in destroy each other | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70207> |
| Issue | #70206 | MapStaticAssets: an asset file name is parsed as a route template, so braces in a name silently add a route parameter or stop the app from starting | open | earbona23 | <https://github.com/dotnet/aspnetcore/issues/70206> |
| Issue | #70124 | Kestrel HTTP/2: a response on a reused pooled stream is never written, because `Http2OutputProducer._isScheduled` stays set after the frame writer drops a completed producer | closed | slakermeister | <https://github.com/dotnet/aspnetcore/issues/70124> |
| Issue | #70122 | Include host.wslc.internal in the HTTPS development certificate | open | afscrome | <https://github.com/dotnet/aspnetcore/issues/70122> |
| Issue | #69273 | Certificate validation cache key is not stable across application event callbacks | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/69273> |
| Issue | #68479 | Blazor Validation Testing Manual | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68479> |
| Issue | #69867 | Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/69867> |
| Issue | #45213 | Revisit hot reload browser refresh script injection | closed | MackinnonBuck | <https://github.com/dotnet/aspnetcore/issues/45213> |
| Issue | #70064 | Blazor WebAssembly debugging fails after update: “Unable to launch browser: Could not connect to debug target … Socket closed before the connection was established” | closed | emschnee | <https://github.com/dotnet/aspnetcore/issues/70064> |
| Issue | #44586 | JSInitializer.importInitializersAsync doesn't respect initializerArguments | closed | T-mp | <https://github.com/dotnet/aspnetcore/issues/44586> |
| Issue | #65738 | [WebToolsE2E] Blazor WebAssembly (Global) project: Page layout breaks after CSS changes and app restart. | closed | v-elenafeng | <https://github.com/dotnet/aspnetcore/issues/65738> |
| Issue | #60351 | Add Tailwind CSS 4.x.x Support to .NET 10 & ASP.NET CORE 10 | closed | AslamNazeerShaikh | <https://github.com/dotnet/aspnetcore/issues/60351> |
| Issue | #44894 | Erroneous `////` in default URL for a blazorwasm template parameter | closed | jdmallen | <https://github.com/dotnet/aspnetcore/issues/44894> |
| Issue | #69962 | Track HTTP/1.1 lazy request-header allocation POC and Crank validation | closed | davidfowl | <https://github.com/dotnet/aspnetcore/issues/69962> |
| Issue | #65530 | Utf8JsonWriter.FlushAsync does not work in IIS on dotnet 10 | closed | erik-kallen | <https://github.com/dotnet/aspnetcore/issues/65530> |
| Issue | #69954 | Microsoft Visual Studio Failed to launch debug adapter "Unable to launch browser" | closed | mathdx1111 | <https://github.com/dotnet/aspnetcore/issues/69954> |
| Issue | #70015 | Visual Studio fails to launch browser for ASP.NET Core Blazor apps | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/70015> |
