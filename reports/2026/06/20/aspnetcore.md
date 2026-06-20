# dotnet/aspnetcore

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 08:27:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 26 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 16 |
| 新規 Issue                 | 12 |
| クローズ Issue             | 12 |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [#67323](https://github.com/dotnet/aspnetcore/pull/67323) — Improve Blazor async form validation （PR / open）
  .NET 11 Preview 5 で入った非同期フォーム検証 API を再編しており、`OnValidationRequestedAsync` 利用コードは Preview 6 取り込み前に追従が必要です。
- **⚠ セキュリティ** [#67322](https://github.com/dotnet/aspnetcore/pull/67322) — Scrub leaked tokens from test-quarantine Part 1 output （PR / merged）
  agentic test-quarantine workflow の出力・artifact から JWT / bearer token / SAS 署名を除去する修正で、CI の秘匿情報漏えいリスクを直接下げます。
- **⚠ セキュリティ** [#67317](https://github.com/dotnet/aspnetcore/pull/67317) — Bump actions/checkout 6.0.3 → 7.0.0 （PR / merged）
  `pull_request_target` / `workflow_run` で fork checkout を抑止する upstream セキュリティ改善を取り込んでおり、CI 権限境界の見直しに関わります。

## 主要な変更点

- Blazor では [#67296](https://github.com/dotnet/aspnetcore/pull/67296) で union type 対応が component parameters / JSInterop / prerendering まで一通り揃い、.NET 11 向け機能面の前進がありました。
- 一方で [#67323](https://github.com/dotnet/aspnetcore/pull/67323) と [#67324](https://github.com/dotnet/aspnetcore/pull/67324) が Preview 5 の async / SSR form validation API を再設計しており、Preview 先行採用者には破壊的追従が発生します。
- Build / CI では NativeAOT build race 対応 [#67320](https://github.com/dotnet/aspnetcore/pull/67320) / [#67327](https://github.com/dotnet/aspnetcore/pull/67327)、token scrub [#67322](https://github.com/dotnet/aspnetcore/pull/67322)、`actions/checkout` v7 更新 [#67317](https://github.com/dotnet/aspnetcore/pull/67317) など基盤整備が目立ちました。
- セキュリティ寄りの未解決事項として、SignalR stateful reconnect の `NameIdentifier` 不一致を拒否すべきという [#67311](https://github.com/dotnet/aspnetcore/issues/67311) が継続中です。
- 新規不具合では rate limiting の inline policy collision [#67326](https://github.com/dotnet/aspnetcore/issues/67326) や `HealthCheckPublisherHostedService.StopAsync` の待機不備 [#67304](https://github.com/dotnet/aspnetcore/issues/67304) が要確認です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 補足 |
| ---- | ---- | -------- | ---- | ---- |
| PR | [#67296](https://github.com/dotnet/aspnetcore/pull/67296) | Verify Blazor union support; fix prerendering of unions with a null active case | merged | Blazor の union type 対応を一段前進 |
| PR | [#67323](https://github.com/dotnet/aspnetcore/pull/67323) | Improve Blazor async form validation | open | Preview 6 向けの破壊的 API 再設計 |
| PR | [#67324](https://github.com/dotnet/aspnetcore/pull/67324) | Improve Blazor SSR client-side form validation | open | SSR 側の継続再設計 |
| PR | [#67322](https://github.com/dotnet/aspnetcore/pull/67322) | Scrub leaked tokens from test-quarantine Part 1 output | merged | CI 秘匿情報対策 |
| PR | [#67327](https://github.com/dotnet/aspnetcore/pull/67327) | Fully dedupe aspnetcoretools build to fix NativeAOT sourcelink race | merged | NativeAOT build race 修正 |
| PR | [#67317](https://github.com/dotnet/aspnetcore/pull/67317) | Bump actions/checkout 6.0.3 → 7.0.0 | merged | GitHub Actions セキュリティ追従 |
| Issue | [#67326](https://github.com/dotnet/aspnetcore/issues/67326) | RequireRateLimiting inline policies share partition-key namespace | open | rate limiting の不具合 |
| Issue | [#67311](https://github.com/dotnet/aspnetcore/issues/67311) | Harden SignalR stateful reconnect with different NameIdentifier | open | SignalR の security hardening 要望 |
