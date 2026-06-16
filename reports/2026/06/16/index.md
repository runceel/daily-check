# 差分レポート — 2026-06-16 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-16 04:07:33` |
| レポート生成日時 (JST) | `2026-06-16 13:07:33` |
| 前回チェック時刻 (UTC) | `2026-06-15 00:59:51` |
| 対象期間 (UTC) | `2026-06-15 00:59:51 〜 2026-06-16 04:07:33` |

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
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6521](https://github.com/microsoft/agent-framework/pull/6521) | .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6488](https://github.com/microsoft/agent-framework/pull/6488) | Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6476](https://github.com/microsoft/agent-framework/pull/6476) | Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `create_checkpoint` to workflow | open |
| ⚠ 破壊的変更 | dotnet/aspnetcore | [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) | [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware | open |
| ⚠ セキュリティ | dotnet/aspnetcore | [Issue#66410](https://github.com/dotnet/aspnetcore/issues/66410) | Microsoft Security Advisory CVE-2026-40372 – ASP.NET Core Elevation of Privilege | closed |
| 非推奨/廃止 | dotnet/aspnetcore | [Issue#67225](https://github.com/dotnet/aspnetcore/issues/67225) | Emit deprecated: true for [Obsolete] types/members in generated OpenAPI documents | closed |
| ⚠ セキュリティ | dotnet/extensions | [PR#7561](https://github.com/dotnet/extensions/pull/7561) | Fix transitive MessagePack vulnerability in AI template AppHost projects | merged |
| ⚠ セキュリティ | dotnet/extensions | [PR#7560](https://github.com/dotnet/extensions/pull/7560) | Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#18188](https://github.com/microsoft/aspire/pull/18188) | Default AppHosts to use the CLI bundle | open |
| ⚠ セキュリティ | microsoft/aspire | [Issue#18153](https://github.com/microsoft/aspire/issues/18153) | [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project | open |
| ⚠ セキュリティ | github/copilot-sdk | [PR#1685](https://github.com/github/copilot-sdk/pull/1685) | Fix Dependabot security alerts: bump esbuild, tsx, js-yaml | open |

## エグゼクティブサマリー

- [microsoft/agent-framework](./agent-framework.md) は FileAccess と承認フロー周辺の破壊的変更が集中しています。マージ済み [PR#6476](https://github.com/microsoft/agent-framework/pull/6476) に加え、.NET auto-approval の承認必須化 [PR#6521](https://github.com/microsoft/agent-framework/pull/6521)、Python FileSkillsSource の探索仕様変更 [PR#6488](https://github.com/microsoft/agent-framework/pull/6488)、workflow checkpoint 追加 [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) を継続確認してください。
- [dotnet/extensions](./extensions.md) では AI template 系の MessagePack 脆弱性修正 [PR#7561](https://github.com/dotnet/extensions/pull/7561) / [PR#7560](https://github.com/dotnet/extensions/pull/7560) がマージされました。一方で [microsoft/aspire](./aspire.md) の新規 project 作成時 MessagePack 警告 [Issue#18153](https://github.com/microsoft/aspire/issues/18153) と AppHost CLI bundle 既定化 [PR#18188](https://github.com/microsoft/aspire/pull/18188) は未解決です。
- [dotnet/aspnetcore](./aspnetcore.md) では CVE-2026-40372 の security advisory [Issue#66410](https://github.com/dotnet/aspnetcore/issues/66410) がクローズされ、Razor Components の antiforgery / CSRF 委譲変更 [PR#67082](https://github.com/dotnet/aspnetcore/pull/67082) はオープン中です。OpenAPI の `[Obsolete]` → `deprecated: true` 出力 [Issue#67225](https://github.com/dotnet/aspnetcore/issues/67225) も下流生成物へ影響します。
- [microsoft/aspire](./aspire.md) は `aspire new/update` の stable channel で不要な `nuget.config` を作らない修正 [PR#18211](https://github.com/microsoft/aspire/pull/18211) と、Playwright CLI version の厳密 SemVer 検証 [PR#18225](https://github.com/microsoft/aspire/pull/18225) が入りました。Dashboard の Manage Data アクセシビリティ改善 [PR#17928](https://github.com/microsoft/aspire/pull/17928) も進んでいます。
- [GitHub Changelog](./github-changelog.md) では Copilot usage metrics がサーバー側テレメトリも使うようになり、Enterprise レポート上のアクティブユーザー数が増える可能性があります。Azure RSS の新着はありませんでした。

## 主要トレンド

今回の横断テーマは、Agent / CLI / template まわりの安全性と生成物の整合です。agent-framework では FileAccess と tool approval、Aspire では CLI bundle・stable channel・Playwright version 検証、extensions / Aspire template では MessagePack 脆弱性対応が並行して進んでいます。
ASP.NET Core は security advisory と OpenAPI metadata、GitHub Changelog は Copilot 利用メトリクスの集計方式変更が中心で、利用者側では「実行時挙動」だけでなく「生成物・観測・レポート値」の変化も確認対象です。
ReactiveProperty と Azure RSS は静かで、差分は高活動の Agent / Aspire / .NET 周辺に集中しています。

## 次回チェックに向けたメモ

- **microsoft/agent-framework**: FileAccess / approval / checkpoint まわりの破壊的変更候補 [#6521](https://github.com/microsoft/agent-framework/pull/6521), [#6488](https://github.com/microsoft/agent-framework/pull/6488), [#6407](https://github.com/microsoft/agent-framework/pull/6407) と、マージ済み [#6476](https://github.com/microsoft/agent-framework/pull/6476) のフォローアップ issue を継続確認。
- **microsoft/aspire**: AppHost CLI bundle 既定化 [#18188](https://github.com/microsoft/aspire/pull/18188)、MessagePack 脆弱性警告 [#18153](https://github.com/microsoft/aspire/issues/18153)、SDK version check [#18213](https://github.com/microsoft/aspire/pull/18213)、Azure.Core 更新で Azure resource 連携が止まる issue [#18214](https://github.com/microsoft/aspire/issues/18214) を次回も追跡。
- **dotnet/aspnetcore / dotnet/extensions**: Razor Components antiforgery / CSRF 変更 [#67082](https://github.com/dotnet/aspnetcore/pull/67082)、CVE-2026-40372 のパッチ反映状況 [#66410](https://github.com/dotnet/aspnetcore/issues/66410)、HybridCache overload [#7568](https://github.com/dotnet/extensions/pull/7568)、Grpc.Net.ClientFactory version range 修正 [#7566](https://github.com/dotnet/extensions/pull/7566) を確認。
- **github/copilot-sdk / Copilot metrics**: Dependabot security alerts 対応 [#1685](https://github.com/github/copilot-sdk/pull/1685) と、Copilot usage metrics の集計対象拡大による Enterprise レポート値の変化を継続確認。
- **Azure 廃止スケジュール継続確認**: Av2/F/Fs/Fsv2/G/Gs/Lsv2 VM シリーズ（2028-11-15 廃止）、D/Ds/Dv2/Dsv2/Ls シリーズ（2028-05-01 廃止）、GPv1 ストレージ新規作成不可の既存メモを引き続き保持。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-06-16 04:07:33","previousCheckAtUtc":"2026-06-15 00:59:51"} -->