# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 16 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 1 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | ahmedmuhsin, tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#125](https://github.com/microsoft/agent-framework-durable-extension/pull/125) — [BREAKING] Python: Enforce Int64 durable state counters （PR / merged / ahmedmuhsin）
  Python の永続状態利用者は読み書きする counter が非負 Int64 に収まるか確認してください。機能ブランチへの修正で、統合は下記 microsoft/agent-framework-durable-extension#123 と併せて判断します。
- **⚠ 破壊的変更** [#124](https://github.com/microsoft/agent-framework-durable-extension/pull/124) — [BREAKING] Bound shared state counters to Int64 （PR / merged / ahmedmuhsin）
  共有 JSON 状態を生成・検証する利用者は token usage・ingestion position・eviction total の Int64 上限を満たす必要があります。
- **⚠ 破壊的変更** [#123](https://github.com/microsoft/agent-framework-durable-extension/pull/123) — [BREAKING] Python: Add durable agent state, history and retention （PR / merged / ahmedmuhsin）
  Python v2 protocol は新規の隔離デプロイが必要です。DTS の既定1 MiB予算、履歴所有元、移行境界を一体で確認してください。
- **⚠ 破壊的変更** [#114](https://github.com/microsoft/agent-framework-durable-extension/pull/114) — [BREAKING] Python: Add retention policies and DTS pressure defaults （PR / merged / ahmedmuhsin）
  予算を省略していた standalone DTS 利用者には1 MiBの圧力保持が適用されます。必要に応じて `max_state_bytes=None` で明示的に無効化してください。
- **⚠ 破壊的変更** [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) — [BREAKING] Python: Activate isolated v2 runtime and workflow protocol （PR / merged / ahmedmuhsin）
  利用者は `isolated_v2` を明示的に承認し、新しい workflow instance を開始してください。既存 instance の replay は非対応です。
- **⚠ 破壊的変更** [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) — [BREAKING] Python: Add read-only shared agent state consumers （PR / merged / ahmedmuhsin）
  SDK 起動前に framework worker setup を行い、`durabletask>=1.7.1,<2` と共有 JSON の型検証に対応してください。
- **⚠ 破壊的変更** [#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) — Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x （PR / open / ahmedmuhsin）
  Functions host の2.x移行は未マージです。依存・worker setup と互換性の確定を待ち、今回の統合で完了したと扱わないでください。
- **GA 昇格** [#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) — [GA] Update Agent Framework dependencies （PR / open / tamirdresher）
  依存更新は未マージです。利用者は確定版とパッケージ公開を確認してください。
- **GA 昇格** [#80](https://github.com/microsoft/agent-framework-durable-extension/issues/80) — Release GA packages （Issue / open / greenie-msft）
  GA パッケージ公開を追跡する未完了 Issue です。今回の main 統合だけで GA 提供開始と判断しないでください。

## このリポジトリの要点

- Python の共有状態・履歴所有元・再試行安全な delivery・隔離 v2 実行・移行・圧力保持を microsoft/agent-framework-durable-extension#123 で統合しました。個別 slice のマージ数は独立したリリース数ではありません。
- v2 は新規隔離デプロイと fresh workflow が必要で、既存 instance の replay は非対応です。共有 counter は非負 Int64 に制限されます。
- standalone DTS は既定1 MiB、85%／70%の watermark による保持制御へ変更。Functions の backend discovery／予算既定値は microsoft/agent-framework-durable-extension#122 を継続追跡します。
- GA 公開と Functions durable 2.x 移行は未完了です。.NET の履歴・保持 stack は Python 統合とは別に進んでいます。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#125](https://github.com/microsoft/agent-framework-durable-extension/pull/125) — [BREAKING] Python: Enforce Int64 durable state counters

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +538 / -62
- マージ日時 (UTC): `2026-10-02 14:53:23`

**変更概要**

共有状態の Int64 制約を Python runtime の境界へ適用します。
read・write・retention increment の不正 counter を拒否します。
両 worker host で数値 token の精度を維持し、opaque data は変更しません。
overflow の rollback と legacy compatibility のテストを追加しました。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entity_json.py` | 2 | 1 |
| `python/packages/azurefunctions/tests/test_native_json_entity_af.py` | 36 | 0 |
| `python/packages/durabletask/README.md` | 12 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_durable_agent_state.py` | 6 | 2 |
| `python/packages/durabletask/agent_framework_durabletask/_entities.py` | 2 | 2 |
| `python/packages/durabletask/agent_framework_durabletask/_json_payload.py` | 6 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_retention.py` | 11 | 4 |
| `python/packages/durabletask/agent_framework_durabletask/_shared_agent_state.py` | 11 | 2 |
| `python/packages/durabletask/agent_framework_durabletask/_shared_response.py` | 6 | 11 |
| `python/packages/durabletask/agent_framework_durabletask/_shared_state_validation.py` | 107 | 16 |
| `python/packages/durabletask/agent_framework_durabletask/_state_migration.py` | 2 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_state_reader.py` | 2 | 1 |
| `python/packages/durabletask/tests/test_delivery_lifecycle.py` | 5 | 1 |
| `python/packages/durabletask/tests/test_history_staging_validation.py` | 14 | 8 |
| `python/packages/durabletask/tests/test_native_json_payload_dt.py` | 33 | 0 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `fd6ca6a` Enforce Int64 counters across Python durable state boundaries

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Python の任意精度整数を無制限の durable counter として受け入れず、0〜9,223,372,036,854,775,807 に制限します。
`fd6ca6a` が `_shared_state_validation`、JSON transport、状態 reader・migration・retention を一括更新します。共有 schema の microsoft/agent-framework-durable-extension#124 と整合する実装です。

**既存利用者への影響**

保存済み counter と increment を検査し、範囲外をそのまま投入しないでください。opaque application data 全体へ Int64 制限を広げる変更ではありません。

### [#124](https://github.com/microsoft/agent-framework-durable-extension/pull/124) — [BREAKING] Bound shared state counters to Int64

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +115 / -6
- マージ日時 (UTC): `2026-10-02 14:54:11`

**変更概要**

複数 runtime 間の共有 counter に任意精度整数を要求しないよう、JSON schema を制限します。
token usage、ingestion position、eviction total に非負 Int64 の範囲を設定しました。
整数としての JSON number semantics と opaque data を維持します。
境界値と legacy response の conformance case を追加しました。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `schemas/README.md` | 28 | 1 |
| `schemas/durable-agent-entity-state.json` | 16 | 5 |
| `schemas/tests/README.md` | 3 | 0 |
| `schemas/tests/validation-cases.json` | 68 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `6013cb7` Bound shared durable state counters to Int64

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `durable-agent-entity-state.json` の counter が Int64 上限を持つ共有契約になります。
`6013cb7` が schema・仕様文書・validation-cases を更新。JSON 数値が整数である意味は維持し、opaque payload は対象外です。

**既存利用者への影響**

外部 producer・schema validator と Python／.NET の実装を同じ範囲に揃えてください。既存データの counter が上限内か事前確認が必要です。

### [#123](https://github.com/microsoft/agent-framework-durable-extension/pull/123) — [BREAKING] Python: Add durable agent state, history and retention

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +79499 / -1158
- マージ日時 (UTC): `2026-10-02 23:13:54`

**変更概要**

Python の durable agent state と canonical history、Core provider／session 統合をまとめて取り込みます。
Stack の reader・immutable delivery・v2 workflow・移行・retention slice を統合します。
履歴 compaction と bounded transcript retention を提供します。
receipt 増加と blob lifetime は残課題で、無期限の会話継続を保証する機能ではありません。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-merge-tests.yml` | 36 | 0 |
| `docs/decisions/0032-durable-thread-compaction.md` | 1357 | 0 |
| `docs/features/python-durable-json-boundaries.md` | 131 | 0 |
| `python/packages/azurefunctions/README.md` | 107 | 7 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 690 | 117 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entities.py` | 72 | 7 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entity_json.py` | 53 | 0 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_orchestration.py` | 20 | 24 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_workflow_af_context.py` | 488 | 12 |
| `python/packages/azurefunctions/conftest.py` | 19 | 0 |
| `python/packages/azurefunctions/pyproject.toml` | 2 | 1 |
| `python/packages/azurefunctions/tests/README.md` | 18 | 0 |
| `python/packages/azurefunctions/tests/_reader_test_support.py` | 189 | 0 |
| `python/packages/azurefunctions/tests/_workflow_admission_test_support_af.py` | 43 | 0 |
| `python/packages/azurefunctions/tests/_workflow_agent_approval_test_support.py` | 252 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (14 件)</summary>

- `7d90e8f` docs: accept durable thread compaction ADR (#88)
- `13e73d2` chore: prepare local Python reader extraction base
- `f08e4f5` [BREAKING] Python: Add read-only shared agent state consumers (#108)
- `0aa8a35` Python: Stage immutable shared delivery lifecycle (#109)
- `c0e508c` Python: Stage canonical history and Core provider bridge (#111)
- `9a2f71f` [BREAKING] Python: Activate isolated v2 runtime and workflow protocol…
- `332d810` Python: Add evidence-backed migration into isolated v2 entities (#113)
- `0619455` [BREAKING] Python: Add retention policies and DTS pressure defaults (…
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 隔離 v2 protocol の新規デプロイが必要で、standalone DTS の既定 pressure budget は1 MiBになります。
`f08e4f5` は reader、`0aa8a35` は immutable delivery、`c0e508c` は Core history bridge、`9a2f71f` は v2 runtime、`332d810` は evidence-backed migration、`0619455` は保持制御を統合します。
Python の大規模統合であり、別の .NET stack は含みません。

**既存利用者への影響**

fresh isolated deployment と workflow instance を準備し、状態移行・履歴所有元・予算をまとめて検証してください。`max_state_bytes=None` は明示 opt-out です。
Functions の既定予算はこの統合で DTS と同一にはなりません。

### [#114](https://github.com/microsoft/agent-framework-durable-extension/pull/114) — [BREAKING] Python: Add retention policies and DTS pressure defaults

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: `breaking-change`
- 変更行数: +15569 / -560
- マージ日時 (UTC): `2026-09-29 23:17:27`

**変更概要**

生存している結果や実行制御状態を消さずに保持履歴を抑制します。
opt-in eager pruning、状態圧力予算、telemetry とサンプルを追加しました。
standalone DTS は `keep_all` でも圧力予算1 MiB、85%／70% watermark を既定とします。
Functions と unknown backend の既定値は変更しません。

<details><summary>変更ファイル (84 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-merge-tests.yml` | 34 | 0 |
| `docs/decisions/0032-durable-thread-compaction.md` | 77 | 109 |
| `docs/features/python-durable-json-boundaries.md` | 49 | 77 |
| `python/packages/azurefunctions/README.md` | 95 | 235 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 189 | 15 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entities.py` | 24 | 1 |
| `python/packages/azurefunctions/tests/README.md` | 18 | 0 |
| `python/packages/azurefunctions/tests/integration_tests/live_media_app/function_app.py` | 186 | 0 |
| `python/packages/azurefunctions/tests/integration_tests/test_14_conversation_compaction.py` | 125 | 0 |
| `python/packages/azurefunctions/tests/integration_tests/test_16_live_media_retention.py` | 435 | 0 |
| `python/packages/azurefunctions/tests/test_app.py` | 8 | 0 |
| `python/packages/azurefunctions/tests/test_retention_registration_af.py` | 419 | 0 |
| `python/packages/durabletask/README.md` | 154 | 24 |
| `python/packages/durabletask/agent_framework_durabletask/__init__.py` | 28 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_configuration.py` | 53 | 3 |
| _... 他 69 件_ | | |

</details>

<details><summary>コミット (60 件)</summary>

- `7953fa7` feat(python): add opt-in retention budgets telemetry and capability s…
- `71c3306` Merge branch 'impl/python-evidence-migration' into impl/python-retent…
- `f830567` fix(python): complete write telemetry and preserve live-test wire con…
- `557c942` test(python): assert both live retention write telemetry stages
- `6a141b8` Merge branch 'impl/python-evidence-migration' into impl/python-retent…
- `1814369` fix(python): use strict JSON for retention size observations
- `5053ea6` Merge branch 'impl/python-evidence-migration' into impl/python-retent…
- `c19a660` fix(python): standardize maintenance capacity failures and verify dep…
- _... 他 52 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 予算未指定の DTS caller の保持動作が変わります。`max_state_bytes=None` で圧力予算を無効化できます。
`7953fa7` が予算と telemetry、`1814369` が厳密 JSON のサイズ観測、`c19a660` が maintenance capacity failure を整理します。保護状態は維持されますが receipt／blob の寿命管理は別課題です。

**既存利用者への影響**

保持期間・予算・watermark を意図的に設定し、実データで telemetry と失敗時動作を確認してください。`keep_all` を無制限保存の保証と解釈しないでください。

### [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) — [BREAKING] Python: Activate isolated v2 runtime and workflow protocol

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +27428 / -1589
- マージ日時 (UTC): `2026-09-29 23:17:24`

**変更概要**

canonical v2 write と durable session capture を有効化します。
scoped JSON delivery と checkpoint された human-input validation を導入しました。
子 instance ID の長さを制限し、親子の混在した progress を扱います。
lossy workflow mapping を拒否し、サンプルの hub 分離を整えます。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0032-durable-thread-compaction.md` | 107 | 19 |
| `docs/features/python-durable-json-boundaries.md` | 72 | 39 |
| `python/packages/azurefunctions/README.md` | 148 | 40 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 409 | 101 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entities.py` | 41 | 6 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_orchestration.py` | 5 | 23 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_workflow_af_context.py` | 488 | 12 |
| `python/packages/azurefunctions/conftest.py` | 10 | 1 |
| `python/packages/azurefunctions/pyproject.toml` | 2 | 1 |
| `python/packages/azurefunctions/tests/_workflow_admission_test_support_af.py` | 43 | 0 |
| `python/packages/azurefunctions/tests/_workflow_agent_approval_test_support.py` | 252 | 0 |
| `python/packages/azurefunctions/tests/_workflow_event_test_support_af.py` | 47 | 0 |
| `python/packages/azurefunctions/tests/_workflow_generic_hitl_test_support_af.py` | 19 | 0 |
| `python/packages/azurefunctions/tests/_workflow_protocol_test_support_af.py` | 161 | 0 |
| `python/packages/azurefunctions/tests/_workflow_provenance_test_support_af.py` | 111 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (66 件)</summary>

- `a4174e1` feat!: activate isolated v2 runtime and workflow protocol
- `a3b99a9` Merge branch 'impl/python-history-sessions' into impl/python-runtime-…
- `8872a8a` fix(python): validate workflow starts and align isolated runtime samples
- `8b7f013` test(python): verify service-owned continuity without transcript coun…
- `6e2cddf` Merge branch 'impl/python-history-sessions' into impl/python-runtime-…
- `064e256` Merge branch 'impl/python-history-sessions' into impl/python-runtime-…
- `c3b028c` Merge branch 'impl/python-history-sessions' into impl/python-runtime-…
- `01a68ad` fix(python): reject lossy workflow mappings and unsafe sample hub def…
- _... 他 58 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `isolated_v2` の明示承認と fresh workflow instance が必要です。protocol 番号は `2` のままですが既存 instance の replay は非対応です。
`a4174e1` が runtime と protocol を有効化し、`8872a8a` が start validation、`01a68ad` が lossy mapping の拒否と sample hub を修正します。

**既存利用者への影響**

既存 instance にそのまま新 runtime を当てず、新しい隔離環境・instance へ展開してください。HITL と親子 progress の再開経路を検証します。

### [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) — [BREAKING] Python: Add read-only shared agent state consumers

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +11961 / -87
- マージ日時 (UTC): `2026-09-29 23:17:20`

**変更概要**

v2 writer を有効化する前段として、canonical shared-state の detached reader を追加します。
Durable Task と Functions polling で損失のない typed response の検証を行います。
framework payload を JSON として保持する scoped SDK decoding を使います。
この slice 単体では legacy write を維持し、v2 write・execution はまだ有効化しません。

<details><summary>変更ファイル (46 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0032-durable-thread-compaction.md` | 12 | 0 |
| `docs/features/python-durable-json-boundaries.md` | 126 | 0 |
| `python/packages/azurefunctions/README.md` | 47 | 0 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 106 | 15 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entities.py` | 5 | 1 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_entity_json.py` | 50 | 0 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_orchestration.py` | 15 | 1 |
| `python/packages/azurefunctions/conftest.py` | 10 | 0 |
| `python/packages/azurefunctions/tests/_reader_test_support.py` | 189 | 0 |
| `python/packages/azurefunctions/tests/test_native_json_entity_af.py` | 286 | 0 |
| `python/packages/azurefunctions/tests/test_operation_failure_diagnostics.py` | 349 | 0 |
| `python/packages/azurefunctions/tests/test_poll_decode_privacy_af.py` | 280 | 0 |
| `python/packages/azurefunctions/tests/test_reader_storage_and_delivery_af.py` | 222 | 0 |
| `python/packages/azurefunctions/tests/test_shared_state_consumers.py` | 501 | 0 |
| `python/packages/azurefunctions/tests/test_shared_write_admission_af.py` | 428 | 0 |
| _... 他 31 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `8388cac` feat: add read-only shared agent state consumers
- `7398772` fix: preserve shared value policy across response transports
- `73edbcd` fix(python): reject malformed present response discriminators
- `1ad9337` fix(python): checkpoint holistic audit corrections for python-shared-…
- `85e7ab4` fix(python): checkpoint second audit corrections for python-shared-re…
- `3106f49` fix(python): preserve public content and exclude raw serializers
- `c7a3bee` fix(python): reject nonfinite JSON before structured validation
- `3343d31` fix(python): reject invalid message content containers
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `durabletask>=1.7.1,<2` と SDK startup 前の framework worker setup が必要になります。
`8388cac` が reader、`7398772` が transport 間の value policy、`73edbcd` が不正 discriminator 拒否、`c7a3bee` が非有限 JSON の拒否を導入します。

**既存利用者への影響**

依存範囲と初期化順を更新し、共有 snapshot が型情報を失わないことを検証してください。v2 実行は後続 slice の明示承認が必要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #97 | Add pressure-based durable history retention and metrics | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/97> |
| #94 | .NET: Harden durable mailbox delivery and workflow output provenance | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/94> |
| #95 | Add durable chat history ownership and session persistence | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/95> |
| #93 | Add .NET support for durable agent state schema 2.0 | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/93> |
| #99 | Add Foundry and custom durable history samples | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/99> |
| #130 | Python: Preserve exact counters in migration inputs | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/130> |
| #120 | Python: Isolate entity-backed session snapshots | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/120> |
| #113 | Python: Add evidence-backed migration into isolated v2 entities | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/113> |
| #111 | Python: Stage canonical history and Core provider bridge | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/111> |
| #109 | Python: Stage immutable shared delivery lifecycle | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/109> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #131 | Persist schema-2 history-provider failure completions | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/131> |
| PR | #133 | .NET: Reject duplicate child workflow result controls | open | LE0-Lin | <https://github.com/microsoft/agent-framework-durable-extension/pull/133> |
| PR | #132 | .NET sample: Reject null external chat history | open | LE0-Lin | <https://github.com/microsoft/agent-framework-durable-extension/pull/132> |
| PR | #129 | Bump urllib3 from 2.7.0 to 2.8.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/129> |
| PR | #127 | Bump oauthlib from 3.3.1 to 4.0.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/127> |
| PR | #126 | Bump pyjwt from 2.13.0 to 2.15.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/126> |
| PR | #128 | Make the Python multi-agent sample installable standalone | open | manvkaur | <https://github.com/microsoft/agent-framework-durable-extension/pull/128> |
| Issue | #122 | Detect the Functions backend and choose max_state_bytes defaults accordingly | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/issues/122> |
| Issue | #4 | .NET & Python: [Feature]: Automatic compaction of chat history to stay within durable backend size limit | closed | greenie-msft | <https://github.com/microsoft/agent-framework-durable-extension/issues/4> |
