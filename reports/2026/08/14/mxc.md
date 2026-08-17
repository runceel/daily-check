# microsoft/mxc

対象期間: 2026-08-13 00:02:03 〜 2026-08-14 00:21:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 12 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 6 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 5 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#840](https://github.com/microsoft/mxc/pull/840) — [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability （PR / open / Copilot）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->
- **⚠ セキュリティ** [#803](https://github.com/microsoft/mxc/pull/803) — fix(logger): deliver security warnings explicitly instead of writing to stderr （PR / merged / caarlos0）
  <!-- TODO: 影響を1行（誰が何を確認・対応する必要があるか） -->

## 主要な変更点

<!-- TODO: 上の「重要な変更」と下の一覧から、主要な変更点を 3〜8 行の箇条書きで日本語要約。重要項目があれば必ず含める -->

- 

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #810 | [WSLC] State-aware lifecycle (PR 3/3): TypeScript SDK per-phase policy configs | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/810> |
| PR | #848 | Fix inherited output handle test race | merged | richiemsft | <https://github.com/microsoft/mxc/pull/848> |
| PR | #846 | [WSLC] Fix runner use-after-free and session boot timeout (Closes #722) | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/846> |
| PR | #842 | chore(deps-dev): bump fast-uri from 3.1.4 to 3.1.5 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/842> |
| PR | #814 | Document process containers proxy packaging and deployment for developers | merged | bbonaby | <https://github.com/microsoft/mxc/pull/814> |
| PR | #806 | [WSLC] State-aware lifecycle: live exec output streaming + provision fs-delegation gate (PR 2c/3) | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/806> |
| PR | #835 | Add 0.6 configuration contract adapter | merged | MGudgin | <https://github.com/microsoft/mxc/pull/835> |
| PR | #774 | Add capture ETL retention option | merged | richiemsft | <https://github.com/microsoft/mxc/pull/774> |
| PR | #803 | fix(logger): deliver security warnings explicitly instead of writing to stderr | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/803> |
| PR | #811 | Update network policy docs with clarifications and examples | merged | bbonaby | <https://github.com/microsoft/mxc/pull/811> |
| PR | #829 | Relay live exec pipes to executor stdio | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/829> |
| PR | #834 | Package and sign PLM with Windows binaries | merged | richiemsft | <https://github.com/microsoft/mxc/pull/834> |
| PR | #841 | Update fast-uri to 3.1.5 | closed | Copilot | <https://github.com/microsoft/mxc/pull/841> |
| PR | #726 | Log boundary relaxations with secure-default warnings | closed | MGudgin | <https://github.com/microsoft/mxc/pull/726> |
| PR | #727 | Make seatbelt.profileOverride dev-only (rejected by shipped builds) | closed | MGudgin | <https://github.com/microsoft/mxc/pull/727> |
| PR | #836 | Enforce inbound default-deny for LXC containers | open | dhoehna | <https://github.com/microsoft/mxc/pull/836> |
| PR | #849 | [LXC] State-aware sandbox lifecycle | open | dhoehna | <https://github.com/microsoft/mxc/pull/849> |
| PR | #839 | Give an in-process caller real exec streams from the isolation-session backend | open | adpa-ms | <https://github.com/microsoft/mxc/pull/839> |
| PR | #847 | Unify audit with capture denial routing | open | richiemsft | <https://github.com/microsoft/mxc/pull/847> |
| PR | #838 | Add 0.7 configuration contract and adapter | open | MGudgin | <https://github.com/microsoft/mxc/pull/838> |
| PR | #840 | [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability | open | Copilot | <https://github.com/microsoft/mxc/pull/840> |
| Issue | #852 | [LXC] is_running() fails open, so teardown can remove firewall rules from a still-running container | open | dhoehna | <https://github.com/microsoft/mxc/issues/852> |
| Issue | #851 | [LXC] Firewall-enforced start accepts a container whose only interface is lxc.net.N for N != 0 | open | dhoehna | <https://github.com/microsoft/mxc/issues/851> |
| Issue | #850 | LXC inbound: close the start-to-install fail-open window and make the ingress reset atomic | open | dhoehna | <https://github.com/microsoft/mxc/issues/850> |
| Issue | #845 | Flaky on main: inherited_output_handle_cannot_block_control_completion races a 5s timeout and blocks merges | closed | dhoehna | <https://github.com/microsoft/mxc/issues/845> |
| Issue | #844 | Unify duplicate sha2 versions in the Rust workspace | open | MGudgin | <https://github.com/microsoft/mxc/issues/844> |
| Issue | #843 | State-aware exec streaming contract gaps (FFI in-process + CLI executor framing) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/843> |
| Issue | #722 | [WSLC] Fix runner defects | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/722> |
| Issue | #771 | [Versioning] Fix fail-opens in schema compatibility detector | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/771> |
| Issue | #772 | Add captureDenials option to retain analyzed ETL traces | closed | richiemsft | <https://github.com/microsoft/mxc/issues/772> |
| Issue | #571 | Add support for Mac x64 | closed | jiec-msft | <https://github.com/microsoft/mxc/issues/571> |
