# dotnet/aspnetcore

対象期間: 2026-06-12 02:03:55 〜 2026-06-15 00:59:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 8 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 5 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67097](https://github.com/dotnet/aspnetcore/pull/67097) — Update default OpenApi version to 3.2 （PR / open / Youssef1313）
  OpenAPI 生成結果を固定している利用者は、既定バージョンが 3.2 へ上がることでクライアント生成やドキュメント検証に差分が出ないか確認が必要です。
- **⚠ セキュリティ** [#66978](https://github.com/dotnet/aspnetcore/issues/66978) — MSAL Authentication Issue After Upgrading to 10.0.8 (Blazor WebAssembly （Issue / open / vsfeedback）
  Blazor WebAssembly で MSAL 認証を使い 10.0.8 へ更新する利用者は、認証フローの回帰有無を確認してください。

## 主要な変更点

- OpenAPI 周辺では、既定バージョンを 3.2 に更新する [#67097](https://github.com/dotnet/aspnetcore/pull/67097) がオープン中で、生成物互換性の確認が必要です。加えて XML documentation ID の重複修正 [#64404](https://github.com/dotnet/aspnetcore/pull/64404) がマージされています。
- Blazor / authentication では MSAL upgrade 後の認証問題 [#66978](https://github.com/dotnet/aspnetcore/issues/66978) や WASM / iOS 関連の issue が複数あり、UI・認証まわりの回帰調査が続いています。
- HttpSys では初期化エラーに HRESULT などの詳細を載せる改善 [#66859](https://github.com/dotnet/aspnetcore/pull/66859) がマージされ、診断性が上がっています。
- そのほかは dependabot / dotnet-maestro によるワークフロー・ソース更新と、性能ベンチマーク bot の issue が中心で、大きな機能追加は限定的です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67182 | [main] (deps): Bump actions/checkout from 6.0.2 to 6.0.3 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67182> |
| PR | #67181 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from afe56bd10aa3b519aeeddf51ab70ccd1c84d4dab to a6bacc00545c78b35c459f81331508e43d835d23 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67181> |
| PR | #67180 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from afe56bd10aa3b519aeeddf51ab70ccd1c84d4dab to a6bacc00545c78b35c459f81331508e43d835d23 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67180> |
| PR | #67179 | [main] (deps): Bump github/gh-aw-actions from 0.77.5 to 0.79.7 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67179> |
| PR | #67114 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67114> |
| PR | #66859 | Throw HttpSysException with HttpInitialize status details | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/66859> |
| PR | #64404 | OpenAPI: Fix duplicate xml documentation ids for Generic properties and references | merged | desjoerd | <https://github.com/dotnet/aspnetcore/pull/64404> |
| PR | #67188 | [release/11.0-preview5] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67188> |
| PR | #66860 | Add HRESULT details to HttpSysListener initialization exception | closed | MaikyOzr | <https://github.com/dotnet/aspnetcore/pull/66860> |
| PR | #66658 | [blazor][wasm] rendering test - ignore | closed | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/66658> |
| PR | #67194 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67194> |
| PR | #67191 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67191> |
| PR | #67190 | Opt pooled async methods out of runtime async | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67190> |
| PR | #67183 | Split IValidatableInfo to multiple interfaces | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67183> |
| PR | #67178 | Add object-level validation APIs to EditContext | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67178> |
| PR | #67177 | ErrorBoundary fails to show error content when exception occurs inside @foreach | open | Vinoth2562000 | <https://github.com/dotnet/aspnetcore/pull/67177> |
| PR | #67176 | Adding StateHasChanged analyzer to flag unnecessary calls. | open | MayaKirova | <https://github.com/dotnet/aspnetcore/pull/67176> |
| PR | #67172 | Improve InvalidOperationException message for models with parameterized constructors | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67172> |
| Issue | #67206 | Perf improvement: fortunes_dapper | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67206> |
| Issue | #67205 | Perf improvement: antiforgery-noop, fortunes_ef, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67205> |
| Issue | #67204 | Documentation lack of clarity regarding KestrelServerLimits.MaxRequestLineSize in HTTP/2 | open | Bot-GJ16 | <https://github.com/dotnet/aspnetcore/issues/67204> |
| Issue | #67203 | JSON lines support | open | WeihanLi | <https://github.com/dotnet/aspnetcore/issues/67203> |
| Issue | #67202 | [MSRC Security Test Please Ignore] Minor typo in Kestrel limits documentation | closed | Bot-GJ16 | <https://github.com/dotnet/aspnetcore/issues/67202> |
| Issue | #67201 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67201> |
| Issue | #67200 | Blazor Server InputFile crashes process (0xffffffff) when debugging with VS 2026 Insiders + SDK 10.0.301 | open | loria-denzell | <https://github.com/dotnet/aspnetcore/issues/67200> |
| Issue | #67196 | Perf improvement: antiforgery-validation, json_middleware, mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67196> |
| Issue | #67195 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67195> |
| Issue | #67193 | [aw] Issue Triage Agent for dotnet/aspnetcore failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67193> |
| Issue | #67192 | OpenAPI: De-duplicate XML documentation IDs for internal types | open | desjoerd | <https://github.com/dotnet/aspnetcore/issues/67192> |
| Issue | #67189 | Perf improvement: kestrel-header-symbols, tls-renegotiation-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67189> |
| Issue | #67187 | Add an additional hook in Blazor WASM in the remote authentication flow before the AccountClaimsPrincipalFactory runs | open | stephajn | <https://github.com/dotnet/aspnetcore/issues/67187> |
| Issue | #67186 | blazor Wasm on ios error on navigator.serviceworker.register | open | Dex166 | <https://github.com/dotnet/aspnetcore/issues/67186> |
| Issue | #67185 | [API Proposal]: Drop the validatable type interfaces | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67185> |
| Issue | #67184 | [Blazor Hybrid / iOS Release] Microsoft.AspNetCore.WebUtilities trimmed out when QueryHelpers is called only from .razor | open | davidortinau | <https://github.com/dotnet/aspnetcore/issues/67184> |
| Issue | #67175 | Unify null session handling for SessionData and TempData | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/67175> |
| Issue | #67174 | Bug 3016548: [dotnet-sdk-11.0.100-preview.6.26309.107] CodeConverter Click “Convert Code” not work with error: Access to XMLHttpRequest has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource. | open | Junjun-zhao | <https://github.com/dotnet/aspnetcore/issues/67174> |
| Issue | #67173 | Perf improvement: mTls-handshakes-kestrel | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67173> |
| Issue | #66858 | Add HttpInitialize HRESULT to HttpSysListener exception details | closed | cmello | <https://github.com/dotnet/aspnetcore/issues/66858> |
| Issue | #64378 | OpenApi XML comment cache gneration fails with System.ArgumentException: An item with the same key has already been added | closed | twenzel | <https://github.com/dotnet/aspnetcore/issues/64378> |
