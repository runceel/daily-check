# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 11 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | afscrome, IEvangelist, danegsta, dotnet-maestro[bot] |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18804](https://github.com/microsoft/aspire/pull/18804) — [auto-sec] consolidate aspire security dependency remediations （PR / merged / IEvangelist）
  Aspire の JavaScript/Foundry サンプル利用者は、更新された websocket-driver と pygments の依存関係を取り込み、脆弱性対応済みか確認してください。
- **非推奨/廃止** [#18230](https://github.com/microsoft/aspire/pull/18230) — Remove obsolete Sigstore SAN workaround （PR / merged / mitchdenny）
  Sigstore の SAN 回避策に依存するビルド担当者は、不要になった workaround の削除が自社署名フローに影響しないか確認してください。

## このリポジトリの要点

セキュリティ依存関係の修正をサンプルへ反映し、DCP 依存更新と監視時刻のシリアライズ修正がマージされました。  
Sigstore の旧 workaround も削除され、開発基盤と依存関係の整理が進んでいます。  
Radius のサービス検出や公開処理、リソース起動停止に関する改善は引き続きオープンです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18804](https://github.com/microsoft/aspire/pull/18804) — [auto-sec] consolidate aspire security dependency remediations

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-integrations` `automated-security`
- 変更行数: +8 / -7
- マージ日時 (UTC): `2026-07-16 20:23:49`

**変更概要**

セキュリティ自動修正の指摘をまとめ、JavaScript サンプルの websocket-driver と Python サンプルの pygments を更新しました。  
package-lock.json、package.json、uv.lock の依存バージョンだけを調整し、既存のアプリケーションコードは変更していません。  
該当サンプルを利用する開発者が主な影響対象です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package.json` | 2 | 1 |
| `playground/FoundryAgentBasic/app/uv.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `7893f90` [auto-sec] remediate websocket-driver and pygments alerts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や Aspire の実行モデルの変更はなく、ロックファイルと依存バージョンの更新です。脆弱性修正に伴う推移依存の解決結果が変わります。

**既存利用者への影響**

アプリケーションコードの移行は不要です。サンプルを再利用している場合は依存関係を復元し、ビルドと脆弱性スキャンを再実行してください。

### [#18799](https://github.com/microsoft/aspire/pull/18799) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-15 22:49:47`

**変更概要**

Microsoft.DCP のビルド 0.25.6 を取り込み、Aspire の DCP 関連依存バージョンを更新しました。  
`eng/Version.Details.xml` と `eng/Versions.props` の整合性を更新する依存関係専用の変更です。  
DCP を使う開発・CI 環境は更新後の互換性を確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `b4097cf` Update dependencies from https://github.com/microsoft/dcp build 0.25.6

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

アプリケーション API の変更はなく、DCP ビルド参照とバージョン管理ファイルのみが更新されています。DCP 側の変更による実行時差分には注意が必要です。

**既存利用者への影響**

通常の Aspire アプリのコード移行は不要です。CI とローカルの DCP バージョンを揃え、起動・サービス検出の回帰を確認してください。

### [#18798](https://github.com/microsoft/aspire/pull/18798) — Fix DCP monitor timestamp serialization

- 作者: danegsta / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +104 / -2
- マージ日時 (UTC): `2026-07-16 19:39:07`

**変更概要**

DCP モニターの timestamp シリアライズを修正し、MicroTime の精度を正しく扱うコンバーターを追加しました。  
コンテナー・実行ファイルのモデルと DCP executor テストを更新し、精度差を許容する検証も追加しています。  
モニター時刻を利用する Aspire Hosting 利用者の表示・解析の一貫性が改善されます。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/Dcp/Model/Container.cs` | 1 | 0 |
| `src/Aspire.Hosting/Dcp/Model/Executable.cs` | 1 | 0 |
| `src/Aspire.Hosting/Dcp/Model/KubernetesMicroTimeJsonConverter.cs` | 60 | 0 |
| `tests/Aspire.Hosting.Tests/Dcp/DcpExecutorTests.cs` | 42 | 2 |

</details>

<details><summary>コミット (3 件)</summary>

- `452caaf` Fix DCP monitor timestamp serialization
- `e20c59f` Account for MicroTime precision in DCP test
- `f82933b` Use timestamp tolerance in DCP test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`KubernetesMicroTimeJsonConverter` が追加され、DCP モデルの時刻変換に利用されます。公開 API の意図的な破壊的変更はなく、テストには MicroTime 精度を考慮した許容幅が導入されました。

**既存利用者への影響**

通常は移行不要です。DCP の時刻文字列を独自に解析している場合は、精度やタイムゾーンの扱いを確認してください。

### [#18792](https://github.com/microsoft/aspire/pull/18792) — Skip repo pulse and burndown workflows on forks

- 作者: afscrome / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +315 / -304
- マージ日時 (UTC): `2026-07-15 18:36:23`

**変更概要**

フォーク上で repo pulse と burndown ワークフローを実行しないようにし、不要な自動処理を抑制しました。  
関連する lock ファイルの再生成範囲も更新されたワークフローに限定されています。  
Aspire のフォーク運用では CI 実行数と権限要求が減り、正規リポジトリのワークフローには影響しません。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/daily-repo-status.lock.yml` | 157 | 151 |
| `.github/workflows/daily-repo-status.md` | 4 | 0 |
| `.github/workflows/repo-pulse.lock.yml` | 150 | 153 |
| `.github/workflows/repo-pulse.md` | 4 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `bd10a40` Skip repo pulse and burndown workflows on forks
- `ce79b00` Limit lock regeneration to updated workflows
- `be47b34` Drop unrelated actions lock update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

GitHub Actions の条件分岐、説明、lock ファイルを変更した CI 設定の更新です。Aspire ランタイムやアプリケーション API の変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。フォークで独自にワークフローを変更している場合のみ、repo pulse と burndown の実行条件を確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18807 | Update dependencies from latest .NET Servicing | open | joperezr | <https://github.com/microsoft/aspire/pull/18807> |
| PR | #18806 | Bump the uv group across 3 directories with 10 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18806> |
| PR | #18803 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18803> |
| PR | #18797 | Fix Radius service discovery to match the recipe's ClusterIP Service | open | nellshamrell | <https://github.com/microsoft/aspire/pull/18797> |
| PR | #18795 | Fix waiting resource start and stop command behavior | open | afscrome | <https://github.com/microsoft/aspire/pull/18795> |
| PR | #18793 | Add wrap-lines toggle to result viewer dialogs | open | afscrome | <https://github.com/microsoft/aspire/pull/18793> |
| PR | #18778 | Add Radius recipe parameters and secret management | closed | nellshamrell | <https://github.com/microsoft/aspire/pull/18778> |
| Issue | #18805 | EF migration tool inherits ASPNETCORE_URLS referencing an endpoint it does not produce | open | axies20 | <https://github.com/microsoft/aspire/issues/18805> |
| Issue | #18802 | Radius publisher hangs on `aspire publish` when a container references a cloud-managed Azure resource | open | nellshamrell | <https://github.com/microsoft/aspire/issues/18802> |
| Issue | #18801 | [CI Failure] Flaky: AspireRabbitMQLoggingTests.TestExceptionWithoutInnerException fails with empty collection | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18801> |
| Issue | #18800 | [CI Failure] Flaky: OrphanDetectionEnvironmentTests.Apply_WithNullStartTime_StampsPidOnly fails with Assert.False on macOS | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18800> |
| Issue | #18796 | `aspire add docker` rejects Docker/Kubernetes integrations for TypeScript AppHosts and suggests missing `--all` option | open | maddymontaquila | <https://github.com/microsoft/aspire/issues/18796> |
| Issue | #18794 | [CI Failure] Flaky: ParentProcessLifetimeReusesResourcesAcrossAppRestartsAndStopsWhenParentExits fails due to DCP timestamp parsing BadRequest | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18794> |
| Issue | #18791 | Dependabot can't upgrade `Aspire.Hosting.Testing` | open | afscrome | <https://github.com/microsoft/aspire/issues/18791> |
| Issue | #18790 | DevTunnel resource always reports Unhealthy due to 'devtunnel access list <id> -p <port>' failing to resolve bare tunnel id | open | andrekiba | <https://github.com/microsoft/aspire/issues/18790> |
| Issue | #18788 | Scheduled workflow failing: Update Azure VM Sizes | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18788> |
| Issue | #18787 | Expose network-context endpoint resolution (container-reachable URL) in the polyglot/TypeScript AppHost | open | Pattrigue | <https://github.com/microsoft/aspire/issues/18787> |
| Issue | #18786 | Surface the isolated/execution-context signal to guest (TypeScript/polyglot) AppHosts | open | Pattrigue | <https://github.com/microsoft/aspire/issues/18786> |
| Issue | #18697 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18697> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
