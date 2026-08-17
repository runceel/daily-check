# microsoft/mxc

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 23 |
| クローズ (未マージ) PR     | 7 |
| 新規 PR (オープン中)       | 10 |
| 新規 Issue                 | 60 |
| クローズ Issue             | 50 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#840](https://github.com/microsoft/mxc/pull/840) — [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability （PR / open / Copilot）
  MXC の zip 展開処理を利用する開発者は、未検証 symlink によるパス トラバーサルを防ぐ修正がマージされるまで、入力アーカイブを信頼できる供給元に限定してください。
- **⚠ セキュリティ** [#803](https://github.com/microsoft/mxc/pull/803) — fix(logger): deliver security warnings explicitly instead of writing to stderr （PR / merged / caarlos0）
  ロガーのセキュリティ警告を stderr のみで収集していた利用者は、明示的な警告配信経路へ切り替え、監視・終了コードの扱いを確認してください。
- **非推奨/廃止** [#777](https://github.com/microsoft/mxc/issues/777) — LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported （Issue / closed / theelliotm）
  RHEL 10 で LXC ネットワーク ポリシーを使う利用者は、廃止された iptables `-m state` に依存しない実装へ更新し、閉じた Issue の修正が導入済みか確認してください。

## 主要な変更点

- LXC／Bubblewrap の既定拒否ネットワーク、プロキシ環境変数、ファイアウォールのライフサイクルが大きく強化されました。
- 0.7 の設定コントラクトとアダプター、0.8 の one-shot 契約が追加・整備され、SDK とバックエンドの整合性確認が進んでいます。
- セキュリティ警告の明示配信と、zip symlink パス トラバーサル対策が重要な確認事項です。
- state-aware exec のストリーミング、タイムアウト、構造化エラー詳細を改善する PR／Issue が継続しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #923 | Fix FTP proxy environment spec on main | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/923> |
| PR | #798 | [LXC] Enforce the deny-all-except-proxy network policy (model 2) | merged | dhoehna | <https://github.com/microsoft/mxc/pull/798> |
| PR | #915 | [Bubblewrap] Fix denied-masking test fixture ownership | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/915> |
| PR | #914 | [Bubblewrap] Scrub inherited FTP proxy env variables  | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/914> |
| PR | #874 | Report a timeout and a refused kill through the state-aware exec handle | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/874> |
| PR | #912 | Align 0.7 adapter tests with backend constraints | merged | MGudgin | <https://github.com/microsoft/mxc/pull/912> |
| PR | #907 | Document 0.7 contract annotations | merged | MGudgin | <https://github.com/microsoft/mxc/pull/907> |
| PR | #838 | Add 0.7 configuration contract and adapter | merged | MGudgin | <https://github.com/microsoft/mxc/pull/838> |
| PR | #863 | Recognize the absent-chain message both iptables backends emit | merged | dhoehna | <https://github.com/microsoft/mxc/pull/863> |
| PR | #836 | Enforce inbound default-deny for LXC containers | merged | dhoehna | <https://github.com/microsoft/mxc/pull/836> |
| PR | #839 | Give an in-process caller real exec streams from the isolation-session backend | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/839> |
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
| PR | #904 | Document 0.7 contract annotations (Phase 4.1) | closed | MGudgin | <https://github.com/microsoft/mxc/pull/904> |
| PR | #881 | Expose ProcessContainer config in Rust SDK | closed | bbonaby | <https://github.com/microsoft/mxc/pull/881> |
| PR | #884 | Expose Seatbelt config in Rust SDK | closed | bbonaby | <https://github.com/microsoft/mxc/pull/884> |
| PR | #883 | Expose LXC config in Rust SDK | closed | bbonaby | <https://github.com/microsoft/mxc/pull/883> |
| PR | #841 | Update fast-uri to 3.1.5 | closed | Copilot | <https://github.com/microsoft/mxc/pull/841> |
| PR | #726 | Log boundary relaxations with secure-default warnings | closed | MGudgin | <https://github.com/microsoft/mxc/pull/726> |
| PR | #727 | Make seatbelt.profileOverride dev-only (rejected by shipped builds) | closed | MGudgin | <https://github.com/microsoft/mxc/pull/727> |
| PR | #849 | [LXC] State-aware sandbox lifecycle | open | dhoehna | <https://github.com/microsoft/mxc/pull/849> |
| PR | #925 | Carry the failing API's detail through the in-process SDKs | open | adpa-ms | <https://github.com/microsoft/mxc/pull/925> |
| PR | #909 | Add 0.8 one-shot configuration contract | open | MGudgin | <https://github.com/microsoft/mxc/pull/909> |
| PR | #926 | Guard the proxy key contract against hand-written expectations | open | dhoehna | <https://github.com/microsoft/mxc/pull/926> |
| PR | #916 | Add Data Loop denial diagnostics | open | richiemsft | <https://github.com/microsoft/mxc/pull/916> |
| PR | #910 | Add 0.8 one-shot configuration adapter | open | MGudgin | <https://github.com/microsoft/mxc/pull/910> |
| PR | #876 | BaseContainer: a granted working directory is not resolvable inside the sandbox | open | caarlos0 | <https://github.com/microsoft/mxc/pull/876> |
| PR | #862 | [WSLC] Honor state-aware portMappings and reject redundant one-shot host lists (Closes #824) | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/862> |
| PR | #847 | Unify audit with capture denial routing | open | richiemsft | <https://github.com/microsoft/mxc/pull/847> |
| PR | #840 | [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability | open | Copilot | <https://github.com/microsoft/mxc/pull/840> |
| Issue | #924 | In-process SDKs lose the structured failure detail the backend already produces | open | adpa-ms | <https://github.com/microsoft/mxc/issues/924> |
| Issue | #922 | proxy_env spec fails on main: FTP_PROXY is both scrubbed and re-set | closed | dhoehna | <https://github.com/microsoft/mxc/issues/922> |
| Issue | #921 | LXC state-aware exec does not apply the cooperative proxy environment | open | dhoehna | <https://github.com/microsoft/mxc/issues/921> |
| Issue | #919 | remove_forward_hooks reports success for an absent iptables binary | open | dhoehna | <https://github.com/microsoft/mxc/issues/919> |
| Issue | #920 | LXC returns an exec timeout as a backend error rather than an execution outcome | open | dhoehna | <https://github.com/microsoft/mxc/issues/920> |
| Issue | #918 | LXC signal-time teardown strands the FORWARD return-path ACCEPT rules | open | dhoehna | <https://github.com/microsoft/mxc/issues/918> |
| Issue | #898 | [LXC] Firewall teardown and rollback strand rules, or drop them from a live container | open | dhoehna | <https://github.com/microsoft/mxc/issues/898> |
| Issue | #903 | [LXC] Test coverage gaps: | open | dhoehna | <https://github.com/microsoft/mxc/issues/903> |
| Issue | #917 | LXC public errors and comments reference internal AB# work items a public reader cannot open | open | dhoehna | <https://github.com/microsoft/mxc/issues/917> |
| Issue | #899 | [LXC] State-aware lifecycle: provision and adopt races, config and mount rewrite | open | dhoehna | <https://github.com/microsoft/mxc/issues/899> |
| Issue | #913 | Bubblewrap denied-masking test creates non-delegable root-owned fixtures | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/913> |
| Issue | #900 | [LXC] Exec: streaming, timeouts, process lifetime, and exec identity | open | dhoehna | <https://github.com/microsoft/mxc/issues/900> |
| Issue | #896 | [LXC/Bubblewrap] Network policy: egress enforcement, hook scoping, and proxy pinning | open | dhoehna | <https://github.com/microsoft/mxc/issues/896> |
| Issue | #897 | [LXC] Inbound default-deny: install window, namespace identity, and workload escape | open | dhoehna | <https://github.com/microsoft/mxc/issues/897> |
| Issue | #901 | [SDK] Type and schema surfaces disagree with what the engine accepts and enforces | open | dhoehna | <https://github.com/microsoft/mxc/issues/901> |
| Issue | #908 | [aw] No-Op Runs | open | github-actions[bot] | <https://github.com/microsoft/mxc/issues/908> |
| Issue | #905 | LXC start leaves a live unfiltered-inbound container if killed between start and ingress, and a retry is refused | closed | dhoehna | <https://github.com/microsoft/mxc/issues/905> |
| Issue | #877 | LXC firewall mode silently drops unresolvable blockedHosts entries and still reports the policy enforced | closed | dhoehna | <https://github.com/microsoft/mxc/issues/877> |
| Issue | #880 | LXC provision can race lxc-create because the lifecycle lock is a no-op when the LXC root is absent | closed | dhoehna | <https://github.com/microsoft/mxc/issues/880> |
| Issue | #895 | Signal in the pre-start window leaks the LXC firewall chain, because lxc-stop -k exits 2 when the container is not running | closed | dhoehna | <https://github.com/microsoft/mxc/issues/895> |
| Issue | #894 | SDK LxcStartConfig exposes filesystem.clearPolicyOnExit, which the LXC start wire type does not accept | closed | dhoehna | <https://github.com/microsoft/mxc/issues/894> |
| Issue | #893 | SDK LxcNetworkConfig types a mode-only network config as unrestricted when the backend applies default-DROP | closed | dhoehna | <https://github.com/microsoft/mxc/issues/893> |
| Issue | #906 | LXC ToolAbsent treats a firewall tool removed after install as proof its rules never existed | closed | dhoehna | <https://github.com/microsoft/mxc/issues/906> |
| Issue | #892 | State-aware streaming error directs callers to a non-streaming path that rejects exec | closed | dhoehna | <https://github.com/microsoft/mxc/issues/892> |
| Issue | #891 | LXC exec silently drops and replaces a caller-supplied MXC_EXEC_ID | closed | dhoehna | <https://github.com/microsoft/mxc/issues/891> |
| Issue | #890 | default_network_policy_present is not serde(skip) and leaks into serialized ContainerPolicy | closed | dhoehna | <https://github.com/microsoft/mxc/issues/890> |
| Issue | #889 | LXC unrestricted state-aware restart leaves a previous run's firewall chain in place | closed | dhoehna | <https://github.com/microsoft/mxc/issues/889> |
| Issue | #886 | LXC mount rewrite treats pre-marker MXC mounts as operator-owned, so stale bind mounts survive a policy change | closed | dhoehna | <https://github.com/microsoft/mxc/issues/886> |
| Issue | #879 | LXC config rewrite proceeds when the original metadata cannot be read, and does not preserve ACLs or xattrs | closed | dhoehna | <https://github.com/microsoft/mxc/issues/879> |
| Issue | #878 | LXC veth discovery reads a failed probe as no interface, so firewall setup can succeed with no FORWARD hook | closed | dhoehna | <https://github.com/microsoft/mxc/issues/878> |
| Issue | #902 | [Cross-backend] process.cwd is silently discarded or resolved against host state | open | dhoehna | <https://github.com/microsoft/mxc/issues/902> |
| Issue | #857 | SDK: LXC exec parses guest-controlled stdout as an error envelope before the trusted stderr channel | closed | dhoehna | <https://github.com/microsoft/mxc/issues/857> |
| Issue | #882 | LXC state-aware e2e script covers one scenario where WSLC covers nine | closed | dhoehna | <https://github.com/microsoft/mxc/issues/882> |
| Issue | #861 | [LXC] Make the bridged fail-closed branch testable without an LXC host | closed | dhoehna | <https://github.com/microsoft/mxc/issues/861> |
| Issue | #873 | Relative process.cwd is resolved against the host process's working directory | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/873> |
| Issue | #872 | WSLc one-shot silently ignores process.cwd when it is not a Windows drive path | closed | caarlos0 | <https://github.com/microsoft/mxc/issues/872> |
| Issue | #868 | Node SDK types reject an empty allowedHosts array that the Rust engine accepts | closed | dhoehna | <https://github.com/microsoft/mxc/issues/868> |
| Issue | #860 | has_network_policy ignores network_specified, so 'network: {}' is accepted on phases that reject network policy | closed | dhoehna | <https://github.com/microsoft/mxc/issues/860> |
| Issue | #871 | LXC exec timeout reaper can be defeated by the sandboxed workload | closed | dhoehna | <https://github.com/microsoft/mxc/issues/871> |
| Issue | #867 | LXC state-aware exec timeout leaves script descendants running in the persistent container | closed | dhoehna | <https://github.com/microsoft/mxc/issues/867> |
| Issue | #865 | LXC state-aware silently adopts an existing container when a generated name collides | closed | dhoehna | <https://github.com/microsoft/mxc/issues/865> |
| Issue | #864 | LXC state-aware start has a check-then-act race on container state | closed | dhoehna | <https://github.com/microsoft/mxc/issues/864> |
| Issue | #866 | LXC deprovision removes the firewall for a possibly-running container when lxc-info cannot be run | closed | dhoehna | <https://github.com/microsoft/mxc/issues/866> |
| Issue | #856 | LXC: signal rollback removes the firewall before destroy, leaving a live container unfiltered if destroy fails | closed | dhoehna | <https://github.com/microsoft/mxc/issues/856> |
| Issue | #855 | LXC: stop/deprovision report success when firewall teardown leaves a residual | closed | dhoehna | <https://github.com/microsoft/mxc/issues/855> |
| Issue | #852 | [LXC] is_running() fails open, so teardown can remove firewall rules from a still-running container | closed | dhoehna | <https://github.com/microsoft/mxc/issues/852> |
| Issue | #859 | LXC state-aware firewall mode never installs the inbound default-deny INPUT chain | closed | dhoehna | <https://github.com/microsoft/mxc/issues/859> |
| Issue | #854 | LXC inbound default-deny is removable by the workload: CAP_NET_ADMIN is never dropped | closed | dhoehna | <https://github.com/microsoft/mxc/issues/854> |
| Issue | #853 | LXC ingress: pin the container network namespace instead of re-resolving a recyclable PID | closed | dhoehna | <https://github.com/microsoft/mxc/issues/853> |
| Issue | #850 | LXC inbound: close the start-to-install fail-open window and make the ingress reset atomic | closed | dhoehna | <https://github.com/microsoft/mxc/issues/850> |
| Issue | #875 | [LXC] Rewrite the /etc/hosts proxy pin from Rust with an open-once, no-follow handle | closed | dhoehna | <https://github.com/microsoft/mxc/issues/875> |
| Issue | #870 | [LXC] deny-all-except-proxy does not cover the INPUT path to the bridge gateway | closed | dhoehna | <https://github.com/microsoft/mxc/issues/870> |
| Issue | #869 | [LXC] Scope the FORWARD return path by container address so a DROP-policy host still works | closed | dhoehna | <https://github.com/microsoft/mxc/issues/869> |
| Issue | #858 | LXC state-aware firewall mode does not verify that lxc.net.0 is a veth | closed | dhoehna | <https://github.com/microsoft/mxc/issues/858> |
| Issue | #851 | [LXC] Firewall-enforced start accepts a container whose only interface is lxc.net.N for N != 0 | closed | dhoehna | <https://github.com/microsoft/mxc/issues/851> |
| Issue | #888 | Expose ProcessContainer configuration in the Rust SDK | open | bbonaby | <https://github.com/microsoft/mxc/issues/888> |
| Issue | #887 | Expose backend-specific configuration in the Rust SDK | open | bbonaby | <https://github.com/microsoft/mxc/issues/887> |
| Issue | #845 | Flaky on main: inherited_output_handle_cannot_block_control_completion races a 5s timeout and blocks merges | closed | dhoehna | <https://github.com/microsoft/mxc/issues/845> |
| Issue | #844 | Unify duplicate sha2 versions in the Rust workspace | open | MGudgin | <https://github.com/microsoft/mxc/issues/844> |
| Issue | #843 | State-aware exec streaming contract gaps (FFI in-process + CLI executor framing) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/843> |
| Issue | #765 | [LXC] SandboxProcess streaming exec is not implemented for the LXC backend | closed | dhoehna | <https://github.com/microsoft/mxc/issues/765> |
| Issue | #777 | LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported | closed | theelliotm | <https://github.com/microsoft/mxc/issues/777> |
| Issue | #766 | [Network] Extract shared CIDR and address-family handling used by multiple backends | closed | dhoehna | <https://github.com/microsoft/mxc/issues/766> |
| Issue | #764 | [LXC] Container runs unfiltered between start and firewall hook installation | closed | dhoehna | <https://github.com/microsoft/mxc/issues/764> |
| Issue | #755 | [LXC/Bubblewrap] Firewall mode fails open when no veth interface is set (no FORWARD hook) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/755> |
| Issue | #722 | [WSLC] Fix runner defects | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/722> |
| Issue | #771 | [Versioning] Fix fail-opens in schema compatibility detector | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/771> |
| Issue | #772 | Add captureDenials option to retain analyzed ETL traces | closed | richiemsft | <https://github.com/microsoft/mxc/issues/772> |
| Issue | #571 | Add support for Mac x64 | closed | jiec-msft | <https://github.com/microsoft/mxc/issues/571> |
