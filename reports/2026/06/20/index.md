# 差分レポート — 2026-06-20 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-20 10:51:22` |
| レポート生成日時 (JST) | `2026-06-20 19:51:22` |
| 前回チェック時刻 (UTC) | `2026-06-18 00:25:41` |
| 対象期間 (UTC) | `2026-06-18 00:25:41 〜 2026-06-20 10:51:22` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6631](https://github.com/microsoft/agent-framework/pull/6631) | .NET: [BREAKING] Support archive-type skills in AgentMcpSkillsSource | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6607](https://github.com/microsoft/agent-framework/pull/6607) | Python: [BREAKING] Integrate looping into HarnessAgent | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6599](https://github.com/microsoft/agent-framework/pull/6599) | Python: [BREAKING] Require approval for file-access tools with read-only auto-approval | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6547](https://github.com/microsoft/agent-framework/pull/6547) | Python: [BREAKING] Port FileMemoryProvider and integrate FileMemoryProvider & FileAccess into the harness agent | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6521](https://github.com/microsoft/agent-framework/pull/6521) | .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6488](https://github.com/microsoft/agent-framework/pull/6488) | Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `reset` to workflow | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#6564](https://github.com/microsoft/agent-framework/issues/6564) | .NET: Harden archive extraction guard so the path-containment check is statically recognized | closed |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6510](https://github.com/microsoft/agent-framework/pull/6510) | Python: Clarify identifier security guidance | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#67280](https://github.com/dotnet/aspnetcore/pull/67280) | [release/10.0] Add reference to System.Security.Cryptography.Xml in RepoTasks | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18270](https://github.com/microsoft/aspire/issues/18270) | C# AppHosts will require the aspire CLI to run | closed |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18188](https://github.com/microsoft/aspire/pull/18188) | Default AppHosts to use the CLI bundle | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#17296](https://github.com/microsoft/aspire/issues/17296) | aspire new --language csharp does not pin `channel` / `sdkVersion` in aspire.config.json, breaking subsequent command coherence | closed |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-18-upcoming-deprecation-of-opus-4-6-fast) | Upcoming deprecation of Opus 4.6 (fast) | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-18-repository-switcher-generally-available-in-global-navigation) | Repository switcher generally available in global navigation | — |

## エグゼクティブサマリー

- **microsoft/agent-framework の破壊的変更が継続**: [#6547](https://github.com/microsoft/agent-framework/pull/6547) と [#6521](https://github.com/microsoft/agent-framework/pull/6521) がマージ済み、さらに [#6631](https://github.com/microsoft/agent-framework/pull/6631) / [#6607](https://github.com/microsoft/agent-framework/pull/6607) / [#6599](https://github.com/microsoft/agent-framework/pull/6599) がオープンで、Harness の実行・承認モデルが大きく動いています。  
- **microsoft/aspire で AppHost 実行契約が更新**: [#18188](https://github.com/microsoft/aspire/pull/18188) により CLI バンドル既定化が入り、[Issue #18270](https://github.com/microsoft/aspire/issues/18270) のとおり C# AppHost の CLI 前提が明確化されました。  
- **dotnet/aspnetcore の CSRF 挙動が実装側寄りに**: [#67082](https://github.com/dotnet/aspnetcore/pull/67082) で antiforgery/CSRF 拒否の責務がフォーム利用側に寄るため、既存フォーム処理の見直しが必要です。  
- **GitHub Changelog の期限付き変更**: [Opus 4.6 (fast) 廃止予告](https://github.blog/changelog/2026-06-18-upcoming-deprecation-of-opus-4-6-fast)（2026-06-29）と、Actions 側のセキュリティ強化（`pull_request_target` 既定見直し・実行保護 Preview）が実運用に直結します。  
- **Azure RSS は今回 0 件**で、プラットフォーム公式リリースよりも GitHub リポジトリ/Changelog 側の変化が中心でした。

## 主要トレンド

今回の差分は、**「エージェント/CLI の実行契約を厳密化する流れ」** が横断テーマです（Aspire の CLI バンドル既定化、Agent Framework の承認フロー強化）。  
同時に、GitHub Actions/ワークフロー実行制御や Hyperlight 出力保護など、**セキュリティと運用ガードレールの強化**が複数面で進んでいます。  
一方で Azure 公式 RSS の新着はなく、今回はクラウド機能追加より開発基盤・運用面の更新が主でした。

## 次回チェックに向けたメモ

- **microsoft/agent-framework**: breaking 追跡を継続（[#6631](https://github.com/microsoft/agent-framework/pull/6631), [#6607](https://github.com/microsoft/agent-framework/pull/6607), [#6599](https://github.com/microsoft/agent-framework/pull/6599), [#6488](https://github.com/microsoft/agent-framework/pull/6488), [#6407](https://github.com/microsoft/agent-framework/pull/6407), [#6510](https://github.com/microsoft/agent-framework/pull/6510)）。  
- **microsoft/aspire**: CLI 前提移行の後続を重点確認（[#18360](https://github.com/microsoft/aspire/pull/18360), [#18362](https://github.com/microsoft/aspire/pull/18362), [#18338](https://github.com/microsoft/aspire/pull/18338), [#18359](https://github.com/microsoft/aspire/issues/18359)）。  
- **dotnet/aspnetcore / dotnet/extensions**: CSRF 周辺の追随修正（[#67307](https://github.com/dotnet/aspnetcore/pull/67307)）と、STT/ingestion 周辺の API 利用感改善の継続有無を確認。  
- **GitHub Changelog**: Opus 4.6 (fast) 廃止日（2026-06-29）までに利用モデル固定設定の棚卸しを実施し、Actions 実行保護 Preview の組織適用可否を次回判断。  
- **Azure**: 今回新着 0 件のため、前回から継続中の Azure Migrate + Copilot Modernization preview や Databricks / OneLake 系アップデートの次段階発表を引き続き監視。

<!-- daily-check-meta: {"generatedAtUtc":"2026-06-20 10:51:22","schema":1,"previousCheckAtUtc":"2026-06-18 00:25:41"} -->