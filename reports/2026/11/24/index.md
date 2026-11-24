# 差分レポート — 2026-11-24 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-11-24 00:20:24` |
| レポート生成日時 (JST) | `2026-11-24 09:20:24` |
| 前回チェック時刻 (UTC) | `2026-11-19 01:03:42` |
| 対象期間 (UTC) | `2026-11-19 01:03:42 〜 2026-11-24 00:20:24` |

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
| ⚠ 破壊的変更候補 | microsoft/aspire | [PR#22452](https://github.com/microsoft/aspire/pull/22452) | Update MySqlConnector to 3.0.0 | open |
| ⚠ 移行対象 | microsoft/aspire | [PR#22458](https://github.com/microsoft/aspire/pull/22458) | Migrate obsolete AppHost SDK during aspire update | open |
| ⚠ 破壊的変更候補 | microsoft/aspire | [PR#22189](https://github.com/microsoft/aspire/pull/22189) | Add canonical .NET CLI tool APIs to Aspire.Hosting.Dotnet | open |
| ⚠ セキュリティ候補 | microsoft/mxc | [Issue#1825](https://github.com/microsoft/mxc/issues/1825) | Bubblewrap の読み取り専用親配下 deny パスが正しく処理されない問題 | open |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=577474) | Azure AI Content Safety の一部プレビュー機能を2027年4月30日にリタイア | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=581363) | Agent insights in Microsoft Foundry | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=581368) | Files knowledge source for Foundry IQ | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=581393) | Model router の Responses API が一般提供 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=582030) | Azure Firewall network rules のワイルドカードドメインが一般提供 | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-11-20-security-advisory-permissions-are-now-generally-available) | セキュリティアドバイザリー権限が一般提供 | — |

## エグゼクティブサマリー

- [Azure AI Content Safety のリタイア](./azure.md)：2027 年 4 月 30 日に複数のプレビュー機能がリタイアするため、利用中のワークロードは代替案と移行計画を確認してください。
- [Microsoft Foundry の GA 強化](./azure.md)：Agent insights、Files knowledge source、Responses API対応 model router、ガバナンスガイダンスが順次利用可能になり、エージェント運用基盤の本番利用条件を確認できます。
- [Aspire の SDK/依存関係移行](./aspire.md)：obsolete AppHost SDK の移行と MySqlConnector 3.0.0 更新は、互換性とビルド設定の確認が必要です。
- [MXC の Bubblewrap ポリシー修正](./mxc.md)：読み取り専用配下の deny パス処理に関する問題を、サンドボックス利用者がテストで確認する必要があります。
- [GitHub の運用更新](./github-changelog.md)：セキュリティアドバイザリー権限の一般提供、利用レポートの列追加、Azure DevOps Live Migration の一般提供が含まれます。

## 主要トレンド

エージェント基盤では Microsoft Foundry の GA/プレビュー機能追加とガバナンス強化が目立ち、運用面ではセキュリティ権限とポリシー管理の細分化が進んでいます。
Aspire と .NET ライブラリ群では、互換性確認を伴う依存更新と移行準備が中心で、特に obsolete SDK、MySqlConnector、UWP/Xamarin 統合の整理に注意が必要です。
今回の横断的な目立った機能変更より、ダッシュボードやサンドボックス周辺の不具合修正・運用改善が主体です。

## 次回チェックに向けたメモ

- Microsoft Foundry の preview 機能（Enterprise Knowledge Graph、Guardrails、IQ Retriever、model router）をリージョンと料金条件を含めて継続確認します。
- 2027 年 4 月 30 日の Azure AI Content Safety リタイアに向け、利用 API と代替サービスの移行状況を次回確認します。
- Aspire #22452、#22458、#22189 とパッケージベース AppHost の SDK 移行問題を継続ウォッチします。
- MXC #1825 および Bubblewrap の隔離境界修正、WSLC プロキシー、filesystem policy の実装状況を確認します。
- ReactiveProperty の UWP/Xamarin 除去後の互換性、ASP.NET Core の Blazor/OAuth/Kestrel 修正、Copilot SDK と Agent Framework の収集失敗を次回手動補完します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-11-24 00:20:24","previousCheckAtUtc":"2026-11-19 01:03:42"} -->