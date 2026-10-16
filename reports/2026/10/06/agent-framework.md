# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 132 |
| オープン中の新規 PR     | 90 |
| クローズ (未マージ) PR  | 23 |
| 新規 Issue              | 126 |
| クローズ Issue          | 92 |
| 主要コントリビューター  | eavanvalkenburg, dependabot[bot], quifox, baywet, anishmehta24, rogerbarreto |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9004](https://github.com/microsoft/agent-framework/pull/9004) — .NET: [BREAKING] Harness: Request concise progress instead of private reasoning （PR / open / 1aifanatic）
  未マージの提案です。Harness の進捗出力を扱う利用者は、採用時に private reasoning ではなく簡潔な進捗を前提とした処理へ変更する必要があるか確認してください。
- **⚠ 破壊的変更** [#8894](https://github.com/microsoft/agent-framework/pull/8894) — [BREAKING] Python: Foundry hosting: parsed and durable Invocations agent runs （PR / merged / eavanvalkenburg）
  Invocations の呼出元は、既定応答がプレーンテキストから JSON／フレーム化 SSE に変わるためパーサーを移行してください。
- **⚠ 破壊的変更** [#8893](https://github.com/microsoft/agent-framework/pull/8893) — Python: [BREAKING] Align workflow state attribute lookup （PR / merged / jpalvarezl）
  オブジェクト属性アクセスの名前が厳格化されます。辞書キーとは区別し、属性名が `[A-Za-z][A-Za-z0-9_]*` を満たすか確認してください。
- **⚠ 破壊的変更** [#8840](https://github.com/microsoft/agent-framework/pull/8840) — .NET: [BREAKING] Allow a custom ChatHistoryProvider for workflows hosted as agents （PR / open / marcominerva）
  未マージです。ワークフローをエージェントとして公開する利用者は、履歴プロバイダーの構成 API と既存履歴の扱いを採用前に確認してください。
- **⚠ 破壊的変更** [#8818](https://github.com/microsoft/agent-framework/issues/8818) — Python: [BREAKING][Feature]: Remove pre-2026-0-28 MCP support （Issue / open / eavanvalkenburg）
  旧 MCP 対応の削除提案であり、削除済みではありません。旧プロトコルのサーバーを運用するチームは決定される最低対応版を追跡してください。
- **⚠ 破壊的変更** [#8798](https://github.com/microsoft/agent-framework/pull/8798) — Python: [BREAKING] Add Gemini Embedding 2 and vector task options （PR / merged / eavanvalkenburg）
  Gemini chat の環境変数を `GEMINI_*` から `GOOGLE_*` に移行し、削除された `GeminiSettings` の直接利用を見直してください。
- **⚠ 破壊的変更** [#8794](https://github.com/microsoft/agent-framework/pull/8794) — [BREAKING] Python: Foundry hosting: Responses agent history, options, and background （PR / merged / eavanvalkenburg）
  Responses 利用者は履歴・background の所有元と `store=False` の厳格化を確認してください。steering は SDK 修正取り込みまで利用不可です。
- **⚠ 破壊的変更** [#8769](https://github.com/microsoft/agent-framework/pull/8769) — .NET: [BREAKING] Update AGUI SDK packages to 1.0.0 （PR / merged / SergeyMenshykh）
  AG-UI 利用者は削除された型と `binary` payload を1.0形式へ変更してください。旧形式は新ホストで HTTP 400 になります。
- **⚠ 破壊的変更** [#8754](https://github.com/microsoft/agent-framework/pull/8754) — .NET: [BREAKING] Better support tool changes between runs （PR / merged / westey-m）
  ツールを実行間で変える利用者は実行可能関数の名前重複を解消し、承認要件が変化した保留呼出しが拒否されることを確認してください。
- **⚠ 破壊的変更** [#8741](https://github.com/microsoft/agent-framework/pull/8741) — [BREAKING] Python: Isolate Foundry-hosted MAF state by sandbox （PR / merged / eavanvalkenburg）
  ホスト状態は信頼済みユーザー・sandbox ごとに分離されます。旧非スコープ状態は読まれず移行もされないため、新状態と正しいルーティング ID を準備してください。
- **⚠ 破壊的変更** [#8730](https://github.com/microsoft/agent-framework/pull/8730) — .NET: [BREAKING] Bump Azure.AI.Projects to 3.0.0-beta.3, OpenAI to 2.14.0, and MEAI to 10.10.1 （PR / merged / rogerbarreto）
  Foundry／OpenAI 利用者は依存版を一括整合させ、SDK 型移動・MCP 承認型改名に追従してください。MEAI.OpenAI 10.10.0 との混在は避けます。
- **⚠ 破壊的変更** [#8593](https://github.com/microsoft/agent-framework/pull/8593) — [BREAKING] Python: Persist Foundry invocation sessions （PR / merged / jpalvarezl）
  Invocations 利用者はセッション状態をシリアライズ可能にし、カスタム型の codec と保存先・保持期間を確認してください。
- **⚠ セキュリティ** [#8972](https://github.com/microsoft/agent-framework/pull/8972) — Python: Apply MCP security labels to dynamically loaded tools （PR / merged / eavanvalkenburg）
  SecureMCPToolProxy 利用者は更新後に動的追加・段階的公開の関数にもローカルポリシーが適用されることを確認してください。
- **⚠ セキュリティ** [#8959](https://github.com/microsoft/agent-framework/pull/8959) — Python: build(deps-dev): bump the basics group across 2 directories with 2 updates （PR / closed / dependabot[bot]）
  未マージでクローズされた依存更新です。この PR 単体を修正導入済みと扱わず、実際に解決された uv の版を確認してください。
- **⚠ セキュリティ** [#8942](https://github.com/microsoft/agent-framework/pull/8942) — Python: build(deps-dev): bump uv from 0.12.15 to 0.12.18 in /python/packages/lab in the basics group （PR / merged / dependabot[bot]）
  Windows で wheel をインストールする開発者は uv 0.12.18 以降を利用し、パストラバーサル修正 GHSA-2cv4-cqwr-gwf7 を取り込んでください。
- **⚠ セキュリティ** [#8941](https://github.com/microsoft/agent-framework/pull/8941) — Python: build(deps-dev): bump the basics group across 2 directories with 2 updates （PR / closed / dependabot[bot]）
  未マージでクローズされた依存更新です。Windows の開発環境はマージ済み更新と実際の uv バージョンを確認してください。
- **⚠ セキュリティ** [microsoft/agent-framework#8946](https://github.com/microsoft/agent-framework/pull/8946) — LocalCodeAct の反射経由の検証回避を遮断（マージ済み、手動補足）
  生成コードの `str.format`／`str.format_map` を f-string または `format()` に変更し、カスタム BlockedBuiltins による上書きも点検してください。
- **⚠ セキュリティ** [microsoft/agent-framework#8846](https://github.com/microsoft/agent-framework/pull/8846) — Copilot 添付ファイルの一時保存を利用者専用に隔離（マージ済み、手動補足）
  添付ファイルを処理するホストは更新して OS ごとの一時ファイル権限と失敗時の削除を確認してください。
- **GA 昇格** [#8756](https://github.com/microsoft/agent-framework/pull/8756) — .NET: Add GA computer tool support to Foundry and Foundry hosting （PR / open / rogerbarreto）
  GA computer tool を扱う対応 PR は未マージです。Foundry 利用者は採用前に確定 API とパッケージ公開を確認し、対応済みと解釈しないでください。

自動分類から除外した項目: Purview のメモリ計数不具合 microsoft/agent-framework#8988 は脆弱性修正ではなくオープンの不具合報告です。microsoft/agent-framework#8726／microsoft/agent-framework#7466 は安全パターンへの文書導線整備、microsoft/agent-framework#2254 は機能要求、microsoft/agent-framework#8897／microsoft/agent-framework#8896 はクローズされた提案です。microsoft/agent-framework#8245 は MCP 対応提案であり、廃止決定としては扱いません。

## このリポジトリの要点

- Python Foundry hosting は状態永続化・sandbox 分離・JSON/SSE 応答・履歴所有元をまとめて変更しています。microsoft/agent-framework#8593／microsoft/agent-framework#8741／microsoft/agent-framework#8794／microsoft/agent-framework#8894 の移行を一体で確認してください。
- Gemini の `GOOGLE_*` 設定移行、.NET AG-UI 1.0 と Foundry／OpenAI／MEAI の整合更新、実行間ツール変更は既存利用者に影響する変更です。
- 動的 MCP ポリシー、LocalCodeAct の反射制限、Copilot 添付ファイル隔離を強化。uv の Windows wheel インストール修正も取り込まれました。
- Python 1.20.0 の版更新もマージ済みですが、各変更の利用可否は使用する公開パッケージ版で確認してください。未マージの MCP／GA computer tool 提案とは区別します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8894](https://github.com/microsoft/agent-framework/pull/8894) — [BREAKING] Python: Foundry hosting: parsed and durable Invocations agent runs

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1311 / -196
- マージ日時 (UTC): `2026-10-01 08:57:31`

**変更概要**

Foundry Invocations が会話履歴を管理しないことに対応し、MAF の AgentSession を信頼済みユーザー・sandbox に復元・保存します。
公開 `InvocationRun` と要求パーサー・オプション準備フックを導入しました。
成功応答は JSON、ストリームは `delta`／`done`／`error` の SSE とし、保存完了後に `done` を返します。
同一プロセス内のセッション要求を直列化し、プロセス間の競合は明示的に失敗させます。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/README.md` | 35 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 3 | 1 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 238 | 44 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_request.py` | 37 | 2 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 840 | 51 |
| `python/packages/foundry_hosting/tests/test_invocations_int.py` | 21 | 13 |
| `python/packages/foundry_hosting/tests/test_request.py` | 26 | 2 |
| `python/samples/04-hosting/foundry-hosted-agents/README.md` | 1 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/invocations/basic/README.md` | 68 | 74 |
| `python/samples/04-hosting/foundry-hosted-agents/invocations/basic/main.py` | 42 | 8 |

</details>

<details><summary>コミット (2 件)</summary>

- `b9a7c42` [BREAKING] Python: add parsed durable Foundry Invocations agent runs
- `1eaea68` Python: reject unsafe Invocations agent control options

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 非ストリーム成功は `{"response":"..."}`、ストリームはフレーム化 SSE に変わります。`InvocationRun` の同期／非同期 `parse_request`・`prepare_options`、予約オプション検証を追加しました。
`b9a7c42` が永続実行と wire contract を導入し、`1eaea68` が危険な制御オプションを拒否します。競合は HTTP 409 または型付き SSE エラーで、外部ツール効果の exactly-once は保証しません。

**既存利用者への影響**

呼出元を JSON／SSE に移行してください。一時的に `legacy_wire_format=True` で旧成功形式を維持できますが非推奨警告が出ます。
保存競合・ストリーム中断のエラー処理も確認してください。ネイティブ `workflow=` 対応はこの PR の範囲外です。

### [#8893](https://github.com/microsoft/agent-framework/pull/8893) — Python: [BREAKING] Align workflow state attribute lookup

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +326 / -15
- マージ日時 (UTC): `2026-09-30 11:37:09`

**変更概要**

単独の workflow state と factory 管理の state でオブジェクト属性参照の検証を統一します。
共有バリデーターを通して参照名全体を検査し、末尾改行等の不正な名前を拒否します。
辞書キーアクセスとオブジェクト属性アクセスは区別したままです。
式評価・factory ルーティング・状態取得の回帰テストを追加しました。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/declarative/AGENTS.md` | 3 | 1 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_declarative_base.py` | 2 | 4 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_state.py` | 25 | 6 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_state_path.py` | 12 | 0 |
| `python/packages/declarative/tests/test_declarative_state_path_safety.py` | 130 | 4 |
| `python/packages/declarative/tests/test_graph_executors.py` | 50 | 0 |
| `python/packages/declarative/tests/test_workflow_state.py` | 104 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `d215d27` Align workflow state attribute lookup
- `254f8f9` Use regex for workflow state attribute validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 属性名は `[A-Za-z][A-Za-z0-9_]*` の完全一致が必要で、不正名は指定された default を返します。
`d215d27` が参照を統一し、`254f8f9` が正規表現の検証を導入。辞書キー・record 変換・既存 evaluator fallback・状態 budget エラーは維持されます。

**既存利用者への影響**

従来通っていた単独 state の不正な属性名を修正してください。任意文字のデータキーは辞書アクセスと区別し、default への変化を検証します。

### [#8798](https://github.com/microsoft/agent-framework/pull/8798) — Python: [BREAKING] Add Gemini Embedding 2 and vector task options

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +2222 / -217
- マージ日時 (UTC): `2026-09-29 16:05:28`

**変更概要**

Gemini Embedding 2 のテキスト・マルチモーダル埋め込みクライアントを追加します。
非対称検索の document／query task を呼出し単位で指定し、vector upsert・検索・生成ツールにオプションを伝播します。
Developer API のバッチと Enterprise の単一 content 要求を分け、chat と embedding の SDK 設定を共通化します。
画像・テキスト検索サンプルと SDK ベースのテストを追加しました。

<details><summary>変更ファイル (29 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/feature-usage-bit-registry.md` | 1 | 1 |
| `python/.env.example` | 2 | 2 |
| `python/packages/core/AGENTS.md` | 8 | 0 |
| `python/packages/core/agent_framework/_vectors.py` | 174 | 19 |
| `python/packages/core/agent_framework/gemini/__init__.py` | 3 | 1 |
| `python/packages/core/agent_framework/gemini/__init__.pyi` | 6 | 2 |
| `python/packages/core/tests/core/test_gemini_namespace.py` | 5 | 1 |
| `python/packages/core/tests/core/test_vectors.py` | 204 | 2 |
| `python/packages/gemini/AGENTS.md` | 25 | 3 |
| `python/packages/gemini/README.md` | 89 | 9 |
| `python/packages/gemini/agent_framework_gemini/__init__.py` | 8 | 2 |
| `python/packages/gemini/agent_framework_gemini/_chat_client.py` | 32 | 131 |
| `python/packages/gemini/agent_framework_gemini/_embedding_client.py` | 403 | 0 |
| `python/packages/gemini/agent_framework_gemini/_sdk_client.py` | 129 | 0 |
| `python/packages/gemini/pyproject.toml` | 2 | 2 |
| _... 他 14 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `d6d5afa` Python: add Gemini Embedding 2 and per-operation vector options
- `e47d663` Python: support Enterprise chat alongside Gemini embeddings
- `57ed687` Python: exercise default Gemini and Enterprise integration paths
- `2e0cb5e` Python: centralize Gemini SDK routing metadata

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `GeminiSettings` の export と `GEMINI_API_KEY`／`GEMINI_MODEL` の読取りを廃止し、`GOOGLE_API_KEY`／`GOOGLE_MODEL` を使います。
`GeminiEmbeddingClient`／`RawGeminiEmbeddingClient` は google-genai 2.25+ と `GOOGLE_EMBEDDING_MODEL` を使用。`d6d5afa` が呼出し別 vector options を導入し、`2e0cb5e` が SDK routing metadata を集約しました。flat と by-field options は排他で、次元競合は埋め込み前に失敗します。

**既存利用者への影響**

Gemini chat の環境変数・設定型を移行してください。embedding options を指定しない vector 処理は従来動作を維持します。
Enterprise を使う場合は `GOOGLE_GENAI_USE_ENTERPRISE` と認証を確認してください。

### [#8794](https://github.com/microsoft/agent-framework/pull/8794) — [BREAKING] Python: Foundry hosting: Responses agent history, options, and background

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +3286 / -607
- マージ日時 (UTC): `2026-09-30 08:24:11`

**変更概要**

Responses の外側の保存・background polling と、エージェント／サービスが所有する履歴・background 実行を分離します。
generation fields と `extra_body` を MAF options に変換し、開発者の `prepare_options` フックを追加しました。
`store=False` の要求がホストや内部サービスへ状態を保存しない境界を強化します。
SDK の queue future leak を避けるため、steering は修正版を安全に取り込むまで拒否します。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/README.md` | 113 | 48 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 3 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_request.py` | 156 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 791 | 111 |
| `python/packages/foundry_hosting/tests/test_request.py` | 135 | 0 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 1746 | 14 |
| `python/packages/foundry_hosting/tests/test_responses_int.py` | 2 | 2 |
| `python/samples/04-hosting/foundry-hosted-agents/README.md` | 1 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/.env.example` | 2 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/README.md` | 85 | 44 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/agent_history.py` | 31 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/client.py` | 52 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/main.py` | 6 | 8 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/options.py` | 43 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/basic/provider_background.py` | 39 | 0 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `e2c88e6` feat(python): separate Foundry Responses agent history and background
- `be003ff` docs(python): clarify Foundry provider background recovery
- `57e2628` fix(python): stabilize Responses hosting CI checks
- `4664826` fix(python): protect hosted Responses provider state and options
- `e81632c` fix(python): gate unsafe Foundry Responses steering until SDK fix
- `f79162b` fix(python): preserve provider finish reasons in Responses updates
- `b2af0b8` docs(python): explain Foundry Responses history ownership by mode
- `f45d3b0` refactor(python): name Foundry Responses history and background sources
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `store=False` と矛盾する内部 `store=True` defaults や安全でない構成は明示的に失敗します。
`history_source="agent_server"|"agent"|"service"`、`background_source="agent_server"|"provider"` を分離。constructor の `store=` は `response_store=` の非推奨 alias ですが `history_source` は廃止されません。
`e2c88e6` が分離を導入し、`e81632c` が steering を gate。`steerable_conversations=True` は影響対象 SDK で構築時に失敗します。

**既存利用者への影響**

履歴の所有元と保存設定の組合せを確認し、非保存要求を処理できる構成にしてください。従来の `"agent"` による HistoryProvider／サービス保存は保存要求では維持されます。
steering を利用可能と解釈しないでください。SDK の修正版公開・最低依存版更新が別途必要です。

### [#8769](https://github.com/microsoft/agent-framework/pull/8769) — .NET: [BREAKING] Update AGUI SDK packages to 1.0.0

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +5 / -5
- マージ日時 (UTC): `2026-09-28 09:38:45`

**変更概要**

AG-UI .NET SDK の初の安定版に hosting と SDK consumers を揃えます。
中央管理の5パッケージを0.0.6から1.0.0に更新しました。
MAF の production hosting 自体のコード変更や旧 payload の互換アダプターはありません。
直接 SDK 型を使うアプリと、旧 binary content を送るクライアントが影響対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 5 | 5 |

</details>

<details><summary>コミット (1 件)</summary>

- `3cf5e7f` .NET: Update AGUI SDK packages to 1.0.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `AGUIUserContent` は `AGUIContent` に置換し、`AGUIBinaryInputContent`／`"type":"binary"` は利用できません。
`3cf5e7f` が `AGUI.Abstractions`／`Formatting`／`Protobuf`／`Client`／`Server` を一括更新。媒体に応じて `image`／`audio`／`video`／`document` と入れ子の `source` を使います。

**既存利用者への影響**

明示的な AGUI パッケージ参照と C# 型、送信 JSON を1.0契約に移行してください。旧 binary はエージェント実行前の HTTP binding で400になります。

### [#8754](https://github.com/microsoft/agent-framework/pull/8754) — .NET: [BREAKING] Better support tool changes between runs

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +1256 / -46
- マージ日時 (UTC): `2026-09-28 13:35:11`

**変更概要**

実行間でツール一覧・承認要件が変化しても、古い自動承認を無条件に再利用しないようにします。
保留要求の関数が承認必須へ変化した場合や削除された場合は、古い判断を破棄して呼出しを拒否します。
実行可能な関数名の重複検証を統一しました。
ツール変更・承認 bypass・pending calls の回帰テストを追加しています。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalNotRequiredFunctionBypassingChatClient.cs` | 50 | 19 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalRequirement.cs` | 36 | 6 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgent.cs` | 18 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgentOptions.cs` | 9 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/InvocableFunctionBypassingChatClient.cs` | 35 | 17 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ApprovalNotRequiredFunctionBypassingChatClientTests.cs` | 152 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ApprovalRequirementTests.cs` | 269 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ChatClientAgent_ApprovalBypassTests.cs` | 272 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ChatClientAgent_DuplicateToolNameTests.cs` | 285 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/InvocableFunctionBypassingChatClientTests.cs` | 130 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `dfb9186` Better support tool changes between runs
- `4421415` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 実行可能関数の名前重複は `InvalidOperationException` になります。宣言と実装が同名であることとは区別されます。
`dfb9186` と `4421415` で `ApprovalRequirement` と bypass chat client を修正。実行時に承認不要名を再計算し、古い自動承認の無効化を警告ログに記録します。

**既存利用者への影響**

重複名を解消し、拒否された保留要求をモデルが再要求するフローを確認してください。保留中の承認があるツールの引数・意味を変更する場合は、アプリ側でも互換性を管理します。

### [#8741](https://github.com/microsoft/agent-framework/pull/8741) — [BREAKING] Python: Isolate Foundry-hosted MAF state by sandbox

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1047 / -59
- マージ日時 (UTC): `2026-09-28 10:19:22`

**変更概要**

同一ユーザーの異なる hosted sandbox で状態が衝突することと、同時 turn による上書きを防ぎます。
信頼済みプラットフォーム ID を検証し、store・checkpoint・approval をユーザーと sandbox のハッシュで名前空間化します。
Responses と Invocations のルートを分離し、作成・更新に CAS／ETag 条件を付けます。
旧状態への安全でない fallback は導入しません。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/foundry/__init__.py` | 1 | 0 |
| `python/packages/core/agent_framework/foundry/__init__.pyi` | 2 | 0 |
| `python/packages/core/tests/core/test_foundry_namespace.py` | 3 | 0 |
| `python/packages/foundry_hosting/README.md` | 60 | 7 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 3 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 56 | 12 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 10 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_scope.py` | 64 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_state_store.py` | 90 | 17 |
| `python/packages/foundry_hosting/tests/test_foundry_hosting_imports.py` | 1 | 0 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 320 | 8 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 44 | 1 |
| `python/packages/foundry_hosting/tests/test_scope.py` | 82 | 0 |
| `python/packages/foundry_hosting/tests/test_state_store.py` | 272 | 10 |
| `python/samples/04-hosting/foundry-hosted-agents/invocations/basic/README.md` | 30 | 4 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `1120220` fix(python): isolate Foundry-hosted MAF state by sandbox
- `65c0142` fix(python): trust platform sandbox identity for Foundry state
- `fefcaeb` refactor(python): remove unused Foundry approval context option
- `1f255cb` fix(python): scope persisted Invocations to routed sandbox
- `02932a0` Merge branch 'main' into foundry-scope-foundation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 旧非スコープ hosted 状態は読み取らず移行もしません。公開 `FoundryRequestScope` を追加し、Responses は `FOUNDRY_AGENT_SESSION_ID` を要求します。
`65c0142` が信頼済み sandbox identity を採用し、`1f255cb` が Invocations のルーティングを検証。環境 ID がない Invocations も明示的な query `agent_session_id` が必要で、欠落・重複・不一致は拒否します。

**既存利用者への影響**

新しい状態で開始する計画と正しい platform user／call／session ID を準備してください。旧状態を別 sandbox に fallback させないでください。
カスタム store は CAS／ETag の失敗を処理し、同時要求の競合を確認する必要があります。

### [#8730](https://github.com/microsoft/agent-framework/pull/8730) — .NET: [BREAKING] Bump Azure.AI.Projects to 3.0.0-beta.3, OpenAI to 2.14.0, and MEAI to 10.10.1

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +227 / -124
- マージ日時 (UTC): `2026-09-28 12:43:02`

**変更概要**

Foundry の新 preview と整合する OpenAI／MEAI の依存版をまとめて更新します。
OpenAI 2.14 の型改名と MEAI.OpenAI 10.10.0 の組合せによる `TypeLoadException` を避けます。
Foundry tool の構築方法・memory 型の名前空間を新 SDK に合わせます。
hosted samples では MAF の推移依存を独自に固定する設定を除去しました。

<details><summary>変更ファイル (44 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 7 | 4 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step17_OpenAPITools/Program.cs` | 2 | 2 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step18_BingCustomSearch/Program.cs` | 2 | 2 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step19_SharePoint/Program.cs` | 1 | 1 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step20_MicrosoftFabric/Program.cs` | 1 | 1 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step25_FoundryToolboxMcp/Program.cs` | 1 | 1 |
| `dotnet/samples/02-agents/AgentWithMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/ModelContextProtocol/FoundryAgent_Hosted_MCP/Program.cs` | 3 | 3 |
| `dotnet/samples/02-agents/ModelContextProtocol/FoundryAgent_Hosted_MCP/README.md` | 1 | 1 |
| `dotnet/samples/03-workflows/Declarative/DeepResearch/Program.cs` | 5 | 2 |
| `dotnet/samples/03-workflows/Declarative/InvokeFoundryToolboxMcp/Program.cs` | 1 | 1 |
| `dotnet/samples/03-workflows/Declarative/ToolApproval/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/invocations/Hosted-Invocations-EchoAgent/Hosted-Invocations-EchoAgent.csproj` | 7 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/HostedAgentSkills.csproj` | 7 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/HostedAzureSearchRag.csproj` | 7 | 3 |
| _... 他 29 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `35e84fe` build(dotnet): bump Azure.AI.Projects to 3.0.0-beta.3
- `91af6b2` Merge remote-tracking branch 'origin/main' into bump-azure-ai-project…
- `c85bf95` build(dotnet): bump MEAI.Abstractions and MEAI.OpenAI to 10.10.1
- `f66738e` build(samples): stop pinning MAF deps in hosted samples
- `667587b` Merge branch 'main' into bump-azure-ai-projects-beta3

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Azure.AI.Projects 3.0.0-beta.3、OpenAI 2.14.0、MEAI.Abstractions／OpenAI 10.10.1 に整合更新します。他の MEAI パッケージは10.10.0を維持します。
`GlobalMcpToolCallApprovalPolicy` は `DefaultMcpToolCallApprovalPolicy` に改名。`ProjectsAgentTool.Create*` は tool constructor に置換し、`MemorySearchResultOptions` は Azure.AI.Extensions.OpenAI へ移動しました。
`35e84fe`／`c85bf95` が依存更新、`f66738e` が sample の pin を除去。Azure.AI.Extensions.OpenAI beta.3 を直接参照し、未公開 alpha 依存に起因する NU1603／古い版への解決を避けます。

**既存利用者への影響**

直接 SDK 型を使うコードは型名・名前空間・constructor に追従してください。OpenAI だけを更新せず MEAI.OpenAI も整合させ、hosted sample の独自 pin を点検します。

### [#8593](https://github.com/microsoft/agent-framework/pull/8593) — [BREAKING] Python: Persist Foundry invocation sessions

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +528 / -55
- マージ日時 (UTC): `2026-09-28 08:50:49`

**変更概要**

InvocationsHostServer が会話ごとの live session をプロセス終了まで保持する設計を変更します。
要求ごとに store から読み、cleanup で状態を保存してオブジェクトを解放します。
hosted では Foundry storage、ローカルでは SDK のファイル保存を使います。
stream の iterator／pump を閉じる cleanup と、復元・失敗・キャンセルの回帰テストを追加しました。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 1 | 0 |
| `python/packages/foundry_hosting/README.md` | 20 | 7 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 84 | 19 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_state_store.py` | 22 | 3 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 379 | 26 |
| `python/packages/foundry_hosting/tests/test_state_store.py` | 22 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `0cb3c63` Python: persist invocation sessions through configured storage
- `5c9c367` docs: keep the hosting README focused on usage
- `ca4e92a` Python: address invocation persistence review feedback
- `841136f` docs: clarify session persistence guarantees
- `9cd6cae` Merge remote-tracking branch 'origin/main' into jpalvarezl-invocation…
- `790ef35` Python: simplify invocation persistence around the existing store pro…
- `a5d7a36` Merge remote-tracking branch 'origin/main' into jpalvarezl-invocation…
- `d98199f` Merge remote-tracking branch 'origin/main' into jpalvarezl-invocation…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 状態は live Python object ではなくシリアライズされた session として永続化されます。`agent_session_store_provider` による既存 `AgentSessionStoreProvider` の拡張点を Invocations に適用します。
`0cb3c63` が永続化、`790ef35` が既存 store protocol に整理。既定 store は最後の書込みから30日で失効しますが、全体メモリ／ストレージ quota を導入するものではありません。

**既存利用者への影響**

カスタム状態型には codec が必要で、復元後の object identity は維持されません。独立したローカルアプリは保存ルート／provider を分け、保持期間と同時要求の扱いを確認してください。

### [#8972](https://github.com/microsoft/agent-framework/pull/8972) — Python: Apply MCP security labels to dynamically loaded tools

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +463 / -69
- マージ日時 (UTC): `2026-10-02 12:13:49`

**変更概要**

SecureMCPToolProxy 接続後に発見される関数にも、最初の関数と同じローカルラベルを適用します。
list-change reload・再利用・progressive disclosure の公開前にポリシーを適用します。
setup failure では既存 binding を保持し、新たに獲得した binding を rollback します。
ラベル・ローカル override・未保護 MCP の従来動作をテストします。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 1 | 0 |
| `python/packages/core/agent_framework/_mcp.py` | 18 | 0 |
| `python/packages/core/agent_framework/security.py` | 144 | 68 |
| `python/packages/core/tests/test_security.py` | 300 | 1 |

</details>

<details><summary>コミット (7 件)</summary>

- `9ce0aef` Fix MCP security labels for dynamically loaded tools
- `8897128` Merge remote-tracking branch 'upstream/main' into mcp-security-label-…
- `5a0a771` Add MCP security label fix to 1.20.0 changelog
- `e7b5761` Preserve MCP security binding on setup failures
- `a08adc8` Fix MCP proxy failure test typing
- `6e3d2e7` Roll back newly acquired MCP security bindings
- `995c1d8` Merge branch 'main' into mcp-security-label-lifecycle

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`9ce0aef` が関数ごとの label application と discovery callback を導入し、`e7b5761`／`6e3d2e7` が失敗時の binding lifecycle を保護します。
公開 API の破壊的変更は示されておらず、SecureMCPToolProxy を使わない MCP は従来の挙動を維持します。

**既存利用者への影響**

API 移行は不要ですが、動的に追加された関数・結果にも意図したラベルが付くか検証してください。未保護 MCP に自動で保護を有効化する変更ではありません。

### [#8942](https://github.com/microsoft/agent-framework/pull/8942) — Python: build(deps-dev): bump uv from 0.12.15 to 0.12.18 in /python/packages/lab in the basics group

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `lab` `dependencies`
- 変更行数: +24 / -24
- マージ日時 (UTC): `2026-10-02 01:30:21`

**変更概要**

lab の開発依存 uv を0.12.15から0.12.18へ更新します。
uv 0.12.18 は Windows の wheel installation の path traversal 弱点 GHSA-2cv4-cqwr-gwf7 を修正します。
`pyproject.toml` と lockfile を揃え、開発環境の解決結果を更新しました。
対象は開発ツールであり、MAF のエージェント API 変更ではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/lab/pyproject.toml` | 1 | 1 |
| `python/packages/lab/uv.lock` | 23 | 23 |

</details>

<details><summary>コミット (1 件)</summary>

- `0aa7bd8` build(deps-dev): bump uv in /python/packages/lab in the basics group

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`0aa7bd8` が version constraint と `uv.lock` を更新します。Windows の絶対パスへ正規化される archive entry の拒否を含む upstream 修正を取り込みます。
MAF の公開シグネチャに変更はありません。advisory は Windows が対象です。

**既存利用者への影響**

lab の開発環境を再同期し、外部でインストールした uv も修正版か確認してください。アプリコードの移行は不要です。

### [#8726](https://github.com/microsoft/agent-framework/pull/8726) — Python: docs: cross-reference security patterns from getting-started and provider samples

- 作者: ManoharPaturi / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +43 / -1
- マージ日時 (UTC): `2026-09-28 11:48:22`

**変更概要**

入門・provider・hosting サンプルから、本番向けの安全パターンを発見しやすくします。
SecureAgentConfig、prompt injection 対策、機密性、MCP tool proxy への文書導線を追加しました。
Learn の Agent Safety 文書を主要ガイダンスとして紹介します。
単純なサンプルに新たな runtime wiring は追加しません。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/01-get-started/02_add_tools.py` | 5 | 0 |
| `python/samples/01-get-started/README.md` | 11 | 0 |
| `python/samples/02-agents/providers/README.md` | 9 | 0 |
| `python/samples/04-hosting/README.md` | 5 | 0 |
| `python/samples/README.md` | 13 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `00519d9` docs(samples): link get-started and provider samples to security patt…
- `fffdf9b` docs(samples): add Learn Agent Safety doc as primary security guidanc…
- `1086a9d` Merge branch 'main' into docs/security-samples-discoverability

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`00519d9` が各 README の相互リンク、`fffdf9b` が Learn のガイダンスを追加。変更は文書と参照コメントであり、API 変更・実行時の防御自動適用はありません。
安全性に関する文書整備をセキュリティ修正と自動分類したため、重要変更一覧では修正と区別しました。

**既存利用者への影響**

移行は不要です。サンプルを本番利用する場合は外部入力・権限のあるツールの安全策を別途組み込んでください。

### [microsoft/agent-framework#8946](https://github.com/microsoft/agent-framework/pull/8946) — LocalCodeAct の反射検証を強化

- 作者: eavanvalkenburg / 状態: MERGED
- 変更行数: +96 / -3
- マージ日時 (UTC): `2026-10-02 14:58:30`

**変更概要**

Python loader から危険な builtin を復元する経路と、文字列置換フィールドの反射 traversal を生成コード実行前に遮断します。
AST だけでは文字列内の参照を検証できないため、対象 method attribute を保守的に禁止します。
直接・alias・保持済み参照・入れ子 format spec の回帰テストと文書を追加しました。

<details><summary>変更ファイル・コミット</summary>

- validator.py、LocalCodeAct README、LocalExecuteCodeFunctionIntegrationTests.cs
- `2c5eb48`: loader access を遮断
- `62624d5`: `__spec__` access を遮断
- `ce6e699`: str.format の反射 bypass を遮断

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既定 BlockedBuiltins に `__loader__`／`__spec__` を追加し、`format`／`format_map` の method attribute を拒否します。f-string と安全な `format()` builtin は維持します。
公開シグネチャは変えませんが、従来の生成コードの一部は拒否される防御強化です。明示的な BlockedBuiltins 置換の意味は変わりません。

**既存利用者への影響**

生成コードを f-string／`format()` に変更し、カスタム禁止リストにも必要な制限が残るか確認してください。

### [microsoft/agent-framework#8846](https://github.com/microsoft/agent-framework/pull/8846) — Copilot 添付ファイルの一時保存を隔離

- 作者: rogerbarreto / 状態: MERGED
- 変更行数: +318 / -14
- マージ日時 (UTC): `2026-10-05 14:31:46`

**変更概要**

Copilot SDK に渡す添付ファイルの一時保存を、各 OS で現在の利用者だけに制限します。
Unix の owner-only mode と Windows の保護された current-user access rule を設定します。
準備中の失敗でも部分的な一時状態を削除し、OS 別の回帰テストを追加しました。

<details><summary>変更ファイル・コミット</summary>

- GitHubCopilotAgent.cs、GitHubCopilotAgentTests.cs
- `c0bacb9`: attachment staging の隔離
- `3a4dc25`: staging assurance の検証

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

添付準備の権限設定と失敗時の cleanup ordering を変更します。公開 API と既存の添付動作は維持されます。

**既存利用者への影響**

コード移行は不要です。Windows／Unix の実行ユーザー・一時領域の権限で添付処理が動作するか確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9064 | .NET: test: add loopback destination regression coverage | baywet | <https://github.com/microsoft/agent-framework/pull/9064> |
| #8855 | .NET: Validate handoff request lifecycle before routing | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8855> |
| #8933 | .NET: Synchronize background task metadata and defer publication until session creation | quifox | <https://github.com/microsoft/agent-framework/pull/8933> |
| #9055 | Python: Preserve Foundry Toolbox container file citations | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9055> |
| #8846 | .NET: Isolate GitHub Copilot attachment staging | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8846> |
| #8931 | .NET: Preserve atomic cache creation across factory failures | quifox | <https://github.com/microsoft/agent-framework/pull/8931> |
| #9037 | build(deps): bump the codeql-actions group across 1 directory with 3 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9037> |
| #9039 | build(deps): bump astral-sh/setup-uv from 10.1.0 to 10.2.0 in /.github/actions/python-setup | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9039> |
| #9038 | build(deps): bump astral-sh/setup-uv from 10.1.0 to 10.2.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9038> |
| #9026 | Python: Reject unknown participants picked by the group chat orchestrator agent | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9026> |
| #9005 | Python: Demonstrate group chat response filtering before broadcast | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9005> |
| #9001 | Python: Isolate the mixed middleware warning assertion | quifox | <https://github.com/microsoft/agent-framework/pull/9001> |
| #8997 | Python: Preserve streamed logprobs across empty chunks | quifox | <https://github.com/microsoft/agent-framework/pull/8997> |
| #8974 | Python: Search() keeps a falsy value instead of treating it as Blank | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/8974> |
| #8784 | Python: [Feature] Allow tools to declare standing guidance appended to results | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8784> |
| #8506 | Python: [Feature]: Publish which arguments an invocation's variable expansion rewrote | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8506> |
| #9043 | Python: Fix persistent PowerShell sessions dropping table-formatted output | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9043> |
| #8946 | .NET: Harden LocalCodeAct reflection validation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8946> |
| #8702 | Python: Purview: Add streaming buffering and improve docs | westey-m | <https://github.com/microsoft/agent-framework/pull/8702> |
| #8969 | Python: Isolate OpenAI metadata defaults from Azure routes | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8969> |
| #8971 | Python: Reduce ResponseStream hot-path latency | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8971> |
| #8968 | Python: Bump package versions for 1.20.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8968> |
| #8932 | .NET: Skip empty Foundry memory context messages | quifox | <https://github.com/microsoft/agent-framework/pull/8932> |
| #8773 | Python: fix(openai): close the chat-completions SDK stream when the consumer stops early | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8773> |
| #8787 | Python: Accept the registered audio/mpeg media type for MP3 input content | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/8787> |
| #8966 | Python: host native workflows over Foundry Invocations | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8966> |
| #8823 | Python: Add the missing py.typed markers, and check for them going forward | feiiiiii5 | <https://github.com/microsoft/agent-framework/pull/8823> |
| #8850 | Python: Parse fenced JSON from the group chat orchestrator agent | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/8850> |
| #8887 | Python: Fix functional workflow replay identity | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8887> |
| #8948 | Python: preserve Responses API citations through AG-UI | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8948> |
| #8934 | Python: Preserve shell outcome fidelity | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8934> |
| #8945 | Python: build(deps-dev): bump agent-framework-openai from 1.14.3 to 1.14.4 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8945> |
| #8947 | Python: host native workflows over Foundry Responses | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8947> |
| #8937 | Python: Improve MCP skill archive loading consistency | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8937> |
| #8872 | .NET: Return only the items between 'after' and 'before' when listing response input items | Laurianti | <https://github.com/microsoft/agent-framework/pull/8872> |
| #8870 | .NET: Reject a MaxBatchSize outside 1..100 in CosmosChatHistoryProvider | Laurianti | <https://github.com/microsoft/agent-framework/pull/8870> |
| #8491 | .NET: document A2A authentication and tool authorization | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8491> |
| #8879 | .NET: Update retired Claude model in 04_MultiModelService sample | simonether | <https://github.com/microsoft/agent-framework/pull/8879> |
| #8868 | Python: Forward function_invocation_kwargs to GitHubCopilotAgent tools | droideronline | <https://github.com/microsoft/agent-framework/pull/8868> |
| #8899 | Python: Harden Foundry Responses integrations and sandbox isolation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8899> |
| #8602 | Python: Forward invocation kwargs during nested workflow cancellation | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8602> |
| #8720 | Python: fix(openai): route unmarked shell call to registered local executor | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8720> |
| #8844 | Python: support ChatKit generated image conversion | quifox | <https://github.com/microsoft/agent-framework/pull/8844> |
| #8917 | Python: fix(ollama): reject non-image data content instead of sending it as an image | Leela0o5 | <https://github.com/microsoft/agent-framework/pull/8917> |
| #8926 | Python: validate non-optional union settings | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8926> |
| #8928 | Python: fix(ollama): preserve zero embedding keep_alive | rksharma-owg | <https://github.com/microsoft/agent-framework/pull/8928> |
| #8921 | Python: build(deps): bump pyjwt from 2.14.0 to 2.15.0 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8921> |
| #8923 | Python: build(deps): bump pyjwt from 2.14.0 to 2.15.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8923> |
| #8922 | Python: build(deps): bump urllib3 from 2.7.0 to 2.8.0 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8922> |
| #8924 | Python: build(deps): bump urllib3 from 2.7.0 to 2.8.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8924> |
| #8873 | .NET: Fix Foundry MCP approval replay IDs | baywet | <https://github.com/microsoft/agent-framework/pull/8873> |
| #8749 | Python: Add opt-in FunctionInvocationContext injection for skill scripts | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8749> |
| #8895 | Python: avoid spurious warnings for staged approvals | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8895> |
| #8877 | .NET: Preserve A2A run errors when session save fails | quifox | <https://github.com/microsoft/agent-framework/pull/8877> |
| #8883 | Python: Allow RedisHistoryProvider to borrow a Redis client | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8883> |
| #8885 | .NET: Publish synthesized terminal responses with their events | quifox | <https://github.com/microsoft/agent-framework/pull/8885> |
| #8892 | chore: add Sophia Ramsey as Python code owner | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8892> |
| #8843 | Python: support ChatKit structured input conversion | quifox | <https://github.com/microsoft/agent-framework/pull/8843> |
| #8803 | Python: fix(telegram): ignore commands addressed to other bots | dakjdakd | <https://github.com/microsoft/agent-framework/pull/8803> |
| #8882 | Python: Bump locked OpenAI SDK to 3.22.1 | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8882> |
| #8863 | Python: build(deps): bump oauthlib from 3.3.1 to 4.0.0 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8863> |
| #8864 | Python: build(deps): bump pyjwt from 2.13.0 to 2.14.0 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8864> |
| #8866 | Python: build(deps): bump oauthlib from 3.3.1 to 4.0.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8866> |
| #8867 | Python: build(deps): bump pyjwt from 2.13.0 to 2.14.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8867> |
| #8847 | .NET: Validate HTTP header delimiters | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8847> |
| #8845 | .NET: Allow compaction for per-service-call local chat history | Copilot | <https://github.com/microsoft/agent-framework/pull/8845> |
| #8672 | Python: Make AG-UI runs disconnect durable | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8672> |
| #8813 | .NET: Propagate ChatHistoryMemoryProvider caller cancellation | quifox | <https://github.com/microsoft/agent-framework/pull/8813> |
| #8834 | .NET: Bind MCP approval headers to approved invocation | baywet | <https://github.com/microsoft/agent-framework/pull/8834> |
| #8837 | .NET: Reject protected declarative agent provider inputs | baywet | <https://github.com/microsoft/agent-framework/pull/8837> |
| #8839 | .NET: Reject protected declarative function invocation values | baywet | <https://github.com/microsoft/agent-framework/pull/8839> |
| #8673 | Python: Support knowledge_source_params in AzureAISearchContextProvider | saquibjawedbit | <https://github.com/microsoft/agent-framework/pull/8673> |
| #8800 | Python: fix(core): preserve repeated turns in history persistence | dakjdakd | <https://github.com/microsoft/agent-framework/pull/8800> |
| #8815 | Python: fix(ollama): send the tool name on tool result messages | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8815> |
| #8822 | Python: docs: correct three README errors found by following them | feiiiiii5 | <https://github.com/microsoft/agent-framework/pull/8822> |
| #8832 | .NET: Reject protected values in declarative MCP invocations | baywet | <https://github.com/microsoft/agent-framework/pull/8832> |
| #8829 | Python: Add gates and buffering to ResponseStream | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8829> |
| #8680 | Python: Send Bedrock guardrailConfig and additionalModelRequestFields options to Converse | kimnamu | <https://github.com/microsoft/agent-framework/pull/8680> |
| #8699 | Python: fix(core): treat a missing text delta as empty when adding text content | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8699> |
| #8809 | .NET: Honor a zero message limit in ValkeyChatHistoryProvider | Laurianti | <https://github.com/microsoft/agent-framework/pull/8809> |
| #8805 | .NET: fix(harness): honor cancellation while waiting for background agents | dakjdakd | <https://github.com/microsoft/agent-framework/pull/8805> |
| #8827 | .NET: Remove unused GitTag property | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8827> |
| #8812 | .NET: Dispose AI context streaming enumerators on early exit | quifox | <https://github.com/microsoft/agent-framework/pull/8812> |
| #8713 | .NET: Python: Add optional OAuth consent origin allowlist to Foundry hosting | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8713> |
| #8733 | Python: fix(core): leave out description for MCP prompt arguments that have none | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8733> |
| #8816 | Python: fix(anthropic): don't mutate caller metadata when mapping user to user_id | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8816> |
| #8766 | Python: Improve local shell filtering sample | westey-m | <https://github.com/microsoft/agent-framework/pull/8766> |
| #8592 | Python: Add TypeSafe AI connector | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8592> |
| #8807 | Python: Emit AG-UI RUN_STARTED before the agent runs when IDs are supplied | gabe-santana | <https://github.com/microsoft/agent-framework/pull/8807> |
| #8806 | .NET: Update version for 1.23.0 release | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8806> |
| #8751 | Python: Add native computer use to Responses clients | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8751> |
| #8721 | .NET: Add origin pinning to Foundry toolbox MCP client | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8721> |
| #8717 | Python: Clear stale Foundry toolbox request context | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8717> |
| #8797 | .NET: fix: declarative workflow http variables | baywet | <https://github.com/microsoft/agent-framework/pull/8797> |
| #8656 | .NET: Fix workflow topology edge multiplicity comparison | baywet | <https://github.com/microsoft/agent-framework/pull/8656> |
| #8606 | .NET: Store created external input messages | baywet | <https://github.com/microsoft/agent-framework/pull/8606> |
| #8725 | Python: add a MongoDB agent RAG sample | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8725> |
| #8796 | .NET: Propagate TextSearchProvider caller cancellation | quifox | <https://github.com/microsoft/agent-framework/pull/8796> |
| #8715 | .NET: Validate Foundry client headers before transport | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8715> |
| #8755 | Python: stop the MCP lifecycle owner after a failed connect | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8755> |
| #8771 | Python: Keep null fields in negated Azure Cosmos DB eq filters | nniiovoo | <https://github.com/microsoft/agent-framework/pull/8771> |
| #8780 | Python: fail closed when approval binding is unavailable (#8761) | leilei3167 | <https://github.com/microsoft/agent-framework/pull/8780> |
| #8722 | Python: fix(foundry_hosting): send Foundry-Features header on toolbox requests | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8722> |
| #8723 | Python: fix(core): allow checkpoint deserialization for orchestrations | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8723> |
| #8783 | build(deps): bump the codeql-actions group across 1 directory with 3 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8783> |
| #8792 | Python: Skip slow Windows 3.15 tests and DuckDB source builds | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8792> |
| #8791 | Python: Fix Foundry hosting test teardown across pytest retries | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/8791> |
| #8457 | Python: handle concurrent FileSystemAgentFileStore deletion | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8457> |
| #8648 | Python: Fix middleware type detection with postponed annotations | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/8648> |
| #8710 | Python: return actionable file-access write path errors | lakers-abing | <https://github.com/microsoft/agent-framework/pull/8710> |
| #8734 | Python: fix(ag-ui): read tool_call_id on TOOL_CALL_RESULT events | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8734> |
| #8735 | Python: fix(anthropic): copy the response_format schema instead of modifying it | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8735> |
| #8736 | Python: fix(providers): send a single stop string as a list in Gemini, Bedrock, Anthropic and Ollama | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8736> |
| #8737 | Python: fix(ag-ui): convert input_image parts to image content | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8737> |
| #8739 | Python: Deduplicate fan-out selection results so each target runs once | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/8739> |
| #8778 | Python: fix(core): report unreadable history records on append | feiiiiii5 | <https://github.com/microsoft/agent-framework/pull/8778> |
| #8774 | Python: fix(core): ResponseStream Transform Hook & Mapper Error Boundary | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/8774> |
| #8781 | Python: .NET: Python: clarify CodeAct guest packages and host network access | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8781> |
| #8727 | Python: build(deps-dev): bump the basics group in /python/packages/lab with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8727> |
| #8728 | Python: build(deps): bump huggingface-hub from 1.31.0 to 1.32.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8728> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9098 | Python: Read AZURE_OPENAI_API_VERSION before applying the Azure client default | open | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9098> |
| PR | #9096 | Python: Preserve substituted values in declarative templates | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9096> |
| PR | #9094 | Python: Preserve AG-UI citations through client and agent streaming | open | quifox | <https://github.com/microsoft/agent-framework/pull/9094> |
| PR | #9035 | Python: Replace invalid characters in handoff tool names | open | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9035> |
| PR | #9091 | Python: Honor BreakLoop signals in declarative Foreach workflows | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9091> |
| PR | #9085 | Python: Update canonical document status after restored upload retries | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9085> |
| PR | #9087 | Python: Avoid generated executor ID collisions in declarative workflows | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9087> |
| PR | #9089 | Python: Ignore braces inside strings when parsing the Magentic progress ledger | open | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9089> |
| PR | #8824 | Python: Fix tool argument validation for datetime, set and tuple parameters | open | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/8824> |
| PR | #9082 | Python: preserve distinct Mermaid workflow node identities | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9082> |
| PR | #9080 | .NET: Keep resilient tool-call snapshots consistent | open | jstar0 | <https://github.com/microsoft/agent-framework/pull/9080> |
| PR | #8957 | Python: Fix code interpreter deltas dropped on prefix collision | open | cr-sbarbouche | <https://github.com/microsoft/agent-framework/pull/8957> |
| PR | #9077 | Python: parse scientific notation in declarative numeric values | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9077> |
| PR | #9079 | Python: preserve metadata-like text in memory topic summaries | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9079> |
| PR | #9071 | .NET: Reject sensitive declarative identifiers | open | baywet | <https://github.com/microsoft/agent-framework/pull/9071> |
| PR | #9070 | Python: [Python/.NET] Normalize Foundry sample configuration | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9070> |
| PR | #9075 | Python: Preserve image-only messages in Azure AI Search retrieval | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9075> |
| PR | #9073 | Python: Fix quoted arguments in declarative concatenation | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9073> |
| PR | #9036 | Python: fix(core): serialize Pydantic tool results in JSON mode | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/9036> |
| PR | #9068 | Python: Preserve reusable declarative model options | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9068> |
| PR | #9069 | Python: Omit null fields from Redis context writes | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9069> |
| PR | #8891 | Python: Support Responses API server-side compaction with store=false | open | droideronline | <https://github.com/microsoft/agent-framework/pull/8891> |
| PR | #8992 | Python: Restore DevUI context provider metadata | open | dhairyajangir | <https://github.com/microsoft/agent-framework/pull/8992> |
| PR | #9063 | Python: Reuse Redis context index connection for schema validation | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9063> |
| PR | #9061 | Python: Fix in-memory UUID key lookup and deletion | open | LE0-Lin | <https://github.com/microsoft/agent-framework/pull/9061> |
| PR | #9030 | Python: docs: persist the session in the hosting quickstart | open | BichengWang | <https://github.com/microsoft/agent-framework/pull/9030> |
| PR | #8995 | Python: Python + .NET: add AsyncRequestBroker and shell command audit log | open | marklicata | <https://github.com/microsoft/agent-framework/pull/8995> |
| PR | #8994 | Python: Python + .NET: add AgentBudget for autonomous loop resource limits | open | marklicata | <https://github.com/microsoft/agent-framework/pull/8994> |
| PR | #8993 | Python: Python + .NET: add signal protocol for autonomous agent loops | open | marklicata | <https://github.com/microsoft/agent-framework/pull/8993> |
| PR | #8853 | Python: Isolate provider-owned state in agent tools | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8853> |
| PR | #8848 | .NET: Isolate Foundry toolbox response cache | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8848> |
| PR | #8852 | Python: Clarify Foundry agent tool ownership | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8852> |
| PR | #9059 | Python: Fix stale Foundry Toolbox call IDs | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9059> |
| PR | #8936 | Python: fix(bedrock): keep reasoning content so extended thinking works with tool calls | open | Leela0o5 | <https://github.com/microsoft/agent-framework/pull/8936> |
| PR | #9049 | Python: honor tool_choice="none" in OllamaChatClient | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9049> |
| PR | #9058 | Python: make streamed text coalescing linear | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9058> |
| PR | #9015 | Python: sample an external content gate for an approved fetch tool | open | hexablob | <https://github.com/microsoft/agent-framework/pull/9015> |
| PR | #9057 | .NET: Harden LocalCodeAct capability validation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9057> |
| PR | #9056 | Python: allow empty A2A attachment payloads | open | fhgffy | <https://github.com/microsoft/agent-framework/pull/9056> |
| PR | #8990 | Python: Fix Purview cache size accounting when replacing entries | open | dhairyajangir | <https://github.com/microsoft/agent-framework/pull/8990> |
| PR | #9053 | Python: sanitize handoff tool names for agent names with spaces | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9053> |
| PR | #9052 | Python: fix Purview cache accounting when replacing entries | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9052> |
| PR | #9024 | Python: Preserve inferred nested tool argument types | open | quifox | <https://github.com/microsoft/agent-framework/pull/9024> |
| PR | #9051 | Python: preserve status messages in terminal A2A task snapshots | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9051> |
| PR | #9050 | Python: Run local sibling tools in declaration-only mixed batches | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9050> |
| PR | #9047 | Python: recover queued persistent shell commands | open | fhgffy | <https://github.com/microsoft/agent-framework/pull/9047> |
| PR | #8918 | Python: Fix data URI validation and media type detection | open | charan-rathore | <https://github.com/microsoft/agent-framework/pull/8918> |
| PR | #9040 | Python: fix(core): Distributed agent orchestration with pluggable BackgroundTaskRuntimeStore | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/9040> |
| PR | #8801 | .NET: Add AgentSessionStore.DeleteSessionAsync to the Abstraction | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/8801> |
| PR | #8851 | Python: Keep every queued approval result in the AG-UI thread snapshot | open | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/8851> |
| PR | #9032 | Python: Serialize file edits across providers sharing an AgentFileStore | open | nefayran | <https://github.com/microsoft/agent-framework/pull/9032> |
| PR | #8953 | Python: fix(core): fold streamed text runs in one pass instead of repeated += | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8953> |
| PR | #9029 | Python: fix(core): warn when a streamed run registers result gates without buffering | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9029> |
| PR | #9017 | .NET: Preserve lazy request messages through agent invocation | open | LEN5010 | <https://github.com/microsoft/agent-framework/pull/9017> |
| PR | #9028 | Python: Await async callable aggregators in ConcurrentBuilder | open | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9028> |
| PR | #9009 | .NET: Add Container Apps Dynamic Sessions samples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9009> |
| PR | #9004 | .NET: [BREAKING] Harness: Request concise progress instead of private reasoning | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9004> |
| PR | #9006 | .NET: Explain DevUI session persistence across requests | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9006> |
| PR | #9012 | .NET: Preserve explicit null session state across roundtrips | open | LEN5010 | <https://github.com/microsoft/agent-framework/pull/9012> |
| PR | #9013 | .NET: Honor disabled recent search memory | open | LEN5010 | <https://github.com/microsoft/agent-framework/pull/9013> |
| PR | #8984 | Python: Honor proxy environment variables in connector-owned TypeSafe clients | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8984> |
| PR | #9008 | .NET: Enable tool search in Foundry Toolbox samples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9008> |
| PR | #9007 | .NET: fix(dotnet): register AG-UI interrupt content in server JSON options | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9007> |
| PR | #9003 | .NET: Add Copilot Studio agent sample and setup guide | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9003> |
| PR | #8999 | Python: Retain terminal A2A Task status messages | open | quifox | <https://github.com/microsoft/agent-framework/pull/8999> |
| PR | #9002 | Python: Sramsey/python continuation token fix | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/9002> |
| PR | #8985 | Python: [Work in progress] Minor fixes to code comments | open | dargilco | <https://github.com/microsoft/agent-framework/pull/8985> |
| PR | #8987 | Python: fix(ollama): omit tools when tool_choice is none | open | ankit2235 | <https://github.com/microsoft/agent-framework/pull/8987> |
| PR | #8982 | Python: Fix Qdrant null/presence filters on Qdrant server 1.19 | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8982> |
| PR | #8980 | Python: Honor allow_multiple_tool_calls in AnthropicClient when tool_choice is unset | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8980> |
| PR | #8978 | Python: Surface Anthropic citations_delta annotations when streaming | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8978> |
| PR | #8976 | Python: Surface oauth_consent_request in non-streaming Foundry responses | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8976> |
| PR | #8859 | .NET: Add Microsoft.Agents.AI.TypeSafe with Jev as a tool and as an IChatClient (alpha) | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8859> |
| PR | #8970 | Python: Bound harness file memory with quotas and retention | open | quifox | <https://github.com/microsoft/agent-framework/pull/8970> |
| PR | #8819 | Python: Fix/7859 discard pending state | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/8819> |
| PR | #8965 | Python: Honor a zero handoff autonomous turn limit instead of defaulting to 50 | open | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/8965> |
| PR | #8951 | Python: Preserve method tool invocation limits | open | barry166 | <https://github.com/microsoft/agent-framework/pull/8951> |
| PR | #8960 | Python: sort MCP inputSchema properties deterministically for prompt caching | open | Prognosticate-X | <https://github.com/microsoft/agent-framework/pull/8960> |
| PR | #8943 | build(deps-dev): bump the python-type-checkers group across 1 directory with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8943> |
| PR | #8838 | .NET: Fix compaction updates with repeated todo messages | open | Punisheroot | <https://github.com/microsoft/agent-framework/pull/8838> |
| PR | #8920 | Python: Add NVIDIA NIM embedding client package | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8920> |
| PR | #8830 | Python: Preserve the AG-UI RUN_ERROR code in AGUIChatClient | open | gabe-santana | <https://github.com/microsoft/agent-framework/pull/8830> |
| PR | #8925 | .NET: document Mem0 memory setup and session scope | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8925> |
| PR | #8875 | Python: Refuse to save Cosmos DB checkpoints that cannot be restored | open | nniiovoo | <https://github.com/microsoft/agent-framework/pull/8875> |
| PR | #8886 | Python: Add ADR 0044 for content identity and protocol metadata | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8886> |
| PR | #8888 | Bump brace-expansion 1.x to 1.1.21 in devui frontend (GHSA-q2hr-2g5m-vwhr) | open | Copilot | <https://github.com/microsoft/agent-framework/pull/8888> |
| PR | #8857 | Python: Add max reasoning effort option | open | demoray | <https://github.com/microsoft/agent-framework/pull/8857> |
| PR | #8840 | .NET: [BREAKING] Allow a custom ChatHistoryProvider for workflows hosted as agents | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/8840> |
| PR | #8790 | .NET: [.NET] Include AG-UI RunAgentInput.Context in model input | open | lmtyy | <https://github.com/microsoft/agent-framework/pull/8790> |
| PR | #8788 | Revise Transparency FAQ with new content and updates | open | macosx-fromsource | <https://github.com/microsoft/agent-framework/pull/8788> |
| PR | #9065 | .NET: Reject sensitive declarative identifiers | closed | baywet | <https://github.com/microsoft/agent-framework/pull/9065> |
| PR | #9022 | Python: fix: run executable sibling tools alongside declaration-only calls (#8898) | closed | Li-john1021 | <https://github.com/microsoft/agent-framework/pull/9022> |
| PR | #8634 | Python: Preserve metadata in raw-data content mappings | closed | Yufei-Z | <https://github.com/microsoft/agent-framework/pull/8634> |
| PR | #8173 | Python: feat: add Amazon Bedrock Knowledge Base tool and context provider | closed | PVidyadhar | <https://github.com/microsoft/agent-framework/pull/8173> |
| PR | #8785 | Python: reuse Foundry session-store client within each response | closed | harsheet-shah | <https://github.com/microsoft/agent-framework/pull/8785> |
| PR | #8959 | Python: build(deps-dev): bump the basics group across 2 directories with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8959> |
| PR | #8635 | Python: Reject oversized MessagePack history records before appending | closed | Yufei-Z | <https://github.com/microsoft/agent-framework/pull/8635> |
| PR | #8963 | Python: Accept data URI parameters and default the data URI media type | closed | nefayran | <https://github.com/microsoft/agent-framework/pull/8963> |
| PR | #8941 | Python: build(deps-dev): bump the basics group across 2 directories with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8941> |
| PR | #8944 | Python: build(deps): bump agent-framework-core from 1.18.0 to 1.19.0 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8944> |
| PR | #8915 | Python: add read-only SwarmMemo MCP sample | closed | TheIrvin | <https://github.com/microsoft/agent-framework/pull/8915> |
| PR | #8854 | Python: refresh agent-level run tools before each function-calling turn | closed | sivakumar-mahalingam | <https://github.com/microsoft/agent-framework/pull/8854> |
| PR | #8897 | feat: Add NTI Security Wrapper for post-quantum agent governance | closed | abisheakp197 | <https://github.com/microsoft/agent-framework/pull/8897> |
| PR | #8705 | .NET: Sample Implementation of an OpenAI-specific .AsAIAgent() Implementation could look like. | closed | rwjdk | <https://github.com/microsoft/agent-framework/pull/8705> |
| PR | #8889 | Python: keep an in-progress continuation_token on the aggregated response | closed | liwenjie200543 | <https://github.com/microsoft/agent-framework/pull/8889> |
| PR | #8858 | Python: fix LocalShellTool on self-hosted Foundry agents | closed | alkaiserItron | <https://github.com/microsoft/agent-framework/pull/8858> |
| PR | #8621 | Python: fix(core): give each file memory its own description sidecar | closed | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8621> |
| PR | #8618 | Python: Foundry Hosting - support conversation branching | closed | Shivani767 | <https://github.com/microsoft/agent-framework/pull/8618> |
| PR | #8281 | Python: perf(foundry-hosting): cache FoundryStateStore in FoundryAgentSessionStore | closed | harsheet-shah | <https://github.com/microsoft/agent-framework/pull/8281> |
| PR | #8440 | Python: add opt-in deferred session persistence to foundry_hosting | closed | harsheet-shah | <https://github.com/microsoft/agent-framework/pull/8440> |
| PR | #8488 | Python: fix(python): preserve CostControl budget failures in hosted Responses | closed | banibrata-de | <https://github.com/microsoft/agent-framework/pull/8488> |
| PR | #8665 | Python: Fix tool argument validation for datetime, set and tuple parameters | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/8665> |
| PR | #8716 | build(deps-dev): bump the basics group across 1 directory with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8716> |
| Issue | #9097 | Python: [Bug]: AZURE_OPENAI_API_VERSION is ignored by the OpenAI clients on the Azure route | open | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9097> |
| Issue | #9095 | Python: [Bug]: Template interpolation rewrites substituted placeholder text | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9095> |
| Issue | #9092 | .NET: Proposal: add an llms.txt | open | BrethofAI | <https://github.com/microsoft/agent-framework/issues/9092> |
| Issue | #9093 | Python: [Bug]: Late AG-UI citations create duplicate messages through public streaming aggregation | open | quifox | <https://github.com/microsoft/agent-framework/issues/9093> |
| Issue | #9083 | Python: [Bug]: Streaming tool calls from Claude deployments in Foundry are silently dropped (missing `output_item.added`, `function_call_arguments.done` ignored) | open | svandekrol | <https://github.com/microsoft/agent-framework/issues/9083> |
| Issue | #9090 | Python: BreakLoop continues remaining Foreach iterations | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9090> |
| Issue | #9088 | Python: [Bug]: Magentic progress ledger fails to parse when a string value contains a brace | open | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9088> |
| Issue | #9086 | Python: Generated declarative executor IDs collide with authored action IDs | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9086> |
| Issue | #9084 | Python: Restored Content Understanding upload retries leave document status stale | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9084> |
| Issue | #9081 | Python: WorkflowViz Mermaid export merges distinct executor IDs | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9081> |
| Issue | #9033 | .NET: Foundry Hosting resilient recovery of a non-workflow agent fails with "No tool output found for function call" when the crash lands between a tool call and its result | open | shashaa35 | <https://github.com/microsoft/agent-framework/issues/9033> |
| Issue | #9078 | Python: memory topic summary labels overwrite stored metadata on reload | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9078> |
| Issue | #9076 | Python: ParseValue converts scientific notation without a decimal point to zero | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9076> |
| Issue | #9074 | .NET: Python: Azure AI Search drops image-only messages before agentic retrieval | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9074> |
| Issue | #9072 | Python: Declarative concatenation treats quoted expressions as literal text | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9072> |
| Issue | #8958 | Python: [Bug]: A2A agents collapse tool calls to text/data parts — FunctionCallContent/FunctionResultContent are lost across the A2A boundary, so AG-UI never emits TOOL_CALL_*/TOOL_CALL_RESULT | open | savannahknight | <https://github.com/microsoft/agent-framework/issues/8958> |
| Issue | #9067 | Python: [Bug]: Injected Redis context indexes cannot encode optional null message fields | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9067> |
| Issue | #9066 | Python: [Bug]: Declarative agent creation mutates reusable model options | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9066> |
| Issue | #9062 | Python: [Bug]: Redis context schema checks ignore the injected index connection | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9062> |
| Issue | #9060 | Python: [Bug]: InMemoryCollection cannot get or delete records by native UUID keys | open | LE0-Lin | <https://github.com/microsoft/agent-framework/issues/9060> |
| Issue | #9054 | Python: [Bug]: A2A rejects zero-byte attachments | open | fhgffy | <https://github.com/microsoft/agent-framework/issues/9054> |
| Issue | #9048 | .NET: [Feature]: Make ChatClientAgentRunOptions extensible for custom and delegating agents | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/9048> |
| Issue | #9041 | Python: [Bug]: UserMessage/AgentMessage return different shapes from WorkflowState and DeclarativeWorkflowState | open | he-yufeng | <https://github.com/microsoft/agent-framework/issues/9041> |
| Issue | #9031 | Python: [Bug]: Re-polling a background response after a failed poll re-runs its function calls, repeating their side effects | open | FurkhanShaikh | <https://github.com/microsoft/agent-framework/issues/9031> |
| Issue | #9014 | Python: sample external content gate around an approved text-fetch tool | open | hexablob | <https://github.com/microsoft/agent-framework/issues/9014> |
| Issue | #8991 | Python: Would you link an external OpenViking ContextProvider from the docs? | open | ZaynJarvis | <https://github.com/microsoft/agent-framework/issues/8991> |
| Issue | #8983 | Python: [Bug]: TypeSafe connector ignores HTTPS_PROXY / HTTP_PROXY / NO_PROXY when it creates its own SDK client | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8983> |
| Issue | #9025 | Python: [Bug]: Group chat stops with no output when the orchestrator agent picks a name that is not a participant | closed | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9025> |
| Issue | #9000 | Python: [Bug]: AG-UI mixed middleware warning test depends on test order | closed | quifox | <https://github.com/microsoft/agent-framework/issues/9000> |
| Issue | #8996 | Python: [Bug]: Chat Completions streaming loses logprobs after null chunks | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8996> |
| Issue | #8973 | Python: declarative Search() treats a falsy value (0, 0.0, False) as Blank and returns every row | closed | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/8973> |
| Issue | #9042 | .NET: Python: [Bug]: Persistent PowerShell LocalShellTool returns empty stdout for commands that output objects | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9042> |
| Issue | #9044 | Python: [Bug]: queued persistent shell commands fail after session recovery | open | fhgffy | <https://github.com/microsoft/agent-framework/issues/9044> |
| Issue | #9046 | Python: [vNext] Make workflow checkpoint cadence configurable | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9046> |
| Issue | #9045 | Python: [vNext] Define workflow event emission policy and minimal default | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9045> |
| Issue | #9034 | Python: [Bug]: Handoff tool names are invalid when an agent name contains spaces | open | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9034> |
| Issue | #8954 | Python: [Bug]: an output guard on a streamed run releases the full answer before it can raise, unless `stream_buffer_updates=True` is set | open | Vancir | <https://github.com/microsoft/agent-framework/issues/8954> |
| Issue | #9027 | Python: [Bug]: ConcurrentBuilder aggregator fails when the callback is an async callable object | open | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9027> |
| Issue | #9023 | Python: [Bug]: Inferred nested tool arguments lose their native types before invocation | open | quifox | <https://github.com/microsoft/agent-framework/issues/9023> |
| Issue | #9021 | Python: .NET: [Bug]: Score threshold assertions ignore local evaluator metrics | open | joslat | <https://github.com/microsoft/agent-framework/issues/9021> |
| Issue | #9020 | Python: .NET: [Bug]: Workflow result counts do not roll up `SubResults` | open | joslat | <https://github.com/microsoft/agent-framework/issues/9020> |
| Issue | #9019 | Python: .NET: [Bug]: `ContainsExpected` reports missing expected output as a model failure | open | joslat | <https://github.com/microsoft/agent-framework/issues/9019> |
| Issue | #9018 | Python: .NET: [Bug]: Zero-metric evaluation items are counted as failures | open | joslat | <https://github.com/microsoft/agent-framework/issues/9018> |
| Issue | #9016 | .NET: [Bug]: Lazy request messages can be consumed before reaching the agent | open | LEN5010 | <https://github.com/microsoft/agent-framework/issues/9016> |
| Issue | #9011 | .NET: [Bug]: TextSearchProvider uses saved memory when RecentMessageMemoryLimit is zero | open | LEN5010 | <https://github.com/microsoft/agent-framework/issues/9011> |
| Issue | #9010 | .NET: [Bug]: Explicit null StateBag values throw after serialization roundtrip | open | LEN5010 | <https://github.com/microsoft/agent-framework/issues/9010> |
| Issue | #8967 | Python: Remove `as_agent()` from chat clients in vNext | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8967> |
| Issue | #8962 | .NET: [Bug]: AddAGUIServer's JSON setup writes null optional fields (rejected by @ag-ui/client) and cannot serialize interrupts | open | petarnenov | <https://github.com/microsoft/agent-framework/issues/8962> |
| Issue | #8998 | Python: [Bug]: Terminal A2A Task snapshots omit status messages | open | quifox | <https://github.com/microsoft/agent-framework/issues/8998> |
| Issue | #8989 | Python: [Bug]: DevUI discovery omits configured context providers | open | dhairyajangir | <https://github.com/microsoft/agent-framework/issues/8989> |
| Issue | #8988 | Python: [Bug]: Purview cache undercounts bytes when growing an entry at capacity | open | dhairyajangir | <https://github.com/microsoft/agent-framework/issues/8988> |
| Issue | #8986 | Python: [Bug]: OllamaChatClient still sends tools when tool_choice is "none" | open | ankit2235 | <https://github.com/microsoft/agent-framework/issues/8986> |
| Issue | #8981 | Python: [Bug]: Qdrant portable filters return wrong results on Qdrant server 1.19 (`is_null` / `is_not_null` / `contains_all` / `ne` / `exists`) | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8981> |
| Issue | #8977 | Python: [Bug]: AnthropicClient drops citations in streaming mode (`citations_delta` ignored) | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8977> |
| Issue | #8979 | Python: [Bug]: AnthropicClient ignores `allow_multiple_tool_calls=False` when `tool_choice` is unset (incl. every loop iteration after `tool_choice="required"`) | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8979> |
| Issue | #8975 | Python: [Bug]: Non-streaming FoundryChatClient / FoundryAgent drop `oauth_consent_request` output items (empty answer, no consent link) | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8975> |
| Issue | #8952 | Python: Feedback on Python "get started" guide on learn.microsoft | open | dargilco | <https://github.com/microsoft/agent-framework/issues/8952> |
| Issue | #8817 | Sample and provider path for user-scoped MemCode memory | closed | vivekgupta-memcode | <https://github.com/microsoft/agent-framework/issues/8817> |
| Issue | #8909 | Python: [Bug]: FileAccessProvider replace/replace_lines lose updates when providers share a store | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8909> |
| Issue | #8786 | Python: [Bug]: OpenAI chat clients drop MP3 audio content that uses the standard audio/mpeg media type | closed | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/8786> |
| Issue | #8820 | Python: 18 packages declare Typing :: Typed but ship no py.typed | closed | feiiiiii5 | <https://github.com/microsoft/agent-framework/issues/8820> |
| Issue | #8814 | Python: [Bug]: AgentBasedGroupChatOrchestrator drops `terminate=true` when the manager returns Markdown-fenced JSON | closed | savannahknight | <https://github.com/microsoft/agent-framework/issues/8814> |
| Issue | #8950 | Python: Remove `Agent.as_tool()` in vNext | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8950> |
| Issue | #8949 | Python: Remove `WorkflowAgent` and `Workflow.as_agent()` in vNext | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8949> |
| Issue | #8898 |  Python: [Bug]:  Executable sibling tool calls are never run when a declaration-only tool call appears in the same model response | open | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/8898> |
| Issue | #8964 | Python: [Bug]: A handoff autonomous turn limit of 0 silently becomes the default 50 turns | open | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/8964> |
| Issue | #8961 | Python: [Feature]: Python: Sample: a hard dollar budget for one workflow run with concurrent agents | open | domondi1 | <https://github.com/microsoft/agent-framework/issues/8961> |
| Issue | #8930 | Python: [Bug]: Foundry hosting drops shell timeouts in both directions, reporting them as exit code 0 | closed | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8930> |
| Issue | #8929 | Python: [Bug]: Local shell results are sent to OpenAI as exit 0, even when the command failed or timed out | closed | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8929> |
| Issue | #8955 | Python: [Bug]: Streamed code interpreter deltas get silently dropped when one chunk's text happens to start with another's | open | cr-sbarbouche | <https://github.com/microsoft/agent-framework/issues/8955> |
| Issue | #8956 | Python: [Bug]: Streamed code interpreter deltas get silently dropped when one chunk's text happens to start with another's | open | cr-sbarbouche | <https://github.com/microsoft/agent-framework/issues/8956> |
| Issue | #8849 | .NET: [Bug]: Follow-up to #8575: A failed approval-resume run permanently corrupts the session | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/8849> |
| Issue | #8908 | Python: [Bug]: Streaming response aggregation is O(n^2) in the number of text chunks | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8908> |
| Issue | #8871 | .NET: [Bug]: Response input items listing returns items past 'before' when 'after' is also given | closed | Laurianti | <https://github.com/microsoft/agent-framework/issues/8871> |
| Issue | #8869 | .NET: [Bug]: CosmosChatHistoryProvider never stores messages when MaxBatchSize is zero or negative | closed | Laurianti | <https://github.com/microsoft/agent-framework/issues/8869> |
| Issue | #8878 | Python: .NET: [Bug]: 04_MultiModelService sample uses retired claude-sonnet-4-20250514 | closed | simonether | <https://github.com/microsoft/agent-framework/issues/8878> |
| Issue | #8914 | Python: [Bug]: LocalShellTool's hosted type="shell" tool is not supported on gpt-6-luna-2026-09-22 | closed | alkaiserItron | <https://github.com/microsoft/agent-framework/issues/8914> |
| Issue | #8862 | Add token and wall-clock budget enforcement to AgentLoopMiddleware | open | marklicata | <https://github.com/microsoft/agent-framework/issues/8862> |
| Issue | #8940 | .NET: [Bug]: Background task metadata can outlive failed starts or overwrite continuations | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8940> |
| Issue | #8939 | .NET: [Bug]: Empty Foundry memory search appends an empty user message | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8939> |
| Issue | #8938 | .NET: [Bug]: Failed cache factories can split same-key callers across semaphores | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8938> |
| Issue | #8935 | Python: [Bug]: BedrockChatClient drops reasoningContent, so extended thinking with tool calls fails | open | Leela0o5 | <https://github.com/microsoft/agent-framework/issues/8935> |
| Issue | #8865 | Python: [Bug]: GitHubCopilotAgent drops function_invocation_kwargs before tool invocation | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/8865> |
| Issue | #8842 | Python: [Feature]: Support ChatKit generated image conversion | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8842> |
| Issue | #8916 | Python: [Bug]:  OllamaChatClient sends non-image data content to Ollama as images | closed | Leela0o5 | <https://github.com/microsoft/agent-framework/issues/8916> |
| Issue | #8907 | Python: [Bug]: load_settings silently accepts invalid values for non-Optional union fields | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8907> |
| Issue | #8927 | Python: [Bug]: OllamaEmbeddingClient drops numeric zero keep_alive | closed | rksharma-owg | <https://github.com/microsoft/agent-framework/issues/8927> |
| Issue | #8903 | Python: [Bug]: Streamed code_interpreter code is corrupted when a delta is a prefix of the accumulated code | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8903> |
| Issue | #8913 | Python: [Feature]: Single shared data-URI parser and media-type sniffer used by all packages | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8913> |
| Issue | #8912 | .NET: Python/.NET: [Feature]: Store-level concurrency control for shared AgentFileStore and session/history stores | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8912> |
| Issue | #8911 | Python: [Feature]: Scope tool invocation limits to the run/session instead of the FunctionTool instance | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8911> |
| Issue | #8910 | Python: [Feature]: Explicit append/replace semantics for streamed content merging | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8910> |
| Issue | #8905 | Python: [Bug]: Content.from_uri rejects valid non-base64 data URIs with parameters and drops the media type | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8905> |
| Issue | #8906 | Python: [Bug]: detect_media_type_from_base64 misclassifies BMP/SVG and misses MPEG-2 audio | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8906> |
| Issue | #8904 | Python: [Bug]: max_invocations / max_invocation_exceptions are not enforced for tools defined as methods | open | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8904> |
| Issue | #8901 | Python: Add retention and quotas for hosted Cosmos session snapshots | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8901> |
| Issue | #8900 | Python: Bound hosted harness file memory with quotas and retention | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8900> |
| Issue | #8874 | Python: [Bug]: CosmosCheckpointStorage can save checkpoints that its load() cannot restore | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/8874> |
| Issue | #8876 | .NET: A2A session save failures can mask agent execution exceptions | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8876> |
| Issue | #8902 | [Feature]:  External tool runtimes (ADC and potentially others) | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8902> |
| Issue | #8884 | .NET: [Bug]: In-memory response streams can end before a synthesized terminal event is published | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8884> |
| Issue | #8896 | [Feature Request] Add NTI Security Wrapper for Post-Quantum Agent Governance | closed | abisheakp197 | <https://github.com/microsoft/agent-framework/issues/8896> |
| Issue | #8802 | Python: [Bug]: Telegram samples execute commands addressed to other bots | closed | dakjdakd | <https://github.com/microsoft/agent-framework/issues/8802> |
| Issue | #8841 | Python: [Feature]: Support ChatKit structured input conversion | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8841> |
| Issue | #8890 | Python: [Feature]: Support Responses API server-side compaction (context_management) with store=false | open | droideronline | <https://github.com/microsoft/agent-framework/issues/8890> |
| Issue | #8826 | Python: [Bug]: Streaming a response that is still in progress drops its continuation_token | open | feiiiiii5 | <https://github.com/microsoft/agent-framework/issues/8826> |
| Issue | #8881 | Python: [Feature]: Crypto Payroll Agent — end-to-end sample with on-chain batch payments | open | plagtech | <https://github.com/microsoft/agent-framework/issues/8881> |
| Issue | #8828 | Python: [Bug]: AGUIChatClient replaces the server's RUN_ERROR code with a generic "RUN_ERROR" | open | gabe-santana | <https://github.com/microsoft/agent-framework/issues/8828> |
| Issue | #8860 | Add signal-based completion detection and typed exit reasons to AgentLoopMiddleware | open | marklicata | <https://github.com/microsoft/agent-framework/issues/8860> |
| Issue | #8861 | Add AsyncRequestBroker utility and shell execution audit log | open | marklicata | <https://github.com/microsoft/agent-framework/issues/8861> |
| Issue | #8856 | Python: [Bug]: ReasoningOptions omits max reasoning effort | open | demoray | <https://github.com/microsoft/agent-framework/issues/8856> |
| Issue | #8789 | Python: [Bug]: AG-UI queued approvals stream both tool results but final snapshot drops the first | open | gomission | <https://github.com/microsoft/agent-framework/issues/8789> |
| Issue | #8811 | .NET: ChatHistoryMemoryProvider swallows caller cancellation | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8811> |
| Issue | #8799 | Python: [Bug]: History providers drop repeated user turns during incremental saves | closed | dakjdakd | <https://github.com/microsoft/agent-framework/issues/8799> |
| Issue | #8821 | .NET: Three README errors in the Python quickstart path | closed | feiiiiii5 | <https://github.com/microsoft/agent-framework/issues/8821> |
| Issue | #8836 | .NET: Reject protected values in declarative function invocations | closed | baywet | <https://github.com/microsoft/agent-framework/issues/8836> |
| Issue | #8835 | .NET: [Bug]: Reject sensitive declarative Azure agent provider inputs | closed | baywet | <https://github.com/microsoft/agent-framework/issues/8835> |
| Issue | #8833 | .NET: MCP approval can execute with re-evaluated headers | closed | baywet | <https://github.com/microsoft/agent-framework/issues/8833> |
| Issue | #8831 | .NET: Reject protected values at declarative MCP invocation boundary | closed | baywet | <https://github.com/microsoft/agent-framework/issues/8831> |
| Issue | #8804 | Python: .NET: [Bug]: background agent wait ignores caller cancellation | closed | dakjdakd | <https://github.com/microsoft/agent-framework/issues/8804> |
| Issue | #8818 | Python: [BREAKING][Feature]: Remove pre-2026-0-28 MCP support | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8818> |
| Issue | #8810 | .NET: AI context streaming decorators do not dispose inner enumerators on early exit | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8810> |
| Issue | #8825 | Rename InMemoryChatHistoryProvider / InMemoryHistoryProvider to InSessionChatHistoryProvider / InSessionHistoryProvider | open | westey-m | <https://github.com/microsoft/agent-framework/issues/8825> |
| Issue | #8808 | .NET: [Bug]: ValkeyChatHistoryProvider keeps and returns every message when MaxMessages or MaxMessagesToRetrieve is zero | closed | Laurianti | <https://github.com/microsoft/agent-framework/issues/8808> |
| Issue | #8795 | .NET: TextSearchProvider swallows caller cancellation during pre-invocation search | closed | quifox | <https://github.com/microsoft/agent-framework/issues/8795> |
| Issue | #8793 | [Feature]: Support typed input contracts when exposing agents through AsAIFunction | open | adrvapor | <https://github.com/microsoft/agent-framework/issues/8793> |
| Issue | #7916 | Python: [Bug]: Code Interpreter file citations are lost through FoundryToolbox hosting | closed | eamonoreilly | <https://github.com/microsoft/agent-framework/issues/7916> |
| Issue | #8742 | Python: Redesign Foundry-hosting APIs in one beta release | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8742> |
| Issue | #3556 | Python: Add middleware sample to show filtering messages between agents | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/3556> |
| Issue | #8757 | Python: [Feature]: Let a tool declare standing guidance the middleware appends to its results | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8757> |
| Issue | #8342 | Python: [Feature]: Publish which arguments an invocation's variable expansion rewrote | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8342> |
| Issue | #8762 | Python: [Bug]: `OpenAIChatCompletionClient`'s streaming generator never closes the SDK stream, so any early exit leaves the provider response open | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8762> |
| Issue | #8748 | Python: Foundry hosting: run native Invocations workflows with durable continuation | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8748> |
| Issue | #7460 | Python: Citation Annotation Support for Responses API and AGUI | closed | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7460> |
| Issue | #8292 | Python: [Bug]: Functional workflow checkpoint replay can swap cached results between concurrent calls to the same @step | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8292> |
| Issue | #8747 | Python: Foundry hosting: run native Responses workflows with scoped checkpoints | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8747> |
| Issue | #8121 | .NET: Missing guidance on A2A client --> A2A host --> tool authentication | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8121> |
| Issue | #6558 | Python: Docs: clarify Python Foundry Hosting session isolation configuration | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6558> |
| Issue | #8746 | Python: Foundry hosting: harden Responses integrations and isolation samples | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8746> |
| Issue | #8663 | Python: [Bug]: LocalShellTool never executes on a self-hosted Foundry agent since openai 1.14.4 - "No tool output found for shell call" | closed | alkaiserItron | <https://github.com/microsoft/agent-framework/issues/8663> |
| Issue | #8745 | Python: Foundry hosting: add parsed and durable Invocations agent runs | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8745> |
| Issue | #8761 | Python: [Bug]: A confidentiality violation whose approval binding cannot be built is ALLOWED, not blocked, when `approval_on_violation=True` | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8761> |
| Issue | #8758 | Python: [Bug]: AG-UI: approving a restored card after a reconnect can fail with "Approval alias conflicts with an existing pending occurrence" | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8758> |
| Issue | #8764 | .NET: [Feature]: `RedisHistoryProvider` owns its client construction and exposes no connection options, so a host cannot bound transcript I/O | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8764> |
| Issue | #8744 | Python: Foundry hosting: update Responses agent history, options, and background | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8744> |
| Issue | #8133 | .NET: Should we exclude cases where ConversationId="_agent_local_chat_history"? | closed | ZeeLyn | <https://github.com/microsoft/agent-framework/issues/8133> |
| Issue | #7215 | Python: [Feature]: persist AG-UI thread snapshots incrementally (and handle client disconnect), not only at run completion | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7215> |
| Issue | #5560 | [Feature]: AzureAISearchContextProvider lacks a way to set KnowledgeSourceParams | closed | lgiuliani80 | <https://github.com/microsoft/agent-framework/issues/5560> |
| Issue | #8678 | Python: [Bug]: BedrockChatClient silently drops guardrailConfig and other Bedrock options, so GPT-6 Sol/Luna/Astra reasoning effort can't be set | closed | kimnamu | <https://github.com/microsoft/agent-framework/issues/8678> |
| Issue | #2113 | Python: Workflow concurrency | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/2113> |
| Issue | #8638 | Python: Proposal: agent-framework-spider, a web crawl/scrape/search tool package | closed | j-mendez | <https://github.com/microsoft/agent-framework/issues/8638> |
| Issue | #8617 | Python: One client per vendor, or one that needs no credential? | closed | TheCheetah11 | <https://github.com/microsoft/agent-framework/issues/8617> |
| Issue | #3545 | .NET: Python: Add support for long running tools in durabletask package | closed | larohra | <https://github.com/microsoft/agent-framework/issues/3545> |
| Issue | #8556 | [Feature]: Add first-class support for TypeSafe AI's Jev (System One) decision model (Python) | closed | Katilho | <https://github.com/microsoft/agent-framework/issues/8556> |
| Issue | #7253 | Python: [Feature]: Explore EverOS as an optional Python long-term memory ContextProvider | closed | Yangtze-Seventh | <https://github.com/microsoft/agent-framework/issues/7253> |
| Issue | #7389 | Python: [Feature]: Support Agent factories in Foundry Hosting Responses API | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7389> |
| Issue | #6808 | .NET & Python: [Feature]:  Automatic compaction of chat history to stay within durable backend size limit | closed | greenie-msft | <https://github.com/microsoft/agent-framework/issues/6808> |
| Issue | #5399 | Python: [Samples][Python] Inconsistent config template naming across azure_functions samples (.template vs .sample vs .example) | closed | leestott | <https://github.com/microsoft/agent-framework/issues/5399> |
| Issue | #8540 | Python: [Bug]: AG-UI RUN_STARTED waits for the first agent update even when threadId and runId are supplied | closed | ltwlf | <https://github.com/microsoft/agent-framework/issues/8540> |
| Issue | #8772 | .NET: Python: [Feature]: Move MCPSkillsSource to the released SEP-2640 (skills/list and skills/get) | closed | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/8772> |
| Issue | #8160 | Python: [Bug]: AG-UI workflow resume does not persist user HITL text into Thread Snapshot | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8160> |
| Issue | #8135 | Python: AG-UI + HistoryProvider: compose history+input without duplicating turns (UI vs LLM context authorities) | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8135> |
| Issue | #8601 | Python: [Bug]: Nested workflow cancellation retains stale invocation kwargs | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8601> |
| Issue | #7575 | Python: [Feature]: Documentation/ergonomics report. `FunctionInvocationContext.result` is documented as the function's result but observes as `list[Content]`, and the attribute's read and write contracts differ | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7575> |
| Issue | #8724 | Python: [Feature]: No sample or documentation for grounding an agent on MongoDB | closed | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8724> |
| Issue | #8752 | Python: [Bug]: MCPTool leaks its `mcp-lifecycle` owner task when `connect()` fails ("Task was destroyed but it is pending!") | closed | Katilho | <https://github.com/microsoft/agent-framework/issues/8752> |
| Issue | #8770 | Python: [Bug]: Cosmos vector store drops rows whose field is null from NOT(eq) filters | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/8770> |
| Issue | #7689 | .NET: Python: FoundryToolbox does not send the Foundry-Features header or honor FOUNDRY_AGENT_TOOLSET_FEATURES | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7689> |
| Issue | #7618 | Python: Python :  checkpoint restore +pending request deserialization failure when hosting workflow as agent with ResponsesHostserver in foundry | closed | dgsear | <https://github.com/microsoft/agent-framework/issues/7618> |
| Issue | #7466 | Python: Security: 64 official samples ingest untrusted content without SecureAgentConfig (of 357 that omit it entirely) | closed | lerelerele | <https://github.com/microsoft/agent-framework/issues/7466> |
| Issue | #8743 | Python: Foundry hosting: isolate MAF state by trusted user and sandbox | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8743> |
| Issue | #8456 | Python: [Bug]: FileSystemAgentFileStore.delete can violate its result contract during concurrent deletion | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8456> |
| Issue | #8647 | Python: [Bug]: Middleware type detection fails with from __future__ import annotations | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/8647> |
| Issue | #8567 | Python: [Bug]: InMemoryAgentFileStore permits a path to be both a file and a directory | closed | boshilin123 | <https://github.com/microsoft/agent-framework/issues/8567> |
| Issue | #8768 | Update AGUI Hosting to the released SDK | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/8768> |
| Issue | #8738 | Python: [Bug]: Multi-selection edge group runs a target twice when the selection function names it twice | closed | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/8738> |
| Issue | #8777 | Python: [Bug]: FileHistoryProvider skips unreadable JSON history lines on append | closed | feiiiiii5 | <https://github.com/microsoft/agent-framework/issues/8777> |
| Issue | #8765 | Python: [Feature]: `ResponseStream.__anext__` runs every per-update transform outside its error handler, so a raising hook or mapper skips cleanup entirely | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8765> |
