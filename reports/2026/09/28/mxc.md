# microsoft/mxc

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 15 |
| クローズ (未マージ) PR     | 9 |
| 新規 PR (オープン中)       | 11 |
| 新規 Issue                 | 10 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- MXC 0.9.0 のパッケージ更新、SDK の .NET build / release パイプライン、scheduled validation への IsolationSession / 26H1 追加がマージされました。
- Rust SDK では lifecycle routing を executor 引数へ移し、typed lifecycle API と state-aware transport / streaming を整備しました。
- .NET と Node SDK の typed FFI ingress 移行、JSON / typed ingress の対称化、request-aware probe API の公開が進行中です。
- WSLc の相対 `process.cwd` がホスト側の作業ディレクトリに解決される問題や、マッピング不能な cwd の扱いが未解決・レビュー中です（#1299、#1300）。
- Seatbelt の denied path / Unix socket 除外や、guarded denial capture の利用可否を sandbox 作成前に検査する変更も提案されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1256 | Move lifecycle routing to executor arguments | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1256> |
| PR | #1255 | Refine typed Rust lifecycle API | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1255> |
| PR | #1289 | Stabilize PLM inherited-output regression test | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1289> |
| PR | #1268 | [WSLC] Honor inheritDefaultEnv on 0.9 | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1268> |
| PR | #1294 | [IsolationSession] Run every isolation-session suite in scheduled validation | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1294> |
| PR | #1254 | Add direct typed Rust state-aware transport | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1254> |
| PR | #1288 | [CI] Add 26H1 to scheduled validation testing | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1288> |
| PR | #1283 | Update Bubblewrap tests to schema 0.9 | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1283> |
| PR | #1287 | Add .NET SDK build and release ADO pipelines | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1287> |
| PR | #1071 | NanVix: Preserve block-default networking with blockedHosts | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1071> |
| PR | #1285 | [refac & fix] Simplify ProcessContainer selection & stop creating extra sandbox | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1285> |
| PR | #1284 | Update package versions to 0.9.0 | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1284> |
| PR | #1272 | Update seatbelt-backend.md to reflect 0.9 being cut | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1272> |
| PR | #1252 | Add native WSLC state-aware streaming exec | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1252> |
| PR | #1275 | [IsolationSession] Admit callers in a single-threaded apartment | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1275> |
| PR | #1298 | Stabilize PLM inherited-output regression test | closed | MGudgin | <https://github.com/microsoft/mxc/pull/1298> |
| PR | #1243 | Reuse native policy parsing in mxc_ffi | closed | RamonArjona4 | <https://github.com/microsoft/mxc/pull/1243> |
| PR | #752 | fix(engine): probe real containment in platform_support() | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/752> |
| PR | #1116 | Add 1ES lane for building Copilot CLI with latest MXC | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/1116> |
| PR | #751 | fix(policy): stop granting the system drive when pwsh.exe is on PATH | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/751> |
| PR | #1137 | [Proposal] Unify one-shot SDKs on typed requests | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1137> |
| PR | #1103 | docs: add missing entries to Documentation index in README | closed | liuliuliu0221 | <https://github.com/microsoft/mxc/pull/1103> |
| PR | #779 | docs: add sandbox config floors feature spec | closed | asklar | <https://github.com/microsoft/mxc/pull/779> |
| PR | #1066 | feat(seatbelt): add system power access | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/1066> |
| PR | #1304 | Unify Rust SHA-2 dependency version | open | MGudgin | <https://github.com/microsoft/mxc/pull/1304> |
| PR | #1303 | Migrate .NET SDK to typed FFI ingress | open | MGudgin | <https://github.com/microsoft/mxc/pull/1303> |
| PR | #1301 | Add symmetric typed and JSON FFI ingress | open | MGudgin | <https://github.com/microsoft/mxc/pull/1301> |
| PR | #1302 | Migrate Node SDK to typed FFI ingress | open | MGudgin | <https://github.com/microsoft/mxc/pull/1302> |
| PR | #1300 | Reject an unmappable WSLc one-shot process.cwd | open | MGudgin | <https://github.com/microsoft/mxc/pull/1300> |
| PR | #1297 | Stabilize bwrap worker ordering test | open | MGudgin | <https://github.com/microsoft/mxc/pull/1297> |
| PR | #1296 | Fix LXC test temp directory collisions | open | MGudgin | <https://github.com/microsoft/mxc/pull/1296> |
| PR | #1295 | Fix Node SDK proc scan process-exit race | open | MGudgin | <https://github.com/microsoft/mxc/pull/1295> |
| PR | #1290 | Fail unavailable guarded denial capture before sandbox creation | open | richiemsft | <https://github.com/microsoft/mxc/pull/1290> |
| PR | #1278 | [Seatbelt] Add deniedPathNames and deniedUnixSocketPaths | open | 0xmmo | <https://github.com/microsoft/mxc/pull/1278> |
| PR | #1276 | Expose request-aware probe APIs across SDKs | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1276> |
| Issue | #1299 | [Cross-backend] Relative process.cwd is resolved against the host process's working directory | open | MGudgin | <https://github.com/microsoft/mxc/issues/1299> |
| Issue | #1292 | [LXC] Parallel mount tests can collide on timestamp-based temp directories | open | MGudgin | <https://github.com/microsoft/mxc/issues/1292> |
| Issue | #1293 | [Node SDK] Bubblewrap detached-anchor test races process exit during /proc scan | open | MGudgin | <https://github.com/microsoft/mxc/issues/1293> |
| Issue | #1282 | Create dotnet ADO and nuget release pipelines | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1282> |
| Issue | #1291 | LXC does not support in proc stdio streaming in any SDK | open | bbonaby | <https://github.com/microsoft/mxc/issues/1291> |
| Issue | #1286 | Add network into capture denials | open | richiemsft | <https://github.com/microsoft/mxc/issues/1286> |
| Issue | #1279 | Platform, Backend Probe and Backend Capability APIs not unified between the in proc SDKs | open | bbonaby | <https://github.com/microsoft/mxc/issues/1279> |
| Issue | #1280 | Cross SDK public API surface alignment for creating containers | open | bbonaby | <https://github.com/microsoft/mxc/issues/1280> |
| Issue | #1281 | SDK samples needed for each supported SDK. | open | bbonaby | <https://github.com/microsoft/mxc/issues/1281> |
| Issue | #1277 | Seatbelt: support native name and Unix-socket path exclusions without filesystem scans | open | 0xmmo | <https://github.com/microsoft/mxc/issues/1277> |
| Issue | #1098 | Flaky PLM inherited-output test can miss PID file after 30 seconds | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1098> |
| Issue | #1165 | inheritDefaultEnv is not honored on IsolationSession or WSLc | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1165> |
| Issue | #1273 | Bubblewrap: RHEL test failure caused by "missing IP Tables Binary" | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1273> |
| Issue | #1090 | Reuse shared native policy parsing in mxc_ffi | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1090> |
| Issue | #787 | NanVix blockedHosts overrides defaultPolicy=block | closed | MGudgin | <https://github.com/microsoft/mxc/issues/787> |
| Issue | #1263 | BaseContainer creates a sandbox before the intended sandbox (even when probing) | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1263> |
| Issue | #478 | README: add a "Community Integrations" section for third-party deployment repos | closed | enclawed | <https://github.com/microsoft/mxc/issues/478> |
