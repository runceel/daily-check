# dotnet/aspnetcore

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 5 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- [#70079](https://github.com/dotnet/aspnetcore/pull/70079) で test-quarantine の証跡収集を決定的にし、テスト結果の追跡性を改善しました。
- [#70038](https://github.com/dotnet/aspnetcore/pull/70038) は .NET 10 リリースブランチのソース同期です。
- [#69805](https://github.com/dotnet/aspnetcore/pull/69805) で非-Helix環境では SharedFxTests / TargetingPackTests をスキップするようにしました。
- SignalR Java クライアントで `JavaNetCookieJar` を使う変更（[#70067](https://github.com/dotnet/aspnetcore/pull/70067)）と、HPACK のゼロ値インデックス済みヘッダーを拒否する変更（[#70057](https://github.com/dotnet/aspnetcore/pull/70057)）がマージされました。
- [#70058](https://github.com/dotnet/aspnetcore/pull/70058) / [#70077](https://github.com/dotnet/aspnetcore/pull/70077) は PR レビュー入力・証跡マニフェストの境界と出力パス再利用を制限する内部堅牢化です。
- オープン Issue では QuickGrid の初期化中に破棄された場合の listener 停止漏れ（[#70072](https://github.com/dotnet/aspnetcore/issues/70072)）と、不正なリセット／確認コードで Identity UI が 500 になる問題（[#70070](https://github.com/dotnet/aspnetcore/issues/70070)）が報告されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70079 | Make test-quarantine evidence collection deterministic | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70079> |
| PR | #70038 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70038> |
| PR | #69805 | Skip SharedFxTests, TargetingPackTests on non-helix | merged | omajid | <https://github.com/dotnet/aspnetcore/pull/69805> |
| PR | #70067 | Use JavaNetCookieJar in the SignalR Java client | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70067> |
| PR | #70057 | Reject zero HPACK indexed header fields | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/70057> |
| PR | #69995 | Harden skill-evals CI workflow and update Vally dependency | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69995> |
| PR | #70077 | Fix prepared review manifest bounds and output path reuse | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70077> |
| PR | #70058 | Bound PR review inputs for native readers | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70058> |
| PR | #67026 | Harden Blazor WebView disposal races for JSRuntime and IPC | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/67026> |
| PR | #66964 | Add agentic-workflow infrastructure for code review and onboarding | closed | lewing | <https://github.com/dotnet/aspnetcore/pull/66964> |
| PR | #70069 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70069> |
| PR | #70080 | Update `RequestQueueMode.[CreateOr]Attach` doc with examples of options that don't apply | open | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/70080> |
| PR | #70076 | Modernize process management with .NET 11 APIs | open | adamsitnik | <https://github.com/dotnet/aspnetcore/pull/70076> |
| PR | #70073 | Stop QuickGrid listeners when disposed during init | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/pull/70073> |
| Issue | #70078 | [release/10.0] Remove temporary Pkcs references after Microsoft.Identity.Web dependency update | open | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/70078> |
| Issue | #70075 | [API Proposal] Restore server navigation when the last interactive Router is removed | open | surya3655 | <https://github.com/dotnet/aspnetcore/issues/70075> |
| Issue | #70072 | QuickGrid does not call stop when disposed while init is pending | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/70072> |
| Issue | #70071 | [API Proposal] Add the Storage API (navigator.storage) to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/70071> |
| Issue | #70070 | Identity UI and Blazor Identity pages return 500 for a malformed reset or confirmation code (unhandled FormatException) | open | GrantTotinov | <https://github.com/dotnet/aspnetcore/issues/70070> |
| Issue | #57426 | SharedFxTests and TargetingPackTests tests are unable to find ASP.NET Core files on local Linux build | closed | tmds | <https://github.com/dotnet/aspnetcore/issues/57426> |
| Issue | #69959 | Harden skill-evals CI workflow and update Vally dependency | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69959> |
