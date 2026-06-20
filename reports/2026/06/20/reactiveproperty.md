# runceel/ReactiveProperty

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 08:27:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定できる破壊的変更・セキュリティ修正はありませんが、R3 移行設計の新規 Issue は今後の大きな方向性に直結します。

## 主要な変更点

- [Issue#528](https://github.com/runceel/ReactiveProperty/issues/528) として、ReactiveProperty から R3 への移行を支援する Agent Skill と最小互換ライブラリ `ReactiveProperty.R3.Compatibility` の詳細設計が起票されました。
- この設計では、構造的な互換阻害要因を 7 項目に分解し、JSON ルール駆動の scan / classify / transform / validate パイプラインを整える方針が示されています。
- 直後に Copilot が ADR / skill 追加の draft PR [#529](https://github.com/runceel/ReactiveProperty/pull/529) を自動生成しましたが、約 45 分で unmerged close されており、今回は設計議論のみが残りました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 補足 |
| ---- | ---- | -------- | ---- | ---- |
| Issue | [#528](https://github.com/runceel/ReactiveProperty/issues/528) | R3移行支援: Migration Agent Skill と最小互換ライブラリの導入（詳細設計） | open | R3 移行戦略の詳細設計 |
| PR | [#529](https://github.com/runceel/ReactiveProperty/pull/529) | Add ADR documentation and ReactiveProperty agent skill | closed | draft のまま unmerged close |
