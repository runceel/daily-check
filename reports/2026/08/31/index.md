# 差分レポート — 2026-08-31 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-31 01:17:23` |
| レポート生成日時 (JST) | `2026-08-31 10:17:23` |
| 前回チェック時刻 (UTC) | `2026-08-27 01:07:02` |
| 対象期間 (UTC) | `2026-08-27 01:07:02 〜 2026-08-31 01:17:23` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7918](https://github.com/microsoft/agent-framework/pull/7918) | Python: [BREAKING] restore agent middleware API contract | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7517](https://github.com/microsoft/agent-framework/pull/7517) | Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#68655](https://github.com/dotnet/aspnetcore/pull/68655) | [release/11.0-rc1] Honor all sign-in confirmation requirements after registration | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#68465](https://github.com/dotnet/aspnetcore/pull/68465) | Harden chunked encoding parsing | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#64280](https://github.com/dotnet/aspnetcore/issues/64280) | Microsoft.AspNetCore.Razor.Design package contains vulnerable Newtonsoft.Json.dll CVE-2024-21907 | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68841](https://github.com/dotnet/aspnetcore/pull/68841) | Mark AddRazorRuntimeCompilation methods obsolete | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64372](https://github.com/dotnet/aspnetcore/issues/64372) | Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 | open |
| ⚠ セキュリティ | Azure/azure-functions-dotnet-worker | [Issue#3492](https://github.com/Azure/azure-functions-dotnet-worker/issues/3492) | Microsoft.Azure.Functions.Worker.Extensions.SignalRService 2.0.1 transitively pulls vulnerable MessagePack 2.5.192 (CVE-2026-48109, CVE-2026-48506) | closed |
| ⚠ 破壊的変更 | dotnet/extensions | [PR#7667](https://github.com/dotnet/extensions/pull/7667) | Remove GitHub models provider from project templates | merged |
| ⚠ セキュリティ | dotnet/extensions | [PR#7652](https://github.com/dotnet/extensions/pull/7652) | Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#19638](https://github.com/microsoft/aspire/issues/19638) | [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#19513](https://github.com/microsoft/aspire/pull/19513) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18901](https://github.com/microsoft/aspire/issues/18901) | [CI Failure] SQL Server container exits with CoInitializeSecurity failure (HRESULT 0x800706b5) | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#14272](https://github.com/microsoft/aspire/issues/14272) | Docs: Security Review For Aspire Mcp | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#19715](https://github.com/microsoft/aspire/issues/19715) | Aspire CLI DNX acquisition failure hard to troubleshoot in CI | open |
| 非推奨/廃止 | microsoft/mxc | [PR#575](https://github.com/microsoft/mxc/pull/575) | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | open |
| GA 昇格 | microsoft/mxc | [Issue#1002](https://github.com/microsoft/mxc/issues/1002) | LXC E2E: the GA egress allow-path test depends on unauthenticated api.github.com | closed |
| GA 昇格 | microsoft/mxc | [Issue#655](https://github.com/microsoft/mxc/issues/655) | [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec | closed |
| 非推奨/廃止 | github/copilot-sdk | [Issue#1557](https://github.com/github/copilot-sdk/issues/1557) | Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models | open |
| 非推奨/廃止 | Azure/azure-functions-agents-runtime | [PR#177](https://github.com/Azure/azure-functions-agents-runtime/pull/177) | samples: benchmark Dynamic Workflow token reduction | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570120) | [Launched] Generally Available: Workload identity support for Azure Files CSI driver (SMB) in Azure | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570105) | [Launched] Generally Available: Azure VM Image Builder in sovereign and air-gapped clouds | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-27-label-archiving-is-generally-available) | Better label management on issues is generally available | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-27-github-classroom-deprecated) | GitHub Classroom deprecated | — |

## エグゼクティブサマリー

- **Azure の GA 拡大**: [Azure Files CSI driver の Workload identity 対応](./azure.md) と、主権／エアギャップ環境での [Azure VM Image Builder GA](./azure.md) が公開されました。
- **破壊的変更の確認**: [Agent Framework の middleware／AgentFileStore／workspace hooks](./agent-framework.md) と、[ASP.NET Core の Identity・chunked encoding](./aspnetcore.md) を利用する場合は互換性を確認してください。
- **セキュリティ対応**: [SignalR Service の MessagePack 脆弱性](./azure-functions-dotnet-worker.md)、[Razor.Design の CVE](./aspnetcore.md)、[Aspire の依存更新と SQL Server CI 障害](./aspire.md) が確認事項です。
- **GitHub の変更**: [GitHub Classroom 廃止](./github-changelog.md) と [Actions 保持設定の適用範囲拡大](./github-changelog.md) は管理者・教育機関の対応が必要です。
- **実行基盤の拡張**: [Aspire の Azure Container Apps Sandboxes](./aspire.md)、[Functions Agents Runtime の ACA 信頼性改善](./azure-functions-agents-runtime.md)、[Copilot SDK の多言語・多アーキテクチャ更新](./copilot-sdk.md) が進みました。

## 主要トレンド

各リポジトリでエージェント実行基盤の信頼性、状態同期、ホスティング先の拡張が進みました。  
一方、認証・依存パッケージ・保持期間など、既存運用の安全性と互換性を確認する変更も集中しています。  
SDK と CI では複数プラットフォーム対応と、変更範囲に応じたテスト実行の効率化が進行中です。

## 次回チェックに向けたメモ

次回は [AgentFileStore の破壊的変更案](https://github.com/microsoft/agent-framework/pull/7671)、[Aspire の Radius 接続変更](https://github.com/microsoft/aspire/pull/19555)、[Functions Agent Runtime の Dynamic Workflow 評価](https://github.com/Azure/azure-functions-agents-runtime/pull/177) を追跡します。  
Functions Worker は MessagePack の修正版公開状況と実際の依存解決結果を確認し、Node 22 利用環境は 2027 年 4 月 30 日のサポート終了に向けて移行計画を確認します。  
Copilot SDK は Empty モードの組み込みスキル分離と session-scoped token provider の利用例、Azure は Bastion／AKS 接続と eBPF ルーティングの適用条件を重点確認します。  
加えて、GitHub Classroom の代替導入、Actions retention の 2026 年 10 月 1 日適用、Aspire の SQL Server CI 障害と Copilot SDK の Bedrock `temperature` 問題を確認します。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-08-27 01:07:02","generatedAtUtc":"2026-08-31 01:17:23"} -->