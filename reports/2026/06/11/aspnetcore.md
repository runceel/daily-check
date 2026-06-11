# dotnet/aspnetcore

対象期間: 2026-06-09 23:05:02 〜 2026-06-11 00:49:32 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 12 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 16 |
| 新規 Issue                 | 15 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware （PR / open / DeagleGross）
  Razor Components/Blazor の antiforgery 構成に依存するアプリは、上流 middleware への委譲でテンプレートや `UseAntiforgery` の要否が変わる可能性を確認してください。
- **⚠ セキュリティ** [#66478](https://github.com/dotnet/aspnetcore/issues/66478) — Support Device Bound Session Credentials (DBSC) （Issue / open / blowdart）
  認証 Cookie/セッション保護を強化したいアプリは、DBSC 対応の設計状況を継続ウォッチしてください。
- **⚠ セキュリティ** [#66348](https://github.com/dotnet/aspnetcore/issues/66348) — NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) （Issue / open / Gebov）
  CI で NuGet 脆弱性監査を厳格化するチームは、NU190x をエラー扱いにする運用影響を確認してください。
- **非推奨/廃止** [#67134](https://github.com/dotnet/aspnetcore/issues/67134) — Deprecate Microsoft.AspNetCore.Grpc.Swagger （Issue / open / danroth27）
  `Microsoft.AspNetCore.Grpc.Swagger` 利用者は、非推奨化の方針と移行先を早めに確認する必要があります。

## 主要な変更点

- Razor Components の antiforgery/CSRF middleware 委譲が破壊的変更候補としてオープンしており、Blazor テンプレートから冗長な `app.UseAntiforgery()` を外す PR も並行しています。
- セキュリティ面では DBSC 対応と NuGet 脆弱性監査警告のエラー化が継続議論中です。認証強化とサプライチェーン監査の両面で今後の設計確定を追う必要があります。
- `Microsoft.AspNetCore.Grpc.Swagger` の非推奨化 Issue が新規に上がっており、gRPC + Swagger 連携を使うプロジェクトは移行先確認が必要です。
- マージ済み PR では OpenAPI union support、gRPC transcoding の `json-name` alias 対応、HTTP/2・HTTP/3 path header 検証修正、キャッシュキー修正など、Web API 周辺の品質改善が目立ちます。
- Native AOT tools で Control Flow Guard を有効化する変更も入り、ランタイム/ツールチェーンの堅牢化が進んでいます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67129 | Move test-quarantine Source B PR selection into a pre-activation step | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67129> |
| PR | #67115 | Verify test-quarantine Source B PRs via batched GraphQL | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67115> |
| PR | #67112 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67112> |
| PR | #67110 | Avoid caching responses for authenticated users | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67110> |
| PR | #67109 | fix http2/3 path header ASCII symbols validation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67109> |
| PR | #67108 | gRPC transcoding: respecting json-name aliases | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67108> |
| PR | #67107 | Update MessagePack | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67107> |
| PR | #67106 | Enable control flow guard for native AOT tools | merged | DamianEdwards | <https://github.com/dotnet/aspnetcore/pull/67106> |
| PR | #67105 | Merging internal commits for release/8.0 | merged | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/67105> |
| PR | #67104 | Merging internal commits for release/9.0 | merged | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/67104> |
| PR | #67001 | ApiExplorer and OpenAPI unions support | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67001> |
| PR | #66936 | Fix: add KeySubDelimiter between multi-value Vary header values in ResponseCaching and OutputCaching | merged | Bellambharath | <https://github.com/dotnet/aspnetcore/pull/66936> |
| PR | #67144 | [release/8.0] Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67144> |
| PR | #67143 | [release/9.0] Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67143> |
| PR | #67142 | [release/10.0] Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67142> |
| PR | #67141 | Replace VS2026 Pre Scout Helix queue names | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67141> |
| PR | #67140 | Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67140> |
| PR | #67137 | Add warning and code fix suggestion for non-public/static `[JSInvokable]` methods | open | damyanpetev | <https://github.com/dotnet/aspnetcore/pull/67137> |
| PR | #67136 | Update Swashbuckle.AspNetCore to latest | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67136> |
| PR | #67135 | Avoid exception-driven parsing for OpenAPI XML string examples | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67135> |
| PR | #67130 | Separate media components into Microsoft.AspNetCore.Components.Media package | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67130> |
| PR | #67125 | Verify SignalR union support as hub method parameters and return types | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67125> |
| PR | #67120 | Provide the column resize support to Quick Grid component | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67120> |
| PR | #67119 | Remove redundant app.UseAntiforgery() from Blazor Web templates | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67119> |
| PR | #67118 | [release/10.0] OpenAPI: Fix duplicate xml documentation ids for Generic properties and references | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67118> |
| PR | #67114 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67114> |
| PR | #67113 | [release/9.0] Update dependencies from dotnet/source-build-assets | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67113> |
| PR | #67111 | Add SignalR Auth Refresh support to server and .NET client | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67111> |
| Issue | #67145 | API Proposal: Add `IBinaryContent` marker interface for binary content in OpenAPI descriptions | open | mikekistler | <https://github.com/dotnet/aspnetcore/issues/67145> |
| Issue | #67138 | Perf improvement: json_middleware | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67138> |
| Issue | #67139 | Perf regression: https, json, tls-renegotiation-kestrel | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67139> |
| Issue | #67134 | Deprecate Microsoft.AspNetCore.Grpc.Swagger | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67134> |
| Issue | #67132 | Consolidate `ValidatableTypeAttribute` | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67132> |
| Issue | #67131 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | open | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/67131> |
| Issue | #67128 | Runtime update with uninstall set to nextSession uninstalls latest version as well | open | LukasChristel | <https://github.com/dotnet/aspnetcore/issues/67128> |
| Issue | #67127 | Development Certificate Not Trusted by Firefox on Fedora 44 | open | cornem | <https://github.com/dotnet/aspnetcore/issues/67127> |
| Issue | #67126 | [Blazor] Optionally include a .github/copilot/settings.json file on the templates | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67126> |
| Issue | #67124 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67124> |
| Issue | #67123 | Add `Func<IServiceProvider, IEnumerable<X509Certificate2>>` overload for `UnprotectKeysWithAnyCertificate` | open | justindbaur | <https://github.com/dotnet/aspnetcore/issues/67123> |
| Issue | #67122 | ValidationsGenerator silently skips endpoint handlers passed as delegate variables or parameters | open | ANcpLua | <https://github.com/dotnet/aspnetcore/issues/67122> |
| Issue | #67121 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67121> |
| Issue | #67117 | [OpenApi] Improper de-duplicated model lead broken generated schema when unrelated Model have same class Name | closed | tebeco | <https://github.com/dotnet/aspnetcore/issues/67117> |
| Issue | #67116 | Get " /_framework/blazor.web.js net::ERR_ABORTED 404 (Not Found)" error when running Blazor App | open | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67116> |
| Issue | #66721 | ResponseCaching/OutputCaching: incorrect cache key computation for multi-value Vary headers | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/66721> |
| Issue | #66691 | Microsoft.Extensions.Validation.ValidationsGenerator - static properties cause circular reference | closed | RichardD2 | <https://github.com/dotnet/aspnetcore/issues/66691> |
| Issue | #66544 | OpenAPI: Generate anyOf schemas for C# union types | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/66544> |
| Issue | #65307 | Missing Results implicit operators from Results with type arguments subset | closed | Poltuu | <https://github.com/dotnet/aspnetcore/issues/65307> |
| Issue | #65243 | OpenAPI generated by `.AddOpenApi()` does not work in Swagger Editor | closed | piotreksda | <https://github.com/dotnet/aspnetcore/issues/65243> |
| Issue | #65157 | Support for AsyncAPI | closed | devBartek | <https://github.com/dotnet/aspnetcore/issues/65157> |
| Issue | #65103 | [Question] How to emit heartbeat/comments with Results.ServerSentEvents in .NET 10? | closed | DevisTedeschi99 | <https://github.com/dotnet/aspnetcore/issues/65103> |
