# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-05 04:03:53 〜 2026-07-06 01:30:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 2 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | stephentoub |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1909](https://github.com/github/copilot-sdk/pull/1909) — Fix telemetry forwarding handshake CI failures

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +488 / -52
- マージ日時 (UTC): `2026-07-05 14:12:06`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-sdk-tests.yml` | 84 | 0 |
| `dotnet/src/Client.cs` | 16 | 1 |
| `dotnet/test/E2E/GitHubTelemetryForwardingE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/McpOAuthE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RpcSessionStateExtrasE2ETests.cs` | 3 | 3 |
| `dotnet/test/Unit/GitHubTelemetryTests.cs` | 47 | 6 |
| `go/client.go` | 18 | 1 |
| `go/client_test.go` | 52 | 2 |
| `go/internal/e2e/github_telemetry_e2e_test.go` | 1 | 1 |
| `go/internal/e2e/mcp_oauth_e2e_test.go` | 1 | 1 |
| `go/internal/e2e/rpc_session_state_extras_e2e_test.go` | 3 | 3 |
| `java/src/main/java/com/github/copilot/CopilotClient.java` | 15 | 6 |
| `java/src/test/java/com/github/copilot/GitHubTelemetryTest.java` | 23 | 4 |
| `java/src/test/java/com/github/copilot/McpOAuthE2ETest.java` | 1 | 1 |
| `nodejs/src/client.ts` | 12 | 3 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `46e26a7` Send GitHub telemetry forwarding opt-in on the connect handshake
- `cfd82f9` Address PR review: fix Python test split and tighten C# omit assertion
- `c9ff7d3` Avoid hand-editing generated connect types
- `8754dbc` Fix tests for optional telemetry schema fields
- `d151aea` Fix Rust tests for optional telemetry schema fields
- `5109be1` Address Rust connect handshake review feedback
- `df15767` Update MCP OAuth cancellation E2E expectations
- `bfefe6f` Harden Java Spotless formatter provisioning

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1906](https://github.com/github/copilot-sdk/pull/1906) — Improve E2E coverage across SDKs

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +5995 / -100
- マージ日時 (UTC): `2026-07-06 01:29:18`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (52 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 2 | 0 |
| `dotnet/test/E2E/ClientOptionsE2ETests.cs` | 281 | 0 |
| `dotnet/test/E2E/McpOAuthE2ETests.cs` | 51 | 0 |
| `dotnet/test/E2E/RpcServerE2ETests.cs` | 72 | 0 |
| `dotnet/test/E2E/RpcServerMiscE2ETests.cs` | 141 | 9 |
| `dotnet/test/E2E/RpcSessionStateExtrasE2ETests.cs` | 165 | 2 |
| `dotnet/test/E2E/RpcTasksAndHandlersE2ETests.cs` | 21 | 0 |
| `go/client.go` | 2 | 0 |
| `go/internal/e2e/client_options_e2e_test.go` | 345 | 2 |
| `go/internal/e2e/mcp_oauth_e2e_test.go` | 71 | 0 |
| `go/internal/e2e/mcp_server_helpers_test.go` | 12 | 4 |
| `go/internal/e2e/rpc_server_e2e_test.go` | 151 | 0 |
| `go/internal/e2e/rpc_server_misc_e2e_test.go` | 182 | 0 |
| `go/internal/e2e/rpc_session_state_extras_e2e_test.go` | 151 | 0 |
| `go/internal/e2e/rpc_tasks_and_handlers_e2e_test.go` | 33 | 0 |
| _... 他 37 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `8de2e05` test(dotnet): improve C# e2e RPC coverage
- `185ecf6` test: expand e2e parity across SDKs
- `539bb4f` test: address e2e review cleanup
- `1cf9390` test: avoid macro-only account token binding
- `fce9b25` test: finish review comment cleanup
- `2e46215` test(java): add extension option parity
- `c1ac7ce` test: cover headers refresh none variant
- `9bb66f1` test: add discovery path e2e parity
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1910 | Fix .NET GitHub telemetry forwarding | closed | roji | <https://github.com/github/copilot-sdk/pull/1910> |
| Issue | #1912 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1912> |
| Issue | #1911 | Provide an explicit SDK API for built-in shell tool startup env/scripts | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/1911> |
| Issue | #1907 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1907> |
| Issue | #1627 | ProviderConfig.maxOutputTokens not applied to the request for a custom provider + unknown model | closed | robsteen | <https://github.com/github/copilot-sdk/issues/1627> |
