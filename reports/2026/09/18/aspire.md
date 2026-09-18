# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 19 |
| クローズ (未マージ) PR  | 9 |
| 新規 Issue              | 27 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | JamesNK, eerhardt, karolz-ms, joperezr, aspire-repo-bot[bot], sebastienros |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20188](https://github.com/microsoft/aspire/pull/20188) — Update Azure provisioning CDN and Kusto to beta.3 （PR / open / joperezr）
- **⚠ 破壊的変更** [#20188](https://github.com/microsoft/aspire/pull/20188) — Update Azure provisioning CDN and Kusto to beta.3 （PR / open / joperezr）
- **⚠ 破壊的変更** [#20152](https://github.com/microsoft/aspire/pull/20152) — Prevent Edge compatibility relaunch from breaking browser debugging （PR / merged / Copilot）
  影響: Azure provisioning の依存更新を確認している開発者とインフラ定義の更新担当者が、beta 版依存の互換性とデプロイ手順を要確認です。
- **⚠ 破壊的変更** [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration （PR / merged / eerhardt）
- **⚠ 破壊的変更** [#20152](https://github.com/microsoft/aspire/pull/20152) — Prevent Edge compatibility relaunch from breaking browser debugging （PR / merged / Copilot）
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.1 （PR / open / sebastienros）
  影響: Windows の Edge 互換モード利用者は、デバッガー接続が壊れるケースを避けるために最新の extension と 統合テスト結果を確認してください。
- **⚠ セキュリティ** [#20196](https://github.com/microsoft/aspire/pull/20196) — Bump the npm_and_yarn group across 6 directories with 5 updates （PR / open / dependabot[bot]）
- **⚠ 破壊的変更** [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration （PR / merged / eerhardt）
- **⚠ セキュリティ** [#20194](https://github.com/microsoft/aspire/pull/20194) — Bump the npm_and_yarn group across 11 directories with 5 updates （PR / open / dependabot[bot]）
  影響: GitHub Models を使っていたサンプルや内部機能は、依存が切れているため更新担当者が移行先のプロバイダや設定を見直す必要があります。
- **⚠ セキュリティ** [#19513](https://github.com/microsoft/aspire/pull/19513) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.3.0-alpha.1 （PR / open / sebastienros）

## このリポジトリの要点

- ASP.NET Core と Azure 向けの開発体験を強化する実装が進み、デプロイメントやブラウザデバッグ周りの安定性改善が目立ちます。
- 代表的な変更として Edge 互換モードでのデバッグ修正、Azure provisioning の依存更新、GitHub Models 連携の撤去があり、利用者の運用整理が必要です。
- さらに Project v2 / Azure Container Apps Express などの新機能が拡張され、マルチ言語アプリホスト実装の一貫性が高まっています。
- 今回のトピックは「機能追加」よりも「依存整理と互換性保守」が中心で、リリース前に依存・設定・デバッグ関連の差分を確認する価値があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20152](https://github.com/microsoft/aspire/pull/20152) — Prevent Edge compatibility relaunch from breaking browser debugging

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +99 / -0
- マージ日時 (UTC): `2026-09-16 03:51:53`

**変更概要**

- Edge の互換モード再起動でブラウザデバッグが壊れる問題を修正し、Windows 環境でのデバッグ体験を安定化しました。
- `browser.ts` と E2E テストの更新により、互換設定下でもデバッガー接続が維持されることが確認されています。
- これは Visual Studio Code 拡張利用者にとって機能破綻の回避策として重要で、特にデバッグ周りの運用者に影響が大きいです。
- 実装自体は拡張機能側の制御ロジックの修正で、既存の公開 API 変更はありません。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/CONTRIBUTING.md` | 2 | 0 |
| `extension/scripts/run-e2e.js` | 3 | 0 |
| `extension/src/debugger/languages/browser.ts` | 11 | 0 |
| `extension/src/test-e2e/browserDebugger.e2e.test.ts` | 4 | 0 |
| `extension/src/test/browserDebugger.test.ts` | 78 | 0 |
| `extension/src/test/e2eLaunchProfile.test.ts` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `a289dc7` Initial plan
- `7202f8b` Fix Windows Edge browser debugging under compatibility settings

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- ブラウザデバッガー制御の修正が主眼で、公開 API のシグネチャ変更や新しい抽象層の導入は見当たりません。
- E2E テストと debug extension の境界条件を対象にした修正であり、利用者コードの破壊的変更は想定されません。
- 破壊的変更は明示されていません。

**既存利用者への影響**

- マイグレーションは不要です。互換設定を使う利用者は、最新版へ更新するだけでデバッグの安定性が向上します。

### [#20203](https://github.com/microsoft/aspire/pull/20203) — Remove legacy Azure.ResourceManager.Resources reference

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +6 / -8
- マージ日時 (UTC): `2026-09-17 21:19:10`

**変更概要**

- 古い Azure ResourceManager の参照を削除し、Azure provisioning 実装の依存を整理しています。
- この変更は、利用中の SDK 依存の古さに起因する互換性リスクを下げるための整備で、構成の簡潔化に寄与します。
- リソース管理の内部実装が軽くなり、将来の Azure SDK 変更に対する追従がしやすくなります。
- 直接的な利用者向けの新機能ではないものの、依存整理としては運用側の安定性に直結します。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 0 | 1 |
| `src/Aspire.Hosting.Azure/Aspire.Hosting.Azure.csproj` | 0 | 1 |
| `src/Aspire.Hosting.Azure/Provisioning/Internal/DefaultArmClientProvider.cs` | 4 | 4 |
| `src/Aspire.Hosting.Azure/Provisioning/Internal/DefaultResourceGroupResource.cs` | 1 | 1 |
| `src/Aspire.Hosting.Azure/Provisioning/Internal/DefaultSubscriptionResource.cs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `51d9f02` Remove legacy Azure.ResourceManager.Resources reference

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- Azure provisioning 側の依存削減はパブリック API には趣旨がなく、内部の resource provider 参照整理が中心です。
- 実質的には依存解消と将来互換性の維持であり、公開有効な契約の変更は見当たりません。
- 破壊的変更は記録されていません。

**既存利用者への影響**

- マイグレーションは不要ですが、カスタムの Azure provisioning 定義や依存注入コードがあれば差分を確認しておくと安心です。

### [#20157](https://github.com/microsoft/aspire/pull/20157) — Make Project v2 options polyglot-friendly

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +299 / -7
- マージ日時 (UTC): `2026-09-17 21:01:21`

**変更概要**

- Project v2 のオプション設計を多言語化し、Go / Java / Python / TypeScript の AppHost 実装で扱いやすくしました。
- `DotnetProjectOptions` とそのコード生成テストが追加され、ポリグロット環境での設定の一貫性が向上しています。
- これは AppHost の構成差異を減らし、複数言語開発者が同じ機能を扱えるようにする上で重要です。
- 既存の API には大きな破壊的変更はないものの、カスタム設定を持つコードでは検証を推奨します。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Dotnet/DotnetProjectHostingExtensions.cs` | 2 | 2 |
| `src/Aspire.Hosting.Dotnet/DotnetProjectOptions.cs` | 27 | 0 |
| `src/Aspire.Hosting.Dotnet/README.md` | 29 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/AtsTypeScriptCodeGeneratorTests.cs` | 53 | 0 |
| `tests/Aspire.Hosting.CodeGeneration.TypeScript.Tests/Snapshots/AtsTypeScriptCodeGeneratorTests.Generate_DotnetProjectOptions_UsesDtoWithoutChangingLegacyOptions.verified.txt` | 39 | 0 |
| `tests/Aspire.Hosting.Dotnet.Tests/DotnetProjectBuildCoordinatorTests.cs` | 1 | 1 |
| `tests/Aspire.Hosting.Dotnet.Tests/DotnetProjectOptionsTests.cs` | 133 | 0 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Dotnet/Go/apphost.go` | 3 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Dotnet/Java/AppHost.java` | 3 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Dotnet/Python/apphost.py` | 5 | 1 |
| `tests/PolyglotAppHosts/Aspire.Hosting.Dotnet/TypeScript/apphost.mts` | 3 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `cff70cb` Make Project v2 options polyglot-friendly
- `2d8c122` Add test coverage for DotnetProjectOptions
- `094b152` Merge main into project v2 options

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `DotnetProjectOptions` の設計整理が中心で、API に新しい抽象を導入しつつ既存の利用者向け互換性を維持しています。
- 追加された README とテストは、多言語 AppHost での設定表現の一貫性を担保するためのものです。
- 破壊的変更は明示的には見当たりません。

**既存利用者への影響**

- マイグレーションは通常不要です。既存のプロジェクト設定を利用している場合でも、追加された多言語対応オプションを見ながら差分確認すれば十分です。

### [#20115](https://github.com/microsoft/aspire/pull/20115) — Add experimental Azure Container Apps Express support

- 作者: eerhardt / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +2818 / -19
- マージ日時 (UTC): `2026-09-17 19:00:21`

**変更概要**

- Azure Container Apps の Express モードが experimental として追加され、より軽いデプロイ構成の選択肢が増えました。
- 依存関係やエンドポイント解決、E2E テストの整備が進み、Azure 展開体験の簡略化が狙われています。
- これは AppHost における Azure hosting の柔軟性を広げる変更で、簡易構成を好む利用者にとって価値が大きいです。
- ただし experimental であるため、運用前には生成される構成とセキュリティ境界を確認するべきです。

<details><summary>変更ファイル (41 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppEnvironmentResource.cs` | 29 | 2 |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppExpressSupport.cs` | 25 | 0 |
| `src/Aspire.Hosting.Azure.AppContainers/AzureContainerAppExtensions.cs` | 52 | 7 |
| `src/Aspire.Hosting.Azure.AppContainers/BaseContainerAppContext.cs` | 22 | 0 |
| `src/Aspire.Hosting.Azure.AppContainers/ContainerAppContext.cs` | 13 | 4 |
| `src/Aspire.Hosting.Azure.AppContainers/ContainerAppEnvironmentContext.cs` | 14 | 4 |
| `tests/Aspire.Deployment.EndToEnd.Tests/AcaExpressDeploymentTests.cs` | 451 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureContainerAppExpressEndpointTests.cs` | 394 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureContainerAppExpressTests.cs` | 291 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureContainerAppsTests.cs` | 10 | 2 |
| `tests/Aspire.Hosting.Azure.Tests/AzureDeployerTests.cs` | 63 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/Snapshots/AzureContainerAppExpressEndpointTests.ConsumersAcceptPreservedHttpFromStandardEndpoints_expressConsumer=False.verified.bicep` | 49 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/Snapshots/AzureContainerAppExpressEndpointTests.ConsumersAcceptPreservedHttpFromStandardEndpoints_expressConsumer=True.verified.bicep` | 49 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/Snapshots/AzureContainerAppExpressEndpointTests.CrossEnvironmentReferencesPublishUsingTheProducerDomain_expressConsumer=False.verified.bicep` | 53 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/Snapshots/AzureContainerAppExpressEndpointTests.CrossEnvironmentReferencesPublishUsingTheProducerDomain_expressConsumer=True.verified.bicep` | 53 | 0 |
| _... 他 26 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `d9ed226` Add experimental Azure Container Apps Express support
- `7ec6e5d` Compare ACA E2E managed identity IDs case-insensitively
- `0119698` Reject disabled HTTPS upgrade for ACA Express environments
- `6a1dd33` Use the ACA environment default domain for Express app URLs
- `a100ad2` Fix platform-dependent Express snapshot and drop the outbound HTTP guard
- `b5ef32c` Assert an incorrect secret is rejected in the Express deployment test
- `56d8091` Address review feedback on Express endpoint resolution and E2E test
- `e6c977d` Trim the Express TypeScript export test to the file's existing idiom
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- Azure Container Apps Express は新しい experimental な構成機能であり、既存の実装との共存を重視して設計されています。
- 主要な変更は endpoint resolution と deployment テストの整備で、広範なアプリ構成から膠着的な API 変更は見当たりません。
- ただし実験的な機能であるため、利用環境に応じてプロダ環境の制約を確認する必要があります。

**既存利用者への影響**

- 既存利用者への破壊的変更はなく、experimental なモードを使う場合のみ挙動確認が必要です。運用では特別なマイグレーションは不要です。

### [#20200](https://github.com/microsoft/aspire/pull/20200) — Prepare VS Code extension release v1.23.0

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `vscode-extension-release` `area-vscode-extension`
- 変更行数: +23 / -1
- マージ日時 (UTC): `2026-09-17 17:16:51`

**変更概要**

- VS Code extension の v1.23.0 リリース準備が行われ、更新履歴と package metadata が整えられました。
- これは extension 利用者向けの機能価値を明確化し、購入や導入の判断材料として有用です。
- 実装変更よりもリリース情報の更新が中心ですが、ユーザーへの告知品質が上がる重要な PR です。
- 変更は機能追加ではなくリリース準備であり、既存利用者への破壊的相互作用はありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/CHANGELOG.md` | 22 | 0 |
| `extension/package.json` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `629879b` Prepare VS Code extension release v1.23.0
- `0fa8b7f` Generate extension changelog for v1.23.0
- `33812b1` Focus extension v1.23.0 changelog on VS Code

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- ここは拡張機能のバージョン更新と changelog 整備のみで、公開 API の変更や内部設計の破壊的差分は確認できません。
- 同梱される release notes の整理が主な内容で、運用上の振る舞いよりも情報提供の改善が中心です。
- 破壊的変更はありません。

**既存利用者への影響**

- マイグレーションは不要です。新しい extension バージョンに更新するだけで、変更点の説明を把握しやすくなります。

### [#20046](https://github.com/microsoft/aspire/pull/20046) — Refresh third-party dependencies

- 作者: joperezr / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +14036 / -15700
- マージ日時 (UTC): `2026-09-17 00:25:17`

**変更概要**

- 依存パッケージの更新が大規模にまとめられ、Aspire の再現性とツールチェーン更新の即応性が改善されました。
- 規模の大きい lockfile / package 修正が含まれるものの、主役はライブラリ更新と CI とテスト環境への追従です。
- これによりセキュリティ修正や互換性の最新化が進む一方で、変更の波及範囲が広く大きなレビューが必要です。
- 直接の公開 API 変更は少ないものの、依存更新が多層的に影響するため、リリース前に build と security scan を再確認することが重要です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.config/dotnet-tools.json` | 3 | 3 |
| `.gitattributes` | 3 | 0 |
| `Directory.Packages.props` | 56 | 50 |
| `eng/Versions.props` | 5 | 5 |
| `eng/github-ci/test-trigger-map.yml` | 4 | 0 |
| `playground/AspireWithBun/BunFrontend/bun.lock` | 2 | 3 |
| `playground/AspireWithBun/BunFrontend/package.json` | 1 | 1 |
| `playground/AspireWithBun/package-lock.json` | 10 | 10 |
| `playground/AspireWithBun/package.json` | 4 | 4 |
| `playground/AspireWithDeno/package.json` | 4 | 4 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/README.md` | 4 | 0 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 1854 | 2084 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 39 | 39 |
| `playground/AspireWithJavaScript/AspireJavaScript.NodeApp/package-lock.json` | 275 | 226 |
| `playground/AspireWithJavaScript/AspireJavaScript.NodeApp/package.json` | 3 | 3 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (20 件)</summary>

- `fb90f82` Prepare bulk third-party dependency upgrades
- `1127092` Migrate test infrastructure and generated test projects for dependenc…
- `30d48cf` Refresh npm dependencies across templates, playgrounds, and test fixt…
- `0c20975` Split quarantined dependency updates into a follow-up stack layer
- `20d4114` Fix dependency CI regressions and defer MSBuild upgrade
- `fb5cf92` Preserve supported Node versions in dependency refresh
- `737da13` Hold NodeFrontend refresh until its pnpm graph can be regenerated
- `4866963` Address dependency review coverage and ARM model migration
- _... 他 12 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- third-party dependency の更新は実装ロジックではなく依存ツリーの更新が中心で、API 署名の破壊は見当たりません。
- ただし lockfile が大きく変化するため、ビルド、テスト、セキュリティスキャンの再確認が必要です。
- 破壊的変更は特に明示されていません。

**既存利用者への影響**

- マイグレーションは通常不要ですが、依存差分が大きいため CI とセキュリティ確認を事前に行っておくのが安全です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19961 | Add a simple single-member MongoDB replica set path | sebastienros | <https://github.com/microsoft/aspire/pull/19961> |
| #19997 | DotnetProjectResource publishing | karolz-ms | <https://github.com/microsoft/aspire/pull/19997> |
| #20176 | Update Fluent UI preview and overflow handling | JamesNK | <https://github.com/microsoft/aspire/pull/20176> |
| #20171 | Dim links in historical dashboard runs | JamesNK | <https://github.com/microsoft/aspire/pull/20171> |
| #20141 | Fix dashboard selection indicators | JamesNK | <https://github.com/microsoft/aspire/pull/20141> |
| #20170 | Fix dashboard layout and disabled control styling | JamesNK | <https://github.com/microsoft/aspire/pull/20170> |
| #20082 | Show incompatible dashboard runs as disabled | JamesNK | <https://github.com/microsoft/aspire/pull/20082> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20197 | Update Fluent UI to fix tall dashboard submenu overflow | open | JamesNK | <https://github.com/microsoft/aspire/pull/20197> |
| PR | #20192 | fix(team-app): Watch Aspire 1P’s Proxima repository | open | radical | <https://github.com/microsoft/aspire/pull/20192> |
| PR | #20214 | Support executable references to container-network endpoints | open | danegsta | <https://github.com/microsoft/aspire/pull/20214> |
| PR | #20195 | Add opt-in volume cleanup to aspire stop | open | danegsta | <https://github.com/microsoft/aspire/pull/20195> |
| PR | #20210 | Port Firefox NSS certificate support to the CLI | open | danegsta | <https://github.com/microsoft/aspire/pull/20210> |
| PR | #20211 | Disable Azure SQL principal reconciliation tests | open | sebastienros | <https://github.com/microsoft/aspire/pull/20211> |
| PR | #20209 | Modernize agentic workflows with gh-aw v0.88.7 | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20209> |
| PR | #20208 | Monitor internal mirror freshness in Aspire Team App | open | joperezr | <https://github.com/microsoft/aspire/pull/20208> |
| PR | #20199 | Add a way to inject msbuild properties at build time and run time | open | frederikstonge | <https://github.com/microsoft/aspire/pull/20199> |
| PR | #20198 | Fix EF migration environment callback isolation | open | axies20 | <https://github.com/microsoft/aspire/pull/20198> |
| PR | #20196 | Bump the npm_and_yarn group across 6 directories with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20196> |
| PR | #20194 | Bump the npm_and_yarn group across 11 directories with 5 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20194> |
| PR | #20193 | Bump browserslist from 4.28.2 to 4.28.9 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20193> |
| PR | #20188 | Update Azure provisioning CDN and Kusto to beta.3 | open | joperezr | <https://github.com/microsoft/aspire/pull/20188> |
| PR | #20168 | Resolve stable Aspire CLI script installs via GitHub release redirect, not rate-limited REST API | open | Copilot | <https://github.com/microsoft/aspire/pull/20168> |
| PR | #20180 | Fix Durable Task emulator task hub dashboard URL | open | gabisonia | <https://github.com/microsoft/aspire/pull/20180> |
| PR | #20178 | Update Azure.Provisioning.AppContainers to 1.3.0-beta.1 | open | eerhardt | <https://github.com/microsoft/aspire/pull/20178> |
| PR | #20177 | Migrate dashboard consumers to canonical Aspire images | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20177> |
| PR | #20169 | Increase dashboard console log, structured log, and trace limits | open | JamesNK | <https://github.com/microsoft/aspire/pull/20169> |
| PR | #20166 | Fix template restores using the repository SDK | closed | radical | <https://github.com/microsoft/aspire/pull/20166> |
| PR | #17570 | Add aspire new diagnostic logging | closed | sebastienros | <https://github.com/microsoft/aspire/pull/17570> |
| PR | #15074 | Fix prepare-compose and push generating different container image tags | closed | Copilot | <https://github.com/microsoft/aspire/pull/15074> |
| PR | #20060 | Bump the npm_and_yarn group across 19 directories with 11 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/20060> |
| PR | #19844 | Bump browserslist from 4.28.2 to 4.28.8 in /extension | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19844> |
| PR | #20191 | Update Aspire team camera for Proxima Aspire 1P repo | closed | radical | <https://github.com/microsoft/aspire/pull/20191> |
| PR | #20190 | Update Aspire team camera for Proxima Aspire 1P repo | closed | radical | <https://github.com/microsoft/aspire/pull/20190> |
| PR | #18963 | Disable resilience handler in test builders by default | closed | afscrome | <https://github.com/microsoft/aspire/pull/18963> |
| PR | #18626 | Support VS Code browser debug session termination | closed | adamint | <https://github.com/microsoft/aspire/pull/18626> |
| Issue | #20219 | Add a public resource-oriented terminal lookup API for C# automation | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20219> |
| Issue | #20218 | Add browser end-to-end coverage for detached terminal windows | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20218> |
| Issue | #20217 | Add CLI end-to-end coverage for terminal tape playback | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20217> |
| Issue | #20216 | Add JavaScript behavior coverage for the terminal dock | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20216> |
| Issue | #20215 | Visual Studio cannot launch file-based C# resources after fallback removal | open | Copilot | <https://github.com/microsoft/aspire/issues/20215> |
| Issue | #20213 | Make Aspire's runtime resource graph explicit | open | danegsta | <https://github.com/microsoft/aspire/issues/20213> |
| Issue | #20212 | Expose "passwordless" valkey setup on public API | open | julealgon | <https://github.com/microsoft/aspire/issues/20212> |
| Issue | #20207 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20207> |
| Issue | #20205 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20205> |
| Issue | #20206 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20206> |
| Issue | #20204 | System.InvalidOperationException: Step 'publish-manifest' failed: Collection was modified; enumeration operation may not execute. | open | paulomorgado | <https://github.com/microsoft/aspire/issues/20204> |
| Issue | #20202 | `aspire publish -o` broken | open | erwinkramer | <https://github.com/microsoft/aspire/issues/20202> |
| Issue | #20201 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20201> |
| Issue | #20182 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20182> |
| Issue | #20189 | RunAsFoundryLocal fails on Foundry CLI 0.10+: still calls foundry service (renamed to foundry server) | open | LeftTwixWand | <https://github.com/microsoft/aspire/issues/20189> |
| Issue | #20187 | aka.ms install-script vanity links are not documented and can lag main by several releases | open | radical | <https://github.com/microsoft/aspire/issues/20187> |
| Issue | #20181 | WinGet stable Aspire CLI manifest still points at a preview-tagged CI URL | open | radical | <https://github.com/microsoft/aspire/issues/20181> |
| Issue | #20186 | JavaScript installer ignores parent WithExplicitStart() | open | Chicoo | <https://github.com/microsoft/aspire/issues/20186> |
| Issue | #20172 | DcpOptions.CliPath and DashboardPath resolve to Linux package path although running on Windows | open | wertzui | <https://github.com/microsoft/aspire/issues/20172> |
| Issue | #20185 | [CI Failure] Flaky: VS Code extension dynamic debug configuration E2E teardown fails with EBUSY resource busy/locked on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20185> |
| Issue | #20184 | [CI Failure] Flaky: VS Code extension Blazor browser debugger E2E tests fail with websocket proxy launch failure and WASM root session timeouts on Linux | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20184> |
| Issue | #20183 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20183> |
| Issue | #20179 | Foundry Hosting integration automatically deploys capabilityHosts subresource, no clear way to disable it | open | hansmbakker | <https://github.com/microsoft/aspire/issues/20179> |
| Issue | #20175 | Missing method when calling GetResponsesClient() on AzureOpenAIClient | open | hansmbakker | <https://github.com/microsoft/aspire/issues/20175> |
| Issue | #20173 | Durable Task Scheduler emulator Task Hub dashboard URL uses incorrect default route | open | andrew-flatters-bliss | <https://github.com/microsoft/aspire/issues/20173> |
| Issue | #20174 | Durable Task Scheduler emulator Task Hub dashboard URL uses incorrect default route | closed | andrew-flatters-bliss | <https://github.com/microsoft/aspire/issues/20174> |
| Issue | #20167 | ProjectResource sets its state to "Running" before it is finished building | open | vgeronimos | <https://github.com/microsoft/aspire/issues/20167> |
| Issue | #19034 | Support for Azure Container Apps (ACA) Express | closed | YohanSciubukgian | <https://github.com/microsoft/aspire/issues/19034> |
| Issue | #20151 | VS Code: Blazor "Debug in Browser" fails when Edge relaunches under Windows compatibility settings | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/20151> |
