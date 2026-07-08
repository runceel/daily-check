# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 15 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 25 |
| クローズ Issue          | 25 |
| 主要コントリビューター  | adamint, karolz-ms, davidfowl, dotnet-maestro[bot], alirezafzali, mcumming |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / open / IEvangelist）
  依存管理担当と JS/TS テンプレート保守者は、Open な **セキュリティ修正**として lockfile・overrides の更新内容をレビューし、Dependabot alert が解消されることを監査で確認する必要があります。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  担当者は #18533 と重複・競合しないかを確認しつつ、extension/playground/polyglot tests の npm 依存更新を優先レビューして脆弱性を残さないよう対応してください。
- **⚠ セキュリティ** [#17902](https://github.com/microsoft/aspire/pull/17902) — [security] Bump aiohttp and starlette in FoundryAgentBasic playground （PR / closed / IEvangelist）
  FoundryAgentBasic の Python lockfile 依存（aiohttp/starlette）に関する **セキュリティ修正**候補は closed のため、保守者は同等の修正が後続 PR（例: #18533）で反映済みか確認してください。

## このリポジトリの要点

この期間は DCP 依存更新 (#18656) と Project V2/DotnetProjectResource の dogfood 用 playground 追加 (#18654) が入り、基盤更新と新機能検証が進みました。
Docker Compose の `shm_size` 出力 (#18646)、Bun 利用時の required-command 誤警告修正 (#18631)、Kubernetes の `GetEndpoint` ポート解決修正 (#18630) など、実運用に効く不具合修正も複数マージされています。
一方で JS/TS と Python 依存の **セキュリティ修正** PR (#18533, #18518, #17902) が要確認として残っており、依存管理の収束状況を追う必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18656](https://github.com/microsoft/aspire/pull/18656) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-07 21:05:51`

**変更概要**

- microsoft/dcp 由来の依存を最新ビルド 0.25.4 へ進める自動更新 PR です。
- `eng/Version.Details.xml` と `eng/Versions.props` のみを更新し、各 OS/アーキテクチャ向け DCP パッケージ参照を揃えています。
- コード本体ではなく build/restore 時に使う外部コンポーネントの差し替えで、影響範囲は DCP に依存する実行・テスト経路です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (2 件)</summary>

- `8037cdb` Update dependencies from https://github.com/microsoft/dcp build 0.25.3
- `6f9d5fe` Update dependencies from https://github.com/microsoft/dcp build 0.25.4

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- Aspire の公開 API シグネチャ変更や新規抽象はありません。
- 変更は `eng` 配下のバージョン固定値のみで、DCP 0.25.3/0.25.4 の取り込みが主目的です。
- **破壊的変更**はファイル・コミット情報からは示されていません。

**既存利用者への影響**

既存利用者のコード移行は不要です。リポジトリ開発者は restore/build 時に新しい DCP アーティファクトを取得するため、DCP 依存のシナリオで回帰確認してください。

### [#18654](https://github.com/microsoft/aspire/pull/18654) — Add DotnetProjectResource playground sample

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +971 / -16
- マージ日時 (UTC): `2026-07-07 05:27:46`

**変更概要**

- 新しい `DotnetProjectResource`（Project V2）を実際に試すための playground サンプルを追加しています。
- C# AppHost と TypeScript AppHost の両方から `AddDotnetProject` / `addDotnetProject` を使い、API service、Worker service、共有 class library、file-based worker を組み合わせています。
- `Aspire.slnx`、各 `launchSettings.json`、`aspire.config.json`、TypeScript apphost 設定を追加し、ローカル dogfood と VS Code 拡張検証の足場を整えています。
- 計画ドキュメントも更新し、このサンプル追加を完了扱いにしつつ Azure Functions など未対応領域を明記しています。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 6 | 0 |
| `docs/plans/project-v2-csharpprogram-watch.md` | 67 | 16 |
| `playground/DotnetProject/Directory.Build.props` | 11 | 0 |
| `playground/DotnetProject/DotnetProject.ApiService/DotnetProject.ApiService.csproj` | 14 | 0 |
| `playground/DotnetProject/DotnetProject.ApiService/Program.cs` | 13 | 0 |
| `playground/DotnetProject/DotnetProject.ApiService/Properties/launchSettings.json` | 13 | 0 |
| `playground/DotnetProject/DotnetProject.AppHost/AppHost.cs` | 22 | 0 |
| `playground/DotnetProject/DotnetProject.AppHost/DotnetProject.AppHost.csproj` | 17 | 0 |
| `playground/DotnetProject/DotnetProject.AppHost/Properties/launchSettings.json` | 17 | 0 |
| `playground/DotnetProject/DotnetProject.AppHost/aspire.config.json` | 5 | 0 |
| `playground/DotnetProject/DotnetProject.SharedLibrary/DotnetProject.SharedLibrary.csproj` | 9 | 0 |
| `playground/DotnetProject/DotnetProject.SharedLibrary/Greeter.cs` | 14 | 0 |
| `playground/DotnetProject/DotnetProject.WorkerService/DotnetProject.WorkerService.csproj` | 14 | 0 |
| `playground/DotnetProject/DotnetProject.WorkerService/Program.cs` | 22 | 0 |
| `playground/DotnetProject/DotnetProject.WorkerService/Properties/launchSettings.json` | 13 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `701fef8` Update feature plan after session 1
- `248b836` Add playground sample for DotnetProjectResource
- `f93d241` Ensure correct build order for DotnetProjectResource sample
- `fe3c009` Clarify future work comment
- `68da734` Better comment for shared service

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 公開 API baseline の更新はなく、既存の実験的 `DotnetProjectResource` / `AddDotnetProject` をサンプルから使用する変更です。
- `Directory.Build.props` で `ASPIREDOTNETPROJECT001` を抑制し、Project V2 がまだ experimental であることを前提にしています。
- 共有ライブラリ参照と `WaitFor` などでビルド順・起動順を検証できる構成が追加されています。
- **破壊的変更**はありません。

**既存利用者への影響**

既存利用者の移行は不要です。Project V2 を試す開発者は `playground/DotnetProject` を参照して C# / TypeScript AppHost の利用形を確認できます。

### [#18646](https://github.com/microsoft/aspire/pull/18646) — Add shm_size support to Docker Compose services

- 作者: alirezafzali / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +18 / -1
- マージ日時 (UTC): `2026-07-06 05:16:16`

**変更概要**

- Docker Compose 生成時に service レベルの `shm_size` を出力できるようにする機能追加です。
- `Service` compose node に `ShmSize` プロパティを追加し、YAML では Docker Compose 標準の `shm_size` としてシリアライズします。
- 公開 API baseline と ATS 定義を更新し、Docker Compose service customization のテスト snapshot で `"128mb"` が出力されることを確認しています。
- Issue #18637 の要望に対応する、既存 Compose カスタマイズ向けの additive な拡張です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Docker/Resources/ComposeNodes/Service.cs` | 9 | 0 |
| `src/Aspire.Hosting.Docker/api/Aspire.Hosting.Docker.ats.txt` | 2 | 0 |
| `src/Aspire.Hosting.Docker/api/Aspire.Hosting.Docker.cs` | 4 | 1 |
| `tests/Aspire.Hosting.Docker.Tests/DockerComposePublisherTests.cs` | 2 | 0 |
| `tests/Aspire.Hosting.Docker.Tests/Snapshots/DockerComposePublisherTests.DockerComposeAppliesServiceCustomizations.verified.yaml` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `8241e6a` Add shm_size support to Docker Compose services
- `96d9a0a` Add shm_size support to Docker Compose services

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 新規公開メンバーとして `Aspire.Hosting.Docker.Resources.ComposeNodes.Service.ShmSize { get; set; }`（`string?`）が追加されました。
- ATS には `Service.shmSize(...) -> string` と `Service.setShmSize(..., value: string) -> Service` が追加され、polyglot 側からも Compose node を操作できます。
- YAML 属性は `[YamlMember(Alias = "shm_size")]` で、出力名は `shm_size` です。
- additive な API 追加であり、**破壊的変更**はありません。

**既存利用者への影響**

移行は不要です。Docker Compose 出力で共有メモリサイズを指定したい利用者だけが、service customization 内で `ShmSize`（例: `"128mb"`）を設定すれば反映されます。

### [#18644](https://github.com/microsoft/aspire/pull/18644) — Fix: stop click propagation on UrlsColumnDisplay to prevent details popup

- 作者: eso-cyber / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +51 / -43
- マージ日時 (UTC): `2026-07-06 06:00:54`

**変更概要**

- Dashboard の Resources グリッドで URL をクリックしたとき、意図せず resource details popup まで開く問題を修正しています。
- `UrlsColumnDisplay.razor` の URL 表示・overflow 操作まわりに `@onclick:stopPropagation="true"` を適用し、クリックイベントの伝播を止めています。
- inline 表示や padding は `url-container` CSS class に寄せ、Razor 側の構造を整理しています。
- 影響範囲は Dashboard UI の URL column 表示に限定されます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/ResourcesGridColumns/UrlsColumnDisplay.razor` | 47 | 43 |
| `src/Aspire.Dashboard/Components/ResourcesGridColumns/UrlsColumnDisplay.razor.css` | 4 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `3e7b87d` Fix: stop click propagation on UrlsColumnDisplay to prevent details p…
- `0c97f7c` Use CSS class for stopPropagation divs with inline-flex and padding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 公開 API の追加・削除はなく、Razor markup と scoped CSS の内部 UI 変更です。
- URL ボタンや overflow popup のクリックが親行の details popup を起動しないよう、イベント伝播制御が追加されました。
- **破壊的変更**はありません。

**既存利用者への影響**

利用者側の移行は不要です。Dashboard では URL クリック時の誤った details popup 表示が減り、既存設定や AppHost コードへの影響はありません。

### [#18631](https://github.com/microsoft/aspire/pull/18631) — Fix false-positive node/npm required-command banners for Bun JS apps

- 作者: davidfowl / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +317 / -10
- マージ日時 (UTC): `2026-07-06 03:35:31`

**変更概要**

- `AddViteApp(...).WithBun()` など Bun を選んだ JS app で、不要な `node`/`npm` required-command 警告が出る問題を修正しています。
- required commands を事前に積み増す方式から、最終的に選ばれた `JavaScriptPackageManagerAnnotation` から `OnBeforeStart` 時に投影する方式へ変更しました。
- `WithNpm` / `WithBun` / `WithYarn` / `WithPnpm` は stale な required command を残さず、last-wins の package manager 選択と整合します。
- 直接 script を起動する app では runtime command（例: `node`）も保持するようにし、Bun-only Vite と Node script の両方をテストで覆っています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.JavaScript/JavaScriptHostingExtensions.cs` | 103 | 10 |
| `tests/Aspire.Hosting.JavaScript.Tests/RequiredCommandTests.cs` | 214 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `67636e2` Fix false-positive node/npm required-command banners for Bun JS apps
- `3b45441` Preserve app runtime in required commands for direct-script apps
- `4a8ed45` Clarify required-command comments in JavaScript hosting extensions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `WithRequiredCommandsFromPackageManager` と `ResolveRequiredCommands` などの内部 helper が追加・変更され、`RequiredCommandAnnotation` の生成タイミングが遅延されました。
- 公開 API シグネチャの追加・削除ではなく、`WithBun()` など既存 extension method の挙動を正しい required-command 集合へ修正する変更です。
- package manager は last-wins、直接実行 runtime は別途必須、という新しい判定ルールがテストで固定されています。
- **破壊的変更**はありませんが、誤警告に依存していた運用では表示内容が変わります。

**既存利用者への影響**

コード移行は不要です。Bun-only の Vite/JS app では `node`/`npm` 不在警告が消え、`AddNodeApp(...).WithBun()` のように `node` 実行が必要な構成では引き続き `node` が要求されます。

### [#18630](https://github.com/microsoft/aspire/pull/18630) — Fix Kubernetes GetEndpoint resolving to targetPort instead of service port

- 作者: davidfowl / 状態: MERGED
- ラベル: `area-deployment`
- 変更行数: +326 / -11
- マージ日時 (UTC): `2026-07-06 01:37:42`

**変更概要**

- Kubernetes publisher で `GetEndpoint` が service port ではなく `targetPort` を返していた問題を修正しています。
- `WithHttpEndpoint(port: 9002, targetPort: 9000)` のように exposed port と container port が異なる場合、参照 URL は Kubernetes Service が listen する `port` を使う必要があります。
- `KubernetesResource.GetEndpointValue` の解決を service/exposed port 優先に変更し、`TargetPort` だけは container port を維持しました。
- endpoint reference、Ingress/Gateway backend、probe の port 解決を新しい snapshot tests で検証しています。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Kubernetes/Extensions/ResourceExtensions.cs` | 7 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesResource.cs` | 16 | 7 |
| `tests/Aspire.Hosting.Kubernetes.Tests/KubernetesPublisherTests.cs` | 143 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesEndpointReferenceUsesServicePortNotTargetPort#00.verified.yaml` | 5 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesEndpointReferenceUsesServicePortNotTargetPort#01.verified.yaml` | 20 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesEndpointReferenceUsesServicePortNotTargetPort#02.verified.yaml` | 11 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesIngressAndGatewayRouteToServicePortForDistinctPorts#00.verified.yaml` | 20 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesIngressAndGatewayRouteToServicePortForDistinctPorts#01.verified.yaml` | 17 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesIngressAndGatewayRouteToServicePortForDistinctPorts#02.verified.yaml` | 16 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesProbeUsesContainerTargetPortNotServicePort#00.verified.yaml` | 47 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesProbeUsesContainerTargetPortNotServicePort#01.verified.yaml` | 20 | 0 |
| `tests/Aspire.Hosting.Kubernetes.Tests/Snapshots/KubernetesPublisherTests.KubernetesWithProjectResources#01.verified.yaml` | 4 | 4 |

</details>

<details><summary>コミット (2 件)</summary>

- `6f41b8c` Fix Kubernetes GetEndpoint using targetPort instead of service port
- `a23948c` Add Ingress/Gateway distinct-port tests and probe port coverage

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- `EndpointProperty.Url`、`EndpointProperty.Port`、`EndpointProperty.HostAndPort` は `exposedPort ?? targetPort` を使うようになり、`EndpointProperty.TargetPort` は従来どおり `targetPort` を返します。
- 公開 API シグネチャの変更はなく、Kubernetes manifest 生成時の endpoint 値解決ロジックと snapshot が更新されています。
- Ingress/Gateway は Service port へ、probe は container targetPort へ向くことが明確にテストで固定されました。
- **破壊的変更**としての API 変更はありませんが、誤って targetPort を返していた生成値は修正後の service port に変わります。

**既存利用者への影響**

ソース移行は不要です。Kubernetes で `port` と `targetPort` を分けている利用者は manifest を再生成・再デプロイし、過去の誤った targetPort URL に対する暫定回避策があれば外してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18623 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18623> |
| #18614 | Sync Aspire Team App canvas with latest pr-dashboard logic | IEvangelist | <https://github.com/microsoft/aspire/pull/18614> |
| #18611 | Add Delve server options for Go hosting | air-hand | <https://github.com/microsoft/aspire/pull/18611> |
| #18583 | Publish analyze-ci-failure results and recurring CI causes | JamesNK | <https://github.com/microsoft/aspire/pull/18583> |
| #18566 | Fixes several use cases where aspire-managed processes may leak | karolz-ms | <https://github.com/microsoft/aspire/pull/18566> |
| #18517 | Improve extension CLI probe startup behavior | adamint | <https://github.com/microsoft/aspire/pull/18517> |
| #18502 | Keep mobile nav focus visible at high zoom | adamint | <https://github.com/microsoft/aspire/pull/18502> |
| #18362 | [extension] Forward aspireCliExecutablePath as AspireCliPath for MSBuild bundle resolution (#18073) | adamint | <https://github.com/microsoft/aspire/pull/18362> |
| #14882 | Add File input type to the Interaction Service | mcumming | <https://github.com/microsoft/aspire/pull/14882> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18679 | Show unsupported AppHost dashboard version dialog | open | JamesNK | <https://github.com/microsoft/aspire/pull/18679> |
| PR | #18678 | Use DCP fork-process for Unix detached start | open | danegsta | <https://github.com/microsoft/aspire/pull/18678> |
| PR | #18671 | Harden Daily CLI Smoke Tests: set an explicit AppHost startup budget for raw `aspire run` | open | Copilot | <https://github.com/microsoft/aspire/pull/18671> |
| PR | #18669 | Remove Dashboard's 1MB file upload fallback, rely on server limit | open | Copilot | <https://github.com/microsoft/aspire/pull/18669> |
| PR | #18666 | Clean up temp directory in AtsExportsTests using TemporaryWorkspace | open | Copilot | <https://github.com/microsoft/aspire/pull/18666> |
| PR | #18665 | Localize file input validation messages in InteractionsInputDialog | open | Copilot | <https://github.com/microsoft/aspire/pull/18665> |
| PR | #18651 | Add keyboard-accessible resource control help | open | adamint | <https://github.com/microsoft/aspire/pull/18651> |
| PR | #18643 | Fix structured logs resource filter after reconnect | closed | adamint | <https://github.com/microsoft/aspire/pull/18643> |
| PR | #18613 | Fix CreateFailingTestIssue tool package versions to unblock CI on main | closed | Copilot | <https://github.com/microsoft/aspire/pull/18613> |
| PR | #17849 | Fix Azure Storage emulator endpoint timing | closed | danegsta | <https://github.com/microsoft/aspire/pull/17849> |
| Issue | #18682 | Azure Container Apps: express deployment ordering for container apps sharing a managed environment | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18682> |
| Issue | #18681 | DCP process-launch configuration does not propagate ASPNETCORE_URLS to forked child under composed-AppHost E2E lane — children silently exit before bind (0/4 binds within 30s) | open | wangkanai | <https://github.com/microsoft/aspire/issues/18681> |
| Issue | #18677 | [CI Failure] Flaky: RunCommandTests.RunCommand_DetachedChild_WhenSignaledBeforeReadiness_AwaitsAppHostTeardownBeforeExit times out intermittently | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18677> |
| Issue | #18676 | Aspire VS Code extension launches Azure Functions with 'func host start' instead of CLI-equivalent 'func run' | closed | almguru | <https://github.com/microsoft/aspire/issues/18676> |
| Issue | #18675 | [tmp] permission check | open | almguru | <https://github.com/microsoft/aspire/issues/18675> |
| Issue | #18674 | Aspire VS Code extension launches Azure Functions with 'func host start' instead of CLI-equivalent 'func run' | closed | almguru | <https://github.com/microsoft/aspire/issues/18674> |
| Issue | #18673 | Intermittent ArgumentNullException (Parameter 'key') in AzureProvisioningResource.EnsureParametersAlign — data race in concurrent Bicep template generation | open | gabynevada | <https://github.com/microsoft/aspire/issues/18673> |
| Issue | #18672 | [CI Failure] NuGet.org serving invalid/corrupt package data (non-object JSON or corrupt nupkg) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18672> |
| Issue | #18670 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18670> |
| Issue | #18668 | Nightly run failing: Daily CLI Smoke Tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18668> |
| Issue | #18667 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_WithGracefulServices_ProcessIgnoresSignal_ExpireEscalatesToTreeKill times out intermittently | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18667> |
| Issue | #18664 | Improve incompatible dashboard dialog: make modal, improve text, add aka.ms link | open | JamesNK | <https://github.com/microsoft/aspire/issues/18664> |
| Issue | #18662 | File input: Clean up temp directory in AtsExportsTests | open | JamesNK | <https://github.com/microsoft/aspire/issues/18662> |
| Issue | #18663 | File input: Users cannot add or replace files after initial upload in interaction dialog | open | JamesNK | <https://github.com/microsoft/aspire/issues/18663> |
| Issue | #18658 | File input: Fix misleading comment about input type wire format in PipelineCommandBase | open | JamesNK | <https://github.com/microsoft/aspire/issues/18658> |
| Issue | #18660 | File input: Localize validation messages in InteractionsInputDialog | open | JamesNK | <https://github.com/microsoft/aspire/issues/18660> |
| Issue | #18659 | File input: MaxFileSize XML doc should mention Dashboard's 1MB default fallback | open | JamesNK | <https://github.com/microsoft/aspire/issues/18659> |
| Issue | #18661 | File input: Add rel="noopener noreferrer" to external link in incompatible dashboard dialog | open | JamesNK | <https://github.com/microsoft/aspire/issues/18661> |
| Issue | #18657 | Test failures: Outerloop Tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18657> |
| Issue | #18655 | Can't lazely get a reference to a host application from a container when using the aspire container tunnel | open | afscrome | <https://github.com/microsoft/aspire/issues/18655> |
| Issue | #18653 | Why does external service resource have to end with `/` | open | afscrome | <https://github.com/microsoft/aspire/issues/18653> |
| Issue | #18652 | Unclear error if executable working directory does not exist | open | afscrome | <https://github.com/microsoft/aspire/issues/18652> |
| Issue | #18650 | [AspireE2E] AppHost fails to resolve Aspire CLI bundle until Aspire CLI is initialized via 'aspire new' | open | joniel-bolocon | <https://github.com/microsoft/aspire/issues/18650> |
| Issue | #18649 | '*'## Pull Request Overview | closed | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/18649> |
| Issue | #18648 | CI infrastructure failing: Outerloop Tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18648> |
| Issue | #18637 | Add Docker Compose shm_size support to Aspire.Hosting.Docker | closed | rantri | <https://github.com/microsoft/aspire/issues/18637> |
| Issue | #18625 | Vite/JS app with `.WithBun()` still reports `node` & `npm` as missing required commands | closed | dzhukovsky | <https://github.com/microsoft/aspire/issues/18625> |
| Issue | #18607 | [Deployment E2E] Nightly test failure - 2026-07-02 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18607> |
| Issue | #18582 | [Deployment E2E] Nightly test failure - 2026-07-01 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18582> |
| Issue | #18571 | [Deployment E2E] Nightly test failure - 2026-06-30 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18571> |
| Issue | #18552 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18552> |
| Issue | #18550 | [Deployment E2E] Nightly test failure - 2026-06-29 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18550> |
| Issue | #18536 | [Deployment E2E] Nightly test failure - 2026-06-28 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18536> |
| Issue | #18531 | [Deployment E2E] Nightly test failure - 2026-06-27 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18531> |
| Issue | #18511 | [Deployment E2E] Nightly test failure - 2026-06-26 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18511> |
| Issue | #18485 | [Deployment E2E] Nightly test failure - 2026-06-25 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18485> |
| Issue | #18458 | [Deployment E2E] Nightly test failure - 2026-06-24 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18458> |
| Issue | #18423 | [Deployment E2E] Nightly test failure - 2026-06-23 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18423> |
| Issue | #18391 | [Deployment E2E] Nightly test failure - 2026-06-22 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18391> |
| Issue | #18363 | [Deployment E2E] Nightly test failure - 2026-06-20 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18363> |
| Issue | #18321 | Kubernetes: GetEndpoint uses wrong port | closed | WolfspiritM | <https://github.com/microsoft/aspire/issues/18321> |
| Issue | #18073 | VS Code extension dogfooding doesn't work with CLI dogfooding | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18073> |
| Issue | #18050 | Aspire 13.4.3 - Starts successfully but then isn't running | closed | tjwald | <https://github.com/microsoft/aspire/issues/18050> |
| Issue | #17657 | Keyboard focus is not visible when navigating from Resources tab in resized view:A11y_Aspire Dashboard_Resources_Focunotobscured | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17657> |
| Issue | #16722 | [13.3] `[SHOULD NOT HAPPEN]` log entries in log | closed | afscrome | <https://github.com/microsoft/aspire/issues/16722> |
| Issue | #12307 | Aspire dashboard - URL column click shows details | closed | larsathle | <https://github.com/microsoft/aspire/issues/12307> |
| Issue | #11119 | Resource Filter in Structured Logs not respected after restart | closed | MarcinJuraszek | <https://github.com/microsoft/aspire/issues/11119> |
