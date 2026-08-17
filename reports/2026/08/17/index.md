# 差分レポート — 2026-08-17 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-17 01:53:51` |
| レポート生成日時 (JST) | `2026-08-17 10:53:51` |
| 前回チェック時刻 (UTC) | `2026-08-13 00:02:03` |
| 対象期間 (UTC) | `2026-08-13 00:02:03 〜 2026-08-17 01:53:51` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7671](https://github.com/microsoft/agent-framework/pull/7671) | .NET: [BREAKING] Issue 7571 file access read lines | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7669](https://github.com/microsoft/agent-framework/pull/7669) | Python: [BREAKING] Issue 7571 file access read lines | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7521](https://github.com/microsoft/agent-framework/pull/7521) | Python: [BREAKING] Require building functional workflow instances | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7384](https://github.com/microsoft/agent-framework/issues/7384) | .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68486](https://github.com/dotnet/aspnetcore/issues/68486) | [Validation] A new Blazor Web App under a strict Content Security Policy | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#57023](https://github.com/dotnet/aspnetcore/issues/57023) | Net 8 Blazor Web App (Interactive server w/ prerendering ) - multiple schemes doesn't work | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68477](https://github.com/dotnet/aspnetcore/pull/68477) | Obsolete Bootstrap 4 Identity UI support | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67958](https://github.com/dotnet/aspnetcore/issues/67958) | Cleanup custom handling of Obsolete attribute once we get updates from STJ flowing | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#64372](https://github.com/dotnet/aspnetcore/issues/64372) | Mark all AddRazorRuntimeCompilation extension methods and related APIs as obsolete for consistent Razor runtime compilation deprecation in .NET 10 | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#63192](https://github.com/dotnet/aspnetcore/pull/63192) | Add [Obsolete] attribute to Bootstrap 4 support in Identity UI | closed |
| ⚠ 破壊的変更 | dotnet/extensions | [Issue#7628](https://github.com/dotnet/extensions/issues/7628) | OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19301](https://github.com/microsoft/aspire/pull/19301) | [automated] feat(cli): report installations with aspire --info | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19077](https://github.com/microsoft/aspire/pull/19077) | Expose resolved environment variables to debug launch producers | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#11795](https://github.com/microsoft/aspire/issues/11795) | `LogLine` should provide Timestamp as a seperate field, rather than fudge it into the log content | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19248](https://github.com/microsoft/aspire/pull/19248) | Redact owning resource's own secret env var in `describe` | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19052](https://github.com/microsoft/aspire/pull/19052) | [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) | merged |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18919](https://github.com/microsoft/aspire/issues/18919) | [AspireE2E]Build aspire project with warning "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18804](https://github.com/microsoft/aspire/pull/18804) | [auto-sec] consolidate aspire security dependency remediations | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18735](https://github.com/microsoft/aspire/pull/18735) | [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#19295](https://github.com/microsoft/aspire/pull/19295) | Show AppHosts from every VS Code workspace root | merged |
| 非推奨/廃止 | microsoft/aspire | [PR#18806](https://github.com/microsoft/aspire/pull/18806) | Bump the uv group across 3 directories with 10 updates | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#10638](https://github.com/microsoft/aspire/issues/10638) | [Aspire 10] - Obsolete AddProject<>, replace with AddDotnetApp | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#840](https://github.com/microsoft/mxc/pull/840) | [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#803](https://github.com/microsoft/mxc/pull/803) | fix(logger): deliver security warnings explicitly instead of writing to stderr | merged |
| 非推奨/廃止 | microsoft/mxc | [Issue#777](https://github.com/microsoft/mxc/issues/777) | LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported | closed |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568830) | [Launched] Generally Available: Control plane metrics collection for AKS with Managed Prometheus | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569281) | [Launched] Generally Available: Live Resize for Shared Premium SSD v2 and Ultra Data Disks | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568419) | [Launched] Generally Available: Pre-upgrade validation checks for Azure Database for PostgreSQL Flexible Server  | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更候補**: [.NET #7671](https://github.com/microsoft/agent-framework/pull/7671) と [Python #7669](https://github.com/microsoft/agent-framework/pull/7669) の file access read-lines 契約、およびマージ済みの [#7521](https://github.com/microsoft/agent-framework/pull/7521) の functional workflow 構築要件を利用者は確認してください。
- **Aspire の API・セキュリティ対応**: [#19077](https://github.com/microsoft/aspire/pull/19077) のデバッグ起動契約変更、[secret 秘匿 #19248](https://github.com/microsoft/aspire/pull/19248)、依存関係修正（[#19052](https://github.com/microsoft/aspire/pull/19052) など）を取り込み、CLI・依存の互換性を確認してください。
- **Azure の GA 機能**: [AKS Managed Prometheus のコントロール プレーン メトリック](https://azure.microsoft.com/updates?id=568830)、[共有ディスクの Live Resize](https://azure.microsoft.com/updates?id=569281)、[PostgreSQL Flexible Server の事前検証](https://azure.microsoft.com/updates?id=568419) が GA になりました。
- **Azure Databricks Runtime 10.4 LTS の廃止**: [2026-11-01 の廃止案内](https://azure.microsoft.com/updates?id=569353) に該当するワークロードは、新しい LTS への移行とジョブ／ライブラリ互換性の検証が必要です。
- **GitHub Copilot のモデル・OAuth 拡張**: [Grok 4.6](https://github.blog/changelog/2026-08-14-grok-4-6-is-now-available-in-github-copilot)、[Gemini 3.7 Flash](https://github.blog/changelog/2026-08-13-gemini-3-7-flash-is-now-available-in-github-copilot)、[OAuth の複数 URI／トークン更新](https://github.blog/changelog/2026-08-14-multiple-redirect-uris-and-token-refresh-for-oauth-apps) が追加されました。

## 主要トレンド

破壊的変更候補が Agent Framework と Aspire の API／CLI 境界に集中しており、ワークフロー継続処理・デバッグ起動・ログ／ファイルアクセスの契約確認が必要です。  
依存関係とシークレットのセキュリティ修正が Aspire と MXC で進み、更新後の監査・出力確認が共通の運用課題になっています。  
Azure は監視・ディスク拡張・DB アップグレード検証の GA が進む一方、Databricks Runtime 10.4 LTS の廃止対応が期限付きで発生しています。

## 次回チェックに向けたメモ

- Agent Framework の [#7384](https://github.com/microsoft/agent-framework/issues/7384)、[#7466](https://github.com/microsoft/agent-framework/issues/7466)、[#7521](https://github.com/microsoft/agent-framework/pull/7521)、[#7517](https://github.com/microsoft/agent-framework/pull/7517) の状態と、[#7671](https://github.com/microsoft/agent-framework/pull/7671)／[#7669](https://github.com/microsoft/agent-framework/pull/7669) の read-lines 契約を確認します。
- Aspire の [#19248](https://github.com/microsoft/aspire/pull/19248)、[#19052](https://github.com/microsoft/aspire/pull/19052)、[#19319](https://github.com/microsoft/aspire/pull/19319) と、延期された JavaScript 依存修正の適用状況を追跡します。
- MXC の [#803](https://github.com/microsoft/mxc/pull/803)、[#840](https://github.com/microsoft/mxc/pull/840)、RHEL 10 の [#777](https://github.com/microsoft/mxc/issues/777) の最終状態を確認します。
- Azure は Databricks Runtime 10.4 LTS（2026-11-01）、cc_v5（2026-09-01）、MAI-Code-1-Flash（2026-09-10）、Fabric Item Recovery の既定有効化（2026-08-23）を重点確認します。前回から継続している Azure AI Gateway／Claude Opus 5／Firewall ヘッダー挿入と GitHub Changelog の JetBrains MCP・OpenTelemetry・enterprise settings も追跡します。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-08-13 00:02:03","schema":1,"generatedAtUtc":"2026-08-17 01:53:51"} -->