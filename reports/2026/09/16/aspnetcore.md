# dotnet/aspnetcore

対象期間: 2026-09-15 00:08:57 〜 2026-09-16 01:35:40 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 14 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 15 |
| 新規 Issue                 | 17 |
| クローズ Issue             | 13 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69323](https://github.com/dotnet/aspnetcore/issues/69323) — Blazor: RendererSynchronizationContext can be left installed on an unrelated thread-pool thread, breaking Dispatcher mutual exclusion （Issue / open / alexyakunin）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ 破壊的変更** [#69257](https://github.com/dotnet/aspnetcore/pull/69257) — Drop MVC F# project template support （PR / open / Copilot）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ セキュリティ** [#69312](https://github.com/dotnet/aspnetcore/pull/69312) — Unify claims principal cache identity （PR / open / javiercn）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **非推奨/廃止** [#69195](https://github.com/dotnet/aspnetcore/issues/69195) — Add an analyzer to warn about code that runs after calling NavigationManager.NavigateTo in server side contexts （Issue / open / javiercn）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。

## 主要な変更点

- 重要変更として検出された PR / Issue は、互換性・セキュリティ・廃止予定の観点で確認が必要です.
- その他は依存関係更新、不具合修正、テスト安定化などの保守的な変更が中心です.
- 対象機能を利用していない場合、追加対応は原則不要です.

- 特筆すべき追加変更はありません。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69336 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from bb31c98899c1070a3b82333ead0a8663fc2c0c12 to 291c2c52fe3d6079af97062f8918eda41e02e133 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69336> |
| PR | #69337 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from bb31c98899c1070a3b82333ead0a8663fc2c0c12 to 291c2c52fe3d6079af97062f8918eda41e02e133 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69337> |
| PR | #69331 | Exclude Helix Job Monitor from Dependabot updates | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69331> |
| PR | #69301 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69301> |
| PR | #69163 | Server.IntegrationTesting: ApplicationPublisher: avoid recompiling framework project with different properties than the main build. | merged | tmds | <https://github.com/dotnet/aspnetcore/pull/69163> |
| PR | #69256 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69256> |
| PR | #69311 | Unquarantine QuickGridInteractiveCompatTest.PaginatorCorrectItemsPerPage | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69311> |
| PR | #69211 | Update copilot-instructions.md | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69211> |
| PR | #69269 | [release/11.0] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69269> |
| PR | #68863 | [Blazor] Check compatibility switches during investigations | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68863> |
| PR | #69246 | Fix flaky HTTP/3 request trailer validation test | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69246> |
| PR | #69262 | [test-quarantine] Unquarantine HubConnectionTests.LongPollingUsesHttp2ByDefault | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69262> |
| PR | #69198 | Fix support for unions with null values as root component parameters | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69198> |
| PR | #69272 | Fix Components.AI package dependency | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/69272> |
| PR | #69226 | [main] (deps): Bump src/submodules/googletest from `d94a732` to `283c175` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69226> |
| PR | #69225 | [test-quarantine] Quarantine flaky Http3StreamTests.RequestTrailers_ContainsNewlines | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69225> |
| PR | #67177 | ErrorBoundary fails to show error content when exception occurs inside @foreach | closed | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67177> |
| PR | #69332 | [release/8.0] (deps): Bump src/submodules/googletest from `36ba75f` to `8eff9e3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69332> |
| PR | #69334 | [release/9.0] (deps): Bump src/submodules/googletest from `36ba75f` to `8eff9e3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69334> |
| PR | #69335 | [main] (deps): Bump src/submodules/googletest from `d94a732` to `8eff9e3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69335> |
| PR | #69333 | [release/10.0] (deps): Bump src/submodules/googletest from `49495ea` to `8eff9e3` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69333> |
| PR | #69330 | Add Kestrel architecture overview | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69330> |
| PR | #69326 | [release/9.0] Scope WebSocket request-body assertion to in-process hosting | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69326> |
| PR | #69327 | [release/8.0] Scope WebSocket request-body assertion to in-process hosting | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69327> |
| PR | #69321 | [Authentication] Validate OIDC auth_time against max_age | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69321> |
| PR | #69316 | [release/11.0] Fix support for unions with null values as root component parameters | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/69316> |
| PR | #69312 | Unify claims principal cache identity | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69312> |
| PR | #69315 | Collapse leading slash runs in the remote authentication return URI | open | rokonec | <https://github.com/dotnet/aspnetcore/pull/69315> |
| PR | #69310 | Fix Virtualize End anchoring after initial provider load | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69310> |
| PR | #69305 | [Prototype] Typed browser platform APIs for Blazor, starting with Web Storage | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/69305> |
| PR | #69308 | [Blazor] Add ClaimApp multimodal sample and its E2E coverage | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69308> |
| PR | #69300 | Fix compiled Razor views in F# MVC template | open | danroth27 | <https://github.com/dotnet/aspnetcore/pull/69300> |
| Issue | #69329 | Perf improvement: multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69329> |
| Issue | #69328 | [pr-attention-pulse] ASP.NET Core PR Attention Pulse | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/69328> |
| Issue | #69325 | Persistent service serialization ignores CircuitOptions.JsonTypeInfoResolvers when reflection is disabled | open | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69325> |
| Issue | #69323 | Blazor: RendererSynchronizationContext can be left installed on an unrelated thread-pool thread, breaking Dispatcher mutual exclusion | open | alexyakunin | <https://github.com/dotnet/aspnetcore/issues/69323> |
| Issue | #69324 | Restore Components.AI references for .NET 12 Preview 1 | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/69324> |
| Issue | #69322 | Minimal API [FromForm] silently binds default(T) / null when the parameter type has more than one public constructor | open | robertodalmonte | <https://github.com/dotnet/aspnetcore/issues/69322> |
| Issue | #69320 | Restrict dotnet user-jwts signing-key file permissions on Unix | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69320> |
| Issue | #69319 | Restore Components.AI references for .NET 12 Preview 1 | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/69319> |
| Issue | #69317 | Stray "g" in the dotnetcli.host.json file of the RazorClassLibrary-CSharp template config file | closed | guardrex | <https://github.com/dotnet/aspnetcore/issues/69317> |
| Issue | #69314 | Collapse leading slash runs in the remote authentication return URI | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69314> |
| Issue | #69313 | Collapse leading slash runs in the remote authentication return URI | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/69313> |
| Issue | #69304 | Introduce typed browser platform APIs for Blazor, starting with Web Storage | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/69304> |
| Issue | #69309 | Restore Components.AI references for .NET 12 Preview 1 | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/69309> |
| Issue | #69307 | Perf regression: https | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69307> |
| Issue | #69306 | Perf improvement: json, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69306> |
| Issue | #69302 | Virtualize AnchorMode.End does not position at the end after the initial ItemsProvider result | open | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69302> |
| Issue | #69303 | Validation source generator: accept validatable type requests from other source generators | open | dzhukovsky | <https://github.com/dotnet/aspnetcore/issues/69303> |
| Issue | #68680 | Quarantine QuickGridInteractiveCompatTest.PaginatorCorrectItemsPerPage | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68680> |
| Issue | #69185 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | closed | dotnet-mirroring[bot] | <https://github.com/dotnet/aspnetcore/issues/69185> |
| Issue | #69224 | Quarantine Microsoft.AspNetCore.Server.Kestrel.Core.Tests.Http3StreamTests.RequestTrailers_ContainsNewlines | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/69224> |
| Issue | #50180 | Quarantine LongPollingUsesHttp2ByDefault | closed | SteveSandersonMS | <https://github.com/dotnet/aspnetcore/issues/50180> |
| Issue | #68798 | union keyword: NullableIntOrString with active null fails as interactive-root component parameter in WebAssembly (.NET 11 Preview 7) | closed | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/issues/68798> |
| Issue | #68228 | Focus indicator has insufficient color contrast on "Home" and "Privacy" links.: A11y_.NET Core Cloud Platform (ASP.NET Core)_WebSample_NonTextContrast | closed | PoojaNamde | <https://github.com/dotnet/aspnetcore/issues/68228> |
| Issue | #69261 | Components.AI net11 package depends on unavailable .NET 12 package | closed | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69261> |
| Issue | #69133 | [Validation] QuickGrid column item type mismatch | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69133> |
| Issue | #69129 | [Validation] QuickGrid query parameter names | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69129> |



