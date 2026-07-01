# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 4 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | aspire-repo-bot[bot], JamesNK, radical, dotnet-maestro[bot], jfversluis |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#17622](https://github.com/microsoft/aspire/issues/17622) — [13.4] DistributedApplicationTestingBuilder using dynamic dashboard port no longer passes. （Issue / closed / afscrome）
  `DistributedApplicationTestingBuilder` で動的ダッシュボードポートを使うテストを書いているチームは、13.4 で発生していたテスト失敗が解消されたか確認すること（Issue はクローズ済み）。
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / open / IEvangelist）
  リポジトリの JS/TS 依存関係にセキュリティアラートが出ていた対応 PR で、マージ後は dashboard 等のフロントエンド依存関係を最新化すること。マージ状況を継続確認。

## このリポジトリの要点

今回は CI/デプロイまわりの改善が中心で、ランタイム API への破壊的変更はありませんでした。ネイティブ CLI ビルドによる AppHost デプロイ E2E テストの安定化（#18569）、CI 失敗解析ワークフローの改修（#18567）、MAUI OTLP dev tunnel のエンドポイント解決修正（#18053）が主な変更です。JS/TS のセキュリティアラート対応（#18533）は継続ウォッチが必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18572](https://github.com/microsoft/aspire/pull/18572) — [Automated] Update Microsoft Foundry Models

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: `area-integrations` `area-engineering-systems`
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-06-30 22:04:56`

**変更概要**

**変更概要**

Microsoft Foundry のモデル定義を自動更新する定例 PR です。`FoundryModel.Generated.cs` の生成コードのみが更新されており、Foundry Hosting integration が追随する最新モデル一覧を反映しています。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Foundry/FoundryModel.Generated.cs` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `9095d6d` [Automated] Update Microsoft Foundry Models

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

自動生成コードの差分更新のみで、公開 API のシグネチャ変更はありません。

**既存利用者への影響**

自動更新のため対応不要です。Foundry の最新モデルを使う場合はパッケージ更新のみで反映されます。 — fix(deployment-e2e): build real native CLI so AppHost deploys resolve the CLI bundle

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +144 / -36
- マージ日時 (UTC): `2026-06-30 22:06:44`

**変更概要**

**変更概要**

