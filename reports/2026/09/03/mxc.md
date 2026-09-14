# microsoft/mxc

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 12 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1076](https://github.com/microsoft/mxc/pull/1076) — Add Process Security Environment ingress contract （PR / open / bbonaby）
  directional ingress policy を schema と生成 Rust binding に追加する段階で、runtime enforcement は別 PR です。Process Security Environment 利用者は、契約だけを先行採用せず実装・文書化の完了を追跡してください。

## 主要な変更点

- [PR #1076](https://github.com/microsoft/mxc/pull/1076) で Process Security Environment の directional ingress policy 契約が提案されていますが、runtime 実装は後続 PR のため現時点では機能として未完成です。
- [PR #1075](https://github.com/microsoft/mxc/pull/1075) により、schema 0.8 networking の Node SDK coverage が Linux と macOS に拡大しました。
- C# isolation-session test は capability probe で gate され、未対応環境での誤失敗を避けるようになりました。
- Validation の ScaleSet API 移行がマージされ、pre-provisioned image や macOS host preparation を含む追加の CI 基盤更新も継続中です。
- Apple Container 関連の 4 PR は未マージでクローズされており、今回の期間に製品 surface へは入りませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1093 | [CI] Migrate Validation to ScaleSet API  | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1093> |
| PR | #1086 | [SDK] Gate the C# isolation-session tests on the capability probe | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/1086> |
| PR | #1075 | [SDK] Add Linux and macOS Node SDK coverage for schema 0.8 networking | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1075> |
| PR | #957 | Add Apple Container config surface | closed | richiemsft | <https://github.com/microsoft/mxc/pull/957> |
| PR | #967 | Add Apple Container management layer | closed | richiemsft | <https://github.com/microsoft/mxc/pull/967> |
| PR | #972 | Implement Apple Container CLI runtime | closed | richiemsft | <https://github.com/microsoft/mxc/pull/972> |
| PR | #1030 | Add Apple Container samples and qualification | closed | richiemsft | <https://github.com/microsoft/mxc/pull/1030> |
| PR | #1088 | chore(deps-dev): bump fast-uri from 3.1.5 to 3.1.7 in /tests/playground | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1088> |
| PR | #1087 | chore(deps-dev): bump @xmldom/xmldom from 0.8.13 to 0.8.15 in /tests/playground | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1087> |
| PR | #1091 | Extract shared state-aware normalization | open | MGudgin | <https://github.com/microsoft/mxc/pull/1091> |
| PR | #1089 | [CI] Support pre-provisioned images, migrate CI scripts, add macOS host prep, support T3-Workloads | open | theelliotm | <https://github.com/microsoft/mxc/pull/1089> |
| Issue | #1090 | Reuse shared native policy parsing in mxc_ffi | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1090> |
| Issue | #1085 | Centralize state-aware telemetry version handling in native execution boundary | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/1085> |
| Issue | #805 | [WSLC] Run daemon exec off the single worker thread + per-container single-flight Busy admission (non-critical) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/805> |
| Issue | #804 | [WSLC] State-aware exec: forward piped stdin to the container (blocked on WSLC SDK) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/804> |
| Issue | #679 | [WSLC] Enforce denied-subtree + most-specific-path-wins once SDK deny/exclusion primitive lands (blocked on SDK dep) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/679> |
| Issue | #990 | [LXC/Bubblewrap] Consolidate duplicated network rule handling post-v1 | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/990> |
| Issue | #970 | Bubblewrap: cooperative proxy warning contradicts the schema 0.8+ private-namespace guarantee | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/970> |
| Issue | #686 | [WSLC] Consolidate unsafe FFI into a single auditable module with safe wrappers | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/686> |
| Issue | #684 | [WSLC] Automate the WSLc SDK-bump runbook via an on-demand CI workflow | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/684> |
| Issue | #1020 | [WSLC] Test coverage gaps: non-asserting fixtures, rollback paths, daemon lifecycle races, and ARM64 | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1020> |
| Issue | #795 | [WSLC] Enforce integrity boundary + caller-context mount validation on the state-aware daemon control pipe | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/795> |
| Issue | #604 | [Bubblewrap/LXC/WSLC] Bound the synchronous filesystem I/O on the sandbox launch path (timeout / cancellation) | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/604> |
| Issue | #988 | Add Linux and macOS Node SDK coverage for schema 0.8 networking | closed | bbonaby | <https://github.com/microsoft/mxc/issues/988> |
| Issue | #1073 | wxc-exec --probe fails to launch on Windows Server 2022 instead of reporting unsupported containment | closed | shanselman | <https://github.com/microsoft/mxc/issues/1073> |
