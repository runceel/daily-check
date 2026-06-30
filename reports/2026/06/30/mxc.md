# microsoft/mxc

対象期間: 2026-06-29 01:00:01 〜 2026-06-30 01:54:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 動きの小さい静かな期間で、テーマは **isolation_session** 関連に集中。マージは [#583](https://github.com/microsoft/mxc/pull/583)（isolation_session のテスト collateral を OS vpack にステージ）の 1 件のみ。
- オープン中の注目は、isolation_session のバックエンド/SDK を **IsolationSession Preview API** へ移行する [#592](https://github.com/microsoft/mxc/pull/592)、vpack にステージする PowerShell スクリプトへの署名追加 [#590](https://github.com/microsoft/mxc/pull/590)、依存 `hyperlight-unikraft` の v0.11.0 バンプ [#591](https://github.com/microsoft/mxc/pull/591)。
- 破壊的変更・セキュリティ・GA 等の重要項目は検出なし。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #583 | Stage isolation_session test collateral into the OS vpack | merged | bbonaby | <https://github.com/microsoft/mxc/pull/583> |
| PR | #592 | Migrate isolation_session backend + SDK to the IsolationSession Preview API | open | adpa-ms | <https://github.com/microsoft/mxc/pull/592> |
| PR | #591 | chore: bump hyperlight-unikraft to v0.11.0 (crates.io) | open | danbugs | <https://github.com/microsoft/mxc/pull/591> |
| PR | #590 | Sign isolation_session PowerShell scripts staged into the vpack | open | bbonaby | <https://github.com/microsoft/mxc/pull/590> |
