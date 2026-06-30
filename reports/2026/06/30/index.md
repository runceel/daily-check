# 差分レポート — 2026-06-30 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-30 01:54:59` |
| レポート生成日時 (JST) | `2026-06-30 10:54:59` |
| 前回チェック時刻 (UTC) | `2026-06-29 01:00:01` |
| 対象期間 (UTC) | `2026-06-29 01:00:01 〜 2026-06-30 01:54:59` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6811](https://github.com/microsoft/agent-framework/pull/6811) | [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6807](https://github.com/microsoft/agent-framework/pull/6807) | .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6801](https://github.com/microsoft/agent-framework/pull/6801) | Python: [BREAKING] Improve FileAccess/FileMemory harness providers (surgical edits, read-only tier, consistent naming) | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6800](https://github.com/microsoft/agent-framework/pull/6800) | .NET: [BREAKING] Bump Azure.AI.AgentServer to 2.0.0 protocol and migrate Foundry.Hosting | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#6799](https://github.com/microsoft/agent-framework/issues/6799) | [BREAKING] .NET: Bump Azure.AI.AgentServer to 2.0.0 protocol in Foundry.Hosting | closed |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6754](https://github.com/microsoft/agent-framework/pull/6754) | Python: [BREAKING] Make all SkillsProvider tools require approval by default | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6735](https://github.com/microsoft/agent-framework/pull/6735) | [BREAKING] Python: Change background-agent loop helper to resolve the provider from the agent | merged |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6510](https://github.com/microsoft/agent-framework/pull/6510) | Python: Clarify identifier security guidance | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#62552](https://github.com/dotnet/aspnetcore/pull/62552) | Remove all SYSLIB0057 suppressions and replace obsolete X509Certificate2 constructors with X509CertificateLoader | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | open |
| 非推奨/廃止 | microsoft/aspire | [Issue#18551](https://github.com/microsoft/aspire/issues/18551) | Should IAzureComputeEnvironmentResource.ContainerRegistry be obsoleted in favor of ContainerRegistryReferenceAnnotation? | open |

## エグゼクティブサマリー

## エグゼクティブサマリー

- **agent-framework: Foundry Hosting を Azure.AI.AgentServer 2.0.0 プロトコルへ移行**。.NET は [PR#6800](https://github.com/microsoft/agent-framework/pull/6800) がマージ済みで `ResponseContext.Isolation`/`IsolationContext` を撤去し `PlatformContext` に置換、Python 版 [PR#6811](https://github.com/microsoft/agent-framework/pull/6811) は open。Foundry Hosted Agent を自前ホスティングする利用者は移行が必須/要追跡。
- **agent-framework: ハーネス層のセキュア・バイ・デフォルト化と file/skills provider 刷新**。`SkillsProvider` の全ツールが既定で承認必須に（[PR#6754](https://github.com/microsoft/agent-framework/pull/6754)、マージ済み）、`FileAccess`/`FileMemory` provider は surgical edit 追加と API・ツール名刷新（.NET [PR#6807](https://github.com/microsoft/agent-framework/pull/6807) / Python [PR#6801](https://github.com/microsoft/agent-framework/pull/6801)、いずれも open）。
- **aspnetcore: 証明書ローダー移行の継続**。SYSLIB0057 抑制を撤去し旧 `X509Certificate2` コンストラクタを `X509CertificateLoader` に置換する [PR#62552](https://github.com/dotnet/aspnetcore/pull/62552)（open）。同コンストラクタを使うアプリは移行を検討。
- **aspire: セキュリティ依存対応と非推奨化議論**。JS/TS・npm のセキュリティアラート対応 [PR#18533](https://github.com/microsoft/aspire/pull/18533) / [PR#18518](https://github.com/microsoft/aspire/pull/18518)（いずれも open）、`IAzureComputeEnvironmentResource.ContainerRegistry` の obsolete 化を検討する [Issue#18551](https://github.com/microsoft/aspire/issues/18551)。破壊的変更や GA はなし。
- **GitHub Copilot に Claude Opus 4.8 (fast mode) がプレビュー提供**（[changelog](https://github.blog/changelog/2026-06-29-claude-opus-4-8-fast-mode-is-now-in-preview-for-github-copilot)）。同等の知能で出力速度を高速化。あわせて Issue 作成をコラボレーターに限定する管理機能も追加。

## 主要トレンド

- **破壊的変更は agent-framework に集中**。テーマは大きく2つで、(1) Foundry Hosting の AgentServer 2.0.0 プロトコル移行（隔離モデル刷新）、(2) ハーネスの file/skills provider のセキュア・バイ・デフォルト化と API/ツール名整合。.NET と Python の両系で並行して進む。
- **.NET エコシステム横断で「旧 API からの移行」が継続**。aspnetcore の `X509CertificateLoader` への置換、agent-framework の `Isolation`→`PlatformContext` など、非推奨 API の置き換えが各所で進行。
- **aspire は破壊的変更なしで堅牢性重視**。ログ取りこぼし防止（[PR#18539](https://github.com/microsoft/aspire/pull/18539)）や CLI の競合修正、テスト安定化、セキュリティ依存バンプが中心。Azure RSS の新着は対象期間 0 件と静かだった。

## 次回チェックに向けたメモ

- **agent-framework の open な破壊的変更**: Foundry Hosting V2（[PR#6811](https://github.com/microsoft/agent-framework/pull/6811)）と FileAccess/FileMemory provider API 刷新（.NET [PR#6807](https://github.com/microsoft/agent-framework/pull/6807) / Python [PR#6801](https://github.com/microsoft/agent-framework/pull/6801)）のマージ状況を次回確認。1.10.0 リリース準備（[PR#6806](https://github.com/microsoft/agent-framework/pull/6806)）と Azure.AI.Projects 依存更新（[PR#6795](https://github.com/microsoft/agent-framework/pull/6795)）も追跡。
- 前回メモの「承認デフォルト変更」は agent-framework の [PR#6754](https://github.com/microsoft/agent-framework/pull/6754) として着地。Azure Blueprints 移行計画は対象期間に動きなし、引き続きウォッチ。
- **aspire**: セキュリティ依存 PR（[PR#18533](https://github.com/microsoft/aspire/pull/18533) / [PR#18518](https://github.com/microsoft/aspire/pull/18518)）のマージ、ContainerRegistry 非推奨化議論（[Issue#18551](https://github.com/microsoft/aspire/issues/18551)）の結論、新規 analyze-ci-failure ワークフローの不具合修正（[PR#18567](https://github.com/microsoft/aspire/pull/18567) ほか）の安定化を確認。VS Code 拡張の改善（[PR#18457](https://github.com/microsoft/aspire/pull/18457) など）も継続注視。
- **aspnetcore**: OpenAPI 3.2.0 対応群（[PR#67461](https://github.com/dotnet/aspnetcore/pull/67461) / [PR#67457](https://github.com/dotnet/aspnetcore/pull/67457)）、ヘルスチェック API 拡張提案の行方、`X509CertificateLoader` 移行 [PR#62552](https://github.com/dotnet/aspnetcore/pull/62552) の進捗を次回確認。
- **dotnet/extensions**: Microsoft.Extensions.AI の不具合報告（`DiskBasedResultStore` シリアライズクラッシュ [Issue#7592](https://github.com/dotnet/extensions/issues/7592) など）の修正状況を追跡。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-06-29 01:00:01","generatedAtUtc":"2026-06-30 01:54:59","schema":1} -->