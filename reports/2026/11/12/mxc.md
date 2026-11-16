# microsoft/mxc

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 19 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 22 |
| 新規 Issue                 | 35 |
| クローズ Issue             | 11 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1726](https://github.com/microsoft/mxc/pull/1726) — chore(deps): bump the github-actions group across 1 directory with 7 updates （PR / open / dependabot[bot]）
  未マージ。CI 依存の更新候補で、security 関連語だけから MXC runtime の脆弱性修正済みとは解釈しないでください。
- **⚠ セキュリティ** [#1677](https://github.com/microsoft/mxc/pull/1677) — Remove the node-gyp devDependency from the Node SDK （PR / merged / adpa-ms）
  開発環境と隔離 session テスト bundle から CVE 付き推移依存を除去します。配布 SDK consumer は元々 devDependencies を入れないため、利用者全体の実行時依存が変わる修正ではありません。

- **入力検証の強化** [microsoft/mxc#1556](https://github.com/microsoft/mxc/pull/1556)：embedded NUL を持つ `containerId` を拒否し、文字列変換時の切り詰めによる異なる ID の衝突を防止します。呼び出し側も正当な ID のみを渡してください。

## 主要な変更点

- microsoft/mxc#1556 の NUL 拒否は container identity の混同を防ぐ入力検証です。microsoft/mxc#1677 は node-gyp 開発依存と CVE 付き推移依存を削除し、consumer の通常 install とは影響範囲が異なります。
- macOS Seatbelt に `captureDenials` 学習モードを追加（microsoft/mxc#1668）。1.1.0-alpha 契約のみで、`block` は拒否を維持、`allow` は既定拒否アクセスを許可して記録するため、本番の隔離方針と混同しないでください。
- NVX は streaming / lifecycle、登録 image 再利用、`aci_edge_sandboxes` crate への置換がマージ済み。snapshot template 起動や process-owned snapshot は未マージです。
- Bubblewrap の symlink grant を実 path へ mount する修正、Linux firewall の conntrack 利用、Seatbelt の detached descendant cleanup が入りました。
- Windows 365 for Agents は設計と Phase 1 request 契約がマージ済みで、Phase 2 checkout / release lifecycle は microsoft/mxc#1723 で継続中です。
- stdout 切り詰め検知と stdin pipe relay の修正が進む一方、timeout 前の出力喪失・profile 残留・Windows GUI worker の pre-resume 検証要望（microsoft/mxc#1698）は未解決として確認が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1671 | [WSLC] (1/2) Set operation and nativeCode on container lifecycle errors | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1671> |
| PR | #1556 | Reject embedded NULL in containerID | merged | safmswork | <https://github.com/microsoft/mxc/pull/1556> |
| PR | #1697 | Add W365 Agents Phase 1 development request contract | merged | tbyfield | <https://github.com/microsoft/mxc/pull/1697> |
| PR | #1691 | NVX: Reuse registered images across create-and-run requests | merged | ppenna | <https://github.com/microsoft/mxc/pull/1691> |
| PR | #1668 | [Seatbelt] Add learning mode (captureDenials) | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1668> |
| PR | #1635 | docs: propose caller-owned policy preparation | merged | rossnichols | <https://github.com/microsoft/mxc/pull/1635> |
| PR | #1672 | NVX: Replace native DLL handling with aci_edge_sandboxes crate | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1672> |
| PR | #1539 | NVX Phase 3: Streaming and Container Lifecycle | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1539> |
| PR | #1520 | Guard more effectively against stdout truncation | merged | daamenik | <https://github.com/microsoft/mxc/pull/1520> |
| PR | #1598 | Document ProcessContainer filesystem access baseline | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1598> |
| PR | #1638 | [Bubblewrap] Mount symlinked grants at their real paths | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1638> |
| PR | #1687 | [Hyperlight] Bump hyperlight-unikraft to v0.21.0 | merged | danbugs | <https://github.com/microsoft/mxc/pull/1687> |
| PR | #1664 | [WSLC] Reject unsupported targetOs values | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1664> |
| PR | #1674 | Use conntrack for Linux firewall state matching | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1674> |
| PR | #1673 | Load telemetry routing metadata from a signed component DLL; remove admin registry policy | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1673> |
| PR | #1619 | docs: propose Windows 365 for Agents backend design | merged | tbyfield | <https://github.com/microsoft/mxc/pull/1619> |
| PR | #1450 | Fix stdin relay for pipes in IsoSession | merged | daamenik | <https://github.com/microsoft/mxc/pull/1450> |
| PR | #1646 | [Seatbelt] Cleanup Detached Descendants and Document Cleanup Behavior  | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1646> |
| PR | #1677 | Remove the node-gyp devDependency from the Node SDK | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1677> |
| PR | #1542 | chore(deps): bump the github-actions group across 1 directory with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1542> |
| PR | #1723 | Implement W365 Agents Phase 2 checkout and release lifecycle | open | tbyfield | <https://github.com/microsoft/mxc/pull/1723> |
| PR | #1738 | Enable process-owned NVX snapshot execution | open | esaurez | <https://github.com/microsoft/mxc/pull/1738> |
| PR | #1714 | [WSLC] Proxy Pt. 2: Enable session host loopback | open | theelliotm | <https://github.com/microsoft/mxc/pull/1714> |
| PR | #1737 | Align W365 requests with the lifecycle architecture | open | MGudgin | <https://github.com/microsoft/mxc/pull/1737> |
| PR | #1736 | Natural EOF registered for piped input with non-interactive output | open | daamenik | <https://github.com/microsoft/mxc/pull/1736> |
| PR | #1733 | Extend Required-only telemetry to all supported contracts | open | richiemsft | <https://github.com/microsoft/mxc/pull/1733> |
| PR | #1734 | [Bubblewrap] 1/2: Drop all capabilities from the container | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1734> |
| PR | #1720 | [Seatbelt] Add custom Mach, IOKit, and shared memory lists | open | theelliotm | <https://github.com/microsoft/mxc/pull/1720> |
| PR | #1719 | [WSLC] Proxy Pt. 4: Apply the provision proxy to every exec | open | theelliotm | <https://github.com/microsoft/mxc/pull/1719> |
| PR | #1717 | [WSLC] Proxy Pt. 3: Add runtimeConfig to WSLC provision contract | open | theelliotm | <https://github.com/microsoft/mxc/pull/1717> |
| PR | #1679 | [WSLC] Proxy Pt. 1: Update SDK to 3.0.5 | open | theelliotm | <https://github.com/microsoft/mxc/pull/1679> |
| PR | #1728 | Clarify IsolationSession companion-profile cleanup limits | open | Copilot | <https://github.com/microsoft/mxc/pull/1728> |
| PR | #1726 | chore(deps): bump the github-actions group across 1 directory with 7 updates | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1726> |
| PR | #1724 | Update NVX runtime bundle to 0.2.0 | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1724> |
| PR | #1718 | Add caller-owned policy preparation | open | rossnichols | <https://github.com/microsoft/mxc/pull/1718> |
| PR | #1688 | Do not run privileged LXC containers. | open | dhoehna | <https://github.com/microsoft/mxc/pull/1688> |
| PR | #1693 | NVX: Start MicroVMs from platform snapshot templates | open | ppenna | <https://github.com/microsoft/mxc/pull/1693> |
| PR | #1716 | [Bubblewrap] Prevent workloads after failed network setup | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1716> |
| PR | #1711 | [WSLC] (2/2) Preserve structured errors from process waits | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1711> |
| PR | #1708 | [Bubblewrap][Seatbelt] Reach the host's loopback services outbound, refuse blocked connections at once, and log them | open | crmne | <https://github.com/microsoft/mxc/pull/1708> |
| PR | #1696 | Fixed process container proxy log redaction | open | Vladexy88x | <https://github.com/microsoft/mxc/pull/1696> |
| PR | #1695 | Reject relative ProcessContainer filesystem policy paths | open | safmswork | <https://github.com/microsoft/mxc/pull/1695> |
| Issue | #1735 | Seatbelt: require explicit nestedPty opt-in for 1.1+ | open | richiemsft | <https://github.com/microsoft/mxc/issues/1735> |
| Issue | #1713 | FSLogix redirected reads fail despite explicit MXC read grants | open | iceweasel-oai | <https://github.com/microsoft/mxc/issues/1713> |
| Issue | #1732 | MSVC cl.exe /Zi /FS fails under MXC with C1902: Program database manager mismatch | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1732> |
| Issue | #1731 | ProcessContainer: allow loopback server/client workflows in proxy mode | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1731> |
| Issue | #1730 | ProcessContainer: per-command TEMP must support renaming and caller-supplied directory DACLs | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1730> |
| Issue | #1729 | MSYS2: second MSYS process fails after bash startup fix | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1729> |
| Issue | #1727 | IsolationSession: deprovision returns success but retains an unloaded companion profile | open | shanselman | <https://github.com/microsoft/mxc/issues/1727> |
| Issue | #1725 | Seatbelt captureDenials marks report complete when macOS drops log reports | open | theelliotm | <https://github.com/microsoft/mxc/issues/1725> |
| Issue | #1682 | WSLC is listed by getAvailableBackends() but missing from getPlatformSupport() and --probe | closed | trevotai-amd | <https://github.com/microsoft/mxc/issues/1682> |
| Issue | #1722 | Document MXC policy inheritance at `CreateProcessW` and verification per process instance | open | jayare882-ux | <https://github.com/microsoft/mxc/issues/1722> |
| Issue | #1721 | spawn() with captureDenials crashes the host Node process (0xC0000005) after the child exits | open | cracktr0 | <https://github.com/microsoft/mxc/issues/1721> |
| Issue | #1690 | NVX: reuse registered images across create-and-run requests | closed | ppenna | <https://github.com/microsoft/mxc/issues/1690> |
| Issue | #1712 | NVX: Clean up cached images every 14 days | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/1712> |
| Issue | #1710 | NVX: Keep lifecycle state usable after elevated directory creation | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/1710> |
| Issue | #1706 | ProcessContainer: a named pipe with an ordinary name can be created but never opened (only LOCAL\ names work) — breaks MSBuild parallel builds | open | djlsystems | <https://github.com/microsoft/mxc/issues/1706> |
| Issue | #1709 | Node SDK on Windows: writes to standardInput wait behind idle stdout/stderr reads on libuv's thread pool | open | vinnividivicci | <https://github.com/microsoft/mxc/issues/1709> |
| Issue | #1707 | Feature request: outbound-only host-loopback ports, and refusing and logging blocked egress | open | crmne | <https://github.com/microsoft/mxc/issues/1707> |
| Issue | #1705 | IsolationSession: a user-visible, interactive session with input and UI Automation scoped to the agent session | open | woo-kyu | <https://github.com/microsoft/mxc/issues/1705> |
| Issue | #1694 | Document PSEC caller requirements inside AppContainer (Create returns 0x800706D9) | open | TKCode0509 | <https://github.com/microsoft/mxc/issues/1694> |
| Issue | #1702 | Use buffered terminology for lifecycle execution helpers | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/1702> |
| Issue | #1704 | Enforce NVX output limits in Node and .NET development JSON lifecycle capture | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/1704> |
| Issue | #1703 | Correct .NET documentation for MicroVM development JSON APIs | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/1703> |
| Issue | #1701 | Prevent SDK consumers from depending on internal implementation details | open | asklar | <https://github.com/microsoft/mxc/issues/1701> |
| Issue | #1678 | [IsolationSession] The stdin relay does not close the workload's stdin when its source ends | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1678> |
| Issue | #1686 | How to limit a sandboxed agent to one endpoint in production? (request: packaged proxy sample) | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1686> |
| Issue | #1680 | Hyperlight: output not flushed before exit is silently lost | closed | trevotai-amd | <https://github.com/microsoft/mxc/issues/1680> |
| Issue | #1681 | Blocked file reads say "No such file" in Hyperlight/WSLC but "Permission denied" in process container | closed | trevotai-amd | <https://github.com/microsoft/mxc/issues/1681> |
| Issue | #1700 | Verify NVX shared lifecycle state across processes | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/1700> |
| Issue | #1698 | MXC V1 — supported pre-resume security verification for an isolated Windows GUI worker | open | Larvik74 | <https://github.com/microsoft/mxc/issues/1698> |
| Issue | #1699 | Hyperlight e2e: wire backend validation into scheduled/nightly (WHP/KVM) | open | danbugs | <https://github.com/microsoft/mxc/issues/1699> |
| Issue | #1689 | .NET SDK: a timed-out captured execution can lose the output written before the timeout | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1689> |
| Issue | #1692 | NVX: start MicroVMs from platform snapshots | open | ppenna | <https://github.com/microsoft/mxc/issues/1692> |
| Issue | #1685 | Docs: WSLC prerequisites omit Virtual Machine Platform; npm package accepts Node versions too old for Windows | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1685> |
| Issue | #1684 | --probe: isolationSessionAvailable is false on a supported build, with no reason given | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1684> |
| Issue | #1683 | WSLC: workloads run as root in the container; can they run as non-root? | open | trevotai-amd | <https://github.com/microsoft/mxc/issues/1683> |
| Issue | #1621 | Embedded NUL in containerId can result in duplicate identities | closed | safmswork | <https://github.com/microsoft/mxc/issues/1621> |
| Issue | #1591 | [Seatbelt] Extend learning mode and denial capture to macOS | closed | denelon | <https://github.com/microsoft/mxc/issues/1591> |
| Issue | #1586 | Add NVX as an experimental backend for running code in a microVM | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1586> |
| Issue | #1652 | [IsolationSession] Output still being relayed 5 seconds after the workload exits is cut off without notice | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1652> |
| Issue | #1645 | [WSLc] `wslc.targetOs` is accepted but never used | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1645> |
| Issue | #1651 | [IsolationSession] The stdin relay ignores whether stdin is a console or a pipe | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1651> |
| Issue | #1459 | Seatbelt: detached descendants outlive kill/wait/dispose; clarify cross-session cleanup | closed | SatyKrish | <https://github.com/microsoft/mxc/issues/1459> |
