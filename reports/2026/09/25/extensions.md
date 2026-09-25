# dotnet/extensions

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 5 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- OpenAI SDK を 2.14.0 に更新する PR #7761 がマージされ、2.13.0 で報告された不具合への対応が取り込まれました。
- npm feed の障害調査を支援する contributor 向け skill が追加されました (#7782)。
- ログバッファで logging scope を保持する選択肢や、ASP.NET Core 外から `PerRequestLogBuffer` を実装しやすくする要望が新規 Issue として起票されています。
- 期間内に破壊的変更・セキュリティ修正・非推奨・GA の告知はありませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7782 | Build: Add npm feed failure investigation skill | merged | jozkee | <https://github.com/dotnet/extensions/pull/7782> |
| PR | #7761 | Upgrade OpenAI SDK to 2.14.0 | merged | zxyao145 | <https://github.com/dotnet/extensions/pull/7761> |
| Issue | #7781 | Optionally preserve logging scopes in buffered records | open | Dreamescaper | <https://github.com/dotnet/extensions/issues/7781> |
| Issue | #7780 | Make it easier to implement PerRequestLogBuffer outside ASP.NET Core | open | Dreamescaper | <https://github.com/dotnet/extensions/issues/7780> |
| Issue | #7760 | Request to upgrade OpenAI library to 2.14.0 to fix bugs in OpenAI 2.13.0 | closed | zxyao145 | <https://github.com/dotnet/extensions/issues/7760> |
| Issue | #7664 | [HybridCache] [Behavior Proposal] Allow Options from GetOrCreateAsync to not set "null" in cache | closed | tebeco | <https://github.com/dotnet/extensions/issues/7664> |
| Issue | #6479 | [HybridCache] [Question] Serialization / Deserialization does not behave like in EF Core | closed | Y-Sari | <https://github.com/dotnet/extensions/issues/6479> |
| Issue | #6527 | HybridCache handling Newtonsoft types | closed | mlankamp | <https://github.com/dotnet/extensions/issues/6527> |
| Issue | #5685 | HybridCache returning null when using Poly.Outcome return type | closed | tivik7 | <https://github.com/dotnet/extensions/issues/5685> |
