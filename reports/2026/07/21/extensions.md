# dotnet/extensions

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- [#7617](https://github.com/dotnet/extensions/pull/7617) は `FunctionInvokingChatClient` の承認後に追加入力がある場合でも、`assistant(tool_calls)` と `tool(result)` の隣接順序を保ち、OpenAI などで発生する HTTP 400 を修正しました。
- [#7639](https://github.com/dotnet/extensions/pull/7639) は AI Chat テンプレートの MessagePack / SQLite workaround を撤回し、Aspire.AppHost 13.4.6 と SqliteVec preview.4 を基準に依存関係を簡素化しました。
- [#7645](https://github.com/dotnet/extensions/pull/7645) は実験 API `HttpLatencyTelemetryExtensions` を命名規則に合わせて `HttpLatencyTelemetryServiceCollectionExtensions` へ変更し、不要な TFM guard を削除しました。
- 10.8.1 servicing release の準備 [#7646](https://github.com/dotnet/extensions/pull/7646) が完了し、IChatClient の拡張可能な request routing [#7647](https://github.com/dotnet/extensions/issues/7647) と HTTP status 別 log level [#7637](https://github.com/dotnet/extensions/issues/7637) が API 提案として検討中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7646 | Prepare 10.8.1 servicing release | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7646> |
| PR | #7645 | Rename HttpLatencyTelemetry extensions class and drop redundant TFM guard | merged | EasyL0ver | <https://github.com/dotnet/extensions/pull/7645> |
| PR | #7639 | Revert #7561/#7579 template workarounds; bump Aspire.AppHost and SqliteVec | merged | Copilot | <https://github.com/dotnet/extensions/pull/7639> |
| PR | #7636 | Move Microsoft.Extensions.VectorData.ConformanceTests to xUnit 3 | merged | Copilot | <https://github.com/dotnet/extensions/pull/7636> |
| PR | #7617 | Fix FICC tool_calls/tool ordering with approvals and service-managed chat history | merged | westey-m | <https://github.com/dotnet/extensions/pull/7617> |
| PR | #7611 | Add agentic workflows that keep Microsoft.Extensions.AI aligned with OpenTelemetry GenAI semantic-conventions | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7611> |
| PR | #7640 | Align AI schema `$ref` pointer escaping with updated STJ behavior | closed | Copilot | <https://github.com/dotnet/extensions/pull/7640> |
| PR | #7589 | Update OpenTelemetry GenAI conventions to latest | closed | jeffhandley | <https://github.com/dotnet/extensions/pull/7589> |
| PR | #7644 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7644> |
| PR | #7643 | Add a release-manager agent for the dotnet/extensions release process | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7643> |
| PR | #7642 | Update open-telemetry/semantic-conventions-genai to latest | open | github-actions[bot] | <https://github.com/dotnet/extensions/pull/7642> |
| PR | #7641 | Hybrid Cache add DisableLocalCacheSerialization - Partially fixes #6063 | open | snakex64 | <https://github.com/dotnet/extensions/pull/7641> |
| PR | #7638 | Add configurable HTTP status code log levels for HttpClientLogging | open | Marcus-Kanon | <https://github.com/dotnet/extensions/pull/7638> |
| Issue | #7647 | [API Proposal]: Add extensible request routing for IChatClient | open | joshuajyue | <https://github.com/dotnet/extensions/issues/7647> |
| Issue | #7637 | [API Proposal]: Configurable log level for HTTP response status codes in AddExtendedHttpClientLogging | open | Marcus-Kanon | <https://github.com/dotnet/extensions/issues/7637> |
| Issue | #7616 | FunctionInvokingChatClient breaks `tool_calls`→`tool` adjacency in service-managed mode when the caller supplies trailing messages after an approval response | closed | westey-m | <https://github.com/dotnet/extensions/issues/7616> |
