# 差分レポート — 2026-06-29 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-29 01:00:01` |
| レポート生成日時 (JST) | `2026-06-29 10:00:01` |
| 前回チェック時刻 (UTC) | `2026-06-25 00:23:12` |
| 対象期間 (UTC) | `2026-06-25 00:23:12 〜 2026-06-29 01:00:01` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6768](https://github.com/microsoft/agent-framework/pull/6768) | .NET: [BREAKING] Extract caching from AgentSkillsProvider into CachingAgentSkillsSource | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6754](https://github.com/microsoft/agent-framework/pull/6754) | Python: [BREAKING] Make all SkillsProvider tools require approval by default | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6743](https://github.com/microsoft/agent-framework/pull/6743) | .NET: [BREAKING] Align Foundry.Hosting experimental flags to MAAI001 for MAF-specific APIs | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6735](https://github.com/microsoft/agent-framework/pull/6735) | [BREAKING] Python: Change background-agent loop helper to resolve the provider from the agent | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6729](https://github.com/microsoft/agent-framework/pull/6729) | .NET: [BREAKING] Make all AgentSkillsProvider tools require approval by default | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6696](https://github.com/microsoft/agent-framework/pull/6696) | Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67407](https://github.com/dotnet/aspnetcore/issues/67407) | SingalR 8.* version has vulnerable package ws 7.5.10 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#39761](https://github.com/dotnet/aspnetcore/issues/39761) | Automatically infer `OpenApiSecuritySchemes` from authentication configuration | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67077](https://github.com/dotnet/aspnetcore/pull/67077) | Remove long-obsolete MVC APIs targeted for removal | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18484](https://github.com/microsoft/aspire/issues/18484) | aspire start process remains vulnerable to launcher process group cleanup | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#18525](https://github.com/microsoft/aspire/issues/18525) | Consider deprecating Aspire.Azure.AI.Inference | open |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564806) | Retirement: Migrate from Azure Blueprints by January 31, 2027 | — |

## エグゼクティブサマリー

- Azure Blueprints の廃止期限延長により、既存の Blueprint ベース運用を持つ環境では移行計画の確認が必要です。([azure.md](./azure.md))
- agent-framework では、SkillsProvider の承認フロー変更とキャッシュ抽象化が進み、既存のツール利用ルールを見直す必要があります。([agent-framework.md](./agent-framework.md))
- Aspire では、セキュリティ更新と VS Code 拡張の UX 改善が並行して進み、開発体験と運用保守性の両面で変化が見られます。([aspire.md](./aspire.md))
- GitHub Changelog では Copilot / Actions / runner 周辺の機能更新が目立ち、運用上の自動化ポリシーや CI 構成の見直しに繋がりやすいです。([github-changelog.md](./github-changelog.md))

## 主要トレンド

今回の差分では、Copilot と開発者体験周辺の機能強化が目立つ一方で、承認フロー・セキュリティ・移行計画の見直しを要する変更も複数見られました。特に、Agent Framework / Aspire / Azure の更新は「新機能の提供」と「既存利用者への影響の明確化」が同時に進んでおり、管理側は速度と互換性の両面を意識する必要があります。GitHub Actions や runner の制御強化も進んでおり、CI の運用ルール整理に繋がるトピックが増えています。

## 次回チェックに向けたメモ

- agent-framework の承認デフォルト変更と Azure Blueprints 移行計画を引き続き追跡する。
- Aspire のセキュリティ関連 PR と VS Code 拡張の改善内容を次回も確認する。
- GitHub Actions の並列ステップ対応や runner 制御変更が既存ワークフローへ与える影響を見極める。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-06-25 00:23:12","generatedAtUtc":"2026-06-29 01:00:01","schema":1} -->