# dotnet/extensions

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 7 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- マージ済み 5 件には、.NET 11.0.1 と 10.11.1 のサービスリリース準備に加え、VectorData からの IsExternalInit 伝播修正が含まれます。
- HybridCache の `FrozenTimeProvider` 下でワイルドカード無効化タイムスタンプが正しく更新されない問題（#7849）を修正し、オフライン Redis 利用時のキャッシュ消失を防ぎました。
- Chat/AI 周辺では、ストリーミングメタデータがモデル出力とツールメッセージを混同する問題、関数呼び出し拒否時の結果ファクトリ追加、推論コンテンツ出力など複数の提案と修正が進行中です。
- PDB の Source Link レコード欠落、net10.0 Web プロジェクトでの重複ロギングジェネレーター、charset-only RFC 2397 Data URI の解析、DocumentExtraction の走査なども修正対象です。
- ドキュメント抽出では、セクション形状に依存しない完全な走査や部分抽出エラー、言語ヒントを含む API 提案が継続しており、利用側への互換性影響を次回確認します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7972 | Update release-manager guidance from 11.0.1 servicing | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7972> |
| PR | #7965 | Prepare 11.0.1 Servicing Release | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7965> |
| PR | #7931 | Forward IsExternalInit from the .NET builds of Microsoft.Extensions.VectorData.Abstractions | merged | Laurianti | <https://github.com/dotnet/extensions/pull/7931> |
| PR | #7964 | Prepare 10.11.1 Servicing Release | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7964> |
| PR | #7908 | Fix HybridCache wildcard invalidation timestamp under frozen TimeProvider (#7849) | merged | Manish-1kumar | <https://github.com/dotnet/extensions/pull/7908> |
| PR | #7976 | Fixes #7479 | open | sabaka-chabaka | <https://github.com/dotnet/extensions/pull/7976> |
| PR | #7973 | Fix empty Source Link records in PDBs (remove debug-determinism) | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7973> |
| PR | #7970 | Fix OpenAIResponsesChatClient streaming metadata to prevent model output merging into tool messages | open | caigen | <https://github.com/dotnet/extensions/pull/7970> |
| PR | #7975 | Add FunctionInvokingChatClient.RejectionResultFactory | open | PederHP | <https://github.com/dotnet/extensions/pull/7975> |
| PR | #7969 | Fix duplicate logging generators causing CS0757 in net10.0 web projects | open | caigen | <https://github.com/dotnet/extensions/pull/7969> |
| PR | #7963 | Make ExtractionDocument traversal complete and independent of section shape | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7963> |
| PR | #7968 | Fix DataContent parsing of charset-only RFC 2397 data URIs | open | caigen | <https://github.com/dotnet/extensions/pull/7968> |
| Issue | #7974 | [API Proposal]: Let callers replace the result FunctionInvokingChatClient creates for a rejected function call | open | PederHP | <https://github.com/dotnet/extensions/issues/7974> |
| Issue | #7971 | Source Link metadata is empty in published package PDBs | open | jeffhandley | <https://github.com/dotnet/extensions/issues/7971> |
| Issue | #7966 | MissingMethodException when a netstandard2.0 library sets an init property of Microsoft.Extensions.VectorData.Abstractions | closed | Laurianti | <https://github.com/dotnet/extensions/issues/7966> |
| Issue | #7967 | [API Proposal]: Unable to output reasoning content when using ChatClientAgent and the OpenAI SDK to perform inference with Ollama models. | open | williamlzw | <https://github.com/dotnet/extensions/issues/7967> |
| Issue | #7962 | [API Feedback]: `ExtractionDocument` traversal: the obvious loop silently drops content, and the result depends on the provider | open | luisquintanilla | <https://github.com/dotnet/extensions/issues/7962> |
| Issue | #7961 | [API Proposal]: Partial-extraction errors and language hints for DocumentExtractionClient | open | duguankui | <https://github.com/dotnet/extensions/issues/7961> |
| Issue | #6815 | [ResourceMonitoring] Abnormal numbers for cpu.time and memory.usage | closed | galakt | <https://github.com/dotnet/extensions/issues/6815> |
| Issue | #7849 | Hybrid Cache with Offline Distributed Redis Cache loses entries when using FakeTimeProvider | closed | alexjwilko | <https://github.com/dotnet/extensions/issues/7849> |
| Issue | #7587 | [API Proposal]: IDocumentExtractionClient — a document-extraction capability as its own peer library (Microsoft.Extensions.DocumentExtraction) | closed | luisquintanilla | <https://github.com/dotnet/extensions/issues/7587> |
