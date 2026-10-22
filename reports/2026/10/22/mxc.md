# microsoft/mxc

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 12 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 13 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 対象期間に自動判定された破壊的変更、セキュリティ修正、非推奨、GA はありません。
- WSLC セッションライフサイクルを段階的に公開し、状態保持と明示的なライフサイクル管理を進めています。
- Bubblewrap／Seatbelt／ProcessContainer 周辺では、サンドボックス権限、シンボリックリンク、socket 制約、PTY アクセスの強化が継続しています。
- Electron Playground の削除、NVX の設計・フェーズ実装、agent/code-review ガイダンスの追加など開発基盤の整理も進んでいます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1557 | test: serialize IsolationSession integration tests | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1557> |
| PR | #1550 | [WSLC] Bump WSLc SDK to 3.0.3 | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1550> |
| PR | #1553 |  test: scope host loopback coverage to direct connections test: fix ARM64 | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1553> |
| PR | #1546 | Remove the Electron Playground | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1546> |
| PR | #1448 | feat: NVX integration design doc | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1448> |
| PR | #1512 | [WSLC] (4/4) Expose explicit session lifecycle | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1512> |
| PR | #1530 | Restrict default Seatbelt PTY access to workload terminals | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1530> |
| PR | #1536 | [Hyperlight] Fetch images over native-tls instead of rustls | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1536> |
| PR | #1457 | Removing CAP_NET_RAW and adding ping group range to keep ping. | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1457> |
| PR | #1503 | [WSLC] (3/4) Add the session lifecycle phases and dispatch routing | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1503> |
| PR | #1489 | [WSLC] (2/4) Hold multiple sessions in the lifecycle daemon | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1489> |
| PR | #1519 | Codify MXC agent and code-review guidance | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1519> |
| PR | #1552 | Quarantine proxy-ingress regression in ARM64 PR CI | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1552> |
| PR | #1500 | chore(deps): bump the github-actions group with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1500> |
| PR | #1526 | [Bubblewrap] Fork bwrap from a process-lifetime thread | open | keithmattix | <https://github.com/microsoft/mxc/pull/1526> |
| PR | #1558 | Remove Tier2 and Tier3 ProcessContainer fallbacks | open | MGudgin | <https://github.com/microsoft/mxc/pull/1558> |
| PR | #1547 | Remove the unused Node subprocess spawn helper | open | MGudgin | <https://github.com/microsoft/mxc/pull/1547> |
| PR | #1559 | Remove dead code left by the ProcessContainer fallbacks | open | MGudgin | <https://github.com/microsoft/mxc/pull/1559> |
| PR | #1556 | Reject embedded NULL in containerID | open | safmswork | <https://github.com/microsoft/mxc/pull/1556> |
| PR | #1554 | Add a relay to enable a loopback proxy in LXC | open | dhoehna | <https://github.com/microsoft/mxc/pull/1554> |
| PR | #1529 | [Bubblewrap] Restrict socket address families and io_uring with an always-on seccomp filter | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1529> |
| PR | #1539 | NVX Phase 3: Streaming and Container Lifecycle | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1539> |
| PR | #1531 | [Seatbelt] Fix symlink and parent-traversal policy enforcement | open | theelliotm | <https://github.com/microsoft/mxc/pull/1531> |
| PR | #1542 | chore(deps): bump the github-actions group across 1 directory with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1542> |
| PR | #1541 | [Bubblewrap] Fix terminal isolation and startup cancellation | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1541> |
| PR | #1528 | NVX Phase 1: Minimal Signed MicroVM integration | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1528> |
| PR | #1538 | NVX Phase 2: Policy Support and Image Selection | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1538> |
| PR | #1534 | Define the feature contribution and spec review process | open | bbonaby | <https://github.com/microsoft/mxc/pull/1534> |
| Issue | #1525 | Bubblewrap sandbox can die when its spawning thread exits | open | keithmattix | <https://github.com/microsoft/mxc/issues/1525> |
| Issue | #1555 | ProcessContainer exact write grant for an absent file is dropped before BFS registration | open | r7games-art | <https://github.com/microsoft/mxc/issues/1555> |
| Issue | #1551 | ProcessContainer proxy mode blocks allowed host-to-container loopback ingress | open | MGudgin | <https://github.com/microsoft/mxc/issues/1551> |
| Issue | #1549 | [.NET SDK] NativeLibraryResolver prints a misleading "falling back to the default loader" warning when the host already registered a resolver | open | paulcam206 | <https://github.com/microsoft/mxc/issues/1549> |
| Issue | #1548 | Windows sandbox fails for workspaces on folder-mounted volumes | open | dileepyavan | <https://github.com/microsoft/mxc/issues/1548> |
| Issue | #1545 | [Bubblewrap] Resolve required sandbox tools using inherited PATH plus standard system-directory fallbacks | open | dileepyavan | <https://github.com/microsoft/mxc/issues/1545> |
| Issue | #1544 | Expose inherit console option on SDK | open | AndreaVielCGN | <https://github.com/microsoft/mxc/issues/1544> |
| Issue | #1543 | [docs] Explain the macOS 15 floor for Seatbelt and which Windows hosts get ProcessContainer | open | SunflowersLwtech | <https://github.com/microsoft/mxc/issues/1543> |
| Issue | #1535 | The Hyperlight image download pulls in `ring`, which Component Governance flags | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1535> |
| Issue | #1537 | Remove macOS and Linux binaries from the built npm package | open | bbonaby | <https://github.com/microsoft/mxc/issues/1537> |
| Issue | #1533 | Windows BaseContainer: files outside explicit filesystem grants remain readable - clarify baseline access or strict allowlisting support | open | liufuyang | <https://github.com/microsoft/mxc/issues/1533> |
| Issue | #1532 | Documentation: Bounded process-tree termination and settlement guarantees | open | DalekPierce | <https://github.com/microsoft/mxc/issues/1532> |
| Issue | #1527 | Rust SDK: document and expose Seatbelt descendant teardown guarantees | open | vineethsai7 | <https://github.com/microsoft/mxc/issues/1527> |
| Issue | #1460 | [WSLC] [Per-app session support] Support multiple concurrent sessions per user on the state-aware surface | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1460> |
| Issue | #610 | Rename base container to process container in docs and code | closed | bbonaby | <https://github.com/microsoft/mxc/issues/610> |
| Issue | #1429 | IsolationSession: a second deprovision reports success instead of stale_id | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1429> |
