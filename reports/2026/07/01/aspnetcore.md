# dotnet/aspnetcore

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 12 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- CSRF 保護ミドルウェアが `IAntiforgeryMetadata` を明示的に opt-in したエンドポイントのみに適用されるようスコープが見直されました（#67460）。あわせてホットパスでの `HttpContext.Items` アロケーションを削減する最適化 PR（#67488）も進行中です。
- validation まわりで、隠しプロパティ参照が曖昧になるバグ修正（#67455）がマージされ、ネストしたオブジェクトを検証する際に `ValidationContext.ObjectInstance` がルートモデルを参照してしまう既知 Issue（#67499）も報告されています。
- SignalR の npm パッケージ（`@microsoft/signalr` 等）に LICENSE ファイルが含まれていない Issue（#67486）を受けて、対応 PR（#67496）が用意されています。
- ビルド・パブリッシュまわりでは、共有フレームワークの再コンパイル回避（#67469）や圧縮アセットの事前生成（#67500）など、公開ワークフローの高速化・軽量化を狙った変更が複数入っています。
- OpenAPI 関連では discriminator の `defaultMapping` 対応（#67493）や enum シナリオのテスト拡充（#67485）が進行中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67498 | Update Fuzzing to run correctly | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67498> |
| PR | #67477 | Add safety comment to Utf8HashLookup | merged | GrabYourPitchforks | <https://github.com/dotnet/aspnetcore/pull/67477> |
| PR | #67469 | Avoid recompiling the shared framework when publishing to the layout root | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67469> |
| PR | #67460 | Scope default CSRF middleware to endpoints opting in via `IAntiforgeryMetadata` | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67460> |
| PR | #67455 | Fix ambiguous hidden-property lookup in validation | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/67455> |
| PR | #66977 | Fix QuickGridNoInteractivityTest | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/66977> |
| PR | #67483 | Improve ParameterView.TryGetValue<T> type safety and enhance parameter binding diagnostics | closed | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/67483> |
| PR | #67470 | Try a test run on OSX.27.Arm64 | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67470> |
| PR | #67463 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67463> |
| PR | #67291 | [release/10.0] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67291> |
| PR | #67500 | Pre-generate publish-compressed framework assets during build | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67500> |
| PR | #67497 | Revamp Components Blazor samples + add validate-blazor-feature skill | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67497> |
| PR | #67496 | Include LICENSE file in published SignalR npm packages | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67496> |
| PR | #67495 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67495> |
| PR | #67493 | feat: adds support for populating OpenAPI discriminator defaultMapping | open | baywet | <https://github.com/dotnet/aspnetcore/pull/67493> |
| PR | #67492 | Fix tests that use AppContextSwitch | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67492> |
| PR | #67490 | Add create-worktree skill and .worktrees isolation | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67490> |
| PR | #67489 | Clean-up Public API for RF serialization | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67489> |
| PR | #67488 | Skip HttpContext.Items allocation in CsrfProtectionMiddleware hot path | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67488> |
| PR | #67485 | Add tests to cover all enum scenarios for OpenAPI | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67485> |
| PR | #67481 | Clarify ActionLink URL generation documentation | open | mahdiaghtaee | <https://github.com/dotnet/aspnetcore/pull/67481> |
| PR | #67478 | 1029637: Added Grid Layout Support to Virtualize Component with ItemWidth and ItemHeight | open | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/67478> |
| Issue | #67499 | ValidationContext.ObjectInstance references the root model instead of the nested object when validating complex object graphs | open | paraspirotas-ops | <https://github.com/dotnet/aspnetcore/issues/67499> |
| Issue | #67494 | Consider using Microsoft.CodeAnalysis 4.x or later | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67494> |
| Issue | #67491 | Fix tests that use AppContextSwitch | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/67491> |
| Issue | #67487 | `TypedResults.ValidationProblem` doesn't serialize the `errors` property if `AddProblemDetails` is called after `AddControllers` | open | cremor | <https://github.com/dotnet/aspnetcore/issues/67487> |
| Issue | #67486 | Include the LICENSE file in the published @microsoft/signalr and @microsoft/signalr-protocol-msgpack npm packages | open | Jarmy123 | <https://github.com/dotnet/aspnetcore/issues/67486> |
| Issue | #67484 | 'Unable to connect to 'https'' when running Blazor WebAssembly Standalone project with https | open | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67484> |
| Issue | #67482 | The fwlink for https://aka.ms/aspnetcore/11.0-third-party-notices is incorrect , navigate to the wrong branch 11.0-preview1 | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67482> |
| Issue | #67480 | Perf improvement: antiforgery-noop, https, mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67480> |
| Issue | #67479 | Sending more than 32K to localstorage Then Reading It Causes Circuit Deadlock | open | Mike-E-angelo | <https://github.com/dotnet/aspnetcore/issues/67479> |
| Issue | #67424 | [dotnet-sdk-11.0.100-preview.6.26325.125] HackSystem login failed with "Access to XMLHttpRequest has been blocked by CORS policy" and "System.InvalidOperationException" errors | closed | appcompat-wx | <https://github.com/dotnet/aspnetcore/issues/67424> |
| Issue | #66883 | Quarantine QuickGridNoInteractivityTest class | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66883> |
| Issue | #64728 | AmbiguousMatchException using .AddValidation() | closed | xuzhg | <https://github.com/dotnet/aspnetcore/issues/64728> |
