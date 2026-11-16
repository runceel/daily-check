# dotnet/extensions

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 9 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 11 |
| 新規 Issue                 | 8 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- HTTP resilience handler に sliding-window retry budget と選択可能な既定値が追加されました（#7867）。
- `AddHttpServerLatencyTelemetry` が stable として明示され、利用者は安定 API としての採用を検討できます（#7898）。
- .NET 11 RC3 を使う 11.0.0 リリース基盤の準備と、.NET 11 向け framework package reference の条件付けがマージされました（#7912、#7915）。
- HybridCache の underlying data 無効時に発生する reservation の過剰解放が修正されました（#7879）。
- AI function tool の拒否メッセージを中立な内容に戻す修正がマージされました（#7913）。関連する FunctionInvokingChatClient のメッセージ分割・拒否挙動には新規 Issue もあり、継続確認が必要です（#7916、#7914）。
- Responses streaming の function-call namespace が replay 時に保持されない問題など、Microsoft.Extensions.AI 関連の修正提案がオープン中です（#7917、#7910）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7867 | Add sliding-window retry budget and selectable defaults for HTTP resilience | merged | Alejon | <https://github.com/dotnet/extensions/pull/7867> |
| PR | #7918 | Bump dotnet-reportgenerator-globaltool from 5.5.11 to 5.5.12 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7918> |
| PR | #7915 | Condition framework-provided package references for .NET 11 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7915> |
| PR | #7913 | AI: Restore neutral tool approval rejection message | merged | jozkee | <https://github.com/dotnet/extensions/pull/7913> |
| PR | #7912 | Prepare 11.0.0 release infrastructure with .NET 11 RC3 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7912> |
| PR | #7848 | Improve release-manager workflow and validation guidance | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7848> |
| PR | #7879 | Fix HybridCache reservation over-release on DisableUnderlyingData miss | merged | Eng3bbas | <https://github.com/dotnet/extensions/pull/7879> |
| PR | #7891 | Fix merging of code coverage reports | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7891> |
| PR | #7898 | Mark AddHttpServerLatencyTelemetry as stable | merged | EasyL0ver | <https://github.com/dotnet/extensions/pull/7898> |
| PR | #7904 | Integrate shared Documents while retaining IngestionDocument | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7904> |
| PR | #7920 | Add VectorData DI conformance tests for embedding generator per scope | open | Empiree | <https://github.com/dotnet/extensions/pull/7920> |
| PR | #7917 | Preserve Responses function namespaces on replay | open | valkiara | <https://github.com/dotnet/extensions/pull/7917> |
| PR | #7908 | Fix HybridCache wildcard invalidation timestamp under frozen TimeProvider (#7849) | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7908> |
| PR | #7911 | Prevent premature GC of active timer in FakeTimeProvider tests (#6567) | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7911> |
| PR | #7907 | Fix HttpClientResiliencePredicates.IsHttpConnectionTimeout under Native AOT (#7188) | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7907> |
| PR | #7906 | Add netstandard2.0 buildTransitive props and targets to Microsoft.Extensions.Telemetry.Abstractions (#7416) | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7906> |
| PR | #7905 | Bump follow-redirects from 1.16.1 to 1.16.2 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7905> |
| PR | #7903 | Fix ChatResponse snippet in Microsoft.Extensions.AI.OpenAI README | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7903> |
| PR | #7901 | Detect Ogg audio format in OpenAISpeechToTextClient (#7900) | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7901> |
| PR | #7902 | Prevent invoking functions when call has recorded argument exception (#7799) | open | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7902> |
| Issue | #7921 | OpenAIChatClient sends tool results and arguments to the model as indented JSON | open | jguizarj | <https://github.com/dotnet/extensions/issues/7921> |
| Issue | #7919 | Extended HTTP client logging ignores LoggingOptions changes at runtime | open | goldsam | <https://github.com/dotnet/extensions/issues/7919> |
| Issue | #7916 | [Microsoft.Extensions.AI] FunctionInvokingChatClient splits an approved tool call from the rest of its message | open | NilsPur | <https://github.com/dotnet/extensions/issues/7916> |
| Issue | #7914 | FunctionInvokingChatClient: the "must not be retried" rejection message is wrong when no one actually said no | closed | westey-m | <https://github.com/dotnet/extensions/issues/7914> |
| Issue | #7910 | Responses streaming function-call conversion loses namespace required for replay | open | mip1983 | <https://github.com/dotnet/extensions/issues/7910> |
| Issue | #7909 | Hosted tool-search items do not survive ChatMessage JSON persistence | open | mip1983 | <https://github.com/dotnet/extensions/issues/7909> |
| Issue | #7900 | OpenAISpeechToTextClient sends Ogg MemoryStream audio with an .mp3 filename | open | KSemenenko | <https://github.com/dotnet/extensions/issues/7900> |
| Issue | #7899 | Reacting to the Open Source Maintenance Fee for Polly | open | richlander | <https://github.com/dotnet/extensions/issues/7899> |
| Issue | #7686 | [API Proposal]: Sliding-window retry budget for the HTTP resilience handlers | closed | Alejon | <https://github.com/dotnet/extensions/issues/7686> |
| Issue | #7880 | HybridCache over-releases the shared default cache item on concurrent DisableUnderlyingData misses | closed | svick | <https://github.com/dotnet/extensions/issues/7880> |
| Issue | #4124 | Code coverage issues | closed | martintmk | <https://github.com/dotnet/extensions/issues/4124> |
