# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 3 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | larohra, TsuyoshiUshio, hallvictoria |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

対象期間は azure-functions-agents-runtime の主要変更を確認し、API・依存関係・テスト基盤の更新を整理しました。
重要度付きの PR / Issue については、既存利用者が確認すべき互換性・移行ポイントを優先して記載しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#213](https://github.com/Azure/azure-functions-agents-runtime/pull/213) — Update chat history paths to include agent slug

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +769 / -124
- マージ日時 (UTC): `2026-09-11 21:25:51`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 12 | 4 |
| `docs/architecture.md` | 17 | 6 |
| `src/azure_functions_agents/_blob_history.py` | 26 | 10 |
| `src/azure_functions_agents/_file_history.py` | 27 | 0 |
| `src/azure_functions_agents/_history_identity.py` | 16 | 0 |
| `src/azure_functions_agents/_observability.py` | 0 | 1 |
| `src/azure_functions_agents/app.py` | 0 | 1 |
| `src/azure_functions_agents/registration/endpoints.py` | 5 | 5 |
| `src/azure_functions_agents/runner.py` | 73 | 43 |
| `tests/test_blob_history.py` | 144 | 27 |
| `tests/test_file_history.py` | 86 | 0 |
| `tests/test_registration_endpoints.py` | 227 | 21 |
| `tests/test_runner_harness.py` | 34 | 5 |
| `tests/test_runner_streaming.py` | 102 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `31594ef` feat(history)!: include agent slug in chat history paths
- `52cff48` fix(history): remove unscoped path probes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#214](https://github.com/Azure/azure-functions-agents-runtime/pull/214) — Fix Python 3.14 CI compatibility

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +26 / -12
- マージ日時 (UTC): `2026-09-11 20:57:22`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/templates/install-core-tools.yml` | 1 | 1 |
| `tests/test_execution_aca_sandbox.py` | 25 | 11 |

</details>

<details><summary>コミット (1 件)</summary>

- `06a3a50` Fix Python 3.14 CI compatibility

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#197](https://github.com/Azure/azure-functions-agents-runtime/pull/197) — Wire deployed ACA qualification CI

- 作者: larohra / 状態: MERGED
- ラベル: —
- 変更行数: +467 / -32
- マージ日時 (UTC): `2026-09-11 17:10:23`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/frds/0008-aca-sandbox-session-runtime.md` | 26 | 7 |
| `eng/ci/docs/aca-qualification.md` | 143 | 0 |
| `eng/ci/e2e-tests.yml` | 11 | 0 |
| `eng/scripts/README.md` | 6 | 4 |
| `eng/scripts/aca_deployed_qualification.py` | 9 | 1 |
| `eng/templates/official/jobs/aca-qualify.yml` | 117 | 0 |
| `tests/live/README.md` | 8 | 8 |
| `tests/live/apps/aca-qualification/README.md` | 3 | 2 |
| `tests/test_aca_qualification_pipeline.py` | 144 | 10 |

</details>

<details><summary>コミット (4 件)</summary>

