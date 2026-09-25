# 差分レポート — 2026-09-25 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-09-25 00:10:50` |
| レポート生成日時 (JST) | `2026-09-25 09:10:50` |
| 前回チェック時刻 (UTC) | `2026-09-24 03:39:59` |
| 対象期間 (UTC) | `2026-09-24 03:39:59 〜 2026-09-25 00:10:50` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| microsoft/agent-framework-durable-extension | [agent-framework-durable-extension.md](./agent-framework-durable-extension.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |
| Azure/azure-functions-agents-runtime | [azure-functions-agents-runtime.md](./azure-functions-agents-runtime.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・本文・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) | [BREAKING] Python: Activate isolated v2 runtime and workflow protocol | open |
| ⚠ 破壊的変更 | microsoft/agent-framework-durable-extension | [PR#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) | [BREAKING] Python: Add read-only shared agent state consumers | open |
| ⚠ セキュリティ | microsoft/mxc | [Issue#1233](https://github.com/microsoft/mxc/issues/1233) | ProcessContainer: legacy network.proxy + deniedPaths falls back to Tier 3 and fails on WRITE_DAC | closed |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=557117) | Retirement: Azure Communication Services (ACS) standalone services will be retired on September 30, 2028 | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=572573) | [Launched] Generally Available: Instant Access for VM restore points | — |

## エグゼクティブサマリー

- Azure Communication Services の一部単体サービスは **2028年9月30日に廃止**予定です。対象サービスの利用者は影響範囲と移行先を公式告知で確認してください（[Azure 更新](./azure.md)）。
- Durable Extension の Python v2 runtime / workflow protocol と read-only shared state consumer の破壊的変更提案がオープンです。利用者は採用前に互換性を確認してください（[#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112)、[#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108)）。
- VM のアプリケーション整合性復元ポイントで Instant Access が GA になりました。Premium v2 / Ultra データディスクを使う環境は利用条件を確認してください（[Azure 更新](./azure.md)）。
- GitHub Enterprise Cloud で高影響操作前の再認証/MFA 要求がパブリックプレビューになりました。対象は Microsoft Entra ID を SAML/OIDC で使う EMU 企業です（[GitHub Changelog](./github-changelog.md)）。
- Aspire 13.6 では local socket directory / endpoint の検証・権限設定が整理されました。独自 socket directory を構成する利用者は新しい layout 要件を確認してください（[Aspire #20427](./aspire.md)）。

## 主要トレンド

開発基盤では認証・分離・ローカル socket 権限など、agent や sandbox の安全な実行境界を明確にする変更・提案が目立ちました。
一方、SDK connector と dashboard の改善、CI / nightly test の拡充も進んでおり、既存利用者向けの広範な API 変更は確認されませんでした。

## 次回チェックに向けたメモ

- 継続監視: Durable Extension の破壊的変更提案 [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) / [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) と、前回からの [#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) を追い、マージ状態・移行手順・GA 依存更新を確認する。Aspire の StackExchange.Redis 3.2.0 提案 [#20047](https://github.com/microsoft/aspire/pull/20047) も互換性と状態を確認。
- 前回からの継続事項: Agent Framework の [#8593](https://github.com/microsoft/agent-framework/pull/8593) と session isolation / approval continuation / MCP security、Aspire の Azure provisioning / dependency updates、Ubuntu 26 migration と GitHub Actions protection rollout は今回の差分で進捗を確認できないため、次回も状態を確認する。
- Azure: ACS 廃止対象サービスと移行先の詳細を確認し、2028-09-30 の期限に向けた計画を追跡する。Instant Access GA の対象構成・利用条件も確認する。Foundry Routines / egress-control preview の提供範囲・GA 時期、および Azure Functions の PowerShell 7.4 / .NET 8・9（2026-11-10）、Node.js 22（2027-04-30）の移行計画も継続確認。
- セキュリティ / 運用: GitHub SSH の適用日と CodeQL bundle 移行、ASP.NET passkey / claims-cache と 10.0.9 更新後の FailFast crash [#67270](https://github.com/dotnet/aspnetcore/issues/67270)、MXC の [#1233](https://github.com/microsoft/mxc/issues/1233) の修正リリースを確認する。Aspire の Azure Sandbox tier disk と ADC エラー表示の対応状況も追跡する。

<!-- daily-check-meta: {"previousCheckAtUtc":"2026-09-24 03:39:59","generatedAtUtc":"2026-09-25 00:10:50","schema":1} -->