デプロイ E2E テストで、AppHost デプロイが CLI バンドルを正しく解決できるよう、テスト実行前にネイティブ CLI を実ビルドするように修正した PR です。Azure リージョンの一時的なキャパシティエラーによるテスト失敗をスキップ扱いにするなど、CI の安定性向上も含まれています。
| `tests/Aspire.Deployment.EndToEnd.Tests/AcaCompactNamingUpgradeDeploymentTests.cs` | 8 | 3 |
| `tests/Aspire.Deployment.EndToEnd.Tests/Helpers/DeploymentReporter.cs` | 14 | 0 |
| `tests/Shared/Hex1bAutomatorTestHelpers.cs` | 43 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `001443a` fix(deployment-e2e): build real native CLI so AppHost deploys resolve…
- `364e620` test(deployment-e2e): skip on transient Azure regional capacity errors
- `9f908e6` ci(deployment-e2e): treat all-skipped deploy run as success (ignore M…
- `b89d591` test(deployment-e2e): don't report a capacity skip as a deployment fa…
- `8977975` Merge remote-tracking branch 'origin/main' into ankj/deploy-e2e-nativ…
- `0cb9ac0` chore(review): cycle-1 applied fixes (restore-chain robustness)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

CI ワークフロー（`deployment-tests.yml`）とテストヘルパーの修正が中心で、公開 API への変更はありません。デプロイ E2E テストがネイティブ CLI を実際にビルドしてから実行するようになった点が主な挙動変化です。

**既存利用者への影響**

テストインフラのみの変更のため、利用者側の対応は不要です。 — Fix analyze-ci-failure workflow: bugs, credit optimization, and simplification

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +327 / -395
- マージ日時 (UTC): `2026-06-30 02:19:14`

**変更概要**

**変更概要**

CI 失敗を自動解析するワークフロー（`analyze-ci-failure`）の不具合修正・コスト最適化・簡素化を行う PR です。TRX パース処理の修正、自動トリガーの無効化、利用する AI モデルの切り替え（claude-sonnet-4.6 ⇔ gpt-5.3-codex 等）を試行錯誤しながら実施しています。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/analyze-ci-failure.lock.yml` | 168 | 227 |
| `.github/workflows/analyze-ci-failure.md` | 159 | 168 |

</details>

<details><summary>コミット (12 件)</summary>

- `25a9ed9` Fix TRX parsing, disable auto-trigger, and fix safe-output job inputs
- `d2fdee4` Use actions/cache to skip data collection when already collected
- `5a18586` Remove actions/cache and simplify collect-data flow
- `0ab793e` Fix upload-artifact hidden dir, pagination, and success check
- `4a39cfc` Switch agent model to mai-code
- `bd2aa47` Remove custom model override, use default (claude-sonnet-4.6)
- `a268364` Use gpt-5.3-codex model
- `2ba8621` Revert to default model (claude-sonnet-4.6)
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`.github/workflows/analyze-ci-failure.*` の内部ロジックのみの変更で、公開 API への影響はありません。CI 運用担当者向けの自動化ワークフローが対象です。

**既存利用者への影響**

リポジトリの CI 運用担当者以外への影響はありません。 — [main] Update dependencies from dotnet/arcade

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +347 / -149
- マージ日時 (UTC): `2026-06-30 06:46:53`

**変更概要**

**変更概要**

`dotnet/arcade` からの定例的な依存関係更新（Maestro による自動 PR）です。ビルド共通スクリプト（クロスビルド用ツールチェーン、ネイティブコンパイラ検出、AOT サポート判定など）とバージョン定義ファイルが更新されています。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 3 | 3 |
| `eng/common/cross/build-rootfs.sh` | 124 | 73 |
| `eng/common/cross/install-debs.py` | 113 | 38 |
| `eng/common/cross/toolchain.cmake` | 27 | 13 |
| `eng/common/native/LocateNativeCompiler.targets` | 27 | 0 |
| `eng/common/native/NativeAotSupported.props` | 26 | 0 |
| `eng/common/native/init-distro-rid.sh` | 2 | 0 |
| `eng/common/native/install-dependencies.sh` | 7 | 4 |
| `eng/common/templates/vmr-build-pr.yml` | 1 | 1 |
| `global.json` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `78a905c` Update dependencies from https://github.com/dotnet/arcade build 20260…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`eng/` 配下のビルドインフラ（arcade 共通スクリプト）とバージョン定義の更新のみで、公開 API のシグネチャ変更はありません。

**既存利用者への影響**

ビルドインフラの定例更新のため、通常の利用者への影響はありません。 — Fix MAUI OTLP dev tunnel endpoint resolution

- 作者: jfversluis / 状態: MERGED
- ラベル: `area-integrations`
- 変更行数: +353 / -24
- マージ日時 (UTC): `2026-06-30 08:37:33`

**変更概要**

**変更概要**

Aspire の MAUI integration で、OTLP（OpenTelemetry Protocol）テレメトリを送信する際の dev tunnel エンドポイント解決に不具合があった問題を修正した PR です。`MauiOtlpExtensions.cs` と `OtlpLoopbackResource.cs` を中心に改修し、テストも新規追加しています。
| `src/Aspire.Hosting.Maui/MauiOtlpExtensions.cs` | 131 | 17 |
| `src/Aspire.Hosting.Maui/Otlp/OtlpLoopbackResource.cs` | 20 | 6 |
| `tests/Aspire.Hosting.Maui.Tests/MauiPlatformExtensionsTests.cs` | 200 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `62ec291` Fix MAUI OTLP dev tunnel endpoint resolution
- `41641a9` Address MAUI OTLP dev tunnel review feedback
- `2181f00` Update MAUI OTLP tests after rebase
- `782459f` Address MAUI OTLP review nits

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`MauiOtlpExtensions.cs` のロジック修正が中心で、公開 API のシグネチャ変更はありません。dev tunnel 経由での OTLP エンドポイント解決ロジックにバグ修正が入っています。

**既存利用者への影響**

Aspire で MAUI アプリを dev tunnel 経由でホストし OTLP テレメトリを送信している場合、この修正でエンドポイント解決の不具合が解消されるため、パッケージ更新を推奨します。破壊的変更はありません。

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18580 | Handle missing certutil during cert cleanup | open | danegsta | <https://github.com/microsoft/aspire/pull/18580> |
| PR | #18575 | Add MAUI prerequisite checks | open | jfversluis | <https://github.com/microsoft/aspire/pull/18575> |
| PR | #18574 | Add Console/Terminal view toggle to ConsoleLogs dashboard page | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18574> |
| PR | #18570 | Fix NuGet prefetch process leaks | open | danegsta | <https://github.com/microsoft/aspire/pull/18570> |
| PR | #18576 | Fix private SDK check: use runtime selector as the source of truth for SDK availability | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18576> |
| Issue | #18579 | Single-file AppHost describe ignores the open file and resolves from `process.cwd()` | open | ellahathaway | <https://github.com/microsoft/aspire/issues/18579> |
| Issue | #18578 | Clicking the "Path" item in the AppHosts view should copy the path to the clipboard | open | ellahathaway | <https://github.com/microsoft/aspire/issues/18578> |
| Issue | #18573 | Kubernetes deployment: Support skipping image push for local development   (use local images directly) | open | mahdiyar021 | <https://github.com/microsoft/aspire/issues/18573> |
| Issue | #18571 | [Deployment E2E] Nightly test failure - 2026-06-30 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18571> |
| Issue | #18568 | [aw] Analyze CI Failure has cache-memory miss misconfiguration | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18568> |
| Issue | #18557 | [aw] Analyze CI Failure failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18557> |
