# microsoft/mxc

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 9 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 12 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#575](https://github.com/microsoft/mxc/pull/575) — [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) （PR / open / MGudgin）
  Intel macOS 向け SDK パッケージ追加の扱いが継続中のため、SDK 配布を管理する担当者は対象プラットフォームと既存パッケージ方針を確認してください。
- **GA 昇格** [#1002](https://github.com/microsoft/mxc/issues/1002) — LXC E2E: the GA egress allow-path test depends on unauthenticated api.github.com （Issue / closed / dhoehna）
  LXC の GA ネットワーク検証で外部 GitHub API の未認証アクセスに依存していた問題が解消され、テスト結果の信頼性が改善されました。
- **GA 昇格** [#655](https://github.com/microsoft/mxc/issues/655) — [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec （Issue / closed / dhoehna）
  GA ネットワーク仕様に合わせて HTTP proxy 設定の配置が整理されたため、スキーマ利用者は `runtimeConfig.networkProxy` を参照してください。

## 主要な変更点

- Bubblewrap のバージョン検出、egress 計画の再利用、ストリーミング、終了処理のテストが強化されました。
- Seatbelt では hostLoopback と IPv6 loopback の扱い、ネットワーク検証の責務が整理されました。
- LXC ネットワークテストの CI ピア制御と、初期化失敗時に fail closed する挙動が追加されました。
- C# SDK が Rust SDK と同等の機能へ近づき、エラーの `remediation` 表現も整理されました。
- GA ネットワーク仕様に伴い proxy 設定の配置が `runtimeConfig.networkProxy` に統一されました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #723 | Harden Bubblewrap version probing | merged | MGudgin | <https://github.com/microsoft/mxc/pull/723> |
| PR | #1054 | [LXC] Point the LXC network tests at CI-controlled peers | merged | dhoehna | <https://github.com/microsoft/mxc/pull/1054> |
| PR | #1033 | [Seatbelt] Enforce hostLoopback, fix ip6 loopback bug, and consolidate network validation | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1033> |
| PR | #1067 | Carry `remediation` on the error rather than inside `ApiFailure` | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1067> |
| PR | #1051 | [Bubblewrap] Reuse the validated egress plan and pin IPv6/ICMP rendering | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1051> |
| PR | #1050 | Bring C# SDK up to parity with Rust SDK. | merged | shschaefer | <https://github.com/microsoft/mxc/pull/1050> |
| PR | #1062 | fix: fail closed when LXC container network doesn't initialize | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1062> |
| PR | #1056 | [Bubblewrap] Add streaming (spawn_sandbox) test coverage on Linux | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1056> |
| PR | #1057 | [Bubblewrap] Stop descendants outliving teardown and close the backend's test coverage gaps | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1057> |
| PR | #712 | Add --wait-for-debugger flag for BaseContainer/AppContainer runners | closed | asklar | <https://github.com/microsoft/mxc/pull/712> |
| PR | #567 | [SDK] Ship per-platform native binaries via optional-dependency packages (#512) | closed | MGudgin | <https://github.com/microsoft/mxc/pull/567> |
| PR | #649 | fix(host-prep): avoid recursive ACL propagation on drive roots | closed | xuli500177 | <https://github.com/microsoft/mxc/pull/649> |
| PR | #1063 | Promote WSLc from experimental to the stable config surface | closed | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1063> |
| PR | #1069 | docs: add guide for debugging workloads in the process container | open | asklar | <https://github.com/microsoft/mxc/pull/1069> |
| PR | #1066 | feat(seatbelt): add system power access | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1066> |
| PR | #1064 | [WSLC] Promote WSLc from experimental to the stable config surface | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1064> |
| PR | #1059 | fix: delay-load winhvplatform.dll to prevent loader crash on WHP-less hosts | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1059> |
| PR | #1058 | [WSLC] Reject remaining policy fields the backend cannot honor | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1058> |
| Issue | #1068 | [Docs] Bubblewrap is documented as experimental, but it is not gated by `--experimental` | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1068> |
| Issue | #1060 | [LXC] E2E network assertions run against containers whose readiness was never confirmed: allow cases fail, deny cases pass vacuously | closed | dhoehna | <https://github.com/microsoft/mxc/issues/1060> |
| Issue | #1061 | ProcessContainer: MSYS2/Cygwin runtimes (git-bash) cannot initialize — NtCreateDirectoryObject(\BaseNamedObjects\...) denied | open | SiamAbdullah | <https://github.com/microsoft/mxc/issues/1061> |
| Issue | #1002 | LXC E2E: the GA egress allow-path test depends on unauthenticated api.github.com | closed | dhoehna | <https://github.com/microsoft/mxc/issues/1002> |
| Issue | #1023 | [Seatbelt] Correct schema 0.8 documentation and example drift | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1023> |
| Issue | #1004 | Seatbelt: legacy loopback proxy in IPv6 form (http://[::1]:port) is rejected as remote under defaultPolicy='block' | closed | theelliotm | <https://github.com/microsoft/mxc/issues/1004> |
| Issue | #1021 | [Seatbelt] Enforce bidirectional hostLoopback semantics and deterministic network E2E coverage | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1021> |
| Issue | #1022 | [Seatbelt] Consolidate network validation ownership and remove parser/backend drift | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1022> |
| Issue | #655 | [Schema] Relocate HTTP proxy config to runtimeConfig.networkProxy per GA network spec | closed | dhoehna | <https://github.com/microsoft/mxc/issues/655> |
| Issue | #919 | remove_forward_hooks reports success for an absent iptables binary | closed | dhoehna | <https://github.com/microsoft/mxc/issues/919> |
| Issue | #991 | [Bubblewrap] Directional network follow-ups from PR #979 review | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/991> |
| Issue | #660 | Cross platform process support | closed | ohault | <https://github.com/microsoft/mxc/issues/660> |
| Issue | #1009 | [Bubblewrap] No test coverage for the spawn_sandbox streaming path on Linux | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1009> |
| Issue | #1008 | [Bubblewrap] Test coverage gaps: egress budget, proxy/firewall exclusion, teardown, and policy denials | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1008> |
