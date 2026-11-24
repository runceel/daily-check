# microsoft/mxc

対象期間: 2026-11-19 01:03:42 〜 2026-11-24 00:20:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 9 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 10 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1825](https://github.com/microsoft/mxc/issues/1825) — [Bubblewrap] Missing deniedPaths beneath a read-only parent fail when mountinfo has a non-path root （Issue / open / theelliotm）
  Bubblewrap の読み取り専用親配下で deny ポリシーが正しく適用されない問題のため、サンドボックスとファイルポリシーを実装・運用する開発者は再現テストと修正状況を確認してください。

## 主要な変更点

- サンドボックス側では Bubblewrap がユーザー名前空間の作成を停止し、特権 LXC コンテナーの実行も拒否する変更がマージされ、分離境界の堅牢性が強化されています。
- WSLC は各ブリッジライフサイクルサンドボックスに個別ネットワークを割り当てるとともに、組み込みプロキシのカスタムプロキシー・ホストループバック対応を進めています。
- ファイルシステムポリシーでは相対パスや親コンポーネントを拒否し、caller-owned policy preparation でポリシー準備を呼び出し側が制御できるようにする変更が反映されています。
- 隔離セッション、Seatbelt、NVX キャッシュ、ネットワーク拒否などの診断性改善も Issue とクローズ済み修正で進行中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1808 | [Bubblewrap] Stop sandboxed workloads from creating user namespaces | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1808> |
| PR | #1832 | [WSLC] Give each bridged lifecycle sandbox its own network | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1832> |
| PR | #1688 | Do not run privileged LXC containers. | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1688> |
| PR | #1833 | [CI] Fix WSLC daemon cleanup and proxy 502 flakes in scheduled validation | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1833> |
| PR | #1718 | Add caller-owned policy preparation | merged | rossnichols | <https://github.com/microsoft/mxc/pull/1718> |
| PR | #1695 | Reject relative ProcessContainer filesystem policy paths | merged | safmswork | <https://github.com/microsoft/mxc/pull/1695> |
| PR | #1830 | [IsolationSession] Document what availability depends on | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1830> |
| PR | #1816 | [WSLC] Custom proxies and host loopback for the built-in proxy | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1816> |
| PR | #1675 | Reject parent components in Linux filesystem policy paths | merged | safmswork | <https://github.com/microsoft/mxc/pull/1675> |
| PR | #1726 | chore(deps): bump the github-actions group across 1 directory with 7 updates | closed | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1726> |
| PR | #1834 | [Seatbelt] Read captureDenials reports with log show after the workload exits | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1834> |
| PR | #1739 | [IsolationSession] Proposal: Report why the probe finds isolation sessions unavailable | closed | adpa-ms | <https://github.com/microsoft/mxc/pull/1739> |
| PR | #1815 | [NVX] Limit image caches to 10 GiB | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/1815> |
| PR | #1767 | test(process-container): probe PSEC environment handle lifetime | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/1767> |
| PR | #1842 | Parallelize native CI validation without reducing test coverage | open | MGudgin | <https://github.com/microsoft/mxc/pull/1842> |
| PR | #1838 | [WSLC] Built-in proxy for container lifecycle sandboxes | open | theelliotm | <https://github.com/microsoft/mxc/pull/1838> |
| PR | #1831 | Enable prototype native HKCU registry read/readWrite policies | open | pmpurifoy | <https://github.com/microsoft/mxc/pull/1831> |
| Issue | #1843 | processcontainer: captureDenials never reports a refused network connection | open | laurentftech | <https://github.com/microsoft/mxc/issues/1843> |
| Issue | #1841 | TELEMETRY Required clarification. | open | exetroncorp | <https://github.com/microsoft/mxc/issues/1841> |
| Issue | #1840 | ProcessContainer: a sandbox whose program starts another program is never released (signed-in session) | open | sanford | <https://github.com/microsoft/mxc/issues/1840> |
| Issue | #1824 | [CI] MicroVM nightly: host CPU profile rejects AMX CPUID leaves on Xeon 6973P-C (E_CPU_UNLISTED) | open | theelliotm | <https://github.com/microsoft/mxc/issues/1824> |
| Issue | #1837 | [Bubblewrap] platform_support() keeps reporting bwrap available after it is removed; add an uncached recheck | open | dileepyavan | <https://github.com/microsoft/mxc/issues/1837> |
| Issue | #1828 | [CI] WSLC port-range egress: ALL_PORTS_443 returned 502 on 25h2 | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1828> |
| Issue | #1827 | [CI] WSLC Node state-aware suite fails: store slot-0 still held after Stop-WslcDaemons | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1827> |
| Issue | #1836 | [WSLC] Add `wslc.hostLoopbackPorts` to restrict loopback ports | open | theelliotm | <https://github.com/microsoft/mxc/issues/1836> |
| Issue | #1835 | Add `langchain-mxc`: a Deep Agents sandbox backend for MXC | open | srimanthtangedipalli-eng | <https://github.com/microsoft/mxc/issues/1835> |
| Issue | #1829 | Availability APIs do not say why a backend is unavailable | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1829> |
| Issue | #1826 | [CI] Bubblewrap Grant Aliases skips on ubuntu-26.04 (no nested bwrap), failing strict mode | open | theelliotm | <https://github.com/microsoft/mxc/issues/1826> |
| Issue | #1825 | [Bubblewrap] Missing deniedPaths beneath a read-only parent fail when mountinfo has a non-path root | open | theelliotm | <https://github.com/microsoft/mxc/issues/1825> |
| Issue | #1823 | Windows: a read-only grant can be listed but not entered (chdir fails with EPERM), so git submodules fail under a read-only .git | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1823> |
| Issue | #1822 | A read-only path inside a read-write grant can be bypassed by renaming one of its ancestors (macOS: the grant root too; Windows: folders inside the grant) | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1822> |
| Issue | #1821 | Add pool discovery and persistent routing for the W365 backend | open | tbyfield | <https://github.com/microsoft/mxc/issues/1821> |
| Issue | #1819 | Seatbelt: a readwritePaths grant allows connect() to every Unix socket under it, so getTemporaryFilesPolicy exposes local programs' sockets | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1819> |
| Issue | #1820 | Node SDK: MxcProcess.standardInput is ended if it is not accessed before the workload's first output | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1820> |
| Issue | #1818 | ProcessContainer: the "default environment" is the HKLM+HKCU registry block, not the launcher's environment; please document it and offer a minimal default | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1818> |
| Issue | #1817 | Node SDK: verifyExecutable refuses every path containing ".asar", including app.asar.unpacked and the MXC_BIN_DIR override | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1817> |
| Issue | #1495 | [Bubblewrap] Sandboxed workloads can create user namespaces; add --disable-userns or a seccomp filter | closed | crmne | <https://github.com/microsoft/mxc/issues/1495> |
| Issue | #1634 | ProcessContainer: structured policy diagnostics and caller-owned preparation | closed | rossnichols | <https://github.com/microsoft/mxc/issues/1634> |
| Issue | #1684 | --probe: isolationSessionAvailable is false on a supported build, with no reason given | closed | trevotai-amd | <https://github.com/microsoft/mxc/issues/1684> |
| Issue | #1630 | A path containing .. can override a Linux filesystem deny | closed | safmswork | <https://github.com/microsoft/mxc/issues/1630> |
| Issue | #1811 | [WSLC] Support hostloopback when using the built-in proxy. | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1811> |
| Issue | #1810 | [WSLC] Support custom proxies when using the built-in proxy. | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1810> |
| Issue | #1712 | NVX: Clean up cached images every 14 days | closed | huzaifa-d | <https://github.com/microsoft/mxc/issues/1712> |
| Issue | #1378 | Bubblewrap  FirewallEnforced / ProxyOnly  network setup races with short-lived sandboxed processes —  slirp4netns / nsenter  fail with  /proc/<pid>/ns/net: No such file or directory | closed | franckspike | <https://github.com/microsoft/mxc/issues/1378> |
