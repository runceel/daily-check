# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-23 06:00:53 〜 2026-06-25 00:23:12 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 28 |
| オープン中の新規 PR     | 17 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 14 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | JamesNK, radical, davidfowl, aspire-repo-bot[bot], sebastienros, adamint |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除してよいです。 -->
- **⚠ セキュリティ** [#18153](https://github.com/microsoft/aspire/issues/18153) — [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project （Issue / closed / jinzhao1127）
  Aspire プロジェクトを作成する環境では、依存関係に含まれる MessagePack のバージョンを確認し、脆弱性対応済みのパッケージに切り替える必要があるか確認してください。

## このリポジトリの要点

この期間の Aspire では、ユーザー向け機能よりもテスト基盤・CI 安定化・拡張機能の品質保証が中心でした。CLI や E2E テストの再試行・quarantine・クリーンアップ改善が進み、開発者体験の改善が目立ちます。加えて、MessagePack の脆弱性に関する Issue が出ているため、依存関係の確認を続ける価値があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18477](https://github.com/microsoft/aspire/pull/18477) — Quarantine flaky LsCommand JSON-format test

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -0
- マージ日時 (UTC): `2026-06-24 22:58:53`

**変更概要**

この PR は、LsCommand の JSON 形式テストが flaky だったため、ビルドのノイズを減らす目的でテストを quarantine に移しています。対象は CLI の JSON 出力テストで、実装ロジック自体の変更ではありません。開発者がテストの意味を見失わないよう、将来的に再有効化する前提の小さな保守変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.Tests/Commands/LsCommandTests.cs` | 2 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `e7e3ada` Fix main build: quarantine flaky LsCommand JSON-format test
- `b60abbc` Address review: remove BOM, sort using directive

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や実行コードの変更はなく、テスト定義の保護策です。コミット内容も test ファイルの quarantine 指定とレビュー対応に限定され、既存の CLI 仕様には影響しません。

**既存利用者への影響**

通常の利用者やスクリプト実装に対する移行は不要です。ただし、今後このテストを再開する際は、JSON 出力の挙動を再確認する必要があります。

### [#18474](https://github.com/microsoft/aspire/pull/18474) — test: Decouple test projects from `Aspire.Hosting.Tests` 

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +153 / -53
- マージ日時 (UTC): `2026-06-24 23:19:07`

**変更概要**

この PR は、Aspire のテストプロジェクトを `Aspire.Hosting.Tests` から切り離し、テストの依存関係をより分散させる構造変更です。テストユーティリティを抽出して共有することで、テスト fan-out を減らしやすくします。開発者向けの内部構成改善で、利用者向け機能には影響しません。

<details><summary>変更ファイル (87 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Aspire.slnx` | 1 | 0 |
| `src/Aspire.Hosting/Aspire.Hosting.csproj` | 1 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/Aspire.Cli.EndToEnd.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Azure.Kubernetes.Tests/Aspire.Hosting.Azure.Kubernetes.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Azure.Kusto.Tests/Aspire.Hosting.Azure.Kusto.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Blazor.Tests/Aspire.Hosting.Blazor.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Browsers.Tests/Aspire.Hosting.Browsers.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Containers.Tests/Aspire.Hosting.Containers.Tests.csproj` | 5 | 1 |
| `tests/Aspire.Hosting.DevTunnels.Tests/Aspire.Hosting.DevTunnels.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Docker.Tests/Aspire.Hosting.Docker.Tests.csproj` | 5 | 1 |
| `tests/Aspire.Hosting.DotnetTool.Tests/Aspire.Hosting.DotnetTool.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.EntityFrameworkCore.Tests/Aspire.Hosting.EntityFrameworkCore.Tests.csproj` | 5 | 1 |
| `tests/Aspire.Hosting.Foundry.Tests/Aspire.Hosting.Foundry.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.Garnet.Tests/Aspire.Hosting.Garnet.Tests.csproj` | 1 | 1 |
| `tests/Aspire.Hosting.GitHub.Models.Tests/Aspire.Hosting.GitHub.Models.Tests.csproj` | 1 | 1 |
| _... 他 72 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `2f63100` test: extract Aspire.Hosting.TestUtilities to break test fan-out
- `c0e592b` test: make Aspire.Hosting.TestUtilities an Aspire host so apphost dis…
- `444afc5` fix(tests): restore Verify snapshot resolution after TestUtilities ex…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の追加・変更はなく、テストプロジェクトの依存関係とテストユーティリティの配置が変更されています。内部実装の整理として捉えるのが妥当で、既存のホスティング API には影響しません。

**既存利用者への影響**

利用者に対する移行作業は不要です。内部テスト構成の変更に関わるため、リポジトリ側の開発・保守担当者は新しいテストユーティリティ配置を把握しておくとよいでしょう。

### [#18472](https://github.com/microsoft/aspire/pull/18472) — ci: auto-rerun failed scheduled Outerloop Tests runs (up to 3×)

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +126 / -0
- マージ日時 (UTC): `2026-06-24 23:01:15`

**変更概要**

この PR は、Outerloop の scheduled test run が失敗した場合に、最大 3 回まで自動再実行する仕組みを追加します。CI の一時的な失敗を吸収して、実際の再現性テストの結果を取りやすくする狙いです。運用上の安定性向上系の変更で、テスト対象コードそのものは変わりません。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/auto-rerun-outerloop-failures.yml` | 52 | 0 |
| `docs/ci/auto-rerun-outerloop-failures.md` | 72 | 0 |
| `docs/ci/auto-rerun-transient-ci-failures.md` | 2 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `88d3f31` ci: auto-rerun failed scheduled Outerloop Tests runs
- `152bd82` docs: fix markdownlint MD028 in transient-rerun cross-link

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、GitHub Actions workflow と CI ドキュメントの追加です。テスト実行の再試行ポリシーが変わるため、CI の実行ログや再試行回数に関する観点が増えます。

**既存利用者への影響**

利用者に対する移行は不要です。CI での flaky な失敗を減らしたい構成では、今回の自動再試行をそのまま活用できます。

### [#18469](https://github.com/microsoft/aspire/pull/18469) — Add 'Connection reset by peer' to transient CI failure retry patterns

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +22 / -0
- マージ日時 (UTC): `2026-06-24 19:53:37`

**変更概要**

この PR は、CI の一時的失敗として `Connection reset by peer` を再試行パターンに追加し、ネットワーク由来の一時エラーにも対応します。これで外部依存の揺らぎを受けたテストでも再試行の対象に入りやすくなります。保守運用の改善で、アプリケーションコードの変更ではありません。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/auto-rerun-transient-ci-failures.js` | 1 | 0 |
| `eng/test-retry-patterns.json` | 4 | 0 |
| `tests/Infrastructure.Tests/WorkflowScripts/AutoRerunTransientCiFailuresTests.cs` | 17 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `d32d06a` Add 'Connection reset by peer' to transient CI failure retry patterns

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API は変わらず、再試行ルールと設定 JSON の更新です。内部の CI 設定値に関する変更なので、開発者にとっての影響は実行ログやリトライ挙動の変化に留まります。

**既存利用者への影響**

利用者に対する移行作業は不要です。CI の安定性を高めたい環境では、今後の失敗パターンの見直しに役立ちます。

### [#18468](https://github.com/microsoft/aspire/pull/18468) — Fix Playwright download transient errors failing the build

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +10 / -2
- マージ日時 (UTC): `2026-06-24 17:19:56`

**変更概要**

この PR は、Playwright のダウンロード失敗が一時的なエラーとして扱われるように修正し、ビルドを安定化させます。対象はテスト用の Playwright ターゲット設定で、実行環境の揺らぎに対応する内容です。E2E 評価の信頼性を上げるための小さな修正です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Shared/Playwright/Playwright.targets` | 10 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `ef6d769` Fix Playwright download transient errors failing the build

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、Playwright のテスト実行設定を調整しています。実装面ではビルドスクリプトの挙動が変わるため、テスト環境の問題が減る点が主な差分です。

**既存利用者への影響**

利用者に対する移行はありません。ローカル/CI で E2E テストを回す環境では、ダウンロード失敗による false negative が減る見込みです。

### [#18464](https://github.com/microsoft/aspire/pull/18464) — [automated] Re-enable VS Code extension E2E tests

- 作者: adamint / 状態: MERGED
- ラベル: —
- 変更行数: +206 / -28
- マージ日時 (UTC): `2026-06-24 21:54:00`

**変更概要**

この PR は、VS Code extension の E2E テストを再有効化し、停止処理とクリーンアップの堅牢性を強化します。テストの再開に伴って、拡張機能のテスト基盤やヘルパーが整理されています。開発者向けの品質保証改善で、エンドユーザー機能の差分は限定的です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/tests.yml` | 7 | 10 |
| `extension/src/test-e2e/debugDashboard.e2e.test.ts` | 7 | 11 |
| `extension/src/test-e2e/helpers/assertions.ts` | 18 | 1 |
| `extension/src/test-e2e/helpers/fixtures.ts` | 85 | 2 |
| `extension/src/test/e2eLaunchProfile.test.ts` | 46 | 0 |
| `extension/src/testing/e2eStateFileBridge.ts` | 36 | 4 |
| `extension/src/types/extensionApi.ts` | 7 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `bd36b39` Re-enable VS Code extension E2E tests
- `d5d031d` Harden VS Code extension E2E stop cleanup
- `d09730b` Validate AppHost process before E2E cleanup kill
- `4a6dfc9` Latch extension E2E stopping path events

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

拡張機能のテスト用ヘルパーと `extensionApi` 型の一部が更新されているため、開発者側の内部 API には若干の差分があります。ただし、一般的な拡張機能利用者の契約面で破壊的変更はありません。

**既存利用者への影響**

通常の利用者に対する移行は不要です。VS Code 拡張機能の開発・保守に関わる方は、テスト関連のヘルパー差分を確認しておくとよいでしょう。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18463 | Fix CA1310: Add StringComparison to StartsWith calls in Heartbeat.cs | JamesNK | <https://github.com/microsoft/aspire/pull/18463> |
| #18462 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18462> |
| #18460 | Fix flaky ProcessGuestLauncherTests by avoiding nested PowerShell startup | JamesNK | <https://github.com/microsoft/aspire/pull/18460> |
| #18453 | Make Playwright browser provisioning resilient to download timeouts | JamesNK | <https://github.com/microsoft/aspire/pull/18453> |
| #18451 | Fix flaky WaitForLegacyDetachedStartupStabilityAsync_RetriesV2ProbeUntilChildExits test | JamesNK | <https://github.com/microsoft/aspire/pull/18451> |
| #18440 | Remove npm README workflow badges | adamint | <https://github.com/microsoft/aspire/pull/18440> |
| #18438 | Trigger polyglot validation on integration ATS baseline changes | sebastienros | <https://github.com/microsoft/aspire/pull/18438> |
| #18431 | Fix user secrets escaping & and + as unicode sequences | JamesNK | <https://github.com/microsoft/aspire/pull/18431> |
| #18429 | Enable CA1310 and CA1311 globally and fix warnings | JamesNK | <https://github.com/microsoft/aspire/pull/18429> |
| #18425 | Add e2e test for resource command JSON result output separation | JamesNK | <https://github.com/microsoft/aspire/pull/18425> |
| #18424 | Replace Environment.GetEnvironmentVariable in CLI with IEnvironment abstraction | JamesNK | <https://github.com/microsoft/aspire/pull/18424> |
| #18422 | [Automated] Update Azure VM Sizes | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18422> |
| #18421 | Use federated OIDC auth for Update Azure VM Sizes workflow | mitchdenny | <https://github.com/microsoft/aspire/pull/18421> |
| #18416 | Document PostgreSQL 18 data volume upgrade in integration README | sebastienros | <https://github.com/microsoft/aspire/pull/18416> |
| #18410 | Add first-party Nix package for Aspire CLI | davidfowl | <https://github.com/microsoft/aspire/pull/18410> |
| #18313 | Hide parameters from resource graph view and type filter | JamesNK | <https://github.com/microsoft/aspire/pull/18313> |
| #18288 | Remove refresh-typescript-sdks workflow and script | Copilot | <https://github.com/microsoft/aspire/pull/18288> |
| #18269 | Improve Azure provisioning recovery commands | davidfowl | <https://github.com/microsoft/aspire/pull/18269> |
| #18266 | ci(release): submit WinGet PR ready-for-review instead of draft | radical | <https://github.com/microsoft/aspire/pull/18266> |
| #18256 | Enable keyboard navigation on dashboard scroll containers | JamesNK | <https://github.com/microsoft/aspire/pull/18256> |
| #18251 | Add internal Microsoft telemetry detector | DamianEdwards | <https://github.com/microsoft/aspire/pull/18251> |
| #18011 | Refactor health check to resolve URI directly from an endpoint rather… | afscrome | <https://github.com/microsoft/aspire/pull/18011> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18480 | fix(skills): match MTP lowercase "total:" in run-test-repeatedly zero-test guard | open | radical | <https://github.com/microsoft/aspire/pull/18480> |
| PR | #18479 | Fix flaky LsCommandTests by making LsCommand options non-static | open | Copilot | <https://github.com/microsoft/aspire/pull/18479> |
| PR | #18475 | Optimize Copilot setup steps for speed and reliability | open | Copilot | <https://github.com/microsoft/aspire/pull/18475> |
| PR | #18473 | Add pr-auto-review agentic workflow | open | joperezr | <https://github.com/microsoft/aspire/pull/18473> |
| PR | #18465 | Fix Key Vault soft-delete reprovision recovery | open | davidfowl | <https://github.com/microsoft/aspire/pull/18465> |
| PR | #18457 | Execute VS Code resource commands without opening the terminal | open | adamint | <https://github.com/microsoft/aspire/pull/18457> |
| PR | #18456 | Draft: Add AppHost target version telemetry (automated) | open | adamint | <https://github.com/microsoft/aspire/pull/18456> |
| PR | #18455 | Improve npm CLI package README | open | adamint | <https://github.com/microsoft/aspire/pull/18455> |
| PR | #18454 | Refactor CLI telemetry: background tag calculation with export-time enrichment | open | JamesNK | <https://github.com/microsoft/aspire/pull/18454> |
| PR | #18452 | Forward EF migration connection string to the dotnet-ef tool resource | open | Copilot | <https://github.com/microsoft/aspire/pull/18452> |
| PR | #18443 | [do not review] Use `aspire ls --format json --stream` for incremental AppHost discovery in the extension | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18443> |
| PR | #18442 | Add Aspire.Hosting.Dotnet integration package | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18442> |
| PR | #18437 | Add AGENTS.md for Aspire.Hosting.PostgreSQL NuGet package | open | kartheekp-ms | <https://github.com/microsoft/aspire/pull/18437> |
| PR | #18436 | Speed up AppHost discovery by skipping MSBuild evaluation for non-AppHost projects | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18436> |
| PR | #18433 | Introduce `NatsClusterResource` | open | aradalvand | <https://github.com/microsoft/aspire/pull/18433> |
| PR | #18428 | Add `aspire test` testing-loop spec and Phase 0 walking skeleton | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18428> |
| PR | #18427 | Add integration index design and CLI E2E slice | open | davidfowl | <https://github.com/microsoft/aspire/pull/18427> |
| PR | #18471 | Speed up AppHost candidate discovery | closed | adamint | <https://github.com/microsoft/aspire/pull/18471> |
| PR | #18461 | 🔍 [DO NOT MERGE] Investigation: VS Code extension E2E debug-dashboard | closed | adamint | <https://github.com/microsoft/aspire/pull/18461> |
| PR | #18450 | [ignore][experiment] shepherd NATS validation — do not merge | closed | radical | <https://github.com/microsoft/aspire/pull/18450> |
| PR | #18449 | [ignore][experiment] shepherd fixable-CI validation — do not merge | closed | radical | <https://github.com/microsoft/aspire/pull/18449> |
| PR | #18448 | [ignore][experiment] settle-window validation — do not merge | closed | radical | <https://github.com/microsoft/aspire/pull/18448> |
| PR | #18432 | Fix SDK check failing after private SDK install by routing commands through IDotNetRuntimeSelector | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18432> |
| PR | #18348 | Avoid running MSBuild during `aspire ls` AppHost discovery in the VS Code extension | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/18348> |
| Issue | #18478 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18478> |
| Issue | #18476 | [Failing test]: Aspire.Cli.Tests.Commands.LsCommandTests.LsCommand_JsonFormat_OnlyJsonOnStdout_StatusMessagesOnStderr | open | radical | <https://github.com/microsoft/aspire/issues/18476> |
| Issue | #18470 | Aspire WebAssembly debug Integration per docs from aspire.dev is inoperable | closed | Rhywden | <https://github.com/microsoft/aspire/issues/18470> |
| Issue | #18467 | Aspire should support debugging resources in visual studio even when the app host is started without debugging | open | nvmkpk | <https://github.com/microsoft/aspire/issues/18467> |
| Issue | #18466 | Allow setting of binary contents for `ContainerFile` | open | afscrome | <https://github.com/microsoft/aspire/issues/18466> |
| Issue | #18459 | VS Code Extension: "install" assumes terminal based on platform | open | fowl2 | <https://github.com/microsoft/aspire/issues/18459> |
| Issue | #18458 | [Deployment E2E] Nightly test failure - 2026-06-24 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18458> |
| Issue | #18447 | Adjust require CLI for C# AppHosts in 13.5 | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/18447> |
| Issue | #18441 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18441> |
| Issue | #18439 | aspire finding apphost candidates is still very slow | open | adamint | <https://github.com/microsoft/aspire/issues/18439> |
| Issue | #18435 | [CI] Build broken on release/13.4 — 20260622.15 | closed | joperezr | <https://github.com/microsoft/aspire/issues/18435> |
| Issue | #18434 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18434> |
| Issue | #18430 | Support adding of gRPC Routes for Kubernetes Gateway Api Resource | open | TheBenda | <https://github.com/microsoft/aspire/issues/18430> |
| Issue | #18426 | [Daily Smoke] CLI smoke test failure - 2026-06-23 | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18426> |
| Issue | #18417 | AspireAiMonitor — live status | closed | radical | <https://github.com/microsoft/aspire/issues/18417> |
| Issue | #18200 | Azure recovery diagnostics follow-ups from Bicep playground testing | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18200> |
| Issue | #18156 | Enable better navigation when viewing console logs | closed | weitzhandler | <https://github.com/microsoft/aspire/issues/18156> |
| Issue | #18128 | Provide an official Nix flake (or nixpkgs packaging) for the Aspire CLI | closed | av-leschinskiy | <https://github.com/microsoft/aspire/issues/18128> |
| Issue | #17907 | PostgreSQL run fails after upgrading to 13.4 | closed | Waleed-KH | <https://github.com/microsoft/aspire/issues/17907> |
| Issue | #17638 | CLI: `aspire run` with TypeScript AppHost doesn't exit gracefully on Ctrl+C | closed | JamesNK | <https://github.com/microsoft/aspire/issues/17638> |
| Issue | #17554 | Consider adding Nixpkgs for acquisition | closed | radical | <https://github.com/microsoft/aspire/issues/17554> |
| Issue | #17290 | Hide Parameters from Resource Graph View | closed | MikeNislick | <https://github.com/microsoft/aspire/issues/17290> |
| Issue | #10653 | Dashboard > Metric > Filters: add ability to filter by clicking the tag box | closed | inlineHamed | <https://github.com/microsoft/aspire/issues/10653> |
| Issue | #5537 | Parameters in User Secrets containing `&` are converted to contain `\u0026` instead | closed | fdohrendorfG | <https://github.com/microsoft/aspire/issues/5537> |
