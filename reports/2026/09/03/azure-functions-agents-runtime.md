# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | TsuyoshiUshio |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ／非推奨** [#140](https://github.com/Azure/azure-functions-agents-runtime/pull/140) — build(deps): bump cryptography from 48.0.0 to 50.0.0 （PR / open / dependabot[bot]）
  `cryptography` 50.0.0 は PKCS#7 復号の CVE-2026-69247 を修正し、FFDH API を非推奨化します。該当 API を使う依存コードは更新後の互換性を確認し、FFDH から新しい鍵交換方式へ移行してください。

## このリポジトリの要点

[PR #189](https://github.com/Azure/azure-functions-agents-runtime/pull/189) で Durable Functions Python 2.0.0b2 へ移行し、async client の寿命、SSE streaming、workflow task failure の扱いを新実装へ合わせました。[PR #191](https://github.com/Azure/azure-functions-agents-runtime/pull/191) は read-only skill tool が承認待ちで停止する問題を修正しています。  
次段では Durable retry と ACA qualification の複数 PR が進行中で、`cryptography` のセキュリティ更新も未マージです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#192](https://github.com/Azure/azure-functions-agents-runtime/pull/192) — docs: add feature PR splitting guidance

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +157 / -7
- マージ日時 (UTC): `2026-09-02 19:35:54`

**変更概要**

中規模以上の feature を独立してレビュー可能な複数 PR へ分割するための repository-specific guidance を追加します。  
FRD planning と各 slice の実装で分割規則を参照し、branch／worktree ownership、test・documentation の配置、最終 merge 後に FRD を `Implemented` とする条件を明確化しました。  
大きな機能開発でレビュー不能な巨大 PR や、複数 branch 間の責任範囲が曖昧になることを防ぐプロセス改善です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/skills/add-feature/SKILL.md` | 16 | 7 |
| `.github/skills/add-feature/references/split-rules.md` | 141 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `a15afca` docs: add feature PR splitting guidance
- `78088c3` Merge branch 'main' into tsuyoshiushio-update-add-feature-wording
- `1639b2f` Merge branch 'main' into tsuyoshiushio-update-add-feature-wording

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象は `.github/skills/add-feature` の skill 本文と `split-rules.md` のみで、runtime API や実装コードに変更はありません。各 PR を buildable・testable・documented に保つ分割基準と、multi-PR FRD の lifecycle が追加されています。

**既存利用者への影響**

製品利用者への影響や移行はありません。今後このリポジトリで feature を追加するコントリビューターは、FRD 作成時から新しい PR 分割規則に従う必要があります。

### [#191](https://github.com/Azure/azure-functions-agents-runtime/pull/191) — Fix read-only skill tool approvals

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +175 / -7
- マージ日時 (UTC): `2026-09-02 18:53:28`

**変更概要**

MAF 1.13 で skill tool が既定で承認必須になった結果、承認 UI／middleware を持たない runtime では最初の `load_skill` が `tool_end` を返さず streaming turn を終了する問題を修正します。  
configured skill path から `SkillsProvider` を明示的に構築し、信頼済みの read-only 操作である `load_skill` と `read_skill_resource` だけを承認不要にします。  
`run_skill_script` は引き続き承認必須で、将来の承認 surface が実装されるまで実行できない安全側の境界を維持します。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/architecture.md` | 1 | 1 |
| `docs/front-matter-spec.md` | 3 | 1 |
| `src/azure_functions_agents/runner.py` | 13 | 2 |
| `tests/test_runner_delegation.py` | 7 | 2 |
| `tests/test_runner_harness.py` | 59 | 0 |
| `tests/test_runner_streaming.py` | 92 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `bd07c3c` Fix read-only skill approvals
- `f3d3328` Disable approval for all skill tools
- `e803c8f` Merge branch 'main' into tsuyoshiushio-fix-skill-read-approval

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`runner.py` の provider 構築と tool approval mode を変更し、read-only の 2 tool には auto approval、script execution には従来の approval requirement を設定します。front matter と architecture docs もこの境界へ更新され、streaming test は `tool_start` から `tool_end`、assistant output までの完走を検証します。公開 API の破壊的変更はありません。

**既存利用者への影響**

移行は不要です。skill 読み取りが途中停止していた利用者は更新で解消しますが、skill script 実行は承認機構が追加されるまで引き続き利用できません。

### [#189](https://github.com/Azure/azure-functions-agents-runtime/pull/189) — chore: migrate to Durable Functions Python 2.x

- 作者: TsuyoshiUshio / 状態: MERGED
- ラベル: —
- 変更行数: +515 / -139
- マージ日時 (UTC): `2026-09-02 16:38:32`

**変更概要**

workflow runtime の依存を `azure-functions-durable` 1.x から 2.0.0b2 へ移行する前提 PR です。  
Durable 2.x が async function へ注入する `DurableFunctionsClient` の型と invocation-scoped lifetime に合わせ、SSE stream は消費完了まで専用 client を所有するよう変更しました。  
failed task の `result` 挙動と nested composite の完了伝播差異に対応し、workflow wave は leaf task を監視して最初の失敗で終了します。E2E の customer dependency path と Core Tools も更新されています。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitignore` | 4 | 0 |
| `docs/architecture.md` | 11 | 0 |
| `eng/scripts/install_e2e_dependencies.py` | 44 | 0 |
| `eng/templates/install-core-tools.yml` | 1 | 1 |
| `eng/templates/official/jobs/e2e-tests.yml` | 1 | 0 |
| `pyproject.toml` | 1 | 1 |
| `src/azure_functions_agents/app.py` | 2 | 2 |
| `src/azure_functions_agents/registration/endpoints.py` | 42 | 18 |
| `src/azure_functions_agents/workflows/context.py` | 3 | 3 |
| `src/azure_functions_agents/workflows/engine.py` | 65 | 31 |
| `src/azure_functions_agents/workflows/tools.py` | 6 | 6 |
| `tests/endtoend/_func_host.py` | 12 | 3 |
| `tests/test_app_routes.py` | 13 | 8 |
| `tests/test_registration_endpoints.py` | 167 | 4 |
| `tests/test_workflow_engine.py` | 59 | 25 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `e5e682d` chore(workflows): adopt Durable Functions Python 2.x
- `4ef53dc` fix(e2e): give each app a customer dependency path
- `d5a4e97` fix(workflows): avoid nested Durable composites
- `a56c631` chore(deps): relock for Durable Functions Python 2.x
- `3f4b756` fix(workflows): fail waves on first task error
- `270274e` chore(ci): update Core Tools to 4.14.0
- `8a3d8fd` refactor: address Durable v2 review feedback
- `a42ea94` refactor: simplify endpoint runner imports
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存バージョンが `azure-functions-durable` 2.0.0b2 へ上がり、endpoint registration、workflow context／engine／tools が新しい async client と task model に適合しました。streaming endpoint では invocation 終了時に閉じられる注入 client を保持せず、stream 専用 client を明示所有します。公開する Agents Runtime API を削除するものではありませんが、基盤 dependency は major beta への移行です。

**既存利用者への影響**

標準 API の利用者はコード変更不要ですが、独自 extension で Durable 1.x の client 型や task composite の挙動に依存している場合は互換性確認が必要です。パッケージ固定がある環境では 2.0.0b2 を許容してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #198 | Add ACA qualification leak sweep | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/198> |
| PR | #197 | Wire deployed ACA qualification CI | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/197> |
| PR | #196 | Add deployed ACA qualification assets | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/196> |
| PR | #195 | Stabilize ACA session admission and results | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/195> |
| PR | #194 | Require authored ACA Sandbox Group region | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/194> |
| PR | #193 | Extract plan-authored Durable retry execution | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/193> |
| PR | #169 | Add post-main ACA deployment, attestation, and qualification pipeline | closed | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/169> |
