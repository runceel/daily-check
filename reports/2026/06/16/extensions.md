# dotnet/extensions

対象期間: 2026-06-15 00:59:51 〜 2026-06-16 04:07:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7561](https://github.com/dotnet/extensions/pull/7561) — Fix transitive MessagePack vulnerability in AI template AppHost projects （PR / merged / Copilot）
  Microsoft.Extensions.AI テンプレート由来の AppHost を使う場合、生成される依存関係が脆弱な MessagePack を引き込まない版へ更新されているか確認してください。
- **⚠ セキュリティ** [#7560](https://github.com/dotnet/extensions/pull/7560) — Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template （PR / merged / Copilot）
  AI Chat Web template から作成したアプリは、MessagePack が GHSA-hv8m-jj95-wg3x 修正版の 2.5.301 以上へ固定されているか確認してください。

## 主要な変更点

- AI template 系で MessagePack の既知脆弱性を解消する PR [#7561](https://github.com/dotnet/extensions/pull/7561) / [#7560](https://github.com/dotnet/extensions/pull/7560) がどちらもマージされました。テンプレート生成物やサンプルを再生成・更新する環境では依存関係の固定状況を確認してください。
- TypeScript 側では `tmp`、`esbuild` / Vite / React plugin の依存更新 [#7569](https://github.com/dotnet/extensions/pull/7569) / [#7564](https://github.com/dotnet/extensions/pull/7564) が入り、Evaluation Reporting 周辺のサプライチェーン更新が進んでいます。
- release branch の stable versioning 設定 [#7571](https://github.com/dotnet/extensions/pull/7571) と StampedeTests のフレーク対策 [#7572](https://github.com/dotnet/extensions/pull/7572) がマージされ、リリース・CI の安定化が中心です。
- オープン中の [#7568](https://github.com/dotnet/extensions/pull/7568) は HybridCache の options 動的指定 overload、[#7566](https://github.com/dotnet/extensions/pull/7566) は Grpc.Net.ClientFactory の version range check 修正で、次回も API / 互換性観点で確認対象です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7572 | Fix flaky StampedeTests and harden related test waits | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7572> |
| PR | #7571 | Set release branch to stable versioning | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7571> |
| PR | #7569 | Bump tmp from 0.2.6 to 0.2.7 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7569> |
| PR | #7564 | Bump esbuild, @vitejs/plugin-react and vite in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7564> |
| PR | #7561 | Fix transitive MessagePack vulnerability in AI template AppHost projects | merged | Copilot | <https://github.com/dotnet/extensions/pull/7561> |
| PR | #7560 | Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template | merged | Copilot | <https://github.com/dotnet/extensions/pull/7560> |
| PR | #7570 | Bump js-yaml from 4.1.1 to 4.2.0 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7570> |
| PR | #7568 | Add HybridCache.GetOrCreateAsync overloads for dynamic setting of options | open | svick | <https://github.com/dotnet/extensions/pull/7568> |
| PR | #7566 | Fix Grpc.Net.ClientFactory version range check - Fixes #7565 | open | Ghost93 | <https://github.com/dotnet/extensions/pull/7566> |
| Issue | #7567 | [API Proposal]: Add extensibility point for service discovery resolver key generation | open | Ipmants | <https://github.com/dotnet/extensions/issues/7567> |
| Issue | #7562 | Microsoft.Extensions.AI.Templates tests are failing | closed | adamsitnik | <https://github.com/dotnet/extensions/issues/7562> |
| Issue | #6836 | Microsoft.Extensions.Caching.Hybrid.Tests.StampedeTests.MultipleCallsShareExecution_MostCancel(callerCount: 10, remaining: 0) CI failure | closed | jozkee | <https://github.com/dotnet/extensions/issues/6836> |
