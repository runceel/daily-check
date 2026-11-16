# 差分レポート — 2026-11-05 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-11-05 00:03:42` |
| レポート生成日時 (JST) | `2026-11-05 09:03:42` |
| 前回チェック時刻 (UTC) | `2026-10-30 00:23:04` |
| 対象期間 (UTC) | `2026-10-30 00:23:04 〜 2026-11-05 00:03:42` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10066](https://github.com/microsoft/agent-framework/pull/10066) | [BREAKING] .NET: fix(hyperlight): propagate cancellation and limit execution | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10042](https://github.com/microsoft/agent-framework/pull/10042) | Python: [BREAKING] Harden MCP catalog discovery behavior | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10037](https://github.com/microsoft/agent-framework/pull/10037) | .NET: [BREAKING] Postpone task support in A2A hosting | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10035](https://github.com/microsoft/agent-framework/pull/10035) | Python: [BREAKING] Bind AG-UI workflow agent executors to one authorization scope | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10001](https://github.com/microsoft/agent-framework/pull/10001) | [BREAKING] Python: Honor injected Azure AI Search clients over settings | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9994](https://github.com/microsoft/agent-framework/pull/9994) | .NET: [BREAKING] Remove nonstandard workflow payload telemetry | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9973](https://github.com/microsoft/agent-framework/pull/9973) | .NET: [BREAKING] CodeAct: redact host-tool diagnostics by default | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9971](https://github.com/microsoft/agent-framework/pull/9971) | Python: [BREAKING] CodeAct: redact host-tool diagnostics by default | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9948](https://github.com/microsoft/agent-framework/pull/9948) | Python: [BREAKING] Remove Python 3.10 support | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9900](https://github.com/microsoft/agent-framework/pull/9900) | Python: [BREAKING] align workflow span name with OpenTelemetry conventions | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9899](https://github.com/microsoft/agent-framework/pull/9899) | .NET: [BREAKING] align workflow span name with OpenTelemetry conventions | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9857](https://github.com/microsoft/agent-framework/pull/9857) | .NET: [BREAKING] Suppress duplicate workflow payload telemetry for hosted agents | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9841](https://github.com/microsoft/agent-framework/pull/9841) | .NET: [BREAKING] fix(dotnet): require allowed HTTP hosts | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9722](https://github.com/microsoft/agent-framework/pull/9722) | .NET: [BREAKING] fix: scope workflow MCP clients to invocations | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9322](https://github.com/microsoft/agent-framework/pull/9322) | Python: [BREAKING] Migrate Foundry Local integration to SDK 2.3.1 | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9160](https://github.com/microsoft/agent-framework/issues/9160) | Python: [Bug]: evaluate_agent() omits ContextProvider/SkillsProvider tools from tool_definitions, breaking tool_selection/tool_input_accuracy | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8662](https://github.com/microsoft/agent-framework/pull/8662) | [BREAKING] Python: fix: isolate declarative MCP sessions by workflow | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9889](https://github.com/microsoft/agent-framework/issues/9889) | .NET: [Feature]: Port the FIDES security model and enforcement | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9652](https://github.com/microsoft/agent-framework/pull/9652) | Python: Harden FIDES security state and policy enforcement | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9251](https://github.com/microsoft/agent-framework/issues/9251) | Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#9118](https://github.com/microsoft/agent-framework/pull/9118) | Python: redact DevUI auth tokens from Azure deployment diagnostics | merged |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#10018](https://github.com/microsoft/agent-framework/issues/10018) | Python: [Team][Action] Remove deprecated hosting constructor store alias | open |
| GA 昇格 | microsoft/agent-framework | [Issue#10030](https://github.com/microsoft/agent-framework/issues/10030) | Python: [Team][Investigation] Verify AgentServer GA compatibility and steering fix | open |
| GA 昇格 | microsoft/agent-framework | [PR#8756](https://github.com/microsoft/agent-framework/pull/8756) | .NET: Add GA computer tool support to Foundry and Foundry hosting | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) | Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x | closed |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#44873](https://github.com/dotnet/aspnetcore/pull/44873) | Remove default logging scope from ASP.NET Core | closed |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#38824](https://github.com/dotnet/aspnetcore/issues/38824) | Blazor server InputFile not properly handling exceptions | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69955](https://github.com/dotnet/aspnetcore/pull/69955) | Do not emit or traverse non-security-enabled groups in Negotiate LDAP claims | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69867](https://github.com/dotnet/aspnetcore/issues/69867) | Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21407](https://github.com/microsoft/aspire/pull/21407) | Migrate Azure Functions integration to Project V2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21260](https://github.com/microsoft/aspire/pull/21260) | Add browser-facing origin references for CORS and redirect configuration | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#21230](https://github.com/microsoft/aspire/pull/21230) | Mark WithAzdResourceNaming obsolete | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20608](https://github.com/microsoft/aspire/pull/20608) | Remove Aspire.RabbitMQ.Client.v6 and Aspire.MongoDB.Driver.v2 | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#21761](https://github.com/microsoft/aspire/pull/21761) | Bump node-forge from 1.4.0 to 1.4.1 in /extension | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#21455](https://github.com/microsoft/aspire/pull/21455) | Fix Next.js publish fixture security dependencies | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20703](https://github.com/microsoft/aspire/pull/20703) | Fix critical and high dependency vulnerabilities | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20661](https://github.com/microsoft/aspire/pull/20661) | fix(ci): scope automatic workflow token permissions | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20659](https://github.com/microsoft/aspire/pull/20659) | fix(ci): restrict GitHub App tokens to required permissions | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20627](https://github.com/microsoft/aspire/pull/20627) | fix(ci): prevent command injection in privileged workflows | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20603](https://github.com/microsoft/aspire/pull/20603) | Update Testcontainers to resolve SSH.NET vulnerabilities | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#15987](https://github.com/microsoft/aspire/pull/15987) | ci: add Zizmor security analysis for GitHub Actions | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#21360](https://github.com/microsoft/aspire/pull/21360) | Deprecate AddProject and complete Project V2 migration | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#20594](https://github.com/microsoft/aspire/issues/20594) | Deprecate the Aspire.AppHost.Sdk | closed |
| 非推奨/廃止 | microsoft/aspire | [PR#20576](https://github.com/microsoft/aspire/pull/20576) | Remove obsolete ASPIREATS001 suppression | merged |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2896](https://github.com/github/copilot-sdk/issues/2896) | SDK 1.0.26+ breaks Entra MCP sign-in unless the host registers its own Entra app (undocumented breaking change) | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=579300) | [Launched] Generally Available: Azure Database for PostgreSQL stable REST API version 2026-10-01 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578966) | Generally Available: Route maps for Azure Route Server | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578926) | [Launched] Generally Available: Enhanced Azure Site Recovery support for VMSS Flex | — |
| ⚠ セキュリティ | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=576255) | Retirement: OT security in Microsoft Defender for IoT | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=574541) | [Launched] Generally Available: Change from virtual network integration to a private endpoint capable network configuration in Azure Database for PostgreSQL flexible server   | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570498) | Retirement: Azure Fluid Relay | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=578628) | [Launched] Generally Available: Azure Storage Actions adds automatic task updates, execution controls, and case-sensitive matching | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577992) | [Launched] Generally Available: Restart databases in Azure SQL DB via the Azure portal  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=579021) | [Launched] Generally Available: Geo-Replication on partitioned namespaces for Azure Service Bus Premium | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=579111) | [Launched] Generally Available: Azure Site Recovery for Azure Local | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-11-02-security-risk-assessments-include-repository-protection-status) | Security risk assessments include repository protection status | — |

