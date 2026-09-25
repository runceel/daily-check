# microsoft/mxc

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1233](https://github.com/microsoft/mxc/issues/1233) — ProcessContainer: legacy network.proxy + deniedPaths falls back to Tier 3 and fails on WRITE_DAC （Issue / closed / caarlos0）
legacy `network.proxy` と `deniedPaths` を併用する ProcessContainer の権限・隔離動作に関するクローズ済み Issue です。該当設定を使う利用者は修正が含まれるリリースを確認してください。

## 主要な変更点

- ProcessContainer で legacy `network.proxy` と `deniedPaths` を併用した際の Tier 3 fallback / `WRITE_DAC` 問題が報告され、Issue #1233 はクローズされました。該当構成では修正リリースを確認してください。
- Hyperlight backend が `hyperlight-unikraft` 0.14.1 に更新され、選択可能な guest runtime が追加されました (#1259)。
- stable backend と experimental module を分離し、v1 の versioning 方針・SDK major target の整理が進んでいます (#1264、#1227)。
- CI では macOS 27 nightly と Process Containers / Isolation Session の ARM64 nightly test が追加されました。
- 新規 Issue では LXC/Bubblewrap の CI ネットワーク障害、SDK 診断コードの import 時副作用、sandbox の二重作成などが報告されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1267 | [CI] Add MacOS 27 to nightly testing | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1267> |
| PR | #1266 | [IsolationSession] Make every API call from a thread of its own | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1266> |
| PR | #1241 | [CI] Add nightly ARM64 tests for Process Containers and Isolation Session  | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1241> |
| PR | #1264 | Separate stable backends from experimental modules | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1264> |
| PR | #1244 | [WSLC] Document the native runtime files for Rust SDK consumers | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1244> |
| PR | #1227 | Clarify v1 versioning direction | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1227> |
| PR | #1259 | hyperlight: move to hyperlight-unikraft 0.14.1 and add selectable guest runtimes | merged | danbugs | <https://github.com/microsoft/mxc/pull/1259> |
| PR | #1042 | [WSLC] Honor portMappings on the state-aware surface and reject unenforceable host lists | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1042> |
| PR | #1253 | Enforce target-aware working directories | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1253> |
| PR | #1160 | feat(bwrap): add filesystem preflight diagnostics | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1160> |
| PR | #1268 | [WSLC] Honor inheritDefaultEnv on 0.9 | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1268> |
| PR | #1272 | Update seatbelt-backend.md to reflect 0.9 being cut | open | theelliotm | <https://github.com/microsoft/mxc/pull/1272> |
| PR | #1270 | Publish exact 1.0 and open 1.1 development | open | MGudgin | <https://github.com/microsoft/mxc/pull/1270> |
| PR | #1271 | Make v1 SDK policy version-free | open | MGudgin | <https://github.com/microsoft/mxc/pull/1271> |
| PR | #1269 | Add canonical SDK major targets | open | MGudgin | <https://github.com/microsoft/mxc/pull/1269> |
| Issue | #1274 | LXC: Network tests in CI fail due to not receiving an IPv4 address | open | theelliotm | <https://github.com/microsoft/mxc/issues/1274> |
| Issue | #1273 | Bubblewrap: RHEL test failure caused by "missing IP Tables Binary" | open | theelliotm | <https://github.com/microsoft/mxc/issues/1273> |
| Issue | #1265 | mxc-sdk: diagnostic.js runs a PATH-resolved `whoami` at import time, even with diagnostics off | open | Ninozzz95 | <https://github.com/microsoft/mxc/issues/1265> |
| Issue | #1263 | BaseContainer creates a sandbox before the intended sandbox (even when probing) | open | jsidewhite | <https://github.com/microsoft/mxc/issues/1263> |
| Issue | #1262 | Support container-scoped CA roots for BaseContainer proxy workloads | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1262> |
| Issue | #1261 | processcontainer: egress deny + hostLoopback deny hangs asyncio servers — intra-container loopback (socketpair) is blocked | open | nitinkothwal | <https://github.com/microsoft/mxc/issues/1261> |
| Issue | #1260 | processcontainer: support device-class capabilities (e.g. webcam) — capability strings are always hashed via DeriveCapabilitySidsFromName | open | nitinkothwal | <https://github.com/microsoft/mxc/issues/1260> |
| Issue | #1258 | [WSLC] [BLOCKED ON WSLCSDK] State-aware daemon should expose native STDIO handles | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1258> |
| Issue | #1233 | ProcessContainer: legacy network.proxy + deniedPaths falls back to Tier 3 and fails on WRITE_DAC | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/1233> |
