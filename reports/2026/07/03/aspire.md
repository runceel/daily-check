# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 8 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | ellahathaway, IEvangelist, adamint, karolz-ms, radical |

## ⚠ 重要な変更（要確認）

- **⚠ セキュリティ** [#17902](https://github.com/microsoft/aspire/pull/17902) — [security] Bump aiohttp and starlette in FoundryAgentBasic playground （PR / open / IEvangelist）
  FoundryAgentBasic playground を使う開発者・テスト担当者は、依存関係の更新に伴う挙動差分と脆弱性修正の反映を確認しておく必要があります。

## このリポジトリの要点

Aspire は、開発体験と運用体験を改善するために、VS Code / Copilot 連携、コンソールログの探索性、CI の追跡自動化を一段と強化しています。今週は、Copilot extension の追加、ログフィルタリング、CI の自動追跡・issue 起票など、開発者向けの実務支援が目立ちます。セキュリティ面では依存関係の更新も進んでいます。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18612](https://github.com/microsoft/aspire/pull/18612) — Update CODEOWNERS for extension

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-07-02 16:27:13`

**変更概要**

CODEOWNERS を更新して、拡張機能周りのレビュー責任者を明確にしたメンテナンス PR です。今後の拡張機能変更で適切な所有者がすぐに見つかるようになり、運用上のレビュー遅延を減らせます。API や実装ロジックの変更はありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/CODEOWNERS` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b9a8e74` Add @ellahathaway as owner for extension

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は CODEOWNERS の所有者更新に留まり、公開 API や実装のシグネチャ変更はありません。

**既存利用者への影響**

移行不要です。レビュー担当者の所在が明確になるため、拡張機能関連のレビュー依頼がしやすくなります。

### [#18598](https://github.com/microsoft/aspire/pull/18598) — Add Aspire Team App Copilot canvas extension

- 作者: IEvangelist / 状態: MERGED
- ラベル: —
- 変更行数: +5450 / -0
- マージ日時 (UTC): `2026-07-02 03:54:40`

**変更概要**

Aspire Team App の Copilot canvas extension を追加し、GitHub / チーム情報を一つの UI から参照しやすくしました。PR やアカウント情報を横断的に確認できるため、チームの運用・デバッグ・コミュニケーション支援に役立ちます。UI 実装が中心で、既存の Aspire 機能に対する破壊的変更はありません。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/extensions/aspire-team-app/README.md` | 75 | 0 |
| `.github/extensions/aspire-team-app/accounts.mjs` | 344 | 0 |
| `.github/extensions/aspire-team-app/accounts.test.mjs` | 117 | 0 |
| `.github/extensions/aspire-team-app/constants.mjs` | 38 | 0 |
| `.github/extensions/aspire-team-app/copilot-extension.json` | 4 | 0 |
| `.github/extensions/aspire-team-app/extension.mjs` | 163 | 0 |
| `.github/extensions/aspire-team-app/github.mjs` | 731 | 0 |
| `.github/extensions/aspire-team-app/github.test.mjs` | 125 | 0 |
| `.github/extensions/aspire-team-app/model.mjs` | 820 | 0 |
| `.github/extensions/aspire-team-app/model.test.mjs` | 177 | 0 |
| `.github/extensions/aspire-team-app/render.mjs` | 1737 | 0 |
| `.github/extensions/aspire-team-app/render.test.mjs` | 128 | 0 |
| `.github/extensions/aspire-team-app/server.mjs` | 368 | 0 |
| `.github/extensions/aspire-team-app/server.test.mjs` | 162 | 0 |
| `.github/extensions/aspire-team-app/state.mjs` | 140 | 0 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `1cabf01` Add Aspire Team App Copilot canvas extension
- `18bdd20` Address review: single release constant, drop token capture
- `2d33625` Address review: retry after load failure, origin-guard POSTs, extensi…
- `e39213b` Add Copilot extension validation coverage
- `50250f1` Use Copilot extension validation workflow
- `55478a8` Address review: fix undefined --text CSS var, drop dead token/viewer …
- `3564bc1` Address review: surface API errors client-side, complete activeAccoun…
- `1736d43` Address adamint review: paginate queries, host+login identity, surfac…
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

拡張機能本体は `.github/extensions/aspire-team-app` 配下に追加され、公開 API の変更はなく新しい Copilot canvas 実装が中心です。

**既存利用者への影響**

移行は不要です。ただし新しい Copilot extension を使う環境では、拡張機能の権限や GitHub API アクセスに注意が必要です。

### [#18595](https://github.com/microsoft/aspire/pull/18595) — Update VS Code extension README

- 作者: adamint / 状態: MERGED
- ラベル: —
- 変更行数: +6 / -108
- マージ日時 (UTC): `2026-07-02 02:31:42`

**変更概要**

VS Code extension の README を更新し、導入手順と前提条件をより分かりやすく整理しました。新規ユーザーがセットアップしやすくなり、既存ユーザーも情報を追いやすくなります。実装変更ではなく、ドキュメント改善が中心です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/README.md` | 6 | 108 |

</details>

<details><summary>コミット (2 件)</summary>

- `a383f4e` Update VS Code extension README
- `fc9c2e2` Apply README review suggestions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は README の更新に留まり、公開 API や実装のシグネチャ変更はありません。

**既存利用者への影響**

移行不要です。導入手順の理解がしやすくなるため、セットアップ時の迷いが減ります。

### [#18565](https://github.com/microsoft/aspire/pull/18565) — Add text filter to the console logs page

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +905 / -9
- マージ日時 (UTC): `2026-07-02 16:53:01`

**変更概要**

コンソールログ画面にテキストフィルタを追加し、長いログの中から特定メッセージを素早く絞り込めるようにしました。デバッグ作業の効率が上がるほか、複数コンテナや複数サービスを見ているときの把握性も改善します。UI の検索体験が大きく向上する変更です。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/LogViewer.razor` | 7 | 0 |
| `src/Aspire.Dashboard/Components/Controls/LogViewer.razor.cs` | 133 | 3 |
| `src/Aspire.Dashboard/Components/Pages/ConsoleLogs.razor` | 18 | 0 |
| `src/Aspire.Dashboard/Components/Pages/ConsoleLogs.razor.cs` | 36 | 6 |
| `src/Aspire.Dashboard/Resources/ConsoleLogs.Designer.cs` | 12 | 0 |
| `src/Aspire.Dashboard/Resources/ConsoleLogs.resx` | 6 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.cs.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.de.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.es.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.fr.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.it.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.ja.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.ko.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.pl.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/ConsoleLogs.pt-BR.xlf` | 10 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `95c312f` Add text filter to the console logs page
- `03e4fec` Filter console logs on ANSI-stripped content and add regression tests
- `626cc98` Potential fix for pull request finding
- `2b1c56a` Avoid redundant log buffer scan on filter change and clarify comment
- `ef92a5c` Fix console log filtering coverage
- `f0163b1` Fix FluentSearch input flickering on Console Logs page
- `609134f` Apply suggestion from @JamesNK
- `c7c8aea` Render resource picker when a new visible resource is added

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

UI コンポーネント側にフィルタ状態と検索ロジックが追加され、公開 API の変更はありません。主に Dashboard の表示・挙動改善です。

**既存利用者への影響**

移行不要です。既存のログビュー UI では、検索ボックスが利用可能になるため操作感が変わります。

### [#18442](https://github.com/microsoft/aspire/pull/18442) — Add Aspire.Hosting.Dotnet integration package

- 作者: karolz-ms / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +1230 / -59
- マージ日時 (UTC): `2026-07-02 16:19:51`

**変更概要**

Aspire Hosting に .NET integration package を追加し、.NET プロジェクトのホスティング統合をより自然に扱えるようにしました。Blazor や .NET アプリを AppHost から扱うシナリオで、将来の Project v2 連携にもつながる基盤が整っています。既存の体験を壊さずに、新しい統合ポイントを提供する PR です。

<details><summary>変更ファイル (25 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/markdownlint.yml` | 1 | 1 |
| `.markdownlintignore` | 1 | 0 |
| `Aspire.slnx` | 2 | 0 |
| `docs/plans/project-v2-csharpprogram-watch.md` | 376 | 0 |
| `src/Aspire.Hosting.Blazor/Aspire.Hosting.Blazor.csproj` | 1 | 0 |
| `src/Aspire.Hosting.Blazor/BlazorGatewayExtensions.cs` | 80 | 10 |
| `src/Aspire.Hosting.Blazor/Resources/BlazorWasmAppResource.cs` | 1 | 1 |
| `src/Aspire.Hosting.Dotnet/Aspire.Hosting.Dotnet.csproj` | 19 | 0 |
| `src/Aspire.Hosting.Dotnet/DotnetProjectHostingExtensions.cs` | 219 | 0 |
| `src/Aspire.Hosting.Dotnet/DotnetProjectResource.cs` | 35 | 0 |
| `src/Aspire.Hosting.Dotnet/README.md` | 68 | 0 |
| `src/Aspire.Hosting.Kubernetes/KubernetesResource.cs` | 1 | 1 |
| `src/Aspire.Hosting.RemoteHost/AtsCapabilityScanner.cs` | 10 | 0 |
| `src/Aspire.Hosting/ApplicationModel/CommandsConfigurationExtensions.cs` | 4 | 4 |
| `src/Aspire.Hosting/ApplicationModel/IProjectLaunchDefaultsResource.cs` | 53 | 0 |
| _... 他 10 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `1e87bb5` Add Project v2 implementation plan (living doc)
- `ed7dd1c` Plan update: language integration package approach
- `c5a8820` Add Application.Hosting.Dotnet integration package
- `97594fc` Re-plan Project v2: preserve CSharpAppResource, add DotnetProjectReso…
- `58e2184` Hide internal interfaces from generated language bindings
- `1879a37` Potential fix for pull request finding
- `c000bc0` Remove trailing whitespace in DotnetProjectResource XML doc
- `5a85faf` Potential fix for pull request finding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `Aspire.Hosting.Dotnet` パッケージと `DotnetProjectHostingExtensions` が追加され、公開 API として新しいホスティング拡張が増えています。既存の動作を壊すものではありません。

**既存利用者への影響**

利用者は必要に応じて新パッケージを取り込むことで .NET 統合を使えます。既存プロジェクトへの強制移行はありません。

### [#18058](https://github.com/microsoft/aspire/pull/18058) — ci: file deduplicated GitHub issues for failing CI, scheduled, nightly, outerloop & quarantine runs

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +5340 / -150
- マージ日時 (UTC): `2026-07-02 04:55:30`

**変更概要**

Aspire の CI 失敗を自動で追跡するための仕組みを追加した大規模なインフラ改善です。主要なワークフローごとに失敗内容を集約し、issue を自動起票・更新できるようになりました。これにより、main ブランチの赤状態や nightly / quarantine 失敗の対応が手前に寄ります。運用負荷の軽減と再現性の向上が狙いです。

<details><summary>変更ファイル (39 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/ci.yml` | 40 | 0 |
| `.github/workflows/deployment-tests.yml` | 16 | 76 |
| `.github/workflows/monitor-scheduled-workflows.config.json` | 22 | 0 |
| `.github/workflows/monitor-scheduled-workflows.js` | 325 | 0 |
| `.github/workflows/monitor-scheduled-workflows.yml` | 50 | 0 |
| `.github/workflows/report-ci-failure.js` | 174 | 0 |
| `.github/workflows/report-pipeline-failure.js` | 123 | 0 |
| `.github/workflows/report-specialized-test-failures.js` | 154 | 0 |
| `.github/workflows/specialized-test-failure-runner.js` | 91 | 0 |
| `.github/workflows/tests-daily-smoke.yml` | 24 | 71 |
| `.github/workflows/tests-outerloop.yml` | 72 | 0 |
| `.github/workflows/tests-quarantine.yml` | 35 | 0 |
| `.github/workflows/tracking-issue.js` | 227 | 0 |
| `docs/ci/ci-failure-issues.md` | 101 | 0 |
| `docs/ci/monitor-scheduled-workflows.md` | 169 | 0 |
| _... 他 24 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `814aab3` feat(ci): add shared tracking-issue engine
- `a1051f1` feat(ci): add --failed-tests-json extraction to GenerateTestSummary
- `8ab6d1e` feat(ci): file issues on outerloop/quarantine test failures
- `0517722` feat(ci): file an issue when a push to main is red
- `b467057` feat(ci): file issues on nightly deployment/smoke failures
- `37ebfe5` feat(ci): add scheduled-workflow failure watchdog
- `a3049cc` Fix CI tracking issue close and reopen handling
- `a5c3a5d` Test closed tracking issue reopen paths
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ワークフロー定義と issue 起票スクリプトの追加が中心で、公開 API の変更はありません。CI 運用の仕組みを改善する内部変更です。

**既存利用者への影響**

移行不要です。CI 失敗の追跡体制が自動化されるため、開発者は issue の見逃しを減らせます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18009 | Collect AI agent skill-usage telemetry (CLI command + agent init hooks) | IEvangelist | <https://github.com/microsoft/aspire/pull/18009> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18626 | Support VS Code browser debug session termination | open | adamint | <https://github.com/microsoft/aspire/pull/18626> |
| PR | #18624 | Recommend the VS Code extension in aspire doctor | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18624> |
| PR | #18623 | [main] Update dependencies from microsoft/dcp | open | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18623> |
| PR | #18621 | Copy AppHost path to clipboard when clicking the Path tree item (#18578) | open | adamint | <https://github.com/microsoft/aspire/pull/18621> |
| PR | #18619 | Fix single-file AppHost describe targeting | open | adamint | <https://github.com/microsoft/aspire/pull/18619> |
| PR | #18617 | [Automated] Update Aspire skills bundle | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18617> |
| PR | #18614 | Sync Aspire Team App canvas with latest pr-dashboard logic | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18614> |
| PR | #18613 | Fix CreateFailingTestIssue tool package versions to unblock CI on main | open | Copilot | <https://github.com/microsoft/aspire/pull/18613> |
| PR | #18611 | Add Delve server options for Go hosting | open | air-hand | <https://github.com/microsoft/aspire/pull/18611> |
| PR | #18606 | Include changelog in CLI npm package | open | adamint | <https://github.com/microsoft/aspire/pull/18606> |
| PR | #18605 | Use secure publish for VS Code extension | open | adamint | <https://github.com/microsoft/aspire/pull/18605> |
| PR | #18616 | Fix Agentic Maintenance (aspire.dev) workflow auth via aspire-bot App token | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18616> |
| Issue | #18625 | Vite/JS app with `.WithBun()` still reports `node` & `npm` as missing required commands | open | dzhukovsky | <https://github.com/microsoft/aspire/issues/18625> |
| Issue | #18620 | Keycloak SSL errors | open | MeikelLP | <https://github.com/microsoft/aspire/issues/18620> |
| Issue | #18618 | Scheduled workflow failing: Generate ATS Diffs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18618> |
| Issue | #18615 | Agentic Maintenance (microsoft/aspire.dev) workflow fails on every scheduled run — `GH_AW_GITHUB_TOKEN` secret is not configured | open | IEvangelist | <https://github.com/microsoft/aspire/issues/18615> |
| Issue | #18610 | CI infrastructure failing: Quarantined Tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18610> |
| Issue | #18609 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18609> |
| Issue | #18608 | CI failing on `main` | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #18607 | [Deployment E2E] Nightly test failure - 2026-07-02 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18607> |
| Issue | #18504 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18504> |
| Issue | #18305 | update-azure-vm-sizes.yml workflow failing at Azure Login — AZURE_CREDENTIALS empty/expired | closed | radical | <https://github.com/microsoft/aspire/issues/18305> |
| Issue | #18242 | Run mode: azure-prepare-resources crashes the AppHost when a compute resource's env callback reads an unallocated endpoint Port (role-assignment dependency walk evaluates endpoint-reading env callbacks before DCP allocation) | closed | gabynevada | <https://github.com/microsoft/aspire/issues/18242> |
| Issue | #11122 | Add a text filter to the console logs page | closed | adamint | <https://github.com/microsoft/aspire/issues/11122> |
