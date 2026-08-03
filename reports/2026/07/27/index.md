# 差分レポート — 2026-07-27 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-27 00:50:43` |
| レポート生成日時 (JST) | `2026-07-27 09:50:43` |
| 前回チェック時刻 (UTC) | `2026-07-21 00:15:24` |
| 対象期間 (UTC) | `2026-07-21 00:15:24 〜 2026-07-27 00:50:43` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7234](https://github.com/microsoft/agent-framework/pull/7234) | [BREAKING] Python: add Responses conversation ID helper | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7158](https://github.com/microsoft/agent-framework/pull/7158) | [BREAKING] Python: Ensure session isolation for FHA invocation impl | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7119](https://github.com/microsoft/agent-framework/pull/7119) | .NET: [BREAKING] Graduate HarnessAgent | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7111](https://github.com/microsoft/agent-framework/pull/7111) | .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7000](https://github.com/microsoft/agent-framework/pull/7000) | .NET: [BREAKING] Hosting OpenAI Responses protocol helpers and optional execution state | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7270](https://github.com/microsoft/agent-framework/pull/7270) | Reduce workflow credential exposure | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7245](https://github.com/microsoft/agent-framework/pull/7245) | Python: Add MCPStreamableHTTPTool security guidance for custom http client | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#7232](https://github.com/microsoft/agent-framework/pull/7232) | Python: Bump brace-expansion from 1.1.12 to 1.1.16 in /python/packages/devui/frontend | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67902](https://github.com/dotnet/aspnetcore/issues/67902) | Failed to restore dogfooding tests due to error NU1902: Package 'AngleSharp' 0.9.9 has a known moderate severity vulnerability | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67559](https://github.com/dotnet/aspnetcore/issues/67559) | Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66071](https://github.com/dotnet/aspnetcore/issues/66071) | Prototype Pollution Vulnerabilities in @middy/util | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67984](https://github.com/dotnet/aspnetcore/pull/67984) | Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67953](https://github.com/dotnet/aspnetcore/pull/67953) | [release/11.0-preview7]: Map [Obsolete] to deprecated in OpenAPI | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67862](https://github.com/dotnet/aspnetcore/pull/67862) | Deprecate the Blazor WebAssembly DevServer package | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67134](https://github.com/dotnet/aspnetcore/issues/67134) | Deprecate Microsoft.AspNetCore.Grpc.Swagger | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#66355](https://github.com/dotnet/aspnetcore/pull/66355) | Map [Obsolete] attribute to deprecated in OpenAPI documents | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#62761](https://github.com/dotnet/aspnetcore/issues/62761) | Obsolete legacy Blazor hosting models in favor of the unified Blazor Web App model | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7652](https://github.com/dotnet/extensions/pull/7652) | Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7579](https://github.com/dotnet/extensions/pull/7579) | Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability by replacing SemanticKernel connectors with CommunityToolkit | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18858](https://github.com/microsoft/aspire/pull/18858) | [auto-sec] Consolidate Aspire JavaScript template dependency security remediations | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#657](https://github.com/microsoft/mxc/pull/657) | [WSLC] Add on-disk alias canonicalization to denied-path overlap check | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#634](https://github.com/microsoft/mxc/pull/634) | [Bubblewrap/LXC] Address network policy gaps - schema | open |
| GA 昇格 | microsoft/mxc | [PR#676](https://github.com/microsoft/mxc/pull/676) | Split GA network schema contract out of #634 (schema + model types only) | open |
| ⚠ 破壊的な検証強化 | github/copilot-sdk | [PR#1980](https://github.com/github/copilot-sdk/pull/1980) | java: enforce non-blank @CopilotToolParam description at compile time | merged |
| 互換性修正の確認 | github/copilot-sdk | [Issue#1129](https://github.com/github/copilot-sdk/issues/1129) | `copilot_mcp_server_name` field leaks into `tools[]` in outbound chat-completion requests, breaking strict OpenAI-compatible providers (e.g. Gemini) | closed |
| ⚠ セキュリティ | github/copilot-sdk | [Issue#465](https://github.com/github/copilot-sdk/issues/465) | [Request] Digitally sign .NET versions of binaries | open |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-23-copilot-cloud-agent-for-linear-is-now-generally-available) | Copilot cloud agent for Linear is now generally available | — |
| 運用上の要対応 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-22-upcoming-ghes-change-impacting-uploading-support-bundles) | Upcoming GHES change impacting uploading support bundles | 2026-08-18 期限 |

## エグゼクティブサマリー

- **Agent Framework は 5 件の migration が必要**: Python Responses の戻り値変更 [#7234](https://github.com/microsoft/agent-framework/pull/7234)、FHA protocol 2.0 必須化 [#7158](https://github.com/microsoft/agent-framework/pull/7158)、.NET Harness / approval / session store 契約 [#7119](https://github.com/microsoft/agent-framework/pull/7119) [#7111](https://github.com/microsoft/agent-framework/pull/7111) [#7000](https://github.com/microsoft/agent-framework/pull/7000) がマージされ、workflow credential と MCP redirect の hardening [#7270](https://github.com/microsoft/agent-framework/pull/7270) [#7245](https://github.com/microsoft/agent-framework/pull/7245) も入りました。
- **.NET web stack は非推奨化と supply-chain 対応が進展**: Blazor WebAssembly DevServer の後継 Gateway [#67862](https://github.com/dotnet/aspnetcore/pull/67862)、gRPC Swagger の削除、OpenAPI への obsolete 反映 [#66355](https://github.com/dotnet/aspnetcore/pull/66355) に加え、SQLitePCLRaw 修正 [#7579](https://github.com/dotnet/extensions/pull/7579) が入りました。Aspire JavaScript template [#18858](https://github.com/microsoft/aspire/pull/18858) と AI Evaluation task [#7652](https://github.com/dotnet/extensions/pull/7652) の依存修正は継続中です。
- **MXC は sandbox 境界を強化中**: WSLC の alias 経由 denied-path bypass は [#657](https://github.com/microsoft/mxc/pull/657) で修正されましたが、GA network policy は schema [#676](https://github.com/microsoft/mxc/pull/676)、parser [#634](https://github.com/microsoft/mxc/pull/634)、backend enforcement が未統合のため、まだ安全境界として採用できません。
- **Copilot / agent integration が拡大**: Copilot SDK は Java parameter schema override [#2069](https://github.com/github/copilot-sdk/pull/2069) と Rust `ask_user` の並行 dispatch [#2034](https://github.com/github/copilot-sdk/pull/2034) を追加し、[Linear 連携が GA](https://github.blog/changelog/2026-07-23-copilot-cloud-agent-for-linear-is-now-generally-available) になりました。独自 MCP 実装は [次期 stateless 仕様](https://github.blog/changelog/2026-07-23-github-mcp-server-supports-the-next-mcp-specification)への適合確認が必要です。
- **運用更新**: Azure は [DDoS Protection custom policy](https://azure.microsoft.com/updates?id=568063) と [Standard service endpoint](https://azure.microsoft.com/updates?id=561475) が Public Preview です。GHES 管理者は [2026 年 8 月 18 日の support bundle upload 制限](https://github.blog/changelog/2026-07-22-upcoming-ghes-change-impacting-uploading-support-bundles)までに appliance を最新 patch へ更新してください。

## 主要トレンド

今回は、Agent Framework の hosting / session 契約、ASP.NET Core の obsolete API、Copilot SDK の compile-time validation のように、preview / experimental な契約を安定化しながら曖昧な既存挙動を厳格化する変更が目立ちました。並行して workflow credential、authorization metadata、sandbox path、npm / native dependency など、agent 実行境界と supply chain の hardening が複数リポジトリで進んでいます。GitHub 側では Linear GA、stateless MCP、Mobile からの Actions 修正、usage impact dashboard により agent の統合先と運用可視性が拡大しました。

## 次回チェックに向けたメモ

- Agent Framework の 5 件の破壊的変更について release note と migration guide への反映を確認し、Skills 利用時に session が更新されない [#7156](https://github.com/microsoft/agent-framework/issues/7156) を継続追跡します。
- ASP.NET Core の SignalR `ws` 脆弱性 [#67876](https://github.com/dotnet/aspnetcore/issues/67876)と未検証の prototype pollution [#66071](https://github.com/dotnet/aspnetcore/issues/66071)、Copilot SDK の `hono` advisory [#2007](https://github.com/github/copilot-sdk/issues/2007) / Rust 権限 bypass [#2065](https://github.com/github/copilot-sdk/pull/2065)、Aspire [#18858](https://github.com/microsoft/aspire/pull/18858)と extensions [#7652](https://github.com/dotnet/extensions/pull/7652)の dependency remediation を追跡します。
- MXC の GA network policy [#676](https://github.com/microsoft/mxc/pull/676) [#634](https://github.com/microsoft/mxc/pull/634)、unenforceable policy の拒否 [#681](https://github.com/microsoft/mxc/pull/681) [#682](https://github.com/microsoft/mxc/pull/682)、state-aware daemon hardening [#658](https://github.com/microsoft/mxc/pull/658)が一体として完成するかを確認します。
- dotnet/extensions の `IChatClient` routing 提案 [#7647](https://github.com/dotnet/extensions/issues/7647)、Functions の cancellation [#3472](https://github.com/Azure/azure-functions-dotnet-worker/pull/3472) / metadata reader [#3469](https://github.com/Azure/azure-functions-dotnet-worker/pull/3469)、Aspire Native AOT dashboard と構造化ログ契約の post-merge 安定性を引き続き確認します。
- Azure は今回の DDoS custom policy / Standard service endpoint に加え、前回から継続中の [生成 AI telemetry 保護](https://azure.microsoft.com/updates?id=567594)と [Functions PowerShell 7.6](https://azure.microsoft.com/updates?id=567651)の GA 進展を確認します。
- GitHub は 7 月 28 日公開予定の stateless MCP 仕様に対する独自実装の適合、8 月 18 日の GHES support bundle 期限、Code Quality の課金 / opt-out、Xcode 27 runner、secret scanning 強化、Copilot usage metrics の schema compatibility を継続確認します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-07-27 00:50:43","previousCheckAtUtc":"2026-07-21 00:15:24"} -->