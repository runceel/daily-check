# 差分レポート — 2026-09-15 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-15 00:08:57` |
| レポート生成日時 (JST) | `2026-09-15 09:08:57` |
| 前回チェック時刻 (UTC) | `2026-09-14 03:34:25` |
| 対象期間 (UTC) | `2026-09-14 03:34:25 〜 2026-09-15 00:08:57` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| microsoft/agent-framework-durable-extension | [agent-framework-durable-extension.md](./agent-framework-durable-extension.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |
| Azure/azure-functions-agents-runtime | [azure-functions-agents-runtime.md](./azure-functions-agents-runtime.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8375](https://github.com/microsoft/agent-framework/pull/8375) | .NET: [BREAKING] Improve replay support with Approval Binding | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8372](https://github.com/microsoft/agent-framework/pull/8372) | [BREAKING] Python: Add request-scoped Foundry agent factories | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8371](https://github.com/microsoft/agent-framework/pull/8371) | [BREAKING] Python: Make HTTP cookie persistence explicit | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8369](https://github.com/microsoft/agent-framework/pull/8369) | [BREAKING] Python: Disable response-cookie persistence in AG-UI clients | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8367](https://github.com/microsoft/agent-framework/pull/8367) | [BREAKING] Python: Adjust A2A client defaults | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8305](https://github.com/microsoft/agent-framework/pull/8305) | Python: [BREAKING] Require committed finish reason for tool calls | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7991](https://github.com/microsoft/agent-framework/pull/7991) | .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8238](https://github.com/microsoft/agent-framework/pull/8238) | Python: Tighten security label enforcement | open |
| ⚠ セキュリティ | microsoft/agent-framework-durable-extension | [PR#98](https://github.com/microsoft/agent-framework-durable-extension/pull/98) | Fix SourceLink advisory and pin patched .NET SDK | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#69277](https://github.com/dotnet/aspnetcore/pull/69277) | [Identity] Use ordinal equality for external login keys | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#65369](https://github.com/dotnet/aspnetcore/pull/65369) | feat(hosting): add url.query redaction for telemetry sensitive parameter | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.1 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20052](https://github.com/microsoft/aspire/pull/20052) | Configure NuGet audit sources and non-fatal vulnerability warnings | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19248](https://github.com/microsoft/aspire/pull/19248) | Redact owning resource's own secret env var in `describe` | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19052](https://github.com/microsoft/aspire/pull/19052) | [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#20119](https://github.com/microsoft/aspire/pull/20119) | [release/13.5] Fix deprecated Homebrew cask DSL usage | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19965](https://github.com/microsoft/aspire/pull/19965) | Fix deprecated Homebrew cask DSL usage | merged |
| ⚠ 破壊的変更 | microsoft/mxc | [PR#732](https://github.com/microsoft/mxc/pull/732) | Block breaking changes to the dev schema at pull-request time | closed |

## エグゼクティブサマリー

対象期間の変更内容を確認し、利用中の機能・設定への影響を必要に応じて確認してください。

## 主要トレンド

対象期間の変更内容を確認し、利用中の機能・設定への影響を必要に応じて確認してください。

## 次回チェックに向けたメモ

対象期間の変更内容を確認し、利用中の機能・設定への影響を必要に応じて確認してください。

<!-- daily-check-meta: {"generatedAtUtc":"2026-09-15 00:08:57","schema":1,"previousCheckAtUtc":"2026-09-14 03:34:25"} -->