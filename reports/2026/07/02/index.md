# 差分レポート — 2026-07-02 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-02 00:04:35` |
| レポート生成日時 (JST) | `2026-07-02 09:04:35` |
| 前回チェック時刻 (UTC) | `2026-07-01 00:25:00` |
| 対象期間 (UTC) | `2026-07-01 00:25:00 〜 2026-07-02 00:04:35` |

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
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=566209) | [Launched] Generally Available: New Powershell module:  Az.PostgreSQLFlexibleServer   | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564382) | [Launched] Generally Available: Document PII NextGen Playground in Azure AI Language | — |

## エグゼクティブサマリー

- **Azure Database for PostgreSQL Flexible Server の PowerShell 管理が整理**: 新しい `Az.PostgreSQLFlexibleServer` モジュールが GA となりました（[azure.md](./azure.md)）。PowerShell 自動化を持つチームは、既存スクリプトの参照更新や移行要否を確認してください。
- **Azure AI Language の Document PII playground が GA**: 文書内の個人情報検出をサンプル付きで評価できる環境が一般提供になりました（[azure.md](./azure.md)）。PII 検出導入前の精度確認に使いやすくなっています。
- **Microsoft Foundry NextGen に Document PII のプレビュー体験が追加**: Foundry ポータルで document-based PII detection を試す導線が増えました（[azure.md](./azure.md)）。本番対応ではなく評価・検証フェーズ向けの更新です。
- **VM Restore Points の Instant Access がプレビュー**: 復元ポイント作成直後にディスク復元を開始できるため、RTO 短縮を検証したい VM 運用チームは注目です（[azure.md](./azure.md)）。
- **GitHub リポジトリ群と GitHub Changelog は収集制限あり**: `gh` と `github.blog` RSS が DNS 制限で取得できなかったため、各リポジトリファイルと [github-changelog.md](./github-changelog.md) は手動確認が必要です。

## 主要トレンド

今回確認できた差分は Azure 更新に集中しており、データ管理・AI Language・復旧運用の評価体験を広げる告知が中心でした。特に PostgreSQL Flexible Server の PowerShell モジュール整理と Document PII playground の GA は、既存運用や AI アプリ開発の実務に影響します。一方で GitHub 側の自動収集が制限されたため、リポジトリ横断の開発トレンドは判断保留です。

## 次回チェックに向けたメモ

- GitHub リポジトリ群は今回 `gh` 収集が失敗したため、次回は `microsoft/agent-framework`、`microsoft/aspire`、`github/copilot-sdk` の重要 PR/Issue を優先して再確認してください。
- GitHub Changelog は `github.blog` RSS を取得できなかったため、公式 Changelog の対象期間分を次回または手動確認で補完してください。
- Azure Storage Mover の GCS 移行プレビューと VM Restore Points の Instant Access は、プレビュー段階の制約・リージョン・サポート範囲を継続ウォッチしてください。
- GA となった `Az.PostgreSQLFlexibleServer` と Document PII playground は、既存スクリプトや評価手順への反映要否を確認してください。

<!-- daily-check-meta: {"generatedAtUtc":"2026-07-02 00:04:35","schema":1,"previousCheckAtUtc":"2026-07-01 00:25:00"} -->