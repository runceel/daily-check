# dotnet/aspnetcore

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 89 |
| クローズ (未マージ) PR     | 39 |
| 新規 PR (オープン中)       | 62 |
| 新規 Issue                 | 55 |
| クローズ Issue             | 48 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#68214](https://github.com/dotnet/aspnetcore/pull/68214) — Fix extra `\n` in resourceManagement for breaking change announcement （PR / merged / Youssef1313）
  リリース告知の改行修正で、利用者の API 変更はありません。告知生成を参照する担当者のみ表示を確認してください。
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` （PR / merged / DeagleGross）
  antiforgery 検証を利用するアプリは `IAntiforgeryValidationFeature` を確認し、拒否処理を form consumer 側で扱う設計へ更新してください。
- **⚠ 破壊的変更** [#67077](https://github.com/dotnet/aspnetcore/pull/67077) — Remove long-obsolete MVC APIs targeted for removal （PR / merged / Copilot）
  古い MVC API に依存するアプリは削除対象 API の利用有無を確認し、現行の代替 API へ移行してください。
- **⚠ 破壊的変更** [#64020](https://github.com/dotnet/aspnetcore/pull/64020) — Delete deprecated ConcurrencyLimiter middleware （PR / merged / Copilot）
  `ConcurrencyLimiter` middleware を使うアプリは削除済み API への依存を確認し、別のレート制限方式へ移行してください。
- **⚠ 破壊的変更** [#61726](https://github.com/dotnet/aspnetcore/issues/61726) — Breaking changes in identity hashing algorythms check （Issue / closed / piskov）
  Identity のハッシュアルゴリズム変更を追跡する利用者は、既存パスワードの検証・再ハッシュ互換性を確認してください。
- **⚠ 破壊的変更** [#47571](https://github.com/dotnet/aspnetcore/pull/47571) — Obsolete concurrency limiter middleware. （PR / merged / mitchdenny）
  旧 `ConcurrencyLimiter` middleware の利用者は、サポートされるレート制限制御へ切り替えてください。
- **⚠ セキュリティ** [#68233](https://github.com/dotnet/aspnetcore/pull/68233) — [Infrastructure] Update vulnerable npm dependencies （PR / merged / wtgodbe）
  ASP.NET Core の npm 依存を管理する担当者は、脆弱性修正版が各ブランチへ反映されたことを確認してください。
- **⚠ セキュリティ** [#68232](https://github.com/dotnet/aspnetcore/pull/68232) — [release/10.0] Update vulnerable npm dependencies （PR / merged / wtgodbe）
  .NET 10 系のビルド・リリース担当者は、更新された npm 依存を取り込み、再現可能なビルドを確認してください。
- **⚠ セキュリティ** [#68231](https://github.com/dotnet/aspnetcore/pull/68231) — [release/9.0] Update RepoTasksSystemSecurityCryptographyXmlVersion to 8.0.4 （PR / merged / wtgodbe）
  .NET 9 系で `System.Security.Cryptography.Xml` を利用する環境は、修正版 8.0.4 の解決結果を確認してください。
- **⚠ セキュリティ** [#68187](https://github.com/dotnet/aspnetcore/pull/68187) — [release/2.3] Add direct PackageReference to System.Security.Cryptography.Xml （PR / merged / wtgodbe）
  .NET 2.3 系の利用者は暗号 XML パッケージを直接参照する修正を取り込み、依存解決結果を確認してください。
- **⚠ セキュリティ** [#48299](https://github.com/dotnet/aspnetcore/issues/48299) — SecurityStampValidator forces sign out of TwoFactorRememberMeScheme, which throws exception when no sign-out authentication handler is registered （Issue / closed / zwoolli）
  `SecurityStampValidator` のサインアウト先 scheme 未登録で例外になる構成は、修正版または認証 scheme 登録を確認してください。
- **⚠ セキュリティ** [#47368](https://github.com/dotnet/aspnetcore/issues/47368) — [Upgrade to .Net7] `SecurityStampValidator<TUser>` forces signout of `TwoFactorRememberMeScheme` which leads to InvalidOperationException in case scheme is not registered （Issue / open / plachor）
  `TwoFactorRememberMeScheme` を使うアプリは、対象のサインアウト handler が登録されているか確認し、未登録時の例外を回避してください。
- **非推奨/廃止** [#67134](https://github.com/dotnet/aspnetcore/issues/67134) — Deprecate Microsoft.AspNetCore.Grpc.Swagger （Issue / closed / danroth27）
  `Microsoft.AspNetCore.Grpc.Swagger` と .NET 10 の OpenAPI Analyzer に依存する利用者は、廃止方針と代替ツールを確認してください。
- **非推奨/廃止** [#64858](https://github.com/dotnet/aspnetcore/issues/64858) — Feedback / Concerns on Deprecation of OpenAPI Analyzers in .NET 10 Controllers （Issue / open / sander1095）
  .NET 10 Controller の OpenAPI Analyzer を利用する開発者は、非推奨化に関する影響と移行先をリリース情報で確認してください。

## 主要な変更点

- **破壊的変更**として、古い MVC API と `ConcurrencyLimiter` middleware の削除、antiforgery 拒否処理の見直しが進みました。
- **セキュリティ対応**では npm 依存と `System.Security.Cryptography.Xml` の更新が各リリースブランチへ反映されています。
- `Microsoft.AspNetCore.Grpc.Swagger` の削除と OpenAPI Analyzer 非推奨化が続いており、OpenAPI 利用者は代替手段を確認する必要があります。
- HTTP ヘッダーパーサーの復旧性能、Blazor の状態保持、Native AOT Components テスト基盤など、実行時信頼性と開発者体験の改善も行われました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68362 | Merging internal commits for release/9.0 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/68362> |
| PR | #68361 | Merging internal commits for release/8.0 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/68361> |
| PR | #68360 | Bump Microsoft.Build.NoTargets from 3.7.0 to 3.7.134 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68360> |
| PR | #64174 | Fix ASP0016 false positive for nested anonymous functions | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/64174> |
| PR | #68306 | Improve HTTP header parser recovery performance | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68306> |
| PR | #64278 | Update RefreshSignInAsync documentation and remove unnecessary null-conditional operators | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/64278> |
| PR | #68289 | Add Native AOT Components testing harness | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68289> |
| PR | #68250 | Support nullable array element types in parameter schemas | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68250> |
| PR | #67083 | Migrate Components.Testing from xUnit v3 to MSTest on MTP | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/67083> |
| PR | #68309 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68309> |
| PR | #68253 | Enable MSBuild node reuse for local builds | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68253> |
| PR | #68259 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68259> |
| PR | #67952 | [release/10.0] Drop Microsoft.AspNetCore.Grpc.Swagger | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67952> |
| PR | #67954 | [release/9.0] Drop Microsoft.AspNetCore.Grpc.Swagger | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67954> |
| PR | #67955 | [release/8.0] Drop Microsoft.AspNetCore.Grpc.Swagger | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67955> |
| PR | #68351 | Limit NuGet Dependabot to discovery project | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68351> |
| PR | #68261 | Remove Publish-Build-Assets variable group from release/10.0 | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/68261> |
| PR | #68001 | [release/10.0] Fix KeyRingProvider thread pool starvation on forced refresh | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68001> |
| PR | #68345 | Clarify Components code documentation guidance | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68345> |
| PR | #68308 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68308> |
| PR | #68265 | Remove Publish-Build-Assets variable group from release/8.0 | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/68265> |
| PR | #68266 | Remove Publish-Build-Assets variable group from release/9.0 | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/68266> |
| PR | #68338 | [test-quarantine] Stabilize and Unquarantine VirtualizationTest.AnchorMode_WindowScroll_HomeKeyJumpsToTop | merged | surya3655 | <https://github.com/dotnet/aspnetcore/pull/68338> |
| PR | #68066 | Add serving of .well-known/passkey-endpoints to Identity | merged | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68066> |
| PR | #68234 | Add asset path metadata attributes | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68234> |
| PR | #68119 | Emit framework versions from Blazor WASM benchmark Driver | merged | LoopedBard3 | <https://github.com/dotnet/aspnetcore/pull/68119> |
| PR | #68088 | Fix persisted state being dropped on enhanced navigation | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68088> |
| PR | #68212 | [.NET 11] Update MCP template dependency | merged | jeffhandley | <https://github.com/dotnet/aspnetcore/pull/68212> |
| PR | #64859 | fix: Ensure OpenAPI request bodies include (#59042) | merged | AbdelrahmanHassan131 | <https://github.com/dotnet/aspnetcore/pull/64859> |
| PR | #68246 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68246> |
| PR | #68200 | Improve Blazor WebAssembly E2E startup diagnostics | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68200> |
| PR | #68238 | Clarify Components E2E build workflow | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68238> |
| PR | #68211 | Drop ApiDescription.Client package | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68211> |
| PR | #68214 | Fix extra `\n` in resourceManagement for breaking change announcement | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68214> |
| PR | #67395 | Add tests for validating null values of minimal API parameters | merged | surya3655 | <https://github.com/dotnet/aspnetcore/pull/67395> |
| PR | #68096 | Fix flaky RefreshChangingUserIdentifierClosesConnection test | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68096> |
| PR | #68233 | [Infrastructure] Update vulnerable npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68233> |
| PR | #68210 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68210> |
| PR | #68224 | [test-quarantine] Quarantine AddValidationIntegrationTest.FormWithNestedValidation_Works | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68224> |
| PR | #68226 | [test-quarantine] Quarantine VirtualizationTest.AnchorMode_WindowScroll_HomeKeyJumpsToTop | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68226> |
| PR | #68280 | Unquarantine AddValidationIntegrationTest.FormWithNestedValidation_Works | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68280> |
| PR | #68277 | Unquarantine BlazorWebTemplateTest.BlazorWebTemplate_CanUsePasskeys | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68277> |
| PR | #68213 | [.NET 10] Update Model Context Protocol to 2.1.0 | merged | jeffhandley | <https://github.com/dotnet/aspnetcore/pull/68213> |
| PR | #55897 | Log whether the localization resource is found or not | merged | hishamco | <https://github.com/dotnet/aspnetcore/pull/55897> |
| PR | #68256 | [9.0] Fix Debian package descriptions | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68256> |
| PR | #68255 | [8.0] Fix Debian package descriptions | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68255> |
| PR | #68231 | [release/9.0] Update RepoTasksSystemSecurityCryptographyXmlVersion to 8.0.4 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68231> |
| PR | #68245 | [release/9.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68245> |
| PR | #67977 | Improve Sections warning messaging | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67977> |
| PR | #68207 | Update CHANGELOG for version 11.0.0-rc1 | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68207> |
| PR | #68208 | Recompile agentic workflow lockfiles | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68208> |
| PR | #68190 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68190> |
| PR | #68007 | Integrate Helix Job Monitor into all Helix-submitting pipelines | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68007> |
| PR | #68142 | Add diagnostic for missing MessagePack submodule sources | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68142> |
| PR | #68230 | Mark RenderFragment serialization API as experimental | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/68230> |
| PR | #68243 | [release/9.0] Quarantine System_UsesProvidedCertificateNotFromStore | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68243> |
| PR | #68242 | [release/8.0] Quarantine System_UsesProvidedCertificateNotFromStore | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68242> |
| PR | #67801 | [release/8.0] Update dependencies from dotnet/source-build-externals | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67801> |
| PR | #68232 | [release/10.0] Update vulnerable npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68232> |
| PR | #68189 | [release/8.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68189> |
| PR | #68188 | [release/9.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68188> |
| PR | #68175 | [release/10.0] (deps): Bump src/submodules/googletest from `3064a60` to `3940de9` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68175> |
| PR | #68173 | [release/8.0] (deps): Bump src/submodules/googletest from `3064a60` to `3940de9` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68173> |
| PR | #68172 | [release/9.0] (deps): Bump src/submodules/googletest from `3064a60` to `3940de9` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68172> |
| PR | #68126 | [release/9.0] Backport `FormsInputDateTest` fixes | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68126> |
| PR | #68125 | [release/8.0] Backport FormsInputDateTest fixes | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68125> |
| PR | #68124 | [release/10.0] Backport `FormsInputDateTest` fixes | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68124> |
| PR | #67897 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67897> |
| PR | #68236 | [release/9.0] Update branding to 9.0.20 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/68236> |
| PR | #68235 | [release/8.0] Update branding to 8.0.31 | merged | dotnet-bot | <https://github.com/dotnet/aspnetcore/pull/68235> |
| PR | #68186 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68186> |
| PR | #68064 | Fix `AnchorMode_End_PrependAtTop_ViewportStaysStable` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68064> |
| PR | #68032 | Fix Persistent Component State for Re-executed Endpoints | merged | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/68032> |
| PR | #68176 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 to 3d135325fdadd83e619a5744d58ab546917f4220 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68176> |
| PR | #68177 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 to 3d135325fdadd83e619a5744d58ab546917f4220 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68177> |
| PR | #68174 | [main] (deps): Bump src/submodules/googletest from `a503186` to `3940de9` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68174> |
| PR | #68171 | Fix Dependabot nuget scan timeout with exclude-paths | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68171> |
| PR | #68151 | [test-quarantine] Quarantine HubConnectionTests.RefreshChangingUserIdentifierClosesConnection | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68151> |
| PR | #68164 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68164> |
| PR | #68145 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68145> |
| PR | #68091 | [Infrastructure] Updated npm packages 2026-07-29 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68091> |
| PR | #68152 | [test-quarantine] Quarantine ShutdownTests.ConfigurationChangeForcesChildProcessRestart | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68152> |
| PR | #68135 | OpenAPI: Delete unused overload of WillBeComponentized | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68135> |
| PR | #68085 | Fix double-publish compression error in TestContentPackage | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68085> |
| PR | #68187 | [release/2.3] Add direct PackageReference to System.Security.Cryptography.Xml | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68187> |
| PR | #68144 | [release/2.3] Fix chronic test failures from dependency updates | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68144> |
| PR | #68120 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68120> |
| PR | #68095 | [release/2.3] Ship everything in 2.3.12 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68095> |
| PR | #68092 | [release/10.0] [Infrastructure] Updated npm packages 2026-07-29 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68092> |
| PR | #68275 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 3d135325fdadd83e619a5744d58ab546917f4220 to 9932f5f57694d50587a4b2f43efef83b2c011498 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68275> |
| PR | #68276 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 3d135325fdadd83e619a5744d58ab546917f4220 to 9932f5f57694d50587a4b2f43efef83b2c011498 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68276> |
| PR | #68274 | [main] (deps): Bump src/submodules/googletest from `3940de9` to `5f9ad7d` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68274> |
| PR | #68328 | Harden ASP.NET Core PR review validation | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68328> |
| PR | #68319 | [Blazor] Restore deferred Components.AI features | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68319> |
| PR | #68318 | [Blazor] Trim Components.AI to the claim POC | closed | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68318> |
| PR | #68291 | [Superseded] [Blazor] Aspire Dashboard AoT support | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/68291> |
| PR | #68247 | [release/8.0] Drop ApiDescription.Client package | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/68247> |
| PR | #68248 | [release/10.0] Drop ApiDescription.Client package | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/68248> |
| PR | #68249 | [release/9.0] Drop ApiDescription.Client package | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/68249> |
| PR | #64624 | Aspnetcore has a sample of Blazor wasm standalone in-tree | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/64624> |
| PR | #65497 | Clarify AddValidation behavior vs nullability/binding semantics | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/65497> |
| PR | #68184 | Register AddProjectCommand in OpenAPI tool | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68184> |
| PR | #68182 | Add Redis connection error handling in GetAndRefresh | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68182> |
| PR | #68181 | Enable Redis cache expiration and set/remove tests | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68181> |
| PR | #68257 | Replace Uri.UnescapeDataString with UrlDecoder in FormReader | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68257> |
| PR | #68196 | Add Components.AI package v1 | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/68196> |
| PR | #68244 | Replace Uri.UnescapeDataString with UrlDecoder in FormReader | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68244> |
| PR | #68241 | Replace Uri.UnescapeDataString with UrlDecoder in FormReader | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68241> |
| PR | #68183 | Replace Uri.UnescapeDataString with UrlDecoder in FormReader | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68183> |
| PR | #68162 | Improve SignalR Redis server disconnection handling | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68162> |
| PR | #67489 | Clean-up Public API for RF serialization | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67489> |
| PR | #67380 | Add OnPageChanging and OnPageChanged event support to Paginator | closed | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/pull/67380> |
| PR | #68209 | Update ModelContextProtocolVersion to 2.0.0 | closed | Varorbc | <https://github.com/dotnet/aspnetcore/pull/68209> |
| PR | #68166 | Stabilize ServerFormsTest.CanWireUpINotifyPropertyChangedToEditContext Quarantine test | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68166> |
| PR | #68180 | Register AddProjectCommand in OpenAPI tool | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68180> |
| PR | #68179 | Replace Uri.UnescapeDataString with UrlDecoder in FormReader | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68179> |
| PR | #68178 | Add Redis connection error handling in GetAndRefresh | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68178> |
| PR | #68163 | Enable Redis cache expiration and set/remove tests | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68163> |
| PR | #68161 | Update Gradle wrapper from 6.5 to 8.9 | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68161> |
| PR | #68134 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 to be7c952ae97a0b6250f004dd11e6ce952ff4b36a | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68134> |
| PR | #68133 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 1d34ead1f3b7a73d7ce702876f433973cf7a45c0 to be7c952ae97a0b6250f004dd11e6ce952ff4b36a | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68133> |
| PR | #68132 | [main] (deps): Bump src/submodules/googletest from `a503186` to `c6f0424` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68132> |
| PR | #68155 | [release/10.0] (deps): Bump src/submodules/googletest from `3064a60` to `3ff51c3` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68155> |
| PR | #68153 | [release/8.0] (deps): Bump src/submodules/googletest from `3064a60` to `3ff51c3` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68153> |
| PR | #68154 | [release/9.0] (deps): Bump src/submodules/googletest from `3064a60` to `3ff51c3` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68154> |
| PR | #68077 | [release/11.0-preview7] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68077> |
| PR | #68156 | Add a description | closed | 4bitsteams | <https://github.com/dotnet/aspnetcore/pull/68156> |
| PR | #68103 | Harden RefreshSignInCoreAsync to revalidate cookie always | closed | cincuranet | <https://github.com/dotnet/aspnetcore/pull/68103> |
| PR | #68368 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68368> |
| PR | #68358 | Bump dotnet-dump from 6.0.322601 to 6.0.408101 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68358> |
| PR | #68359 | Bump dotnet-serve from 1.10.93 to 1.10.194 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68359> |
| PR | #68365 | Preserve modified state when InputBase parsing fails | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68365> |
| PR | #68354 | [release/10.0] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68354> |
| PR | #68356 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 3d135325fdadd83e619a5744d58ab546917f4220 to 6ba2d0cd3df5ddecdd660a41eba00587835eb099 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68356> |
| PR | #68357 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 3d135325fdadd83e619a5744d58ab546917f4220 to 6ba2d0cd3df5ddecdd660a41eba00587835eb099 | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68357> |
| PR | #68353 | [main] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68353> |
| PR | #68355 | [release/9.0] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68355> |
| PR | #68352 | [release/8.0] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68352> |
| PR | #68347 | Cache display names per UI culture | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68347> |
| PR | #68350 | Harden race condition when submitting 2FA during password reset | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68350> |
| PR | #68307 | [Blazor] Support Aspire Dashboard on Native AOT | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68307> |
| PR | #68344 | Fix ApiExplorer to include FromQuery(Name) prefix in parameter names | open | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/68344> |
| PR | #68202 | Message key conventions for validation localization | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68202> |
| PR | #68341 | Fix ANCM app_offline.htm notification match using QueryCCH | open | aw0lid | <https://github.com/dotnet/aspnetcore/pull/68341> |
| PR | #68300 | [Blazor] Generate framework component metadata | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68300> |
| PR | #68297 | [Blazor] Generate AOT-safe binding metadata | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68297> |
| PR | #68295 | [Blazor] Make component serialization metadata-first | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68295> |
| PR | #68296 | [Blazor] Generate JS-invokable dispatch metadata | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68296> |
| PR | #68302 | [Blazor] Validate component metadata under Native AOT | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68302> |
| PR | #68299 | [Blazor] Generate component metadata for Native AOT | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68299> |
| PR | #68326 | [Blazor] Ship Native AOT metadata generator package | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68326> |
| PR | #68329 | [Blazor] Add Components.AI human approval flows | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68329> |
| PR | #68334 | [Blazor] Add shared agent and UI state | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68334> |
| PR | #68333 | [Blazor] Add agentic generative UI state rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68333> |
| PR | #68335 | [Blazor] Add predictive state updates | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68335> |
| PR | #68167 |  Quarantine POST_MultipleRequests_PooledStreamAndHeaders | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/68167> |
| PR | #68327 | [Blazor] Add Components.AI server tool rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68327> |
| PR | #68330 | [Blazor] Add tool-based generative UI dojo scenario | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68330> |
| PR | #68323 | [Blazor] Add Components.AI streaming chat | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68323> |
| PR | #68325 | [Blazor] Add Components.AI client tool rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68325> |
| PR | #68324 | [Blazor] Add Components.AI rich text rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68324> |
| PR | #68316 | Fix Flaky HTTP/3 Test: GET_ConnectionsMakingMultipleRequests_AllSuccess | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/68316> |
| PR | #68285 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68285> |
| PR | #68221 | [Blazor] Propagate SignalR authentication refresh to server circuits | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68221> |
| PR | #68321 | Validate QPack static table index in QPackDecoder | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68321> |
| PR | #68320 | Validate the query component of the HTTP/2 and HTTP/3 :path pseudo-header | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68320> |
| PR | #68218 | [test-quarantine] Stabilize WebSocket ping timeout test | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/68218> |
| PR | #68317 | Use TLS channel binding in Negotiate authentication | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68317> |
| PR | #68312 | [Blazor] Ship Components.AI as an out-of-band preview package | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68312> |
| PR | #68282 | Update README with build environment notes | open | AdmiralSnyder | <https://github.com/dotnet/aspnetcore/pull/68282> |
| PR | #68313 | [test-quarantine] Stabilize RedirectionTest.RedirectEnhancedPostToExternal Quarantine test | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/68313> |
| PR | #68310 | [Blazor] Add Components.AI dojo and browser testing | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68310> |
| PR | #68269 | [test-quarantine] Stabilize the async NavigationException E2E test | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/68269> |
| PR | #68281 | Keep WebView modules fallback project-local | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68281> |
| PR | #68279 | Add build infrastructure agent guidance | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68279> |
| PR | #68278 | Add kotlarmilos as a Blazor WASM area owner | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68278> |
| PR | #68194 | Support conditional passkey creation | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68194> |
| PR | #68272 | [test-quarantine] Quarantine flaky IISExpress RequestResponseTests class | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/68272> |
| PR | #68267 | Navigation lock | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/68267> |
| PR | #68263 | Remove Publish-Build-Assets variable group from release/11.0-preview6 | open | missymessa | <https://github.com/dotnet/aspnetcore/pull/68263> |
| PR | #68264 | Remove Publish-Build-Assets variable group from release/11.0-preview7 | open | missymessa | <https://github.com/dotnet/aspnetcore/pull/68264> |
| PR | #68262 | Remove Publish-Build-Assets variable group from release/11.0-preview5 | open | missymessa | <https://github.com/dotnet/aspnetcore/pull/68262> |
| PR | #68260 | Remove Publish-Build-Assets variable group from main | open | missymessa | <https://github.com/dotnet/aspnetcore/pull/68260> |
| PR | #68254 | Improve stale SFX restore diagnostics | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68254> |
| PR | #68168 | Add public API governance instructions | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68168> |
| PR | #68198 | Add passkey endpoints to MapIdentityApi | open | rolandVi | <https://github.com/dotnet/aspnetcore/pull/68198> |
| PR | #68185 | Fix NavigationManager.Refresh ignoring forceReload parameter | open | ManuelEnzo | <https://github.com/dotnet/aspnetcore/pull/68185> |
| PR | #68191 | [test-quarantine] Fix LongPolling Teardown Race on Forbidden Cleanup DELETE | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68191> |
| PR | #68222 | [test-quarantine] Improve reliability of HubConnectionTests.LongPollingUsesHttp2ByDefault | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68222> |
| PR | #68201 | Exclude restored packages from CodeQL analysis | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68201> |
| Issue | #68367 | Consider adding RSA validation to passkeys | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/68367> |
| Issue | #68366 | IIS OutOfProcess ANCM: GetProcess() hands out SERVER_PROCESS* without a caller-owned reference | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68366> |
| Issue | #68363 | Perf improvement: json, json_middleware, multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68363> |
| Issue | #68364 | Perf improvement: multiple_queries | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68364> |
| Issue | #68349 | HostMatcherPolicy builds case-sensitive DFA edges although host matching is case-insensitive | open | tompostler | <https://github.com/dotnet/aspnetcore/issues/68349> |
| Issue | #68348 | DisplayName and Label cache localized display names without culture | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68348> |
| Issue | #68237 | [API Proposal]: Add asset-path metadata for Razor expansion | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68237> |
| Issue | #68346 | Blazor Web App (InteractiveWebAssembly): Page title flashes to domain name during hydration | open | bergy6808 | <https://github.com/dotnet/aspnetcore/issues/68346> |
| Issue | #68225 | Quarantine VirtualizationTest.AnchorMode_WindowScroll_HomeKeyJumpsToTop | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68225> |
| Issue | #68343 | PrefixContainer.GetKeysFromPrefix does a full linear scan instead of using the existing sorted array | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68343> |
| Issue | #68342 | Use-after-free: ServerErrorHandler retains a borrowed reference to owner-managed response content | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68342> |
| Issue | #68331 | Add Map and Attribute for QUERY HTTP verb | open | MitchBodmer | <https://github.com/dotnet/aspnetcore/issues/68331> |
| Issue | #68283 | ANCM FILE_WATCHER: app_offline.htm notification match compares buffer capacity instead of string length, making the match path unreachable | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68283> |
| Issue | #68305 | Improve malformed-value recovery performance in HTTP header list parsers | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68305> |
| Issue | #68337 | Blazor AutoPause doesn't initialize when Interactive Server starts after enhanced navigation | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68337> |
| Issue | #68339 | BL0013 highlights unrelated code at the top of Razor files | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68339> |
| Issue | #68332 | [Blazor] Aspire Dashboard Native AOT support | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68332> |
| Issue | #68270 | Tighten the HTTP/2 and HTTP/3 `:path` guard to the printable-ASCII bound | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68270> |
| Issue | #68322 | OpenAPI: nullability is dropped for collection elements whose type is componentized | open | snemeckayova | <https://github.com/dotnet/aspnetcore/issues/68322> |
| Issue | #68252 | ASP.NET Core graceful shutdown never runs on Azure App Service Linux (blessed .NET 8 stack): no SIGTERM, no `ApplicationStopping`, no `ProcessExit` on portal Stop or Restart | closed | markianotto | <https://github.com/dotnet/aspnetcore/issues/68252> |
| Issue | #68284 | Support Blazor Server identity changes during SignalR authentication refresh | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/68284> |
| Issue | #68315 | Use TLS channel binding tokens in NegotiateHandler | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68315> |
| Issue | #68314 | Warn when a JwtBearer scheme is configured with multiple issuers sharing one signing-key pool | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68314> |
| Issue | #68223 | Quarantine AddValidationIntegrationTest.FormWithNestedValidation_Works | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68223> |
| Issue | #68301 | SignalR should reject duplicate client upload stream IDs instead of replacing active streams | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68301> |
| Issue | #68298 | Perf regression: fortunes, fortunes_ef, single_query | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68298> |
| Issue | #68294 | Perf improvement: mvc | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68294> |
| Issue | #68288 | Perf regression: fortunes_dapper, https, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68288> |
| Issue | #68287 | Perf improvement: https | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68287> |
| Issue | #68286 | Perf improvement: csrf-accepted, fortunes, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68286> |
| Issue | #68204 | Perf improvement: fortunes, json_middleware, updates | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68204> |
| Issue | #68273 | build has dependencies on VS2022 build tools | open | AdmiralSnyder | <https://github.com/dotnet/aspnetcore/issues/68273> |
| Issue | #68192 | Conditionally mediated passkey creation | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68192> |
| Issue | #68251 | Build scripts hard-disable MSBuild node reuse, hurting inner-loop perf and blocking MSBuild Server | closed | ViktorHofer | <https://github.com/dotnet/aspnetcore/issues/68251> |
| Issue | #68271 | Quarantine flaky IIS Express RequestResponseTests class (36 methods) due to connection failures | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68271> |
| Issue | #68268 | Support unions in ValidationsGenerator | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68268> |
| Issue | #68258 | Identity: external login ProviderKey equality is delegated to the database collation | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/68258> |
| Issue | #68199 | Manage existing passkeys in MapIdentityApi() | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68199> |
| Issue | #68197 | Passkey endpoints for MapIdentityApi() | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68197> |
| Issue | #68205 | Perf improvement: caching, csrf-rejected | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68205> |
| Issue | #68203 | Drop Microsoft.Extensions.ApiDescription.Client | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68203> |
| Issue | #68215 | Missing release notes for SignalR TS client v10 | open | vladislav-karamfilov | <https://github.com/dotnet/aspnetcore/issues/68215> |
| Issue | #68217 | Perf regression: antiforgery-validation, https, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68217> |
| Issue | #68240 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | open | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/68240> |
| Issue | #68239 | Add new analyzers to help MVC users migrate to TypedResults | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68239> |
| Issue | #68229 | Add compile-time asset-path expansion to Razor components | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68229> |
| Issue | #68228 | Focus indicator has insufficient color contrast on "Home" and "Privacy" links.: A11y_.NET Core Cloud Platform (ASP.NET Core)_WebSample_NonTextContrast | open | PoojaNamde | <https://github.com/dotnet/aspnetcore/issues/68228> |
| Issue | #68227 | Components.AI built-in UIs | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68227> |
| Issue | #68220 | Clarify the value of ConnectionInfo.RemoteIpAddress for HTTP/3 over QUIC/UDP | open | gfoidl | <https://github.com/dotnet/aspnetcore/issues/68220> |
| Issue | #68216 | Perf improvement: caching, json, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68216> |
| Issue | #68165 | Passkey signal options for `IPasskeyHandler<TUser>` and `SignInManager<TUser>` | open | rolandVi | <https://github.com/dotnet/aspnetcore/issues/68165> |
| Issue | #68206 | Additional overload for `Created` | open | WhosLogan | <https://github.com/dotnet/aspnetcore/issues/68206> |
| Issue | #68169 | [API Proposal]: Aspire Dashboard AoT framework support | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68169> |
| Issue | #68170 | [Blazor] Consume SignalR authentication refresh in Blazor Server circuits | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68170> |
| Issue | #68195 | racks on racks | closed | franky714oc | <https://github.com/dotnet/aspnetcore/issues/68195> |
| Issue | #17706 | allow setting permissions on unix sockets | closed | webczat | <https://github.com/dotnet/aspnetcore/issues/17706> |
| Issue | #64173 | ASP0016 False positive for nested anonymous methods | closed | halter73 | <https://github.com/dotnet/aspnetcore/issues/64173> |
| Issue | #66750 | Publish guidance around `IPasskeyHandler` and validating integrity and ownership | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66750> |
| Issue | #55634 | Cookie Authentication Handler session key is re-used even when sign out is called before signing in | closed | anarian | <https://github.com/dotnet/aspnetcore/issues/55634> |
| Issue | #63895 | PersistentState does not work between enhanced navigation SSR and WASM pages | closed | Markz878 | <https://github.com/dotnet/aspnetcore/issues/63895> |
| Issue | #64832 | [Wasm.Performance] Failed to load resource Error after benchmark run | closed | LoopedBard3 | <https://github.com/dotnet/aspnetcore/issues/64832> |
| Issue | #67844 | Ensure test coverage and correct behavior for OpenAPI when minimal API parameter is `T?[]` | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67844> |
| Issue | #66708 | Quarantine BlazorWebTemplateTest.BlazorWebTemplate_CanUsePasskeys | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66708> |
| Issue | #67257 | Consider Backporting Reconnection Fix to .NET 10 | closed | Mike-E-angelo | <https://github.com/dotnet/aspnetcore/issues/67257> |
| Issue | #43109 | Log a message when ResourceManagerStringLocalizer cannot find a resource | closed | Vivelin | <https://github.com/dotnet/aspnetcore/issues/43109> |
| Issue | #59042 | description is missing when using with FromForm | closed | cjdxhjj | <https://github.com/dotnet/aspnetcore/issues/59042> |
| Issue | #66831 | Add better warnings and errors for Sections | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/66831> |
| Issue | #68087 | Remove OpenAPI analyzers in .NET 11 | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68087> |
| Issue | #67033 | Validation attributes are ignored for nullable value types when passing a null value | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67033> |
| Issue | #67755 | [dotnet-sdk-11.0.100-preview.7.26360.111] grandnode app launch failed with MethodNotFoundException | closed | WeiweiCaiAcpt | <https://github.com/dotnet/aspnetcore/issues/67755> |
| Issue | #61726 | Breaking changes in identity hashing algorythms check | closed | piskov | <https://github.com/dotnet/aspnetcore/issues/61726> |
| Issue | #65050 | OpenAPI generation throws InvalidCastException for uint property with [DefaultValue(0)] | closed | alan-andrews | <https://github.com/dotnet/aspnetcore/issues/65050> |
| Issue | #48299 | SecurityStampValidator forces sign out of TwoFactorRememberMeScheme, which throws exception when no sign-out authentication handler is registered | closed | zwoolli | <https://github.com/dotnet/aspnetcore/issues/48299> |
| Issue | #62962 | OpenAPI HashSets doesn't generate correctly | closed | niemyjski | <https://github.com/dotnet/aspnetcore/issues/62962> |
| Issue | #64386 | [PersistentState] not working when page is re-executed | closed | AndreiGorlov | <https://github.com/dotnet/aspnetcore/issues/64386> |
| Issue | #55556 | OpenApiReference default className breaks NSwag generated code when using MultipleClients | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/55556> |
| Issue | #62966 | OpenAPI: Version Props are missing the version pattern "pattern": "^\\d+(\\.\\d+){1,3}$" | closed | niemyjski | <https://github.com/dotnet/aspnetcore/issues/62966> |
| Issue | #61807 | Known Build Error: ProcessBufferedRenderBatches_WritesRenders fails | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/61807> |
| Issue | #63876 | [blazor] rewrite WASM rendering pipeline without access to linear memory | closed | pavelsavara | <https://github.com/dotnet/aspnetcore/issues/63876> |
| Issue | #62386 | Quarantine ServerFormsTest.CanWireUpINotifyPropertyChangedToEditContext | closed | radical | <https://github.com/dotnet/aspnetcore/issues/62386> |
| Issue | #57302 | [Blazor] Update service worker to support fingerprinting | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/57302> |
| Issue | #66297 | ASP.NET | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/66297> |
| Issue | #66463 | Pull request | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/66463> |
| Issue | #66464 | Documents API | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/66464> |
| Issue | #66497 | SHA-256-RSA@moelwintun25519 | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/66497> |
| Issue | #66906 | API | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/66906> |
| Issue | #66993 | .net 11 api | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/66993> |
| Issue | #67149 | dotnet/aspnetcore: API | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/67149> |
| Issue | #67198 | ## Pull request overview | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/67198> |
| Issue | #67199 | API | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/67199> |
| Issue | #67558 | API proposal | closed | alexandercarlis2-dotcom | <https://github.com/dotnet/aspnetcore/issues/67558> |
| Issue | #58882 | OpenApi ignores JsonNumberHandling.WriteAsString | closed | adrianm64 | <https://github.com/dotnet/aspnetcore/issues/58882> |
| Issue | #50694 | Minimal ASP.NET Core AoT Publish through Visual Studio Creates Broken EXE- Failed to load assembly 'Microsoft.AspNetCore' | closed | RyanLamansky | <https://github.com/dotnet/aspnetcore/issues/50694> |
| Issue | #68084 | Harden RefreshSignInCoreAsync to revalidate cookie always | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68084> |
