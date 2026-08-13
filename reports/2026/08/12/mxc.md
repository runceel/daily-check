# microsoft/mxc

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 40 |
| クローズ (未マージ) PR     | 24 |
| 新規 PR (オープン中)       | 16 |
| 新規 Issue                 | 23 |
| クローズ Issue             | 7 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#732](https://github.com/microsoft/mxc/pull/732) — Block breaking changes to the dev schema at pull-request time （PR / closed / MGudgin）
  dev schema を変更する開発者は、PR 時点の破壊的変更検査と互換性ゲートを確認してください。
- **⚠ セキュリティ** [#803](https://github.com/microsoft/mxc/pull/803) — fix(logger): stop writing security warnings to stderr （PR / open / caarlos0）
  ロガー出力を監視する利用者は、セキュリティ警告の stderr 出力変更とログ収集ルールへの影響を確認してください。
- **⚠ セキュリティ** [#634](https://github.com/microsoft/mxc/pull/634) — [Bubblewrap/LXC] Address network policy gaps - schema （PR / closed / dhoehna）
  Bubblewrap/LXC のネットワークポリシーを使う利用者は、スキーマ側の許可・拒否境界が修正されたことを確認してください。
- **⚠ セキュリティ** [#632](https://github.com/microsoft/mxc/pull/632) — [LXC] Address network policy gaps - model 2 (deny-all-except-proxy) （PR / closed / dhoehna）
  LXC の deny-all-except-proxy ポリシー利用者は、更新後のモデルとプロキシ経路を検証してください。
- **非推奨/廃止** [#777](https://github.com/microsoft/mxc/issues/777) — LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported （Issue / open / theelliotm）
  RHEL 10 で LXC を運用する利用者は、非推奨の iptables `-m state` に依存しないルールへ移行してください。
- **非推奨/廃止** [#575](https://github.com/microsoft/mxc/pull/575) — [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) （PR / open / MGudgin）
  Intel macOS SDK の配布を必要とする利用者は、darwin-x64 パッケージの追加状況と提供方針を確認してください。

## 主要な変更点

- sandbox のネットワークポリシー、firewall chain、WSLC daemon の強化が進み、隔離境界とライフサイクルの信頼性が向上しました。
- **セキュリティ対応**として GitHub Actions の SHA 固定、`js-yaml` 更新、Linux SDK 依存設定の強化が行われています。
- IsolationSession Preview API への移行と、バックエンド可用性・denial capture の probe API が追加されました。
- RHEL 10 の LXC では非推奨 iptables 構文の問題が残るため、ネットワークポリシーを確認してください。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #773 | chore(deps-dev): bump js-yaml from 4.3.0 to 4.3.1 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/773> |
| PR | #808 | chore(deps): bump the github-actions group with 9 updates | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/808> |
| PR | #740 | Pin GitHub Actions to full-length commit SHAs | merged | OssSecurityBot | <https://github.com/microsoft/mxc/pull/740> |
| PR | #767 | [WSLC] Harden state-aware daemon (PR 2a/3): typed errors, validate-then-admit exec, idle-watchdog | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/767> |
| PR | #780 | [LXC] Eliminate accidental firewall chain name collisions | merged | dhoehna | <https://github.com/microsoft/mxc/pull/780> |
| PR | #730 | Add fail-closed base resolution and SemVer libraries for the versioning gates | merged | MGudgin | <https://github.com/microsoft/mxc/pull/730> |
| PR | #666 | Add Windows filepath behavior clarifications | merged | mapalko | <https://github.com/microsoft/mxc/pull/666> |
| PR | #659 | test(seatbelt): e2e guard for un-resolved $TMPDIR read-write grants | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/659> |
| PR | #674 | fix(appcontainer): resolve the sandbox cwd to a usable granted directory instead of NULL | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/674> |
| PR | #778 | feat(sdk): probe denial capture support | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/778> |
| PR | #745 | [WSLC] State-aware lifecycle (PR 1/3): persistent daemon + named-pipe IPC control plane | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/745> |
| PR | #782 | Enable publishing the PSEC bindings crate | merged | richiemsft | <https://github.com/microsoft/mxc/pull/782> |
| PR | #800 | Make the isolation-session test suites clean up after themselves and verify their cleanup | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/800> |
| PR | #761 | Migrate the isolation_session backend and SDK to the IsolationSession Preview API | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/761> |
| PR | #681 | [WSLC] Reject unenforceable network schema at parse time | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/681> |
| PR | #724 | [LXC] Filter IPv6 destinations and CIDR ranges in firewall mode (AB#62830559) | merged | dhoehna | <https://github.com/microsoft/mxc/pull/724> |
| PR | #725 | feat(engine): Rust host-backend detectors + available_backends() probe | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/725> |
| PR | #759 | Consolidate Learning Mode analyzer coverage | merged | richiemsft | <https://github.com/microsoft/mxc/pull/759> |
| PR | #717 | Add backend support probe API design & discussion doc | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/717> |
| PR | #738 | Enforce per-field schema version availability at parse time | merged | MGudgin | <https://github.com/microsoft/mxc/pull/738> |
| PR | #770 | Harden Linux SDK dependency setup | merged | richiemsft | <https://github.com/microsoft/mxc/pull/770> |
| PR | #748 | feat(sdk): add captureDenials to the typed SandboxPolicy | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/748> |
| PR | #739 | Update Learning Mode to V2 API contracts | merged | richiemsft | <https://github.com/microsoft/mxc/pull/739> |
| PR | #756 | Remove check_refs_volumes from basecontainer and appcontainer | merged | daniedud-MSFT | <https://github.com/microsoft/mxc/pull/756> |
| PR | #753 | feat(engine): add available_backends() host-capability probe API | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/753> |
| PR | #754 | docs(seatbelt): correct rule-precedence and listen() rationale | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/754> |
| PR | #749 | fix(seatbelt): allow AF_UNIX sockets and resolve symlinked root paths | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/749> |
| PR | #750 | fix(bwrap): surface allowLocalNetwork settings the Bubblewrap backend cannot honor | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/750> |
| PR | #687 | Make WSLC an available backend on the Rust SDK | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/687> |
| PR | #746 | feat(isolation-session): carry an optional appId in a structured sandboxId | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/746> |
| PR | #744 | Update Base Container flatbuffer schema with new generation from OS and pass in Networking default allow/deny policy | merged | bbonaby | <https://github.com/microsoft/mxc/pull/744> |
| PR | #743 | chore(deps-dev): bump undici from 6.27.0 to 6.28.0 in /tests/playground | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/743> |
| PR | #742 | chore(deps): bump fast-uri from 3.1.4 to 3.1.5 in /scripts/versioning | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/742> |
| PR | #741 | chore(deps-dev): bump ip-address from 10.2.0 to 10.4.0 in /sdk/node | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/741> |
| PR | #718 | fix(isolation-session): refuse ui and unsupported lifecycle rather than dropping them | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/718> |
| PR | #708 | feat(iso): surface structured error fields on the state-aware wire envelope | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/708> |
| PR | #587 | Permissive Learning Mode 4/6 Capability | merged | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/587> |
| PR | #736 | Fix cross-compile on Windows hosts | merged | MGudgin | <https://github.com/microsoft/mxc/pull/736> |
| PR | #710 | Emit captureDenials JSON output (replacement for #701) | merged | richiemsft | <https://github.com/microsoft/mxc/pull/710> |
| PR | #709 | Add sealed ETL denial analysis (replacement for #699) | merged | richiemsft | <https://github.com/microsoft/mxc/pull/709> |
| PR | #732 | Block breaking changes to the dev schema at pull-request time | closed | MGudgin | <https://github.com/microsoft/mxc/pull/732> |
| PR | #783 | Enforce per-field schema version availability at parse time | closed | MGudgin | <https://github.com/microsoft/mxc/pull/783> |
| PR | #731 | Add the structural schema-compatibility detector | closed | MGudgin | <https://github.com/microsoft/mxc/pull/731> |
| PR | #695 | [WSLC] Reset WSLC runtime between E2E tests to fix session-state bleed | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/695> |
| PR | #634 | [Bubblewrap/LXC] Address network policy gaps - schema | closed | dhoehna | <https://github.com/microsoft/mxc/pull/634> |
| PR | #627 | User/dahoehna/honoring inbound rule | closed | dhoehna | <https://github.com/microsoft/mxc/pull/627> |
| PR | #716 | Publish the mxc-sdk crate closure to crates.io | closed | dhoehna | <https://github.com/microsoft/mxc/pull/716> |
| PR | #653 | User/dgiandinoto/ieb regid refactor | closed | daamenik | <https://github.com/microsoft/mxc/pull/653> |
| PR | #589 | Permissive Learning Mode 6/6 Testing  | closed | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/589> |
| PR | #552 | Adding Permissive Learning Mode Tool | closed | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/552> |
| PR | #796 | [LXC] Make deny rules win over allow rules and fail closed on an unresolvable block | closed | dhoehna | <https://github.com/microsoft/mxc/pull/796> |
| PR | #797 | [LXC] Correct the network policy docs and make the E2E suite gate in CI | closed | dhoehna | <https://github.com/microsoft/mxc/pull/797> |
| PR | #789 | [LXC] Pin the proxy hostname instead of rewriting the URL host | closed | dhoehna | <https://github.com/microsoft/mxc/pull/789> |
| PR | #792 | [LXC] Hook the firewall chain onto the bridge port so it actually filters | closed | dhoehna | <https://github.com/microsoft/mxc/pull/792> |
| PR | #790 | [LXC] Fail closed when firewall rules cannot be scoped to the container | closed | dhoehna | <https://github.com/microsoft/mxc/pull/790> |
| PR | #788 | [LXC] Scrub and apply proxy env vars through the shared helper | closed | dhoehna | <https://github.com/microsoft/mxc/pull/788> |
| PR | #632 | [LXC] Address network policy gaps - model 2 (deny-all-except-proxy) | closed | dhoehna | <https://github.com/microsoft/mxc/pull/632> |
| PR | #633 | [LXC] State-aware lifecycle management | closed | dhoehna | <https://github.com/microsoft/mxc/pull/633> |
| PR | #775 | Enforce per-field schema version availability at parse time | closed | bbonaby | <https://github.com/microsoft/mxc/pull/775> |
| PR | #747 | feat: add OpenShell-compatible diagnostics | closed | RamonArjona4 | <https://github.com/microsoft/mxc/pull/747> |
| PR | #588 | Permissive Learning Mode 5/6 UI Policy | closed | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/588> |
| PR | #625 | Add experimental is_agentic flag for Sandbox spec | closed | pmpurifoy | <https://github.com/microsoft/mxc/pull/625> |
| PR | #689 | Enable one-click crates.io release for mxc-sdk (ESRP) [in-repo, supersedes #647] | closed | dhoehna | <https://github.com/microsoft/mxc/pull/689> |
| PR | #737 | test: 1ES runner connectivity smoke (do not merge) | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/737> |
| PR | #811 | Update network policy docs with clarifications and examples | open | bbonaby | <https://github.com/microsoft/mxc/pull/811> |
| PR | #798 | [LXC] Enforce the deny-all-except-proxy network policy (model 2) | open | dhoehna | <https://github.com/microsoft/mxc/pull/798> |
| PR | #801 | [WSLC] State-aware sandbox lifecycle over the experimental.wslc surface (PR 2b/3) | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/801> |
| PR | #807 | Add mxc_config_contract crate for version-specific config parsing | open | MGudgin | <https://github.com/microsoft/mxc/pull/807> |
| PR | #809 | First Version of E2E Validation Infrastructure | open | theelliotm | <https://github.com/microsoft/mxc/pull/809> |
| PR | #760 | Refactor PLM to use the canonical Learning Mode analyzer | open | richiemsft | <https://github.com/microsoft/mxc/pull/760> |
| PR | #806 | [WSLC] State-aware lifecycle: live exec output streaming + provision fs-delegation gate (PR 2c/3) | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/806> |
| PR | #810 | [WSLC] State-aware lifecycle (PR 3/3): TypeScript SDK per-phase policy configs | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/810> |
| PR | #774 | Add capture ETL retention option | open | richiemsft | <https://github.com/microsoft/mxc/pull/774> |
| PR | #791 | Fix scoped ETW telemetry validation | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/791> |
| PR | #802 | Support for passing appId to IsolationSession upon sandbox provision | open | daamenik | <https://github.com/microsoft/mxc/pull/802> |
| PR | #763 | Add Copilot-Instructions label policy rule | open | denelon | <https://github.com/microsoft/mxc/pull/763> |
| PR | #803 | fix(logger): stop writing security warnings to stderr | open | caarlos0 | <https://github.com/microsoft/mxc/pull/803> |
| PR | #779 | docs: add sandbox config floors feature spec | open | asklar | <https://github.com/microsoft/mxc/pull/779> |
| PR | #751 | fix(policy): stop granting the entire system drive when pwsh.exe is on PATH | open | caarlos0 | <https://github.com/microsoft/mxc/pull/751> |
| PR | #752 | fix(engine): probe real containment in platform_support() | open | caarlos0 | <https://github.com/microsoft/mxc/pull/752> |
| Issue | #805 | [WSLC] Run daemon exec off the single worker thread + per-container single-flight Busy admission (non-critical) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/805> |
| Issue | #804 | [WSLC] State-aware exec: forward piped stdin to the container (blocked on WSLc SDK) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/804> |
| Issue | #799 | IsolationSession test suites leave scratch directories behind and can report success when their own cleanup failed | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/799> |
| Issue | #793 | Networking not available with windows sandbox isolation (containment is windows_sandbox) | open | lihas | <https://github.com/microsoft/mxc/issues/793> |
| Issue | #795 | [WSLC] Enforce integrity boundary + caller-context mount validation on the state-aware daemon control pipe | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/795> |
| Issue | #764 | [LXC] Container runs unfiltered between start and firewall hook installation | open | dhoehna | <https://github.com/microsoft/mxc/issues/764> |
| Issue | #765 | [LXC] SandboxProcess streaming exec is not implemented for the LXC backend | open | dhoehna | <https://github.com/microsoft/mxc/issues/765> |
| Issue | #766 | [Network] Extract shared CIDR and address-family handling used by multiple backends | open | dhoehna | <https://github.com/microsoft/mxc/issues/766> |
| Issue | #777 | LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported | open | theelliotm | <https://github.com/microsoft/mxc/issues/777> |
| Issue | #794 | [WSLC] Encapsulate ScriptResponse errors in a typed enum for the Rust SDK | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/794> |
| Issue | #786 | Hyperlight blockedHosts overrides defaultPolicy=block | open | MGudgin | <https://github.com/microsoft/mxc/issues/786> |
| Issue | #787 | NanVix blockedHosts overrides defaultPolicy=block | open | MGudgin | <https://github.com/microsoft/mxc/issues/787> |
| Issue | #785 | wxc-exec --probe ignores captureDenials, reporting a launchable tier for runs that fail | open | MGudgin | <https://github.com/microsoft/mxc/issues/785> |
| Issue | #781 | feat: Add Quicksand (QEMU-based VM) backend support for MXC | open | inschrift-spruch-raum | <https://github.com/microsoft/mxc/issues/781> |
| Issue | #771 | [Versioning] Fix fail-opens in schema compatibility detector | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/771> |
| Issue | #772 | Add captureDenials option to retain analyzed ETL traces | open | richiemsft | <https://github.com/microsoft/mxc/issues/772> |
| Issue | #769 | Backend probe: CI gate ensuring every tier/backend stays probe-covered | open | huzaifa-d | <https://github.com/microsoft/mxc/issues/769> |
| Issue | #762 | Add Copilot-Instructions label policy rule for PR visibility | open | denelon | <https://github.com/microsoft/mxc/issues/762> |
| Issue | #757 | Harden the default sandbox working directory against DLL/executable planting | open | caarlos0 | <https://github.com/microsoft/mxc/issues/757> |
| Issue | #758 | Make the Windows ProcessContainer tier deterministically selectable for e2e coverage | open | caarlos0 | <https://github.com/microsoft/mxc/issues/758> |
| Issue | #734 | Base Container fail-fasts when a filesystem policy targets a REFS drive, despite the OS supporting BFS-over-REFS | closed | daniedud-MSFT | <https://github.com/microsoft/mxc/issues/734> |
| Issue | #755 | [LXC/Bubblewrap] Firewall mode fails open when no veth interface is set (no FORWARD hook) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/755> |
| Issue | #735 | Cross-compiling from Windows fails: embed_version_info gates on host, not target | closed | MGudgin | <https://github.com/microsoft/mxc/issues/735> |
| Issue | #721 | [WSLC] RAII guard Drop impls call SDK teardown outside a COM apartment | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/721> |
| Issue | #474 | MXC Sandboxed Applications Cannot Apply Policies on Dev Drive | closed | kanismohammed | <https://github.com/microsoft/mxc/issues/474> |
| Issue | #462 | Process container file broker does not mediate junction creation and access prompts display pre-reparse path | closed | mapalko | <https://github.com/microsoft/mxc/issues/462> |
| Issue | #461 | Process Container support for File Path Deny rules | closed | mapalko | <https://github.com/microsoft/mxc/issues/461> |
