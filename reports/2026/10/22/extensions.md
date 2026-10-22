# dotnet/extensions

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 7 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 6 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 対象期間に自動判定された破壊的変更、セキュリティ修正、非推奨、GA はありません。
- Evaluation Context のリフレクション非依存シリアライズとロギングジェネレーターの型循環修正がマージされ、生成時の例外を防ぎます。
- ASP.NET Core Diagnostics Middleware と HTTP Diagnostics では DI の前提登録を拡張メソッドから明示的に行えるようになり、利用時のセットアップ漏れを減らします。
- Streaming Conversion で null の FinishReason を保持し、ストリーミング応答の変換が値を失わないよう改善されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7865 | Bump follow-redirects from 1.16.0 to 1.16.1 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7865> |
| PR | #7869 | Fix evaluation context serialization without reflection fallback | merged | valkiara | <https://github.com/dotnet/extensions/pull/7869> |
| PR | #7861 | Fix logging generator stack overflow on type cycles | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7861> |
| PR | #7859 | Register DI prerequisites in AspNetCore.Diagnostics.Middleware extension methods | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7859> |
| PR | #7860 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7860> |
| PR | #7854 | Register DI prerequisites in Http.Diagnostics extension methods | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7854> |
| PR | #7871 | Bump @vitest/mocker and vitest in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7871> |
| PR | #7870 | Bump vite from 8.0.16 to 8.3.4 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7870> |
| PR | #7868 | Honor [LogPropertyIgnore] under Transitive and Transitive on properties | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7868> |
| PR | #7867 | Add sliding-window retry budget and selectable defaults for HTTP resilience | open | Alejon | <https://github.com/dotnet/extensions/pull/7867> |
| PR | #7866 | Keep null finish reason in streaming conversion | open | nurullahturkoglu | <https://github.com/dotnet/extensions/pull/7866> |
| PR | #7864 | Escape delimiters in outgoing latency logs | open | zjdangge | <https://github.com/dotnet/extensions/pull/7864> |
| PR | #7862 | Update SDK and dotnet version to 10.0.402 | open | wtgodbe | <https://github.com/dotnet/extensions/pull/7862> |
| Issue | #7863 | [Microsoft.Extensions.AI.OpenAI] AsOpenAIStreamingChatCompletionUpdatesAsync writes finish_reason "stop" on every chunk with a null FinishReason | open | farukatasoy | <https://github.com/dotnet/extensions/issues/7863> |
| Issue | #7592 | [AI Evaluation] DiskBasedResultStore crashes serializing EvaluationContext with multiple AIContent items | closed | ypyl | <https://github.com/dotnet/extensions/issues/7592> |
| Issue | #7857 | [Microsoft.Gen.Logging] A data classification attribute's constructor arguments are dropped: CS7036 in generated code, or the wrong classification | closed | AdCodicem | <https://github.com/dotnet/extensions/issues/7857> |
| Issue | #7855 | [Microsoft.Gen.Logging] A data classification on a class or struct is ignored when a value of that type is logged, so it is written in clear | closed | AdCodicem | <https://github.com/dotnet/extensions/issues/7855> |
| Issue | #7858 | [Microsoft.Gen.Logging] [LogProperties(Transitive = true)] crashes the compiler with a stack overflow on a cycle through an inherited property (e.g. a System.Type property) | closed | AdCodicem | <https://github.com/dotnet/extensions/issues/7858> |
| Issue | #4684 | Improve discoverability of DI prerequisites in AspNetCore.Diagnostics.Middleware package | closed | iliar-turdushev | <https://github.com/dotnet/extensions/issues/4684> |
| Issue | #4675 | Improve discoverability of DI prerequisites in Http.Diagnostics package | closed | xakep139 | <https://github.com/dotnet/extensions/issues/4675> |
