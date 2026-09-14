# 差分レポート — 2026-09-03 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-03 03:25:40` |
| レポート生成日時 (JST) | `2026-09-03 12:25:40` |
| 前回チェック時刻 (UTC) | `2026-09-02 05:04:01` |
| 対象期間 (UTC) | `2026-09-02 05:04:01 〜 2026-09-03 03:25:40` |

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
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#7383](https://github.com/microsoft/agent-framework/issues/7383) | Python: Bind tool-approval responses to surfaced approval requests | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68738](https://github.com/dotnet/aspnetcore/pull/68738) | Add AntiforgeryOptions.AllowBackForwardCache | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68054](https://github.com/dotnet/aspnetcore/issues/68054) | AntiforgeryMiddleware needs an escape-hatch for troubleshooting and logging, and customizing the final response | open |
| ⚠ 破壊的変更/廃止 | dotnet/extensions | [PR#7724](https://github.com/dotnet/extensions/pull/7724) | Remove OpenAI Assistants API support | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19848](https://github.com/microsoft/aspire/pull/19848) | Remove retired GitHub Models integration | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19810](https://github.com/microsoft/aspire/pull/19810) | Improve Azure Sandbox defaults | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19845](https://github.com/microsoft/aspire/pull/19845) | Bump the npm_and_yarn group across 5 directories with 3 updates | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#1076](https://github.com/microsoft/mxc/pull/1076) | Add Process Security Environment ingress contract | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2469](https://github.com/github/copilot-sdk/issues/2469) | Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#1129](https://github.com/github/copilot-sdk/issues/1129) | `copilot_mcp_server_name` field leaks into `tools[]` in outbound chat-completion requests, breaking strict OpenAI-compatible providers (e.g. Gemini) | closed |
| ⚠ セキュリティ/非推奨 | Azure/azure-functions-agents-runtime | [PR#140](https://github.com/Azure/azure-functions-agents-runtime/pull/140) | build(deps): bump cryptography from 48.0.0 to 50.0.0 | open |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-02-content-exclusions-generally-available-in-copilot-app-and-cli) | Content exclusions generally available in Copilot app and CLI | — |

## エグゼクティブサマリー

- **エージェント実行の安全性**: Agent Framework は [tool approval を呼び出し単位へ安全に結び付ける修正](https://github.com/microsoft/agent-framework/pull/7988)をマージしました。Copilot SDK では [空の assistant turn を含む resume が strict provider で失敗する問題](https://github.com/github/copilot-sdk/issues/2469)が未解決ですが、[MCP tool の非標準フィールド流出](https://github.com/github/copilot-sdk/issues/1129)は修正確認済みです。
- **Aspire の移行準備**: [GitHub Models integration の撤去](https://github.com/microsoft/aspire/pull/19848)、[Azure Sandbox API の整理](https://github.com/microsoft/aspire/pull/19810)、[Radius 0.60 必須化](https://github.com/microsoft/aspire/pull/19555)という破壊的変更案が並行しています。JavaScript playground では [CVE-2026-9358 対応](https://github.com/microsoft/aspire/pull/19845)も進行中です。
- **API 廃止と依存セキュリティ**: .NET Extensions は sunset された [OpenAI Assistants adapter を削除](https://github.com/dotnet/extensions/pull/7724)しました。Functions Agents Runtime の [`cryptography` 50.0.0 更新](https://github.com/Azure/azure-functions-agents-runtime/pull/140)は CVE-2026-69247 修正と FFDH 非推奨化を含みます。
- **Web／sandbox 境界**: ASP.NET Core では [Antiforgery の back/forward cache opt-in](https://github.com/dotnet/aspnetcore/pull/68738)と [CSRF 失敗時の診断 API](https://github.com/dotnet/aspnetcore/issues/68054)が検討中です。MXC でも [Process Security Environment の ingress policy 契約](https://github.com/microsoft/mxc/pull/1076)が追加提案されています。
- **管理機能とプレビュー**: GitHub Copilot app／CLI の [content exclusions が GA](https://github.blog/changelog/2026-09-02-content-exclusions-generally-available-in-copilot-app-and-cli)となり、Enterprise は任意の既定モデルも設定可能になりました。Azure では [Front Door WAF の route 単位 policy](https://azure.microsoft.com/updates?id=569804)と [MySQL reader endpoint](https://azure.microsoft.com/updates?id=569653)がプレビュー開始です。

## 主要トレンド

エージェント／AI SDK では、tool approval、skill provider、session replay、provider 互換性など「実行時の境界を安全かつ厳密に扱う」変更が集中しました。  
同時に、Deno 2、Durable Functions Python 2.x、OpenAI SDK といった基盤更新が進み、廃止 API や experimental surface の整理が顕著です。GitHub の content exclusion GA も含め、機能追加だけでなくガバナンスとライフサイクル管理が主要テーマです。

## 次回チェックに向けたメモ

- 前回から継続して、[AgentFileStore の破壊的変更案](https://github.com/microsoft/agent-framework/pull/7671)、[Aspire Radius 0.60 移行](https://github.com/microsoft/aspire/pull/19555)、[Functions Agents Runtime の Dynamic Workflow 評価](https://github.com/Azure/azure-functions-agents-runtime/pull/177)を追跡します。新たに Agents Runtime の [Durable retry](https://github.com/Azure/azure-functions-agents-runtime/pull/193) と ACA qualification PR 群も確認します。
- Functions Worker は MessagePack 修正版と Node 22 のサポート終了計画を継続確認します。Copilot SDK は Empty mode の組み込み skill 分離、session-scoped token provider、Bedrock `temperature` に加え、[resume の strict provider 不具合](https://github.com/github/copilot-sdk/issues/2469)と [MCP header refresh](https://github.com/github/copilot-sdk/issues/2492)を重点確認します。
- Azure は Bastion／AKS 接続、eBPF routing に加え、Front Door WAF policy と MySQL reader endpoint の preview 進展を追跡します。GitHub は Classroom の代替導入、Actions retention の 2026-10-01 適用、content exclusion policy の実運用を確認します。
- Aspire は GitHub Models 撤去と Azure Sandbox の breaking PR が merge される時期、Radius 0.60 の release note／移行手順、Deno AppHost の初期不具合を継続監視します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-09-03 03:25:40","previousCheckAtUtc":"2026-09-02 05:04:01"} -->