# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 10 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 11 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | danegsta, mehara-rothila |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  <!-- 影響: Aspire ダッシュボード等で使う npm 依存関係のセキュリティアラート対応の PR。フロントエンド資材をビルドしているメンテナーはマージ後に依存バージョンを取り込む必要がある（現時点はオープン中）。 -->

## このリポジトリの要点

対象期間はマージ済み PR 2 件と小粒な内容が中心で、破壊的変更はありませんでした。Aspire CLI 証明書クリーンアップ処理での `certutil` 欠如時のハンドリング改善（#18580）と、AppHost バックチャネル接続エラーメッセージの改善（#18051）がマージ済みです。オープン中には npm 依存関係のセキュリティ更新（#18518）があり、マージ状況を注視する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18580](https://github.com/microsoft/aspire/pull/18580) — Handle missing certutil during cert cleanup

- 作者: danegsta / 状態: MERGED
- ラベル: —
- 変更行数: +472 / -57
- マージ日時 (UTC): `2026-07-01 19:26:44`

**変更概要**

Aspire CLI が証明書のクリーンアップ処理中に呼び出す `certutil`（Windows の証明書ストア操作コマンド）が見つからない環境でエラーになる問題を修正する PR です。`certutil` の実行パス検出ロジックを共通ヘルパーに切り出して再利用性を高め、Linux 環境では `certutil` の環境変数探索自体を行わないようにするなど、プラットフォームごとの挙動を整理しています。あわせて `doctor` コマンドのメッセージ文言が多言語リソース (xlf) に反映されています。

