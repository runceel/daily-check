# dotnet/aspnetcore

対象期間: 2026-07-08 06:31:54 〜 2026-07-10 00:28:22 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 31 |
| クローズ (未マージ) PR     | 6 |
| 新規 PR (オープン中)       | 15 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 25 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67706](https://github.com/dotnet/aspnetcore/pull/67706) — [release/2.3] Add System.Security.Cryptography.Xml reference to affected projects （PR / merged / wtgodbe）
  ASP.NET Core 2.3 系で XML 暗号 API を利用するアプリは、影響を受けるプロジェクトに参照が追加されたことと、関連する依存更新を確認してください。
- **⚠ セキュリティ** [#67694](https://github.com/dotnet/aspnetcore/issues/67694) — Update Microsoft.OpenAPi package due to security vulnerability （Issue / closed / Joost-VBI）
  Microsoft.AspNetCore.OpenApi 利用者は、CVE 対応済みの Microsoft.OpenApi バージョンへ更新し、NuGet の脆弱性警告が解消されることを確認してください。
- **非推奨/廃止** [#67662](https://github.com/dotnet/aspnetcore/pull/67662) — Make EditContext.Validate obsolete （PR / merged / oroztocil）
  Blazor の `EditContext.Validate` を呼び出す利用者は、同期 API が obsolete になったため、非同期の検証パターンへの移行計画を確認してください。
- **非推奨/廃止** [#67640](https://github.com/dotnet/aspnetcore/pull/67640) — Make the sync EditContext.Validate obsolete （PR / closed / oroztocil）
  `EditContext.Validate` の同期呼び出しを使うコードは、警告を確認し、将来の削除に備えて推奨される検証 API へ移行してください。

## 主要な変更点

- **セキュリティ**: Microsoft.OpenApi の脆弱性対応として 3.8.0 更新（[#67638](https://github.com/dotnet/aspnetcore/pull/67638)）がマージされました。
- **セキュリティ**: release/2.3 で `System.Security.Cryptography.Xml` 参照を追加し、影響プロジェクトの依存を補正しました（[#67706](https://github.com/dotnet/aspnetcore/pull/67706)）。
- `EditContext.Validate` の同期 API が obsolete になり、Blazor 検証コードの移行が必要になります（[#67662](https://github.com/dotnet/aspnetcore/pull/67662)）。
- Zstandard のリクエスト展開ウィンドウを 8 MB に制限し、入力によるメモリ使用量を抑制しました（[#67688](https://github.com/dotnet/aspnetcore/pull/67688)）。
- QuickGrid のアクセシビリティ、仮想化、ローカライズに関する改善が継続しています。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67713 | Suppress by-design CodeQL alerts | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67713> |
| PR | #67710 | Suppress false-positive CodeQL alerts | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67710> |
| PR | #67709 | [release/2.3] Update fast-uri to 3.1.2 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67709> |
| PR | #67708 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67708> |
| PR | #67707 | [release/2.3] Update fast-uri to 3.1.1 and serialize-javascript to 7.0.3 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67707> |
| PR | #67706 | [release/2.3] Add System.Security.Cryptography.Xml reference to affected projects | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67706> |
| PR | #67705 | [release/10.0] Fix flaky CanElevateEffectiveMaxItemCount_WhenOverscanExceedsMax | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67705> |
| PR | #67689 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67689> |
| PR | #67688 | Cap Zstandard request decompression window at 8 MB | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67688> |
| PR | #67686 | Update branding to 2.3.12 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67686> |
| PR | #67683 | Guard quarantine temporary_id against length-limit placeholder leaks | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67683> |
| PR | #67680 | Fix Blazor nested validation test | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67680> |
| PR | #67677 | Fix flaky QuickGrid type mismatch virtualized E2E test | merged | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/pull/67677> |
| PR | #67674 | Fix QuickGrid accessibility issue | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67674> |
| PR | #67670 | Improve CreateTwoFactorRecoveryCode in .NET 8+ | merged | RichardD2 | <https://github.com/dotnet/aspnetcore/pull/67670> |
| PR | #67665 | Clarify PageLink URL generation documentation | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67665> |
| PR | #67662 | Make EditContext.Validate obsolete | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67662> |
| PR | #67659 | Switch ValidateContext.ValidationErrors to `IReadOnlyList<string>` instead of `IEnumerable<string>` | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67659> |
| PR | #67658 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67658> |
| PR | #67654 | [release/8.0] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67654> |
| PR | #67653 | [release/10.0] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67653> |
| PR | #67652 | [release/9.0] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67652> |
| PR | #67651 | [main] (deps): Bump src/submodules/googletest from `973323e` to `3064a60` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67651> |
| PR | #67642 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67642> |
| PR | #67641 | Unify null session behaviour for TempData and SupplyParameterFromTempData | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67641> |
| PR | #67638 | Update Microsoft.OpenApi to 3.8.0 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67638> |
| PR | #67636 | Update ValidationsGenerator to drop the embedded SDK-generated attribute | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67636> |
| PR | #67618 | Rerun PostRoutingPipeline on Rerouting | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67618> |
| PR | #67481 | Clarify ActionLink URL generation documentation | merged | mahdiaghtaee | <https://github.com/dotnet/aspnetcore/pull/67481> |
| PR | #67453 | [release/10.0] Backport fix for handling of expired client-persisted circuit state | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67453> |
| PR | #67436 | Add TLS channel binding token access to `ITlsConnectionFeature` | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67436> |
| PR | #67700 | [Quarantine] AddValidationIntegrationTest.FormWithNestedValidation_Works | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67700> |
| PR | #67672 | Fix QuickGrid accessibility issue | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67672> |
| PR | #67667 | Fix antiforgery/CSRF middleware lost on primary path when using re-execution | closed | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67667> |
| PR | #67640 | Make the sync EditContext.Validate obsolete | closed | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67640> |
| PR | #67633 | [test-quarantine] Quarantine QuickGridInteractiveTest.SortByTypeMismatchVirtualizedShowsClearError | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67633> |
| PR | #67439 | [release/11.0-preview6] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67439> |
| PR | #67714 | Fix flaky WebApplicationFactory Kestrel port race | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67714> |
| PR | #67712 | Revert "Fixed AmbiguousMatchException in DataAnnotationsValidator for Hidden Members (#67075)" | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67712> |
| PR | #67702 | Run Blazor E2E tests on Microsoft.Extensions.Validation changes | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67702> |
| PR | #67697 | Use locally-built Microsoft.OpenApi packages from OpenAPI.NET PR #2933 | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67697> |
| PR | #67695 | Improve Render Output Invalid Exception Message to Clarify Common Control Flow Causes | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67695> |
| PR | #67690 | Avoid ArgumentException when Problem/ValidationProblem extensions conflict with defaults | open | UditDewan | <https://github.com/dotnet/aspnetcore/pull/67690> |
| PR | #67687 | Add more tests for OpenApi enums | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67687> |
| PR | #67679 | Fix placeholder flash when appending to an End-anchored virtualized list | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67679> |
| PR | #67678 | QuickGrid: Add built-in localization for pagination | open | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/pull/67678> |
| PR | #67673 | [Blazor] Components.AI - full library (supersedes #66181-#66187) | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67673> |
| PR | #67671 | Improve `QuickGrid` virtualization coverage | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67671> |
| PR | #67664 | Merge endpoint metadata for dynamic endpoints. | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67664> |
| PR | #67663 | Unexpected DOM persistence: Omitted attributes not removed during re-render | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67663> |
| PR | #67661 | Fix nullable enum handling in OpenApi | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67661> |
| PR | #67660 | Blazor messes up standard HTMLTemplateElement <template> | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67660> |
| Issue | #67711 | Revert #67075: hidden-member validation fix is incomplete and regresses behavior | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67711> |
| Issue | #67704 | Consider introducing new attribute for Microsoft.AspNetCore.OpenAPI | closed | everttimmer1963 | <https://github.com/dotnet/aspnetcore/issues/67704> |
| Issue | #67703 | Add protected method to notify InputBase<> of changes to CurrentValue | open | AderitoSilva | <https://github.com/dotnet/aspnetcore/issues/67703> |
| Issue | #67701 | Generic version of ConsumesAttribute | open | campersau | <https://github.com/dotnet/aspnetcore/issues/67701> |
| Issue | #67699 | Test flaky: AddValidationIntegrationTest.FormWithNestedValidation_Works | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67699> |
| Issue | #67698 | IJSObjectReference.SetValueAsync | open | ghorner2 | <https://github.com/dotnet/aspnetcore/issues/67698> |
| Issue | #67696 | `TypedResults.ValidationProblem` should allow different status codes | open | cremor | <https://github.com/dotnet/aspnetcore/issues/67696> |
| Issue | #67694 | Update Microsoft.OpenAPi package due to security vulnerability | closed | Joost-VBI | <https://github.com/dotnet/aspnetcore/issues/67694> |
| Issue | #67693 | Benchmark stopped running: QueryCompilation | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67693> |
| Issue | #67692 | Perf regression: multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67692> |
| Issue | #67691 | Perf improvement: json, mvc | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67691> |
| Issue | #67684 | Perf improvement: antiforgery-noop | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67684> |
| Issue | #67682 | ProblemDetails should be the default error response for all HTTP error scenarios in ASP.NET Core | open | TheNefelin | <https://github.com/dotnet/aspnetcore/issues/67682> |
| Issue | #67681 | Consider exposing immutable backing collections for ValidateContext.ValidationErrors | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67681> |
| Issue | #67676 | [Blazor] Consider a build-time analyzer for form method=dialog / non-default target instead of the runtime enhanced-navigation warning | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67676> |
| Issue | #67675 | [Blazor] Consider a build-time analyzer for Virtualize SpacerElement/parent-element mismatch instead of (or alongside) a runtime warning | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67675> |
| Issue | #67669 | Blazor Identity LoginWith2fa "Remember this machine" checkbox label has a for that matches no element | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67669> |
| Issue | #67668 | Suggestion: Improve CreateTwoFactorRecoveryCode for .NET 8+ | closed | RichardD2 | <https://github.com/dotnet/aspnetcore/issues/67668> |
| Issue | #67666 | Update Bootstrap in project templates from 5.3.3 to latest 5.x (5.3.8) | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67666> |
| Issue | #67649 | Perf regression: kestrel-header-symbols | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67649> |
| Issue | #67648 | Perf improvement: json | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67648> |
| Issue | #67632 | Quarantine QuickGridInteractiveTest.SortByTypeMismatchVirtualizedShowsClearError | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67632> |
| Issue | #67628 | [area-blazor] Failed to run Blazor web App with Exception: "Endpoint / (/) contains anti-forgery metadata, but a middleware was not found that supports anti-forgery" after installing 11.0 Preview 7 | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67628> |
| Issue | #67627 | Perf regression: antiforgery-generation, kestrel-hostheader-mismatch | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67627> |
| Issue | #67622 | Perf improvement: json, multiple_queries | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67622> |
| Issue | #67615 | Accessibility: QuickGrid Paginator link mode puts aria-label on boundary anchor elements that have no href or role | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67615> |
| Issue | #67175 | Unify null session handling for SessionData and TempData | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/67175> |
| Issue | #67132 | Consolidate `ValidatableTypeAttribute` | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67132> |
| Issue | #66980 | Microsoft.Extensions.Validation API updates | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/66980> |
| Issue | #66956 | [API Proposal] Async form validation support in Blazor | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/66956> |
| Issue | #66701 | Add HttpSys support for accessing TLS channel binding tokens | closed | markalward | <https://github.com/dotnet/aspnetcore/issues/66701> |
| Issue | #66304 | OpenApi 3.0 omits integer item type when generating int[] | closed | Regenhardt | <https://github.com/dotnet/aspnetcore/issues/66304> |
| Issue | #65120 | Blazor. net10 auto mode loading problem | closed | bxjg1987 | <https://github.com/dotnet/aspnetcore/issues/65120> |
| Issue | #64466 | XML documentation on controllers/endpoints from referenced class libraries is not manifested in OpenAPI document | closed | ZTonks | <https://github.com/dotnet/aspnetcore/issues/64466> |
| Issue | #59809 | OpenAPI document generation should emit documents with deterministic structure | closed | mikekistler | <https://github.com/dotnet/aspnetcore/issues/59809> |
| Issue | #42949 | UrlHelperExtensions.ActionLink docs are misleading regarding requiring protocol and host | closed | drdamour | <https://github.com/dotnet/aspnetcore/issues/42949> |
| Issue | #27095 | DataAnnotationsValidator throws AmbiguousMatchException when there are hidden members | closed | dhebbler | <https://github.com/dotnet/aspnetcore/issues/27095> |
