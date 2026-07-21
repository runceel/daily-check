# microsoft/mxc

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 6 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

- **⚠ セキュリティ** [#650](https://github.com/microsoft/mxc/pull/650) — WSLC で親 mount 配下の `deniedPaths` を実際には遮断できない構成を policy mapping 時に拒否し、保護対象 subtree が露出する silent failure を防ぎました。
- **⚠ セキュリティ** [#630](https://github.com/microsoft/mxc/pull/630) — LXC の denied path を host 側の実体で判定し、symlink を追跡せずに mask するとともに、競合 policy を most-specific-path-wins で解決します。

## 主要な変更点

- [#651](https://github.com/microsoft/mxc/pull/651) は C ABI と .NET SDK に stdin / stdout / stderr の live streaming、process wait / kill、および provision から deprovision までの state-aware lifecycle を追加しました。
- Windows Sandbox では host daemon を使う state-aware lifecycle [#578](https://github.com/microsoft/mxc/pull/578) と、TypeScript SDK から `wsb:` sandbox を操作する型付き API [#579](https://github.com/microsoft/mxc/pull/579) が揃い、複数 exec で同一 VM を維持できるようになりました。
- [#650](https://github.com/microsoft/mxc/pull/650) は WSLC で mask 不能な nested `deniedPaths` 構成を拒否し、親 mount 経由で拒否対象が露出する policy gap を閉じました。
- [#630](https://github.com/microsoft/mxc/pull/630) は LXC denied-path masking と policy precedence を修正し、file / directory / symlink の誤分類や広い deny が狭い allow を上書きする問題を防ぎます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #651 | Add streaming and state-aware lifecycle to the C ABI and .NET SDK | merged | shschaefer | <https://github.com/microsoft/mxc/pull/651> |
| PR | #650 | [WSLC] Reject nested deniedPaths overlaps in WSLC policy mapping | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/650> |
| PR | #630 | [LXC] Address file system policy gaps | merged | dhoehna | <https://github.com/microsoft/mxc/pull/630> |
| PR | #579 | Add SDK state-aware support for the Windows Sandbox backend (Phase 3) | merged | MGudgin | <https://github.com/microsoft/mxc/pull/579> |
| PR | #578 | Add the Windows Sandbox state-aware lifecycle + host daemon (Phase 2) | merged | MGudgin | <https://github.com/microsoft/mxc/pull/578> |
| PR | #664 | [WSLC] Consume WSLC SDK from MxcDependencies feed (2.9.3) | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/664> |
| PR | #663 | Add processContainer.captureDenials config for Windows denial capture | open | richiemsft | <https://github.com/microsoft/mxc/pull/663> |
| PR | #662 | [LXC] Fix denied-symlink and most-specific masking that aborted the container | open | dhoehna | <https://github.com/microsoft/mxc/pull/662> |
| PR | #661 | Consume the Windows Learning Mode trace API: FFI loader + capture lifecycle | open | richiemsft | <https://github.com/microsoft/mxc/pull/661> |
| PR | #659 | fix(seatbelt): widen per-user Darwin temp grant to its container | open | caarlos0 | <https://github.com/microsoft/mxc/pull/659> |
| PR | #658 | Harden the Windows Sandbox state-aware daemon (Phase 2 follow-ups) | open | MGudgin | <https://github.com/microsoft/mxc/pull/658> |
| Issue | #660 | Cross platform process support | open | ohault | <https://github.com/microsoft/mxc/issues/660> |
| Issue | #626 | SDK should avoid passing the full sandbox config envelope through process argv | closed | paulcam206 | <https://github.com/microsoft/mxc/issues/626> |
