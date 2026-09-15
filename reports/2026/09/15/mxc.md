# microsoft/mxc

対象期間: 2026-09-14 03:34:25 〜 2026-09-15 00:08:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 9 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 26 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#732](https://github.com/microsoft/mxc/pull/732) — Block breaking changes to the dev schema at pull-request time （PR / closed / MGudgin）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。

## 主要な変更点

- Process containment の回帰テストが追加され、環境変数ブロック、MSIX packaged launch、PATH 解決、captureDenials の挙動が検証されています。
- ProcessContainer の probe capability と IsolationSession のネットワーク同意が公開され、バックエンド能力の判定が明確になりました。
- 開発スキーマの breaking change を PR 時点で防止する仕組みが重要な品質ゲートとして確認されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1154 | Regression tests [process containment]: Issue 1102 - Environment block specifications | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1154> |
| PR | #1158 | Regression tests [process containment]: Issue 1130 - Environment block needs SystemRoot + LOCALAPPDATA | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1158> |
| PR | #1149 | Regression tests [process containment]: Verify Issue 473 - Packaged Launch verification | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1149> |
| PR | #1070 | Fix captureDenials probe parity | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1070> |
| PR | #1159 | [CI] Fix stale pre-0.8 directional rejection assertions | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1159> |
| PR | #1151 | Expose ProcessContainer probe capabilities | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1151> |
| PR | #1133 | Add explicit IsolationSession network acknowledgment | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1133> |
| PR | #1029 | [Bubblewrap] Report proxy-enforcement host support from getPlatformSupport | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1029> |
| PR | #1123 | Use typed payloads for state-aware dispatch | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1123> |
| PR | #1155 | Package mxc_ffi with Node artifacts | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1155> |
| PR | #1157 | Add Node mxc_ffi library loader | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1157> |
| PR | #1156 | Add Koffi to the Node SDK | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1156> |
| PR | #1150 | Add exact contract publication tooling | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1150> |
| PR | #1163 | Feature [process containment]: Enumerate FS config (Issue 1162) | open | jsidewhite | <https://github.com/microsoft/mxc/pull/1163> |
| PR | #1160 | feat(bwrap): add filesystem preflight diagnostics | open | MGudgin | <https://github.com/microsoft/mxc/pull/1160> |
| PR | #1161 | Regression tests [process containment]: Issue 785 - Probe 'SUCCESS' but Run 'FAIL' (captureDenials) | open | jsidewhite | <https://github.com/microsoft/mxc/pull/1161> |
| Issue | #1162 | Add BaseContainer support for PSEC fs_enumerate | open | jsidewhite | <https://github.com/microsoft/mxc/issues/1162> |
| Issue | #1153 | Default PATH behavior is inconsistent across Linux and macOS backends | open | jsidewhite | <https://github.com/microsoft/mxc/issues/1153> |
| Issue | #1152 | [Bubblewrap] Report host-loopback support as a backend capability from the probe API | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1152> |
| Issue | #1102 | Default PATH is inconsistent across containment backends - the same config resolves different commands | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1102> |
| Issue | #1130 | Windows SBOX: launch error 203 and explicit-environment fallback observability (SDK 0.8.0) | closed | JrSI86 | <https://github.com/microsoft/mxc/issues/1130> |
| Issue | #473 | MSIX Packaged Apps do not launch within MXC process isolation | closed | kanismohammed | <https://github.com/microsoft/mxc/issues/473> |
| Issue | #825 | PowerShell provider location differs from the process working directory in an MXC sandbox | closed | torumakabe | <https://github.com/microsoft/mxc/issues/825> |
| Issue | #1109 | BaseContainer: granted user-profile path fails unless volume root is also granted | closed | shanselman | <https://github.com/microsoft/mxc/issues/1109> |
| Issue | #611 | [Seatbelt] If the requested cwd is not allowed by policy, start the process from a sandbox-allowed fallback directory | closed | SLdragon | <https://github.com/microsoft/mxc/issues/611> |
| Issue | #785 | wxc-exec --probe ignores captureDenials, reporting a launchable tier for runs that fail | closed | MGudgin | <https://github.com/microsoft/mxc/issues/785> |
| Issue | #936 | [Bubblewrap] Proxy-only egress does not restrict non-IP socket families (AF_VSOCK) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/936> |
| Issue | #512 | Unnecessary platform binaries are shipped inside @microsoft/mxc-sdk | closed | dileepyavan | <https://github.com/microsoft/mxc/issues/512> |
| Issue | #917 | LXC public errors and comments reference internal AB# work items a public reader cannot open | closed | dhoehna | <https://github.com/microsoft/mxc/issues/917> |
| Issue | #903 | [LXC] Test coverage gaps: | closed | dhoehna | <https://github.com/microsoft/mxc/issues/903> |
| Issue | #901 | [SDK] Type and schema surfaces disagree with what the engine accepts and enforces | closed | dhoehna | <https://github.com/microsoft/mxc/issues/901> |
| Issue | #921 | LXC state-aware exec does not apply the cooperative proxy environment | closed | dhoehna | <https://github.com/microsoft/mxc/issues/921> |
| Issue | #920 | LXC returns an exec timeout as a backend error rather than an execution outcome | closed | dhoehna | <https://github.com/microsoft/mxc/issues/920> |
| Issue | #899 | [LXC] State-aware lifecycle: provision and adopt races, config and mount rewrite | closed | dhoehna | <https://github.com/microsoft/mxc/issues/899> |
| Issue | #900 | [LXC] Exec: streaming, timeouts, process lifetime, and exec identity | closed | dhoehna | <https://github.com/microsoft/mxc/issues/900> |
| Issue | #918 | LXC signal-time teardown strands the FORWARD return-path ACCEPT rules | closed | dhoehna | <https://github.com/microsoft/mxc/issues/918> |
| Issue | #898 | [LXC] Firewall teardown and rollback strand rules, or drop them from a live container | closed | dhoehna | <https://github.com/microsoft/mxc/issues/898> |
| Issue | #648 | wxc-host-prep can recursively rewrite descendant ACLs on data-drive roots | closed | xuli500177 | <https://github.com/microsoft/mxc/issues/648> |
| Issue | #636 | Simple Edge Startup | closed | lonnietc | <https://github.com/microsoft/mxc/issues/636> |
| Issue | #1003 | LXC: directional egress lowering spawns one iptables process per expanded entry | closed | dhoehna | <https://github.com/microsoft/mxc/issues/1003> |
| Issue | #999 | LXC: malformed port and protocol selectors are widened instead of rejected when ExecutionRequest bypasses the JSON parser | closed | dhoehna | <https://github.com/microsoft/mxc/issues/999> |
| Issue | #992 | [LXC] An allowedHosts hostname is pinned to the IPs the host resolved, so a container resolving it differently is blocked | closed | dhoehna | <https://github.com/microsoft/mxc/issues/992> |
| Issue | #994 | [Bubblewrap] Report a host network support tier from getPlatformSupport so callers can tell if proxy mode is supported | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/994> |
| Issue | #947 | [WSLc] network.proxy is accepted but only cooperative - no in-container enforcement (blocked on the WSLc SDK) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/947> |
