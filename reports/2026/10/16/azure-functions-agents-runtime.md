# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 1 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | larohra, hallvictoria, Copilot |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#256](https://github.com/Azure/azure-functions-agents-runtime/pull/256) — [Cleanup] Move harness-specific runtime responsibilities behind the MAF/Copilot harnesses （PR / merged / larohra）
独自に runtime harness の責務へ依存する利用者は、MAF／Copilot harness へ移された責務と新しい境界を確認し、custom harness の実装・設定を更新してください。

## このリポジトリの要点

Runtime の責務を MAF／Copilot harness へ分離し、Hosted Skill binding と Copilot event telemetry を追加する大きな更新が入りました（#256、#255、#264）。Vally executor の npm package scope と公開 pipeline も整備され、evaluation publishing pipeline が追加されています。関連 PR #265〜#269 では hosted/multi-worker 実行、tool authoring、Durable Agent Loop、Dev Mode が引き続き提案中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#256](https://github.com/Azure/azure-functions-agents-runtime/pull/256) — [Cleanup] Move harness-specific runtime responsibilities behind the MAF/Copilot harnesses

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +1631 / -2030
- マージ日時 (UTC): `2026-10-12 20:09:15`

**変更概要**

Runtime が直接担っていた harness 固有の処理を MAF／Copilot harness の背後へ移し、harness 間の境界を整理します。
architecture、front matter、agent runner、observability、samples と運用文書を大幅に更新し、direct runner observability も整備しました。
custom harness や runtime extension point に依存する開発者は責務分担の変更を確認してください。

