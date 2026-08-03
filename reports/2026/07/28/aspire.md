# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 5 |
| 新規 Issue              | 8 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | JamesNK, mitchdenny, adamint |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18901](https://github.com/microsoft/aspire/issues/18901) — [CI Failure] SQL Server container exits with CoInitializeSecurity failure (HRESULT 0x800706b5) （Issue / open / github-actions[bot]）
  CI で SQL Server コンテナーを使う開発者は、`CoInitializeSecurity` 失敗の再現条件とホスト環境を確認し、修正が入るまで該当ジョブの失敗を追跡してください。
- **⚠ セキュリティ** [#18858](https://github.com/microsoft/aspire/pull/18858) — [auto-sec] Consolidate Aspire JavaScript template dependency security remediations （PR / open / IEvangelist）
  Aspire の JavaScript テンプレートを配布する担当者は、統合された npm セキュリティ修正を取り込み、生成物とロックファイルを再確認してください。
- **⚠ セキュリティ** [#17951](https://github.com/microsoft/aspire/pull/17951) — [security] Bump vulnerable npm dependencies flagged by Dependabot (10 alerts) （PR / merged / IEvangelist）
  Aspire の npm 依存関係を利用する開発者は、Dependabot が指摘した 10 件の脆弱性修正を含む更新を適用し、テンプレートのビルドを検証してください。

## このリポジトリの要点

Dashboard ではメトリック入力の不整合拒否、AI エージェントの表示文言、ターミナル表示の既定値、フォーカス復元が改善されました。  
HTML injection 修正と npm 依存関係のセキュリティ対応も進んでおり、CI では SQL Server / Cosmos DB エミュレーター障害を継続確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18865](https://github.com/microsoft/aspire/pull/18865) — Reject histogram bucket count length changes

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +82 / -5
- マージ日時 (UTC): `2026-07-27 04:28:02`

**変更概要**

メトリックの histogram bucket 数が過去の値と異なる場合に、状態を無効として拒否するよう変更しました。  
値を読み取る前に形状を検証し、bucket 数の変化を対象にしたテストを追加しています。  
Dashboard のテレメトリ取り込みで不整合な histogram を安全に扱うための修正です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Otlp/Model/MetricValues/DimensionScope.cs` | 12 | 5 |
| `tests/Aspire.Dashboard.Tests/TelemetryRepositoryTests/MetricsTests.cs` | 70 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `e51f3e9` Reject histogram bucket count length changes
- `3c066f7` Validate histogram shape before reading prior value
- `9ecea45` Potential fix for pull request finding
- `5a76c15` Fix indentation in histogram bucket count test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DimensionScope` の内部検証ロジックを変更したもので、公開 API のシグネチャ変更や新規抽象はありません。不整合な histogram は受け入れられなくなるため、入力データ品質への動作上の制約が追加されています。

**既存利用者への影響**

通常の OpenTelemetry 利用者に移行は不要です。histogram の bucket 構成を動的に変更する exporter は、拒否時の動作を確認してください。

### [#18868](https://github.com/microsoft/aspire/pull/18868) — Improve AI agent observability text

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +83 / -83
- マージ日時 (UTC): `2026-07-27 03:33:59`

**変更概要**

Dashboard に表示する AI agent observability の説明文を、利用者が計測対象と意味を理解しやすい表現へ更新しました。  
リソース文字列と各ローカライズファイルを同期し、翻訳表示も同じ内容に揃えています。  
動作やテレメトリ形式ではなく、UI の説明品質を改善する変更です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Resources/Dialogs.Designer.cs` | 2 | 2 |
| `src/Aspire.Dashboard/Resources/Dialogs.resx` | 3 | 3 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.cs.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.de.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.es.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.fr.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.it.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ja.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ko.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.pl.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.pt-BR.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.ru.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.tr.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.zh-Hans.xlf` | 6 | 6 |
| `src/Aspire.Dashboard/Resources/xlf/Dialogs.zh-Hant.xlf` | 6 | 6 |

</details>

<details><summary>コミット (3 件)</summary>

- `fbc89a3` Update AI agent observability text
- `51c86b4` Clarify AI agent observability copy
- `d27c7b6` Retrigger CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

リソース文字列と生成コード・翻訳ファイルの更新のみで、API シグネチャ、データ形式、公開抽象の変更はありません。

**既存利用者への影響**

移行は不要です。Dashboard の AI observability 表示が更新後に期待する言語・文脈で表示されることを確認してください。

### [#18867](https://github.com/microsoft/aspire/pull/18867) — Default to Terminal view for live terminal resources in dashboard console logs

- 作者: mitchdenny / 状態: MERGED
- ラベル: `area-dashboard` `area-terminal`
- 変更行数: +348 / -23
- マージ日時 (UTC): `2026-07-27 02:50:45`

**変更概要**

ライブターミナルリソースの console logs を開いたとき、Terminal ビューを既定で選択するよう Dashboard の表示状態を改善しました。  
ビュー選択のチェック状態とアクセシビリティ属性を追加し、リソース切り替え時の既定値リセットも整理しています。  
Dashboard で実行中リソースのログを見る利用者の操作回数が減ります。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/AspireMenu.razor` | 1 | 1 |
| `src/Aspire.Dashboard/Components/Controls/TerminalView.razor.js` | 4 | 2 |
| `src/Aspire.Dashboard/Components/Pages/ConsoleLogs.razor.cs` | 67 | 12 |
| `src/Aspire.Dashboard/Model/MenuButtonItem.cs` | 12 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Controls/AspireMenuTests.cs` | 46 | 0 |
| `tests/Aspire.Dashboard.Components.Tests/Pages/ConsoleLogsTerminalTests.cs` | 218 | 8 |

</details>

<details><summary>コミット (10 件)</summary>

- `92c0dcd` Default to Terminal view for live terminal resources in dashboard con…
- `ebf9974` Gate default-view reset to resource-selection changes
- `4c8400d` Update _activeView comment to describe Running→Terminal default
- `57fe2c4` Show checkmark next to active console/terminal view in picker
- `7b409e6` Expose console view selection as an accessible checked state
- `22226d8` Assert view-picker accessibility in the rendered DOM
- `0387a48` Add regression test for terminal view selection-time latch
- `813147d` Align terminal pane top padding with console logs
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`MenuButtonItem` と Dashboard のコンポーネント内部状態を拡張し、選択ビューを checked 状態として公開しています。公開アプリ API の変更や破壊的変更はありません。

**既存利用者への影響**

移行は不要です。Dashboard の既定ビューが Terminal になることと、Console/Terminal の選択状態がキーボード操作でも確認できることを確認してください。

### [#18866](https://github.com/microsoft/aspire/pull/18866) — Fix HTML injection in code block titles

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +22 / -1
- マージ日時 (UTC): `2026-07-27 03:04:45`

**変更概要**

Markdown のコードブロックタイトルを HTML として解釈させないようにし、タイトル経由の HTML injection を防止しました。  
コードブロックのタイトルを安全にレンダリングする処理と回帰テストを追加しています。  
Dashboard に表示されるユーザー由来の Markdown を扱う環境が対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Model/Markdown/HighlightedCodeBlockRenderer.cs` | 1 | 1 |
| `tests/Aspire.Dashboard.Tests/Markdown/MarkdownProcessorTests.cs` | 21 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `10d0a49` Fix HTML injection in code block titles

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`HighlightedCodeBlockRenderer` の出力エスケープを変更した内部修正で、API シグネチャの変更はありません。タイトル内の HTML は以前のように実行・解釈されず、無害化されます。

**既存利用者への影響**

移行は不要です。Markdown タイトルに HTML を埋め込んでいた場合は、表示が文字列として扱われることを確認してください。

### [#18862](https://github.com/microsoft/aspire/pull/18862) — Restore focus after selecting dashboard menu items

- 作者: adamint / 状態: MERGED
- ラベル: `area-dashboard`
- 変更行数: +70 / -18
- マージ日時 (UTC): `2026-07-27 02:59:21`

**変更概要**

Dashboard のメニュー項目を選択した後に、起点となったメニューボタンへキーボードフォーカスを戻すよう修正しました。  
Playwright にフォーカス復元の回帰テストを追加し、メニューのアクセシビリティ動作を検証しています。  
Cosmos DB エミュレーターの期限切れイメージによりブロックされたテストは無効化されています。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard/Components/Controls/AspireMenu.razor.cs` | 7 | 4 |
| `src/Aspire.Dashboard/Components/Controls/AspireMenuButton.razor.cs` | 2 | 3 |
| `tests/Aspire.Dashboard.Components.Tests/Controls/AspireMenuTests.cs` | 5 | 11 |
| `tests/Aspire.Dashboard.Tests/Integration/Playwright/AspireMenuButtonFocusTests.cs` | 55 | 0 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBEmulatorFunctionalTests.cs` | 1 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `ff05874` Restore focus after dashboard menu selection
- `5ffa5f7` Add Playwright regression test for menu button focus restoration
- `db43744` Disable Cosmos emulator test blocked by expired image

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Dashboard メニューの内部フォーカス制御とテストを更新したもので、公開 API の変更はありません。テスト環境の Cosmos エミュレーター依存だけが調整されています。

**既存利用者への影響**

移行は不要です。キーボード利用者がメニュー選択後も操作位置を失わないことを確認してください。Cosmos エミュレーターのテスト再有効化条件は別途追跡が必要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18906 | Add Rust hosting package and VS Code debugger wiring | open | afscrome | <https://github.com/microsoft/aspire/pull/18906> |
| PR | #18896 | Show unresolved parameters in resource state | open | JamesNK | <https://github.com/microsoft/aspire/pull/18896> |
| PR | #18641 | Fix replica parent resource state | closed | adamint | <https://github.com/microsoft/aspire/pull/18641> |
| PR | #18619 | Fix single-file AppHost describe targeting | closed | adamint | <https://github.com/microsoft/aspire/pull/18619> |
| PR | #18651 | Add keyboard-accessible resource control help | closed | adamint | <https://github.com/microsoft/aspire/pull/18651> |
| PR | #18903 | Open PR cards in the built-in PR viewer (Aspire Team App canvas) | closed | IEvangelist | <https://github.com/microsoft/aspire/pull/18903> |
| PR | #18900 | Disable Cosmos DB emulator test blocked by expired image | closed | Copilot | <https://github.com/microsoft/aspire/pull/18900> |
| Issue | #18907 | Remove compute-environment dependency on internal IProjectLaunchDefaultsResource.DefaultHttpsEndpoint | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18907> |
| Issue | #18902 | Dashboard does not respect sub‑path when hosted behind reverse proxy | closed | famda | <https://github.com/microsoft/aspire/issues/18902> |
| Issue | #18905 | Upgrade to TS7 (tsgo) | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/18905> |
| Issue | #18904 | Resources with multiple args | open | afscrome | <https://github.com/microsoft/aspire/issues/18904> |
| Issue | #18901 | [CI Failure] SQL Server container exits with CoInitializeSecurity failure (HRESULT 0x800706b5) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18901> |
| Issue | #18899 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18899> |
| Issue | #18897 | [CI Failure] Flaky: AzureCosmosDBEmulatorFunctionalTests fails because CosmosDB emulator evaluation period has expired | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18897> |
| Issue | #18898 | [Failing test]: AzureCosmosDBEmulatorFunctionalTests.VerifyWaitForOnCosmosDBEmulatorBlocksDependentResources — Cosmos DB emulator image evaluation period has expired | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18898> |
| Issue | #17656 | Keyboard focus moves out of page after selecting menu item from View options:A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17656> |
