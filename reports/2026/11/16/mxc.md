# microsoft/mxc

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 25 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 21 |
| クローズ Issue             | 7 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1780](https://github.com/microsoft/mxc/issues/1780) — Linux bubblewrap: deniedPaths for a nonexistent path creates a stray directory on the host that persists after exit （Issue / open / benjaminfrombe）
Linux bubblewrap の `deniedPaths` に存在しないパスを指定すると、終了後もホスト上にディレクトリが残る報告です。Bubblewrap 利用者は denied path の指定とホスト側の残留物を確認してください。
- **⚠ セキュリティ** [#1726](https://github.com/microsoft/mxc/pull/1726) — chore(deps): bump the github-actions group across 1 directory with 7 updates （PR / open / dependabot[bot]）
GitHub Actions 依存を更新する未マージ PR です。リポジトリの CI を管理する利用者は更新対象とセキュリティ修正の有無を確認してください。
- **⚠ セキュリティ** [#1698](https://github.com/microsoft/mxc/issues/1698) — MXC V1 — supported pre-resume security verification for an isolated Windows GUI worker （Issue / open / Larvik74）
分離された Windows GUI worker の resume 前 security verification に関する未解決要望です。該当 worker を運用する利用者は issue の進捗を追い、resume 前の検証を確認してください。

## 主要な変更点

- W365 Agents は Phase 3 の readiness / execution 実装がマージされ、Phase 2 の checkout・release lifecycle と合わせて実行フローが進みました。
- WSLC の cooperative proxy が daemon に統合され、create-and-run の proxied egress と gateway binary / image が追加されました。
- SDK 1.1.0 と NVX runtime 0.2.0 への更新に加え、Node / .NET NVX SDK 対応が進みました。
- Process API では spawn の stdin を writable にし、`WithStdin` API を削除する一方、inherited stdio を指定する拡張 options が追加されました。
- Bubblewrap は network setup 失敗時に workload を起動しないよう修正されました。一方、存在しない denied path がホスト上に残る報告 (#1780) と、ホスト環境変数が sandbox 内から読める報告 (#1783) は未解決です。
- NuGet SBOM 生成、ADO npm cache / package release、および SDK integration pipeline の修正もマージされました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1779 | Fix NuGet release SBOM generation | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1779> |
| PR | #1778 | Fix macOS W365 Node TLS test | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1778> |
| PR | #1777 | Fix ADO npm caching and package releases | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1777> |
| PR | #1756 | Implement W365 Agents Phase 3 readiness and execution | merged | tbyfield | <https://github.com/microsoft/mxc/pull/1756> |
| PR | #1776 | Bump SDK versions to 1.1.0 | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1776> |
| PR | #1762 | [WSLC] Give spawn a writable stdin and remove the WithStdin APIs | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1762> |
| PR | #1774 | Fix ADO build and SDK integration pipelines | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1774> |
| PR | #1752 | Phase 4: Add Node and .NET NVX SDK support with some Rust plumbing | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1752> |
| PR | #1761 | Add spawn_with_extended_options with inherited stdio for ProcessContainer, Bubblewrap, and Seatbelt | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1761> |
| PR | #1753 | [WSLC] Proxy Pt. 6: Proxied egress for create-and-run | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1753> |
| PR | #1766 | [IsolationSession] Drive the concurrent one-shot test over stdin | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1766> |
| PR | #1740 | [WSLC] Proxy Pt. 5: Gateway binary and image | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1740> |
| PR | #1742 | fix(bubblewrap): prepare missing deny mountpoints privately | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1742> |
| PR | #1769 | Fix learning-mode trace fallback when network sources are unsupported | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1769> |
| PR | #1771 | Fix W365 contract test compilation after telemetry attribution change | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1771> |
| PR | #1733 | Extend Required-only telemetry to all supported contracts | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1733> |
| PR | #1716 | [Bubblewrap] Prevent workloads after failed network setup | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1716> |
| PR | #1749 | NVX: enable platform snapshots for create-and-run and lifecycle starts | merged | esaurez | <https://github.com/microsoft/mxc/pull/1749> |
| PR | #1755 | NVX: skip MXC runtime bundle validation | merged | esaurez | <https://github.com/microsoft/mxc/pull/1755> |
| PR | #1719 | [WSLC] Proxy Pt. 4: Apply the cooperative proxy in the daemon | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1719> |
| PR | #1717 | [WSLC] Proxy Pt. 3: Add runtimeConfig to WSLC provision contract | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1717> |
| PR | #1723 | Implement W365 Agents Phase 2 checkout and release lifecycle | merged | tbyfield | <https://github.com/microsoft/mxc/pull/1723> |
| PR | #1748 | Fix Linux CI packages and test Ubuntu 24.04 and 26.04 | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1748> |
| PR | #1724 | Update NVX runtime bundle to 0.2.0 | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1724> |
| PR | #1679 | [WSLC] Proxy Pt. 1: Update SDK to 3.0.5 | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1679> |
| PR | #1760 | NVX: Tear a held container down after its caller exits | closed | ppenna | <https://github.com/microsoft/mxc/pull/1760> |
| PR | #1759 | NVX: Hold a container in one executor process and run its execs side by side | closed | ppenna | <https://github.com/microsoft/mxc/pull/1759> |
| PR | #1693 | NVX: Start MicroVMs from platform snapshot templates | closed | ppenna | <https://github.com/microsoft/mxc/pull/1693> |
| PR | #1738 | Enable process-owned NVX snapshot execution | closed | esaurez | <https://github.com/microsoft/mxc/pull/1738> |
| PR | #1714 | [WSLC] Proxy Pt. 2: Enable session host loopback | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1714> |
| PR | #1767 | test(process-container): probe PSEC environment handle lifetime | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1767> |
| PR | #1773 | [IsoSession] Document real commandLine execution behavior  | open | daamenik | <https://github.com/microsoft/mxc/pull/1773> |
| PR | #1770 | [IsoSession] Environment vars in config without an equals sign ignored | open | daamenik | <https://github.com/microsoft/mxc/pull/1770> |
| PR | #1739 | [IsolationSession] Proposal: Report why the probe finds isolation sessions unavailable | open | adpa-ms | <https://github.com/microsoft/mxc/pull/1739> |
| Issue | #1784 | ProcessContainer: false packaged-app launch error after MSIX PowerShell exits nonzero | open | mapleluvr | <https://github.com/microsoft/mxc/issues/1784> |
| Issue | #1783 | Bubblewrap via the SDK: bwrap inherits the host process environment, readable from inside the sandbox | open | laurentftech | <https://github.com/microsoft/mxc/issues/1783> |
| Issue | #1782 | Node SDK: MxcProcess stdio streams never emit or end under Bun (work under Node) | open | benjaminfrombe | <https://github.com/microsoft/mxc/issues/1782> |
| Issue | #1781 | Ship per-platform npm packages to cut the 118 MB single-tarball install | open | benjaminfrombe | <https://github.com/microsoft/mxc/issues/1781> |
| Issue | #1780 | Linux bubblewrap: deniedPaths for a nonexistent path creates a stray directory on the host that persists after exit | open | benjaminfrombe | <https://github.com/microsoft/mxc/issues/1780> |
| Issue | #1768 | Process container: rename relative to a directory handle fails with STATUS_INVALID_HANDLE (`FILE_RENAME_INFORMATION.RootDirectory`) | open | altohq | <https://github.com/microsoft/mxc/issues/1768> |
| Issue | #1775 | Centralize execution timeout ownership below the language SDKs | open | tbyfield | <https://github.com/microsoft/mxc/issues/1775> |
| Issue | #1772 | [Bubblewrap] Flaky unit test bwrap_version::tests::subprocess_probe_times_out_and_terminates_the_child | open | theelliotm | <https://github.com/microsoft/mxc/issues/1772> |
| Issue | #1765 | Bubblewrap: clear error when denied paths exceed bwrap's argument limit | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1765> |
| Issue | #1764 | [Bwrap] Bubblewrap backend masks SIGTERM and other POSIX signals | open | Skyb0rg007 | <https://github.com/microsoft/mxc/issues/1764> |
| Issue | #1763 | [WSLC] Support Windows LAN IPs for port mappings in schema 1.1.0. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1763> |
| Issue | #1754 | PSEC: packaged apps fail to launch when the parent process is in a job | open | reflectronic | <https://github.com/microsoft/mxc/issues/1754> |
| Issue | #1750 | PSEC: read-write grants on a volume root are silently non-recursive | open | reflectronic | <https://github.com/microsoft/mxc/issues/1750> |
| Issue | #1745 | Reduce NVX bundle verification overhead (~66% of local warmed SDK E2E latency) | closed | esaurez | <https://github.com/microsoft/mxc/issues/1745> |
| Issue | #1744 | NVX: complete platform snapshot capture/restore for create-and-run and lifecycle starts | closed | esaurez | <https://github.com/microsoft/mxc/issues/1744> |
| Issue | #1751 | Expose inherited stdio/console mode through the public SDK with telemetry | closed | nadiauddin03 | <https://github.com/microsoft/mxc/issues/1751> |
| Issue | #1741 | ProcessContainer: `captureDenials` fails with `E_NOTIMPL` on 25H2/26H2 build .9974, but `nativeCaptureAvailable` reports true | open | theelliotm | <https://github.com/microsoft/mxc/issues/1741> |
| Issue | #1757 | Add native PTY support in ProcessContainer | open | bbonaby | <https://github.com/microsoft/mxc/issues/1757> |
| Issue | #1758 | PSEC: sandboxed processes can't launch packaged apps | open | reflectronic | <https://github.com/microsoft/mxc/issues/1758> |
| Issue | #1746 | [WSLC] Support hostLoopback on bridged containers. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1746> |
| Issue | #1743 | [WSLC] Enforce minimum version or add version gating for specific features during probe. | open | theelliotm | <https://github.com/microsoft/mxc/issues/1743> |
| Issue | #1650 | [IsolationSession] The concurrent one-shot test relies on log-file writes that fail without any session ending early | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1650> |
| Issue | #1636 | [Bubblewrap] Workload starts when network rule installation fails | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1636> |
| Issue | #1615 | Add new experimental backend for Windows 365 | closed | tbyfield | <https://github.com/microsoft/mxc/issues/1615> |
| Issue | #1462 | [WSLC] In-built proxy for networking | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1462> |
