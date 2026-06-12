# 差分レポート — 2026-06-12 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-12 02:03:55` |
| レポート生成日時 (JST) | `2026-06-12 11:03:55` |
| 前回チェック時刻 (UTC) | `2026-06-11 00:49:32` |
| 対象期間 (UTC) | `2026-06-11 00:49:32 〜 2026-06-12 02:03:55` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6488](https://github.com/microsoft/agent-framework/pull/6488) | Python: [Breaking] Refactor FileSkillsSource for depth-based discovery and predicate filters | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6476](https://github.com/microsoft/agent-framework/pull/6476) | Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6474](https://github.com/microsoft/agent-framework/pull/6474) | .NET: [BREAKING] Align FileAccess tools with Python; add directory discovery and recursive search | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6473](https://github.com/microsoft/agent-framework/pull/6473) | Python: Improve PR template and breaking-change label automation | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#5735](https://github.com/microsoft/agent-framework/pull/5735) | .NET: [BREAKING] .NET: Bump GitHub.Copilot.SDK to 1.0.0-beta.3 and forward session config properties (incl. per-session GitHubToken) | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67097](https://github.com/dotnet/aspnetcore/pull/67097) | Update default OpenApi version to 3.2 | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18114](https://github.com/microsoft/aspire/issues/18114) | `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18003](https://github.com/microsoft/aspire/issues/18003) | Source Breaking Change - `networkID` --> `networkId` | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#17924](https://github.com/microsoft/aspire/pull/17924) | Add proxyless endpoint port allocator | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#8984](https://github.com/microsoft/aspire/issues/8984) | Annotation-Based Open Discriminated Union for Aspire Resources | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#5727](https://github.com/microsoft/aspire/issues/5727) | Add an "AcceptEula" API to containers that use environment variables to signal EULA acceptance. | closed |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564774) | Retirement: Av2-series, F-series, Fs-series, Fsv2-series, G-series, Gs-series, and Lsv2-series Virtual Machines for Azure Batch pools | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564772) | Retirement: D-series, Ds-series, Dv2-series, Dsv2-series, and Ls-series Virtual Machines for Azure Batch pools | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564441) | Retirement: GPv1 and Legacy Blob storage account creation | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564734) | [Launched] Generally Available: SQL MCP Server | — |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565482) | Retirement: Azure Load Balancer Inbound NAT rule version 1 for Azure VMSS (aka Inbound NAT Pools) | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-11-github-enterprise-server-3-21-is-now-generally-available) | GitHub Enterprise Server 3.21 is now generally available | — |

## エグゼクティブサマリー

本期間の最重要項目：

- **⚠ Agent Framework の API 統一ドライブ**: Python/NET の FileAccess ツールと FileSkillsSource が統一される破壊的変更（5 件）が待機中。GitHub.Copilot.SDK の beta.3 更新も含む。フレームワーク依存プロジェクトは詳細確認・計画が急務です。
- **⚠ Aspire の大規模ホスティング刷新**: Proxyless エンドポイント ポートアロケーター統合（#17924）と annotation 駆動の discriminated union 設計（#8984）により、今後のメジャー更新に向けた基礎改善が進行中。複数の破壊的変更が待機。
- **GitHub Agentic Workflows の段階的展開**: パブリック プレビューから引き続き、PAT 不要化（ネイティブ GITHUB_TOKEN サポート）や bot PR ワークフロー実行など、自動化枠組みの完成度が急速に高まっています。
- **Azure のインフラ廃止ウェーブ**: Batch VM シリーズ複数（Av2/D/F/G/Ls）の廃止予告と GPv1 ストレージ廃止のほか、新機能として SQL MCP Server（GA）が登場。依存リソースの移行計画が必要です。
- **Copilot CLI の統合整備**: `/settings` 統一コマンド追加で設定UI が簡潔化。GitHub Changelog が 7 件新規で、エージェント ワークフロー統合と MCP 機能強化が加速中です。

## 主要トレンド

**API 統一と型システム刷新が複数プロジェクトで同時進行**：Agent Framework（FileAccess、FileSkillsSource）と Aspire（discriminated union）が両立して、.NET エコシステムの基盤再整備が進みつつある。これらは 2026 年後半のメジャー更新を予想させ、アプリケーション開発者は長期的な移行計画が必要。

**AI・エージェント機能の実用化速度向上**：GitHub Agentic Workflows の PAT 不要化、GitHub Changelog RSS や新ツール統合により、エージェント駆動の自動化が本格化しています。Copilot CLI も `/settings` で設定効率化を実現。

**インフラ廃止・統一と新機能（SQL MCP Server）の並行**：廃止予告が Azure で 5 件並ぶ一方で、制御アクセス可能な SQL MCP Server が GA 化。移行圧力とそれを支援する新機能が同時期に現れるパターン。

## 次回チェックに向けたメモ

**待機中の破壊的変更（アクティブレビュー推奨）**:
- microsoft/agent-framework: Python/NET API 統一 PR 群（#6488, #6476, #6474, #5735）および PR テンプレート改善（#6473）の進捗
- microsoft/aspire: Proxyless ポートアロケーター適応状況と discriminated union 設計の実装予定
- dotnet/aspnetcore: OpenAPI 3.2 デフォルト化（#67097）と Razor Components antiforgery 変更（#67082）

**Azure 廃止スケジュール確認**:
- Av2/F/Fs/Fsv2/G/Gs/Lsv2 VM シリーズ: 2028/11/15 廃止
- D/Ds/Dv2/Dsv2/Ls シリーズ: 2028/5/1 廃止
- GPv1 ストレージ: 新規作成不可（既存は継続）

**新機能追跡**:
- SQL MCP Server（GA）の Agentic Solutions 統合事例
- GitHub Agentic Workflows パブリック プレビューの実装進捗

**前回メモからの継続**（2026/06/11 報告分）:
- 継続確認事項なし（初期レポート）

<!-- daily-check-meta: {"generatedAtUtc":"2026-06-12 02:03:55","schema":1,"previousCheckAtUtc":"2026-06-11 00:49:32"} -->