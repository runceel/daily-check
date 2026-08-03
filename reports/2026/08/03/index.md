# 差分レポート — 2026-08-03 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-03 02:16:33` |
| レポート生成日時 (JST) | `2026-08-03 11:16:33` |
| 前回チェック時刻 (UTC) | `2026-07-28 07:44:08` |
| 対象期間 (UTC) | `2026-07-28 07:44:08 〜 2026-08-03 02:16:33` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7384](https://github.com/microsoft/agent-framework/issues/7384) | .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7374](https://github.com/microsoft/agent-framework/pull/7374) | [BREAKING] Python: Allow workflow checkpoint full replayability | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7347](https://github.com/microsoft/agent-framework/pull/7347) | [BREAKING] Python: Allow workflow checkpoint full replayability | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7466](https://github.com/microsoft/agent-framework/issues/7466) | Python: Security: 64 official samples ingest untrusted content without SecureAgentConfig (of 357 that omit it entirely) | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7463](https://github.com/microsoft/agent-framework/issues/7463) | [Feature]: Support security copilot | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7383](https://github.com/microsoft/agent-framework/issues/7383) | Python: Bind tool-approval responses to surfaced approval requests | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68052](https://github.com/dotnet/aspnetcore/pull/68052) | [Infrastructure] Updated npm packages 2026-07-27 | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67543](https://github.com/dotnet/aspnetcore/issues/67543) | [NETSDKE2E][ARM64 Only] NET10.0.301 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505) | Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68072](https://github.com/dotnet/aspnetcore/pull/68072) | [release/2.3] Remove deprecated SignalR.Redis and SignalR.Protocols.MessagePack packages | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67984](https://github.com/dotnet/aspnetcore/pull/67984) | Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67958](https://github.com/dotnet/aspnetcore/issues/67958) | Cleanup custom handling of Obsolete attribute once we get updates from STJ flowing | open |
| ⚠ 破壊的変更 | dotnet/extensions | [PR#7667](https://github.com/dotnet/extensions/pull/7667) | Remove GitHub models provider from project templates | merged |
| ⚠ セキュリティ | dotnet/extensions | [PR#7652](https://github.com/dotnet/extensions/pull/7652) | Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | merged |
| 非推奨/廃止 | dotnet/extensions | [Issue#6594](https://github.com/dotnet/extensions/issues/6594) | [API Proposal]: Obsolete HybridCache compression options | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18919](https://github.com/microsoft/aspire/issues/18919) | [AspireE2E]Build aspire project with warning "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18858](https://github.com/microsoft/aspire/pull/18858) | [auto-sec] Consolidate Aspire JavaScript template dependency security remediations | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18837](https://github.com/microsoft/aspire/pull/18837) | deps: consolidated Aspire JavaScript template security updates (tracked by #18858) | closed |
| ⚠ 破壊的変更 | microsoft/mxc | [PR#732](https://github.com/microsoft/mxc/pull/732) | Block breaking changes to the dev schema at pull-request time | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#634](https://github.com/microsoft/mxc/pull/634) | [Bubblewrap/LXC] Address network policy gaps - schema | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#632](https://github.com/microsoft/mxc/pull/632) | [LXC] Address network policy gaps - model 2 (deny-all-except-proxy) | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#631](https://github.com/microsoft/mxc/pull/631) | [Bubblewrap/LXC] Address common network policy gaps - model 1 | closed |
| 非推奨/廃止 | microsoft/mxc | [PR#705](https://github.com/microsoft/mxc/pull/705) | Fix npm audit advisories and deprecated packages in Node projects | merged |
| 非推奨/廃止 | microsoft/mxc | [PR#575](https://github.com/microsoft/mxc/pull/575) | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | open |
| GA 昇格 | microsoft/mxc | [PR#707](https://github.com/microsoft/mxc/pull/707) | Revert "Bring network wire schema to full GA spec" (PR676) | merged |
| GA 昇格 | microsoft/mxc | [PR#676](https://github.com/microsoft/mxc/pull/676) | Bring network wire schema to full GA spec (wire.rs + config fixtures only) | merged |
| ⚠ セキュリティ | github/copilot-sdk | [PR#2095](https://github.com/github/copilot-sdk/pull/2095) | Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs | merged |
| 非推奨/廃止 | github/copilot-sdk | [Issue#1557](https://github.com/github/copilot-sdk/issues/1557) | Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568591) | [Launched] Generally Available: Single-click purchase for public SaaS offers | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568334) | [Launched] Generally Available: Azure Database for PostgreSQL flexible server in India South Central  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568102) | [Launched] Generally Available: Azure Automation supports PowerShell 7.6 runbooks and Runtime environment | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568466) | [Launched] Generally Available: Azure Sphere OS version 26.09 is now available for evaluation | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568409) | [Launched] Generally Available: NAT64 on StandardV2 NAT Gateway | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567944) | [Launched] Generally Available: Application Routing with Gateway API | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567931) | [Launched] Generally Available: Resource placement in Azure Kubernetes Fleet Manager | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568013) | [Launched] Generally Available: Microsoft Azure now available from new cloud region in India (India South Central) | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-31-gemini-2-5-pro-and-gemini-3-flash-deprecated) | Gemini 2.5 Pro and Gemini 3 Flash deprecated | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-29-copilot-code-review-agent-skills-and-mcp-now-generally-available) | Copilot code review: Agent skills and MCP now generally available | — |

## エグゼクティブサマリー

- **Agent Framework の checkpoint 仕様変更**: [#7374](https://github.com/microsoft/agent-framework/pull/7374) で Python ワークフローの完全 replay が導入され、既存 checkpoint 利用者は互換性確認が必要です。[セキュリティ課題 #7466](https://github.com/microsoft/agent-framework/issues/7466) の SecureAgentConfig 欠落も要確認です。
- **依存関係のセキュリティ対応**: [ASP.NET Core の Microsoft.OpenApi 脆弱性](https://github.com/dotnet/aspnetcore/issues/67505)、[Aspire の NU1903](https://github.com/microsoft/aspire/issues/18919)、[Copilot SDK の brace-expansion 更新](https://github.com/github/copilot-sdk/pull/2095) を各プロジェクトで確認してください。
- **Azure の一般提供拡大**: [AKS Application Routing with Gateway API](https://azure.microsoft.com/updates?id=567944)、[Fleet Manager の Resource placement](https://azure.microsoft.com/updates?id=567931)、[StandardV2 NAT Gateway の NAT64](https://azure.microsoft.com/updates?id=568409) が GA になりました。
- **GitHub Copilot のモデル・機能変更**: [Gemini 2.5 Pro / Gemini 3 Flash の非推奨](https://github.blog/changelog/2026-07-31-gemini-2-5-pro-and-gemini-3-flash-deprecated)と、[Agent skills / MCP 対応 code review の GA](https://github.blog/changelog/2026-07-29-copilot-code-review-agent-skills-and-mcp-now-generally-available)を管理者・利用者が確認してください。
- **MXC の隔離とスキーマ保護**: [network policy の抜け道修正](https://github.com/microsoft/mxc/pull/634)と、[dev schema の破壊的変更検査](https://github.com/microsoft/mxc/pull/732)が継続中です。

## 主要トレンド

依存関係の脆弱性修正と安全なデフォルトへの移行が、ASP.NET Core、Aspire、Extensions、Copilot SDK、MXC で横断的に進んでいます。  
Agent Framework や Copilot SDK では、モデル・イベント・checkpoint など AI エージェントの実行契約が更新され、既存利用者の互換性確認が重要です。  
Azure では AKS ネットワーク運用、データ配置、IPv6 対応など、一般提供機能の適用範囲が広がりました。

## 次回チェックに向けたメモ

- Agent Framework の [#7384](https://github.com/microsoft/agent-framework/issues/7384) HarnessAgent 障害、[#7466](https://github.com/microsoft/agent-framework/issues/7466) SecureAgentConfig 欠落、checkpoint 変更の migration guide を確認します。
- Aspire の [#18919](https://github.com/microsoft/aspire/issues/18919) Microsoft.OpenApi 脆弱性と [#18858](https://github.com/microsoft/aspire/pull/18858) JavaScript 依存修正、Extensions の HybridCache 非推奨案を追跡します。
- MXC の [#676](https://github.com/microsoft/mxc/pull/676) / [#707](https://github.com/microsoft/mxc/pull/707) network wire schema の現行仕様、[#634](https://github.com/microsoft/mxc/pull/634) / [#632](https://github.com/microsoft/mxc/pull/632) の network policy を確認します。
- Azure は AI Gateway、Claude Opus 5、Firewall ヘッダー挿入のプレビュー評価に加え、Reservation exchange 制限（2027-02-01）の影響を確認します。
- GitHub Changelog では Gemini 非推奨後の代替モデル、Stacked PR、JetBrains の MCP / custom agent、OpenTelemetry と enterprise managed settings の適用範囲を確認します。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-07-28 07:44:08","generatedAtUtc":"2026-08-03 02:16:33","schema":1} -->