# 差分レポート — 2026-07-08 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-08 06:31:54` |
| レポート生成日時 (JST) | `2026-07-08 15:31:54` |
| 前回チェック時刻 (UTC) | `2026-07-06 01:30:41` |
| 対象期間 (UTC) | `2026-07-06 01:30:41 〜 2026-07-08 06:31:54` |

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
| microsoft/mxc | [mxc.md](./mxc.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6970](https://github.com/microsoft/agent-framework/pull/6970) | .NET: [BREAKING] Graduate per-service-call persistence and approval-not-required function bypassing | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6925](https://github.com/microsoft/agent-framework/pull/6925) | Python: [BREAKING]: Canonicalize AG-UI interrupt and resume handling | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6696](https://github.com/microsoft/agent-framework/pull/6696) | Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6983](https://github.com/microsoft/agent-framework/pull/6983) | Python: Add multi-tenant hosting hosting security consideration to a2a sample | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6936](https://github.com/microsoft/agent-framework/pull/6936) | Python: Add security information to harness features inline docs | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6933](https://github.com/microsoft/agent-framework/pull/6933) | .NET: Add security information to harness features xml docs | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505) | Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66348](https://github.com/dotnet/aspnetcore/issues/66348) | NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67640](https://github.com/dotnet/aspnetcore/pull/67640) | Make the sync EditContext.Validate obsolete | open |
| GA 昇格 | microsoft/mxc | [PR#616](https://github.com/microsoft/mxc/pull/616) | add process container networking GA spec | open |
| GA 昇格 | microsoft/mxc | [PR#615](https://github.com/microsoft/mxc/pull/615) | Add GA networking spec | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17902](https://github.com/microsoft/aspire/pull/17902) | [security] Bump aiohttp and starlette in FoundryAgentBasic playground | closed |
| ⚠ セキュリティ | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567203) | [Launched] Generally Available: Network Security Perimeter support for Azure Event Hubs | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567212) | [Launched] Generally Available: Confidential Computing support for Azure Event Hubs Dedicated | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=566732) | [Launched] Generally Available: Azure Red Hat OpenShift in Chile Central | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567085) | [Launched] Generally Available: Microsoft Entra ID-based access for Azure Blob Storage SFTP | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=566966) | [Launched] Generally Available: Support 5x churn in Azure Site Recovery | — |

## エグゼクティブサマリー

