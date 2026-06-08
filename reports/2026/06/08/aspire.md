# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-05 04:03:36 〜 2026-06-08 01:26:03 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 18 |
| オープン中の新規 PR     | 21 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 26 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | davidfowl, aspire-repo-bot[bot], JamesNK, adamint, IEvangelist, Jah-yee |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

- **⚠ 破壊的変更** [#17924](https://github.com/microsoft/aspire/pull/17924) — Add proxyless endpoint port allocator （PR / open / danegsta）
  プロキシを介さないエンドポイントポート割り当ての変更で、Aspire のポート管理挙動に依存するホスティング設定に影響が及ぶ可能性があります。マージ前に影響範囲を確認してください。
- **⚠ セキュリティ** [#17951](https://github.com/microsoft/aspire/pull/17951) — [security] Bump vulnerable npm dependencies flagged by Dependabot (10 alerts) （PR / merged / IEvangelist）
  Dependabot が検出した 10 件の脆弱な npm 依存関係がマージ済みで修正されました。プロジェクトで同一パッケージを利用している場合は upstream の修正内容を確認してください。
- **⚠ セキュリティ** [#17949](https://github.com/microsoft/aspire/pull/17949) — feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings （PR / open / PlaySkyHD）
  Key Vault インテグレーション利用者向けに健全性チェックオプションが追加される予定です（セキュリティラベルは誤検出の可能性あり）。マージ後の設定変更点を確認してください。
- **⚠ セキュリティ** [#17902](https://github.com/microsoft/aspire/pull/17902) — [security] Bump aiohttp and starlette in FoundryAgentBasic playground （PR / open / IEvangelist）
  FoundryAgentBasic プレイグラウンドの Python 依存ライブラリのセキュリティアップデートです。このプレイグラウンドを参照している開発者は依存関係の更新を確認してください。

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#17951](https://github.com/microsoft/aspire/pull/17951) — [security] Bump vulnerable npm dependencies flagged by Dependabot (10 alerts)

- 作者: IEvangelist / 状態: MERGED
- ラベル: —
- 変更行数: +1728 / -1934
- マージ日時 (UTC): `2026-06-05 18:21:15`

**変更概要**

Dependabot が検出した 10 件の脆弱な npm 依存関係を一括修正したセキュリティアップデート。対象は VS Code 拡張（`extension/`）の `package.json`/`yarn.lock`、Angular playground（`AspireJavaScript.Angular`）の `package-lock.json`、TypeScript コード生成テストの `package-lock.json`。純粋なセキュリティ修正で機能変更はなく、パッケージのバージョンアップとロックファイルの更新のみ。

<details><summary>コミット (1 件)</summary>

- `6a74f7b` [security] Bump vulnerable npm dependencies flagged by Dependabot

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

npm 依存関係のバージョンアップとロックファイル更新のみ。API や公開インターフェースへの変更はなし。破壊的変更なし。

**既存利用者への影響**

開発者としての直接的な対応は不要です。ただし、プロジェクト内で同一の npm パッケージを利用している場合は、upstream のセキュリティ修正内容を確認することを推奨します。

### [#17994](https://github.com/microsoft/aspire/pull/17994) — Honor --no-build for TypeScript AppHosts

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +84 / -9
- マージ日時 (UTC): `2026-06-08 01:03:36`

**変更概要**

TypeScript AppHost で `--no-build` フラグが正しく適用されない問題を修正。`GuestRuntime.cs` と `GuestAppHostProject.cs` を更新し、ビルドスキップの指示が TypeScript の AppHost 起動フローでも尊重されるようになった。テスト 66 行追加済み。`aspire run --no-build` 等を使用するビルド高速化のワークフローが TypeScript AppHost でも正しく機能するようになる。

<details><summary>コミット (2 件)</summary>

- `8babd09` Honor no-build for TypeScript AppHosts
- `ea26336` Address TypeScript no-build test review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`GuestRuntime.cs`（+12/-5）の `--no-build` フラグ伝搬ロジック修正と `GuestAppHostProject.cs`（+6/-4）の調整のみ。公開 API への変更はなく破壊的変更なし。

**既存利用者への影響**

TypeScript AppHost で `aspire run --no-build` を使用している場合、ビルドスキップが正しく機能するようになります。マイグレーション対応は不要です。

### [#17984](https://github.com/microsoft/aspire/pull/17984) — Fix stealth button background in dashboard dialogs

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +9 / -3
- マージ日時 (UTC): `2026-06-07 13:14:21`

**変更概要**

Aspire ダッシュボードのダイアログ（Manage Data ダイアログ等）内でステルスボタンの背景色が正しく表示されないビジュアルバグを修正。`ManageDataDialog.razor.css` に背景色スタイルを追加（+4）し、`app.css`（+5/-3）を修正することで、ダイアログ内のボタン UI が正しく表示されるようになった。

<details><summary>コミット (1 件)</summary>

- `85cf658` Fix stealth button background in dashboard dialogs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CSS ファイルのみの変更。API や機能への影響なし。破壊的変更なし。

**既存利用者への影響**

視覚的なバグ修正のみ。コード変更・マイグレーション不要です。ダッシュボードの Manage Data ダイアログのボタン表示が改善されます。

### [#17971](https://github.com/microsoft/aspire/pull/17971) — Update create-pr skill to detect UI changes and prompt for screenshots

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +34 / -6
- マージ日時 (UTC): `2026-06-06 05:19:23`

**変更概要**

Aspire リポジトリ内の `create-pr` スキル（`.agents/skills/create-pr/SKILL.md`）を更新し、PR に UI 変更（CSS、Razor ファイル等）が含まれる場合にスクリーンショットの添付を促すようにした。コントリビューター向けの内部開発ワークフロー改善で、PR レビューの品質向上を目的とした変更。エンドユーザーへの直接的な影響なし。

<details><summary>コミット (2 件)</summary>

- `4afba8b` Update create-pr skill to detect UI changes and prompt for screenshots
- `4daafbb` Potential fix for pull request finding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

スキルドキュメント（Markdown ファイル）のみの変更。API や外部インターフェースへの変更はなし。破壊的変更なし。

**既存利用者への影響**

Aspire リポジトリへのコントリビューター向けの変更です。エンドユーザーへの影響はありません。

### [#17969](https://github.com/microsoft/aspire/pull/17969) — Prepare VS Code extension release v1.14.0

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `vscode-extension-release`
- 変更行数: +15 / -1
- マージ日時 (UTC): `2026-06-06 05:19:06`

**変更概要**

VS Code の Aspire 拡張機能 **v1.14.0** のリリース準備。`extension/CHANGELOG.md` に v1.14.0 の変更履歴（14 行）が追加され、`package.json` のバージョン番号が更新された。リリースプロセスの自動化による PR で、コードロジックの変更はなし。

<details><summary>コミット (2 件)</summary>

- `717e77b` Prepare VS Code extension release v1.14.0
- `a81652d` Generate extension changelog for v1.14.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

バージョン番号の更新とチェンジログ追加のみ。API 変更なし。破壊的変更なし。

**既存利用者への影響**

VS Code の Aspire 拡張が v1.14.0 に更新されます。自動更新が有効な場合は自動的にアップグレードされます。詳細は `extension/CHANGELOG.md` を確認してください。

### [#17968](https://github.com/microsoft/aspire/pull/17968) — Support process command arguments and TypeScript callbacks

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +452 / -0
- マージ日時 (UTC): `2026-06-08 00:52:55`

**変更概要**

Aspire リソースに対してプロセスコマンドの**引数渡し**と **TypeScript コールバック形式**のコマンド定義をサポート。新規クラス `ProcessCommandOptions`（+5）と `ProcessCommandResultContext`（+23）が追加され、コマンド引数をコールバックから参照できるようになった。TypeScript 用のコードジェネレーターのスナップショットも大幅更新（+146）。Go、Java、Python、Rust の各言語スナップショットにも対応変更あり。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/ProcessCommandOptions.cs` | 5 | 0 |
| `src/Aspire.Hosting/ApplicationModel/ProcessCommandResultContext.cs` | 23 | 0 |
| `src/Aspire.Hosting/ResourceBuilderExtensions.cs` | 17 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/TypeScriptCodegenValidationTests.cs` | 82 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Go.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.go` | 2 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Java.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.java` | 6 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Python.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.py` | 1 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.Rust.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.rs` | 5 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/AtsTypeScriptCodeGeneratorTests.cs` | 7 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/TwoPassScanningGeneratedAspire.verified.ts` | 146 | 0 |
| `tests/Aspire.Hosting.Tests/WithProcessCommandTests.cs` | 134 | 0 |
| `tests/PolyglotAppHosts/Aspire.Hosting/TypeScript/apphost.mts` | 24 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `5eb20fd` Flow process command arguments to result context
- `642d990` Document process command result arguments
- `5df683b` Support TypeScript process command callbacks
- `68c054b` Add process command TypeScript E2E coverage
- `cf291f6` Deprecate TypeScript process command factory
- `606820b` Fix process command TypeScript API compatibility
- `5df7cf2` Update process command codegen snapshots

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規クラス `ProcessCommandOptions` と `ProcessCommandResultContext` が `Aspire.Hosting.ApplicationModel` に追加。`ResourceBuilderExtensions` に新規拡張メソッドが追加（+17）。⚠ **TypeScript の旧ファクトリ形式プロセスコマンド API が非推奨**（`cf291f6` コミット）。TypeScript のコードジェネレータースナップショットが大幅更新（+146）。C# API への破壊的変更はなし。

**既存利用者への影響**

TypeScript AppHost で `WithProcessCommand` のファクトリ形式 API を使用している場合は非推奨警告が表示されます。新しいコールバック形式 API への移行を検討してください。C# の `WithProcessCommand` は引き続き動作しますが、コマンド引数を利用する場合は `ProcessCommandOptions`/`ProcessCommandResultContext` を活用できます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #17960 | Fix persistent container endpoint allocation | danegsta | <https://github.com/microsoft/aspire/pull/17960> |
| #17958 | [release/13.4] Unblock WinGet Manifest job on locked-down 1ES agents; update manifest tags | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17958> |
| #17954 | Update hosting READMEs for polyglot AppHosts | davidfowl | <https://github.com/microsoft/aspire/pull/17954> |
| #17950 | Support command arguments for HTTP commands | davidfowl | <https://github.com/microsoft/aspire/pull/17950> |
| #17948 | Work around main polyglot channel collision | davidfowl | <https://github.com/microsoft/aspire/pull/17948> |
| #17937 | Update code review test coverage guidance | davidfowl | <https://github.com/microsoft/aspire/pull/17937> |
| #17930 | Harden VS Code terminal commands against shell injection | adamint | <https://github.com/microsoft/aspire/pull/17930> |
| #17897 | Fix VS Code AppHost discovery floods | adamint | <https://github.com/microsoft/aspire/pull/17897> |
| #17878 | Add ATS exports for custom health checks | sebastienros | <https://github.com/microsoft/aspire/pull/17878> |
| #17864 | Add 'Open dashboard to the side' command for VS Code | Jah-yee | <https://github.com/microsoft/aspire/pull/17864> |
| #17672 | [Automated] Update ATS API Surface Area | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17672> |
| #17567 | infra: publish Aspire CLI native AOT symbols (Win + Linux + macOS) to MSDL | radical | <https://github.com/microsoft/aspire/pull/17567> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #17996 | Add TS AppHost CI pipeline shadow | open | davidfowl | <https://github.com/microsoft/aspire/pull/17996> |
| PR | #17992 | Fix ACR pull role assignments for existing registries | open | davidfowl | <https://github.com/microsoft/aspire/pull/17992> |
| PR | #17991 | Add C++ Aspire hosting integration | open | davidfowl | <https://github.com/microsoft/aspire/pull/17991> |
| PR | #17990 | Isolate testing builder user secrets | open | davidfowl | <https://github.com/microsoft/aspire/pull/17990> |
| PR | #17988 | Add Azure resource scope support | open | davidfowl | <https://github.com/microsoft/aspire/pull/17988> |
| PR | #17980 | Add TypeScript Azure Functions app support | open | davidfowl | <https://github.com/microsoft/aspire/pull/17980> |
| PR | #17978 | ci(auto-rerun): catch corepack digest-mismatch, ACR refused, silent post-test cleanup flakes; unconditional Windows-init retry (closes #16187) | open | radical | <https://github.com/microsoft/aspire/pull/17978> |
| PR | #17977 | [Automated] Update ATS API Surface Area | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17977> |
| PR | #17975 | [release/13.4] Allow either required npm publish owner | open | adamint | <https://github.com/microsoft/aspire/pull/17975> |
| PR | #17974 | Allow either required npm publish owner | open | adamint | <https://github.com/microsoft/aspire/pull/17974> |
| PR | #17973 | perf(ci): reduce PR CI wall-clock — skip Win Templates + decouple E2E image build | open | radical | <https://github.com/microsoft/aspire/pull/17973> |
| PR | #17972 | [Automated] Update Github Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17972> |
| PR | #17970 | Disable markdown option when JSON or XML is detected in TextVisualizerDialog | open | Copilot | <https://github.com/microsoft/aspire/pull/17970> |
| PR | #17965 | [do not review] Fix stale AppHost running state after debug session ends | open | ellahathaway | <https://github.com/microsoft/aspire/pull/17965> |
| PR | #17963 | Teach PR testing skill to validate VS Code extension changes | open | adamint | <https://github.com/microsoft/aspire/pull/17963> |
| PR | #17962 | Support pnpm patched dependencies | open | Waleed-KH | <https://github.com/microsoft/aspire/pull/17962> |
| PR | #17959 | Expose IInteractionService to polyglot app hosts | open | sebastienros | <https://github.com/microsoft/aspire/pull/17959> |
| PR | #17957 | Add telemetry flow graph mode | open | davidfowl | <https://github.com/microsoft/aspire/pull/17957> |
| PR | #17955 | Stream AppHost discovery in VS Code extension | open | davidfowl | <https://github.com/microsoft/aspire/pull/17955> |
| PR | #17949 | feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings | open | PlaySkyHD | <https://github.com/microsoft/aspire/pull/17949> |
| PR | #17936 | feat: add aspire doctor check for legacy settings.json | open | tomokuroki | <https://github.com/microsoft/aspire/pull/17936> |
| PR | #17964 | Clarify `pr-testing` scope source of truth | closed | Copilot | <https://github.com/microsoft/aspire/pull/17964> |
| PR | #17952 | [release/13.4] Refine dynamic endpoint allocation | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17952> |
| PR | #17915 | Bump the npm_and_yarn group across 3 directories with 6 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/17915> |
| PR | #17874 | Add polyglot interaction service APIs | closed | sebastienros | <https://github.com/microsoft/aspire/pull/17874> |
| PR | #17832 | Spike: Hex1b-backed filtering picker for aspire add | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/17832> |
| PR | #17200 | Surface container runtime warnings during aspire run | closed | omribz156 | <https://github.com/microsoft/aspire/pull/17200> |
| Issue | #17995 | [Failing test]: Aspire.Cli.EndToEnd.Tests.PersistentContainerEndToEndTests.PersistentContainersPreserveDataAcrossAppHostRuns | open | JamesNK | <https://github.com/microsoft/aspire/issues/17995> |
| Issue | #17993 | Port Java integration from Community Toolkit | open | marshalhayes | <https://github.com/microsoft/aspire/issues/17993> |
| Issue | #17989 | Bicep Converter to AppHost | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/17989> |
| Issue | #17987 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17987> |
| Issue | #17986 | Add Parameter support to common methods, such as AddDatabase | open | kieronlanning | <https://github.com/microsoft/aspire/issues/17986> |
| Issue | #17985 | [Failing test]: Aspire.Cli.Tests.Commands.AppHostLauncherTests.WaitForLegacyDetachedStartupStabilityAsync\_RetriesV2ProbeUntilChildExits | open | davidfowl | <https://github.com/microsoft/aspire/issues/17985> |
| Issue | #17983 | npm Aspire CLI package can fall back to incomplete Aspire home bundle, causing dashboard asset 404s | open | davidfowl | <https://github.com/microsoft/aspire/issues/17983> |
| Issue | #17982 | CLI E2E: end-to-end attach flow for `aspire terminal attach` against a real DCP terminal | open | mitchdenny | <https://github.com/microsoft/aspire/issues/17982> |
| Issue | #17981 | Aspire.Hosting.MongoDB requires impossible dependency: SharpCompress 1.0.0 | open | SheepReaper | <https://github.com/microsoft/aspire/issues/17981> |
| Issue | #17979 | Track TypeScript AppHost support for Azure Functions apps | open | davidfowl | <https://github.com/microsoft/aspire/issues/17979> |
| Issue | #17976 | When clicking refresh in aspire panel, you see "no apphosts in workspaces" until loading has completed | open | adamint | <https://github.com/microsoft/aspire/issues/17976> |
| Issue | #17967 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17967> |
| Issue | #17966 | Persistent container lifetime no longer works with Keycloak container | open | jvandertil | <https://github.com/microsoft/aspire/issues/17966> |
| Issue | #17961 | MongoDB hosting health check throws "Connection string is unavailable" when a Persistent container is reused (ConnectionStringAvailableEvent not fired) | open | victorperez2911 | <https://github.com/microsoft/aspire/issues/17961> |
| Issue | #17956 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17956> |
| Issue | #17953 | [CI] Build broken on release/13.4 — 20260604.12 | closed | joperezr | <https://github.com/microsoft/aspire/issues/17953> |
| Issue | #17947 | Support publish-mode app model introspection with aspire describe | open | davidfowl | <https://github.com/microsoft/aspire/issues/17947> |
| Issue | #17946 | VS Code extension shows AppHost as running after it has stopped | open | davidfowl | <https://github.com/microsoft/aspire/issues/17946> |
| Issue | #17945 | winget uninstall of Microsoft.Aspire leaves ~285 MB after first `aspire` command — bundle extraction into winget package directory breaks clean uninstall | open | radical | <https://github.com/microsoft/aspire/issues/17945> |
| Issue | #17944 | `winget uninstall Microsoft.Aspire` fails on dogfood `LocalManifestFiles` installs (exit -1978335212) | open | radical | <https://github.com/microsoft/aspire/issues/17944> |
| Issue | #17943 | Azure provisioning can fail when Aspire invokes az bicep build --stdout | open | davidfowl | <https://github.com/microsoft/aspire/issues/17943> |
| Issue | #17942 | Main CI has persistent Polyglot, Hosting-4, and VS Code E2E failures | open | davidfowl | <https://github.com/microsoft/aspire/issues/17942> |
| Issue | #17941 | Use `aspire ls --format --stream` for AppHost discovery in the extension | open | davidfowl | <https://github.com/microsoft/aspire/issues/17941> |
| Issue | #17940 | [Deployment E2E] Nightly test failure - 2026-06-05 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/17940> |
| Issue | #17939 | [TypeScript AppHost] Expose WithContainerBuildOptions / ContainerTargetPlatform for cross-architecture container builds | open | joperezr | <https://github.com/microsoft/aspire/issues/17939> |
| Issue | #17938 | Internal build broken on release/aspire-internal-notify-validation | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17938> |
| Issue | #17648 | Support CLI-invokable argument inputs for WithHttpCommand and WithProcessCommand | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17648> |
| Issue | #12374 | Wrong `Start time` on AppHost 9.5.2 | closed | KvorHPamuL | <https://github.com/microsoft/aspire/issues/12374> |
| Issue | #10621 | Docker availability warnings should be more prominent in `aspire run` output | closed | captainsafia | <https://github.com/microsoft/aspire/issues/10621> |
| Issue | #6279 | Display more friendly error message for common health checks errors | closed | JamesNK | <https://github.com/microsoft/aspire/issues/6279> |
