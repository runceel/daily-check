# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-11 23:30:11 〜 2026-08-13 00:02:03 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 43 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 9 |
| 新規 Issue              | 32 |
| クローズ Issue          | 32 |
| 主要コントリビューター  | adamint, aspire-repo-bot[bot], JamesNK, mitchdenny, DamianEdwards, sebastienros |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19319](https://github.com/microsoft/aspire/pull/19319) — Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 （PR / open / sebastienros）
  Kafka 計測を利用する開発者は、更新後の alpha API とテレメトリ差分を確認し、#19319 の変更が取り込まれるまで依存バージョンを固定するか評価してください。
- **⚠ 破壊的変更** [#19301](https://github.com/microsoft/aspire/pull/19301) — [automated] feat(cli): report installations with aspire --info （PR / open / radical）
  `aspire --info` の出力を解析するツールやスクリプトは、インストール情報追加による出力形式の変更を確認してください。
- **⚠ 破壊的変更** [#19077](https://github.com/microsoft/aspire/pull/19077) — Expose resolved environment variables to debug launch producers （PR / open / adamint）
  デバッグ起動プロデューサーの実装者は、解決済み環境変数が公開される新しい契約と機密情報の取り扱いを確認してください。
- **⚠ 破壊的変更** [#18991](https://github.com/microsoft/aspire/pull/18991) — Remove misleading TerminalOptions.Shell no-op （PR / merged / mitchdenny）
  `TerminalOptions.Shell` に依存する利用者は、無効な設定が削除されたため、利用中の Aspire バージョンで代替設定を確認してください。
- **⚠ セキュリティ** [#19248](https://github.com/microsoft/aspire/pull/19248) — Redact owning resource's own secret env var in `describe` （PR / open / IEvangelist）
  `aspire describe` の出力をログへ保存する利用者は、所有リソース自身のシークレット環境変数が秘匿される修正を確認してください。
- **⚠ セキュリティ** [#19231](https://github.com/microsoft/aspire/pull/19231) — [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) （PR / merged / IEvangelist）
  Aspire 拡張の利用者は js-yaml 4.3.1 への更新を取り込み、GHSA-5p4m-2wfm-xmqj の影響を受ける依存関係を再評価してください。
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / closed / IEvangelist）
  この PR はクローズ済みのため、利用者は実際に採用された依存関係の修正版と残存アラートを別途確認してください。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / closed / IEvangelist）
  npm 依存関係の更新結果はクローズ済み PR だけでは確定しないため、採用済みバージョンとセキュリティ監査結果を確認してください。
- **非推奨/廃止** [#19295](https://github.com/microsoft/aspire/pull/19295) — Show AppHosts from every VS Code workspace root （PR / open / adamint）
  複数ルートの VS Code ワークスペース利用者は、AppHost の表示範囲変更と既存の選択動作への影響を確認してください。

## このリポジトリの要点

Aspire では VS Code デバッグ終了順序、AppHost のローカル ツール マニフェスト、Kubernetes の TLS 対象選択、CLI 表示が改善されました。  
DCP 依存関係更新と AppHost の待機処理修正も入り、開発時の安定性が向上しています。  
一方、CLI 出力・デバッグ環境変数・TerminalOptions の契約変更候補と、js-yaml のセキュリティ更新は利用者が重点確認すべき事項です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#19145](https://github.com/microsoft/aspire/pull/19145) — Fix browser debug targets, empty webRoot, and resource stop ordering

- 作者: adamint / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +4078 / -261
- マージ日時 (UTC): `2026-08-12 23:10:43`

**変更概要**

VS Code 拡張のブラウザ デバッグ対象、空の `webRoot`、リソース停止順序を修正しました。  
AppHost 終了前にリソース停止を集約し、停止中に開始された処理や失敗を取りこぼさないようにしています。  
Aspire のデバッグ実行とセッション終了を利用する開発者は、ブラウザ選択と停止時の挙動が改善されます。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/loc/xlf/aspire-vscode.xlf` | 15 | 0 |
| `extension/package.nls.json` | 5 | 0 |
| `extension/src/AspireExtensionContext.ts` | 138 | 21 |
| `extension/src/dcp/AspireDcpServer.ts` | 3 | 0 |
| `extension/src/dcp/TestRunSessionManager.ts` | 38 | 12 |
| `extension/src/dcp/types.ts` | 1 | 0 |
| `extension/src/debugger/AspireDebugSession.ts` | 768 | 103 |
| `extension/src/debugger/languages/browser.ts` | 70 | 4 |
| `extension/src/loc/strings.ts` | 5 | 0 |
| `extension/src/server/interactionService.ts` | 6 | 3 |
| `extension/src/test/AspireExtensionContext.test.ts` | 313 | 14 |
| `extension/src/test/aspireDcpServer.test.ts` | 39 | 0 |
| `extension/src/test/aspireDebugSession.test.ts` | 2176 | 101 |
| `extension/src/test/browserDebugger.test.ts` | 169 | 0 |
| `extension/src/test/rpc/interactionServiceTests.test.ts` | 269 | 0 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (37 件)</summary>

- `fabaf18` Fix browser debug targets, empty webRoot, and resource stop ordering
- `6d2f67a` Settle every resource stop before the AppHost, and trim webRoot
- `01a86fe` Report all debug stop failures
- `6510f27` Route the production stop path through the aggregating shutdown
- `6d0e79c` Address review findings on shutdown ordering and browser selection
- `07e9de8` Drain resource stops that start mid-shutdown instead of dropping them
- `8d867d8` Wait for in-flight resource starts before completing the shutdown
- `73a6bcb` Make stopDebugging single-flight and report shutdown-cancelled runs a…
- _... 他 29 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`stopDebugging` の単一実行化、停止処理の集約、ブラウザ デバッグ言語設定の更新が主な内部変更です。  
公開 API の削除・変更は記録されていませんが、デバッグ停止順序と失敗報告の挙動が変わります。

**既存利用者への影響**

通常の VS Code デバッグ利用で必須の移行はありません。  
停止処理を自動化する拡張やテストは、終了順序とキャンセル時の結果を再確認してください。

### [#19310](https://github.com/microsoft/aspire/pull/19310) — Support local tool manifests for AppHost DNX invocation

- 作者: DamianEdwards / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +70 / -26
- マージ日時 (UTC): `2026-08-12 22:57:01`

**変更概要**

AppHost を DNX 経由で起動する際に、ローカル ツール マニフェストを解決できるようにしました。  
SDK の MSBuild ターゲットと CLI 呼び出し解決処理を更新し、ローカルに固定した Aspire CLI を利用できます。  
リポジトリごとにツール マニフェストを管理する AppHost 開発者が対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/list-of-diagnostics.md` | 2 | 2 |
| `src/Aspire.Hosting.AppHost/build/Aspire.Hosting.AppHost.in.targets` | 11 | 8 |
| `src/Aspire.Hosting.Tasks/ResolveAspireCliInvocation.cs` | 3 | 1 |
| `tests/Aspire.Hosting.Sdk.Tests/AppHostSdkTargetsTests.cs` | 54 | 15 |

</details>

<details><summary>コミット (1 件)</summary>

- `f61ce46` Support manifest-aware DNX AppHost invocation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MSBuild ターゲットから DNX AppHost 呼び出しへマニフェスト情報を渡し、`ResolveAspireCliInvocation` の解決分岐を追加しました。  
既存のグローバル CLI 利用 API を削除する変更や、利用者向けの **破壊的変更** は確認できません。

**既存利用者への影響**

既存のグローバル ツール運用に必須の移行はありません。  
ローカル ツール マニフェストを採用する場合は、リポジトリの SDK ターゲットとツール バージョンを確認してください。

### [#19307](https://github.com/microsoft/aspire/pull/19307) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-08-12 22:01:34`

**変更概要**

Microsoft.DCP のビルド 0.25.12 に依存するバージョン情報を更新しました。  
変更は `Version.Details.xml` と `Versions.props` に限定され、Aspire が利用する DCP コンポーネントを新しいビルドへ揃えます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `a6aa53c` Update dependencies from https://github.com/microsoft/dcp build 0.25.12

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存バージョンの置換のみで、Aspire の公開 API シグネチャや新規抽象の変更は記録されていません。  
DCP 側の挙動差分が影響し得るため、統合テストで確認してください。

**既存利用者への影響**

通常の利用者に手動移行は不要です。  
DCP の動作に依存する開発・デプロイ環境では、更新後のリソース起動とオーケストレーションを確認してください。

### [#19254](https://github.com/microsoft/aspire/pull/19254) — [release/13.5] Don't select skipped Gateways and Ingresses for TLS work

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-deployment`
- 変更行数: +502 / -26
- マージ日時 (UTC): `2026-08-12 21:46:34`

**変更概要**

Kubernetes の TLS 処理で、最終的にチャートから除外される Gateway／Ingress を対象にしないよう修正しました。  
TLS ブートストラップ、Gateway FQDN の再試行、Ingress のスキップ警告に関するテストを追加しています。  
Kubernetes 環境でスキップ設定を使う利用者は、不要な TLS 処理や警告が解消されます。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Kubernetes/CertManagerExtensions.cs` | 12 | 6 |
| `src/Aspire.Hosting.Kubernetes/KubernetesEnvironmentResource.cs` | 98 | 15 |
| `src/Aspire.Hosting.Kubernetes/KubernetesGatewayResource.cs` | 8 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesIngressResource.cs` | 8 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Aspire.Hosting.Kubernetes.Tests.csproj` | 1 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/CertManagerTests.cs` | 88 | 1 |
| `tests/Aspire.Hosting.Kubernetes.Tests/KubernetesGatewayTests.cs` | 61 | 4 |
| `tests/Aspire.Hosting.Kubernetes.Tests/KubernetesIngressTests.cs` | 171 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/PipelineStepTestHelpers.cs` | 55 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `71291cb` Don't select skipped Gateways and Ingresses for TLS work
- `e66ad08` Correct DiscoverGatewayFqdnAsync retry budget doc
- `e3b742f` Skip TLS bootstrap for Ingresses that end up omitted from the chart
- `a9c3474` Assert the Ingress skip warning and pin the collection-time invariant

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Gateway／Ingress の選択条件と TLS パイプラインの内部判定を変更し、スキップ済みリソースを除外する不変条件を追加しました。  
公開 API の削除・変更や **破壊的変更** は記録されていません。

**既存利用者への影響**

Kubernetes リソース定義の移行は不要です。  
スキップ対象を含む環境では、生成チャートと TLS 初期化結果を再確認してください。

### [#19256](https://github.com/microsoft/aspire/pull/19256) — [release/13.5] Suppress CLI progress when console logging is enabled

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +179 / -45
- マージ日時 (UTC): `2026-08-12 21:44:29`

**変更概要**

コンソール ロギングが有効な場合に Aspire CLI の対話的な進捗表示を抑制します。  
状態メッセージは保持しつつ、ログ出力とスピナーが重複する問題を避けるよう相互作用サービスを更新しました。  
CI やリダイレクトされたログで CLI を実行する利用者が、読みやすい出力を得られます。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/CliExecutionContext.cs` | 4 | 1 |
| `src/Aspire.Cli/Interaction/ConsoleInteractionService.cs` | 27 | 31 |
| `src/Aspire.Cli/Program.cs` | 3 | 1 |
| `tests/Aspire.Cli.EndToEnd.Tests/Aspire.Cli.EndToEnd.Tests.csproj` | 2 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/DoctorCommandTests.cs` | 59 | 0 |
| `tests/Aspire.Cli.Tests/Acquisition/IdentityResolverTests.cs` | 1 | 0 |
| `tests/Aspire.Cli.Tests/CliBootstrapTests.cs` | 3 | 0 |
| `tests/Aspire.Cli.Tests/Interaction/ConsoleInteractionServiceTests.cs` | 79 | 12 |
| `tests/Aspire.Cli.Tests/Interaction/SpectreConsoleLoggerProviderTests.cs` | 1 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `daae0a5` Suppress CLI progress when console logging is enabled
- `55ac9de` Address console logging review feedback
- `9c72668` Preserve CLI status messages without interactive spinners (#19272)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`CliExecutionContext` と `ConsoleInteractionService` で、コンソール ロギング時の進捗 UI 判定を追加しました。  
CLI の公開コマンドや引数を削除する変更はなく、出力の表示条件のみが変わります。

**既存利用者への影響**

利用者側の移行は不要です。  
CLI 出力を厳密にパースする自動化は、進捗表示が抑制される場合の状態メッセージを確認してください。

### [#19260](https://github.com/microsoft/aspire/pull/19260) — [release/13.5] Fix WaitBehavior.StopOnResourceUnavailable hanging when resource does not exist in model

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +51 / -0
- マージ日時 (UTC): `2026-08-12 21:43:07`

**変更概要**

`WaitBehavior.StopOnResourceUnavailable` が、モデルに存在しないリソースを待ち続けてハングする問題を修正しました。  
現在状態とモデルの存在確認を組み合わせ、リソースがない場合も待機を適切に終了できるようにしています。  
リソース通知を待つ AppHost は、存在しない依存先で停止し続けるリスクが下がります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/ResourceNotificationService.cs` | 16 | 0 |
| `tests/Aspire.Hosting.Tests/ResourceNotificationTests.cs` | 35 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `76c59b4` Fix WaitBehavior.StopOnResourceUnavailable hanging when resource does…
- `9e09b79` Address review feedback
- `fa23180` Use TryGetCurrentState instead of DistributedApplicationModel for exi…
- `0db3e15` Improve WaitOnResourceUnavailable test to verify waiting state
- `112814b` Fix regression: combine TryGetCurrentState with model check
- `3751187` Trigger CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ResourceNotificationService` の現在状態取得とモデル存在確認を組み合わせる内部判定を追加しました。  
公開 API のシグネチャ変更や **破壊的変更** は記録されていません。

**既存利用者への影響**

既存の AppHost コードや設定の移行は不要です。  
存在しないリソースを待つテスト・運用では、修正後に待機が終了することを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19294 | [release/13.5] Enable CLI bundle in C# AppHost templates | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19294> |
| #19263 | [release/13.5] Resolve dotnet paths in doctor checks | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19263> |
| #19264 | [release/13.5] Add AKS persistent volume support | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19264> |
| #19271 | [release/13.5] Pin AKS credential pipeline to the deployment subscription | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19271> |
| #19281 | [release/13.5] Use official Aspire branding in dashboard | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19281> |
| #19249 | Pin published Aspire Dashboard image to a reproducible tag | IEvangelist | <https://github.com/microsoft/aspire/pull/19249> |
| #19305 | Avoid MongoDB credential false positive | adamint | <https://github.com/microsoft/aspire/pull/19305> |
| #19297 | Prove refreshed AppHost tree rendering | adamint | <https://github.com/microsoft/aspire/pull/19297> |
| #19082 | Fix misleading AppHost build failure diagnostics | ellahathaway | <https://github.com/microsoft/aspire/pull/19082> |
| #19195 | Add third-party signing entries for Hex1b and QRCoder | joperezr | <https://github.com/microsoft/aspire/pull/19195> |
| #19296 | Close the dashboard debug browser when the Aspire session ends | adamint | <https://github.com/microsoft/aspire/pull/19296> |
| #19291 | Restore trustworthy VS Code extension E2E gating | adamint | <https://github.com/microsoft/aspire/pull/19291> |
| #19292 | Fix editor state for AppHosts opened through symlinks | adamint | <https://github.com/microsoft/aspire/pull/19292> |
| #19076 | Enable CLI bundle in C# AppHost templates | DamianEdwards | <https://github.com/microsoft/aspire/pull/19076> |
| #19224 | Fix database resource peer resolution | JamesNK | <https://github.com/microsoft/aspire/pull/19224> |
| #19158 | Report an undetermined WSL version instead of asserting WSL2 | adamint | <https://github.com/microsoft/aspire/pull/19158> |
| #19268 | Match dark accent buttons to hyperlinks | JamesNK | <https://github.com/microsoft/aspire/pull/19268> |
| #19124 | Make Aspire extension activity notifications dismissible | adamint | <https://github.com/microsoft/aspire/pull/19124> |
| #19127 | Run VS Code extension E2E tests on a current VS Code | adamint | <https://github.com/microsoft/aspire/pull/19127> |
| #19152 | Stop the Aspire CLI and own its RPC connections during extension deactivation | adamint | <https://github.com/microsoft/aspire/pull/19152> |
| #19261 | Prepare VS Code extension release v1.17.0 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19261> |
| #19276 | Stabilize AppHost tree discovery E2E | adamint | <https://github.com/microsoft/aspire/pull/19276> |
| #19147 | Keep the E2E state file bridge out of production extension builds | adamint | <https://github.com/microsoft/aspire/pull/19147> |
| #19275 | Run VS Code extension E2E tests as non-blocking | JamesNK | <https://github.com/microsoft/aspire/pull/19275> |
| #19272 | Preserve CLI status messages without interactive spinners | JamesNK | <https://github.com/microsoft/aspire/pull/19272> |
| #19219 | Pin AKS credential pipeline to the deployment subscription | mitchdenny | <https://github.com/microsoft/aspire/pull/19219> |
| #19267 | [Broken main] Track the disabled Azure Functions E2E shard in the matrix allowlist | mitchdenny | <https://github.com/microsoft/aspire/pull/19267> |
| #19232 | Resolve dotnet paths in doctor checks | JamesNK | <https://github.com/microsoft/aspire/pull/19232> |
| #19226 | Add AKS persistent volume support | mitchdenny | <https://github.com/microsoft/aspire/pull/19226> |
| #19125 | Emit DCP session termination when stopping resources | adamint | <https://github.com/microsoft/aspire/pull/19125> |
| #19214 | Suppress CLI progress when console logging is enabled | JamesNK | <https://github.com/microsoft/aspire/pull/19214> |
| #17351 | Fix WaitBehavior.StopOnResourceUnavailable hanging when resource does not exist in model | rsd-darshan | <https://github.com/microsoft/aspire/pull/17351> |
| #19142 | Re-enable VS Code extension E2E tests in CI | adamint | <https://github.com/microsoft/aspire/pull/19142> |
| #19244 | Honor ASPIRE_HOME for deployment state | sebastienros | <https://github.com/microsoft/aspire/pull/19244> |
| #19146 | Assert every VS Code extension E2E spec has a CI matrix row | adamint | <https://github.com/microsoft/aspire/pull/19146> |
| #19069 | Cover single-file AppHost re-search fallback and make the no-AppHost error generic | adamint | <https://github.com/microsoft/aspire/pull/19069> |
| #19126 | Keep launch-configuration AppHost targets out of the workspace default | adamint | <https://github.com/microsoft/aspire/pull/19126> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19320 | Sync ASP.NET Core certificate generation sources | open | sebastienros | <https://github.com/microsoft/aspire/pull/19320> |
| PR | #19321 | Tighten deployment test dispatch | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19321> |
| PR | #19316 | Remove inert OpenTelemetry shared source | open | sebastienros | <https://github.com/microsoft/aspire/pull/19316> |
| PR | #19322 | Clean up uploaded interaction files | open | JamesNK | <https://github.com/microsoft/aspire/pull/19322> |
| PR | #19317 | Document current MCP machine information source | open | sebastienros | <https://github.com/microsoft/aspire/pull/19317> |
| PR | #19319 | Update vendored ConfluentKafka instrumentation to 0.2.0-alpha.2 | open | sebastienros | <https://github.com/microsoft/aspire/pull/19319> |
| PR | #19306 | Fix custom IDE project launch | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19306> |
| PR | #19295 | Show AppHosts from every VS Code workspace root | open | adamint | <https://github.com/microsoft/aspire/pull/19295> |
| PR | #19313 | Fix Azure Functions task launch in VS Code | open | adamint | <https://github.com/microsoft/aspire/pull/19313> |
| PR | #19315 | [release/13.5] Support local tool manifests for AppHost DNX invocation | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19315> |
| PR | #19318 | Update bundled Plotly to 2.35.3 | open | sebastienros | <https://github.com/microsoft/aspire/pull/19318> |
| PR | #19312 | [release/13.5] [main] Update dependencies from microsoft/dcp | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19312> |
| PR | #19303 | Use SHA-512 for Aspire Skills bundle integrity checks and hide the remote-fetch preview toggle | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19303> |
| PR | #19301 | [automated] feat(cli): report installations with aspire --info | open | radical | <https://github.com/microsoft/aspire/pull/19301> |
| PR | #19300 | Retry invalid VS Code project locations | open | adamint | <https://github.com/microsoft/aspire/pull/19300> |
| PR | #17658 | Update OpenTelemetry.Instrumentation.ConfluentKafka files to version 0.1.0-alpha.7 | closed | jacintodj18 | <https://github.com/microsoft/aspire/pull/17658> |
| PR | #18473 | Add pr-auto-review agentic workflow | closed | joperezr | <https://github.com/microsoft/aspire/pull/18473> |
| PR | #18617 | [Automated] Update Aspire skills bundle | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18617> |
| PR | #19157 | Recognize linked worktree .git files in QuarantineTools | closed | adamint | <https://github.com/microsoft/aspire/pull/19157> |
| PR | #19132 | Version the AppHost build-ownership capability so no launch runs stale output | closed | adamint | <https://github.com/microsoft/aspire/pull/19132> |
| PR | #19273 | Fix concurrent enumeration race in DistributedApplicationModel.Resources | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19273> |
| PR | #19153 | Quarantine two flaky ProcessGuestLauncherTests | closed | adamint | <https://github.com/microsoft/aspire/pull/19153> |
| PR | #19154 | Fix /quarantine-test and sibling test-management commands failing at Setup .NET | closed | adamint | <https://github.com/microsoft/aspire/pull/19154> |
| PR | #19177 | Make vacuous CI guards capable of failing | closed | adamint | <https://github.com/microsoft/aspire/pull/19177> |
| Issue | #19309 | C# AppHosts should support honoring .NET local tools manifests when using the aspire CLI bundle via dnx invocation | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/19309> |
| Issue | #19314 | Remove Aspire.Dashboard dependency on Microsoft.OpenApi by vendoring schema model types | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19314> |
| Issue | #19311 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19311> |
| Issue | #19304 | Internal mirror blocked by secret scanning false positive from #19224 | closed | adamint | <https://github.com/microsoft/aspire/issues/19304> |
| Issue | #19308 | [CI Failure] Flaky: AzureResourcePreparerTests.PipelineStepAfterBeforeStartCanInspectRoleAssignmentsForTargetAzureResource fails with 'Collection was modified' race condition | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19308> |
| Issue | #19289 | [Extension] Dashboard debug browser remains open when closeDashboardOnDebugEnd is enabled | closed | adamint | <https://github.com/microsoft/aspire/issues/19289> |
| Issue | #19302 | WithTerminal(): graceful `aspire stop` leaks {id}.dcp.sock and {id}.host.sock in ~/.aspire/trmnl (child re-binds UDS after cleanup runs) | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19302> |
| Issue | #19298 | Preserve argument escaping in DotNetNewCommand | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19298> |
| Issue | #19283 | [AspireE2E][VSCode][UX] New Project collects project name before destination directory, leading to folder name collisions | open | joniel-bolocon | <https://github.com/microsoft/aspire/issues/19283> |
| Issue | #19299 | Custom IDE project launches receive a dotnet argument separator and invalid process fallback | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19299> |
| Issue | #19284 | [Regression] Azure Functions resource fails because the generated func task type is unregistered | open | adamint | <https://github.com/microsoft/aspire/issues/19284> |
| Issue | #19293 | [aw] Analyze CI Failure failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19293> |
| Issue | #19288 | [Extension] CodeLens and gutter state are missing when a workspace is opened through a symlink | closed | adamint | <https://github.com/microsoft/aspire/issues/19288> |
| Issue | #19286 | 200+ aspire-managed processes running, Project load hangs, dotnet restore/build hangs | closed | burtonrodman | <https://github.com/microsoft/aspire/issues/19286> |
| Issue | #19290 | CLI crashes in Spectre.Console.LiveRenderable over Remote SSH without a TTY | open | ivnmood | <https://github.com/microsoft/aspire/issues/19290> |
| Issue | #19287 | [VS Code] Multi-root workspace only shows the first discovered AppHost | open | adamint | <https://github.com/microsoft/aspire/issues/19287> |
| Issue | #19285 | Embedded 13.5 CLI bundle omits Fluent UI assets and leaves dashboard blank | open | adamint | <https://github.com/microsoft/aspire/issues/19285> |
| Issue | #19255 | Long AppHost restores and builds should not consume ASPIRE_CLI_START_TIMEOUT | open | davidfowl | <https://github.com/microsoft/aspire/issues/19255> |
| Issue | #19265 | [CI Failure] Flaky: VS Code extension e2eShardMatrix.test.js fails intermittently on Windows Extension host test runner | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19265> |
| Issue | #19278 | Keep VS Code E2E child-process failures blocking in advisory mode | closed | adamint | <https://github.com/microsoft/aspire/issues/19278> |
| Issue | #19270 | [CI Failure] Flaky: VS Code extension unit tests job fails intermittently on Windows with generic exit code 1 and no retrievable logs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19270> |
| Issue | #19277 | Restore VS Code extension E2E test failures as blocking CI | closed | adamint | <https://github.com/microsoft/aspire/issues/19277> |
| Issue | #19282 | Restore trustworthy VS Code extension E2E gating | open | adamint | <https://github.com/microsoft/aspire/issues/19282> |
| Issue | #19280 | VS Code Aspire debug adapter should prompt to select an AppHost when multiple are discovered | open | adamint | <https://github.com/microsoft/aspire/issues/19280> |
| Issue | #19274 | [aw] Generate the VS Code extension changelog for a release PR failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19274> |
| Issue | #19279 | [CI Failure] Git checkout fails with server certificate verification failed against github.com | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19279> |
| Issue | #19269 | `aspire run --start-debug-session` hangs while stopping an orphaned AppHost | open | adamint | <https://github.com/microsoft/aspire/issues/19269> |
| Issue | #19266 | [Failing test]: AzureResourcePreparerTests.PipelineStepAfterBeforeStartCanInspectRoleAssignmentsForTargetAzureResource — race in ValidateComputeEnvironmentBindings | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19266> |
| Issue | #19259 | Share Azure scope resolution between Aspire.Hosting.Azure and Aspire.Hosting.Azure.Kubernetes | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19259> |
| Issue | #19262 | AKS credential fetch: subscription-scoped and tenant-scoped clusters fall back to the app's resource group | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19262> |
| Issue | #19258 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19258> |
| Issue | #19257 | [aw] PR Documentation Check produced no safe outputs | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19257> |
| Issue | #19035 | [main] VS Code (CLI?) incorrectly reports "The --apphost option specified a project that does not exist." if an apphost fails to build | closed | afscrome | <https://github.com/microsoft/aspire/issues/19035> |
| Issue | #19074 | Update C# templates to opt-in to using the CLI bundle by default | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/19074> |
| Issue | #18831 | Dashboard attributes SQL spans/metrics to the wrong connection string resource when multiple resources point to the same server — peer resolution ignores db.namespace | closed | CaptainJackCode | <https://github.com/microsoft/aspire/issues/18831> |
| Issue | #19036 | [main] Undismissable Extension Build notifications block copilot | closed | afscrome | <https://github.com/microsoft/aspire/issues/19036> |
| Issue | #18374 | VS Code E2E tests runnng on old version | closed | afscrome | <https://github.com/microsoft/aspire/issues/18374> |
| Issue | #19016 | [main] `aspire doctor` taking 15 secs to run | closed | afscrome | <https://github.com/microsoft/aspire/issues/19016> |
| Issue | #15850 | VS Code: `Run with aspire` doesn't rebuilt app host if out of date | closed | afscrome | <https://github.com/microsoft/aspire/issues/15850> |
| Issue | #18933 | Deployment E2E: AKS/Kubernetes tests fail due to Azure compute quota/capacity in centralus | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18933> |
| Issue | #19047 | [AspireE2E] Deploying the 11.0 Preview 7 Aspire Starter app failed with error "Unable to access the repository 'dotnet/aspnet' at tag '11.0.0-preview.7' in the registry" | closed | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/19047> |
| Issue | #19216 | AKS credential pipeline uses ambient Azure CLI subscription | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19216> |
| Issue | #19210 | AddPersistentVolume cannot be used with AzureKubernetesEnvironmentResource | closed | sebastienros | <https://github.com/microsoft/aspire/issues/19210> |
| Issue | #19003 | Use resolved `dotnet` paths in `aspire doctor` | closed | joperezr | <https://github.com/microsoft/aspire/issues/19003> |
| Issue | #19017 | [13.5] Trace logging on `aspire doctor` causes weird indentation | closed | afscrome | <https://github.com/microsoft/aspire/issues/19017> |
| Issue | #15426 | [AspireE2E] When creating and running the Aspire Starter App (Express/React) in VS Code, the app resources fail to stop on the dashboard page. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/15426> |
| Issue | #18667 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_WithGracefulServices_ProcessIgnoresSignal_ExpireEscalatesToTreeKill times out intermittently | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18667> |
| Issue | #18880 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_WithGracefulServices_BlockingSignalerDoesNotConsumeGracefulBudget times out intermittently on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18880> |
| Issue | #17267 | `WaitBehavior.StopOnResourceUnavailable` hangs if referencing a resource that doesn't exist | closed | afscrome | <https://github.com/microsoft/aspire/issues/17267> |
| Issue | #15380 | [AspireE2E] Aspire Dashboard: "Showing 0 parameters" is not localized. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/15380> |
| Issue | #19211 | Deployment state ignores ASPIRE_HOME and writes to the user profile | closed | sebastienros | <https://github.com/microsoft/aspire/issues/19211> |
| Issue | #12660 | Regression project locator does not re-search for apphost when it does not find the file in .aspire/settings.json | closed | davidfowl | <https://github.com/microsoft/aspire/issues/12660> |
| Issue | #19080 | Launching aspire from different vscode launch configurations (using the extension) overrides the aspire.config.json file | closed | manuelelucchi | <https://github.com/microsoft/aspire/issues/19080> |
