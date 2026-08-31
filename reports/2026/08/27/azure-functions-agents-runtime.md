# Azure/azure-functions-agents-runtime *(詳細モード)*

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | hallvictoria |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#149](https://github.com/Azure/azure-functions-agents-runtime/issues/149) — Validate hosted delivery of internal token usage logs （Issue / closed / hallvictoria）
  ホステッド実行を運用する担当者は、内部 token 使用量ログが意図した配信経路へ露出しないことを確認してください。
- **非推奨/廃止** [#177](https://github.com/Azure/azure-functions-agents-runtime/pull/177) — samples: benchmark Dynamic Workflow token reduction （PR / open / TsuyoshiUshio）
  Dynamic Workflow のサンプル利用者は、トークン削減ベンチマークが従来の比較方法や前提を置き換えるか確認してください。

## このリポジトリの要点

Azure Functions Agent Runtime は、構成合成と front matter を基盤にした harness-only agent 構成を追加しました。
0.1.0b13 へのバージョン更新も行われ、サンプル、ドキュメント、設定ローダーが同じ構成モデルに揃えられています。
内部 token 使用量ログのホステッド配信検証と、Dynamic Workflow のトークン削減評価は運用前に確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#148](https://github.com/Azure/azure-functions-agents-runtime/pull/148) — feat: harness agent

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +3005 / -1198
- マージ日時 (UTC): `2026-08-26 22:57:33`

**変更概要**

harness から起動する agent を、組み込み機能に依存しない専用構成として定義できるようにしました。
設定ファイルの front matter 仕様、構成の merge / loader、参照ドキュメント生成スクリプトとサンプルを追加しています。
複雑な agent 構成をテスト用 harness で再現する開発者と、設定スキーマを参照する利用者が対象です。

<details><summary>変更ファイル (36 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitignore` | 1 | 0 |
| `README.md` | 22 | 0 |
| `docs/architecture.md` | 29 | 1 |
| `docs/frds/0008-harness-only-agent-configuration.md` | 304 | 0 |
| `docs/frds/README.md` | 1 | 0 |
| `docs/front-matter-reference.md` | 35 | 0 |
| `docs/front-matter-spec.md` | 52 | 2 |
| `docs/index.md` | 1 | 0 |
| `eng/scripts/generate_config_reference.py` | 50 | 1 |
| `pyproject.toml` | 4 | 3 |
| `samples/basic-chat/README.md` | 2 | 1 |
| `samples/basic-chat/src/agents.config.yaml` | 4 | 0 |
| `samples/basic-chat/src/main.agent.md` | 4 | 0 |
| `src/azure_functions_agents/config/loader.py` | 7 | 9 |
| `src/azure_functions_agents/config/merge.py` | 127 | 0 |
| _... 他 21 件_ | | |

</details>

<details><summary>コミット (29 件)</summary>

- `24af607` initial commit
- `cc6f9fb` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- `bda72ea` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- `182ce0a` unsure
- `058dc8d` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- `e326d20` minor fixes
- `559eee0` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- `0201453` Merge branch 'main' of https://github.com/Azure/azure-functions-agent…
- _... 他 21 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`harness-only-agent` 構成、front matter の仕様、設定 merge 処理という新しい構成抽象が追加されました。
loader の構成処理も変更されていますが、既存の agent 定義を直ちに無効化する破壊的変更とは記載されていません。新仕様へ移行する場合は front matter の契約に従う必要があります。

**既存利用者への影響**

既存の基本 agent 利用者は通常移行不要です。harness 専用構成を導入する場合は、front matter と設定 merge の仕様を確認し、サンプルで動作を検証してください。

### [#176](https://github.com/Azure/azure-functions-agents-runtime/pull/176) — build: update Azure Functions Agent Runtime version to 0.1.0b13

- 作者: hallvictoria / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-08-26 16:16:45`

**変更概要**

Azure Functions Agent Runtime のパッケージバージョンを `0.1.0b13` に更新しました。
変更は `__init__.py` の公開バージョン値に限定され、依存関係や実装ロジックは変更していません。
パッケージを固定バージョンで配布・検証する CI と利用者が対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/azure_functions_agents/__init__.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b1e1974` build: update Azure Functions Agent Runtime version to 0.1.0b13

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開バージョン文字列を更新しただけで、API シグネチャ、新規抽象、破壊的変更はありません。

**既存利用者への影響**

必須の移行作業はありません。依存を `0.1.0b13` に更新する場合は、既存の Functions agent の回帰テストを実行してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #178 | Fix ACA sandbox runtime reliability | open | larohra | <https://github.com/Azure/azure-functions-agents-runtime/pull/178> |
| PR | #179 | Adding the GH Support | open | swapnil-nagar | <https://github.com/Azure/azure-functions-agents-runtime/pull/179> |
| PR | #174 | docs: propose ExecPlans for complex changes | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/174> |
| PR | #177 | samples: benchmark Dynamic Workflow token reduction | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/177> |
| PR | #175 | docs: add sample quality and model E2E gates | open | TsuyoshiUshio | <https://github.com/Azure/azure-functions-agents-runtime/pull/175> |
| Issue | #149 | Validate hosted delivery of internal token usage logs | closed | hallvictoria | <https://github.com/Azure/azure-functions-agents-runtime/issues/149> |
