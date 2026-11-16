# dotnet/extensions

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- HTTP server latency telemetry を安定 API として扱う変更が提案されています（[#7898](https://github.com/dotnet/extensions/pull/7898)、オープン中）。
- route template の brace エスケープを含むケースで、ルートパラメーターの redaction を修正する提案があります（[#7897](https://github.com/dotnet/extensions/pull/7897)）。
- Linux の ResourceMonitoring における割り当て削減が提案されています（[#7896](https://github.com/dotnet/extensions/pull/7896)）。
- OpenAI 応答の `response.incomplete` に利用量・終了理由を、streaming chat completion に拒否情報を反映する変更が提案されています（[#7895](https://github.com/dotnet/extensions/pull/7895)、[#7894](https://github.com/dotnet/extensions/pull/7894)）。
- いずれも期間内はオープン PR で、マージ済み変更はありません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7898 | Mark AddHttpServerLatencyTelemetry as stable | open | EasyL0ver | <https://github.com/dotnet/extensions/pull/7898> |
| PR | #7897 | Fix route parameter redaction for route templates with escaped braces | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7897> |
| PR | #7896 | Reduce allocations in ResourceMonitoring on Linux | open | martincostello | <https://github.com/dotnet/extensions/pull/7896> |
| PR | #7895 | Surface usage and finish reason on response.incomplete | open | jaeminbird | <https://github.com/dotnet/extensions/pull/7895> |
| PR | #7894 | Surface refusals in streaming chat completions | open | jaeminbird | <https://github.com/dotnet/extensions/pull/7894> |
