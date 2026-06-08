# 差分レポート — 2026-06-09 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-08 23:38:56` |
| レポート生成日時 (JST) | `2026-06-09 08:38:56` |
| 前回チェック時刻 (UTC) | `2026-06-08 01:26:03` |
| 対象期間 (UTC) | `2026-06-08 01:26:03 〜 2026-06-08 23:38:56` |

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

本期間では .NET エコシステムで複数の破壊的変更が進行中です。特に注目すべきトピック:

1. **GitHub Copilot SDK v1.0.0 安定版への移行（agent-framework #6381）** — NameSpace・API が大幅に変更されるため、使用しているすべてのアプリケーションの更新が必須です。
2. **Razor Components の CSRF/Antiforgery 実装の変更（aspnetcore #67082）** — 上流ミドルウェアの結果を信頼する仕様へ移行し、既存の直接検証ロジックを見直す必要があります。
3. **AppModel ネットワーク ID のキャメルケース化（aspire #18003）** — `networkID` から `networkId` への破壊的な型変更。
4. **MVC 長期廃止 API の削除予定（aspnetcore #67077、#66551）** — CompatibilityVersion、ImageTagHelper 旧 API など複数リリース前から廃止予定だった API が .NET 11 で削除される見通し。
5. **Azure Compute・Storage の GA 拡張** — Azure NC RTX PRO 6000 Blackwell 対応、Premium SSD v2 の非ゾーン VM サポート。

## 主要トレンド

.NET SDK の version 大規模更新（GitHub Copilot SDK、OpenAI SDK）に伴う API・namespace 統一の流れが顕著です。AppModel・ASP.NET Core では廃止予定 API の削除が段階的に進行中。Azure 側ではハードウェア世代の刷新（Blackwell）と Storage/DB の GA 拡張が続いています。全体的に .NET 11 への準備期間としての仕様整理・後方互換性の整理が進みつつあります。

## 次回チェックに向けたメモ

**継続ウォッチ（重要な PR / Issue）:**
- [aspire #17924](https://github.com/microsoft/aspire/pull/17924) — プロキシレスエンドポイントポート割り当て（破壊的変更の可能性あり）
- [agent-framework #6381](https://github.com/microsoft/agent-framework/pull/6381) — GitHub Copilot SDK v1.0.0 移行（マージ済み、既存アプリの更新確認が必須）
- [agent-framework #6403](https://github.com/microsoft/agent-framework/pull/6403) — Copilot SDK v1.0.0 GA セッション ID 保存機能の検証
- [aspnetcore #67082](https://github.com/dotnet/aspnetcore/pull/67082) — Razor Components CSRF 変更（オープン中、実装サイクル確認）
- [aspire #18003](https://github.com/microsoft/aspire/issues/18003) — networkID → networkId 破壊的変更（既存コード対応状況の確認）

**Aspire CI/テスト基盤:**
- Issue #17942 における Polyglot/Hosting-4/VS Code E2E テスト失敗の継続状況を確認
- PersistentContainers テスト隔離（#17997）の安定化進度を監視

**次回の重点:**
- agent-framework のホスティング層修正（#6388）による実装への影響範囲の確認
- aspnetcore 廃止 API 削除タイムライン（.NET 11）の詳細化
- Microsoft Foundry agent security capabilities ライセンス遷移（Azure #565171）の詳細確認

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-06-08 01:26:03","generatedAtUtc":"2026-06-08 23:38:56","schema":1} -->