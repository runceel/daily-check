# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-08 06:31:54 〜 2026-07-10 00:28:22 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 14 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 17 |
| クローズ Issue          | 21 |
| 主要コントリビューター  | Copilot, JamesNK, ellahathaway, adamint, bart-vmware, dotnet-maestro[bot] |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18692](https://github.com/microsoft/aspire/pull/18692) — Update Foundry hosted agent protocol payload （PR / open / tommasodotNET）
  Foundry hosted agent のプロトコルを利用する開発者は、payload の新形式と互換性を確認し、マージ後のクライアント更新に備えてください。
- **⚠ 破壊的変更** [#18044](https://github.com/microsoft/aspire/pull/18044) — Obsolete PublishAsConnectionString （PR / merged / davidfowl）
  `PublishAsConnectionString` を利用する AppHost は obsolete 警告を確認し、推奨される接続設定・参照方法へ移行してください。
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / open / IEvangelist）
  Aspire の JS/TS 依存を使う開発者・リリース担当は、未解消のセキュリティ alert と修正版の取り込み状況を確認してください。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  npm 依存を管理する担当者は、セキュリティ alert 対応の依存更新をレビューし、ロックファイルを含めて取り込んでください。
- **⚠ セキュリティ** [#17949](https://github.com/microsoft/aspire/pull/17949) — feat(keyvault): Add HealthCheckOptions to AzureSecurityKeyVaultSettings （PR / open / PlaySkyHD）
  Azure Key Vault 統合の利用者は、追加された `HealthCheckOptions` と認証・接続失敗時の監視方針を確認してください。
- **非推奨/廃止** [#18022](https://github.com/microsoft/aspire/pull/18022) — Update specs/appmodel.md with AfterEndpointsAllocatedEvent deprecation （PR / merged / sliekens）
  `AfterEndpointsAllocatedEvent` を使う拡張機能の作者は、仕様の非推奨化を確認し、後継イベントへの移行を計画してください。

## このリポジトリの要点

VS Code 拡張のデバッグ終了コード処理、CLI のプロジェクト探索、Dashboard のフォーカス検出など、開発体験とテスト安定性の修正が中心でした。依存更新と並行して、`PublishAsConnectionString` や `AfterEndpointsAllocatedEvent` の非推奨化、JS/TS セキュリティ alert も継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18712](https://github.com/microsoft/aspire/pull/18712) — Fix VS Code extension ignoring non-zero debuggee exit code

- 作者: ellahathaway / 状態: MERGED
- ラベル: `area-vscode-extension`
- 変更行数: +225 / -3
- マージ日時 (UTC): `2026-07-09 23:39:01`

**変更概要**

VS Code 拡張がデバッグ対象プロセスの非ゼロ終了コードを無視していた問題を修正しました。プロセス再起動時の終了コードをリセットし、数値以外の終了イベントを含むテストを追加しています。
デバッグ対象が異常終了した場合に、拡張が正しく失敗を報告できるようになります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/src/debugger/adapterTracker.ts` | 16 | 3 |
| `extension/src/test/adapterTracker.test.ts` | 209 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `e2b01af` Fix VS Code extension ignoring non-zero debuggee exit code
- `fc631e9` Reset captured debuggee exit code on process restart
- `2931f69` Add test for exited event with non-number exit code
- `b6ce470` Use distinct adapter sentinel in 143 exit-code tests
- `a96385a` Reset debuggee exit code before the process PID guard

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`adapterTracker` の終了コード保持・リセット処理を修正し、終了イベントの判定用 sentinel を分離しました。公開 API の変更や破壊的変更はありません。

**既存利用者への影響**

マイグレーションは不要です。VS Code 拡張を更新し、デバッグ対象の異常終了が適切に表示されることを確認してください。

### [#18707](https://github.com/microsoft/aspire/pull/18707) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-09 16:11:04`

**変更概要**

Aspire が利用する microsoft/dcp のビルドを 0.25.5 へ更新し、バージョン管理ファイルを同期しました。DCP の修正・改善を取り込む依存更新です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `4c4e750` Update dependencies from https://github.com/microsoft/dcp build 0.25.5

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `eng/Version.Details.xml` と `eng/Versions.props` の依存バージョン更新に限定されます。Aspire の公開 API を直接変更するものではありません。

**既存利用者への影響**

通常の利用者に移行作業はありません。AppHost と DCP の組み合わせで起動・デバッグの回帰がないことを確認してください。

### [#18702](https://github.com/microsoft/aspire/pull/18702) — Fix flaky RunCommand_DetachedChild_WhenSignaledBeforeReadiness test timeout

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +13 / -7
- マージ日時 (UTC): `2026-07-09 19:37:10`

**変更概要**

`RunCommand_DetachedChild_WhenSignaledBeforeReadiness` が、子プロセスのシグナルと readiness の順序によってタイムアウトする不安定テストを修正しました。テストの待機・終了処理を調整し、競合するタイミングをカバーしています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Cli.Tests/Commands/RunCommandTests.cs` | 13 | 7 |

</details>

<details><summary>コミット (3 件)</summary>

- `73bc1d5` Initial plan
- `11d39e8` Fix flaky RunCommand_DetachedChild_WhenSignaledBeforeReadiness test
- `3ad999d` Potential fix for pull request finding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `RunCommandTests` のテスト同期処理に限定され、製品 API の変更や破壊的変更はありません。

**既存利用者への影響**

利用者の移行は不要です。CI で同テストのタイムアウトが再発しないことを確認してください。

### [#18700](https://github.com/microsoft/aspire/pull/18700) — Revert ProjectLocator walk-stop behavior from #18683

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +26 / -103
- マージ日時 (UTC): `2026-07-09 23:51:41`

**変更概要**

PR #18683 で導入した `ProjectLocator` の探索停止動作を取り消し、以前の探索挙動へ戻しました。プロジェクト検出の回帰を避けるための修正で、関連テストの古い期待値も削除されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Projects/ProjectLocator.cs` | 26 | 40 |
| `tests/Aspire.Cli.Tests/Projects/ProjectLocatorTests.cs` | 0 | 63 |

</details>

<details><summary>コミット (1 件)</summary>

- `88032ec` Revert ProjectLocator walk-stop behavior from #18683

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ProjectLocator.cs` の探索終了条件が変更されました。公開 API のシグネチャ変更ではありませんが、複数階層の AppHost 検出結果が変わる可能性があります。

**既存利用者への影響**

通常の移行は不要です。複数のプロジェクト構成では、CLI の対象 AppHost が意図どおり選択されることを確認してください。

### [#18695](https://github.com/microsoft/aspire/pull/18695) — Fix MobileNavMenuClosesWhenFocusLeavesMenu: correct focus detection in IsFocusInsideMobileNavMenuScript

- 作者: Copilot / 状態: MERGED
- ラベル: `area-dashboard` `testing ☑️`
- 変更行数: +6 / -11
- マージ日時 (UTC): `2026-07-08 20:53:52`

**変更概要**

Dashboard のモバイルナビゲーションで、メニュー外へフォーカスが移ったことを誤判定するテストを修正しました。light DOM の親チェーンをたどってフォーカス位置を判定します。
モバイル画面でメニューが適切に閉じる挙動を検証する変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Dashboard.Tests/Integration/Playwright/MobileNavMenuTests.cs` | 6 | 11 |

</details>

<details><summary>コミット (2 件)</summary>

- `e9035d0` Initial plan
- `024f85d` Fix IsFocusInsideMobileNavMenuScript to traverse light DOM parent chain

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テスト内の `IsFocusInsideMobileNavMenuScript` 判定を修正したもので、製品 API や公開設定の変更はありません。

**既存利用者への影響**

移行は不要です。Dashboard のモバイルナビゲーションで、メニュー外クリック・フォーカス移動が正しく閉じることを確認してください。

### [#18688](https://github.com/microsoft/aspire/pull/18688) — ConfigurationSchemaGenerator: Fix typo and enable opt-out

- 作者: bart-vmware / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +5 / -5
- マージ日時 (UTC): `2026-07-08 14:07:05`

**変更概要**

ConfigurationSchemaGenerator の設定キーの typo を修正し、生成を明示的に無効化できる opt-out を有効にしました。設定ファイルや build targets でコード生成を制御したい統合開発者が対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Components/Directory.Build.targets` | 5 | 5 |

</details>

<details><summary>コミット (1 件)</summary>

- `dcbd9d7` ConfigurationSchemaGenerator: Fix typo and enable opt-out

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`Directory.Build.targets` の MSBuild プロパティ名と opt-out 条件が更新されました。生成を既定のまま使う場合の API 変更はありませんが、旧 typo のプロパティを指定していた利用者は確認が必要です。

**既存利用者への影響**

生成を無効化していた利用者はプロパティ名を見直してください。それ以外は通常の依存・ソース更新で移行作業は不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18683 | Replace TestTempDirectory with TemporaryWorkspace and clean up test project configuration | JamesNK | <https://github.com/microsoft/aspire/pull/18683> |
| #18679 | Show unsupported AppHost dashboard version dialog | JamesNK | <https://github.com/microsoft/aspire/pull/18679> |
| #18671 | Harden Daily CLI Smoke Tests: set an explicit AppHost startup budget for raw `aspire run` | Copilot | <https://github.com/microsoft/aspire/pull/18671> |
| #18669 | Remove Dashboard's 1MB file upload fallback, rely on server limit | Copilot | <https://github.com/microsoft/aspire/pull/18669> |
| #18666 | Clean up temp directory in AtsExportsTests using TemporaryWorkspace | Copilot | <https://github.com/microsoft/aspire/pull/18666> |
| #18665 | Localize file input validation messages in InteractionsInputDialog | Copilot | <https://github.com/microsoft/aspire/pull/18665> |
| #18624 | Recommend the VS Code extension in aspire doctor | ellahathaway | <https://github.com/microsoft/aspire/pull/18624> |
| #17926 | Fix Resources accessibility keyboard and reflow paths | adamint | <https://github.com/microsoft/aspire/pull/17926> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18718 | Add stop --force persistent resource cleanup | open | danegsta | <https://github.com/microsoft/aspire/pull/18718> |
| PR | #18717 | fix: batch sdk dump in generate-ats-diffs to fix disk space exhaustion | open | Copilot | <https://github.com/microsoft/aspire/pull/18717> |
| PR | #18705 | Update Spectre.Console to 0.57.2 | open | Copilot | <https://github.com/microsoft/aspire/pull/18705> |
| PR | #18701 | Fix trace 'not contains' filter not excluding matching traces | open | JamesNK | <https://github.com/microsoft/aspire/pull/18701> |
| PR | #18699 | Serialize same-environment Azure Container Apps deployment | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18699> |
| PR | #18698 | Flatten single optional DTO 'options' parameter in Go polyglot generator | open | ellahathaway | <https://github.com/microsoft/aspire/pull/18698> |
| PR | #18696 | Add Aspire.Hosting.Radius: Radius as a compute environment (+ cloud providers) | open | nellshamrell | <https://github.com/microsoft/aspire/pull/18696> |
| PR | #18692 | Update Foundry hosted agent protocol payload | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/18692> |
| PR | #18689 | Load environment variables from launch of AzureFunctions project | open | dsurys | <https://github.com/microsoft/aspire/pull/18689> |
| PR | #18713 | Reset stale mis-localized "Table" chart tab string (#18708) | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/18713> |
| PR | #18693 | [WIP] Fix CI infrastructure failing for Outerloop Tests | closed | Copilot | <https://github.com/microsoft/aspire/pull/18693> |
| Issue | #18716 | CI lane "Milestone Changelog Generator" red | open | radical | <https://github.com/microsoft/aspire/issues/18716> |
| Issue | #18715 | Internal pipeline: transient macOS notarization flake fails native build+sign on main | open | radical | <https://github.com/microsoft/aspire/issues/18715> |
| Issue | #18714 | Allow limiting parallelism of aspire deploy/publish pipeline steps | open | damianog | <https://github.com/microsoft/aspire/issues/18714> |
| Issue | #18710 | [Failing test]: Aspire.Playground.Tests.BlazorWasmHostingTests.HostedBlazorWasm\_BrowserRendersWeatherAndSendsTelemetry | open | radical | <https://github.com/microsoft/aspire/issues/18710> |
| Issue | #18711 | [Failing test]: Aspire.Playground.Tests.BlazorWasmHostingTests.StandaloneBlazorWasm\_BrowserRendersWeatherAndSendsTelemetry | open | radical | <https://github.com/microsoft/aspire/issues/18711> |
| Issue | #18709 | Deploy error in TypeScript + NodeApp + Foundry: Compute resource(s) are not assigned to a compute environment, but the model contains multiple compute environments | closed | TWolversonReply | <https://github.com/microsoft/aspire/issues/18709> |
| Issue | #18708 | [AspireE2E] There are unlocalized strings in the resources page and action menus of the Aspire dashboard | open | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/18708> |
| Issue | #18706 | [AspireE2E] This project cannot be opened automatically in the browser after running Aspire 13.5 project with `dotnet watch` | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18706> |
| Issue | #18704 | Allow setting descriptions on AddConnectionString() parameters | open | jmezach | <https://github.com/microsoft/aspire/issues/18704> |
| Issue | #18703 | `aspire run`/`aspire start` crashes (exit code 2) on WSL2 — unhandled exception in the dev-cert trust check (X509Chain.Build/GetTrustLevel), persists on SDK 10.0.109 + runtime 10.0.9 | open | mwadams | <https://github.com/microsoft/aspire/issues/18703> |
| Issue | #18697 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18697> |
| Issue | #18694 | Detect an outdated Aspire VS Code extension in `aspire doctor` | open | ellahathaway | <https://github.com/microsoft/aspire/issues/18694> |
| Issue | #18691 | [CI Failure] NPM registry rate limiting (HTTP 429 Too Many Requests) from dnceng feed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18691> |
| Issue | #18690 | [CI Failure] Flaky: TestingBuilderTests.CrashTests fails intermittently with unhandled InvalidOperationException | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18690> |
| Issue | #18687 | VS Code extension ignores non-zero exit code — .WaitFor() dependents start despite dependency failure | closed | radiosity | <https://github.com/microsoft/aspire/issues/18687> |
| Issue | #18686 | Aspire not sending args to Azure Functions | open | darianferrer | <https://github.com/microsoft/aspire/issues/18686> |
| Issue | #18684 | [Dashboard] Trace Name filter "not contains" does not exclude matching traces | open | kdalestedt | <https://github.com/microsoft/aspire/issues/18684> |
| Issue | #18677 | [CI Failure] Flaky: RunCommandTests.RunCommand_DetachedChild_WhenSignaledBeforeReadiness_AwaitsAppHostTeardownBeforeExit times out intermittently | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18677> |
| Issue | #18668 | Nightly run failing: Daily CLI Smoke Tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18668> |
| Issue | #18664 | Improve incompatible dashboard dialog: make modal, improve text, add aka.ms link | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18664> |
| Issue | #18659 | File input: MaxFileSize XML doc should mention Dashboard's 1MB default fallback | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18659> |
| Issue | #18660 | File input: Localize validation messages in InteractionsInputDialog | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18660> |
| Issue | #18662 | File input: Clean up temp directory in AtsExportsTests | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18662> |
| Issue | #18661 | File input: Add rel="noopener noreferrer" to external link in incompatible dashboard dialog | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18661> |
| Issue | #18657 | Test failures: Outerloop Tests | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18657> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #18601 | Please consider the support of file masking and multiple file selection of the file chooser i.e. | closed | mcumming | <https://github.com/microsoft/aspire/issues/18601> |
| Issue | #18599 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18599> |
| Issue | #18584 | [aw] Analyze CI Failure has stale lock file | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18584> |
| Issue | #18300 | aspire doctor should recommend installing the VS Code extension when VS Code is installed | closed | adamint | <https://github.com/microsoft/aspire/issues/18300> |
| Issue | #17691 | Dashboard: <label> overlays <fluent-select> in "Add filter" panel, blocking click automation and potentially affecting accessibility | closed | joperezr | <https://github.com/microsoft/aspire/issues/17691> |
| Issue | #17656 | Keyboard focus moves out of page after selecting menu item from View options:A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17656> |
| Issue | #17654 | Selected Graph tab is not visible in reflow while navigating via keyboard:A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17654> |
| Issue | #17469 | Pressing Tab key collapses “View option” popup and causes unexpected focus reset:A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17469> |
| Issue | #17466 | Screen reader does not announce expanded/collapsed state for “View options” button:A11y_Aspire Dashboard_Resources | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17466> |
| Issue | #17307 | [AspireE2E]After running `aspire ps` with the terminal window at its default size, the "Logs" and "Dashboard" links are not clickable. | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/17307> |
