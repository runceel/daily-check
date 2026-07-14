# dotnet/extensions

対象期間: 2026-07-10 00:28:22 〜 2026-07-14 01:26:38 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- `ImageGeneratingChatClient` が直前のコンテンツを重複し、後続コンテンツを落とす問題が修正されました。
- `dotnet/extensions` は 10.9.0 へ更新され、release ブランチにも同じ修正が反映されています。
- キャッシュ書き込みトークンの strongly typed `UsageDetails` 追加や、`MarkItDownMcpReader` の URI・エラー処理改善が検討されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7624 | [release/10.8] Fix ImageGeneratingChatClient duplicating preceding content and dropping following content | merged | github-actions[bot] | <https://github.com/dotnet/extensions/pull/7624> |
| PR | #7623 | Update version to 10.9.0 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7623> |
| PR | #7622 | Fix ImageGeneratingChatClient duplicating preceding content and dropping following content | merged | Copilot | <https://github.com/dotnet/extensions/pull/7622> |
| PR | #7621 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7621> |
| Issue | #7625 | Add strongly-typed UsageDetails for cache write tokens | open | stephentoub | <https://github.com/dotnet/extensions/issues/7625> |
| Issue | #7620 | [Microsoft.Extensions.AI] ImageGeneratingChatClient duplicates preceding contents and drops following contents | closed | JamesHuang1018 | <https://github.com/dotnet/extensions/issues/7620> |
| Issue | #7619 | [API Proposal]: Allow MarkItDownMcpReader to send `file:` / `http:` URIs instead of inlining data | open | mldisibio | <https://github.com/dotnet/extensions/issues/7619> |
| Issue | #7618 | `MarkItDownMcpReader` ignores tool IsError (returns error text as content)` | open | mldisibio | <https://github.com/dotnet/extensions/issues/7618> |
| Issue | #7596 | When will `ISpeechToTextClient` stop being experimental? | closed | aradalvand | <https://github.com/dotnet/extensions/issues/7596> |
