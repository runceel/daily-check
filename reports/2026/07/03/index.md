# 差分レポート — 2026-07-03 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-07-03 04:00:53` |
| レポート生成日時 (JST) | `2026-07-03 13:00:53` |
| 前回チェック時刻 (UTC) | `2026-07-02 00:49:01` |
| 対象期間 (UTC) | `2026-07-02 00:49:01 〜 2026-07-03 04:00:53` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#6798](https://github.com/microsoft/agent-framework/issues/6798) | .NET: [BREAKING] Bump Azure.AI.Projects to 2.1.0-beta.4 | closed |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [Issue#66822](https://github.com/dotnet/aspnetcore/issues/66822) | *Breaking change* ASP.NET Core Components telemetry requires `System.Diagnostics.Metrics.Meter.IsSupported` in .NET 11 preview | closed |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67559](https://github.com/dotnet/aspnetcore/issues/67559) | Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#67543](https://github.com/dotnet/aspnetcore/issues/67543) | [NETSDKE2E][ARM64 Only] NET10.0.301 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#17902](https://github.com/microsoft/aspire/pull/17902) | [security] Bump aiohttp and starlette in FoundryAgentBasic playground | open |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=567194) | [Launched] Generally available: Anthropic Claude Sonnet 5 on Azure Databricks | — |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-02-upcoming-deprecation-of-gemini-2-5-pro-and-gemini-3-flash) | Upcoming deprecation of Gemini 2.5 Pro and Gemini 3 Flash | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-07-02-issue-fields-are-now-generally-available) | Issue fields are now generally available | — |

## エグゼクティブサマリー

- Azure では Anthropic Claude Sonnet 5 が Azure Databricks で GA になり、Databricks 上でのモデル選択肢が広がりました ([azure.md](./azure.md)).
- GitHub Changelog では Copilot 利用メトリクスの精度改善、Gemini モデルの非推奨、GitHub Actions での Copilot CLI 認証簡略化、Issue fields GA が注目点です ([github-changelog.md](./github-changelog.md)).
- microsoft/agent-framework では、ハーネス承認制御、Foundry Hosting のローカル耐性、TokenCredential 明示要件、Hyperlight のパス逃避対策が主要テーマでした ([agent-framework.md](./agent-framework.md)).
- dotnet/aspnetcore と dotnet/extensions では、Blazor/ルーティング周りの修正とテスト基盤・依存更新が進み、今後の移行・検証作業に関心が集まっています ([aspnetcore.md](./aspnetcore.md), [extensions.md](./extensions.md)).
- microsoft/aspire や microsoft/mxc では、セキュリティ・依存関係の整理が進み、実環境での挙動確認が重要なトピックです ([aspire.md](./aspire.md), [mxc.md](./mxc.md)).

## 主要トレンド

- 主要テーマは「AI/開発体験の進化」と「実運用に向けた堅牢化」の両輪です。Copilot / Azure の新機能やモデル選択肢拡大が進む一方、agent-framework / Aspire / mxc では安全性・再現性・ローカル実行の安定性改善が中心でした。
- また、SDK やテスト基盤の改善も多く、利用者側の実装負担を減らすための API 体験向上と、開発者体験維持のための保守性改善が同時に進んでいます。

## 次回チェックに向けたメモ

- Azure / GitHub の新機能は、モデル評価や認証/利用制御の見直しを優先して追うとよいです。特に Gemini の廃止予定と Copilot CLI 認証の変更は、利用組織での切替計画を見ておく価値があります。
- microsoft/agent-framework では TokenCredential 要件や Foundry Hosting の挙動変更に関係する利用者影響を確認し、Aspire / mxc ではセキュリティ関連の挙動差分を引き続き監視する。
- 追加の確認対象として、dotnet/aspnetcore の telemetry / authorization metadata 周辺、dotnet/extensions の xUnit v3 移行、Copilot SDK の lambda ベースの Java API への採用可否を次回に持ち越す。

<!-- daily-check-meta: {"generatedAtUtc":"2026-07-03 04:00:53","previousCheckAtUtc":"2026-07-02 00:49:01","schema":1} -->