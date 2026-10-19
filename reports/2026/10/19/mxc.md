# microsoft/mxc

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- SDK packages を 1.0.1 に更新しました (#1518)。
- IsoSession relay の stop-event handle 解放後アクセスを防ぎ、Windows session container で containerId 省略時に session 名を生成する修正がマージされました (#1504、#1514)。
- PSEC 1.0 上の ProcessContainer host-loopback 互換性を修正し、Seatbelt では `spawn-open` launch method を削除して system library の機能判定に置き換えました (#1490、#1511)。旧 launch method を指定していた利用者は設定を確認してください。
- Windows query process handle の公開 (#1524) と stdout truncation 対策 (#1520) はオープン中の提案で、まだ利用可能な変更ではありません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1518 | Update SDK packages to 1.0.1 | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1518> |
| PR | #1504 | Preventing IsoSession relay Ctrl Handler from accessing closed stop-event handle | merged | daamenik | <https://github.com/microsoft/mxc/pull/1504> |
| PR | #1514 | [WSLC] Generate session names when containerId is omitted | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1514> |
| PR | #1490 | Fix ProcessContainer host-loopback compatibility on PSEC 1.0 | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1490> |
| PR | #1511 | [Seatbelt] Remove the `spawn-open` launch method and replace probe with system-lib function check | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1511> |
| PR | #1524 | feat(sdk): expose retained Windows query process handles | open | vineethsai7 | <https://github.com/microsoft/mxc/pull/1524> |
| PR | #1520 | Guard more effectively against stdout truncation | open | daamenik | <https://github.com/microsoft/mxc/pull/1520> |
| PR | #1519 | Codify MXC agent and code-review guidance | open | bbonaby | <https://github.com/microsoft/mxc/pull/1519> |
| Issue | #1523 | Native PSEC launch compatibility with a downstream held-image literal-argv adapter | open | vineethsai7 | <https://github.com/microsoft/mxc/issues/1523> |
| Issue | #1522 | Rust SDK: native payload execution with literal argv | open | vineethsai7 | <https://github.com/microsoft/mxc/issues/1522> |
| Issue | #1521 | Rust SDK: expose an owned query-only process handle on Windows | open | vineethsai7 | <https://github.com/microsoft/mxc/issues/1521> |
| Issue | #1516 | Process Container denial capture fails on 26H1 with E_NOTIMPL | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1516> |
| Issue | #1517 | Support privacy-safe caller attribution and invocation correlation | open | nickwmsft-debug | <https://github.com/microsoft/mxc/issues/1517> |
| Issue | #1515 | [docs] Align README build commands with CONTRIBUTING.md | open | MuelNova | <https://github.com/microsoft/mxc/issues/1515> |
| Issue | #1485 | MXC 1.0 rejects host-loopback policies that worked in 0.8 on PSEC 1.0 hosts | closed | iceweasel-oai | <https://github.com/microsoft/mxc/issues/1485> |
| Issue | #1484 | [WSLC] One-shot without containerId fails: default session name "CLI" refused (WSLC_E_INVALID_SESSION_NAME, 0x80040608) | closed | laurentftech | <https://github.com/microsoft/mxc/issues/1484> |
| Issue | #1510 | [Seatbelt] Remove spawn_open launch method from code | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1510> |
