# 差分レポート — 2026-11-16 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-11-16 05:01:57` |
| レポート生成日時 (JST) | `2026-11-16 14:01:57` |
| 前回チェック時刻 (UTC) | `2026-11-12 00:51:15` |
| 対象期間 (UTC) | `2026-11-12 00:51:15 〜 2026-11-16 05:01:57` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10362](https://github.com/microsoft/agent-framework/pull/10362) | Python: [BREAKING] Honor MIME text modes in hosting-a2a | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10357](https://github.com/microsoft/agent-framework/pull/10357) | .NET: [WIP ] Update Azure.AI.Projects 3.0.0, OpenAI 2.15.0, AgentServer 1.0.0 and stabilize Foundry packages | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10353](https://github.com/microsoft/agent-framework/pull/10353) | Python: [BREAKING] Unify hosted agent input handling with AgentTurn and extra_fields policy | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10348](https://github.com/microsoft/agent-framework/pull/10348) | Python: [BREAKING] Allowlist caller fields in Foundry Responses hosting | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10343](https://github.com/microsoft/agent-framework/pull/10343) | .NET: [BREAKING] Add A2A agent card URL validation and consistent assistant role for remote replies | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10328](https://github.com/microsoft/agent-framework/pull/10328) | .NET: [BREAKING] Serve one agent per Foundry hosting container | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10318](https://github.com/microsoft/agent-framework/pull/10318) | Python: [BREAKING] Improve shell path validation | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10310](https://github.com/microsoft/agent-framework/pull/10310) | .NET: [BREAKING] Improve LocalShellExecutor shell path validation | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10291](https://github.com/microsoft/agent-framework/pull/10291) | Python: [BREAKING] Keep Foundry approval state native | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10282](https://github.com/microsoft/agent-framework/pull/10282) | .NET: [BREAKING] Bind Foundry toolboxes to each response | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10275](https://github.com/microsoft/agent-framework/pull/10275) | .NET: [BREAKING] Adopt the MCP skills extension | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10260](https://github.com/microsoft/agent-framework/pull/10260) | Python: [BREAKING] Prepare Foundry Hosting for RC | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10243](https://github.com/microsoft/agent-framework/pull/10243) | .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10238](https://github.com/microsoft/agent-framework/pull/10238) | .NET: [BREAKING] Support scoped and transient agent lifetimes in Foundry Hosting | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10192](https://github.com/microsoft/agent-framework/pull/10192) | .NET: [BREAKING] fix(dotnet): validate declarative MCP destinations | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10001](https://github.com/microsoft/agent-framework/pull/10001) | [BREAKING] Python: Honor injected Azure AI Search clients over settings | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9243](https://github.com/microsoft/agent-framework/pull/9243) | Python: [BREAKING] Do not replay an MCP tools/call whose response was lost | open |
| 非推奨/廃止 | microsoft/agent-framework | [PR#10273](https://github.com/microsoft/agent-framework/pull/10273) | Python: Deprecate the legacy memory APIs | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#70566](https://github.com/dotnet/aspnetcore/issues/70566) | Microsoft.AspNetCore.Http v2.3.14 is dependent on v2.3.13 of other vulnerable Microsoft.AspNetCore packages | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70453](https://github.com/dotnet/aspnetcore/pull/70453) | Bound Blazor client validation caching | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70452](https://github.com/dotnet/aspnetcore/pull/70452) | Avoid simple requests for SignalR authentication refresh | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70451](https://github.com/dotnet/aspnetcore/pull/70451) | Respect case in SignalR Redis group subscriptions | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70450](https://github.com/dotnet/aspnetcore/pull/70450) | Bind SignalR connections to negotiated identity | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70449](https://github.com/dotnet/aspnetcore/pull/70449) | [main] Avoid repeated validation error copies (CVE-2026-118749) | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70448](https://github.com/dotnet/aspnetcore/pull/70448) | [main] Protect named pipe policy during recovery (CVE-2026-114157) | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70447](https://github.com/dotnet/aspnetcore/pull/70447) | [main] Restore slash-only PathString boundaries (CVE-2026-114156) | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70446](https://github.com/dotnet/aspnetcore/pull/70446) | [main] Escape semicolons in derived cookie paths (CVE-2026-109476) | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70445](https://github.com/dotnet/aspnetcore/pull/70445) | [main] Clear HTTP logging buffer tail on reset (CVE-2026-114150) | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#70444](https://github.com/dotnet/aspnetcore/pull/70444) | [main] Enforce multipart header line count limits (CVE-2026-114149) | merged |
| ⚠ セキュリティ | dotnet/extensions | [PR#7832](https://github.com/dotnet/extensions/pull/7832) | Bump source-map-js from 1.2.1 to 1.2.2 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged |
| ⚠ セキュリティ | dotnet/extensions | [Issue#7826](https://github.com/dotnet/extensions/issues/7826) | HttpRouteFormatter - Log redaction leaks replayable bearer token | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#22254](https://github.com/microsoft/aspire/pull/22254) | Address Azure API Management API review feedback | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#22253](https://github.com/microsoft/aspire/pull/22253) | Group AddAzureFunctionTool parameters into an options type | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#22189](https://github.com/microsoft/aspire/pull/22189) | Add canonical .NET CLI tool APIs to Aspire.Hosting.Dotnet | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#22171](https://github.com/microsoft/aspire/pull/22171) | [release/17.0] Consolidate ordered Go AppHost backports | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20287](https://github.com/microsoft/aspire/pull/20287) | Configure native agent plugins and independent assets | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20135](https://github.com/microsoft/aspire/pull/20135) | Support environment-specific Aspire secrets for deployment | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19349](https://github.com/microsoft/aspire/pull/19349) | Add IServiceProvider support to Cosmos DB extensions | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#22266](https://github.com/microsoft/aspire/pull/22266) | [release/17.0] Update vulnerable dependencies | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#22245](https://github.com/microsoft/aspire/pull/22245) | Build(deps): Bump the github-actions group across 1 directory with 9 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#22170](https://github.com/microsoft/aspire/pull/22170) | Merge release/13.6 into main after 13.6.5 security release | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#22117](https://github.com/microsoft/aspire/pull/22117) | Build(deps): Bump node-forge from 1.4.0 to 1.4.2 in /extension | closed |
| ⚠ セキュリティ | microsoft/aspire | [Issue#21872](https://github.com/microsoft/aspire/issues/21872) | Add vulnerability auditing for container images used by Aspire integrations | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#21736](https://github.com/microsoft/aspire/pull/21736) | Build(deps): Bump the npm group across 1 directory with 25 updates | open |
| 非推奨/廃止 | microsoft/aspire | [PR#22217](https://github.com/microsoft/aspire/pull/22217) | [release/17.0] Address API review feedback from #22185 | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#22167](https://github.com/microsoft/aspire/pull/22167) | Stabilize compute endpoint mapping contracts | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#22158](https://github.com/microsoft/aspire/pull/22158) | Graduate MCP endpoint declaration to stable | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#22157](https://github.com/microsoft/aspire/pull/22157) | Graduate required-command custom validation to stable | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#20867](https://github.com/microsoft/aspire/pull/20867) | Deprecate Aspire.AppHost.Sdk (ASPIRE012) | merged |
| ⚠ セキュリティ | microsoft/mxc | [Issue#1780](https://github.com/microsoft/mxc/issues/1780) | Linux bubblewrap: deniedPaths for a nonexistent path creates a stray directory on the host that persists after exit | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#1726](https://github.com/microsoft/mxc/pull/1726) | chore(deps): bump the github-actions group across 1 directory with 7 updates | open |
| ⚠ セキュリティ | microsoft/mxc | [Issue#1698](https://github.com/microsoft/mxc/issues/1698) | MXC V1 — supported pre-resume security verification for an isolated Windows GUI worker | open |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578818) | Retirement: Azure Data Share will be retired on November 12, 2029  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577678) | [Launched] Generally Available: Azure Front Door mutual TLS authentication | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-11-13-upcoming-deprecation-of-selected-github-copilot-models-in-december) | Upcoming deprecation of selected GitHub Copilot models in December | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-11-12-actions-for-arm32-linux-windows-retirement) | Actions for ARM32 Linux & Windows retirement | — |

## エグゼクティブサマリー

- **ASP.NET Core のセキュリティ修正**：複数の SignalR / Blazor 修正に加え、CVE-2026-118749、CVE-2026-114157、CVE-2026-114156、CVE-2026-109476、CVE-2026-114150、CVE-2026-114149 の修正がマージされました。対象アプリは [詳細](./aspnetcore.md) を確認し、修正版を適用してください。
- **期限のある移行**：GitHub Copilot の複数モデルは **2026 年 12 月 14 日**に廃止、Actions の Windows / Linux ARM32 hosted runner は **12 月 8 日**に終了予定です。代替モデル・実行環境への切り替えは [GitHub Changelog](./github-changelog.md) を参照してください。
- **Azure の廃止・GA**：Azure Data Share は **2029 年 11 月 12 日**に廃止予定で、Microsoft Fabric 等への移行が必要です。Azure Front Door Premium の mTLS は GA、JWT 検証はパブリックプレビューです（[Azure 更新](./azure.md)）。
- **Agent Framework の契約変更**：Shell path 検証の破壊的変更に加え、Foundry approval / toolbox、MCP skills、agent lifetime の変更がマージされ、入力処理・A2A・MCP の未マージ破壊的変更も続いています（[詳細](./agent-framework.md)）。
- **Aspire / GitHub security・API**：Aspire の脆弱な依存関係修正と MCP / compute endpoint API の stable 化が入りました。AI Scan の REST API はプレビューで、組織・リポジトリ単位の設定にはポリシーと AI クレジットの確認が必要です（[Aspire](./aspire.md)、[GitHub Changelog](./github-changelog.md)）。

## 主要トレンド

セキュリティ面では、依存関係更新だけでなく入力・パス・認証・隔離境界の検証強化が複数のリポジトリで進みました。
一方、Aspire の endpoint 契約や Agent Framework の hosting / MCP API は安定化・再編が進む一方で、後方互換性確認が必要な変更もあります。
モデル・ランナー廃止や Azure Data Share の移行期限など、利用者側で事前に対応計画を立てる告知が目立ちます。

## 次回チェックに向けたメモ

- **Agent Framework**：前回からの microsoft/agent-framework#10001、microsoft/agent-framework#9857、microsoft/agent-framework#10018、microsoft/agent-framework#10030、FIDES の microsoft/agent-framework#9889・microsoft/agent-framework#9652・microsoft/agent-framework#9251 を継続確認。microsoft/agent-framework#10066 / microsoft/agent-framework#9994 はマージ済みのため公開パッケージへの反映・移行を確認します。今回の microsoft/agent-framework#10260、microsoft/agent-framework#10282、microsoft/agent-framework#10275、microsoft/agent-framework#10243、microsoft/agent-framework#10192、microsoft/agent-framework#10273 と新規 A2A / Foundry hosting の未マージ提案も追跡してください。
- **Durable / Agents Runtime**：microsoft/agent-framework-durable-extension#72 の Durable 2.x 案はクローズ済みで、採用済みと解釈せず GA package の実依存を確認します。schema v2、checkpoint authority、Blob offloading、再開互換性、GA release 準備と oauthlib 更新を継続確認。今回の microsoft/agent-framework-durable-extension#186 / microsoft/agent-framework-durable-extension#187 と Azure/azure-functions-agents-runtime#292 / Azure/azure-functions-agents-runtime#293 の進捗も追います。
- **Aspire**：microsoft/aspire#21360 の Project V2、microsoft/aspire#21407 の Functions 移行、名前付き integration sources、CLI Go exporter を継続確認。microsoft/aspire#21260 はマージ済みのため CORS / Entra redirect の生成物を確認します。今回の Go backport microsoft/aspire#22171、security update microsoft/aspire#22266、release/13.6 security merge microsoft/aspire#22170、API review microsoft/aspire#22217、未マージの API 提案を追跡してください。
- **GitHub / Copilot SDK**：github/copilot-sdk#2896 の Entra MCP、github/copilot-sdk#2888 の cloud session、github/copilot-sdk#2897 の Linux / OpenSSL、github/copilot-sdk#2892 の中断時部分回答、github/copilot-sdk#2527 の v2 移行ガイドを継続確認。secret scanning audit event の移行期限 **2026 年 11 月 12 日**への対応状況を確認し、Copilot model 廃止と package firewall も追います。次の期限は Dependabot 自動停止 **12 月 8 日**、Fable の期限付き ZDR 例外 **年末**です。今回の github/copilot-sdk#2918–github/copilot-sdk#2922 も継続監視してください。
- **Azure**：Fluid Relay の **2027 年 2 月 2 日**廃止、Defender for IoT OT security の **2029 年 10 月**廃止への移行案内を確認します。Firewall IPv6 application rules、Application Gateway for Containers の JWT / MCPRoute / private ingress、SQL PITR immutability preview、WAF rate-limit grouping、AKS DACS、Front Door gRPC、Route Server dual-stack、Arc File Sync 制約、Static Web Apps の .NET 10 移行を継続追跡。今回の Data Share 移行先と Front Door / SQL MI / Monitor の preview・GA 条件も確認してください。
- **その他**：runceel/ReactiveProperty#569、Extensions の AI tool-call / streaming の未解決項目、MXC の Linux filesystem policy と microsoft/mxc#1630・microsoft/mxc#1670・microsoft/mxc#1665 を継続。Documents / Extraction の preview 契約、HybridCache の対象 TFM、MXC learning-mode の allow / block の違いに加え、今回の microsoft/mxc#1780 / microsoft/mxc#1783 の Bubblewrap sandbox 境界も確認してください。継続項目は今回差分だけで解消を確認できたものではありません。
- **収集品質**：前回は GitHub 検索の 1 日 1,000 件到達警告はありませんでしたが、Changelog RSS の pagination 補完が必要でした。依存更新・stable 化・関連しない「breaking」表現などの過剰検出と、aspnetcore / extensions / MXC の重要変更の取りこぼしを次回も確認し、期間前のマージと実際の新規マージを区別してください。Azure RSS の抜粋にない条件は推測しないでください。

<!-- daily-check-meta: {"generatedAtUtc":"2026-11-16 05:01:57","previousCheckAtUtc":"2026-11-12 00:51:15","schema":1} -->