# 差分レポート — 2026-06-05 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-05 04:03:36` |
| レポート生成日時 (JST) | `2026-06-05 13:03:36` |
| 前回チェック時刻 (UTC) | `2026-06-04 02:26:50` |
| 対象期間 (UTC) | `2026-06-04 02:26:50 〜 2026-06-05 04:03:36` |

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

## エグゼクティブサマリー

- **agent-framework #6292 (⚠ BREAKING)** — `github-copilot-sdk` を v1.0.0 (GA) へ移行。`agent-framework-github-copilot` を利用するコードは新 API への追従が必要。([詳細](./agent-framework.md))
- **GitHub Copilot の大型コンテキスト + 推論レベル** — 最大 1M トークンのコンテキストウィンドウと設定可能な推論レベルに対応。([changelog](./github-changelog.md))
- **Microsoft Foundry IQ が GA** — Azure AI Search 系も、プライベート接続の GA、Azure SQL / Fabric オントロジーのナレッジソース化など多数プレビュー/GA。([Azure](./azure.md))
- **Enterprise Teams が GA** — Enterprise アカウント配下のチーム管理・アクセス制御を一元化。([changelog](./github-changelog.md))
- **aspire の実装強化** — Bun デバッグ対応、ATS コンテナエクスポート、ダッシュボードのアクセシビリティ改善が進行。([aspire](./aspire.md))

## 主要トレンド

今回はエージェント / AI 基盤の "GA ラッシュ" が顕著。agent-framework は GitHub Copilot SDK の v1.0.0 化（破壊的変更）と MCP 長時間タスク対応により実運用フェーズへ進んだ。Azure 側は Foundry IQ を中心に、ナレッジソース連携（Azure SQL / Fabric オントロジー）とプライベート接続が一気に GA / プレビュー化し、RAG・エージェントのエンタープライズ導入を後押ししている。GitHub Copilot 自体も最大 1M トークン・推論レベル設定など基盤能力が拡張された。

## 次回チェックに向けたメモ

- **agent-framework**: .NET 側の GitHub Copilot SDK v1.0 移行 (Issue #6337) と関連ドキュメント更新 (#6336)、Claude Python SDK のバージョンアップ (#6338) を継続ウォッチ。
- **agent-framework**: .NET の auto-approval ルール (#6335, ⚠ BREAKING) と AG-UI 関連 PR の動向。
- **azure-functions-dotnet-worker**: Worker SDK の `ServerGarbageCollection` デフォルト化提案 (#3427) の結論。
- **aspire**: 13.4 アップグレード後の不具合報告群（#17907 PostgreSQL、#17912 マルチターゲットビルド、#17909 winget）の解決状況。
- **Azure**: 今回プレビューとなった機能（Foundry IQ の Fabric / Azure SQL ナレッジソース、Voice Live アバター同期など）の GA タイミング。
