# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 29 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 27 |
| クローズ Issue          | 24 |
| 主要コントリビューター  | JamesNK, adamint, radical, ellahathaway, aspire-repo-bot[bot], Copilot |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / open / IEvangelist）
  依存関係の脆弱性対応を進めているため、拡張機能や CLI の npm 依存を使う環境では更新状況を確認する必要があります。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  npm パッケージ更新が入るため、既存のビルドやテストで差分がないかを確認する必要があります。
- **⚠ セキュリティ** [#18484](https://github.com/microsoft/aspire/issues/18484) — aspire start process remains vulnerable to launcher process group cleanup （Issue / open / davidfowl）
  起動プロセスのクリーンアップ周りに脆弱性が残っているため、開発者環境のプロセス終了や異常時復旧を見直すとよいでしょう。
- **非推奨/廃止** [#18525](https://github.com/microsoft/aspire/issues/18525) — Consider deprecating Aspire.Azure.AI.Inference （Issue / open / jozkee）
  Azure AI Inference 周辺の将来方針が議論されているため、今後の依存関係を見直すタイミングとして注視するとよいでしょう。

## このリポジトリの要点

Aspire では、セキュリティ対応と VS Code 拡張の UX 改善が並行して進んでおり、CLI / extension / dashboard の使い勝手を一緒に高める動きが見られます。AppHost ツリー表示や CLI インストール体験の改善も進んでおり、開発体験の洗練が継続しています。加えて、ホスティング統合の authoring skill が追加されたことで、今後の拡張追加に向けたガイダンスが整っています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18532](https://github.com/microsoft/aspire/pull/18532) — Update OpenTelemetry.Instrumentation.StackExchangeRedis

- 作者: martincostello / 状態: MERGED
- ラベル: —
- 変更行数: +24 / -13
- マージ日時 (UTC): `2026-06-28 00:07:26`

**変更概要**

StackExchangeRedis 用の OpenTelemetry instrumentation が更新され、Redis の観測性をより自然に扱えるようになりました。主な変更はインストルメンテーションの実装調整で、既存利用者への影響は比較的小さいです。Redis を使う環境では、採取内容の差分を確認しておくとよいでしょう。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Vendoring/OpenTelemetry.Instrumentation.StackExchangeRedis/Implementation/RedisProfilerEntryToActivityConverter.cs` | 16 | 11 |
| `src/Vendoring/OpenTelemetry.Instrumentation.StackExchangeRedis/StackExchangeRedisConnectionInstrumentation.cs` | 7 | 1 |
| `src/Vendoring/README.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `bdd7eb3` Update OpenTelemetry.Instrumentation.StackExchangeRedis

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更は vendored コードの実装更新で、公開 API のシグネチャ変更はありません。観測データの変換ロジックに手が入っており、Redis のト레이ス収集に影響する可能性があります。

**既存利用者への影響**

Redis の計測をそのまま運用している場合は、収集内容の微妙な差分を確認しておくとよいでしょう。移行作業は不要ですが、監視ダッシュボードの期待値が変わらないかを見ておくと安心です。

### [#18528](https://github.com/microsoft/aspire/pull/18528) — Prepare VS Code extension release v1.16.0

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `vscode-extension-release`
- 変更行数: +13 / -1
- マージ日時 (UTC): `2026-06-27 00:00:32`

**変更概要**

VS Code 拡張の 1.16.0 リリース準備が行われ、変更ログとパッケージ情報が更新されました。ユーザー向けの機能差分は本体の改善と合わせて見られますが、今回は主にリリースの整備です。拡張機能の更新を配布する運用チームでは、配布前のバージョン確認に役立ちます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/CHANGELOG.md` | 12 | 0 |
| `extension/package.json` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `6d5fda9` Prepare VS Code extension release v1.16.0
- `c8f8396` Generate extension changelog for v1.16.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR はバージョン / 変更ログの更新に集中しており、公開 API のシグネチャ変更はありません。拡張機能の配布面では、バージョン番号と changelog の整合性が重要です。

**既存利用者への影響**

利用者側での移行作業は不要ですが、拡張機能の更新後に表示内容やバージョン番号を確認しておくとよいでしょう。

### [#18523](https://github.com/microsoft/aspire/pull/18523) — Flatten single-AppHost group nodes in the AppHosts tree view

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +91 / -53
- マージ日時 (UTC): `2026-06-26 23:11:40`

**変更概要**

AppHosts ツリーの表示が整理され、単一 AppHost の場合に余分なグループノードが出にくい構成になりました。VS Code 拡張上でのナビゲーションがスッキリし、関連する AppHost を見つけやすくなっています。表示の変化があるため、既存の作業フローに合わせて気づきやすい構成になっています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/test/appHostTreeView.test.ts` | 68 | 46 |
| `extension/src/views/AspireAppHostTreeProvider.ts` | 23 | 7 |

</details>

<details><summary>コミット (5 件)</summary>

- `ac491fc` Hide `Workspace AppHosts` group node for a single AppHost (#18420)
- `105bfe8` Also flatten single workspace AppHost in mixed running/idle case (#18…
- `baa295a` Also flatten single running AppHost group in mixed case (#18420)
- `ce911be` Fix two workspace-mode tests for flattened single running AppHost (#1…
- `42dadb9` Fix reference-equality assertion in flattened single AppHost test (#1…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

表示ロジックの変更で、UI の階層構造が変わっていますが、公開 API のシグネチャ変更はありません。主に拡張機能の表示整理とテスト更新が中心です。

**既存利用者への影響**

利用者側での移行作業は不要ですが、AppHost の見え方が変わるため、既存のワークフローでツリーを見ている場合は表示差分を確認するとよいでしょう。

### [#18522](https://github.com/microsoft/aspire/pull/18522) — Fix VS Code extension CLI install to be shell-agnostic (#18459)

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +182 / -68
- マージ日時 (UTC): `2026-06-26 23:14:42`

**変更概要**

VS Code 拡張の CLI インストール手順がシェル非依存に改善され、Windows / macOS / Linux での導入手順が安定しました。インストール時のパッケージマネージャー選択やウォークスルーの文言も整理され、初回セットアップの導線が分かりやすくなっています。特に CLI 追加の手順が混乱しやすい環境で効果が大きい変更です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/loc/xlf/aspire-vscode.xlf` | 18 | 6 |
| `extension/package.json` | 4 | 10 |
| `extension/package.nls.json` | 7 | 3 |
| `extension/src/commands/walkthroughCommands.ts` | 125 | 10 |
| `extension/src/extension.ts` | 4 | 5 |
| `extension/src/loc/strings.ts` | 5 | 0 |
| `extension/src/test-e2e/packageSurface.e2e.test.ts` | 11 | 14 |
| `extension/walkthrough/installCli.md` | 8 | 20 |

</details>

<details><summary>コミット (5 件)</summary>

- `c0c5bbb` Remove in-extension Aspire CLI install commands
- `079cecc` Add package-manager picker for Aspire CLI install walkthrough
- `7afb41f` Restore verifyCliInstalled walkthrough command
- `d0b011a` Add daily-build option to Aspire CLI install picker
- `fb481da` Mirror new install picker strings in package.nls.json and XLF

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI インストールの実装がシェル非依存に変更され、インストール手順の判定ロジックが整理されています。公開 API の変更はなく、拡張機能の UI / シナリオ制御の改善です。

**既存利用者への影響**

利用者側での移行作業は基本不要ですが、CLI のインストール手順が変わるため、既存の操作手順や自動化スクリプトを見直すとよいでしょう。

### [#18516](https://github.com/microsoft/aspire/pull/18516) — Clear global AppHosts when switching to workspace view

- 作者: adamint / 状態: MERGED
- ラベル: —
- 変更行数: +159 / -0
- マージ日時 (UTC): `2026-06-26 17:39:29`

**変更概要**

ワークスペース表示へ切り替えた際に、グローバルな AppHost の表示状態をリセットする改善が入りました。これにより、表示の混乱や古い状態の残留が減り、作業中の AppHost が見やすくなります。拡張機能を頻繁に切り替えて使う環境で価値が高い変更です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/test/appHostDataRepository.test.ts` | 152 | 0 |
| `extension/src/views/AppHostDataRepository.ts` | 7 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `79fac12` Clear global AppHosts when switching to workspace view
- `8997765` Cover workspace filtering edge cases

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更はビュー切り替え時の状態管理に関するもので、公開 API のシグネチャ変更はありません。AppHost の表示状態をクリアすることで、ワークスペース切り替え後に古い表示が残るケースを防ぎます。

**既存利用者への影響**

利用者側での移行作業は不要ですが、表示状態がリセットされるため、切り替え後にどの AppHost が表示されるかを一度確認しておくと親切です。

### [#18514](https://github.com/microsoft/aspire/pull/18514) — Add hosting integration authoring skill

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +3284 / -0
- マージ日時 (UTC): `2026-06-26 19:29:40`

**変更概要**

この PR は、Aspire の hosting integration を作るための authoring skill とガイド資料を追加するものです。既存の integration 開発者向けに、API 命名・app model・archetype・secret/provider などの実装パターンを一通りまとめており、今後の拡張実装を標準化しやすくします。特に、複数の integration 追加に向けた再利用可能な作業指針として価値が高い変更です。

<details><summary>変更ファイル (32 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.agents/skills/hosting-integration-authoring/SKILL.md` | 69 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/api-naming-and-shape.md` | 93 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/app-model-fundamentals.md` | 167 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-admin-and-tool-container.md` | 67 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-azure-provisioning.md` | 89 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-container-backed-service.md` | 96 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-controller-reconciler.md` | 173 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-deployment-target-publisher.md` | 133 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-external-cloud-reference.md` | 43 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-language-executable-app.md` | 110 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-overlay-configuration.md` | 36 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-secret-provider.md` | 53 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-setup-and-migration-helper.md` | 58 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-sidecar-and-middleware.md` | 68 | 0 |
| `.agents/skills/hosting-integration-authoring/resources/archetype-tunnel-and-webhook-bridge.md` | 78 | 0 |
| _... 他 17 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `b7d645a` Add hosting integration authoring skill
- `6a04acb` Add hosting integration authoring archetypes
- `d2caac9` Refine hosting controller guidance
- `4c49bc7` Add deployment integration authoring guidance

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更ではなく、.agents/skills 配下のガイド群とサンプルの追加です。実装者が参照する authoring ドキュメントが増え、今後の integration 追加時に一貫した設計判断がしやすくなります。

**既存利用者への影響**

利用者側の移行作業は不要ですが、hosting integration の開発に携わるチームでは新しいガイドの参照先を把握しておくとよいでしょう。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18507 | Log asciinema upload output on failure (safely) | mitchdenny | <https://github.com/microsoft/aspire/pull/18507> |
| #18505 | Branding: use "Aspire" instead of ".NET Aspire" | sebastienros | <https://github.com/microsoft/aspire/pull/18505> |
| #18501 | Fix GenAI copy button accessible name | adamint | <https://github.com/microsoft/aspire/pull/18501> |
| #18500 | Harden extension terminal display fallback | adamint | <https://github.com/microsoft/aspire/pull/18500> |
| #18499 | Add field IDs to issue templates for prefill support | DamianEdwards | <https://github.com/microsoft/aspire/pull/18499> |
| #18496 | Fix AzurePromptAgentResource run-mode pipeline step dependency | JamesNK | <https://github.com/microsoft/aspire/pull/18496> |
| #18492 | Fix markdown content wrapping in TextVisualizerDialog | JamesNK | <https://github.com/microsoft/aspire/pull/18492> |
| #18491 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18491> |
| #18489 | [ci] Fix Outerloop tests workflow | Copilot | <https://github.com/microsoft/aspire/pull/18489> |
| #18487 | Fix spurious error logging for expected backchannel disconnects in `aspire run` | JamesNK | <https://github.com/microsoft/aspire/pull/18487> |
| #18483 | Replace direct OS checks with IEnvironment in CLI | JamesNK | <https://github.com/microsoft/aspire/pull/18483> |
| #18482 | fix(ci): select tests from the PR's merge-base diff, not the base tip | radical | <https://github.com/microsoft/aspire/pull/18482> |
| #18481 | Configure HTTPS certificates for project resources | danegsta | <https://github.com/microsoft/aspire/pull/18481> |
| #18480 | fix(skills): match MTP lowercase "total:" in run-test-repeatedly zero-test guard | radical | <https://github.com/microsoft/aspire/pull/18480> |
| #18455 | Improve npm CLI package README and install diagnostics | adamint | <https://github.com/microsoft/aspire/pull/18455> |
| #18454 | Refactor CLI telemetry: background tag calculation with export-time enrichment | JamesNK | <https://github.com/microsoft/aspire/pull/18454> |
| #18436 | Speed up AppHost discovery by skipping MSBuild evaluation for non-AppHost projects | ellahathaway | <https://github.com/microsoft/aspire/pull/18436> |
| #18407 | Stop listing agent-skill snippets as AppHosts | ellahathaway | <https://github.com/microsoft/aspire/pull/18407> |
| #18361 | Make dashboard launch opt-in by default | adamint | <https://github.com/microsoft/aspire/pull/18361> |
| #18328 | Follow-up test improvements for Aspire.Hosting.Maui.Tests | Copilot | <https://github.com/microsoft/aspire/pull/18328> |
| #18320 | fix(pr-docs-check): remove duplicate aspire.dev checkout that broke create_pull_request branch pinning | radical | <https://github.com/microsoft/aspire/pull/18320> |
| #18254 | ci: capture Aspire CLI logs in deployment E2E test artifact | radical | <https://github.com/microsoft/aspire/pull/18254> |
| #18119 | Optimize pr-docs-check agentic workflow to cut token usage | IEvangelist | <https://github.com/microsoft/aspire/pull/18119> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18543 | Make PostgreSQL resilient to the PG18 initdb-restart window | open | thomhurst | <https://github.com/microsoft/aspire/pull/18543> |
| PR | #18539 | Flush logs before terminal resource notifications | open | davidfowl | <https://github.com/microsoft/aspire/pull/18539> |
| PR | #18535 | Fix thread-safety race in RootCommand causing flaky NRE in LsCommandTests | open | JamesNK | <https://github.com/microsoft/aspire/pull/18535> |
| PR | #18533 | Resolve open JS and TS security alerts | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18533> |
| PR | #18530 | feat: Add Orleans ADO.NET Invariant Annotation and Configuration | open | Guillermo-Santos | <https://github.com/microsoft/aspire/pull/18530> |
| PR | #18527 | Unify workspace/global AppHost describe --follow streaming | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18527> |
| PR | #18519 | Add Aspire.Hosting.Azure.Azd: import existing azd projects | open | davidfowl | <https://github.com/microsoft/aspire/pull/18519> |
| PR | #18518 | Bump npm dependencies for security alerts | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18518> |
| PR | #18517 | Improve extension CLI probe startup behavior | open | adamint | <https://github.com/microsoft/aspire/pull/18517> |
| PR | #18513 | Centralize Maui MSBuild property names as consts | open | Copilot | <https://github.com/microsoft/aspire/pull/18513> |
| PR | #18502 | Keep mobile nav focus visible at high zoom | open | adamint | <https://github.com/microsoft/aspire/pull/18502> |
| PR | #18503 | Fix popup tab focus navigation | open | adamint | <https://github.com/microsoft/aspire/pull/18503> |
| PR | #18497 | Add PostgreSQL major version detection for pg-prefixed image tags | open | DaveHellman | <https://github.com/microsoft/aspire/pull/18497> |
| PR | #18493 | Add PromptProgressAsync API to IInteractionService | open | JamesNK | <https://github.com/microsoft/aspire/pull/18493> |
| PR | #18486 | Detach Unix start process from launcher group | open | davidfowl | <https://github.com/microsoft/aspire/pull/18486> |
| PR | #18529 | Fix Deployment E2E nightly: stage real DCP binary so the AppHost build can resolve the CLI bundle | closed | radical | <https://github.com/microsoft/aspire/pull/18529> |
| PR | #18526 | Prepare VS Code extension release v1.16.0 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18526> |
| PR | #18495 | Fix DotNetSdkInstaller to use runtime selector's dotnet path after private SDK installation | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18495> |
| PR | #18479 | Fix flaky LsCommandTests by making LsCommand options non-static | closed | Copilot | <https://github.com/microsoft/aspire/pull/18479> |
| PR | #18456 | Draft: Add AppHost target version telemetry (automated) | closed | adamint | <https://github.com/microsoft/aspire/pull/18456> |
| PR | #18241 | Flow configured CLI path into AppHost builds | closed | adamint | <https://github.com/microsoft/aspire/pull/18241> |
| Issue | #18545 | In-graph orchestrator that survives restarting its peers — how does it fit #17722? | open | brrusino | <https://github.com/microsoft/aspire/issues/18545> |
| Issue | #18544 | Tracking: making autonomous inner-loops a first-class scenario inside the AppHost | open | brrusino | <https://github.com/microsoft/aspire/issues/18544> |
| Issue | #18542 | WSL Containers support | open | richardszalay | <https://github.com/microsoft/aspire/issues/18542> |
| Issue | #18541 | Cosmos DB emulator: gateway HTTP/2 client leaves unobserved read-loop task exceptions on cancelled reads — default the emulator client to HTTP/1.1 | open | thomhurst | <https://github.com/microsoft/aspire/issues/18541> |
| Issue | #18540 | PostgreSQL 18 initdb-restart window: native AddDatabase creation races it, and the resource reports Healthy before the restart completes (WaitFor dependents released into a connection reset) | open | thomhurst | <https://github.com/microsoft/aspire/issues/18540> |
| Issue | #18538 | [vscode] add a shortcut to attach debugger to a running apphost | open | sliekens | <https://github.com/microsoft/aspire/issues/18538> |
| Issue | #18537 | Add Kong API Gateway hosting integration | closed | qmmk | <https://github.com/microsoft/aspire/issues/18537> |
| Issue | #18536 | [Deployment E2E] Nightly test failure - 2026-06-28 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18536> |
| Issue | #18534 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18534> |
| Issue | #18531 | [Deployment E2E] Nightly test failure - 2026-06-27 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18531> |
| Issue | #18525 | Consider deprecating Aspire.Azure.AI.Inference | open | jozkee | <https://github.com/microsoft/aspire/issues/18525> |
| Issue | #18524 | [Failing test]: VS Code extension E2E 'global debug stop removes running apphost' times out waiting for AppHost to stop | open | radical | <https://github.com/microsoft/aspire/issues/18524> |
| Issue | #18521 | Auto group environment variables in the dashboard | open | brunoborges | <https://github.com/microsoft/aspire/issues/18521> |
| Issue | #18520 | "TLS certificate file load failed: unable to determine CA certificate" error when starting Aspire app on Arch Linux | open | karolz-ms | <https://github.com/microsoft/aspire/issues/18520> |
| Issue | #18515 | Azure System Managed Identity support | open | fowl2 | <https://github.com/microsoft/aspire/issues/18515> |
| Issue | #18512 | Maui: consider centralizing some property names as consts | open | radical | <https://github.com/microsoft/aspire/issues/18512> |
| Issue | #18511 | [Deployment E2E] Nightly test failure - 2026-06-26 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18511> |
| Issue | #18510 | `aspire run` silently accepts unknown/misspelled flags (e.g. `--isol`) instead of failing | open | radical | <https://github.com/microsoft/aspire/issues/18510> |
| Issue | #18509 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18509> |
| Issue | #18508 | AzurePromptAgentResource crashes at runtime: depends on removed `run-mode-azure-provision` pipeline step | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18508> |
| Issue | #18506 | Global AppHosts appearing in workspace view after toggling view | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/18506> |
| Issue | #18504 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18504> |
| Issue | #18494 | [AspireE2E]It always shows "Scanning app code in current directory" when "azd init" a aspire project | open | Susie-1989 | <https://github.com/microsoft/aspire/issues/18494> |
| Issue | #18490 | suspended 'aspire-managed.exe' processes building up | open | fowl2 | <https://github.com/microsoft/aspire/issues/18490> |
| Issue | #18488 | Outerloop build-broken: TelemetryConfigurationTests.cs uses DefaultTimeout() under #if DEBUG, fails Release compile | closed | radical | <https://github.com/microsoft/aspire/issues/18488> |
| Issue | #18485 | [Deployment E2E] Nightly test failure - 2026-06-25 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18485> |
| Issue | #18484 | aspire start process remains vulnerable to launcher process group cleanup | open | davidfowl | <https://github.com/microsoft/aspire/issues/18484> |
| Issue | #18478 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18478> |
| Issue | #18459 | VS Code Extension: "install" assumes terminal based on platform | closed | fowl2 | <https://github.com/microsoft/aspire/issues/18459> |
| Issue | #18441 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18441> |
| Issue | #18439 | aspire finding apphost candidates is still very slow | closed | adamint | <https://github.com/microsoft/aspire/issues/18439> |
| Issue | #18434 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18434> |
| Issue | #18420 | VS Code Extension: Hide "Workspace AppHosts" root node when there is only one AppHost | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18420> |
| Issue | #18412 | Re-enable VS Code extension E2E tests in CI (temporarily disabled due to flakiness) | closed | radical | <https://github.com/microsoft/aspire/issues/18412> |
| Issue | #18408 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18408> |
| Issue | #18398 | Aspire VS Code extension lists code snippets from Agent Skills as `AppHost`s | closed | hansmbakker | <https://github.com/microsoft/aspire/issues/18398> |
| Issue | #18397 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18397> |
| Issue | #18352 | AspireAiMonitor — work ledger | closed | radical | <https://github.com/microsoft/aspire/issues/18352> |
| Issue | #18347 | Make CLI telemetry tag collection parallel to command processing | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/18347> |
| Issue | #18319 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18319> |
| Issue | #18175 | Avoid executing msbuild when running aspire ls via extension for apphost discovery | closed | adamint | <https://github.com/microsoft/aspire/issues/18175> |
| Issue | #18098 | Flaky: VS Code extension zero-to-running E2E fails in "after each" teardown (AggregateError) on Windows | closed | radical | <https://github.com/microsoft/aspire/issues/18098> |
| Issue | #18013 | Improve the @microsoft/aspire-cli npm README | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/18013> |
| Issue | #17923 | Make VS Code dashboard launch behavior less obtrusive by default | closed | adamint | <https://github.com/microsoft/aspire/issues/17923> |
| Issue | #17921 | aspire extension telemetry should include the Aspire version being targeted by the AppHost | closed | adamint | <https://github.com/microsoft/aspire/issues/17921> |
| Issue | #17896 | VS Code extension: AppHost discovery doesn't exclude nested git worktrees → unbounded ripgrep process spawn (CPU saturation) | closed | gabynevada | <https://github.com/microsoft/aspire/issues/17896> |
| Issue | #17467 | Accessible name is missing for “Console logs” checkbox:A11y_Aspire Dashboard_Settting_Manage logs_Devtools | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17467> |