- **Agent Framework で破壊的変更が相次いでマージ** — Python の AG-UI 割り込み/resume 契約の正規化（[PR#6925](https://github.com/microsoft/agent-framework/pull/6925)）と Durable Task のマルチワークフローホスティング（[PR#6696](https://github.com/microsoft/agent-framework/pull/6696)）がマージされ、.NET Harness の GA 化に伴う API 名称変更（[PR#6970](https://github.com/microsoft/agent-framework/pull/6970), open）がレビュー中。AG-UI / Durable Task / Harness を使う利用者は互換性の確認が必要（詳細は [agent-framework.md](./agent-framework.md)）。
- **ASP.NET Core の OpenAPI 依存に CVE** — Microsoft.AspNetCore.OpenApi が脆弱性のある Microsoft.OpenAPI に依存する [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505)（**CVE-2026-49451**）が報告され、Microsoft.OpenApi を 3.8.0（[#67638](https://github.com/dotnet/aspnetcore/pull/67638)）/ 2.7.5（[#67464](https://github.com/dotnet/aspnetcore/pull/67464)）へ更新する動き。OpenAPI 利用者は依存バージョンの確認を（[aspnetcore.md](./aspnetcore.md)）。
- **Aspire の依存セキュリティ修正が未収束** — JS/TS の脆弱性アラート解消（[PR#18533](https://github.com/microsoft/aspire/pull/18533)）と npm 依存 bump（[PR#18518](https://github.com/microsoft/aspire/pull/18518)）がオープンのまま。依存管理担当は収束状況を追う必要（[aspire.md](./aspire.md)）。
- **Azure は Event Hubs のセキュリティ機能が GA 集中** — [Network Security Perimeter 対応](https://azure.microsoft.com/updates?id=567203)と[Confidential Computing（Dedicated）](https://azure.microsoft.com/updates?id=567212)がそろって GA。加えて [Blob Storage SFTP の Entra ID 認証](https://azure.microsoft.com/updates?id=567085)、[ASR の 5x churn](https://azure.microsoft.com/updates?id=566966)も GA（[azure.md](./azure.md)）。
- **GitHub Copilot 周辺の大きな告知と廃止予定** — [Copilot デスクトップアプリが全プランで提供](https://github.blog/changelog/2026-07-07-github-copilot-app-available-to-all)、[secret scanning 拡張メタデータが GA](https://github.blog/changelog/2026-07-07-secret-scanning-extended-metadata-and-multipart-validation)、[rulesets のレビュー dismiss 制限が GA](https://github.blog/changelog/2026-07-07-restrict-who-can-dismiss-reviews-in-rulesets)。一方で **[Copilot Billing Preview アプリは 2026-08-03 に廃止](https://github.blog/changelog/2026-07-07-copilot-billing-preview-app-will-be-retired-on-august-3)** 予定で移行が必要（[github-changelog.md](./github-changelog.md)）。

## 主要トレンド

- **AI エージェント基盤の「本番採用に向けた地固め」**: Agent Framework の破壊的 API 正規化、github/copilot-sdk の `@github/copilot` 1.0.69 系追随と .NET FFI transport 安定化、Microsoft.Extensions.AI の OpenTelemetry GenAI 規約整合（[extensions.md](./extensions.md)）と、SDK/計装の標準化が横断的に進行。
- **セキュリティ・依存衛生が全体テーマ**: aspnetcore の CVE-2026-49451、aspire の npm/Python アラート、GitHub の secret scanning GA、mxc の CodeQL 追加と、脆弱性対応・監査強化の動きが各所で目立つ。
- **Azure はエンタープライズ向けセキュリティ機能の GA が集中**: Event Hubs の Network Security Perimeter / Confidential Computing、SFTP の Entra ID 認証など、ネットワーク分離・機密性・ID 統合の要件対応が前進した。

## 次回チェックに向けたメモ

- **Agent Framework**: .NET Harness GA に伴う破壊的変更 [#6970](https://github.com/microsoft/agent-framework/pull/6970) がマージされるか、API 名称変更（`ApprovalNotRequired` 等）の最終形を確認。AG-UI / session-state 関連 Issue（#6982, #6981 等）の進展も継続ウォッチ（前回メモ継続）。
- **ASP.NET Core セキュリティ**: CVE-2026-49451 対応の Microsoft.OpenApi 3.8.0 更新 [#67638](https://github.com/dotnet/aspnetcore/pull/67638) のマージ、NU190x 監査警告の扱い [#66348](https://github.com/dotnet/aspnetcore/issues/66348)、および `EditContext.Validate` obsolete 化 [#67640](https://github.com/dotnet/aspnetcore/pull/67640) の可否を追う。
- **Aspire 依存セキュリティ**: JS/TS・npm のセキュリティ修正 PR [#18533](https://github.com/microsoft/aspire/pull/18533) / [#18518](https://github.com/microsoft/aspire/pull/18518) がマージ・反映され、Dependabot alert が解消されるかを確認（前回メモ継続）。
- **mxc**: process container ネットワーキングの GA 仕様 [#616](https://github.com/microsoft/mxc/pull/616) / [#615](https://github.com/microsoft/mxc/pull/615) の確定と、"base container→process container" 改称（#610）の反映状況。
- **GitHub Copilot 運用**: **Copilot Billing Preview アプリの 2026-08-03 廃止**に向けた移行、および全プラン提供化された Copilot デスクトップアプリの利用動向。
- **ReactiveProperty / azure-functions-dotnet-worker**: 今回は静かだったため、R3 関連要望や `ServerGarbageCollection` 既定化（[#3427](https://github.com/Azure/azure-functions-dotnet-worker/issues/3427)）のその後を引き続き確認（前回メモ継続）。

<!-- daily-check-meta: {"generatedAtUtc":"2026-07-08 06:31:54","previousCheckAtUtc":"2026-07-06 01:30:41","schema":1} -->