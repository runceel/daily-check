# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 11 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2896](https://github.com/github/copilot-sdk/issues/2896) — SDK 1.0.26+ breaks Entra MCP sign-in unless the host registers its own Entra app (undocumented breaking change) （Issue / open / vikramgorla）
Entra 認証で MCP を利用するホストは、SDK 1.0.26 以降で独自 Entra app 登録が必要との報告を確認し、更新前に認証フローとアプリ登録要件を検証してください（Issue はオープン中）。

## このリポジトリの要点

この期間はマージ済み PR がなく、SDK の挙動や配布に関する利用者報告が中心です。
特に Entra MCP sign-in の SDK 1.0.26 以降の変更（#2896）、cloud session 作成の失敗（#2888）、Linux prebuild と OpenSSL / glibc の互換性（#2897）は、該当環境の利用者が更新前に確認すべき未解決項目です。
ストリーミング中断時の部分回答消失（#2892）や空の model listing の扱い（#2885、#2886）も追跡対象です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2898 | [Copilot Dreams] Avoid false provider guarantees in .NET tests | open | Copilot | <https://github.com/github/copilot-sdk/pull/2898> |
| PR | #2891 | Fix platform directory tests under consumer unwrap lint | open | aurokin | <https://github.com/github/copilot-sdk/pull/2891> |
| PR | #2890 | docs: add tokenjuice post-tool hook integration guide | open | vincentkoc | <https://github.com/github/copilot-sdk/pull/2890> |
| PR | #2886 | Do not cache empty model listings | open | Andrew-Wood-sky | <https://github.com/github/copilot-sdk/pull/2886> |
| PR | #2883 | Fix dead More Resources link in README | open | xubenqiang | <https://github.com/github/copilot-sdk/pull/2883> |
| PR | #2874 | [Copilot Dreams] Avoid dead-end Java and Rust contributor references | closed | Copilot | <https://github.com/github/copilot-sdk/pull/2874> |
| PR | #2865 | build(deps): bump zod from 4.3.6 to 4.6.6 in /nodejs in the npm_and_yarn group across 1 directory | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2865> |
| Issue | #2887 | What's this? | open | marioserra50 | <https://github.com/github/copilot-sdk/issues/2887> |
| Issue | #2888 | Cloud sessions: `createSession({ cloud })` fails with -32601 since runtime 1.0.81, and SDK-created cloud tasks never start a sandbox | open | pySam1459 | <https://github.com/github/copilot-sdk/issues/2888> |
| Issue | #2899 | Rust SDK: filtered session event subscriptions (filter before enqueue) | open | chuwik | <https://github.com/github/copilot-sdk/issues/2899> |
| Issue | #2897 | Linux x64 prebuild 1.0.29-preview.1: runtime.node now needs shared OpenSSL and aborts under VS Code snap RPATH (core20 glibc 2.31 vs host libcrypto.so.3 requiring GLIBC_2.38) | open | TemsSwift | <https://github.com/github/copilot-sdk/issues/2897> |
| Issue | #2896 | SDK 1.0.26+ breaks Entra MCP sign-in unless the host registers its own Entra app (undocumented breaking change) | open | vikramgorla | <https://github.com/github/copilot-sdk/issues/2896> |
| Issue | #2895 | Feature Request: Support per-skill model selection through SKILL.md frontmatter | open | Manogna97 | <https://github.com/github/copilot-sdk/issues/2895> |
| Issue | #2894 | Latest releases seem to have lost attestation/trusted publisher status? | open | chancez | <https://github.com/github/copilot-sdk/issues/2894> |
| Issue | #2893 | Windows: a tool's normal closing steps do not run when Copilot stops it | open | sbroenne | <https://github.com/github/copilot-sdk/issues/2893> |
| Issue | #2892 | Stopping a response mid-stream discards the partial answer | open | jasssonpet | <https://github.com/github/copilot-sdk/issues/2892> |
| Issue | #2889 | copilot-runtime memory keeps growing when large sessions are resumed and disconnected | open | razakiau | <https://github.com/github/copilot-sdk/issues/2889> |
| Issue | #2885 | Empty model list reflects picker-only behaviour; empty listModels result was cached | open | Andrew-Wood-sky | <https://github.com/github/copilot-sdk/issues/2885> |
| Issue | #2713 | [FFI] In-process runtime (runtime.node) no longer published to npm as of CLI 1.0.85 — unobtainable for registry-mirrored builds | closed | mit2nil | <https://github.com/github/copilot-sdk/issues/2713> |
| Issue | #2804 | Clarify SDK architecture and in-process runtime transport | closed | KalebCole | <https://github.com/github/copilot-sdk/issues/2804> |
| Issue | #2673 | _connect_via_tcp notification handler reads self._sessions without _sessions_lock | closed | ArshVermaGit | <https://github.com/github/copilot-sdk/issues/2673> |
