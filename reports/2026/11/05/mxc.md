# microsoft/mxc

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 12 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 12 |
| 新規 Issue                 | 39 |
| クローズ Issue             | 7 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- .NET 10 を追加し .NET 8 互換性を維持する変更（#1563）と、package smoke test の共通化（#1655）がマージされました。
- Seatbelt の Learning Mode 提案（#1609）がマージされましたが、`captureDenials` の実装・API 方針に関する追跡 PR / Issue（#1668、#1669）が進行中です。
- 実行 telemetry の lifecycle correlation 強化（#1575）、MicroVM の CPU profile 利用（#1626）、Bubblewrap の namespace probe / symlink 処理改善（#1618、#1624）が入りました。
- 起動時の filesystem policy probe に上限を設ける修正（#1604）と、stdin flood による出力欠落を警告する対応（#1620）がマージされました。
- Linux filesystem policy で `..` を含むパスが deny を迂回する可能性（#1630）や、ProcessContainer の環境変数露出・loopback / egress policy の問題（#1670、#1665）が未解決 Issue として報告されています。該当 sandbox / policy を運用する場合は修正状況を追跡し、影響範囲を確認してください。
- 既存機能では readwritePaths 内の削除・rename 挙動（#1676）や、network rule installation 失敗時にも workload が起動する問題（#1636）も未解決です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1655 | Extract the .NET package smoke test into a shared script | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1655> |
| PR | #1663 | CI: upgrade ESRP signing tasks to Node20 | merged | danlegg | <https://github.com/microsoft/mxc/pull/1663> |
| PR | #1609 | [Seatbelt] Proposal: Learning Mode | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1609> |
| PR | #1563 | Add .NET 10 support while retaining .NET 8 compatibility | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1563> |
| PR | #1575 | Improve MXC execution telemetry and lifecycle correlation | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1575> |
| PR | #1624 | [Bubblewrap] Recreate merged-/usr directory symlinks in the sandbox | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1624> |
| PR | #1626 | CI: Use host CPU profiles for MicroVMs | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1626> |
| PR | #1618 | [Bubblewrap] Avoid redundant namespace probe on launch | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1618> |
| PR | #1538 | NVX Phase 2: Policy Support and Image Selection | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1538> |
| PR | #1597 | [WSLC] Stdin work follow-up | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1597> |
| PR | #1604 | Bound filesystem policy probes during sandbox startup | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1604> |
| PR | #1620 | [WSLC] Always warn when a stdin flood may have lost a command's output | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1620> |
| PR | #1580 | [Seatbelt] Add learning mode (captureDenials) | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1580> |
| PR | #1483 | docs: propose the Policy Store requirements resolver | closed | ChazGo | <https://github.com/microsoft/mxc/pull/1483> |
| PR | #1499 | Add per-run resource limits, priority, and resource usage | closed | crmne | <https://github.com/microsoft/mxc/pull/1499> |
| PR | #1668 | [Seatbelt] Add learning mode (captureDenials) | open | theelliotm | <https://github.com/microsoft/mxc/pull/1668> |
| PR | #1673 | Load telemetry routing metadata from a signed component DLL; remove admin registry policy | open | richiemsft | <https://github.com/microsoft/mxc/pull/1673> |
| PR | #1635 | docs: propose creation-policy diagnostics and correction | open | rossnichols | <https://github.com/microsoft/mxc/pull/1635> |
| PR | #1625 | [WSLC] Proposal: Built-in proxy for networking | open | theelliotm | <https://github.com/microsoft/mxc/pull/1625> |
| PR | #1646 | [Seatbelt] Cleanup Detached Descendants and Document Cleanup Behavior  | open | theelliotm | <https://github.com/microsoft/mxc/pull/1646> |
| PR | #1672 | NVX: Replace native DLL handling with aci_edge_sandboxes crate | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1672> |
| PR | #1674 | Use conntrack for Linux firewall state matching | open | dhoehna | <https://github.com/microsoft/mxc/pull/1674> |
| PR | #1675 | Reject parent components in Linux filesystem policy paths | open | safmswork | <https://github.com/microsoft/mxc/pull/1675> |
| PR | #1638 | [Bubblewrap] Mount symlinked grants at their real paths | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1638> |
| PR | #1671 | [WSLC] Set operation and nativeCode on container lifecycle errors | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1671> |
| PR | #1664 | [WSLC] Reject unsupported targetOs values | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1664> |
| PR | #1627 | Bound buffered SDK output capture across language surfaces | open | safmswork | <https://github.com/microsoft/mxc/pull/1627> |
| Issue | #1676 | Delete and rename are denied inside `readwritePaths` (ProcessContainer / BaseContainer, SDK 1.0.1) | open | 360608 | <https://github.com/microsoft/mxc/issues/1676> |
| Issue | #1670 | processcontainer: sandboxed process can read persistent user environment variables from HKCU\Environment | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1670> |
| Issue | #1659 | The `ui` policy fields cannot describe what a session-scoped backend enforces | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1659> |
| Issue | #1665 | Process container: hostLoopback allow opens every localhost port; egress allow/deny rules are ignored | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1665> |
| Issue | #1666 | Process container: DNS lookups still work in proxy mode | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1666> |
| Issue | #1662 | Upgrade Azure pipeline ESRP signing tasks to the Node20 runtime | closed | danlegg | <https://github.com/microsoft/mxc/issues/1662> |
| Issue | #1667 | .NET SDK: PowerShell samples exit with code 127 and no error under the default UI policy | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1667> |
| Issue | #1669 | [V2] Make captureDenials cross-backend and rename retainEtl/etlPath | open | theelliotm | <https://github.com/microsoft/mxc/issues/1669> |
| Issue | #1658 | [LXC] Intermittent ARM64 failure in a_connection_over_the_limit_is_closed | open | MGudgin | <https://github.com/microsoft/mxc/issues/1658> |
| Issue | #1636 | [Bubblewrap] Workload starts when network rule installation fails | open | theelliotm | <https://github.com/microsoft/mxc/issues/1636> |
| Issue | #1656 | Carry `operation`, `nativeCode` and `remediation` on create-and-run errors | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1656> |
| Issue | #1661 | [IsolationSession] oneshot.md says the C# SDK has no IsolationSession create-and-run path | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1661> |
| Issue | #1660 | [IsolationSession] A failing concurrent one-shot Rust test can leave a session's agent account on the host | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1660> |
| Issue | #1657 | Policy refusals put the fix in the message instead of the `remediation` field | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1657> |
| Issue | #1654 | [IsolationSession] Serve inherited stdio from `SandboxBackend` through one stdio lifecycle | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1654> |
| Issue | #1651 | [IsolationSession] The stdin relay ignores whether stdin is a console or a pipe | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1651> |
| Issue | #1653 | [IsolationSession] SDK docs promise a process-tree kill that exec into an existing container does not deliver | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1653> |
| Issue | #1652 | [IsolationSession] Output still being relayed 5 seconds after the workload exits is cut off without notice | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1652> |
| Issue | #1647 | [IsolationSession] A command line that starts with a quote loses its first and last quote | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1647> |
| Issue | #1650 | [IsolationSession] The concurrent one-shot test relies on log-file writes that fail without any session ending early | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1650> |
| Issue | #1649 | [IsolationSession] A `process.env` entry without `=` is set as an empty variable | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1649> |
| Issue | #1648 | ProcessContainer: PSEC creation returns 0x80070005 after successful probe/dry-run (SDK 1.0.1) | open | Max19970 | <https://github.com/microsoft/mxc/issues/1648> |
| Issue | #1634 | ProcessContainer: actionable creation-policy diagnostics and opt-in restrictive correction | open | rossnichols | <https://github.com/microsoft/mxc/issues/1634> |
| Issue | #1628 | Unbounded SDK stdout/stderr capture | open | safmswork | <https://github.com/microsoft/mxc/issues/1628> |
| Issue | #1632 | Python SDK support — contribution proposal | open | shihchengwei-lab | <https://github.com/microsoft/mxc/issues/1632> |
| Issue | #1645 | [WSLc] `wslc.targetOs` is accepted but never used | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1645> |
| Issue | #1644 | [WSLc] Set `operation` and `nativeCode` on container lifecycle errors from WSLc SDK calls | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1644> |
| Issue | #1643 | [Windows Sandbox] A command line that starts with a quote loses its first and last quote | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1643> |
| Issue | #1642 | Two rustdoc comments misdescribe Seatbelt's UI enforcement and the FFI's one-shot path | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1642> |
| Issue | #1641 | [Node SDK] The integration tests' lockfile does not lock `node-pty` | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1641> |
| Issue | #1640 | `build.bat` leaves binaries it no longer builds in `sdk\node\bin` | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1640> |
| Issue | #1637 | [Seatbelt] Ctrl-C leaves sandboxed processes running | open | theelliotm | <https://github.com/microsoft/mxc/issues/1637> |
| Issue | #1633 | How should MXC policy be configured to allow outbound web access from OpenClaw agents? | open | cjgithubuser | <https://github.com/microsoft/mxc/issues/1633> |
| Issue | #1631 | PSEC 1.0: Undocumented prerequisites for 0x80070002 under session-0 batch logon | open | T3xM3XShuffl3 | <https://github.com/microsoft/mxc/issues/1631> |
| Issue | #1630 | A path containing .. can override a Linux filesystem deny | open | safmswork | <https://github.com/microsoft/mxc/issues/1630> |
| Issue | #1629 | BaseContainer v1.0.1: ~28 s before first output with UI enabled; disabling UI is fast but Node exits 0xC0000142 | open | beowulfim | <https://github.com/microsoft/mxc/issues/1629> |
| Issue | #1622 | Question: running dotnet fails | open | rjperes | <https://github.com/microsoft/mxc/issues/1622> |
| Issue | #1623 | Clarify PSEC policy lifetime, owner loss, completion observation and broker scope | open | syedmurtuza38 | <https://github.com/microsoft/mxc/issues/1623> |
| Issue | #1621 | Embedded NUL in containerId can result in duplicate identities | open | safmswork | <https://github.com/microsoft/mxc/issues/1621> |
| Issue | #1588 | Improve execution telemetry and connect events from the same container | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1588> |
| Issue | #1606 | [CI] Validation VMs don't have built-in CPU profile for MicroVM | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1606> |
| Issue | #1589 | Improve contribution and repository-management documentation | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1589> |
| Issue | #1543 | [docs] Explain the macOS 15 floor for Seatbelt and which Windows hosts get ProcessContainer | closed | SunflowersLwtech | <https://github.com/microsoft/mxc/issues/1543> |
| Issue | #1617 | [Bubblewrap] Avoid redundant namespace allocation during launch validation | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/1617> |
| Issue | #1605 | [WSLC] "Stdin Flood" Test Failing During Validation | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1605> |
