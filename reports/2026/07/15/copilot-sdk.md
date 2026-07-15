# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-14 01:26:38 〜 2026-07-15 04:59:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 3 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | rinceyuan, SteveSandersonMS, github-actions[bot] |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1990](https://github.com/github/copilot-sdk/pull/1990) — Update @github/copilot to 1.0.71-2

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +863 / -475
- マージ日時 (UTC): `2026-07-15 03:03:39`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (68 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 44 | 37 |
| `dotnet/src/Generated/SessionEvents.cs` | 24 | 2 |
| `dotnet/src/Session.cs` | 1 | 0 |
| `dotnet/test/Unit/CanvasTests.cs` | 3 | 0 |
| `dotnet/test/Unit/ForwardCompatibilityTests.cs` | 18 | 0 |
| `go/definetool.go` | 1 | 1 |
| `go/internal/e2e/event_fidelity_e2e_test.go` | 1 | 0 |
| `go/internal/e2e/rpc_server_e2e_test.go` | 2 | 0 |
| `go/internal/e2e/rpc_server_misc_e2e_test.go` | 1 | 0 |
| `go/internal/e2e/rpc_server_plugins_e2e_test.go` | 2 | 0 |
| `go/internal/e2e/rpc_ui_ephemeral_query_e2e_test.go` | 1 | 0 |
| `go/internal/e2e/system_message_sections_e2e_test.go` | 2 | 0 |
| `go/internal/e2e/tools_e2e_test.go` | 1 | 0 |
| `go/rpc/zrpc.go` | 73 | 43 |
| `go/rpc/zrpc_encoding.go` | 2 | 0 |
| _... 他 53 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `b411f33` Update @github/copilot to 1.0.71-2
- `b46553a` Address generated SDK review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1979](https://github.com/github/copilot-sdk/pull/1979) — docs: apply style guide conventions and fix trailing whitespace

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +8 / -8
- マージ日時 (UTC): `2026-07-14 13:24:37`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/README.md` | 1 | 1 |
| `docs/auth/authenticate.md` | 3 | 3 |
| `docs/features/cloud-sessions.md` | 1 | 1 |
| `docs/setup/choosing-a-setup-path.md` | 1 | 1 |
| `docs/troubleshooting/mcp-debugging.md` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `4a5f9f1` docs: apply style guide conventions and fix trailing whitespace

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1978](https://github.com/github/copilot-sdk/pull/1978) — Update outdated gpt-4.1 model references in SDK docstrings

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +16 / -16
- マージ日時 (UTC): `2026-07-14 13:23:44`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Session.cs` | 4 | 4 |
| `go/session.go` | 1 | 1 |
| `java/src/main/java/com/github/copilot/CopilotSession.java` | 6 | 6 |
| `java/src/main/java/com/github/copilot/package-info.java` | 1 | 1 |
| `java/src/main/java/com/github/copilot/rpc/package-info.java` | 1 | 1 |
| `nodejs/src/session.ts` | 1 | 1 |
| `python/copilot/session.py` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `51f49b2` docs: update outdated gpt-4.1 model references in SDK docstrings

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1976](https://github.com/github/copilot-sdk/pull/1976) — Add in-process (FFI) transport to the Go SDK

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +2809 / -328
- マージ日時 (UTC): `2026-07-14 12:56:18`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (59 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/go-sdk-tests.yml` | 8 | 1 |
| `dotnet/src/Client.cs` | 55 | 12 |
| `dotnet/src/FfiRuntimeHost.cs` | 11 | 5 |
| `dotnet/src/build/GitHub.Copilot.SDK.targets` | 4 | 1 |
| `go/README.md` | 48 | 2 |
| `go/client.go` | 220 | 9 |
| `go/client_test.go` | 192 | 0 |
| `go/cmd/bundler/main.go` | 280 | 45 |
| `go/cmd/bundler/main_test.go` | 81 | 0 |
| `go/embeddedcli/installer.go` | 4 | 3 |
| `go/go.mod` | 1 | 0 |
| `go/go.sum` | 2 | 0 |
| `go/inprocess.go` | 15 | 0 |
| `go/inprocess_disabled.go` | 11 | 0 |
| `go/inprocess_enabled.go` | 11 | 0 |
| _... 他 44 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `6902d21` Add in-process (FFI) transport to the Go SDK
- `8bb0a99` Fix Go FFI e2e CI failures (inprocess matrix)
- `9a1f3a4` Fix Go FFI inprocess e2e CI failures
- `d53279a` Fix Go in-process transport parity
- `820cf7d` Require matching FFI runtime versions
- `6d92b09` Isolate embedded CLI versions by directory
- `343b742` Hide in-process runtime implementation details
- `0dc1884` Gate Go in-process runtime behind build tag
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1987 | Add Rust managed settings client wrapper | open | jbrown1618 | <https://github.com/github/copilot-sdk/pull/1987> |
| PR | #1986 | Fix .NET in-process E2E transport coverage | open | roji | <https://github.com/github/copilot-sdk/pull/1986> |
| PR | #1982 | Fix Go E2E SA5011 nil-deref staticcheck findings | open | roji | <https://github.com/github/copilot-sdk/pull/1982> |
| PR | #1981 | Add custom agent reasoning effort across SDKs | open | roji | <https://github.com/github/copilot-sdk/pull/1981> |
| PR | #1980 | java: enforce non-blank @CopilotToolParam description at compile time | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/1980> |
| PR | #1988 | Update @github/copilot to 1.0.71-1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1988> |
| PR | #1984 | Fix stale-session in-process Node E2E teardown stall | closed | roji | <https://github.com/github/copilot-sdk/pull/1984> |
| PR | #1983 | Fix Windows in-process Node E2E cleanup hang | closed | roji | <https://github.com/github/copilot-sdk/pull/1983> |
| Issue | #1991 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1991> |
| Issue | #1989 | [aw] No-Op Runs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1989> |
| Issue | #1985 | polyglot programming best practice ? | open | PrestigeDevop | <https://github.com/github/copilot-sdk/issues/1985> |
