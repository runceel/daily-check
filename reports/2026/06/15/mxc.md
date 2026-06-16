# microsoft/mxc

対象期間: 2026-06-12 02:03:55 〜 2026-06-15 00:59:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内はマージ済み PR 6 件、オープン PR 3 件で、重要度の高い自動判定項目はありませんでした。
- スキーマ / バージョニングでは [#523](https://github.com/microsoft/mxc/pull/523) で 0.7.0-alpha stable を固定し 0.8.0-dev を開き、[#509](https://github.com/microsoft/mxc/pull/509) で未知の top-level config fields を拒否する段階的な厳格化が進んでいます。
- CI では 1ES pipeline entry point の分割 [#522](https://github.com/microsoft/mxc/pull/522)、ADO PR pipeline の GHA mirror [#510](https://github.com/microsoft/mxc/pull/510)、Rust toolchain sync check 修正 [#529](https://github.com/microsoft/mxc/pull/529) が中心です。
- 実行環境まわりでは offline nanvix binary prefetching 用の `NANVIX_BIN` 追加 [#519](https://github.com/microsoft/mxc/pull/519) と、Hyperlight / KVM overlap 関連の修正 PR [#528](https://github.com/microsoft/mxc/pull/528) が注目です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #526 | ci: restore templateContext.rust so 1ES Setup/Restore work on the official build | merged | bbonaby | <https://github.com/microsoft/mxc/pull/526> |
| PR | #523 | schema: freeze 0.7.0-alpha stable, open 0.8.0-dev, bump product to 0.7.0 | merged | MGudgin | <https://github.com/microsoft/mxc/pull/523> |
| PR | #522 | ci: split official and unofficial 1ES pipeline entry points | merged | bbonaby | <https://github.com/microsoft/mxc/pull/522> |
| PR | #519 | Add NANVIX_BIN env var for offline nanvix binary prefetching | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/519> |
| PR | #510 | ci(gha): mirror ADO PR pipeline as split, reusable GHA workflows | merged | bbonaby | <https://github.com/microsoft/mxc/pull/510> |
| PR | #509 | versioning phase 1: reject unknown top-level config fields | merged | MGudgin | <https://github.com/microsoft/mxc/pull/509> |
| PR | #529 | ci: fix versioning Rust toolchain sync check for new template layout | open | bbonaby | <https://github.com/microsoft/mxc/pull/529> |
| PR | #528 | fix: downgrade hyperlight-unikraft to v0.8.0 to fix KVM overlap (#525) | open | jibin7jose | <https://github.com/microsoft/mxc/pull/528> |
| PR | #524 | feat: mxc lib crate | open | caarlos0 | <https://github.com/microsoft/mxc/pull/524> |
| Issue | #527 | lxc docs mention removed `"script"` toplevel setting | open | Skyb0rg007 | <https://github.com/microsoft/mxc/issues/527> |
| Issue | #525 | `lxc-exec --setup-hyperlight` fails | open | Skyb0rg007 | <https://github.com/microsoft/mxc/issues/525> |
| Issue | #488 | Enable nanvix binary prefetching | closed | Skyb0rg007 | <https://github.com/microsoft/mxc/issues/488> |
