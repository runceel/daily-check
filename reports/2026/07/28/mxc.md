# microsoft/mxc

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **GA 昇格** [#676](https://github.com/microsoft/mxc/pull/676) — Bring network wire schema to full GA spec (wire.rs + config fixtures only) （PR / open / dhoehna）
  network wire schema の利用者は、GA 仕様への移行前に wire.rs と設定 fixture の互換性を確認し、公開後のスキーマ固定を前提にクライアントを更新してください。

## 主要な変更点

- network wire schema を完全な GA 仕様へ合わせる PR がオープンしており、wire.rs と設定 fixture の互換性確認が必要です。
- WSLC SDK の bindgen FFI、Windows Learning Mode trace API、denial capture 設定がマージされました。
- Windows Sandbox の状態認識型 daemon と lifecycle が強化され、IsolationSession の不要な stop/deprovision 設定も整理されています。
- Rust SDK で WSLC backend を利用可能にする変更と、mxc-sdk の crates.io リリース自動化が継続中です。
- telemetry consent のリリースビルド検証と unsafe FFI 集約が今後の確認事項です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #669 | [WSLC] Generate WSLC SDK FFI bindings with bindgen | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/669> |
| PR | #661 | Consume the Windows Learning Mode trace API: FFI loader + capture lifecycle | merged | richiemsft | <https://github.com/microsoft/mxc/pull/661> |
| PR | #663 | Add processContainer.captureDenials config for Windows denial capture | merged | richiemsft | <https://github.com/microsoft/mxc/pull/663> |
| PR | #658 | Harden the Windows Sandbox state-aware daemon and lifecycle | merged | MGudgin | <https://github.com/microsoft/mxc/pull/658> |
| PR | #683 | Stop the dev schema advertising a stop/deprovision config for IsolationSession | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/683> |
| PR | #685 | [WSLC] Support network.proxy via cooperative env vars | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/685> |
| PR | #647 | Enable one-click crates.io release for mxc-sdk | closed | dhoehna | <https://github.com/microsoft/mxc/pull/647> |
| PR | #687 | Make WSLC an available backend on the Rust SDK | open | caarlos0 | <https://github.com/microsoft/mxc/pull/687> |
| PR | #689 | Enable one-click crates.io release for mxc-sdk (ESRP) [in-repo, supersedes #647] | open | dhoehna | <https://github.com/microsoft/mxc/pull/689> |
| PR | #688 | Seatbelt: fall back to policy-allowed cwd to avoid getcwd warnings | open | richiemsft | <https://github.com/microsoft/mxc/pull/688> |
| Issue | #691 | Telemetry consent path has no automated coverage in release builds | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/691> |
| Issue | #690 | Share the telemetry-consent test harness between wxc_common and mxc_ffi | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/690> |
| Issue | #686 | [WSLC] Consolidate unsafe FFI into a single auditable module with safe wrappers | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/686> |
| Issue | #684 | [WSLC] Automate the WSLc SDK-bump runbook via an on-demand CI workflow | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/684> |
