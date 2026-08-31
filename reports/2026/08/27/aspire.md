# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 35 |
| オープン中の新規 PR     | 31 |
| クローズ (未マージ) PR  | 11 |
| 新規 Issue              | 56 |
| クローズ Issue          | 25 |
| 主要コントリビューター  | adamint, mitchdenny, JamesNK, aspire-repo-bot[bot], sebastienros, radical |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19638](https://github.com/microsoft/aspire/issues/19638) — [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests （Issue / open / github-actions[bot]）
  SQL Server Testcontainer を使う CI 担当者は CoInitializeSecurity 失敗の影響を確認し、EF Core / SqlClient 適合テストの実行環境を見直してください。
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / open / nellshamrell）
  Radius の recipe outputs を利用する開発者は、接続参照の生成方式と Radius 0.60 への更新による互換性を確認してください。
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 （PR / open / sebastienros）
  ConfluentKafka instrumentation を利用する利用者は、vendored 0.2.0-alpha.2 の計測データ形式と依存互換性を確認してください。
- **⚠ 破壊的変更** [#8984](https://github.com/microsoft/aspire/issues/8984) — Annotation-Based Open Discriminated Union for Aspire Resources （Issue / open / davidfowl）
  Aspire Resource の annotation-based open discriminated union を導入する設計者は、既存リソース注釈との互換性を確認してください。
- **非推奨/廃止** [#19715](https://github.com/microsoft/aspire/issues/19715) — Aspire CLI DNX acquisition failure hard to troubleshoot in CI （Issue / open / afscrome）
  CI で Aspire CLI の DNX 取得に依存する利用者は、取得失敗を診断できるログ・リトライ手順を確認してください。
- **非推奨/廃止** [#19627](https://github.com/microsoft/aspire/pull/19627) — Remove obsolete certificate service exception （PR / merged / ellahathaway）
  証明書サービス例外を前提にした Aspire CLI 利用者は、更新後に init / run の証明書処理が不要な前提へ移行できるか確認してください。

## このリポジトリの要点

Aspire では CLI の不要な証明書サービス例外を削除し、VS Code 拡張 v1.20.0 のリリース準備と Azure CLI 認証を修正しました。
Foundry モデル生成コードの更新や、DCP / Kubernetes / Dashboard 周辺の安定性改善も進んでいます。
Radius 接続参照や ConfluentKafka instrumentation の変更は、今後の互換性確認が必要な監視項目です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19627](https://github.com/microsoft/aspire/pull/19627) — Remove obsolete certificate service exception

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +17 / -206
- マージ日時 (UTC): `2026-08-25 15:11:01`

**変更概要**

Aspire CLI に残っていた証明書サービス例外と、利用されない証明書 trust リソースを削除しました。
init / run コマンド、テンプレート文言、ローカライズ資材を整理し、不要な証明書処理経路を取り除いています。
CLI のテンプレート生成と実行時の証明書設定が影響範囲です。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Certificates/CertificateService.cs` | 0 | 4 |
| `src/Aspire.Cli/Commands/InitCommand.cs` | 1 | 8 |
| `src/Aspire.Cli/Commands/RunCommand.cs` | 0 | 7 |
| `src/Aspire.Cli/Resources/TemplatingStrings.Designer.cs` | 0 | 9 |
| `src/Aspire.Cli/Resources/TemplatingStrings.resx` | 0 | 4 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.cs.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.de.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.es.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.fr.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.it.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.ja.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.ko.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.pl.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.pt-BR.xlf` | 0 | 5 |
| `src/Aspire.Cli/Resources/xlf/TemplatingStrings.ru.xlf` | 0 | 5 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `319422e` Remove obsolete certificate service exception
- `dbc44bc` Remove unused certificate trust resource

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

証明書サービス例外と関連リソースを削除するため、該当する CLI の内部挙動は変更されます。通常の公開 API シグネチャ変更はありません。

**既存利用者への影響**

証明書サービス例外を利用していたカスタムテンプレートは見直しが必要です。標準テンプレート利用者は通常移行不要です。

### [#19724](https://github.com/microsoft/aspire/pull/19724) — [review] Prepare VS Code extension release v1.20.0

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `needs-review`
- 変更行数: +9 / -2
- マージ日時 (UTC): `2026-08-26 21:21:29`

**変更概要**

VS Code 拡張 v1.20.0 のリリース内容を `extension/CHANGELOG.md` に生成しました。
変更はリリースノートのみで、拡張機能の実装 API や動作ロジックは変更していません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/CHANGELOG.md` | 9 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `379b984` Generate extension changelog for v1.20.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API や実装の変更はなく、v1.20.0 の変更履歴追記だけです。

**既存利用者への影響**

拡張利用者の移行は不要です。リリース時に変更履歴を参照できます。

### [#19718](https://github.com/microsoft/aspire/pull/19718) — Fix Azure CLI auth in Aspire Team App

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +25 / -0
- マージ日時 (UTC): `2026-08-26 20:09:29`

**変更概要**

Aspire Team App の Azure CLI 認証処理を修正し、認証情報の取得が安定するようにしました。
Azure DevOps 拡張コードとテストを追加し、認証経路の期待動作を明示しています。
Team App から Azure CLI を呼び出す利用者のログイン・接続が影響範囲です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/extensions/aspire-team-app/azure-devops.mjs` | 10 | 0 |
| `.github/extensions/aspire-team-app/azure-devops.test.mjs` | 15 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `d974083` Fix Azure CLI auth in Aspire Team App

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、Azure CLI 認証の内部処理とテストを追加しています。

**既存利用者への影響**

利用者側の移行は不要です。Team App の認証を再確認する場合は更新版でログインを試してください。

### [#19716](https://github.com/microsoft/aspire/pull/19716) — Change cron schedule to run weekly instead of daily

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-08-26 18:20:12`

**変更概要**

Microsoft Foundry Models の自動更新ワークフローを毎日実行から毎週実行へ変更しました。
変更は GitHub Actions の cron 設定のみで、モデル定義の内容はこの PR では変更していません。
自動更新の反映タイミングを運用・検証する担当者が影響を受けます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/update-ai-foundry-models.yml` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `cde2476` Change cron schedule to run weekly instead of daily

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API やモデル定義のシグネチャ変更はなく、ワークフローのスケジュールだけを変更しています。

**既存利用者への影響**

移行は不要ですが、モデル更新の反映が最大で週次になることを運用計画に織り込んでください。

### [#19705](https://github.com/microsoft/aspire/pull/19705) — [Automated] Update Microsoft Foundry Models

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-integrations` `area-engineering-systems`
- 変更行数: +4 / -4
- マージ日時 (UTC): `2026-08-26 18:06:20`

**変更概要**

Foundry の生成モデル一覧を更新し、`FoundryModel.Local.Generated.cs` の定義を最新化しました。
自動生成ファイルのモデル名・メタデータが更新対象で、ホスティング統合から利用されます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Foundry/FoundryModel.Local.Generated.cs` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `7882b6c` [Automated] Update Microsoft Foundry Models

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成コード内のモデル定義が差し替わっていますが、既存ホスティング API の形状変更は確認されません。

**既存利用者への影響**

通常は移行不要です。特定モデル名を固定している利用者は、利用可能なモデル一覧を確認してください。

### [#19702](https://github.com/microsoft/aspire/pull/19702) — Fix VS Code debugger guidance E2E contract

- 作者: adamint / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +4 / -21
- マージ日時 (UTC): `2026-08-26 17:22:17`

**変更概要**

VS Code デバッガー案内の E2E テスト契約を、現在の起動プロファイルと一致するよう修正しました。
古い edge case テストを整理し、E2E 起動プロファイルの検証を追加しています。
拡張機能のデバッグ案内そのものではなく、検証コードの整合性が主な影響範囲です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/test-e2e/edgeCases.e2e.test.ts` | 1 | 19 |
| `extension/src/test/e2eLaunchProfile.test.ts` | 3 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `2bfd30b` Fix debugger guidance E2E contract

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や拡張機能の利用契約は変更されず、E2E テストの期待値とケース構成だけを更新しています。

**既存利用者への影響**

利用者の移行は不要です。VS Code 拡張のデバッグ動作を検証する CI が安定します。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19698 | Harden Markdown URL validation | JamesNK | <https://github.com/microsoft/aspire/pull/19698> |
| #19690 | test: Quarantine flaky CI tests | radical | <https://github.com/microsoft/aspire/pull/19690> |
| #19677 | Fix broken `main` CI | radical | <https://github.com/microsoft/aspire/pull/19677> |
| #19672 | Prevent repeated Hot Reload advisory | adamint | <https://github.com/microsoft/aspire/pull/19672> |
| #19641 | Extend DCP initialization timeout through API readiness | adamint | <https://github.com/microsoft/aspire/pull/19641> |
| #19498 | Replace JsonPatch.Net with local implementation | eerhardt | <https://github.com/microsoft/aspire/pull/19498> |
| #19615 | [main] Update dependencies from dotnet/arcade | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/19615> |
| #19600 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19600> |
| #19620 | Remove unnecessary friend assembly declarations | eerhardt | <https://github.com/microsoft/aspire/pull/19620> |
| #19656 | Work around Azure CLI import deadlock in deployment tests | mitchdenny | <https://github.com/microsoft/aspire/pull/19656> |
| #18924 | Add SQLite persistence and run history to the Dashboard | JamesNK | <https://github.com/microsoft/aspire/pull/18924> |
| #19032 | Export canonical TypeScript API data from the CLI | adamint | <https://github.com/microsoft/aspire/pull/19032> |
| #19608 | Add trusted fast path for extension release PRs | SankeerthNara | <https://github.com/microsoft/aspire/pull/19608> |
| #19430 | Fix Kubernetes hostname publishing and routing | mitchdenny | <https://github.com/microsoft/aspire/pull/19430> |
| #19583 | Add dotnet-tools feed for diagnostics dependencies | adamint | <https://github.com/microsoft/aspire/pull/19583> |
| #19625 | [release/13.5] Fix DevTunnel endpoint URL publication | danegsta | <https://github.com/microsoft/aspire/pull/19625> |
| #19636 | Use separate timeout for DCP initialization | adamint | <https://github.com/microsoft/aspire/pull/19636> |
| #19624 | Show consistent pause warnings across dashboard pages | ellahathaway | <https://github.com/microsoft/aspire/pull/19624> |
| #19538 | Remove flaky duplicate child log path test | JamesNK | <https://github.com/microsoft/aspire/pull/19538> |
| #19048 | Render aspire doctor output from issue template as code block by default | afscrome | <https://github.com/microsoft/aspire/pull/19048> |
| #19462 | Restore dashboard unsecured endpoint FWLink | JamesNK | <https://github.com/microsoft/aspire/pull/19462> |
| #19632 | Rewrite the Aspire extension README and walkthrough | adamint | <https://github.com/microsoft/aspire/pull/19632> |
| #19631 | Fix consistent extension E2E failures | adamint | <https://github.com/microsoft/aspire/pull/19631> |
| #19585 | [release/13.5] Fix dashboard graph rendering for multi-path icons | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19585> |
| #19590 | Fix DevTunnel endpoint URL publication | karolz-ms | <https://github.com/microsoft/aspire/pull/19590> |
| #19592 | Stabilize VS Code extension E2E state assertions | adamint | <https://github.com/microsoft/aspire/pull/19592> |
| #19613 | Avoid duplicate dashboard connection metadata | sebastienros | <https://github.com/microsoft/aspire/pull/19613> |
| #19520 | Add run-mode deployment E2E coverage for role assignments under a service principal credential | mitchdenny | <https://github.com/microsoft/aspire/pull/19520> |
| #19429 | Fix Kubernetes values for embedded environment parameters | mitchdenny | <https://github.com/microsoft/aspire/pull/19429> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19687 | [automated] fix(ci): select installer jobs and loose CI dependencies correctly | open | radical | <https://github.com/microsoft/aspire/pull/19687> |
| PR | #19675 | Add polyglot Azure provisioning proxy SDKs | open | sebastienros | <https://github.com/microsoft/aspire/pull/19675> |
| PR | #19730 | Fix duplicate coding agent telemetry labels | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/19730> |
| PR | #19688 | [automated] ci: run only tests affected by pull request changes | open | radical | <https://github.com/microsoft/aspire/pull/19688> |
| PR | #19728 | Reuse generated TypeScript fluent promise implementations | open | sebastienros | <https://github.com/microsoft/aspire/pull/19728> |
| PR | #19729 | Normalize connection string environment variable aliases | open | sebastienros | <https://github.com/microsoft/aspire/pull/19729> |
| PR | #19727 | Fix self-update channel persistence test | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19727> |
| PR | #19719 | Load polyglot AppHost settings from project root | open | sebastienros | <https://github.com/microsoft/aspire/pull/19719> |
| PR | #19678 | Project v2 build | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19678> |
| PR | #19653 | Improve internal Microsoft user telemetry | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/19653> |
| PR | #19721 | Prepare VS Code extension release v1.20.0 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19721> |
| PR | #19709 | Isolate source AppHost deployment state | open | spboyer | <https://github.com/microsoft/aspire/pull/19709> |
| PR | #19720 | Add publish and deploy finalization boundaries | open | adamint | <https://github.com/microsoft/aspire/pull/19720> |
| PR | #19622 | [VS Code] Add a command to scaffold Aspire integration test projects | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19622> |
| PR | #19668 | Add AppHost-aware integration test scaffolding | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19668> |
| PR | #19710 | Harden AppHost lifecycle timeout E2E test | open | adamint | <https://github.com/microsoft/aspire/pull/19710> |
| PR | #19673 | Avoid live CLI rendering when stdout is redirected | open | adamint | <https://github.com/microsoft/aspire/pull/19673> |
| PR | #19707 | Add Azure Files support for AKS volumes | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19707> |
| PR | #19661 | Use SQLite for dashboard telemetry filtering | open | JamesNK | <https://github.com/microsoft/aspire/pull/19661> |
| PR | #19667 | Use HTTP resilience package instead of Polly.Core | open | sebastienros | <https://github.com/microsoft/aspire/pull/19667> |
| PR | #19670 | Warn when VS Code uses an outdated Aspire CLI | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19670> |
| PR | #19684 | Update PackageValidationBaselineVersion to 13.5.3 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19684> |
| PR | #19686 | Use Microsoft certificate for Aspire CLI executable | open | Copilot | <https://github.com/microsoft/aspire/pull/19686> |
| PR | #19682 | Fix macOS Platform SSO internal detection | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/19682> |
| PR | #19681 | Normalize Foundry hosted agent environment variable names | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/19681> |
| PR | #19664 | Add Azure API Management hosting integration | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/19664> |
| PR | #19679 | Open CLI diagnostic logs in VS Code after failures | open | adamint | <https://github.com/microsoft/aspire/pull/19679> |
| PR | #19635 | Fix Java starter JDK and transport reliability | open | adamint | <https://github.com/microsoft/aspire/pull/19635> |
| PR | #19660 | Wait for AcrPull role assignment to propagate before dependent resources deploy | open | Copilot | <https://github.com/microsoft/aspire/pull/19660> |
| PR | #19642 | Update Nix flake manifest to v13.5.2 | open | av-leschinskiy | <https://github.com/microsoft/aspire/pull/19642> |
| PR | #19640 | Omit registry URLs from standalone npm lockfiles | open | JamieMagee | <https://github.com/microsoft/aspire/pull/19640> |
| PR | #19723 | [automated] test(ci): canary selective .NET test matrix | closed | radical | <https://github.com/microsoft/aspire/pull/19723> |
| PR | #19722 | [automated] test(ci): canary no-.NET job selection | closed | radical | <https://github.com/microsoft/aspire/pull/19722> |
| PR | #19712 | Prepare VS Code extension release v1.20.0 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19712> |
| PR | #19706 | Add --allow-anonymous to aspire start and run | closed | JamesNK | <https://github.com/microsoft/aspire/pull/19706> |
| PR | #19654 | ci: run only tests affected by pull request changes | closed | radical | <https://github.com/microsoft/aspire/pull/19654> |
| PR | #19556 | [automated] fix(ci): select installer jobs and loose CI dependencies correctly | closed | radical | <https://github.com/microsoft/aspire/pull/19556> |
| PR | #19447 | Fix VS Code AppHost startup with legacy Aspire on Linux | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/19447> |
| PR | #19643 | Prepare VS Code extension release v42.42.42 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19643> |
| PR | #16472 | Fix CLI E2E recording-comment status matching | closed | Copilot | <https://github.com/microsoft/aspire/pull/16472> |
| PR | #18604 | Add Godot playground | closed | adamint | <https://github.com/microsoft/aspire/pull/18604> |
| PR | #19128 | Detect an outdated Aspire VS Code extension in aspire doctor | closed | adamint | <https://github.com/microsoft/aspire/pull/19128> |
| Issue | #19715 | Aspire CLI DNX acquisition failure hard to troubleshoot in CI | open | afscrome | <https://github.com/microsoft/aspire/issues/19715> |
| Issue | #19717 | DNX Acquisition Mode fails when offline | open | afscrome | <https://github.com/microsoft/aspire/issues/19717> |
| Issue | #19708 | [Failing test]: Aspire.Cli.EndToEnd.Tests.SelfUpdateChannelPersistenceTests.SelfUpdateToStaging\_RelaunchedCliUsesStagingForImplicitProjectUpdate | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19708> |
| Issue | #19726 | Refresh agent skills during `aspire update` | open | joperezr | <https://github.com/microsoft/aspire/issues/19726> |
| Issue | #19725 | [CI Failure] Hosting.Browsers (windows-latest) 'Build test project' step fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19725> |
| Issue | #19713 | AspireCliInvocationMode=DnxPinned is overridden by ambient AspireCliPath environment variable in VS Code | open | afscrome | <https://github.com/microsoft/aspire/issues/19713> |
| Issue | #19639 | [CI Failure] Flaky: VS Code extension E2E (Linux, azure-functions) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19639> |
| Issue | #19714 | Invalid AspireCliInvocationMode values are silently ignored | open | afscrome | <https://github.com/microsoft/aspire/issues/19714> |
| Issue | #19711 | Expose documented Kubernetes pre-serialization and deployment extension points | open | adamint | <https://github.com/microsoft/aspire/issues/19711> |
| Issue | #19674 | Model deployment names with foundry need to translate '-' => '_' when creating environment variable names for foundry deployment | open | mip1983 | <https://github.com/microsoft/aspire/issues/19674> |
| Issue | #19704 | Ability to add a pipeline step that executes after another specified step | open | Atulin | <https://github.com/microsoft/aspire/issues/19704> |
| Issue | #19703 | Retry ACR OAuth exchange timeouts | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19703> |
| Issue | #19676 | [CI Failure] VS Code extension E2E (Windows, edge-cases) job fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19676> |
| Issue | #19618 | [CI Failure] VS Code extension E2E tests fail with unavailable logs and generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19618> |
| Issue | #19701 | Deployment E2E jobs exhaust the AKS managed-cluster quota | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19701> |
| Issue | #19663 | Aspire 13.4.x fails to run in CI servers running RHEL 8.1.0 (/lib64/libc.so.6: version `GLIBC_2.32' not found) | open | almostchristian | <https://github.com/microsoft/aspire/issues/19663> |
| Issue | #19699 | > Hello, I'm trying iframe mode and i'd like to load the devtools and its features before any other scripts are loaded. | open | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/19699> |
| Issue | #19700 | Azure Front Door - cache purge (Aspire.Hosting.Azure.FrontDoor) | open | fowl2 | <https://github.com/microsoft/aspire/issues/19700> |
| Issue | #19697 | Volume sharing semantics are inconsistent across run mode and compute environments | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19697> |
| Issue | #19691 | Dashboard project can collide with its randomized OTLP port under `aspire start --isolated` | open | JamesNK | <https://github.com/microsoft/aspire/issues/19691> |
| Issue | #19696 | [CI Failure] Flaky: OtlpHttpServiceTests.CallService_OtlpHttpEndPoint_ExceedRequestLimit_Failure fails with 'Connection reset by peer' socket error | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19696> |
| Issue | #19695 | [aw] Generate release notes for a new stable Aspire release failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19695> |
| Issue | #19694 | [aw] Update aspire.dev support page for a new Aspire release failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19694> |
| Issue | #19693 | Add desired-state Keycloak configuration with keycloak-config-cli | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19693> |
| Issue | #19692 | Support configuring Microsoft Entra ID as a Keycloak identity provider | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19692> |
| Issue | #19685 | Sign the Aspire CLI executable with the Microsoft certificate | open | Copilot | <https://github.com/microsoft/aspire/issues/19685> |
| Issue | #19680 | Kubernetes publisher fails when adding a pipeline step that depends on "prepare-deployment-targets-{environment}" | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19680> |
| Issue | #19671 | [CI Failure] Flaky: Dashboard DashboardDataSourceTests.RunMode_DeletesOldestRunWhenLimitIsExceeded fails with UnauthorizedAccessException on Windows during metadata file move | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19671> |
| Issue | #19666 | Aspire CLI deploying foundry hosted agent with 'aspire do-deploy-[agent]' takes a dependency on and deploys everything | open | mip1983 | <https://github.com/microsoft/aspire/issues/19666> |
| Issue | #19665 | Using 'AsHostedAgent' makes all other resources require explicit compute environment | open | mip1983 | <https://github.com/microsoft/aspire/issues/19665> |
| Issue | #19662 | [CI Failure] Flaky: SealedSecretApplyStepTests wait/timeout test fails intermittently on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19662> |
| Issue | #19659 | [CI Failure] Flaky: AppHostServerSessionTests.Start_StopRequested_GracefulIgnored_ExpireEscalatesToTreeKill times out intermittently on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19659> |
| Issue | #19658 | Deployment pipeline should retry/detect readiness when a managed identity's AcrPull role assignment hasn't propagated yet | open | Copilot | <https://github.com/microsoft/aspire/issues/19658> |
| Issue | #19657 | Deployment pipeline should retry/detect readiness when a freshly-created ACR's hostname isn't yet DNS-resolvable | open | Copilot | <https://github.com/microsoft/aspire/issues/19657> |
| Issue | #19655 | [automated] Open a dedicated Nix manifest PR after stable releases | open | radical | <https://github.com/microsoft/aspire/issues/19655> |
| Issue | #19645 | Improve internal Microsoft user telemetry | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19645> |
| Issue | #19644 | Internal Microsoft telemetry alias can include VS Code storage key prefixes | open | adamint | <https://github.com/microsoft/aspire/issues/19644> |
| Issue | #19652 | Add internal Microsoft detector health dashboard and regression metrics | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19652> |
| Issue | #19651 | Define CI behavior for internal Microsoft user telemetry | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19651> |
| Issue | #19650 | Improve internal Microsoft detection coverage on Linux | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19650> |
| Issue | #19649 | Validate and improve macOS Platform SSO internal detection | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19649> |
| Issue | #19648 | Canonicalize internal Microsoft aliases across detection sources | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19648> |
| Issue | #19647 | Make internal Microsoft probe selection deterministic | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19647> |
| Issue | #19646 | Instrument internal Microsoft detector outcomes and probe health | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19646> |
| Issue | #19619 | Support time-based image pull policies (Daily / Weekly / Every(duration)) in ImagePullPolicy | open | jeremad | <https://github.com/microsoft/aspire/issues/19619> |
| Issue | #19638 | [CI Failure] SQL Server Testcontainer exits with CoInitializeSecurity failure (HRESULT 0x800706b5), breaking EF Core/SqlClient conformance tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19638> |
| Issue | #19637 | [CI Failure] Flaky: DownloadFailingJobLogsToolTests.ReportsMissingArtifactWithoutFailing assertion mismatch | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19637> |
| Issue | #19634 | [CI Failure] CLI (windows-latest) test job fails with generic exit code 1, unrelated to PR changes (issue template only) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19634> |
| Issue | #19633 | Add volume name option to WithPersistentVolume APIs to support binding pre-existing volumes | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19633> |
| Issue | #19630 | API Proposal Process | open | patelashit550-cpu | <https://github.com/microsoft/aspire/issues/19630> |
| Issue | #19628 | Support abstraction for cross-service file sharing across local dev and Kubernetes deployment | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19628> |
| Issue | #19629 | [VS Code] Preselect the CLI-default Aspire skills and agent assets during project creation | open | adamint | <https://github.com/microsoft/aspire/issues/19629> |
| Issue | #19626 | CLI should block/warn when running against an AppHost targeting a newer Aspire version than the CLI supports | open | Copilot | <https://github.com/microsoft/aspire/issues/19626> |
| Issue | #19623 | [CI Failure] DCP dependency check times out waiting on podman during Valkey functional tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19623> |
| Issue | #19621 | 13.5.2 Dashboard breaks when navigating to resource graph tab | closed | miguelhasse | <https://github.com/microsoft/aspire/issues/19621> |
| Issue | #19617 | Hide azure-environment when all Azure resources use emulators | open | davidfowl | <https://github.com/microsoft/aspire/issues/19617> |
| Issue | #19547 | [CI Failure] Flaky: VS Code extension E2E (Windows, edge-cases) shard fails with generic exit code, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19547> |
| Issue | #19581 | [VS Code] Reduce extension release friction | closed | adamint | <https://github.com/microsoft/aspire/issues/19581> |
| Issue | #8034 | [Keycloak Integration] How to setup database connection for Keycloak when deploying to Azure | closed | ekomsctr | <https://github.com/microsoft/aspire/issues/8034> |
| Issue | #8064 | KeyCloak - Allow selection of Http/Https Schemes for the URL's this is for running KeyCloak on HTTPs | closed | robobrown | <https://github.com/microsoft/aspire/issues/8064> |
| Issue | #19596 | [CI Failure] CLI smoke test (aspire new + restore) fails during Homebrew/WinGet installer artifact preparation | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19596> |
| Issue | #19544 | STOP bugging me to enable hot-reload | closed | burtonrodman | <https://github.com/microsoft/aspire/issues/19544> |
| Issue | #19493 | JsonPatch.Net licence upgrade requires Aspire users to purchase a commercial maitnenance agreement. | closed | afscrome | <https://github.com/microsoft/aspire/issues/19493> |
| Issue | #19173 | [Failing test]: Aspire.Deployment.EndToEnd.Tests.AzureResourceScopeDeploymentTests.DeployExistingServiceBusWithResourceGroupAndSubscriptionScope | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19173> |
| Issue | #4256 | Aspire Dashboard - Persist dashboard data | closed | sharpSteff | <https://github.com/microsoft/aspire/issues/4256> |
| Issue | #17755 | Kubernetes ingress WithHostname with parameter is hardcoding the hostname and doesn't add the hostname to the rules | closed | WolfspiritM | <https://github.com/microsoft/aspire/issues/17755> |
| Issue | #18041 | EnsureKubernetesAsync times out on GitHub-hosted CI runners in 13.4.x — KubernetesConfigReadRetryCount config removed, no bypass available | closed | zappod | <https://github.com/microsoft/aspire/issues/18041> |
| Issue | #17243 | [Failing test]: Aspire.Cli.Tests.Commands.RunCommandTests.GenerateChildLogFilePath\_UsesDetachChildNamingWithoutProcessId | closed | radical | <https://github.com/microsoft/aspire/issues/17243> |
| Issue | #19020 | [13.5] Pause UI inconsistency | closed | afscrome | <https://github.com/microsoft/aspire/issues/19020> |
| Issue | #18694 | Detect an outdated Aspire VS Code extension in `aspire doctor` | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/18694> |
| Issue | #19588 | [CI Failure] Flaky: VS Code extension E2E (Linux, debug-dashboard) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19588> |
| Issue | #19368 | ASPIRE010: add a forward link in the warning and publish a doc explaining AspireUseCliBundle | closed | joperezr | <https://github.com/microsoft/aspire/issues/19368> |
| Issue | #19496 | DevTunnel port resources are Running but Dashboard URLs are empty in 13.5.0 | closed | Vladipz | <https://github.com/microsoft/aspire/issues/19496> |
| Issue | #19576 | [CI Failure] Flaky: VS Code extension E2E (Windows, dynamic-debug-configuration) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19576> |
| Issue | #19612 | 13.5.2 Aspire Foundry Integration: Foundry project produces ' Duplicate property 'resource.connectionString' found in resource [project]' | closed | mip1983 | <https://github.com/microsoft/aspire/issues/19612> |
| Issue | #16942 | [13.3] PublishUpdateAsync from OnBeforeResourceStarted skips WaitFor → Healthy gate (regression from 13.1) | closed | Ovvugt | <https://github.com/microsoft/aspire/issues/16942> |
| Issue | #19487 | Add run-mode deployment E2E coverage for role assignments under a service principal credential | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19487> |
| Issue | #11140 | Aspire Cli K8s Build WithEnvironment() Values all missing in values.yaml | closed | RedEye-Developers | <https://github.com/microsoft/aspire/issues/11140> |
