# microsoft/mxc

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 11 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#657](https://github.com/microsoft/mxc/pull/657) — [WSLC] Add on-disk alias canonicalization to denied-path overlap check （PR / merged / moonbox3）
  WSLC の denied path 利用者は、symlink、junction、8.3 short name などによる mount tree への迂回を fail-closed で防ぐ更新版を取り込んでください。
- **⚠ セキュリティ** [#634](https://github.com/microsoft/mxc/pull/634) — [Bubblewrap/LXC] Address network policy gaps - schema （PR / open / dhoehna）
  Bubblewrap / LXC の network policy 利用者は、GA schema、parser、backend enforcement がすべて揃うまでは dev schema の egress / ingress 設定を安全境界として扱わないでください。
- **GA 昇格** [#676](https://github.com/microsoft/mxc/pull/676) — Split GA network schema contract out of #634 (schema + model types only) （PR / open / dhoehna）
  SDK 利用者は新しい GA network schema が現時点では contract と model types のみで、parser と enforcement を含まない点を確認してから採用してください。

## 主要な変更点

- GA network policy の schema と model types を切り出す PR #676、および parser / migration を含む PR #634 がレビュー中ですが、backend enforcement は別 PR のため現時点では完全な防御機能ではありません。
- WSLC は PR #657 で symlink、junction、8.3 short name などの on-disk alias を canonicalize し、denied path が mount tree に迂回するケースを fail-closed で防ぐようになりました。
- LXC は PR #662 で denied symlink と most-specific path masking による container 起動 abort を修正し、schema や wire format を変えずに enforcement の安定性を改善しました。
- Permissive Learning Mode の filesystem extraction、WSLC SDK 2.9.3 の feed 利用、roadmap 更新がマージされました。
- Intel macOS 向け `@microsoft/mxc-sdk-darwin-x64` package の追加は PR #575 で進行中で、Node SDK の配布対象を 6 platform package に拡張する計画です。
- `tar` と `fast-uri` の依存更新も取り込まれ、network policy を backend が実施できない場合に拒否する PR #681 / #682 が継続中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #675 | [Bubblewrap/LXC/WSLC] Update roadmap doc | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/675> |
| PR | #657 | [WSLC] Add on-disk alias canonicalization to denied-path overlap check | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/657> |
| PR | #672 | chore(deps-dev): bump tar from 7.5.16 to 7.5.21 in /sdk/node | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/672> |
| PR | #671 | chore(deps): bump fast-uri from 3.1.2 to 3.1.4 in /scripts/versioning | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/671> |
| PR | #585 | Permissive Learning Mode 2/6 filesystem extraction | merged | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/585> |
| PR | #664 | [WSLC] Consume WSLC SDK from MxcDependencies feed (2.9.3) | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/664> |
| PR | #662 | [LXC] Fix denied-symlink and most-specific masking that aborted the container | merged | dhoehna | <https://github.com/microsoft/mxc/pull/662> |
| PR | #678 | Add iso session test bundle for os vpack | closed | bbonaby | <https://github.com/microsoft/mxc/pull/678> |
| PR | #670 | ci: add Runner Access Probe workflow (draft) | closed | huzaifa-d | <https://github.com/microsoft/mxc/pull/670> |
| PR | #683 | Stop the dev schema advertising a stop/deprovision config for IsolationSession | open | adpa-ms | <https://github.com/microsoft/mxc/pull/683> |
| PR | #682 | fix(isolation-session): refuse network policy the backend cannot enforce; require the unrestricted-network acknowledgment | open | adpa-ms | <https://github.com/microsoft/mxc/pull/682> |
| PR | #674 | fix(appcontainer): default sandbox cwd to a granted path instead of NULL | open | caarlos0 | <https://github.com/microsoft/mxc/pull/674> |
| PR | #676 | Split GA network schema contract out of #634 (schema + model types only) | open | dhoehna | <https://github.com/microsoft/mxc/pull/676> |
| PR | #681 | [WSLC] Reject unenforceable network schema at parse time | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/681> |
| PR | #680 | [WSLC] Alias cannonicalization follow-up in denied-path overlap validator | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/680> |
| PR | #677 | Test: verify write access (do not merge) | open | dhoehna | <https://github.com/microsoft/mxc/pull/677> |
| PR | #673 | feat(policy): discover default-location dev-tool caches in available_tools_policy | open | caarlos0 | <https://github.com/microsoft/mxc/pull/673> |
| PR | #666 | Add Windows filepath behavior clarifications | open | mapalko | <https://github.com/microsoft/mxc/pull/666> |
| PR | #669 | [WSLC] Generate WSLC SDK FFI bindings with bindgen | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/669> |
| PR | #665 | feat: add maintainer issue investigation workflow | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/665> |
| Issue | #679 | [WSLC] Enforce denied-subtree + most-specific-path-wins once SDK deny/exclusion primitive lands (blocked on SDK dep) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/679> |
| Issue | #668 | Add WASIX / WebAssembly sandbox backend support | open | ohault | <https://github.com/microsoft/mxc/issues/668> |
| Issue | #667 | [WSLC] Remove vendored .nupkg fallback once MxcDependencies feed is proven in all build environment | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/667> |
