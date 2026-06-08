# dotnet/extensions

対象期間: 2026-06-08 01:26:03 〜 2026-06-08 23:38:56 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- OpenAI SDK v2.11.0 アップグレード — パッケージを 2.10.0 から 2.11.0 へ更新し、リリースと release/10.7 ブランチの両方で対応 (#7544、#7545)。
- ToolJson スキーマ修正 — オブジェクト型の additionalProperties を受け入れるよう改善し、tool schema validation の JSON 例外を解決 (#7546、#7540)。
- F# テンプレート MCP 対応 —新規 Model Context Protocol (MCP) テンプレートを F# でも利用可能に (#7548)。
- 既知の制限事項 — ISpeechToTextClient が audio FileName の指定をサポートしていない問題が報告されています (#7543)。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7546 | Fix ToolJson.AdditionalProperties to accept sub-schema objects | merged | jozkee | <https://github.com/dotnet/extensions/pull/7546> |
| PR | #7545 | [release/10.7] Upgrade OpenAI package from 2.10.0 to 2.11.0 (#7544) | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7545> |
| PR | #7544 | Upgrade OpenAI package from 2.10.0 to 2.11.0 | merged | jozkee | <https://github.com/dotnet/extensions/pull/7544> |
| PR | #7510 | React to OpenAI SDK 2.10.0-alpha.706: assembly split, fix streaming MessageID on function calls | closed | Copilot | <https://github.com/dotnet/extensions/pull/7510> |
| PR | #7548 | Added FSharp Templates for MCP | open | licon4812 | <https://github.com/dotnet/extensions/pull/7548> |
| PR | #7547 | [release/10.7] Fix ToolJson.AdditionalProperties to accept sub-schema objects | open | github-actions[bot] | <https://github.com/dotnet/extensions/pull/7547> |
| Issue | #7543 | ISpeechToTextClient does not allow to specify the audio FileName | open | marcominerva | <https://github.com/dotnet/extensions/issues/7543> |
| Issue | #7540 | [Microsoft.Extensions.AI.OpenAI] Tool schema with object-valued additionalProperties throws JsonException (ToolJson.AdditionalProperties typed as bool) | closed | scottt732 | <https://github.com/dotnet/extensions/issues/7540> |
| Issue | #7509 | React to OpenAI upcoming release 2.10.1 or 2.11.0 | closed | ericstj | <https://github.com/dotnet/extensions/issues/7509> |