<details><summary>変更ファイル (71 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/pyproject.instructions.md` | 14 | 0 |
| `.github/instructions/python.instructions.md` | 3 | 3 |
| `.github/workflows/docs.yml` | 1 | 1 |
| `README.md` | 7 | 14 |
| `docs/architecture.md` | 38 | 38 |
| `docs/copilot-preview-operations.md` | 5 | 5 |
| `docs/frds/0009-copilot-sdk-harness.md` | 25 | 2 |
| `docs/frds/_template.md` | 1 | 1 |
| `docs/front-matter-reference.md` | 3 | 19 |
| `docs/front-matter-spec.md` | 14 | 27 |
| `docs/index.md` | 1 | 1 |
| `docs/observability.md` | 5 | 4 |
| `eng/scripts/generate_config_reference.py` | 3 | 23 |
| `samples/basic-chat/README.md` | 2 | 2 |
| `samples/basic-chat/src/main.agent.md` | 0 | 5 |
| _... 他 56 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `e2730e2` Refactor harness-specific runtime boundaries
- `50b4ec8` Address PR review feedback
- `67d85da` Narrow MAF warning suppression
- `c85ad0a` Pin docs build Python and add MAF warning bump rule
- `4032162` Fix PR256 actionable findings
- `95bb4ba` Initialize direct runner observability
- `7607cc9` Merge branch 'main' into larohra/harness-boundary-cleanup

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Harness 固有の実行／観測責務が runtime 内部から各 MAF／Copilot harness 側へ移動し、architecture と FRD 0009 が新しい境界を定義します。外部 API の正確な signature 変更はこの一覧から特定できませんが、内部 extension point を利用する実装には **⚠ 破壊的影響の可能性** があります。

**既存利用者への影響**

標準の MAF／Copilot harness を使う利用者は移行不要です。独自 harness や direct runtime runner を組み込んでいる場合は、新しい責務境界と observability の初期化手順に合わせて実装を確認してください。

### [#270](https://github.com/Azure/azure-functions-agents-runtime/pull/270) — Rename Vally executor NPM scope

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +5 / -4
- マージ日時 (UTC): `2026-10-15 22:08:54`

**変更概要**

Vally executor の npm package scope を変更し、package metadata／lockfile と publish dry-run template を新しい scope に合わせます。
変更は executor package 名と公開 pipeline の参照に限定され、Function runtime の実行機能には触れません。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/templates/official/steps/npm-publish-dry-run.yml` | 1 | 1 |
| `integrations/vally-executor-azure-functions/.npmrc` | 1 | 0 |
| `integrations/vally-executor-azure-functions/package-lock.json` | 2 | 2 |
| `integrations/vally-executor-azure-functions/package.json` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `a953caa` Rename Vally executor npm scope
- `7f96b3b` Merge branch 'main' into hallvictoria/rename-vally-package

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開される npm package 名／scope が変わります。runtime API signature の変更はなく、利用者が package を直接インストールする場合の名前変更が主な互換性差分です。

**既存利用者への影響**

旧 npm scope で Vally executor を参照する package.json、install script、CI 設定を新しい scope に更新してください。

### [#255](https://github.com/Azure/azure-functions-agents-runtime/pull/255) — feat: Add Hosted Skill agent binding

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +3759 / -413
- マージ日時 (UTC): `2026-10-15 21:29:34`

**変更概要**

Azure Functions で Hosted Skill agent binding を追加し、ホストされた agent が skill を解決・実行できるようにします。
binding の設定／front matter、hybrid-hosted-skill sample、failure telemetry、trigger／observability の文書とテストを整備しました。
Hosted Skill を使って agent 機能を拡張するアプリ向けの新機能です。

<details><summary>変更ファイル (69 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 32 | 3 |
| `docs/architecture.md` | 48 | 27 |
| `docs/frds/0011-hosted-skill-binding.md` | 610 | 0 |
| `docs/frds/README.md` | 1 | 0 |
| `docs/front-matter-reference.md` | 2 | 3 |
| `docs/front-matter-spec.md` | 96 | 19 |
| `docs/getting-started.md` | 28 | 2 |
| `docs/index.md` | 1 | 0 |
| `docs/observability.md` | 15 | 0 |
| `docs/triggers.md` | 15 | 13 |
| `eng/scripts/generate_config_reference.py` | 5 | 9 |
| `samples/README.md` | 5 | 2 |
| `samples/basic-chat/README.md` | 1 | 1 |
| `samples/hybrid-hosted-skill/README.md` | 49 | 0 |
| `samples/hybrid-hosted-skill/src/function_app.py` | 34 | 0 |
| _... 他 54 件_ | | |

</details>

<details><summary>コミット (30 件)</summary>

- `3a221bf` feat: Add Hosted Skill agent binding
- `fb45f3f` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- `1e86af1` fix: address hosted skill review feedback
- `24c4f23` fix: address additional hosted skill review feedback
- `c1dbfa5` fix: complete hosted skill failure telemetry
- `57d6856` fix: finalize hosted skill review coverage
- `71cd2cd` Merge remote-tracking branch 'origin/main' into hallvictoria/hosted-s…
- `e2a98d1` Address hosted skill review follow-ups
- _... 他 22 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい Hosted Skill agent binding と対応する front matter／configuration contract を導入します。公開設定形式が追加されるため、利用者は FRD 0011 と getting-started、hybrid sample の記述に沿って binding と failure handling を実装してください。

**既存利用者への影響**

既存の非 Hosted Skill agent は移行不要です。Hosted Skill を使う場合は新しい binding と設定を追加し、Functions trigger／telemetry を含めて動作確認してください。

### [#264](https://github.com/Azure/azure-functions-agents-runtime/pull/264) — Add Copilot event telemetry

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +4450 / -953
- マージ日時 (UTC): `2026-10-15 18:03:33`

**変更概要**

Copilot event telemetry を追加し、chat session continuation を含むイベント観測を一貫した規約で収集します。
observability／credential／agent runner を更新し、telemetry privacy、session continuation、failure path のテストと運用文書を整備しました。
Copilot harness を利用する環境の telemetry 設定とデータ取り扱いに関係します。

<details><summary>変更ファイル (55 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/instructions/python.instructions.md` | 4 | 0 |
| `README.md` | 7 | 6 |
| `docs/architecture.md` | 39 | 48 |
| `docs/copilot-preview-operations.md` | 55 | 0 |
| `docs/frds/0009-copilot-sdk-harness.md` | 113 | 34 |
| `docs/front-matter-spec.md` | 9 | 11 |
| `docs/observability.md` | 125 | 107 |
| `docs/workflows.md` | 3 | 5 |
| `src/azure_functions_agents/_credential.py` | 6 | 8 |
| `src/azure_functions_agents/_observability.py` | 299 | 32 |
| `src/azure_functions_agents/_tool_descriptor.py` | 3 | 2 |
| `src/azure_functions_agents/app.py` | 2 | 7 |
| `src/azure_functions_agents/config/loader.py` | 2 | 2 |
| `src/azure_functions_agents/discovery/skills.py` | 1 | 1 |
| `src/azure_functions_agents/harness/_agent_runner.py` | 26 | 167 |
| _... 他 40 件_ | | |

</details>

<details><summary>コミット (11 件)</summary>

- `1042fda` Add Copilot event telemetry
- `cc7ba17` Refine Copilot telemetry review fixes
- `87996dc` Cover telemetry on chat session continuation
- `2e38cc1` Consolidate telemetry conventions
- `867223b` Fix remaining telemetry review gaps
- `6408d53` Add Copilot telemetry observability
- `d6824a4` Finalize Copilot telemetry review fixes
- `f5d3716` Align Copilot telemetry privacy
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Copilot event 用の observability convention と event recording を追加・統合し、privacy 方針に沿って telemetry を制御します。API signature の互換性変更は一覧から確認できませんが、出力イベント／属性・送信内容の変更はあります。

**既存利用者への影響**

既存 agent の実行移行は不要ですが、telemetry consumer／dashboard を運用する組織は新しい event schema と privacy／opt-out 設定を確認してください。

### [#263](https://github.com/Azure/azure-functions-agents-runtime/pull/263) — Fix Official Build pipeline name

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-10-12 18:08:38`

**変更概要**

Vally executor の official build pipeline 名を修正し、release workflow が正しい build 定義を参照するようにします。
変更は YAML pipeline の名前 1 行に限られ、runtime package や利用者向け API には影響しません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/ci/vally-executor-release.yml` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `48f74f1` Fix Official Build pipeline name

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

release pipeline の識別子を修正する CI 設定変更のみです。公開 API、package metadata、実行時の挙動変更はありません。

**既存利用者への影響**

利用者の移行作業は不要です。リリース工程の保守者は pipeline が新しい名前で実行されることを確認してください。

### [#262](https://github.com/Azure/azure-functions-agents-runtime/pull/262) — Add evals publishing pipeline

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +233 / -4
- マージ日時 (UTC): `2026-10-12 15:45:53`

**変更概要**

Azure Functions Vally executor の npm package を公開する evaluation／release pipeline を追加します。
official／public build、npm publish dry-run、provider tests と package metadata を構成し、公開前の成果物検証を自動化します。
executor package のリリースを担う保守者向けの build／publishing 変更です。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/ci/official-build.yml` | 4 | 0 |
| `eng/ci/public-build.yml` | 1 | 0 |
| `eng/ci/vally-executor-release.yml` | 69 | 0 |
| `eng/templates/jobs/build-vally-executor.yml` | 46 | 0 |
| `eng/templates/jobs/build.yml` | 1 | 1 |
| `eng/templates/official/jobs/build-artifacts.yml` | 1 | 1 |
| `eng/templates/official/steps/npm-publish-dry-run.yml` | 30 | 0 |
| `integrations/vally-executor-azure-functions/LICENSE.md` | 21 | 0 |
| `integrations/vally-executor-azure-functions/README.md` | 1 | 1 |
| `integrations/vally-executor-azure-functions/package-lock.json` | 1 | 0 |
| `integrations/vally-executor-azure-functions/package.json` | 4 | 1 |
| `integrations/vally-executor-azure-functions/test/executor.test.ts` | 51 | 0 |
| `tests/test_copilot_execution.py` | 3 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `e864b61` Add NPM publishing pipeline
- `e1fd89b` Add provider tests
- `05e0963` Merge branch 'main' into hallvictoria/npm-publishing-pipeline
- `71129ed` Address npm publishing review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい release YAML／build template と npm publish dry-run を追加し、公開 package と tests を pipeline に結び付けます。runtime API の変更ではありませんが、CI identity／publish 設定を正しく構成する必要があります。

**既存利用者への影響**

通常の Functions runtime 利用者は対応不要です。Vally executor の maintainer は pipeline の権限、package scope、dry-run 成果物を確認して公開フローへ移行してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #258 | Enable Copilot non-HTTP triggers and Debug UI (preview) | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/258> |
| #250 | Add Copilot preview delegation, workflows, and streaming parity | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/250> |
| #245 | Add SDK-neutral MCP and scoped skills capabilities | Copilot | <https://github.com/Azure/azure-functions-agents-runtime/pull/245> |
| #244 | Implement Copilot native sessions and Blob persistence | Copilot | <https://github.com/Azure/azure-functions-agents-runtime/pull/244> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #265 | Enable Copilot hosted and multi-worker execution | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/265> |
| PR | #269 | Normalize tool authoring before harness adaptation | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/269> |
| PR | #266 | docs: propose harness-neutral Durable Agent Loop | open | harshivcodes | <https://github.com/Azure/azure-functions-agents-runtime/pull/266> |
| PR | #268 | docs: propose Dev Mode for fast app updates | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/268> |
| PR | #257 | Fix Windows Copilot session-state paths and add sample capability checks | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/257> |
| PR | #260 | build: update Azure Functions Agent Runtime version to 0.1.0b17 | closed | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/260> |
| Issue | #261 | Copilot SDK 1.0.16: the first Microsoft Learn MCP search fails on Windows | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/261> |
