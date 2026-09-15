# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-14 03:34:25 〜 2026-09-15 00:08:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 4 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | SteveSandersonMS, github-actions[bot], stephentoub, MRayermannMSFT |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Copilot SDK は CLI 1.0.84-6 への追随、C# codegen の union 修正、Factory の pause checkpoint、テスト完了競合の解消を進めました。複数言語の生成コードとランタイム検証が同時に更新されているため、SDK 利用者は生成物とテスト互換性を確認します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2658](https://github.com/github/copilot-sdk/pull/2658) — Update Copilot CLI to 1.0.84-6

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +4480 / -1695
- マージ日時 (UTC): `2026-09-14 20:49:04`

**変更概要**

「Update Copilot CLI to 1.0.84-6」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (63 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 741 | 63 |
| `dotnet/src/Generated/SessionEvents.cs` | 316 | 130 |
| `dotnet/test/E2E/McpOAuthE2ETests.cs` | 1 | 1 |
| `go/internal/e2e/mcp_oauth_e2e_test.go` | 1 | 1 |
| `go/rpc/zrpc.go` | 334 | 104 |
| `go/rpc/zrpc_encoding.go` | 116 | 0 |
| `go/rpc/zsession_encoding.go` | 18 | 0 |
| `go/rpc/zsession_events.go` | 105 | 19 |
| `go/zsession_events.go` | 8 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantMessageEvent.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/HookEndEvent.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/HookStartEvent.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/McpHeadersRefreshCompletedOutcome.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/McpServerSource.java` | 4 | 2 |
| `java/sdk/src/generated/java/com/github/copilot/generated/McpServersLoadedServer.java` | 3 | 1 |
| _... 他 48 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `30d5483` Update Copilot CLI to 1.0.84-6
- `4f191bc` Fix CLI update test compatibility
- `c3355b5` Escape Rustdoc schema placeholders

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Update Copilot CLI to 1.0.84-6」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#2656](https://github.com/github/copilot-sdk/pull/2656) — Fix C# codegen for runtime schema unions

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +326 / -14
- マージ日時 (UTC): `2026-09-14 19:58:09`

**変更概要**

「Update Copilot CLI to 1.0.84-6」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/test/csharp-codegen.test.ts` | 255 | 0 |
| `scripts/codegen/csharp.ts` | 71 | 14 |

</details>

<details><summary>コミット (2 件)</summary>

- `da99a2c` Fix C# codegen for runtime schema unions
- `c070006` Preserve polymorphic API shape for single-variant unions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Update Copilot CLI to 1.0.84-6」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#2537](https://github.com/github/copilot-sdk/pull/2537) — [Core] Add Factory Pause Checkpoints

- 作者: MRayermannMSFT / 状態: MERGED
- ラベル: —
- 変更行数: +576 / -53
- マージ日時 (UTC): `2026-09-14 17:14:02`

**変更概要**

「Update Copilot CLI to 1.0.84-6」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/docs/factories.md` | 36 | 19 |
| `nodejs/src/factory.ts` | 48 | 19 |
| `nodejs/src/index.ts` | 1 | 0 |
| `nodejs/src/session.ts` | 66 | 10 |
| `nodejs/test/e2e/factory.e2e.test.ts` | 76 | 2 |
| `nodejs/test/e2e/fixtures/factory-extension.mjs` | 47 | 1 |
| `nodejs/test/factory.test.ts` | 302 | 2 |

</details>

<details><summary>コミット (7 件)</summary>

- `76a7fa8` [Core] Add Factory Pause Checkpoints
- `bed241e` [Core] Expose SDK Pause Checkpoints
- `295bd38` [Core] Clean Up Factory Pause Checkpoints
- `55ecf8e` Address factory pause review feedback
- `0d9c3da` Update factory guard E2E expectations
- `3d8e5cf` Add factory pause E2E coverage
- `a569661` Avoid race in factory E2E counter

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Update Copilot CLI to 1.0.84-6」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#2642](https://github.com/github/copilot-sdk/pull/2642) — Fix SDK test completion races and timeout cleanup

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +2351 / -962
- マージ日時 (UTC): `2026-09-14 14:13:01`

**変更概要**

「Update Copilot CLI to 1.0.84-6」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (47 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/HooksE2ETests.cs` | 4 | 12 |
| `dotnet/test/E2E/PermissionE2ETests.cs` | 9 | 12 |
| `dotnet/test/E2E/SessionE2ETests.cs` | 15 | 12 |
| `dotnet/test/E2E/SystemMessageSectionsE2ETests.cs` | 2 | 4 |
| `dotnet/test/E2E/SystemMessageTransformE2ETests.cs` | 3 | 9 |
| `dotnet/test/E2E/TelemetryExportE2ETests.cs` | 1 | 2 |
| `dotnet/test/E2E/ToolResultsE2ETests.cs` | 3 | 6 |
| `dotnet/test/E2E/ToolsE2ETests.cs` | 12 | 24 |
| `dotnet/test/Harness/TestHelper.cs` | 6 | 114 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 122 | 17 |
| `go/internal/e2e/mcp_and_agents_e2e_test.go` | 6 | 2 |
| `go/internal/e2e/permissions_e2e_test.go` | 10 | 4 |
| `go/internal/e2e/resume_mcp_oauth_e2e_test.go` | 3 | 1 |
| `go/internal/e2e/session_e2e_test.go` | 33 | 51 |
| `go/internal/e2e/telemetry_e2e_test.go` | 3 | 1 |
| _... 他 32 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `fa8fa0d` Fix approve-all permission test event subscription race
- `c39bab1` Eliminate remaining .NET test completion subscription races
- `0de0fc6` Make Node test completion subscriptions race-free
- `231f587` Pre-arm Go test completion and recovery subscriptions
- `dbcb8bb` Close Python test completion and scheduled-listener races
- `df3457b` Wait for controlled Node send RPC before completing it
- `9751b28` Preserve Python timeout diagnostics before async cleanup
- `d676231` Add opt-in fail-first Python timeout reproduction dispatch
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Update Copilot CLI to 1.0.84-6」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

### [#2653](https://github.com/github/copilot-sdk/pull/2653) — Disable failing Java docs deployment

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -1
- マージ日時 (UTC): `2026-09-14 13:58:29`

**変更概要**

「Update Copilot CLI to 1.0.84-6」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 3 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `96d3bd9` Disable failing Java docs deployment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Update Copilot CLI to 1.0.84-6」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2659 | Rust: Isolate hostless runtime cache | open | ellismg | <https://github.com/github/copilot-sdk/pull/2659> |
| PR | #2657 | Add Python 3.15 support | open | brettcannon | <https://github.com/github/copilot-sdk/pull/2657> |
| PR | #2649 | Fix the .NET manual tool resume sample build | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2649> |
| PR | #2650 | Fix an invalid template literal in the Node file-watcher example | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2650> |
| PR | #2648 | Fix the Go samples module build | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2648> |
| PR | #2647 | Correct how SdkProtocolVersion.java is described | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2647> |
| PR | #2397 | Fix .NET in-process callback lifetime | closed | minyitang | <https://github.com/github/copilot-sdk/pull/2397> |
| Issue | #2655 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2655> |
| Issue | #2654 | [aw] Release Changelog Generator produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2654> |
| Issue | #2652 | CopilotClient fails with "No GitHub OAuth token or Copilot HMAC key provided" on Linux only, with a valid gitHubToken set | open | fgapito | <https://github.com/github/copilot-sdk/issues/2652> |
| Issue | #2651 | Expose session-scoped in-memory skill providers | open | adirh3 | <https://github.com/github/copilot-sdk/issues/2651> |
| Issue | #1911 | Provide an explicit SDK API for built-in shell tool startup env/scripts | closed | anthonykim1 | <https://github.com/github/copilot-sdk/issues/1911> |
