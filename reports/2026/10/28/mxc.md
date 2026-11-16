# microsoft/mxc

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 21 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 7 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 16 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->

## 主要な変更点

- sandbox の分離強化が進み、Bubblewrap ではホスト resolver socket を隔離し、socket address family と `io_uring` を seccomp で制限しました（PR #1568、#1529）。
- PowerShell のツール検出を付与されたファイルシステム権限の範囲に限定し、Seatbelt では symlink／親パスを含む deny policy の適用を修正しました（PR #1590、#1531）。
- NVX の signed MicroVM 統合（PR #1528）と LXC loopback proxy（PR #1554）が追加され、分離バックエンドとネットワーク接続の選択肢が広がっています。
- WSLc 実行でホスト stdin を転送する変更（PR #1562、#1564）や、Windows PowerShell 5.1 で非同期実行の終了コードを保持する修正（PR #1561）がマージされました。
- ProcessContainer の旧 Tier 2／Tier 3 fallback は削除されました（PR #1558）。対応環境・バックエンドの前提を確認してください。
- Seatbelt learning mode、実験的 Kata Containers backend、WSLc stdin の追加改善は現在もレビュー中（PR #1580、#1577、#1597）です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1568 | [Bubblewrap] Keep host resolver sockets out of sandboxes | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1568> |
| PR | #1590 | Restrict PowerShell discovery to scoped filesystem grants | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1590> |
| PR | #1528 | NVX Phase 1: Minimal Signed MicroVM integration | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1528> |
| PR | #1567 | Add denied-path precedence regression coverage | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1567> |
| PR | #1574 | Cover Node filesystem discovery edge cases | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1574> |
| PR | #1593 | Document how MXC is managed | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1593> |
| PR | #1534 | Define the feature contribution and spec review process | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1534> |
| PR | #1564 | [WSLC] (2/2) Forward host stdin to create-and-run execution | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1564> |
| PR | #1562 | [WSLC] (1/2) Forward host stdin to state-aware exec | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1562> |
| PR | #1531 | [Seatbelt] Fix symlink and parent-traversal policy enforcement | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1531> |
| PR | #1554 | Add a relay to enable a loopback proxy in LXC | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1554> |
| PR | #1529 | [Bubblewrap] Restrict socket address families and io_uring with an always-on seccomp filter | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1529> |
| PR | #1558 | Remove Tier2 and Tier3 ProcessContainer fallbacks | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1558> |
| PR | #1569 | [CI] Fix RHEL io_uring and arm64 cold-start nightly test failures | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1569> |
| PR | #1571 | chore(deps): bump fast-uri from 3.1.8 to 3.1.9 in /scripts/versioning | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1571> |
| PR | #1570 | [CI] Upload only test logs from the Windows validation jobs | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1570> |
| PR | #1559 | Remove dead code left by the ProcessContainer fallbacks | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1559> |
| PR | #1547 | Remove the unused Node subprocess spawn helper | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1547> |
| PR | #1541 | [Bubblewrap] Fix terminal isolation and startup cancellation | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1541> |
| PR | #1561 | [IsolationSession] Keep async exec exit codes under Windows PowerShell 5.1 | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1561> |
| PR | #1501 | IsolationSession test bundle: ship test_scripts/lib/LoopbackAnchor.ps1 | merged | danlegg | <https://github.com/microsoft/mxc/pull/1501> |
| PR | #1581 | Combine area and assigned work in named project views | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1581> |
| PR | #1278 | [Seatbelt] Add deniedPathNames and deniedUnixSocketPaths | closed | 0xmmo | <https://github.com/microsoft/mxc/pull/1278> |
| PR | #1463 | require opt-in for PowerShell whole-drive read access | closed | mvanhorn | <https://github.com/microsoft/mxc/pull/1463> |
| PR | #1524 | feat(sdk): expose retained Windows query process handles | closed | vineethsai7 | <https://github.com/microsoft/mxc/pull/1524> |
| PR | #1440 | Consume published IsolationSession SDK NuGet package | closed | danlegg | <https://github.com/microsoft/mxc/pull/1440> |
| PR | #1580 | [Seatbelt] Add learning mode (captureDenials) | open | theelliotm | <https://github.com/microsoft/mxc/pull/1580> |
| PR | #1577 | [Kata] Add an experimental Kata Containers backend | open | ericcurtin | <https://github.com/microsoft/mxc/pull/1577> |
| PR | #1597 | [WSLC] Stdin work follow-up | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1597> |
| PR | #1598 | Document ProcessContainer filesystem access baseline | open | MGudgin | <https://github.com/microsoft/mxc/pull/1598> |
| PR | #1578 | [Bubblewrap] Find host tools in standard system directories when PATH omits them | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1578> |
| PR | #1575 | Improve MXC execution telemetry and lifecycle correlation | open | richiemsft | <https://github.com/microsoft/mxc/pull/1575> |
| PR | #1563 | Move .NET SDK and samples to .NET 10 | open | MGudgin | <https://github.com/microsoft/mxc/pull/1563> |
| Issue | #1599 | Granting read-write access to a path allows file writes, but not deletes | open | petertorr | <https://github.com/microsoft/mxc/issues/1599> |
| Issue | #1596 | Separate MXC diagnostics from the workload's stderr | open | theelliotm | <https://github.com/microsoft/mxc/issues/1596> |
| Issue | #1595 | Adopt the SDK v2 error codes at sites that keep SDK v1 codes | open | theelliotm | <https://github.com/microsoft/mxc/issues/1595> |
| Issue | #1594 | Document how MXC is managed | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1594> |
| Issue | #1591 | [Seatbelt] Extend learning mode and denial capture to macOS | open | denelon | <https://github.com/microsoft/mxc/issues/1591> |
| Issue | #1589 | Improve contribution and repository-management documentation | open | bbonaby | <https://github.com/microsoft/mxc/issues/1589> |
| Issue | #1592 | [Bubblewrap] Add learning mode and denial capture on Linux | open | denelon | <https://github.com/microsoft/mxc/issues/1592> |
| Issue | #1587 | Add Dev APIs for experimental SDK functionality | open | bbonaby | <https://github.com/microsoft/mxc/issues/1587> |
| Issue | #1588 | Improve execution telemetry and connect events from the same container | open | bbonaby | <https://github.com/microsoft/mxc/issues/1588> |
| Issue | #1586 | Add NVX as an experimental backend for running code in a microVM | open | bbonaby | <https://github.com/microsoft/mxc/issues/1586> |
| Issue | #1566 | [processcontainer] Remove `sandbox_tracking.rs` & cleanup tracking entries | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1566> |
| Issue | #1585 | Update the WSLc dependency to version 3.0.3 | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1585> |
| Issue | #1582 | Remove old Tier 2 and 3 fallback for process container | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1582> |
| Issue | #1584 | Apply file-access rules consistently through links and parent folders | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1584> |
| Issue | #1583 | Keep macOS programs away from unrelated terminals | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1583> |
| Issue | #1573 | Feature request: Option to block child-process creation | open | liufuyang | <https://github.com/microsoft/mxc/issues/1573> |
| Issue | #1576 | ProcessContainer: denying a path under a missing parent fails initialization | open | iceweasel-oai | <https://github.com/microsoft/mxc/issues/1576> |
| Issue | #1579 | Let apps leave out MXC features and their dependencies | open | symbiogenesis | <https://github.com/microsoft/mxc/issues/1579> |
| Issue | #1572 | Document how to use MXC with Mastra agents | open | hashimwarren | <https://github.com/microsoft/mxc/issues/1572> |
| Issue | #1455 | getAvailableToolsPolicy grants read access to the whole system drive on BaseContainer when pwsh is on PATH | closed | PierrunoYT | <https://github.com/microsoft/mxc/issues/1455> |
| Issue | #1452 | Docs: PSEC startup attribute coexistence, identity defaults, and launch prerequisites | closed | wfsky2015-debug | <https://github.com/microsoft/mxc/issues/1452> |
| Issue | #1258 | [WSLC] Allow commands to receive input | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1258> |
| Issue | #1444 | Bubblewrap: use --new-session when stdio is not a PTY | closed | kenchris | <https://github.com/microsoft/mxc/issues/1444> |
| Issue | #1505 | KB5127648 blocks all loopback connections from inside an MXC sandbox, including to the sandbox's own port | closed | seannair | <https://github.com/microsoft/mxc/issues/1505> |
| Issue | #786 | Hyperlight blockedHosts overrides defaultPolicy=block | closed | MGudgin | <https://github.com/microsoft/mxc/issues/786> |
| Issue | #1496 | BaseContainer: LPAC (`processContainer.leastPrivilege`) without DACL mutation after the SBOX removal | closed | rominf | <https://github.com/microsoft/mxc/issues/1496> |
| Issue | #1551 | ProcessContainer proxy mode blocks allowed host-to-container loopback ingress | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1551> |
| Issue | #1521 | Rust SDK: expose an owned query-only process handle on Windows | closed | vineethsai7 | <https://github.com/microsoft/mxc/issues/1521> |
| Issue | #1389 | Align and reorganize current MXC container policy documentation | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1389> |
