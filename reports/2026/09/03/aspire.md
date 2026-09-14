# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 16 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 15 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | sebastienros, DamianEdwards, rickylabs, aspire-repo-bot[bot], air-hand, ellahathaway |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration （PR / open / eerhardt）
  `Aspire.Hosting.GitHub.Models` は既に機能停止しており、この PR が入る版ではビルド・配布も終了します。利用者は Microsoft Foundry など別のモデル provider へ移行してください。
- **⚠ 破壊的変更** [#19810](https://github.com/microsoft/aspire/pull/19810) — Improve Azure Sandbox defaults （PR / open / mitchdenny）
  Azure Sandbox 利用者は、`PublishAsAzureSandbox` の group 引数と `PublicEndpointReadyTimeout` の削除に備え、複数環境では `WithComputeEnvironment` を明示し、外部公開 endpoint の指定を確認してください。
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / open / nellshamrell）
  `Aspire.Hosting.Radius` 利用者は control plane を v0.60 以上へ更新する必要があります。旧版では recipe 情報が黙って失われるため、`rad upgrade kubernetes` 実行後に再デプロイしてください。
- **⚠ セキュリティ** [#19845](https://github.com/microsoft/aspire/pull/19845) — Bump the npm_and_yarn group across 5 directories with 3 updates （PR / open / dependabot[bot]）
  playground の JavaScript lockfile に含まれる `postcss-selector-parser` の CVE-2026-9358 修正版を取り込む更新です。該当サンプルを再利用する場合は 7.1.5 以上へ揃えてください。

## このリポジトリの要点

[PR #18627](https://github.com/microsoft/aspire/pull/18627) で TypeScript AppHost の Deno 2 対応が入り、CLI・doctor・scaffolding・VS Code debugging まで一貫して利用できるようになりました。release/13.5 では C#／Polyglot API baseline の固定と DevTunnel の自動選択 region 修正が進んでいます。  
一方、GitHub Models integration の撤去、Azure Sandbox API の整理、Radius 0.60 必須化という破壊的変更案がオープン中で、既存利用者は移行準備が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19807](https://github.com/microsoft/aspire/pull/19807) — Gate the CLI starter validation jobs on the test selector

- 作者: Copilot / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +369 / -30
- マージ日時 (UTC): `2026-09-03 03:19:26`

**変更概要**

全 PR で常時走っていた 6 個の cross-platform CLI starter validation job を、変更の影響範囲に応じた selective CI 対象へ移します。  
selector に `job:cli-starter-validation` を追加し、CLI、AppHost SDK、TypeScript codegen、hosting package、bundle assembly など starter scenario の直接依存が変わった場合だけ実行します。  
選択されたのに job が skip された場合は失敗として扱い、無関係な変更では高コストな validation を省いて CI の fan-out を抑えます。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/tests.yml` | 23 | 20 |
| `docs/ci/test-trigger-map.md` | 23 | 2 |
| `eng/github-ci/test-trigger-map.yml` | 39 | 4 |
| `tests/Infrastructure.Tests/TestTriggerMap/TestTriggerMapTests.cs` | 284 | 4 |

</details>

<details><summary>コミット (13 件)</summary>

- `2e2d1f7` Gate CLI starter validation jobs on the test selector
- `ee635e9` Derive starter validation from CLI tests
- `1f2e797` Route starter validation through stable consumers
- `5b3fbd4` Cover starter runtime dependencies in CI selection
- `ae83c57` Route executable CLI archives to starter validation
- `363d9b4` Consolidate starter validation project rule
- `323a6c7` fix(ci): tighten CLI starter validation selection
- `f2b7936` test(ci): preserve existing final-results assertions
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `tests.yml`、test trigger map、selector の回帰テストに限定され、製品 API の変更はありません。starter validation の直接 artifact 境界と `CLI_BUNDLE` の依存を明示し、各 platform job の実行条件と最終結果判定を同じ selector boolean に結び付けています。

**既存利用者への影響**

利用者の移行は不要です。コントリビューターには、CLI starter に無関係な変更で validation 待ち時間が減る一方、関連 artifact を触る変更では従来どおり全 platform の検証が走ります。

### [#18627](https://github.com/microsoft/aspire/pull/18627) — Add Deno support to the TypeScript AppHost toolchain resolver

- 作者: rickylabs / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +927 / -55
- マージ日時 (UTC): `2026-09-02 23:41:12`

**変更概要**

TypeScript AppHost の toolchain resolver に Deno 2 以上を追加し、Node.js／Bun に加えて Deno で restore、type-check、run、watch を実行できるようにします。  
`packageManager: "deno@..."`、`deno.lock`、`deno.json`、`deno.jsonc` から自動検出し、`aspire doctor` は Deno 1 や判定不能な runtime に具体的な診断を返します。  
scaffolding、証明書信頼の `DENO_CERT`、CI image、VS Code の `pwa-node` debugger handoff まで対応し、TypeScript AppHost の開発体験を一通り揃えています。

<details><summary>変更ファイル (34 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/extension-e2e-tests.yml` | 23 | 0 |
| `extension/loc/xlf/aspire-vscode.xlf` | 6 | 0 |
| `extension/package.nls.json` | 2 | 0 |
| `extension/src/capabilities.ts` | 2 | 0 |
| `extension/src/debugger/languages/node.ts` | 47 | 3 |
| `extension/src/loc/strings.ts` | 2 | 0 |
| `extension/src/test-e2e/launchProfiles.e2e.test.ts` | 36 | 3 |
| `extension/src/test/aspireDebugSession.test.ts` | 56 | 1 |
| `extension/src/test/nodeDebugger.test.ts` | 45 | 0 |
| `src/Aspire.Cli/Projects/DenoVersionNotSupportedException.cs` | 8 | 0 |
| `src/Aspire.Cli/Projects/TypeScriptAppHostToolchainResolver.cs` | 80 | 4 |
| `src/Aspire.Cli/Scaffolding/PackageJsonMerger.cs` | 10 | 7 |
| `src/Aspire.Cli/Scaffolding/ScaffoldingService.cs` | 3 | 0 |
| `src/Aspire.Cli/Templating/Templates/ts-starter/package.json` | 4 | 6 |
| `src/Aspire.Cli/Utils/CommandPathResolver.cs` | 2 | 1 |
| _... 他 19 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `d1413fc` Add Deno toolchain support for TypeScript AppHosts
- `13ca949` Fix Deno watch ready text in E2E helper
- `89e4b52` Merge remote-tracking branch 'origin/main' into feat/deno-typescript-…
- `1d2d120` Fix Deno module resolution
- `da3cd7a` Address Deno review feedback
- `2997f9a` Fix Deno debugger E2E redaction assertion
- `a541d32` Complete Deno runtime validation
- `e2f3091` Version Deno debugger capability
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI に Deno marker 検出と `DenoVersionNotSupportedException` を追加し、install は `deno install`、実行は `deno run -A --unstable-sloppy-imports`、watch は `--check --watch` を使う command vector を定義しています。VS Code extension には versioned capability `deno.v1` と `runtimeExecutable = deno` を渡します。既存 Node.js／Bun の選択規則を変える破壊的変更ではありません。

**既存利用者への影響**

既存 AppHost の移行は不要です。Deno を選ぶプロジェクトは Deno 2 以上を導入し、`packageManager` または Deno の marker file を追加してください。AppHost はホストアクセスのため `-A` で動く点も確認が必要です。

### [#19874](https://github.com/microsoft/aspire/pull/19874) — [release/13.5] Mark Radius provider builders experimental

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +8 / -0
- マージ日時 (UTC): `2026-09-02 22:54:26`

**変更概要**

Radius の AWS／Azure cloud-provider callback interface が、公開する extension method と同じ experimental 境界であることを明示します。  
`IAwsRadiusProviderBuilder`、`IAzureRadiusProviderBuilder` と内部実装に `Experimental("ASPIRERADIUS003")` を付与し、安定 API と誤認して直接参照することを防ぎます。  
release/13.5 の Radius API surface に対する警告整合性を修正する変更です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Radius/CloudProviders/AwsRadiusProviderBuilder.cs` | 2 | 0 |
| `src/Aspire.Hosting.Radius/CloudProviders/AzureRadiusProviderBuilder.cs` | 2 | 0 |
| `src/Aspire.Hosting.Radius/CloudProviders/IAwsRadiusProviderBuilder.cs` | 2 | 0 |
| `src/Aspire.Hosting.Radius/CloudProviders/IAzureRadiusProviderBuilder.cs` | 2 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `1b7dcb0` Mark Radius provider builders experimental

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

型やメソッドのシグネチャは変更せず、4 つの provider builder 型へ `ExperimentalAttribute` と診断 ID `ASPIRERADIUS003` を追加しています。コンパイル警告が新たに発生し得ますが、experimental API の安定性契約を正しく表すための注釈であり、ランタイム上の破壊的変更ではありません。

**既存利用者への影響**

通常の `WithAwsProvider`／`WithAzureProvider` 利用に追加移行はありません。callback interface を直接参照するコードは、experimental API 利用を明示的に承認するか、安定化まで依存を限定してください。

### [#19864](https://github.com/microsoft/aspire/pull/19864) — [release/13.5] Pin Polyglot API surface

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +223 / -17
- マージ日時 (UTC): `2026-09-02 23:10:55`

**変更概要**

release/13.5 で配布する Polyglot／ATS API surface を生成済み baseline として固定します。  
`Aspire.Hosting` と `[AspireExport]` を持つ integration を一括抽出し、Azure、Foundry、Go、Kubernetes、Radius など 11 個の `.ats.txt` を更新しました。  
release branch を main へ戻した際に、予定外の ATS 差分として誤検出されることを防ぐリリース管理上の変更です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.AppContainers/api/Aspire.Hosting.Azure.AppContainers.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure.Kubernetes/api/Aspire.Hosting.Azure.Kubernetes.ats.txt` | 132 | 2 |
| `src/Aspire.Hosting.Azure.Network/api/Aspire.Hosting.Azure.Network.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Azure/api/Aspire.Hosting.Azure.ats.txt` | 10 | 0 |
| `src/Aspire.Hosting.Dotnet/api/Aspire.Hosting.Dotnet.ats.txt` | 8 | 0 |
| `src/Aspire.Hosting.Foundry/api/Aspire.Hosting.Foundry.ats.txt` | 27 | 11 |
| `src/Aspire.Hosting.Go/api/Aspire.Hosting.Go.ats.txt` | 10 | 1 |
| `src/Aspire.Hosting.Kubernetes/api/Aspire.Hosting.Kubernetes.ats.txt` | 12 | 0 |
| `src/Aspire.Hosting.Orleans/api/Aspire.Hosting.Orleans.ats.txt` | 1 | 0 |
| `src/Aspire.Hosting.Radius/api/Aspire.Hosting.Radius.ats.txt` | 12 | 0 |
| `src/Aspire.Hosting/api/Aspire.Hosting.ats.txt` | 9 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `3b38234` Pin Polyglot API surface for 13.5

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

実装や公開 API を新たに変更する PR ではなく、13.5 に既に含まれる export surface を baseline file へ記録しています。`Aspire.Hosting.Dotnet` と `Aspire.Hosting.Radius` の ATS baseline が新規追加され、Foundry など既存 baseline もリリース状態へ同期されました。

**既存利用者への影響**

利用者の移行は不要です。今後の Polyglot API 差分検査が 13.5 の実際の配布面を基準に行われるようになります。

### [#19866](https://github.com/microsoft/aspire/pull/19866) — [release/13.5] Pin C# API surface

- 作者: sebastienros / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +1310 / -143
- マージ日時 (UTC): `2026-09-02 23:10:44`

**変更概要**

release/13.5 で配布する C# API surface を reference assembly 由来の baseline source として固定します。  
114 project を対象に生成処理を行い、Azure、DevTunnels、Docker、Foundry、GitHub Models、Radius、Redis など 17 個の `api/*.cs` をリリース状態へ同期しました。  
release branch の main へのマージ後も、scheduled API delta workflow が正しい基準で差分を検出できるようにします。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.AppContainers/api/Aspire.Hosting.Azure.AppContainers.cs` | 4 | 1 |
| `src/Aspire.Hosting.Azure.AppService/api/Aspire.Hosting.Azure.AppService.cs` | 3 | 1 |
| `src/Aspire.Hosting.Azure.Kubernetes/api/Aspire.Hosting.Azure.Kubernetes.cs` | 317 | 8 |
| `src/Aspire.Hosting.Azure/api/Aspire.Hosting.Azure.cs` | 91 | 0 |
| `src/Aspire.Hosting.Blazor/api/Aspire.Hosting.Blazor.cs` | 8 | 0 |
| `src/Aspire.Hosting.DevTunnels/api/Aspire.Hosting.DevTunnels.cs` | 19 | 0 |
| `src/Aspire.Hosting.Docker/api/Aspire.Hosting.Docker.cs` | 1 | 1 |
| `src/Aspire.Hosting.Dotnet/api/Aspire.Hosting.Dotnet.cs` | 31 | 0 |
| `src/Aspire.Hosting.Foundry/api/Aspire.Hosting.Foundry.cs` | 69 | 81 |
| `src/Aspire.Hosting.GitHub.Models/api/Aspire.Hosting.GitHub.Models.cs` | 6 | 0 |
| `src/Aspire.Hosting.Go/api/Aspire.Hosting.Go.cs` | 25 | 0 |
| `src/Aspire.Hosting.Kubernetes/api/Aspire.Hosting.Kubernetes.cs` | 156 | 11 |
| `src/Aspire.Hosting.Orleans/api/Aspire.Hosting.Orleans.cs` | 4 | 0 |
| `src/Aspire.Hosting.Radius/api/Aspire.Hosting.Radius.cs` | 267 | 0 |
| `src/Aspire.Hosting.Redis/api/Aspire.Hosting.Redis.cs` | 15 | 0 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `5fb59c9` Pin C# API surface for 13.5

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

すべて生成済み API baseline の更新であり、この PR 自体が実装やシグネチャを追加・削除するものではありません。13.5 に含まれる現在の C# surface を確定し、以後の互換性検査で意図しない変更を検出可能にしています。

**既存利用者への影響**

利用者の移行は不要です。ライブラリ保守者にとっては、13.5 以降の public API 変更が baseline 差分として明確になります。

### [#19853](https://github.com/microsoft/aspire/pull/19853) — [release/13.5] Fix DevTunnel health check for auto-selected regions

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +116 / -6
- マージ日時 (UTC): `2026-09-02 20:23:44`

**変更概要**

region を自動選択した DevTunnel で health check が誤った tunnel 識別子を使い、エラーになる 13.3 以降の regression を release/13.5 へ修正します。  
health check と port 操作で cluster 情報を含む qualified DevTunnel ID を利用し、自動 region と明示 region の両方を正しく扱います。  
cross-cluster の既知制約も明文化し、利用者が DevTunnel の readiness error に遭遇するケースを減らします。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.DevTunnels/DevTunnelHealthCheck.cs` | 8 | 2 |
| `src/Aspire.Hosting.DevTunnels/DevTunnelResourceBuilderExtensions.cs` | 8 | 3 |
| `tests/Aspire.Hosting.DevTunnels.Tests/DevTunnelResourceBuilderExtensionsTests.cs` | 97 | 0 |
| `tests/Aspire.Hosting.DevTunnels.Tests/TestDevTunnelClient.cs` | 3 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `9a8376e` Fix DevTunnel health check for auto-selected regions
- `54ec13a` Use qualified DevTunnel ID for port operations
- `1f2130f` Clarify DevTunnel cross-cluster workaround

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DevTunnelHealthCheck` と `DevTunnelResourceBuilderExtensions` の内部で、単純な tunnel ID ではなく cluster-qualified ID を client 操作へ渡すよう変更しています。公開 builder API や設定形式は変わらず、回帰修正としてテストケースが追加されています。

**既存利用者への影響**

移行作業は不要です。自動選択 region の DevTunnel で health check error が発生している利用者は、この修正を含む 13.5 patch へ更新してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19728 | Reuse generated TypeScript fluent promise implementations | sebastienros | <https://github.com/microsoft/aspire/pull/19728> |
| #19872 | Document release branch version bumps | DamianEdwards | <https://github.com/microsoft/aspire/pull/19872> |
| #19871 | Increment patch version from 3 to 4 | DamianEdwards | <https://github.com/microsoft/aspire/pull/19871> |
| #19403 | Fix enum values in YARP environment configuration | air-hand | <https://github.com/microsoft/aspire/pull/19403> |
| #15969 | Implement health checks for Azure AI Inference ChatCompletionsClient and EmbeddingsClient | Formatted | <https://github.com/microsoft/aspire/pull/15969> |
| #19761 | [automated] ci: streamline test job fan-out | radical | <https://github.com/microsoft/aspire/pull/19761> |
| #19865 | Limit Aspire architecture review over-invocation | danegsta | <https://github.com/microsoft/aspire/pull/19865> |
| #19820 | Detect GitHub Copilot App as an agent client | ellahathaway | <https://github.com/microsoft/aspire/pull/19820> |
| #18628 | Add Deno hosting: AddDenoApp / DenoAppResource in Aspire.Hosting.JavaScript | rickylabs | <https://github.com/microsoft/aspire/pull/18628> |
| #19092 | Remove Publish-Build-Assets variable group from main | missymessa | <https://github.com/microsoft/aspire/pull/19092> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19880 | Add typed resource projections for container publishing | open | danegsta | <https://github.com/microsoft/aspire/pull/19880> |
| PR | #19882 | ci: Run extension and CLI E2E only for actual consumers | open | radical | <https://github.com/microsoft/aspire/pull/19882> |
| PR | #19870 | Fix Python callback handle wrapping | open | sebastienros | <https://github.com/microsoft/aspire/pull/19870> |
| PR | #19877 | Fix unpackaged WinUI debugging in VS Code | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19877> |
| PR | #19878 | Remove dead Playwright scanner applicators | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19878> |
| PR | #19868 | Clarify VS Code CLI debug log location | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19868> |
| PR | #19863 | Bump @humanfs/node from 0.16.7 to 0.16.8 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19863> |
| PR | #19856 | Update PR skill for gh media attachments | open | Copilot | <https://github.com/microsoft/aspire/pull/19856> |
| PR | #18934 | Add Dashboard run history access for agents | closed | JamesNK | <https://github.com/microsoft/aspire/pull/18934> |
| PR | #19667 | Use HTTP resilience package instead of Polly.Core | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19667> |
| Issue | #19885 | Detect stale tsx versions when launching TypeScript AppHosts in VS Code | open | Copilot | <https://github.com/microsoft/aspire/issues/19885> |
| Issue | #19884 | [Aspire CLI] aspire stop --force failing due to race condition | open | tjwald | <https://github.com/microsoft/aspire/issues/19884> |
| Issue | #19883 | Allow resources to declare outbound hosts for compute environments | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19883> |
| Issue | #19881 | CI failure cause issues show the wrong job for multi-job runs | open | radical | <https://github.com/microsoft/aspire/issues/19881> |
| Issue | #19879 | [automated] Track conditional PR CI routing defects found by live audit | open | radical | <https://github.com/microsoft/aspire/issues/19879> |
| Issue | #19876 | [CI Failure] GitHub artifact upload fails with ETIMEDOUT network timeout | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19876> |
| Issue | #19875 | [CI Failure] Flaky: VS Code extension E2E (Linux, deno-debugger) shard fails with generic exit code 1, unrelated to PR changes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19875> |
| Issue | #19869 | Python callbacks receive raw Handle for IResourceBuilder arguments | open | sebastienros | <https://github.com/microsoft/aspire/issues/19869> |
| Issue | #19867 | dotnet run --launch-profile ignored when AspireUseCliBundle is true | open | inlineHamed | <https://github.com/microsoft/aspire/issues/19867> |
| Issue | #19862 | `aspire agent init` does not detect portable GitHub Copilot AppImage installations | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19862> |
| Issue | #19861 | [aw] Repo Pulse — Daily Report reported incomplete result | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19861> |
| Issue | #19860 | .NET 8.4.1 - ServiceDefault and OpenTelemetry | open | The3G | <https://github.com/microsoft/aspire/issues/19860> |
| Issue | #19858 | Keycloak Startup time regression | open | tjwald | <https://github.com/microsoft/aspire/issues/19858> |
| Issue | #19859 | Browser logs - playwright chromium acquisition and usage | open | tjwald | <https://github.com/microsoft/aspire/issues/19859> |
| Issue | #19857 | Ship an AOT NuGet in the Aspire bundle | open | Copilot | <https://github.com/microsoft/aspire/issues/19857> |
| Issue | #19171 | CI failing on `release/13.5` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19171> |
| Issue | #16218 | Track Deno support for TypeScript AppHosts | closed | sebastienros | <https://github.com/microsoft/aspire/issues/16218> |
| Issue | #19746 | [BUG] - VS Code extension forces navigation on load, even if removed from sidebar. | closed | bitbound | <https://github.com/microsoft/aspire/issues/19746> |
