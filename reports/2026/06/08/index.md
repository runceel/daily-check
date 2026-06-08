# 差分レポート — 2026-06-08 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-08 01:26:03` |
| レポート生成日時 (JST) | `2026-06-08 10:26:03` |
| 前回チェック時刻 (UTC) | `2026-06-05 04:03:36` |
| 対象期間 (UTC) | `2026-06-05 04:03:36 〜 2026-06-08 01:26:03` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6335](https://github.com/microsoft/agent-framework/pull/6335) | .NET: [BREAKING] Add auto-approval rules (heuristics) to ToolApprovalAgent | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66071](https://github.com/dotnet/aspnetcore/issues/66071) | Prototype Pollution Vulnerabilities in @middy/util | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#17924](https://github.com/microsoft/aspire/pull/17924) | Add proxyless endpoint port allocator | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17951](https://github.com/microsoft/aspire/pull/17951) | [security] Bump vulnerable npm dependencies flagged by Dependabot (10 alerts) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#17949](https://github.com/microsoft/aspire/pull/17949) | feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17902](https://github.com/microsoft/aspire/pull/17902) | [security] Bump aiohttp and starlette in FoundryAgentBasic playground | open |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-05-gpt-5-2-and-gpt-5-2-codex-deprecated) | GPT-5.2 and GPT-5.2-Codex deprecated | — |

## エグゼクティブサマリー

- **⚠ 破壊的変更**: [microsoft/agent-framework #6335](https://github.com/microsoft/agent-framework/pull/6335) — .NET `ToolApprovalAgent` に自動承認ルールが追加され `ToolApprovalAgentOptions` 構造が変更。既存の `AddToolApprovalAgent` 利用プロジェクトはマイグレーション対応が必要。
- **⚠ セキュリティ修正**: [microsoft/aspire #17951](https://github.com/microsoft/aspire/pull/17951) — Dependabot が検出した 10 件の脆弱な npm 依存関係がマージ済み修正。
- **⚠ 非推奨**: [GitHub Changelog — GPT-5.2 and GPT-5.2-Codex deprecated](https://github.blog/changelog/2026-06-05-gpt-5-2-and-gpt-5-2-codex-deprecated) — GitHub Copilot 全体験で GPT-5.2 / GPT-5.2-Codex が非推奨化。後継モデルへの切り替えが必要。
- **Aspire TypeScript AppHost 強化**: [microsoft/aspire #17968](https://github.com/microsoft/aspire/pull/17968) — プロセスコマンドの引数渡しとコールバック形式サポート追加（旧ファクトリ形式 API は非推奨化）。
- **ASP.NET Core CSRF 強化**: [dotnet/aspnetcore #66585](https://github.com/dotnet/aspnetcore/pull/66585) — Fetch Metadata ヘッダーを利用した新しい CSRF アルゴリズムがマージ。

## 主要トレンド

- **Agent Framework の自律化・HumanInTheLoop 対応の深化**: `ToolApprovalAgent` への自動承認ルール追加（#6335 + #4950）、Workflow-as-Agent のペンディングリクエスト処理リファクタリング（#6259）など、エージェントが自律的に動作しながら人間の介入も柔軟にサポートするアーキテクチャが整備されている。
- **Aspire のポリグロット対応加速**: TypeScript AppHost のプロセスコマンド強化（#17968）、TypeScript Azure Functions サポート検討（#17980）、C++ 統合（#17991）など、C# 以外の言語エコシステムへの対応が活発に進んでいる。
- **セキュリティ対応が複数リポジトリで同時進行**: Aspire の npm 脆弱性修正（#17951）、ASP.NET Core の Fetch Metadata CSRF アルゴリズム実装（#66585）、GitHub Copilot モデルの非推奨化（GPT-5.2）と、セキュリティ改善が全方位で並走している。

## 次回チェックに向けたメモ

- **継続ウォッチ（オープン中の重要 PR）**:
  - [aspire #17924](https://github.com/microsoft/aspire/pull/17924) — プロキシレスエンドポイントポートアロケーター（破壊的変更の可能性あり）
  - [aspire #17949](https://github.com/microsoft/aspire/pull/17949) — Key Vault HealthCheckOptions 追加
  - [aspire #17902](https://github.com/microsoft/aspire/pull/17902) — aiohttp/starlette セキュリティバンプ
  - [aspnetcore #67049](https://github.com/dotnet/aspnetcore/pull/67049) — Cookie 認証サインアウト時のセッションキークリア修正
- **Aspire CI 不安定**: [Issue#17942](https://github.com/microsoft/aspire/issues/17942) で Polyglot / Hosting-4 / VS Code E2E の CI 失敗が継続中。次回も状況を確認。
- **Aspire VS Code 拡張 v1.14.0**: リリース後の CHANGELOG 内容（実際の機能変更点）を次回確認。
- **agent-framework .NET Extensions.AI 更新**: [PR#6158](https://github.com/microsoft/agent-framework/pull/6158)（Microsoft.Extensions.AI 10.6.0 への更新）がクローズされたが、再提案の動きがある可能性あり。
- **azure-functions-dotnet-worker**: 今回変化なし。次回も継続ウォッチ。
- **ReactiveProperty**: 今回変化なし。次回も継続ウォッチ。

<!-- daily-check-meta: {"generatedAtUtc":"2026-06-08 01:26:03","previousCheckAtUtc":"2026-06-05 04:03:36","schema":1} -->