## エグゼクティブサマリー

- **Agent Framework の互換性・境界変更:** [Python 3.10 のサポート終了](./agent-framework.md)、[A2A message mode の task 操作制限](./agent-framework.md)、[AG-UI executor の認可スコープ固定](./agent-framework.md)がマージされました。既存の runtime / hosting 構成を利用するチームは移行影響を確認してください。
- **Aspire の Project V2 移行:** [`AddProject` が非推奨化](./aspire.md)され、Project V2 移行が完了しました。既存 AppHost は移行ガイドに沿った更新が必要です。
- **Azure の廃止予告:** [Azure Fluid Relay は2027年2月2日に廃止予定](./azure.md)、[Defender for IoT の OT security は2029年10月に廃止予定](./azure.md)です。利用中の組織は依存関係を洗い出し、移行計画を立ててください。
- **Azure の GA と復旧機能:** [Service Bus Premium のパーティション名前空間で Geo-Replication が GA](./azure.md)となり、[Azure Local 向け Site Recovery も GA](./azure.md)になりました。対象サービスの可用性・災害復旧設計を見直せます。
- **GitHub のセキュリティ運用:** [リスク評価にリポジトリ保護状態が表示](./github-changelog.md)され、未保護リポジトリを特定しやすくなりました。組織の code / secret security coverage を確認してください。

## 主要トレンド

Agent Framework と Aspire では、実行・認可・接続先の境界を明確にする変更や、依存 SDK / framework の更新が進みました。既存利用者には Python バージョン、API / telemetry 名、AppHost 構成の確認が必要です。
クラウド各サービスでは、Private Link、Geo-Replication、災害復旧などネットワーク分離・可用性に関する GA / preview が複数発表されました。
セキュリティ関連では依存脆弱性の修正に加え、認証情報の秘匿化や repository protection coverage の可視化が進みました。

## 次回チェックに向けたメモ

- **Agent Framework:** #10066 / #10001 / #9994 / #9857 のオープン中の互換性変更、#10018 の deprecated `store` alias、AgentServer GA compatibility（#10030）を追跡する。FIDES の .NET security model (#9889)、Python FIDES hardening の実装状況（#9652、#9251）も確認する。
- **Durable Extension / Agents Runtime:** Azure Functions host の Durable 2.x 移行案 (#72) の採用状況と、Durable Functions SDK 2.0.0-rc3 (#289) の正式版・互換性を確認する。schema v2、checkpoint authority、Blob payload offloading など前回からの運用確認項目も継続する。
- **Aspire:** `AddProject` / Project V2 (#21360)、Azure Functions Project V2 migration (#21407)、browser-facing origin references (#21260) の移行範囲を確認する。名前付き integration sources と CLI Go exporter の利用方法もフォローする。
- **GitHub / Copilot SDK:** Entra MCP sign-in の SDK 1.0.26+ 問題 (#2896)、cloud session (#2888)、Linux prebuild / OpenSSL 互換性 (#2897)、中断時の部分回答消失 (#2892) を追跡する。secret scanning audit event の **2026-11-12** 移行期限と Copilot deprecated models / package firewall も確認する。
- **Azure:** Fluid Relay の2027-02-02廃止および Defender for IoT OT security の2029年10月廃止に向けた移行案内を確認する。Firewall IPv6 application rules、Application Gateway for Containers の JWT / MCPRoute / private ingress、SQL PITR immutability の preview 進捗も追う。
- **その他:** ReactiveProperty の性能改善 Issue #569、Extensions の Microsoft.Extensions.AI tool-call / streaming の未解決事項、MXC の Linux filesystem policy と ProcessContainer security 関連 Issue (#1630、#1670、#1665) を確認する。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-11-05 00:03:42","previousCheckAtUtc":"2026-10-30 00:23:04"} -->