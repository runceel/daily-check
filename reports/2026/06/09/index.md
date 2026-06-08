# 差分レポート — 2026-06-09 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-08 23:35:41` |
| レポート生成日時 (JST) | `2026-06-09 08:35:41` |
| 前回チェック時刻 (UTC) | `2026-06-08 01:26:03` |
| 対象期間 (UTC) | `2026-06-08 01:26:03 〜 2026-06-08 23:35:41` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6388](https://github.com/microsoft/agent-framework/pull/6388) | .NET: [BREAKING] Fix hosting bugs | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6381](https://github.com/microsoft/agent-framework/pull/6381) | .NET: [BREAKING] Migrate .NET GitHub Copilot SDK to v1.0.0 | merged |
| GA 昇格 | microsoft/agent-framework | [PR#6403](https://github.com/microsoft/agent-framework/pull/6403) | .NET: Upgrade GitHub.Copilot.SDK to 1.0.0 GA + preserve caller-supplied SessionConfig.SessionId | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware | open |
| 非推奨/廃止 | dotnet/aspnetcore | [PR#67077](https://github.com/dotnet/aspnetcore/pull/67077) | Remove long-obsolete MVC APIs targeted for removal | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#66551](https://github.com/dotnet/aspnetcore/issues/66551) | Revise obsolete APIs intended to be removed, and consider removing in .NET 11 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18003](https://github.com/microsoft/aspire/issues/18003) | Source Breaking Change - `networkID` --> `networkId` | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#17924](https://github.com/microsoft/aspire/pull/17924) | Add proxyless endpoint port allocator | open |
| 非推奨/廃止 | microsoft/aspire | [PR#18022](https://github.com/microsoft/aspire/pull/18022) | Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation | merged |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565271) | [Launched] Generally Available: Azure NC RTX PRO 6000 Blackwell Server Edition v6 Series Virtual Machines | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565359) | [Launched] Generally Available: Premium SSD v2 disks now support non-zonal Azure Virtual Machines  | — |
| ⚠ セキュリティ | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565171) | [In preview] Public Preview: Microsoft Foundry agent security capabilities in Microsoft Defender for Cloud are transitioning to a Microsoft Agent 365 license | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=563756) | [Launched] Generally Available: Maintenance control for Azure Database for PostgreSQL - reschedule, apply on demand, view and download | — |

## エグゼクティブサマリー

<!-- TODO: 上の「全体の重要な変更」と Azure / GitHub Changelog を横断し、「特に注目すべきトピック」を 3〜5 件リンク付きの箇条書きで。重要変更があれば必ず含める -->

## 主要トレンド

<!-- TODO: 今回の差分から見える横断的なテーマを 2〜4 行で日本語要約 -->

## 次回チェックに向けたメモ

<!-- TODO: 継続ウォッチ中の PR/Issue、Azure の次の段階待ちアイテム、次回の重点確認事項 -->

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-06-08 01:26:03","generatedAtUtc":"2026-06-08 23:35:41"} -->