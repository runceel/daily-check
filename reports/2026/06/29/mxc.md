# microsoft/mxc

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 18 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Phase 2B/2C の wire model と parser 周りの実装が進み、列挙変換や SDK の wire type 生成の基盤整理が続いています。
- Filesystem policy の検証や sandbox backend のライフサイクル改善が入り、実行環境の安全性と状態管理に関する挙動が強化されています。
- オープンな PR では Learning Mode の段階的実装と Windows Sandbox / Mac x64 対応が主要テーマで、今後の実装分岐が続く見込みです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #574 | Phase 2B follow-up: use From<T> for wire->domain enum conversions | merged | MGudgin | <https://github.com/microsoft/mxc/pull/574> |
| PR | #569 | fix(appcontainer): suppress empty console window for piped sandbox children | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/569> |
| PR | #566 | Phase 2B: deserialize the parser into the wire model | merged | MGudgin | <https://github.com/microsoft/mxc/pull/566> |
| PR | #559 | Phase 2C: generate the SDK wire types from a Rust emitter | merged | MGudgin | <https://github.com/microsoft/mxc/pull/559> |
| PR | #551 | Add filesystem policy path validation (same-path conflict, existence check) | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/551> |
| PR | #589 | Permissive Learning Mode 6/6 Testing  | open | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/589> |
| PR | #588 | Permissive Learning Mode 5/6 UI Policy | open | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/588> |
| PR | #587 | Permissive Learning Mode 4/6 Capability | open | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/587> |
| PR | #586 | Permissive Learning Mode 3/6 Config Generation | open | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/586> |
| PR | #585 | Permissive Learning Mode 2/6 filesystem extraction | open | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/585> |
| PR | #584 | Permissive Learning Mode 1/6 audit skeleton | open | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/584> |
| PR | #583 | Stage isolation_session test collateral into the OS vpack | open | bbonaby | <https://github.com/microsoft/mxc/pull/583> |
| PR | #582 | Phase 3c: formalize the three version axes and the negotiation flow | open | MGudgin | <https://github.com/microsoft/mxc/pull/582> |
| PR | #581 | Phase 3b: raise the schema floor to 0.6.0-alpha, retire 0.4.0/0.5.0 | open | MGudgin | <https://github.com/microsoft/mxc/pull/581> |
| PR | #580 | Phase 3a: decouple ProcessContainer backend selection from schema version | open | MGudgin | <https://github.com/microsoft/mxc/pull/580> |
| PR | #579 | Add SDK state-aware support for the Windows Sandbox backend (Phase 3) | open | MGudgin | <https://github.com/microsoft/mxc/pull/579> |
| PR | #578 | Add the Windows Sandbox state-aware lifecycle + host daemon (Phase 2) | open | MGudgin | <https://github.com/microsoft/mxc/pull/578> |
| PR | #577 | Rewrite the Windows Sandbox one-shot path onto an authenticated protocol (Phase 1) | open | MGudgin | <https://github.com/microsoft/mxc/pull/577> |
| PR | #576 | Add shared plumbing for the Windows Sandbox rewrite (Phase 0) | open | MGudgin | <https://github.com/microsoft/mxc/pull/576> |
| PR | #575 | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | open | MGudgin | <https://github.com/microsoft/mxc/pull/575> |
| PR | #573 | refactor: idiomatic cleanups in wxc_common and the AppContainer/WSLC/LXC backends | open | MGudgin | <https://github.com/microsoft/mxc/pull/573> |
| PR | #570 | fix(backends): stop swallowing WinRT/decode failures that corrupt sandbox behavior | open | MGudgin | <https://github.com/microsoft/mxc/pull/570> |
| PR | #568 | Phase 2.5: add state-aware SDK wire-type conformance | open | MGudgin | <https://github.com/microsoft/mxc/pull/568> |
| Issue | #572 | Tier 3 (AppContainer + DACL): repeated full-subtree ACE apply/restore makes large read-only paths unusable on downlevel builds | open | xgdyp | <https://github.com/microsoft/mxc/issues/572> |
| Issue | #571 | Add support for Mac x64 | open | jiec-msft | <https://github.com/microsoft/mxc/issues/571> |
