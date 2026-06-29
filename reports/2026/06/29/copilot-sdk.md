# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 12 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | github-actions[bot], edburns, SteveSandersonMS, stephentoub, sunbrye, Copilot |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Copilot SDK では、@github/copilot の更新に合わせて RPC / session event の生成コードが大きく刷新される一方、BYOK provider のコールバック API も sessionId 付きに整理されています。Java / Go / .NET / Python / Rust の各 SDK でテスト安定化やドキュメント改善も進み、SDK 実装の互換性と運用性が上がっています。特に、認証プロバイダー連携の実装面での変更が目立ち、利用者側でも実装差分の確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1819](https://github.com/github/copilot-sdk/pull/1819) — Update @github/copilot to 1.0.66-1

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +6496 / -513
- マージ日時 (UTC): `2026-06-27 10:23:19`

**変更概要**

この PR は、Copilot コア側の 1.0.66-1 更新に追随するために、SDK の生成コード・セッションイベント・RPC エンコーディング周りをまとめて更新するものです。Go / .NET / Java の各実装と E2E テストが一緒に調整され、互換性維持とテスト安定化が両立しています。

<details><summary>変更ファイル (77 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 467 | 23 |
| `dotnet/src/Generated/SessionEvents.cs` | 702 | 3 |
| `dotnet/test/E2E/PerSessionAuthE2ETests.cs` | 4 | 4 |
| `dotnet/test/E2E/RpcServerPluginsE2ETests.cs` | 3 | 6 |
| `dotnet/test/E2E/RpcSessionStateE2ETests.cs` | 2 | 2 |
| `dotnet/test/E2E/SessionE2ETests.cs` | 5 | 3 |
| `dotnet/test/Unit/SessionEventSerializationTests.cs` | 1 | 0 |
| `go/internal/e2e/per_session_auth_e2e_test.go` | 4 | 4 |
| `go/internal/e2e/rpc_server_plugins_e2e_test.go` | 8 | 13 |
| `go/internal/e2e/rpc_session_state_e2e_test.go` | 2 | 2 |
| `go/rpc/zrpc.go` | 651 | 73 |
| `go/rpc/zrpc_encoding.go` | 393 | 0 |
| `go/rpc/zsession_encoding.go` | 20 | 0 |
| `go/rpc/zsession_events.go` | 114 | 2 |
| `go/zsession_events.go` | 46 | 0 |
| _... 他 62 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `5bdec86` Update @github/copilot to 1.0.66-1
- `ec86bbf` Fix SDK tests for Copilot 1.0.66-1
- `2ead4ae` Fix Java and Python CI failures
- `f831f6e` Fix .NET dispose handler E2E leakage
- `48a7d3f` Dispose stateful .NET E2E session

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更は見られず、主に生成コードとセッションイベントの内部表現の更新です。セッション状態やツール呼び出し周りのテストも合わせて修正されており、SDK 側の実装差異の吸収が目的です。

**既存利用者への影響**

既存利用者は即時の移行作業を行う必要はありませんが、更新後の生成コードやセッションイベントの挙動差分を確認しておくと安心です。

### [#1808](https://github.com/github/copilot-sdk/pull/1808) — Make abort E2E snapshots tolerate timing variants

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +38 / -0
- マージ日時 (UTC): `2026-06-26 16:49:40`

**変更概要**

テストのスナップショットがタイミング差異に影響されにくいよう、abort 系の E2E 期待値が緩和されました。これにより、実行環境差で不安定になりがちなテストの安定性が向上しています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `test/snapshots/abort/should_abort_during_active_streaming.yaml` | 10 | 0 |
| `test/snapshots/session/should_abort_a_session.yaml` | 28 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `05a40db` Make abort E2E snapshots tolerate timing variants

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変更はなく、テストデータの許容幅を広げる変更です。

**既存利用者への影響**

移行作業は不要で、既存 SDK 利用者への影響はほぼありません。

### [#1801](https://github.com/github/copilot-sdk/pull/1801) — Sunbrye/fix azure managed identity tabs

- 作者: sunbrye / 状態: MERGED
- ラベル: —
- 変更行数: +134 / -63
- マージ日時 (UTC): `2026-06-26 01:32:08`

**変更概要**

Azure Managed Identity のセットアップドキュメントが、codetabs 互換の構成と多言語サンプルに合わせて整理されました。docs style guide も合わせて更新され、今後のガイド追加時に読みやすい構成を維持しやすくしています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/docs-style.instructions.md` | 64 | 0 |
| `docs/setup/azure-managed-identity.md` | 70 | 63 |

</details>

<details><summary>コミット (5 件)</summary>

- `70f796c` Restructure azure-managed-identity for codetabs compatibility
- `b15e285` Add multi-language code examples guidance to docs style guide
- `517f4ee` Fix prose wording and nested fences in style guide examples
- `43ee271` Switch style guide examples back to code fences (4-backtick outer fence)
- `6fd1c89` Use 3-backtick fences for style guide markdown examples

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、ドキュメント構成とコード例の表現方法の改善です。

**既存利用者への影響**

利用者側の移行は不要で、Azure Managed Identity のセットアップ手順を参照する開発者にとって有益な更新です。

### [#1799](https://github.com/github/copilot-sdk/pull/1799) — Fix Java tool-processor test generation and stabilize session-id test

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +128 / -12
- マージ日時 (UTC): `2026-06-25 18:05:40`

**変更概要**

Java SDK の tool-processor 生成処理と session-id 周辺テストが修正され、ツール呼び出しの生成結果とセッション管理のテストが安定しました。特に、Java 側の生成ロジックと E2E/Unit テストの整合性が改善されています。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 12 | 2 |
| `java/src/test/java/com/github/copilot/CopilotSessionTest.java` | 21 | 2 |
| `java/src/test/java/com/github/copilot/tool/CopilotToolProcessorTest.java` | 67 | 8 |
| `test/snapshots/session/should_abort_a_session.yaml` | 28 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `0115fc7` Fix Java tool-processor test generation and stabilize session-id test
- `a228c57` Spotless
- `7da6885` Avoid leaking session.
- `ab46aa7` Add abort-session snapshot variant for interrupted tool calls

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、Java 実装の生成ロジック・テストの安定化です。

**既存利用者への影響**

利用者側での移行は不要で、既存の Java SDK 利用者にはほぼ影響ありません。

### [#1798](https://github.com/github/copilot-sdk/pull/1798) — Fix block-remove-before-merge workflow failing on merge_group events

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -0
- マージ日時 (UTC): `2026-06-25 15:39:56`

**変更概要**

merge_group イベント時に誤って失敗していた block-remove-before-merge ワークフローの条件分岐が修正されました。これで merge queue での運用に関する GitHub Actions がより安定します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/block-remove-before-merge.yml` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `8da5f1a` Initial plan
- `e7f561c` Fix block-remove-before-merge workflow to skip on merge_group events

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変更はなく、GitHub Actions の条件判定修正です。

**既存利用者への影響**

利用者側への影響はなく、開発者体験の向上に限定されます。

### [#1796](https://github.com/github/copilot-sdk/pull/1796) — Add sessionId to BYOK provider-token callback; rename to bearerTokenProvider

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +302 / -221
- マージ日時 (UTC): `2026-06-25 10:09:26`

**変更概要**

BYOK provider-token コールバックに sessionId が追加され、コールバック名も bearerTokenProvider へ整理されました。これにより、セッション単位のトークン取得ロジックをより明示的に実装できるようになっています。

<details><summary>変更ファイル (30 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/BearerTokenProvider.cs` | 8 | 1 |
| `dotnet/src/Client.cs` | 4 | 7 |
| `dotnet/src/Session.cs` | 3 | 3 |
| `dotnet/src/Types.cs` | 14 | 12 |
| `dotnet/test/E2E/ByokBearerTokenProviderE2ETests.cs` | 13 | 9 |
| `go/client.go` | 7 | 7 |
| `go/internal/e2e/byok_bearer_token_provider_e2e_test.go` | 28 | 23 |
| `go/session.go` | 6 | 6 |
| `go/types.go` | 26 | 12 |
| `java/src/main/java/com/github/copilot/CopilotSession.java` | 4 | 4 |
| `java/src/main/java/com/github/copilot/RpcHandlerDispatcher.java` | 4 | 3 |
| `java/src/main/java/com/github/copilot/SessionRequestBuilder.java` | 9 | 9 |
| `java/src/main/java/com/github/copilot/rpc/BearerTokenProvider.java` | 3 | 3 |
| `java/src/main/java/com/github/copilot/rpc/NamedProviderConfig.java` | 7 | 7 |
| `java/src/main/java/com/github/copilot/rpc/ProviderConfig.java` | 7 | 7 |
| _... 他 15 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `c9626e6` Add sessionId to BYOK provider-token callback args across all SDKs
- `bf30ae8` Rename getBearerToken callback to bearerTokenProvider; fix precedence…
- `903db34` Make ProviderTokenArgs immutable in Node and Java
- `e1ea80c` Fix Java spotless line-wrapping and Python import order

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の一部が変わっており、provider のコールバック実装と呼び出し側のシグネチャを更新する必要があります。特に、getBearerToken ベースの実装から bearerTokenProvider への切り替えが必要です。

**既存利用者への影響**

既存の BYOK provider 実装を持つ利用者は、コールバック名と引数の扱いを確認して移行する必要があります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1795 | [changelog] Add changelog for java/v1.0.4 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1795> |
| #1793 | Update @github/copilot to 1.0.65 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1793> |
| #1792 | Java: Implement `@CopilotTool` ergonomics | edburns | <https://github.com/github/copilot-sdk/pull/1792> |
| #1748 | Add getBearerToken callback for BYOK providers (Managed Identity) | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1748> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1821 | fix(python): forward binary tool results in HandlePendingToolCall RPC | open | syf2211 | <https://github.com/github/copilot-sdk/pull/1821> |
| PR | #1820 | Forward internalCorrelationIds through session create/resume | open | belaltaher8 | <https://github.com/github/copilot-sdk/pull/1820> |
| PR | #1806 | rust: default to rustls TLS backend, add native-tls opt-in | open | colbylwilliams | <https://github.com/github/copilot-sdk/pull/1806> |
| PR | #1800 | Change model from gpt-4.1 to auto in getting-started examples | open | sunbrye | <https://github.com/github/copilot-sdk/pull/1800> |
| PR | #1663 | Add Read the Docs configuration and Sphinx setup for Python SDK | closed | Copilot | <https://github.com/github/copilot-sdk/pull/1663> |
| PR | #1620 | Handle empty Go tool names as failed tool results | closed | slegarraga | <https://github.com/github/copilot-sdk/pull/1620> |
| PR | #954 | docs: add gitcgr code graph badge | closed | vitali87 | <https://github.com/github/copilot-sdk/pull/954> |
| Issue | #1817 | Create sub-issues, assignable to copilot, for implementation phases in Phase 4 | open | edburns | <https://github.com/github/copilot-sdk/issues/1817> |
| Issue | #1816 | Fill in details of phases 1 - 3 of plan | open | edburns | <https://github.com/github/copilot-sdk/issues/1816> |
| Issue | #1814 | SDK 1.0.4 default session persistence can fail with SQLite "database is locked" in one-shot hosted  sessions | open | hahahahahaiyiwen | <https://github.com/github/copilot-sdk/issues/1814> |
| Issue | #1811 | [Java] `@CopilotTool` ergonomics: lambda: Create implementation plan: ignorance reduction | closed | edburns | <https://github.com/github/copilot-sdk/issues/1811> |
| Issue | #1810 | [Java] `@CopilotTool` ergonomics: Define tool with lambda | open | edburns | <https://github.com/github/copilot-sdk/issues/1810> |
| Issue | #1809 | Java: Ergonomics: Defining tools: follow up work | open | edburns | <https://github.com/github/copilot-sdk/issues/1809> |
| Issue | #1807 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1807> |
| Issue | #1805 | Rust SDK hard-codes native-tls (OpenSSL); offer a rustls TLS backend so musl/static builds work | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1805> |
| Issue | #1804 | CopilotClient.stop() leaks the CLI server's child process tree on Windows (orphaned node/copilot.exe per session) | open | tic-top | <https://github.com/github/copilot-sdk/issues/1804> |
| Issue | #1803 | Built in shell tool does not emit terminal content with exitCode on tool.execution_complete | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/1803> |
| Issue | #1802 | Expose the sub commands/options of commands as structured items | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/1802> |
| Issue | #1797 | block-remove-before-merge workflow fails on merge_group events (latent merge-queue blocker) | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/1797> |
| Issue | #1782 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1782> |
| Issue | #1781 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1781> |
| Issue | #1765 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1765> |
| Issue | #1682 | Java: Ergonomics: Defining tools | closed | edburns | <https://github.com/github/copilot-sdk/issues/1682> |
| Issue | #1540 | <go-sdk> Return failed tool result for empty tool name to avoid dangling tool_calls | closed | lonegunmanb | <https://github.com/github/copilot-sdk/issues/1540> |
