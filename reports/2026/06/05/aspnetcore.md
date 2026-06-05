# dotnet/aspnetcore

対象期間: 2026-06-04 02:26:50 〜 2026-06-05 04:03:36 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 5 |
| クローズ Issue             | 2 |

## 主要な変更点

- file ベースアプリの user secrets に関するフィードバックを反映 (#67010, DamianEdwards)。
- OpenAPI 生成時に `JsonSerializerOptions` を正しく伝播するよう修正 (#66847)。`JsonNumberHandling.WriteAsString` と検証属性併用時の生成失敗 (Issue #66111) を解消。
- antiforgery の HTTP メソッド制限と `HttpMethodOverride` の相互作用をドキュメント化 (#66772)。関連 Issue #66687 をクローズ。
- `dotnet/dotnet` からの定期的なソースコード同期 (#66981)。
- オープン中の PR は Blazor の各 Input コンポーネント (InputRadio / InputDate / InputCheckBox / InputSelect / InputText / InputTextArea) のテストカバレッジ拡充がコミュニティから多数。加えて Blazor WebView の破棄レース対策 (#67026)、ファジングインフラ追加 (#67022) など堅牢化系の動きが目立つ。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67010 | Address file-based app user secrets feedback | merged | DamianEdwards | <https://github.com/dotnet/aspnetcore/pull/67010> |
| PR | #66981 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/66981> |
| PR | #66847 | Propagate JsonSerializerOptions correctly during OpenAPI generation | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/66847> |
| PR | #66772 | Document antiforgery HTTP method limitations and HttpMethodOverride interaction | merged | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/66772> |
| PR | #67027 | Add comprehensive unit tests for Virtualize.ts JS module | open | ishaq2321 | <https://github.com/dotnet/aspnetcore/pull/67027> |
| PR | #67026 | Harden Blazor WebView disposal races for JSRuntime and IPC | open | lewing | <https://github.com/dotnet/aspnetcore/pull/67026> |
| PR | #67025 | Fix regex validator crash on invalid patterns in jquery.validate.unobtrusive.js | open | ishaq2321 | <https://github.com/dotnet/aspnetcore/pull/67025> |
| PR | #67024 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67024> |
| PR | #67022 | Add fuzzing infrastructure for ASP.NET Core | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67022> |
| PR | #67020 | Improved InputRadio Test Coverage in Blazor | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/67020> |
| PR | #67019 | 1030637: Improved InputDateType Test Coverage in Blazor  | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/67019> |
| PR | #67018 | Use SearchValues/ContainsAny/span helpers in more places | open | MihaZupan | <https://github.com/dotnet/aspnetcore/pull/67018> |
| PR | #67017 | test(InputTextArea): Add comprehensive test coverage for InputTextArea component | open | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/pull/67017> |
| PR | #67016 | Improved InputCheckBox Test Coverage in Blazor | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/67016> |
| PR | #67015 | Enhance InputSelect tests by adding edge case scenarios | open | karmegams02 | <https://github.com/dotnet/aspnetcore/pull/67015> |
| PR | #67014 | test(InputText): Enhance test coverage for Forms.InputText component | open | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/pull/67014> |
| PR | #67013 | Fix JSInterop DefaultAsyncTimeout swallow issue | open | GOVINSAGA | <https://github.com/dotnet/aspnetcore/pull/67013> |
| PR | #67011 | Revert "Fixes Problem Details casing bug (#59396)" | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67011> |
| Issue | #67029 | Add comprehensive unit tests for Virtualize.ts JavaScript module | open | ishaq2321 | <https://github.com/dotnet/aspnetcore/issues/67029> |
| Issue | #67028 | Fix regex validator crash on invalid patterns in jquery.validate.unobtrusive.js | open | ishaq2321 | <https://github.com/dotnet/aspnetcore/issues/67028> |
| Issue | #67023 | Known Build Error: libuv assertion "new_time >= loop->time" on Windows AzDO agents (exit code 57005) | open | lewing | <https://github.com/dotnet/aspnetcore/issues/67023> |
| Issue | #67021 | Make cookie-based TempData work with streaming SSR | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/67021> |
| Issue | #67012 | dotnet watch grows my app's memory until it freezes my system | open | MeikelLP | <https://github.com/dotnet/aspnetcore/issues/67012> |
| Issue | #66687 | Document antiforgery skip in AntiforgeryMiddleware for DELETE via HttpMethodOverride | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66687> |
| Issue | #66111 | OpenAPI document generation fails for JsonNumberHandling.WriteAsString and a ValidationAttribute | closed | CaringDev | <https://github.com/dotnet/aspnetcore/issues/66111> |
