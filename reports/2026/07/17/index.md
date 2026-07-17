# 差分レポート — 2026-07-17 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-17 00:36:43` |
| レポート生成日時 (JST) | `2026-07-17 09:36:43` |
| 前回チェック時刻 (UTC) | `2026-07-15 04:59:27` |
| 対象期間 (UTC) | `2026-07-15 04:59:27 〜 2026-07-17 00:36:43` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7158](https://github.com/microsoft/agent-framework/pull/7158) | [BREAKING] Python: Ensure session isolation for FHA invocation impl | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7156](https://github.com/microsoft/agent-framework/issues/7156) | .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7120](https://github.com/microsoft/agent-framework/pull/7120) | Python: [BREAKING] Graduate create_harness_agent out of experimental | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7114](https://github.com/microsoft/agent-framework/pull/7114) | .NET: [BREAKING] Graduate FileMemoryProvider | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7113](https://github.com/microsoft/agent-framework/pull/7113) | Python: [BREAKING] Graduate file memory provider out of experimental | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7111](https://github.com/microsoft/agent-framework/pull/7111) | .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7107](https://github.com/microsoft/agent-framework/pull/7107) | .NET: [BREAKING] Graduate ToolApprovalAgent and add ToolAutoApprovalRuleContext | merged |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67862](https://github.com/dotnet/aspnetcore/pull/67862) | Deprecate the Blazor WebAssembly DevServer package | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67861](https://github.com/dotnet/aspnetcore/pull/67861) | Deprecate UseWebAssemblyDebugging and remove it from Blazor templates | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67860](https://github.com/dotnet/aspnetcore/pull/67860) | Obsolete UseWebAssemblyDebugging and remove it from Blazor templates | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67858](https://github.com/dotnet/aspnetcore/issues/67858) | Obsolete UseWebAssemblyDebugging and remove it from Blazor project templates | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67857](https://github.com/dotnet/aspnetcore/issues/67857) | Deprecate the Microsoft.AspNetCore.Components.WebAssembly.DevServer package | open |
| ⚠ 破壊的変更 | dotnet/extensions | [Issue#7628](https://github.com/dotnet/extensions/issues/7628) | OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume | closed |
| ⚠ セキュリティ | dotnet/extensions | [PR#7561](https://github.com/dotnet/extensions/pull/7561) | Fix transitive MessagePack vulnerability in AI template AppHost projects | merged |
| ⚠ セキュリティ | dotnet/extensions | [PR#7560](https://github.com/dotnet/extensions/pull/7560) | Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template | merged |
| 非推奨/廃止 | dotnet/extensions | [Issue#7341](https://github.com/dotnet/extensions/issues/7341) | Update evaluator prompts to work with newer models since GPT-4o is slated for retirement. | open |
| GA 昇格 | microsoft/mxc | [Issue#655](https://github.com/microsoft/mxc/issues/655) | [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18804](https://github.com/microsoft/aspire/pull/18804) | [auto-sec] consolidate aspire security dependency remediations | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#18230](https://github.com/microsoft/aspire/pull/18230) | Remove obsolete Sigstore SAN workaround | merged |
| ⚠ セキュリティ | github/copilot-sdk | [Issue#2007](https://github.com/github/copilot-sdk/issues/2007) | hono dev dependency has 5 known security advisories (1 high, 4 medium) | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567362) | [Launched] Generally Available: Expanding Azure Arc SQL Migration with SQL Server on Azure Virtual Machines  | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-16-advanced-search-for-projects-is-generally-available) | Advanced search for Projects is generally available | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更**: FileMemoryProvider と ToolApprovalAgent の .NET/Python 正式化に加え、セッション分離と承認応答の変更が進行中です（[詳細](./agent-framework.md)）。
- **ASP.NET Core の互換性確認**: antiforgery/CSRF の拒否タイミング変更と、Blazor WebAssembly DevServer・`UseWebAssemblyDebugging` の非推奨化を確認してください（[詳細](./aspnetcore.md)）。
- **依存関係のセキュリティ修正**: dotnet/extensions と Aspire で MessagePack、websocket-driver、pygments などの脆弱性対応がマージされました（[extensions](./extensions.md) / [Aspire](./aspire.md)）。
- **Azure SQL 移行機能の GA**: Azure Arc の SQL Server on Azure Virtual Machines 移行対応が一般提供になりました（[Azure 更新](./azure.md)）。
- **GitHub Projects の高度な検索が GA**: AND/OR 条件でビューを構成できるようになりました（[GitHub Changelog](./github-changelog.md)）。

## 主要トレンド

AI/エージェント基盤では、実験 API の正式化とセッション・承認・メモリ境界の明確化が同時に進んでいます。  
各リポジトリで依存関係の脆弱性修正や CI/監視の堅牢化が進み、アプリケーションコードよりも運用・互換性確認が中心です。  
Azure と GitHub では GA 機能が複数公開され、プレビュー機能は導入前の制約確認が必要です。

## 次回チェックに向けたメモ

次回は Agent Framework の FHA セッション分離、`create_harness_agent`、ToolApprovalAgent の breaking change PR のマージ内容と移行手順を確認します。  
dotnet/extensions の reasoning item ID 修正と MessagePack 修正、Aspire の Native AOT Dashboard・構造化ログ契約を継続確認します。  
Azure では Azure Monitor 高度なプラットフォーム メトリックと Azure SQL 更新の適用範囲、GitHub では Xcode 27 ランナーと secret scanning 強化を確認します。  
前回メモにあった Azure Front Door edge actions は今回の新着に含まれないため、次回以降も対象リージョンと制約を追跡します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-07-17 00:36:43","previousCheckAtUtc":"2026-07-15 04:59:27"} -->