<details><summary>変更ファイル (22 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Certificates/CertificateGeneration/UnixCertificateManager.cs` | 31 | 56 |
| `src/Aspire.Cli/Certificates/CertificateHelpers.cs` | 5 | 0 |
| `src/Aspire.Cli/Resources/DoctorCommandStrings.Designer.cs` | 27 | 0 |
| `src/Aspire.Cli/Resources/DoctorCommandStrings.resx` | 9 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.cs.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.de.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.es.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.fr.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.it.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.ja.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.ko.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.pl.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.pt-BR.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.ru.xlf` | 15 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.tr.xlf` | 15 | 0 |
| _... 他 7 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `68a0ac0` Handle missing certutil during cert cleanup
- `20fa730` Share command lookup helper
- `e2198b4` Reuse path lookup for certutil detection
- `4b8581d` Clarify executable path lookup docs
- `1322ab7` Avoid certutil env lookup off Linux

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`UnixCertificateManager` の証明書クリーンアップ処理と `CertificateHelpers` にコマンド探索の共通ヘルパーが追加されました。公開 API の破壊的変更はなく、CLI 内部の実行パス検出ロジックの堅牢化が中心です。

**既存利用者への影響**

Aspire CLI を利用する開発者への影響は軽微です。`certutil` が存在しない/PATH に無い環境（例: 一部の Linux 環境）で `aspire` の証明書クリーンアップコマンドがクラッシュせず正しくスキップされるようになる、という不具合修正としてそのまま享受できます。

### [#18051](https://github.com/microsoft/aspire/pull/18051) — Improve AppHost backchannel connection error message

- 作者: mehara-rothila / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +62 / -20
- マージ日時 (UTC): `2026-07-01 04:46:15`

**変更概要**

Aspire CLI の AppHost バックチャネル接続に失敗した際のエラーメッセージを改善する PR です。従来は接続失敗の原因が分かりにくいメッセージでしたが、より具体的な状況を伝える文言に変更されています。`InteractionServiceStrings` のリソース文字列が更新され、多言語 (xlf) リソースにも反映されています。

<details><summary>変更ファイル (17 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/DotNet/DotNetCliRunner.cs` | 2 | 2 |
| `src/Aspire.Cli/Projects/GuestAppHostProject.cs` | 2 | 2 |
| `src/Aspire.Cli/Resources/InteractionServiceStrings.resx` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.cs.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.de.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.es.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.fr.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.it.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.ja.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.ko.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.pl.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.pt-BR.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.ru.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.tr.xlf` | 1 | 1 |
| `src/Aspire.Cli/Resources/xlf/InteractionServiceStrings.zh-Hans.xlf` | 1 | 1 |
| _... 他 2 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `883b9b1` Improve AppHost backchannel connection error message
- `ac30e0d` Address review feedback
- `76120c9` Merge main and re-apply the AppHost connection error-message fix
- `3f6fffb` Update backchannel exit-message tests for new wording
- `0be4fbc` Use DefaultTimeout and Assert.Equal in backchannel tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DotNetCliRunner` / `GuestAppHostProject` のエラーメッセージ生成箇所とリソース文字列 (`InteractionServiceStrings`) が更新されました。破壊的変更はなく、エラーメッセージ文言の変更にとどまります（テストコードもメッセージ文言の変更に合わせて更新済み）。

**既存利用者への影響**

エラーメッセージのテキストに依存した文字列比較（例: 特定のエラー文言をパースして判定する仕組み）を組んでいる場合のみ確認が必要です。通常の CLI 利用者への影響はなく、単に分かりやすいエラーメッセージが表示されるようになります。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18604 | Add Godot playground | open | adamint | <https://github.com/microsoft/aspire/pull/18604> |
| PR | #18602 | Add VS Code attach debugger resource action | open | adamint | <https://github.com/microsoft/aspire/pull/18602> |
| PR | #18600 | Fix progress command cancellation handling | open | adamint | <https://github.com/microsoft/aspire/pull/18600> |
| PR | #18598 | Add Aspire Team App Copilot canvas extension | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18598> |
| PR | #18597 | Fix guest AppHost unknown exit code message | open | adamint | <https://github.com/microsoft/aspire/pull/18597> |
| PR | #18595 | Update VS Code extension README | open | adamint | <https://github.com/microsoft/aspire/pull/18595> |
| PR | #18594 | Fix stale VS Code global AppHost after debug stop | open | adamint | <https://github.com/microsoft/aspire/pull/18594> |
| PR | #18591 | Fix MAUI launch queue handoff and OTLP tunnels | open | jfversluis | <https://github.com/microsoft/aspire/pull/18591> |
| PR | #18585 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18585> |
| PR | #18583 | Fix publish-data job in analyze-ci-failure workflow | open | JamesNK | <https://github.com/microsoft/aspire/pull/18583> |
| PR | #18603 | Fix detached aspire start backchannel hash mismatch on symlinked paths (#18566 follow-up) | closed | karolz-ms | <https://github.com/microsoft/aspire/pull/18603> |
| PR | #18593 | 🔍 [DO NOT MERGE] Investigation: issue 18524 debug-dashboard E2E | closed | adamint | <https://github.com/microsoft/aspire/pull/18593> |
| PR | #18570 | Fix NuGet prefetch process leaks | closed | danegsta | <https://github.com/microsoft/aspire/pull/18570> |
| Issue | #18601 | Please consider the support of file masking and multiple file selection of the file chooser i.e. | open | mcumming | <https://github.com/microsoft/aspire/issues/18601> |
| Issue | #18599 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18599> |
| Issue | #18596 | Update Foundry Hosted Agent Protocol to 2.0.0 | open | tommasodotNET | <https://github.com/microsoft/aspire/issues/18596> |
| Issue | #18592 | [CI Failure] Flaky: MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync_SkipsReplayStateAndReleasesOnStableState times out intermittently | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18592> |
| Issue | #18590 | [CI Failure] Flaky: MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync_SkipsReplayStateAndReleasesOnStableState times out intermittently | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18590> |
| Issue | #18589 | [CI Failure] Flaky: MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync_SkipsReplayStateAndReleasesOnStableState | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18589> |
| Issue | #18588 | [CI Failure] Flaky: MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync_SkipsReplayStateAndReleasesOnStableState times out or fails intermittently | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18588> |
| Issue | #18587 | [CI Failure] Flaky: MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync_SkipsReplayStateAndReleasesOnStableState intermittently fails | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18587> |
| Issue | #18586 | [CI Failure] Flaky: MauiBuildQueueTests.ReleaseSemaphoreAfterLaunchAsync_SkipsReplayStateAndReleasesOnStableState times out or fails intermittently | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18586> |
| Issue | #18584 | [aw] Analyze CI Failure has stale lock file | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18584> |
| Issue | #18582 | [Deployment E2E] Nightly test failure - 2026-07-01 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18582> |
| Issue | #18520 | "TLS certificate file load failed: unable to determine CA certificate" error when starting Aspire app on Arch Linux | closed | karolz-ms | <https://github.com/microsoft/aspire/issues/18520> |
| Issue | #17651 | Pressing Enter on controls triggers multiple actions (control activation + row detail expansion):A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17651> |
| Issue | #17277 | CLI error message when AppHost exits before backchannel connection is vague and missing exit code | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/17277> |
