# microsoft/mxc

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 29 |
| クローズ (未マージ) PR     | 11 |
| 新規 PR (オープン中)       | 11 |
| 新規 Issue                 | 8 |
| クローズ Issue             | 27 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1233](https://github.com/microsoft/mxc/issues/1233) — ProcessContainer: legacy network.proxy + deniedPaths falls back to Tier 3 and fails on WRITE_DAC （Issue / open / caarlos0）
legacy `network.proxy` と `deniedPaths` の組み合わせで Tier 3 にフォールバックし、`WRITE_DAC` で失敗する問題が報告されています。該当設定を使う運用者は回避策と修正状況を確認してください。
- **非推奨/廃止** [#705](https://github.com/microsoft/mxc/pull/705) — Fix npm audit advisories and deprecated packages in Node projects （PR / merged / MGudgin）
Node project の npm audit advisory と deprecated package を修正しました。Node SDK／関連プロジェクトの依存を更新し、audit 結果を確認してください。

## 主要な変更点

- Node SDK の telemetry consent 処理を `mxc_ffi` に移し、state-aware lifecycle も FFI 経由へ統合しました（[#1251](https://github.com/microsoft/mxc/pull/1251)、[#1236](https://github.com/microsoft/mxc/pull/1236)）。
- sandbox の network provider が失われた場合に実行を失敗させる fail-closed 動作を追加しました（[#1250](https://github.com/microsoft/mxc/pull/1250)）。
- LXC の egress policy では例外ルールが後続の deny を隠さないようにし、ICMP／port range／protocol any の GA suite coverage を拡充しています（[#1216](https://github.com/microsoft/mxc/pull/1216)、[#1225](https://github.com/microsoft/mxc/pull/1225)）。
- WSLC の stable support を含む v0.9 を公開し、runtime configuration と exact-contract checks を整理しました（[#1187](https://github.com/microsoft/mxc/pull/1187)、[#1189](https://github.com/microsoft/mxc/pull/1189)）。
- Node SDK では native stdio process／sandbox endpoint を FFI に公開し、npm 依存の audit advisory も修正されました（[#1224](https://github.com/microsoft/mxc/pull/1224)、[#1222](https://github.com/microsoft/mxc/pull/1222)、[#705](https://github.com/microsoft/mxc/pull/705)）。
- `legacy network.proxy` と `deniedPaths` の組み合わせに関するセキュリティ／実行失敗 issue は未解決です（[#1233](https://github.com/microsoft/mxc/issues/1233)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1251 | Move Node telemetry consent to mxc_ffi | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1251> |
| PR | #1250 | [Bubblewrap] Fail the run when the sandbox loses its network provider | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1250> |
| PR | #1249 | Test the telemetry consent path in release builds, and enable the telemetry smoke tests on arm64 | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1249> |
| PR | #1195 | 0.9: Honor inheritDefaultEnv on LXC, Bubblewrap, and Seatbelt | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1195> |
| PR | #1239 | Fail closed when MXC test bundles are stale | merged | danlegg | <https://github.com/microsoft/mxc/pull/1239> |
| PR | #1236 | Use mxc_ffi for Node state-aware lifecycle | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1236> |
| PR | #1240 | [WSLC] Preserve backend failure classification across the state-aware daemon protocol | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1240> |
| PR | #1238 | [LXC] Wait for an IPv4 address before running the workload | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1238> |
| PR | #1237 | [LXC] Refactor the CIDR block subtraction LXC uses to lower an egress policy | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1237> |
| PR | #1230 | Share exact-contract integration test support | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1230> |
| PR | #1216 | [LXC] Subtract an egress 'except' from its own rule so a carve-out cannot shadow a later deny | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1216> |
| PR | #1229 | Share exact-schema invariant tests | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1229> |
| PR | #1228 | Consolidate versioning gates and CI ownership | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1228> |
| PR | #1235 | Stabilize bwrap worker ordering test | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1235> |
| PR | #1217 | test(process-container): split the Windows suite into per-area scripts and add schema 0.8 network coverage | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1217> |
| PR | #1232 | Make PLM stale recovery actionable | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1232> |
| PR | #1226 | [refac] Fix missed renames from 'appcontainer' to 'process_container' | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1226> |
| PR | #1189 | [WSLC] Harden exact contract infrastructure | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1189> |
| PR | #1221 | WSLC scripts and tests now check for ARM targets on ARM systems | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1221> |
| PR | #1188 | [WSLC] Remove the rolling configuration architecture | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1188> |
| PR | #1224 | Add native stdio process support to the Node SDK | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1224> |
| PR | #1225 | [LXC] [Tests] Cover ICMP, port ranges, and protocol any in the live GA egress suite | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1225> |
| PR | #1187 | Publish v0.9 with stable WSLC support | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1187> |
| PR | #1222 | Expose native sandbox stdio endpoints through FFI | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1222> |
| PR | #1215 | [LXC] [Tests] Pin the directional egress default against an unresolvable deny | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1215> |
| PR | #1211 | [LXC] [Test/docs] State the network chains' limits, and test that inbound default-deny drops packets | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1211> |
| PR | #1198 | Move buffered API in Node SDK to in process | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1198> |
| PR | #1208 | [docs] Clean up copilot instructions & add architecture.md | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1208> |
| PR | #1197 | Add missing containment configs to Rust and .NET SDKs | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1197> |
| PR | #1219 | [API Surface] State-aware: Add 'phase' APIs + remove 'phase' ops from schema | closed | jsidewhite | <https://github.com/microsoft/mxc/pull/1219> |
| PR | #1147 | fix(cwd): reject a relative process.cwd on schema 0.9 and stop WSLc silently dropping it | closed | theelliotm | <https://github.com/microsoft/mxc/pull/1147> |
| PR | #1064 | [WSLC] Promote from experimental to the stable config surface | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1064> |
| PR | #1207 | Clarify IsolationSession runtime identity handling | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1207> |
| PR | #1184 | Publish the v0.9 contract and open v0.10 | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1184> |
| PR | #1185 | Remove the rolling configuration architecture | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1185> |
| PR | #1186 | Harden exact contract infrastructure | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1186> |
| PR | #1213 | Add callback-driven live execution to the Node SDK | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1213> |
| PR | #1200 | Add internal Node streaming APIs | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1200> |
| PR | #1212 | Add streaming I/O coordination to the engine | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1212> |
| PR | #1220 | [Proposal] Use native stdio streams in the Node SDK | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1220> |
| PR | #1253 | Enforce target-aware working directories | open | MGudgin | <https://github.com/microsoft/mxc/pull/1253> |
| PR | #1256 | Move lifecycle routing to executor arguments | open | MGudgin | <https://github.com/microsoft/mxc/pull/1256> |
| PR | #1254 | Add direct typed Rust state-aware transport | open | MGudgin | <https://github.com/microsoft/mxc/pull/1254> |
| PR | #1227 | Clarify v1 versioning direction | open | MGudgin | <https://github.com/microsoft/mxc/pull/1227> |
| PR | #1252 | Add native WSLC state-aware streaming exec | open | bbonaby | <https://github.com/microsoft/mxc/pull/1252> |
| PR | #1223 | Publish the v0.9 MicroVM backend contract with NVX internally | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1223> |
| PR | #1255 | Refine typed Rust lifecycle API | open | MGudgin | <https://github.com/microsoft/mxc/pull/1255> |
| PR | #1241 | [CI] Add nightly ARM64 tests for Process Containers and Isolation Session  | open | theelliotm | <https://github.com/microsoft/mxc/pull/1241> |
| PR | #1243 | Reuse native policy parsing in mxc_ffi | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/1243> |
| PR | #1244 | [WSLC] Document the native runtime files for Rust SDK consumers | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1244> |
| PR | #1242 | Centralize state-aware contract version handling | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/1242> |
| Issue | #1258 | WSLc state-aware daemon should expose native STDIO handles | open | jsidewhite | <https://github.com/microsoft/mxc/issues/1258> |
| Issue | #1248 | captureDenials run path does not check guarded capture availability before creating the sandbox | open | theelliotm | <https://github.com/microsoft/mxc/issues/1248> |
| Issue | #1247 | Process container: backend policy rejections exit -1 with a generic backend_error code | open | theelliotm | <https://github.com/microsoft/mxc/issues/1247> |
| Issue | #1246 | Process container: clipboard restrictions are not enforced on the prerelease Windows build | open | theelliotm | <https://github.com/microsoft/mxc/issues/1246> |
| Issue | #1245 | Process container: permissive UI policy values are not grantable | open | theelliotm | <https://github.com/microsoft/mxc/issues/1245> |
| Issue | #1233 | ProcessContainer: legacy network.proxy + deniedPaths falls back to Tier 3 and fails on WRITE_DAC | open | caarlos0 | <https://github.com/microsoft/mxc/issues/1233> |
| Issue | #1234 | [Node SDK] Windows bwrap worker ordering test is flaky | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1234> |
| Issue | #1218 | [API Surface] State-aware: Remove 'phase' operations from json schema | open | jsidewhite | <https://github.com/microsoft/mxc/issues/1218> |
| Issue | #1210 | [LXC] CI fails b/c the test script assumes a specific `iptables` chain exists | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1210> |
| Issue | #935 | [Bubblewrap] Proxy-only egress: slirp4netns dying mid-run leaves the sandbox with a broken network and no error | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/935> |
| Issue | #691 | Telemetry consent path has no automated coverage in release builds | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/691> |
| Issue | #1153 | Default PATH behavior is inconsistent across Linux and macOS backends | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1153> |
| Issue | #613 | Evaluate flatc/FlatBuffers-driven codegen vs hand-rolled schema/type conformance oracles | closed | MGudgin | <https://github.com/microsoft/mxc/issues/613> |
| Issue | #1142 | Pin logger output in corpus diagnostic-divergence expectations | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1142> |
| Issue | #702 | Verify whether newer-SDK/older-executor version skew occurs (justifies permissive experimental block) | closed | MGudgin | <https://github.com/microsoft/mxc/issues/702> |
| Issue | #703 | Unify one-shot and state-aware config parsing | closed | MGudgin | <https://github.com/microsoft/mxc/issues/703> |
| Issue | #1167 | [WSLC] State-aware daemon protocol flattens every backend failure to `backend_error`, discarding its typed classification | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1167> |
| Issue | #896 | [LXC/Bubblewrap] Network policy: egress enforcement, hook scoping, and proxy pinning | closed | dhoehna | <https://github.com/microsoft/mxc/issues/896> |
| Issue | #1205 | [WSLc] CI failure: directional network policy isn't treated as immutable | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1205> |
| Issue | #832 | note: something the bot found which I thought I would at least bring up for your next PR. A stale marker makes later audit starts fail closed, but this error provides neither its path nor a safe recovery procedure, so auditing can remain unavailable indefinitely. | closed | richiemsft | <https://github.com/microsoft/mxc/issues/832> |
| Issue | #690 | Share the telemetry-consent test harness between wxc_common and mxc_ffi | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/690> |
| Issue | #1204 | BaseContainer: rename not allowed in TEMP folder | closed | AndreaVielCGN | <https://github.com/microsoft/mxc/issues/1204> |
| Issue | #1001 | LXC: live E2E for schema 0.8 directional egress covers only IPv4 | closed | dhoehna | <https://github.com/microsoft/mxc/issues/1001> |
| Issue | #1049 | [WSLC] Promote WSLC, move it out of experimental | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1049> |
| Issue | #945 | [Bubblewrap/SDK] Schema-0.8 network gate: an absent version disables it, and the Node SDK trips it on a field callers never set | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/945> |
| Issue | #1074 | [SDK] Node SDK rejects network.proxy on LXC, which the backend has supported since #798 | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1074> |
| Issue | #758 | Make the Windows ProcessContainer tier deterministically selectable for e2e coverage | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/758> |
| Issue | #831 | note: something to update in the future PRs: We can technically pass in `--audit --dry-run` and we'd start the elevated host-wide WPR session before the runner reaches its dry-run short-circuit. In this case if someone passes in --dry-run we probably don't want to startup a wpr session. | closed | richiemsft | <https://github.com/microsoft/mxc/issues/831> |
| Issue | #1129 | Remove legacy CreateProcessInSandbox fallback after PSEC adoption | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1129> |
| Issue | #1199 | Run live Node SDK execution in process | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1199> |
| Issue | #975 | [LXC] Network policy enforcement decided from static config or a failed probe fails open | closed | dhoehna | <https://github.com/microsoft/mxc/issues/975> |
| Issue | #897 | [LXC] Inbound default-deny: install window, namespace identity, and workload escape | closed | dhoehna | <https://github.com/microsoft/mxc/issues/897> |
| Issue | #1192 | Run buffered Node SDK execution in process | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1192> |
| Issue | #1196 | Expose Unix containment configuration in Rust and .NET SDKs | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1196> |
