# 差分レポート — 2026-06-25 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-25 00:23:12` |
| レポート生成日時 (JST) | `2026-06-25 09:23:12` |
| 前回チェック時刻 (UTC) | `2026-06-23 06:00:53` |
| 対象期間 (UTC) | `2026-06-23 06:00:53 〜 2026-06-25 00:23:12` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6696](https://github.com/microsoft/agent-framework/pull/6696) | Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6631](https://github.com/microsoft/agent-framework/pull/6631) | .NET: [BREAKING] Support archive-type skills in AgentMcpSkillsSource | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6599](https://github.com/microsoft/agent-framework/pull/6599) | Python: [BREAKING] Require approval for file-access tools with read-only auto-approval | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6488](https://github.com/microsoft/agent-framework/pull/6488) | Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `reset` to workflow | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#66551](https://github.com/dotnet/aspnetcore/issues/66551) | Revise obsolete APIs intended to be removed, and consider removing in .NET 11 | closed |
| ⚠ セキュリティ | dotnet/extensions | [PR#7582](https://github.com/dotnet/extensions/pull/7582) | Backport #7579: Replace SemanticKernel connectors with CommunityToolkit to fix SQLitePCLRaw vulnerability | closed |
| ⚠ セキュリティ | dotnet/extensions | [PR#7579](https://github.com/dotnet/extensions/pull/7579) | Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability by replacing SemanticKernel connectors with CommunityToolkit | merged |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18153](https://github.com/microsoft/aspire/issues/18153) | [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project | closed |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565480) | [In preview] Generally Available: Azure NetApp Files migration assistant  | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-23-copilot-cli-new-terminal-interface-is-generally-available) | Copilot CLI: New terminal interface is generally available | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-23-deprecation-of-python-3-9-for-dependabot) | Deprecation of Python 3.9 for Dependabot | — |

## エグゼクティブサマリー

- [microsoft/agent-framework](./agent-framework.md) では、archive 形式 skill のサポート、ファイルアクセス承認フローの厳格化、`FileSkillsSource` の探索ルール変更など、複数の破壊的変更が同時に進んでいます。これらの影響は、既存実装の skill ロードや permission 設定を見直す必要があるため、確認優先度が高いです。
- [dotnet/aspnetcore](./aspnetcore.md) では、.NET 11 で削除候補に挙がる非推奨 API の整理に関する議論があり、今後の互換性を見据えたレビューが必要です。
- [dotnet/extensions](./extensions.md) と [microsoft/aspire](./aspire.md) では、依存関係の脆弱性対応や CI / テスト基盤の安定化が中心でした。特に SQLitePCLRaw や MessagePack の脆弱性は、利用環境に応じて追跡が必要です。
- Azure / GitHub 側では、Azure NetApp Files の GA、GitHub Copilot CLI の GA、Dependabot の Python 3.9 非推奨といった運用上の変化があり、利用者は新しい機能や廃止予定の影響を確認しておくとよいでしょう。

## 主要トレンド

今回の差分は、製品機能よりも「互換性・運用安定性・依存関係の見直し」に重心が置かれていました。特に agent-framework での breaking change、.NET / Aspire / Extensions でのセキュリティ・テスト基盤の改善、Azure / GitHub 側の GA や廃止告知が目立ちます。静かな日ではなく、レビュー対象が多く分散している週といえます。

## 次回チェックに向けたメモ

- [microsoft/agent-framework](./agent-framework.md) の breaking 系 PR について、[#6696](https://github.com/microsoft/agent-framework/pull/6696)、[#6599](https://github.com/microsoft/agent-framework/pull/6599)、[#6488](https://github.com/microsoft/agent-framework/pull/6488)、[#6407](https://github.com/microsoft/agent-framework/pull/6407) の状態遷移と影響範囲を追跡する。
- [dotnet/extensions](./extensions.md) の脆弱性対応が反映されたか、テンプレートやサンプルの再生成・再ビルド手順を確認する。
- [microsoft/aspire](./aspire.md) では、MessagePack 依存関係の更新状況、CLI / E2E テスト安定化の継続、依存関係の脆弱性追跡を継続確認する。
- GitHub Changelog 側では、Copilot CLI の新 UI 利用方法や Dependabot の Python 3.9 非推奨に伴う移行対応を次回に向けて棚卸しする。
- Azure 側は今回新着が少なかったため、次回までリリース通知が増えるかを引き続き監視する。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-06-23 06:00:53","schema":1,"generatedAtUtc":"2026-06-25 00:23:12"} -->