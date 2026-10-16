# microsoft/mxc

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 52 |
| クローズ (未マージ) PR     | 16 |
| 新規 PR (オープン中)       | 18 |
| 新規 Issue                 | 37 |
| クローズ Issue             | 11 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1430](https://github.com/microsoft/mxc/issues/1430) — Seatbelt: stat() succeeds on a deniedPaths entry, leaking size and timestamps （Issue / closed / theelliotm）
Seatbelt で明示的に拒否した path の size／timestamp が漏れる問題は Issue がクローズされ、修正 PR #1439 がマージされています。利用者は修正版を取り込み、拒否対象 metadata が取得できないことを確認してください。
- **非推奨/廃止** [#824](https://github.com/microsoft/mxc/issues/824) — [WSLC] One-shot vs state-aware network-policy parity: fail-open redundant host lists and dropped portMappings （Issue / closed / SohamDas2021）
state-aware provisioning の network policy を使う利用者は、Issue がクローズ済みであることを踏まえ、重複 host list や `portMappings` の扱いを現行実装で確認してください。

## 主要な変更点

- Seatbelt の denied path から metadata が漏れる問題に対し、修正 PR がマージされました（[#1430](https://github.com/microsoft/mxc/issues/1430)、[#1439](https://github.com/microsoft/mxc/pull/1439)）。
- backend と isolation tier ごとの probe coverage を強化し、検証漏れを防ぐ変更が入りました（[#1491](https://github.com/microsoft/mxc/pull/1491)、[#1431](https://github.com/microsoft/mxc/pull/1431)）。
- WSLC lifecycle daemon の image store 移行と concurrent exec 対応が進み、busy container では実行を拒否する構成になりました（[#1475](https://github.com/microsoft/mxc/pull/1475)、[#1428](https://github.com/microsoft/mxc/pull/1428)、[#1407](https://github.com/microsoft/mxc/pull/1407)）。
- Bubblewrap では loopback／stub resolver の DNS 解決と mount 警告を改善し、network namespace の起動信頼性を高めています（[#1497](https://github.com/microsoft/mxc/pull/1497)、[#1453](https://github.com/microsoft/mxc/pull/1453)、[#1441](https://github.com/microsoft/mxc/pull/1441)）。
- Learning Mode の WFP network event decode、trace startup、diagnostics が改善され、policy decision の調査を支援します（[#1418](https://github.com/microsoft/mxc/pull/1418)、[#1419](https://github.com/microsoft/mxc/pull/1419)、[#1417](https://github.com/microsoft/mxc/pull/1417)）。
- Node v1 の conformance を公開 1.0 contract に整合し、未知の ProcessContainerUi 設定値は拒否するようになりました（[#1479](https://github.com/microsoft/mxc/pull/1479)、[#1478](https://github.com/microsoft/mxc/pull/1478)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1509 | Update the Learning Mode network provider GUID | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1509> |
| PR | #1491 | Enforce probe coverage for every backend and isolation tier | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1491> |
| PR | #1475 | [WSLC] (1/4) Move the lifecycle daemon off the create-and-run image store | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1475> |
| PR | #1497 | [Bubblewrap] Wait for loopback before starting slirp | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1497> |
| PR | #1420 | docs: describe WFP denial capture | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1420> |
| PR | #1476 | Fix macOS PTY deadlocks and run the mxc_pty tests in CI | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1476> |
| PR | #1493 | Migrate release pipelines to 1ES and shared ESRP configuration | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1493> |
| PR | #1488 | [Bubblewrap / CI]: Pin the name-service chain the loopback-resolver DNS test resolves through | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1488> |
| PR | #1478 | Reject unknown ProcessContainerUi settings values | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1478> |
| PR | #1419 | fix: route captured network decisions through Tessera | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1419> |
| PR | #1479 | Align Node v1 conformance with the published 1.0 contract | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1479> |
| PR | #1474 | Fix flaky telemetry consent store lock contention | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/1474> |
| PR | #1471 | docs: Add versioned containment policy references | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1471> |
| PR | #1472 | vpack: promote only SPDX 2.2 manifest to top-level _manifest | merged | danlegg | <https://github.com/microsoft/mxc/pull/1472> |
| PR | #1453 | [Bubblewrap] Resolve DNS when the host uses a loopback stub resolver | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1453> |
| PR | #1454 | [docs] Glossary + simplify doc terms | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1454> |
| PR | #1418 | feat: decode WFP Learning Mode network events | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1418> |
| PR | #1456 | Fix IsolationSession bundle BinSkim failure | merged | danlegg | <https://github.com/microsoft/mxc/pull/1456> |
| PR | #1442 | Warn about unmatched Bubblewrap cwd mounts | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1442> |
| PR | #1441 | Warn about unmatched Bubblewrap resolver mounts | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1441> |
| PR | #1396 | Scope verbose diagnostics to Learning Mode events | merged | jacobdereje-msft | <https://github.com/microsoft/mxc/pull/1396> |
| PR | #1428 | [WSLC] (2/2) Admit concurrent execs and refuse a busy container | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1428> |
| PR | #1407 | [WSLC] (1/2) Run the state-aware daemon's exec off the single worker thread | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1407> |
| PR | #1395 | Add COM diagnostics to Learning Mode | merged | jacobdereje-msft | <https://github.com/microsoft/mxc/pull/1395> |
| PR | #1417 | feat: prefer option-aware Learning Mode trace startup | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1417> |
| PR | #1439 | [Seatbelt] Explicitly denied path no longer leaks metadata | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1439> |
| PR | #1431 | Close backend validation coverage gaps | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1431> |
| PR | #1387 | Fix ProcessContainer environment block sort lint | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1387> |
| PR | #1434 | chore(deps): bump the github-actions group with 2 updates | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1434> |
| PR | #1438 | [docs] os version support | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1438> |
| PR | #1437 | [docs] Update landing readme.md | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1437> |
| PR | #1369 | [WSLC] Honor portMappings on the state-aware provision surface | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1369> |
| PR | #1433 | Fix build break on Windows runner | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1433> |
| PR | #1406 | feat(process-container): discover identity-less loopback proxy support | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1406> |
| PR | #1397 | Retire pre-v0.9 runtime compatibility vestiges | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1397> |
| PR | #1432 | Fix NuGet package copyright metadata | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1432> |
| PR | #1427 | [docs] Move-only reorganization | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1427> |
| PR | #1414 | [CI] Add 26H2 to nightly validation tests | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1414> |
| PR | #1410 | Sign NuGet packages in official build | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1410> |
| PR | #1411 | [docs] Tag audience in .md files | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1411> |
| PR | #1408 | Display the error message when a dry run fails during backend policy validation | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1408> |
| PR | #1409 | Remove orphaned published contract files | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1409> |
| PR | #1401 | [CI] Skip hostLoopback=allow assertions on non-PSEC tiers | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1401> |
| PR | #1405 | Fix crates.io publish dry run registry | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1405> |
| PR | #1404 | Fix crates release pipeline template paths | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1404> |
| PR | #1399 | Add scenario-based SDK samples | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1399> |
| PR | #1402 | Remove experimental from V1 SDK options | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1402> |
| PR | #1403 | Update SDK packages to 1.0.0 and populate native DLL metadata | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1403> |
| PR | #1388 | Remove preview disclaimer from README | merged | kanismohammed | <https://github.com/microsoft/mxc/pull/1388> |
| PR | #1400 | Add ProcessContainer PTY support to Node SDK | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1400> |
| PR | #1337 | Add Rust SDK crates.io release pipeline | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1337> |
| PR | #1390 | Consolidate Rust SDK crates into one publishable package | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1390> |
| PR | #1416 | Document supported containment policy contracts | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1416> |
| PR | #1425 | Remove remaining pre-v0.9 runtime vestiges | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1425> |
| PR | #1424 | Retire pre-v0.9 Unix network paths | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1424> |
| PR | #1426 | Remove remaining pre-v0.9 runtime vestiges | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1426> |
| PR | #1421 | Retire pre-v0.9 compatibility scaffolding | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1421> |
| PR | #1422 | Retire pre-v0.9 Windows and VM backend paths | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1422> |
| PR | #1423 | Retire pre-v0.9 LXC network paths | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1423> |
| PR | #1435 | Build fix | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1435> |
| PR | #1309 | docs: add MXC Policy Store feature spec | closed | ChazGo | <https://github.com/microsoft/mxc/pull/1309> |
| PR | #1223 | Publish the v0.9 MicroVM backend contract with NVX internally | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/1223> |
| PR | #1470 | Use signed NVX agent bundle for MicroVM E2E | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/1470> |
| PR | #1458 | Add basic NVX end-to-end integration | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/1458> |
| PR | #1469 | [WSLC] Add host probes for the multi-session store model | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1469> |
| PR | #1373 | ProcessContainer: let an identity-less proxy run under PSEC 1.0 | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/1373> |
| PR | #1415 | [docs] Move-only reorganization | closed | jsidewhite | <https://github.com/microsoft/mxc/pull/1415> |
| PR | #1413 | DOCUMENTATION 2 move | closed | jsidewhite | <https://github.com/microsoft/mxc/pull/1413> |
| PR | #1482 | Emit errors and warnings as structured ScriptResponse JSON | open | theelliotm | <https://github.com/microsoft/mxc/pull/1482> |
| PR | #1511 | [Seatbelt] Remove the `spawn-open` launch method and replace probe with system-lib function check | open | theelliotm | <https://github.com/microsoft/mxc/pull/1511> |
| PR | #1512 | [WSLC] (4/4) Expose explicit session lifecycle | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1512> |
| PR | #1504 | Preventing IsoSession relay Ctrl Handler from accessing closed stop-event handle | open | daamenik | <https://github.com/microsoft/mxc/pull/1504> |
| PR | #1489 | [WSLC] (2/4) Hold multiple sessions in the lifecycle daemon | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1489> |
| PR | #1503 | [WSLC] (3/4) Add the session lifecycle phases and dispatch routing | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1503> |
| PR | #1508 | bwrap: Add the option to skip the procfs mount | open | westurner | <https://github.com/microsoft/mxc/pull/1508> |
| PR | #1457 | Removing CAP_NET_RAW and adding ping group range to keep ping. | open | dhoehna | <https://github.com/microsoft/mxc/pull/1457> |
| PR | #1499 | Add per-run resource limits, priority, and resource usage | open | crmne | <https://github.com/microsoft/mxc/pull/1499> |
| PR | #1490 | Fix ProcessContainer host-loopback compatibility on PSEC 1.0 | open | bbonaby | <https://github.com/microsoft/mxc/pull/1490> |
| PR | #1501 | IsolationSession test bundle: ship test_scripts/lib/LoopbackAnchor.ps1 | open | danlegg | <https://github.com/microsoft/mxc/pull/1501> |
| PR | #1500 | chore(deps): bump the github-actions group with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1500> |
| PR | #1450 | Fix stdin relay for pipes in IsoSession | open | daamenik | <https://github.com/microsoft/mxc/pull/1450> |
| PR | #1483 | docs: propose the Policy Store requirements resolver | open | ChazGo | <https://github.com/microsoft/mxc/pull/1483> |
| PR | #1440 | Consume published IsolationSession SDK NuGet package | open | danlegg | <https://github.com/microsoft/mxc/pull/1440> |
| PR | #1463 | require opt-in for PowerShell whole-drive read access | open | mvanhorn | <https://github.com/microsoft/mxc/pull/1463> |
| PR | #1412 | Complete V1.Dev exact-JSON SDK APIs | open | MGudgin | <https://github.com/microsoft/mxc/pull/1412> |
| PR | #1448 | feat: NVX integration design doc | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1448> |
| Issue | #1459 | Seatbelt: detached descendants outlive kill/wait/dispose; clarify cross-session cleanup | open | SatyKrish | <https://github.com/microsoft/mxc/issues/1459> |
| Issue | #1506 | Seatbelt: accept loopback-only `egress.allow` port rules (alongside `runtimeConfig.networkProxy`) | open | geuben | <https://github.com/microsoft/mxc/issues/1506> |
| Issue | #1513 | [Seatbelt] Add a built-in proxy to handle CIDR filtering | open | theelliotm | <https://github.com/microsoft/mxc/issues/1513> |
| Issue | #1510 | [Seatbelt] Remove spawn_open launch method from code | open | theelliotm | <https://github.com/microsoft/mxc/issues/1510> |
| Issue | #1507 | bwrap: Add the option to skip the procfs mount | open | westurner | <https://github.com/microsoft/mxc/issues/1507> |
| Issue | #1505 | KB5127648 blocks all loopback connections from inside an MXC sandbox, including to the sandbox's own port | open | seannair | <https://github.com/microsoft/mxc/issues/1505> |
| Issue | #1462 | [WSLC] In-built proxy for networking | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1462> |
| Issue | #1449 | C/C++ SDK: publish a header for mxc_ffi, then add a thin C++ wrapper | open | sukesh-ak | <https://github.com/microsoft/mxc/issues/1449> |
| Issue | #1451 | Docs: PSEC startup attribute coexistence, identity defaults, and launch prerequisites | open | wfsky2015-debug | <https://github.com/microsoft/mxc/issues/1451> |
| Issue | #1452 | Docs: PSEC startup attribute coexistence, identity defaults, and launch prerequisites | open | wfsky2015-debug | <https://github.com/microsoft/mxc/issues/1452> |
| Issue | #1455 | getAvailableToolsPolicy grants read access to the whole system drive on BaseContainer when pwsh is on PATH | open | PierrunoYT | <https://github.com/microsoft/mxc/issues/1455> |
| Issue | #1460 | [WSLC] [Per-app session support] Support multiple concurrent sessions per user on the state-aware surface | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1460> |
| Issue | #1461 | PSEC: volume root of a granted path can't be opened for attributes | open | reflectronic | <https://github.com/microsoft/mxc/issues/1461> |
| Issue | #1464 | ProcessContainer (BaseContainer): GetFinalPathNameByHandleW(VOLUME_NAME_DOS) always fails — Mount Manager unreachable, breaks git's cwd and Node's realpath.native | open | laurentftech | <https://github.com/microsoft/mxc/issues/1464> |
| Issue | #1465 | BaseContainer: USER32-importing workloads fail with STATUS_DLL_INIT_FAILED from a non-interactive session even with ui.disable=false / isolation=desktop | open | bluecmd | <https://github.com/microsoft/mxc/issues/1465> |
| Issue | #1466 | [build] Compile generated Windows version resources with an explicit UTF-8 codepage | open | chogng | <https://github.com/microsoft/mxc/issues/1466> |
| Issue | #1467 | Process container: `SetCurrentDirectory` into a read-only path fails (FILE_TRAVERSE denied for directory opens) | open | bluecmd | <https://github.com/microsoft/mxc/issues/1467> |
| Issue | #1468 | Process container: environment creation costs ~1 ms per granted path in `GetVolumePathNameW` | open | bluecmd | <https://github.com/microsoft/mxc/issues/1468> |
| Issue | #1473 | ProcessContainer: mounted file-backed NTFS granted directory returns Access is denied | open | SEng-Kitathas | <https://github.com/microsoft/mxc/issues/1473> |
| Issue | #1477 | How to set full filesystem access? | open | liufuyang | <https://github.com/microsoft/mxc/issues/1477> |
| Issue | #1484 | [WSLC] One-shot without containerId fails: default session name "CLI" refused (WSLC_E_INVALID_SESSION_NAME, 0x80040608) | open | laurentftech | <https://github.com/microsoft/mxc/issues/1484> |
| Issue | #1487 | bfs.sys leaks paged pool per ProcessContainer filesystem grant | open | bluecmd | <https://github.com/microsoft/mxc/issues/1487> |
| Issue | #1492 | Add some usage examples, such as running Visual Studio Code in isolation to prevent malicious extensions. | open | frostblazergit | <https://github.com/microsoft/mxc/issues/1492> |
| Issue | #1494 | [Bubblewrap] platform_support() reports bubblewrap available where bwrap cannot create namespaces, and run() returns bwrap's failure as the workload's exit code | open | crmne | <https://github.com/microsoft/mxc/issues/1494> |
| Issue | #1495 | [Bubblewrap] Sandboxed workloads can create user namespaces; add --disable-userns or a seccomp filter | open | crmne | <https://github.com/microsoft/mxc/issues/1495> |
| Issue | #1496 | BaseContainer: LPAC (`processContainer.leastPrivilege`) without DACL mutation after the SBOX removal | open | rominf | <https://github.com/microsoft/mxc/issues/1496> |
| Issue | #1498 | Feature request: per-run resource limits, priority, and CPU accounting | open | crmne | <https://github.com/microsoft/mxc/issues/1498> |
| Issue | #1446 | Bubblewrap backend: defence-in-depth hardening (tracking) | open | kenchris | <https://github.com/microsoft/mxc/issues/1446> |
| Issue | #1485 | MXC 1.0 rejects host-loopback policies that worked in 0.8 on PSEC 1.0 hosts | open | iceweasel-oai | <https://github.com/microsoft/mxc/issues/1485> |
| Issue | #1481 | [Bubblewrap] Loopback Resolver DNS test fails | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1481> |
| Issue | #1486 | ProcessContainer leaks a SeLs lowbox-number entry per environment | open | bluecmd | <https://github.com/microsoft/mxc/issues/1486> |
| Issue | #1447 | Host callback channel for programmatic tool calling (PTC) in contained code | open | kenchris | <https://github.com/microsoft/mxc/issues/1447> |
| Issue | #1429 | IsolationSession: a second deprovision reports success instead of stale_id | open | theelliotm | <https://github.com/microsoft/mxc/issues/1429> |
| Issue | #1445 | [Bubblewrap/LXC/WSLC] protect files that run later inside writable grants | open | kenchris | <https://github.com/microsoft/mxc/issues/1445> |
| Issue | #1444 | Bubblewrap: use --new-session when stdio is not a PTY | open | kenchris | <https://github.com/microsoft/mxc/issues/1444> |
| Issue | #1443 | Bubblewrap: add a seccomp default-deny profile | open | kenchris | <https://github.com/microsoft/mxc/issues/1443> |
| Issue | #1430 | Seatbelt: stat() succeeds on a deniedPaths entry, leaking size and timestamps | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1430> |
| Issue | #769 | Backend probe: CI gate ensuring every tier/backend stays probe-covered | closed | huzaifa-d | <https://github.com/microsoft/mxc/issues/769> |
| Issue | #1286 | Add network into capture denials | closed | richiemsft | <https://github.com/microsoft/mxc/issues/1286> |
| Issue | #927 | New containment backend: macOS hardware isolation via Apple Virtualization.framework (VZ Linux microVM) | closed | adamwynne | <https://github.com/microsoft/mxc/issues/927> |
| Issue | #1365 | concurrent_grant_revoke_never_corrupts_the_store is flaky | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1365> |
| Issue | #507 | feat(bwrap): Improve error reporting for deny by default file system semantics | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/507> |
| Issue | #872 | WSLc one-shot silently ignores process.cwd when it is not a Windows drive path | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/872> |
| Issue | #824 | [WSLC] One-shot vs state-aware network-policy parity: fail-open redundant host lists and dropped portMappings | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/824> |
| Issue | #1281 | SDK samples needed for each supported SDK. | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1281> |
| Issue | #1306 | Add the Rust SDK crates.io release pipeline | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1306> |
