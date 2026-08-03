# 差分レポート — 2026-07-28 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-28 07:44:08` |
| レポート生成日時 (JST) | `2026-07-28 16:44:08` |
| 前回チェック時刻 (UTC) | `2026-07-27 00:50:43` |
| 対象期間 (UTC) | `2026-07-27 00:50:43 〜 2026-07-28 07:44:08` |

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
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7347](https://github.com/microsoft/agent-framework/pull/7347) | [BREAKING] Python: Allow workflow checkpoint full replayability | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#61588](https://github.com/dotnet/aspnetcore/issues/61588) | [Infrastructure] We should add APICompat checks against previous shipped version of the assemblies to detect breaking changes | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68053](https://github.com/dotnet/aspnetcore/pull/68053) | [release/2.3] Update SystemSecurityCryptographyXmlPackageVersion to 8.0.4 | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [PR#68052](https://github.com/dotnet/aspnetcore/pull/68052) | [Infrastructure] Updated npm packages 2026-07-27 | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#68042](https://github.com/dotnet/aspnetcore/pull/68042) | [release/11.0-preview7] Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67984](https://github.com/dotnet/aspnetcore/pull/67984) | Obsolete JsonPatch STJ OperationBase.ShouldSerializeFrom | merged |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67966](https://github.com/dotnet/aspnetcore/issues/67966) | Obsolete `OperationBase.ShouldSerializeFrom` from JsonPatch.STJ | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#62980](https://github.com/dotnet/aspnetcore/issues/62980) | Reconsider Deprecating Extensions.ApiDescription.Client | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#62867](https://github.com/dotnet/aspnetcore/issues/62867) | Remove API that was marked obsolete in <= .NET 8 | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7652](https://github.com/dotnet/extensions/pull/7652) | Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18901](https://github.com/microsoft/aspire/issues/18901) | [CI Failure] SQL Server container exits with CoInitializeSecurity failure (HRESULT 0x800706b5) | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#18858](https://github.com/microsoft/aspire/pull/18858) | [auto-sec] Consolidate Aspire JavaScript template dependency security remediations | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17951](https://github.com/microsoft/aspire/pull/17951) | [security] Bump vulnerable npm dependencies flagged by Dependabot (10 alerts) | merged |
| GA 昇格 | microsoft/mxc | [PR#676](https://github.com/microsoft/mxc/pull/676) | Bring network wire schema to full GA spec (wire.rs + config fixtures only) | open |
| ⚠ セキュリティ | github/copilot-sdk | [PR#2095](https://github.com/github/copilot-sdk/pull/2095) | Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568316) | [Launched] Generally Available: Claude Opus 5 on Azure Databricks | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568115) | [Launched] Generally Available: HTTP header insertion in Azure Firewall  | — |

## エグゼクティブサマリー

- **Azure の GA**: [Claude Opus 5 の Azure Databricks 対応](./azure.md) と [Azure Firewall の HTTP ヘッダー挿入](./azure.md) が一般提供されました。前者は高度な AI ワークロード、後者は Firewall 集約型のセキュリティ制御に影響します。
- **ワークフロー互換性**: [Agent Framework #7347](https://github.com/microsoft/agent-framework/pull/7347) はチェックポイント完全リプレイを扱う **破壊的変更候補** で、状態形式と移行手順の確認が必要です。
- **ASP.NET Core の API / 依存関係**: [APICompat 導入検討](https://github.com/dotnet/aspnetcore/issues/61588)、暗号・npm 依存関係のセキュリティ更新、JsonPatch の `OperationBase.ShouldSerializeFrom` 非推奨化が同時に進んでいます（[詳細](./aspnetcore.md)）。
- **AI / 開発者基盤のセキュリティ**: [Aspire の npm remediation](https://github.com/microsoft/aspire/pull/18858)、[extensions の依存関係更新](https://github.com/dotnet/extensions/pull/7652)、[Copilot SDK の brace-expansion 更新](https://github.com/github/copilot-sdk/pull/2095) を継続確認してください。
- **プラットフォーム契約の成熟化**: [MXC の network wire schema GA 化](https://github.com/microsoft/mxc/pull/676) と、GitHub Copilot app の専用アクセス制御・エンタープライズ managed settings（[Changelog](./github-changelog.md)）が進んでいます。

## 主要トレンド

AI・開発者向け基盤では、モデル提供や Copilot 管理面の拡張と同時に、依存関係・テレメトリ・アクセス制御の安全性を高める変更が目立ちました。  
.NET 系では API 互換性検出と非推奨 API の整理が進み、ワークフローやダッシュボードでは状態復元・アクセシビリティ・入力検証の堅牢化が続いています。

## 次回チェックに向けたメモ

- Agent Framework の [#7347](https://github.com/microsoft/agent-framework/pull/7347) の破壊的変更内容と release note / migration guide、Aspire の [#18901](https://github.com/microsoft/aspire/issues/18901) SQL Server コンテナー障害を確認します。
- ASP.NET Core の APICompat 検討、JsonPatch 非推奨 API の代替策、extensions / Aspire / Copilot SDK の依存関係セキュリティ修正が完了するか追跡します。
- MXC の network policy GA [#676](https://github.com/microsoft/mxc/pull/676) と、Rust SDK の WSLC backend・telemetry consent テストの進展を確認します。
- Azure は AI Gateway のプレビュー評価、Claude Opus 5 と Firewall ヘッダー挿入の本番適用状況を重点確認します。
- GitHub Changelog では JetBrains の MCP / custom agent と OpenTelemetry 設定、Copilot app の専用ポリシーおよび enterprise managed settings の適用範囲を確認します。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-07-28 07:44:08","previousCheckAtUtc":"2026-07-27 00:50:43"} -->