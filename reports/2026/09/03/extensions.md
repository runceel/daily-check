# dotnet/extensions

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更／廃止** [#7724](https://github.com/dotnet/extensions/pull/7724) — OpenAI Assistants API support を削除
  `OpenAIAssistantsChatClient`、関連 extension、public API baseline が削除されています。利用者は Assistants adapter への依存を外し、サポートされる Responses／Chat Completions ベースの統合へ移行してください。

## 主要な変更点

- **破壊的変更／廃止**: [PR #7724](https://github.com/dotnet/extensions/pull/7724) で、sunset された OpenAI Assistants API 向けの `OpenAIAssistantsChatClient` と関連 extension が public API から削除されました。
- OpenAI パッケージは [2.13.0 へ更新](https://github.com/dotnet/extensions/pull/7726)され、image option の暗黙的な null 変換を避ける修正も入りました。
- OpenAI SDK 更新を支援する repository skill が追加され、今後の依存更新手順が標準化されています。
- `brace-expansion` は修正版へ更新され、フロントエンド系の依存リスクが軽減されました。
- `AddHttpLatencyTelemetry` の stable 昇格案と、生成された `aichatweb` の `Guid` key 型不整合が新規に追跡されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7731 | Merge release/10.9 into main | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7731> |
| PR | #7732 | Update brace-expansion to patched versions | merged | wtgodbe | <https://github.com/dotnet/extensions/pull/7732> |
| PR | #7722 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7722> |
| PR | #7728 | Add skill for upgrading OpenAI | merged | jozkee | <https://github.com/dotnet/extensions/pull/7728> |
| PR | #7697 | Merge published release into release/10.9 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7697> |
| PR | #7724 | Remove OpenAI Assistants API support | merged | jozkee | <https://github.com/dotnet/extensions/pull/7724> |
| PR | #7726 | Update OpenAI package version to 2.13.0 | merged | jozkee | <https://github.com/dotnet/extensions/pull/7726> |
| PR | #7727 | OpenAI: Avoid null implicit conversions for image options | merged | jozkee | <https://github.com/dotnet/extensions/pull/7727> |
| PR | #7733 | Bump browserslist from 4.28.2 to 4.28.8 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7733> |
| PR | #7730 | Promote AddHttpLatencyTelemetry to stable | open | EasyL0ver | <https://github.com/dotnet/extensions/pull/7730> |
| Issue | #7734 | aichatweb template: generated project throws "generic key type is 'String', but the key property 'Key' has type 'Guid'" | open | prabh-62 | <https://github.com/dotnet/extensions/issues/7734> |
| Issue | #7729 | [API Proposal]: AddHttpLatencyTelemetry for incoming HTTP request logs | open | EasyL0ver | <https://github.com/dotnet/extensions/issues/7729> |
