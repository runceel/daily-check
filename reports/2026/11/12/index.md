# 差分レポート — 2026-11-12 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-11-12 00:51:15` |
| レポート生成日時 (JST) | `2026-11-12 09:51:15` |
| 前回チェック時刻 (UTC) | `2026-11-05 00:03:42` |
| 対象期間 (UTC) | `2026-11-05 00:03:42 〜 2026-11-12 00:51:15` |

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

自動判定を原資料と照合し、CI 障害や性能改善などの誤検出を除外して補足しました。`open` は提案・報告であり、`closed` は修正配布済みを意味しません。`merged` も配布完了とは限らず、Python Hosting の2件は RC ブランチへのマージです。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10282](https://github.com/microsoft/agent-framework/pull/10282) | .NET: [BREAKING] Bind Foundry toolboxes to each response | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10275](https://github.com/microsoft/agent-framework/pull/10275) | .NET: [BREAKING] Adopt the MCP skills extension | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10269](https://github.com/microsoft/agent-framework/pull/10269) | Python: [BREAKING] Make Foundry host configuration explicit | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10266](https://github.com/microsoft/agent-framework/pull/10266) | .NET: [BREAKING] Require a fully qualified container runtime path for DockerShellExecutor | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10264](https://github.com/microsoft/agent-framework/pull/10264) | Python: [BREAKING] Harden Foundry Hosting options | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10260](https://github.com/microsoft/agent-framework/pull/10260) | Python: [BREAKING] Prepare Foundry Hosting for RC | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10243](https://github.com/microsoft/agent-framework/pull/10243) | .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10238](https://github.com/microsoft/agent-framework/pull/10238) | .NET: [BREAKING] Support scoped and transient agent lifetimes in Foundry Hosting | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10224](https://github.com/microsoft/agent-framework/pull/10224) | Python: [BREAKING] Split Foundry agent and native workflow hosts | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10217](https://github.com/microsoft/agent-framework/pull/10217) | .NET: [BREAKING] Clarify Foundry storage docs and user identity accessor | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10211](https://github.com/microsoft/agent-framework/pull/10211) | .NET: [BREAKING] Align A2A extension naming and return types | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10192](https://github.com/microsoft/agent-framework/pull/10192) | .NET: [BREAKING] fix(dotnet): validate declarative MCP destinations | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10187](https://github.com/microsoft/agent-framework/pull/10187) | Python: [BREAKING] Align Foundry hosting source names and remove store alias | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10156](https://github.com/microsoft/agent-framework/pull/10156) | Python: .net, python: [BREAKING] Require minimum compatible copilot cli version | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10152](https://github.com/microsoft/agent-framework/pull/10152) | [BREAKING] Python: fix(hyperlight): interrupt guest execution and enforce time limits | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10132](https://github.com/microsoft/agent-framework/pull/10132) | .NET: [BREAKING] Reduce Foundry Hosting API surface | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10121](https://github.com/microsoft/agent-framework/pull/10121) | .NET: [BREAKING] Ensure enable file hooks defaults to false | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10113](https://github.com/microsoft/agent-framework/pull/10113) | .NET: [BREAKING] Simplify A2A agent creation and payload handling | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10066](https://github.com/microsoft/agent-framework/pull/10066) | [BREAKING] .NET: fix(hyperlight): propagate cancellation and limit execution | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9994](https://github.com/microsoft/agent-framework/pull/9994) | .NET: [BREAKING] Remove nonstandard workflow payload telemetry | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9661](https://github.com/microsoft/agent-framework/pull/9661) | Python: [BREAKING] Reject caller-supplied tool execution context in Responses requests | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9391](https://github.com/microsoft/agent-framework/pull/9391) | [BREAKING] Python: Reject unsafe functional step replay | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8662](https://github.com/microsoft/agent-framework/pull/8662) | [BREAKING] Python: scope declarative MCP sessions to invocations | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#10129](https://github.com/microsoft/agent-framework/pull/10129) | chore(deps): bump oauthlib from 4.0.0 to 4.0.1 in /python/packages/lab | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#10128](https://github.com/microsoft/agent-framework/pull/10128) | Python: chore(deps): bump oauthlib from 4.0.0 to 4.0.1 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | closed |
| 非推奨/廃止 | microsoft/agent-framework | [PR#10273](https://github.com/microsoft/agent-framework/pull/10273) | Python: Deprecate the legacy memory APIs | open |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#10018](https://github.com/microsoft/agent-framework/issues/10018) | Python: [Team][Action] Remove deprecated hosting constructor store alias | open |
| 非推奨/廃止 | microsoft/agent-framework | [PR#9402](https://github.com/microsoft/agent-framework/pull/9402) | Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m | open |
| ⚠ セキュリティ | microsoft/agent-framework-durable-extension | [PR#183](https://github.com/microsoft/agent-framework-durable-extension/pull/183) | Bump the github-actions group across 1 directory with 4 updates | open |
| ⚠ セキュリティ | microsoft/agent-framework-durable-extension | [PR#180](https://github.com/microsoft/agent-framework-durable-extension/pull/180) | Bump oauthlib from 4.0.0 to 4.0.1 in /python | open |
| ⚠ セキュリティ | microsoft/agent-framework-durable-extension | [PR#179](https://github.com/microsoft/agent-framework-durable-extension/pull/179) | Bump oauthlib from 3.3.1 to 4.0.1 in /python/packages/azurefunctions | open |
| GA 昇格 | microsoft/agent-framework-durable-extension | [PR#181](https://github.com/microsoft/agent-framework-durable-extension/pull/181) | chore: prepare GA release (1.16.0 / 1.0.0) | merged |
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
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69867](https://github.com/dotnet/aspnetcore/issues/69867) | Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69312](https://github.com/dotnet/aspnetcore/pull/69312) | Unify claims principal cache identity | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#22171](https://github.com/microsoft/aspire/pull/22171) | [release/17.0] Consolidate ordered Go AppHost backports | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21976](https://github.com/microsoft/aspire/pull/21976) | Make generated Go SDK APIs idiomatic | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21871](https://github.com/microsoft/aspire/pull/21871) | Support SPA fallback for static website publishing | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21843](https://github.com/microsoft/aspire/pull/21843) | Modernize Azure Sandbox provisioning with generated SDK types | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#21795](https://github.com/microsoft/aspire/issues/21795) | Aspire 17 rejects previously accepted empty parameter values; clarify breaking change and dashboard failure | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21407](https://github.com/microsoft/aspire/pull/21407) | Migrate Azure Functions integration to Project V2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21260](https://github.com/microsoft/aspire/pull/21260) | Add browser-facing origin references for CORS and redirect configuration | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#20825](https://github.com/microsoft/aspire/pull/20825) | AddCSharpApp を非推奨化し AddDotnetProject へ誘導 | 期間前の10月9日マージ・今回更新 |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20756](https://github.com/microsoft/aspire/pull/20756) | TerminalOptions.ShowTerminalHost を削除 | 期間前の10月7日マージ・今回更新 |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20730](https://github.com/microsoft/aspire/pull/20730) | Dashboard / CLI 製品 telemetry の Azure Monitor 移行 | 期間前の10月9日マージ・今回更新 |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20614](https://github.com/microsoft/aspire/pull/20614) | 次期 major の最低対応 .NET を10へ変更 | 期間前の10月6日マージ・今回更新 |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.4 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#22170](https://github.com/microsoft/aspire/pull/22170) | Merge release/13.6 into main after 13.6.5 security release | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#22148](https://github.com/microsoft/aspire/issues/22148) | Microsoft Security Advisory CVE-2026-118740 - Aspire Security Feature Bypass Vulnerability | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#22117](https://github.com/microsoft/aspire/pull/22117) | Build(deps): Bump node-forge from 1.4.0 to 1.4.2 in /extension | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#22101](https://github.com/microsoft/aspire/issues/22101) | Microsoft Security Advisory CVE-2026-120778 - Aspire Elevation of Privilege Vulnerability | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#22100](https://github.com/microsoft/aspire/issues/22100) | Microsoft Security Advisory CVE-2026-120792 - Aspire Information Disclosure Vulnerability | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#22092](https://github.com/microsoft/aspire/issues/22092) | Microsoft Security Advisory CVE-2026-120006 - Aspire Elevation of Privilege Vulnerability | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#21761](https://github.com/microsoft/aspire/pull/21761) | Bump node-forge from 1.4.0 to 1.4.1 in /extension | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#21736](https://github.com/microsoft/aspire/pull/21736) | Build(deps): Bump the npm group across 1 directory with 25 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20789](https://github.com/microsoft/aspire/pull/20789) | source-map-js 1.2.2 の CVE 修正 | 期間前の10月7日マージ・今回更新 |
| ⚠ セキュリティ | microsoft/aspire | [PR#20757](https://github.com/microsoft/aspire/pull/20757) | proxy-addr 2.0.8 の CVE 修正 | 期間前の10月7日マージ・今回更新 |
| ⚠ セキュリティ | microsoft/aspire | [PR#20716](https://github.com/microsoft/aspire/pull/20716) | Bump the npm group across 1 directory with 23 updates | closed |
| 非推奨/廃止 | microsoft/aspire | [Issue#21958](https://github.com/microsoft/aspire/issues/21958) | `aspire doctor` warns about deprecated `mcp start` arguments the `aspire agent init` repair refuses to rewrite | open |
| 非推奨/廃止 | microsoft/aspire | [PR#20178](https://github.com/microsoft/aspire/pull/20178) | Update Azure.Provisioning.AppContainers to 1.3.0-beta.2 | merged |
| GA 昇格 | microsoft/aspire | [PR#22146](https://github.com/microsoft/aspire/pull/22146) | [release/17.0] Update .NET servicing dependencies and adopt .NET 11 GA | merged |
| GA 昇格 | microsoft/aspire | [PR#22070](https://github.com/microsoft/aspire/pull/22070) | Update .NET servicing dependencies and adopt .NET 11 GA | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#1726](https://github.com/microsoft/mxc/pull/1726) | chore(deps): bump the github-actions group across 1 directory with 7 updates | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#1677](https://github.com/microsoft/mxc/pull/1677) | Remove the node-gyp devDependency from the Node SDK | merged |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2527](https://github.com/github/copilot-sdk/issues/2527) | [v2] Publish the breaking-change inventory and migration guide | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578773) | [Launched] Generally Available: Azure Functions support for .NET 11 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=579310) | [Launched] Generally Available: Azure Front Door edge actions  | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=575106) | Retirement: Support for .NET 8 and .NET 9 on Static Web Apps is ending November 10, 2026 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577668) | [Launched] Generally Available: Azure Front Door TLS key exchange policy with post-quantum support  | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-11-09-secret-scanning-detects-secrets-in-github-actions-workflow-logs) | Secret scanning detects secrets in GitHub Actions workflow logs | — |
| ⚠ 認証関連修正 | dotnet/aspnetcore | [PR#70442](https://github.com/dotnet/aspnetcore/pull/70442) | Identity recovery message の送信先を保存 email へ統一 | merged |
| ⚠ 破壊的変更 | dotnet/extensions | [PR#7588](https://github.com/dotnet/extensions/pull/7588) | preview interface を抽象 DocumentExtractionClient に置換 | merged |
| 入力検証の強化 | microsoft/mxc | [PR#1556](https://github.com/microsoft/mxc/pull/1556) | containerId の embedded NUL を拒否して ID 衝突を防止 | merged |
| ⚠ 運用変更 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-10-dependabot-alerts-will-pause-on-inactive-repositories) | 非活動 repository の Dependabot alerts を12月8日から停止 | 施行予定 |
| GA 昇格 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-11-issue-types-and-fields-are-available-for-personal-accounts) | 個人所有 repository の Issue types / fields | GA |
| GA 昇格 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-10-gemini-4-carbon-in-github-copilot) | Gemini 4 Carbon を Copilot に追加 | 段階的展開 |
| GA 昇格・データ保持要確認 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-09-claude-fable-5-2-in-github-copilot) | Claude Fable 5.2 は既定で安全性分類向けデータ保持あり | 段階的展開 |
| GA 昇格 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-06-github-copilot-in-slack-and-teams-is-generally-available) | Slack / Teams の @GitHub と Teams Canvas | GA |
| ⚠ セキュリティ検出改善 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-05-secret-scanning-upgrades-detectors-adds-spacex-as-partner) | SpaceX secret 検出追加と既存 detector の誤検出低減 | 提供開始 |

## エグゼクティブサマリー

- **セキュリティ更新を優先**：[Aspire](aspire.md) の4件の advisory は CLI・Dashboard・Hosting をそれぞれ **13.6.5以上**へ更新する必要があり、.NET SDK 更新だけでは代替できません。[ASP.NET Core](aspnetcore.md) は SignalR・Blazor validation・multipart・logging・cookie・PathString・named pipe 等の CVE 修正と Identity template の送信先修正がマージ済みですが、配布対象版は別途確認してください。[MXC](mxc.md) の NUL 拒否・開発依存削除、[Agent Framework](agent-framework.md) と [Durable Extension](agent-framework-durable-extension.md) の oauthlib / Actions 依存更新の状態も確認対象です。
- **preview / SDK の互換性変更を一括確認**：[Agent Framework](agent-framework.md) は Docker 実行パス・A2A・公開 Hosting API・CLI 最低版・hooks 既定値・workflow telemetry・MCP session・Hyperlight の30秒制限が変更されました。Python Hosting の分離・明示構成は **RC ブランチへのマージ**で、Toolbox / MCP 承認・送信先検証・legacy memory 廃止は未マージです。[Aspire](aspire.md) は Go SDK の型・option と browser-origin 参照、[Extensions](extensions.md) は `DocumentExtractionClient` の preview interface 置換を確認。[Copilot SDK](copilot-sdk.md) は v2 移行ガイドが未公開タスクとして残ります。
- **Azure は GA と終了期限を区別**：[Functions .NET 11 と Front Door edge actions / 耐量子 TLS policy が GA](azure.md)。一方、Static Web Apps の managed Functions API の **.NET 8 / 9 は11月10日にサポート終了済み**で、.NET 10 への移行が必要です。[Functions worker](azure-functions-dotnet-worker.md) の .NET 11 container publish 問題と、[Aspire の .NET 11 GA 依存更新](aspire.md)で残る Npgsql EF RC pin は個別確認してください。
- **durable agent の安定版準備**：[Durable Extension](agent-framework-durable-extension.md) は .NET **1.16.0** / Python **1.0.0** の GA リリース準備をマージし、worker を完全停止した後も承認から再開する Copilot session のサンプルを追加しました。配布レジストリの公開状態を確認して採用してください。[Agents Runtime](azure-functions-agents-runtime.md) と [ReactiveProperty](reactiveproperty.md) は今回の収集対象に変化がありません。
- **GitHub の運用・権限・課金条件が更新**：[Changelog](github-changelog.md) では12月8日から非活動 repository の Dependabot alerts が停止予定。Actions ログ検査は opt-in preview かつ通知なし、SpaceX secret 検出も追加されました。Gemini 4 Carbon / Claude Fable 5.2 は利用量課金・管理ポリシーを確認し、Fable はデータ保持にも注意。個人 Issue types / fields と Slack / Teams の @GitHub が GA になり、PR Overview は opt-in preview です。シート管理・code review API・addressed rate・telemetry 欠落指標・impact dashboard の新しい集計定義も確認してください。

## 主要トレンド

- 認証・identity・承認・session 所有の境界を明確にする更新が、Aspire、ASP.NET Core、Agent Framework、MXC に集中しています。脆弱性修正済みの公開版と、未マージの hardening 提案を区別することが重要です。
- .NET 11 GA 採用と durable agent の安定版準備が進む一方、Python Hosting の RC 統合・provider の RC pin・preview API 整理は継続中で、「GA」という語だけでスタック全体の安定性は判断できません。
- エージェントの利用範囲拡大に合わせ、CLI / SDK の互換性・キャンセル・実行予算・観測性と、GitHub 側の課金・データ保持・セキュリティ検査の運用条件を明示する動きが見られます。

## 次回チェックに向けたメモ

- **Agent Framework（前回から継続）**：microsoft/agent-framework#10066 と microsoft/agent-framework#9994 は今回マージ済みのため、公開パッケージへの反映と移行確認へ切り替えます。microsoft/agent-framework#10001、microsoft/agent-framework#9857、microsoft/agent-framework#10018、microsoft/agent-framework#10030、FIDES の microsoft/agent-framework#9889・microsoft/agent-framework#9652・microsoft/agent-framework#9251 は継続項目。新たに RC 統合 microsoft/agent-framework#10260、Toolbox / MCP の microsoft/agent-framework#10282・microsoft/agent-framework#10275・microsoft/agent-framework#10243・microsoft/agent-framework#10192、memory 非推奨化 microsoft/agent-framework#10273 を追跡します。
- **Durable / Agents Runtime（前回から継続）**：クローズ済み microsoft/agent-framework-durable-extension#72 の Durable 2.x 案を採用済みと解釈せず、GA package の実依存を確認。Azure/azure-functions-agents-runtime#289 の2.0.0-rc3から正式版への移行、schema v2・checkpoint authority・Blob offloading・再開互換性を追跡します。今回の GA release 準備と oauthlib 更新候補の配布状況も確認します。
- **Aspire（前回から継続）**：microsoft/aspire#21360 の Project V2 と microsoft/aspire#21407 の Functions 移行、名前付き integration sources と CLI Go exporter を継続確認。microsoft/aspire#21260 はマージされたため、CORS / Entra redirect の実際の生成物を確認します。4件の advisory 対応、Go backport microsoft/aspire#22171、Npgsql EF stable、未マージの限定的 stable 化 microsoft/aspire#22167・microsoft/aspire#22158・microsoft/aspire#22157 も重点です。
- **GitHub / Copilot SDK（前回から継続）**：github/copilot-sdk#2896 の Entra MCP、github/copilot-sdk#2888 の cloud session、github/copilot-sdk#2897 の Linux / OpenSSL、github/copilot-sdk#2892 の中断時部分回答を引き続き確認し、github/copilot-sdk#2527 の v2 移行ガイド公開を追います。前回告知の secret scanning audit event 移行期限 **2026年11月12日（本日）**への対応と、deprecated models / package firewall も確認。次の期限は Dependabot 自動停止 **12月8日**、Fable の期限付き ZDR 例外 **年末**です。
- **Azure（前回から継続）**：Fluid Relay の **2027年2月2日**廃止、Defender for IoT OT security の **2029年10月**廃止への移行案内を継続確認。Firewall IPv6 application rules、Application Gateway for Containers の JWT / MCPRoute / private ingress、SQL PITR immutability の preview を追います。今回追加の WAF rate limit grouping・AKS DACS・Front Door gRPC・Route Server dual-stack・Arc File Sync の制約を確認し、Static Web Apps の .NET 10 移行を優先します。
- **その他（前回から継続）**：runceel/ReactiveProperty#569、Extensions の AI tool-call / streaming の未解決項目、MXC の Linux filesystem policy と microsoft/mxc#1630・microsoft/mxc#1670・microsoft/mxc#1665 を継続。新しい Documents / Extraction の preview 契約と HybridCache の対象 TFM、MXC 学習モードの allow / block の違いも確認してください。継続項目は今回差分だけで解消を確認できたものではありません。
- **収集品質の振り返り**：今回 GitHub 検索の1日1,000件到達警告はありません。GitHub Changelog RSS 先頭ページは10件のみで対象期間を覆わず、2ページ目から6件を手動補完して **計16件**にしました。自動分類は依存 release notes・「breaking tests」・「GAを検証するIssue」・stable 化で消す obsolete suppressions を過剰検出し、一方 dotnet/extensions#7588 の interface 置換、dotnet/aspnetcore#70442 の認証修正、microsoft/mxc#1556 の identity 検証を取りこぼしました。次回までに分類・RSS pagination テストの改善対象とし、updated 対象に含まれる期間前マージと実際の新規マージも区別してください。Azure RSS は抜粋が短いため、詳細未掲載の条件を推測していません。

<!-- daily-check-meta: {"generatedAtUtc":"2026-11-12 00:51:15","schema":1,"previousCheckAtUtc":"2026-11-05 00:03:42"} -->