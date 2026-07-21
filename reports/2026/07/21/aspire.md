# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 14 |
| クローズ Issue          | 10 |
| 主要コントリビューター  | mitchdenny, dotnet-maestro[bot], joperezr, danegsta, dependabot[bot], aspire-repo-bot[bot] |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18270](https://github.com/microsoft/aspire/issues/18270) — C# AppHosts will require the aspire CLI to run （Issue / closed / davidfowl）
  C# AppHost の既定が CLI bundle 解決へ変わるため、IDE・CI・テスト環境に Aspire CLI を導入してください。未導入時は `ASPIRE009`、一時的な旧経路への opt-out は `AspireUseCliBundle=false` と `ASPIRE010` の対象です。
- **⚠ 破壊的変更** [#18114](https://github.com/microsoft/aspire/issues/18114) — `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore （Issue / closed / mitchdenny）
  daily など非既定 channel に固定した polyglot AppHost 利用者は、修正版 CLI へ更新して `aspire add` が固定 channel の package を選び、restore できることを確認してください。
- **⚠ セキュリティ** [#18812](https://github.com/microsoft/aspire/pull/18812) — [auto-sec] Consolidate aspire dependency security remediations （PR / merged / IEvangelist）
  Aspire リポジトリの playground を利用・派生している開発者は、`mcp` 1.28.1、Pygments 2.20.0、Jackson Databind 2.21.5 を含む更新を取り込んでください。
- **⚠ セキュリティ** [#18484](https://github.com/microsoft/aspire/issues/18484) — aspire start process remains vulnerable to launcher process group cleanup （Issue / closed / davidfowl）
  agent / CI から `aspire start` をバックグラウンド実行する利用者は、修正版へ更新し、launcher の process-group cleanup 後も AppHost が継続することを確認してください。

## このリポジトリの要点

依存関係のセキュリティ修正 [#18812](https://github.com/microsoft/aspire/pull/18812) と DCP 0.25.8 への更新 [#18836](https://github.com/microsoft/aspire/pull/18836) が入り、CLI・ローカル orchestration の保守が進みました。EF Core migration bundle の実デプロイ E2E、Homebrew 6.0.11 対応、`aspire start` の detached process 改善など、公開 API よりも配布・デプロイ・CI の信頼性向上が中心です。C# AppHost の CLI bundle 既定化は環境前提を変えるため、IDE / CI への Aspire CLI 配置を継続して確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18812](https://github.com/microsoft/aspire/pull/18812) — [auto-sec] Consolidate aspire dependency security remediations

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations` `automated-security`
- 変更行数: +13 / -7
- マージ日時 (UTC): `2026-07-20 18:39:04`

**変更概要**

Aspire リポジトリ内で検出された複数の Dependabot security alert を、単一の低リスク remediation PR に集約しました。FoundryAgentBasic playground の `mcp` を 1.28.1、Python uvicorn playground の Pygments を 2.20.0、Postgres E2E Java service の Jackson Databind を 2.21.5 へ更新しています。high / medium を含む alert 群を解消し、重複する Dependabot PR を置き換えます。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/FoundryAgentBasic/app/uv.lock` | 9 | 3 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.JavaService/pom.xml` | 1 | 1 |
| `playground/python/uvicorn_app/uv.lock` | 3 | 3 |

</details>

<details><summary>コミット (2 件)</summary>

- `7008b59` [auto-sec] remediate mcp and pygments dependabot alerts
- `052befd` Bump com.fasterxml.jackson.core:jackson-databind

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や Aspire 本体の実行コードに変更はありません。変更範囲は 2 つの Python lockfile と 1 つの playground 用 Maven `pom.xml` に限定され、`mcp`、Pygments、Jackson Databind の依存バージョンだけを更新しています。

**既存利用者への影響**

通常の Aspire 利用者に移行は不要です。該当 playground をコピー・派生している場合は lockfile / Maven dependency を更新してください。

### [#18836](https://github.com/microsoft/aspire/pull/18836) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-20 22:22:59`

**変更概要**

Aspire が同梱する Microsoft Developer Control Plane（DCP）を build 0.25.7 から 0.25.8 へ更新しました。macOS x64 / Arm64、Linux glibc / musl x64 / Arm64、Windows x64 / Arm64 の全 runtime package が同じ build に揃えられています。ローカル resource orchestration の実装更新を Aspire に取り込む codeflow 変更です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `952b836` Update dependencies from https://github.com/microsoft/dcp build 0.25.8

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Aspire の公開 API シグネチャ変更はなく、`eng/Version.Details.xml` と `eng/Versions.props` の DCP package version / commit pin のみを更新しています。DCP 自体の runtime behavior は 0.25.8 の内容に追随します。

**既存利用者への影響**

利用側のコード移行は不要です。プロセス起動や resource lifecycle に依存する自動化は、Aspire 更新後に smoke test を実施してください。

### [#18835](https://github.com/microsoft/aspire/pull/18835) — Fix Aspire Team App light mode rendering

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +49 / -30
- マージ日時 (UTC): `2026-07-20 23:39:29`

**変更概要**

Copilot app が light mode のときも Aspire Team App canvas が dark-only palette で描画される問題を修正しました。raw neutral color ではなく host の semantic theme token を使い、standalone rendering 用の light fallback、リンク、signal pill、enterprise badge の contrast を調整しています。canvas は設定不要で host の light / dark appearance に追従します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/extensions/aspire-team-app/render.mjs` | 37 | 29 |
| `.github/extensions/aspire-team-app/render.test.mjs` | 12 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `cbeafeb` Fix Aspire team app light theme
- `18ea095` Address light theme review feedback
- `2b45f35` Improve enterprise badge contrast
- `8b4c80c` Clarify pill contrast fallback comment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Aspire 製品の公開 API 変更はありません。`.github/extensions/aspire-team-app/render.mjs` の色解決を semantic host token ベースへ変更し、renderer test に light fallback と raw palette 非依存の検証を追加しています。

**既存利用者への影響**

利用者の設定変更は不要です。最新版 canvas を開き直すと、現在の Copilot app theme に自動で一致します。

### [#18825](https://github.com/microsoft/aspire/pull/18825) — Add EF Core deployment E2E coverage

- 作者: mitchdenny / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +322 / -0
- マージ日時 (UTC): `2026-07-20 04:57:47`

**変更概要**

EF Core migration bundle の単体テストだけでは確認できなかった、Aspire CLI publish / deploy 境界を Docker Compose で end-to-end 検証するテストを追加しました。PostgreSQL と `DbContext` を含むアプリを生成し、connection string が manifest placeholder の段階で migration container を作成・deploy します。migration 完了順序、container の正常終了、API からの schema / seed data 読み取り、失敗時 cleanup まで確認します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.EndToEnd.Tests/EntityFrameworkCoreDeploymentTests.cs` | 322 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `a0d2e0c` Add EF Core deployment E2E coverage
- `9400efa` Harden EF deployment E2E verification
- `cd126c8` Make EF deployment test setup deterministic

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や production code の変更はありません。`EntityFrameworkCoreDeploymentTests.cs` に 322 行の CLI E2E coverage を追加し、`aspire deploy` が design-time connection string override なしで migration bundle を扱える契約を固定しています。Azure deployment coverage は別途継続課題です。

**既存利用者への影響**

既存利用者の移行は不要です。EF Core migration bundle を使うチームにとっては、Docker Compose deploy 経路の回帰防止が強化されます。

### [#18820](https://github.com/microsoft/aspire/pull/18820) — Fix Homebrew cask validation with generated tap templates

- 作者: adamint / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +39 / -2
- マージ日時 (UTC): `2026-07-17 23:37:08`

**変更概要**

Homebrew 6.0.11 の `brew tap-new` が生成する README / CI workflow の不正な `options` key により、Aspire cask 自体とは無関係に tap syntax validation が失敗する問題を修正しました。検証用の一時 tap から Homebrew 生成テンプレートを削除してから `aspire.rb` を配置し、cask-only tap として style、syntax、audit、install を検証します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/homebrew/validate-cask-artifact.sh` | 6 | 1 |
| `tests/Aspire.Acquisition.Tests/Scripts/PRScriptInstallerModeTests.cs` | 33 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `bd159ce` Fix Homebrew cask tap validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。`eng/homebrew/validate-cask-artifact.sh` の一時 tap 準備処理と acquisition test のみを変更し、Homebrew が生成した補助ファイルを検証対象から除外しています。

**既存利用者への影響**

Aspire 利用者の移行は不要です。リリース／acquisition CI で Homebrew 6.0.11 を使う場合の誤検出が解消されます。

### [#18813](https://github.com/microsoft/aspire/pull/18813) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-18 00:03:03`

**変更概要**

Aspire が同梱する DCP を build 0.25.6 から 0.25.7 へ更新した codeflow PR です。macOS、Linux、Windows の x64 / Arm64 と Linux musl を含む全 runtime package の version / commit pin を同期しました。同じ対象期間内に [#18836](https://github.com/microsoft/aspire/pull/18836) で 0.25.8 へ再更新されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `b2915dc` Update dependencies from https://github.com/microsoft/dcp build 0.25.7

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はなく、`eng/Version.Details.xml` と `eng/Versions.props` の DCP package pin のみを更新しています。最終的な main の依存は後続 PR により 0.25.8 です。

**既存利用者への影響**

利用者の移行は不要で、この中間版を個別に取り込む必要もありません。Aspire の最新更新で DCP 0.25.8 を利用してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18811 | Update dotnet/extensions dependencies to 10.8.0 | joperezr | <https://github.com/microsoft/aspire/pull/18811> |
| #18807 | Update dependencies from latest .NET Servicing | joperezr | <https://github.com/microsoft/aspire/pull/18807> |
| #18806 | Bump the uv group across 3 directories with 10 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18806> |
| #18803 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18803> |
| #18737 | Add WithUniqueResourceNaming to opt into collision-free managed environment names | mitchdenny | <https://github.com/microsoft/aspire/pull/18737> |
| #18678 | Use DCP fork-process for Unix detached start | danegsta | <https://github.com/microsoft/aspire/pull/18678> |
| #18527 | Unify workspace/global AppHost describe --follow streaming | ellahathaway | <https://github.com/microsoft/aspire/pull/18527> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18839 | Retry transient Windows bundle directory moves | open | danegsta | <https://github.com/microsoft/aspire/pull/18839> |
| PR | #18837 | Bump the npm_and_yarn group across 8 directories with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18837> |
| PR | #18834 | Add Radius recipe parameters and secret management | open | nellshamrell | <https://github.com/microsoft/aspire/pull/18834> |
| PR | #18829 | Fix removing resources without telemetry | open | JamesNK | <https://github.com/microsoft/aspire/pull/18829> |
| PR | #18827 | Fix duplicate dashboard stopping message | open | JamesNK | <https://github.com/microsoft/aspire/pull/18827> |
| PR | #18816 | Add accessible name to Markdown copy button | open | adamint | <https://github.com/microsoft/aspire/pull/18816> |
| PR | #18809 | Draft mirror: Fix Radius service discovery for deployment testing | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18809> |
| PR | #18814 | Bump com.fasterxml.jackson.core:jackson-databind from 2.21.3 to 2.21.5 in /playground/PostgresEndToEnd/PostgresEndToEnd.JavaService in the maven group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18814> |
| PR | #18810 | Bump mcp from 1.23.3 to 1.28.1 in /playground/FoundryAgentBasic/app in the uv group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18810> |
| PR | #18808 | Draft mirror: Fix Radius service discovery for deployment testing | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18808> |
| Issue | #18838 | [CI Failure] Flaky: AppHostLauncherTests.LaunchDetachedAsync_CleansUpChildProcessWhenCancelledAfterStart fails intermittently on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18838> |
| Issue | #18833 | Add `aspire publish --verify` to detect drift between checked-in generated artifacts and the AppHost | open | IEvangelist | <https://github.com/microsoft/aspire/issues/18833> |
| Issue | #18832 | cleaner'*' | closed | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/18832> |
| Issue | #18831 | Dashboard attributes SQL spans/metrics to the wrong connection string resource when multiple resources point to the same server — peer resolution ignores db.namespace | open | CaptainJackCode | <https://github.com/microsoft/aspire/issues/18831> |
| Issue | #18830 | PublishAsMigrationBundle(publishContainer: true) defaults to a base image missing Microsoft.AspNetCore.App, crashing the container for Web SDK target projects | open | michaelmcneilnet | <https://github.com/microsoft/aspire/issues/18830> |
| Issue | #18828 | Provide client side intégration to Kafka with Dekaf | open | g7ed6e | <https://github.com/microsoft/aspire/issues/18828> |
| Issue | #18826 | aspire deploy failed | open | kong-cong | <https://github.com/microsoft/aspire/issues/18826> |
| Issue | #18824 | Structured logs should interpolate message templates. | open | Louis9902 | <https://github.com/microsoft/aspire/issues/18824> |
| Issue | #18823 | Persist Dashboard console logs independently of UI subscriptions | open | JamesNK | <https://github.com/microsoft/aspire/issues/18823> |
| Issue | #18822 | Support Oxc as an Alternative to ESLint for TypeScript Projects | open | rdev32 | <https://github.com/microsoft/aspire/issues/18822> |
| Issue | #18821 | [CI Failure] .NET install script download fails with SSL/TLS authentication error from builds.dotnet.microsoft.com on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18821> |
| Issue | #18818 | Homebrew 6.0.11 breaks Prepare Homebrew cask CI job | closed | adamint | <https://github.com/microsoft/aspire/issues/18818> |
| Issue | #18817 | Integrate Accessibility Agent with the Aspire Dashboard | closed | adamint | <https://github.com/microsoft/aspire/issues/18817> |
| Issue | #18815 | [CI Failure] Flaky: AspireServiceBusExtensionsTests.NamespaceWorksInConnectionStrings fails with Collection was modified in AzureEventSourceListener | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18815> |
| Issue | #18776 | aspire stop silently skips the kill and falsely reports success when the process start-time check mismatches (WSL2 clock jump after host sleep/resume) | closed | ppsplus-bradh | <https://github.com/microsoft/aspire/issues/18776> |
| Issue | #18722 | Multiple AzureContainerAppEnvironments in one resource group generate colliding managed-environment names | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18722> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #18579 | Single-file AppHost describe ignores the open file and resolves from `process.cwd()` | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/18579> |
| Issue | #18490 | suspended 'aspire-managed.exe' processes building up | closed | fowl2 | <https://github.com/microsoft/aspire/issues/18490> |
| Issue | #18484 | aspire start process remains vulnerable to launcher process group cleanup | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18484> |
| Issue | #18123 | Unify workspace/global AppHost `describe --follow` streaming in VS Code extension | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/18123> |
