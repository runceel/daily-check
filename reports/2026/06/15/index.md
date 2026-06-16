# 差分レポート — 2026-06-15 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-15 00:59:51` |
| レポート生成日時 (JST) | `2026-06-15 09:59:51` |
| 前回チェック時刻 (UTC) | `2026-06-12 02:03:55` |
| 対象期間 (UTC) | `2026-06-12 02:03:55 〜 2026-06-15 00:59:51` |

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
| microsoft/mxc | [mxc.md](./mxc.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6492](https://github.com/microsoft/agent-framework/pull/6492) | Python: [BREAKING] Simplify Python hosting core | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6489](https://github.com/microsoft/agent-framework/pull/6489) | Python: [Breaking] Additional bug fix for declarative workflows | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6488](https://github.com/microsoft/agent-framework/pull/6488) | Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6476](https://github.com/microsoft/agent-framework/pull/6476) | Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6474](https://github.com/microsoft/agent-framework/pull/6474) | .NET: [BREAKING] Align FileAccess tools with Python; add directory discovery and recursive search | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `create_checkpoint` to workflow | open |
| ⚠ セキュリティ | microsoft/agent-framework | [PR#6510](https://github.com/microsoft/agent-framework/pull/6510) | Python: Clarify identifier security guidance | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67097](https://github.com/dotnet/aspnetcore/pull/67097) | Update default OpenApi version to 3.2 | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66978](https://github.com/dotnet/aspnetcore/issues/66978) | MSAL Authentication Issue After Upgrading to 10.0.8 (Blazor WebAssembly | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7561](https://github.com/dotnet/extensions/pull/7561) | Fix transitive MessagePack vulnerability in AI template AppHost projects | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7560](https://github.com/dotnet/extensions/pull/7560) | Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18188](https://github.com/microsoft/aspire/pull/18188) | Default AppHosts to use the CLI bundle | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18153](https://github.com/microsoft/aspire/issues/18153) | [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project | open |
| ⚠ セキュリティ | microsoft/aspire | [PR#17949](https://github.com/microsoft/aspire/pull/17949) | feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings | open |
| GA 昇格 | microsoft/aspire | [PR#18161](https://github.com/microsoft/aspire/pull/18161) | Align Azure Cosmos DB emulator with GA vnext-latest image | open |

## エグゼクティブサマリー

- [microsoft/agent-framework](./agent-framework.md) では Python hosting core の単純化 [PR#6492](https://github.com/microsoft/agent-framework/pull/6492)、declarative workflow 修正 [PR#6489](https://github.com/microsoft/agent-framework/pull/6489)、.NET FileAccess 整合 [PR#6474](https://github.com/microsoft/agent-framework/pull/6474) がいずれも **破壊的変更** として入っています。Python / .NET の FileAccess、checkpoint、identifier security guidance のオープン PR も継続監視が必要です。
- [microsoft/aspire](./aspire.md) は取得件数上限に達するほど活動が多く、AppHost の CLI bundle 既定化 [PR#18188](https://github.com/microsoft/aspire/pull/18188)、MessagePack 脆弱性警告 [Issue#18153](https://github.com/microsoft/aspire/issues/18153)、Cosmos DB emulator の GA image 整合 [PR#18161](https://github.com/microsoft/aspire/pull/18161) が未マージの重要項目です。
- [dotnet/extensions](./extensions.md) では AI template 系の MessagePack 脆弱性対応 [PR#7561](https://github.com/dotnet/extensions/pull/7561) / [PR#7560](https://github.com/dotnet/extensions/pull/7560) がオープン中で、テンプレート生成物の依存関係更新が最優先です。
- [dotnet/aspnetcore](./aspnetcore.md) では OpenAPI 3.2 既定化 [PR#67097](https://github.com/dotnet/aspnetcore/pull/67097) と Blazor WebAssembly の MSAL 認証 issue [Issue#66978](https://github.com/dotnet/aspnetcore/issues/66978) が注目です。OpenAPI 生成物や認証フローを固定しているプロジェクトは回帰確認が必要です。
- [GitHub Changelog](./github-changelog.md) では Copilot code review の組織 runner / content exclusion / custom instructions 制御強化と、GitHub Actions self-hosted runner の最小バージョン要件適用再開が告知されました。Azure RSS の新着はありませんでした。

## 主要トレンド

今回の横断テーマは、Agent / CLI 周辺の初期化・実行経路の整理、MessagePack 脆弱性対応、OpenAPI / FileAccess / Copilot SDK tool definition など生成物・ツール API の互換性確認です。
agent-framework と Aspire はどちらも CLI・hosting・tooling の境界が動いており、単なる依存更新ではなく既存ワークフローの回帰確認が必要な変更が目立ちます。
Copilot SDK は `defer` parameter と Go JSON-RPC の context 対応、mxc は schema / CI / Nanvix prefetch 周辺の整理が進んでいます。一方で Azure RSS は新着なし、ReactiveProperty は変化なしで、全体としては一部の高活動リポジトリに差分が集中しています。

## 次回チェックに向けたメモ

- **microsoft/agent-framework**: Python/.NET API 統一と破壊的変更 PR 群（[#6488](https://github.com/microsoft/agent-framework/pull/6488), [#6476](https://github.com/microsoft/agent-framework/pull/6476), [#6474](https://github.com/microsoft/agent-framework/pull/6474), [#6407](https://github.com/microsoft/agent-framework/pull/6407)）および identifier security guidance [#6510](https://github.com/microsoft/agent-framework/pull/6510) を継続確認。
- **microsoft/aspire**: AppHost CLI bundle 既定化 [#18188](https://github.com/microsoft/aspire/pull/18188)、MessagePack 脆弱性警告 [#18153](https://github.com/microsoft/aspire/issues/18153)、Cosmos DB emulator GA image [#18161](https://github.com/microsoft/aspire/pull/18161)、Key Vault health check option [#17949](https://github.com/microsoft/aspire/pull/17949) を次回も確認。取得件数上限に達したため、重要 PR の漏れがないか手動確認も推奨です。
- **dotnet/aspnetcore / dotnet/extensions**: OpenAPI 3.2 既定化 [#67097](https://github.com/dotnet/aspnetcore/pull/67097)、Blazor WASM MSAL issue [#66978](https://github.com/dotnet/aspnetcore/issues/66978)、AI template の MessagePack 修正 [#7561](https://github.com/dotnet/extensions/pull/7561) / [#7560](https://github.com/dotnet/extensions/pull/7560) のマージ状況を追跡。
- **github/copilot-sdk / microsoft/mxc**: Copilot SDK の MCP OAuth host token handlers [#1669](https://github.com/github/copilot-sdk/pull/1669)、graceful runtime shutdown [#1667](https://github.com/github/copilot-sdk/pull/1667)、OTLP telemetry options [#1648](https://github.com/github/copilot-sdk/pull/1648)、mxc の Hyperlight / KVM overlap 修正 [#528](https://github.com/microsoft/mxc/pull/528) と mxc lib crate [#524](https://github.com/microsoft/mxc/pull/524) を継続確認。
- **Azure 廃止スケジュール継続確認**: Av2/F/Fs/Fsv2/G/Gs/Lsv2 VM シリーズ（2028-11-15 廃止）、D/Ds/Dv2/Dsv2/Ls シリーズ（2028-05-01 廃止）、GPv1 ストレージ新規作成不可の既存メモを引き続き保持。
- **GitHub Actions**: self-hosted runner の最小バージョン要件適用再開に備え、runner 更新状況と古い runner の残存有無を次回も確認。

<!-- daily-check-meta: {"generatedAtUtc":"2026-06-15 00:59:51","previousCheckAtUtc":"2026-06-12 02:03:55","schema":1} -->