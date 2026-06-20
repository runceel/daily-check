# 差分レポート — 2026-06-20 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-20 08:27:57` |
| レポート生成日時 (JST) | `2026-06-20 17:27:57` |
| 前回チェック時刻 (UTC) | `2026-06-18 00:25:41` |
| 対象期間 (UTC) | `2026-06-18 00:25:41 〜 2026-06-20 08:27:57` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/mxc | [mxc.md](./mxc.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18188](https://github.com/microsoft/aspire/pull/18188) | Default AppHosts to use the CLI bundle | merged |
| ⚠ 破壊的変更 | dotnet/extensions | [PR#7557](https://github.com/dotnet/extensions/pull/7557) | [MEDI] Make the IngestionChunk non-generic | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67323](https://github.com/dotnet/aspnetcore/pull/67323) | Improve Blazor async form validation | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#67322](https://github.com/dotnet/aspnetcore/pull/67322) | Scrub leaked tokens from test-quarantine Part 1 output | merged |

## エグゼクティブサマリー

- [microsoft/aspire](./aspire.md) は [PR#18188](https://github.com/microsoft/aspire/pull/18188) で AppHost の既定実行経路を CLI bundle に寄せ、あわせて v13.4.6 で polyglot codegen と `--isolated` のポート衝突を修正しました。
- [dotnet/extensions](./extensions.md) は [PR#7557](https://github.com/dotnet/extensions/pull/7557) により `IngestionChunk<T>` を非ジェネリック化する破壊的変更が入り、Data Ingestion Preview 2 を追う利用者は `AIContent` ベースへの追従が必要です。
- [dotnet/aspnetcore](./aspnetcore.md) では [PR#67323](https://github.com/dotnet/aspnetcore/pull/67323) が .NET 11 Preview 5 の非同期フォーム検証 API を早くも組み替えており、Preview 先行採用者はイベント名・フック方法の再確認が必要です。
- [github/copilot-sdk](./copilot-sdk.md) は low-level tool definition の cross-SDK E2E テスト 6 連発がまとまって入り、同時に `@github/copilot` 1.0.64-1 のレイアウト変更に起因する codegen 破損を [PR#1738](https://github.com/github/copilot-sdk/pull/1738) で即時修正しました。
- [runceel/ReactiveProperty](./reactiveproperty.md) では [Issue#528](https://github.com/runceel/ReactiveProperty/issues/528) として R3 移行支援の詳細設計が起票されました。一方で [Azure 更新](./azure.md) は新着なし、[GitHub Changelog](./github-changelog.md) はこの環境から取得できず手動確認が必要です。

## 主要トレンド

今回の中心は、**既定動作や型設計の見直しを伴う基盤変更**です。Aspire の CLI bundle 既定化、Extensions の Data Ingestion API 再設計、ASP.NET Core の Preview API 再編が並びました。
加えて、CI / 自動化の安全性改善も目立ちます。ASP.NET Core のトークンスクラブ、Copilot SDK の PAT 置換検討、Aspire の selective test / workflow 改善など、開発基盤側の整備が進んでいます。
一方で Microsoft org 配下の一部リポジトリと GitHub Changelog は、この実行環境のアクセス制限で完全取得できていないため、重要項目の取りこぼしがないか次回も補完確認が必要です。

## 次回チェックに向けたメモ

- **microsoft/aspire**: CLI bundle 既定化後のフォローアップ、v13.4.6 後続パッチ、VS Code extension 安定化関連 PR の継続確認。
- **dotnet/extensions**: `IngestionChunk` 非ジェネリック化の後続修正、`HybridCache` 拡張、`js-yaml` セキュリティ更新 PR のマージ状況を確認。
- **dotnet/aspnetcore**: async form validation 再設計 [#67323](https://github.com/dotnet/aspnetcore/pull/67323) / [#67324](https://github.com/dotnet/aspnetcore/pull/67324)、SignalR reconnect hardening [#67311](https://github.com/dotnet/aspnetcore/issues/67311)、rate limiting bug [#67326](https://github.com/dotnet/aspnetcore/issues/67326) を追跡。
- **github/copilot-sdk**: `@github/copilot` 1.0.64-1 追従 [#1739](https://github.com/github/copilot-sdk/pull/1739)、experimental API enforcement [#1719](https://github.com/github/copilot-sdk/pull/1719)、org billing 化 [#1733](https://github.com/github/copilot-sdk/pull/1733) を継続確認。
- **runceel/ReactiveProperty**: R3 移行設計 [#528](https://github.com/runceel/ReactiveProperty/issues/528) の具体化と、関連する自動化 PR が再度提案された場合の扱いを確認。
- **アクセス制限**: `microsoft/agent-framework`、`microsoft/mxc`、GitHub Changelog は環境制限で完全取得できなかったため、外部環境での補完確認を推奨。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-06-18 00:25:41","generatedAtUtc":"2026-06-20 08:27:57"} -->
