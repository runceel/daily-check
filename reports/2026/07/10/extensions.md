# dotnet/extensions

対象期間: 2026-07-08 06:31:54 〜 2026-07-10 00:28:22 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Agent Framework を 1.13.0 に更新し、Microsoft.Extensions.AI 周辺の追随を進めました（[#7613](https://github.com/dotnet/extensions/pull/7613)）。
- `AIFunctionNameAttribute` と `AIParameterNameAttribute` を追加し、AI に公開する関数・パラメーター名を制御できるようになりました（[#7610](https://github.com/dotnet/extensions/pull/7610)）。
- OpenAI 依存を 2.12.0 に更新し、dotnet-coverage も 18.9.0 へ更新しました。
- xUnit v3 へのテスト基盤移行がマージされました（[#7607](https://github.com/dotnet/extensions/pull/7607)）。
- service-managed chat history と承認応答における `tool_calls` の順序問題が継続中です（[#7616](https://github.com/dotnet/extensions/issues/7616)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7615 | Bump dotnet-coverage from 18.8.0 to 18.9.0 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7615> |
| PR | #7613 | Update Agent Framework to 1.13.0 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7613> |
| PR | #7610 | Add AIFunctionNameAttribute and AIParameterNameAttribute | merged | Copilot | <https://github.com/dotnet/extensions/pull/7610> |
| PR | #7608 | Upgrade OpenAI dependency to 2.12.0 | merged | Copilot | <https://github.com/dotnet/extensions/pull/7608> |
| PR | #7607 | Migrate to xUnit v3 | merged | Copilot | <https://github.com/dotnet/extensions/pull/7607> |
| PR | #7600 | Fix up docs with Copilot (MEAI) | merged | gewarren | <https://github.com/dotnet/extensions/pull/7600> |
| PR | #7598 | Fix up docs with Copilot (M.E.ServiceDiscovery) | merged | gewarren | <https://github.com/dotnet/extensions/pull/7598> |
| PR | #7599 | Add AINameAttribute to override the AI-facing name of a function or parameter | closed | jozkee | <https://github.com/dotnet/extensions/pull/7599> |
| PR | #7558 | Allow OpenTelemetry*Client.JsonSerializerOptions to control full OTel message formatting | closed | jozkee | <https://github.com/dotnet/extensions/pull/7558> |
| PR | #7516 | Propagate element metadata to chunks in MEDI chunkers | closed | luisquintanilla | <https://github.com/dotnet/extensions/pull/7516> |
| PR | #7420 | Add video generation support to Microsoft.Extensions.AI | closed | ericstj | <https://github.com/dotnet/extensions/pull/7420> |
| PR | #7617 | Fix FICC tool_calls/tool ordering with approvals and service-managed chat history | open | westey-m | <https://github.com/dotnet/extensions/pull/7617> |
| PR | #7614 | Add agentic workflows to remain aligned with Agent Framework releases | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7614> |
| PR | #7612 | Bump uuid and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7612> |
| Issue | #7616 | FunctionInvokingChatClient breaks `tool_calls`→`tool` adjacency in service-managed mode when the caller supplies trailing messages after an approval response | open | westey-m | <https://github.com/dotnet/extensions/issues/7616> |
| Issue | #7605 | MEVD ConformanceTests are not conditional | closed | adamsitnik | <https://github.com/dotnet/extensions/issues/7605> |
| Issue | #7477 | Add ability to change name of arguments inside AIFunction parameters in MEAI | closed | NoofSaeidh | <https://github.com/dotnet/extensions/issues/7477> |
| Issue | #2150 | Custom aspnet xunit extensions should be converged with XUnitExtensions in arcade | closed | ViktorHofer | <https://github.com/dotnet/extensions/issues/2150> |