- `fa82b28` Wire deployed ACA qualification CI
- `d8d8a5e` Use exported ACA fixture requirements
- `d8e7eb4` Stop ACA qualification after first failure
- `3abb1b7` Align ACA qualification guides with CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#207](https://github.com/Azure/azure-functions-agents-runtime/pull/207) — feat(workflows): declare retry on workflow tools

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +555 / -130
- マージ日時 (UTC): `2026-09-10 00:34:58`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 17 | 16 |
| `docs/architecture.md` | 2 | 2 |
| `docs/frds/0004-dynamic-workflows.md` | 11 | 5 |
| `docs/workflows.md` | 25 | 2 |
| `samples/workflow-retry-policy/README.md` | 21 | 25 |
| `samples/workflow-retry-policy/src/main.agent.md` | 2 | 4 |
| `samples/workflow-retry-policy/src/tools/order_tools.py` | 7 | 1 |
| `src/azure_functions_agents/__init__.py` | 4 | 0 |
| `src/azure_functions_agents/_function_tool.py` | 12 | 0 |
| `src/azure_functions_agents/discovery/tools.py` | 1 | 0 |
| `src/azure_functions_agents/workflows/integration.py` | 21 | 2 |
| `src/azure_functions_agents/workflows/registry.py` | 9 | 0 |
| `src/azure_functions_agents/workflows/schema.py` | 40 | 8 |
| `src/azure_functions_agents/workflows/tools.py` | 22 | 2 |
| `tests/endtoend/test_workflow_native_retry_e2e.py` | 92 | 47 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `62004db` feat(workflows): declare retry on workflow tools
- `d93e958` fix(workflows): preserve retry validation paths
- `42739a9` refactor(workflows): normalize immutable retry policies

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#193](https://github.com/Azure/azure-functions-agents-runtime/pull/193) — Extract plan-authored Durable retry execution

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +3510 / -60
- マージ日時 (UTC): `2026-09-08 23:03:52`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 23 | 3 |
| `docs/architecture.md` | 5 | 3 |
| `docs/frds/0004-dynamic-workflows.md` | 128 | 5 |
| `docs/workflows.md` | 92 | 6 |
| `samples/README.md` | 1 | 0 |
| `samples/workflow-retry-policy/README.md` | 82 | 0 |
| `samples/workflow-retry-policy/src/.funcignore` | 13 | 0 |
| `samples/workflow-retry-policy/src/function_app.py` | 5 | 0 |
| `samples/workflow-retry-policy/src/host.json` | 12 | 0 |
| `samples/workflow-retry-policy/src/local.settings.template.json` | 10 | 0 |
| `samples/workflow-retry-policy/src/main.agent.md` | 22 | 0 |
| `samples/workflow-retry-policy/src/requirements.txt` | 1 | 0 |
| `samples/workflow-retry-policy/src/tools/order_tools.py` | 168 | 0 |
| `src/azure_functions_agents/__init__.py` | 12 | 0 |
| `src/azure_functions_agents/workflows/activity.py` | 384 | 0 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (12 件)</summary>

- `e445834` docs(frd): record retry execution split
- `bf13d30` feat(workflows): add plan-authored Durable retry
- `38fb60e` samples: add plan-authored retry workflow
- `3430907` fix(workflows): preserve retry execution boundaries
- `e77c86b` docs(workflows): document plan-authored retry
- `7a35934` fix(workflows): keep retry replay deterministic
- `400f6f4` test(workflows): preserve DTS retry tags
- `9dc59be` fix(workflows): address retry review feedback
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#203](https://github.com/Azure/azure-functions-agents-runtime/pull/203) — build: update Azure Functions Agent Runtime version to 0.1.0b14

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-09-08 16:46:00`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/__init__.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `c28c337` build: update Azure Functions Agent Runtime version to 0.1.0b14

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #218 | build: update Azure Functions Agent Runtime version to 0.1.0b15 | open | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/218> |
| PR | #216 | Standardize canonical agent identity | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/216> |
| PR | #212 | feat(workflows): per-attempt task timeout and continue-on-error | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/212> |
| PR | #209 | feat: add working A2A server sample | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/209> |
| PR | #208 | docs: propose A2A server architecture | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/208> |
| PR | #215 | build: update Azure Functions Agent Runtime version to 0.1.0b15 | closed | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/215> |
| PR | #185 | feat(workflows): add Durable native Activity retry | closed | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/185> |
| PR | #159 | feat: add agent binding | closed | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/pull/159> |
| Issue | #211 | Windows Python worker startup crash: Protobuf cache eviction, SDK selection, and Core Tools upgrade mitigation | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/211> |
| Issue | #205 | Align workflow retry internals with Python source conventions | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/205> |
| Issue | #206 | Teach the self-review skill lessons from PR #193 | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/issues/206> |

