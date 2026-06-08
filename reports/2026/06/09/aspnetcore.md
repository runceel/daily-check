# dotnet/aspnetcore

対象期間: 2026-06-08 01:26:03 〜 2026-06-08 23:35:41 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 13 |
| 新規 Issue                 | 16 |
| クローズ Issue             | 6 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware （PR / open / DeagleGross）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **非推奨/廃止** [#67077](https://github.com/dotnet/aspnetcore/pull/67077) — Remove long-obsolete MVC APIs targeted for removal （PR / open / Copilot）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **非推奨/廃止** [#66551](https://github.com/dotnet/aspnetcore/issues/66551) — Revise obsolete APIs intended to be removed, and consider removing in .NET 11 （Issue / open / Youssef1313）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## 主要な変更点

<!-- TODO: 上の「重要な変更」と下の一覧から、主要な変更点を 3〜8 行の箇条書きで日本語要約。重要項目があれば必ず含める -->

- 

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67085 | Batch test-quarantine data collection to reduce token usage | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67085> |
| PR | #67063 | VirtualizeAnchorMode docs improvement | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67063> |
| PR | #67037 | Apply API changes for Label and DisplayName | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67037> |
| PR | #67007 | feat: adds support for additional operations emission in OpenAPI 3.2.0 | merged | baywet | <https://github.com/dotnet/aspnetcore/pull/67007> |
| PR | #67005 | Verify MVC / Razor Pages support for unions | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67005> |
| PR | #66979 | Revert Node 24.14.1 pin in default-build.yml | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/66979> |
| PR | #66951 | Verify Minimal API unions support in RDF and RDG as endpoint parameters and return types | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/66951> |
| PR | #66747 | Improve default Identity email wording for recipients who didn't initiate the action | merged | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/66747> |
| PR | #67069 | Add regression test validating .template.config JSON files are valid JSON | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67069> |
| PR | #67008 | [release/11.0-preview5] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67008> |
| PR | #67087 | Preserve TagHelper child content when appending output content | open | Wezylnia | <https://github.com/dotnet/aspnetcore/pull/67087> |
| PR | #67083 | Migrate Components.Testing from xUnit v3 to MSTest on MTP | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67083> |
| PR | #67082 | [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67082> |
| PR | #67077 | Remove long-obsolete MVC APIs targeted for removal | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67077> |
| PR | #67075 | Fixed AmbiguousMatchException in DataAnnotationsValidator for Hidden Members | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/67075> |
| PR | #67074 | Use NullableOf in OpenAPI schema id | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67074> |
| PR | #67073 | Make ColumnBase.IsSortableByDefault() public | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67073> |
| PR | #67072 | Comprehensive Test Enhancement for Virtualize Component | open | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67072> |
| PR | #67060 | Add InputSelect analyzer to warn about nullable TValue without empty option | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67060> |
| PR | #67059 | Improve InputNumber test coverage and add missing scenarios | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67059> |
| PR | #67058 | [release/10.0] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67058> |
| PR | #67057 | [release/9.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67057> |
| PR | #67056 | [main] Update dependencies from dotnet/extensions | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67056> |
| Issue | #67086 | Using an implementation different from Dictionary<,> for schema.Properties breaks `ResolveReferenceForSchema` | open | ldeluigi | <https://github.com/dotnet/aspnetcore/issues/67086> |
| Issue | #67084 | Rework `Antiforgery` usage in aspnetcore template | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67084> |
| Issue | #67081 | Investigate CSRF usage in Blazor | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67081> |
| Issue | #67080 | [API proposal]: Split Microsoft.Extensions.Validation interfaces | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67080> |
| Issue | #67079 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67079> |
| Issue | #67078 | OpenAPI XML comments: verify parameter binding-source handling for non-body parameter types | closed | khellang | <https://github.com/dotnet/aspnetcore/issues/67078> |
| Issue | #67076 | Check BindingSource when emitting OpenAPI spec for parameters | open | khellang | <https://github.com/dotnet/aspnetcore/issues/67076> |
| Issue | #67071 | Valid state behavior differs across render modes | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67071> |
| Issue | #67070 | DisplayName component does not support IStringLocalizer | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67070> |
| Issue | #67068 | dotnet new nugetconfig issue | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67068> |
| Issue | #67067 | WASM EnvironmentBoundary not always renders correct | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67067> |
| Issue | #67066 | Blazor templates shouldn't contain "inspectUri" | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67066> |
| Issue | #67065 | API Proposal: Add InitialIndex parameter and ScrollToIndexAsync method to Virtualize<TItem> | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67065> |
| Issue | #67064 | Adding Azure Application Insights Connected Service fails with circular ILoggerFactory dependency on .NET 11 with Microsoft.ApplicationInsights.AspNetCore 3.1.2; works on ApplicationInsights 3.0.0 | open | cyimperial | <https://github.com/dotnet/aspnetcore/issues/67064> |
| Issue | #67062 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67062> |
| Issue | #67061 | Perf improvement: antiforgery-noop, json, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67061> |
| Issue | #66643 | Improve default Identity email wording for recipients who didn't initiate the action | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/66643> |
| Issue | #66545 | MVC / Razor Pages: Verify union types work in model binding and responses | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66545> |
| Issue | #66543 | Minimal APIs (RDG): Source-generated support for union types | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66543> |
| Issue | #66542 | Minimal APIs (RDF): Support union types as endpoint parameters and return types | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66542> |
| Issue | #65062 | API proposal for Label support for DisplayName | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/65062> |
