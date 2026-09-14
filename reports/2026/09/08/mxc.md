# microsoft/mxc

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 7 |
| 新規 Issue                 | 16 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#1110](https://github.com/microsoft/mxc/issues/1110) — macOS: Seatbelt baseline omits the active developer directory, breaking /usr/bin xcrun shims （Issue / open / theelliotm）
macOS で Xcode の `xcrun` shim を使う利用者は Seatbelt baseline の制約を確認し、修正されるまで開発ディレクトリ指定の回避策を検討してください。
- **⚠ セキュリティ** [#1076](https://github.com/microsoft/mxc/pull/1076) — Add Process Security Environment ingress contract （PR / merged / bbonaby）
Process Security Environment の ingress 契約を利用する実装者は、PSEC の環境受け渡し仕様と許可値を確認してセキュリティ境界を維持してください。
- **GA 昇格** [#1101](https://github.com/microsoft/mxc/issues/1101) — [LXC] runtimeConfig.networkProxy is rejected: the backend never declares RUNTIME_PROXY, so GA model 2 cannot be expressed （Issue / open / SohamDas2021）
LXC の GA model 2 を使う利用者は `runtimeConfig.networkProxy` が現状表現できないため、契約追加の進捗を確認して構成適用を待ってください。

## 主要な変更点

- macOS の Seatbelt baseline が active developer directory を許可せず `xcrun` shim を壊す問題が継続中です（#1110）。
- Process Security Environment の ingress 契約が追加され、PSEC 1.1 に向けた境界制御が強化されました（#1076、#1119）。
- telemetry runtime/lifecycle の安定化、ETW 検証、WSLC policy の拒否処理がマージされました（#820、#791、#1058）。
- 契約の exact dispatch、バージョン別 parser、rolling/exact equivalence test の整備が進行中です（#1096、#1097、#1099、#1104）。
- LXC の GA model 2 で network proxy を表現できない問題は、契約拡張が必要な状態です（#1101）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #820 | Complete stable telemetry runtime and lifecycle integration | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/820> |
| PR | #791 | Fix scoped ETW telemetry validation | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/791> |
| PR | #1076 | Add Process Security Environment ingress contract | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1076> |
| PR | #1058 | [WSLC] Reject remaining policy fields the backend cannot honor | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1058> |
| PR | #1088 | chore(deps-dev): bump fast-uri from 3.1.5 to 3.1.7 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1088> |
| PR | #1087 | chore(deps-dev): bump @xmldom/xmldom from 0.8.13 to 0.8.15 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1087> |
| PR | #1084 | chore(deps): bump the github-actions group across 1 directory with 4 updates | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1084> |
| PR | #1095 | Rename `ExecConsumer` to `ExecStdio` for the topology it selects | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1095> |
| PR | #1119 | Enforce ProcessContainer ingress with PSEC 1.1 | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1119> |
| PR | #1081 | Document ProcessContainer ingress behavior | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1081> |
| PR | #1104 | Enable authoritative exact contract dispatch | open | MGudgin | <https://github.com/microsoft/mxc/pull/1104> |
| PR | #1099 | Migrate development requests to version-specific parsers | open | MGudgin | <https://github.com/microsoft/mxc/pull/1099> |
| PR | #1097 | Add rolling-versus-exact parser equivalence tests | open | MGudgin | <https://github.com/microsoft/mxc/pull/1097> |
| PR | #1096 | Add private exact contract parsing | open | MGudgin | <https://github.com/microsoft/mxc/pull/1096> |
| PR | #1116 | Add 1ES lane for building Copilot CLI with latest MXC | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1116> |
| PR | #1107 | Fix Windows telemetry consent lock contention | open | MGudgin | <https://github.com/microsoft/mxc/pull/1107> |
| PR | #1103 | docs: add missing entries to Documentation index in README | open | liuliuliu0221 | <https://github.com/microsoft/mxc/pull/1103> |
| Issue | #1118 | Add --version flag to wxc-exe | open | jeffmaury | <https://github.com/microsoft/mxc/issues/1118> |
| Issue | #1117 | Support of smolvm backend | open | ohault | <https://github.com/microsoft/mxc/issues/1117> |
| Issue | #1115 | Validate C# telemetry consent parity against the Rust SDK and FFI contract | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1115> |
| Issue | #1113 | Correct mxc_telemetry_get_consent FFI documentation to describe effective consent | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1113> |
| Issue | #1114 | Honor cancellation after RequestConsentAsync starts | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1114> |
| Issue | #1112 | Correct Rust SDK get_consent documentation to describe effective consent | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1112> |
| Issue | #1111 | Correct .NET GetConsent documentation to describe effective consent | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1111> |
| Issue | #1106 | [WSLC] Decide whether the shipped C# NuGet enables WSLc, and document wslcsdk.dll for Rust SDK consumers | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1106> |
| Issue | #1110 | macOS: Seatbelt baseline omits the active developer directory, breaking /usr/bin xcrun shims | open | theelliotm | <https://github.com/microsoft/mxc/issues/1110> |
| Issue | #1108 | Seatbelt: launchMethod "open" orphans a Terminal instance per run | open | theelliotm | <https://github.com/microsoft/mxc/issues/1108> |
| Issue | #1109 | BaseContainer: granted user-profile path fails unless volume root is also granted | open | shanselman | <https://github.com/microsoft/mxc/issues/1109> |
| Issue | #1105 | Flaky telemetry consent concurrency test fails to acquire lock on Windows | open | MGudgin | <https://github.com/microsoft/mxc/issues/1105> |
| Issue | #1102 | Default PATH is inconsistent across containment backends - the same config resolves different commands | open | theelliotm | <https://github.com/microsoft/mxc/issues/1102> |
| Issue | #1101 | [LXC] runtimeConfig.networkProxy is rejected: the backend never declares RUNTIME_PROXY, so GA model 2 cannot be expressed | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1101> |
| Issue | #1098 | Flaky PLM inherited-output test can miss PID file after 30 seconds | open | MGudgin | <https://github.com/microsoft/mxc/issues/1098> |
| Issue | #1094 | `ExecConsumer` is named for its caller, not the stdio topology it selects | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1094> |
