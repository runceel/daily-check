# 差分レポート — 2026-10-19 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-19 00:32:32` |
| レポート生成日時 (JST) | `2026-10-19 09:32:32` |
| 前回チェック時刻 (UTC) | `2026-10-16 01:16:31` |
| 対象期間 (UTC) | `2026-10-16 01:16:31 〜 2026-10-19 00:32:32` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9461](https://github.com/microsoft/agent-framework/pull/9461) | [BREAKING] Python: Preserve Redis context scope identity | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9453](https://github.com/microsoft/agent-framework/pull/9453) | .NET/Python: [BREAKING] Clarify docker params usage and rename param | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#9452](https://github.com/microsoft/agent-framework/issues/9452) | Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9413](https://github.com/microsoft/agent-framework/pull/9413) | [BREAKING] Python: Require explicit AG-UI authorization scope | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#9322](https://github.com/microsoft/agent-framework/pull/9322) | Python: [BREAKING] Migrate Foundry Local integration to SDK 2.1 | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#9492](https://github.com/microsoft/agent-framework/issues/9492) | Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) | [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#69867](https://github.com/dotnet/aspnetcore/issues/69867) | Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#69861](https://github.com/dotnet/aspnetcore/pull/69861) | Don't leak property-level [Obsolete] into shared OpenAPI component schemas | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#69729](https://github.com/dotnet/aspnetcore/issues/69729) | OpenAPI: [Obsolete] on a property leaks `deprecated: true` into the shared component schema | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20919](https://github.com/microsoft/aspire/pull/20919) | Fix AKS AcrPull for existing cross-resource-group registries | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20918](https://github.com/microsoft/aspire/pull/20918) | Support ACME External Account Binding in cert-manager | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19848](https://github.com/microsoft/aspire/pull/19848) | Remove retired GitHub Models integration | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#21051](https://github.com/microsoft/aspire/pull/21051) | Pin MessagePack to 2.5.307 for security fixes | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#20854](https://github.com/microsoft/aspire/pull/20854) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20052](https://github.com/microsoft/aspire/pull/20052) | Configure NuGet audit sources and non-fatal vulnerability warnings | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#21093](https://github.com/microsoft/aspire/issues/21093) | Support member-specific obsolete SDK handling in provisioning proxies | open |
| GA 昇格 | microsoft/aspire | [Issue#21115](https://github.com/microsoft/aspire/issues/21115) | [Epic] Go AppHost GA | open |
| GA 昇格 | microsoft/aspire | [Issue#21114](https://github.com/microsoft/aspire/issues/21114) | [Go AppHost GA] VS Code Go AppHost and Go resource debugging | open |
| GA 昇格 | microsoft/aspire | [Issue#21113](https://github.com/microsoft/aspire/issues/21113) | [Go AppHost GA] Verify samples and playground AppHosts convert to Go | closed |
| GA 昇格 | microsoft/aspire | [Issue#21112](https://github.com/microsoft/aspire/issues/21112) | [Go AppHost GA] Documentation and sample conversion | open |
| GA 昇格 | microsoft/aspire | [Issue#21111](https://github.com/microsoft/aspire/issues/21111) | [Go AppHost GA] Public API review and packaging validation for Go packages | closed |
| GA 昇格 | microsoft/aspire | [Issue#21110](https://github.com/microsoft/aspire/issues/21110) | [Go AppHost GA] Support policy, public API review and packaging | open |
| GA 昇格 | microsoft/aspire | [Issue#21109](https://github.com/microsoft/aspire/issues/21109) | [Go AppHost GA] Publish and deploy coverage for Go AppHosts | closed |
| GA 昇格 | microsoft/aspire | [Issue#21108](https://github.com/microsoft/aspire/issues/21108) | [Go AppHost GA] CLI end-to-end and publish/deploy coverage | open |
| GA 昇格 | microsoft/aspire | [Issue#21107](https://github.com/microsoft/aspire/issues/21107) | [Go AppHost GA] Verify Go templates are discoverable by default and add language-default packages | closed |
| GA 昇格 | microsoft/aspire | [Issue#21106](https://github.com/microsoft/aspire/issues/21106) | [Go AppHost GA] Remove the feature flag and expose Go templates | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=574296) | [Launched] Generally Available: External key management for Azure Key Vault Managed HSM | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-16-open-source-license-compliance-generally-available) | Open source license compliance generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-10-15-xcode-27-runner-image-generally-available) | Xcode 27 runner image generally available | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更:** [.NET/Python Docker shell の引数名変更 #9453](https://github.com/microsoft/agent-framework/pull/9453) と [Python AG-UI の明示的な認可 scope 要件 #9413](https://github.com/microsoft/agent-framework/pull/9413) がマージされました。Redis scope identity #9461、MCP 互換 API 削除 #9452、Foundry Local SDK 2.1 移行 #9322 は提案・調査中で、[FIDES の識別子利用に関するセキュリティ報告 #9492](https://github.com/microsoft/agent-framework/issues/9492) も要確認です。
- **SDK・web framework の互換性:** [Durable Extension の Durable Functions 2.x 移行 #136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) は未マージです。[ASP.NET Core SQL Server template の依存脆弱性報告 #69867](https://github.com/dotnet/aspnetcore/issues/69867) と、OpenAPI の `[Obsolete]` 漏れ #69729 / 修正案 #69861 も継続確認してください。
- **Aspire の Azure / security / Go 対応:** [別 resource group の既存 ACR に対する AKS AcrPull 修正 #20919](https://github.com/microsoft/aspire/pull/20919)、[廃止済み GitHub Models integration の削除 #19848](https://github.com/microsoft/aspire/pull/19848)、MessagePack 2.5.307 固定 #21051 がマージされました。Go AppHost は [GA エピック #21115](https://github.com/microsoft/aspire/issues/21115) の下で API・配布・CLI・VS Code 対応を進めており、まだ GA 前です。
- **Azure / GitHub の提供状況:** [Managed HSM 外部キー管理](./azure.md) が Azure パブリックリージョンで GA、Azure Databricks Private network gateway は Public Preview です。GitHub では [Open source license compliance](./github-changelog.md) と [Xcode 27 hosted runner image](./github-changelog.md) が GA になりました。
- **ログ・agent runtime の品質:** [Microsoft.Extensions.Gen.Logging の data classification 欠落報告 #7855](https://github.com/dotnet/extensions/issues/7855) は機密値が平文出力される可能性があり、修正状況を確認してください。Azure Functions Agents Runtime は tool namespace #271 と harness 共通化 #269 がマージされ、旧名や独自 adapter 利用者は互換性を確認してください。

## 主要トレンド

エージェント基盤では、tool / authorization scope / runtime namespace を明示し、harness 間で一貫させる変更が進んでいます。一方で、移行中の破壊的変更や未解決の認可・データ分類課題もあり、採用前の互換性・安全性確認が重要です。
Azure と Aspire では既存リソースとの連携、キー管理、依存監査が強化され、Go AppHost の GA に向けた出荷・サポート準備も進行しています。GitHub の追加機能は GA が中心ですが、Azure Databricks のネットワーク接続機能はプレビュー段階です。

## 次回チェックに向けたメモ

- **前回メモの継続:** Agent Framework #8754 / #8741 / #8730 と Durable Extension #112 / #108 / 統合 #123 はマージ済みのため公開版への収録・実移行を確認する。Agent Framework #8750 の承認再開時 `AgentSession` 要件、MCP / Cosmos / Harness / AG-UI の回帰も継続確認する。新規では #9461、#9452、#9322、#9492 と Durable Extension #136 の互換性・セキュリティ状況を追う。
- **Aspire:** 前回の #20481 は公開版収録・実移行を確認し、#20521 (`IInteractionService`) と .NET 10 / AppHost SDK 移行を継続する。Go AppHost GA #21115 の feature flag、API / packaging、CLI publish/deploy、VS Code debugging、docs の未完了項目を確認し、#20918 の ACME EAB 提案も追跡する。
- **SDK / runtime:** Copilot SDK #2527 の v2 breaking inventory / migration guide、Windows .NET in-process access violation #2821、background agent 停止手段 #2822、source-selection / skill reload に加え、新規 #2852 / #2851 を確認する。Functions Agents Runtime の hosted multi-worker #265、Durable Agent Loop #266、Dev Mode #268 の状況を確認し、#269 / #271 はマージ後の利用者影響、#272–#274 は提案の進捗を追う。
- **セキュリティ・サービス期限:** ASP.NET Core #69754 / #69614 / #69312 / #68694 の認可・Identity 課題と #69575 servicing、Extensions #7855–#7858 の logging / classification 問題、Aspire の依存監査・更新を確認する。Azure Key Vault Arc extension（2027-10-09）、Java 8/11/17（2027-09-01）、AKS pod name metric（2027-09-30）、SGX Enclaves（2027-10-31）、Dev Box / Deployment Environments の移行状況も継続する。
- **フィード・運用:** Azure Databricks gateway の Preview からの進展、Managed HSM 外部キー管理のリージョン・対応サービス、Open source license compliance と Xcode 27 runner の利用条件を確認する。前回メモの Copilot 既定ポリシー（10月22日）、SSH / CodeQL / Ubuntu 26 / Actions protection を追い、Azure RSS 20件上限や重要分類の漏れ・誤検出を再確認する。Aspire #20152 と #16404 は誤検出として除外済み。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-10-16 01:16:31","generatedAtUtc":"2026-10-19 00:32:32","schema":1} -->