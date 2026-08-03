# microsoft/mxc

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 22 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 18 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#732](https://github.com/microsoft/mxc/pull/732) — Block breaking changes to the dev schema at pull-request time （PR / open / MGudgin）
  dev schema を変更する開発者は、PR 時の破壊的変更検査に対応し、既存スキーマ利用者への互換性を確認してください。
- **⚠ セキュリティ** [#634](https://github.com/microsoft/mxc/pull/634) — [Bubblewrap/LXC] Address network policy gaps - schema （PR / open / dhoehna）
  Bubblewrap/LXC のネットワーク ポリシーを運用する担当者は、schema 側の許可・拒否条件を確認し、抜け道がないことを検証してください。
- **⚠ セキュリティ** [#632](https://github.com/microsoft/mxc/pull/632) — [LXC] Address network policy gaps - model 2 (deny-all-except-proxy) （PR / open / dhoehna）
  LXC の deny-all-except-proxy モデルを使う利用者は、プロキシ経由以外の通信が拒否されることと必要な例外を確認してください。
- **⚠ セキュリティ** [#631](https://github.com/microsoft/mxc/pull/631) — [Bubblewrap/LXC] Address common network policy gaps - model 1 （PR / closed / dhoehna）
  クローズ済みの旧ネットワーク ポリシー修正であり、採用時は後続の #632 / #634 の設計を基準に確認してください。
- **非推奨/廃止** [#705](https://github.com/microsoft/mxc/pull/705) — Fix npm audit advisories and deprecated packages in Node projects （PR / merged / MGudgin）
  Node プロジェクトの利用者は npm audit 修正と非推奨パッケージ更新を取り込み、lockfile とビルド結果を確認してください。
- **非推奨/廃止** [#575](https://github.com/microsoft/mxc/pull/575) — [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) （PR / open / MGudgin）
  Intel macOS 向け SDK パッケージを必要とする利用者は、darwin-x64 の追加方針と公開状態を確認してください。
- **GA 昇格** [#707](https://github.com/microsoft/mxc/pull/707) — Revert "Bring network wire schema to full GA spec" (PR676) （PR / merged / MGudgin）
  ネットワーク wire schema の GA 仕様を利用する担当者は、revert により #676 の変更が戻された範囲と現在の契約を確認してください。
- **GA 昇格** [#676](https://github.com/microsoft/mxc/pull/676) — Bring network wire schema to full GA spec (wire.rs + config fixtures only) （PR / merged / dhoehna）
  wire.rs と設定 fixture の GA 対応を取り込む利用者は、後続の #707 による取り消しを含めてスキーマ互換性を確認してください。

## 主要な変更点

- **破壊的変更対策**: dev schema の互換性検査を PR 時に導入する提案が進んでいます。
- **セキュリティ**: Bubblewrap/LXC のネットワーク ポリシーの抜け道を埋める schema / model 修正が継続中です。
- npm audit と非推奨パッケージの修正、Bubblewrap の最小 bwrap バージョン検査が入りました。
- Windows Learning Mode の denial capture、sealed ETL 分析、captureDenials JSON 出力が追加されました。
- ネットワーク wire schema の GA 変更は #707 で revert されており、現行仕様の確認が必要です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #696 | Wire captureDenials to Windows Learning Mode runtime | merged | richiemsft | <https://github.com/microsoft/mxc/pull/696> |
| PR | #656 | fix(wslc): clarify WSL runtime prerequisite | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/656> |
| PR | #705 | Fix npm audit advisories and deprecated packages in Node projects | merged | MGudgin | <https://github.com/microsoft/mxc/pull/705> |
| PR | #680 | [WSLC] Alias cannonicalization follow-up in denied-path overlap validator | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/680> |
| PR | #714 | [Bubblewrap] Gate platform detection on a minimum bwrap version | merged | caarlos0 | <https://github.com/microsoft/mxc/pull/714> |
| PR | #720 | Fix VPack CodeSign validation for test bundle | merged | bbonaby | <https://github.com/microsoft/mxc/pull/720> |
| PR | #719 | [Bubblewrap] Fix proxy tests by using non-rate-limited origin | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/719> |
| PR | #692 | Add iso session test bundle for os vpack | merged | bbonaby | <https://github.com/microsoft/mxc/pull/692> |
| PR | #713 | [WSLC] Reapply "[WSLC] Add cooperative HTTP/HTTPS proxy support" | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/713> |
| PR | #704 | Fix playground build by pointing at the real SDK package directory | merged | MGudgin | <https://github.com/microsoft/mxc/pull/704> |
| PR | #699 | Add sealed ETL denial analysis | merged | richiemsft | <https://github.com/microsoft/mxc/pull/699> |
| PR | #701 | Emit captureDenials JSON output | merged | richiemsft | <https://github.com/microsoft/mxc/pull/701> |
| PR | #586 | Permissive Learning Mode 3/6 Config Generation | merged | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/586> |
| PR | #707 | Revert "Bring network wire schema to full GA spec" (PR676) | merged | MGudgin | <https://github.com/microsoft/mxc/pull/707> |
| PR | #676 | Bring network wire schema to full GA spec (wire.rs + config fixtures only) | merged | dhoehna | <https://github.com/microsoft/mxc/pull/676> |
| PR | #641 | Phase 3d: add actionable configuration parse errors | merged | MGudgin | <https://github.com/microsoft/mxc/pull/641> |
| PR | #698 | Drop zip default features in wslc_common to remove aes/sha1 | merged | MGudgin | <https://github.com/microsoft/mxc/pull/698> |
| PR | #697 | Revert "[WSLC] Add cooperative HTTP/HTTPS proxy support" | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/697> |
| PR | #652 | [WSLC] Add cooperative HTTP/HTTPS proxy support | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/652> |
| PR | #622 | Inject and validate the two learning-mode capabilities | merged | richiemsft | <https://github.com/microsoft/mxc/pull/622> |
| PR | #665 | feat: add maintainer issue investigation workflow | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/665> |
| PR | #682 | fix(isolation-session): refuse network policy the backend cannot enforce; require the unrestricted-network acknowledgment | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/682> |
| PR | #631 | [Bubblewrap/LXC] Address common network policy gaps - model 1 | closed | dhoehna | <https://github.com/microsoft/mxc/pull/631> |
| PR | #715 | Publish MXC crates through ESRP | closed | dhoehna | <https://github.com/microsoft/mxc/pull/715> |
| PR | #673 | feat(policy): discover default-location dev-tool caches in available_tools_policy | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/673> |
| PR | #677 | Test: verify write access (do not merge) | closed | dhoehna | <https://github.com/microsoft/mxc/pull/677> |
| PR | #723 | Harden Bubblewrap version probing | open | MGudgin | <https://github.com/microsoft/mxc/pull/723> |
| PR | #731 | Add the structural schema-compatibility detector | open | MGudgin | <https://github.com/microsoft/mxc/pull/731> |
| PR | #730 | Add fail-closed base resolution and SemVer libraries for the versioning gates | open | MGudgin | <https://github.com/microsoft/mxc/pull/730> |
| PR | #732 | Block breaking changes to the dev schema at pull-request time | open | MGudgin | <https://github.com/microsoft/mxc/pull/732> |
| PR | #710 | Emit captureDenials JSON output (replacement for #701) | open | richiemsft | <https://github.com/microsoft/mxc/pull/710> |
| PR | #709 | Add sealed ETL denial analysis (replacement for #699) | open | richiemsft | <https://github.com/microsoft/mxc/pull/709> |
| PR | #728 | Document the trust model and the outer-clamp design | open | MGudgin | <https://github.com/microsoft/mxc/pull/728> |
| PR | #727 | Make seatbelt.profileOverride dev-only (rejected by shipped builds) | open | MGudgin | <https://github.com/microsoft/mxc/pull/727> |
| PR | #726 | Log boundary relaxations with secure-default warnings | open | MGudgin | <https://github.com/microsoft/mxc/pull/726> |
| PR | #708 | feat(iso): surface structured error fields on the state-aware wire envelope | open | adpa-ms | <https://github.com/microsoft/mxc/pull/708> |
| PR | #724 | [LXC] Filter IPv6 destinations and CIDR ranges in firewall mode (AB#62830559) | open | dhoehna | <https://github.com/microsoft/mxc/pull/724> |
| PR | #725 | feat(engine): port TS host detectors (lxc, windows_sandbox) to Rust | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/725> |
| PR | #718 | fix(isolation-session): refuse ui and unsupported lifecycle rather than dropping them | open | adpa-ms | <https://github.com/microsoft/mxc/pull/718> |
| PR | #717 | Add backend support probe API design & discussion doc | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/717> |
| PR | #712 | Add --wait-for-debugger flag for BaseContainer/AppContainer runners | open | asklar | <https://github.com/microsoft/mxc/pull/712> |
| PR | #716 | Publish the mxc-sdk crate closure to crates.io via ESRP | open | dhoehna | <https://github.com/microsoft/mxc/pull/716> |
| PR | #706 | Add opt-in telemetry consent with an administrative policy ceiling | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/706> |
| PR | #695 | [WSLC] Reset WSLC runtime between E2E tests to fix session-state bleed | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/695> |
| Issue | #721 | [WSLC] RAII guard Drop impls call SDK teardown outside a COM apartment | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/721> |
| Issue | #722 | [WSLC] Fix runner defects | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/722> |
| Issue | #693 | latest Windows 11 cannot do Tier 1 BaseContainer | closed | rsc | <https://github.com/microsoft/mxc/issues/693> |
| Issue | #703 | Unify one-shot and state-aware config parsing | open | MGudgin | <https://github.com/microsoft/mxc/issues/703> |
| Issue | #702 | Verify whether newer-SDK/older-executor version skew occurs (justifies permissive experimental block) | open | MGudgin | <https://github.com/microsoft/mxc/issues/702> |
| Issue | #694 | AppContainer cannot execute GetFinalPathNameByHandle | open | rsc | <https://github.com/microsoft/mxc/issues/694> |
| Issue | #553 | wslc setup failed: WSLC runtime not available. Missing components: WslPackage. Ensure WSL2 and the WSLC SDK are installed. | closed | westerdaled | <https://github.com/microsoft/mxc/issues/553> |
