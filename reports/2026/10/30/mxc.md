# microsoft/mxc

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Bubblewrap は `PATH` にない場合も標準システムディレクトリからホストツールを検出し、拒否対象ディレクトリの mask を read-only にしました（[#1578](https://github.com/microsoft/mxc/pull/1578)、[#1602](https://github.com/microsoft/mxc/pull/1602)）。
- Bubblewrap 起動時の冗長な namespace probe を避ける変更が PR / Issue で継続中です（[#1618](https://github.com/microsoft/mxc/pull/1618)、[#1617](https://github.com/microsoft/mxc/issues/1617)）。
- .NET の captured execution timeout 後の cleanup を修正しました（[#1613](https://github.com/microsoft/mxc/pull/1613)）。
- `zip` 依存を 9.0.5 に更新し、Rustdoc のリンク修正もマージされました（[#1612](https://github.com/microsoft/mxc/pull/1612)、[#1616](https://github.com/microsoft/mxc/pull/1616)）。
- WSLC の stdin flood 時に出力欠落を警告する提案と、Windows 365 for Agents backend の設計議論が進行中です（[#1620](https://github.com/microsoft/mxc/pull/1620)、[#1619](https://github.com/microsoft/mxc/pull/1619)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1578 | [Bubblewrap] Find host tools in standard system directories when PATH omits them | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1578> |
| PR | #1602 | fix(bubblewrap): make denied directory masks read-only | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1602> |
| PR | #1613 | Fix .NET captured execution timeout cleanup | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1613> |
| PR | #1616 | Fix stale and inaccessible rustdoc links | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1616> |
| PR | #1612 | chore(deps): bump zip from 2.4.2 to 9.0.5 in /src | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1612> |
| PR | #1614 | docs: propose W365A integration plan | closed | tbyfield | <https://github.com/microsoft/mxc/pull/1614> |
| PR | #1620 | [WSLC] Always warn when a stdin flood may have lost a command's output | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1620> |
| PR | #1619 | docs: propose Windows 365 for Agents backend design | open | tbyfield | <https://github.com/microsoft/mxc/pull/1619> |
| PR | #1618 | [Bubblewrap] Avoid redundant namespace probe on launch | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1618> |
| Issue | #1617 | [Bubblewrap] Avoid redundant namespace allocation during launch validation | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1617> |
| Issue | #1545 | [Bubblewrap] Resolve required sandbox tools using inherited PATH plus standard system-directory fallbacks | closed | dileepyavan | <https://github.com/microsoft/mxc/issues/1545> |
