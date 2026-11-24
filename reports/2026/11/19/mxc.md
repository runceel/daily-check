# microsoft/mxc

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 8 |
| 新規 Issue                 | 15 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1780](https://github.com/microsoft/mxc/issues/1780) — Linux bubblewrap: deniedPaths for a nonexistent path creates a stray directory on the host that persists after exit （Issue / open / benjaminfrombe）
  Linux利用者は存在しないdeniedPathsによってホストにディレクトリーが残るという未解決報告を確認してください。修正案microsoft/mxc#1792は未マージで、保護ポリシーを安全と断定できません。
- **⚠ セキュリティ** [#1726](https://github.com/microsoft/mxc/pull/1726) — chore(deps): bump the github-actions group across 1 directory with 7 updates （PR / open / dependabot[bot]）
  CI管理者は7件のActions更新についてrunner・権限の互換性を確認してください。未マージの依存更新であり、MXC本体のセキュリティ修正済みを示すものではありません。
- **隔離強化・マージ済み** [microsoft/mxc#1734](https://github.com/microsoft/mxc/pull/1734): Bubblewrapワークロードのcapabilityを全削除します。root呼び出し時も対象ですが、UID/GIDの再マッピングは別の未マージ作業であり、root所有ホストファイルへのアクセス問題がすべて解消したわけではありません。
- **隔離境界の未解決報告** [microsoft/mxc#1793](https://github.com/microsoft/mxc/issues/1793)、[microsoft/mxc#1794](https://github.com/microsoft/mxc/issues/1794)、[microsoft/mxc#1795](https://github.com/microsoft/mxc/issues/1795): Windowsのリンク経由のアクセス許可・祖先ディレクトリーの変更によるdeny制約の維持に関する報告です。機密ファイルを同一の広い書込領域に含める構成は再評価し、修正・公式案内を追ってください。
- **権限制約の注意** [microsoft/mxc#1797](https://github.com/microsoft/mxc/issues/1797): macOSのclipboard read/write指定が双方のアクセスを許すという報告です。片方向だけの権限制御を前提にしないでください。
- **書込制約の未解決報告** [microsoft/mxc#1806](https://github.com/microsoft/mxc/issues/1806): Bubblewrapのbind外がsandbox内tmpfsとして書込可能との報告です。ホスト変更とは区別しつつ、長寿命sandbox内での状態共有を確認してください。

## 主要な変更点

- 7件がマージ。microsoft/mxc#1734は`--cap-drop ALL`による隔離強化で、ネットワークsupervisorに必要な権限は別管理します。UID/GID変更案microsoft/mxc#1814は未マージです。
- microsoft/mxc#1799はWSLC内蔵proxy経由の`wslc.portMappings`を実装。Windowsの`127.0.0.1`だけで待受け、LANには公開せず、UDPマッピングは引き続き拒否します。
- microsoft/mxc#1625は既存networkフィールドでTCP CIDR・port制御を行う内蔵proxyの**設計文書**です。設計マージを全機能の実装済みと扱わず、hostLoopback・custom proxyなどの未解決Issueも確認してください。
- microsoft/mxc#1711はプロセス待機失敗のoperation/native codeなどを維持。Rustに`try_wait_detailed`・`wait_detailed`・`wait_with_output_detailed`、Cにerror付きwaitを追加し、既存wait APIは維持します。.NET/Nodeには`details`自体は届かない制約が残ります。
- ホスト上の不要ディレクトリー残存microsoft/mxc#1780と、その修正案microsoft/mxc#1792は未解決。Windowsのdeny制約報告3件、macOS clipboard権限、Bubblewrapのtmpfs書込も監視対象です。
- nightly検証のWindows 24H2/25H2/26H2展開microsoft/mxc#1801など、基盤検証も継続しています。Actions依存更新microsoft/mxc#1726は本体修正とは区別します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1799 | [WSLC] Port mappings for the built-in proxy | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1799> |
| PR | #1711 | [WSLC] (2/2) Preserve structured errors from process waits | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1711> |
| PR | #1798 | [CI] Fix WSLC bugs with scheduled validation tests | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1798> |
| PR | #1801 | [IsolationSession] Run nightly validation on 24H2, 25H2 and 26H2 | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1801> |
| PR | #1734 | [Bubblewrap] 1/2: Drop all capabilities from the container | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1734> |
| PR | #1625 | [WSLC] Proposal: Built-in proxy for networking | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1625> |
| PR | #1786 | Fix isolation-session bundle compatibility validation | merged | danlegg | <https://github.com/microsoft/mxc/pull/1786> |
| PR | #1814 | [Bubblewrap] 2/2: Map root workloads to reserved subordinate IDs | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1814> |
| PR | #1796 | [IsoSession] Network policy admission pass and lab-only loopback gate | open | ionvasilian | <https://github.com/microsoft/mxc/pull/1796> |
| PR | #1815 | [NVX] Limit image caches to 10 GiB | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1815> |
| PR | #1804 | [Bubblewrap] Unblock the watchdog's signals in spawned children | open | Skyb0rg007 | <https://github.com/microsoft/mxc/pull/1804> |
| PR | #1807 | fix(bubblewrap): start bwrap with an empty environment | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1807> |
| PR | #1808 | [Bubblewrap] Stop sandboxed workloads from creating user namespaces | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1808> |
| PR | #1790 | Add portable MXC developer-loop skill | open | cfatt | <https://github.com/microsoft/mxc/pull/1790> |
| PR | #1792 | fix(bwrap): remove the mountpoints a missing denied path leaves on the host | open | lx3133584 | <https://github.com/microsoft/mxc/pull/1792> |
| Issue | #1813 | runtimeConfig.networkProxy rejects explicit default ports (:80, :443) | open | theelliotm | <https://github.com/microsoft/mxc/issues/1813> |
| Issue | #1811 | [WSLC] Support hostloopback when using the built-in proxy. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1811> |
| Issue | #1812 | [WSLC] Support daemon/state-aware in built-in proxy network mode. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1812> |
| Issue | #1810 | [WSLC] Support custom proxies when using the built-in proxy. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1810> |
| Issue | #1802 | Seatbelt: allow the preferences service (cfprefsd and its shared memory) without opening the user's preferences | open | mrestrepo95 | <https://github.com/microsoft/mxc/issues/1802> |
| Issue | #1809 | Flaky: LXC streaming integration test fails with lxc-create alpine cache tar error on linux-ubuntu24.04 | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1809> |
| Issue | #1806 | bubblewrap backend: paths outside every bind are writable (the sandbox root is bwrap's read-write tmpfs) | open | apoc | <https://github.com/microsoft/mxc/issues/1806> |
| Issue | #1805 | 1.1.0: `native-tls`/`ureq` are unconditional dependencies, which breaks cross-builds that never use Windows 365 for Agents | open | apoc | <https://github.com/microsoft/mxc/issues/1805> |
| Issue | #1803 | ProcessContainer: `allowedProxyPeer` does not work when the caller is an MSIX-packaged app | open | devfrx | <https://github.com/microsoft/mxc/issues/1803> |
| Issue | #1797 | [Seatbelt] Both `ui.clipboard: read` and `ui.clipboard: write` give total read and write access to the clipboard. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1797> |
| Issue | #1793 | Read/write grants through junctions can override denied target paths | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1793> |
| Issue | #1795 | Directory symbolic links created in one container can widen a later container's write access | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1795> |
| Issue | #1794 | Denied path protection can be bypassed by renaming an ancestor directory | open | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1794> |
| Issue | #1800 | Telemetry ETW trace check fails when Windows reuses an executor's process ID | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1800> |
| Issue | #1791 | Seatbelt: stale Xcode selection links prevent default developer-tools discovery | closed | djs55 | <https://github.com/microsoft/mxc/issues/1791> |
| Issue | #1644 | [WSLc] Set `operation` and `nativeCode` on container lifecycle errors from WSLc SDK calls | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1644> |
| Issue | #1710 | NVX: Keep lifecycle state usable after elevated directory creation | closed | huzaifa-d | <https://github.com/microsoft/mxc/issues/1710> |
