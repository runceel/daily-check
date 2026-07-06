# 差分レポート — 2026-07-05 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-05 04:03:53` |
| レポート生成日時 (JST) | `2026-07-05 13:03:53` |
| 前回チェック時刻 (UTC) | `2026-07-03 04:00:53` |
| 対象期間 (UTC) | `2026-07-03 04:00:53 〜 2026-07-05 04:03:53` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6906](https://github.com/microsoft/agent-framework/pull/6906) | .NET: [BREAKING] Align ShellPolicy allow/deny semantics with Python | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67559](https://github.com/dotnet/aspnetcore/issues/67559) | Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505) | Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66348](https://github.com/dotnet/aspnetcore/issues/66348) | NuGet Vulnerability Audit Warnings Treated as Errors (NU190x) | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#64952](https://github.com/dotnet/aspnetcore/issues/64952) | WebAssembly.Authentication breaks content security policy, requires unsafe-eval | open |
| ⚠ 破壊的変更 | Azure/azure-functions-dotnet-worker | [Issue#3322](https://github.com/Azure/azure-functions-dotnet-worker/issues/3322) | Microsoft.ApplicationInsights.WorkerService 3.0.0 incompatible with Azure Functions Worker - Breaking change | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17902](https://github.com/microsoft/aspire/pull/17902) | [security] Bump aiohttp and starlette in FoundryAgentBasic playground | open |

## エグゼクティブサマリー

- [microsoft/agent-framework](./agent-framework.md): ShellPolicy の allow/deny semantics 変更が主要トピックで、既存ユーザーのポリシー定義確認が必要です。
- [dotnet/aspnetcore](./aspnetcore.md): OpenAPI / 認可・セキュリティ関連の Issue が複数あり、脆弱性対応の進捗を追う価値があります。
- [microsoft/aspire](./aspire.md): 依存関係のセキュリティ更新に加え、Deno 対応やログ改善の PR が並んでいます。
- [Azure/azure-functions-dotnet-worker](./azure-functions-dotnet-worker.md): Application Insights 3.0 互換性の懸念が残っているため、次回以降の動向を注視したいです。

## 主要トレンド

- セキュリティ・依存関係更新が目立ち、特に ASP.NET Core と Aspire で確認が必要でした。
- 破壊的変更は Agent Framework に限定され、その他の差分は主にメンテナンスや互換性確認寄りでした。
- Azure / GitHub Changelog では新着情報は見当たらず、今回の注目点は GitHub リポジトリ側の実装動向でした。

## 次回チェックに向けたメモ

- Agent Framework の ShellPolicy 変更と、ASP.NET Core のセキュリティ Issue の進展を追う。
- Aspire の依存関係更新 PR と、Azure Functions Worker の互換性懸念の解消状況を確認する。
- 追加のメジャー変更が出るまで、既存利用者への影響と移行対応を優先してウォッチする。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-07-03 04:00:53","schema":1,"generatedAtUtc":"2026-07-05 04:03:53"} -->