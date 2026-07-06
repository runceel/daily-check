# dotnet/aspnetcore

対象期間: 2026-07-03 04:00:53 〜 2026-07-05 04:03:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 13 |
| 新規 Issue                 | 13 |
| クローズ Issue             | 9 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#67559](https://github.com/dotnet/aspnetcore/issues/67559) — Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData （Issue / open / rokonec）
  認可ポリシーのメタデータ扱いに不整合があるため、OpenAPI/認可設定を使う実装では挙動確認が必要です。
- **⚠ セキュリティ** [#67505](https://github.com/dotnet/aspnetcore/issues/67505) — Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 （Issue / open / LiorBanai）
  OpenAPI パッケージの依存関係に CVE 影響が含まれるため、パッケージ更新方針を確認しておくとよいです。
- **⚠ セキュリティ** [#66348](https://github.com/dotnet/aspnetcore/issues/66348) — NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) （Issue / open / Gebov）
  脆弱性監査警告を CI でエラー扱いする構成では、依存関係の更新と既存ワークフローの見直しが必要です。
- **⚠ セキュリティ** [#64952](https://github.com/dotnet/aspnetcore/issues/64952) — WebAssembly.Authentication breaks content security policy, requires unsafe-eval （Issue / open / dosolkowski-work）
  WebAssembly 認証で CSP の緩和が必要になる場合があるため、既存のセキュリティポリシー設定を確認してください。

## 主要な変更点

- OpenAPI / minimal API 周りでは、スキーマ解決やバリデーションの改善が複数 PR で進んでいます。
- Blazor 側では passkey 登録や CSRF 保護、Virtualize のスクロール挙動改善が入っており、クライアント実装の影響確認が必要です。
- 依存関係更新や圧縮無効化、診断ログ追加により、既存のパッケージ運用とデバッグ体験の向上が見込めます。
- セキュリティ関連の Issue が複数オープンのため、次回チェックでは脆弱性対応の進捗と影響範囲を追う価値があります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67582 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 7013d9d28581f8597f7ddc73dcd79e4d91af866d to b8b677cf7d0e22a28f3a42b89e02527aa150a47b | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67582> |
| PR | #67581 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 7013d9d28581f8597f7ddc73dcd79e4d91af866d to b8b677cf7d0e22a28f3a42b89e02527aa150a47b | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67581> |
| PR | #67580 | [main] (deps): Bump actions/cache/restore from 5.0.5 to 6.1.0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67580> |
| PR | #67579 | [main] (deps): Bump src/submodules/googletest from `8b53336` to `973323e` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67579> |
| PR | #67573 | Fix array handling for JSON pointers when resolving OpenAPI schemas | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67573> |
| PR | #67555 | Fix Virtualize AnchorMode=End re-engaging bottom after user scrolls up. | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67555> |
| PR | #67545 | Disable compression in Microsoft.AspNetCore.App.Internal.Assets | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67545> |
| PR | #67528 | [release/10.0] (deps): Bump src/submodules/MessagePack-CSharp from `9614e6f` to `365965f` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67528> |
| PR | #67587 | Update Microsoft.OpenApi packages to 2.9.0 from OpenAPI.NET PR #2927 | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67587> |
| PR | #67583 | [main] (deps): Bump actions/cache/save from 5.0.5 to 6.1.0 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67583> |
| PR | #67567 | Add IsActive and ActivationChanged to NavLink | closed | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67567> |
| PR | #67599 | Creating Blazor Gateway CLI package and tests | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67599> |
| PR | #67591 | Fix RDG check for endpoint uniqueness | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67591> |
| PR | #67590 | fix(blazor): remove redundant antiforgery validation on passkey endpoints | open | Aswinesag | <https://github.com/dotnet/aspnetcore/pull/67590> |
| PR | #67589 | Fix Blazor passkey registration under CsrfProtection | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67589> |
| PR | #67585 | Added diagnostic logging for ComponentState lifecycle transitions | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/67585> |
| PR | #67584 | Reject connection-specific headers sent via HPACK/QPACK indexed names | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67584> |
| PR | #67578 | Fix service parameter detection logic for minimal API validation filter | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67578> |
| PR | #67577 | [test-quarantine] Unquarantine TlsHandshakeFeatureTests.SetsTlsHandshakeFeatureForHttps (issue #49306) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67577> |
| PR | #67576 | [test-quarantine] Re-quarantine TestServerTests.WebSocketsWorks (#65914) | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67576> |
| PR | #67572 | Fix unbounded memory allocation in TargetPickerUi debug proxy | open | rustamque | <https://github.com/dotnet/aspnetcore/pull/67572> |
| PR | #67571 | Fix resource leaks and exception handling in OAuth and OpenIdConnect | open | rustamque | <https://github.com/dotnet/aspnetcore/pull/67571> |
| PR | #67569 | Fix resource leaks in BlazorWindow (PhotinoPlatform sample) | open | rustamque | <https://github.com/dotnet/aspnetcore/pull/67569> |
| PR | #67568 | Fix exception handling and culture-specific parsing in TargetPickerUi | open | rustamque | <https://github.com/dotnet/aspnetcore/pull/67568> |
| Issue | #67605 | Perf improvement: json, json_middleware, single_query | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67605> |
| Issue | #67606 | Perf regression: kestrel-hostheader-mismatch | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67606> |
| Issue | #67604 | Perf improvement: json, json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67604> |
| Issue | #67602 | Perf improvement: fortunes, fortunes, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67602> |
| Issue | #67603 | Perf improvement: https, json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67603> |
| Issue | #67600 | Perf improvement: fortunes_ef | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67600> |
| Issue | #67601 | Perf regression: updates | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67601> |
| Issue | #67598 | Perf improvement: kestrel-header-symbols | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67598> |
| Issue | #67588 | Blazor Web App Individual-auth passkey registration fails with antiforgery 500 under the new CsrfProtection middleware | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67588> |
| Issue | #67586 | Analyzer: Warn when validation attribute is applied on minimal API parameter which is bound from service | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67586> |
| Issue | #67575 | Analyzer: Warn on `IEnumerable` minimal API parameters that don't have explicit binding source | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67575> |
| Issue | #67574 | [area-blazor] Blazor WASM Client exceptions do not trigger debugger in .NET 11 Preview 6 | open | Chakolito | <https://github.com/dotnet/aspnetcore/issues/67574> |
| Issue | #67570 | Perf improvement: fortunes, single_query | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67570> |
| Issue | #67566 | Perf improvement: kestrel-encoded-url | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67566> |
| Issue | #67556 | [FromQuery] Model binding property is filled with a random value when query doesn't contain the property | closed | zwcloud | <https://github.com/dotnet/aspnetcore/issues/67556> |
| Issue | #66800 | OpenApiSchemaService throws internally on references with arrays | closed | Ramstad | <https://github.com/dotnet/aspnetcore/issues/66800> |
| Issue | #65759 | OpenAPI: Dictionary properties produce empty/unspecified schema for derived types under `JsonDerivedType` | closed | FloEdelmann | <https://github.com/dotnet/aspnetcore/issues/65759> |
| Issue | #64795 | Inconsistent behavior when passing enum values in json body | closed | tobilinde | <https://github.com/dotnet/aspnetcore/issues/64795> |
| Issue | #61156 | Awaiting for some time in the ItemsProvider method in the Virtualize component and the user scrolling leads to unpredictable scrolling behaviour | closed | ben-goldie | <https://github.com/dotnet/aspnetcore/issues/61156> |
