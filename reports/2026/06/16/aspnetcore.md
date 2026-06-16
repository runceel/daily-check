# dotnet/aspnetcore

対象期間: 2026-06-15 00:59:51 〜 2026-06-16 04:07:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 14 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 12 |
| クローズ Issue             | 21 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware （PR / open / DeagleGross）
  Razor Components の CSRF / antiforgery を独自構成しているアプリは、上流 middleware に委譲された後も期待どおり検証されるか確認が必要です。
- **⚠ セキュリティ** [#66410](https://github.com/dotnet/aspnetcore/issues/66410) — Microsoft Security Advisory CVE-2026-40372 – ASP.NET Core Elevation of Privilege （Issue / closed / bribrothers）
  ASP.NET Core を運用している環境は、CVE-2026-40372 の修正を含むサポート対象パッチへ更新済みか確認してください。
- **非推奨/廃止** [#67225](https://github.com/dotnet/aspnetcore/issues/67225) — Emit deprecated: true for [Obsolete] types/members in generated OpenAPI documents （Issue / closed / sdukehart-omnesoft）
  OpenAPI 生成物を SDK 生成や差分検知に使う場合、`[Obsolete]` メンバーに `deprecated: true` が出る前提で下流ツールの挙動を確認してください。

## 主要な変更点

- Razor Components の antiforgery / CSRF 処理を上流 middleware に委譲する破壊的変更候補 [#67082](https://github.com/dotnet/aspnetcore/pull/67082) がオープン中です。Blazor / Razor Components で独自の検証順序を前提にしている場合は継続監視が必要です。
- CVE-2026-40372 の Elevation of Privilege セキュリティ advisory [#66410](https://github.com/dotnet/aspnetcore/issues/66410) がクローズされています。該当バージョンを使う環境では修正済みパッケージへの更新状況を確認してください。
- OpenAPI 生成で `[Obsolete]` を `deprecated: true` として出す issue [#67225](https://github.com/dotnet/aspnetcore/issues/67225) がクローズされ、SDK 生成や OpenAPI diff の出力が変わる可能性があります。
- マージ済み PR は依存関係更新が多い一方、`If-Match` / `If-None-Match` 解析の計算量削減 [#66796](https://github.com/dotnet/aspnetcore/pull/66796) や chunked trailing comma 処理 [#67006](https://github.com/dotnet/aspnetcore/pull/67006) など HTTP 周辺の堅牢化も含まれています。
- WebApplicationFactory の concurrent `WithWebHostBuilder` / `CreateClient` 問題 [#67224](https://github.com/dotnet/aspnetcore/pull/67224) / [#67223](https://github.com/dotnet/aspnetcore/issues/67223) と SignalR Auth Refresh 提案 [#67226](https://github.com/dotnet/aspnetcore/issues/67226) は次回も追跡対象です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67222 | [release/8.0] (deps): Bump src/submodules/googletest from `a721f1b` to `7140cd4` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67222> |
| PR | #67221 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from a6bacc00545c78b35c459f81331508e43d835d23 to 5f63985fe82894604956e653d43c161ebbc1b576 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67221> |
| PR | #67220 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from a6bacc00545c78b35c459f81331508e43d835d23 to 5f63985fe82894604956e653d43c161ebbc1b576 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67220> |
| PR | #67219 | [release/10.0] (deps): Bump src/submodules/googletest from `a721f1b` to `7140cd4` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67219> |
| PR | #67217 | [release/9.0] (deps): Bump src/submodules/googletest from `a721f1b` to `7140cd4` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67217> |
| PR | #67215 | Recompile gh-aw workflows with matching CLI v0.79.7 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67215> |
| PR | #67208 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67208> |
| PR | #67194 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67194> |
| PR | #67191 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67191> |
| PR | #67159 | Rename argument in DisplayNameInfo.GetDisplayName | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67159> |
| PR | #67118 | [release/10.0] OpenAPI: Fix duplicate xml documentation ids for Generic properties and references | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67118> |
| PR | #67113 | [release/9.0] Update dependencies from dotnet/source-build-assets | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67113> |
| PR | #67006 | Fix trailing comma handling for chunked. | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67006> |
| PR | #66796 | Reduce algorithmic complexity for parsing If-Match and If-None-Match. | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/66796> |
| PR | #67218 | [release/10.0] (deps): Bump src/submodules/MessagePack-CSharp from `9aeb12b` to `9614e6f` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67218> |
| PR | #67207 | [main] Update dependencies from dotnet/extensions | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67207> |
| PR | #67136 | Update Swashbuckle.AspNetCore to latest | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67136> |
| PR | #67232 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67232> |
| PR | #67228 | Add For Loop Analyzer for variables used in closures. | open | skrustev | <https://github.com/dotnet/aspnetcore/pull/67228> |
| PR | #67224 | Fix WebApplicationFactory thread-safety on concurrent WithWebHostBuilder/CreateClient | open | thomhurst | <https://github.com/dotnet/aspnetcore/pull/67224> |
| PR | #67214 | Delete dead code in MEV | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67214> |
| Issue | #67231 | RemoteAuthenticationService race condition in blazor WASM | open | Theronguard | <https://github.com/dotnet/aspnetcore/issues/67231> |
| Issue | #67229 | Add comments to native AOT config for bundled tools (PR follow-up) | open | DamianEdwards | <https://github.com/dotnet/aspnetcore/issues/67229> |
| Issue | #67227 | Expose EnhanceYourCalm per connection limit and create a server-wide limit | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67227> |
| Issue | #67226 | [API Proposal] SignalR Auth Refresh | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/67226> |
| Issue | #67225 | Emit deprecated: true for [Obsolete] types/members in generated OpenAPI documents | closed | sdukehart-omnesoft | <https://github.com/dotnet/aspnetcore/issues/67225> |
| Issue | #67223 | WebApplicationFactory.WithWebHostBuilder isn't thread-safe — concurrent calls corrupt _derivedFactories and crash on dispose | open | thomhurst | <https://github.com/dotnet/aspnetcore/issues/67223> |
| Issue | #67216 | File result types don't evaluate If-Unmodified-Since unless enableRangeProcessing is set | open | mikekistler | <https://github.com/dotnet/aspnetcore/issues/67216> |
| Issue | #67213 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67213> |
| Issue | #67212 | Unreachable null check in HttpsConnectionMiddleware certificate validation path | open | mishatarsov21e3 | <https://github.com/dotnet/aspnetcore/issues/67212> |
| Issue | #67211 | Microsoft.Extensions.Validation: IsNullable implementation is always false | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67211> |
| Issue | #67210 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67210> |
| Issue | #67209 | Incorrect parameter name in ArgumentNullException in SetImportFeature | closed | mishatarsov21e3 | <https://github.com/dotnet/aspnetcore/issues/67209> |
| Issue | #67206 | Perf improvement: fortunes_dapper | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67206> |
| Issue | #67195 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67195> |
| Issue | #67186 | blazor Wasm on ios error on navigator.serviceworker.register | closed | Dex166 | <https://github.com/dotnet/aspnetcore/issues/67186> |
| Issue | #67152 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67152> |
| Issue | #67121 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67121> |
| Issue | #67116 | Get " /_framework/blazor.web.js net::ERR_ABORTED 404 (Not Found)" error when running Blazor App | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67116> |
| Issue | #67079 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67079> |
| Issue | #67062 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67062> |
| Issue | #67054 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67054> |
| Issue | #67036 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67036> |
| Issue | #67000 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67000> |
| Issue | #66928 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66928> |
| Issue | #66720 | Improve IsChunked parsing/handling | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66720> |
| Issue | #66668 | High algorithmic complexity when parsing If-Match or If-None-Match header values containing many comma separators followed by an unparseable character | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66668> |
| Issue | #66410 | Microsoft Security Advisory CVE-2026-40372 – ASP.NET Core Elevation of Privilege | closed | bribrothers | <https://github.com/dotnet/aspnetcore/issues/66410> |
| Issue | #66378 | [API Proposal] Improve static display name resolution in Microsoft.Extensions.Validation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/66378> |
| Issue | #66256 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66256> |
| Issue | #65872 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/65872> |
