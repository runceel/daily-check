# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-14 01:26:38 〜 2026-07-15 04:59:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 9 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | davidfowl, ellahathaway, IEvangelist, joperezr, Copilot, aspire-repo-bot[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18735](https://github.com/microsoft/aspire/pull/18735) — [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more) （PR / merged / IEvangelist）
  npm 依存関係の脆弱性修正をまとめて取り込んだ変更です。フロントエンド資産を利用する場合は lockfile を更新して再ビルドしてください。

## このリポジトリの要点

Native AOT 対応 Dashboard のバックエンドと構造化ログのストリーミングが大きく進みました。npm 依存関係のセキュリティ修正もマージされ、EF マイグレーションの接続文字列転送が改善されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18735](https://github.com/microsoft/aspire/pull/18735) — [auto-sec] Consolidate npm security remediations (vite, Angular, undici, hono, protobufjs, and more)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations` `automated-security`
- 変更行数: +13774 / -14146
- マージ日時 (UTC): `2026-07-14 22:02:33`

**変更概要**

Vite、Angular、undici、hono、protobufjs などの npm 依存関係をセキュリティ修正版へ更新しました。多数の lockfile とテスト用資産を再生成し、フロントエンドの脆弱性修正を一括反映しています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/pr-docs-check/compute_signals.py` | 39 | 3 |
| `.github/workflows/pr-docs-check/test_compute_signals.py` | 116 | 2 |
| `extension/package.json` | 6 | 3 |
| `extension/src/test/e2eLaunchProfile.test.ts` | 2 | 2 |
| `extension/yarn.lock` | 47 | 40 |
| `playground/AspireWithBun/package-lock.json` | 108 | 108 |
| `playground/AspireWithBun/package.json` | 1 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 3054 | 2530 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 34 | 16 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/tsconfig.json` | 1 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package-lock.json` | 543 | 535 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package.json` | 9 | 6 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package-lock.json` | 243 | 227 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package.json` | 5 | 2 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package-lock.json` | 119 | 109 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `089f1d7` [auto-sec] Consolidate npm security remediations across all frontend …
- `f72f006` [auto-sec] Align E2E test with undici 7.28.0 lock
- `756a4c9` Merge branch 'main' into dapire/security-deps/aspire-npmfix
- `322e5c3` Merge PR #18735 onto latest main
- `81d04ff` Regenerate Yarn fixture lockfile
- `1d6295a` Merge latest main into dapire/security-deps/aspire-npmfix (freshness …
- `5ef92df` Add polyglot code-generator signal to pr-docs-check catalog (#18766)
- `c59d53b` Merge PR #18735 onto latest upstream main
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

主な変更は npm の依存バージョンと lockfile の更新で、Aspire の .NET API 追加は確認できません。依存先の挙動差分はフロントエンドの E2E で確認します。

**既存利用者への影響**

フロントエンドをビルドする利用者は lockfile を再インストールし、E2E とセキュリティスキャンを実行してください。通常の AppHost API 利用者の移行は不要です。

### [#18781](https://github.com/microsoft/aspire/pull/18781) — Add Native AOT structured log streaming

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +957 / -35
- マージ日時 (UTC): `2026-07-14 21:04:19`

**変更概要**

Dashboard の構造化ログを Native AOT バックエンドから配信し、Deck 側で購読できるようにしました。バージョン付きコマンド実行と SignalR ベースのストリーミング契約を追加し、E2E テストを拡充しています。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard.Backend/DashboardApiContract.cs` | 25 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardBackendApplication.cs` | 54 | 1 |
| `src/Aspire.Dashboard.Backend/DashboardBackendJsonSerializerContext.cs` | 4 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardCommandExecutor.cs` | 91 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardStructuredLogProxy.cs` | 140 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardStructuredLogsHub.cs` | 24 | 0 |
| `src/Aspire.Dashboard.Backend/README.md` | 14 | 3 |
| `src/Aspire.Deck/CONTRACT.md` | 19 | 3 |
| `src/Aspire.Deck/ui/README.md` | 2 | 2 |
| `src/Aspire.Deck/ui/e2e/http-backend-features.ts` | 1 | 1 |
| `src/Aspire.Deck/ui/e2e/http-backend.spec.ts` | 135 | 0 |
| `src/Aspire.Deck/ui/e2e/live/stress-features.ts` | 1 | 1 |
| `src/Aspire.Deck/ui/e2e/live/stress.spec.ts` | 1 | 1 |
| `src/Aspire.Deck/ui/e2e/parity/dashboard-parity-features.ts` | 6 | 6 |
| `src/Aspire.Deck/ui/e2e/parity/parity-ledger.spec.ts-snapshots/dashboard-parity-ledger-darwin.md` | 6 | 6 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `5050439` Add versioned dashboard command execution
- `a22f307` Negotiate dashboard command capability
- `6c049e7` Align live Stress resource row count
- `e3bb74f` Add versioned structured log backend
- `b4de579` Consume AOT structured logs in Deck

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard のコマンド能力ネゴシエーション、構造化ログプロキシ、SignalR Hub が追加されています。既存クライアントは契約バージョンを確認して接続する必要があります。

**既存利用者への影響**

Native AOT Dashboard を利用する場合は新しい契約と接続手順に合わせてください。従来の Dashboard 利用者は段階的に更新し、互換性を確認してください。

### [#18773](https://github.com/microsoft/aspire/pull/18773) — Merge release/13.4 back into main (reconciliation, no net changes)

- 作者: joperezr / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +0 / -0
- マージ日時 (UTC): `2026-07-14 21:54:13`

**変更概要**

release/13.4 の内容を main に同期するリコンシリエーション PR です。実質的な差分はなく、リリースブランチの修正履歴を main に揃える目的です。

<details><summary>コミット (26 件)</summary>

- `e2c6486` Increment patch version to 13.4.1 (#17819)
- `7535685` [release/13.4] Add Aspire CLI npm package release integration (#17766)
- `b4653b3` Remove duplicated profiles block from empty C# AppHost aspire.config.…
- `62d6f98` [release/13.4] Defer explicit-start DCP registration (#17826)
- `cf985fa` [release/13.4] Add proxyless endpoint on-demand allocation (#17859)
- `a5e571b` [release/13.4] Fix Redis persistent lifetime startup (#17850)
- `d7d0b67` Bump release patch version to 13.4.2 (#17876)
- `7b53b8c` [release/13.4] Add persistent container test coverage (#17884)
- _... 他 18 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

差分のない同期 PR のため、新しい API や破壊的変更はありません。含まれるリリース履歴には patch version、DCP 登録、Redis 永続化などの修正が含まれます。

**既存利用者への影響**

利用者側の移行は不要です。13.4 系を利用している場合は、main への同期で取り込まれた修正内容をリリースノートとして確認してください。

### [#18766](https://github.com/microsoft/aspire/pull/18766) — Add polyglot code-generator signal to pr-docs-check catalog

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +155 / -5
- マージ日時 (UTC): `2026-07-14 17:10:11`

**変更概要**

pr-docs-check のシグナルカタログに polyglot code-generator を追加しました。パス判定と rename 対応を調整し、検出ロジックの単体テストを追加しています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/pr-docs-check/compute_signals.py` | 39 | 3 |
| `.github/workflows/pr-docs-check/test_compute_signals.py` | 116 | 2 |

</details>

<details><summary>コミット (4 件)</summary>

- `77d9256` Add polyglot code-generator signal to pr-docs-check catalog
- `4664fe1` Potential fix for pull request finding
- `e0e3bb4` Potential fix for pull request finding
- `77fd6b6` Match previous_filename for renamed files in Group A path triggers

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CI の文書チェック用シグナルとテストだけが変更対象です。製品 API や利用者向けランタイム契約の変更はありません。

**既存利用者への影響**

利用者の移行は不要です。リポジトリの文書チェックを拡張する場合は新しいシグナル名とパス判定を利用できます。

### [#18760](https://github.com/microsoft/aspire/pull/18760) — Start versioned Native AOT dashboard backend

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +2357 / -51
- マージ日時 (UTC): `2026-07-14 15:38:54`

**変更概要**

Dashboard の Native AOT バックエンドをバージョン付き構成として追加しました。リソーススナップショット、SignalR による更新配信、Deck との能力ネゴシエーションを実装しています。Dashboard の新しい実行経路が対象です。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 2 | 0 |
| `src/Aspire.Dashboard.Backend/Aspire.Dashboard.Backend.csproj` | 28 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardApiContract.cs` | 113 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardBackendApplication.cs` | 83 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardBackendJsonSerializerContext.cs` | 16 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardDevelopmentAccessPolicy.cs` | 64 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardResourceSnapshotService.cs` | 466 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardResourcesHub.cs` | 14 | 0 |
| `src/Aspire.Dashboard.Backend/Program.cs` | 7 | 0 |
| `src/Aspire.Dashboard.Backend/README.md` | 50 | 0 |
| `src/Aspire.Deck/CONTRACT.md` | 62 | 0 |
| `src/Aspire.Deck/ui/README.md` | 33 | 0 |
| `src/Aspire.Deck/ui/e2e/http-backend-features.ts` | 1 | 0 |
| `src/Aspire.Deck/ui/e2e/http-backend.spec.ts` | 189 | 4 |
| `src/Aspire.Deck/ui/e2e/live/stress.spec.ts` | 4 | 2 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `38596f8` Add versioned Native AOT dashboard backend
- `3b88a25` Negotiate dashboard AOT configuration in Deck
- `8303e53` Add AOT dashboard resource snapshots
- `cceb53b` Align AOT resource snapshots with Deck
- `602e06d` Route Deck resources through AOT backend
- `a857824` Stream AOT dashboard resources with SignalR
- `a4ef676` Consume AOT resource updates over SignalR
- `dd88313` Share the live resource subscription
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard API contract とリソーススナップショット、開発用アクセス制御が追加され、AOT 用のシリアライズコンテキストが導入されています。契約バージョンの不一致には注意が必要です。

**既存利用者への影響**

Native AOT 経路を選択する場合は、Deck とバックエンドを対応するバージョンで同時更新してください。従来経路からの強制移行はありません。

### [#18452](https://github.com/microsoft/aspire/pull/18452) — Forward EF migration connection string to the dotnet-ef tool resource

- 作者: Copilot / 状態: MERGED
- ラベル: `area-integrations` `entityframework`
- 変更行数: +69 / -6
- マージ日時 (UTC): `2026-07-14 01:37:05`

**変更概要**

EF の migration resource に接続文字列を転送し、`dotnet-ef` ツールから対象データベースへ接続できるようにしました。AppHost 拡張と回帰テスト、SQL Server のサンプルを更新しています。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.AppHost/AppHost.cs` | 2 | 0 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/Db1Migrations/20260511233127_Initial.Designer.cs` | 1 | 1 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/Db1Migrations/20260511233127_Initial.cs` | 1 | 1 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/Db1Migrations/MyDb1ContextModelSnapshot.cs` | 1 | 1 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/Db2Migrations/20260511233305_Initial.Designer.cs` | 1 | 1 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/Db2Migrations/20260511233305_Initial.cs` | 1 | 1 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/Db2Migrations/MyDb2ContextModelSnapshot.cs` | 1 | 1 |
| `playground/SqlServerEndToEnd/SqlServerEndToEnd.Common/SqlServerEndToEnd.Common.csproj` | 1 | 0 |
| `src/Aspire.Hosting.EntityFrameworkCore/EFResourceBuilderExtensions.cs` | 17 | 0 |
| `tests/Aspire.Hosting.EntityFrameworkCore.Tests/AddEFMigrationsTests.cs` | 43 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `ca3a620` Initial plan
- `6786c7d` Forward EF migration resource env (connection string) to dotnet-ef to…
- `50220b0` Add regression test for EF tool connection string forwarding
- `6b94867` Update SqlServerEndToEnd files
- `82bd75e` React to review comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

EF resource builder の migration 実行経路に環境変数の転送処理が追加されました。既存 API の概念を変えるものではなく、接続情報の引き渡しを補う修正です。

**既存利用者への影響**

EF migration resource を利用する場合は更新後に `dotnet-ef` 実行と接続文字列解決を確認してください。通常の Aspire 利用者に追加の移行作業はありません。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18356 | Merge release/13.4 to main after v13.4.6 release | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18356> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18778 | Add Radius recipe parameters and secret management | open | nellshamrell | <https://github.com/microsoft/aspire/pull/18778> |
| PR | #18770 | Add preview Aspire.Mcp.Client integration | open | sinannar | <https://github.com/microsoft/aspire/pull/18770> |
| PR | #18768 | Persist Dashboard run history in SQLite | open | JamesNK | <https://github.com/microsoft/aspire/pull/18768> |
| PR | #18780 | Add Native AOT structured log streaming | closed | davidfowl | <https://github.com/microsoft/aspire/pull/18780> |
| PR | #18765 | Add Radius recipe parameters and secret management | closed | nellshamrell | <https://github.com/microsoft/aspire/pull/18765> |
| Issue | #18784 | CI lane "Deployment Environment Cleanup" red | open | radical | <https://github.com/microsoft/aspire/issues/18784> |
| Issue | #18783 | [CI Failure] .NET install script download fails with HTTP 503 Service Unavailable from builds.dotnet.microsoft.com | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18783> |
| Issue | #18782 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18782> |
| Issue | #18779 | `aspire ps --format Json` hangs in PowerShell pipelines because an orphaned `aspire-managed` helper holds stdout open | open | edumserrano | <https://github.com/microsoft/aspire/issues/18779> |
| Issue | #18777 | Scheduled workflow failing: Deployment Cleanup | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18777> |
| Issue | #18776 | aspire stop silently skips the kill and falsely reports success when the process start-time check mismatches (WSL2 clock jump after host sleep/resume) | open | ppsplus-bradh | <https://github.com/microsoft/aspire/issues/18776> |
| Issue | #18775 | Docker Compose publisher does not preserve colon-delimited entries in existing .env files | open | NabilParwez | <https://github.com/microsoft/aspire/issues/18775> |
| Issue | #18772 | aspire-apphost-singlefile template contains legacy apphost.run.json | open | Fantoom | <https://github.com/microsoft/aspire/issues/18772> |
| Issue | #18769 | [AspireE2E]Aspire Dashboard: `aspire-managed.exe` remains running after dashboard shutdown causing "configured port is already in use" on next launch | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18769> |
| Issue | #18670 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18670> |
| Issue | #18620 | Keycloak SSL errors | closed | MeikelLP | <https://github.com/microsoft/aspire/issues/18620> |
| Issue | #18375 | `db1-migrations` in SQL Playground fails to start | closed | afscrome | <https://github.com/microsoft/aspire/issues/18375> |
