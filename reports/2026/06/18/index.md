# 差分レポート — 2026-06-18 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-18 00:25:41` |
| レポート生成日時 (JST) | `2026-06-18 09:25:41` |
| 前回チェック時刻 (UTC) | `2026-06-16 04:07:33` |
| 対象期間 (UTC) | `2026-06-16 04:07:33 〜 2026-06-18 00:25:41` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6550](https://github.com/microsoft/agent-framework/pull/6550) | .NET: [BREAKING] Align function tool names for BackgroundAgent and FileMemory between python and .net | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6547](https://github.com/microsoft/agent-framework/pull/6547) | Python: [BREAKING] Port FileMemoryProvider and integrate FileMemoryProvider & FileAccess into the harness agent | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6521](https://github.com/microsoft/agent-framework/pull/6521) | .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `reset` to workflow | open |
| ⚠ セキュリティ | microsoft/agent-framework | [Issue#6564](https://github.com/microsoft/agent-framework/issues/6564) | .NET: Harden archive extraction guard so the path-containment check is statically recognized | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67097](https://github.com/dotnet/aspnetcore/pull/67097) | Update default OpenApi version to 3.2 | merged |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#56723](https://github.com/dotnet/aspnetcore/issues/56723) | [Component Vulnerability]please consider to upgrade ws in @microsoft/signalr from @^7.4.5 to @^7.5.10 | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#63494](https://github.com/dotnet/aspnetcore/issues/63494) | OpenAPI: Marking Operations, Schemas and Properties as deprecated based on the [Obsolete] attribute | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18270](https://github.com/microsoft/aspire/issues/18270) | Default C# AppHosts to use the CLI bundle across IDEs | open |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18188](https://github.com/microsoft/aspire/pull/18188) | Default AppHosts to use the CLI bundle | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#18114](https://github.com/microsoft/aspire/issues/18114) | `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore | closed |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18153](https://github.com/microsoft/aspire/issues/18153) | [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project | closed |
| 非推奨/廃止 | microsoft/aspire | [PR#18230](https://github.com/microsoft/aspire/pull/18230) | Remove obsolete Sigstore SAN workaround | merged |
| GA 昇格 | microsoft/aspire | [PR#18161](https://github.com/microsoft/aspire/pull/18161) | Align Azure Cosmos DB emulator with GA vnext-latest image | merged |
| ⚠ セキュリティ | github/copilot-sdk | [PR#1685](https://github.com/github/copilot-sdk/pull/1685) | Fix Dependabot security alerts: bump esbuild, tsx, js-yaml | merged |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565733) | [Launched] Generally Available: Azure Databricks native read access to Microsoft OneLake  | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=565487) | [Launched] Generally Available: ICMP Support for Azure Standard V2 NAT Gateway | — |
| GA 昇格 | Azure 更新 | [原文](https://azure.microsoft.com/updates?id=562027) | [Launched] Generally Available: Log Analytics Summary Rules experience | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-17-github-copilot-app-generally-available) | GitHub Copilot app generally available | — |
| GA 昇格 | GitHub Changelog | [原文](https://github.blog/changelog/2026-06-16-github-code-quality-generally-available-july-20-2026) | GitHub Code Quality generally available July 20, 2026 | — |

## エグゼクティブサマリー

- [microsoft/agent-framework](./agent-framework.md) は Harness 周辺の破壊的変更候補が集中しています。マージ済み [PR#6550](https://github.com/microsoft/agent-framework/pull/6550) で .NET の BackgroundAgent / FileMemory tool 名が Python と揃い、未マージの FileAccess / approval / workflow reset 系 PR も継続確認対象です。
- [microsoft/aspire](./aspire.md) は CLI bundle 既定化 (#18270/#18188) が最大の破壊的変更候補です。加えて [PR#18161](https://github.com/microsoft/aspire/pull/18161) で Cosmos DB emulator が GA `vnext-latest` image に揃い、[PR#18230](https://github.com/microsoft/aspire/pull/18230) で古い Sigstore SAN 回避策が削除されました。
- [dotnet/aspnetcore](./aspnetcore.md) では [PR#67097](https://github.com/dotnet/aspnetcore/pull/67097) により OpenAPI の既定バージョンが 3.2 へ更新されます。OpenAPI 生成物を固定比較している環境では、クライアント生成・スナップショット・ツール互換性を確認してください。
- [github/copilot-sdk](./copilot-sdk.md) は [PR#1685](https://github.com/github/copilot-sdk/pull/1685) で `esbuild` / `tsx` / `js-yaml` などの Dependabot security alerts に対応し、1.0.63 / 1.0.64-0 への追従で generated RPC / session event 型も大きく更新されました。
- [Azure 更新](./azure.md) と [GitHub Changelog](./github-changelog.md) では GA 告知が多く、OneLake / Databricks 読み取り、Standard V2 NAT Gateway の ICMP、Log Analytics Summary Rules、GitHub Copilot app、GitHub Code Quality GA 予定が注目です。

## 主要トレンド

今回の横断テーマは、agent / CLI 実行基盤の既定動作変更と、生成物・依存関係の更新です。
agent-framework と Aspire は Harness / AppHost / CLI bundle / file access など実行面の変更が多く、Copilot SDK は protocol 追従と cross-SDK 整合性確認が進みました。
Azure / GitHub 側は GA 化と管理機能の強化が目立ち、実運用では「既定値変更」「依存更新」「GA 移行」の確認が中心になります。

## 次回チェックに向けたメモ

- **microsoft/agent-framework**: FileAccess / approval / workflow lifecycle の破壊的変更候補 [#6547](https://github.com/microsoft/agent-framework/pull/6547), [#6521](https://github.com/microsoft/agent-framework/pull/6521), [#6407](https://github.com/microsoft/agent-framework/pull/6407) と、archive extraction guard のセキュリティ Issue [#6564](https://github.com/microsoft/agent-framework/issues/6564) を継続確認。
- **microsoft/aspire**: CLI bundle 既定化 [#18270](https://github.com/microsoft/aspire/issues/18270) / [#18188](https://github.com/microsoft/aspire/pull/18188)、polyglot AppHost の channel restore 問題 [#18114](https://github.com/microsoft/aspire/issues/18114)、MessagePack 脆弱性警告 [#18153](https://github.com/microsoft/aspire/issues/18153)、bundle cache / AppHost socket / doctor まわりの追跡を継続。
- **dotnet/aspnetcore / dotnet/extensions**: OpenAPI 3.2 既定化 [#67097](https://github.com/dotnet/aspnetcore/pull/67097)、`[Obsolete]` の deprecated 反映 [#63494](https://github.com/dotnet/aspnetcore/issues/63494)、`OpenAISpeechToTextClient` の音声形式自動検出 [#7575](https://github.com/dotnet/extensions/pull/7575) を確認。
- **github/copilot-sdk**: tool invocation cancellation を各言語へ通す PR 群 [#1701](https://github.com/github/copilot-sdk/pull/1701)〜[#1707](https://github.com/github/copilot-sdk/pull/1707)、per-call tool context provider [#1693](https://github.com/github/copilot-sdk/pull/1693)、LLM inference callback [#1689](https://github.com/github/copilot-sdk/pull/1689) を次回も確認。
- **Azure / GitHub Changelog**: GitHub Models リタイア、GitHub Code Quality 2026-07-20 GA、Azure Migrate + GitHub Copilot Modernization preview、Databricks / OneLake preview・GA の次段階を継続確認。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-06-16 04:07:33","generatedAtUtc":"2026-06-18 00:25:41"} -->