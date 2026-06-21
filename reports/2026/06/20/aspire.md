# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 31 |
| オープン中の新規 PR     | 21 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 26 |
| クローズ Issue          | 24 |
| 主要コントリビューター  | JamesNK, mitchdenny, adamint, joperezr, radical, dependabot[bot] |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18270](https://github.com/microsoft/aspire/issues/18270) — C# AppHosts will require the aspire CLI to run （Issue / closed / davidfowl）
  C# AppHost を実行する開発者/CI は、`aspire` CLI の導入・バージョン管理・実行パス解決を前提にした運用へ切り替える必要があります。
- **⚠ 破壊的変更** [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle （PR / merged / DamianEdwards）
  AppHost の既定実行経路が CLI バンドル優先に変わるため、独自起動スクリプトやツールチェーン固定運用は互換性確認が必須です。
- **⚠ 破壊的変更** [#17296](https://github.com/microsoft/aspire/issues/17296) — aspire new --language csharp does not pin `channel` / `sdkVersion` in aspire.config.json, breaking subsequent command coherence （Issue / closed / radical）
  `aspire.config.json` の `channel` / `sdkVersion` を明示固定していないプロジェクトは、コマンド整合性崩れを避けるため設定の固定化を確認してください。

## このリポジトリの要点

この期間の中核は、AppHost 実行基盤を CLI バンドル前提に寄せる **破壊的変更**（#18188）で、C# AppHost の実行前提そのものが更新されました。  
あわせて VS Code 拡張の誤アップグレード警告修正（#18358）や isolated モードのポート衝突修正（#18341）が入り、開発体験と安定性が改善されています。  
依存更新（#18346）とバージョン繰り上げ（#18343）は追随メンテ中心ですが、CLI 周辺の実行契約変更は次回も継続監視が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +661 / -57
- マージ日時 (UTC): `2026-06-19 04:59:48`

**変更概要**

AppHost の既定実行を「ローカル環境の CLI 検出」から「CLI バンドル利用」へ寄せるための中核 PR です。  
`ResolveAspireCliBundle` タスク追加と AppHost targets/props 更新により、実行時の CLI 解決経路が一元化されました。  
`DotNetCliRunner` / `DotNetAppHostProject` と E2E・SDK テスト群が連動更新され、単一ファイル AppHost を含む起動シナリオを再定義しています。  
ラベルどおり **破壊的変更**で、既存の CLI 解決前提や起動フックに影響します。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/list-of-diagnostics.md` | 2 | 0 |
| `src/Aspire.AppHost.Sdk/SDK/Sdk.in.targets` | 1 | 0 |
| `src/Aspire.Cli/DotNet/DotNetCliRunner.cs` | 11 | 0 |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 22 | 10 |
| `src/Aspire.Hosting.AppHost/build/Aspire.Hosting.AppHost.in.targets` | 10 | 1 |
| `src/Aspire.Hosting.AppHost/build/Aspire.Hosting.AppHost.props` | 1 | 0 |
| `src/Aspire.Hosting.Tasks/ResolveAspireCliBundle.cs` | 292 | 8 |
| `tests/Aspire.Cli.EndToEnd.Tests/BundleSmokeTests.cs` | 2 | 12 |
| `tests/Aspire.Cli.EndToEnd.Tests/SingleFileAppHostInitDotnetRunTests.cs` | 3 | 7 |
| `tests/Aspire.Cli.Tests/DotNet/DotNetCliRunnerTests.cs` | 26 | 0 |
| `tests/Aspire.Cli.Tests/Projects/DotNetAppHostProjectTests.cs` | 1 | 0 |
| `tests/Aspire.Hosting.Sdk.Tests/AppHostSdkTargetsTests.cs` | 17 | 1 |
| `tests/Aspire.Hosting.Tests/Directory.Build.props` | 2 | 0 |
| `tests/Aspire.Hosting.Tests/MSBuildTests.cs` | 267 | 18 |
| `tests/Shared/TemplatesTesting/BuildEnvironment.cs` | 4 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `9db0baa` Default AppHosts to CLI bundle
- `e561d8e` Fix CLI bundle test environments
- `6d67643` Address PR feedback
- `3da95d0` Fix text
- `865e48b` Update single-file AppHost E2E readiness check
- `4bed4d0` Fix comment style: don't compare against old behavior in test
- `dae6efc` Prefer newest versioned CLI bundle
- `3b1bc1e` Fix CLI bundle default resolution

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`Aspire.Hosting.Tasks/ResolveAspireCliBundle.cs` の大規模追加により、CLI バンドル解決という新しい内部抽象が導入されています。  
`Aspire.Hosting.AppHost.in.targets` / `props` と `DotNetAppHostProject` の更新から、AppHost 実行時の CLI 選択ロジック（最新版バンドル優先）がビルド契約に組み込まれたことが分かります。  
⚠ **破壊的変更**: 従来の「グローバル aspire CLI 直接利用」前提の実行環境やカスタムフックは、同じ挙動を期待できない可能性があります。

**既存利用者への影響**

既存 AppHost は、CLI バンドル解決が可能な環境（取得経路・権限・キャッシュ）になっているかを確認してください。  
独自の CLI パス固定や起動ラッパーを使っている場合は、バンドル優先の挙動に合わせた調整が必要です。

### [#18358](https://github.com/microsoft/aspire/pull/18358) — Stop false Aspire CLI upgrade warning in VS Code Extension

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +106 / -30
- マージ日時 (UTC): `2026-06-20 05:12:44`

**変更概要**

VS Code 拡張で、CLI が最新でも誤って「アップグレードが必要」と表示される問題を止める修正です。  
アップグレード促しを互換性エラー時に限定し、一般的な AppHost エラー時はより汎用的な案内へ分岐するよう整理されています。  
`AppHostDataRepository` と関連テスト、ローカライズ文字列が更新され、誤警告による操作ノイズを減らす内容です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/loc/xlf/aspire-vscode.xlf` | 3 | 0 |
| `extension/package.json` | 6 | 1 |
| `extension/package.nls.json` | 1 | 0 |
| `extension/src/test-e2e/packageSurface.e2e.test.ts` | 2 | 1 |
| `extension/src/test/appHostDataRepository.test.ts` | 43 | 16 |
| `extension/src/test/packageManifest.test.ts` | 4 | 0 |
| `extension/src/views/AppHostDataRepository.ts` | 47 | 12 |

</details>

<details><summary>コミット (8 件)</summary>

- `0e98a78` fix(vscode-extension): gate CLI upgrade prompt to compatibility errors
- `e0ee911` chore(vscode-extension): clarify generic AppHost error guidance
- `6b6c95a` test(vscode-extension): update welcome clause expectations
- `68c6e76` refactor(vscode-extension): remove unused generic welcome export
- `82c9cfe` chore(vscode-extension): regenerate XLF for generic error welcome
- `e22facd` refactor(vscode-extension): remove unused ps compatibility tracking
- `cde4ef4` Fix generic AppHost describe failures
- `a78f76a` Merge main into Aspire panel upgrade prompt fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

主変更は `AppHostDataRepository.ts` の判定ロジックとメッセージ配線で、外部公開 API の追加/削除は見当たりません。  
`package.json` / `package.nls.json` / XLF 更新から、表示文言とコマンド面の整合性を伴う UI 振る舞い修正であることが確認できます。  
破壊的変更はなく、拡張機能内部ロジックの品質改善です。

**既存利用者への影響**

利用者側のマイグレーションは不要です。  
ただし、誤警告テキストを前提にした手順書やサポート案内がある場合は、表示変更に合わせて更新してください。

### [#18355](https://github.com/microsoft/aspire/pull/18355) — Simplify lambda to method group in OtlpResource.AddMetrics (IDE0200)

- 作者: sebastienros / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-06-20 01:41:15`

**変更概要**

`OtlpResource.AddMetrics` 内のラムダをメソッドグループへ置き換えた、IDE0200 対応の小規模リファクタリングです。  
可読性向上と静的解析警告の解消が主目的で、機能追加や仕様変更はありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Otlp/Model/OtlpResource.cs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `3f9592f` Simplify lambda to method group in OtlpResource.AddMetrics

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`OtlpResource.cs` の 1 行差分のみで、呼び出しシグネチャ・型契約・公開 API への変更はありません。  
新規抽象の導入もなく、コードスタイル統一の範囲にとどまります。

**既存利用者への影響**

マイグレーションは不要です。既存利用者への実質影響はありません。

### [#18346](https://github.com/microsoft/aspire/pull/18346) — Bump the uv group across 1 directory with 6 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `python:uv`
- 変更行数: +124 / -124
- マージ日時 (UTC): `2026-06-20 01:52:29`

**変更概要**

Dependabot による `uv` グループ一括更新で、`FoundryAgentBasic` playground のロックファイル依存を最新化した PR です。  
変更対象は `uv.lock` のみですが、6 依存の解決結果が更新され、再現ビルドの基準が新しい解像度に切り替わります。  
機能追加ではなく、依存保守・セキュリティ追随を目的としたメンテナンス更新です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/FoundryAgentBasic/app/uv.lock` | 124 | 124 |

</details>

<details><summary>コミット (1 件)</summary>

- `217f105` Bump the uv group across 1 directory with 6 updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`playground/FoundryAgentBasic/app/uv.lock` の差し替えのみで、アプリコードや公開 API シグネチャの変更はありません。  
依存解決結果（トランジティブ含む）が更新されるため、実行時挙動は依存先変更に伴って間接的に変化し得ます。  
破壊的 API 変更は確認できません。

**既存利用者への影響**

playground を使う開発者は `uv sync` 等でロックファイル更新を取り込み、ローカル環境の依存差分を解消してください。  
本番向けコードへの直接マイグレーションは通常不要です。

### [#18343](https://github.com/microsoft/aspire/pull/18343) — Increment patch version from 5 to 6

- 作者: joperezr / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-06-19 19:41:24`

**変更概要**

`eng/Versions.props` のパッチ番号を 5 から 6 へ更新する、リリース管理上のバージョン繰り上げ PR です。  
機能差分よりも、成果物識別と配布バージョン整合性を維持するための変更になります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Versions.props` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `75b2a81` Increment patch version from 5 to 6

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `eng/Versions.props` のバージョン値のみで、コード/API には触れていません。  
新規抽象やシグネチャ変更、破壊的変更はありません。

**既存利用者への影響**

マイグレーションは不要です。  
ただしバージョン固定で参照している場合は、パッチ更新を追従するかどうか依存管理ポリシーに合わせて判断してください。

### [#18341](https://github.com/microsoft/aspire/pull/18341) — [release/13.4] Fix resource service port collision in --isolated mode

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +282 / -24
- マージ日時 (UTC): `2026-06-19 18:24:47`

**変更概要**

`--isolated` モードで発生していた resource service のポート衝突を解消する修正です。  
`DashboardServiceHost` を中心に、固定ポート環境変数の扱いと動的ポート選択ロジックが見直されています。  
E2E と単体テストが追加され、複数 isolated インスタンス同時起動時の安定性を担保する方向です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/Dashboard/DashboardServiceHost.cs` | 64 | 19 |
| `tests/Aspire.Cli.EndToEnd.Tests/Helpers/CliE2EAutomatorHelpers.cs` | 8 | 4 |
| `tests/Aspire.Cli.EndToEnd.Tests/IsolatedInstancesOtelLogsTests.cs` | 107 | 0 |
| `tests/Aspire.Hosting.Tests/Dashboard/DashboardServiceHostTests.cs` | 67 | 0 |
| `tests/Aspire.Hosting.Tests/DistributedApplicationTests.cs` | 36 | 1 |

</details>

<details><summary>コミット (7 件)</summary>

- `b7e1a18` Add CLI E2E test for two isolated instances with distinct otel logs
- `90aeddd` Fix port conflicts in --isolated mode by clearing fixed port env vars
- `f695d86` Revert "Fix port conflicts in --isolated mode by clearing fixed port …
- `61a5b47` Use dynamic port for resource service endpoint when RandomizePorts is…
- `fc62622` Shell-quote apphost parameter in AspireStartAsync/StopAsync
- `ca066e6` Use DnsSafeHost for IPv6 parsing; use sentinel markers in E2E assertions
- `402468c` Extract ResolveEndpoint helper for unit testability

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ResolveEndpoint` ヘルパー抽出や `DashboardServiceHost` ロジック更新により、エンドポイント解決アルゴリズムがテスト可能な形で整理されています。  
CLI E2E ヘルパーと isolated ログ検証テスト追加から、起動/停止時の環境変数・引数解釈の実装契約が強化されたことが読み取れます。  
公開 API シグネチャの破壊的変更は確認できず、主に実行時挙動の安定化修正です。

**既存利用者への影響**

通常はマイグレーション不要で、`--isolated` 利用時のポート競合が減る改善を受け取れます。  
固定ポートを前提にした外部監視/連携スクリプトがある場合は、動的ポート選択に合わせて確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18332 | Fix resource service port collision in --isolated mode | JamesNK | <https://github.com/microsoft/aspire/pull/18332> |
| #18325 | fix(ci): quarantine job tolerates flaky test outcomes but still fails on infra errors | radical | <https://github.com/microsoft/aspire/pull/18325> |
| #18322 | Harden VS Code extension AppHost E2E paths | adamint | <https://github.com/microsoft/aspire/pull/18322> |
| #18316 | Register AppHostConnectionResolver in DI and inject via constructors | JamesNK | <https://github.com/microsoft/aspire/pull/18316> |
| #18314 | Replace direct AppHostServerSession.Start calls with IAppHostServerSessionFactory | JamesNK | <https://github.com/microsoft/aspire/pull/18314> |
| #18312 | Extract chart calculation logic into testable ChartDataCalculator type | JamesNK | <https://github.com/microsoft/aspire/pull/18312> |
| #18311 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18311> |
| #18310 | Assign deployment E2E test failure issues to @mitchdenny | mitchdenny | <https://github.com/microsoft/aspire/pull/18310> |
| #18308 | Suppress debugger/IDE execution for terminal-attached resources | mitchdenny | <https://github.com/microsoft/aspire/pull/18308> |
| #18307 | Disable daily AI credits guardrail for agentic workflows | joperezr | <https://github.com/microsoft/aspire/pull/18307> |
| #18304 | Fix flaky profiling tests by scoping ActivityListeners to specific instances | JamesNK | <https://github.com/microsoft/aspire/pull/18304> |
| #18303 | Add application icon to Aspire CLI and managed host processes | JamesNK | <https://github.com/microsoft/aspire/pull/18303> |
| #18298 | Resolve symlinks when matching AppHost socket for --apphost (#17618) | mitchdenny | <https://github.com/microsoft/aspire/pull/18298> |
| #18297 | Fail cleanly when AppHost selection needs a prompt in non-interactive mode (#17619) | mitchdenny | <https://github.com/microsoft/aspire/pull/18297> |
| #18292 | Fix ASPIREEXPORT001 false positive on C# 14 extension blocks | sebastienros | <https://github.com/microsoft/aspire/pull/18292> |
| #18259 | Make ResourceAnnotationCollection thread-safe | JamesNK | <https://github.com/microsoft/aspire/pull/18259> |
| #18220 | Update npm package README: TypeScript-only examples and standalone dashboard | adamint | <https://github.com/microsoft/aspire/pull/18220> |
| #18216 | Include concatenated certificate+key PEM file in TLS contexts | aradalvand | <https://github.com/microsoft/aspire/pull/18216> |
| #18176 | Update extension issue label references | adamint | <https://github.com/microsoft/aspire/pull/18176> |
| #18127 | feat(ci): select only affected tests and jobs per PR (audit mode) | radical | <https://github.com/microsoft/aspire/pull/18127> |
| #18107 | Rename resource 'Export JSON' action to 'View JSON' and clarify secret warning scope | nanookclaw | <https://github.com/microsoft/aspire/pull/18107> |
| #18089 | Redact secret parameter values from environment variables sent over the backchannel | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18089> |
| #17965 | Fix stale AppHost running state after debug session ends | ellahathaway | <https://github.com/microsoft/aspire/pull/17965> |
| #17857 | Fix MAUI iOS simulator launch in VS Code | adamint | <https://github.com/microsoft/aspire/pull/17857> |
| #17834 | Bump the npm_and_yarn group across 4 directories with 2 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/17834> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18370 | Make HiddenAnnotation public | open | afscrome | <https://github.com/microsoft/aspire/pull/18370> |
| PR | #18369 | Add WithHiddenOnCompletion() to installer resources | open | afscrome | <https://github.com/microsoft/aspire/pull/18369> |
| PR | #18368 | Group the selective-CI test-selector comment by trigger and lead with what runs | open | radical | <https://github.com/microsoft/aspire/pull/18368> |
| PR | #18367 | [automated] Unquarantine stable tests: StopAllAppHostsFromUnrelatedDirectory, ProxylessEndpointWorks, StartResourceForcesStart, TestServicesWithMultipleReplicas | open | Copilot | <https://github.com/microsoft/aspire/pull/18367> |
| PR | #18365 | Harden CLI parameter contracts and ExtensionInteractionService lifecycle | open | JamesNK | <https://github.com/microsoft/aspire/pull/18365> |
| PR | #18362 | [extension] Forward aspireCliExecutablePath as AspireCliPath for MSBuild bundle resolution (#18073) | open | adamint | <https://github.com/microsoft/aspire/pull/18362> |
| PR | #18361 | Make dashboard launch opt-in by default | open | adamint | <https://github.com/microsoft/aspire/pull/18361> |
| PR | #18360 | Gate AppHost dotnet run hook on Aspire CLI version | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/18360> |
| PR | #18357 | Update PackageValidationBaselineVersion to 13.4.6 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18357> |
| PR | #18356 | Merge release/13.4 to main after v13.4.6 release | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18356> |
| PR | #18353 | Extend AppHost debug startup timeout from VS Code | open | adamint | <https://github.com/microsoft/aspire/pull/18353> |
| PR | #18348 | Avoid running MSBuild during `aspire ls` AppHost discovery in the VS Code extension | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18348> |
| PR | #18340 | Detect workspace toolchain for nested TypeScript AppHosts | open | sebastienros | <https://github.com/microsoft/aspire/pull/18340> |
| PR | #18339 | [Automated] Update ATS API Surface Area | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18339> |
| PR | #18338 | Fix Windows Aspire CLI cmd shim resolution | open | adamint | <https://github.com/microsoft/aspire/pull/18338> |
| PR | #18331 | Add DNX AppHost CLI invocation opt-in | open | davidfowl | <https://github.com/microsoft/aspire/pull/18331> |
| PR | #18328 | Follow-up test improvements for Aspire.Hosting.Maui.Tests | open | Copilot | <https://github.com/microsoft/aspire/pull/18328> |
| PR | #18320 | fix(pr-docs-check): remove duplicate aspire.dev checkout that broke create_pull_request branch pinning | open | radical | <https://github.com/microsoft/aspire/pull/18320> |
| PR | #18317 | Fix SDK check after private SDK install by using runtime selector | open | CloudColonel | <https://github.com/microsoft/aspire/pull/18317> |
| PR | #18315 | Restore commit SHA in aspire --version output | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18315> |
| PR | #18313 | Hide parameters from resource graph view and type filter | open | JamesNK | <https://github.com/microsoft/aspire/pull/18313> |
| PR | #18351 | Update FoundryAgentBasic uv lockfile for verified dependabot bump | closed | Copilot | <https://github.com/microsoft/aspire/pull/18351> |
| PR | #18349 | Deduplicate Deployment E2E nightly-failure issue creation | closed | Copilot | <https://github.com/microsoft/aspire/pull/18349> |
| PR | #18327 | Add watch tool to Aspire bundle | closed | karolz-ms | <https://github.com/microsoft/aspire/pull/18327> |
| PR | #18239 | Repair incomplete bundle cache layouts | closed | adamint | <https://github.com/microsoft/aspire/pull/18239> |
| Issue | #18366 | [automated] Unquarantine stable tests | open | radical | <https://github.com/microsoft/aspire/issues/18366> |
| Issue | #18364 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18364> |
| Issue | #18363 | [Deployment E2E] Nightly test failure - 2026-06-20 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18363> |
| Issue | #18359 | AppHost SDK dotnet run hook can recurse with older Aspire CLI on PATH | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/18359> |
| Issue | #18354 | [automated] Unquarantine stable tests | closed | radical | <https://github.com/microsoft/aspire/issues/18354> |
| Issue | #18352 | AspireAiMonitor — work ledger | open | radical | <https://github.com/microsoft/aspire/issues/18352> |
| Issue | #18350 | [automated] microsoft/aspire#18346 — **verify & merge** the `dependabot` `uv` group bump (6  | closed | radical | <https://github.com/microsoft/aspire/issues/18350> |
| Issue | #18347 | Make CLI telemetry tag collection parallel to command processing | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/18347> |
| Issue | #18345 | AppHost hangs at startup in non-interactive / headless environments with no diagnostic output | closed | ivanball | <https://github.com/microsoft/aspire/issues/18345> |
| Issue | #18344 | Add in-product "provide feedback" UX | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/18344> |
| Issue | #18342 | Command Input inconsistency between Dashboard & CLI | open | afscrome | <https://github.com/microsoft/aspire/issues/18342> |
| Issue | #18337 | VS Code Aspire panel ask to upgrade Aspire CLI while cli already up to date | closed | TechWatching | <https://github.com/microsoft/aspire/issues/18337> |
| Issue | #18336 | aka ms diagnostics link unresolved | open | stuartlang-je | <https://github.com/microsoft/aspire/issues/18336> |
| Issue | #18335 | AzureSqlDatabase/SqlServerDatabase collation | open | The3G | <https://github.com/microsoft/aspire/issues/18335> |
| Issue | #18334 | EF migration bundle docs say WaitFor(db) waits for database health, but Docker Compose publish uses service_started | open | littletoxic | <https://github.com/microsoft/aspire/issues/18334> |
| Issue | #18333 | `winget install aspire` | closed | afscrome | <https://github.com/microsoft/aspire/issues/18333> |
| Issue | #18330 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18330> |
| Issue | #18329 | [Deployment E2E] Nightly test failure - 2026-06-19 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18329> |
| Issue | #18326 | Follow-up test improvements for Aspire.Hosting.Maui.Tests (#14768) | open | radical | <https://github.com/microsoft/aspire/issues/18326> |
| Issue | #18324 | Agents should prefer VS Code APIs over the Aspire CLI when the extension is active | open | adamint | <https://github.com/microsoft/aspire/issues/18324> |
| Issue | #18321 | Kubernetes: GetEndpoint uses wrong port | open | WolfspiritM | <https://github.com/microsoft/aspire/issues/18321> |
| Issue | #18319 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18319> |
| Issue | #18318 | Improve default managed identities handling | open | aelij | <https://github.com/microsoft/aspire/issues/18318> |
| Issue | #18309 | [Deployment E2E] Nightly test failure - 2026-06-18 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18309> |
| Issue | #18306 | OTLP env vars silently dropped from ConfigMap when a project is referenced by others (Kubernetes publisher) | open | ximenchuifeng | <https://github.com/microsoft/aspire/issues/18306> |
| Issue | #18305 | update-azure-vm-sizes.yml workflow failing at Azure Login — AZURE_CREDENTIALS empty/expired | open | radical | <https://github.com/microsoft/aspire/issues/18305> |
| Issue | #18301 | [aw] PR Documentation Check exceeded daily AI credits budget | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18301> |
| Issue | #18270 | C# AppHosts will require the aspire CLI to run | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18270> |
| Issue | #18268 | Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL 13.4.5 fails on Nuget restore | closed | roycornelissen | <https://github.com/microsoft/aspire/issues/18268> |
| Issue | #18267 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18267> |
| Issue | #18235 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18235> |
| Issue | #18215 | Add a concatenated certificate+key PEM file to TLS paths | closed | aradalvand | <https://github.com/microsoft/aspire/issues/18215> |
| Issue | #18120 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18120> |
| Issue | #17946 | VS Code extension shows AppHost as running after it has stopped | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17946> |
| Issue | #17853 | VS Code Aspire debug uses CoreCLR debugger for MAUI iOS simulator resource | closed | Dreamescaper | <https://github.com/microsoft/aspire/issues/17853> |
| Issue | #17750 | Lift a canonical CLI informational version onto CliExecutionContext | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17750> |
| Issue | #17690 | Dashboard: "Export JSON" resource action opens Text Visualizer instead of direct download; name and sensitive-value message need improvement | closed | joperezr | <https://github.com/microsoft/aspire/issues/17690> |
| Issue | #17619 | [bug] aspire describe --non-interactive crashes with 'An unexpected error occurred' when no AppHost in cwd | closed | adamint | <https://github.com/microsoft/aspire/issues/17619> |
| Issue | #17618 | [bug] aspire describe --apphost fails to find running AppHost when path traverses a symlink (e.g. /tmp on macOS) | closed | adamint | <https://github.com/microsoft/aspire/issues/17618> |
| Issue | #17616 | [bug] `aspire describe --format json` exposes plaintext values of secret parameters in dependent resources' env vars | closed | adamint | <https://github.com/microsoft/aspire/issues/17616> |
| Issue | #17604 | ASPIREEXPORT001 flagging 'extension' keyword-based extension methods as invalid | closed | kieronlanning | <https://github.com/microsoft/aspire/issues/17604> |
| Issue | #17550 | Decouple Aspire CLI channel identity from build-time AspireCliChannel baking (enable staging→stable promotion without rebuild) | closed | joperezr | <https://github.com/microsoft/aspire/issues/17550> |
