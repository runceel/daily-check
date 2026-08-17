# 差分レポート — 2026-08-14 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-14 00:21:27` |
| レポート生成日時 (JST) | `2026-08-14 09:21:27` |
| 前回チェック時刻 (UTC) | `2026-08-13 00:02:03` |
| 対象期間 (UTC) | `2026-08-13 00:02:03 〜 2026-08-14 00:21:27` |

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
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7521](https://github.com/microsoft/agent-framework/pull/7521) | Python: [BREAKING] Require building functional workflow instances | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7384](https://github.com/microsoft/agent-framework/issues/7384) | .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68486](https://github.com/dotnet/aspnetcore/issues/68486) | [Validation] A new Blazor Web App under a strict Content Security Policy | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68477](https://github.com/dotnet/aspnetcore/pull/68477) | Obsolete Bootstrap 4 Identity UI support | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#63192](https://github.com/dotnet/aspnetcore/pull/63192) | Add [Obsolete] attribute to Bootstrap 4 support in Identity UI | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19301](https://github.com/microsoft/aspire/pull/19301) | [automated] feat(cli): report installations with aspire --info | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19077](https://github.com/microsoft/aspire/pull/19077) | Expose resolved environment variables to debug launch producers | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19248](https://github.com/microsoft/aspire/pull/19248) | Redact owning resource's own secret env var in `describe` | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19052](https://github.com/microsoft/aspire/pull/19052) | [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) | open |
| 非推奨/廃止 | microsoft/aspire | [PR#19295](https://github.com/microsoft/aspire/pull/19295) | Show AppHosts from every VS Code workspace root | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#840](https://github.com/microsoft/mxc/pull/840) | [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#803](https://github.com/microsoft/mxc/pull/803) | fix(logger): deliver security warnings explicitly instead of writing to stderr | merged |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568830) | [Launched] Generally Available: Control plane metrics collection for AKS with Managed Prometheus | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569281) | [Launched] Generally Available: Live Resize for Shared Premium SSD v2 and Ultra Data Disks | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568419) | [Launched] Generally Available: Pre-upgrade validation checks for Azure Database for PostgreSQL Flexible Server  | — |

## エグゼクティブサマリー

<!-- TODO: 上の「全体の重要な変更」と Azure / GitHub Changelog を横断し、「特に注目すべきトピック」を 3〜5 件リンク付きの箇条書きで。重要変更があれば必ず含める -->

## 主要トレンド

<!-- TODO: 今回の差分から見える横断的なテーマを 2〜4 行で日本語要約 -->

## 次回チェックに向けたメモ

<!-- TODO: 継続ウォッチ中の PR/Issue、Azure の次の段階待ちアイテム、次回の重点確認事項 -->

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-08-13 00:02:03","generatedAtUtc":"2026-08-14 00:21:27","schema":1} -->