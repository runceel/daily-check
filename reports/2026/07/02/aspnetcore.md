# dotnet/aspnetcore

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 10 |
| クローズ (未マージ) PR     | 13 |
| 新規 PR (オープン中)       | 20 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 18 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67543](https://github.com/dotnet/aspnetcore/issues/67543) — [NETSDKE2E][ARM64 Only] NET10.0.400-preview.0.26322.102 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project （Issue / open / v-huiwong）
  <!-- 影響: .NET 10 SDK の Web API テンプレートで Microsoft.OpenApi 2.0.0 の既知の高深刻度脆弱性 (NU1903) が警告されるため、テンプレート/SDK チームは参照バージョンの更新要否を確認する必要がある。同期間中に #67468 で Microsoft.OpenApi を 3.7.0 へ更新する PR がマージ済みで、関連が疑われる。 -->
- **⚠ セキュリティ** [#67505](https://github.com/dotnet/aspnetcore/issues/67505) — Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 （Issue / open / LiorBanai）
  <!-- 影響: Microsoft.AspNetCore.OpenApi パッケージを利用しているアプリの開発者は、依存先 Microsoft.OpenApi に CVE-2026-49451 が存在するため、パッケージ更新（#67468 の 3.7.0 反映版）の取り込みを確認する必要がある。 -->

## 主要な変更点

- **⚠ セキュリティ**: `Microsoft.AspNetCore.OpenApi` が依存する `Microsoft.OpenApi` に高深刻度の脆弱性（CVE-2026-49451 / NU1903 警告）が報告されており（#67543, #67505）、同時期に `Microsoft.OpenApi` を 3.7.0 へ更新する PR（#67468）がマージされています。該当パッケージを利用しているプロジェクトは更新の反映状況を確認してください。
- OpenAPI 関連の改善が複数マージされました。列挙型（enum）シナリオの網羅テスト追加（#67485）、Terminal Logger へのドキュメント生成出力の可視化（#66922）など、OpenAPI ドキュメント生成まわりの品質・可観測性向上が続いています。
- SignalR npm パッケージへの LICENSE ファイル同梱（#67496）や、QuickGrid の `GridSort` 型不一致時の診断メッセージ改善（#67413）など、開発者体験（DX）向上系の小粒 PR がマージされました。
- ルーティングのドキュメントハイライトがパーシャルクラス分割時に効かない不具合の修正（#66770）や、RFC 9110 に合わせた `ClientErrorMapping` の 500 タイトル修正（#65590）など、細かな不具合修正も継続しています。
- オープン中には、DataAnnotations の `ValidationContext` を MEV（Minimal API Validation）の公開 API から除去する提案（#67549 / Issue #67550）や、期限切れパスキーセッションのサインイン失敗ハンドリング改善（#67539）など、今後の破壊的変更候補となりうる議論も進行中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67502 | [build-ops] Update browser-testing dependencies (Selenium 4.45.0, Playwright 1.61.0) | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67502> |
| PR | #67501 | [package] Update Microsoft.Windows.CsWin32 from 0.3.275 to 0.3.296 | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67501> |
| PR | #67496 | Include LICENSE file in published SignalR npm packages | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67496> |
| PR | #67485 | Add tests to cover all enum scenarios for OpenAPI | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67485> |
| PR | #67468 | Update Microsoft.OpenApi to 3.7.0 | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67468> |
| PR | #67413 | Improve QuickGrid diagnostics for mismatched GridSort types | merged | BharatRamsf3693 | <https://github.com/dotnet/aspnetcore/pull/67413> |
| PR | #66922 | feat(OpenApi): surface document generation output in Terminal Logger docs | merged | EduardF1 | <https://github.com/dotnet/aspnetcore/pull/66922> |
| PR | #66770 | Fix route document highlights across partial-class files | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/66770> |
| PR | #65590 | Fix ClientErrorMapping 500 title to match RFC 9110 | merged | kubaflo | <https://github.com/dotnet/aspnetcore/pull/65590> |
| PR | #65453 | Fix RDG generating invalid code for types from other source generators | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/65453> |
| PR | #67548 | Enable WebAssembly debugging in Blazor Gateway | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/67548> |
| PR | #67537 | https/github.com/vercel/next.js/pull/95218notification_referrer_id=NT_kwHOEa0NYtoAJFJlcG9zaXRvcnk7NzAxMDc3ODY7SXNzdWU7NDc1NTM0MzQ5MQ: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/pull/67537> |
| PR | #67536 | aspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/pull/67536> |
| PR | #67531 | Create เน็ตฟรีทรูaspnetcore@noreply.github.comaspnetcorehttps: aspnet… | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/pull/67531> |
| PR | #67516 | aspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/pull/67516> |
| PR | #67515 | aspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.gith… | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/pull/67515> |
| PR | #67506 | Create aspnetcore@noreply.github.comaspnetcorehttps | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/pull/67506> |
| PR | #66421 | Surface dotnet-getdocument output to Terminal Logger | closed | KitKeen | <https://github.com/dotnet/aspnetcore/pull/66421> |
| PR | #66135 | Fix TerminalLogger hiding Exec output | closed | minaxi98 | <https://github.com/dotnet/aspnetcore/pull/66135> |
| PR | #66084 | feat: Surface generated OpenAPI document paths via MSBuild Message | closed | selcukgural | <https://github.com/dotnet/aspnetcore/pull/66084> |
| PR | #65870 | Surface OpenAPI generation output with TerminalLogger | closed | Bellambharath | <https://github.com/dotnet/aspnetcore/pull/65870> |
| PR | #64718 | Surface ApiDescription.Server logs in Terminal Logger | closed | csa7mdm | <https://github.com/dotnet/aspnetcore/pull/64718> |
| PR | #58167 | Run static code analysis on IIS | closed | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/58167> |
| PR | #67552 | Normalize C++ PlatformToolsetVersion and centralize PlatformToolset | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67552> |
| PR | #67551 | feat: Add EditForm.SubmitAsync for programmatic form submission | open | JayArrowz | <https://github.com/dotnet/aspnetcore/pull/67551> |
| PR | #67549 | Remove DataAnnotations' ValidationContext from MEV public API | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67549> |
| PR | #67547 | Fix Blazor WASM Standalone HTTPS failure with Gateway | open | lewing | <https://github.com/dotnet/aspnetcore/pull/67547> |
| PR | #67545 | Disable compression in Microsoft.AspNetCore.App.Internal.Assets | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67545> |
| PR | #67539 | SignInManager: return SignInResult.Failed for expired passkey session challenge | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/67539> |
| PR | #67530 | Adding analyzer to warn about JSInterop calls not wrapped in a try catch block | open | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/67530> |
| PR | #67529 | [release/10.0] (deps): Bump src/submodules/googletest from `7140cd4` to `973323e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67529> |
| PR | #67528 | [release/10.0] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67528> |
| PR | #67527 | [release/9.0] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67527> |
| PR | #67526 | [release/9.0] (deps): Bump src/submodules/googletest from `7140cd4` to `973323e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67526> |
| PR | #67525 | [release/8.0] (deps): Bump src/submodules/googletest from `7140cd4` to `973323e` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67525> |
| PR | #67524 | [release/8.0] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67524> |
| PR | #67521 | [test-quarantine] Unquarantine RazorRuntimeCompilationHostingStartupTest (issue #56553) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67521> |
| PR | #67520 | [test-quarantine] Quarantine Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67520> |
| PR | #67519 | [test-quarantine] Quarantine Microsoft.AspNetCore.Identity.Test.UserManagerTest | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67519> |
| PR | #67513 | Fix Flaky test: FormsInputDateTest.InputDateInteractsWithEditContext_NullableDateTimeOffset | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67513> |
| PR | #67512 | Harden "chunked" handling in ANCM | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67512> |
| PR | #67510 | Use internal test hooks for cached AppContext switch overrides | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67510> |
| PR | #67503 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67503> |
| Issue | #67550 | Remove DataAnnotations dependency in MEV public API | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67550> |
| Issue | #67546 | Blazor Server WebSocket Kestrel over HTTPS not upgrading to 101 on Windows 11 IoT LTSC clients as HTTP/2 is negotiated | open | 1cue-jrupp | <https://github.com/dotnet/aspnetcore/issues/67546> |
| Issue | #67544 | Stabilize ValidatableTypeAttribute and SkipValidationAttribute | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67544> |
| Issue | #67538 | https://docs.github.com/?search-overlay-open=true&search-overlay-ask-ai=true&search-overlay-input=https%2Fgithub.com%2Fvercel%2Fnext.js%2Fpull%2F95218notification_referrer_id%3DNT_kwHOEa0NYtoAJFJlcG9zaXRvcnk7NzAxMDc3ODY7SXNzdWU7NDc1NTM0MzQ5MQ | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67538> |
| Issue | #67535 | Home.md | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67535> |
| Issue | #67534 | Home.md | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67534> |
| Issue | #67533 | https://github.com/dotnet/aspnetcore/issues/67532 | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67533> |
| Issue | #67532 | เน็ตฟรีทรูaspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67532> |
| Issue | #67523 | aspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67523> |
| Issue | #67522 | aspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67522> |
| Issue | #67518 | Quarantine Http3RequestTests.POST_ClientCancellationUpload_RequestAbortRaised | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67518> |
| Issue | #67517 | Quarantine Microsoft.AspNetCore.Identity.Test.UserManagerTest | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67517> |
| Issue | #67514 | aspnetcore@noreply.github.comaspnetcorehttps: aspnetcore@noreply.github.comaspnetcore@noreply.github.comsa | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67514> |
| Issue | #67509 | Minimal API nullable enum defaults to enum value 0 instead of null | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67509> |
| Issue | #67508 | [Linux/Mac] Fail to run the dev-certs tools with error "Permission denied" | open | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67508> |
| Issue | #67507 | When debugging the Blazor WebAssembly project, the breakpoint in Counter.razor file can't be hit | open | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67507> |
| Issue | #67543 | [NETSDKE2E][ARM64 Only] NET10.0.400-preview.0.26322.102 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project | open | v-huiwong | <https://github.com/dotnet/aspnetcore/issues/67543> |
| Issue | #67505 | Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 | open | LiorBanai | <https://github.com/dotnet/aspnetcore/issues/67505> |
| Issue | #67504 | aspnetcore@noreply.github.com | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67504> |
| Issue | #67499 | ValidationContext.ObjectInstance references the root model instead of the nested object when validating complex object graphs | closed | paraspirotas-ops | <https://github.com/dotnet/aspnetcore/issues/67499> |
| Issue | #67486 | Include the LICENSE file in the published @microsoft/signalr and @microsoft/signalr-protocol-msgpack npm packages | closed | Jarmy123 | <https://github.com/dotnet/aspnetcore/issues/67486> |
| Issue | #66958 | AspnetcoreModuleV2 shutdowns worker threads but not worker process, which results in 503 | closed | pledwon2 | <https://github.com/dotnet/aspnetcore/issues/66958> |
| Issue | #66838 | Add option to suppress charset in Content-Type for JSON responses | closed | Dave-Senn | <https://github.com/dotnet/aspnetcore/issues/66838> |
| Issue | #64398 | Document highlights: Syntax node is not within syntax tree | closed | Peter-Juhasz | <https://github.com/dotnet/aspnetcore/issues/64398> |
| Issue | #62273 | Microsoft.Extensions.ApiDescription.Server - Surface Invocation with new TerminalLogger | closed | MattParkerDev | <https://github.com/dotnet/aspnetcore/issues/62273> |
| Issue | #56437 | Improve diagnostics on incorrect GridSort specification in QuickGrid | closed | ssomers | <https://github.com/dotnet/aspnetcore/issues/56437> |
| Issue | #16880 | Inconsistency between ApiBehaviorOptions.ClientErrorMapping and ReasonPhrases.GetReasonPhrase() using 500 | closed | ts46235 | <https://github.com/dotnet/aspnetcore/issues/16880> |
