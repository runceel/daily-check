# dotnet/extensions

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Azure storage result store / response cache でパスセグメント検証が追加され、不正なパス入力への防御が強化されました。
- `dotnet-coverage` を 18.10.0 へ更新し、Arcade 由来の依存関係も同期されています。
- VSIX の公開処理が publish task ベースに変更され、配布手順が整理されました。
- `ReasoningEffort.Max` の API 提案と実装 PR、OSMF 後の Polly 方針に関する議論が継続中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7718 | Validate path segments in Azure storage result store and response cache | merged | Lroca88 | <https://github.com/dotnet/extensions/pull/7718> |
| PR | #7716 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7716> |
| PR | #7708 | Bump dotnet-coverage from 18.9.0 to 18.10.0 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7708> |
| PR | #7711 | Publish VSIX using publish task instead of output | merged | peterwald | <https://github.com/dotnet/extensions/pull/7711> |
| PR | #7717 | Add ReasoningEffort.Max | open | AkiKurisu | <https://github.com/dotnet/extensions/pull/7717> |
| Issue | #7719 | Clarify the post-OSMF Polly strategy for Microsoft.Extensions.Resilience | open | Arithmomaniac | <https://github.com/dotnet/extensions/issues/7719> |
| Issue | #7715 | [API Proposal]: Add ReasoningEffort.Max | open | AkiKurisu | <https://github.com/dotnet/extensions/issues/7715> |
