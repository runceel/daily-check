# 差分レポート — 2026-07-02 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-02 00:49:01` |
| レポート生成日時 (JST) | `2026-07-02 09:49:01` |
| 前回チェック時刻 (UTC) | `2026-07-01 00:25:00` |
| 対象期間 (UTC) | `2026-07-01 00:25:00 〜 2026-07-02 00:49:01` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6859](https://github.com/microsoft/agent-framework/pull/6859) | Python: [BREAKING] FileAccess/FileMemory replace_lines literal replacement with line deletion | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6855](https://github.com/microsoft/agent-framework/pull/6855) | .NET: [BREAKING] Refactor OpenAI Hosting OptionsMapping to disallow passing options by default | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6849](https://github.com/microsoft/agent-framework/pull/6849) | Python: [BREAKING] Treat nested SKILL.md content as part of the parent skill | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6847](https://github.com/microsoft/agent-framework/pull/6847) | Python: [BREAKING] Extract caching from SkillsProvider into a CachingSkillsSource decorator | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6807](https://github.com/microsoft/agent-framework/pull/6807) | .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#6798](https://github.com/microsoft/agent-framework/issues/6798) | .NET: [BREAKING] Bump Azure.AI.Projects to 2.1.0-beta.4 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67543](https://github.com/dotnet/aspnetcore/issues/67543) | [NETSDKE2E][ARM64 Only] NET10.0.400-preview.0.26322.102 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505) | Microsoft.AspNetCore.OpenApi nuget has dependency on Microsoft.OpenAPI with  CVE-2026-49451 | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=566209) | [Launched] Generally Available: New Powershell module:  Az.PostgreSQLFlexibleServer   | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=564382) | [Launched] Generally Available: Document PII NextGen Playground in Azure AI Language | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-01-enterprise-managed-settings-json-is-generally-available) | Enterprise managed-settings.json is generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-01-kimi-k2-7-is-now-available-in-github-copilot) | Kimi K2.7 Code is generally available in GitHub Copilot | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-01-copilot-vision-is-generally-available) | Copilot vision is generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-01-browser-tools-for-github-copilot-in-vs-code-are-generally-available) | Browser tools for GitHub Copilot in VS Code are generally available | — |

## エグゼクティブサマリー

- **microsoft/agent-framework で ⚠ 破壊的変更 5 件がまとめてマージ**: Python/.NET の Harness・Skills 領域で [PR#6807](https://github.com/microsoft/agent-framework/pull/6807)（FileAccess/FileMemory 編集ツール追加・API 整合）、[PR#6859](https://github.com/microsoft/agent-framework/pull/6859)（行削除挙動の変更）、[PR#6855](https://github.com/microsoft/agent-framework/pull/6855)（OpenAI Hosting OptionsMapping 既定拒否化）、[PR#6849](https://github.com/microsoft/agent-framework/pull/6849)（ネスト SKILL.md 統合）、[PR#6847](https://github.com/microsoft/agent-framework/pull/6847)（SkillsProvider キャッシュのデコレーター化）が同日にマージされました。同フレームワークを利用しているプロジェクトはリリースノートの確認が必須です。
- **⚠ セキュリティ**: `dotnet/aspnetcore` で `Microsoft.OpenApi` の高深刻度脆弱性 CVE-2026-49451（[Issue#67543](https://github.com/dotnet/aspnetcore/issues/67543), [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505)）が報告され、同時に `Microsoft.OpenApi` を 3.7.0 へ更新する PR（[PR#67468](https://github.com/dotnet/aspnetcore/pull/67468)）もマージ済みです。`Microsoft.AspNetCore.OpenApi` 利用者は更新反映を確認してください。
- **GitHub Models が 2026年7月30日 に完全廃止**: [GitHub Changelog](https://github.blog/changelog/2026-07-01-github-models-is-being-fully-retired-on-july-30-2026) にて最終停止日が告知されました。利用中のプロジェクトは期日までに代替サービスへの移行が必要です。
- **GitHub Copilot 関連機能が一斉に GA**: [Copilot vision](https://github.blog/changelog/2026-07-01-copilot-vision-is-generally-available)、[ブラウザ操作ツール](https://github.blog/changelog/2026-07-01-browser-tools-for-github-copilot-in-vs-code-are-generally-available)、[Enterprise managed-settings.json](https://github.blog/changelog/2026-07-01-enterprise-managed-settings-json-is-generally-available)、[Kimi K2.7 Code](https://github.blog/changelog/2026-07-01-kimi-k2-7-is-now-available-in-github-copilot) が同日に GA 化し、Copilot のエンタープライズ統制・マルチモーダル対応が急速に整備されています。
- **Azure AI Language の Document PII プレイグラウンド GA**（[原文](https://azure.microsoft.com/updates?id=564382)）と **PowerShell モジュール `Az.PostgreSQLFlexibleServer` GA**（[原文](https://azure.microsoft.com/updates?id=566209)）も本日リリースされ、Azure 側でも複数の GA 昇格がありました。

## 主要トレンド

今回は「破壊的変更の集中」と「Copilot 機能の一斉 GA」という 2 つの対照的な動きが目立ちました。agent-framework は Harness/Skills 領域のファイル編集・キャッシュ・スキル探索まわりで API 整理を進めており、破壊的変更が積み重なっています。一方で GitHub Copilot エコシステムはビジョン対応・ブラウザ操作・エンタープライズガバナンス・モデル多様化が同時に GA を迎え、機能拡張フェーズから成熟期に入りつつあります。また `Microsoft.OpenApi` の脆弱性のように、サードパーティ依存に起因するセキュリティ対応も複数リポジトリで並行して進んでいます。

## 次回チェックに向けたメモ

- **agent-framework の残タスク**: [Issue#6798](https://github.com/microsoft/agent-framework/issues/6798)（Azure.AI.Projects 2.1.0-beta.4 へのバンプ、破壊的変更見込み）はまだ open のため次回もマージ状況を確認する。前回メモにあった `CachingSkillsSource` 化（[PR#6847](https://github.com/microsoft/agent-framework/pull/6847)）と .NET FileAccess/FileMemory API 整合（[PR#6807](https://github.com/microsoft/agent-framework/pull/6807)）は今回マージされ着地済み。
- **aspnetcore のセキュリティ**: `Microsoft.OpenApi` CVE-2026-49451 / NU1903 警告（[Issue#67543](https://github.com/dotnet/aspnetcore/issues/67543), [Issue#67505](https://github.com/dotnet/aspnetcore/issues/67505)）が、マージ済みの `Microsoft.OpenApi` 3.7.0 更新（[PR#67468](https://github.com/dotnet/aspnetcore/pull/67468)）で解消されるか次回確認する。前回メモの CSRF ミドルウェアのスコープ変更（#67460）・ホットパス最適化（#67488）は今回動きなし、`ValidationContext.ObjectInstance` のネスト参照バグ（#67499）はクローズ済み。
- **aspire のセキュリティ**: npm 依存関係のセキュリティ更新（[PR#18518](https://github.com/microsoft/aspire/pull/18518)）はまだ open。前回メモの [PR#18533](https://github.com/microsoft/aspire/pull/18533) は今回の期間内に動きが確認できなかったため、マージ状況を手動で確認する。
- **GitHub Models 廃止**: 2026年7月30日 の完全廃止に向けて、利用プロジェクトの移行進捗を次回までに確認する。
- **dotnet/extensions**: `ISpeechToTextClient` の Experimental 解除予定（#7596）と `AINameAttribute` 追加（#7599）は今回動きなし、引き続きウォッチする。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-07-01 00:25:00","generatedAtUtc":"2026-07-02 00:49:01"} -->