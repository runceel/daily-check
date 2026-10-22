# microsoft/aspire *(詳細モード)*

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 46 |
| オープン中の新規 PR     | 47 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 60 |
| クローズ Issue          | 26 |
| 主要コントリビューター  | JamesNK, eerhardt, mitchdenny, danegsta, ellahathaway, radical |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#21260](https://github.com/microsoft/aspire/pull/21260) — Add browser-facing origin references for CORS and redirect configuration （PR / open / danegsta）
  CORS／リダイレクト構成をブラウザー起点で扱う開発者は、新しい Origin API と既存構成の互換性を確認してください。
- **⚠ 破壊的変更** [#21230](https://github.com/microsoft/aspire/pull/21230) — Mark WithAzdResourceNaming obsolete （PR / open / mitchdenny）
  `WithAzdResourceNaming` を使う AppHost は廃止予定の置換先を確認してください。
- **⚠ 破壊的変更** [#21118](https://github.com/microsoft/aspire/pull/21118) — Make AKS node pool OS SKU configurable （PR / merged / mitchdenny）
  AKS ノードプール OS SKU を構成する開発者は、システム／ワーカー OS の設定方法と既存既定値を確認してください。
- **⚠ 破壊的変更** [#20918](https://github.com/microsoft/aspire/pull/20918) — Support ACME External Account Binding in cert-manager （PR / merged / mitchdenny）
  cert-manager の External Account Binding を利用する Kubernetes 管理者は、EAB Secret、Issuer 設定、削除時の資格情報クリーンアップを確認してください。
- **⚠ 破壊的変更** [#20521](https://github.com/microsoft/aspire/issues/20521) — [13.6] Breaking change to `IInteractionService` （Issue / closed / afscrome）
  `IInteractionService` を実装または拡張する利用者は 13.6 の互換性変更を確認してください。
- **⚠ 破壊的変更** [#11760](https://github.com/microsoft/aspire/issues/11760) — ResourceUrlAnnotation.DisplayOrder is a field, not a property （Issue / open / JamesNK）
  `ResourceUrlAnnotation.DisplayOrder` を参照するコードはフィールド API の互換性を確認してください。
- **⚠ セキュリティ** [#21250](https://github.com/microsoft/aspire/pull/21250) — Update SystemSecurityCryptographyPkcsNet10Version to 10.0.13 （PR / open / MisinformedDNA）
  System.Security.Cryptography.Pkcs を利用するビルドはパッケージバージョンと依存ロックを確認してください。
- **⚠ セキュリティ** [#21156](https://github.com/microsoft/aspire/pull/21156) — [release/13.6] Pin MessagePack to 2.5.307 for security fixes （PR / merged / eerhardt）
  release/13.6 を利用する開発者は MessagePack 2.5.307 固定による互換性とセキュリティ修正を確認してください。
- **⚠ セキュリティ** [#21051](https://github.com/microsoft/aspire/pull/21051) — Pin MessagePack to 2.5.307 for security fixes （PR / merged / mitchdenny）
  MessagePack を利用する配布版は 2.5.307 固定を確認してください。
- **⚠ セキュリティ** [#20829](https://github.com/microsoft/aspire/pull/20829) — fix(deps): update Next.js, multidict, and PyJWT for security advisories （PR / merged / radical）
  Next.js／multidict／PyJWT を含むサンプルは依存更新後にビルドと認証テストを実行してください。
- **⚠ セキュリティ** [#20693](https://github.com/microsoft/aspire/pull/20693) — Add auto-sec agentic workflow for dependency security reconciliation （PR / merged / IEvangelist）
  リポジトリ管理者は auto-sec workflow の権限、承認ゲート、更新対象を確認してください。
- **非推奨/廃止** [#21195](https://github.com/microsoft/aspire/pull/21195) — Add `aspire sdk export -l go` (Go API reference exporter) （PR / open / IEvangelist）
  Go SDK exporter を利用する開発者は CLI export オプションと今後の廃止方針を確認してください。
- **GA 昇格** [#21203](https://github.com/microsoft/aspire/issues/21203) — Go AppHost support policy: decisions to record before GA （Issue / open / IEvangelist）
  Go AppHost を検討中のチームは GA までのサポート方針と残課題を確認してください。
- **GA 昇格** [#21115](https://github.com/microsoft/aspire/issues/21115) — [Epic] Go AppHost GA （Issue / open / IEvangelist）
  Go AppHost の早期利用者は GA Epic の対象機能と互換性要件を確認してください。
- **GA 昇格** [#21108](https://github.com/microsoft/aspire/issues/21108) — [Go AppHost GA] CLI end-to-end and publish/deploy coverage （Issue / open / IEvangelist）
  Go CLI／deploy／publish を利用する開発者は End-to-End の GA 対応状況を確認してください。

## このリポジトリの要点

対象期間は、AKS ノードプール構成、cert-manager の EAB、セキュリティ依存関係更新、Go AppHost GA準備が中心です。
特に #21118、#20918、#20829、#20693 は API／運用／依存関係へ影響するため継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#21118](https://github.com/microsoft/aspire/pull/21118) — Make AKS node pool OS SKU configurable

- 作者: mitchdenny / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +3030 / -1780
- マージ日時 (UTC): `2026-10-20 00:51:00`

**変更概要**

AKS node pool の OS SKU を AppHost から設定できるようにし、システム／ワーカー OS を明示的に制御します。
Azure Kubernetes 環境拡張、Bicep 生成、Go/Python/Rust/Java のコード生成、E2E テストへ広く反映されました。ノードプール構成の再現性とテストカバレッジが向上します。

<details><summary>変更ファイル (44 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.Kubernetes/AksNodePoolConfig.cs` | 47 | 1 |
| `src/Aspire.Hosting.Azure.Kubernetes/AzureKubernetesEnvironmentExtensions.cs` | 109 | 5 |
| `src/Aspire.Hosting.Azure.Kubernetes/README.md` | 46 | 0 |
| `src/Aspire.Hosting.CodeGeneration.Go/AtsGoCodeGenerator.cs` | 13 | 12 |
| `src/Aspire.Hosting.CodeGeneration.Java/AtsJavaCodeGenerator.cs` | 10 | 9 |
| `src/Aspire.Hosting.CodeGeneration.Python/AtsPythonCodeGenerator.cs` | 30 | 13 |
| `src/Aspire.Hosting.CodeGeneration.Python/PythonModuleBuilder.cs` | 23 | 17 |
| `src/Aspire.Hosting.CodeGeneration.Rust/AtsRustCodeGenerator.cs` | 14 | 11 |
| `src/Aspire.Hosting.RemoteHost/Ats/AtsMarshaller.cs` | 9 | 1 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksAzureKubernetesEnvironmentCertManagerTypeScriptDeploymentTests.cs` | 30 | 2 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/AzureKubernetesEnvironmentExtensionsTests.cs` | 205 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/AzureKubernetesInfrastructureTests.cs` | 1 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/Snapshots/AzureKubernetesEnvironmentExtensionsTests.NodePoolCallbacks_BicepReflectsOsSku_systemOsSku=AzureLinux_workerOsSku=AzureLinux.verified.bicep` | 96 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/Snapshots/AzureKubernetesEnvironmentExtensionsTests.NodePoolCallbacks_BicepReflectsOsSku_systemOsSku=AzureLinux_workerOsSku=Ubuntu.verified.bicep` | 96 | 0 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/Snapshots/AzureKubernetesEnvironmentExtensionsTests.NodePoolCallbacks_BicepReflectsOsSku_systemOsSku=null_workerOsSku=FutureLinuxSku.verified.bicep` | 95 | 0 |
| _... 他 29 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `7844596` Make AKS node pool OS SKU configurable
- `aa4b0e1` Cover AKS node pool OS SKUs in deployment tests
- `6242ce4` Keep AKS DTO callback support independent of terminal changes
- `55ad999` Keep AKS node pool configuration mutable until generation
- `ccde3bf` Preserve AKS node pool identity during callback writeback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: 新しい OS SKU 構成を追加しています。既存の node pool callback／DTO を直接利用する場合は、System OS と Worker OS の新しい設定経路へ更新が必要です。

**既存利用者への影響**

既存 AppHost は既定値を維持できます。カスタム OS SKU を利用する場合のみ、AksNodePoolConfig を構成へ追加し生成される Bicep を検証してください。

### [#20918](https://github.com/microsoft/aspire/pull/20918) — Support ACME External Account Binding in cert-manager

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-integrations` `breaking-change`
- 変更行数: +1465 / -168
- マージ日時 (UTC): `2026-10-20 03:10:47`

**変更概要**

cert-manager Issuer で ACME External Account Binding を構成できるようにし、外部 ACME プロバイダーとの連携を追加します。
EAB Credential Secret、Issuer 削除時のクリーンアップ、条件付き Secret 書き込み、E2E テストを実装しています。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/CertManagerDemo/CertManagerDemo.AppHost/AppHost.cs` | 2 | 1 |
| `src/Aspire.Hosting.Kubernetes/CertManagerExtensions.cs` | 335 | 135 |
| `src/Aspire.Hosting.Kubernetes/CertManagerIssuerResource.cs` | 8 | 3 |
| `src/Aspire.Hosting.Kubernetes/CertManagerResource.cs` | 1 | 1 |
| `src/Aspire.Hosting.Kubernetes/README.md` | 144 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/Aspire.Cli.EndToEnd.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/Helpers/KubernetesDeployTestHelpers.cs` | 8 | 4 |
| `tests/Aspire.Cli.EndToEnd.Tests/KubernetesDeployWithCertManagerTests.cs` | 275 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/README.md` | 25 | 0 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksAzureKubernetesEnvironmentCertManagerDeploymentTests.cs` | 61 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AksAzureKubernetesEnvironmentCertManagerTypeScriptDeploymentTests.cs` | 6 | 4 |
| `tests/Aspire.Deployment.EndToEnd.Tests/Aspire.Deployment.EndToEnd.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/CertManagerTests.cs` | 355 | 11 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/CertManagerTests.BuildClusterIssuerManifest_ExternalAccountBindingEscapesKeyId.verified.yaml` | 18 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/CertManagerTests.BuildExternalAccountBindingSecretApplySpec_UsesStdinAndPreservesBase64UrlText.verified.json` | 1 | 0 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `387e80f` Support ACME External Account Binding in cert-manager
- `b6a229c` Clean up EAB Secrets when issuer deletion fails
- `6f3cd13` Merge main into custom ACME provider support
- `c492213` Clean up managed EAB credentials after binding removal
- `50c696b` Track EAB credential locations and use conditional Secret writes
- `048bfdd` Configure E2E namespace through the public Helm API
- `35e7a88` Remove namespace migration tracking and E2E scenario
- `c89e3be` Address ACME API and cleanup review feedback
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: 新しい EAB 設定と Secret 運用を導入します。既存の CertManager API を独自ラップしている場合は新しい拡張メソッドを確認してください。

**既存利用者への影響**

既存構成は既定で維持できます。外部 ACME プロバイダーで EAB が必要な場合のみ Key ID／HMAC Key／Secret の設定を追加してください。

### [#21156](https://github.com/microsoft/aspire/pull/21156) — [release/13.6] Pin MessagePack to 2.5.307 for security fixes

- 作者: eerhardt / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +6 / -4
- マージ日時 (UTC): `2026-10-19 21:10:44`

**変更概要**

release/13.6 の MessagePack 依存を 2.5.307 に固定し、セキュリティ修正を反映します。
パッケージバージョンと Central Package Management 設定を更新する小規模なバックポートです。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 3 | 4 |
| `src/Aspire.Hosting/Aspire.Hosting.csproj` | 3 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `fa2cf21` Pin MessagePack to 2.5.307 for security fixes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API は変更せず、依存バージョンを固定しています。破壊的変更はありません。

**既存利用者への影響**

release/13.6 の利用者は更新ビルドへ切り替え、既存アプリのシリアライズ互換性を確認してください。

### [#20829](https://github.com/microsoft/aspire/pull/20829) — fix(deps): update Next.js, multidict, and PyJWT for security advisories

- 作者: radical / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +161 / -124
- マージ日時 (UTC): `2026-10-19 21:55:10`

**変更概要**

Next.js、multidict、PyJWT をセキュリティ勧告対応版へ更新し、サンプルと E2E fixture の依存関係を修正します。
特に PyJWT は JWT parsing/JWK 関連の脆弱性に対応しています。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/FoundryAgentBasic/app/uv.lock` | 117 | 80 |
| `playground/PostgresEndToEnd/PostgresEndToEnd.PythonService/uv.lock` | 3 | 3 |
| `tests/Aspire.Cli.EndToEnd.Tests/Fixtures/JsPublish/nextjs/package-lock.json` | 40 | 40 |
| `tests/Aspire.Cli.EndToEnd.Tests/Fixtures/JsPublish/nextjs/package.json` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `ca860bb` fix(playground): update PyJWT to address JWT parsing and JWK flaws
- `b53a07d` fix(deps): update Next.js and multidict for security advisories
- `f0eee16` Merge branch 'main' into python-jwt-security-updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API は変更せず、ロックファイルとサンプル依存パッケージを更新しています。

**既存利用者への影響**

サンプルと playground を実行する開発者は依存更新後にビルド／認証テストを実行してください。

### [#20693](https://github.com/microsoft/aspire/pull/20693) — Add auto-sec agentic workflow for dependency security reconciliation

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +12110 / -0
- マージ日時 (UTC): `2026-10-19 18:54:19`

**変更概要**

依存関係セキュリティ更新を AI agentic workflow で調整する auto-sec を追加し、変更提案を検証・承認する仕組みを導入します。
マニフェスト照合、混在 major の拒否、advisory 範囲検証、malware 検査、publication guard を含む大規模な CI 基盤変更です。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/README.md` | 160 | 0 |
| `.github/workflows/auto-sec.lock.yml` | 1932 | 0 |
| `.github/workflows/auto-sec.md` | 650 | 0 |
| `.github/workflows/auto-sec/auto-sec.js` | 3794 | 0 |
| `.github/workflows/auto-sec/publication-guard.js` | 172 | 0 |
| `.github/workflows/validate-agentic-workflows.yml` | 2 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/AutoSecWorkflowTests.cs` | 4761 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/ValidateAgenticWorkflowsTests.cs` | 16 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/auto-sec.harness.js` | 623 | 0 |

</details>

<details><summary>コミット (51 件)</summary>

- `0cb75ac` Add auto-sec agentic workflow for dependency security reconciliation
- `bb1fe98` Address auto-sec review feedback
- `78cedfd` Bind auto-sec coverage to manifest entries and harden source matching
- `e1197da` Avoid shell-quoted template literal in auto-sec data collection
- `5b897fb` Harden auto-sec approval gates per review feedback
- `011f5e4` auto-sec: fail closed on mixed-major consolidation, malware in lockfi…
- `0ac6a03` auto-sec: check advisory vulnerable ranges and re-verify PR head befo…
- `b0091ea` Restrict auto-sec pushes to the auto-sec branch and honor PackageVers…
- _... 他 43 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ランタイム API の変更ではなくリポジトリ工程と自動更新ブランチを追加する変更です。

**既存利用者への影響**

開発者側の移行作業は不要です。リポジトリ管理者は workflow の権限、承認ゲート、自動 Push 対象をレビューしてください。

### [#21254](https://github.com/microsoft/aspire/pull/21254) — Fix Java container telemetry test for runtime-specific hostnames

- 作者: danegsta / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +5 / -1
- マージ日時 (UTC): `2026-10-22 00:06:07`

**変更概要**

Java コンテナのテレメトリーテストで、ランタイム固有のホスト名を正しく扱う回帰修正です。テストコードとホスト名期待値のみを更新します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Hosting.Java.Tests/AddJavaContainerTests.cs` | 5 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `e4267e4` Fix Java container telemetry test for runtime-specific hostnames

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API は変更せず、Java ホスティングのテレメトリーテスト修正です。

**既存利用者への影響**

既存利用者の移行作業は不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #21161 | Aspire Tray: shared flyout panel replaces native menus on macOS and Windows | sebastienros | <https://github.com/microsoft/aspire/pull/21161> |
| #21232 | Reduce SQLite metric repeat-update write amplification | JamesNK | <https://github.com/microsoft/aspire/pull/21232> |
| #20404 | Guard native Blazor WASM debugging against abandoned connections | ellahathaway | <https://github.com/microsoft/aspire/pull/20404> |
| #20318 | Fix stale AppHost telemetry context in the VS Code extension | ellahathaway | <https://github.com/microsoft/aspire/pull/20318> |
| #21223 | Tag Entra service principals as integrated enterprise applications | eerhardt | <https://github.com/microsoft/aspire/pull/21223> |
| #21064 | Fix Copilot App telemetry attribution for Aspire skills v0.0.4 | ellahathaway | <https://github.com/microsoft/aspire/pull/21064> |
| #21226 | Fix Entra deployment test verification and cleanup | eerhardt | <https://github.com/microsoft/aspire/pull/21226> |
| #20897 | Add opt-in AppHost Server v2 to the CLI bundle | davidfowl | <https://github.com/microsoft/aspire/pull/20897> |
| #21121 | Honor container registries in published Kubernetes charts | mitchdenny | <https://github.com/microsoft/aspire/pull/21121> |
| #21151 | Derive Entra redirect URIs from resource endpoints | eerhardt | <https://github.com/microsoft/aspire/pull/21151> |
| #21220 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/21220> |
| #21215 | [release/13.6] Update DCP to 0.26.6 | danegsta | <https://github.com/microsoft/aspire/pull/21215> |
| #21218 | Update MongoDB container image tag to 9.0 | eerhardt | <https://github.com/microsoft/aspire/pull/21218> |
| #21147 | ci: Fix `main` build - `nuxt` validation failing on Node 22 | radical | <https://github.com/microsoft/aspire/pull/21147> |
| #20901 | [ci] Fix possible template injection in workflows | Copilot | <https://github.com/microsoft/aspire/pull/20901> |
| #21155 | Fix VS Code CLI update warning version display | spboyer | <https://github.com/microsoft/aspire/pull/21155> |
| #21002 | [release/13.6] Keep DCP watches draining and close abandoned connections | danegsta | <https://github.com/microsoft/aspire/pull/21002> |
| #21216 | [release/13.6] Bump version to 13.6.3 | danegsta | <https://github.com/microsoft/aspire/pull/21216> |
| #20612 | tests: Add guidance around creating Infrastructure tests | radical | <https://github.com/microsoft/aspire/pull/20612> |
| #21163 | Entra ID application should show missing subscription state like other Azure resources | eerhardt | <https://github.com/microsoft/aspire/pull/21163> |
| #21179 | Cover managed EAB Secret cleanup after binding removal | mitchdenny | <https://github.com/microsoft/aspire/pull/21179> |
| #21178 | Remove advanced cert-manager namespace guidance from README | mitchdenny | <https://github.com/microsoft/aspire/pull/21178> |
| #21176 | Preserve valid EAB coverage in the C# cert-manager E2E fixture | mitchdenny | <https://github.com/microsoft/aspire/pull/21176> |
| #21091 | Support parameter-backed redirect URIs in the Entra ID integration | eerhardt | <https://github.com/microsoft/aspire/pull/21091> |
| #21169 | Use descriptive text for dashboard telemetry help link | JamesNK | <https://github.com/microsoft/aspire/pull/21169> |
| #21104 | Add first-time telemetry setup guidance to the dashboard | JamesNK | <https://github.com/microsoft/aspire/pull/21104> |
| #21120 | Select CLI terminal replicas by resource instance ID | mitchdenny | <https://github.com/microsoft/aspire/pull/21120> |
| #21153 | Fix auto-sec Dependabot alert read permissions | IEvangelist | <https://github.com/microsoft/aspire/pull/21153> |
| #21089 | Support explicit owners for provisioned Entra registrations | eerhardt | <https://github.com/microsoft/aspire/pull/21089> |
| #20856 | Update Azure.Provisioning.Storage to 1.2.0 | eerhardt | <https://github.com/microsoft/aspire/pull/20856> |
| #21046 | Update dashboard Fluent UI to 5.0.1 | JamesNK | <https://github.com/microsoft/aspire/pull/21046> |
| #21122 | Bound CLI test waits and cleanup with shared timeouts | JamesNK | <https://github.com/microsoft/aspire/pull/21122> |
| #21135 | Fix CLI snapshot watch cancellation | JamesNK | <https://github.com/microsoft/aspire/pull/21135> |
| #21119 | Use the 17.0 dashboard image for generated deployments | JamesNK | <https://github.com/microsoft/aspire/pull/21119> |
| #20977 | Update to .NET 11 RC2 | JamesNK | <https://github.com/microsoft/aspire/pull/20977> |
| #21136 | Fix child-process exit observation race in shared tests | JamesNK | <https://github.com/microsoft/aspire/pull/21136> |
| #20989 | Allow 500 trace log tooltips per span | JamesNK | <https://github.com/microsoft/aspire/pull/20989> |
| #21117 | Fix telemetry shutdown test persistence race | JamesNK | <https://github.com/microsoft/aspire/pull/21117> |
| #21105 | Auto-fit resource terminals without explicit dimensions | mitchdenny | <https://github.com/microsoft/aspire/pull/21105> |
| #21098 | Add connection properties support for Azure Web PubSub hubs | austinaviv | <https://github.com/microsoft/aspire/pull/21098> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #21228 | Add Azure Front Door Private Link support for Azure Container Apps | open | eerhardt | <https://github.com/microsoft/aspire/pull/21228> |
| PR | #21260 | Add browser-facing origin references for CORS and redirect configuration | open | danegsta | <https://github.com/microsoft/aspire/pull/21260> |
| PR | #21258 | Aspire Tray: align the flyout on one grid and place text by baseline on macOS and Windows | open | sebastienros | <https://github.com/microsoft/aspire/pull/21258> |
| PR | #21227 | Provision Entra federation trust from Aspire managed identities | open | eerhardt | <https://github.com/microsoft/aspire/pull/21227> |
| PR | #21252 | Write aspire.config.json with LF and a final newline on every OS | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21252> |
| PR | #21214 | Add the aspire-video-producer agent skill | open | sebastienros | <https://github.com/microsoft/aspire/pull/21214> |
| PR | #21186 | Fail Go and Python publish when an existing Dockerfile ignores the entrypoint | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21186> |
| PR | #21199 | Accept derived builders where the Go SDK takes a base resource type | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21199> |
| PR | #21197 | Emit godoc from ATS documentation metadata in the Go SDK generator | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21197> |
| PR | #21196 | Add a Go AppHost tooling check to aspire doctor | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21196> |
| PR | #21195 | Add `aspire sdk export -l go` (Go API reference exporter) | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21195> |
| PR | #21194 | Harden the Go runtime transport and decode lists of handles | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21194> |
| PR | #21193 | Make new Go AppHosts gofmt-clean, ignore the generated SDK and check every resource | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21193> |
| PR | #21191 | Record default hosting packages when scaffolding a guest AppHost | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21191> |
| PR | #21189 | Add Go AppHost CLI end-to-end tests and a PolyglotGo image | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21189> |
| PR | #21188 | Fix Go AppHost panic on callback options and accept Go numbers in unions | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21188> |
| PR | #21187 | Launch and debug Go AppHosts from the VS Code extension | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21187> |
| PR | #21183 | Remove the Go AppHost experimental feature flag | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21183> |
| PR | #21173 | Add Go support to aspire docs api | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21173> |
| PR | #21253 | feat(ci): investigate flaky-test issues from an issue URL | open | radical | <https://github.com/microsoft/aspire/pull/21253> |
| PR | #21149 | Fix VS Code resource state matching with source locations | open | ellahathaway | <https://github.com/microsoft/aspire/pull/21149> |
| PR | #21243 | [automated] ci: build Windows ARM CLI archives on a Dev Drive | open | radical | <https://github.com/microsoft/aspire/pull/21243> |
| PR | #21250 | Update SystemSecurityCryptographyPkcsNet10Version to 10.0.13 | open | MisinformedDNA | <https://github.com/microsoft/aspire/pull/21250> |
| PR | #21143 | Stop re-initializing metric charts on every data refresh | open | sebastienros | <https://github.com/microsoft/aspire/pull/21143> |
| PR | #21235 | Bump the github-actions group across 1 directory with 7 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21235> |
| PR | #21247 | feat(ci): reproduce exact test candidates without editing workflows | open | radical | <https://github.com/microsoft/aspire/pull/21247> |
| PR | #21225 | Update PackageValidationBaselineVersion to 13.6.2 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/21225> |
| PR | #21200 | Keep system roots trusted with Append certificate trust on macOS and Windows | open | aarsethio | <https://github.com/microsoft/aspire/pull/21200> |
| PR | #21162 | Bump the uv group across 1 directory with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21162> |
| PR | #21124 | Add ATS support for Kubernetes PVC configuration callbacks | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21124> |
| PR | #21240 | Suppress registry analysis for nonshipping Compose web sample | open | joperezr | <https://github.com/microsoft/aspire/pull/21240> |
| PR | #21131 | Keep the dashboard process alive between AppHost runs | open | davidfowl | <https://github.com/microsoft/aspire/pull/21131> |
| PR | #21231 | refactor(ci): Make CI failure validation rules explicit in C# | open | radical | <https://github.com/microsoft/aspire/pull/21231> |
| PR | #21230 | Mark WithAzdResourceNaming obsolete | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21230> |
| PR | #21222 | Register core output caching services in Redis output cache integration | open | curllog | <https://github.com/microsoft/aspire/pull/21222> |
| PR | #21150 | Fix NixOS bundle installation with install-time ELF patching | open | danegsta | <https://github.com/microsoft/aspire/pull/21150> |
| PR | #21175 | Remove unused TransactionalAction helper | open | JamesNK | <https://github.com/microsoft/aspire/pull/21175> |
| PR | #21168 | [automated] Experiment: measure native CLI packaging without duplicate compilation | open | radical | <https://github.com/microsoft/aspire/pull/21168> |
| PR | #21171 | Add auto-sec publication preflight | open | IEvangelist | <https://github.com/microsoft/aspire/pull/21171> |
| PR | #21166 | [automated] Experiment: compare shared test payloads with per-shard builds | open | radical | <https://github.com/microsoft/aspire/pull/21166> |
| PR | #21167 | [automated] Experiment: describe artifact demand separately from selected PR tests | open | radical | <https://github.com/microsoft/aspire/pull/21167> |
| PR | #21148 | fix(playground): update shell-quote to address command injection | open | radical | <https://github.com/microsoft/aspire/pull/21148> |
| PR | #21145 | Update StreamJsonRpc to 2.26.150 and remove MessagePack pin | open | eerhardt | <https://github.com/microsoft/aspire/pull/21145> |
| PR | #21129 | Experiment: local apps with SSH-managed remote Redis dependencies | open | davidfowl | <https://github.com/microsoft/aspire/pull/21129> |
| PR | #21128 | [POC] Adopt brownfield Docker Compose stacks as native Aspire resources | open | davidfowl | <https://github.com/microsoft/aspire/pull/21128> |
| PR | #21130 | Prototype producer-owned binding contracts for multi-repo composition | open | davidfowl | <https://github.com/microsoft/aspire/pull/21130> |
| PR | #21123 | Support AppHost terminals and terminal interactions in polyglot SDKs | open | mitchdenny | <https://github.com/microsoft/aspire/pull/21123> |
| PR | #21251 | Fix platform-dependent WASM relay deadline tests | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/21251> |
| PR | #21233 | [automated] ci: benchmark Windows ARM builds on unused NVMe | closed | radical | <https://github.com/microsoft/aspire/pull/21233> |
| PR | #21048 | Bump the github-actions group across 1 directory with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/21048> |
| PR | #21229 | Refine dashboard navigation and resource selection | closed | JamesNK | <https://github.com/microsoft/aspire/pull/21229> |
| PR | #21144 | [DO NOT MERGE] Downgrade MessagePack to 2.5.302 to observe NuGet Audit behavior in CI | closed | eerhardt | <https://github.com/microsoft/aspire/pull/21144> |
| PR | #21181 | [main] Update dependencies from microsoft/dcp | closed | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/21181> |
| PR | #21127 | Remove temporary dashboard image version override | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/21127> |
| Issue | #21244 | [Failing test]: Java container telemetry assertion fails with host.wslc.internal on Windows | closed | radical | <https://github.com/microsoft/aspire/issues/21244> |
| Issue | #21259 | Validate the stopped-child runtime fix and contain recurring macOS CLI test-host hangs | open | radical | <https://github.com/microsoft/aspire/issues/21259> |
| Issue | #21248 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21248> |
| Issue | #21257 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21257> |
| Issue | #21256 | Entra ID: throw when registration-only APIs are used with existing registrations | open | eerhardt | <https://github.com/microsoft/aspire/issues/21256> |
| Issue | #21255 | Go AppHost: callbacks that take a resource builder receive nil and panic | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21255> |
| Issue | #21224 | [aw] Analyze CI Failure reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21224> |
| Issue | #21249 | aspire.config.json line endings and final newline differ by command and platform | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21249> |
| Issue | #21246 | Restore green CI on main | open | radical | <https://github.com/microsoft/aspire/issues/21246> |
| Issue | #21133 | [CI Failure] Flaky: MongoDbReplicaSetFunctionalTests.VerifyMongoDBMultiNodeReplicaSetResource fails to become healthy | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21133> |
| Issue | #21245 | [Failing test]: Azure Functions multi-project test times out during shutdown on Linux | open | radical | <https://github.com/microsoft/aspire/issues/21245> |
| Issue | #21242 | aspire deploy/publish CLI doesn't display in-progress IReportingTask.UpdateAsync status updates | open | eerhardt | <https://github.com/microsoft/aspire/issues/21242> |
| Issue | #21241 | Expose ACA managed OpenTelemetry configuration in TypeScript AppHosts | open | davidfowl | <https://github.com/microsoft/aspire/issues/21241> |
| Issue | #21239 | [13.6.1] Dashboard metrics filter popup extends below viewport and hidden options cannot be scrolled into view | open | shenxianovo | <https://github.com/microsoft/aspire/issues/21239> |
| Issue | #21238 | Easier naming convention extensibility for provisioned resources | open | jrunestone | <https://github.com/microsoft/aspire/issues/21238> |
| Issue | #21221 | `AddRedisOutputCache` crashes at startup on .NET 11: unable to resolve `IOutputCachePolicyProvider` | open | curllog | <https://github.com/microsoft/aspire/issues/21221> |
| Issue | #21217 | [aw] Analyze CI Failure produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21217> |
| Issue | #21236 | Can't add sticky slot app settings for app service | open | jrunestone | <https://github.com/microsoft/aspire/issues/21236> |
| Issue | #21234 | [automated] CI test summaries double-count merged results and need uniquely identifiable job names | open | radical | <https://github.com/microsoft/aspire/issues/21234> |
| Issue | #21219 | Dashboard: steady ~12–14% CPU from SQLite metrics ingestion on long-running apps | open | sebastienros | <https://github.com/microsoft/aspire/issues/21219> |
| Issue | #21170 | [aw] Analyze CI Failure timed out | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21170> |
| Issue | #21213 | VS Code extension: Go AppHost debugging follow-ups | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21213> |
| Issue | #21212 | aspire sdk export -l go: follow-ups | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21212> |
| Issue | #21211 | VS Code extension: verify AppHost child restart in a live session for each debug adapter | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21211> |
| Issue | #21210 | Strengthen weak restore and pod checks in CLI E2E tests | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21210> |
| Issue | #21209 | Select the E2E language-picker entry by name, not key presses | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21209> |
| Issue | #21208 | Go AppHost performance: follow-ups from measurements | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21208> |
| Issue | #21207 | aspire doctor: AppHost toolchain check follow-ups | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21207> |
| Issue | #21206 | Go AppHost: starter go.sum and E2E fixture follow-ups | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21206> |
| Issue | #21205 | Publish pipeline: align JavaScript Dockerfile validator with Go and Python | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21205> |
| Issue | #21204 | Go runtime: hardening follow-ups | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21204> |
| Issue | #21203 | Go AppHost support policy: decisions to record before GA | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21203> |
| Issue | #21202 | Go AppHost CI: add vet, starter and stable-restore validation | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21202> |
| Issue | #21201 | Go AppHost parity gaps vs TypeScript | open | IEvangelist | <https://github.com/microsoft/aspire/issues/21201> |
| Issue | #21198 | SSL_CERT_DIR injected for project resources breaks TLS for Go 1.27+ tools on macOS (public CAs no longer trusted) | open | aarsethio | <https://github.com/microsoft/aspire/issues/21198> |
| Issue | #21192 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21192> |
| Issue | #21190 | [CI Failure] Flaky: AgentInitCommandTests.AgentInitCommand_GlobalScope_InstallsTelemetryHook_ForSelectedDetectedEnvironment times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21190> |
| Issue | #21185 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppTaskScriptWorks fixture InitializeAsync times out after 2 minutes via Polly.Timeout | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21185> |
| Issue | #21184 | [CI Failure] Flaky: DenoFunctionalTests.VerifyDenoAppDirectExecutionWorks fixture InitializeAsync times out after 2 minutes via Polly.Timeout | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21184> |
| Issue | #21182 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21182> |
| Issue | #21180 | [CI Failure] Flaky: VS Code extension E2E (Windows, tree-actions) 'select and execute run and debug pipeline steps' times out waiting for picker prompt | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21180> |
| Issue | #21177 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21177> |
| Issue | #21157 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21157> |
| Issue | #21174 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21174> |
| Issue | #21172 | [CI Failure] Flaky: DevTunnelMonitorTests.OlderReconciliationCannotUndoNewerLogObservations throws ObjectDisposedException on disposed IServiceProvider | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21172> |
| Issue | #21164 | [automated] Track artifact validation gaps from infrastructure test cleanup | open | radical | <https://github.com/microsoft/aspire/issues/21164> |
| Issue | #21165 | [automated] Diagnose invalid test-trigger maps in the selector | open | radical | <https://github.com/microsoft/aspire/issues/21165> |
| Issue | #21160 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21160> |
| Issue | #21159 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21159> |
| Issue | #21158 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/21158> |
| Issue | #21152 | Aspire.Npgsql.EntityFrameworkCore.PostgreSQL: TypeLoadException with Npgsql.EntityFrameworkCore.PostgreSQL 11.0.0-rc.2 (NpgsqlExecutionStrategy no longer exists) | open | buvinghausen | <https://github.com/microsoft/aspire/issues/21152> |
| Issue | #21146 | Capture Nuxt validation failure diagnostics and run Node 22 on PRs | open | radical | <https://github.com/microsoft/aspire/issues/21146> |
| Issue | #21142 | [CI Failure] Flaky: DevTunnelMonitorTests.EndpointCallbackCanStopAndRestartParentWithoutBlockingMonitor throws ObjectDisposedException on disposed IServiceProvider | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21142> |
| Issue | #21141 | [CI Failure] Flaky: GitRepositoryTests.GetIncludedFilesAsync_EmitsProfilingActivityForGitProcess times out after 30s on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21141> |
| Issue | #21140 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21140> |
| Issue | #21139 | [CI Failure] Flaky: SignalingFakeTimeProviderTests.TimerCreatedOnlySignalsRetryDelayAfterPollyTimeoutIsArmed expects a Polly timeout exception that is not always thrown | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21139> |
| Issue | #21138 | `WaitFor` fails the whole app when a dependency container is briefly `RuntimeUnhealthy`, although DCP resumes it | open | bart-vmware | <https://github.com/microsoft/aspire/issues/21138> |
| Issue | #21134 | [CI Failure] Flaky: DevTunnelMonitorTests.RestartRejectsReadinessFromPreviousRun throws ObjectDisposedException on disposed IServiceProvider | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21134> |
| Issue | #21126 | [CI Failure] Flaky: MetricsTests.ChartContainer_UnavailableHistogramPercentiles_TablePreservesExemplars fails with empty exemplars dialog collection on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21126> |
| Issue | #21132 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Local) RemoteExecutor times out under CPU contention | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/21132> |
| Issue | #20423 | [CI Failure] Flaky: VS Code extension Blazor browser debugger E2E (standalone) times out waiting for pwa-msedge child session on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20423> |
| Issue | #20117 | VS Code: Blazor WebAssembly debugging intermittently fails to attach on Windows | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20117> |
| Issue | #14011 | .WithContainerRegistry has no effect when deploying to Kubernetes | closed | dmitrynovik | <https://github.com/microsoft/aspire/issues/14011> |
| Issue | #21073 | Make Entra redirect URI configuration follow consumer endpoints and callback paths | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21073> |
| Issue | #20926 | CLI update notification displays build metadata for official releases | closed | JamesNK | <https://github.com/microsoft/aspire/issues/20926> |
| Issue | #20401 | Update Azure AI client integrations: retire OpenAI and Inference packages and add Extensions.OpenAI and Projects | closed | eerhardt | <https://github.com/microsoft/aspire/issues/20401> |
| Issue | #21042 | Support parameter-backed redirect URIs in the Entra ID hosting integration | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21042> |
| Issue | #20804 | Add support for ACME providers other than LetsEncrypt in cert manager K8S extension | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20804> |
| Issue | #18284 | Make AKS node pool OS SKU configurable (support 'AzureLinux') in AddAzureKubernetesEnvironment | closed | baotruong04 | <https://github.com/microsoft/aspire/issues/18284> |
| Issue | #20678 | Remove --replica from aspire terminal commands and select replicas by resource instance ID | closed | JamesNK | <https://github.com/microsoft/aspire/issues/20678> |
| Issue | #21030 | Support explicit owners for provisioned Microsoft Entra application registrations and service principals | closed | eerhardt | <https://github.com/microsoft/aspire/issues/21030> |
| Issue | #20068 | Remove temporary dashboard image override before 17.0 ships | closed | joperezr | <https://github.com/microsoft/aspire/issues/20068> |
| Issue | #20964 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Local) RemoteExecutor times out on macOS under CPU contention | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20964> |
| Issue | #20953 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Agent) RemoteExecutor times out on macOS under CPU contention | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20953> |
| Issue | #20891 | [CI Failure] Flaky: TelemetryShutdownTests.Shutdown_HandlesBlockedDeliveryAndStorage(Dashboard) RemoteExecutor times out on macOS under CPU contention | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20891> |
| Issue | #15241 | Migrate E2E tests to Hex1bTerminalAutomator API and build reusable automation helpers | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/15241> |
| Issue | #17718 | In k8s need anti-affinity for pods to avoid replicas being scheduled on the same node | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17718> |
| Issue | #16317 | Proposal: Add live interactive terminal support to Aspire (.WithTerminal()) | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/16317> |
| Issue | #9964 | "Production-First" focus right from the start | closed | akhanalcs | <https://github.com/microsoft/aspire/issues/9964> |
| Issue | #21097 | AzureWebPubSubHubResource does not expose connection properties | closed | austinaviv | <https://github.com/microsoft/aspire/issues/21097> |
| Issue | #17716 | Investigate pod disruption potential in K8S/AKS implementation | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17716> |
| Issue | #20777 | [Failing test]: DeployDotnetProjectResourcesWithEndpointsAndAzureStorageToAzureSandbox returns HTTP 401 | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/20777> |
| Issue | #20521 | [13.6] Breaking change to `IInteractionService` | closed | afscrome | <https://github.com/microsoft/aspire/issues/20521> |
| Issue | #20439 | Dashboard terminal colors have poor contrast, with no light theme or palette controls | closed | joperezr | <https://github.com/microsoft/aspire/issues/20439> |
| Issue | #16999 | Track first-class Kubernetes persistent volume support | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/16999> |
