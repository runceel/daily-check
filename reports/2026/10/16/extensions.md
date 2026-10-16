# dotnet/extensions

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 23 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 12 |
| 新規 Issue                 | 14 |
| クローズ Issue             | 13 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7832](https://github.com/dotnet/extensions/pull/7832) — Bump source-map-js from 1.2.1 to 1.2.2 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript （PR / merged / dependabot[bot]）
AI Evaluation Reporting の TypeScript frontend を利用・保守する担当者は、マージ済み lockfile で source-map-js 1.2.2 が解決されることを確認してください。
- **⚠ セキュリティ** [#7826](https://github.com/dotnet/extensions/issues/7826) — HttpRouteFormatter - Log redaction leaks replayable bearer token （Issue / closed / evgenyfedorov2）
HttpRouteFormatter の bearer token を含む route log を運用する利用者は、Issue がクローズ済みであることを踏まえ、使用バージョンの redaction 修正を確認し、既存ログの機密情報も点検してください。
- **非推奨/廃止** [#7815](https://github.com/dotnet/extensions/pull/7815) — AI: Remove obsolete OpenAI JsonPatch workaround （PR / merged / jozkee）
OpenAI の JsonPatch 回避策に依存する AI client 利用者は、不要となった workaround の削除後も tool／structured output の処理が期待どおり動くか確認してください。
- **非推奨/廃止** [#6594](https://github.com/dotnet/extensions/issues/6594) — [API Proposal]: Obsolete HybridCache compression options （Issue / open / slang25）
HybridCache の compression options を利用する開発者は、非推奨化の提案を追跡してください。Issue はオープン中の提案で、現時点で API 変更や移行は発生していません。

## 主要な変更点

- buffered logging では reentrant な同一スレッド記録の欠落や request 終了時の null 処理を修正し、trace context・thread ID・message template、logging scope の保持を改善しました（[#7847](https://github.com/dotnet/extensions/pull/7847)、[#7818](https://github.com/dotnet/extensions/pull/7818)、[#7813](https://github.com/dotnet/extensions/pull/7813)、[#7811](https://github.com/dotnet/extensions/pull/7811)）。
- HealthChecks／HeaderParsing の counters に単位を追加し、最新 metric 名・tag 名の README を更新しました（[#7839](https://github.com/dotnet/extensions/pull/7839)、[#7838](https://github.com/dotnet/extensions/pull/7838)）。
- Microsoft.Extensions.AI では image generation の clone／streaming、ChatResponseUpdate の clone、DataContent の data URI decode、reasoning content の null 処理を修正しました（[#7829](https://github.com/dotnet/extensions/pull/7829)、[#7774](https://github.com/dotnet/extensions/pull/7774)、[#7798](https://github.com/dotnet/extensions/pull/7798)、[#7699](https://github.com/dotnet/extensions/pull/7699)）。
- Authorization／route logging の token redaction と TypeScript 依存更新が入り、ログやフロントエンド依存の保守確認が必要です（[#7826](https://github.com/dotnet/extensions/issues/7826)、[#7828](https://github.com/dotnet/extensions/pull/7828)、[#7832](https://github.com/dotnet/extensions/pull/7832)）。
- AI の obsolete OpenAI JsonPatch workaround は削除され、HybridCache compression options の非推奨化は未決定の API proposal です（[#7815](https://github.com/dotnet/extensions/pull/7815)、[#6594](https://github.com/dotnet/extensions/issues/6594)）。
- その他、ExtendedLogger の無制限 tag joiner 列挙による OOM、isolated worker の終了処理と vector-store key の整合性を修正しました（[#7819](https://github.com/dotnet/extensions/pull/7819)、[#7801](https://github.com/dotnet/extensions/pull/7801)、[#7804](https://github.com/dotnet/extensions/pull/7804)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7829 | Fix ImageGenerationOptions.Clone dropping StreamingCount | merged | Empiree | <https://github.com/dotnet/extensions/pull/7829> |
| PR | #7847 | Fix lost log records when logging reentrantly on the same thread | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7847> |
| PR | #7839 | Add units to HealthChecks and HeaderParsing counters | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7839> |
| PR | #7838 | Update HeaderParsing README with current metric and tag names | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7838> |
| PR | #7846 | Merge release/10.11 into main | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7846> |
| PR | #7844 | Merge published release into release/10.11 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7844> |
| PR | #7818 | Capture trace context, thread ID and message template in buffered logs | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7818> |
| PR | #7833 | Bump dotnet-coverage from 18.11.2 to 18.12.0 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7833> |
| PR | #7832 | Bump source-map-js from 1.2.1 to 1.2.2 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7832> |
| PR | #7831 | Bump brace-expansion from 1.1.18 to 1.1.21 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7831> |
| PR | #7830 | Bump brace-expansion from 2.1.4 to 2.1.7 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7830> |
| PR | #7828 | Fix route parameter redaction when the value contains the following literal | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7828> |
| PR | #7815 | AI: Remove obsolete OpenAI JsonPatch workaround | merged | jozkee | <https://github.com/dotnet/extensions/pull/7815> |
| PR | #7774 | Yield final image when streaming with HostedImageGenerationTool | merged | iamAdarshh | <https://github.com/dotnet/extensions/pull/7774> |
| PR | #7798 | Decode non-base64 data URIs in DataContent to the octets they encode | merged | Laurianti | <https://github.com/dotnet/extensions/pull/7798> |
| PR | #7819 | Fix OOM from unbounded enumeration of ExtendedLogger tag joiners | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7819> |
| PR | #7804 | Align aichatweb local vector-store keys with Guid record keys | merged | Copilot | <https://github.com/dotnet/extensions/pull/7804> |
| PR | #7816 | Ignore empty model IDs in streaming responses | merged | valkiara | <https://github.com/dotnet/extensions/pull/7816> |
| PR | #7801 | Honor FunctionInvocationContext.Terminate when the function throws | merged | gjz22 | <https://github.com/dotnet/extensions/pull/7801> |
| PR | #7813 | Optionally preserve logging scopes in buffered log records | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7813> |
| PR | #7784 | Make the default tool-rejection message state that the decision is final | merged | manjunathshiva | <https://github.com/dotnet/extensions/pull/7784> |
| PR | #7699 | Fix ChatResponseUpdate.Clone dropping ContinuationToken | merged | dfedoryshchev | <https://github.com/dotnet/extensions/pull/7699> |
| PR | #7811 | Fix ArgumentNullException in per-request log buffering at the end of a request | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7811> |
| PR | #7251 | Add IterationCompleted delegate to FunctionInvokingChatClient to facilitate agentic patterns | closed | PederHP | <https://github.com/dotnet/extensions/pull/7251> |
| PR | #7792 | Guard against a null choice or delta in TryGetReasoningContent | closed | eersinyildizz | <https://github.com/dotnet/extensions/pull/7792> |
| PR | #7807 | Optionally preserve logging scopes in buffered log records | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7807> |
| PR | #7676 | Add CCKR adaptive log reservoir sampler to Microsoft.Extensions.Telem… | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7676> |
| PR | #7723 | Add cckr benchmarks | closed | amadeuszl | <https://github.com/dotnet/extensions/pull/7723> |
| PR | #7837 | Add Description to metric attributes and describe all instruments | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7837> |
| PR | #7848 | Improve release-manager workflow and validation guidance | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7848> |
| PR | #7840 | Fix container.cpu.time on Linux: report it as a counter in seconds | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7840> |
| PR | #7835 | Add experimental shared Documents abstractions | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7835> |
| PR | #7845 | Bump PowerShell from 7.6.6 to 7.6.7 | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7845> |
| PR | #7843 | Fix dangling $ref pointers when GetResponseAsync<T> wraps a non-object schema | open | dfedoryshchev | <https://github.com/dotnet/extensions/pull/7843> |
| PR | #7842 | Preserve function approval message order after empty messages | open | valkiara | <https://github.com/dotnet/extensions/pull/7842> |
| PR | #7841 | Add rate limiting for logs | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7841> |
| PR | #7827 | Add VectorData conformance tests for hybrid search with embedding generation | open | adamsitnik | <https://github.com/dotnet/extensions/pull/7827> |
| PR | #7823 | Add ToolAdditionContent and ToolRemovalContent for positional tool changes | open | PederHP | <https://github.com/dotnet/extensions/pull/7823> |
| PR | #7810 | Add Bottom-K sampling | open | amadeuszl | <https://github.com/dotnet/extensions/pull/7810> |
| PR | #7814 | Fix HybridCache stampede state removal race | open | svick | <https://github.com/dotnet/extensions/pull/7814> |
| Issue | #7849 | Hybrid Cache loses entries when DistributedCache using Redis refuses connection | open | alexjwilko | <https://github.com/dotnet/extensions/issues/7849> |
| Issue | #7836 | ExtendedLogger can lose an outer log record | closed | amadeuszl | <https://github.com/dotnet/extensions/issues/7836> |
| Issue | #7834 | FunctionInvokingChatClient places approved function results before earlier messages when an empty message follows the last approval response | open | tdoman | <https://github.com/dotnet/extensions/issues/7834> |
| Issue | #7826 | HttpRouteFormatter - Log redaction leaks replayable bearer token | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/issues/7826> |
| Issue | #7825 | HeaderChunker and SectionChunker silently ignore IngestionChunkerOptions.OverlapTokens | open | gimmickj | <https://github.com/dotnet/extensions/issues/7825> |
| Issue | #7824 | [Bug Report]: HeaderChunker and SectionChunker silently ignore IngestionChunkerOptions.OverlapTokens | closed | gimmickj | <https://github.com/dotnet/extensions/issues/7824> |
| Issue | #7822 | [API Proposal]: Add and remove tools mid-conversation without invalidating the prompt cache | open | PederHP | <https://github.com/dotnet/extensions/issues/7822> |
| Issue | #7821 | [API Proposal]: Accept AIJsonSchemaCreateOptions in ChatResponseFormat.ForJsonSchema<T> and GetResponseAsync<T> | open | AdCodicem | <https://github.com/dotnet/extensions/issues/7821> |
| Issue | #7812 | [Microsoft.Extensions.AI.OpenAI] Azure prompt annotation causes empty ModelId throughout Chat Completions stream | closed | mattleibow | <https://github.com/dotnet/extensions/issues/7812> |
| Issue | #7820 | [API Proposal]: Resource Monitoring independent readers | open | amadeuszl | <https://github.com/dotnet/extensions/issues/7820> |
| Issue | #7817 | [API Proposal]: Standardized API for Property Store Type Override | open | jeaseok-yun | <https://github.com/dotnet/extensions/issues/7817> |
| Issue | #7806 | Per-request log buffering throws ArgumentNullException at the end of a request | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/issues/7806> |
| Issue | #7809 | [API Proposal]: Add evaluation and calibration support for probabilistic decision models | open | mo3in | <https://github.com/dotnet/extensions/issues/7809> |
| Issue | #7808 | [API Proposal]: Add a provider-neutral subset / multi-label decision primitive | open | mo3in | <https://github.com/dotnet/extensions/issues/7808> |
| Issue | #6502 | [API Proposal]: Consider capturing ActivitySpanId, ActivityTraceId, and MessageTemplate when using log buffering | closed | voroninp | <https://github.com/dotnet/extensions/issues/6502> |
| Issue | #7790 | [Microsoft.Extensions.AI.OpenAI] Streaming throws on Azure content-filter chunks with null delta (10.10.1) | closed | wuyu8512 | <https://github.com/dotnet/extensions/issues/7790> |
| Issue | #7758 | [Microsoft.Extensions.AI.OpenAI] Final image is never yielded when streaming a response that uses HostedImageGenerationTool | closed | marcominerva | <https://github.com/dotnet/extensions/issues/7758> |
| Issue | #7505 | [Telemetry Logging] LegacyTagJoiner and ModernTagJoiner could cause OutOfMemoryException | closed | iliar-turdushev | <https://github.com/dotnet/extensions/issues/7505> |
| Issue | #7734 | aichatweb template: generated project throws "generic key type is 'String', but the key property 'Key' has type 'Guid'" | closed | prabh-62 | <https://github.com/dotnet/extensions/issues/7734> |
| Issue | #7800 | FunctionInvokingChatClient: FunctionInvocationContext.Terminate is ignored when the function throws | closed | gjz22 | <https://github.com/dotnet/extensions/issues/7800> |
| Issue | #7781 | Optionally preserve logging scopes in buffered records | closed | Dreamescaper | <https://github.com/dotnet/extensions/issues/7781> |
| Issue | #7783 | FunctionInvokingChatClient: default rejection message causes models to re-request approval for an already-rejected tool call | closed | manjunathshiva | <https://github.com/dotnet/extensions/issues/7783> |
