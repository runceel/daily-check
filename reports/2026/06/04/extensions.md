# dotnet/extensions *(サマリーモード)*

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0    |
| オープン中の新規 PR     | 0    |
| クローズ (未マージ) PR  | 0    |
| 新規 Issue              | 4    |
| クローズ Issue          | —    |

## 主要な変更点

期間内のマージ済み PR・新規 PR はなし。Issue が 4 件更新された。

- **OpenAI ツールスキーマで `object`-valued `additionalProperties` が JsonException を throw** (#7540): `additionalProperties` が `bool` として型付けされていることで OpenAI の ToolJson 生成時に例外が発生する問題。Microsoft.Extensions.AI.OpenAI の利用者が対象。
- **TextReasoningContent が会話履歴に round-trip されない** (#7525): `reasoning_content` から読み込まれた `TextReasoningContent` が Chat Completions の履歴へ再送信されない問題。チェーン会話で推論コンテンツが失われる可能性がある。
- **OpenAI Responses API ストリーミングで関数コールの MessageID が欠如** (#7479): ストリーミング応答の関数コールに `MessageID` が含まれず後続処理に影響。
- **SemanticSimilarityChunker でコンテキスト長超過の例外** (#7297): Ollama ベースの埋め込みで入力がコンテキスト長を超えると `OllamaException` がスロー。チャンク化ロジックの改善が必要。

## 変化のあった PR / Issue

| 種別  | 番号  | タイトル                                                                   | 状態  | 1 行説明                                          | リンク |
| ----- | ----- | -------------------------------------------------------------------------- | ----- | ------------------------------------------------- | ------ |
| Issue | #7540 | ToolJson.AdditionalProperties typed as bool throws JsonException           | OPEN  | OpenAI ツールスキーマ生成時の型エラー             | <https://github.com/dotnet/extensions/issues/7540> |
| Issue | #7525 | TextReasoningContent not round-tripped in Chat Completions history         | OPEN  | 推論コンテンツが会話履歴で失われる                | <https://github.com/dotnet/extensions/issues/7525> |
| Issue | #7479 | Streaming responses missing MessageID on function calls                    | OPEN  | ストリーミング関数コールで MessageID が欠如       | <https://github.com/dotnet/extensions/issues/7479> |
| Issue | #7297 | SemanticSimilarityChunker raises OllamaException on context length exceed  | OPEN  | コンテキスト長超過時の Ollama 例外               | <https://github.com/dotnet/extensions/issues/7297> |