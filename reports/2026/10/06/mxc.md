# microsoft/mxc

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 66 |
| クローズ (未マージ) PR     | 18 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 12 |
| クローズ Issue             | 31 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [microsoft/mxc#1382](https://github.com/microsoft/mxc/pull/1382): 実行 raw-config の最低契約が `0.9.0-alpha` となり、v0.6〜v0.8 exact contract を削除しました。古い構成を directional network policy の対応版へ移行してください。
- **⚠ 破壊的変更** [microsoft/mxc#1355](https://github.com/microsoft/mxc/pull/1355)／[microsoft/mxc#1385](https://github.com/microsoft/mxc/pull/1385): 契約型・container API を `mxc_sdk::v1`／`Microsoft.Mxc.Sdk.V1`／`@microsoft/mxc-sdk/v1` へ移行し、native runtime と SDK を整合してください。
- **⚠ 破壊的変更** [microsoft/mxc#1398](https://github.com/microsoft/mxc/pull/1398): Node V1 は通常の動詞名で Promise を返し、重複した blocking／Async API を削除、`waitAsync()` を `wait()` に改名しました。呼出し名と await を変更してください。
- **⚠ 挙動変更** [microsoft/mxc#1339](https://github.com/microsoft/mxc/pull/1339): IsolationSession の `process.env` は空配列でも `inheritDefaultEnv: true` が必要です。意図した継承を明示するか env を省略し、無継承を保証すると誤解しないでください。
- **⚠ セキュリティ** [microsoft/mxc#1312](https://github.com/microsoft/mxc/pull/1312): Hyperlight の Windows allow／deny path overlap 検出を修正しました。該当 policy の検証結果を確認してください。
- **⚠ セキュリティ（依存）** [microsoft/mxc#1124](https://github.com/microsoft/mxc/pull/1124): 実際の本文・変更範囲は Cargo.lock の anyhow 1.0.102→1.0.103（RUSTSEC-2026-0190）です。タイトルだけで fast-uri も修正されたと判断しないでください。
- **仕様公開** [microsoft/mxc#1270](https://github.com/microsoft/mxc/pull/1270): exact 1.0.0 構成契約を公開し開発契約を1.1.0-alphaへ更新しました。契約公開と全 SDK／製品の GA は別です。
- **未解決の policy parity** [microsoft/mxc#824](https://github.com/microsoft/mxc/issues/824): 廃止ではなく WSLc one-shot／state-aware の差異報告です。特に portMappings は未マージの [microsoft/mxc#1369](https://github.com/microsoft/mxc/pull/1369) を追跡し、同等に適用済みと判断しないでください。

## 主要な変更点

- 自動分類の漏れを補足し、1.0 exact contract の公開、旧 schema 削除、versioned SDK namespace と Node Promise API への移行を主要変更としました。
- FFI は exact versioned JSON の入口へ統一が進みました。microsoft/mxc#1349 は基盤段階で、Node／.NET 切替と private binding export cleanup は後続 microsoft/mxc#1350／microsoft/mxc#1351／microsoft/mxc#1352 と合わせて確認してください。
- IsolationSession の環境継承強制、Hyperlight path overlap 修正、anyhow advisory 更新は既存 policy・依存に影響します。拒否結果の変更も回帰確認してください。
- [microsoft/mxc#1364](https://github.com/microsoft/mxc/pull/1364) は ProcessContainer の policy 拒否を exit 1・`policy_validation` に分類し、重複 stderr を整理しました。generic backend failure と区別する consumer を更新してください。
- PTY API と Unix backend support、LXC の in-process streaming・container 単位 termination がマージされました。ProcessContainer の Node PTY は未マージです。
- WSLc の失敗出力保全、Node spawn の JS thread 外実行、.NET の AnyCPU／AOT 対応も進みました。policy parity と portMappings の未解決項目は次回へ継続します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1398 | Make Node V1 APIs idiomatic | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1398> |
| PR | #1384 | Add caller-controlled PTY support for unix based backends | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1384> |
| PR | #1393 | test(process-container): realign stale UI policy, captureDenials and clipboard probe tests | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1393> |
| PR | #1394 | [CI] Update stale class reference for isolation session | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1394> |
| PR | #1383 | Normalize directional network input directly | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1383> |
| PR | #1382 | Retire pre-v0.9 schema contracts and migrate configurations | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1382> |
| PR | #1376 | IsoSession Runtime version checks | merged | daamenik | <https://github.com/microsoft/mxc/pull/1376> |
| PR | #1385 | Align Rust, .NET, and Node SDKs around versioned container APIs | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1385> |
| PR | #1377 | [SDK] Add caller-controlled PTY process APIs  | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1377> |
| PR | #1379 | Restore Rust SDK lifecycle mapper parity tests | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1379> |
| PR | #1380 | Fix the Linux CI FFI routing test selector | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1380> |
| PR | #1353 | Move the SDK authoring types into mxc-sdk | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1353> |
| PR | #1352 | Remove the binding request FFI exports | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1352> |
| PR | #1351 | Switch .NET to exact JSON FFI ingress | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1351> |
| PR | #1350 | Switch Node to exact JSON FFI ingress | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1350> |
| PR | #1349 | Make exact versioned JSON the only FFI configuration ingress | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1349> |
| PR | #1371 | [IsolationSession] Select the C# end-to-end test classes in any namespace | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1371> |
| PR | #1370 | [Hyperlight] Bump hyperlight-unikraft to v0.17.0 | merged | danbugs | <https://github.com/microsoft/mxc/pull/1370> |
| PR | #1354 | [Node] Spawn the native sandbox off the JavaScript thread | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1354> |
| PR | #1355 | Move contract-mapped v1 SDK types into V1 namespaces | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1355> |
| PR | #1361 | Modify System.Text.Json Usage to be AOT-Compatible | merged | daamenik | <https://github.com/microsoft/mxc/pull/1361> |
| PR | #1333 | [LXC] (4/5) Turn on in-process streaming | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1333> |
| PR | #1368 | [docs/test] Clarify `desktopSystemControl` policy behavior | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1368> |
| PR | #1367 | chore(deps-dev): bump brace-expansion from 5.0.9 to 5.0.12 in /sdk/node/tests/integration | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1367> |
| PR | #1338 | [test] Fix clipboard UI policy validation | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1338> |
| PR | #1329 | [LXC] (3/5) Harden concurrency and cleanup | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1329> |
| PR | #1271 | Make the v1 SDKs own their contract version | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1271> |
| PR | #1312 | Fix Hyperlight path overlap fallback | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1312> |
| PR | #1318 | [WSLC] Pull a missing image instead of failing the run | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1318> |
| PR | #1304 | Unify Rust SHA-2 dependency version | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1304> |
| PR | #1348 | Reject a blank ProcessContainer proxy peer | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1348> |
| PR | #1364 | [Process Container] Report policy rejections as exit 1 with a policy_validation code | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1364> |
| PR | #1358 | Replace terminology highlighted by PoliCheck | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1358> |
| PR | #1360 | Updates all backend tests to 1.0 (or highest supported ver.) | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1360> |
| PR | #1363 | Document and pin the default-deny ingress controls | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1363> |
| PR | #1362 | [IsolationSession] Run nightly isolation-session validation on 26H1 | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1362> |
| PR | #1276 | Add Node and .NET request probe APIs | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1276> |
| PR | #1326 | [LXC] (2/5) Add an in-process streaming sandbox handle with container-scoped termination | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1326> |
| PR | #1331 | [Bubblewrap] Skip IPv6 rules when the kernel has no IPv6 | merged | timrogers | <https://github.com/microsoft/mxc/pull/1331> |
| PR | #1341 | test(lxc): bump the LXC suite to schema 0.9, enable internet test, and make its DNS cases hermetic | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1341> |
| PR | #1340 | Build .NET SDK as AnyCPU | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1340> |
| PR | #1334 | Normalize repository line endings | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1334> |
| PR | #1339 | [IsolationSession] Refuse process.env without inheritDefaultEnv | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1339> |
| PR | #1345 | chore(deps-dev): bump undici from 6.28.0 to 6.29.0 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1345> |
| PR | #1347 | chore(deps): bump fast-uri from 3.1.7 to 3.1.8 in /scripts/versioning | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1347> |
| PR | #1343 | chore(deps-dev): bump brace-expansion from 1.1.18 to 1.1.21 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1343> |
| PR | #1344 | chore(deps): bump brace-expansion from 5.0.9 to 5.0.12 in /sdk/node | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1344> |
| PR | #1346 | chore(deps-dev): bump electron from 39.8.10 to 41.10.6 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1346> |
| PR | #1342 | chore(deps): bump the github-actions group with 2 updates | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1342> |
| PR | #1270 | Publish exact 1.0 and open 1.1 development | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1270> |
| PR | #1313 | [LXC] (1/5) Split run_internal into prepare/tear_down and capture /etc/hosts helper output | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1313> |
| PR | #1325 | [Isolation Session] State aware tests now correctly check stderr for malformed_id | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1325> |
| PR | #1316 | [LXC] RHEL setup is now correctly documented and supported in CI  | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1316> |
| PR | #1300 | Reject an unmappable WSLc one-shot process.cwd | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1300> |
| PR | #1314 | [IsolationSession] Call the parentWindowId overloads when the host advertises them | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1314> |
| PR | #1320 | Bug fix: Telemetry fields w/o target_os = Windows would cause build.sh to fail on WSL | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1320> |
| PR | #1315 | chore(deps-dev): bump ip-address from 10.4.0 to 10.7.2 in /sdk/node | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1315> |
| PR | #1319 | Adding $schema to all Test and Example Configs | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1319> |
| PR | #1311 | Bubblewrap tests no longer use invalid legacy networking combinations rejected by #1071 | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1311> |
| PR | #1297 | Stabilize bwrap worker ordering test | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1297> |
| PR | #1296 | Fix LXC test temp directory collisions | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1296> |
| PR | #1295 | Fix Node SDK proc scan process-exit race | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1295> |
| PR | #1308 | [WSLC] Stop state-aware exec failures from corrupting the output they report on | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1308> |
| PR | #1124 | fix(deps): bump fast-uri and anyhow to patch published CVEs | merged | aeonframework | <https://github.com/microsoft/mxc/pull/1124> |
| PR | #1290 | Fail unavailable guarded denial capture before sandbox creation | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1290> |
| PR | #1269 | Add canonical SDK major targets | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1269> |
| PR | #1386 | Add COM diagnostics and retain unrecognized Learning Mode events | closed | jacobdereje-msft | <https://github.com/microsoft/mxc/pull/1386> |
| PR | #1392 | Fixing "'MxcSandboxIsolationSessionE2ETests' executed no tests" CI error | closed | daamenik | <https://github.com/microsoft/mxc/pull/1392> |
| PR | #1336 | Exit codes are consistent cross-backend w/ structured ScriptResponse JSON | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1336> |
| PR | #1381 | [ProcessContainer] Add caller-controlled PTY support | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1381> |
| PR | #1302 | Migrate Node SDK to typed FFI ingress | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1302> |
| PR | #1301 | Add symmetric typed and JSON FFI ingress | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1301> |
| PR | #1303 | Migrate .NET SDK to typed FFI ingress | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1303> |
| PR | #1310 | Clarify omitted host-loopback default in networking guide | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1310> |
| PR | #1372 | LXC correctly handles default network and allow/deny combinations. | closed | dhoehna | <https://github.com/microsoft/mxc/pull/1372> |
| PR | #1375 | User/dgiandinoto/isosession runtime version check | closed | daamenik | <https://github.com/microsoft/mxc/pull/1375> |
| PR | #1069 | docs: add guide for debugging workloads in the process container | closed | asklar | <https://github.com/microsoft/mxc/pull/1069> |
| PR | #1242 | Centralize state-aware contract version handling | closed | RamonArjona4 | <https://github.com/microsoft/mxc/pull/1242> |
| PR | #1332 | [LXC] Halve the time a container takes to receive an address | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1332> |
| PR | #1335 | wxc-exec.exe: Exit code `1` (not `-1`) for backend policy rejection | closed | jsidewhite | <https://github.com/microsoft/mxc/pull/1335> |
| PR | #1323 | Fix LXC schema drift guard | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/1323> |
| PR | #1321 | [WSLC] Add live-host state-aware provision tests to the Rust and .NET SDKs | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1321> |
| PR | #1317 | Remove $schema from all configs in /tests/configs | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1317> |
| PR | #1307 | [WSLC] Stop state-aware exec failures from corrupting the output they report on | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1307> |
| PR | #1390 | Consolidate Rust SDK crates into one publishable package | open | bbonaby | <https://github.com/microsoft/mxc/pull/1390> |
| PR | #1400 | Add ProcessContainer PTY support to Node SDK | open | bbonaby | <https://github.com/microsoft/mxc/pull/1400> |
| PR | #1401 | [CI] Skip hostLoopback=allow assertions on non-PSEC tiers | open | theelliotm | <https://github.com/microsoft/mxc/pull/1401> |
| PR | #1399 | Add scenario-based SDK samples | open | jsidewhite | <https://github.com/microsoft/mxc/pull/1399> |
| PR | #1397 | Retire pre-v0.9 network compatibility paths | open | MGudgin | <https://github.com/microsoft/mxc/pull/1397> |
| PR | #1396 | Retain unrecognized Learning Mode events | open | jacobdereje-msft | <https://github.com/microsoft/mxc/pull/1396> |
| PR | #1395 | Add COM diagnostics to Learning Mode | open | jacobdereje-msft | <https://github.com/microsoft/mxc/pull/1395> |
| PR | #1369 | [WSLC] Honor portMappings on the state-aware provision surface | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1369> |
| PR | #1388 | Remove preview disclaimer from README | open | kanismohammed | <https://github.com/microsoft/mxc/pull/1388> |
| PR | #1309 | docs: add MXC Policy Store feature spec | open | ChazGo | <https://github.com/microsoft/mxc/pull/1309> |
| PR | #1387 | Fix ProcessContainer environment block sort lint | open | MGudgin | <https://github.com/microsoft/mxc/pull/1387> |
| PR | #1373 | ProcessContainer: let an identity-less proxy run under PSEC 1.0 | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1373> |
| PR | #1359 | [IsolationSession] One bundle builder and one suite runner for ADO, GitHub, and the OS lab | open | danlegg | <https://github.com/microsoft/mxc/pull/1359> |
| PR | #1337 | Add Rust SDK crates.io release pipeline | open | bbonaby | <https://github.com/microsoft/mxc/pull/1337> |
| Issue | #1389 | Align and reorganize current MXC container policy documentation | open | bbonaby | <https://github.com/microsoft/mxc/issues/1389> |
| Issue | #1391 | [CI] Isolation Session: 'MxcSandboxIsolationSessionE2ETests' executed no tests | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1391> |
| Issue | #1357 | [LXC] Halve the launch time of networked containers with optional removal of a duplicate ARP check | open | theelliotm | <https://github.com/microsoft/mxc/issues/1357> |
| Issue | #1365 | concurrent_grant_revoke_never_corrupts_the_store is flaky | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1365> |
| Issue | #1366 | Allow mapping a host file source to a different destination path in the sandbox | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1366> |
| Issue | #1374 | Hyperlight: opt-in persistent sessions with checkpoint export and restore | open | antsok | <https://github.com/microsoft/mxc/issues/1374> |
| Issue | #1378 | Bubblewrap  FirewallEnforced / ProxyOnly  network setup races with short-lived sandboxed processes —  slirp4netns / nsenter  fail with  /proc/<pid>/ns/net: No such file or directory | open | franckspike | <https://github.com/microsoft/mxc/issues/1378> |
| Issue | #1306 | Add the Rust SDK crates.io release pipeline | open | bbonaby | <https://github.com/microsoft/mxc/issues/1306> |
| Issue | #1305 | .NET SDK is not Native AOT compatible | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1305> |
| Issue | #1330 | [Bubblewrap] Private-network sandboxes fail to start on a kernel without IPv6 | closed | timrogers | <https://github.com/microsoft/mxc/issues/1330> |
| Issue | #1328 | Unable to use ARM version of the .NET SDK because `Microsoft.Mxc.sdk.dll` is AMD64 | closed | petertorr | <https://github.com/microsoft/mxc/issues/1328> |
| Issue | #1324 | [IsolationSession] State-aware E2E reads the real-exec malformed_id envelope from stdout after #1308 moved it to stderr | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1324> |
| Issue | #1280 | Cross SDK public API surface alignment for creating containers | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1280> |
| Issue | #1000 | LXC: `protocol: any` combined with a port lowers only TCP and UDP, narrowing deny rules | closed | dhoehna | <https://github.com/microsoft/mxc/issues/1000> |
| Issue | #1291 | [LXC] No support for in proc stdio streaming in any SDK | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1291> |
| Issue | #1245 | Process container: permissive UI policy values are not grantable | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1245> |
| Issue | #1246 | Process container: clipboard restrictions are not enforced on the prerelease Windows build | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1246> |
| Issue | #1085 | Centralize state-aware telemetry version handling in native execution boundary | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1085> |
| Issue | #844 | Unify duplicate sha2 versions in the Rust workspace | closed | MGudgin | <https://github.com/microsoft/mxc/issues/844> |
| Issue | #1247 | Process container: backend policy rejections exit -1 with a generic backend_error code | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1247> |
| Issue | #1032 | Contradictory spec and parser semantics for an omitted network.ingress.hostLoopback | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1032> |
| Issue | #1279 | Platform, Backend Probe and Backend Capability APIs not unified between the in proc SDKs | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1279> |
| Issue | #843 | State-aware exec streaming + typed-error contract gaps (FFI in-process + CLI executor framing) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/843> |
| Issue | #1165 | inheritDefaultEnv is not honored on IsolationSession or WSLc | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1165> |
| Issue | #757 | Harden the default sandbox working directory against DLL/executable planting | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/757> |
| Issue | #1274 | LXC: Network tests in CI fail due to not receiving an IPv4 address | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1274> |
| Issue | #902 | [Cross-backend] process.cwd is silently discarded or resolved against host state | closed | dhoehna | <https://github.com/microsoft/mxc/issues/902> |
| Issue | #637 | Allow additional Process Container capabilities in the Rust SDK just like in the TypeScript SDK | closed | Hyphrio | <https://github.com/microsoft/mxc/issues/637> |
| Issue | #887 | Expose backend-specific configuration in the Rust SDK | closed | bbonaby | <https://github.com/microsoft/mxc/issues/887> |
| Issue | #1106 | [WSLC] Package wslcsdk.dll into the C# NuGet package | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1106> |
| Issue | #1218 | [API Surface] State-aware: Remove 'phase' operations from json schema | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1218> |
| Issue | #1234 | [Node SDK] Windows bwrap worker ordering test is flaky | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1234> |
| Issue | #1292 | [LXC] Parallel mount tests can collide on timestamp-based temp directories | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1292> |
| Issue | #1293 | [Node SDK] Bubblewrap detached-anchor test races process exit during /proc scan | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1293> |
| Issue | #1248 | captureDenials run path does not check guarded capture availability before creating the sandbox | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1248> |
| Issue | #952 | Adopt RAII telemetry provider registrations | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/952> |
| Issue | #1181 | BaseContainer: Remove legacy experimental CreateProcessInSandbox (SBOX) path | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1181> |
| Issue | #1168 | Move the Node SDK to in-process execution | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1168> |
