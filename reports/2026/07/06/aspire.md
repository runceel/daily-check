# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-05 04:03:53 〜 2026-07-06 01:30:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 1 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | mitchdenny |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  フロントエンド依存の更新なので、Dashboard の UI/テストと依存性の脆弱性追跡結果を確認しておくとよいです。
- **⚠ セキュリティ** [#17902](https://github.com/microsoft/aspire/pull/17902) — [security] Bump aiohttp and starlette in FoundryAgentBasic playground （PR / closed / IEvangelist）
  Playground の Python 依存更新なので、FoundryAgentBasic の実行確認と脆弱性スキャン結果を追跡しておくとよいです。

## このリポジトリの要点

- 期間内は Dashboard の ConsoleLogs UX 改善と Kubernetes の永続ボリューム対応という 2 つの大きな PR がマージされ、Aspire の可観測性とデプロイ体験の両方に手が入っています。
- ConsoleLogs ではログビューとターミナルビューを切り替えられるようになり、接続待ちの間でもホスティングメッセージを確認しやすくなりました。
- Kubernetes 向けには `KubernetesPersistentVolumeResource` が追加され、PV/PVC/YAML 生成の妥当性改善も含まれています。セキュリティ更新の PR も残っており、依存関係のメンテナンスは続いています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18574](https://github.com/microsoft/aspire/pull/18574) — Add Console/Terminal view toggle to ConsoleLogs dashboard page

- 作者: mitchdenny / 状態: MERGED
- ラベル: —
- 変更行数: +1137 / -1163
- マージ日時 (UTC): `2026-07-06 01:08:47`

**変更概要**

ConsoleLogs 画面では、`WithTerminal()` リソースを選択した際にログビューとターミナルビューを切り替えられるようにし、接続待ちの間でもホスティングメッセージを確認できるようにしました。
実装は、両ビューを同時に保持したまま `display:none` で切り替える方式を採用しており、scrollback や PTY セッションの再確立を避けています。
既存の ConsoleLogs の見出しやメニュー構成は維持され、端末対応リソースにだけ新しい切り替え UI が表示されるため、利用者の学習コストは抑えられます。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/with-terminal.md` | 26 | 0 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.cs` | 145 | 23 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.js` | 317 | 106 |
| `src/Aspire.Dashboard/Components/Pages/ConsoleLogs.razor` | 63 | 78 |
| `src/Aspire.Dashboard/Components/Pages/ConsoleLogs.razor.cs` | 235 | 82 |
| `src/Aspire.Dashboard/Resources/ConsoleLogs.Designer.cs` | 4 | 58 |
| `src/Aspire.Dashboard/Resources/ConsoleLogs.resx` | 7 | 33 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.cs.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.de.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.es.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.fr.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.it.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.ja.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.ko.xlf` | 14 | 59 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.pl.xlf` | 14 | 59 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (45 件)</summary>

- `9b4cbdf` Add Console/Terminal view toggle to ConsoleLogs page
- `119d90d` Rename Console option to 'Console logs' in view picker
- `f249396` Fix terminal view duplication and auto-switch on resource restart
- `1434be4` Flip back to Console when a terminal resource is manually stopped
- `20a86e5` Suppress auto-switch back to Terminal while resource is stopped
- `c31f24c` Fix text selection offset in secondary TerminalView mode
- `647072f` Refine terminal font after first-render calibration
- `f2fec8f` Merge remote-tracking branch 'origin/main' into mitchdenny-console-te…
- _... 他 37 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更は UI コンポーネントと `ConsoleLogs` ページの状態遷移ロジックを整理したもので、`TerminalView` / `LogViewer` の切り替えを新しい抽象として扱っています。API シグネチャの変更はなく、既存の `WithTerminal()` ベースのリソース定義はそのまま利用できます。

**既存利用者への影響**

マイグレーションは不要で、端末対応リソースを使う利用者は新しいビュー切り替えボタンで既存のログ確認体験を改善できます。

### [#16929](https://github.com/microsoft/aspire/pull/16929) — Add first-class KubernetesPersistentVolumeResource (and fix related YAML serializer bugs)

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-deployment` `kubernetes`
- 変更行数: +2229 / -70
- マージ日時 (UTC): `2026-07-05 23:40:19`

**変更概要**

`KubernetesPersistentVolumeResource` を追加し、PV/PVC/StatefulSet の生成に向けた first-class な app-model API を提供しました。
同時に YAML serializer 側で空オブジェクトの不正出力を抑える修正を入れ、Helm や `kubectl` へ出す manifest の妥当性を改善しています。
これにより、AppHost からボリューム定義を一度書けば、Kubernetes 向けの永続化設定を簡潔に宣言できるようになります。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Kubernetes/Annotations/KubernetesPersistentVolumeBindingAnnotation.cs` | 25 | 0 |
| `src/Aspire.Hosting.Kubernetes/Extensions/HelmExtensions.cs` | 0 | 4 |
| `src/Aspire.Hosting.Kubernetes/Extensions/ResourceExtensions.cs` | 50 | 45 |
| `src/Aspire.Hosting.Kubernetes/KubernetesEnvironmentResource.cs` | 97 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesPersistentVolumeExtensions.cs` | 324 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesPersistentVolumeResource.cs` | 147 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesPublishingContext.cs` | 10 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesResource.cs` | 8 | 7 |
| `src/Aspire.Hosting.Kubernetes/Resources/PersistentVolumeClaimSpecV1.cs` | 17 | 5 |
| `src/Aspire.Hosting.Kubernetes/Resources/PersistentVolumeSpecV1.cs` | 25 | 5 |
| `src/Aspire.Hosting.Kubernetes/Resources/StatefulSetSpecV1.cs` | 11 | 2 |
| `src/Aspire.Hosting.Kubernetes/Resources/StatefulSetUpdateStrategyV1.cs` | 5 | 1 |
| `src/Aspire.Hosting.Kubernetes/Resources/VolumeNodeAffinityV1.cs` | 5 | 1 |
| `tests/Aspire.Cli.EndToEnd.Tests/KubernetesDeployTypeScriptWithPersistentVolumeTests.cs` | 289 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/KubernetesDeployWithPersistentVolumeTests.cs` | 287 | 0 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `0644330` Fix invalid empty mappings in generated Kubernetes PV/PVC YAML
- `bebad43` Add first-class KubernetesPersistentVolumeResource with workload binding
- `d490d3a` Fix Verify temp-path scrubber collision in PV fallthrough test
- `c878028` Add E2E KinD durability tests for first-class persistent volumes
- `93cbae8` Add TypeScript E2E KinD durability test for first-class persistent vo…
- `5b6cc04` Fix CI failures in PV E2E tests
- `97b7215` Fix kubectl exec quoting in TS PV test
- `e17f0ff` Address PR review feedback for KubernetesPersistentVolumeResource
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `KubernetesPersistentVolumeResource` と関連する拡張メソッドが追加され、PVC / PV / StatefulSet を構成するリソースをアプリモデル側から扱えるようになりました。YAML serializer の空オブジェクト扱いも修正されており、既存の Kubernetes 展開コードに対して破壊的な API 変更はありません。

**既存利用者への影響**

既存の Kubernetes 機能を使っている利用者はそのまま利用でき、PVC を明示的に扱いたい場合は新しいリソース API を採用するだけで十分です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18646 | Add shm_size support to Docker Compose services | open | alirezafzali | <https://github.com/microsoft/aspire/pull/18646> |
| PR | #18645 | Fix DotNetSdkInstaller to use private SDK path from IDotNetRuntimeSelector when checking SDK availability | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18645> |
| PR | #17902 | [security] Bump aiohttp and starlette in FoundryAgentBasic playground | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/17902> |
| Issue | #18647 | AddHelmChart should support running before the application Helm chart (not only after) | open | mahdiyar021 | <https://github.com/microsoft/aspire/issues/18647> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #18085 | Terminal size mismatch between `aspire terminal ps` and dashboard causes cursor/input offset issues | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18085> |
| Issue | #18082 | Dashboard terminal UX loses early startup failures before PTY attachment | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18082> |
| Issue | #16504 | PVC generation can create invalid helm files. | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/16504> |
| Issue | #14096 | (code provided): Kubernetes integration: specifying pvc as default storage type generates invalid YAML assets | closed | dmitrynovik | <https://github.com/microsoft/aspire/issues/14096> |
| Issue | #9430 | Ability to define a PVC or use WithVolume on a ProjectResource | closed | cdbrown2018 | <https://github.com/microsoft/aspire/issues/9430> |
