# 差分レポート — 2026-09-16 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-16 01:35:40` |
| レポート生成日時 (JST) | `2026-09-16 10:35:40` |
| 前回チェック時刻 (UTC) | `2026-09-15 00:08:57` |
| 対象期間 (UTC) | `2026-09-15 00:08:57 〜 2026-09-16 01:35:40` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8375](https://github.com/microsoft/agent-framework/pull/8375) | .NET: [BREAKING] Improve replay support with Approval Binding | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8372](https://github.com/microsoft/agent-framework/pull/8372) | [BREAKING] Python: Add request-scoped Foundry agent factories | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8371](https://github.com/microsoft/agent-framework/pull/8371) | [BREAKING] Python: Make HTTP cookie persistence explicit | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#8305](https://github.com/microsoft/agent-framework/pull/8305) | Python: [BREAKING] Require committed finish reason for tool calls | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7991](https://github.com/microsoft/agent-framework/pull/7991) | .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#8238](https://github.com/microsoft/agent-framework/pull/8238) | Python: Tighten security label enforcement | merged |
| 非推奨/廃止 | microsoft/agent-framework | [PR#8401](https://github.com/microsoft/agent-framework/pull/8401) | Python: Deprecate MCP sampling callback | open |
| 非推奨/廃止 | microsoft/agent-framework | [Issue#8400](https://github.com/microsoft/agent-framework/issues/8400) | Python: Deprecate MCP sampling in line with the 2026-07-28 specification | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#69323](https://github.com/dotnet/aspnetcore/issues/69323) | Blazor: RendererSynchronizationContext can be left installed on an unrelated thread-pool thread, breaking Dispatcher mutual exclusion | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#69257](https://github.com/dotnet/aspnetcore/pull/69257) | Drop MVC F# project template support | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#69312](https://github.com/dotnet/aspnetcore/pull/69312) | Unify claims principal cache identity | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#69195](https://github.com/dotnet/aspnetcore/issues/69195) | Add an analyzer to warn about code that runs after calling NavigationManager.NavigateTo in server side contexts | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20152](https://github.com/microsoft/aspire/pull/20152) | Prevent Edge compatibility relaunch from breaking browser debugging | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#20135](https://github.com/microsoft/aspire/pull/20135) | Support environment-specific Aspire secrets for deployment | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19848](https://github.com/microsoft/aspire/pull/19848) | Remove retired GitHub Models integration | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19555](https://github.com/microsoft/aspire/pull/19555) | Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#11760](https://github.com/microsoft/aspire/issues/11760) | ResourceUrlAnnotation.DisplayOrder is a field, not a property | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#20052](https://github.com/microsoft/aspire/pull/20052) | Configure NuGet audit sources and non-fatal vulnerability warnings | merged |
| ⚠ セキュリティ | microsoft/mxc | [PR#1171](https://github.com/microsoft/mxc/pull/1171) | Address npm package vulnerabilities | open |
| ⚠ セキュリティ | microsoft/mxc | [PR#840](https://github.com/microsoft/mxc/pull/840) | [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability | closed |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-09-15-enforce-github-advanced-security-configurations) | Enforce GitHub Advanced Security configurations | — |

## エグゼクティブサマリー

- **GitHub Advanced Security 設定の強制適用**が可能になり、Enterprise 管理者は組織・リポジトリ側の上書きを防げるようになりました。[詳細](https://github.blog/changelog/2026-09-15-enforce-github-advanced-security-configurations)
- **GitHub.com の HTTPS における SHA-1 が廃止**されました。古い証明書検証や CI/CD クライアントの互換性確認が必要です。[詳細](https://github.blog/changelog/2026-09-15-sha-1-in-https-on-github-sunset)
- `microsoft/agent-framework` で HTTP Cookie 永続化、`AgentSessionStore`、セキュリティラベル enforcement に関する **破壊的変更・セキュリティ強化**が進みました。[詳細](./agent-framework.md)
- `microsoft/aspire` では GitHub Models 統合の削除やデプロイ時シークレットの扱いなど、既存構成の互換性確認が必要な変更がありました。[詳細](./aspire.md)
- `dotnet/aspnetcore` では Blazor の Dispatcher、MVC F# テンプレート、claims principal cache に関する重要 Issue / PR が確認されました。[詳細](./aspnetcore.md)

## 主要トレンド

今回の差分は、エージェント基盤と開発者ツールの安全性・互換性を高める変更が中心です。特に認証情報、MCP スキル、セキュリティ設定、古い暗号方式への依存が確認対象になっています。大規模な GA 昇格よりも、既存利用者への移行準備と運用設定の明確化が目立ちます。

## 次回チェックに向けたメモ

次回は、`agent-framework` の破壊的変更 PR（#8375、#8372）と MCP sampling 非推奨化（#8401 / #8400）の進展を確認します。GitHub Advanced Security の Enterprise 強制設定と SHA-1 廃止について、利用中の組織設定・CI/CD クライアントに未対応がないか継続確認します。各リポジトリのオープンなセキュリティ関連 Issue / PR のマージ状況も重点的に追跡します。

<!-- daily-check-meta: {"generatedAtUtc":"2026-09-16 01:35:40","previousCheckAtUtc":"2026-09-15 00:08:57","schema":1} -->

