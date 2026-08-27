# microsoft/mxc

対象期間: 2026-08-17 01:53:51 〜 2026-08-24 00:06:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 44 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 50 |
| クローズ Issue             | 20 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#956](https://github.com/microsoft/mxc/pull/956) — [Bubblewrap] Enforce network.enforcementMode='firewall' and reject unhonorable network elements at schema 0.8+ （PR / merged / SohamDas2021）
  schema 0.8 以降の Bubblewrap 利用者は firewall 強制と非対応ネットワーク要素の拒否を確認してください。
- **非推奨/廃止** [#777](https://github.com/microsoft/mxc/issues/777) — LXC network policy fails on RHEL 10: deprecated iptables `-m state` match unsupported （Issue / closed / theelliotm）
  RHEL 10 の LXC 利用者は非推奨の iptables state match を使用しないポリシーへ更新してください。
- **GA 昇格** [#1002](https://github.com/microsoft/mxc/issues/1002) — LXC E2E: the GA egress allow-path test depends on unauthenticated api.github.com （Issue / open / dhoehna）
  GA 前に api.github.com への未認証アクセスに依存しない egress テストへ見直してください。
- **GA 昇格** [#974](https://github.com/microsoft/mxc/pull/974) — Realign Seatbelt with the official 0.8 GA networking schema （PR / merged / theelliotm）
  Seatbelt 利用者は公式 0.8 GA ネットワークスキーマとの整合性を確認してください。
- **GA 昇格** [#655](https://github.com/microsoft/mxc/issues/655) — [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec （Issue / open / dhoehna）
  HTTP プロキシ利用者は GA 仕様に合わせ runtimeConfig.networkProxy への移行を確認してください。

## 主要な変更点

- Bubblewrap で schema 0.8 以降の firewall 強制と不正なネットワーク要素の拒否が導入されました。
- Seatbelt が 0.8 GA ネットワークスキーマへ整合され、HTTP プロキシ配置の移行も追跡対象です。
- RHEL 10 の LXC では非推奨 iptables 構文が使えないため、ポリシー更新が必要です。
- GA egress テストには未認証の外部 API 依存が残っており、リリース前の確認事項です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #968 | Add versioned development contract codegen | merged | MGudgin | <https://github.com/microsoft/mxc/pull/968> |
| PR | #1007 | Fix npm package SBOM generation under network isolation | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1007> |
| PR | #1006 | Update package versions to 0.8.0 | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1006> |
| PR | #974 | Realign Seatbelt with the official 0.8 GA networking schema | merged | theelliotm | <https://github.com/microsoft/mxc/pull/974> |
| PR | #983 | Implement schema 0.8 network policy for the LXC backend | merged | dhoehna | <https://github.com/microsoft/mxc/pull/983> |
| PR | #997 | Increase official build job timeouts to two hours | merged | bbonaby | <https://github.com/microsoft/mxc/pull/997> |
| PR | #996 | Publish schema 0.8 and open 0.9 development | merged | bbonaby | <https://github.com/microsoft/mxc/pull/996> |
| PR | #916 | Add verbose Learning Mode denial logging | merged | richiemsft | <https://github.com/microsoft/mxc/pull/916> |
| PR | #993 | [Docs] Add schema 0.8 sandbox policy reference | merged | bbonaby | <https://github.com/microsoft/mxc/pull/993> |
| PR | #977 | [Node SDK] Add 0.8 network policy authoring | merged | bbonaby | <https://github.com/microsoft/mxc/pull/977> |
| PR | #976 | [ProcessContainer] Enforce schema 0.8 networking | merged | bbonaby | <https://github.com/microsoft/mxc/pull/976> |
| PR | #979 | [Bubblewrap] Map the 0.8 directional network schema onto Bubblewrap and declare what it enforces | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/979> |
| PR | #986 | Clarify separate capability entries | merged | MGudgin | <https://github.com/microsoft/mxc/pull/986> |
| PR | #966 | Validate exact contract capabilities | merged | MGudgin | <https://github.com/microsoft/mxc/pull/966> |
| PR | #964 | [Bubblewrap] Deny inbound connections and batch firewall rule installation | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/964> |
| PR | #989 | Clarify 0.8 proxy host-loopback comments | merged | bbonaby | <https://github.com/microsoft/mxc/pull/989> |
| PR | #985 | Expose the isolation-session backend through the Rust SDK and the C ABI | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/985> |
| PR | #956 | [Bubblewrap] Enforce network.enforcementMode='firewall' and reject unhonorable network elements at schema 0.8+ | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/956> |
| PR | #802 | Support for passing appId to IsolationSession upon sandbox provision | merged | daamenik | <https://github.com/microsoft/mxc/pull/802> |
| PR | #973 | CI Validation Infra: Added OS ver. that supports Isolation Session and added new Bubblewrap prereqs  | merged | theelliotm | <https://github.com/microsoft/mxc/pull/973> |
| PR | #940 | [Bubblewrap] Support hostname proxy endpoints under proxy-only egress | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/940> |
| PR | #939 | CI Validation Infra: fixes for WSLC test prereqs, Windows log collection, LXC bridge NAT, and rate limits | merged | theelliotm | <https://github.com/microsoft/mxc/pull/939> |
| PR | #931 | [Bubblewrap] Enforce proxy-only egress for private networking | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/931> |
| PR | #818 | Document stable telemetry privacy contract | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/818> |
| PR | #962 | Validate 0.8 networking schema by backend | merged | bbonaby | <https://github.com/microsoft/mxc/pull/962> |
| PR | #961 | Add additive schema 0.8 networking contract | merged | bbonaby | <https://github.com/microsoft/mxc/pull/961> |
| PR | #949 | Strengthen string enum contract coverage | merged | MGudgin | <https://github.com/microsoft/mxc/pull/949> |
| PR | #941 | Add 0.8 state-aware configuration adapters | merged | MGudgin | <https://github.com/microsoft/mxc/pull/941> |
| PR | #929 | Add 0.8 state-aware configuration contracts | merged | MGudgin | <https://github.com/microsoft/mxc/pull/929> |
| PR | #933 | Use FlatBuffers Object API for OS Policy Serialization | merged | bbonaby | <https://github.com/microsoft/mxc/pull/933> |
| PR | #960 | Require a positive LocalAgentUser feature level for isolation_session | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/960> |
| PR | #959 | Document 26340.9212 as the isolation_session minimum build | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/959> |
| PR | #910 | Add 0.8 one-shot configuration adapter | merged | MGudgin | <https://github.com/microsoft/mxc/pull/910> |
| PR | #954 | Let an in-process caller opt in to the experimental backends | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/954> |
| PR | #930 | [Bubblewrap] Run proxy mode in a private network namespace via rootless slirp4netns (schema 0.8.0+) | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/930> |
| PR | #938 | Add captureDenials to the .NET SDK | merged | richiemsft | <https://github.com/microsoft/mxc/pull/938> |
| PR | #925 | Carry the failing API's detail through the in-process SDKs | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/925> |
| PR | #909 | Add 0.8 one-shot configuration contract | merged | MGudgin | <https://github.com/microsoft/mxc/pull/909> |
| PR | #934 | fix(seatbelt): allow signaling sandbox children | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/934> |
| PR | #928 | Improve diagnostics for policy-blocked sandbox launches | merged | rossnichols | <https://github.com/microsoft/mxc/pull/928> |
| PR | #926 | Guard the proxy key contract against hand-written expectations | merged | dhoehna | <https://github.com/microsoft/mxc/pull/926> |
| PR | #847 | Unify audit with capture denial routing | merged | richiemsft | <https://github.com/microsoft/mxc/pull/847> |
| PR | #809 | First Version of E2E Validation Infrastructure | merged | theelliotm | <https://github.com/microsoft/mxc/pull/809> |
| PR | #813 | Add guarded WPR captureDenials fallback | merged | richiemsft | <https://github.com/microsoft/mxc/pull/813> |
| PR | #862 | [WSLC] Honor state-aware portMappings and reject redundant one-shot host lists (Closes #824) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/862> |
| PR | #944 | chore(deps): bump the github-actions group across 1 directory with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/mxc/pull/944> |
| PR | #965 | Merge user env vars on top of default env to prevent ERROR_BAD_ENVIRONMENT | closed | Demonese | <https://github.com/microsoft/mxc/pull/965> |
| PR | #943 | [Bubblewrap] Reject network policy that cannot be enforced on schema 0.8+ | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/943> |
| PR | #942 | Remove temporal comments. | closed | MGudgin | <https://github.com/microsoft/mxc/pull/942> |
| PR | #972 | Implement Apple Container CLI runtime | open | richiemsft | <https://github.com/microsoft/mxc/pull/972> |
| PR | #971 | chore(deps): bump the github-actions group across 1 directory with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/971> |
| PR | #957 | Add Apple Container config surface | open | richiemsft | <https://github.com/microsoft/mxc/pull/957> |
| PR | #969 | Resolve the command before the request is parsed | open | MGudgin | <https://github.com/microsoft/mxc/pull/969> |
| PR | #967 | Add Apple Container management layer | open | richiemsft | <https://github.com/microsoft/mxc/pull/967> |
| Issue | #1012 | LXC: unresolved directional deny uses the legacy default when deciding fail-closed behavior | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1012> |
| Issue | #1016 | LXC inbound test omits V08_DENY_CONFIG from fixture preflight checks | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1016> |
| Issue | #1011 | LXC: network format selection uses schema version instead of parsed policy shape | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1011> |
| Issue | #1015 | LXC: ingress.default rejection reports an incorrect host-loopback rationale | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1015> |
| Issue | #1014 | LXC: permissive ingress rejection can preserve partially installed egress policy | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1014> |
| Issue | #1010 | LXC: CIDR except carve-outs shadow later explicit egress rules | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1010> |
| Issue | #1020 | [WSLC] Test coverage gaps: non-asserting fixtures, rollback paths, daemon lifecycle races, and ARM64 | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1020> |
| Issue | #1024 | LXC: ingress.default rejection reports an incorrect host-loopback rationale | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1024> |
| Issue | #1023 | [Seatbelt] Correct schema 0.8 documentation and example drift | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1023> |
| Issue | #1022 | [Seatbelt] Consolidate network validation ownership and remove parser/backend drift | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1022> |
| Issue | #1021 | [Seatbelt] Enforce bidirectional hostLoopback semantics and deterministic network E2E coverage | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1021> |
| Issue | #1019 | Move Seatbelt-specific network validation out of wxc_common | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1019> |
| Issue | #1018 | Correct Seatbelt schema 0.8 documentation and example drift from PR #974 | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1018> |
| Issue | #1017 | Seatbelt egress-denial E2E tests can silently pass without testing denial | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1017> |
| Issue | #1013 | Seatbelt hostLoopback deny is only half-enforced and validation guidance is incorrect | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1013> |
| Issue | #1009 | [Bubblewrap] No test coverage for the spawn_sandbox streaming path on Linux | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1009> |
| Issue | #1008 | [Bubblewrap] Test coverage gaps: egress budget, proxy/firewall exclusion, teardown, and policy denials | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1008> |
| Issue | #998 | LXC: container-to-host traffic bypasses the egress chain while the backend advertises EGRESS_DEFAULT and HOST_LOOPBACK | open | dhoehna | <https://github.com/microsoft/mxc/issues/998> |
| Issue | #1000 | LXC: `protocol: any` combined with a port lowers only TCP and UDP, narrowing deny rules | open | dhoehna | <https://github.com/microsoft/mxc/issues/1000> |
| Issue | #999 | LXC: malformed port and protocol selectors are widened instead of rejected when ExecutionRequest bypasses the JSON parser | open | dhoehna | <https://github.com/microsoft/mxc/issues/999> |
| Issue | #1001 | LXC: live E2E for schema 0.8 directional egress covers only IPv4 | open | dhoehna | <https://github.com/microsoft/mxc/issues/1001> |
| Issue | #1003 | LXC: directional egress lowering spawns one iptables process per expanded entry | open | dhoehna | <https://github.com/microsoft/mxc/issues/1003> |
| Issue | #1002 | LXC E2E: the GA egress allow-path test depends on unauthenticated api.github.com | open | dhoehna | <https://github.com/microsoft/mxc/issues/1002> |
| Issue | #990 | [LXC/Bubblewrap] Consolidate duplicated network rule handling post-v1 | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/990> |
| Issue | #980 | Bubblewrap: `protocol: any` with a port narrows to TCP/UDP, failing open for deny rules | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/980> |
| Issue | #937 | [Seatbelt] network.proxy is enforced on LXC/Bubblewrap-0.8 but only cooperative on macOS Seatbelt | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/937> |
| Issue | #1005 | Wire the Seatbelt backend into the validation test matrix (dispatcher + trigger) | open | theelliotm | <https://github.com/microsoft/mxc/issues/1005> |
| Issue | #1004 | Seatbelt: legacy loopback proxy in IPv6 form (http://[::1]:port) is rejected as remote under defaultPolicy='block' | open | theelliotm | <https://github.com/microsoft/mxc/issues/1004> |
| Issue | #995 | [Bubblewrap] Proxy end-to-end test flakes on ARM64 CI: the proxy-path assertion depends on reaching api.github.com | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/995> |
| Issue | #994 | [Bubblewrap] Report a host network support tier from getPlatformSupport so callers can tell if proxy mode is supported | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/994> |
| Issue | #991 | [Bubblewrap] Directional network follow-ups from PR #979 review | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/991> |
| Issue | #988 | Add Linux and macOS Node SDK coverage for schema 0.8 networking | open | bbonaby | <https://github.com/microsoft/mxc/issues/988> |
| Issue | #975 | [LXC] Network policy enforcement decided from static config or a failed probe fails open | open | dhoehna | <https://github.com/microsoft/mxc/issues/975> |
| Issue | #992 | [LXC] An allowedHosts hostname is pinned to the IPs the host resolved, so a container resolving it differently is blocked | open | dhoehna | <https://github.com/microsoft/mxc/issues/992> |
| Issue | #955 | [Bubblewrap] Network policy follow-ups: incomplete parser/validate() pairs, unusable IPv6 rules, and misleading diagnostics | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/955> |
| Issue | #981 | [Schema 0.8] Define whether the model-2 proxy endpoint is an exception to bidirectional ingress.hostLoopback | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/981> |
| Issue | #984 | Expose the IsolationSession backend through the Rust SDK | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/984> |
| Issue | #982 | [Bubblewrap] Add regression coverage for the allowLocalNetwork presence guard | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/982> |
| Issue | #970 | Bubblewrap: cooperative proxy warning contradicts the schema 0.8+ private-namespace guarantee | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/970> |
| Issue | #958 | apple-containers support | open | richiemsft | <https://github.com/microsoft/mxc/issues/958> |
| Issue | #953 | In-process callers cannot opt in to the experimental containment backends | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/953> |
| Issue | #945 | [Bubblewrap/SDK] Schema-0.8 network gate: an absent version disables it, and the Node SDK trips it on a field callers never set | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/945> |
| Issue | #952 | Adopt RAII telemetry provider registrations | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/952> |
| Issue | #951 | This repo is missing important files | open | microsoft-github-policy-service[bot] | <https://github.com/microsoft/mxc/issues/951> |
| Issue | #950 | This repo is missing a LICENSE file | open | microsoft-github-policy-service[bot] | <https://github.com/microsoft/mxc/issues/950> |
| Issue | #947 | [WSLc] network.proxy is accepted but only cooperative - no in-container enforcement (blocked on the WSLc SDK) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/947> |
| Issue | #946 | Seatbelt: allowedHosts under defaultPolicy 'block' degrades to allow-all outbound, inverting the requested policy | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/946> |
| Issue | #936 | [Bubblewrap] Proxy-only egress does not restrict non-IP socket families (AF_VSOCK) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/936> |
| Issue | #935 | [Bubblewrap] Proxy-only egress: slirp4netns dying mid-run leaves the sandbox with a broken network and no error | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/935> |
| Issue | #927 | New containment backend: macOS hardware isolation via Apple Virtualization.framework (VZ Linux microVM) | open | adamwynne | <https://github.com/microsoft/mxc/issues/927> |
| Issue | #828 | Add a new captureDenial_verbose file | closed | richiemsft | <https://github.com/microsoft/mxc/issues/828> |
| Issue | #924 | In-process SDKs lose the structured failure detail the backend already produces | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/924> |
| Issue | #827 | Keep captureDenials json file name static | closed | richiemsft | <https://github.com/microsoft/mxc/issues/827> |
| Issue | #833 | [aw] Detection Runs | closed | github-actions[bot] | <https://github.com/microsoft/mxc/issues/833> |
| Issue | #908 | [aw] No-Op Runs | closed | github-actions[bot] | <https://github.com/microsoft/mxc/issues/908> |
