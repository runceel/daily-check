# microsoft/mxc

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 14 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 10 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 12 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#705](https://github.com/microsoft/mxc/pull/705) — Fix npm audit advisories and deprecated packages in Node projects （PR / merged / MGudgin）
  Node プロジェクトの利用者は npm audit の修正と deprecated package 対応を取り込み、残存する非推奨依存を確認してください。
- **GA 昇格** [#707](https://github.com/microsoft/mxc/pull/707) — Revert "Bring network wire schema to full GA spec" (PR676) （PR / merged / MGudgin）
  MXC のネットワーク wire schema を GA 仕様へ進める変更を取り消したため、スキーマ更新を追随する利用者は現行契約を再確認してください。
- **GA 昇格** [#655](https://github.com/microsoft/mxc/issues/655) — [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec （Issue / open / dhoehna）
  HTTP proxy 設定を `runtimeConfig.networkProxy` へ移す GA 仕様案であり、スキーマ利用者は移行時期と互換フィールドを確認してください。

## 主要な変更点

- **非推奨対応**として Node プロジェクトの npm audit advisories と deprecated packages が整理されました。
- ネットワーク wire schema の GA 準拠変更は一度リバートされ、HTTP proxy の配置を `runtimeConfig.networkProxy` に移す提案が継続中です。
- WSLC SDK 2.9.9 更新、SDK と WSL のバージョン不一致案内、ネットワークポリシー検証が進みました。
- Rust / C# SDK の状態対応、Bubblewrap / Seatbelt / LXC のネットワーク・テストカバレッジが拡充されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1055 | Exit the isolation-session operator drivers with the workload's exit code | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1055> |
| PR | #1044 | [LXC] Stop blaming host loopback for a LAN inbound refusal | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1044> |
| PR | #1048 |  Update the WSLC SDK to 2.9.9 | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1048> |
| PR | #1045 | [WSLC] Encapsulate backend errors in a typed enum for the Rust SDK | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1045> |
| PR | #1046 | [WSLC] Tell users to update MXC when their WSL outruns the pinned SDK | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1046> |
| PR | #1038 | [Bubblewrap] Define `any` as a protocol floor, not "all protocols" | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1038> |
| PR | #1027 | Add exact v0.8 contract and advance development to v0.9 | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1027> |
| PR | #1040 | Run the C# test suite in CI | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1040> |
| PR | #1037 | Upgrade the C# test suite to xUnit v3 and report skips as skips | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1037> |
| PR | #1028 | Keep non-actionable capture denials in verbose output | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1028> |
| PR | #1036 | [Bubblewrap] Fix the flaky pipeline test | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1036> |
| PR | #1031 | Add ProcessContainer authoring to Rust SDK | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1031> |
| PR | #1035 | Make the state-aware sandbox lifecycle usable from the C# SDK | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1035> |
| PR | #1026 | Build the C# SDK in CI and load the native unit its bindings came from | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1026> |
| PR | #1043 | [MXC] State-aware contract surface for schema 0.9.0-dev | closed | dhoehna | <https://github.com/microsoft/mxc/pull/1043> |
| PR | #862 | [WSLC] Honor state-aware portMappings and reject redundant one-shot host lists (Closes #824) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/862> |
| PR | #728 | Document the trust model and the outer-clamp design | closed | MGudgin | <https://github.com/microsoft/mxc/pull/728> |
| PR | #1054 | [LXC] Point the LXC network tests at CI-controlled peers | open | dhoehna | <https://github.com/microsoft/mxc/pull/1054> |
| PR | #1041 | Correctly handle no-network with no-proxy configuration. | open | dhoehna | <https://github.com/microsoft/mxc/pull/1041> |
| PR | #1056 | [Bubblewrap] Add streaming (spawn_sandbox) test coverage on Linux | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1056> |
| PR | #1052 | [Bubblewrap] Reject proxy with firewall enforcement, warn on unreachable IPv6 allows, and assert the v6 ingress chain | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1052> |
| PR | #1050 | Bring C# SDK up to parity with Rust SDK. | open | shschaefer | <https://github.com/microsoft/mxc/pull/1050> |
| PR | #1033 | [Seatbelt] Enforce hostLoopback, accept IPv6 loopback proxies, and consolidate network validation | open | theelliotm | <https://github.com/microsoft/mxc/pull/1033> |
| PR | #1051 | [Bubblewrap] Reuse the validated egress plan and pin IPv6/ICMP rendering | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1051> |
| PR | #1042 | [WSL] Fix network policy parity between one-shot and state-aware surfaces | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1042> |
| PR | #1030 | Add Apple Container samples and qualification | open | richiemsft | <https://github.com/microsoft/mxc/pull/1030> |
| PR | #1029 | Report Bubblewrap proxy-enforcement host support from getPlatformSupport | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1029> |
| Issue | #1053 | [Hyperlight] wxc-exec.exe statically imports winhvplatform.dll and fails to load with 0xC0000135 on hosts without WHP | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1053> |
| Issue | #1049 | [WSLC] Promote WSLC, move it out of experimental | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1049> |
| Issue | #1047 | [WSLc] SDK needs to be updated to 2.9.9.0 | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1047> |
| Issue | #1039 | [WSLc] WSL ver. 2.9.8.0 shows "WSLc runtime unavailable, missing SdkNeedsUpdate (0x4)" | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1039> |
| Issue | #1034 | Expose the state-aware sandbox lifecycle through the C# SDK | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1034> |
| Issue | #1032 | [Schema 0.8] Contradictory spec and parser semantics for an omitted network.ingress.hostLoopback | open | theelliotm | <https://github.com/microsoft/mxc/issues/1032> |
| Issue | #1025 | C# SDK loads a stale native library against freshly regenerated bindings | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1025> |
| Issue | #1024 | LXC: ingress.default rejection reports an incorrect host-loopback rationale | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1024> |
| Issue | #667 | [WSLC] Remove vendored .nupkg fallback once MxcDependencies feed is proven in all build environment | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/667> |
| Issue | #951 | This repo is missing important files | closed | microsoft-github-policy-service[bot] | <https://github.com/microsoft/mxc/issues/951> |
| Issue | #950 | This repo is missing a LICENSE file | closed | microsoft-github-policy-service[bot] | <https://github.com/microsoft/mxc/issues/950> |
| Issue | #888 | Expose ProcessContainer configuration in the Rust SDK | closed | bbonaby | <https://github.com/microsoft/mxc/issues/888> |
| Issue | #794 | [WSLC] Encapsulate ScriptResponse errors in a typed enum for the Rust SDK | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/794> |
| Issue | #980 | Bubblewrap: `protocol: any` with a port narrows to TCP/UDP, failing open for deny rules | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/980> |
| Issue | #995 | [Bubblewrap] Proxy end-to-end test flakes on ARM64 CI: the proxy-path assertion depends on reaching api.github.com | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/995> |
