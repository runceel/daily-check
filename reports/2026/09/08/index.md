# 差分レポート — 2026-09-08 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-08 00:54:17` |
| レポート生成日時 (JST) | `2026-09-08 09:54:17` |
| 前回チェック時刻 (UTC) | `2026-09-03 03:25:40` |
| 対象期間 (UTC) | `2026-09-03 03:25:40 〜 2026-09-08 00:54:17` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8127](https://github.com/microsoft/agent-framework/pull/8127) | [BREAKING] Python: Refine SecretString handling | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8123](https://github.com/microsoft/agent-framework/pull/8123) | [BREAKING] Python: Move path normalization to common shared code | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8120](https://github.com/microsoft/agent-framework/pull/8120) | [BREAKING] .NET: Fix strict skill script argument schemas | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8045](https://github.com/microsoft/agent-framework/pull/8045) | [BREAKING] Python: restrict checkpoint deserialization in FoundryCheckpointStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8032](https://github.com/microsoft/agent-framework/pull/8032) | .NET: [BREAKING] Clarify A2A agent run modes | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8030](https://github.com/microsoft/agent-framework/pull/8030) | [BREAKING] Python: Bump package versions for 1.17.0 release | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7991](https://github.com/microsoft/agent-framework/pull/7991) | .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7669](https://github.com/microsoft/agent-framework/pull/7669) | Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7517](https://github.com/microsoft/agent-framework/pull/7517) | Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#65369](https://github.com/dotnet/aspnetcore/pull/65369) | feat(hosting): add url.query redaction for telemetry sensitive parameter | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#66377](https://github.com/dotnet/aspnetcore/pull/66377) | Use `UseNode@1` instead of the deprecated `NodeTool@0` | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#66006](https://github.com/dotnet/aspnetcore/issues/66006) | Razor compiler warnings are not shown in dotnet build output | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64372](https://github.com/dotnet/aspnetcore/issues/64372) | Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#19922](https://github.com/microsoft/aspire/issues/19922) | [14.0] Redesign PublishAsDockerFile argument handling | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19810](https://github.com/microsoft/aspire/pull/19810) | Improve Azure Sandbox defaults | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19513](https://github.com/microsoft/aspire/pull/19513) | Bump the npm group across 1 directory with 23 updates | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19053](https://github.com/microsoft/aspire/pull/19053) | [auto-sec] npm: @angular 21.2.19 + brace-expansion 5.0.9 (frontend cluster) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19006](https://github.com/microsoft/aspire/pull/19006) | Bump the uv group across 2 directories with 1 update | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18995](https://github.com/microsoft/aspire/pull/18995) | [auto-sec] Consolidate aspire low-risk dependency security remediations (npm/pip/yarn) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18983](https://github.com/microsoft/aspire/pull/18983) | Bump the npm_and_yarn group across 9 directories with 9 updates | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18858](https://github.com/microsoft/aspire/pull/18858) | [auto-sec] Consolidate Aspire JavaScript template dependency security remediations | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19965](https://github.com/microsoft/aspire/pull/19965) | Fix deprecated Homebrew cask DSL usage | open |
| 非推奨/廃止 | microsoft/aspire | [PR#19090](https://github.com/microsoft/aspire/pull/19090) | Mark ResourceUrlAnnotation.DisplayOrder as obsolete | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19022](https://github.com/microsoft/aspire/pull/19022) | Bump the npm_and_yarn group across 1 directory with 2 updates | closed |
| 非推奨/廃止 | microsoft/aspire | [Issue#18650](https://github.com/microsoft/aspire/issues/18650) | [AspireE2E] AppHost fails to resolve Aspire CLI bundle until Aspire CLI is initialized via 'aspire new' | closed |
| ⚠ 破壊的変更 | microsoft/mxc | [Issue#1110](https://github.com/microsoft/mxc/issues/1110) | macOS: Seatbelt baseline omits the active developer directory, breaking /usr/bin xcrun shims | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#1076](https://github.com/microsoft/mxc/pull/1076) | Add Process Security Environment ingress contract | merged |
| GA 昇格 | microsoft/mxc | [Issue#1101](https://github.com/microsoft/mxc/issues/1101) | [LXC] runtimeConfig.networkProxy is rejected: the backend never declares RUNTIME_PROXY, so GA model 2 cannot be expressed | open |
| ⚠ 破壊的変更 | github/copilot-sdk | [Issue#2527](https://github.com/github/copilot-sdk/issues/2527) | [v2] Publish the breaking-change inventory and migration guide | open |
| ⚠ セキュリティ | github/copilot-sdk | [Issue#2546](https://github.com/github/copilot-sdk/issues/2546) | When hit max_output_tokens, some events are not emitted and logged | open |
| 非推奨/廃止 | Azure/azure-functions-agents-runtime | [Issue#202](https://github.com/Azure/azure-functions-agents-runtime/issues/202) | Migrate workflow client operations to native Durable APIs | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=570557) | [Launched] Generally Available: Azure Virtual Network Manager IPAM in additional Azure regions  | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-04-gpt-6-astra-is-generally-available-in-github-copilot) | GPT-6 Astra is generally available in GitHub Copilot | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-03-upcoming-deprecation-of-selected-github-copilot-models) | Upcoming deprecation of selected GitHub Copilot models | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-03-codeql-2-26-4-improves-github-actions-security-detections) | CodeQL 2.26.4 improves GitHub actions security detections | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更**: A2A run mode、AgentFileStore の行番号契約、Python 1.17.0、SecretString/skill schema/checkpoint 復元などの変更が進行中です。特に [AgentFileStore の変更](https://github.com/microsoft/agent-framework/pull/7671) と [strict skill schema](https://github.com/microsoft/agent-framework/pull/8120) は既存実装の確認が必要です。
- **Aspire の公開・セキュリティ基盤**: Azure Sandbox の既定値変更、MongoDB replica set、Foundry Local/AKS cleanup の改善に加え、[PublishAsDockerFile の 14.0 再設計](https://github.com/microsoft/aspire/issues/19922) と依存関係の脆弱性修正を追跡します。
- **GitHub Copilot のモデルと移行期限**: [GPT-6 Astra の GA](https://github.blog/changelog/2026-09-04-gpt-6-astra-is-generally-available-in-github-copilot) と Gemini 3.8 Flash が追加される一方、選択モデルは **2026-10-02 に非推奨** となるため、組織のモデル固定設定を確認してください。
- **セキュリティと配布更新**: [CodeQL 2.26.4](https://github.blog/changelog/2026-09-03-codeql-2-26-4-improves-github-actions-security-detections) の検出改善、npm trusted publishing、MXC の PSEC ingress 契約が進みました。Azure では [Virtual Network Manager IPAM が追加リージョンで GA](https://azure.microsoft.com/updates?id=570557) になっています。
- **Functions/ACA の運用安定化**: Functions Worker の ZipDeploy 復旧、Agents Runtime の ACA qualification と session admission 改善が入り、workflow client は [native Durable APIs への移行](https://github.com/Azure/azure-functions-agents-runtime/issues/202) を継続確認します。

## 主要トレンド

エージェント実行基盤では、会話履歴・チェックポイント・ファイルアクセス・ツール引数の契約を明示化し、安全性と相互運用性を高める変更が目立ちました。  
開発基盤では、Azure Sandbox/ACA/Foundry Local/AKS のデプロイ再現性と、GitHub Actions・CodeQL・依存関係のセキュリティ運用が強化されています。  
モデル追加と既存モデルの非推奨化が同時に進むため、利用可能モデルの拡大と移行期限を一体で管理する必要があります。

## 次回チェックに向けたメモ

- Agent Framework の [SecretString](https://github.com/microsoft/agent-framework/pull/8127)、[path normalization](https://github.com/microsoft/agent-framework/pull/8123)、[checkpoint deserialization](https://github.com/microsoft/agent-framework/pull/8045)、A2A/AgentFileStore の breaking PR を継続確認します。
- Aspire の [Radius 0.60](https://github.com/microsoft/aspire/pull/19555)、[PublishAsDockerFile 14.0](https://github.com/microsoft/aspire/issues/19922)、Azure Sandbox の後続修正と依存関係セキュリティ PR を追跡します。
- GitHub Copilot のモデル非推奨（2026-10-02）に向け、組織ポリシー、モデル固定、CodeQL/Actions runner の更新を次回重点確認します。
- Agents Runtime の native Durable APIs 移行、ACA qualification の追加結果、Functions Worker の Service Bus `maxConcurrentCalls` の議論を確認します。
- 前回からの継続項目である Azure の各種 preview、GitHub Actions retention/content exclusion policy、Copilot SDK の provider/MCP 周辺 Issue も引き続き監視します。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-09-03 03:25:40","schema":1,"generatedAtUtc":"2026-09-08 00:54:17"} -->