# 差分レポート — 2026-07-15 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-15 04:59:27` |
| レポート生成日時 (JST) | `2026-07-15 13:59:27` |
| 前回チェック時刻 (UTC) | `2026-07-14 01:26:38` |
| 対象期間 (UTC) | `2026-07-14 01:26:38 〜 2026-07-15 04:59:27` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7120](https://github.com/microsoft/agent-framework/pull/7120) | Python: [BREAKING] Graduate create_harness_agent out of experimental | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7119](https://github.com/microsoft/agent-framework/pull/7119) | .NET: [BREAKING] Graduate HarnessAgent | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7114](https://github.com/microsoft/agent-framework/pull/7114) | .NET: [BREAKING] Graduate FileMemoryProvider | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7113](https://github.com/microsoft/agent-framework/pull/7113) | Python: [BREAKING] Graduate file memory provider out of experimental | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7107](https://github.com/microsoft/agent-framework/pull/7107) | .NET: [BREAKING] Graduate ToolApprovalAgent and add ToolAutoApprovalRuleContext | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7106](https://github.com/microsoft/agent-framework/pull/7106) | Python: [BREAKING] Graduate tool approval middleware out of experimental | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7094](https://github.com/microsoft/agent-framework/pull/7094) | Python: [BREAKING] Harness: Switch FileAccess to opt-in | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7093](https://github.com/microsoft/agent-framework/pull/7093) | .NET: [BREAKING] Harness: Switch FileAccess to opt-in | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67794](https://github.com/dotnet/aspnetcore/issues/67794) | DBSC: share source scheme ITicketStore (server-side revocation) with derived cookies | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67134](https://github.com/dotnet/aspnetcore/issues/67134) | Deprecate Microsoft.AspNetCore.Grpc.Swagger | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#66355](https://github.com/dotnet/aspnetcore/pull/66355) | Map [Obsolete] attribute to deprecated in OpenAPI documents | open |
| ⚠ 破壊的変更 | dotnet/extensions | [Issue#7628](https://github.com/dotnet/extensions/issues/7628) | OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume | open |
| GA 昇格 | microsoft/mxc | [PR#616](https://github.com/microsoft/mxc/pull/616) | add process container networking GA spec | merged |
| GA 昇格 | microsoft/mxc | [PR#615](https://github.com/microsoft/mxc/pull/615) | Add GA networking spec | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18735](https://github.com/microsoft/aspire/pull/18735) | [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) | merged |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-14-code-scanning-shows-ai-security-detections-on-pull-requests) | Code scanning shows AI security detections on pull requests | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-14-security-reviews-now-available-in-the-github-copilot-app) | Security reviews now available in the GitHub Copilot app | — |

## エグゼクティブサマリー

- **Agent Framework の破壊的変更**: [Harness の FileAccess opt-in 化（.NET）](./agent-framework.md) と [Python 版](./agent-framework.md) がマージされ、実験 API の正式昇格も進行中です。
- **Agent Framework の API 昇格**: [ToolApprovalAgent / FileMemoryProvider などの breaking change PR](./agent-framework.md) は、利用中の実験 API と設定の確認が必要です。
- **Aspire のセキュリティ修正**: [npm 依存関係の一括更新](./aspire.md) がマージされ、フロントエンド利用者は lockfile 再生成と検証が必要です。
- **GitHub の開発者向けセキュリティ機能**: [PR 上の AI セキュリティ検出](./github-changelog.md) と [Copilot アプリの security review](./github-changelog.md) がプレビュー提供されました。
- **Azure Front Door**: [edge actions のパブリックプレビュー](./azure.md) により、エッジで JavaScript を実行する構成を検証できます。

## 主要トレンド

今回の中心テーマは、AI エージェント基盤と Aspire Dashboard の機能成熟、ならびに依存関係・コード変更に対するセキュリティ強化です。実験機能の正式昇格や既定動作の opt-in 化が重なっているため、追随時は API 契約と安全側の既定値を確認する必要があります。

## 次回チェックに向けたメモ

次回は Agent Framework の Harness / FileMemoryProvider / ToolApprovalAgent の breaking change PR のマージ内容と移行手順、dotnet/extensions の reasoning item ID 修正、Azure Front Door edge actions の対象リージョンと制約を確認します。Aspire の Native AOT Dashboard と構造化ログ契約も、クライアントとの互換性を継続して追跡します。

<!-- daily-check-meta: {"generatedAtUtc":"2026-07-15 04:59:27","previousCheckAtUtc":"2026-07-14 01:26:38","schema":1} -->