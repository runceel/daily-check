# dotnet/aspnetcore

対象期間: 2026-06-11 00:49:32 〜 2026-06-12 02:03:55 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 19 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 9 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 7 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67097](https://github.com/dotnet/aspnetcore/pull/67097) — Update default OpenApi version to 3.2 （PR / open / Youssef1313）
  OpenAPI 3.0/3.1 に依存する実装やツール統合の互換性を確認し、必要に応じて明示的なバージョン指定への移行が必要です。
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware （PR / open / DeagleGross）
  カスタム antiforgery/CSRF 実装を持つ Razor Components アプリケーションは、ミドルウェア統合の変更を確認して対応が必要です。

## 主要な変更点

- **⚠ OpenAPI バージョン破壊的変更**: OpenAPI 仕様の既定値が 3.2 に更新（v3.0/v3.1 依存の実装の確認が必要）
- **⚠ Razor Components CSRF 処理変更**: antiforgery/CSRF ミドルウェアの上流統合に変更（カスタム CSRF 実装の見直しが必要）
- 複数の npm 依存関係の定期更新（v8.0、v9.0、v10.0）
- SignalR での union 型サポート検証（PR #67125）
- Kestrel HTTPS テスト安定化と test-quarantine の最適化


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67171 | [test-quarantine] Unquarantine Http3RequestTests.GET_GracefulServerShutdown_AbortRequestsAfterHostTimeout | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67171> |
| PR | #67169 | [test-quarantine] Unquarantine ServerVirtualizationTest.CanRenderHtmlTable | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67169> |
| PR | #67168 | Raise test-quarantine effective-token budget to 50M, halve run frequency | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67168> |
| PR | #67167 | Precompute test-quarantine Part 1 gathering in pre-activation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67167> |
| PR | #67165 | Fix docs issues | merged | gewarren | <https://github.com/dotnet/aspnetcore/pull/67165> |
| PR | #67164 | [release/8.0] Update Microsoft Identity Web package versions to 3.15.1 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67164> |
| PR | #67163 | [release/9.0] Update Microsoft Identity Web package versions to 3.15.1 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67163> |
| PR | #67162 | [release/10.0] Update ID.Web versions | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67162> |
| PR | #67161 | Update ID.Web packages | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67161> |
| PR | #67158 | Fix internal CI NativeAOT cross-build for ARM/ARM64/musl legs | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67158> |
| PR | #67144 | [release/8.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67144> |
| PR | #67143 | [release/9.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67143> |
| PR | #67142 | [release/10.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67142> |
| PR | #67141 | Replace VS2026 Pre Scout Helix queue names | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67141> |
| PR | #67140 | Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67140> |
| PR | #67125 | Verify SignalR union support as hub method parameters and return types | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67125> |
| PR | #67057 | [release/9.0] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67057> |
| PR | #66867 | fix(s390x/ppc64le): set RuntimeIdentifier for BasicLinkedApp in DotNe… | merged | medhatiwari | <https://github.com/dotnet/aspnetcore/pull/66867> |
| PR | #66625 | Add missing types to NullableConverter's supported type allowlist | merged | sheiksyedm | <https://github.com/dotnet/aspnetcore/pull/66625> |
| PR | #67170 | [test-quarantine] Unquarantine ServerVirtualizationTest.CancelsOutdatedRefreshes_Async | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67170> |
| PR | #67166 | [release/11.0-preview5] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67166> |
| PR | #66887 | Update Blazor WASM service defaults template metadata | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/66887> |
| PR | #67159 | Rename argument in DisplayNameInfo.GetDisplayName | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67159> |
| PR | #67157 | [release/8.0] Reject ASCII control characters in cookie auth return URLs | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67157> |
| PR | #67156 | [release/9.0] Reject ASCII control characters in cookie auth return URLs | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67156> |
| PR | #67155 | [release/10.0] Reject ASCII control characters in cookie auth return URLs | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67155> |
| PR | #67153 | Update area owners for command line tools and minimal APIs | open | danroth27 | <https://github.com/dotnet/aspnetcore/pull/67153> |
| PR | #67150 | Use more performant span APIs | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/67150> |
| PR | #67148 | Adds footer templates for the QuickGrid and its columns  | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67148> |
| PR | #67147 | Enhance EditContext to support field-level validation state change notification | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/67147> |
| PR | #67146 | Fix null reference issue caused by validation exception when circuit is disposed | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/67146> |
| Issue | #67160 | Perf regression: antiforgery-noop, json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67160> |
| Issue | #67154 | [API Proposal] Support modern Cache-Control directives in ResponseCacheAttribute and CacheProfile (s-maxage, stale-while-revalidate, stale-if-error) (RFC 9111, RFC 5861) | open | marceloboeira | <https://github.com/dotnet/aspnetcore/issues/67154> |
| Issue | #67152 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67152> |
| Issue | #67151 | Unreachable code in RazorPagesRazorViewEngineOptionsSetup.cs | open | Babaijan | <https://github.com/dotnet/aspnetcore/issues/67151> |
| Issue | #67138 | Perf improvement: json_middleware | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67138> |
| Issue | #67131 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/67131> |
| Issue | #66607 | In Blazor Nullable<TimeSpan> generates error "The value '' is not valid for 'Property'." when value is empty | closed | neoGeneva | <https://github.com/dotnet/aspnetcore/issues/66607> |
| Issue | #66547 | SignalR: Verify union types work as hub method parameters and return values | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66547> |
| Issue | #66004 | [dnceng-bot] Branch `aspnetcore/main` can't be mirrored to Azdo fast forward branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/66004> |
| Issue | #65852 | Quarantine Kestrel HTTPS and TLS tests failing with OpenSSL error code 77 | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/65852> |
| Issue | #39985 | Quarantine GET_GracefulServerShutdown_AbortRequestsAfterHostTimeout | closed | Tratcher | <https://github.com/dotnet/aspnetcore/issues/39985> |
