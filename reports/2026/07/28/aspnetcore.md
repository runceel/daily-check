# dotnet/aspnetcore

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 16 |
| クローズ (未マージ) PR     | 9 |
| 新規 PR (オープン中)       | 12 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 32 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#61588](https://github.com/dotnet/aspnetcore/issues/61588) — [Infrastructure] We should add APICompat checks against previous shipped version of the assemblies to detect breaking changes （Issue / open / joperezr）
  APICompat 導入を追跡する開発者は、出荷済みアセンブリとの差分を CI で検出できるようにし、公開 API の意図しない破壊的変更をリリース前に確認してください。
- **⚠ セキュリティ** [#68053](https://github.com/dotnet/aspnetcore/pull/68053) — [release/2.3] Update SystemSecurityCryptographyXmlPackageVersion to 8.0.4 （PR / merged / wtgodbe）
  ASP.NET Core 2.3 系の保守利用者は、System.Security.Cryptography.Xml 8.0.4 への更新を取り込み、暗号関連の修正を含む依存関係を再検証してください。
- **⚠ セキュリティ** [#68052](https://github.com/dotnet/aspnetcore/pull/68052) — [Infrastructure] Updated npm packages 2026-07-27 （PR / merged / wtgodbe）
  npm 依存関係を利用する開発者は、更新されたパッケージのセキュリティ修正内容とロックファイル差分を確認し、必要に応じて再ビルドしてください。
- **非推奨/廃止** [#68042](https://github.com/dotnet/aspnetcore/pull/68042) — [release/11.0-preview7] Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom （PR / merged / github-actions[bot]）
  JsonPatch STJ の `OperationBase.ShouldSerializeFrom` 利用者は、非推奨警告に備えて代替 API と移行時期を確認してください。
- **非推奨/廃止** [#67984](https://github.com/dotnet/aspnetcore/pull/67984) — Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom （PR / merged / Copilot）
  同 API を利用するアプリは、将来の削除に備えて `ShouldSerializeFrom` への依存を洗い出し、推奨される JsonPatch 実装へ移行してください。
- **非推奨/廃止** [#67966](https://github.com/dotnet/aspnetcore/issues/67966) — Obsolete `OperationBase.ShouldSerializeFrom` from JsonPatch.STJ （Issue / closed / Youssef1313）
  JsonPatch STJ の非推奨化が確定したため、該当 API を使う利用者は警告を無視せず代替手段を検討してください。
- **非推奨/廃止** [#62980](https://github.com/dotnet/aspnetcore/issues/62980) — Reconsider Deprecating Extensions.ApiDescription.Client （Issue / closed / TheXenocide）
  `Extensions.ApiDescription.Client` の利用者は、非推奨化の扱いと継続利用の可否を確認し、必要なら別の API description クライアントへ移行してください。
- **非推奨/廃止** [#62867](https://github.com/dotnet/aspnetcore/issues/62867) — Remove API that was marked obsolete in <= .NET 8 （Issue / open / danmoseley）
  .NET 8 以前に obsolete 指定された API の利用者は、対象 API の削除時期と代替 API を確認し、段階的にコードを更新してください。

## 主要な変更点

- **APICompat** により、出荷済みアセンブリとの API 差分を検出する基盤整備が進んでいます。
- JsonPatch STJ の `OperationBase.ShouldSerializeFrom` が非推奨となり、既存利用者は代替 API の確認が必要です。
- `System.Security.Cryptography.Xml` 8.0.4 への更新と npm パッケージ更新により、依存関係のセキュリティ修正が取り込まれました。
- API description の OpenAPI 生成環境プロパティ対応が、リリースブランチにも反映されています。
- Blazor の Components.AI 関連 PR 群がクローズされ、今後の実装方針が整理されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68040 | [release/11.0-preview7] Add OpenApiGenerationEnvironment property support for API description server document generation | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68040> |
| PR | #68042 | [release/11.0-preview7] Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68042> |
| PR | #68052 | [Infrastructure] Updated npm packages 2026-07-27 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68052> |
| PR | #68051 | Use PreReleaseVersionLabel to detect servicing branches in CodeCheck.ps1 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68051> |
| PR | #68053 | [release/2.3] Update SystemSecurityCryptographyXmlPackageVersion to 8.0.4 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68053> |
| PR | #58995 | Put package assets in TFM-specific folder | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/58995> |
| PR | #68012 | Configure Dependabot to update NuGet dependencies not automated by Maestro | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68012> |
| PR | #68031 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68031> |
| PR | #68020 | [test-quarantine] Quarantine HubConnectionTests authentication refresh tests | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68020> |
| PR | #68036 | [release/11.0-preview7] Virtualize tests with `ItemProvider` should always contain a delay | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68036> |
| PR | #67332 | Add author-analyzer-skill Copilot skill | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67332> |
| PR | #67984 | Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67984> |
| PR | #63856 | Add OpenApiGenerationEnvironment property support for API description server document generation | merged | ldsenow | <https://github.com/dotnet/aspnetcore/pull/63856> |
| PR | #68018 | [test-quarantine] Quarantine ServerVirtualizationTest.QuickGrid_AnchorMode_Top_AppendKeepsViewportStable | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68018> |
| PR | #68022 | [test-quarantine] Quarantine FormWithParentBindingContextTest.CanDisplayBindingErrorsCollectionsToDefaultForm | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68022> |
| PR | #68016 | [test-quarantine] Re-quarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68016> |
| PR | #66182 | [Blazor] Components.AI - 02 Engine, tool calls, approval, reasoning, and state | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66182> |
| PR | #66183 | [Blazor] Components.AI - 03 Blazor components: AgentBoundary, MessageList, MessageInput, rendering | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66183> |
| PR | #66184 | [Blazor] Components.AI - 04 UI shells, theming, and CSS | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66184> |
| PR | #66185 | [Blazor] Components.AI - 05 Multimodal attachments, conversation threads, and form input | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66185> |
| PR | #66186 | [Blazor] Components.AI - 06 Source generators, activities, and rich text | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66186> |
| PR | #66187 | [Blazor] Components.AI - 07 E2E test infrastructure and test app | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66187> |
| PR | #66181 | [Blazor] Components.AI - 01 Block model, pipeline, and text streaming | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/66181> |
| PR | #68039 | [release/10.0-preview7] Add OpenApiGenerationEnvironment property support for API description server document generation | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68039> |
| PR | #68034 | Fix flaky AnchorMode_End_AppendAfterLeavingBottom_DoesNotReengage E2E test | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/68034> |
| PR | #68056 | 68021 flaky test | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68056> |
| PR | #68037 | Avoid defensive copies of RenderTreeFrame in RenderBatchWriter.Write | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68037> |
| PR | #68035 | Replace `WebEncoders.Base64UrlDecode` with `Base64Url.Decode` in Antiforgery | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/68035> |
| PR | #68050 | [release/11.0-preview7] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68050> |
| PR | #68033 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68033> |
| PR | #68048 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from b166c7e04055f96bcfe4b58ee1205cc9f24e2020 to 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68048> |
| PR | #68047 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from b166c7e04055f96bcfe4b58ee1205cc9f24e2020 to 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68047> |
| PR | #68044 | [main] (deps): Bump src/submodules/googletest from `a503186` to `b78aa5e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68044> |
| PR | #68046 | [release/10.0] (deps): Bump src/submodules/googletest from `3064a60` to `b78aa5e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68046> |
| PR | #68045 | [release/9.0] (deps): Bump src/submodules/googletest from `3064a60` to `b78aa5e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68045> |
| PR | #68043 | [release/8.0] (deps): Bump src/submodules/googletest from `3064a60` to `b78aa5e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68043> |
| PR | #68032 | Fix Persistent Component State for Re-executed Endpoints | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/68032> |
| Issue | #68057 | Perf improvement: json_middleware, multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68057> |
| Issue | #68058 | Perf regression: tls-renegotiation-kestrel, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68058> |
| Issue | #68055 | [Blazor] Support compact field syntax for expression-typed component parameters (<Label For="product.Name" />) | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68055> |
| Issue | #68054 | AntiforgeryMiddleware needs an escape-hatch for troubleshooting and logging, and customizing the final response | open | daiplusplus | <https://github.com/dotnet/aspnetcore/issues/68054> |
| Issue | #68038 | Allow Kestrel to listen on abstract UNIX socket | open | kacper-ka | <https://github.com/dotnet/aspnetcore/issues/68038> |
| Issue | #68041 | Derive URL Rewrite absolute-target mode from configured literal syntax | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68041> |
| Issue | #62911 | 🚀 CI Improvements in dotnet/aspnetcore | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/62911> |
| Issue | #42828 | [Discussion] Single authentication scheme is treated as default scheme | closed | captainsafia | <https://github.com/dotnet/aspnetcore/issues/42828> |
| Issue | #50635 | Improve CodeCheck.ps1 experience for API changes during RCs | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/50635> |
| Issue | #58990 | Errors after updating packages | closed | loganmj | <https://github.com/dotnet/aspnetcore/issues/58990> |
| Issue | #56778 | Missing binary in ARM64 Debian Bookworm repository | closed | KevinFumbles | <https://github.com/dotnet/aspnetcore/issues/56778> |
| Issue | #63263 | http-client.env.json  incorrectly copied to publish output directory | closed | Varorbc | <https://github.com/dotnet/aspnetcore/issues/63263> |
| Issue | #62980 | Reconsider Deprecating Extensions.ApiDescription.Client | closed | TheXenocide | <https://github.com/dotnet/aspnetcore/issues/62980> |
| Issue | #67960 | Microsoft.Extensions.Validation API stabilization for .NET 11 | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67960> |
| Issue | #58437 | Enable NuGet Audit in aspnetcore | closed | ViktorHofer | <https://github.com/dotnet/aspnetcore/issues/58437> |
| Issue | #45973 | Update RepoTasks to use the FrameworkReference workaround from GenerateFiles | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/45973> |
| Issue | #45395 | Hosting Bundle installer removes existing x64 runtime if OPT_NO_RUNTIME=1 OPT_NO_SHAREDFX=1 are used | closed | jberezanski | <https://github.com/dotnet/aspnetcore/issues/45395> |
| Issue | #49851 | Migrate aspnetcore 2.3 code to dotnet/maintenance-packages | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/49851> |
| Issue | #49850 | Migrate Extensions 2.3 libraries to aspnetcore | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/49850> |
| Issue | #64586 | Upgrade to Wix 6 | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/64586> |
| Issue | #64775 | Add Forbidden and Forbidden<T> HttpResults like Ok/NotFound/Conflict and others | closed | ntark | <https://github.com/dotnet/aspnetcore/issues/64775> |
| Issue | #64461 | .NET 10 Minimal API rejects application/octet-stream body (415 Unsupported Media Type) even with HttpContext.Body / Accepts<byte[]> — works in .NET 9 | closed | candinho87 | <https://github.com/dotnet/aspnetcore/issues/64461> |
| Issue | #64358 | asp.net core openapi xml comments not working on dynamically registered routes | closed | dotnetshadow | <https://github.com/dotnet/aspnetcore/issues/64358> |
| Issue | #64596 | [API Proposal] IComponentPropertyActivator for Blazor property injection | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/64596> |
| Issue | #65060 | API proposal for `NavigateTo` and `NavLink` with relative path | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/65060> |
| Issue | #66384 | API Proposal: NavigationManagerExtensions.GetUriWithHash | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66384> |
| Issue | #66385 | API Proposal: EnvironmentBoundary component for Blazor | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66385> |
| Issue | #66386 | API Proposal: InputFile.Dispose(bool) virtual dispose pattern | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66386> |
| Issue | #66387 | API Proposal: ServerComponentsEndpointOptions.ConfigureConnection | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66387> |
| Issue | #66388 | API Proposal: BasePath component for Blazor | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66388> |
| Issue | #66389 | API Proposal: QuickGrid OnRowClick EventCallback | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66389> |
| Issue | #66390 | API Proposal: Blazor SSR TempData support | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/66390> |
| Issue | #66798 | Api proposal for `Circuit.RequestCircuitPauseAsync` | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/66798> |
| Issue | #66827 | API Proposal: SupplyParameterFromSession | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/66827> |
| Issue | #66828 | API Proposal: RenderFragment serialization | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/66828> |
| Issue | #67259 | [Blazor WASM] BlazorWasmServiceDefaults template has circular DI dependency in IPostConfigureOptions<OtlpExporterOptions> on .NET 11 preview | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67259> |
| Issue | #67966 | Obsolete `OperationBase.ShouldSerializeFrom` from JsonPatch.STJ | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67966> |
| Issue | #54698 | Microsoft.Extensions.ApiDescription.Server: Allow specifying --environment | closed | josundt | <https://github.com/dotnet/aspnetcore/issues/54698> |
