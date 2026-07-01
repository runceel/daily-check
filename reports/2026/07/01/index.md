# 差分レポート — 2026-07-01 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-01 00:25:00` |
| レポート生成日時 (JST) | `2026-07-01 09:25:00` |
| 前回チェック時刻 (UTC) | `2026-06-30 01:54:59` |
| 対象期間 (UTC) | `2026-06-30 01:54:59 〜 2026-07-01 00:25:00` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6847](https://github.com/microsoft/agent-framework/pull/6847) | Python: [BREAKING] Extract caching from SkillsProvider into a CachingSkillsSource decorator | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6811](https://github.com/microsoft/agent-framework/pull/6811) | [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6807](https://github.com/microsoft/agent-framework/pull/6807) | .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6801](https://github.com/microsoft/agent-framework/pull/6801) | Python: [BREAKING] Improve FileAccess/FileMemory harness providers (surgical edits, read-only tier, consistent naming) | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#6798](https://github.com/microsoft/agent-framework/issues/6798) | .NET: [BREAKING] Bump Azure.AI.Projects to the next beta | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6492](https://github.com/microsoft/agent-framework/pull/6492) | Python: [BREAKING] Simplify Python hosting core | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6473](https://github.com/microsoft/agent-framework/pull/6473) | Python: Improve PR template and breaking-change label automation | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6413](https://github.com/microsoft/agent-framework/pull/6413) | Python: [BREAKING] Add sampling guardrails to MCP tools | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#17622](https://github.com/microsoft/aspire/issues/17622) | [13.4] DistributedApplicationTestingBuilder using dynamic dashboard port no longer passes. | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=566895) | [Launched] Generally Available: Client-side data integrity protections in Azure Blob Storage | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=563481) | [Launched] Generally Available: Toolboxes in Microsoft Foundry | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-30-claude-sonnet-5-is-generally-available-for-github-copilot) | Claude Sonnet 5 is generally available for GitHub Copilot | — |
| ⚠ セキュリティ | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-30-cloud-data-retention-policy-for-closed-security-alerts) | Upcoming cloud data retention policy for closed security alerts | — |

## エグゼクティブサマリー

- **microsoft/agent-framework の破壊的変更ラッシュ**: Foundry Hosted Agent の V2 プロトコル移行（[PR#6811](https://github.com/microsoft/agent-framework/pull/6811)、マージ済）と Python/.NET 両方の FileAccess/FileMemory API 刷新（[PR#6801](https://github.com/microsoft/agent-framework/pull/6801) マージ済 / [PR#6807](https://github.com/microsoft/agent-framework/pull/6807) オープン中）が中心。Foundry Hosting・ファイルアクセス系 API 利用者は要確認。
- **microsoft/aspire のセキュリティ対応**: JS/TS の未解決セキュリティアラート解消 PR（[PR#18533](https://github.com/microsoft/aspire/pull/18533)）がオープン中。マージ状況を継続ウォッチ。
- **Azure / Foundry の GA 2 件**: Azure Blob Storage のクライアント側データ整合性保護（CRC64-NVME、[原文](https://azure.microsoft.com/updates?id=566895)）と Microsoft Foundry の Toolboxes（[原文](https://azure.microsoft.com/updates?id=563481)）が GA。
- **GitHub Copilot に Claude Sonnet 5 が GA**（[原文](https://github.blog/changelog/2026-06-30-claude-sonnet-5-is-generally-available-for-github-copilot)）。モデル選択の新しい選択肢として利用可能。
- **Dependabot のクローズ済みセキュリティアラート保持ポリシー**（2026-08-25 開始、[原文](https://github.blog/changelog/2026-06-30-cloud-data-retention-policy-for-closed-security-alerts)）。長期保存が必要な組織は事前確認を。

## 主要トレンド

今回は microsoft/agent-framework と microsoft/aspire を中心に、**Foundry Hosting 関連の刷新**（プロトコル v2 化、ユーザー単位のセッション/ストレージ分離）が横断的なテーマとして目立ちました。あわせて Azure/GitHub 双方で Microsoft Foundry の GA 昇格（Toolboxes）が発表されており、Foundry まわりの機能拡充が今回のサイクルの主軸です。dotnet 系リポジトリは総じて定例のバージョン更新・CI/インフラ改善が中心で、静かな動きでした。

## 次回チェックに向けたメモ

- **agent-framework の open な破壊的変更**: `CachingSkillsSource` デコレーター化（[PR#6847](https://github.com/microsoft/agent-framework/pull/6847)）、.NET 版 FileAccess/FileMemory API 整合（[PR#6807](https://github.com/microsoft/agent-framework/pull/6807)）、Azure.AI.Projects 次期ベータ対応（[Issue#6798](https://github.com/microsoft/agent-framework/issues/6798)）のマージ状況を次回確認。
- 前回メモの「Foundry Hosting V2」「FileAccess/FileMemory provider API 刷新」は今回 [PR#6811](https://github.com/microsoft/agent-framework/pull/6811) / [PR#6801](https://github.com/microsoft/agent-framework/pull/6801) としてマージ済みとなり着地。Azure Blueprints 移行計画は今回も動きなし、引き続きウォッチ。
- **aspire**: セキュリティ対応 PR（[PR#18533](https://github.com/microsoft/aspire/pull/18533)）のマージ、ダッシュボード動的ポートに関する Issue（[Issue#17622](https://github.com/microsoft/aspire/issues/17622)、クローズ済）の再発有無を確認。
- **aspnetcore**: CSRF ミドルウェアのスコープ変更（#67460）とホットパス最適化（#67488）のマージ後の挙動、`ValidationContext.ObjectInstance` のネスト参照バグ（#67499）の対応状況を次回確認。
- **dotnet/extensions**: `ISpeechToTextClient` の Experimental 解除予定（#7596）と `AINameAttribute` 追加（#7599）の進捗を継続ウォッチ。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-06-30 01:54:59","generatedAtUtc":"2026-07-01 00:25:00","schema":1} -->