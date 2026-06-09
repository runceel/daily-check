# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-08 23:38:56 〜 2026-06-09 23:05:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 5 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | stephentoub, jmoseley, edburns |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 3 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1610](https://github.com/github/copilot-sdk/pull/1610) — Add E2E coverage for newly added RPC methods across all SDKs

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +6838 / -2
- マージ日時 (UTC): `2026-06-09 19:06:37`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (74 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/RpcMcpLifecycleE2ETests.cs` | 200 | 0 |
| `dotnet/test/E2E/RpcServerMiscE2ETests.cs` | 160 | 0 |
| `dotnet/test/E2E/RpcServerPluginsE2ETests.cs` | 339 | 0 |
| `dotnet/test/E2E/RpcServerRemoteControlE2ETests.cs` | 105 | 0 |
| `dotnet/test/E2E/RpcSessionStateExtrasE2ETests.cs` | 166 | 0 |
| `dotnet/test/E2E/RpcShellUserRequestedE2ETests.cs` | 119 | 0 |
| `dotnet/test/E2E/RpcUiEphemeralQueryE2ETests.cs` | 37 | 0 |
| `go/internal/e2e/rpc_mcp_lifecycle_e2e_test.go` | 230 | 0 |
| `go/internal/e2e/rpc_server_misc_e2e_test.go` | 93 | 0 |
| `go/internal/e2e/rpc_server_plugins_e2e_test.go` | 468 | 0 |
| `go/internal/e2e/rpc_server_remote_control_e2e_test.go` | 112 | 0 |
| `go/internal/e2e/rpc_session_state_extras_e2e_test.go` | 200 | 0 |
| `go/internal/e2e/rpc_shell_user_requested_e2e_test.go` | 140 | 0 |
| `go/internal/e2e/rpc_ui_ephemeral_query_e2e_test.go` | 37 | 0 |
| `nodejs/test/e2e/rpc_mcp_lifecycle.e2e.test.ts` | 262 | 0 |
| _... 他 59 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `cf828da` Add E2E coverage for newly added RPC methods across all SDKs
- `94d923b` Abort leaked shell task on timeout in Rust cancel E2E test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1604](https://github.com/github/copilot-sdk/pull/1604) — Handle session.canvas.closed by removing from open_canvases snapshot

- 作者: jmoseley / 状態: MERGED
- ラベル: —
- 変更行数: +506 / -26
- マージ日時 (UTC): `2026-06-09 04:09:36`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Session.cs` | 20 | 1 |
| `dotnet/test/Unit/CanvasTests.cs` | 87 | 0 |
| `go/session.go` | 38 | 20 |
| `go/session_test.go` | 66 | 0 |
| `nodejs/src/session.ts` | 23 | 2 |
| `nodejs/test/client.test.ts` | 63 | 0 |
| `python/copilot/session.py` | 17 | 1 |
| `python/test_canvas.py` | 71 | 0 |
| `rust/src/session.rs` | 18 | 2 |
| `rust/tests/session_test.rs` | 103 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `486a309` Handle session.canvas.closed by removing from open_canvases snapshot

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1601](https://github.com/github/copilot-sdk/pull/1601) — Add `@CopilotExperimental` compile-time gate for experimental APIs

- 作者: edburns / 状態: MERGED
- ラベル: `dependencies`
- 変更行数: +1631 / -4
- マージ日時 (UTC): `2026-06-09 17:33:11`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/README.md` | 110 | 0 |
| `java/docs/adr/adr-004-copilotexperimental.md` | 80 | 0 |
| `java/pom.xml` | 6 | 0 |
| `java/scripts/codegen/java.ts` | 19 | 4 |
| `java/src/generated/java/com/github/copilot/generated/rpc/AgentRegistrySpawnParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/CanvasActionInvokeParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/CanvasCloseParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/CanvasOpenParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/CanvasOpenResult.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/PluginsDisableParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/PluginsEnableParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/PluginsInstallParams.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/PluginsInstallResult.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/PluginsListResult.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/rpc/PluginsMarketplacesAddParams.java` | 2 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `a7af1d1` Yolo ready prompt
- `b7378ae` # Add `@CopilotExperimental` compile-time gate for experimental APIs
- `94c787a` Merge branch 'main' into edburns/dd-3012834-experimental-annotation
- `c42514d` refactor: rewrite CopilotExperimentalProcessor to pure JSR 269 (no co…
- `bbcfc08` Spotless
- `7054c6e` On branch edburns/dd-3012834-experimental-annotation
- `ce406ee` feat: add AllowCopilotExperimental opt-in
- `15dfc2f` Spotless
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1612 | Update @github/copilot to 1.0.61 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1612> |
| PR | #1606 | Add open-canvases snapshot tracking to the Java SDK | open | jmoseley | <https://github.com/github/copilot-sdk/pull/1606> |
| PR | #1605 | fix(jsonrpc): isolate malformed frames so one bad message can't cancel all in-flight requests | closed | chuwik | <https://github.com/github/copilot-sdk/pull/1605> |
| Issue | #1611 | Workflow checkpoints are not restorable across version upgrades | open | saikir1994 | <https://github.com/github/copilot-sdk/issues/1611> |
| Issue | #1609 | SDK-provided CustomAgentConfig.model is dropped during session.create | closed | mihaiLucian | <https://github.com/github/copilot-sdk/issues/1609> |
| Issue | #1608 | Add skill-level spans to OpenTelemetry traces | open | Alexk2309 | <https://github.com/github/copilot-sdk/issues/1608> |
| Issue | #1607 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1607> |
| Issue | #1603 | [aw] Java Codegen Agentic Fix failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1603> |
| Issue | #1590 | Carro | closed | carlosandresperezmontezuma-pixel | <https://github.com/github/copilot-sdk/issues/1590> |
| Issue | #1255 | Responsible Disclosure - Reminder | closed | aleister1102 | <https://github.com/github/copilot-sdk/issues/1255> |
| Issue | #558 | TimeoutError: Timeout after XXXs waiting for session.idle | closed | TaoChenOSU | <https://github.com/github/copilot-sdk/issues/558> |
| Issue | #524 | Session hangs | closed | IeuanWalker | <https://github.com/github/copilot-sdk/issues/524> |
| Issue | #452 | It fails in Windows unless credentials are removed | closed | WindowsNT | <https://github.com/github/copilot-sdk/issues/452> |
