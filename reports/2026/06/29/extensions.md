# dotnet/extensions

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- `Microsoft.Extensions.AI` 周辺で OCR / document-extraction の概念追加が検討されており、今後の AI 統合の方向性が見えています。
- Foundry Local を chat / embedding provider として組み込む提案が進んでおり、ローカル実行環境での評価が増えています。
- 既存の `WriteAsync` 契約を明確化する変更が入り、単一ドキュメント制約の扱いがより分かりやすくなりました。
- Semantic Kernel Connector 依存を整理する変更も含まれており、依存関係の簡素化が続いています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7584 | Removing SemanticKernel Connectors dependency and replacing it | merged | Copilot | <https://github.com/dotnet/extensions/pull/7584> |
| PR | #7433 | Clarify WriteAsync contract: add validation and docs for single-document constraint | merged | Copilot | <https://github.com/dotnet/extensions/pull/7433> |
| PR | #7589 | Update OpenTelemetry GenAI conventions to latest | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7589> |
| PR | #7588 | Add IOcrClient OCR/document-extraction capability to Microsoft.Extensions.AI | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7588> |
| PR | #7586 | Add Foundry Local as a chat and embedding provider in the AI Chat Web template | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7586> |
| Issue | #7587 | [API Proposal]: IOcrClient — an OCR / document-extraction capability for Microsoft.Extensions.AI | open | luisquintanilla | <https://github.com/dotnet/extensions/issues/7587> |
| Issue | #7585 | Add Foundry Local as a chat and embedding provider in the AI Chat Web template | open | luisquintanilla | <https://github.com/dotnet/extensions/issues/7585> |
| Issue | #7335 | [API Proposal]: SummarizingChatReducer to be promoted as stable | closed | mdesalvo | <https://github.com/dotnet/extensions/issues/7335> |
| Issue | #6970 | [MEDI] Clarify the IngestionChunkWriter.WriteAsync contract around documents | closed | roji | <https://github.com/dotnet/extensions/issues/6970> |
