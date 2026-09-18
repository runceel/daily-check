# microsoft/mxc

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 16 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 13 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 10 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1178](https://github.com/microsoft/mxc/pull/1178) — [refactor] Move 'security environment' code into 'process_container' backend （PR / merged / jsidewhite）
  セキュリティ境界や sandbox 設定を利用している実装は、バックエンドの責務分離が変わったため、設定とテストの整合性を確認する必要があります。
- **⚠ セキュリティ** [#1171](https://github.com/microsoft/mxc/pull/1171) — Address npm package vulnerabilities （PR / merged / MGudgin）
  Node ベースのサンドボックス関連依存を使う環境では、依存更新後のビルドと実行確認を行って、既存のワークフローに影響がないかを確認するとよいです。
- **GA 昇格** [#1101](https://github.com/microsoft/mxc/issues/1101) — [LXC] runtimeConfig.networkProxy is rejected: the backend never declares RUNTIME_PROXY, so GA model 2 cannot be expressed （Issue / closed / SohamDas2021）
  GA 相当のネットワークプロキシ条件が明確になったため、LXC 利用者は `runtimeConfig.networkProxy` の表現可能性とバックエンド要件を再確認しておくと安全です。

## 主要な変更点

- `mxc` は、セキュリティ境界とネットワーク制御の強化が中心で、proxy、LXC、seatbelt の挙動に関する改善が複数入りました。
- 特に `process_container` への責務分離、proxy connectivity の修正、そして `networkProxy` の表現可能性整理は、サンドボックス実装者にとって重要な変更です。
- さらに `IsolationSession` の state-aware test や docs 整備が進み、SDK / Backends 側の契約の明確化が進んでいます。
- ただし v0.9 / v0.10 の contract 変更が見え始めており、利用者は backend-specific な設定項目と CI の境界条件を続けて監視する必要があります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1182 | BaseContainer: Remove legacy experimental CreateProcessInSandbox (SBOX) | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1182> |
| PR | #1209 | [refac] Move LearningMode out of 'backends' folder | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1209> |
| PR | #1206 | [WSLC] Document how an unsupported Windows version surfaces | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1206> |
| PR | #1203 | [LXC] Reject runtimeConfig.networkProxy with a backend-specific error and document it | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1203> |
| PR | #1201 | [CI] Run state aware tests for isolation session  | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1201> |
| PR | #1194 | Regenerate the IsolationSession Preview bindings | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1194> |
| PR | #1183 | [IsolationSession] Fix E2E assertions that expect unreachable errors | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1183> |
| PR | #1180 | fix(process-container): restore unprivileged host proxy connectivity | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1180> |
| PR | #1179 | [Bubblewrap] Drop stale --experimental claims from docs for the Bubblewrap backend | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1179> |
| PR | #1041 | Fix various bugs CoPilot put into LXC. | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1041> |
| PR | #1163 | Feature [process containment]: Enumerate FS config (Issue 1162) | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1163> |
| PR | #1178 | [refactor] Move 'security environment' code into 'process_container' backend | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1178> |
| PR | #1171 | Address npm package vulnerabilities | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1171> |
| PR | #1176 | chore(deps): bump the github-actions group with 3 updates | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1176> |
| PR | #1166 | fix(seatbelt): let a sandbox listen without surrendering proxy confinement | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1166> |
| PR | #1177 | Fix PSEC proxy loopback peer serialization | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/1177> |
| PR | #1193 | Move existing buffered Node SDK path to in-process | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1193> |
| PR | #849 | [LXC] State-aware sandbox lifecycle | closed | dhoehna | <https://github.com/microsoft/mxc/pull/849> |
| PR | #1200 | Add native Node streaming APIs | open | bbonaby | <https://github.com/microsoft/mxc/pull/1200> |
| PR | #1195 | 0.9: Honor inheritDefaultEnv on LXC, Bubblewrap, and Seatbelt | open | theelliotm | <https://github.com/microsoft/mxc/pull/1195> |
| PR | #1211 | [LXC] [Test/docs] State the network chains' limits, and test that inbound default-deny drops packets | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1211> |
| PR | #1208 | [docs] Clean up copilot instructions & add architecture.md | open | jsidewhite | <https://github.com/microsoft/mxc/pull/1208> |
| PR | #1197 | Add missing containment configs to Rust and .NET SDKs | open | bbonaby | <https://github.com/microsoft/mxc/pull/1197> |
| PR | #1198 | Move buffered API in Node SDK to in process | open | bbonaby | <https://github.com/microsoft/mxc/pull/1198> |
| PR | #1207 | Clarify IsolationSession runtime identity handling | open | MGudgin | <https://github.com/microsoft/mxc/pull/1207> |
| PR | #1184 | Publish the v0.9 contract and open v0.10 | open | MGudgin | <https://github.com/microsoft/mxc/pull/1184> |
| PR | #1187 | Publish v0.9 with stable WSLC support | open | MGudgin | <https://github.com/microsoft/mxc/pull/1187> |
| PR | #1185 | Remove the rolling configuration architecture | open | MGudgin | <https://github.com/microsoft/mxc/pull/1185> |
| PR | #1188 | [WSLC] Remove the rolling configuration architecture | open | MGudgin | <https://github.com/microsoft/mxc/pull/1188> |
| PR | #1189 | [WSLC] Harden exact contract infrastructure | open | MGudgin | <https://github.com/microsoft/mxc/pull/1189> |
| PR | #1186 | Harden exact contract infrastructure | open | MGudgin | <https://github.com/microsoft/mxc/pull/1186> |
| Issue | #1210 | [LXC] CI fails b/c the test script assumes a specific `iptables` chain exists | open | theelliotm | <https://github.com/microsoft/mxc/issues/1210> |
| Issue | #1205 | [WSLc] CI failure: directional network policy isn't treated as immutable | open | theelliotm | <https://github.com/microsoft/mxc/issues/1205> |
| Issue | #1204 | BaseContainer: rename not allowed in TEMP folder | open | AndreaVielCGN | <https://github.com/microsoft/mxc/issues/1204> |
| Issue | #1192 | Run buffered Node SDK execution in process | open | bbonaby | <https://github.com/microsoft/mxc/issues/1192> |
| Issue | #1199 | Run live Node SDK execution in process | open | bbonaby | <https://github.com/microsoft/mxc/issues/1199> |
| Issue | #1196 | Expose Unix containment configuration in Rust and .NET SDKs | open | bbonaby | <https://github.com/microsoft/mxc/issues/1196> |
| Issue | #1181 | BaseContainer: Remove legacy experimental CreateProcessInSandbox (SBOX) path | open | jsidewhite | <https://github.com/microsoft/mxc/issues/1181> |
| Issue | #1114 | Honor cancellation after RequestConsentAsync starts | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1114> |
| Issue | #1112 | Correct Rust SDK get_consent documentation to describe effective consent | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1112> |
| Issue | #1113 | Correct mxc_telemetry_get_consent FFI documentation to describe effective consent | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1113> |
| Issue | #1111 | Correct .NET GetConsent documentation to describe effective consent | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1111> |
| Issue | #1115 | Validate C# telemetry consent parity against the Rust SDK and FFI contract | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1115> |
| Issue | #620 | telemetry: embed per-field descriptions in ETW metadata (TraceLoggingDescription equivalent) in our tracelogging wrappers | closed | RamonArjona4 | <https://github.com/microsoft/mxc/issues/620> |
| Issue | #1101 | [LXC] runtimeConfig.networkProxy is rejected: the backend never declares RUNTIME_PROXY, so GA model 2 cannot be expressed | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1101> |
| Issue | #998 | LXC: container-to-host traffic bypasses the egress chain while the backend advertises EGRESS_DEFAULT and HOST_LOOPBACK | closed | dhoehna | <https://github.com/microsoft/mxc/issues/998> |
| Issue | #1068 | [Docs] Bubblewrap is documented as experimental, but it is not gated by `--experimental` | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1068> |
| Issue | #1162 | Add BaseContainer support for PSEC fs_enumerate | closed | jsidewhite | <https://github.com/microsoft/mxc/issues/1162> |
