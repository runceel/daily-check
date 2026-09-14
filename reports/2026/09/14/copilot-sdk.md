# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 31 |
| オープン中の新規 PR     | 21 |
| クローズ (未マージ) PR  | 19 |
| 新規 Issue              | 29 |
| クローズ Issue          | 47 |
| 主要コントリビューター  | roji, 1fanwang, rinceyuan, dependabot[bot], stephentoub, xianjianlf2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#1168](https://github.com/github/copilot-sdk/issues/1168) — Subagent sessions don't inherit parent SessionFs state, breaking spill-then-delegate flows （Issue / closed / loganrosen）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **⚠ セキュリティ** [#2601](https://github.com/github/copilot-sdk/pull/2601) — build(deps-dev): bump hono from 4.13.1 to 4.13.7 in /test/harness （PR / merged / dependabot[bot]）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **⚠ セキュリティ** [#2587](https://github.com/github/copilot-sdk/pull/2587) — Fix vulnerable SourceLink dependency in .NET SDK （PR / merged / roji）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。
- **⚠ セキュリティ** [#2007](https://github.com/github/copilot-sdk/issues/2007) — hono dev dependency has 5 known security advisories (1 high, 4 medium) （Issue / closed / aaf091）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。

## このリポジトリの要点

対象期間は copilot-sdk の主要変更を確認し、API・依存関係・テスト基盤の更新を整理しました。
重要度付きの PR / Issue については、既存利用者が確認すべき互換性・移行ポイントを優先して記載しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2601](https://github.com/github/copilot-sdk/pull/2601) — build(deps-dev): bump hono from 4.13.1 to 4.13.7 in /test/harness

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `javascript`
- 変更行数: +2 / -1
- マージ日時 (UTC): `2026-09-10 14:26:41`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `test/harness/package-lock.json` | 2 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `05676fa` build(deps-dev): bump hono from 4.13.1 to 4.13.7 in /test/harness

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#2587](https://github.com/github/copilot-sdk/pull/2587) — Fix vulnerable SourceLink dependency in .NET SDK

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-09-09 14:55:35`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `4ca4e80` Fix vulnerable SourceLink dependency in .NET SDK

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#2635](https://github.com/github/copilot-sdk/pull/2635) — .NET: Fix abort recovery test event subscription race

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +123 / -13
- マージ日時 (UTC): `2026-09-12 07:01:46`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/SessionE2ETests.cs` | 9 | 5 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 114 | 8 |

</details>

<details><summary>コミット (1 件)</summary>

- `daedce3` Fix abort recovery test event subscription race

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#2634](https://github.com/github/copilot-sdk/pull/2634) — Update Copilot CLI to 1.0.84-5

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +5200 / -483
- マージ日時 (UTC): `2026-09-12 03:55:04`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (65 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 530 | 93 |
| `dotnet/src/Generated/SessionEvents.cs` | 412 | 67 |
| `go/rpc/zrpc.go` | 409 | 35 |
| `go/rpc/zrpc_encoding.go` | 381 | 6 |
| `go/rpc/zsession_encoding.go` | 29 | 3 |
| `go/rpc/zsession_events.go` | 137 | 6 |
| `go/zsession_events.go` | 12 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionCarriedForwardEvent.java` | 47 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionCompletedEvent.java` | 3 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionDecisionSource.java` | 41 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionMessageAuthorizationDegradedEvent.java` | 41 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionMessageAuthorizationEvent.java` | 58 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionMessageAuthorizationPolarity.java` | 35 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/PermissionMessageAuthorizationReadEvent.java` | 41 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionEvent.java` | 8 | 0 |
| _... 他 50 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `cf7647f` Update Copilot CLI to 1.0.84-5
- `c2c63cf` Fix generated API update validation
- `3b01ec8` Regenerate Go match variables
- `28ceeab` Update E2E expectations for Copilot 1.0.84
- `b17ae8e` Fix vision model switch snapshot
- `ba4ceca` Fix repeated vision image snapshot
- `b6dd0ce` Fix second vision image snapshot expectation
- `cf4ec96` Restore unrelated vision snapshot details

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#2631](https://github.com/github/copilot-sdk/pull/2631) — Fix Rust codegen for CLI 1.0.84 schemas

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +212 / -74
- マージ日時 (UTC): `2026-09-12 01:04:52`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/required-checks.yml` | 9 | 2 |
| `dotnet/test/E2E/SessionE2ETests.cs` | 5 | 2 |
| `dotnet/test/Harness/E2ETestContext.cs` | 45 | 4 |
| `go/internal/e2e/testharness/context.go` | 12 | 3 |
| `go/internal/e2e/testharness/inprocess_cleanup_disabled.go` | 7 | 0 |
| `go/internal/e2e/testharness/inprocess_cleanup_enabled.go` | 18 | 0 |
| `go/internal/ffihost/ffihost.go` | 51 | 0 |
| `go/internal/ffihost/ffihost_test.go` | 5 | 7 |
| 
odejs/test/rust-codegen.test.ts` | 43 | 0 |
| `rust/src/generated/api_types.rs` | 1 | 1 |
| `scripts/codegen/rust.ts` | 15 | 3 |
| `test/snapshots/session/should_accept_blob_attachments.yaml` | 1 | 52 |

</details>

<details><summary>コミット (4 件)</summary>

- `a61779d` Fix Rust codegen for shared schema values
- `eda0083` Merge remote-tracking branch 'origin/main' into stephentoub-investiga…
- `d794408` Stabilize merge queue SDK checks
- `69d02ee` Isolate .NET E2E session cleanup

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#2622](https://github.com/github/copilot-sdk/pull/2622) — Fix FFI close responsiveness and callback reclamation

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +224 / -45
- マージ日時 (UTC): `2026-09-11 16:04:30`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/src/main/java/com/github/copilot/ffi/JnaNativeBinding.java` | 12 | 9 |
| `java/sdk/src/test/java/com/github/copilot/ffi/JnaNativeBindingTest.java` | 44 | 8 |
| 
odejs/src/client.ts` | 4 | 3 |
| 
odejs/src/ffiRuntimeHost.ts` | 20 | 7 |
| 
odejs/test/client.test.ts` | 26 | 0 |
| 
odejs/test/e2e/inprocess_ffi.e2e.test.ts` | 31 | 0 |
| 
odejs/test/ffiRuntimeHost.test.ts` | 86 | 17 |
| `rust/src/ffi.rs` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `b150c85` Fix FFI close responsiveness and callback reclamation
- `794dc8f` Await the initial asynchronous FFI cleanup attempt

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2610 | Fix in-process callback reclamation after connection close | stephentoub | <https://github.com/github/copilot-sdk/pull/2610> |
| #2566 | Link docs index section headings to their section index pages | rinceyuan | <https://github.com/github/copilot-sdk/pull/2566> |
| #2555 | Fix stale codegen references in copilot-instructions.md | rinceyuan | <https://github.com/github/copilot-sdk/pull/2555> |
| #2553 | [java] Fix broken LICENSE link in java/README.md | rinceyuan | <https://github.com/github/copilot-sdk/pull/2553> |
| #2613 | Pin GitHub Actions to commit SHAs | github-security-bot | <https://github.com/github/copilot-sdk/pull/2613> |
| #2609 | Update Copilot CLI to 1.0.84-4 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2609> |
| #2258 | Forward OAuth client metadata URL in all SDK sessions | SamMorrowDrums | <https://github.com/github/copilot-sdk/pull/2258> |
| #2570 | fix(python,nodejs): serialize concurrent client startup | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2570> |
| #2438 | Add managedSettings.clearCache RPC bindings (force-clear managed settings cache) | joshspicer | <https://github.com/github/copilot-sdk/pull/2438> |
| #2569 | Add max_output_tokens to ModelCapabilities limits | 1fanwang | <https://github.com/github/copilot-sdk/pull/2569> |
| #2581 | Document per-session plugin directories | 1fanwang | <https://github.com/github/copilot-sdk/pull/2581> |
| #2578 | Document capi.enableWebSocketResponses as a resume option | 1fanwang | <https://github.com/github/copilot-sdk/pull/2578> |
| #2339 | Add Azure Artifacts npm authentication refresh | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2339> |
| #2567 | fix(rust): isolate GitHub token callbacks from request routing | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2567> |
| #2583 | build(deps): bump the java-maven-deps group across 1 directory with 4 updates | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2583> |
| #2580 | Validate the examples that follow an unvalidated language fence | 1fanwang | <https://github.com/github/copilot-sdk/pull/2580> |
| #2557 | Include Copilot CLI runtime assets in PackAsTool packages | kondv | <https://github.com/github/copilot-sdk/pull/2557> |
| #2596 | Add seven-day Dependabot cooldowns for npm, PyPI, and NuGet | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2596> |
| #2595 | docs: add in-process runtime guide | patniko | <https://github.com/github/copilot-sdk/pull/2595> |
| #2602 | build(deps): bump js-yaml from 4.3.1 to 4.3.2 in /scripts/codegen in the npm_and_yarn group across 1 directory | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2602> |
| #2599 | Stabilize Rust and .NET E2E isolation | roji | <https://github.com/github/copilot-sdk/pull/2599> |
| #2586 | Align Java formatting with shared just recipes | roji | <https://github.com/github/copilot-sdk/pull/2586> |
| #2597 | Stabilize Python streaming resume E2E test | roji | <https://github.com/github/copilot-sdk/pull/2597> |
| #2598 | Stabilize Java OAuth lifecycle E2E test | roji | <https://github.com/github/copilot-sdk/pull/2598> |
| #2573 | Add typed user, system, and agent message sources across SDKs | aurokin | <https://github.com/github/copilot-sdk/pull/2573> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2646 | docs: use the standard .NET tab label in custom-agents | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2646> |
| PR | #2642 | Fix SDK test completion races and timeout cleanup | open | stephentoub | <https://github.com/github/copilot-sdk/pull/2642> |
| PR | #2630 | [wip] Add canvas launch authorization and session retention | open | ulugbekna | <https://github.com/github/copilot-sdk/pull/2630> |
| PR | #2637 | [WIP] Node SDK canvas launch admission and retention | open | ulugbekna | <https://github.com/github/copilot-sdk/pull/2637> |
| PR | #2638 | Fix system-message response test subscription races | open | devm33 | <https://github.com/github/copilot-sdk/pull/2638> |
| PR | #2623 | Fix replay race in Python persisted-session RPC test | open | roji | <https://github.com/github/copilot-sdk/pull/2623> |
| PR | #2636 | Fix appended system-message test event subscription race | open | devm33 | <https://github.com/github/copilot-sdk/pull/2636> |
| PR | #2629 | Fix replay model image capacity | open | devm33 | <https://github.com/github/copilot-sdk/pull/2629> |
| PR | #2615 | Bump the "all" group with 7 updates across multiple ecosystems | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2615> |
| PR | #2614 | Publish .NET SDK packages to the internal feed | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2614> |
| PR | #2625 | Rust: expose prompt-event observer configuration | open | examon | <https://github.com/github/copilot-sdk/pull/2625> |
| PR | #2617 | Rust: preserve resume bootstrap events until subscription handoff | open | aurokin | <https://github.com/github/copilot-sdk/pull/2617> |
| PR | #2603 | [Java] Replace maven-release-plugin with CI-friendly versions | open | SandraAhlgrimm | <https://github.com/github/copilot-sdk/pull/2603> |
| PR | #2621 | Add experimental AHP endpoints with SDK-owned transports for Node and .NET | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2621> |
| PR | #2590 | feat: Add typed structured outputs for Node and .NET | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2590> |
| PR | #2616 | Expose local cross-session discovery and delivery | open | dfrysinger | <https://github.com/github/copilot-sdk/pull/2616> |
| PR | #2618 | [Early POC] Expose the extension launch provider in the Node SDK | open | jruales | <https://github.com/github/copilot-sdk/pull/2618> |
| PR | #2600 | Expose versioned session activity in the Rust SDK | open | ellismg | <https://github.com/github/copilot-sdk/pull/2600> |
| PR | #2593 | docs: clarify Azure project URL support | open | roji | <https://github.com/github/copilot-sdk/pull/2593> |
| PR | #2585 | sdk: make client startup single-flight | open | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2585> |
| PR | #2574 | Add private app extension APIs | open | merlynomsft | <https://github.com/github/copilot-sdk/pull/2574> |
| PR | #2643 | Replace Koffi with ffi-rs in the Node SDK | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/2643> |
| PR | #2639 | Fix Node SDK strict TypeScript consumer compatibility | closed | patschmittdev | <https://github.com/github/copilot-sdk/pull/2639> |
| PR | #2632 | [Chore] Handle Rust Unknown Enum Collision | closed | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2632> |
| PR | #2633 | Update Copilot CLI to 1.0.84-5 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2633> |
| PR | #2549 | Update Copilot CLI to 1.0.84-1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2549> |
| PR | #2554 | Fix update-protocol-version.ts templates that break the Go and .NET builds | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2554> |
| PR | #2556 | Make referenced optional Python RPC requests omittable | closed | kondv | <https://github.com/github/copilot-sdk/pull/2556> |
| PR | #2572 | Update Copilot CLI to 1.0.84-2 | closed | andyfeller | <https://github.com/github/copilot-sdk/pull/2572> |
| PR | #2592 | Update Copilot CLI to 1.0.84-3 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2592> |
| PR | #2568 | ci: check protocol version drift across all SDKs | closed | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2568> |
| PR | #2608 | Bump the "all" group with 7 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2608> |
| PR | #2439 | Add reverse RPC and hook callback timing traces | closed | aurokin | <https://github.com/github/copilot-sdk/pull/2439> |
| PR | #2457 | Notify hooks after response delivery | closed | gimenete | <https://github.com/github/copilot-sdk/pull/2457> |
| PR | #2584 | Bump the "all" group with 7 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2584> |
| PR | #2478 | [go] Add test CLI setup helper | closed | qmuntal | <https://github.com/github/copilot-sdk/pull/2478> |
| PR | #2561 | perf(sdk): make CopilotClient.start() single-flight | closed | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2561> |
| PR | #2564 | feat: support optional message provenance across all SDKs | closed | aurokin | <https://github.com/github/copilot-sdk/pull/2564> |
| PR | #2550 | Expose typed message sources across all SDKs | closed | jmoseley | <https://github.com/github/copilot-sdk/pull/2550> |
| PR | #2497 | Add taskModelSource to SubagentStartedData | closed | bhavyaus | <https://github.com/github/copilot-sdk/pull/2497> |
| Issue | #2645 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2645> |
| Issue | #2644 | Local | open | dipsetdon | <https://github.com/github/copilot-sdk/issues/2644> |
| Issue | #2641 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2641> |
| Issue | #2640 | Expose identity-bound awaited host admission for native Remote input | open | eightbitreaper | <https://github.com/github/copilot-sdk/issues/2640> |
| Issue | #2627 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2627> |
| Issue | #2628 | Replay catalog omits the image capacity required by saved histories | open | devm33 | <https://github.com/github/copilot-sdk/issues/2628> |
| Issue | #2626 | No way to scope an externally-registered tool away from sub-agents | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/2626> |
| Issue | #2612 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2612> |
| Issue | #2624 | Rust: `create_session` deadlocks forever when `ClientOptions::session_fs` is set — the session's request consumer starts after the `session.create` RPC | open | EvanDodds | <https://github.com/github/copilot-sdk/issues/2624> |
| Issue | #2620 | [aw] SDK Consistency Review Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2620> |
| Issue | #2619 | account/getQuota is served from a process-lifetime cache; reset_date is the fetch timestamp | open | aweussom | <https://github.com/github/copilot-sdk/issues/2619> |
| Issue | #2611 | Expose trusted per-tool-call agent definition identity for extensions | closed | chiedo | <https://github.com/github/copilot-sdk/issues/2611> |
| Issue | #2589 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2589> |
| Issue | #2607 | Password | open | 7ijv | <https://github.com/github/copilot-sdk/issues/2607> |
| Issue | #2606 | password | open | 7ijv | <https://github.com/github/copilot-sdk/issues/2606> |
| Issue | #2605 | Fahdd923@gmail.com | open | 7ijv | <https://github.com/github/copilot-sdk/issues/2605> |
| Issue | #2604 | Improve sandbox experience by exposing audit logs for MXC sandbox events | open | hallatore | <https://github.com/github/copilot-sdk/issues/2604> |
| Issue | #2579 | [Java] Cease using `maven-release-plugin` due to its opinionated mutations of git history | open | edburns | <https://github.com/github/copilot-sdk/issues/2579> |
| Issue | #2594 | Powershell scripts fail with "AuthorizationManager check failed" on Windows using MXC sandbox | open | hallatore | <https://github.com/github/copilot-sdk/issues/2594> |
| Issue | #2577 | [Java] `darwin-x64`, `linuxmusl-x64`, or `linuxmusl-arm64`: Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | open | edburns | <https://github.com/github/copilot-sdk/issues/2577> |
| Issue | #2591 | [aw] Java Codegen Agentic Fix reported incomplete result | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2591> |
| Issue | #2588 | Support full project URLs in ProviderConfig when type is azure | open | ankitbko | <https://github.com/github/copilot-sdk/issues/2588> |
| Issue | #2582 | Provide an opt-in managed-runtime launcher hook for host-controlled process ownership | open | simonthoresen | <https://github.com/github/copilot-sdk/issues/2582> |
| Issue | #2563 | Expose optional message source provenance across SDK languages | open | aurokin | <https://github.com/github/copilot-sdk/issues/2563> |
| Issue | #2576 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2576> |
| Issue | #2575 | [aw] SDK Consistency Review Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2575> |
| Issue | #2571 | Gemini 3.8 Flash is missing from listModels() and silently falls back to Claude Sonnet 5 | open | SIkebe | <https://github.com/github/copilot-sdk/issues/2571> |
| Issue | #2565 | Host-managed next-prompt suggestions for CLI extensions | open | anujb-msft | <https://github.com/github/copilot-sdk/issues/2565> |
| Issue | #2562 | Clarify model.telemetry event schema and semantics with CLI 1.0.83-5 / Go SDK v1.0.13 | open | matlus | <https://github.com/github/copilot-sdk/issues/2562> |
| Issue | #2560 | CopilotClient.start() is not single-flight — concurrent auto-start spawns duplicate CLI processes | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2560> |
| Issue | #1165 | Codegen Check workflow doesn't detect SDK protocol version drift | closed | tclem | <https://github.com/github/copilot-sdk/issues/1165> |
| Issue | #2424 | Isolate Rust GitHub token callbacks from the global request router | closed | dmytrostruk | <https://github.com/github/copilot-sdk/issues/2424> |
| Issue | #2067 | PackAsTool: Copilot CLI binary not included in NuGet tool package (cross-platform) | closed | Marcus-Kanon | <https://github.com/github/copilot-sdk/issues/2067> |
| Issue | #1946 | What 's the new usage of get_quota? | closed | zeerd | <https://github.com/github/copilot-sdk/issues/1946> |
| Issue | #534 | Clarify semantics of `assistant.usage.cost` in TypeScript SDK (estimated vs billable) | closed | schplitt | <https://github.com/github/copilot-sdk/issues/534> |
| Issue | #590 | Long-running prompt suddenly hangs forever with no error or exception | closed | fantasyearl | <https://github.com/github/copilot-sdk/issues/590> |
| Issue | #591 | pip install github-copilot-sdk>=0.1.23 fails on Alpine Linux (musl) — no compatible wheel or sdist published | closed | Tynamix | <https://github.com/github/copilot-sdk/issues/591> |
| Issue | #629 | [BUG] - Behavior difference between copilot SDK and CLI when using agent skills | closed | zhiyuanliang-ms | <https://github.com/github/copilot-sdk/issues/629> |
| Issue | #698 | Minimal bug: session.delete doesn't quote cleanup | closed | WindowsNT | <https://github.com/github/copilot-sdk/issues/698> |
| Issue | #801 | Plan session events | closed | IeuanWalker | <https://github.com/github/copilot-sdk/issues/801> |
| Issue | #964 | [Feature Request] Disable all MCP servers except what is passed in | closed | Davsterl | <https://github.com/github/copilot-sdk/issues/964> |
| Issue | #1003 | how to make permission request persist in external DB and not ephermal | closed | ajasingh | <https://github.com/github/copilot-sdk/issues/1003> |
| Issue | #1019 | [Feature request] Per-agent tool visibility for custom sub-agents | closed | vatsa-msft | <https://github.com/github/copilot-sdk/issues/1019> |
| Issue | #1065 | Python README missing system message customization documentation | closed | Halcyonhal9 | <https://github.com/github/copilot-sdk/issues/1065> |
| Issue | #1080 | Support discovering .github/agents/*.agent.md via enableConfigDiscovery | closed | tbrand | <https://github.com/github/copilot-sdk/issues/1080> |
| Issue | #1091 | Tool output truncation references tools that may be disabled | closed | nosammai | <https://github.com/github/copilot-sdk/issues/1091> |
| Issue | #1135 | Add ReasoningSummary property to SessionConfig for BYOK reasoning text streaming | closed | vavjeeva | <https://github.com/github/copilot-sdk/issues/1135> |
| Issue | #1145 | Feature: enforce file-tool access scope via working_directory (or trusted_directories) | closed | ShiningCheck | <https://github.com/github/copilot-sdk/issues/1145> |
| Issue | #1168 | Subagent sessions don't inherit parent SessionFs state, breaking spill-then-delegate flows | closed | loganrosen | <https://github.com/github/copilot-sdk/issues/1168> |
| Issue | #1172 | Option to disable automatic Copilot co-author trailer in git commits | closed | schplitt | <https://github.com/github/copilot-sdk/issues/1172> |
| Issue | #1188 | Please add token cost properties to Models/Billing | closed | albahari | <https://github.com/github/copilot-sdk/issues/1188> |
| Issue | #1200 | `mcp_server_name` and `mcp_tool_name` are not populated in Python SDK | closed | idryzhov | <https://github.com/github/copilot-sdk/issues/1200> |
| Issue | #1229 | Events not triggered: reasoning content from vLLM BYOK not surfaced in Copilot SDK | closed | lawrence6140791 | <https://github.com/github/copilot-sdk/issues/1229> |
| Issue | #1265 | Permission deny message | closed | IeuanWalker | <https://github.com/github/copilot-sdk/issues/1265> |
| Issue | #1381 | Client::stop() SIGKILLs CLI without grace period — orphans MCP child processes downstream | closed | austenstone | <https://github.com/github/copilot-sdk/issues/1381> |
| Issue | #1493 | NodeJS - v1.0.0-beta.9 - createSession with cloud options returns error "Cannot specify sessionId when creating a remote session in the cloud." | closed | BenMorganNt | <https://github.com/github/copilot-sdk/issues/1493> |
| Issue | #1526 | [Question] AssistantUsageCopilotUsage changed to internal | closed | mhartvig | <https://github.com/github/copilot-sdk/issues/1526> |
| Issue | #1562 | GitHub Copilot Memory facts are not injected into the system message on `session.create` (only on `session.resume`) | closed | kashish2508 | <https://github.com/github/copilot-sdk/issues/1562> |
| Issue | #1571 | Expose prompt caching stats in metrics telemetry | closed | LeoX91 | <https://github.com/github/copilot-sdk/issues/1571> |
| Issue | #1595 | BYOK provider with openai wireApi "responses" — maxOutputTokens not applied | closed | lxwl-fht | <https://github.com/github/copilot-sdk/issues/1595> |
| Issue | #1629 | Flaky E2E test in rpc_session_state.e2e.test.ts (model switchto) | closed | Morabbin | <https://github.com/github/copilot-sdk/issues/1629> |
| Issue | #1751 | Python SDK version 1.0.3 only has wheels for macos | closed | TaoChenOSU | <https://github.com/github/copilot-sdk/issues/1751> |
| Issue | #1802 | Expose the sub commands/options of commands as structured items | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/1802> |
| Issue | #1849 | getBundledCliPath() resolves @github/index.js (one dir too high) on Node with import.meta.resolve | closed | MichaelEns | <https://github.com/github/copilot-sdk/issues/1849> |
| Issue | #1922 | Chat Completions: image tool-result user messages interleaved between tool responses → 400 invalid_request_error (messages.[N].role) | closed | kevnwang | <https://github.com/github/copilot-sdk/issues/1922> |
| Issue | #1926 | Expose commands.list on server layer, as opposed to session | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/1926> |
| Issue | #1959 | [.NET 1.0.6][FFI][Windows] In-process host loads global user-profile package and can hit ABI mismatch | closed | mit2nil | <https://github.com/github/copilot-sdk/issues/1959> |
| Issue | #2007 | hono dev dependency has 5 known security advisories (1 high, 4 medium) | closed | aaf091 | <https://github.com/github/copilot-sdk/issues/2007> |
| Issue | #2078 | 1.0.8 breaks typing on events | closed | Stono | <https://github.com/github/copilot-sdk/issues/2078> |
| Issue | #2326 | Add SDK support for registering built-in plugin directories | closed | lutzroeder | <https://github.com/github/copilot-sdk/issues/2326> |
| Issue | #2350 | Tools deny permission in format of --deny-tool doesn't work | closed | aamsel-intel | <https://github.com/github/copilot-sdk/issues/2350> |
| Issue | #2368 | Custom tool dispatch: `external_tool.requested` is dropped before reaching the SDK, hanging the agent indefinitely | closed | DanaMartens | <https://github.com/github/copilot-sdk/issues/2368> |
| Issue | #2450 | `streaming=False` still emits `assistant.message_delta` through CLI 1.0.82-0 | closed | BrandonHaynes | <https://github.com/github/copilot-sdk/issues/2450> |
| Issue | #2477 | Host-provided plugin directories trigger read permission prompts for plugin customizations | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2477> |
| Issue | #2485 | chat sessions from previous build are missing field agentDisplayName | closed | amunger | <https://github.com/github/copilot-sdk/issues/2485> |

