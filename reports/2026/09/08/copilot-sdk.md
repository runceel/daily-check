# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 31 |
| オープン中の新規 PR     | 20 |
| クローズ (未マージ) PR  | 11 |
| 新規 Issue              | 19 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | stephentoub, rinceyuan, github-actions[bot], devm33, roji, dependabot[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2527](https://github.com/github/copilot-sdk/issues/2527) — [v2] Publish the breaking-change inventory and migration guide （Issue / open / SteveSandersonMS）
SDK 利用者は v2 の破壊的変更一覧と移行ガイドを確認し、現行 API の固定利用や将来のアップグレード計画に反映してください。
- **⚠ セキュリティ** [#2546](https://github.com/github/copilot-sdk/issues/2546) — When hit max_output_tokens, some events are not emitted and logged （Issue / open / njdldkl666699）
`max_output_tokens` 到達時のイベント欠落を監視する利用者は、ログ・ストリーム完了判定への影響を確認し、修正まで部分応答を前提に処理してください。

## このリポジトリの要点

SDK の複数言語向け配布・ドキュメント整備が進み、v1.0.13 の変更履歴と ARM64 musl の CI カバレッジが追加されました。  
Java/Rust の導入例や hooks のリンクが整理され、公開パッケージを使う導線が明確になっています。  
一方、v2 の破壊的変更一覧と `max_output_tokens` 到達時のイベント欠落は、利用者が継続確認すべき課題です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2548](https://github.com/github/copilot-sdk/pull/2548) — Add ARM64 musl coverage across SDK transports

- 作者: roji / 状態: MERGED
- ラベル: `post-to-slack`
- 変更行数: +529 / -103
- マージ日時 (UTC): `2026-09-07 17:00:44`

**変更概要**

各 SDK transport の Alpine Linux（musl）テストに ARM64 実行を追加し、.NET、Go、Node.js、Python、Rust の互換性を CI で検証できるようにしました。  
setup action の固定や downlevel 環境の初期化も修正し、ARM64 musl での実行差異を早期検出します。  
SDK の公開 API ではなく、対応プラットフォームと CI カバレッジを広げる変更です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/actions/run-alpine-tests/action.yml` | 65 | 0 |
| `.github/workflows/dotnet-sdk-tests.yml` | 53 | 0 |
| `.github/workflows/go-sdk-tests.yml` | 75 | 17 |
| `.github/workflows/nodejs-sdk-tests.yml` | 73 | 20 |
| `.github/workflows/python-sdk-tests.yml` | 66 | 10 |
| `.github/workflows/required-checks.yml` | 5 | 5 |
| `.github/workflows/rust-sdk-tests.yml` | 50 | 0 |
| `dotnet/test/Unit/MSBuildTargetsTests.cs` | 18 | 4 |
| `dotnet/test/Unit/RuntimeWrapperTests.cs` | 14 | 1 |
| `nodejs/package-lock.json` | 109 | 45 |
| `nodejs/package.json` | 1 | 1 |

</details>

<details><summary>コミット (5 件)</summary>

- `8edffed` ci: add Alpine musl SDK coverage
- `77fc5bf` ci: run Alpine coverage on ARM64
- `7f79b52` ci: pin setup-uv action
- `24191ad` Merge remote-tracking branch 'origin/main' into roji-enable-musl-inproc
- `3cb3af4` ci: fix Alpine and downlevel test setup

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャの変更はありません。各言語のテストワークフローと Alpine/musl 実行条件、Node.js lockfile が更新され、ARM64 の検証経路が追加されました。

**既存利用者への影響**

通常の SDK 利用者に移行作業は不要です。ARM64 Linux や Alpine を対象にしている場合は、更新後の CI とネイティブ依存関係を確認してください。

### [#2521](https://github.com/github/copilot-sdk/pull/2521) — docs(java): fix the installation section structure

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +5 / -7
- マージ日時 (UTC): `2026-09-04 11:27:18`

**変更概要**

Java SDK の README でインストール節の構造を修正し、依存関係の導入手順を読みやすくしました。  
コードや配布物は変更せず、利用者が Maven/Gradle の設定例を正しく見つけられるようにするドキュメント修正です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/README.md` | 5 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `3b6ae17` docs(java): fix the installation section structure

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API やパッケージの変更はなく、`java/README.md` の見出しとインストール説明だけを整理しています。

**既存利用者への影響**

移行不要です。新規 Java 利用者は更新後の README の手順を参照してください。

### [#2520](https://github.com/github/copilot-sdk/pull/2520) — docs(rust): point dependency examples at the published 1.0 line

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +6 / -9
- マージ日時 (UTC): `2026-09-04 11:27:02`

**変更概要**

Rust SDK の依存関係例を公開済みの 1.0 系に更新し、互換性のあるメジャーバージョン要件を README に示しました。  
開発版や古い例を参照していた利用者が、公開 crate をそのまま取得できるようにするドキュメント修正です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/README.md` | 6 | 9 |

</details>

<details><summary>コミット (2 件)</summary>

- `a3c6aeb` docs(rust): point dependency examples at the published 1.0 line
- `72dda4d` docs(rust): use compatible major version requirements

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャは変更されていません。Rust README の依存関係指定を 1.0 系の公開パッケージに更新しただけです。

**既存利用者への影響**

新規利用者は更新された依存関係例を使用してください。既存コードの移行は不要ですが、開発版を直接指定している場合は公開 1.0 系への切り替えを検討してください。

### [#2519](https://github.com/github/copilot-sdk/pull/2519) — docs: fix six broken hook anchor links

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +9 / -9
- マージ日時 (UTC): `2026-09-04 11:26:07`

**変更概要**

hooks ドキュメントにある 6 件の壊れたアンカーリンクを修正し、機能説明から個別 hook の節へ正しく移動できるようにしました。  
実装や動作は変更せず、`hooks.md`、overview、session lifecycle の参照先を同期しています。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/hooks.md` | 2 | 2 |
| `docs/hooks/hooks-overview.md` | 4 | 4 |
| `docs/hooks/session-lifecycle.md` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `f2177c6` docs: fix six broken hook anchor links

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変更はありません。Markdown のアンカー参照だけを修正しています。

**既存利用者への影響**

移行不要です。古いリンクをブックマークしている場合は、更新後の見出し URL を利用してください。

### [#2518](https://github.com/github/copilot-sdk/pull/2518) — docs: link runtime prerequisites instead of restating versions

- 作者: rinceyuan / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -2
- マージ日時 (UTC): `2026-09-04 11:26:49`

**変更概要**

ランタイムのバージョンを README に重複記載する代わりに、公式の前提条件ドキュメントへリンクするようにしました。  
SDK 各言語の対応ランタイム情報を一元管理し、バージョン更新時の説明不整合を減らします。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/getting-started.md` | 1 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `2f39c16` docs: link runtime prerequisites instead of restating versions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API や実行時要件そのものは変更されておらず、Getting Started の参照方法だけが整理されています。

**既存利用者への影響**

移行不要です。新しい環境を構築する際はリンク先のランタイム前提条件を確認してください。

### [#2545](https://github.com/github/copilot-sdk/pull/2545) — [changelog] Add changelog for v1.0.13

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: `automation` `changelog`
- 変更行数: +40 / -0
- マージ日時 (UTC): `2026-09-06 14:01:28`

**変更概要**

Copilot SDK v1.0.13 の変更内容を `CHANGELOG.md` に追加しました。  
リリース利用者が各言語 SDK の更新内容と既知の変更を確認できるよう、公開履歴を同期する自動生成 PR です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CHANGELOG.md` | 40 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `a306941` Add changelog for v1.0.13

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 実装の変更はなく、v1.0.13 のリリースノート 40 行を `CHANGELOG.md` に追加しています。

**既存利用者への影響**

移行要否は CHANGELOG の v1.0.13 の内容に依存します。更新前に対象言語 SDK の変更点を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2539 | Harden cross-suite E2E process cleanup | stephentoub | <https://github.com/github/copilot-sdk/pull/2539> |
| #2542 | Add apply_patch override E2E coverage | stephentoub | <https://github.com/github/copilot-sdk/pull/2542> |
| #2543 | Fix stale Java release preparation | devm33 | <https://github.com/github/copilot-sdk/pull/2543> |
| #2535 | Restore Rust dual-artifact CLI bundling | dmytrostruk | <https://github.com/github/copilot-sdk/pull/2535> |
| #2534 | Update Copilot CLI to 1.0.83 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2534> |
| #2532 | Java: Generate typed catalogue candidates | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2532> |
| #2505 | Use GitHub Releases for SDK runtime artifacts | roji | <https://github.com/github/copilot-sdk/pull/2505> |
| #2509 | Cancel completed host tool invocations across SDKs | stephentoub | <https://github.com/github/copilot-sdk/pull/2509> |
| #2372 | Expose sandbox bypass across SDKs | ellismg | <https://github.com/github/copilot-sdk/pull/2372> |
| #2307 | Use session.detach for SDK session cleanup | jmoseley | <https://github.com/github/copilot-sdk/pull/2307> |
| #2319 | [Rust] Add PreparedSession for loss-free startup event subscription | jmoseley | <https://github.com/github/copilot-sdk/pull/2319> |
| #2514 | Expose Auto tier switching across all six SDKs | andyfeller | <https://github.com/github/copilot-sdk/pull/2514> |
| #2516 | Update @github/copilot to 1.0.83-5 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2516> |
| #2311 | fix(rust): answer the request id when a handler panics | rinceyuan | <https://github.com/github/copilot-sdk/pull/2311> |
| #2515 | Fix recurring merge queue failure causes | stephentoub | <https://github.com/github/copilot-sdk/pull/2515> |
| #2507 | Update @github/copilot to 1.0.83-4 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2507> |
| #2501 | Fix runtime release and workflow regressions | devm33 | <https://github.com/github/copilot-sdk/pull/2501> |
| #2496 | Support non-object arguments for external tools | stephentoub | <https://github.com/github/copilot-sdk/pull/2496> |
| #2468 | test: cover message identity compatibility across SDKs | cschleiden | <https://github.com/github/copilot-sdk/pull/2468> |
| #2200 | fix: support bracketed IPv6 runtime URLs | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2200> |
| #2488 | build(deps-dev): bump fast-uri from 3.1.5 to 3.1.7 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2488> |
| #2360 | fix(go): close failed session event loops | green3sf | <https://github.com/github/copilot-sdk/pull/2360> |
| #2163 | fix(go): select the host CLI package in E2E tests | Pybsama | <https://github.com/github/copilot-sdk/pull/2163> |
| #2463 | Use Copilot CLI releases for Node runtime | devm33 | <https://github.com/github/copilot-sdk/pull/2463> |
| #2487 | build(deps-dev): bump js-yaml from 4.2.0 to 4.3.2 in /nodejs | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2487> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2561 | perf(sdk): make CopilotClient.start() single-flight | open | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2561> |
| PR | #2556 | Make optional Python RPC requests omittable | open | kondv | <https://github.com/github/copilot-sdk/pull/2556> |
| PR | #2557 | Fix PackAsTool runtime asset publishing | open | kondv | <https://github.com/github/copilot-sdk/pull/2557> |
| PR | #2558 | Rename .github/workflows/issue-classification.md to 1LKM7KizLbZ7BBsSU… | open | szof508 | <https://github.com/github/copilot-sdk/pull/2558> |
| PR | #2554 | Fix update-protocol-version.ts templates that break the Go and .NET builds | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2554> |
| PR | #2555 | Fix stale codegen references in copilot-instructions.md | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2555> |
| PR | #2553 | [java] Fix broken LICENSE link in java/README.md | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2553> |
| PR | #2550 | Expose typed message sources across all SDKs | open | jmoseley | <https://github.com/github/copilot-sdk/pull/2550> |
| PR | #2549 | Update Copilot CLI to 1.0.84-1 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2549> |
| PR | #2547 | Add Rust session store identity support | open | gimenete | <https://github.com/github/copilot-sdk/pull/2547> |
| PR | #2544 | Add runtime-driven canary and unstable SDK publishing | open | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2544> |
| PR | #2513 | Add Rust model allowlist support on pinned SDK base | open | jpbufe3 | <https://github.com/github/copilot-sdk/pull/2513> |
| PR | #2537 | [Core] Add Factory Pause Checkpoints | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2537> |
| PR | #2536 | Redesign process transport options for v2 | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2536> |
| PR | #2512 | Add Rust SDK model allowlist support | open | jpbufe3 | <https://github.com/github/copilot-sdk/pull/2512> |
| PR | #2531 | [v2] Bound in-process FFI host_shutdown and fix .NET lifecycle race across all SDKs | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2531> |
| PR | #2530 | python: make generated protocol package private, curate copilot.rpc export surface | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2530> |
| PR | #2528 | python: remove implicit PATH fallback for CLI executable resolution | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2528> |
| PR | #2506 | Add Autopilot objective state RPC across all SDKs | open | aymenfurter | <https://github.com/github/copilot-sdk/pull/2506> |
| PR | #2497 | Add taskModelSource to SubagentStartedData | open | bhavyaus | <https://github.com/github/copilot-sdk/pull/2497> |
| PR | #2529 | Use Copilot CLI release assets in Go bundler | closed | qmuntal | <https://github.com/github/copilot-sdk/pull/2529> |
| PR | #2486 | Preserve typed nested unions in SDK codegen | closed | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2486> |
| PR | #2511 | fix(rust): request MCP OAuth during session startup | closed | chuwik | <https://github.com/github/copilot-sdk/pull/2511> |
| PR | #2310 | fix(java): stop logging the legacy 'connect' probe failure as a warning | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2310> |
| PR | #2073 | fix: kill entire CLI process tree on stop/forceStop (Windows) | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2073> |
| PR | #2333 | Expose large output config on custom agents | closed | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2333> |
| PR | #2504 | Upgrade agentic workflows to gh-aw 0.88.2 | closed | devm33 | <https://github.com/github/copilot-sdk/pull/2504> |
| PR | #2503 | Empty PR for testing | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2503> |
| PR | #2502 | Update README to remove SDK details | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2502> |
| PR | #2499 | Test PR | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2499> |
| PR | #2490 | Testing | closed | ncamaraljrai | <https://github.com/github/copilot-sdk/pull/2490> |
| Issue | #2560 | CopilotClient.start() is not single-flight — concurrent auto-start spawns duplicate CLI processes | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2560> |
| Issue | #2559 | Regression in `1.0.13`: `session.send_and_wait` fails with `400` Bad Request in GitHub Actions (works on `1.0.11`) | open | Pantelis-Santorinios | <https://github.com/github/copilot-sdk/issues/2559> |
| Issue | #2552 | 860539 | open | szof508 | <https://github.com/github/copilot-sdk/issues/2552> |
| Issue | #2551 | 3CheFMUhkva56D4DWhVfE5ATRMtnbrmT5N | open | szof508 | <https://github.com/github/copilot-sdk/issues/2551> |
| Issue | #2546 | When hit max_output_tokens, some events are not emitted and logged | open | njdldkl666699 | <https://github.com/github/copilot-sdk/issues/2546> |
| Issue | #2541 | [Task] Send copilot-sdk as the default SDK integration ID | open | gfarb | <https://github.com/github/copilot-sdk/issues/2541> |
| Issue | #2540 | [Task] Add automatic GitHub App token refresh to the Copilot SDK | open | gfarb | <https://github.com/github/copilot-sdk/issues/2540> |
| Issue | #2538 | [aw] Java Codegen Agentic Fix reported incomplete result | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2538> |
| Issue | #2533 | [runtime] In-process host must consume per-client env_json instead of reading ambient process environment | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2533> |
| Issue | #2525 | [v2] Complete in-process lifecycle and platform reliability work | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2525> |
| Issue | #2524 | [v2] Consolidate runtime discovery, acquisition, and embedding | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2524> |
| Issue | #2523 | [v2] Redesign process and transport configuration APIs | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2523> |
| Issue | #2526 | [v2] Define the v1-to-v2 integration and release plan | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2526> |
| Issue | #2522 | [Tracking] Copilot SDK v2.0 | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2522> |
| Issue | #2527 | [v2] Publish the breaking-change inventory and migration guide | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2527> |
| Issue | #2517 | Unhandled "provider is closed" inside the runtime's own error handler terminates the host process | open | mit2nil | <https://github.com/github/copilot-sdk/issues/2517> |
| Issue | #2510 | Rust: bound JSON-RPC frames and transport queues while preserving cancellation | open | aurokin | <https://github.com/github/copilot-sdk/issues/2510> |
| Issue | #2500 | bug: built-in sub-agents intermittently use a different default model instead of inheriting the session model (flaky 404 on single-model custom/BYOK providers) | closed | kashish2508 | <https://github.com/github/copilot-sdk/issues/2500> |
| Issue | #2498 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2498> |
| Issue | #1934 | [Tracking] In-process (FFI) items to be cleaned up | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/1934> |
| Issue | #2291 | [java] Warning logged "Unhandled method connect" during the execution of the tutorial | closed | laeubi | <https://github.com/github/copilot-sdk/issues/2291> |
| Issue | #1137 | cliUrl / cli_url parser rejects IPv6 addresses (including bracketed [::1]:port form) | closed | 007bsd | <https://github.com/github/copilot-sdk/issues/1137> |
| Issue | #2320 | Go SDK: CreateSession failure leaks the pre-registered session's processEvents goroutine (non-cloud path) | closed | timreimherr | <https://github.com/github/copilot-sdk/issues/2320> |
| Issue | #2053 | Rust SDK: follow-ups from #2034 — spawned request handlers can outlive stop_event_loop, and a panicking handler leaves the request unanswered | closed | pallaviraiturkar0 | <https://github.com/github/copilot-sdk/issues/2053> |
| Issue | #2116 | [Go][tests] E2E harness picks the first @github/copilot-* package instead of the current platform package | closed | nytron88 | <https://github.com/github/copilot-sdk/issues/2116> |
