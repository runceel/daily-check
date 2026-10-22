# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 2 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | ahmedmuhsin |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) — [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x （PR / merged / ahmedmuhsin）
  Azure Functions の Python Durable Agent を利用する開発者は Durable Functions 2.x へ移行し、パッケージ依存関係とホスティング構成を確認してください。
- **⚠ 破壊的変更** [#135](https://github.com/microsoft/agent-framework-durable-extension/pull/135) — [BREAKING] Python: constrain standalone agent entity operations （PR / merged / ahmedmuhsin）
  Standalone Agent Entity を直接操作する実装は許可対象の操作とパラメータ制約を確認してください。

## このリポジトリの要点

対象期間の中心は Durable Functions 2.x への Python ホスティング移行です。Entity／Orchestration／Workflow の実装を新しい共有ランタイムへ移し、Standalone Agent 操作の制約と Blob payload offloading も追加されています。
既存利用者への影響が大きいため、パッケージ依存関係、Azure Functions ホスト構成、Entity API の互換性を優先確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#136](https://github.com/microsoft/agent-framework-durable-extension/pull/136) — [BREAKING] Python: migrate Azure Functions hosting to Durable Functions 2.x

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +6714 / -9932
- マージ日時 (UTC): `2026-10-19 21:38:42`

**変更概要**

Azure Functions 上の Python Agent ホスティングを Durable Functions 2.x 系へ移行し、従来の Entity／Orchestration 実装を共有ランタイムへ置き換えています。
約 100 ファイル規模の変更で、アプリ構成、DTS 前提、統合テスト、README、JSON 境界などを更新しています。利用者はホスティングパッケージだけでなく Azure Functions のランタイム構成まで影響範囲になります。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/actions/azure-functions-integration-setup/action.yml` | 1 | 1 |
| `.github/actions/python-package-validation/action.yml` | 122 | 0 |
| `.github/workflows/python-integration-tests.yml` | 12 | 5 |
| `.github/workflows/python-merge-tests.yml` | 52 | 64 |
| `docs/features/python-durable-json-boundaries.md` | 53 | 26 |
| `eng/templates/jobs/python-integration-tests.yml` | 10 | 7 |
| `eng/templates/jobs/setup-integration-infra.yml` | 1 | 1 |
| `eng/templates/official/jobs/build-packages.yml` | 22 | 7 |
| `python/packages/azurefunctions/README.md` | 32 | 8 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/__init__.py` | 2 | 1 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 307 | 227 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entities.py` | 0 | 183 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entity_json.py` | 0 | 53 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_orchestration.py` | 0 | 215 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_workflow.py` | 21 | 10 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `81782a1` Python: migrate Functions hosting to Durable Functions 2.x
- `dfbcb15` Python: reject missing HITL targets and correct setup guidance
- `e55ee33` Share Python hosting package validation
- `cf08163` Python: remove DTS prerequisites from Functions sample tests
- `c13d1af` Python: align integration test prerequisites with Azure Storage
- `9c93063` Python: align Durable Task SDK baseline at 1.11
- `8719f98` Python: clarify aligned SDK minimum validation jobs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: Durable Functions 2.x および Durable Task SDK の新しい基準へ移行し、旧実装や Entity 操作を削除しています。公開ホスティング API と統合テストの前提も変更されます。

**既存利用者への影響**

既存 Python Functions アプリは Durable Functions 依存関係、SDK 最小版、ホスト構成、HITL ターゲット設定を新構成へ更新する必要があります。移行前に既存ワークフローをステージングでテストしてください。

### [#135](https://github.com/microsoft/agent-framework-durable-extension/pull/135) — [BREAKING] Python: constrain standalone agent entity operations

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +107 / -5
- マージ日時 (UTC): `2026-10-19 21:38:41`

**変更概要**

Standalone Agent Entity の操作範囲を制約し、Agent Entity が許可する操作だけを明示的に公開するよう修正しています。
エンティティ操作とテスト境界を絞り、外部から任意の状態変更を行うリスクを抑えます。影響範囲は Python Durable Task パッケージと直接 Entity API を利用するコードです。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/durabletask/README.md` | 16 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_entities.py` | 12 | 1 |
| `python/packages/durabletask/tests/_migration_test_support.py` | 1 | 1 |
| `python/packages/durabletask/tests/test_runtime_host_boundaries.py` | 77 | 2 |
| `python/packages/durabletask/tests/test_runtime_validation_privacy.py` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `8267c7e` Python: constrain standalone agent entity operations
- `a9da8bc` Python: exercise nonempty history in maintenance tests
- `dc1e039` Python: use method references for agent operations

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: Standalone Agent Entity で許可されない操作を拒否するため、従来の低レベル Entity 呼び出しは失敗する可能性があります。

**既存利用者への影響**

直接 Entity API を使う Python アプリは公開対象のメソッドを確認し、必要な操作を公式ランタイム APIへ切り替えてください。

### [#140](https://github.com/microsoft/agent-framework-durable-extension/pull/140) — Python: support opt-in Blob payload offloading

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +727 / -63
- マージ日時 (UTC): `2026-10-19 21:38:43`

**変更概要**

大きなペイロードを Azure Blob Storageへオフロードするオプトイン機能を追加し、Functions ホストと Durable Task のメッセージサイズを抑えています。
Blob 連携用 Extra、資格情報アクセス、Azurite テスト、保持設定、ワークフロー結果参照を文書化しています。対象は大容量のメディアや JSON ペイロードを扱う Python ホスティングです。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/actions/python-package-validation/action.yml` | 9 | 0 |
| `.github/actions/python-package-validation/blob-extra-smoke.py` | 45 | 0 |
| `.github/actions/python-package-validation/blob-extra-smoke.sh` | 24 | 0 |
| `.github/workflows/python-integration-tests.yml` | 4 | 4 |
| `eng/templates/jobs/python-integration-tests.yml` | 2 | 2 |
| `python/packages/azurefunctions/README.md` | 80 | 0 |
| `python/packages/azurefunctions/pyproject.toml` | 5 | 0 |
| `python/packages/azurefunctions/tests/_af_handler_test_support.py` | 36 | 2 |
| `python/packages/azurefunctions/tests/integration_tests/README.md` | 7 | 5 |
| `python/packages/azurefunctions/tests/integration_tests/live_media_app/function_app.py` | 13 | 0 |
| `python/packages/azurefunctions/tests/integration_tests/test_16_live_media_retention.py` | 41 | 3 |
| `python/packages/azurefunctions/tests/test_native_json_payload_af.py` | 125 | 31 |
| `python/packages/azurefunctions/uv.lock` | 29 | 0 |
| `python/packages/durabletask/README.md` | 67 | 0 |
| `python/packages/durabletask/pyproject.toml` | 6 | 0 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `999edc3` Python: support opt-in Blob payload configuration
- `7ba39d8` Python: require offloaded workflow result references
- `bc0a215` Docs: clarify Blob payload credential access
- `540ff17` Docs: document supported Azurite connection shortcut
- `a83a6bd` Python: consolidate Blob payload extra across hosts
- `3459d5c` Python: validate Blob extras from built wheels
- `795d7e3` docs: clarify Blob payload storage permissions
- `be1b922` docs: make Blob integration test setup explicit
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Blob offloading 用の設定とパッケージ Extra、ワークフロー結果参照の検証を追加しています。既存設定が有効でない限り既定動作を変えません。

**既存利用者への影響**

既存利用者は移行不要です。Blob 保存を利用する場合はストレージ権限、資格情報、保持ポリシー、接続文字列の構成を追加してください。

### [#134](https://github.com/microsoft/agent-framework-durable-extension/pull/134) — Python: prepare shared durable runtime for Functions 2.x

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +164 / -116
- マージ日時 (UTC): `2026-10-19 21:38:40`

**変更概要**

Durable Functions 2.x 移行に向けて共有 Durable Runtime を整備し、Entity factory と Workflow context をホスティング間で共通化しています。
公開 Durable Executor 型の明確化、実行時既定値、Runtime host 境界のテストを追加し、新しい Functions ホスティング実装への移行準備をしています。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/durabletask/agent_framework_durabletask/__init__.py` | 3 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_entities.py` | 102 | 2 |
| `python/packages/durabletask/agent_framework_durabletask/_executors.py` | 3 | 4 |
| `python/packages/durabletask/agent_framework_durabletask/_worker.py` | 5 | 100 |
| `python/packages/durabletask/agent_framework_durabletask/_workflows/dt_context.py` | 23 | 5 |
| `python/packages/durabletask/tests/test_retention_registration_dt.py` | 2 | 2 |
| `python/packages/durabletask/tests/test_runtime_host_boundaries.py` | 26 | 2 |

</details>

<details><summary>コミット (3 件)</summary>

- `76edb7a` Python: share the durable entity factory and workflow context across …
- `e4e5daf` Python: cover shared runtime preparation defaults
- `98b77a8` Python: clarify public durable executor types

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

共有 Runtime を公開しつつ、Worker 側実装を整理しています。公開 Executor 型は明確化されていますが、独自 Worker 実装が内部型へ依存する場合は互換性確認が必要です。

**既存利用者への影響**

標準パッケージ利用者は移行不要です。内部 `_worker` API を直接参照している拡張は公開型へ置換してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #155 | .NET: Add two-phase entity version-filter migration for schema v2 | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/155> |
| PR | #154 | Bump aiohttp from 3.14.1 to 3.14.4 in /python/packages/azurefunctions | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/154> |
| PR | #153 | Bump certifi from 2026.6.17 to 2026.10.19 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/153> |
| PR | #152 | Bump uv from 0.11.28 to 0.13.4 in /python/packages/azurefunctions | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/152> |
| PR | #151 | Bump uv from 0.11.28 to 0.13.4 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/151> |
| PR | #148 | Bump aiohttp from 3.14.1 to 3.14.4 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/148> |
| PR | #147 | Bump werkzeug from 3.1.8 to 3.1.9 in /python/packages/azurefunctions | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/147> |
| PR | #146 | Bump mcp from 1.28.1 to 1.30.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/146> |
| PR | #63 | Bump aiohttp from 3.14.1 to 3.14.3 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/63> |
| PR | #138 | Bump werkzeug from 3.1.8 to 3.1.9 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/138> |
| Issue | #150 | Correction: multi-agent sample does not use the retiring Functions OpenAI extension | closed | manvkaur | <https://github.com/microsoft/agent-framework-durable-extension/issues/150> |
| Issue | #149 | .NET: [Guide] Running Durable Agents & Workflows inside Foundry Hosted Agents across scale-to-zero | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/149> |
| Issue | #61 | Consume new version of Durable Python SDK. | closed | greenie-msft | <https://github.com/microsoft/agent-framework-durable-extension/issues/61> |
