# microsoft/mxc

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 24 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 11 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#1110](https://github.com/microsoft/mxc/issues/1110) — macOS: Seatbelt baseline omits the active developer directory, breaking /usr/bin xcrun shims （Issue / closed / theelliotm）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **⚠ 破壊的変更** [#732](https://github.com/microsoft/mxc/pull/732) — Block breaking changes to the dev schema at pull-request time （PR / closed / MGudgin）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。

## 主要な変更点

- 対象期間中の主要変更を確認し、実装・依存関係・テスト基盤の更新を整理しました。
- 重要度付きの変更は、既存利用者の互換性とセキュリティ確認を優先してください。
- 詳細は下表の各 PR / Issue とリンク先で確認できます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1141 | Simple (per-Issue) Regression test harness (ready for vm!) | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1141> |
| PR | #1104 | Enable authoritative exact contract dispatch | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1104> |
| PR | #1146 | Fix legacy LXC SDK enforcement mode | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1146> |
| PR | #1148 | Let a C# caller select isolation sessions on the one-shot surface | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1148> |
| PR | #1144 | fix(CI): Seatbelt tests no longer assume CI runners have SIP enabled | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1144> |
| PR | #1099 | Migrate development requests to version-specific parsers | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1099> |
| PR | #1097 | Add rolling-versus-exact parser equivalence tests | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1097> |
| PR | #1096 | Add private exact contract parsing | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1096> |
| PR | #1125 | [Seatbelt] Add technical validation tests, wire them into CI, and fix what they found | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1125> |
| PR | #1128 | [Seatbelt] Grant the active developer directory in the baseline profile | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1128> |
| PR | #1120 | Add default environment behavior across SDKs | merged | shschaefer | <https://github.com/microsoft/mxc/pull/1120> |
| PR | #1091 | Extract shared state-aware normalization | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1091> |
| PR | #1132 | Serve one-shot isolation sessions on the Rust SDK's streaming surface | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1132> |
| PR | #1107 | Fix Windows telemetry consent lock contention | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1107> |
| PR | #1131 | docs: explain Learning Mode denial capture | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1131> |
| PR | #1080 | Enforce ProcessContainer ingress policy | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1080> |
| PR | #969 | Resolve the command before the request is parsed | merged | MGudgin | <https://github.com/microsoft/mxc/pull/969> |
| PR | #822 | Add Node.js and .NET telemetry SDKs | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/822> |
| PR | #821 | Expose telemetry through Rust SDK, C ABI, and .NET binding | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/821> |
| PR | #1083 | Add verbose Learning Mode diagnostics | merged | richiemsft | <https://github.com/microsoft/mxc/pull/1083> |
| PR | #1079 | fix(seatbelt): Apply the cwd to the spawn_open (in-terminal) launch path. | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1079> |
| PR | #1127 | chore(deps-dev): bump js-yaml from 4.3.1 to 4.3.2 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1127> |
| PR | #1121 | Pin GitHub Actions to full-length commit SHAs | merged | danfiedler-msft | <https://github.com/microsoft/mxc/pull/1121> |
| PR | #1089 | [CI] Support pre-provisioned images, migrate CI scripts, add macOS host prep, support T3-Workloads | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1089> |
| PR | #1122 | Propose MXC SDK unification plan | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1122> |
| PR | #1150 | Add exact contract publication tooling | open | MGudgin | <https://github.com/microsoft/mxc/pull/1150> |
| PR | #1145 | Complete the v0.9 directional networking cutover | open | MGudgin | <https://github.com/microsoft/mxc/pull/1145> |
| PR | #1149 | Regression tests [process containment]: Verify Issue 473 - Packaged Launch verification | open | jsidewhite | <https://github.com/microsoft/mxc/pull/1149> |
| PR | #1133 | Add explicit IsolationSession network acknowledgment | open | MGudgin | <https://github.com/microsoft/mxc/pull/1133> |
| PR | #1123 | Use typed payloads for state-aware dispatch | open | MGudgin | <https://github.com/microsoft/mxc/pull/1123> |
| PR | #1147 | fix(cwd): reject a relative process.cwd on schema 0.9 and stop WSLc silently dropping it | open | theelliotm | <https://github.com/microsoft/mxc/pull/1147> |
| PR | #1134 | User/dalegg/package sdk integration tests in vpack | open | danlegg | <https://github.com/microsoft/mxc/pull/1134> |
| PR | #1143 | Rename backends/appcontainer -> backends/process_container | open | jsidewhite | <https://github.com/microsoft/mxc/pull/1143> |
| PR | #1126 | Add version flags to wxc-exec | open | wellorbetter | <https://github.com/microsoft/mxc/pull/1126> |
| PR | #1137 | [Proposal] Make one-shot SDK APIs JSON-first | open | bbonaby | <https://github.com/microsoft/mxc/pull/1137> |
| PR | #1136 | [Seatbelt] Remove launchMethod from the 0.9 schema | open | theelliotm | <https://github.com/microsoft/mxc/pull/1136> |
| Issue | #1135 | SandboxPolicy cannot express network.enforcementMode, so LXC rejects the pre-0.8 configs the SDK builds | closed | dhoehna | <https://github.com/microsoft/mxc/issues/1135> |
| Issue | #1142 | Pin logger output in corpus diagnostic-divergence expectations | open | MGudgin | <https://github.com/microsoft/mxc/issues/1142> |
| Issue | #1130 | Windows SBOX: launch error 203 and explicit-environment fallback observability (SDK 0.8.0) | open | JrSI86 | <https://github.com/microsoft/mxc/issues/1130> |
| Issue | #1129 | Remove legacy CreateProcessInSandbox fallback after PSEC adoption | open | bbonaby | <https://github.com/microsoft/mxc/issues/1129> |
| Issue | #694 | AppContainer cannot execute GetFinalPathNameByHandle | closed | rsc | <https://github.com/microsoft/mxc/issues/694> |
| Issue | #572 | Tier 3 (AppContainer + DACL): repeated full-subtree ACE apply/restore makes large read-only paths unusable on downlevel builds | closed | xgdyp | <https://github.com/microsoft/mxc/issues/572> |
| Issue | #1005 | Wire the Seatbelt backend into the validation test matrix (dispatcher + trigger) | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1005> |
| Issue | #1110 | macOS: Seatbelt baseline omits the active developer directory, breaking /usr/bin xcrun shims | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1110> |
| Issue | #1108 | Seatbelt: launchMethod "open" orphans a Terminal instance per run | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1108> |
| Issue | #483 | Windows processcontainer: Bun exits 66 with no stderr; PATH env causes CreateProcessW error | closed | laz-jamesfuller | <https://github.com/microsoft/mxc/issues/483> |
| Issue | #1105 | Flaky telemetry consent concurrency test fails to acquire lock on Windows | closed | MGudgin | <https://github.com/microsoft/mxc/issues/1105> |

