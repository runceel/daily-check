# 差分レポート — 2026-08-13 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-08-13 00:02:03` |
| レポート生成日時 (JST) | `2026-08-13 09:02:03` |
| 前回チェック時刻 (UTC) | `2026-08-11 23:30:11` |
| 対象期間 (UTC) | `2026-08-11 23:30:11 〜 2026-08-13 00:02:03` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#7521](https://github.com/microsoft/agent-framework/pull/7521) | Python: [BREAKING] Require building functional workflow instances | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [Issue#7384](https://github.com/microsoft/agent-framework/issues/7384) | .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#68427](https://github.com/dotnet/aspnetcore/issues/68427) | Components.AI: Define link and HTML safety for model-generated rich content | open |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#57853](https://github.com/dotnet/aspnetcore/issues/57853) | OpenApi ApiVersionAttribute.Deprecated not reflected in schema | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#43493](https://github.com/dotnet/aspnetcore/issues/43493) | Support Deprecation Metadata in the API Explorer | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19319](https://github.com/microsoft/aspire/pull/19319) | Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19301](https://github.com/microsoft/aspire/pull/19301) | [automated] feat(cli): report installations with aspire --info | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#19077](https://github.com/microsoft/aspire/pull/19077) | Expose resolved environment variables to debug launch producers | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18991](https://github.com/microsoft/aspire/pull/18991) | Remove misleading TerminalOptions.Shell no-op | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#19248](https://github.com/microsoft/aspire/pull/19248) | Redact owning resource's own secret env var in `describe` | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#19231](https://github.com/microsoft/aspire/pull/19231) | [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) | merged |
| ⚠ セキュリティ | microsoft/aspire | [PR#18533](https://github.com/microsoft/aspire/pull/18533) | Resolve open JS and TS security alerts | closed |
| ⚠ セキュリティ | microsoft/aspire | [PR#18518](https://github.com/microsoft/aspire/pull/18518) | Bump npm dependencies for security alerts | closed |
| 非推奨/廃止 | microsoft/aspire | [PR#19295](https://github.com/microsoft/aspire/pull/19295) | Show AppHosts from every VS Code workspace root | open |
| ⚠ 破壊的変更 | microsoft/mxc | [PR#732](https://github.com/microsoft/mxc/pull/732) | Block breaking changes to the dev schema at pull-request time | closed |
| ⚠ セキュリティ | microsoft/mxc | [PR#803](https://github.com/microsoft/mxc/pull/803) | fix(logger): deliver security warnings explicitly instead of writing to stderr | open |
| 非推奨/廃止 | microsoft/mxc | [PR#575](https://github.com/microsoft/mxc/pull/575) | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | open |
| 非推奨/廃止 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=568457) | Retirement: Containerized data connector agent for the Microsoft Sentinel solution for SAP applications | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=569246) | [Launched] Generally Available: Batch rule updates for Azure Front Door  | — |

## エグゼクティブサマリー

- **Azure の廃止対応:** [Sentinel SAP コンテナー化データ コネクタの廃止](./azure.md) が 2026-09-14 に予定されています。利用中の環境は代替接続方式への移行を確認してください。
- **エージェント基盤の互換性:** [Agent Framework #7521](https://github.com/microsoft/agent-framework/pull/7521) の functional workflow 構築要件変更と、[HarnessAgent の状態問題 #7384](https://github.com/microsoft/agent-framework/issues/7384) は Python／.NET 利用者が継続確認すべき事項です。
- **Aspire の契約・セキュリティ:** [ConfluentKafka 計測更新 #19319](https://github.com/microsoft/aspire/pull/19319)、[CLI 出力変更 #19301](https://github.com/microsoft/aspire/pull/19301)、[js-yaml 修正 #19231](https://github.com/microsoft/aspire/pull/19231) を確認してください。
- **Web／API の安全性:** [ASP.NET Core Components.AI の HTML 安全性 #68427](https://github.com/dotnet/aspnetcore/issues/68427) と OpenAPI 非推奨メタデータの課題が継続しています。
- **開発者向け機能:** [Azure Front Door の一括ルール更新 GA](./azure.md)、mxc の設定契約・テレメトリ整備、[Copilot SDK の全 SDK rewind](./copilot-sdk.md) が進みました。

## 主要トレンド

エージェント／SDK／AppHost 周辺で、状態の保存・再開、ライフサイクル終了、デバッグ実行の信頼性を高める変更が目立ちました。  
一方、CLI 出力や設定契約など自動化が依存するインターフェースの変更候補が複数あり、互換性確認が必要です。  
セキュリティ面では、モデル生成 HTML、依存パッケージ、CLI のシークレット表示に関する対応が進行しています。

## 次回チェックに向けたメモ

- Agent Framework の [#7384](https://github.com/microsoft/agent-framework/issues/7384)、[#7466](https://github.com/microsoft/agent-framework/issues/7466)、[#7521](https://github.com/microsoft/agent-framework/pull/7521)、[#7517](https://github.com/microsoft/agent-framework/pull/7517) のワークフロー状態・SecureAgentConfig・継続処理変更を確認します。
- Aspire の [#19248](https://github.com/microsoft/aspire/pull/19248)、[#19052](https://github.com/microsoft/aspire/pull/19052) と、延期された JavaScript 依存修正の適用状況を追跡します。
- MXC の [#803](https://github.com/microsoft/mxc/pull/803)、RHEL 10 の [#777](https://github.com/microsoft/mxc/issues/777)、network policy 修正の最終状態を確認します。
- Azure は cc_v5 廃止（2026-09-01）、MAI-Code-1-Flash 廃止（2026-09-10）、Fabric Item Recovery の既定有効化（2026-08-23）を重点確認します。今回追加された SAP コネクタ廃止についても移行先情報を確認します。
- 前回メモの Azure AI Gateway／Claude Opus 5／Firewall ヘッダー挿入、GitHub Changelog の JetBrains MCP・OpenTelemetry・enterprise settings、今回の Front Door mTLS と App Service Markdown を継続確認します。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-08-11 23:30:11","generatedAtUtc":"2026-08-13 00:02:03"} -->