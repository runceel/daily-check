# 差分レポート — 2026-06-04 版

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-04 02:26:50` |
| レポート生成日時 (JST) | `2026-06-04 11:26:50` |
| 前回チェック時刻 (UTC) | `2026-06-03 01:51:01` |
| 対象期間 (UTC)         | `2026-06-03 01:51:01 〜 2026-06-04 02:26:50` |
| 対象リポジトリ          | microsoft/agent-framework, dotnet/aspnetcore, Azure/azure-functions-dotnet-worker, dotnet/extensions, runceel/ReactiveProperty, microsoft/aspire |
| Azure 更新ソース        | <https://www.microsoft.com/releasecommunications/api/v2/azure/rss> |

---

## 1. エグゼクティブサマリー

- **[BREAKING] agent-framework: github-copilot-sdk v1.0.0 GA 対応** — Python チャネル `agent-framework-github-copilot` が Copilot SDK v1.0.0 安定版に対応する PR がオープン中。`SubprocessConfig` 削除・環境変数名変更・Import パス変更など複数の破壊的変更が含まれる。([#6292](https://github.com/microsoft/agent-framework/pull/6292))
- **GitHub Copilot SDK が GA** — Copilot のエージェントエンジンを自社アプリに組み込める SDK が安定版として正式リリース。agent-framework との統合も進行中。([詳細](https://github.blog/changelog/2026-06-02-copilot-sdk-is-now-generally-available))
- **Aspire: Foundry Local 1.1.0 対応・パッチリリース 13.4.2** — AI Foundry Local 統合が最新版に更新され、パッチバージョン 13.4.2 がリリース。本番利用中のプロジェクトは更新推奨。([#17889](https://github.com/microsoft/aspire/pull/17889))
- **Azure Monitor: Simple log alerts が GA** — KQL 不要でログ監視アラートを設定できる簡略化 UI が正式リリース。中小規模チームの運用コスト削減に直結。([詳細](https://azure.microsoft.com/updates?id=561978))
- **aspnetcore: OpenAPI 関連の Issue が継続的に活発** — TypedResults 不整合・Enum description 欠落・C# Union 型の anyOf 生成など複数の Issue がオープン中。OpenAPI ドキュメントを生成するアプリを持つチームは注視が必要。

### 今回の差分の主要トレンド

GitHub Copilot SDK の GA を軸に、agent-framework が Python・.NET 両面で SDK 安定版への対応を進めている。Copilot CLI 改善（ラバーダック GA・音声入力 GA・プロンプトスケジューリング Preview）も同時に発表されており、Copilot エコシステム全体が Build 2026 に合わせて大きく前進した週となった。  
Aspire 側では Foundry Local 1.1.0 対応と On-demand エンドポイント割り当て改善が続いており、agent-framework との統合（DevUI ワークフロートポロジー表示 Issue #17891）も課題として浮上している。  
dotnet/extensions では Microsoft.Extensions.AI.OpenAI に関する複数のバグ（reasoning コンテンツ round-trip 失敗・tool スキーマ JsonException）が報告されており、AI 統合レイヤーの成熟が求められている段階。

---

## ユニットファイル一覧

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

---

## 6. 次回チェックに向けたメモ / ウォッチ対象

### 継続ウォッチ中の PR / Issue

- [microsoft/agent-framework #6292](https://github.com/microsoft/agent-framework/pull/6292) — github-copilot-sdk v1.0.0 GA 対応 PR。破壊的変更含む。マージ後は Python ユーザーへの周知が必要。
- [microsoft/agent-framework #6319](https://github.com/microsoft/agent-framework/pull/6319) — Python での MCP 長時間実行タスクサポート。マージされると MCP ツールの挙動が変わる可能性。
- [microsoft/agent-framework #6309](https://github.com/microsoft/agent-framework/pull/6309) — スキルスクリプトのエラー詳細バブルアップ。`FunctionInvokingChatClient.IncludeDetailedErrors` と連動。
- [microsoft/aspire #17896](https://github.com/microsoft/aspire/issues/17896) — VS Code 拡張で ripgrep が無限起動する CPU 飽和バグ。修正を確認。
- [microsoft/aspire #17891](https://github.com/microsoft/aspire/issues/17891) — DevUI アグリゲーターがワークフロートポロジーを表示しない。agent-framework 統合に影響。
- [dotnet/extensions #7525](https://github.com/dotnet/extensions/issues/7525) — TextReasoningContent が会話履歴に round-trip されない。AI チャット履歴を使うアプリに影響。
- [dotnet/extensions #7540](https://github.com/dotnet/extensions/issues/7540) — OpenAI ToolJson の additionalProperties JsonException。修正 PR を確認。

### Azure で次の段階を待っているアイテム

- **Azure Infrastructure Resiliency Manager** (Public Preview) — GA への昇格タイミングを追跡。可用性設計の統合管理ツールとして重要。
- **Advanced full-text search in Azure DocumentDB** (Public Preview) — ベクター+テキスト検索の統合が本番利用可能になるまで追跡。

### 次回チェックで重点的に確認したいこと

- agent-framework #6292 (github-copilot-sdk v1.0.0) のマージ状況と、関連するチャネル PR (#6306 a2a / #6305 mcp) のマージ
- Aspire 13.4.2 以降のパッチリリース有無と #17896 (VS Code ripgrep バグ) の修正
- dotnet/extensions の Microsoft.Extensions.AI.OpenAI バグ修正 PR が出るかどうか
- agent-framework 1.9 リリース (#6314 merged) のリリースノートと NuGet パッケージ公開

---

```yaml
report:
  generated_at_utc: "2026-06-04 02:26:50"
  previous_check_at_utc: "2026-06-03 01:51:01"
  repositories:
    - microsoft/agent-framework
    - dotnet/aspnetcore
    - Azure/azure-functions-dotnet-worker
    - dotnet/extensions
    - runceel/ReactiveProperty
    - microsoft/aspire
  azure_rss: "https://www.microsoft.com/releasecommunications/api/v2/azure/rss"
```