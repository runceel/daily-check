# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 22 |
| オープン中の新規 PR     | 17 |
| クローズ (未マージ) PR  | 5 |
| 新規 Issue              | 19 |
| クローズ Issue          | 15 |
| 主要コントリビューター  | mitchdenny, adamint, ellahathaway, danegsta, eerhardt, aspire-repo-bot[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19848](https://github.com/microsoft/aspire/pull/19848) — Remove retired GitHub Models integration （PR / open / eerhardt）
  GitHub Models 統合を利用する開発者は、削除予定の連携と代替構成を確認し、依存する AppHost 設定を更新してください。
- **⚠ 破壊的変更** [#19810](https://github.com/microsoft/aspire/pull/19810) — Improve Azure Sandbox defaults （PR / open / mitchdenny）
  Azure Sandbox の既定値に依存する利用者は、環境作成時のリソース設定が変わるため、既存テンプレートを見直してください。
- **⚠ 破壊的変更** [#19555](https://github.com/microsoft/aspire/pull/19555) — Project Radius backing resource connections from recipe outputs, and upgrade to Radius 0.60 （PR / open / nellshamrell）
  Radius 統合を使う利用者は、0.60 への更新と recipe output からの接続情報取得に伴う設定・API 互換性を確認してください。
- **⚠ セキュリティ** [#19845](https://github.com/microsoft/aspire/pull/19845) — Bump the npm_and_yarn group across 5 directories with 3 updates （PR / open / dependabot[bot]）
  VS Code 拡張の利用者は、npm/Yarn 依存更新による脆弱性修正を取り込み、拡張の回帰を確認してください。
- **⚠ セキュリティ** [#19513](https://github.com/microsoft/aspire/pull/19513) — Bump the npm group across 1 directory with 23 updates （PR / open / dependabot[bot]）
  JavaScript テンプレートを利用する開発者は、依存 23 件の更新とセキュリティ修正を確認してください。
- **⚠ セキュリティ** [#18837](https://github.com/microsoft/aspire/pull/18837) — deps: consolidated Aspire JavaScript template security updates (tracked by #18858) （PR / closed / dependabot[bot]）
  Aspire JavaScript テンプレートの依存更新 PR はクローズ済みのため、取り込み済みの後続修正または代替 PR を確認してください。
- **非推奨/廃止** [#19846](https://github.com/microsoft/aspire/pull/19846) — Remove obsolete NuGet layout command （PR / merged / eerhardt）
  `dotnet aspire` の obsolete な NuGet layout command を呼び出す利用者は、コマンド削除に備えて manifest/bundle 手順を更新してください。

## このリポジトリの要点

CLI と VS Code 拡張の開発体験が大きく進み、AppHost パス正規化、古い CLI 警告、Visual Studio 起動修正がマージされました。  
NuGet layout command の削除は利用者影響があるため要確認で、DevTunnel のリージョン自動選択と補助 backchannel の安定性も改善されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19846](https://github.com/microsoft/aspire/pull/19846) — Remove obsolete NuGet layout command

- 作者: eerhardt / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +5 / -431
- マージ日時 (UTC): `2026-09-01 20:27:45`

**変更概要**

obsolete となった NuGet layout command と関連テストを削除し、bundle 仕様の記述を整理しました。  
CLI のコマンド実装からレイアウト処理を取り除くため、古いコマンドをスクリプトから呼び出している利用者が影響を受けます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/bundle.md` | 3 | 8 |
| `src/Aspire.Managed/NuGet/Commands/LayoutCommand.cs` | 0 | 154 |
| `src/Aspire.Managed/Program.cs` | 0 | 1 |
| `tests/Aspire.Hosting.RemoteHost.Tests/ManifestCommandTests.cs` | 1 | 267 |
| `tests/Aspire.Managed.Tests/TerminalHostSignalTests.cs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `5c02e9e` Remove obsolete NuGet layout command

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**。`Aspire.Managed` の NuGet layout command 実装が削除され、対応する CLI 操作は利用できなくなります。

**既存利用者への影響**

layout command を利用しているスクリプトは、manifest/bundle の現行コマンドへ移行してください。利用していない AppHost は通常変更不要です。

### [#19762](https://github.com/microsoft/aspire/pull/19762) — Match AppHosts across equivalent filesystem paths

- 作者: danegsta / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +2960 / -1776
- マージ日時 (UTC): `2026-09-02 02:28:15`

**変更概要**

同一 AppHost を表すパスが symlink や別表記で渡された場合も、CLI が同じプロジェクトとして照合できるようにしました。  
パス正規化、接続解決、起動・停止・選択処理、補助 backchannel 周辺を横断して比較ロジックを統一しています。  
複数のパス表現や symlink を使う開発環境で AppHost を操作する利用者の誤検出を減らします。

<details><summary>変更ファイル (74 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Aspire.Cli.csproj` | 1 | 0 |
| `src/Aspire.Cli/Backchannel/AppHostAuxiliaryBackchannel.cs` | 22 | 30 |
| `src/Aspire.Cli/Backchannel/AppHostConnectionHelper.cs` | 9 | 1 |
| `src/Aspire.Cli/Backchannel/AppHostConnectionResolver.cs` | 5 | 4 |
| `src/Aspire.Cli/Backchannel/AuxiliaryBackchannelMonitor.cs` | 303 | 195 |
| `src/Aspire.Cli/Backchannel/IAppHostAuxiliaryBackchannel.cs` | 4 | 3 |
| `src/Aspire.Cli/Backchannel/IAuxiliaryBackchannelMonitor.cs` | 0 | 7 |
| `src/Aspire.Cli/Backchannel/OrphanedAppHostCollector.cs` | 1 | 2 |
| `src/Aspire.Cli/Commands/AppHostLauncher.cs` | 93 | 61 |
| `src/Aspire.Cli/Commands/ResourceCommand.cs` | 6 | 2 |
| `src/Aspire.Cli/Commands/StopCommand.cs` | 23 | 38 |
| `src/Aspire.Cli/Mcp/Tools/SelectAppHostTool.cs` | 14 | 15 |
| `src/Aspire.Cli/Projects/DotNetAppHostProject.cs` | 9 | 6 |
| `src/Aspire.Cli/Projects/GuestAppHostProject.cs` | 5 | 4 |
| `src/Aspire.Cli/Projects/ProjectLocator.cs` | 60 | 43 |
| _... 他 59 件_ | | |

</details>

<details><summary>コミット (20 件)</summary>

- `14ac75b` Normalize AppHost filesystem paths
- `20ab2ab` Use symlink resolution for AppHost paths
- `de9c387` Handle AppHost path aliases consistently
- `87b3d9f` Normalize project locator path assertions
- `ffef2b5` Merge origin/main into apphost path normalization
- `fa63eae` Address AppHost path review feedback
- `52e0a2f` Preserve selected AppHost path display
- `04bbefb` Normalize remaining AppHost path comparisons
- _... 他 12 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開コマンドの意図は維持したまま、`ProjectLocator` と connection resolver のパス比較・正規化経路を整理した変更です。AppHost の表示パスを保持する処理も追加されています。

**既存利用者への影響**

通常は移行不要です。CLI 拡張や独自ツールでパスを文字列比較している場合は、正規化後の AppHost 識別結果を確認してください。

### [#19670](https://github.com/microsoft/aspire/pull/19670) — Warn when VS Code uses an outdated Aspire CLI

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +2415 / -88
- マージ日時 (UTC): `2026-09-02 01:13:26`

**変更概要**

VS Code 拡張が古い Aspire CLI を使っている場合に警告し、更新操作を対象の実行ファイルへルーティングするようにしました。  
CLI probe、one-shot 操作、通知ライフサイクルと E2E テストを整理し、誤った CLI 更新案内を防ぎます。  
VS Code から AppHost を操作する開発者は、警告と更新導線の変更を確認してください。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/loc/xlf/aspire-vscode.xlf` | 6 | 0 |
| `extension/package.nls.json` | 2 | 0 |
| `extension/src/activation/registerCliCommands.ts` | 28 | 13 |
| `extension/src/commands/update.ts` | 7 | 2 |
| `extension/src/data/AppHostDataRepository.ts` | 2 | 0 |
| `extension/src/data/appHostCliRunner.ts` | 4 | 1 |
| `extension/src/data/appHostPsPoller.ts` | 3 | 0 |
| `extension/src/extension.ts` | 14 | 0 |
| `extension/src/loc/strings.ts` | 2 | 0 |
| `extension/src/services/AppHostStopper.ts` | 4 | 1 |
| `extension/src/test/appHostCliRunner.test.ts` | 7 | 1 |
| `extension/src/test/appHostDataRepository.test.ts` | 26 | 0 |
| `extension/src/test/appHostStopper.test.ts` | 8 | 0 |
| `extension/src/test/aspirePackageRestoreProvider.test.ts` | 140 | 2 |
| `extension/src/test/aspireTerminalProvider.test.ts` | 9 | 0 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (31 件)</summary>

- `ca91813` Warn when Aspire CLI is outdated
- `9d30114` Route outdated CLI updates to the warned executable
- `7f75bbf` Fix outdated CLI warning lifecycle
- `0301818` Stabilize outdated CLI notification E2E
- `067268e` Warn from exact Aspire CLI operations
- `30954a2` Transfer CLI probe slots directly
- `c492da2` Report one-shot Aspire CLI operations
- `9bfc2ba` Generalize outdated Aspire CLI warnings
- _... 他 23 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

VS Code 拡張内部の CLI probe・通知・更新サービスを一般化した変更で、AppHost API の破壊的変更は示されていません。

**既存利用者への影響**

移行は不要ですが、拡張と CLI のバージョンを更新し、警告表示と自動更新が組織の開発手順に合うか確認してください。

### [#19230](https://github.com/microsoft/aspire/pull/19230) — Fix DevTunnel health check for auto-selected regions

- 作者: Vladipz / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +116 / -6
- マージ日時 (UTC): `2026-09-02 00:58:45`

**変更概要**

DevTunnel がリージョンを自動選択する場合の health check を修正し、ポート操作では修飾済みの DevTunnel ID を使うようにしました。  
クロスクラスター構成での回避策を明確化し、リソースビルダーと health check のテストを追加しています。  
DevTunnel 統合を使う AppHost の自動リージョン環境で接続安定性が向上します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.DevTunnels/DevTunnelHealthCheck.cs` | 8 | 2 |
| `src/Aspire.Hosting.DevTunnels/DevTunnelResourceBuilderExtensions.cs` | 8 | 3 |
| `tests/Aspire.Hosting.DevTunnels.Tests/DevTunnelResourceBuilderExtensionsTests.cs` | 97 | 0 |
| `tests/Aspire.Hosting.DevTunnels.Tests/TestDevTunnelClient.cs` | 3 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `2a21bc5` Fix DevTunnel health check for auto-selected regions
- `4817801` Use qualified DevTunnel ID for port operations
- `278449b` Clarify DevTunnel cross-cluster workaround
- `bb078f4` Merge main into DevTunnel qualified ID fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

health check と resource builder の内部解決ロジックを更新し、qualified DevTunnel ID をポート操作へ渡す構造にしました。公開 API の破壊的変更はありません。

**既存利用者への影響**

通常は移行不要です。自動リージョンや複数クラスターで DevTunnel を使う場合は、再デプロイ後の health check とポート転送を確認してください。

### [#19850](https://github.com/microsoft/aspire/pull/19850) — Fix opening Visual Studio

- 作者: eerhardt / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +13 / -0
- マージ日時 (UTC): `2026-09-01 22:45:11`

**変更概要**

FoundryAgents の playground で Visual Studio を正しく起動できるよう、ソリューションと launch settings を補いました。  
開発環境での起動先・引数の解決を修正する変更で、実行時の Aspire API には影響しません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 1 | 0 |
| `playground/FoundryAgents/DotNetInvocationHostedAgent/Properties/launchSettings.json` | 12 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `4907042` Fix opening Visual Studio

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`Aspire.slnx` と playground の `launchSettings.json` の設定変更のみで、公開 API の変更や破壊的変更はありません。

**既存利用者への影響**

移行は不要です。該当 playground を利用する開発者は、最新のソリューション設定を取得して Visual Studio 起動を確認してください。

### [#19832](https://github.com/microsoft/aspire/pull/19832) — Bound AppHost auxiliary backchannel handshake

- 作者: adamint / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +133 / -24
- マージ日時 (UTC): `2026-09-01 22:07:54`

**変更概要**

AppHost の auxiliary backchannel handshake に期限を設け、接続相手を明確に束縛するようにしました。  
CLI 側の handshake 実装とテストを更新し、応答しない相手による待機を制限します。  
AppHost と CLI の補助通信を利用する開発者は、接続確立とタイムアウト挙動を確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Backchannel/AppHostAuxiliaryBackchannel.cs` | 66 | 13 |
| `tests/Aspire.Cli.Tests/Backchannel/AppHostAuxiliaryBackchannelTests.cs` | 67 | 11 |

</details>

<details><summary>コミット (2 件)</summary>

- `a41a25f` Bound AppHost auxiliary handshake
- `9de0f9f` Enforce AppHost handshake deadline

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

補助 backchannel の handshake 実装に deadline と相手の束縛を追加した内部プロトコル変更です。通常の公開 AppHost API のシグネチャ変更はありません。

**既存利用者への影響**

通常は移行不要ですが、独自の auxiliary backchannel 実装や長時間 handshake を前提とする拡張はタイムアウト条件を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19851 | Prepare VS Code extension release v1.22.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19851> |
| #19635 | Fix Java starter JDK and transport reliability | adamint | <https://github.com/microsoft/aspire/pull/19635> |
| #19831 | Fix Rust AppHost run-session notification routing | adamint | <https://github.com/microsoft/aspire/pull/19831> |
| #19755 | Improve VS Code AppHost build failure notifications | ellahathaway | <https://github.com/microsoft/aspire/pull/19755> |
| #19837 | Use supported Cosmos emulator API in consumers | mitchdenny | <https://github.com/microsoft/aspire/pull/19837> |
| #19760 | ci(vscode): Keep CI green when Azure Functions E2E flakes | radical | <https://github.com/microsoft/aspire/pull/19760> |
| #15671 | Emit otel from Cosmos Db Preview Emulator | afscrome | <https://github.com/microsoft/aspire/pull/15671> |
| #19826 | Add a csi volume source to VolumeV1 (Aspire.Hosting.Kubernetes) | timritzer | <https://github.com/microsoft/aspire/pull/19826> |
| #19822 | Avoid ephemeral executable target port collisions | danegsta | <https://github.com/microsoft/aspire/pull/19822> |
| #19727 | Fix self-update channel persistence test | karolz-ms | <https://github.com/microsoft/aspire/pull/19727> |
| #19719 | Load polyglot AppHost settings from project root | sebastienros | <https://github.com/microsoft/aspire/pull/19719> |
| #19821 | Prepare VS Code extension release v1.21.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19821> |
| #19754 | Prevent Aspire view from stealing sidebar focus | ellahathaway | <https://github.com/microsoft/aspire/pull/19754> |
| #19595 | Update Tuf and Sigstore to 1.0.1 | mitchdenny | <https://github.com/microsoft/aspire/pull/19595> |
| #19801 | Fix Azure Sandbox deployment principal binding | mitchdenny | <https://github.com/microsoft/aspire/pull/19801> |
| #19404 | Add portable volume path environment variables | mitchdenny | <https://github.com/microsoft/aspire/pull/19404> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19820 | Detect GitHub Copilot App as an agent client | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19820> |
| PR | #19854 | Keep Aspire CLI notification claim timestamps consistent | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19854> |
| PR | #19853 | [release/13.5] Fix DevTunnel health check for auto-selected regions | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19853> |
| PR | #19848 | Remove retired GitHub Models integration | open | eerhardt | <https://github.com/microsoft/aspire/pull/19848> |
| PR | #19810 | Improve Azure Sandbox defaults | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19810> |
| PR | #19828 | Add review-waiting alerts to the Aspire Team App canvas | open | joperezr | <https://github.com/microsoft/aspire/pull/19828> |
| PR | #19847 | Move bundled NuGet operations into Aspire CLI | open | eerhardt | <https://github.com/microsoft/aspire/pull/19847> |
| PR | #19852 | Bump the github-actions group across 1 directory with 13 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19852> |
| PR | #19827 | Add MCP agent asset support | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19827> |
| PR | #19843 | Hide Azure environment when all resources use emulators | open | eerhardt | <https://github.com/microsoft/aspire/pull/19843> |
| PR | #19844 | Bump browserslist from 4.28.2 to 4.28.8 in /extension | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19844> |
| PR | #19845 | Bump the npm_and_yarn group across 5 directories with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19845> |
| PR | #19842 | Preserve Dashboard error badge counts across navigation | open | Copilot | <https://github.com/microsoft/aspire/pull/19842> |
| PR | #19811 | Improve terminal sizing controls and defaults | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19811> |
| PR | #19814 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19814> |
| PR | #19812 | Add dashboard run timeline annotations | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19812> |
| PR | #19813 | [main] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/19813> |
| PR | #19514 | Bump the github-actions group across 1 directory with 12 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19514> |
| PR | #19130 | Complete the TypeScript 7 compatibility bridge | closed | adamint | <https://github.com/microsoft/aspire/pull/19130> |
| PR | #19133 | Cover per-language debugger launch flows in extension E2E | closed | adamint | <https://github.com/microsoft/aspire/pull/19133> |
| PR | #19785 | Restore legacy extension Marketplace images | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/19785> |
| PR | #19679 | Open CLI diagnostic logs in VS Code after failures | closed | adamint | <https://github.com/microsoft/aspire/pull/19679> |
| Issue | #19855 | [Java starter] Make the AppHost a project | open | adamint | <https://github.com/microsoft/aspire/issues/19855> |
| Issue | #19849 | Consider prompting file-based AppHosts to opt into the CLI bundle during aspire update | open | Copilot | <https://github.com/microsoft/aspire/issues/19849> |
| Issue | #19830 | [API Proposal] Attach an HTTPRoute to a pre-existing / cross-namespace Gateway, and model HTTPRoute filters (URLRewrite) | open | timritzer | <https://github.com/microsoft/aspire/issues/19830> |
| Issue | #19833 | [API Proposal] Make workload-identity federation reachable from a custom compute environment | open | timritzer | <https://github.com/microsoft/aspire/issues/19833> |
| Issue | #19841 | Dashboard error badge count disappears after switching tabs | open | Copilot | <https://github.com/microsoft/aspire/issues/19841> |
| Issue | #19840 | Expose KubernetesEnvironmentResource.ResolveExpressionAsync as a public utility method | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19840> |
| Issue | #19838 | [CI Failure] Multiple unrelated 'Build test project' jobs (Hosting.Azure, Hosting.Azure.Kubernetes, Playground) fail with generic exit code 1 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19838> |
| Issue | #19839 | [CI Failure] Flaky: ProcessExecutionTests.WaitForExitAsync_WithGracefulServices_SignalerThrows_StillEscalatesToKill fails with 'Assert.Single() Failure: The collection was empty' on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19839> |
| Issue | #19816 | [API Proposal] Add a `csi` volume source to VolumeV1 (Aspire.Hosting.Kubernetes) | closed | timritzer | <https://github.com/microsoft/aspire/issues/19816> |
| Issue | #19836 | [API Proposal] Resource projections: typed, target-scoped container views instead of implicit shape conversion | open | danegsta | <https://github.com/microsoft/aspire/issues/19836> |
| Issue | #19835 | [CI Failure] Flaky: ExtensionChangelogFinalizedWorkflowTests.ReleaseBranchWithStaleExtensionBaseAdvanceFails fails on unrelated PRs, likely due to repo/branch state assumptions | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19835> |
| Issue | #19834 | Model authentication policies for Azure Sandbox deployment endpoints | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19834> |
| Issue | #19823 | Add Kubernetes Job workload support to the Kubernetes publisher | open | cdbrown2018 | <https://github.com/microsoft/aspire/issues/19823> |
| Issue | #19824 | [aw] PR Documentation Check produced no safe outputs | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19824> |
| Issue | #19825 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19825> |
| Issue | #19819 | Support Apple's container runtime in Aspire | open | joperezr | <https://github.com/microsoft/aspire/issues/19819> |
| Issue | #19817 | Visualize the Aspire app model in GitHub Copilot's app canvas | open | joperezr | <https://github.com/microsoft/aspire/issues/19817> |
| Issue | #19818 | Add an agent migration skill for Project Resource v2 | open | joperezr | <https://github.com/microsoft/aspire/issues/19818> |
| Issue | #19815 | IDE-execution spec has no way to express a PTY, so WithTerminal() resources fail under IDE execution | closed | m4m4m4 | <https://github.com/microsoft/aspire/issues/19815> |
| Issue | #18790 | DevTunnel resource always reports Unhealthy due to 'devtunnel access list <id> -p <port>' failing to resolve bare tunnel id | closed | andrekiba | <https://github.com/microsoft/aspire/issues/18790> |
| Issue | #19750 | Rust Debug Failing | closed | afscrome | <https://github.com/microsoft/aspire/issues/19750> |
| Issue | #19269 | `aspire run --start-debug-session` hangs while stopping an orphaned AppHost | closed | adamint | <https://github.com/microsoft/aspire/issues/19269> |
| Issue | #19511 | [VS Code] Open CLI diagnostic logs automatically after command failures | closed | adamint | <https://github.com/microsoft/aspire/issues/19511> |
| Issue | #19748 | VS Code improve build failure UX | closed | afscrome | <https://github.com/microsoft/aspire/issues/19748> |
| Issue | #15592 | Configure Cosmos Preview emulator to emit otel | closed | afscrome | <https://github.com/microsoft/aspire/issues/15592> |
| Issue | #19691 | Dashboard project can collide with its randomized OTLP port under `aspire start --isolated` | closed | JamesNK | <https://github.com/microsoft/aspire/issues/19691> |
| Issue | #19793 | `aspire run` intermittently fails at startup: DCP API server refuses connections, while `dotnet run` on the same AppHost always works (Windows, 13.5.2) | closed | rfsmart-amiles | <https://github.com/microsoft/aspire/issues/19793> |
| Issue | #19738 | Images not showing up in extension Marketplace Listing | closed | afscrome | <https://github.com/microsoft/aspire/issues/19738> |
| Issue | #19708 | [Failing test]: Aspire.Cli.EndToEnd.Tests.SelfUpdateChannelPersistenceTests.SelfUpdateToStaging\_RelaunchedCliUsesStagingForImplicitProjectUpdate | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19708> |
| Issue | #19746 | [BUG] - VS Code extension forces navigation on load, even if removed from sidebar. | closed | bitbound | <https://github.com/microsoft/aspire/issues/19746> |
| Issue | #19591 | `TryAddEventingSubscriber` on Windows / Aspire 13.4+ (includes 13.5.2) prevents DCP from reconciling executables, silent hang | closed | AlexeyIsupovST | <https://github.com/microsoft/aspire/issues/19591> |
| Issue | #19433 | source.dot.net "Web Access" broken links to Aspire on GitHub | closed | KalleOlaviNiemitalo | <https://github.com/microsoft/aspire/issues/19433> |
