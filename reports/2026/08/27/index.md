# 差分レポート — 2026-08-27 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-27 01:07:02` |
| レポート生成日時 (JST) | `2026-08-27 10:07:02` |
| 前回チェック時刻 (UTC) | `2026-08-24 00:06:51` |
| 対象期間 (UTC) | `2026-08-24 00:06:51 〜 2026-08-27 01:07:02` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7669](https://github.com/microsoft/agent-framework/pull/7669) | Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7828](https://github.com/microsoft/agent-framework/pull/7828) | Bump Aspire.Microsoft.Azure.Cosmos from 13.1.0 to 13.5.2 | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7827](https://github.com/microsoft/agent-framework/pull/7827) | Bump Aspire.Hosting.Azure.CognitiveServices from 13.1.0 to 13.5.2 | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7826](https://github.com/microsoft/agent-framework/pull/7826) | .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#68465](https://github.com/dotnet/aspnetcore/pull/68465) | Harden chunked encoding parsing | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66348](https://github.com/dotnet/aspnetcore/issues/66348) | NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64858](https://github.com/dotnet/aspnetcore/issues/64858) | Feedback / Concerns on Deprecation of OpenAPI Analyzers in .NET 10 Controllers | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#64400](https://github.com/dotnet/aspnetcore/pull/64400) | Obsolete IdentityUserContext.SchemaVersion property | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64372](https://github.com/dotnet/aspnetcore/issues/64372) | Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64361](https://github.com/dotnet/aspnetcore/issues/64361) | IUrlHelper depends on ActionContext obsoleted in ASP.NET Core 10 | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64338](https://github.com/dotnet/aspnetcore/issues/64338) | .NET 10 and Razor: Please clarify what you mean by "Razor runtime compilation is obsolete" | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#63494](https://github.com/dotnet/aspnetcore/issues/63494) | OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute | closed |
| ⚠ セキュリティ | Azure/azure-functions-dotnet-worker | [Issue#3492](https://github.com/Azure/azure-functions-dotnet-worker/issues/3492) | Microsoft.Azure.Functions.Worker.Extensions.SignalRService 2.0.1 transitively pulls vulnerable MessagePack 2.5.192 (CVE-2026-48109, CVE-2026-48506) | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#19638](https://github.com/microsoft/aspire/issues/19638) | [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#8984](https://github.com/microsoft/aspire/issues/8984) | Annotation-Based Open Discriminated Union for Aspire Resources | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#19715](https://github.com/microsoft/aspire/issues/19715) | Aspire CLI DNX acquisition failure hard to troubleshoot in CI | open |
| 非推奨/廃止 | microsoft/aspire | [PR#19627](https://github.com/microsoft/aspire/pull/19627) | Remove obsolete certificate service exception | merged |
| 非推奨/廃止 | microsoft/mxc | [PR#705](https://github.com/microsoft/mxc/pull/705) | Fix npm audit advisories and deprecated packages in Node projects | merged |
| GA 昇格 | microsoft/mxc | [PR#707](https://github.com/microsoft/mxc/pull/707) | Revert "Bring network wire schema to full GA spec" (PR676) | merged |
| GA 昇格 | microsoft/mxc | [Issue#655](https://github.com/microsoft/mxc/issues/655) | [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2381](https://github.com/github/copilot-sdk/issues/2381) | [Python] `pydantic` unconditionally imported in `tools.py`, breaking low-level Tool API users | closed |
| ⚠ セキュリティ | Azure/azure-functions-agents-runtime | [Issue#149](https://github.com/Azure/azure-functions-agents-runtime/issues/149) | Validate hosted delivery of internal token usage logs | closed |
| 非推奨/廃止 | Azure/azure-functions-agents-runtime | [PR#177](https://github.com/Azure/azure-functions-agents-runtime/pull/177) | samples: benchmark Dynamic Workflow token reduction | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570020) | [Launched] Generally Available: Azure Bastion shareable link expiration  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570030) | [Launched] Generally Available: Connect to AKS clusters using Azure Bastion | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569695) | [Launched] Generally Available: Azure SRE Agent VNet Integration  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569760) | [Launched] Generally Available: Azure SRE Agent 30-Day Trial | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569546) | [Launched] Generally Available: Azure 248 and 372 vCPU sizes for D/E v7 series VMs  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569873) | [Launched] Generally Available: eBPF host routing in Advanced Container Networking Services for AKS | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567334) | Retirement: Support for Node 22 LTS ends on April 30, 2027 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569504) | [Launched] Generally Available: Custom block response code and body for Application Gateway WAF  | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-26-global-model-policy-generally-available) | Global model policy generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-25-rule-insights-dashboard-generally-available) | Rule insights dashboard generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-25-github-copilot-app-customize-tab-is-generally-available) | GitHub Copilot app Customize tab is generally available | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-08-25-block-users-directly-from-security-advisories) | Block users directly from security advisories | — |

## エグゼクティブサマリー

- [Agent Framework の AgentFileStore 契約変更（.NET / Python）](https://github.com/microsoft/agent-framework/pull/7671) — 行番号契約の移動を伴う破壊的変更案。採用時はファイルツール実装と呼び出し側の更新が必要です。
- [ASP.NET Core の chunked encoding 解析強化](https://github.com/dotnet/aspnetcore/pull/68465) — HTTP 入力処理の堅牢化に伴う挙動差を確認し、関連する統合テストを再実行してください。
- [Functions Worker の MessagePack 脆弱性](https://github.com/Azure/azure-functions-dotnet-worker/issues/3492) — SignalR 拡張の推移依存に CVE が報告されており、依存解決結果と修正版の適用を確認します。
- [Azure SRE Agent の VNet 統合 GA](https://azure.microsoft.com/updates?id=569695) — ネットワーク閉域要件を持つ運用環境で正式機能として採用を検討できます。
- [GitHub Global model policy の GA](https://github.blog/changelog/2026-08-26-global-model-policy-generally-available) — Enterprise のモデル利用ポリシーを正式運用へ移行する際の設定と影響を確認します。

## 主要トレンド

AI エージェント基盤では、ファイルアクセス契約、スキル分離、セッション認証など、境界を明示する API 整備が進んでいます。
同時に SDK と Functions の依存更新で脆弱性対応が必要となり、生成コード・推移依存を含む定期的な検証が重要です。
Azure と GitHub では運用・ガバナンス機能の GA が複数公開され、本番導入の選択肢が広がりました。

## 次回チェックに向けたメモ

次回は [AgentFileStore の破壊的変更案](https://github.com/microsoft/agent-framework/pull/7671)、[Aspire の Radius 接続変更](https://github.com/microsoft/aspire/pull/19555)、[Functions Agent Runtime の Dynamic Workflow 評価](https://github.com/Azure/azure-functions-agents-runtime/pull/177) を追跡します。
Functions Worker は MessagePack の修正版公開状況と実際の依存解決結果を確認し、Node 22 利用環境は 2027 年 4 月 30 日のサポート終了に向けて移行計画を確認します。
Copilot SDK は Empty モードの組み込みスキル分離と session-scoped token provider の利用例、Azure は Bastion / AKS 接続と eBPF ルーティングの適用条件を重点確認します。

<!-- daily-check-meta: {"generatedAtUtc":"2026-08-27 01:07:02","schema":1,"previousCheckAtUtc":"2026-08-24 00:06:51"} -->