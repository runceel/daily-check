# 差分レポート — 2026-07-10 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-10 00:28:22` |
| レポート生成日時 (JST) | `2026-07-10 09:28:22` |
| 前回チェック時刻 (UTC) | `2026-07-08 06:31:54` |
| 対象期間 (UTC) | `2026-07-08 06:31:54 〜 2026-07-10 00:28:22` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6970](https://github.com/microsoft/agent-framework/pull/6970) | .NET: [BREAKING] Graduate per-service-call persistence and approval-not-required function bypassing | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6983](https://github.com/microsoft/agent-framework/pull/6983) | Python: Add multi-tenant hosting hosting security consideration to a2a sample | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#67706](https://github.com/dotnet/aspnetcore/pull/67706) | [release/2.3] Add System.Security.Cryptography.Xml reference to affected projects | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67694](https://github.com/dotnet/aspnetcore/issues/67694) | Update Microsoft.OpenAPi package due to security vulnerability | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67662](https://github.com/dotnet/aspnetcore/pull/67662) | Make EditContext.Validate obsolete | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67640](https://github.com/dotnet/aspnetcore/pull/67640) | Make the sync EditContext.Validate obsolete | closed |
| GA 昇格 | microsoft/mxc | [PR#616](https://github.com/microsoft/mxc/pull/616) | add process container networking GA spec | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18692](https://github.com/microsoft/aspire/pull/18692) | Update Foundry hosted agent protocol payload | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18044](https://github.com/microsoft/aspire/pull/18044) | Obsolete PublishAsConnectionString | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17949](https://github.com/microsoft/aspire/pull/17949) | feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings | open |
| 非推奨/廃止 | microsoft/aspire | [PR#18022](https://github.com/microsoft/aspire/pull/18022) | Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation | merged |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567431) | [Launched] Generally Available: Open AI GPT-5.6 on Azure Databricks  | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-08-innersource-security-advisories-are-generally-available) | Innersource security advisories are generally available | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-08-npm-install-time-security-and-gat-bypass2fa-deprecation) | npm install-time security and GAT bypass2fa deprecation | — |

## エグゼクティブサマリー

- **Agent Framework の .NET Harness が正式化され、破壊的変更を含む設定整理がマージ**されました（[PR#6970](https://github.com/microsoft/agent-framework/pull/6970)）。per-service-call 永続化や承認不要ツール呼び出しを利用している場合は API 名称と既定動作を確認してください。
- **ASP.NET Core のセキュリティ依存更新と Blazor API 非推奨化**が進みました（[Microsoft.OpenApi 更新](https://github.com/dotnet/aspnetcore/pull/67638)、[`EditContext.Validate` obsolete](https://github.com/dotnet/aspnetcore/pull/67662)）。OpenAPI と同期検証 API の利用箇所を点検してください。
- **Aspire で Foundry payload の破壊的変更案と JS/TS 依存のセキュリティ対応が継続中**です（[PR#18692](https://github.com/microsoft/aspire/pull/18692)、[PR#18533](https://github.com/microsoft/aspire/pull/18533)）。利用者はプロトコル互換性と依存 alert の解消状況を追跡してください。
- **Azure Databricks で OpenAI GPT-5.6 が GA**になり、Foundry で購入したモデルを Model Serving Endpoint 経由で利用可能になりました（[Azure 更新](https://azure.microsoft.com/updates?id=567431)）。
- **GitHub のセキュリティ運用機能が拡張**され、Innersource advisory が GA、npm v12 のインストール時セキュリティ既定値が有効になりました（[Innersource advisory](https://github.blog/changelog/2026-07-08-innersource-security-advisories-are-generally-available)、[npm 更新](https://github.blog/changelog/2026-07-08-npm-install-time-security-and-gat-bypass2fa-deprecation)）。

## 主要トレンド

AI エージェント基盤では、Agent Framework と Aspire のプロトコル・設定の正式化が進む一方、破壊的変更を伴う移行確認が必要です。  
セキュリティ面では、OpenAPI・Aspire の依存・GitHub advisory/npm の更新が重なり、依存衛生と組織運用の強化が目立ちました。  
Azure では GPT-5.6 の GA により、Foundry と Databricks をまたぐモデル提供経路が広がりました。

## 次回チェックに向けたメモ

- **Agent Framework**: Harness の正式 API（[PR#6970](https://github.com/microsoft/agent-framework/pull/6970)）の利用者移行と、AG-UI / session-state 関連 Issue の進展を確認する。
- **ASP.NET Core**: Microsoft.OpenApi の脆弱性対応、[NU190x 監査警告](https://github.com/dotnet/aspnetcore/issues/66348)、`EditContext.Validate` obsolete 化の影響を追う。
- **Aspire**: Foundry hosted agent payload（[PR#18692](https://github.com/microsoft/aspire/pull/18692)）、`PublishAsConnectionString` の移行、JS/TS・npm セキュリティ PR（[#18533](https://github.com/microsoft/aspire/pull/18533)、[#18518](https://github.com/microsoft/aspire/pull/18518)）の収束を確認する。
- **mxc / Azure / GitHub**: process container networking の GA 仕様（[PR#616](https://github.com/microsoft/mxc/pull/616)）、GPT-5.6 の利用条件、npm v12 と Innersource advisory の組織適用を確認する。
- **継続項目**: Copilot Billing Preview アプリの 2026-08-03 廃止、ReactiveProperty の R3 関連要望、Azure Functions worker の OpenTelemetry と MSBuild SDK 0.4.0 の不具合（[#3450](https://github.com/Azure/azure-functions-dotnet-worker/issues/3450)）を引き続き確認する。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-07-10 00:28:22","previousCheckAtUtc":"2026-07-08 06:31:54"} -->