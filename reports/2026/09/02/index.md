# 差分レポート — 2026-09-02 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-02 05:04:01` |
| レポート生成日時 (JST) | `2026-09-02 14:04:01` |
| 前回チェック時刻 (UTC) | `2026-08-31 01:17:23` |
| 対象期間 (UTC) | `2026-08-31 01:17:23 〜 2026-09-02 05:04:01` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7991](https://github.com/microsoft/agent-framework/pull/7991) | .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7918](https://github.com/microsoft/agent-framework/pull/7918) | Python: [BREAKING] restore agent middleware API contract | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7669](https://github.com/microsoft/agent-framework/pull/7669) | Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7826](https://github.com/microsoft/agent-framework/pull/7826) | .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 | merged |
| 非推奨/廃止 | microsoft/agent-framework | [PR#7983](https://github.com/microsoft/agent-framework/pull/7983) | .NET: Replace deprecated AWSSDK.Extensions.Bedrock.MEAI with AWS.Bedrock.MEAI | merged |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#7982](https://github.com/microsoft/agent-framework/issues/7982) | .NET: Replace deprecated AWSSDK.Extensions.Bedrock.MEAI with AWS.Bedrock.MEAI | closed |
| 非推奨/廃止 | microsoft/agent-framework-durable-extension | [PR#64](https://github.com/microsoft/agent-framework-durable-extension/pull/64) | Bump cryptography from 49.0.0 to 50.0.0 in /python | open |
| GA 昇格 | microsoft/agent-framework-durable-extension | [Issue#80](https://github.com/microsoft/agent-framework-durable-extension/issues/80) | Release GA packages | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68964](https://github.com/dotnet/aspnetcore/issues/68964) | Authorization execution guard trusts an identity-blind 'invoked' flag: endpoint substitution after UseAuthorization bypasses [Authorize] | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68486](https://github.com/dotnet/aspnetcore/issues/68486) | [Validation] A new Blazor Web App under a strict Content Security Policy | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68841](https://github.com/dotnet/aspnetcore/pull/68841) | Mark AddRazorRuntimeCompilation methods obsolete | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19848](https://github.com/microsoft/aspire/pull/19848) | Remove retired GitHub Models integration | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19810](https://github.com/microsoft/aspire/pull/19810) | Improve Azure Sandbox defaults | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19845](https://github.com/microsoft/aspire/pull/19845) | Bump the npm_and_yarn group across 5 directories with 3 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19513](https://github.com/microsoft/aspire/pull/19513) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18837](https://github.com/microsoft/aspire/pull/18837) | deps: consolidated Aspire JavaScript template security updates (tracked by #18858) | closed |
| 非推奨/廃止 | microsoft/aspire | [PR#19846](https://github.com/microsoft/aspire/pull/19846) | Remove obsolete NuGet layout command | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#1076](https://github.com/microsoft/mxc/pull/1076) | Add Process Security Environment ingress contract | open |
| 非推奨/廃止 | microsoft/mxc | [PR#575](https://github.com/microsoft/mxc/pull/575) | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | closed |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2469](https://github.com/github/copilot-sdk/issues/2469) | Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570282) | [Launched] Generally Available: Microsoft Defender for Cloud support for Azure Container Apps (Serverless Containers Posture) | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570090) | [Launched] Generally Available: Windows Server 2025 on AKS | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570095) | [Launched] Generally Available: Artifact Streaming on AKS | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570100) | [Launched] Generally Available: Confidential VMs for Azure Linux | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569700) | [Launched] Generally Available: Purchase order mapping available in Microsoft Marketplace  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570474) | [Launched] Generally Available: Azure Firewall auto-learn SNAT routes  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570250) | [Launched] Generally Available: Azure Copilot Observability Agent supports Basic and Auxiliary table plans | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569899) | [Launched] Generally Available: Azure Monitor Auxiliary Logs Plan in Azure Government and China regions | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569904) | [Launched] Generally Available: Azure Monitor Auxiliary Logs Plan support for Azure tables and plan switching | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-01-enterprise-live-migrations-from-ghes-to-ghe-com-generally-available) | Enterprise Live Migrations from GHES to ghe.com generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-01-claude-fable-5-1-generally-available-in-github-copilot) | Claude Fable 5.1 is generally available in GitHub Copilot | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-31-selected-github-copilot-models-deprecated) | Selected GitHub Copilot models deprecated | — |

## エグゼクティブサマリー

- **破壊的変更**: [Agent Framework の Python middleware 契約復元](https://github.com/microsoft/agent-framework/pull/7918) と [ASP.NET Core の antiforgery 検証契約変更](https://github.com/dotnet/aspnetcore/pull/67082) は、既存実装の互換性確認が必要です。
- **セキュリティ／非推奨**: [ASP.NET Core の認可バイパス報告](https://github.com/dotnet/aspnetcore/issues/68964)、[Aspire の JavaScript 依存更新](https://github.com/microsoft/aspire/pull/19845)、[Bedrock MEAI パッケージ置換](https://github.com/microsoft/agent-framework/pull/7983) を確認してください。
- **Azure GA**: [AKS の Windows Server 2025](https://azure.microsoft.com/updates?id=570090)、[Artifact streaming](https://azure.microsoft.com/updates?id=570095)、[Confidential VM](https://azure.microsoft.com/updates?id=570100) が一般提供され、移行・性能・機密ワークロードの選択肢が広がりました。
- **GitHub Copilot**: [Copilot 承認機能](https://github.blog/changelog/2026-09-01-copilot-code-review-can-now-approve-pull-requests) と [モデル非推奨](https://github.blog/changelog/2026-08-31-selected-github-copilot-models-deprecated) により、権限設定とモデル固定の見直しが必要です。
- [Azure Functions Agents Runtime の ACA sandbox wake 修正](https://github.com/Azure/azure-functions-agents-runtime/pull/183) により、停止済み sandbox の再利用が安定しました。

## 主要トレンド

エージェント基盤では middleware、sandbox、CLI backchannel など実行時契約と復旧性の改善が集中しています。  
Azure と GitHub では GA 機能の拡大と、Copilot・依存パッケージのセキュリティ／ライフサイクル管理が同時に進みました。

## 次回チェックに向けたメモ

前回メモを引き継ぎ、[AgentFileStore の破壊的変更案](https://github.com/microsoft/agent-framework/pull/7671)、[Aspire の Radius 接続変更](https://github.com/microsoft/aspire/pull/19555)、[Functions Agent Runtime の Dynamic Workflow 評価](https://github.com/Azure/azure-functions-agents-runtime/pull/177) を追跡します。  
Functions Worker は MessagePack 修正版と Node 22 のサポート終了計画を確認し、Copilot SDK は Empty モードの組み込みスキル分離、session-scoped token provider、Bedrock `temperature` 問題を確認します。  
次回は Azure の Bastion／AKS 接続、eBPF ルーティング、GitHub Classroom の代替導入、Actions retention の 2026 年 10 月 1 日適用も重点確認します。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-08-31 01:17:23","generatedAtUtc":"2026-09-02 05:04:01"} -->