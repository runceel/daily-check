# 差分レポート — 2026-07-14 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-14 01:26:38` |
| レポート生成日時 (JST) | `2026-07-14 10:26:38` |
| 前回チェック時刻 (UTC) | `2026-07-10 00:28:22` |
| 対象期間 (UTC) | `2026-07-10 00:28:22 〜 2026-07-14 01:26:38` |

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
| microsoft/aspire | [aspire.md](./aspire.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7094](https://github.com/microsoft/agent-framework/pull/7094) | Python: [BREAKING] Harness: Switch FileAccess to opt-in | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7093](https://github.com/microsoft/agent-framework/pull/7093) | .NET: [BREAKING] Harness: Switch FileAccess to opt-in | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7055](https://github.com/microsoft/agent-framework/pull/7055) | Python: [BREAKING] Fix harness before-strategy compaction under per-service-call persistence | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7053](https://github.com/microsoft/agent-framework/pull/7053) | Python: [BREAKING] Graduate harness todo & mode providers from experimental | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7052](https://github.com/microsoft/agent-framework/pull/7052) | .NET: [BREAKING] Graduate todo and agent mode providers out of experimental | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7044](https://github.com/microsoft/agent-framework/pull/7044) | .NET: [BREAKING] Graduate message injection out of experimental | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7039](https://github.com/microsoft/agent-framework/pull/7039) | Python: [BREAKING]: Emit TOOL_CALL events for workflow participant tool calls in AG-UI | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67722](https://github.com/dotnet/aspnetcore/issues/67722) | SNI hostname and HTTP Host can drift, with no visibility | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67721](https://github.com/dotnet/aspnetcore/issues/67721) | SNI parsing accepts malformed server names | open |
| 非推奨/廃止 | Azure/azure-functions-dotnet-worker | [Issue#3395](https://github.com/Azure/azure-functions-dotnet-worker/issues/3395) | [SDK] Emit SDK warning when`FunctionsEnableWorkerIndexing` is used, announcing it is deprecated. | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18698](https://github.com/microsoft/aspire/pull/18698) | Flatten single optional DTO 'options' parameter in Go polyglot generator | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18692](https://github.com/microsoft/aspire/pull/18692) | Update Foundry hosted agent protocol payload | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18003](https://github.com/microsoft/aspire/issues/18003) | Source Breaking Change - `networkID` --> `networkId` | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18735](https://github.com/microsoft/aspire/pull/18735) | [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | closed |
| 非推奨/廃止 | github/copilot-sdk | [Issue#1557](https://github.com/github/copilot-sdk/issues/1557) | Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567444) | [Launched] Generally Available: Azure Databricks SQL Serverless in UK West   | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567556) | Retirement: Support for Python-2.7; 3.8 and PowerShell- 7.1; 7.2 will be retired on September 30, 2026 | — |

## エグゼクティブサマリー

- **Harness の破壊的変更:** [Agent Framework #7052](./agent-framework.md) / [#7053](./agent-framework.md) / [#7044](./agent-framework.md) で Todo、Agent mode、MessageInjection が安定 API へ移行し、[FileAccess opt-in (#7093)](https://github.com/microsoft/agent-framework/pull/7093) も進行中です。
- **Foundry/生成コードの契約変更:** [Aspire #18692](./aspire.md) の hosted agent payload 更新と [#18698](https://github.com/microsoft/aspire/pull/18698) の Go options 平坦化は、連携・生成コード利用者の確認が必要です。
- **セキュリティ:** [ASP.NET Core の SNI 関連 Issue](./aspnetcore.md) と [Aspire の npm セキュリティ対応](./aspire.md) を継続監視します。
- **Azure ランタイム:** [Azure Databricks SQL Serverless の UK West GA](./azure.md) と、[Azure Automation の Python/PowerShell ランタイム廃止](./azure.md) が公開されました。
- **開発者向け更新:** [CodeQL 2.26.0](./github-changelog.md) の Kotlin 2.4.0 / AI prompt injection 検出、GitHub Code Quality のライセンス見積もりが利用可能になりました。

## 主要トレンド

Agent Framework と Aspire では、実験段階の機能や連携 payload を安定版・現行契約へ整理する動きが目立ち、既存利用者の移行確認が必要です。Azure Automation や Azure Functions worker では、旧ランタイム・設定の非推奨化を早めに検知する流れが続いています。GitHub/ASP.NET Core/Aspire では、AI・npm・TLS 周辺のセキュリティ可視化と依存更新が継続しています。

## 次回チェックに向けたメモ

- **Agent Framework:** [FileAccess opt-in (#7093)](https://github.com/microsoft/agent-framework/pull/7093)、[#7094](https://github.com/microsoft/agent-framework/pull/7094) のマージ後の移行手順と、AG-UI/session-state 関連 Issue を確認する。
- **ASP.NET Core:** [SNI の hostname/Host 乖離](https://github.com/dotnet/aspnetcore/issues/67722) と不正 SNI 解析、Microsoft.OpenApi の脆弱性対応、NU190x 監査警告を追う。
- **Aspire:** [Foundry payload (#18692)](https://github.com/microsoft/aspire/pull/18692)、`networkId` への変更、[npm セキュリティ PR (#18735)](https://github.com/microsoft/aspire/pull/18735) の収束を確認する。
- **Azure/GitHub:** Azure Automation の 2026-09-30 ランタイム廃止対応、CodeQL 2.26.0 の導入、GitHub Code Quality ライセンス見積もりの適用範囲を確認する。
- **継続項目:** Copilot Billing Preview アプリの 2026-08-03 廃止、ReactiveProperty の R3 関連要望、Azure Functions worker の OpenTelemetry と MSBuild SDK 0.4.0 の不具合を引き続き確認する。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-07-10 00:28:22","generatedAtUtc":"2026-07-14 01:26:38","schema":1} -->