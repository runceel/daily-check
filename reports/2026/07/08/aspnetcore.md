# dotnet/aspnetcore

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 32 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 21 |
| 新規 Issue                 | 17 |
| クローズ Issue             | 13 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67505](https://github.com/dotnet/aspnetcore/issues/67505) — Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 （Issue / closed / LiorBanai）
  Microsoft.AspNetCore.OpenApi を参照している利用者は、脆弱性のある Microsoft.OpenAPI に間接依存するため、修正版（#67638 の Microsoft.OpenApi 3.8.0 / #67464 の 2.7.5）を含むパッチ適用を確認すべき。
- **⚠ セキュリティ** [#66348](https://github.com/dotnet/aspnetcore/issues/66348) — NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) （Issue / open / Gebov）
  NuGet の脆弱性監査警告 (NU190x) が `TreatWarningsAsErrors` でビルドを失敗させる挙動に関する議論。CI で警告をエラー化しているチームは、依存更新かビルド設定の見直しが必要になる可能性がある（未解決の Issue のため継続ウォッチ）。
- **非推奨/廃止** [#67640](https://github.com/dotnet/aspnetcore/pull/67640) — Make the sync EditContext.Validate obsolete （PR / open / oroztocil）
  Blazor の同期版 `EditContext.Validate` を obsolete 化する提案（オープン中）。マージされると、同期バリデーションを直接呼んでいるコードにコンパイル警告が出るため、非同期バリデーション API への移行を検討しておくとよい。

## 主要な変更点

- **セキュリティ / OpenAPI 依存**: Microsoft.OpenAPI の **CVE-2026-49451**（#67505）を受け、Microsoft.OpenApi を 3.8.0（#67638, open）・2.7.5（#67464）へ更新する動き。OpenAPI 利用者は依存バージョンの確認を。
- **プロトコル堅牢化**: HPACK/QPACK のインデックス名で送られる connection-specific ヘッダーを拒否（#67584）、ANCM の "chunked" 処理を堅牢化（#67512）、Content-Length の先頭 `+`/`-` 符号を拒否（#67635, open）と、HTTP 層の防御的修正が複数マージ。
- **OpenAPI 機能拡張**: OpenAPI 3.2.0 での **SSE（Server-Sent Events）記述**サポート追加（#67461）、`Dictionary<,>` 以外の実装での `schema.Properties` 参照解決の不具合修正（#67384）。
- **バリデーション基盤の安定化**: validation 属性から `ExperimentalAttribute` を除去（#67634）、`ValidatableTypeAttribute` / `SkipValidationAttribute` を安定化（#67544）、ValidationsGenerator の生成コード簡素化（#67630, open）。
- **Blazor**: 非同期フォームバリデーションの改善（#67323）、同期 `EditContext.Validate` の obsolete 化提案（#67640, open）、`AuthorizeView` への Forbidden 状態サポート（#67613, open）など。
- **保守 / リリース**: 9.0.19・8.0.30 のブランディング更新、Node.js 20.x→24.x、各種 CI 安定化・依存 bump が多数。
- ⚠ 取得件数が上限に達しており、上表に載っていない重要 PR/Issue が存在する可能性がある点に留意。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67656 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from b8b677cf7d0e22a28f3a42b89e02527aa150a47b to 98c1ba47b2ad80864b7020b2437e5fa7d26f3631 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67656> |
| PR | #67655 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from b8b677cf7d0e22a28f3a42b89e02527aa150a47b to 98c1ba47b2ad80864b7020b2437e5fa7d26f3631 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67655> |
| PR | #67646 | [release/9.0] improve CI flakiness | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67646> |
| PR | #67645 | [release/8.0] improve CI flakiness | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67645> |
| PR | #67643 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67643> |
| PR | #67634 | Remove ExperimentalAttribute from validation attributes | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67634> |
| PR | #67623 | [release/9.0] Update branding to 9.0.19 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/67623> |
| PR | #67621 | [release/8.0] Update branding to 8.0.30 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/67621> |
| PR | #67620 | [test-quarantine] Fix guardrails that let the workflow re-attempt rejected actions | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67620> |
| PR | #67591 | Fix RDG check for endpoint uniqueness | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67591> |
| PR | #67584 | Reject connection-specific headers sent via HPACK/QPACK indexed names | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67584> |
| PR | #67578 | Fix service parameter detection logic for minimal API validation filter | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67578> |
| PR | #67552 | Normalize C++ PlatformToolsetVersion and centralize PlatformToolset | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67552> |
| PR | #67529 | [release/10.0] (deps): Bump src/submodules/googletest from `7140cd4` to `973323e` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67529> |
| PR | #67527 | [release/9.0] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67527> |
| PR | #67526 | [release/9.0] (deps): Bump src/submodules/googletest from `7140cd4` to `973323e` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67526> |
| PR | #67525 | [release/8.0] (deps): Bump src/submodules/googletest from `7140cd4` to `973323e` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67525> |
| PR | #67524 | [release/8.0] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67524> |
| PR | #67512 | Harden "chunked" handling in ANCM | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67512> |
| PR | #67464 | [release/10.0] Update OpenApi to 2.7.5 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67464> |
| PR | #67461 | feat: adds support for describing SSE in OpenAPI 3.2.0 | merged | baywet | <https://github.com/dotnet/aspnetcore/pull/67461> |
| PR | #67411 | Adopt the PAT pool for agentic workflows | merged | jeffhandley | <https://github.com/dotnet/aspnetcore/pull/67411> |
| PR | #67408 | Update ws package version to 7.5.11 | merged | birarroshan | <https://github.com/dotnet/aspnetcore/pull/67408> |
| PR | #67384 | Fix OpenApiSchemaService to handle implementation different from Dictionary<,> for schema.Properties | merged | marcominerva | <https://github.com/dotnet/aspnetcore/pull/67384> |
| PR | #67328 | [release/9.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67328> |
| PR | #67323 | Improve Blazor async form validation | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67323> |
| PR | #67289 | [release/8.0] Update CI pipeline to use Windows 2022 image | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67289> |
| PR | #67287 | [release/9.0] Update CI pipeline to use Windows 2022 image | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67287> |
| PR | #67277 | [release/9.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67277> |
| PR | #67274 | [release/9.0] Update Selenium and Playwright versions to match main | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67274> |
| PR | #67273 | [release/8.0] Update Selenium and Playwright versions to match main | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67273> |
| PR | #67242 | [release/9.0] Update Node.js version from 20.x to 24.x | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67242> |
| PR | #67590 | fix(blazor): remove redundant antiforgery validation on passkey endpoints | closed | Aswinesag | <https://github.com/dotnet/aspnetcore/pull/67590> |
| PR | #67577 | [test-quarantine] Unquarantine TlsHandshakeFeatureTests.SetsTlsHandshakeFeatureForHttps (issue #49306) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67577> |
| PR | #67576 | [test-quarantine] Re-quarantine TestServerTests.WebSocketsWorks (#65914) | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67576> |
| PR | #67503 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67503> |
| PR | #67495 | [release/10.0] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67495> |
| PR | #67654 | [release/8.0] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67654> |
| PR | #67653 | [release/10.0] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67653> |
| PR | #67651 | [main] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67651> |
| PR | #67652 | [release/9.0] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67652> |
| PR | #67647 | Fix overflow in AccessFailedAsync when DefaultLockoutTimeSpan is large | open | GOVINSAGA | <https://github.com/dotnet/aspnetcore/pull/67647> |
| PR | #67642 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67642> |
| PR | #67641 | Unify null session behaviour for TempData and SupplyParameterFromTempData | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67641> |
| PR | #67640 | Make the sync EditContext.Validate obsolete | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67640> |
| PR | #67639 | Improve `AnchorMode_End_LargeAppendAtBottom_StillFollows` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67639> |
| PR | #67638 | Update Microsoft.OpenApi to 3.8.0 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67638> |
| PR | #67636 | Update ValidationsGenerator to drop the embedded SDK-generated attribute | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67636> |
| PR | #67635 | HttpHeaders: reject Content-Length with leading `+` or `-` sign | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67635> |
| PR | #67633 | [test-quarantine] Quarantine QuickGridInteractiveTest.SortByTypeMismatchVirtualizedShowsClearError | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67633> |
| PR | #67631 | Add BlurAsync API for ElementReference | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67631> |
| PR | #67630 | Simplify the generated code from ValidationsGenerator | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67630> |
| PR | #67625 | Add configurable token storage type for the Blazor WASM OIDC Authentication | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/67625> |
| PR | #67618 | Rerun PostRoutingPipeline on Rerouting | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67618> |
| PR | #67617 | Add analyzer for RazorComponentResult parameter validation | open | dkamburov | <https://github.com/dotnet/aspnetcore/pull/67617> |
| PR | #67616 | [Blazor] Preserve null values for <option value="@null"> in single select binding | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67616> |
| PR | #67613 | Add Forbidden state support to AuthorizeView | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67613> |
| PR | #67612 | SignalR .NET client: make auth refresh work behind a redirecting server (Azure SignalR) | open | MoChilia | <https://github.com/dotnet/aspnetcore/pull/67612> |
| Issue | #67657 | OpenAPI: Context.GetOrCreateSchemaAsync used in IOpenApiDocumentTransformer doesnt resolve some references | open | MattInternet | <https://github.com/dotnet/aspnetcore/issues/67657> |
| Issue | #67650 | [release/10.0] FormsInputDateTest InputDate/Time WASM e2e tests fail deterministically | open | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/67650> |
| Issue | #67648 | Perf improvement: json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67648> |
| Issue | #67649 | Perf regression: kestrel-header-symbols | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67649> |
| Issue | #67644 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | open | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/67644> |
| Issue | #67637 | aspnetcoretools.so: use source control version string format. | open | tmds | <https://github.com/dotnet/aspnetcore/issues/67637> |
| Issue | #67632 | Quarantine QuickGridInteractiveTest.SortByTypeMismatchVirtualizedShowsClearError | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67632> |
| Issue | #67629 | `WebApplicationBuilder.Environment`, `WebApplication.Environment`, and DI-resolved `IHostEnvironment` represent different environment objects | open | XmmShp | <https://github.com/dotnet/aspnetcore/issues/67629> |
| Issue | #67628 | [area-blazor] Failed to run Blazor web App with Exception: "Endpoint / (/) contains anti-forgery metadata, but a middleware was not found that supports anti-forgery" after installing 11.0 Preview 7 | open | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67628> |
| Issue | #67626 | Perf improvement: fortunes | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67626> |
| Issue | #67627 | Perf regression: antiforgery-generation, kestrel-hostheader-mismatch | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67627> |
| Issue | #67624 | Hot Reload: CascadingParameterState static cache is never cleared, so new [CascadingParameter] additions require a restart | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67624> |
| Issue | #67622 | Perf improvement: json, multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67622> |
| Issue | #67619 | Expose configured endpoint names on ListenOptions | open | egorov-denis | <https://github.com/dotnet/aspnetcore/issues/67619> |
| Issue | #67615 | Accessibility: QuickGrid Paginator link mode puts aria-label on boundary anchor elements that have no href or role | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67615> |
| Issue | #67614 | Accessibility: scaffolded Identity validation summary produces an invalid ul with role=alert | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67614> |
| Issue | #67611 | [Hot Reload with dotnet watch] Blazor WASM Standalone hot reload reports changes applied but UI is not updated in .NET 11 Preview 6 | open | Chakolito | <https://github.com/dotnet/aspnetcore/issues/67611> |
| Issue | #67604 | Perf improvement: json, json, json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67604> |
| Issue | #67544 | Stabilize ValidatableTypeAttribute and SkipValidationAttribute | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67544> |
| Issue | #67508 | [Linux/Mac] Fail to run the dev-certs tools with error "Permission denied" | closed | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67508> |
| Issue | #67505 | Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 | closed | LiorBanai | <https://github.com/dotnet/aspnetcore/issues/67505> |
| Issue | #67086 | Using an implementation different from Dictionary<,> for schema.Properties breaks `ResolveReferenceForSchema` | closed | ldeluigi | <https://github.com/dotnet/aspnetcore/issues/67086> |
| Issue | #66912 | Source generator silently drops [FromBody(EmptyBodyBehavior=Allow)] when two endpoints share a delegate signature | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66912> |
| Issue | #66823 | Harden "chunked" handling in ANCM | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66823> |
| Issue | #65084 | Minimal API parameters of type `IEnumerable` do not bind for validation or OpenApi documentation generation | closed | Clockwork-Muse | <https://github.com/dotnet/aspnetcore/issues/65084> |
| Issue | #64887 | [Blazor] Pause and resume improvements | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64887> |
| Issue | #64886 | Automatically pause circuit on inactivity | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64886> |
| Issue | #64379 | OpenAPI 3.2 Support for Server Sent Events | closed | desjoerd | <https://github.com/dotnet/aspnetcore/issues/64379> |
| Issue | #64142 | Blazor Virtualization flickers when scrolling | closed | cplaiu | <https://github.com/dotnet/aspnetcore/issues/64142> |
| Issue | #47912 | Enable IDE0005 analyzer in the build | closed | eerhardt | <https://github.com/dotnet/aspnetcore/issues/47912> |
