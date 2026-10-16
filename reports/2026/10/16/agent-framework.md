# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 164 |
| オープン中の新規 PR     | 65 |
| クローズ (未マージ) PR  | 67 |
| 新規 Issue              | 105 |
| クローズ Issue          | 108 |
| 主要コントリビューター  | eavanvalkenburg, ktz03, westey-m, SergeyMenshykh, baywet, shanto462 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9413](https://github.com/microsoft/agent-framework/pull/9413) — [BREAKING] Python: Require explicit AG-UI authorization scope （PR / open / eavanvalkenburg）
  AG-UI の認可スコープを利用する Python アプリは、今後必須となる明示的な scope 指定に合わせて設定と呼び出しを更新してください。PR は未マージです。
- **⚠ 破壊的変更** [#9391](https://github.com/microsoft/agent-framework/pull/9391) — [BREAKING] Python: Reject unsafe functional step replay （PR / open / atty57）
  Functional workflow のリプレイを使う利用者は、危険な step 再実行が拒否される条件を確認し、既存の再開・リプレイ処理が新しい検証に適合するか確認してください。
- **⚠ 破壊的変更** [#9368](https://github.com/microsoft/agent-framework/pull/9368) — [BREAKING] Python: Protect AG-UI tool approval state from client Shared State （PR / merged / eavanvalkenburg）
  AG-UI の tool approval を使うアプリは、クライアント共有状態から承認状態を復元する既存実装があれば見直し、サーバー側の承認状態を使うよう更新してください。
- **⚠ 破壊的変更** [#9365](https://github.com/microsoft/agent-framework/pull/9365) — [BREAKING] Python: Bind AG-UI workflow interrupts to the resolved thread id （PR / merged / eavanvalkenburg）
  AG-UI workflow 利用者は、interrupt／tool response が解決済み thread ID に紐付く新しい必須条件を確認し、thread ID を省略する呼び出しを修正してください。
- **⚠ 破壊的変更** [#9358](https://github.com/microsoft/agent-framework/pull/9358) — Python: [BREAKING] fix(declarative): bound HTTP response bodies （PR / merged / baywet）
  Declarative workflow の HTTP 応答を扱う利用者は、応答本文の上限・デコード条件を確認し、大きな応答や未対応 HTTPX バージョンに依存する構成を調整してください。
- **⚠ 破壊的変更** [#9322](https://github.com/microsoft/agent-framework/pull/9322) — Python: [BREAKING] Migrate Foundry Local integration to SDK 2.1 （PR / open / bmehta001）
  Foundry Local 連携の移行提案です。未マージのため利用者は現時点で変更不要ですが、マージ後に SDK 2.1 への互換性変更を確認してください。
- **⚠ 破壊的変更** [#9316](https://github.com/microsoft/agent-framework/pull/9316) — [BREAKING] Python: Harden AG-UI trust boundaries （PR / merged / eavanvalkenburg）
  AG-UI の A2UI、メディア参照、クライアント連携を使う利用者は、信頼できない／不正な参照の拒否などの検証強化を確認し、従来受け入れていた不正形式データを修正してください。
- **⚠ 破壊的変更** [#9236](https://github.com/microsoft/agent-framework/pull/9236) — Python: [BREAKING] Add MCP 2.x compatibility foundation （PR / merged / jpalvarezl）
  MCP を使う Python 利用者は、MCP SDK v2 を前提とする新しい型・サーバー／クライアント構成との互換性を確認し、既存 MCP 実装を移行・再テストしてください。
- **⚠ 破壊的変更** [#9234](https://github.com/microsoft/agent-framework/pull/9234) — Python: [BREAKING] Migrate MCP server hosting to MCP SDK v2 （PR / closed / jpalvarezl）
  MCP サーバーホスティング移行 PR は未マージのままクローズされています。現行構成を変更する必要はありませんが、後続の v2 移行方針を追跡してください。
- **⚠ 破壊的変更** [#9214](https://github.com/microsoft/agent-framework/pull/9214) — .NET: [BREAKING] Decouple Cosmos chat metadata from partition-key strategy （PR / merged / Copilot）
  Cosmos NoSQL のチャット履歴プロバイダー利用者は、メタデータと partition key の設計が分離された新しい options を確認し、既存のパーティションキー設定を明示的に移行してください。
- **⚠ 破壊的変更** [#9160](https://github.com/microsoft/agent-framework/issues/9160) — Python: [Bug]: evaluate_agent() omits ContextProvider/SkillsProvider tools from tool_definitions, breaking tool_selection/tool_input_accuracy （Issue / open / cristofima）
  `evaluate_agent()` と ContextProvider／SkillsProvider を使う評価担当者は、tool definitions の欠落が選択精度に及ぼす影響を確認し、Issue の修正状況を追跡してください。
- **⚠ 破壊的変更** [#9141](https://github.com/microsoft/agent-framework/pull/9141) — Python: [BREAKING] Require request-scoped WorkflowAgent factories in Foundry hosting （PR / closed / rogerbarreto）
  この Foundry hosting の factory 要件変更は PR がクローズされ未マージです。現行コードに移行を適用せず、採用された後続方針を確認してください。
- **⚠ 破壊的変更** [#9112](https://github.com/microsoft/agent-framework/pull/9112) — Python: [BREAKING] Request concise Harness progress without private reasoning （PR / closed / 1aifanatic）
  この Python Harness 変更案はクローズ済みです。Python 利用者に対する未マージ変更の適用は不要で、採用済みの .NET 側変更（#9004）と区別してください。
- **⚠ 破壊的変更** [#9004](https://github.com/microsoft/agent-framework/pull/9004) — .NET: [BREAKING] Request concise Harness progress without private reasoning （PR / merged / 1aifanatic）
  .NET Harness 利用者は progress 出力が private reasoning ではなく簡潔な進捗になる変更を確認し、従来の内部推論を期待するコードやテストを更新してください。
- **⚠ 破壊的変更** [#8886](https://github.com/microsoft/agent-framework/pull/8886) — [BREAKING] Python: Consolidate content identity and protocol metadata （PR / merged / eavanvalkenburg）
  Python の protocol metadata を直接生成・解析する利用者は新しい content identity／metadata 規約へ移行し、A2A／AG-UI stream 連携と保存データの互換性を検証してください。
- **⚠ セキュリティ** [#9288](https://github.com/microsoft/agent-framework/pull/9288) — Python: redact exception telemetry when sensitive data is disabled （PR / merged / eavanvalkenburg）
  sensitive data を無効化した Python 利用者は、MCP／workflow 例外が telemetry や debug log に漏れないことを確認し、必要に応じて過去ログも点検してください。
- **⚠ セキュリティ** [#9251](https://github.com/microsoft/agent-framework/issues/9251) — Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools （Issue / open / suhasagg）
  FIDES で保護された host tool を CodeAct から使う利用者は、fail-closed なセキュリティ検証の実装状況を追跡し、権限拒否時に処理が安全側へ倒れることを確認してください。
- **⚠ セキュリティ** [#9220](https://github.com/microsoft/agent-framework/pull/9220) — Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/samples/05-end-to-end/chatkit-integration/frontend （PR / closed / dependabot[bot]）
  ChatKit integration sample の依存更新 PR はクローズ済みです。サンプル保守者は実際の lockfile のバージョンを確認し、更新が未反映なら別途適用してください。
- **⚠ セキュリティ** [#9210](https://github.com/microsoft/agent-framework/pull/9210) — Python: build(deps-dev): bump @eslint/js from 9.33.0 to 10.0.1 in /python/packages/devui/frontend （PR / closed / dependabot[bot]）
  DevUI frontend の ESLint 更新 PR はクローズ済みです。フロントエンド保守者は採用中の依存バージョンを確認し、未適用なら別の更新経路を検討してください。
- **⚠ セキュリティ** [#9149](https://github.com/microsoft/agent-framework/pull/9149) — Python: fix(devui): redact auth token from deployment logs （PR / closed / Namraa310806）
  認証トークンのログ秘匿化を提案した PR は未マージでクローズ済みです。DevUI デプロイ運用者は、後続のマージ済み修正 #9118 が利用中のバージョンに含まれているか確認してください。
- **⚠ セキュリティ** [#9145](https://github.com/microsoft/agent-framework/pull/9145) — Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend （PR / merged / dependabot[bot]）
  AG-UI workflow handoff sample の保守者は、マージ済み更新により lockfile が source-map-js 1.2.2 を解決することを確認してください。
- **⚠ セキュリティ** [#9118](https://github.com/microsoft/agent-framework/pull/9118) — Python: redact DevUI auth tokens from Azure deployment diagnostics （PR / merged / HeZ2z）
  DevUI Azure デプロイ利用者は修正を含むバージョンを使い、診断ログに `DEVUI_AUTH_TOKEN` が出力されないことを確認してください。
- **⚠ セキュリティ** [#9116](https://github.com/microsoft/agent-framework/issues/9116) — Python: [Bug]: [Security] DevUI Azure deployment logs DEVUI_AUTH_TOKEN in plaintext （Issue / closed / Namraa310806）
  このログ漏えい Issue はクローズ済みで #9118 の修正がマージされています。利用者は修正版への更新と、旧ログに認証情報が残っていないかを確認してください。
- **⚠ セキュリティ** [#9104](https://github.com/microsoft/agent-framework/pull/9104) — Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/packages/devui/frontend （PR / merged / dependabot[bot]）
  DevUI frontend の保守者は、マージ済み lockfile 更新で source-map-js 1.2.2 が使われることを確認してください。
- **非推奨/廃止** [#9402](https://github.com/microsoft/agent-framework/pull/9402) — Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m （PR / open / dargilco）
  Python Foundry hosted agent のサンプルを参照する利用者は、非推奨の `-m` から新しい `-t` template deployment へ切り替える提案を確認してください。PR は未マージです。
- **非推奨/廃止** [#9252](https://github.com/microsoft/agent-framework/issues/9252) — .NET: Workflows: the span tag `message.type` collides with the obsoleted OpenTelemetry RPC attribute of the same name （Issue / open / ANcpLua）
  .NET Workflows の OpenTelemetry span を集約・照会する利用者は `message.type` 属性名の衝突を追跡し、将来の属性名変更に備えて exporter／dashboard を確認してください。
- **非推奨/廃止** [#9216](https://github.com/microsoft/agent-framework/pull/9216) — Python: Remove obsolete release docs workflow （PR / merged / jpalvarezl）
  独自 CI が削除された Python docs workflow を呼び出していないか確認してください。ライブラリ利用者向けの移行は不要です。
- **非推奨/廃止** [#9146](https://github.com/microsoft/agent-framework/pull/9146) — Python: Foundry hosting: warn against hosting a WorkflowAgent through agent= （PR / merged / eavanvalkenburg）
  Foundry hosting で `WorkflowAgent` を `agent=` に渡している利用者は、非推奨警告に従って request-scoped factory を使う新方式へ移行してください。
- **非推奨/廃止** [#8245](https://github.com/microsoft/agent-framework/issues/8245) — Python: [Feature]: Support the stateless MCP 2026-07-28 revision alongside 2025-era peers （Issue / open / jpalvarezl）
  複数の MCP protocol revision を併用する Python 利用者は、stateless 2026-07-28 revision と 2025-era peer の共存対応を追跡し、現行接続の revision 依存を把握してください。
- **GA 昇格** [#9119](https://github.com/microsoft/agent-framework/pull/9119) — Python: Update Anthropic SDK to 1.11 （PR / merged / eavanvalkenburg）
  Anthropic provider の利用者は SDK 1.11 対応と互換性修正を含むバージョンを確認し、chat／Bedrock の接続を再テストしてください。

## このリポジトリの要点

Python では AG-UI の thread／承認状態と信頼境界を強化し、HTTP 応答サイズ制限、MCP SDK v2 対応、content metadata の統合など互換性に関わる変更が相次ぎました。.NET では Cosmos chat の partition key 設定と Harness progress API が更新され、利用者は移行内容の確認が必要です。加えて例外 telemetry と DevUI 認証トークンの秘匿化が進みました。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#9368](https://github.com/microsoft/agent-framework/pull/9368) — [BREAKING] Python: Protect AG-UI tool approval state from client Shared State

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +450 / -4
- マージ日時 (UTC): `2026-10-15 07:34:11`

**変更概要**

AG-UI の tool approval 状態がクライアントの Shared State から改変・注入されないよう保護します。
承認状態を専用の `ToolApprovalState` として扱い、エンドポイントと run のテストで共有状態との分離を検証します。
AG-UI で承認付き tool を実行する Python アプリの安全性に関わる **破壊的変更** です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 9 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 59 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 323 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_run.py` | 59 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `4535f4a` [BREAKING] Python: Protect AG-UI tool approval state from client Shar…
- `99e3427` Python: Protect AG-UI approval state held as a ToolApprovalState object
- `d4cba08` Merge branch 'main' into ag-ui-protect-approval-state
- `3910d93` Merge branch 'main' into ag-ui-protect-approval-state

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** tool approval の状態管理がクライアント共有状態から分離され、`ToolApprovalState` を保持する方式に変更されました。コミットでは承認状態の保護と専用テストが追加されています。

**既存利用者への影響**

既存のクライアント連携で Shared State を承認状態の保存・返却先にしている場合は実装変更が必要です。承認フローを再検証してください。

### [#9365](https://github.com/microsoft/agent-framework/pull/9365) — [BREAKING] Python: Bind AG-UI workflow interrupts to the resolved thread id

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +588 / -25
- マージ日時 (UTC): `2026-10-15 07:18:58`

**変更概要**

AG-UI workflow の interrupt、checkpoint、tool／approval 応答を解決済み thread ID に結び付け、一貫した thread 所有権を保ちます。
フロントエンドが thread ID を省略した場合の解決と、不一致／欠落した ID の拒否を追加し、endpoint と workflow agent のテストを拡充しました。
thread ID を任意扱いしていた既存クライアントに影響する **破壊的変更** です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 7 | 0 |
| `python/packages/ag-ui/README.md` | 7 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow.py` | 79 | 18 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 4 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 255 | 6 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_agent.py` | 236 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `8be122e` [BREAKING] Python: Bind AG-UI workflow interrupts to the resolved thr…
- `7915082` Python: Keep AG-UI workflow thread ids and checkpoint ownership consi…
- `c415256` Python: Use distinct loop variables in the checkpoint owner alias test
- `31a5798` Merge branch 'main' into ag-ui-omitted-thread-ids
- `1037526` Python: Reject tool and approval responses without a thread id on fac…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** workflow の割り込み／応答処理では resolved thread ID と checkpoint ownership の整合が必須になり、thread ID のない tool／approval 応答は拒否されます。コミットは thread ID 解決・所有権維持・欠落 ID 拒否を段階的に実装しています。

**既存利用者への影響**

AG-UI クライアントは tool／approval 応答に正しい thread ID を含め、workflow の再開・checkpoint テストを更新してください。thread ID を省略していた場合は移行が必要です。

### [#9358](https://github.com/microsoft/agent-framework/pull/9358) — Python: [BREAKING] fix(declarative): bound HTTP response bodies

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +572 / -4
- マージ日時 (UTC): `2026-10-14 09:12:07`

**変更概要**

Declarative workflow の既定 HTTP request handler で、応答本文を無制限に読み込むことによる過剰なメモリ消費を防ぎます。
本文サイズ上限付きの読み込みと安全なデコードを実装し、空の 205 応答や bodyless response、クライアントの encoding policy も維持するテストを追加しました。
HTTPX の対応バージョンも検証し、宣言型ワークフローの HTTP 呼び出しに影響する **破壊的変更** です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-code-quality.yml` | 29 | 0 |
| `python/packages/declarative/AGENTS.md` | 7 | 0 |
| `python/packages/declarative/README.md` | 25 | 0 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_http_handler.py` | 162 | 2 |
| `python/packages/declarative/pyproject.toml` | 1 | 1 |
| `python/packages/declarative/tests/test_default_http_request_handler.py` | 347 | 0 |
| `python/uv.lock` | 1 | 1 |

</details>

<details><summary>コミット (7 件)</summary>

- `40d9375` fix(declarative): bound HTTP response bodies
- `328f582` fix(declarative): finalize bounded response decoding
- `4beaa96` fix(declarative): preserve client encoding policy
- `ca54a60` fix(declarative): keep decoder bounds representable
- `5926ef8` fix(declarative): preserve empty 205 responses
- `6665733` fix(declarative): preserve all bodyless response semantics
- `99633f4` fix(declarative): validate supported HTTPX versions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 応答本文には上限が適用され、大きな応答の読み込み／デコードは従来どおり成功しない可能性があります。追加 API よりも既定 handler の応答処理と HTTPX バージョン検証の変更が中心です。

**既存利用者への影響**

通常の小さな応答では移行不要ですが、大きな応答を使う利用者は新しい上限に収まるか確認し、必要なら応答を分割してください。サポート対象 HTTPX バージョンも確認してください。

### [#9316](https://github.com/microsoft/agent-framework/pull/9316) — [BREAKING] Python: Harden AG-UI trust boundaries

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +848 / -157
- マージ日時 (UTC): `2026-10-13 12:15:43`

**変更概要**

AG-UI の A2UI／メディア参照／クライアント応答の信頼境界を強化し、不正・未解決の参照や応答をより厳密に拒否します。
tool と応答の無効化、旧形式メディアの移行、malformed URI の処理を調整し、クライアント・agent wrapper・endpoint のテストを追加しました。
従来の入力を受け入れていた統合に影響する **破壊的変更** です。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 1 | 1 |
| `python/packages/ag-ui/AGENTS.md` | 15 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_a2ui/_agent.py` | 22 | 6 |
| `python/packages/ag-ui/agent_framework_ag_ui/_a2ui/_factory.py` | 11 | 10 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 15 | 7 |
| `python/packages/ag-ui/agent_framework_ag_ui/_approval_state.py` | 6 | 4 |
| `python/packages/ag-ui/agent_framework_ag_ui/_client.py` | 12 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_endpoint.py` | 2 | 7 |
| `python/packages/ag-ui/agent_framework_ag_ui/_message_adapters.py` | 64 | 4 |
| `python/packages/ag-ui/agent_framework_ag_ui/_snapshot_session.py` | 13 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow.py` | 49 | 34 |
| `python/packages/ag-ui/tests/ag_ui/test_a2ui.py` | 42 | 8 |
| `python/packages/ag-ui/tests/ag_ui/test_ag_ui_client.py` | 176 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_agent_wrapper_comprehensive.py` | 38 | 15 |
| `python/packages/ag-ui/tests/ag_ui/test_approval_result_event.py` | 8 | 5 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `62e4c56` Harden AG-UI trust boundaries
- `911089a` Align AG-UI client tools with response invalidation
- `71ee9f0` Address AG-UI hardening review feedback
- `8739953` Migrate legacy AG-UI snapshot media
- `83390d9` Handle malformed legacy AG-UI media URIs
- `d024423` Reject unresolved AG-UI media references
- `db74497` Merge remote-tracking branch 'origin/main' into pr-incident-coverage-…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 未解決の AG-UI media reference や不正な legacy media URI を受け入れず、client tool response の無効化規則も変更します。新しい公開抽象より、入力検証と内部変換・拒否動作の互換性に注意が必要です。

**既存利用者への影響**

AG-UI を通じて media や tool response を送る利用者は、有効な参照形式と応答状態を確認してください。旧形式の保存データがある場合は、移行後にデコードと表示を検証してください。

### [#9236](https://github.com/microsoft/agent-framework/pull/9236) — Python: [BREAKING] Add MCP 2.x compatibility foundation

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change` `lab`
- 変更行数: +4384 / -3963
- マージ日時 (UTC): `2026-10-15 11:55:57`

**変更概要**

Python の MCP 実装を SDK v2 に対応させる基盤変更で、core の MCP client/server、agent／skill 統合、認証・observability を更新します。
依存関係と型・テストを大幅に置き換え、v2 と既存構成の互換性を検証するテストを整備しました。
MCP の API とサーバーホスティングに及ぶ広範な **破壊的変更** です。

<details><summary>変更ファイル (52 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/PACKAGE_STATUS.md` | 0 | 4 |
| `python/packages/ag-ui/agent_framework_ag_ui/_utils.py` | 2 | 3 |
| `python/packages/core/AGENTS.md` | 10 | 11 |
| `python/packages/core/agent_framework/_agents.py` | 50 | 42 |
| `python/packages/core/agent_framework/_feature_stage.py` | 0 | 1 |
| `python/packages/core/agent_framework/_mcp.py` | 607 | 864 |
| `python/packages/core/agent_framework/_skills.py` | 56 | 40 |
| `python/packages/core/agent_framework/security.py` | 7 | 9 |
| `python/packages/core/pyproject.toml` | 2 | 1 |
| `python/packages/core/tests/core/test_agents.py` | 65 | 0 |
| `python/packages/core/tests/core/test_mcp.py` | 2719 | 2311 |
| `python/packages/core/tests/core/test_mcp_http_auth.py` | 42 | 24 |
| `python/packages/core/tests/core/test_mcp_observability.py` | 19 | 38 |
| `python/packages/core/tests/core/test_mcp_skills.py` | 213 | 67 |
| `python/packages/core/tests/core/test_optional_dependencies.py` | 36 | 65 |
| _... 他 37 件_ | | |

</details>

<details><summary>コミット (57 件)</summary>

- `4cb375b` Updated mcp to 2.x (websocket optional is part of the core now)
- `9fc5821` Added client test for agents as mcp_servers
- `9ca48e2` More casing fixes
- `e8135b0` Unit tests for legacy and v2 MCP server
- `2ef1694` Using MCPError in samples for consistency with internal behaviour
- `d02c0cd` Migrated test_mcp to use new types
- `26abdee` collection for test_mcp
- `9caaceb` collection passes for test_mcp_observability and test_mcp_skills
- _... 他 49 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** MCP SDK 依存を v2 系に更新し、`_mcp.py` の client/server 型、エラー処理、transport、skills／認証／observability の構成を大きく変更しています。コミット群では optional websocket の扱いと v2 型への移行が明示されています。

**既存利用者への影響**

MCP を利用する Python アプリ／サーバーは SDK v2 の新しい型・依存・transport と互換か確認し、既存の MCP 接続、認証、tool／resource 処理を移行・再テストしてください。

### [#9214](https://github.com/microsoft/agent-framework/pull/9214) — .NET: [BREAKING] Decouple Cosmos chat metadata from partition-key strategy

- 作者: Copilot / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +294 / -59
- マージ日時 (UTC): `2026-10-09 17:40:17`

**変更概要**

Cosmos chat history のメタデータ保存方法を partition-key 戦略から切り離し、利用者が partition key をカスタマイズできる options を追加します。
`CosmosChatHistoryProviderOptions` と partition-key 専用テストを導入し、履歴プロバイダーのデータ配置を柔軟にします。
Cosmos NoSQL に保存する既存データと構成に関わる **破壊的変更** です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.CosmosNoSql/CosmosChatHistoryProvider.cs` | 35 | 49 |
| `dotnet/src/Microsoft.Agents.AI.CosmosNoSql/CosmosChatHistoryProviderOptions.cs` | 59 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.CosmosNoSql.UnitTests/CosmosChatHistoryProviderPartitionKeyTests.cs` | 190 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.CosmosNoSql.UnitTests/CosmosChatHistoryProviderTests.cs` | 10 | 10 |

</details>

<details><summary>コミット (2 件)</summary>

- `6438737` Initial plan
- `aeac0d7` Add Cosmos chat history options and customizable partition keys

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `CosmosChatHistoryProviderOptions` を介して partition key を設定する新しい構成へ移り、履歴メタデータと partition-key 戦略の結合を解消します。旧 options／既定値からの移行時は既存データのキー設計との整合が必要です。

**既存利用者への影響**

Cosmos chat history 利用者は新しい options と partition-key 設定を明示し、既存コンテナー内のデータを引き続き参照できるか検証してください。データ移行の要否は既存キー構成によります。

### [#9004](https://github.com/microsoft/agent-framework/pull/9004) — .NET: [BREAKING] Request concise Harness progress without private reasoning

- 作者: 1aifanatic / 状態: MERGED
- ラベル: `python` `.NET` `breaking change`
- 変更行数: +15 / -5
- マージ日時 (UTC): `2026-10-07 13:17:06`

**変更概要**

Harness の進捗出力を private reasoning の要求から簡潔な progress の要求へ変更し、エージェントの内部推論を進捗情報として求めないようにします。
Harness 実装、サンプル、各ターゲットの PublicAPI 定義とテストを更新しました。
Harness を通じた progress 要求の契約に関わる **破壊的変更** です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/Program.cs` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Harness/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 2 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/PublicAPI/net472/PublicAPI.Unshipped.txt` | 2 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 2 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 2 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/PublicAPI/netstandard2.0/PublicAPI.Unshipped.txt` | 2 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `000f50b` Harness: Request concise progress instead of private reasoning
- `79dd875` test: guard Harness progress and private reasoning guidance
- `7741501` refactor: move Python changes to a separate PR

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Harness の progress 要求が private reasoning を求めず簡潔な進捗を要求する形に変わり、PublicAPI の未リリース定義も更新されています。内部 reasoning を取得する前提の呼び出し・テストは互換性を確認してください。

**既存利用者への影響**

Harness の progress 結果を利用するアプリは出力契約を再確認し、private reasoning を前提にした処理や検証を削除・更新してください。

### [#8886](https://github.com/microsoft/agent-framework/pull/8886) — [BREAKING] Python: Consolidate content identity and protocol metadata

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +3613 / -615
- マージ日時 (UTC): `2026-10-14 10:36:13`

**変更概要**

Python の各プロトコル統合で content identity と protocol metadata の扱いを統一し、A2A／AG-UI などの間でストリーム内容を一貫して識別できるようにします。
ADR と仕様を新設し、provider／generic namespace と stream merge semantics を明文化したうえで関連パッケージ・テストを更新しました。
メタデータを直接扱う Python 統合に影響する **破壊的変更** です。

<details><summary>変更ファイル (73 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0044-python-content-identity-and-protocol-metadata.md` | 379 | 0 |
| `docs/specs/004-python-function-calling-loop.md` | 14 | 1 |
| `docs/specs/005-python-content-identity-and-protocol-metadata.md` | 256 | 0 |
| `python/packages/a2a/AGENTS.md` | 5 | 0 |
| `python/packages/a2a/agent_framework_a2a/_agent.py` | 67 | 21 |
| `python/packages/a2a/tests/test_a2a_agent.py` | 122 | 1 |
| `python/packages/ag-ui/AGENTS.md` | 3 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 6 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_client.py` | 3 | 83 |
| `python/packages/ag-ui/agent_framework_ag_ui/_event_converters.py` | 10 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_run_common.py` | 2 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_utils.py` | 14 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 9 | 9 |
| `python/packages/ag-ui/tests/ag_ui/test_ag_ui_client.py` | 3 | 11 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 5 | 2 |
| _... 他 58 件_ | | |

</details>

<details><summary>コミット (17 件)</summary>

- `8139057` Python: Add ADR 0044 for content identity and protocol metadata
- `1103458` Address ADR 0044 review feedback
- `0cb8039` Use per-provider and generic namespaces in ADR 0044
- `c265d60` Update ADR 0044 for current merge paths
- `cfef864` Add explicit stream merge semantics to ADR 0044
- `a36eab8` Align ADR 0044 with current stream metadata
- `a43d2b5` Avoid compatibility for unreleased metadata markers
- `f721cea` Consolidate Python content identity and metadata
- _... 他 9 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** content identity と protocol metadata のフィールド／namespace、stream の統合規則を再定義し、未リリースの旧 metadata marker との互換性は維持しない方針です。ADR 0044 と仕様 005 が新しい契約を示します。

**既存利用者への影響**

独自に content metadata を生成・消費する利用者は、新しい仕様に合わせて保存形式と stream merge 処理を更新してください。A2A／AG-UI の複数プロトコル間の相互運用テストが必要です。

### [#9288](https://github.com/microsoft/agent-framework/pull/9288) — Python: redact exception telemetry when sensitive data is disabled

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +998 / -233
- マージ日時 (UTC): `2026-10-14 10:20:50`

**変更概要**

機微データを無効にした構成でも、MCP や workflow の例外・debug telemetry に情報が漏れないようログ出力を見直します。
MCP の例外 debug log、task abandonment、workflow observability などを段階的にマスクし、各経路のテストを追加しました。
機密情報の保護を強化するセキュリティ関連の修正で、実行 API の変更は限定的です。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_mcp.py` | 339 | 96 |
| `python/packages/core/agent_framework/_tools.py` | 4 | 1 |
| `python/packages/core/agent_framework/_workflows/_events.py` | 7 | 5 |
| `python/packages/core/agent_framework/_workflows/_executor.py` | 7 | 1 |
| `python/packages/core/agent_framework/_workflows/_functional.py` | 19 | 6 |
| `python/packages/core/agent_framework/_workflows/_workflow.py` | 12 | 5 |
| `python/packages/core/agent_framework/_workflows/_workflow_builder.py` | 5 | 3 |
| `python/packages/core/agent_framework/observability.py` | 73 | 28 |
| `python/packages/core/tests/core/test_mcp.py` | 107 | 37 |
| `python/packages/core/tests/core/test_mcp_observability.py` | 139 | 13 |
| `python/packages/core/tests/core/test_observability.py` | 63 | 25 |
| `python/packages/core/tests/core/test_tools.py` | 24 | 5 |
| `python/packages/core/tests/workflow/test_edge.py` | 40 | 1 |
| `python/packages/core/tests/workflow/test_workflow_observability.py` | 159 | 7 |

</details>

<details><summary>コミット (8 件)</summary>

- `8db7eb4` Python: redact exception telemetry when sensitive data is disabled
- `4a5d488` Python: address exception telemetry review feedback
- `76b2aba` Python: clarify exception test control flow
- `e3f8289` Python: redact MCP exception debug logs
- `3d5787f` Python: redact remaining MCP failure logs
- `fd2cbe2` Python: gate all MCP exception-bearing logs
- `e625b56` Merge remote-tracking branch 'origin/main' into fix-issue-9263
- `eba7bf6` Python: gate MCP task abandonment logs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

例外を含む MCP／workflow log と telemetry の出力を、sensitive data 設定に応じて抑制・秘匿化します。公開 API シグネチャの変更は示されておらず、コミットはログ経路とテストの修正が中心です。

**既存利用者への影響**

API 移行は不要です。機微情報を無効化した構成でログに依存する運用者は、出力内容の変化を確認し、過去ログの保管・アクセス方針も点検してください。

### [#9145](https://github.com/microsoft/agent-framework/pull/9145) — Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `dependencies` `javascript`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-10-08 08:28:53`

**変更概要**

AG-UI workflow handoff サンプルの `source-map-js` を 1.2.1 から 1.2.2 に更新する依存修正です。
変更はサンプルの `package-lock.json` に限定され、アプリケーションコードや公開 API は変更しません。
対象サンプルをビルドする場合の依存更新です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend/package-lock.json` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `dee460b` build(deps): bump source-map-js

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`package-lock.json` の依存バージョンを更新する変更のみで、API シグネチャや Agent Framework の実行時動作に変更はありません。

**既存利用者への影響**

移行作業は不要です。サンプル利用者は lockfile を更新して依存を再インストールしてください。

### [#9118](https://github.com/microsoft/agent-framework/pull/9118) — Python: redact DevUI auth tokens from Azure deployment diagnostics

- 作者: HeZ2z / 状態: MERGED
- ラベル: `python`
- 変更行数: +225 / -2
- マージ日時 (UTC): `2026-10-12 09:15:09`

**変更概要**

Azure への DevUI デプロイ時、診断ログに認証トークンが平文で出力されないようマスク処理を追加します。
変更は deployment 実装と回帰テストに限定され、デプロイ時のログを調査する運用者の機密情報保護を改善します。
利用 API の追加・変更ではなく、ログの秘匿化が目的です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/devui/agent_framework_devui/_deployment.py` | 11 | 2 |
| `python/packages/devui/tests/devui/test_deployment.py` | 214 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `677bbfd` Python: Redact DevUI auth token from Azure deployment logs
- `567504b` Merge branch 'main' into fix/9116-devui-token-redaction

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DEVUI_AUTH_TOKEN` を含む Azure deployment diagnostics の出力をマスクします。公開 API の変更はなく、認証トークンのログ漏えいを抑止する実装とテストが追加されています。

**既存利用者への影響**

移行作業は不要です。修正を取り込んだ後もトークンを記録しないことを確認し、修正前の診断ログを保管している場合はアクセス権を点検してください。

### [#9104](https://github.com/microsoft/agent-framework/pull/9104) — Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/packages/devui/frontend

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `dependencies` `javascript`
- 変更行数: +6 / -6
- マージ日時 (UTC): `2026-10-08 08:28:53`

**変更概要**

DevUI フロントエンドの `source-map-js` を 1.2.1 から 1.2.2 に更新します。
`package-lock.json` と `yarn.lock` の依存解決結果のみが変更対象で、UI 機能や Agent Framework API には変更ありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/devui/frontend/package-lock.json` | 3 | 3 |
| `python/packages/devui/frontend/yarn.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `aab0cc0` build(deps): bump source-map-js in /python/packages/devui/frontend

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存 lockfile の更新のみです。公開 API シグネチャやアプリケーションコードの変更はありません。

**既存利用者への影響**

移行作業は不要です。DevUI フロントエンドをビルドする場合は lockfile を同期してください。

### [#9216](https://github.com/microsoft/agent-framework/pull/9216) — Python: Remove obsolete release docs workflow

- 作者: jpalvarezl / 状態: MERGED
- ラベル: —
- 変更行数: +0 / -39
- マージ日時 (UTC): `2026-10-08 17:30:36`

**変更概要**

廃止済みの Python ドキュメント生成 GitHub Actions workflow を削除し、不要な CI 定義を整理します。
変更は `.github/workflows/python-docs.yml` の削除だけで、ライブラリ API や利用者向けドキュメント生成機能を直接変更するものではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-docs.yml` | 0 | 39 |

</details>

<details><summary>コミット (1 件)</summary>

- `0c41d82` Remove obsolete Python docs workflow

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

workflow ファイルの削除のみで、Python package の API／実行時動作に変化はありません。

**既存利用者への影響**

通常は移行不要です。独自 CI からこの workflow を参照していた場合のみ、代替ジョブへ更新してください。

### [#9146](https://github.com/microsoft/agent-framework/pull/9146) — Python: Foundry hosting: warn against hosting a WorkflowAgent through agent=

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +156 / -14
- マージ日時 (UTC): `2026-10-07 13:31:55`

**変更概要**

Foundry hosting で `WorkflowAgent` を `agent=` に渡す誤用を検出し、非推奨の利用方法を README と実行時警告で案内します。
invocation factory の一時的な回避策の適用範囲も限定し、関連レスポンスとテストを更新します。
既存のホスティング呼び出しに対して非推奨移行を促す変更です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/README.md` | 29 | 8 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 25 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 12 | 5 |
| `python/packages/foundry_hosting/tests/foundry_hosting/test_native_responses.py` | 9 | 1 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 81 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `b24e745` Python: Foundry hosting: warn against hosting a WorkflowAgent through…
- `1912c6d` Python: Foundry hosting: also log the WorkflowAgent hosting deprecation
- `b1ad718` Python: Foundry hosting: limit the Invocations factory workaround to …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`agent=` による `WorkflowAgent` のホスティングを非推奨とする警告・説明を追加しています。PR は即時のシグネチャ削除ではなく、request-scoped factory を用いる方法への移行を告知する段階です。

**既存利用者への影響**

既存コードは直ちに停止しませんが、警告が出る利用者は README の新しいホスティング方法へ移行し、将来の削除に備えてください。

### [#9119](https://github.com/microsoft/agent-framework/pull/9119) — Python: Update Anthropic SDK to 1.11

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +146 / -41
- マージ日時 (UTC): `2026-10-07 12:05:32`

**変更概要**

Anthropic Python SDK 1.11 への更新に合わせ、Anthropic chat client と Bedrock client の provider 実装を調整します。
依存定義、lockfile、サンプルを更新し、SDK 1.x 互換性を確認する provider client テストを追加しました。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/anthropic/agent_framework_anthropic/_bedrock_client.py` | 29 | 2 |
| `python/packages/anthropic/agent_framework_anthropic/_chat_client.py` | 26 | 8 |
| `python/packages/anthropic/pyproject.toml` | 1 | 1 |
| `python/packages/anthropic/tests/test_anthropic_client.py` | 26 | 10 |
| `python/packages/anthropic/tests/test_anthropic_provider_clients.py` | 45 | 0 |
| `python/samples/02-agents/providers/anthropic/anthropic_skills.py` | 7 | 8 |
| `python/samples/02-agents/typed_options.py` | 7 | 6 |
| `python/uv.lock` | 5 | 6 |

</details>

<details><summary>コミット (2 件)</summary>

- `df87bfa` Update Anthropic SDK to 1.11
- `19032d2` Fix Anthropic SDK 1.x compatibility

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存 SDK を 1.11 に更新し、SDK 1.x の呼び出し互換性に合わせて Anthropic／Bedrock client の内部実装とサンプルを修正しています。Agent Framework の公開 API 追加は示されていません。

**既存利用者への影響**

Anthropic provider を使う利用者は依存更新後に chat／Bedrock 呼び出しを再テストしてください。通常の Framework API 移行は不要です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9357 | .NET: fix(dotnet): validate declarative control-flow inputs | baywet | <https://github.com/microsoft/agent-framework/pull/9357> |
| #9415 | fix(ci): separate dotnet unit and integration event selection | baywet | <https://github.com/microsoft/agent-framework/pull/9415> |
| #9425 | .NET: Bound MCP-listed skill resource sizes | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9425> |
| #9429 | .NET: Clarify usage of tools on chatclient stack providers | westey-m | <https://github.com/microsoft/agent-framework/pull/9429> |
| #9394 | .NET: fix(dotnet): refresh reused workflow executor state | baywet | <https://github.com/microsoft/agent-framework/pull/9394> |
| #9414 | .NET: Add vectorstore community projects | westey-m | <https://github.com/microsoft/agent-framework/pull/9414> |
| #9412 | Python: Improve atomic writes for Memory and Todos | westey-m | <https://github.com/microsoft/agent-framework/pull/9412> |
| #9193 | Python: A2AExecutor: accept forwarded run kwargs from request metadata | droideronline | <https://github.com/microsoft/agent-framework/pull/9193> |
| #9331 | Python: close loop inner stream on early exit | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/9331> |
| #9409 | .NET: Add clarification for function middleware and FICC.AdditionalTools | westey-m | <https://github.com/microsoft/agent-framework/pull/9409> |
| #9407 | .NET: Add CommunityToolkit.VectorData.Chroma to the .NET community projects | Laurianti | <https://github.com/microsoft/agent-framework/pull/9407> |
| #9393 | .NET: fix(dotnet): honor registered function approval requirements | baywet | <https://github.com/microsoft/agent-framework/pull/9393> |
| #9395 | .NET: fix(dotnet): keep case-variant variable metadata independent | baywet | <https://github.com/microsoft/agent-framework/pull/9395> |
| #9176 | Python: Bound declarative custom-function matches to one whole call | atty57 | <https://github.com/microsoft/agent-framework/pull/9176> |
| #8851 | Python: Keep every queued approval result in the AG-UI thread snapshot | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/8851> |
| #8779 | Python: fix(orchestration): add ensure_trailing_user_turn to SequentialBuilder for providers that return empty text on assistant-ending prompts | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8779> |
| #9355 | Python: fix(core): accept Literal source types in the workflow edge type check | shanto462 | <https://github.com/microsoft/agent-framework/pull/9355> |
| #9345 | Python: fix(bedrock): merge per-call client kwargs into the Converse request | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9345> |
| #9343 | Python: fix(anthropic): nest bash tool result files inside the shell tool result | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9343> |
| #9318 | Python: Reject out-of-range Cosmos memory search parameters | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/9318> |
| #9304 | Python: fix(core): rebuild nested Content of image generation and MCP tool results in Content.from_dict | shanto462 | <https://github.com/microsoft/agent-framework/pull/9304> |
| #9404 | Python: Bump package versions for 1.22.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9404> |
| #9128 | Python: fix(devui): discover entities exported with an annotated assignment | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/9128> |
| #9327 | Python: Treat a single string passed to Message as one text content | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9327> |
| #9291 | Python: Preserve concurrent steps across workflow pause | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9291> |
| #9367 | Python: Protect standalone FIDES session state from AG-UI request state | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9367> |
| #9389 | .NET: Dotnet: Add approval reuse considerations | westey-m | <https://github.com/microsoft/agent-framework/pull/9389> |
| #9364 | Python: block reparse points in Monty file capture | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9364> |
| #9390 | Python: Add approval reuse considerations | westey-m | <https://github.com/microsoft/agent-framework/pull/9390> |
| #8532 | .NET: terminate chat completions SSE stream with data: [DONE] | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8532> |
| #9388 | .NET: Update version for 1.25.0 release | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9388> |
| #9375 | .NET: Also include citations and error details in purview checks. | westey-m | <https://github.com/microsoft/agent-framework/pull/9375> |
| #9174 | .NET: Fix reasoning remnants and handoff bounce-back | baywet | <https://github.com/microsoft/agent-framework/pull/9174> |
| #9386 | .NET: Upgrade A2A packages to 1.0.0-preview3 | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9386> |
| #9372 | .NET: Verify MCP-listed skill resource digests and sizes | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9372> |
| #9152 | .NET: Automatically reject tool-approval requests that never receive a response | westey-m | <https://github.com/microsoft/agent-framework/pull/9152> |
| #9376 | .NET: Fix OpenAPI integration test after service redirect | westey-m | <https://github.com/microsoft/agent-framework/pull/9376> |
| #9363 | Python: Add Python 3.15 support and refresh dependencies | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9363> |
| #9361 | Python: Keep tool arguments off invocation metrics | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9361> |
| #9356 | Python: Add Quilzo to the Python community projects | rsh1k | <https://github.com/microsoft/agent-framework/pull/9356> |
| #9360 | Python: Filter caller options in hosting-responses README example | bschaeublin | <https://github.com/microsoft/agent-framework/pull/9360> |
| #9255 | Python: fix anthropic dependency bounds via dev dependency group instead of runtime deps | zhaoruizhe81 | <https://github.com/microsoft/agent-framework/pull/9255> |
| #9353 | Python: fix(core): start a new message when the author changes in streamed updates | shanto462 | <https://github.com/microsoft/agent-framework/pull/9353> |
| #9188 | Python: Make media type detection documentation examples runnable | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9188> |
| #8732 | Python: fix(core): treat a single mapping tool as one tool in merge_chat_options | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8732> |
| #9319 | .NET: Verify MCP-listed skill frontmatter with a shared parser | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9319> |
| #9202 | .NET: feat(dotnet): support closed-list workflow questions | kr1shna-exe | <https://github.com/microsoft/agent-framework/pull/9202> |
| #8819 | Python: Fix/7859 discard pending state | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/8819> |
| #9315 | .NET: Bump the agent-memory group with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9315> |
| #9311 | Python: Clarify meta-package promotion policy | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9311> |
| #9289 | Python: Fix restored subworkflow sibling requests | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9289> |
| #9306 | Python: build(deps): bump @xyflow/react in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9306> |
| #9310 | Python: build(deps-dev): bump @types/node in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9310> |
| #9323 | Python: tool role testing | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/9323> |
| #9139 | Python: Honor the configured model in streamed Gemini chunks | Ayoubhm07 | <https://github.com/microsoft/agent-framework/pull/9139> |
| #9299 | Python: fix(core): keep the JSON schema of dict-schema tools in FunctionTool.to_dict() | shanto462 | <https://github.com/microsoft/agent-framework/pull/9299> |
| #9300 | Python: fix(core): allow switch-case branches to share a target executor | shanto462 | <https://github.com/microsoft/agent-framework/pull/9300> |
| #8273 | Python: fix(ag-ui): persist workflow HITL user text in thread snapshots | ktz03 | <https://github.com/microsoft/agent-framework/pull/8273> |
| #8976 | Python: Surface oauth_consent_request in non-streaming Foundry responses | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8976> |
| #9087 | Python: Avoid generated executor ID collisions in declarative workflows | ktz03 | <https://github.com/microsoft/agent-framework/pull/9087> |
| #9091 | Python: Honor BreakLoop signals in declarative Foreach workflows | ktz03 | <https://github.com/microsoft/agent-framework/pull/9091> |
| #9096 | Python: Preserve substituted values in declarative templates | ktz03 | <https://github.com/microsoft/agent-framework/pull/9096> |
| #9121 | Python: Replace MCP prompt catalog on refresh | Anshuman-Prakash | <https://github.com/microsoft/agent-framework/pull/9121> |
| #9181 | Python: Retry the Magentic progress ledger when it names an unknown agent | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9181> |
| #9192 | Python: A2AAgent: forward selected run kwargs in request metadata | droideronline | <https://github.com/microsoft/agent-framework/pull/9192> |
| #9195 | Python: make_json_safe serializes plain Enum members by value instead of recursing | nefayran | <https://github.com/microsoft/agent-framework/pull/9195> |
| #8265 | .NET: fix: preserve agent continuation token when wrapped with UseOpenTelemetry | atty57 | <https://github.com/microsoft/agent-framework/pull/8265> |
| #9292 | Python: build(deps): consolidate Dependabot updates | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9292> |
| #9298 | Python: fix(hosting-responses): keep the media type of input_image data URLs | shanto462 | <https://github.com/microsoft/agent-framework/pull/9298> |
| #8824 | Python: Fix tool argument validation for datetime, set and tuple parameters | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/8824> |
| #9217 | .NET: Integrate MCP-listed skill discovery | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9217> |
| #8965 | Python: Honor a zero handoff autonomous turn limit instead of defaulting to 50 | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/8965> |
| #9028 | Python: Await async callable aggregators in ConcurrentBuilder | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9028> |
| #9047 | Python: recover queued persistent shell commands | fhgffy | <https://github.com/microsoft/agent-framework/pull/9047> |
| #9068 | Python: Preserve reusable declarative model options | ktz03 | <https://github.com/microsoft/agent-framework/pull/9068> |
| #9069 | Python: Omit null fields from Redis context writes | ktz03 | <https://github.com/microsoft/agent-framework/pull/9069> |
| #9073 | Python: Fix quoted arguments in declarative concatenation | ktz03 | <https://github.com/microsoft/agent-framework/pull/9073> |
| #9075 | Python: Preserve image-only messages in Azure AI Search retrieval | ktz03 | <https://github.com/microsoft/agent-framework/pull/9075> |
| #9085 | Python: Update canonical document status after restored upload retries | ktz03 | <https://github.com/microsoft/agent-framework/pull/9085> |
| #9089 | Python: Ignore braces inside strings when parsing the Magentic progress ledger | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9089> |
| #9098 | Python: Read AZURE_OPENAI_API_VERSION before applying the Azure client default | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9098> |
| #9131 | Python: Reset Magentic participant sessions on replan | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9131> |
| #9142 | Python: Concatenate code-interpreter stream deltas with prefix overlap (#8955) | FOWEPJF255 | <https://github.com/microsoft/agent-framework/pull/9142> |
| #9159 | Python: fix(claude): preserve explicit zero limit options | suhasagg | <https://github.com/microsoft/agent-framework/pull/9159> |
| #9182 | Python: Reject request info filters that name agents outside the orchestration | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9182> |
| #9203 | Python: Fix active mixed-pause Host response correlation | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/9203> |
| #9233 | Python: Forward Oracle pool configuration settings | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9233> |
| #9232 | Python: run single-version tools on demand | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9232> |
| #9056 | Python: allow empty A2A attachment payloads | fhgffy | <https://github.com/microsoft/agent-framework/pull/9056> |
| #9249 | Python: fix(bedrock): use the boto3 session's region in BedrockChatClient | shanto462 | <https://github.com/microsoft/agent-framework/pull/9249> |
| #9222 | Python: Add service_url to OllamaChatClient | BichengWang | <https://github.com/microsoft/agent-framework/pull/9222> |
| #9225 | Python: Add service_url to OpenAIChatClient | BichengWang | <https://github.com/microsoft/agent-framework/pull/9225> |
| #9242 | Make issue planning decision-first and proportionate to the ask | westey-m | <https://github.com/microsoft/agent-framework/pull/9242> |
| #9229 | Python: Fix indentation in the `SecureAgentConfig` example | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9229> |
| #9201 | Python: Import `Content` in the `ChatResponse.from_updates` example | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9201> |
| #9082 | Python: preserve distinct Mermaid workflow node identities | ktz03 | <https://github.com/microsoft/agent-framework/pull/9082> |
| #9079 | Python: preserve metadata-like text in memory topic summaries | ktz03 | <https://github.com/microsoft/agent-framework/pull/9079> |
| #9077 | Python: parse scientific notation in declarative numeric values | ktz03 | <https://github.com/microsoft/agent-framework/pull/9077> |
| #8987 | Python: fix(ollama): omit tools when tool_choice is none | ankit2235 | <https://github.com/microsoft/agent-framework/pull/8987> |
| #9223 | [Python] Add a dedicated Cosmos memory provider User-Agent token | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/9223> |
| #9107 | Add community project catalogs | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9107> |
| #8953 | Python: fix(core): fold streamed text runs in one pass instead of repeated += | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8953> |
| #8731 | Python: fix(core): accept a bare container type as an edge target for a parameterized output | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8731> |
| #9002 | Python: Sramsey/python continuation token fix | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/9002> |
| #9230 | Python: Bump TypeScript frontend dependencies | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9230> |
| #8985 | Python: Minor updates to response-stream example and Foundry hosted agent doc | dargilco | <https://github.com/microsoft/agent-framework/pull/8985> |
| #9030 | Python: docs: persist the session in the hosting quickstart | BichengWang | <https://github.com/microsoft/agent-framework/pull/9030> |
| #9198 | .NET: Add runtime support for MCP-listed skills | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9198> |
| #9190 | Python: Bump package versions for 1.21.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9190> |
| #8848 | .NET: Isolate Foundry toolbox response cache | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8848> |
| #9134 | Python: Add AI-assisted contribution policy and issue-first workflow | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9134> |
| #9100 | Python: Close delegated provider streams on public stream release | quifox | <https://github.com/microsoft/agent-framework/pull/9100> |
| #9117 | Python: Fix flat function mappings in progressive tool name checks | suhasagg | <https://github.com/microsoft/agent-framework/pull/9117> |
| #9124 | Python: fix(hosting-responses): parse input messages that omit "type" | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/9124> |
| #9126 | Python: fix(devui): page list_items past checkpoint items | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/9126> |
| #9144 | Python: fix(ollama, gemini): close the SDK stream when the consumer stops early | ankit2235 | <https://github.com/microsoft/agent-framework/pull/9144> |
| #8676 | Python: Add Oracle native vector store connector | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8676> |
| #9172 | Python: fix(hosting): avoid retaining per-session locks | suhasagg | <https://github.com/microsoft/agent-framework/pull/9172> |
| #9180 | Python: fix(devui): scope function approvals to conversations | suhasagg | <https://github.com/microsoft/agent-framework/pull/9180> |
| #9175 | Python: Warn about unsupported FIDES CodeAct tools | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9175> |
| #9105 | Python: build(deps): bump multidict from 6.7.1 to 6.9.1 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9105> |
| #8888 | Python: Bump brace-expansion 1.x to 1.1.21 in devui frontend (GHSA-q2hr-2g5m-vwhr) | Copilot | <https://github.com/microsoft/agent-framework/pull/8888> |
| #9161 | Python: Fix Windows Pyright errors for POSIX-only os flags in file_access sample | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9161> |
| #9148 | Add issue planning agentic workflow | westey-m | <https://github.com/microsoft/agent-framework/pull/9148> |
| #9158 | build(deps): bump actions/upload-code-coverage from 1.4.2 to 1.4.3 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9158> |
| #9147 | .NET: Revert accidental merge of #9004 | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9147> |
| #9151 | ci: adds dependabot configuration for npm devui and samples | baywet | <https://github.com/microsoft/agent-framework/pull/9151> |
| #8853 | Python: Isolate provider-owned state in agent tools | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8853> |
| #8918 | Python: Fix data URI validation and media type detection | charan-rathore | <https://github.com/microsoft/agent-framework/pull/8918> |
| #9029 | Python: fix(core): warn when a streamed run registers result gates without buffering | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9029> |
| #9032 | Python: Serialize file edits across providers sharing an AgentFileStore | nefayran | <https://github.com/microsoft/agent-framework/pull/9032> |
| #8857 | Python: Add max reasoning effort option | demoray | <https://github.com/microsoft/agent-framework/pull/8857> |
| #9135 | Python: Update GitHub Copilot SDK to 1.0.16 | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9135> |
| #8936 | Python: fix(bedrock): keep reasoning content so extended thinking works with tool calls | Leela0o5 | <https://github.com/microsoft/agent-framework/pull/8936> |
| #9140 | .NET: Restore source-only release solution filter | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9140> |
| #9012 | .NET: Preserve explicit null session state across roundtrips | LEN5010 | <https://github.com/microsoft/agent-framework/pull/9012> |
| #9133 | Python: Align and simplify get-started samples | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9133> |
| #9013 | .NET: Honor disabled recent search memory | LEN5010 | <https://github.com/microsoft/agent-framework/pull/9013> |
| #9017 | .NET: Preserve lazy request messages through agent invocation | LEN5010 | <https://github.com/microsoft/agent-framework/pull/9017> |
| #9120 | .NET: Update version for 1.24.0 release | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9120> |
| #9111 | .NET: Stabilize Anthropic agent package | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9111> |
| #9071 | .NET: Reject sensitive declarative identifiers | baywet | <https://github.com/microsoft/agent-framework/pull/9071> |
| #8852 | Python: Clarify Foundry agent tool ownership | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8852> |
| #9057 | .NET: Harden LocalCodeAct capability validation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9057> |
| #9070 | Python: [Python/.NET] Normalize Foundry sample configuration | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9070> |
| #9050 | Python: Run local sibling tools in declaration-only mixed batches | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9050> |
| #9059 | Python: Fix stale Foundry Toolbox call IDs | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9059> |
| #9035 | Python: Replace invalid characters in handoff tool names | Shizoqua | <https://github.com/microsoft/agent-framework/pull/9035> |
| #8984 | Python: Honor proxy environment variables in connector-owned TypeSafe clients | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8984> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9436 | Python: fix citation issue | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/9436> |
| PR | #9433 | Python: Samples: terminate only on high/critical matches in ATR validation middleware | open | eeee2345 | <https://github.com/microsoft/agent-framework/pull/9433> |
| PR | #9432 | .NET: Deduplicate fan-out targets so each target runs once | open | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/9432> |
| PR | #9322 | Python: [BREAKING] Migrate Foundry Local integration to SDK 2.1 | open | bmehta001 | <https://github.com/microsoft/agent-framework/pull/9322> |
| PR | #9428 | Python: fix(declarative): honor the variable field in SetValue | open | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9428> |
| PR | #9346 | Python: add Milvus vector store (agent-framework-milvus) | open | Nanduu24 | <https://github.com/microsoft/agent-framework/pull/9346> |
| PR | #9237 | Python: Document MCP v2 client lifecycle and update samples | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9237> |
| PR | #9384 | Python: Add agent-triggered in-run compaction | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9384> |
| PR | #9424 | Python: Bump opentelemetry-api from 1.45.0 to 1.45.1 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9424> |
| PR | #9423 | Python: Bump orjson from 3.12.0 to 3.13.0 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9423> |
| PR | #9422 | Python: Bump opentelemetry-sdk from 1.45.0 to 1.45.1 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9422> |
| PR | #9421 | Python: Bump pydantic from 2.13.5 to 2.14.0 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9421> |
| PR | #9417 | Python: Bump @radix-ui/react-dropdown-menu in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9417> |
| PR | #9419 | Python: Bump @radix-ui/react-scroll-area in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9419> |
| PR | #9416 | Python: Bump @radix-ui/react-checkbox in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9416> |
| PR | #9418 | Python: Bump @radix-ui/react-label in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9418> |
| PR | #9420 | Python: Bump the agent-framework group in /python/packages/lab with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9420> |
| PR | #9413 | [BREAKING] Python: Require explicit AG-UI authorization scope | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9413> |
| PR | #9374 | Python: Add installable Agent Framework builder skill | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9374> |
| PR | #9387 | Python: fix(core): keep finished background tasks until cleared or released | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/9387> |
| PR | #9411 | Python: TypeSafe: support inline images and Box questions (Jev 1.14) | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/9411> |
| PR | #9408 | Python: .NET/Python: Add Cohesivity to the community projects | open | shouryamaanjain | <https://github.com/microsoft/agent-framework/pull/9408> |
| PR | #9339 | Python: fix(ag-ui): keep repeated single-chunk text deltas | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9339> |
| PR | #9340 | Python: fix(lab-gaia): accept local parquet data in _ensure_data | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9340> |
| PR | #9341 | Python: fix(lab-tau2): check the over-max warning before the half-of-max warning | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9341> |
| PR | #9166 | Python: add AsyncRequestBroker and shell command audit log | open | marklicata | <https://github.com/microsoft/agent-framework/pull/9166> |
| PR | #9405 | Python: feat(core): load the agent-hooks middleware from a host declaration | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/9405> |
| PR | #9351 | Python: fix(foundry_hosting): send the base64 image as the image_generation_call result | open | shanto462 | <https://github.com/microsoft/agent-framework/pull/9351> |
| PR | #9406 | .NET: build agent-hooks enforcement from a host declaration document | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/9406> |
| PR | #9261 | Python: Resolve checkpoint get_latest timestamp ties through lineage | open | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9261> |
| PR | #9260 | Python: Reject oversized MessagePack history records before writing | open | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9260> |
| PR | #9294 | Python: Keep sessions pending when a consolidation pass did not cover them | open | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9294> |
| PR | #9399 | Python: fix(bedrock): report the requested model on non-streaming responses | open | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9399> |
| PR | #9403 | Python: fix tools from context providers | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/9403> |
| PR | #9402 | Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m | open | dargilco | <https://github.com/microsoft/agent-framework/pull/9402> |
| PR | #9391 | [BREAKING] Python: Reject unsafe functional step replay | open | atty57 | <https://github.com/microsoft/agent-framework/pull/9391> |
| PR | #9400 | Python: fix(tools): preserve UTF-8 characters without unicode escaping in tool results | open | nithin42 | <https://github.com/microsoft/agent-framework/pull/9400> |
| PR | #9397 | Python: fix(workflows): support keyword-only RunContext in functional workflows | open | nithin42 | <https://github.com/microsoft/agent-framework/pull/9397> |
| PR | #9382 | .NET: Honor hosted agent lifetimes and add request-time agent selection | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/9382> |
| PR | #9378 | Python: Support ag-ui-protocol 1.0 in agent-framework-ag-ui | open | mme | <https://github.com/microsoft/agent-framework/pull/9378> |
| PR | #9334 | Python: Fix: surface error_code for Anthropic text-editor tool errors (empty message) | open | PratikDhanave | <https://github.com/microsoft/agent-framework/pull/9334> |
| PR | #9243 | Python: fix(core): do not replay MCP tools/call without an idempotency hint | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9243> |
| PR | #9227 | Python: fix(core): keep distinct non-ASCII memory topics in separate files | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9227> |
| PR | #9332 | Python: Use the public URI constructor in the Message example | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9332> |
| PR | #9333 | Python: Make tool-normalization documentation examples self-contained | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9333> |
| PR | #9257 | Python: Make Executor type-system examples valid Python | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9257> |
| PR | #9164 | Python: add AgentBudget for autonomous loop resource limits | open | marklicata | <https://github.com/microsoft/agent-framework/pull/9164> |
| PR | #9165 | .NET: add token and time budgets to LoopAgent | open | marklicata | <https://github.com/microsoft/agent-framework/pull/9165> |
| PR | #9167 | .NET: add AsyncRequestBroker | open | marklicata | <https://github.com/microsoft/agent-framework/pull/9167> |
| PR | #9163 | .NET: add SignalProtocolLoopEvaluator for LoopAgent | open | marklicata | <https://github.com/microsoft/agent-framework/pull/9163> |
| PR | #9162 | Python: add signal protocol for AgentLoopMiddleware autonomous loops | open | marklicata | <https://github.com/microsoft/agent-framework/pull/9162> |
| PR | #9349 | Python: fix(bedrock): resolve the BedrockEmbeddingClient region like the chat client | open | shanto462 | <https://github.com/microsoft/agent-framework/pull/9349> |
| PR | #9335 | Python: Fix: readable TypeError for union response_type mismatch (no __name__ crash on 3.10/3.11) | open | PratikDhanave | <https://github.com/microsoft/agent-framework/pull/9335> |
| PR | #9314 | Python: Reject a non-positive MCP request timeout instead of disabling it | open | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/9314> |
| PR | #9101 | Python: fix(declarative): read every message shape in MessageText | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9101> |
| PR | #9250 | Python: fix(core): deep-restore nested registered values in the default Pydantic state decoder | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9250> |
| PR | #9106 | Python: Fix the serialization protocol round-trip example | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9106> |
| PR | #9240 | Python: fix(core): stop losing multiline consolidated memories on reload | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9240> |
| PR | #9302 | Python: fix(claude): send the declared JSON schema of tools to Claude | open | shanto462 | <https://github.com/microsoft/agent-framework/pull/9302> |
| PR | #9113 | Python: Enable tool search in the Foundry Toolbox sample | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9113> |
| PR | #9269 | .NET: Preserve caller cancellation in memory providers | open | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9269> |
| PR | #9253 | .NET: Add Redis checkpoint store for workflows | open | Murat7Ay | <https://github.com/microsoft/agent-framework/pull/9253> |
| PR | #9153 | Python: preserve custom memory topic slugs on reload | open | Kunyanli230 | <https://github.com/microsoft/agent-framework/pull/9153> |
| PR | #9103 | .NET: Add PostgreSQL conversation persistence DevUI sample | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9103> |
| PR | #9114 | Python: Add Container Apps Dynamic Sessions sample | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9114> |
| PR | #9401 | Python: fix(eval): include ContextProvider and SkillsProvider tools in evaluation definitions | closed | nithin42 | <https://github.com/microsoft/agent-framework/pull/9401> |
| PR | #9309 | Python: build(deps): bump react-dom in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9309> |
| PR | #9396 | Python: fix(workflows): support Literal types in workflow edge type compatibility | closed | nithin42 | <https://github.com/microsoft/agent-framework/pull/9396> |
| PR | #8561 | .NET: fix: Forward x-agent-user-id to toolbox proxy to resolve OAuth consent binding  #8379 | closed | sun-9545sunoj | <https://github.com/microsoft/agent-framework/pull/8561> |
| PR | #9307 | build(deps): bump lucide-react in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9307> |
| PR | #9308 | build(deps): bump react in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9308> |
| PR | #9305 | .NET: Yafeya learning | closed | yafeya-frank | <https://github.com/microsoft/agent-framework/pull/9305> |
| PR | #9149 | Python: fix(devui): redact auth token from deployment logs | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/9149> |
| PR | #9196 | .NET: fix(dotnet): accept raw continuation tokens | closed | kr1shna-exe | <https://github.com/microsoft/agent-framework/pull/9196> |
| PR | #9293 | Python: Add per-tool rate limiting and admission control | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9293> |
| PR | #9256 | Bump AgentMemory and AgentMemory.AgentFramework | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9256> |
| PR | #9274 | Python: build(deps): bump agent-framework-core from 1.19.0 to 1.20.0 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9274> |
| PR | #9273 | Python: build(deps-dev): bump the basics group in /python/packages/lab with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9273> |
| PR | #9259 | build(deps): bump actions/upload-code-coverage from 1.4.3 to 1.4.4 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9259> |
| PR | #9280 | Python: build(deps): bump @radix-ui/react-tooltip from 1.2.8 to 1.2.16 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9280> |
| PR | #9282 | Python: build(deps): bump @radix-ui/react-checkbox from 1.3.3 to 1.3.11 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9282> |
| PR | #9271 | Python: build(deps-dev): bump prek from 0.5.4 to 0.5.5 in /python/packages/lab in the basics group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9271> |
| PR | #9272 | Python: build(deps): bump @radix-ui/react-switch from 1.2.6 to 1.3.7 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9272> |
| PR | #9275 | Python: build(deps): bump huggingface-hub from 1.33.0 to 2.1.1 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9275> |
| PR | #9276 | Python: build(deps-dev): bump agent-framework-openai from 1.14.4 to 1.15.0 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9276> |
| PR | #9278 | Python: build(deps-dev): bump vite from 8.0.16 to 8.3.2 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9278> |
| PR | #9277 | build(deps): bump j178/prek-action from 3.0.0 to 3.0.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9277> |
| PR | #9279 | build(deps): bump github/gh-aw-actions/setup from 0.89.21 to 0.91.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9279> |
| PR | #9281 | Python: build(deps): bump @radix-ui/react-label from 2.1.7 to 2.1.15 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9281> |
| PR | #9283 | Python: build(deps-dev): bump vite from 8.1.5 to 8.3.2 in /python/samples/05-end-to-end/ag_ui_single_agent/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9283> |
| PR | #9284 | Python: build(deps-dev): bump vite from 8.0.16 to 8.3.2 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9284> |
| PR | #9285 | Python: build(deps-dev): bump vite from 8.0.16 to 8.3.2 in /python/samples/05-end-to-end/chatkit-integration/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9285> |
| PR | #9287 | .NET: Bump the aspire group with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9287> |
| PR | #9286 | Python: build(deps-dev): update flit-core requirement from <4.0,>=3.11 to >=3.11,<5.0 in /python in the flit group | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9286> |
| PR | #9290 | Python: feat(python): add opt-in fail-closed FIDES coverage for CodeAct host tools | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9290> |
| PR | #9258 | build(deps): bump github/gh-aw-actions/setup from 0.89.21 to 0.90.3 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9258> |
| PR | #9247 | Python: fix(python): prevent duplicate MCP tool execution after ambiguous connection loss | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9247> |
| PR | #9169 | Bump AgentMemory and AgentMemory.AgentFramework | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9169> |
| PR | #8619 | .NET: Add AgentSessionExtensions to retrieve messages from WorkflowChatHistoryProvider | closed | MD-V | <https://github.com/microsoft/agent-framework/pull/8619> |
| PR | #9185 | Python: Add Arize AX and Phoenix to the observability samples README | closed | jimbobbennett | <https://github.com/microsoft/agent-framework/pull/9185> |
| PR | #9234 | Python: [BREAKING] Migrate MCP server hosting to MCP SDK v2 | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9234> |
| PR | #9220 | Python: build(deps): bump source-map-js from 1.2.1 to 1.2.2 in /python/samples/05-end-to-end/chatkit-integration/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9220> |
| PR | #9213 | Python: build(deps-dev): bump typescript from 5.9.3 to 7.0.2 in /python/samples/05-end-to-end/chatkit-integration/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9213> |
| PR | #9212 | Python: build(deps-dev): bump typescript from 5.9.3 to 7.0.2 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9212> |
| PR | #9211 | Python: build(deps-dev): bump typescript from 5.9.3 to 7.0.2 in /python/samples/05-end-to-end/ag_ui_single_agent/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9211> |
| PR | #9210 | Python: build(deps-dev): bump @eslint/js from 9.33.0 to 10.0.1 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9210> |
| PR | #9209 | Python: build(deps): bump @radix-ui/react-select from 2.2.6 to 2.3.7 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9209> |
| PR | #9208 | Python: build(deps): bump zustand from 5.0.8 to 5.0.15 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9208> |
| PR | #9207 | Python: build(deps-dev): bump eslint-plugin-react-refresh from 0.4.20 to 0.5.7 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9207> |
| PR | #9206 | Python: build(deps-dev): bump typescript from 5.8.3 to 5.9.3 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9206> |
| PR | #8582 | Python: Fix active mixed-pause Host response correlation | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/8582> |
| PR | #9155 | Python: build(deps): bump tailwind-merge from 3.3.1 to 3.7.0 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9155> |
| PR | #9156 | Python: build(deps): bump tailwindcss from 4.3.1 to 4.3.3 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9156> |
| PR | #9154 | Python: build(deps): bump @radix-ui/react-scroll-area from 1.2.10 to 1.2.18 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9154> |
| PR | #9168 | Document that Python and .NET changes go in separate PRs | closed | marklicata | <https://github.com/microsoft/agent-framework/pull/9168> |
| PR | #8995 | Python: Python + .NET: add AsyncRequestBroker and shell command audit log | closed | marklicata | <https://github.com/microsoft/agent-framework/pull/8995> |
| PR | #8994 | Python: Python + .NET: add AgentBudget for autonomous loop resource limits | closed | marklicata | <https://github.com/microsoft/agent-framework/pull/8994> |
| PR | #8993 | Python: Python + .NET: add signal protocol for autonomous agent loops | closed | marklicata | <https://github.com/microsoft/agent-framework/pull/8993> |
| PR | #9150 | Document false positive for code scanning alert #81 | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/9150> |
| PR | #9141 | Python: [BREAKING] Require request-scoped WorkflowAgent factories in Foundry hosting | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9141> |
| PR | #8943 | build(deps-dev): bump the python-type-checkers group across 1 directory with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8943> |
| PR | #9112 | Python: [BREAKING] Request concise Harness progress without private reasoning | closed | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9112> |
| PR | #9137 | Python: fix(filesystem): bound the literal storage-key branch by the segment cap | closed | D41910 | <https://github.com/microsoft/agent-framework/pull/9137> |
| PR | #8970 | Python: Bound harness file memory with quotas and retention | closed | quifox | <https://github.com/microsoft/agent-framework/pull/8970> |
| PR | #8533 | .NET: Add IHostedAgentBuilder.AsDefault() for non-keyed agent resolution | closed | tomas-rampas | <https://github.com/microsoft/agent-framework/pull/8533> |
| PR | #9015 | Python: sample an external content gate for an approved fetch tool | closed | hexablob | <https://github.com/microsoft/agent-framework/pull/9015> |
| PR | #8569 | .NET: Python: Keep a single checkpoint lineage in functional workflows | closed | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/8569> |
| PR | #9049 | Python: honor tool_choice="none" in OllamaChatClient | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9049> |
| PR | #9051 | Python: preserve status messages in terminal A2A task snapshots | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9051> |
| PR | #9052 | Python: fix Purview cache accounting when replacing entries | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9052> |
| PR | #9053 | Python: sanitize handoff tool names for agent names with spaces | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9053> |
| PR | #9058 | Python: make streamed text coalescing linear | closed | suhasagg | <https://github.com/microsoft/agent-framework/pull/9058> |
| Issue | #9348 | Python: [Bug]: BedrockEmbeddingClient ignores an explicit region when a boto3_session is passed, and reports the wrong region | open | shanto462 | <https://github.com/microsoft/agent-framework/issues/9348> |
| Issue | #9435 | .NET: Terminating a Harness tool loop can omit completed function results from session history | open | KSemenenko | <https://github.com/microsoft/agent-framework/issues/9435> |
| Issue | #9434 | Python: [Bug]: Annotations not propagated correctly | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/issues/9434> |
| Issue | #9431 | .NET: [Bug]: Fan-out edge runs a target twice when the target selector returns its index twice | open | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/9431> |
| Issue | #9430 | .NET: [Bug]: DeclarativeWorkflowBuilder.Build crashes under NativeAOT — 'Microsoft.Agents.ObjectModel.RecurrenceFrequency[]' is missing native code or metadata | open | QQJason | <https://github.com/microsoft/agent-framework/issues/9430> |
| Issue | #9427 | .NET: Python: [Bug]: Declarative SetValue with `variable:` builds fine but never writes the value | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9427> |
| Issue | #9426 | Python: Define recovery semantics for caller-owned MCP connections | open | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9426> |
| Issue | #9244 | .NET: [Sample Request] Add Chroma vector memory sample | open | Laurianti | <https://github.com/microsoft/agent-framework/issues/9244> |
| Issue | #9369 | Python: [Feature]: Python: Define lifecycle ownership for agents with MCP tools inside workflows and orchestrations | open | droideronline | <https://github.com/microsoft/agent-framework/issues/9369> |
| Issue | #9328 | Python: AgentLoopMiddleware does not close the active inner stream when streaming is stopped early | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/9328> |
| Issue | #9191 | Python: A2AExecutor: accept forwarded run kwargs from request metadata | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/9191> |
| Issue | #9366 | Python: [Bug]: MCP structuredContent and function tool results escape non-ASCII characters to \uXXXX | open | Katilho | <https://github.com/microsoft/agent-framework/issues/9366> |
| Issue | #9410 | Python: TypeSafe connector should support image inputs and Box questions (Jev 1.14) | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/9410> |
| Issue | #9173 | .NET: Python: [Bug]: Declarative custom-function regexes swallow the formula tail, silently emitting formula source or failing compilation | closed | atty57 | <https://github.com/microsoft/agent-framework/issues/9173> |
| Issue | #9354 | Python: [Bug]: Workflow build rejects an edge from an executor that sends a Literal type to one that handles str | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9354> |
| Issue | #9344 | Python: [Bug]: BedrockChatClient silently drops per-call client kwargs | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9344> |
| Issue | #9342 | Python: [Bug]: anthropic bash tool result files leak out of the shell tool result | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9342> |
| Issue | #9317 | Python: [Bug]: Out-of-range Cosmos memory search parameters silently disable retrieval | closed | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/9317> |
| Issue | #9303 | Python: [Bug]: Content.from_dict leaves the nested content of image generation and MCP server tool results as plain dicts | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9303> |
| Issue | #9127 | Python: [Bug]: DevUI discovery skips files that export agent with a type annotation | closed | anishmehta24 | <https://github.com/microsoft/agent-framework/issues/9127> |
| Issue | #9326 | Python: [Bug]: Message("user", "text") creates one text content per character | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9326> |
| Issue | #9329 | Python: build the Agent Hooks middleware from a host declaration document | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/9329> |
| Issue | #9370 | .NET: [Bug]: Hosted AddAsAIAgent() cannot select an execution environment — overlapping requests fail with "already owned by another runner" | open | tzdevelopteam | <https://github.com/microsoft/agent-framework/issues/9370> |
| Issue | #9268 | Python: [Bug]: Functional workflow re-executes a @step that was still running when a sibling asyncio.gather branch paused for request_info | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9268> |
| Issue | #9398 | Python: [Bug]: BedrockChatClient reports the client's default model on non-streaming responses, not the model it sent the request to | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9398> |
| Issue | #9392 | Python: .NET: [Bug]: SKILL.md frontmatter drops the continuation lines of a multi-line description | open | bodobraegger | <https://github.com/microsoft/agent-framework/issues/9392> |
| Issue | #9385 | Python: [Bug]: Functional workflow checkpoint replay returns a wrong cached result when a @step calls another @step | open | snovik75 | <https://github.com/microsoft/agent-framework/issues/9385> |
| Issue | #9383 | Python: [Bug]: Functional workflow checkpoint replay returns a wrong cached result when a @step calls another @step | closed | wzhseno | <https://github.com/microsoft/agent-framework/issues/9383> |
| Issue | #9379 | .NET: [Feature]: Add agent-triggered in-run compaction | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9379> |
| Issue | #9380 | .NET: Add agent-triggered in-run compaction | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9380> |
| Issue | #9381 | Python: Add agent-triggered in-run compaction | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9381> |
| Issue | #9377 | Python: [Bug]: agent-framework-ag-ui doesn't support ag-ui-protocol 1.0 | open | mme | <https://github.com/microsoft/agent-framework/issues/9377> |
| Issue | #9362 | Python: Support Python 3.15 in the standard package set | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9362> |
| Issue | #9350 | Python: [Bug]: foundry_hosting returns "Content(type=data)" instead of the generated image in image_generation_call.result | open | shanto462 | <https://github.com/microsoft/agent-framework/issues/9350> |
| Issue | #9338 | Python: [Bug]: tau2 sliding window never logs the over max tokens warning | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9338> |
| Issue | #9337 | Python: [Bug]: GAIA runner refuses local parquet data and asks for HF_TOKEN | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9337> |
| Issue | #9336 | Python: [Bug]: ag-ui endpoint drops a text delta that equals the whole text streamed so far | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9336> |
| Issue | #9373 | Python: Drop Python 3.10 support by October 31, 2026 | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9373> |
| Issue | #9371 | .NET: [Bug]: Serialized workflow-agent session grows ~cubically with turns (every checkpoint kept, nested managers copied) | open | tzdevelopteam | <https://github.com/microsoft/agent-framework/issues/9371> |
| Issue | #9263 | Python: Exception text is exported on spans and logs even when enable_sensitive_data=False | closed | scott-lever | <https://github.com/microsoft/agent-framework/issues/9263> |
| Issue | #9352 | Python: [Bug]: Streamed updates from different authors are merged into one message | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9352> |
| Issue | #9359 | Python: [Feature]: DevUI voice input and audio responses | open | fedeoliv | <https://github.com/microsoft/agent-framework/issues/9359> |
| Issue | #9347 | .NET: [VNext] Move agent skills to a separate package and adopt a YAML parser | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/9347> |
| Issue | #9132 | Python: [Feature]: A deterministic pre-execution verification middleware for agent actions — AgentDojo v2.2 re-run: ASR=0 / FP=0 (open artifacts, full fix-cycle trajectory inside) | open | PHM-Audit | <https://github.com/microsoft/agent-framework/issues/9132> |
| Issue | #9270 | Python: [Bug]: After a checkpoint restore, a sub-workflow re-emits a pending request while handling a sibling response, so later restores keep asking for an already-answered request | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9270> |
| Issue | #9138 | Python: [Bug]: Gemini streaming drops the model when a chunk has no model_version | closed | Ayoubhm07 | <https://github.com/microsoft/agent-framework/issues/9138> |
| Issue | #9296 | Python: [Bug]: FunctionTool.to_dict() drops the parameter schema of tools declared with a JSON schema | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9296> |
| Issue | #9297 | .NET: Python: [Bug]: Two switch-case branches cannot route to the same executor (EdgeDuplicationError) | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9297> |
| Issue | #9324 | Python: [Bug]: Functional workflow injects a keyword-only RunContext positionally | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9324> |
| Issue | #9313 | Python: [Bug]: A non-positive MCP request timeout silently disables the timeout | open | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/9313> |
| Issue | #9115 | Python: [Python] MCP prompt refresh keeps removed or changed prompts | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9115> |
| Issue | #9178 | Python: [Bug]: Magentic run ends early when the progress ledger names an unknown agent | closed | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9178> |
| Issue | #9194 | Python: [Bug]: make_json_safe() raises RecursionError on a plain Enum member | closed | nefayran | <https://github.com/microsoft/agent-framework/issues/9194> |
| Issue | #9239 | Python: [Feature]: Python per-tool request-rate limiting and admission control for production AI agents | open | suhasagg | <https://github.com/microsoft/agent-framework/issues/9239> |
| Issue | #9330 | .NET: build AgentHooksOptions from a host declaration document | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/9330> |
| Issue | #9321 | .NET: Python: [Bug]: Foundry Local integration excludes current SDK versions | open | bmehta001 | <https://github.com/microsoft/agent-framework/issues/9321> |
| Issue | #9325 | Python: [Feature]: Python: inconsistent naming between "status" workflow events and their .state field | open | yogimogi | <https://github.com/microsoft/agent-framework/issues/9325> |
| Issue | #9264 | Python: SessionContext needs a supported way for a provider to remove or replace another source's context messages | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/9264> |
| Issue | #9320 | Python: [Feature]: Let tool approval responses carry a comment and edited arguments, not just a bool | open | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/9320> |
| Issue | #9312 | Python: [Bug]: A non-positive MCP request timeout silently disables the timeout | closed | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/9312> |
| Issue | #9301 | Python: [Bug]: ClaudeAgent sends tools declared with a JSON schema to Claude without their parameters | open | shanto462 | <https://github.com/microsoft/agent-framework/issues/9301> |
| Issue | #9295 | Python: [Bug]: hosting-responses replaces the media type of input_image data URLs with image/* | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9295> |
| Issue | #9251 | Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools | open | suhasagg | <https://github.com/microsoft/agent-framework/issues/9251> |
| Issue | #9116 | Python: [Bug]: [Security] DevUI Azure deployment logs DEVUI_AUTH_TOKEN in plaintext | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/9116> |
| Issue | #9129 | Python: [Bug]: Magentic reset does not reset participant sessions, so agents keep their history across replans | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9129> |
| Issue | #9157 | Python: [Bug]: ClaudeAgent drops explicit zero values for max_turns and max_budget_usd | closed | suhasagg | <https://github.com/microsoft/agent-framework/issues/9157> |
| Issue | #9179 | Python: [Bug]: with_request_info silently ignores agent names that are not participants | closed | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9179> |
| Issue | #9267 | Python: export the AgentLoopMiddleware loop-iteration options key, or add a public streaming aggregation path that stamps it | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/9267> |
| Issue | #9266 | Python: MCP EmbeddedResource `resource._meta` (url_citation annotations) is dropped from the parsed Content; only reachable through private host-payload keys | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/9266> |
| Issue | #9265 | Python: foundry-hosting needs public per-request, stream-wrapping and shutdown hooks on ResponsesHostServer (client headers and recovery flag are reachable only by overriding private methods) | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/9265> |
| Issue | #9248 | Python: [Bug]: BedrockChatClient ignores the region of a provided boto3_session and sends requests to us-east-1 | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9248> |
| Issue | #9262 | .NET: [Bug]: Mem0Provider and FoundryMemoryProvider swallow caller cancellation | open | selvasmallive | <https://github.com/microsoft/agent-framework/issues/9262> |
| Issue | #9252 | .NET: Workflows: the span tag `message.type` collides with the obsoleted OpenTelemetry RPC attribute of the same name | open | ANcpLua | <https://github.com/microsoft/agent-framework/issues/9252> |
| Issue | #9246 | Python: [Bug]: Default registered Pydantic state cannot restore a Message field | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9246> |
| Issue | #9228 | Python: [Bug]: Consolidated memory continuation lines disappear on reload | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9228> |
| Issue | #9204 | Python: [Bug]: MCP tools/call retry can duplicate non-idempotent side effects after connection loss | open | suhasagg | <https://github.com/microsoft/agent-framework/issues/9204> |
| Issue | #9245 | .NET: [Feature]: Accept AIJsonSchemaCreateOptions for the structured-output schema of AIAgent.RunAsync<T> | open | AdCodicem | <https://github.com/microsoft/agent-framework/issues/9245> |
| Issue | #9231 | Python: [Bug]: Background session release waits past its finite timeout during cancellation cleanup | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9231> |
| Issue | #9160 | Python: [Bug]: evaluate_agent() omits ContextProvider/SkillsProvider tools from tool_definitions, breaking tool_selection/tool_input_accuracy | open | cristofima | <https://github.com/microsoft/agent-framework/issues/9160> |
| Issue | #9184 | Python: [Feature]: Python: Add Arize AX and Phoenix to the observability samples README | closed | jimbobbennett | <https://github.com/microsoft/agent-framework/issues/9184> |
| Issue | #9200 | Python: ChatResponse.from_updates documentation example omits Content import | closed | BlueRaddish | <https://github.com/microsoft/agent-framework/issues/9200> |
| Issue | #9224 | Python: OpenAIChatClient (Responses API) does not implement service_url(), so server.address is reported as Unknown | closed | BichengWang | <https://github.com/microsoft/agent-framework/issues/9224> |
| Issue | #9221 | Python: OllamaChatClient does not implement service_url(), so server.address is reported as Unknown | closed | BichengWang | <https://github.com/microsoft/agent-framework/issues/9221> |
| Issue | #9235 | Python: [Feature]: Python — Per-tool execution deadlines with cancellation-safe middleware | open | suhasagg | <https://github.com/microsoft/agent-framework/issues/9235> |
| Issue | #9215 | Python: Design MCP 2026 Tasks client support with SDK v2 extensions | open | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9215> |
| Issue | #9205 | Python: [Bug]: Distinct non-English memory topics silently share a file | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9205> |
| Issue | #9226 | Python: [Feature]: Official first-class TypeScript SDK support | open | VeVarunSharma | <https://github.com/microsoft/agent-framework/issues/9226> |
| Issue | #9199 | Python: [Issue]: Python release docs workflow is stale and fails on every release | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9199> |
| Issue | #9218 | Python: [Bug]: Automatic memory consolidation clears sessions still extracting memories | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9218> |
| Issue | #9197 | Python: [Bug]: Memory topic contributor session IDs change on reload | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9197> |
| Issue | #9099 | Python: [Bug]: Public stream close does not release delegated provider responses | closed | quifox | <https://github.com/microsoft/agent-framework/issues/9099> |
| Issue | #9108 | Python: [Bug]: Flat function mappings bypass progressive tool name checks | closed | BlueRaddish | <https://github.com/microsoft/agent-framework/issues/9108> |
| Issue | #9123 | Python: [Bug]: hosting-responses rejects input messages that omit "type" | closed | anishmehta24 | <https://github.com/microsoft/agent-framework/issues/9123> |
| Issue | #9125 | Python: [Bug]: DevUI list_items crashes on the after cursor once a conversation has a checkpoint | closed | anishmehta24 | <https://github.com/microsoft/agent-framework/issues/9125> |
| Issue | #9143 | Python: [Bug]: Ollama and Gemini chat clients leave the SDK stream open when the consumer stops early | closed | ankit2235 | <https://github.com/microsoft/agent-framework/issues/9143> |
| Issue | #9171 | Python: [Bug]: AgentState retains per-session locks after sessions are deleted | closed | suhasagg | <https://github.com/microsoft/agent-framework/issues/9171> |
| Issue | #9177 | Python: [Bug]: DevUI function approvals are not scoped to the originating conversation | closed | suhasagg | <https://github.com/microsoft/agent-framework/issues/9177> |
| Issue | #9187 | Python: [Bug]: Media type detection documentation examples contain invalid base64 | open | BlueRaddish | <https://github.com/microsoft/agent-framework/issues/9187> |
| Issue | #9186 | .NET: [Feature]: Add netstandard2.0 target to Microsoft.Agents.AI.GitHub.Copilot (Copilot SDK supports .NET Standard 2.0) | open | stuarthillary | <https://github.com/microsoft/agent-framework/issues/9186> |
| Issue | #9170 | .NET: Python: Document that Python and .NET changes go in separate PRs | closed | marklicata | <https://github.com/microsoft/agent-framework/issues/9170> |
| Issue | #9136 | Bound the literal branch of `_storage_key_segment` by the segment length cap | closed | D41910 | <https://github.com/microsoft/agent-framework/issues/9136> |
| Issue | #9109 | Python: Decide recovery policy for ended MCP subscription streams | open | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9109> |
| Issue | #9130 | .NET: [Feature]: .NET: resumable human approvals for agents used as tools (AsAIFunction) | open | tdoman | <https://github.com/microsoft/agent-framework/issues/9130> |
| Issue | #9110 | .NET: Stabilize the Anthropic agent package | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/9110> |
| Issue | #9102 | Python: .NET: [Bug]: AG-UI approval resume fails with "An item with the same key has already been added" when an AgentSessionStore is registered (Step04_HumanInLoop setup) | open | QuentinJaillet | <https://github.com/microsoft/agent-framework/issues/9102> |
| Issue | #7446 | Python: Support mcp 2.x (Python SDK): pin blocks mcp 2.0.0 | closed | ProgrammerPlus1998 | <https://github.com/microsoft/agent-framework/issues/7446> |
| Issue | #8789 | Python: [Bug]: AG-UI queued approvals stream both tool results but final snapshot drops the first | closed | gomission | <https://github.com/microsoft/agent-framework/issues/8789> |
| Issue | #8240 | Python: [Bug]: SequentialBuilder second agent receives assistant-ending history and some models return empty text | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8240> |
| Issue | #8526 | .NET: [Bug]: Agent chat completions endpoint does not terminate SSE stream with data: [DONE]\n\n | closed | baonguyenrb21 | <https://github.com/microsoft/agent-framework/issues/8526> |
| Issue | #8017 | .NET: [Bug]: emits both AgentResponse and AgentResponseUpdate per one action | closed | dsslight | <https://github.com/microsoft/agent-framework/issues/8017> |
| Issue | #7384 | .NET: [Bug]: AgentWorkflowBuilder Handoff orchestration breaks when handoffs bounce back, especially with reasoning | closed | MirkoMattioliSacmi | <https://github.com/microsoft/agent-framework/issues/7384> |
| Issue | #8849 | .NET: [Bug]: Follow-up to #8575: A failed approval-resume run permanently corrupts the session | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/8849> |
| Issue | #7452 | Python: [Bug]:  A local tool's approval response is serialized to the Responses API as an MCP approval response, with no matching request → 400 | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7452> |
| Issue | #8903 | Python: [Bug]: Streamed code_interpreter code is corrupted when a delta is a prefix of the accumulated code | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8903> |
| Issue | #8910 | Python: [Feature]: Explicit append/replace semantics for streamed content merging | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8910> |
| Issue | #6661 | Dependency bounds test failed | closed | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/6661> |
| Issue | #1530 | .NET Workflows - Declarative `Question` only supports "prebuilt" entities. | closed | crickman | <https://github.com/microsoft/agent-framework/issues/1530> |
| Issue | #8700 | Python: [Bug]: Mixed approval and Host results give a tool result the user role | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8700> |
| Issue | #8975 | Python: [Bug]: Non-streaming FoundryChatClient / FoundryAgent drop `oauth_consent_request` output items (empty answer, no consent link) | closed | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8975> |
| Issue | #9086 | Python: Generated declarative executor IDs collide with authored action IDs | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9086> |
| Issue | #9090 | Python: BreakLoop continues remaining Foreach iterations | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9090> |
| Issue | #9095 | Python: [Bug]: Template interpolation rewrites substituted placeholder text | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9095> |
| Issue | #7973 | Python: A2AAgent: forward selected run kwargs in request metadata | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/7973> |
| Issue | #8243 | .NET: [Bug]: UseOpenTelemetry breaks background continuation tokens | closed | TinusGa | <https://github.com/microsoft/agent-framework/issues/8243> |
| Issue | #1095 | Single Agent: Computer Use Integration | closed | f-trycua | <https://github.com/microsoft/agent-framework/issues/1095> |
| Issue | #4169 | Python: Phase 7: Vector Store Connectors — Tier 3 (Oracle, SQL Server, FAISS) | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4169> |
| Issue | #8661 | Python: [Bug]: Tools with datetime, set or tuple parameters always fail argument validation | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/8661> |
| Issue | #7859 | Python: [Bug]: Pending State writes from a failed superstep leak into a later successful run | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7859> |
| Issue | #8964 | Python: [Bug]: A handoff autonomous turn limit of 0 silently becomes the default 50 turns | closed | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/8964> |
| Issue | #9027 | Python: [Bug]: ConcurrentBuilder aggregator fails when the callback is an async callable object | closed | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9027> |
| Issue | #9044 | Python: [Bug]: queued persistent shell commands fail after session recovery | closed | fhgffy | <https://github.com/microsoft/agent-framework/issues/9044> |
| Issue | #9066 | Python: [Bug]: Declarative agent creation mutates reusable model options | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9066> |
| Issue | #9067 | Python: [Bug]: Injected Redis context indexes cannot encode optional null message fields | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9067> |
| Issue | #2662 | .NET: [BackagroundResponses] Allow ChatClientAgent to work with non-ChatClientAgent continuation tokens | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/2662> |
| Issue | #9072 | Python: Declarative concatenation treats quoted expressions as literal text | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9072> |
| Issue | #9074 | .NET: Python: Azure AI Search drops image-only messages before agentic retrieval | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9074> |
| Issue | #9084 | Python: Restored Content Understanding upload retries leave document status stale | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9084> |
| Issue | #9088 | Python: [Bug]: Magentic progress ledger fails to parse when a string value contains a brace | closed | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9088> |
| Issue | #9097 | Python: [Bug]: AZURE_OPENAI_API_VERSION is ignored by the OpenAI clients on the Azure route | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9097> |
| Issue | #9083 | Python: [Bug]: Streaming tool calls from Claude deployments in Foundry are silently dropped (missing `output_item.added`, `function_call_arguments.done` ignored) | closed | svandekrol | <https://github.com/microsoft/agent-framework/issues/9083> |
| Issue | #8955 | Python: [Bug]: Streamed code interpreter deltas get silently dropped when one chunk's text happens to start with another's | closed | cr-sbarbouche | <https://github.com/microsoft/agent-framework/issues/8955> |
| Issue | #8573 | Python: Scope mixed-pause Host response correlation to the active batch | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8573> |
| Issue | #9054 | Python: [Bug]: A2A rejects zero-byte attachments | closed | fhgffy | <https://github.com/microsoft/agent-framework/issues/9054> |
| Issue | #6119 | Assets in repo is not the new logo | closed | rwjdk | <https://github.com/microsoft/agent-framework/issues/6119> |
| Issue | #5601 | .NET: [Feature]: Allow customizing partition key strategy in `CosmosChatHistoryProvider` | closed | Mark-Good | <https://github.com/microsoft/agent-framework/issues/5601> |
| Issue | #9081 | Python: WorkflowViz Mermaid export merges distinct executor IDs | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9081> |
| Issue | #9078 | Python: memory topic summary labels overwrite stored metadata on reload | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9078> |
| Issue | #9076 | Python: ParseValue converts scientific notation without a decimal point to zero | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9076> |
| Issue | #8986 | Python: [Bug]: OllamaChatClient still sends tools when tool_choice is "none" | closed | ankit2235 | <https://github.com/microsoft/agent-framework/issues/8986> |
| Issue | #6341 | Create community ecosystem guidance for external packages | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6341> |
| Issue | #8908 | Python: [Bug]: Streaming response aggregation is O(n^2) in the number of text chunks | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8908> |
| Issue | #8826 | Python: [Bug]: Streaming a response that is still in progress drops its continuation_token | closed | feiiiiii5 | <https://github.com/microsoft/agent-framework/issues/8826> |
| Issue | #5659 | .NET: Add session storage support for openai package | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/5659> |
| Issue | #8906 | Python: [Bug]: detect_media_type_from_base64 misclassifies BMP/SVG and misses MPEG-2 audio | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8906> |
| Issue | #8905 | Python: [Bug]: Content.from_uri rejects valid non-base64 data URIs with parameters and drops the media type | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8905> |
| Issue | #8954 | Python: [Bug]: an output guard on a streamed run releases the full answer before it can raise, unless `stream_buffer_updates=True` is set | closed | Vancir | <https://github.com/microsoft/agent-framework/issues/8954> |
| Issue | #8909 | Python: [Bug]: FileAccessProvider replace/replace_lines lose updates when providers share a store | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8909> |
| Issue | #8856 | Python: [Bug]: ReasoningOptions omits max reasoning effort | closed | demoray | <https://github.com/microsoft/agent-framework/issues/8856> |
| Issue | #8935 | Python: [Bug]: BedrockChatClient drops reasoningContent, so extended thinking with tool calls fails | closed | Leela0o5 | <https://github.com/microsoft/agent-framework/issues/8935> |
| Issue | #9010 | .NET: [Bug]: Explicit null StateBag values throw after serialization roundtrip | closed | LEN5010 | <https://github.com/microsoft/agent-framework/issues/9010> |
| Issue | #9011 | .NET: [Bug]: TextSearchProvider uses saved memory when RecentMessageMemoryLimit is zero | closed | LEN5010 | <https://github.com/microsoft/agent-framework/issues/9011> |
| Issue | #9016 | .NET: [Bug]: Lazy request messages can be consumed before reaching the agent | closed | LEN5010 | <https://github.com/microsoft/agent-framework/issues/9016> |
| Issue | #9014 | Python: sample external content gate around an approved text-fetch tool | closed | hexablob | <https://github.com/microsoft/agent-framework/issues/9014> |
| Issue | #8898 |  Python: [Bug]:  Executable sibling tool calls are never run when a declaration-only tool call appears in the same model response | closed | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/8898> |
| Issue | #8718 | .NET: [FoundryAgent][gpt-6-luna]: [Bug]: Invalid parameter: 'text.format' of type 'json_schema' is not supported with model version `gpt-6-luna-2026-09-22` | closed | lucianteodorescu-milestone | <https://github.com/microsoft/agent-framework/issues/8718> |
| Issue | #7690 | Python: FoundryToolbox forwards a stale x-agent-foundry-call-id after the first request | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7690> |
| Issue | #9034 | Python: [Bug]: Handoff tool names are invalid when an agent name contains spaces | closed | Shizoqua | <https://github.com/microsoft/agent-framework/issues/9034> |
| Issue | #8983 | Python: [Bug]: TypeSafe connector ignores HTTPS_PROXY / HTTP_PROXY / NO_PROXY when it creates its own SDK client | closed | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8983> |
| Issue | #5804 | .NET: [Bug]: Telemetry incorrectly shows agent responses as user messages | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/5804> |
