# 差分レポート — 2026-09-28 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-28 01:19:34` |
| レポート生成日時 (JST) | `2026-09-28 10:19:34` |
| 前回チェック時刻 (UTC) | `2026-09-25 00:10:50` |
| 対象期間 (UTC) | `2026-09-25 00:10:50 〜 2026-09-28 01:19:34` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8754](https://github.com/microsoft/agent-framework/pull/8754) | .NET: [BREAKING] Better support tool changes between runs | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8750](https://github.com/microsoft/agent-framework/pull/8750) | Python: [BREAKING] Modify replayed history treatment for approvals | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8741](https://github.com/microsoft/agent-framework/pull/8741) | [BREAKING] Python: Isolate Foundry-hosted MAF state by sandbox | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8730](https://github.com/microsoft/agent-framework/pull/8730) | .NET: [BREAKING] Bump Azure.AI.Projects to 3.0.0-beta.3, OpenAI to 2.14.0, and MEAI to 10.10.1 | open |
| GA 昇格 | microsoft/agent-framework | [PR#8756](https://github.com/microsoft/agent-framework/pull/8756) | .NET: Add GA computer tool support to Foundry and Foundry hosting | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) | [BREAKING] Python: Activate isolated v2 runtime and workflow protocol | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) | [BREAKING] Python: Add read-only shared agent state consumers | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69312](https://github.com/dotnet/aspnetcore/pull/69312) | Unify claims principal cache identity | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68738](https://github.com/dotnet/aspnetcore/pull/68738) | Add AntiforgeryOptions.AllowBackForwardCache | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68232](https://github.com/dotnet/aspnetcore/pull/68232) | [release/10.0] Update vulnerable npm dependencies | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68231](https://github.com/dotnet/aspnetcore/pull/68231) | [release/9.0] Update RepoTasksSystemSecurityCryptographyXmlVersion to 8.0.4 | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#67280](https://github.com/dotnet/aspnetcore/pull/67280) | [release/10.0] Add reference to System.Security.Cryptography.Xml in RepoTasks | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67270](https://github.com/dotnet/aspnetcore/issues/67270) | aspnet:10.0 - FailFast crash in TypeDescriptor.GetProperties() / ConcurrentDictionary..ctor() after upgrading from 10.0.8 to 10.0.9 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#65369](https://github.com/dotnet/aspnetcore/pull/65369) | feat(hosting): add url.query redaction for telemetry sensitive parameter | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#20521](https://github.com/microsoft/aspire/issues/20521) | [13.6] Breaking change to `IInteractionService` | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20486](https://github.com/microsoft/aspire/pull/20486) | [release/13.6] Reduce agent telemetry hook overhead without reducing coverage | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20481](https://github.com/microsoft/aspire/pull/20481) | Unify experimental polyglot AppHost feature keys | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20387](https://github.com/microsoft/aspire/pull/20387) | Reduce agent telemetry hook overhead without reducing coverage | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20474](https://github.com/microsoft/aspire/pull/20474) | Bump the npm group in /extension with 22 updates | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2527](https://github.com/github/copilot-sdk/issues/2527) | [v2] Publish the breaking-change inventory and migration guide | open |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-25-personal-saved-views-for-repository-issues-and-more) | Private saved views for repository issues and “Relates to” issue relationship is generally available | — |

## エグゼクティブサマリー

- Agent Framework Python では承認再開に同じ `AgentSession` が必要となる破壊的変更がマージされました（[#8750](https://github.com/microsoft/agent-framework/pull/8750)）。.NET のツール変更、Foundry sandbox 分離、依存更新は提案中（[#8754](https://github.com/microsoft/agent-framework/pull/8754)、[#8741](https://github.com/microsoft/agent-framework/pull/8741)、[#8730](https://github.com/microsoft/agent-framework/pull/8730)）。computer tool の GA 対応も未マージです（[#8756](https://github.com/microsoft/agent-framework/pull/8756)）。
- Durable Extension の Python v2 runtime / workflow protocol と read-only shared state は破壊的変更を伴う提案です（[#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112)、[#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108)）。Aspire 13.6 では `IInteractionService` 実装互換性の問題が報告され（[#20521](https://github.com/microsoft/aspire/issues/20521)）、agent telemetry hook / polyglot keys も変更中です（[#20387](https://github.com/microsoft/aspire/pull/20387)、[#20486](https://github.com/microsoft/aspire/pull/20486)、[#20481](https://github.com/microsoft/aspire/pull/20481)）。Copilot SDK v2 の移行ガイドは設計・実装確定待ちです（[#2527](https://github.com/github/copilot-sdk/issues/2527)）。
- ASP.NET Core 10.0 の `brace-expansion` を CVE-2026-14257 対応版へ更新し、9.0 / 10.0 RepoTasks の依存関係アラートも修正しました（[#68232](https://github.com/dotnet/aspnetcore/pull/68232)、[#68231](https://github.com/dotnet/aspnetcore/pull/68231)、[#67280](https://github.com/dotnet/aspnetcore/pull/67280)）。一方、10.0.9 の Blazor Server FailFast 報告は未解決です（[#67270](https://github.com/dotnet/aspnetcore/issues/67270)）。claims cache / antiforgery / telemetry query redaction と Aspire extension の依存更新は提案段階です（[#69312](https://github.com/dotnet/aspnetcore/pull/69312)、[#68738](https://github.com/dotnet/aspnetcore/pull/68738)、[#65369](https://github.com/dotnet/aspnetcore/pull/65369)、[#20474](https://github.com/microsoft/aspire/pull/20474)）。
- Azure HorizonDB で PostgreSQL 18 がパブリックプレビューになりました。GitHub では Issue の非公開保存ビューと「Relates to」関係が GA となり、Copilot の未設定 GA 機能に対する既定ポリシーは 2026-10-22 に適用開始予定です（[Azure](./azure.md)、[GitHub Changelog](./github-changelog.md)）。
- Copilot 利用メトリクス API に PR レビュー工程別の所要時間が加わりました。GitHub Actions の workflow run 検索は 2,500 件超を `2,500+` と返すため、大規模検索の連携は日付などで条件を分割してください（[GitHub Changelog](./github-changelog.md)）。

## 主要トレンド

Agent Framework / Aspire / MXC では、エージェント実行状態や tool approval、telemetry / lifecycle を明示的に扱う変更が目立ちます。特に承認再開や Foundry / Durable の分離、SDK v2 API 整理は互換性・移行情報の確認が必要です。
GitHub / ASP.NET Core では管理ポリシー・利用状況の可視化と依存関係・機密情報対策が進む一方、段階的なプレビューや未マージ提案も多く、出荷済み機能との区別が重要です。

## 次回チェックに向けたメモ

- 継続監視: Agent Framework の .NET ツール構成変更 [#8754](https://github.com/microsoft/agent-framework/pull/8754)、Foundry sandbox 分離 [#8741](https://github.com/microsoft/agent-framework/pull/8741)、依存更新 [#8730](https://github.com/microsoft/agent-framework/pull/8730)、computer tool GA [#8756](https://github.com/microsoft/agent-framework/pull/8756) のレビュー・マージ状態を確認。承認再開の `AgentSession` 要件 [#8750](https://github.com/microsoft/agent-framework/pull/8750) は移行対象者へ周知する。
- Durable Extension の破壊的変更提案 [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) / [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) と、前回からの [#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) を追い、マージ状態・移行手順・GA 依存更新を確認する。Aspire の StackExchange.Redis 3.2.0 提案 [#20047](https://github.com/microsoft/aspire/pull/20047) も互換性と状態を確認する。
- Aspire: `IInteractionService.PromptTerminalAsync(...)` による community toolkit など外部実装のビルド影響 [#20521](https://github.com/microsoft/aspire/issues/20521)、agent hook の release/13.6 backport [#20486](https://github.com/microsoft/aspire/pull/20486)、polyglot feature key の変更 [#20481](https://github.com/microsoft/aspire/pull/20481)、extension npm 更新 [#20474](https://github.com/microsoft/aspire/pull/20474) を確認する。
- Copilot SDK v2 の言語別 breaking-change inventory / migration guide [#2527](https://github.com/github/copilot-sdk/issues/2527) が、関連設計・実装確定後に公開・レビューされるか確認する。Agent Framework の session isolation / approval continuation / MCP security、Aspire の Azure provisioning / dependency updates、Ubuntu 26 migration と GitHub Actions protection rollout は今回も差分で進捗を確認できず、次回も状態を確認する。
- Azure: HorizonDB PostgreSQL 18 preview の提供条件・GA 時期を確認する。前回からの ACS 廃止対象サービスと移行先（2028-09-30 期限）、Instant Access GA、Foundry Routines / egress-control preview の範囲・GA 時期を継続追跡する。Azure Functions の PowerShell 7.4 / .NET 8・9（2026-11-10）、Node.js 22（2027-04-30）の移行計画も確認する。
- GitHub / セキュリティ: Copilot の新しい既定ポリシーを 2026-10-22 の適用前に管理者が設定したか確認する。GitHub SSH の適用日と CodeQL bundle 移行、ASP.NET claims-cache / antiforgery / `url.query` redaction の提案、および 10.0.9 更新後の FailFast [#67270](https://github.com/dotnet/aspnetcore/issues/67270) を追う。MXC の [#1233](https://github.com/microsoft/mxc/issues/1233) の修正リリース、Aspire の Azure Sandbox tier disk と ADC エラー表示も継続確認する。
- GitHub Actions の検索結果件数 2,500 超の扱いと、Copilot usage metrics の `pull_request_review_times`（遡及データなし・空配列の扱い）をレポート連携側で確認する。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-09-25 00:10:50","schema":1,"generatedAtUtc":"2026-09-28 01:19:34"} -->