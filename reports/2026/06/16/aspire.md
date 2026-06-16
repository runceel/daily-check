# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-15 00:59:51 〜 2026-06-16 04:07:33 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 8 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 7 |
| クローズ Issue          | 14 |
| 主要コントリビューター  | radical, adamint, mitchdenny, JamesNK, aspire-repo-bot[bot], alirezafzali |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle （PR / open / DamianEdwards）
  AppHost の CLI 取得・実行経路を独自前提で組んでいる環境は、CLI bundle 既定化後もローカル開発・CI・テンプレート生成が同じように動くか確認が必要です。
- **⚠ セキュリティ** [#18153](https://github.com/microsoft/aspire/issues/18153) — [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project （Issue / open / jinzhao1127）
  新規 Aspire project 作成時に脆弱な MessagePack が入る警告が続いているため、テンプレート利用者は生成直後の依存関係警告と修正版への更新可否を確認してください。

## このリポジトリの要点

Aspire は CLI / テンプレート生成まわりの調整が目立ちます。[#18211](https://github.com/microsoft/aspire/pull/18211) で stable channel の `aspire new/update` が不要な `nuget.config` を作らないようになり、[#18225](https://github.com/microsoft/aspire/pull/18225) では Playwright CLI version を厳密な SemVer として検証します。
一方で AppHost の CLI bundle 既定化 [#18188](https://github.com/microsoft/aspire/pull/18188) と MessagePack 脆弱性警告 [#18153](https://github.com/microsoft/aspire/issues/18153) は未解決の重要ウォッチ項目です。Dashboard では Manage Data ダイアログのアクセシビリティ改善も進んでいます。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18225](https://github.com/microsoft/aspire/pull/18225) — Validate playwrightCliVersion shape with strict SemVer

- 作者: mitchdenny / 状態: MERGED
- ラベル: —
- 変更行数: +135 / -1
- マージ日時 (UTC): `2026-06-16 01:48:03`

**変更概要**

Aspire CLI の Playwright agent installer で、`playwrightCliVersion` の形を厳密な SemVer として検証するようにした変更です。
不正なバージョン文字列に対して明確なローカライズ済みエラーメッセージを出すため、installer 本体と各言語リソースが更新されています。
Playwright CLI を Aspire CLI 経由で取得・実行する agent workflow が影響範囲です。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Agents/Playwright/PlaywrightCliInstaller.cs` | 17 | 1 |
| `src/Aspire.Cli/Resources/AgentCommandStrings.Designer.cs` | 9 | 0 |
| `src/Aspire.Cli/Resources/AgentCommandStrings.resx` | 3 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.cs.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.de.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.es.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.fr.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.it.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.ja.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.ko.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.pl.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.pt-BR.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.ru.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.tr.xlf` | 5 | 0 |
| `src/Aspire.Cli/Resources/xlf/AgentCommandStrings.zh-Hans.xlf` | 5 | 0 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `7c9a0e3` Validate playwrightCliVersion shape with strict SemVer

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 .NET API の追加・削除はありません。
`PlaywrightCliInstaller` に version 文字列の妥当性検証が入り、SemVer として解釈できない値はインストール処理へ進む前にエラーになります。リソースファイルにはそのエラー表示が追加されています。

**既存利用者への影響**

`playwrightCliVersion` を設定している場合は、値が `1.2.3` のような厳密な SemVer 形式になっているか確認してください。
未設定または正しい SemVer を使っている環境では移行作業はありません。

### [#18211](https://github.com/microsoft/aspire/pull/18211) — Don't create nuget.config for stable channel in aspire new/update

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +500 / -40
- マージ日時 (UTC): `2026-06-16 01:18:32`

**変更概要**

`aspire new` / `aspire update` が stable channel で不要な `nuget.config` を作成しないようにした修正です。
`PackageChannel`、`PackagingService`、`ProjectUpdater` と、新しい `TemplateNuGetConfigService` 周辺が更新され、channel ごとに NuGet config が必要かどうかを明確に判断します。
stable 利用者にとっては生成物が減り、preview / custom feed が必要な場合だけ NuGet config を扱う方向になります。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Packaging/PackageChannel.cs` | 11 | 4 |
| `src/Aspire.Cli/Packaging/PackagingService.cs` | 1 | 1 |
| `src/Aspire.Cli/Projects/ProjectUpdater.cs` | 33 | 17 |
| `src/Aspire.Cli/Templating/TemplateNuGetConfigService.cs` | 26 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/CentralPackageManagementTests.cs` | 7 | 18 |
| `tests/Aspire.Cli.EndToEnd.Tests/NewChannelNuGetConfigTests.cs` | 77 | 0 |
| `tests/Aspire.Cli.Tests/Projects/ProjectUpdaterTests.cs` | 156 | 0 |
| `tests/Aspire.Cli.Tests/Templating/TemplateNuGetConfigServiceTests.cs` | 189 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `1948f02` Don't create nuget.config for stable channel in aspire new/update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI 内部の packaging / templating 境界が整理され、`TemplateNuGetConfigService` が NuGet config 作成要否の判断を担う形になっています。
公開アプリ API の破壊的変更ではありませんが、stable channel の生成結果から `nuget.config` が消えるという CLI 動作の変更があります。

**既存利用者への影響**

stable channel の通常利用では、不要な `nuget.config` が作られなくなるため移行作業は不要です。
生成直後の `nuget.config` の存在を CI やテンプレート検証で前提にしていた場合は、そのチェックを channel 条件付きに見直してください。

### [#18190](https://github.com/microsoft/aspire/pull/18190) — ci: cross-compile osx-x64 CLI archive on Apple Silicon runner

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +10 / -1
- マージ日時 (UTC): `2026-06-15 23:35:47`

**変更概要**

Apple Silicon runner 上で osx-x64 CLI archive を cross-compile できるよう、CI workflow を調整した engineering systems の変更です。
`.github/workflows/tests.yml` のみが変更されており、成果物作成の環境差による失敗を避ける狙いです。
利用者向け機能ではなく、Aspire CLI のリリース・検証パイプラインの安定化が影響範囲です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/tests.yml` | 10 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `7da105f` ci: cross-compile osx-x64 CLI archive on Apple Silicon runner

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。
CI のビルドターゲットと runner 条件を調整し、Apple Silicon 環境から osx-x64 向け archive を生成できるようにしています。

**既存利用者への影響**

Aspire 利用者の移行作業はありません。
リリース成果物の生成経路に関する変更のため、影響は主にメンテナーと CI / release pipeline です。

### [#18126](https://github.com/microsoft/aspire/pull/18126) — test(hosting): fix flaky "Docker is not running" failures in pipeline tests

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +96 / -254
- マージ日時 (UTC): `2026-06-16 00:02:28`

**変更概要**

Hosting pipeline tests で Docker が動いていないときのフレークを減らすため、テストセットアップを整理した変更です。
`DistributedApplicationPipelineTests.cs` の重複した builder setup を共通化し、Docker 非起動時の失敗条件を安定して扱えるようにしています。
製品コードではなく、Aspire Hosting のパイプラインテスト信頼性を高める修正です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Hosting.Tests/Pipelines/DistributedApplicationPipelineTests.cs` | 96 | 254 |

</details>

<details><summary>コミット (4 件)</summary>

- `9298a4e` test(hosting): fix flaky "Docker is not running" in pipeline tests
- `d79e939` test(hosting): centralize pipeline test builder setup
- `bab512c` Merge remote-tracking branch 'origin/main' into ankj/fix-pipeline-tes…
- `8514a9f` test(hosting): move CreatePipelineTestBuilder helper to end of file

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。
テスト用の pipeline builder 作成ロジックが整理され、Docker availability に依存するケースのセットアップ・期待値が安定化されています。

**既存利用者への影響**

利用者側の移行作業はありません。
Aspire 本体の CI が安定することで、Docker 未起動環境に起因する偽陽性の失敗が減ることが期待されます。

### [#17977](https://github.com/microsoft/aspire/pull/17977) — [Automated] Update ATS API Surface Area

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `NO-MERGE`
- 変更行数: +75 / -0
- マージ日時 (UTC): `2026-06-16 00:21:32`

**変更概要**

ATS API surface area の自動更新 PR です。
`Aspire.Hosting.Azure`、`Aspire.Hosting.Redis`、`Aspire.Hosting` の `.ats.txt` に公開 API の表面積が追記され、現在の API 契約との差分を baseline に反映しています。
実装変更ではなく、API 検証用の記録更新が主な目的です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure/api/Aspire.Hosting.Azure.ats.txt` | 9 | 0 |
| `src/Aspire.Hosting.Redis/api/Aspire.Hosting.Redis.ats.txt` | 7 | 0 |
| `src/Aspire.Hosting/api/Aspire.Hosting.ats.txt` | 59 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `7badfdf` [create-pull-request] automated change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ATS ファイルの追加行は、Hosting / Azure / Redis 関連パッケージで公開 API surface が増えたことを示します。
この PR 自体は baseline 更新であり、破壊的変更は示されていません。具体的な API 名の確認は該当 `.ats.txt` の差分参照が必要です。

**既存利用者への影響**

利用者の直接移行は不要です。
ただし nightly / preview API を追っている場合は、Hosting / Azure / Redis の公開 API 追加が自分の利用シナリオに関係するか確認するとよいです。

### [#17928](https://github.com/microsoft/aspire/pull/17928) — Fix Manage Data selection accessibility semantics

- 作者: adamint / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +724 / -46
- マージ日時 (UTC): `2026-06-15 18:59:37`

**変更概要**

Dashboard の Manage Data ダイアログで、選択 UI のアクセシビリティ semantics を改善した変更です。
新しい `IconCheckbox` control を導入し、選択状態を checkbox role / accessible name / keyboard handling として扱えるようにしています。
関連するリソース文字列とローカライズ、テストも追加されており、スクリーンリーダーやキーボード操作での理解しやすさが改善されます。

<details><summary>変更ファイル (22 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/IconCheckbox.razor` | 17 | 0 |
| `src/Aspire.Dashboard/Components/Controls/IconCheckbox.razor.cs` | 164 | 0 |
| `src/Aspire.Dashboard/Components/Controls/IconCheckbox.razor.css` | 29 | 0 |
| `src/Aspire.Dashboard/Components/Controls/IconCheckbox.razor.js` | 42 | 0 |
| `src/Aspire.Dashboard/Components/Dialogs/ManageDataDialog.razor` | 22 | 18 |
| `src/Aspire.Dashboard/Components/Dialogs/ManageDataDialog.razor.cs` | 38 | 26 |
| `src/Aspire.Dashboard/Resources/Dialogs.Designer.cs` | 20 | 2 |
| `src/Aspire.Dashboard/Resources/Dialogs.resx` | 7 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.cs.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.de.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.es.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.fr.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.it.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ja.xlf` | 10 | 0 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ko.xlf` | 10 | 0 |
| _... 他 7 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `d01ce40` Add Manage Data selection accessible names
- `937fcb2` Add Manage Data checkbox role state
- `6ba231b` Expose Manage Data selections as checkboxes
- `7608ef7` Clarify manage data keyboard handling comment
- `0a6dfde` Stabilize manage data selection accessibility test
- `25d4ab1` Simplify manage data selection keyboard handling
- `f3a3b59` Add Manage Data keyboard script coverage
- `d953b32` Encapsulate Manage Data icon checkbox as IconCheckbox control
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開サーバー API の変更はありません。
Dashboard 内部に `IconCheckbox` コンポーネントと関連 JS / CSS が追加され、Manage Data の選択肢がアクセシブルな checkbox として状態を公開するようになっています。

**既存利用者への影響**

Aspire アプリ利用者の移行作業はありません。
Dashboard を拡張・テストしている場合は、Manage Data ダイアログの role / accessible name の期待値が変わるため UI テストを更新する可能性があります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #17929 | Improve dashboard dialog and control accessibility states | adamint | <https://github.com/microsoft/aspire/pull/17929> |
| #17512 | Fix non-interactive self-update channel selection | alirezafzali | <https://github.com/microsoft/aspire/pull/17512> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18227 | test: throwaway PR to validate selective-CI comment (do not merge) | open | radical | <https://github.com/microsoft/aspire/pull/18227> |
| PR | #18224 | Replace StreamJsonRpc with CurlyRpc across backchannel, CLI, RemoteHost, and TerminalHost | open | sebastienros | <https://github.com/microsoft/aspire/pull/18224> |
| PR | #18222 | Preserve raw VS Code extension output | open | adamint | <https://github.com/microsoft/aspire/pull/18222> |
| PR | #18221 | [release/13.4] Make npm package README TypeScript-only and document standalone dashboard | open | adamint | <https://github.com/microsoft/aspire/pull/18221> |
| PR | #18220 | Update npm package README: TypeScript-only examples and standalone dashboard | open | adamint | <https://github.com/microsoft/aspire/pull/18220> |
| PR | #18219 | Require exactly one npm ESRP owner in release pipeline (release/13.4) | open | adamint | <https://github.com/microsoft/aspire/pull/18219> |
| PR | #18218 | Require exactly one npm ESRP owner in release pipeline | open | adamint | <https://github.com/microsoft/aspire/pull/18218> |
| PR | #18217 | Harden VS Code extension E2E tests | open | adamint | <https://github.com/microsoft/aspire/pull/18217> |
| PR | #18216 | Include concatenated certificate+key PEM file in TLS contexts | open | aradalvand | <https://github.com/microsoft/aspire/pull/18216> |
| PR | #18213 | Fix SDK version check failing after private/custom dotnet SDK installation | open | CloudColonel | <https://github.com/microsoft/aspire/pull/18213> |
| PR | #18209 | Replace custom RemoveSpectreFormatting with Spectre.Console's Markup.Remove | open | JamesNK | <https://github.com/microsoft/aspire/pull/18209> |
| PR | #18208 | Fix stale version-skew warning during aspire update | open | JamesNK | <https://github.com/microsoft/aspire/pull/18208> |
| PR | #18207 | Update PackageValidationBaselineVersion to 13.4.4 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18207> |
| PR | #18205 | [release/13.4] Validate playwrightCliVersion shape with strict SemVer | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18205> |
| PR | #18204 | [release/13.4] Bump StreamJsonRpc to 2.25.28 to clear MessagePack NU1903 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18204> |
| PR | #17973 | perf(ci): reduce PR CI wall-clock — skip Win Templates + decouple E2E image build | closed | radical | <https://github.com/microsoft/aspire/pull/17973> |
| Issue | #18226 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18226> |
| Issue | #18223 | Workflow health (7d): CI main, Outerloop, and Deployment E2E are red | open | radical | <https://github.com/microsoft/aspire/issues/18223> |
| Issue | #18215 | Add a concatenated certificate+key PEM file to TLS paths | open | aradalvand | <https://github.com/microsoft/aspire/issues/18215> |
| Issue | #18214 | Azure.Core 1.57.0 => 1.59.0 stops Aspire app talking to Azure resources | open | mip1983 | <https://github.com/microsoft/aspire/issues/18214> |
| Issue | #18212 | Add API to pass options objects to resources as environment variables | open | dhypa | <https://github.com/microsoft/aspire/issues/18212> |
| Issue | #18210 | WithApiVersionCheck is backwards | open | mattiasnordqvist | <https://github.com/microsoft/aspire/issues/18210> |
| Issue | #18206 | [Deployment E2E] Nightly test failure - 2026-06-15 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18206> |
| Issue | #18124 | `aspire new` on stable branch is creating a `nuget.config` file | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/18124> |
| Issue | #18000 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18000> |
| Issue | #17987 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17987> |
| Issue | #17593 | [AspireE2E] When using azd to publish an Aspire empty project that has added some code and packages, an error occurred: empty dotnet configuration output. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/17593> |
| Issue | #17498 | "Select format" dropdown list items are not accessible using keyboard:A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17498> |
| Issue | #17496 | Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds:A11y_Aspire Dashboard_Setting_Console log_AI4W | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17496> |
| Issue | #17468 | Incorrect role is exposed as “button” for “Console logs” checkbox:A11y_Aspire Dashboard_Settting_Manage logs_Devtools | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17468> |
| Issue | #17467 | Accessible name is missing for “Console logs” checkbox:A11y_Aspire Dashboard_Settting_Manage logs_Devtools | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17467> |
| Issue | #15253 | `aspire update --self --non-interactive` fails without `--channel` | closed | ElanHasson | <https://github.com/microsoft/aspire/issues/15253> |
| Issue | #15234 | Add an event that is fired after all dependencies are ready | closed | AndriySvyryd | <https://github.com/microsoft/aspire/issues/15234> |
| Issue | #12914 | `--non-interactive` doesn't work on cli with `aspire update` | closed | aaronpowell | <https://github.com/microsoft/aspire/issues/12914> |
| Issue | #12241 | Creation of DCP Service object times out (was: Allow configuration of timeouts for KubernetesService) | closed | almostchristian | <https://github.com/microsoft/aspire/issues/12241> |
| Issue | #10299 | Screen reader is not announcing the checked/unchecked status for helpful/unhelpful buttons :A11y_Aspire Dashboard_Resources_Screenreader | closed | AnKushSingh05 | <https://github.com/microsoft/aspire/issues/10299> |
| Issue | #10119 | Keyboard focus does not return to the parent control after closing the Help, Github copilot and settings dialog: A11y_Aspire Dashboard_ResourcesFocusOrder. | closed | AnKushSingh05 | <https://github.com/microsoft/aspire/issues/10119> |
