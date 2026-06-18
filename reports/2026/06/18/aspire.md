# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-16 04:07:33 〜 2026-06-18 00:25:41 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 37 |
| オープン中の新規 PR     | 18 |
| クローズ (未マージ) PR  | 8 |
| 新規 Issue              | 32 |
| クローズ Issue          | 29 |
| 主要コントリビューター  | JamesNK, mitchdenny, adamint, aspire-repo-bot[bot], radical, joperezr |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18270](https://github.com/microsoft/aspire/issues/18270) — Default C# AppHosts to use the CLI bundle across IDEs （Issue / open / davidfowl）
  C# AppHost の実行が IDE 横断で CLI bundle 既定に寄るため、IDE 連携・ローカル SDK 解決・bundle キャッシュ前提を確認する必要があります。
- **⚠ 破壊的変更** [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle （PR / open / DamianEdwards）
  AppHost の既定実行経路が CLI bundle に変わる可能性があり、既存の SDK / PATH / IDE 起動に依存した開発環境は事前検証が必要です。
- **⚠ 破壊的変更** [#18114](https://github.com/microsoft/aspire/issues/18114) — `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore （Issue / closed / mitchdenny）
  非既定チャネル固定の polyglot AppHost で `aspire add` 後の restore が壊れる問題はクローズ済みですが、同構成の利用者は修正版 CLI で再確認すべきです。
- **⚠ セキュリティ** [#18153](https://github.com/microsoft/aspire/issues/18153) — [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project （Issue / closed / jinzhao1127）
  MessagePack 既知脆弱性警告はクローズ済みで、関連する StreamJsonRpc / MessagePack 更新を取り込んだバージョンへ追従しているか確認が必要です。
- **非推奨/廃止** [#18230](https://github.com/microsoft/aspire/pull/18230) — Remove obsolete Sigstore SAN workaround （PR / merged / mitchdenny）
  npm provenance 検証の古い Sigstore SAN 回避策が削除されるため、古い回避策に依存した検証パスがないか確認してください。
- **GA 昇格** [#18161](https://github.com/microsoft/aspire/pull/18161) — Align Azure Cosmos DB emulator with GA vnext-latest image （PR / merged / guanzhousongmicrosoft）
  Cosmos DB emulator が GA `vnext-latest` image 前提に揃うため、emulator タグ・環境変数・Data Explorer の既定動作を確認する必要があります。

## このリポジトリの要点

Aspire は活動量が多く、CLI bundle 既定化に向けた破壊的変更候補 (#18270/#18188)、Cosmos DB emulator の GA image 追従 (#18161)、Sigstore 回避策削除 (#18230) が目立ちます。
CI / release では agentic workflow の課金主体変更 (#18281)、internal build の待ち時間短縮 (#18291)、MessagePack 脆弱性警告解消に向けた依存更新が進みました。
Doctor / CLI / bundle cache / AppHost socket など運用性改善の PR・Issue も多く、13.4 系メンテナンスと 13.5 向け変更が並走しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18230](https://github.com/microsoft/aspire/pull/18230) — Remove obsolete Sigstore SAN workaround

- 作者: mitchdenny / 状態: MERGED
- ラベル: —
- 変更行数: +0 / -307
- マージ日時 (UTC): `2026-06-16 09:22:11`

**変更概要**

npm provenance 検証で使っていた古い Sigstore SAN 回避策を削除するクリーンアップです。
`SigstoreNpmProvenanceChecker` とそのテストが丸ごと削除され、現行 Sigstore 側の挙動に合わせて不要な互換コードを取り除いています。
対象は Aspire CLI の npm provenance / release 検証まわりで、一般的な AppHost 実行機能ではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Npm/SigstoreNpmProvenanceChecker.cs` | 0 | 187 |
| `tests/Aspire.Cli.Tests/Agents/SigstoreNpmProvenanceCheckerTests.cs` | 0 | 120 |

</details>

<details><summary>コミット (1 件)</summary>

- `8a13924` Remove Sigstore SAN workaround

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の追加ではなく、CLI 内部の `SigstoreNpmProvenanceChecker` と関連テストの削除です。
古い SAN 回避策を通る検証分岐がなくなるため、非推奨回避策の撤去として扱うべき変更です。

**既存利用者への影響**

通常の Aspire 利用者に移行作業は不要です。
npm package provenance を独自に検証していた release / packaging 運用では、古い SAN 回避策を前提にしていないか確認してください。

### [#18161](https://github.com/microsoft/aspire/pull/18161) — Align Azure Cosmos DB emulator with GA vnext-latest image

- 作者: guanzhousongmicrosoft / 状態: MERGED
- ラベル: —
- 変更行数: +471 / -45
- マージ日時 (UTC): `2026-06-16 17:17:01`

**変更概要**

Azure Cosmos DB emulator の設定を GA の `vnext-latest` image に合わせる変更です。
接続文字列、拡張メソッド、resource 表現、テストが更新され、タグ、data volume、partition count、explorer、証明書 trust callback などの挙動がカバーされました。
Cosmos emulator を Aspire Hosting から起動する開発・テスト環境に影響します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Azure.CosmosDB/AzureCosmosDBEmulatorConnectionString.cs` | 2 | 2 |
| `src/Aspire.Hosting.Azure.CosmosDB/AzureCosmosDBExtensions.cs` | 58 | 33 |
| `src/Aspire.Hosting.Azure.CosmosDB/AzureCosmosDBResource.cs` | 3 | 3 |
| `tests/Aspire.Hosting.Azure.Tests/AzureCosmosDBExtensionsTests.cs` | 408 | 7 |

</details>

<details><summary>コミット (8 件)</summary>

- `80cd40a` Align Cosmos emulator internals/docs with GA vnext-latest image
- `cd738be` Align Cosmos vNext emulator env vars with vnext-latest image
- `96c63eb` Add Cosmos emulator tests for tag, data volume, partition count, expl…
- `0977235` Disable vNext Cosmos Data Explorer by default
- `3c03c75` Add test for vNext emulator certificate trust callback
- `7ba8576` Close reachable emulator test-coverage gaps
- `22d9184` Close remaining reachable emulator coverage gaps
- `488b97a` Address PR review feedback: clarify comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AzureCosmosDBExtensions` と resource / connection string 内部が GA image の環境変数・起動オプションに合わせて調整されています。
Data Explorer は vNext emulator で既定無効化され、明示設定やテストで扱うオプションが増えています。公開 API の大きな削除は見当たりません。

**既存利用者への影響**

Cosmos emulator を使う既存 AppHost は、使用 image tag、Data Explorer の有効化、永続 data volume、partition count 設定の期待値を確認してください。
GA image への追従なので、古い vNext 前提の回避策があれば外せる可能性があります。

### [#18291](https://github.com/microsoft/aspire/pull/18291) — ci: Reduce max wall clock time for internal build

- 作者: radical / 状態: MERGED
- ラベル: `area-engineering-systems`
- 変更行数: +35 / -1
- マージ日時 (UTC): `2026-06-17 23:38:02`

**変更概要**

internal build の最大 wall clock time を短くするため、source indexing を publish をブロックしない独立 stage に移す CI 変更です。
`eng/pipelines/azure-pipelines.yml` の pipeline 構成を調整し、長時間処理が成果物公開を遅らせる状況を緩和しています。
製品コードではなく、リポジトリのビルド運用と CI 所要時間に関する改善です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/pipelines/azure-pipelines.yml` | 35 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `184b48c` ci: run source indexing in its own stage so it doesn't block publish

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変更はありません。
Azure Pipelines 上で stage 分割と依存関係が変わるだけで、Aspire runtime / CLI の公開動作には影響しません。

**既存利用者への影響**

利用者側の移行は不要です。
内部 CI の成果物公開タイミングや source indexing の完了タイミングを監視している運用だけ確認対象です。

### [#18290](https://github.com/microsoft/aspire/pull/18290) — fix(foundry): retry transient partial/throttled catalog responses in update-ai-foundry-models

- 作者: radical / 状態: MERGED
- ラベル: —
- 変更行数: +60 / -4
- マージ日時 (UTC): `2026-06-17 22:55:42`

**変更概要**

Foundry model catalog 更新ツール `update-ai-foundry-models` で、一時的な partial response や throttling response を retry する修正です。
`GenModel.cs` に再試行と partial catalog 判定の改善が入り、空の error collection を誤って partial catalog と見なさないようにしています。
Aspire Hosting Foundry のモデル一覧生成の信頼性を上げるための tooling 修正です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting.Foundry/tools/GenModel.cs` | 60 | 4 |

</details>

<details><summary>コミット (2 件)</summary>

- `288a76c` fix(foundry): retry transient partial/throttled catalog responses
- `fb25f03` fix(foundry): don't flag empty error collections as a partial catalog

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `src/Aspire.Hosting.Foundry/tools/GenModel.cs` の生成ツール内部に限定されます。
公開 API のシグネチャ変更や破壊的変更はなく、catalog 取得時の一時失敗に対するリトライ制御が主な差分です。

**既存利用者への影響**

通常の利用者に移行作業は不要です。
Foundry model catalog の生成・更新を運用しているメンテナーは、再試行により一時的な失敗が減ることを確認できます。

### [#18281](https://github.com/microsoft/aspire/pull/18281) — Move agentic workflows off the Copilot PAT (bill inference to the org)

- 作者: joperezr / 状態: MERGED
- ラベル: —
- 変更行数: +295 / -342
- マージ日時 (UTC): `2026-06-17 23:19:16`

**変更概要**

GitHub Actions 上の agentic workflow が Copilot PAT に依存して推論課金される状態をやめ、Organization 側に課金されるように lock workflow を更新しています。
daily repo status、extension changelog、milestone changelog、PR docs check、release notes など複数 workflow の lock YAML と説明 Markdown が更新されました。
リポジトリ運用の自動化・課金・権限管理に関わる変更で、製品 runtime の API 変更ではありません。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/aw/actions-lock.json` | 3 | 8 |
| `.github/workflows/daily-repo-status.lock.yml` | 41 | 48 |
| `.github/workflows/daily-repo-status.md` | 1 | 0 |
| `.github/workflows/extension-changelog.lock.yml` | 41 | 48 |
| `.github/workflows/extension-changelog.md` | 1 | 0 |
| `.github/workflows/milestone-changelog.lock.yml` | 40 | 47 |
| `.github/workflows/milestone-changelog.md` | 1 | 0 |
| `.github/workflows/pr-docs-check.lock.yml` | 41 | 48 |
| `.github/workflows/pr-docs-check.md` | 1 | 0 |
| `.github/workflows/release-notes-generate.lock.yml` | 41 | 48 |
| `.github/workflows/release-notes-generate.md` | 1 | 0 |
| `.github/workflows/release-update-support-mdx.lock.yml` | 41 | 48 |
| `.github/workflows/release-update-support-mdx.md` | 1 | 0 |
| `.github/workflows/repo-pulse.lock.yml` | 40 | 47 |
| `.github/workflows/repo-pulse.md` | 1 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `bf10f0c` Bill agentic workflow inference to the org instead of a PAT

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は `.github/workflows/*.lock.yml` と workflow 説明ファイルです。
Copilot PAT ベースの推論利用から org billing へ移す workflow 設定変更であり、Aspire の公開 API や CLI コマンドには影響しません。

**既存利用者への影響**

一般利用者の移行は不要です。
同様の agentic workflow をフォークや派生 repo で運用している場合は、PAT に紐づく課金・権限モデルを見直す参考になります。

### [#18279](https://github.com/microsoft/aspire/pull/18279) — [release/13.4] Update MongoDB.Driver to version 3.9.0

- 作者: aspire-repo-bot[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -4
- マージ日時 (UTC): `2026-06-17 20:53:50`

**変更概要**

release/13.4 ブランチで `MongoDB.Driver` を 3.9.0 に更新する依存関係メンテナンスです。
変更は `Directory.Packages.props` のパッケージバージョンに集中しており、Aspire Hosting MongoDB integration の依存解決を新しい driver に揃えます。
MongoDB integration を使う 13.4 系利用者のビルド・restore に関係します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `Directory.Packages.props` | 1 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `11727e9` Update MongoDB.Driver to version 3.9.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Aspire 側の公開 API 変更はなく、中央パッケージ管理上の `MongoDB.Driver` バージョン更新のみです。
関連 Issue #17981 のような MongoDB integration の依存制約問題を解消する流れに含まれます。

**既存利用者への影響**

通常はコード移行不要ですが、MongoDB.Driver の minor update に伴う接続・シリアライズ挙動は既存テストで確認してください。
13.4 系で restore 問題に遭遇していた利用者は、更新後パッケージで解消するか確認対象です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18278 | Use TryAddSingleton in AddAzureProvisioning and simplify tests | JamesNK | <https://github.com/microsoft/aspire/pull/18278> |
| #18274 | Update OpenTelemetry.Instrumentation.StackExchangeRedis | martincostello | <https://github.com/microsoft/aspire/pull/18274> |
| #18265 | Re-enable OneLocBuild | joperezr | <https://github.com/microsoft/aspire/pull/18265> |
| #18264 | Add agent instructions for optional parameters and test assertions | JamesNK | <https://github.com/microsoft/aspire/pull/18264> |
| #18263 | Update PackageValidationBaselineVersion to 13.4.5 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18263> |
| #18258 | Fix flaky CLI test timeouts on loaded CI agents | JamesNK | <https://github.com/microsoft/aspire/pull/18258> |
| #18257 | Fix doctor command text wrapping under emoji icons | JamesNK | <https://github.com/microsoft/aspire/pull/18257> |
| #18255 | Add DCP connection checks to aspire doctor | danegsta | <https://github.com/microsoft/aspire/pull/18255> |
| #18252 | Add OS information to aspire doctor | danegsta | <https://github.com/microsoft/aspire/pull/18252> |
| #18250 | test: fix three deterministically-failing Outerloop tests | radical | <https://github.com/microsoft/aspire/pull/18250> |
| #18245 | [release/13.4] Bumping patch version | joperezr | <https://github.com/microsoft/aspire/pull/18245> |
| #18240 | [release/13.4] Add coding agent telemetry detection and report copilot-cli specifically | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18240> |
| #18233 | Support wildcard ignore patterns for pre-release version checks | JamesNK | <https://github.com/microsoft/aspire/pull/18233> |
| #18221 | [release/13.4] Make npm package README TypeScript-only and document standalone dashboard | adamint | <https://github.com/microsoft/aspire/pull/18221> |
| #18219 | [release/13.4] Require exactly one npm ESRP owner in release pipeline (release/13.4) | adamint | <https://github.com/microsoft/aspire/pull/18219> |
| #18218 | Require exactly one npm ESRP owner in release pipeline | adamint | <https://github.com/microsoft/aspire/pull/18218> |
| #18217 | Harden VS Code extension E2E tests | adamint | <https://github.com/microsoft/aspire/pull/18217> |
| #18209 | Replace custom RemoveSpectreFormatting with Spectre.Console's Markup.Remove | JamesNK | <https://github.com/microsoft/aspire/pull/18209> |
| #18208 | Fix stale version-skew warning during aspire update | JamesNK | <https://github.com/microsoft/aspire/pull/18208> |
| #18205 | [release/13.4] Validate playwrightCliVersion shape with strict SemVer | mitchdenny | <https://github.com/microsoft/aspire/pull/18205> |
| #18204 | [release/13.4] Bump StreamJsonRpc to 2.25.29 to clear MessagePack NU1903 | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18204> |
| #18202 | Move resource property metadata to producers | davidfowl | <https://github.com/microsoft/aspire/pull/18202> |
| #18189 | Bump the uv group across 1 directory with 9 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18189> |
| #18160 | [release/13.4] Freeze Aspire.TypeSystem AssemblyVersion at 13.4.5.0 to fix cross-ALC codegen binding | sebastienros | <https://github.com/microsoft/aspire/pull/18160> |
| #18155 | Bump StreamJsonRpc to 2.25.29 to clear MessagePack NU1903 | mitchdenny | <https://github.com/microsoft/aspire/pull/18155> |
| #18149 | Reference Microsoft.Data.SqlClient.Extensions.Azure in SqlServer client integrations for Entra ID auth | 0xharkirat | <https://github.com/microsoft/aspire/pull/18149> |
| #18117 | Bump the npm_and_yarn group across 3 directories with 2 updates | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18117> |
| #18087 | CLI identity sidecar | mitchdenny | <https://github.com/microsoft/aspire/pull/18087> |
| #18078 | Update MongoDB.Driver to version 3.9.0 | Falco20019 | <https://github.com/microsoft/aspire/pull/18078> |
| #18074 | Improve Aspire docs search relevance | davidfowl | <https://github.com/microsoft/aspire/pull/18074> |
| #18024 | Fix addParameter error classification for invalid option combo | ellahathaway | <https://github.com/microsoft/aspire/pull/18024> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18302 | Forward-port release/13.4 to main after v13.4.1 | open | joperezr | <https://github.com/microsoft/aspire/pull/18302> |
| PR | #18298 | Resolve symlinks when matching AppHost socket for --apphost (#17618) | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18298> |
| PR | #18297 | Fail cleanly when AppHost selection needs a prompt in non-interactive mode (#17619) | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18297> |
| PR | #18296 | Clean up socket file after stopping running AppHost instance (#17587) | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18296> |
| PR | #18294 | Add warning and `aspire migrate` path from apphost.ts to apphost.mts | open | sebastienros | <https://github.com/microsoft/aspire/pull/18294> |
| PR | #18293 | Add polyglot-compatible integration discovery | open | sebastienros | <https://github.com/microsoft/aspire/pull/18293> |
| PR | #18292 | Fix ASPIREEXPORT001 false positive on C# 14 extension blocks | open | sebastienros | <https://github.com/microsoft/aspire/pull/18292> |
| PR | #18288 | Fix refresh-typescript-sdks workflow for current TypeScript playground layout | open | Copilot | <https://github.com/microsoft/aspire/pull/18288> |
| PR | #18276 | Add fallback copy method for directory promotion | open | damianog | <https://github.com/microsoft/aspire/pull/18276> |
| PR | #18269 | Improve Azure provisioning recovery commands | open | davidfowl | <https://github.com/microsoft/aspire/pull/18269> |
| PR | #18266 | ci(release): submit WinGet PR ready-for-review instead of draft | open | radical | <https://github.com/microsoft/aspire/pull/18266> |
| PR | #18260 | VS Code: add resource context-menu Open terminal action | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18260> |
| PR | #18259 | Make ResourceAnnotationCollection thread-safe | open | JamesNK | <https://github.com/microsoft/aspire/pull/18259> |
| PR | #18256 | Enable keyboard navigation on dashboard scroll containers | open | JamesNK | <https://github.com/microsoft/aspire/pull/18256> |
| PR | #18254 | ci: capture Aspire CLI logs in deployment E2E test artifact | open | radical | <https://github.com/microsoft/aspire/pull/18254> |
| PR | #18251 | Add internal Microsoft telemetry detector | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/18251> |
| PR | #18241 | Flow configured CLI path into AppHost builds | open | adamint | <https://github.com/microsoft/aspire/pull/18241> |
| PR | #18239 | Repair incomplete bundle cache layouts | open | adamint | <https://github.com/microsoft/aspire/pull/18239> |
| PR | #18261 | Fix Aspire CLI versioning and socket management issues (13.5 milestone) | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/18261> |
| PR | #18249 | test(hosting): fix Outerloop tests asserting null proxyless EffectivePort | closed | radical | <https://github.com/microsoft/aspire/pull/18249> |
| PR | #18248 | Fix AspireNew_WithAgentInit_InstallsPlaywrightWithoutErrors: replace fragile menu navigation with CLI flags | closed | Copilot | <https://github.com/microsoft/aspire/pull/18248> |
| PR | #18246 | Fix Outerloop dashboard test: Kestrel rejects dynamic-port bind on "localhost" | closed | radical | <https://github.com/microsoft/aspire/pull/18246> |
| PR | #18228 | test: validate selective-CI selection comment (do not merge) | closed | radical | <https://github.com/microsoft/aspire/pull/18228> |
| PR | #18227 | test: throwaway PR to validate selective-CI comment (do not merge) | closed | radical | <https://github.com/microsoft/aspire/pull/18227> |
| PR | #18222 | Preserve raw VS Code extension output | closed | adamint | <https://github.com/microsoft/aspire/pull/18222> |
| PR | #18207 | Update PackageValidationBaselineVersion to 13.4.4 | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18207> |
| Issue | #18301 | [aw] PR Documentation Check exceeded daily AI credits budget | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18301> |
| Issue | #18300 | aspire doctor should recommend installing the VS Code extension when VS Code is installed | open | adamint | <https://github.com/microsoft/aspire/issues/18300> |
| Issue | #18299 | E2E Deployment Test Failure: Aspire.Deployment.EndToEnd.Tests.AcaCustomRegistryDeploymentTests.DeployStarterTemplateWithCustomRegistryToAzureContainerApps | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18299> |
| Issue | #18289 | No AppHost.cs generated only when Angular exists | open | suugbut | <https://github.com/microsoft/aspire/issues/18289> |
| Issue | #18287 | Daily watch: automated / bot PR triage (installers + maintenance) | closed | radical | <https://github.com/microsoft/aspire/issues/18287> |
| Issue | #18286 | [aw] PR Documentation Check exceeded daily effective workflow budget | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18286> |
| Issue | #18285 | Bot / automation PR shepherd — daily triage of Dependabot / maestro / winget / homebrew PRs | open | radical | <https://github.com/microsoft/aspire/issues/18285> |
| Issue | #18284 | Make AKS node pool OS SKU configurable (support 'AzureLinux') in AddAzureKubernetesEnvironment | open | baotruong04 | <https://github.com/microsoft/aspire/issues/18284> |
| Issue | #18283 | aspire ps: wrapped Dashboard URL in ASCII table breaks command-click and copy-paste | closed | krubenok | <https://github.com/microsoft/aspire/issues/18283> |
| Issue | #18282 | ExecuteCommandAsync "stop" hangs indefinitely when ProjectResource is in Waiting state | open | sander1095 | <https://github.com/microsoft/aspire/issues/18282> |
| Issue | #18280 | Add dependency-aware stop/start API (StopDependentsAsync / GetDependents) for programmatic resource lifecycle control | open | sander1095 | <https://github.com/microsoft/aspire/issues/18280> |
| Issue | #18277 | AKS environment does not support AcrPull for a cross-resource-group existing ACR | open | davidfowl | <https://github.com/microsoft/aspire/issues/18277> |
| Issue | #18275 | BundleService: MoveDirectory fails with "Access denied" when migrating from legacy layout to versioned layout on Windows | open | damianog | <https://github.com/microsoft/aspire/issues/18275> |
| Issue | #18273 | agent skills and aspire CLI support for nested repo structure | open | hansmbakker | <https://github.com/microsoft/aspire/issues/18273> |
| Issue | #18272 | [Aspire.Hosting.Blazor] Generated Gateway.cs crashes with circular DI dependency (UseOtlpExporter + AddStandardResilienceHandler) on .NET 11 preview | open | javiercn | <https://github.com/microsoft/aspire/issues/18272> |
| Issue | #18271 | Kubernetes publish: WithHttpProbe generates lowercase scheme ("http"), rejected by kube-apiserver | open | ximenchuifeng | <https://github.com/microsoft/aspire/issues/18271> |
| Issue | #18270 | Default C# AppHosts to use the CLI bundle across IDEs | open | davidfowl | <https://github.com/microsoft/aspire/issues/18270> |
| Issue | #18268 | Aspire.Azure.Npgsql.EntityFrameworkCore.PostgreSQL 13.4.5 fails on Nuget restore | open | roycornelissen | <https://github.com/microsoft/aspire/issues/18268> |
| Issue | #18267 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18267> |
| Issue | #18262 | [Deployment E2E] Nightly test failure - 2026-06-17 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18262> |
| Issue | #18253 | Azure Government Cloud not supported in provisioning system (ArmClient defaults to Commercial Cloud) | open | moog-jbrown | <https://github.com/microsoft/aspire/issues/18253> |
| Issue | #18247 | [Failing test]: AspireNew_WithAgentInit_InstallsPlaywrightWithoutErrors | open | radical | <https://github.com/microsoft/aspire/issues/18247> |
| Issue | #18244 | ci: cache repo-local .dotnet in setup_for_tests (restore everywhere, save on main/release) | open | radical | <https://github.com/microsoft/aspire/issues/18244> |
| Issue | #18243 | Scrub InvalidArgument messages for polyglot callers | open | ellahathaway | <https://github.com/microsoft/aspire/issues/18243> |
| Issue | #18242 | Run mode: azure-prepare-resources crashes the AppHost when a compute resource's env callback reads an unallocated endpoint Port (role-assignment dependency walk evaluates endpoint-reading env callbacks before DCP allocation) | open | gabynevada | <https://github.com/microsoft/aspire/issues/18242> |
| Issue | #18237 | DCP hard kills child process after 6 seconds when debugger is paused at breakpoint | open | jonathanpickard3sq | <https://github.com/microsoft/aspire/issues/18237> |
| Issue | #18236 | [aw] PR Documentation Check exceeded daily effective workflow budget | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18236> |
| Issue | #18235 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18235> |
| Issue | #18234 | Aspire CLI killing all processes | open | KSemenenko | <https://github.com/microsoft/aspire/issues/18234> |
| Issue | #18232 | 📈 CI Daily Pulse [pipeline trial] | open | radical | <https://github.com/microsoft/aspire/issues/18232> |
| Issue | #18231 | 🩺 CI Health — Weekly (Jun 11–17, 2026) | open | radical | <https://github.com/microsoft/aspire/issues/18231> |
| Issue | #18229 | [Deployment E2E] Nightly test failure - 2026-06-16 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18229> |
| Issue | #18226 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18226> |
| Issue | #18201 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18201> |
| Issue | #18197 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18197> |
| Issue | #18153 | [AspireE2E] There is a warning Package 'MessagePack' 2.5.192 has a known high severity vulnerability when creating Aspire project | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18153> |
| Issue | #18148 | SqlServer client integrations missing Microsoft.Data.SqlClient.Extensions.Azure for Entra ID auth | closed | 0xharkirat | <https://github.com/microsoft/aspire/issues/18148> |
| Issue | #18134 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18134> |
| Issue | #18122 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18122> |
| Issue | #18114 | `aspire add` on a polyglot AppHost pinned to a non-default channel selects the implicit/stable version over the pinned channel, breaking restore | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18114> |
| Issue | #18104 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18104> |
| Issue | #18103 | aspire update warns about stale configured SDK version after updating packages | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18103> |
| Issue | #18099 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18099> |
| Issue | #18072 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18072> |
| Issue | #18046 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18046> |
| Issue | #18007 | Using AddBlazorWasmApp in AppHost results in 404 despite correct path | closed | MdeBruin93 | <https://github.com/microsoft/aspire/issues/18007> |
| Issue | #18002 | TypeScript addParameter fails with secret and publishValueAsDefault | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18002> |
| Issue | #17983 | npm Aspire CLI package can fall back to incomplete Aspire home bundle, causing dashboard asset 404s | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17983> |
| Issue | #17982 | CLI E2E: end-to-end attach flow for `aspire terminal attach` against a real DCP terminal | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17982> |
| Issue | #17981 | Aspire.Hosting.MongoDB requires impossible dependency: SharpCompress 1.0.0 | closed | SheepReaper | <https://github.com/microsoft/aspire/issues/17981> |
| Issue | #17939 | [TypeScript AppHost] Expose WithContainerBuildOptions / ContainerTargetPlatform for cross-architecture container builds | closed | joperezr | <https://github.com/microsoft/aspire/issues/17939> |
| Issue | #17904 | Foundry hosted agent references don't inject service env vars on publish | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/17904> |
| Issue | #17899 | `aspire update` on stable branch is trying to modify `Nuget.config` | closed | Atulin | <https://github.com/microsoft/aspire/issues/17899> |
| Issue | #17823 | Local NuGet proxy + service-index override for end-to-end identity emulation | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17823> |
| Issue | #17803 | Foundry hosted agent deployment fails when endpoint has targetPort | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/17803> |
| Issue | #17632 | Add aspire doctor hint when legacy .aspire/settings.json is detected | closed | adamint | <https://github.com/microsoft/aspire/issues/17632> |
| Issue | #17352 | Web project resource fails to start with 13.3.5 | closed | karl-sjogren | <https://github.com/microsoft/aspire/issues/17352> |
