# 差分レポート — 2026-10-16 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-16 01:16:31` |
| レポート生成日時 (JST) | `2026-10-16 10:16:31` |
| 前回チェック時刻 (UTC) | `2026-10-06 01:28:52` |
| 対象期間 (UTC) | `2026-10-06 01:28:52 〜 2026-10-16 01:16:31` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9413](https://github.com/microsoft/agent-framework/pull/9413) | [BREAKING] Python: Require explicit AG-UI authorization scope | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9391](https://github.com/microsoft/agent-framework/pull/9391) | [BREAKING] Python: Reject unsafe functional step replay | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9368](https://github.com/microsoft/agent-framework/pull/9368) | [BREAKING] Python: Protect AG-UI tool approval state from client Shared State | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9365](https://github.com/microsoft/agent-framework/pull/9365) | [BREAKING] Python: Bind AG-UI workflow interrupts to the resolved thread id | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9358](https://github.com/microsoft/agent-framework/pull/9358) | Python: [BREAKING] fix(declarative): bound HTTP response bodies | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9322](https://github.com/microsoft/agent-framework/pull/9322) | Python: [BREAKING] Migrate Foundry Local integration to SDK 2.1 | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9316](https://github.com/microsoft/agent-framework/pull/9316) | [BREAKING] Python: Harden AG-UI trust boundaries | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9236](https://github.com/microsoft/agent-framework/pull/9236) | Python: [BREAKING] Add MCP 2.x compatibility foundation | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9234](https://github.com/microsoft/agent-framework/pull/9234) | Python: [BREAKING] Migrate MCP server hosting to MCP SDK v2 | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9214](https://github.com/microsoft/agent-framework/pull/9214) | .NET: [BREAKING] Decouple Cosmos chat metadata from partition-key strategy | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9160](https://github.com/microsoft/agent-framework/issues/9160) | Python: [Bug]: evaluate_agent() omits ContextProvider/SkillsProvider tools from tool_definitions, breaking tool_selection/tool_input_accuracy | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9141](https://github.com/microsoft/agent-framework/pull/9141) | Python: [BREAKING] Require request-scoped WorkflowAgent factories in Foundry hosting | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9112](https://github.com/microsoft/agent-framework/pull/9112) | Python: [BREAKING] Request concise Harness progress without private reasoning | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9004](https://github.com/microsoft/agent-framework/pull/9004) | .NET: [BREAKING] Request concise Harness progress without private reasoning | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8886](https://github.com/microsoft/agent-framework/pull/8886) | [BREAKING] Python: Consolidate content identity and protocol metadata | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9288](https://github.com/microsoft/agent-framework/pull/9288) | Python: redact exception telemetry when sensitive data is disabled | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9251](https://github.com/microsoft/agent-framework/issues/9251) | Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9220](https://github.com/microsoft/agent-framework/pull/9220) | Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/samples/05-end-to-end/chatkit-integration/frontend | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9210](https://github.com/microsoft/agent-framework/pull/9210) | Python: build(deps-dev): bump @eslint/js from 9.33.0 to 10.0.1 in /python/packages/devui/frontend | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9149](https://github.com/microsoft/agent-framework/pull/9149) | Python: fix(devui): redact auth token from deployment logs | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9145](https://github.com/microsoft/agent-framework/pull/9145) | Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9118](https://github.com/microsoft/agent-framework/pull/9118) | Python: redact DevUI auth tokens from Azure deployment diagnostics | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9116](https://github.com/microsoft/agent-framework/issues/9116) | Python: [Bug]: [Security] DevUI Azure deployment logs DEVUI_AUTH_TOKEN in plaintext | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9104](https://github.com/microsoft/agent-framework/pull/9104) | Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/packages/devui/frontend | merged |
| 非推奨/廃止 | microsoft/agent-framework | [PR#9402](https://github.com/microsoft/agent-framework/pull/9402) | Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m | open |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#9252](https://github.com/microsoft/agent-framework/issues/9252) | .NET: Workflows: the span tag `message.type` collides with the obsoleted OpenTelemetry RPC attribute of the same name | open |
| 非推奨/廃止 | microsoft/agent-framework | [PR#9216](https://github.com/microsoft/agent-framework/pull/9216) | Python: Remove obsolete release docs workflow | merged |
| 非推奨/廃止 | microsoft/agent-framework | [PR#9146](https://github.com/microsoft/agent-framework/pull/9146) | Python: Foundry hosting: warn against hosting a WorkflowAgent through agent= | merged |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#8245](https://github.com/microsoft/agent-framework/issues/8245) | Python: [Feature]: Support the stateless MCP 2026-07-28 revision alongside 2025-era peers | open |
| GA 昇格 | microsoft/agent-framework | [PR#9119](https://github.com/microsoft/agent-framework/pull/9119) | Python: Update Anthropic SDK to 1.11 | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) | [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#135](https://github.com/microsoft/agent-framework-durable-extension/pull/135) | [BREAKING] Python: constrain standalone agent entity operations | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) | Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x | open |
| GA 昇格 | microsoft/agent-framework-durable-extension | [PR#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) | [GA] Update Agent Framework dependencies | merged |
| GA 昇格 | microsoft/agent-framework-durable-extension | [Issue#115](https://github.com/microsoft/agent-framework-durable-extension/issues/115) | [GA] Align extension with latest Agent Framework dependencies | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69754](https://github.com/dotnet/aspnetcore/issues/69754) | MapStaticAssets: builder conventions (e.g. RequireAuthorization) are not applied to the runtime fallback endpoint | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69697](https://github.com/dotnet/aspnetcore/pull/69697) | Enable central package transitive pinning | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69631](https://github.com/dotnet/aspnetcore/pull/69631) | Replace custom reference resolution with explicit references and CPM | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69614](https://github.com/dotnet/aspnetcore/issues/69614) | WsFederationHandler discards AuthenticationProperties replaced in OnSecurityTokenReceived | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69559](https://github.com/dotnet/aspnetcore/pull/69559) | [Security] Avoid boxing the authorization metrics tag | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69394](https://github.com/dotnet/aspnetcore/pull/69394) | Rotate security stamp on passkey removal | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69312](https://github.com/dotnet/aspnetcore/pull/69312) | Unify claims principal cache identity | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68694](https://github.com/dotnet/aspnetcore/issues/68694) | Consider clock skew for Identity security stamp validation intervals | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#69861](https://github.com/dotnet/aspnetcore/pull/69861) | Don't leak property-level [Obsolete] into shared OpenAPI component schemas | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#69729](https://github.com/dotnet/aspnetcore/issues/69729) | OpenAPI: [Obsolete] on a property leaks `deprecated: true` into the shared component schema | open |
| ⚠ 破壊的変更 | Azure/azure-functions-dotnet-worker | [Issue#3322](https://github.com/Azure/azure-functions-dotnet-worker/issues/3322) | Microsoft.ApplicationInsights.WorkerService 3.0.0 incompatible with Azure Functions Worker - Breaking change | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7832](https://github.com/dotnet/extensions/pull/7832) | Bump source-map-js from 1.2.1 to 1.2.2 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged |
| ⚠ セキュリティ | dotnet/extensions | [Issue#7826](https://github.com/dotnet/extensions/issues/7826) | HttpRouteFormatter - Log redaction leaks replayable bearer token | closed |
| 非推奨/廃止 | dotnet/extensions | [PR#7815](https://github.com/dotnet/extensions/pull/7815) | AI: Remove obsolete OpenAI JsonPatch workaround | merged |
| 非推奨/廃止 | dotnet/extensions | [Issue#6594](https://github.com/dotnet/extensions/issues/6594) | [API Proposal]: Obsolete HybridCache compression options | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20919](https://github.com/microsoft/aspire/pull/20919) | Fix AKS AcrPull for existing cross-resource-group registries | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20918](https://github.com/microsoft/aspire/pull/20918) | Support ACME External Account Binding in cert-manager | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20825](https://github.com/microsoft/aspire/pull/20825) | Obsolete AddCSharpApp in favor of AddDotnetProject | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20756](https://github.com/microsoft/aspire/pull/20756) | Hide terminal hosts by default without a visibility option | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20730](https://github.com/microsoft/aspire/pull/20730) | Migrate Dashboard product telemetry and add CLI Azure Monitor log export | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20614](https://github.com/microsoft/aspire/pull/20614) | Raise Aspire's minimum supported .NET version to .NET 10 | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#20521](https://github.com/microsoft/aspire/issues/20521) | [13.6] Breaking change to `IInteractionService` | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20287](https://github.com/microsoft/aspire/pull/20287) | Configure native agent plugins and independent assets | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20135](https://github.com/microsoft/aspire/pull/20135) | Support environment-specific Aspire secrets for deployment | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20035](https://github.com/microsoft/aspire/pull/20035) | Derive Azure Front Door origin names from backend hostnames | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#20034](https://github.com/microsoft/aspire/issues/20034) | Normalize container image reference representation in Aspire 17 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#19922](https://github.com/microsoft/aspire/issues/19922) | [17.0] Redesign PublishAsDockerFile argument handling | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20854](https://github.com/microsoft/aspire/pull/20854) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20829](https://github.com/microsoft/aspire/pull/20829) | fix(deps): update Next.js, multidict, and PyJWT for security advisories | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20789](https://github.com/microsoft/aspire/pull/20789) | Bump source-map-js from 1.2.1 to 1.2.2 in /extension | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20786](https://github.com/microsoft/aspire/pull/20786) | Make user secrets deployment state log messages accurate | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20757](https://github.com/microsoft/aspire/pull/20757) | Bump proxy-addr from 2.0.7 to 2.0.8 in /extension | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20716](https://github.com/microsoft/aspire/pull/20716) | Bump the npm group across 1 directory with 23 updates | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#20693](https://github.com/microsoft/aspire/pull/20693) | Add auto-sec agentic workflow for dependency security reconciliation | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19845](https://github.com/microsoft/aspire/pull/19845) | Bump the npm_and_yarn group across 5 directories with 3 updates | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#19231](https://github.com/microsoft/aspire/pull/19231) | [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#20867](https://github.com/microsoft/aspire/pull/20867) | Deprecate Aspire.AppHost.Sdk (ASPIRE012) | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#20837](https://github.com/microsoft/aspire/issues/20837) | Migrate the Blazor gateway off obsolete AddCSharpApp | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#20594](https://github.com/microsoft/aspire/issues/20594) | Deprecate the Aspire.AppHost.Sdk | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#20536](https://github.com/microsoft/aspire/issues/20536) | `AspireUseCliBundle` unexpectedly impacts CodeQL workflows. | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#20257](https://github.com/microsoft/aspire/issues/20257) | [Homebrew] Deprecation notice for "the `verified` parameter in the `url` stanza is deprecated" | open |
| 非推奨/廃止 | microsoft/aspire | [PR#20119](https://github.com/microsoft/aspire/pull/20119) | [release/13.5] Fix deprecated Homebrew cask DSL usage | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19965](https://github.com/microsoft/aspire/pull/19965) | Fix deprecated Homebrew cask DSL usage | merged |
| ⚠ セキュリティ | microsoft/mxc | [Issue#1430](https://github.com/microsoft/mxc/issues/1430) | Seatbelt: stat() succeeds on a deniedPaths entry, leaking size and timestamps | closed |
| 非推奨/廃止 | microsoft/mxc | [Issue#824](https://github.com/microsoft/mxc/issues/824) | [WSLC] One-shot vs state-aware network-policy parity: fail-open redundant host lists and dropped portMappings | closed |
| 非推奨/廃止 | Azure/azure-functions-agents-runtime | [PR#256](https://github.com/Azure/azure-functions-agents-runtime/pull/256) | [Cleanup] Move harness-specific runtime responsibilities behind the MAF/Copilot harnesses | merged |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=571025) | [Launched] Generally Available: Standard service endpoint  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=576377) | [Launched] Generally Available: Azure Cloud HSM hardware audit logging | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=576214) | [Launched] Generally Available: Azure Site Recovery Support for Azure ARC-enabled Windows VMWare/Physical servers | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570313) | Retirement: Azure Key Vault Secrets Provider Extension for Azure Arc enabled Kubernetes clusters | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=574430) | [Launched] Generally Available: Managed StandardV2 NAT Gateway for AKS | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=573691) | [Launched] Generally Available: Azure Database for PostgreSQL flexible server in East US 3  | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567933) | Retirement: Microsoft Dev Box will be retired on September 18, 2028 | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567934) | Retirement: Azure Deployment Environments will be retired on February 22, 2027 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=574343) | [Launched] Generally Available: Exceptions in WAF for Azure Application Gateway and Azure Front Door | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=573744) | [Launched] Generally Available: Anyscale on Azure | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=573443) | [Launched] Generally Available: Enabling the Bulk admin role for SQL Server on Linux | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570232) | Retirement: Pod name dimension in AKS pod platform metrics | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568178) | Retirement: Azure App Service on Azure Stack Hub | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568585) | Retirement: Support for Java 8, 11 and 17 will end on September 1, 2027 | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569236) | Retirement: Always Encrypted with Intel SGX Enclaves | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-15-upcoming-deprecation-of-selected-github-copilot-models-in-mid-november) | Upcoming deprecation of selected GitHub Copilot models in mid-November | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-15-ai-scan-for-pull-requests-generally-available) | AI Scan for pull requests generally available | — |

## エグゼクティブサマリー

- **Agent Framework の互換性変更:** AG-UI の承認状態・thread ID／MCP SDK v2／content metadata に破壊的変更がマージされ、Cosmos partition key と Harness progress も変更されました。[microsoft/agent-framework](./agent-framework.md) の該当 PR と移行影響を確認してください（[#9368](https://github.com/microsoft/agent-framework/pull/9368)、[#9236](https://github.com/microsoft/agent-framework/pull/9236)、[#9214](https://github.com/microsoft/agent-framework/pull/9214)）。
- **Aspire の移行基盤:** 最低 .NET を 10 に引き上げ、`AddCSharpApp`／`Aspire.AppHost.Sdk` を非推奨化。Dashboard telemetry と環境別 secrets も更新され、AppHost 利用者は移行ガイドと設定を点検してください（[microsoft/aspire](./aspire.md)、[#20614](https://github.com/microsoft/aspire/pull/20614)、[#20867](https://github.com/microsoft/aspire/pull/20867)）。
- **Azure の廃止期限と更新:** Azure Arc Key Vault extension は 2027年10月9日、Azure Deployment Environments は 2027年2月22日、Dev Box は 2028年9月18日廃止予定です。該当サービス利用者は移行計画を確認してください（[Azure 更新](./azure.md)）。
- **GitHub Copilot のモデル廃止と code scanning GA:** 選択モデルは 2026年11月16日に廃止予定です。一方、AI Scan for pull requests と Agentic autofix が GA となったため、対象者はモデル切り替えと code scanning の利用条件を確認してください（[GitHub Changelog](./github-changelog.md)）。
- **認証・秘密情報の保護:** ASP.NET Core の fallback authorization／Identity 課題、Agent Framework の telemetry redaction、DevUI token masking、MXC Seatbelt の denied-path 修正など、未解決課題と修正済み項目が混在しています。利用版と修正反映状況を各リポジトリの詳細で照合してください（[ASP.NET Core](./aspnetcore.md)、[Agent Framework](./agent-framework.md)、[MXC](./mxc.md)）。

## 主要トレンド

複数のプロジェクトで SDK／API の境界を更新し、旧方式から新しい runtime・package・metadata 契約への移行を促す動きが目立ちます。認証状態、ログ・telemetry の秘匿化や依存更新など、安全性と運用時の可視性も共通テーマです。
Azure では複数サービスの廃止日が具体化する一方、GA・preview の機能拡張も続いています。導入可否と移行期限を分けて管理する必要があります。

## 次回チェックに向けたメモ

- **前回メモからの継続:** Agent Framework の #8754／#8741／#8730、Durable Extension の #112／#108 と統合 #123、Aspire #20481 はマージ済みのため、次回は公開版収録・実移行を確認。#8750 の承認再開時 `AgentSession` 要件も利用者周知を継続する。
- **移行・互換性:** Agent Framework の AG-UI／MCP／Cosmos／Harness 変更後の回帰と公開版を確認する。Durable Extension の Python Functions 2.x 移行 #136／#72 と standalone entity 制約 #135、Aspire #20521 (`IInteractionService`) と .NET 10／AppHost SDK 移行を追跡する。
- **SDK／runtime:** Copilot SDK #2527 の v2 breaking inventory／migration guide と Windows .NET in-process access violation #2821、background agent 停止手段 #2822、source-selection／skill reload の課題を確認。Functions Agents Runtime の hosted multi-worker #265、tool authoring #269、Durable Agent Loop #266、Dev Mode #268 の進捗も追跡する。
- **セキュリティ・サービス期限:** ASP.NET Core #69754／#69614／#69312／#68694 の認可・Identity 課題と #69575 servicing、MXC #824 の WSLc parity が修正版に反映されたか確認する。Azure Key Vault Arc extension（2027-10-09）、Java 8/11/17（2027-09-01）、AKS pod name metric（2027-09-30）、SGX Enclaves（2027-10-31）、Dev Box／Deployment Environments の移行状況を継続確認する。
- **前回の運用・収集メモ:** Copilot 既定ポリシーの10月22日適用、SSH／CodeQL／Ubuntu 26／Actions protection の状態を確認する。前回指摘した Azure RSS 20件上限と重要分類の漏れ・誤検出について、今回 Azure 20件に上限超過は見えない一方、Aspire の非推奨誤検出（#20782／#20781／#19295／#16110 等）を確認したため、次回前に classifier regression test を更新する。

<!-- daily-check-meta: {"generatedAtUtc":"2026-10-16 01:16:31","previousCheckAtUtc":"2026-10-06 01:28:52","schema":1} -->