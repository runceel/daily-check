# microsoft/aspire *(詳細モード)*

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 17 |
| オープン中の新規 PR     | 12 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 23 |
| クローズ Issue          | 17 |
| 主要コントリビューター  | aspire-repo-bot[bot], JamesNK, mitchdenny, joperezr, dotnet-maestro[bot], radical |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#20387](https://github.com/microsoft/aspire/pull/20387) — Reduce agent telemetry hook overhead without reducing coverage （PR / open / IEvangelist）
タイトル上は telemetry hook の性能最適化提案で、破壊的変更を示す内容は確認できません。agent telemetry 利用者は未マージ PR の実装を採用前に確認してください。
- **⚠ 破壊的変更** [#20287](https://github.com/microsoft/aspire/pull/20287) — Configure native agent plugins and independent assets （PR / open / ellahathaway）
native agent plugin と asset 構成のオープン提案です。破壊的変更の詳細は提示情報から確認できないため、関連する設定利用者はマージ時に互換性を確認してください。
- **⚠ セキュリティ** [#20460](https://github.com/microsoft/aspire/issues/20460) — Azure Sandboxes: all ADC error responses are redacted, hiding actionable, non-sensitive failure reasons （Issue / open / eerhardt）
脆弱性ではなく、Azure Sandbox の ADC エラーが過剰に伏せられて診断情報が不足する問題です。Sandbox 利用者は修正状況を追跡し、公開されるエラー情報が機密を含まないことを確認してください。

## このリポジトリの要点

13.6 向けには Dashboard の terminal dock / keyboard shortcut 改善や、local socket directory・endpoint permission の一貫化がマージされました。
Blazor debugger の E2E profile 分離も安定化され、DCP 依存関係は 0.26.4 に更新されています。Sandbox の tier サイズと ADC エラー表示に関する報告は継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#20432](https://github.com/microsoft/aspire/pull/20432) — [release/13.6] Animate terminal dock on first open

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +7 / -0
- マージ日時 (UTC): `2026-09-24 23:54:31`

**変更概要**

Dashboard の terminal dock を初回表示時にアニメーションさせ、開いたことを視覚的に分かりやすくします。
変更は `TerminalDock.razor.css` のスタイル追加のみで、Dashboard UI の表示に限定されます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Layout/TerminalDock.razor.css` | 7 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `62d62aa` Animate terminal dock on first open

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CSS に初回表示時のアニメーションを追加する変更で、API シグネチャや公開抽象の変更はありません。

**既存利用者への影響**

移行不要です。Dashboard の初回表示時の視覚的な挙動のみが変わります。

### [#20312](https://github.com/microsoft/aspire/pull/20312) — Stabilize Blazor browser debugger E2E setup and profile isolation

- 作者: ellahathaway / 状態: MERGED
- ラベル: —
- 変更行数: +316 / -8
- マージ日時 (UTC): `2026-09-24 23:43:11`

**変更概要**

Blazor browser debugger の E2E が不安定になる問題に対し、テスト用 browser profile と状態ファイル連携を分離・安定化します。
診断用の一時 instrumentation を除去し、C# bridge の readiness を project import 完了待ちに依存させない構成に整理しました。
変更対象は VS Code extension のテスト・内部 test helper が中心です。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/CONTRIBUTING.md` | 5 | 1 |
| `extension/src/test-e2e/browserDebugger.e2e.test.ts` | 26 | 3 |
| `extension/src/test-e2e/helpers.ts` | 8 | 1 |
| `extension/src/test/blazorWasmDebuggerSetup.test.ts` | 81 | 0 |
| `extension/src/test/e2eStateFileBridge.test.ts` | 118 | 2 |
| `extension/src/test/testHelpers.ts` | 13 | 0 |
| `extension/src/testing/blazorWasmDebuggerSetup.ts` | 29 | 0 |
| `extension/src/testing/e2eStateFileBridge.ts` | 35 | 1 |
| `extension/src/types/extensionApi.ts` | 1 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `ea3bf4c` Temporary passive Blazor profile diagnostics for investigation
- `fd52a5e` Trigger isolated diagnostic baseline CI
- `084eb18` Temporary Linux shared-profile stress for Blazor investigation
- `b63b56c` Remove temporary Blazor investigation instrumentation
- `806ce2c` Isolate Blazor debugger E2E profiles and prepare C# bridge
- `c7eea0b` Check Blazor bridge readiness without waiting for project import

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

E2E state file bridge と debugger setup の内部テスト支援を追加・調整しています。公開利用者向け API の互換性を変える変更は一覧から確認できません。

**既存利用者への影響**

利用者の移行は不要です。主に extension の E2E テスト実行に影響し、Blazor debugger の browser profile 干渉や起動待ちの不安定さを抑えます。

### [#20450](https://github.com/microsoft/aspire/pull/20450) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-09-24 23:34:04`

**変更概要**

Aspire の依存関係を microsoft/dcp の build 0.26.4 に更新します。
変更は dependency version metadata (`Version.Details.xml`、`Versions.props`) に限定されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `8e6e3a7` Update dependencies from https://github.com/microsoft/dcp build 0.26.4

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存先 DCP のバージョン更新のみで、Aspire の公開 API 変更はありません。実行時の差分は DCP 0.26.4 の更新内容に依存します。

**既存利用者への影響**

個別の移行作業は不要です。DCP に依存する開発・運用環境では、更新後の統合テスト結果を確認してください。

### [#20447](https://github.com/microsoft/aspire/pull/20447) — [release/13.6] Fix official template test timeout

- 作者: joperezr / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +10 / -1
- マージ日時 (UTC): `2026-09-24 21:16:52`

**変更概要**

release/13.6 の公式 template tests がタイムアウトする問題を修正します。
Azure Pipelines の timeout 設定とテスト README を更新し、テスト実行時間に関する設定・説明を揃えています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/pipelines/azure-pipelines.yml` | 4 | 1 |
| `tests/Aspire.Templates.Tests/README.md` | 6 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `40fd297` Fix official template test timeout on release/13.6

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CI timeout とテスト文書の変更で、アプリケーション API や runtime の変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。リリース用 template の検証時間・CI 実行に関する改善です。

### [#20431](https://github.com/microsoft/aspire/pull/20431) — [release/13.6] Fix dashboard shortcut availability

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +144 / -37
- マージ日時 (UTC): `2026-09-24 21:28:27`

**変更概要**

Dashboard の keyboard shortcut が特定の画面状態で利用できない問題を修正します。
Help dialog、MainLayout、ShortcutManager の処理とテストを見直し、shortcut の登録・表示・実行可能状態を整えます。
Dashboard の操作性に関する変更で、AppHost 側のアプリケーション API には影響しません。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Dialogs/HelpDialog.razor.cs` | 28 | 24 |
| `src/Aspire.Dashboard/Components/Dialogs/KeyboardShortcut.cs` | 3 | 1 |
| `src/Aspire.Dashboard/Components/Layout/MainLayout.razor.cs` | 13 | 5 |
| `src/Aspire.Dashboard/ShortcutManager.cs` | 15 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Dialogs/HelpDialogTests.cs` | 49 | 7 |
| `tests/Aspire.Dashboard.Components.Tests/Layout/MainLayoutTests.cs` | 20 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Shared/TestGlobalKeydownListener.cs` | 16 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `0aea87e` Fix dashboard shortcut availability

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard 内部の shortcut 管理・キーイベント処理の修正で、利用者向け API のシグネチャ変更は確認されません。

**既存利用者への影響**

移行不要です。Dashboard のキーボード操作と Help dialog での shortcut 可用性が改善します。

### [#20427](https://github.com/microsoft/aspire/pull/20427) — [release/13.6] Set local socket directory and endpoint permissions consistently

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +1747 / -275
- マージ日時 (UTC): `2026-09-24 21:31:22`

**変更概要**

ローカル socket directory と endpoint の permission 設定を一貫させ、想定外の path layout に誤った権限を適用しないようにします。
socket directory の配置検証、割り当てと検証での共通名利用、設定済み directory の保持などを追加し、CLI / Hosting / RemoteHost / TerminalHost にまたがって処理を整理します。
ローカル通信 endpoint の構成・権限動作に関わる変更です。

<details><summary>変更ファイル (34 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/cli-backchannel.md` | 44 | 0 |
| `docs/specs/polyglot-apphost.md` | 5 | 0 |
| `src/Aspire.Cli/Aspire.Cli.csproj` | 2 | 0 |
| `src/Aspire.Cli/Utils/CliPathHelper.cs` | 3 | 1 |
| `src/Aspire.Hosting.RemoteHost/Aspire.Hosting.RemoteHost.csproj` | 3 | 0 |
| `src/Aspire.Hosting.RemoteHost/JsonRpcServer.cs` | 28 | 29 |
| `src/Aspire.Hosting.RemoteHost/README.md` | 6 | 1 |
| `src/Aspire.Hosting/ApplicationModel/TerminalService.cs` | 12 | 0 |
| `src/Aspire.Hosting/Aspire.Hosting.csproj` | 2 | 0 |
| `src/Aspire.Hosting/Backchannel/BackchannelService.cs` | 3 | 2 |
| `src/Aspire.Hosting/Dcp/DcpHost.cs` | 12 | 9 |
| `src/Aspire.Hosting/Dcp/Locations.cs` | 3 | 1 |
| `src/Aspire.Hosting/TerminalResourceBuilderExtensions.cs` | 3 | 13 |
| `src/Aspire.Hosting/Utils/Hex1bPtySocketHelper.cs` | 51 | 0 |
| `src/Aspire.TerminalHost/Aspire.TerminalHost.csproj` | 3 | 0 |
| _... 他 19 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `8960894` Set local socket directory and endpoint permissions consistently
- `d15ec46` Validate Aspire socket directory layouts before applying permissions
- `8affc1c` Fix terminal socket test directory layouts
- `aa8cfd9` Correct RemoteHost default socket path documentation
- `c3c1fc6` Explain socket permission helper responsibilities
- `0c98316` Make socket directory validation environment paths explicit
- `cd483d6` Share socket directory names between allocation and validation
- `f0bded4` Preserve configured socket directories without repairing their permis…
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

socket path の検証・permission 設定や terminal resource builder extension の動作に変更があります。提示された差分一覧から公開 API シグネチャ変更は特定できませんが、指定済み socket directory を含むローカル構成の挙動が変わる可能性があります。

**既存利用者への影響**

通常は移行不要ですが、socket directory を独自指定する利用者は、新しい layout 検証と権限設定に適合するか確認してください。設定済み directory は自動修復されず保持されるため、権限は利用側で適切に設定してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #20430 | [release/13.6] Fix truncation of selected dashboard dropdown values | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20430> |
| #20429 | [release/13.6] Prevent scrollbars in dashboard Events grid cells | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20429> |
| #20337 | Enable multithreaded .NET project builds | karolz-ms | <https://github.com/microsoft/aspire/pull/20337> |
| #20322 | fix(ci): tighten PR test selection to avoid unnecessary full runs | radical | <https://github.com/microsoft/aspire/pull/20322> |
| #20426 | Fix truncation of selected dashboard dropdown values | JamesNK | <https://github.com/microsoft/aspire/pull/20426> |
| #20425 | Prevent scrollbars in dashboard Events grid cells | JamesNK | <https://github.com/microsoft/aspire/pull/20425> |
| #20414 | Animate terminal dock on first open | JamesNK | <https://github.com/microsoft/aspire/pull/20414> |
| #20413 | Fix dashboard shortcut availability | JamesNK | <https://github.com/microsoft/aspire/pull/20413> |
| #20330 | Set local socket directory and endpoint permissions consistently | mitchdenny | <https://github.com/microsoft/aspire/pull/20330> |
| #20380 | Add Sisyphus to Proxima dashboard defaults | mitchdenny | <https://github.com/microsoft/aspire/pull/20380> |
| #20231 | Add docked REPL commands for database and cache integrations | mitchdenny | <https://github.com/microsoft/aspire/pull/20231> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #20463 | Add Go to source action for source-backed AppHost resources | open | ellahathaway | <https://github.com/microsoft/aspire/pull/20463> |
| PR | #20458 | Add deterministic CI validation for agentic workflows | open | radical | <https://github.com/microsoft/aspire/pull/20458> |
| PR | #20457 | Fix remaining outerloop test failures | open | radical | <https://github.com/microsoft/aspire/pull/20457> |
| PR | #20455 | [ci] Fix internal builds | open | radical | <https://github.com/microsoft/aspire/pull/20455> |
| PR | #20464 | [release/13.6] [main] Update dependencies from microsoft/dcp | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20464> |
| PR | #20436 | Update Aspire.Cli to target net11.0 | open | eerhardt | <https://github.com/microsoft/aspire/pull/20436> |
| PR | #20462 | Surface safe ADC problem-details fields in Azure Sandboxes error messages | open | eerhardt | <https://github.com/microsoft/aspire/pull/20462> |
| PR | #20461 | Fix Azure sandbox ExtraSmall and Small tier disk sizes | open | eerhardt | <https://github.com/microsoft/aspire/pull/20461> |
| PR | #20438 | Fix duplicate inherited ATS method exports | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20438> |
| PR | #20443 | [release/13.6] Fix duplicate inherited ATS method exports | open | IEvangelist | <https://github.com/microsoft/aspire/pull/20443> |
| PR | #20441 | [release/13.6] Enable multithreaded .NET project builds | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20441> |
| PR | #20419 | [release/13.6] Add docked REPL commands for database and cache integrations | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/20419> |
| PR | #20448 | [ci] Fix internal builds | closed | radical | <https://github.com/microsoft/aspire/pull/20448> |
| PR | #19842 | Preserve Dashboard error badge counts across navigation | closed | Copilot | <https://github.com/microsoft/aspire/pull/19842> |
| Issue | #20451 | [CI] Reduce internal basic template tests from ~25 minutes | open | radical | <https://github.com/microsoft/aspire/issues/20451> |
| Issue | #20454 | Polyglot provisioning getters: typed as returning a primitive but always return BicepValueProxy, with no way to read the literal value | open | eerhardt | <https://github.com/microsoft/aspire/issues/20454> |
| Issue | #20459 | Azure Sandboxes: Small and ExtraSmall tiers always fail to deploy (disk request exceeds tier maximum) | open | eerhardt | <https://github.com/microsoft/aspire/issues/20459> |
| Issue | #20460 | Azure Sandboxes: all ADC error responses are redacted, hiding actionable, non-sensitive failure reasons | open | eerhardt | <https://github.com/microsoft/aspire/issues/20460> |
| Issue | #20453 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20453> |
| Issue | #20452 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20452> |
| Issue | #20421 | [CI Failure] Flaky: VS Code extension Blazor browser debugger E2E (hosted-global) times out waiting for WASM root session on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20421> |
| Issue | #20423 | [CI Failure] Flaky: VS Code extension Blazor browser debugger E2E (standalone) times out waiting for pwa-msedge child session on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20423> |
| Issue | #20422 | [CI Failure] Flaky: VS Code extension Blazor browser debugger E2E (hosted-per-page) times out waiting for WASM root session on Windows | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20422> |
| Issue | #20424 | [VS Code] Add "Go to source" action for source-backed resources | open | JamesNK | <https://github.com/microsoft/aspire/issues/20424> |
| Issue | #20446 | [automated] Add deterministic CI validation for agentic workflows | open | radical | <https://github.com/microsoft/aspire/issues/20446> |
| Issue | #20449 | Foundry Local daemon survives AppHost shutdown after invalid-model startup | open | karolz-ms | <https://github.com/microsoft/aspire/issues/20449> |
| Issue | #20445 | Consider isolating Aspire.Hosting's profiling-only OpenTelemetry dependencies | open | joperezr | <https://github.com/microsoft/aspire/issues/20445> |
| Issue | #20444 | Resource terminal viewers disagree on prior output after opening detached and additional windows | open | joperezr | <https://github.com/microsoft/aspire/issues/20444> |
| Issue | #20442 | Docked container terminals remain as unresponsive tabs after restarting the resource | open | joperezr | <https://github.com/microsoft/aspire/issues/20442> |
| Issue | #20440 | Closing docked container terminals leaves shell processes running | open | joperezr | <https://github.com/microsoft/aspire/issues/20440> |
| Issue | #20439 | Dashboard terminal colors have poor contrast, with no light theme or palette controls | open | joperezr | <https://github.com/microsoft/aspire/issues/20439> |
| Issue | #20437 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20437> |
| Issue | #20434 | InteractionInput InputType.Choice If option key is contained by another key it cannot be selected | open | DavidJFowler | <https://github.com/microsoft/aspire/issues/20434> |
| Issue | #20435 | [aw] Failed jobs: Analyze CI Failure | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/20435> |
| Issue | #20433 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20433> |
| Issue | #20428 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/20428> |
| Issue | #20420 | Replace Hex1b Windows PTY environment workaround with explicit socket configuration | open | mitchdenny | <https://github.com/microsoft/aspire/issues/20420> |
| Issue | #19380 | [CI Failure] Flaky: VS Code extension E2E (Windows, apphost-lifecycle-tools) shard fails, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19380> |
| Issue | #19597 | [CI Failure] Flaky: VS Code extension E2E (Linux, workspace-target-proof) shard fails with generic exit code 1, unrelated to PR changes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19597> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #19944 | Improve Project Resource V2 coordinated build performance | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/19944> |
| Issue | #13724 | Add toggle to show/hide Parameters in Graph view | closed | indcoder | <https://github.com/microsoft/aspire/issues/13724> |
| Issue | #19061 | Improve dashboard dark theme accent color | closed | JamesNK | <https://github.com/microsoft/aspire/issues/19061> |
| Issue | #14131 | Scroll in the context menu custom resource commands | closed | vldmatos | <https://github.com/microsoft/aspire/issues/14131> |
| Issue | #12100 | Custom Icons configured via WithIconName do not render in Graph View | closed | Caldas | <https://github.com/microsoft/aspire/issues/12100> |
| Issue | #19285 | Embedded 13.5 CLI bundle omits Fluent UI assets and leaves dashboard blank | closed | adamint | <https://github.com/microsoft/aspire/issues/19285> |
| Issue | #19778 | [Dashboard] Align run retention documentation with implementation | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19778> |
| Issue | #19773 | [Dashboard] Apply telemetry API limits in SQLite queries | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19773> |
| Issue | #19784 | [Dashboard] Resume mode should require or warn about a missing application name | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19784> |
| Issue | #19775 | [Dashboard] Prune incompatible-schema run directories | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19775> |
| Issue | #19841 | Dashboard error badge count disappears after switching tabs | closed | Copilot | <https://github.com/microsoft/aspire/issues/19841> |
