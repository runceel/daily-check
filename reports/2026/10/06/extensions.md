# dotnet/extensions

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 7 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 5 |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更（実験 API）** [dotnet/extensions#7730](https://github.com/dotnet/extensions/pull/7730) — `AddHttpLatencyTelemetry` を `AddHttpServerLatencyTelemetry` へ改名しました。直接呼出しと静的拡張クラス参照を更新してください。
- マージ済み diff の public API baseline は引き続き **Experimental** です。PR 本文の旧「stable 化」説明だけで GA と判断しないでください。

## 主要な変更点

- [dotnet/extensions#7730](https://github.com/dotnet/extensions/pull/7730) は受信 HTTP latency の実験 API を `HttpLoggingServiceCollectionExtensions.AddHttpServerLatencyTelemetry` に整理しました。旧名の呼出しを移行し、必要な latency companion services も確認してください。
- [dotnet/extensions#7803](https://github.com/dotnet/extensions/pull/7803) は log buffering の rule selector cache を除去して競合を修正しました。カテゴリ・ログレベル別ルールと並行ログ出力が対象です。
- [dotnet/extensions#7786](https://github.com/dotnet/extensions/pull/7786) は HybridCache の遅延 tag invalidation を修正しました。L2 の無効化済み entry が返るケースを回帰確認してください。
- [dotnet/extensions#7778](https://github.com/dotnet/extensions/pull/7778) は Azure DevOps plugin の npm 失敗をビルド失敗として扱い、古い依存を梱包する経路を防ぎます。.NET SDK は10.0.401へ更新されました。
- AI 関連では例外時の `FunctionInvocationContext.Terminate`、引数 parse exception のある tool call、Azure content-filter の null delta が未解決報告です。修正 PR は公開版収録まで追跡してください。
- provider-neutral decision abstractions と interoperability は未マージの実験提案であり、利用可能な安定 API として扱いません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7803 | Fix log buffering race by removing the rule selector cache | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7803> |
| PR | #7730 | Rename AddHttpLatencyTelemetry to AddHttpServerLatencyTelemetry (API-approved shape) | merged | EasyL0ver | <https://github.com/dotnet/extensions/pull/7730> |
| PR | #7786 | Fix deferred HybridCache tag invalidation | merged | svick | <https://github.com/dotnet/extensions/pull/7786> |
| PR | #7794 | Bump microsoft.visualstudio.slngen.tool from 12.0.32 to 12.0.53 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7794> |
| PR | #7793 | Update SDK to 10.0.401 | merged | peterwald | <https://github.com/dotnet/extensions/pull/7793> |
| PR | #7769 | Order iteration results numerically | merged | tahakocal | <https://github.com/dotnet/extensions/pull/7769> |
| PR | #7778 | Fail Azure DevOps plugin builds on npm errors | merged | Copilot | <https://github.com/dotnet/extensions/pull/7778> |
| PR | #7804 | Align aichatweb local vector-store keys with Guid record keys | open | Copilot | <https://github.com/dotnet/extensions/pull/7804> |
| PR | #7791 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7791> |
| PR | #7801 | Honor FunctionInvocationContext.Terminate when the function throws | open | gjz22 | <https://github.com/dotnet/extensions/pull/7801> |
| PR | #7796 | Add Layer 2 decision interoperability | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7796> |
| PR | #7795 | Add experimental provider-neutral decision abstractions (Layer 1) | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7795> |
| PR | #7798 | Decode non-base64 data URIs in DataContent to the octets they encode | open | Laurianti | <https://github.com/dotnet/extensions/pull/7798> |
| PR | #7792 | Guard against a null choice or delta in TryGetReasoningContent | open | eersinyildizz | <https://github.com/dotnet/extensions/pull/7792> |
| Issue | #7805 | [API Proposal]: Expose evaluator chain of thought as structured data on EvaluationMetric | open | kxs-ccarley | <https://github.com/dotnet/extensions/issues/7805> |
| Issue | #7800 | FunctionInvokingChatClient: FunctionInvocationContext.Terminate is ignored when the function throws | open | gjz22 | <https://github.com/dotnet/extensions/issues/7800> |
| Issue | #7799 | [Microsoft.Extensions.AI] FunctionInvokingChatClient invokes calls with a recorded argument-parse exception | open | nbcks | <https://github.com/dotnet/extensions/issues/7799> |
| Issue | #7790 | [Microsoft.Extensions.AI.OpenAI] Streaming throws on Azure content-filter chunks with null delta (10.10.1) | open | wuyu8512 | <https://github.com/dotnet/extensions/issues/7790> |
| Issue | #7486 | LogBuffering with CategoryName only rule ignores the rule for previously emitted log levels | closed | LironMat | <https://github.com/dotnet/extensions/issues/7486> |
| Issue | #7383 | Thread-safety bug: `LogBufferingFilterRuleSelector.Select` races with `InvalidateCache`, causing `InvalidOperationException - Collection was modified; enumeration operation may not execute` | closed | Sorttech | <https://github.com/dotnet/extensions/issues/7383> |
| Issue | #7729 | [API Proposal]: AddHttpLatencyTelemetry for incoming HTTP request logs | closed | EasyL0ver | <https://github.com/dotnet/extensions/issues/7729> |
| Issue | #7771 | HybridCache: a tag removal is missed and the invalidated L2 entry served, when the tag's invalidation timestamp is still in flight | closed | Aiddy81 | <https://github.com/dotnet/extensions/issues/7771> |
| Issue | #7777 | Azure DevOps plugin build can ignore npm failures and package stale dependencies | closed | jozkee | <https://github.com/dotnet/extensions/issues/7777> |
