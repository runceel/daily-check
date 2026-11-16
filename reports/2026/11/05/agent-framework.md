# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 98 |
| オープン中の新規 PR     | 56 |
| クローズ (未マージ) PR  | 49 |
| 新規 Issue              | 105 |
| クローズ Issue          | 53 |
| 主要コントリビューター  | eavanvalkenburg, ZedingZhang, baywet, dependabot[bot], ninglinLiu, SergeyMenshykh |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#10066](https://github.com/microsoft/agent-framework/pull/10066) — [BREAKING] .NET: fix(hyperlight): propagate cancellation and limit execution （PR / open / baywet）
  Hyperlight CodeAct を利用する .NET 開発者は、キャンセル伝播と実行上限の変更内容を確認し、既存の実行時間・キャンセル処理への影響を評価してください（PR はオープン中）。
- **⚠ 破壊的変更** [#10042](https://github.com/microsoft/agent-framework/pull/10042) — Python: [BREAKING] Harden MCP catalog discovery behavior （PR / merged / jpalvarezl）
  Python で MCP カタログ探索を利用する開発者は、強化された探索・ページ取得の制約を確認し、既存カタログの取得処理や上限設定を見直してください。
- **⚠ 破壊的変更** [#10037](https://github.com/microsoft/agent-framework/pull/10037) — .NET: [BREAKING] Postpone task support in A2A hosting （PR / merged / SergeyMenshykh）
  .NET A2A Hosting の利用者は、メッセージモードで task 操作が拒否されるため、task API に依存する連携を確認し、対応する方式へ切り替えてください。
- **⚠ 破壊的変更** [#10035](https://github.com/microsoft/agent-framework/pull/10035) — Python: [BREAKING] Bind AG-UI workflow agent executors to one authorization scope （PR / merged / eavanvalkenburg）
  Python AG-UI の WorkflowAgent / AgentExecutor 利用者は、executor とセッションが単一の認可スコープに束縛されるため、リクエスト間でインスタンスを共有しない構成を確認してください。
- **⚠ 破壊的変更** [#10001](https://github.com/microsoft/agent-framework/pull/10001) — [BREAKING] Python: Honor injected Azure AI Search clients over settings （PR / open / FOWEPJF255）
  Azure AI Search の Python クライアントを注入している利用者は、設定より注入済みクライアントが優先される変更案が既存構成に与える影響を確認してください（PR はオープン中）。
- **⚠ 破壊的変更** [#9994](https://github.com/microsoft/agent-framework/pull/9994) — .NET: [BREAKING] Remove nonstandard workflow payload telemetry （PR / open / baywet）
  .NET Workflow の独自 payload telemetry を監視・分析に使う利用者は、削除案の対象属性と既存ダッシュボードへの影響を確認してください（PR はオープン中）。
- **⚠ 破壊的変更** [#9973](https://github.com/microsoft/agent-framework/pull/9973) — .NET: [BREAKING] CodeAct: redact host-tool diagnostics by default （PR / merged / eavanvalkenburg）
  .NET CodeAct の詳細なホストツール例外をログや利用者向け応答で参照していた場合は、既定の秘匿化後の診断内容を確認し、信頼できる環境でのみ明示的な opt-in を検討してください。
- **⚠ 破壊的変更** [#9971](https://github.com/microsoft/agent-framework/pull/9971) — Python: [BREAKING] CodeAct: redact host-tool diagnostics by default （PR / merged / eavanvalkenburg）
  Python CodeAct の利用者は、ホストツール診断が既定で秘匿化される変更を踏まえ、詳細例外に依存するデバッグ手順を見直してください。必要な場合も機密情報の露出に注意してください。
- **⚠ 破壊的変更** [#9948](https://github.com/microsoft/agent-framework/pull/9948) — Python: [BREAKING] Remove Python 3.10 support （PR / merged / eavanvalkenburg）
  Python 3.10 で Agent Framework を利用する開発者は、対応する Python バージョンへ更新してから当該版にアップグレードしてください。
- **⚠ 破壊的変更** [#9900](https://github.com/microsoft/agent-framework/pull/9900) — Python: [BREAKING] align workflow span name with OpenTelemetry conventions （PR / merged / baywet）
  Python Workflow の span 名・属性を参照する OpenTelemetry ダッシュボードやアラートを、規約に合わせて変更された名前に更新してください。
- **⚠ 破壊的変更** [#9899](https://github.com/microsoft/agent-framework/pull/9899) — .NET: [BREAKING] align workflow span name with OpenTelemetry conventions （PR / merged / baywet）
  .NET Workflow の span 名・属性を参照する OpenTelemetry ダッシュボードやアラートを、規約に合わせて変更された名前に更新してください。
- **⚠ 破壊的変更** [#9857](https://github.com/microsoft/agent-framework/pull/9857) — .NET: [BREAKING] Suppress duplicate workflow payload telemetry for hosted agents （PR / open / tokaplan）
  Hosted Agent の Workflow payload telemetry を集計する .NET 利用者は、重複抑止案がメトリクスに与える影響を確認してください（PR はオープン中）。
- **⚠ 破壊的変更** [#9841](https://github.com/microsoft/agent-framework/pull/9841) — .NET: [BREAKING] fix(dotnet): require allowed HTTP hosts （PR / merged / baywet）
  宣言型 .NET Workflow の HTTP 要求を使う利用者は、接続先ホストの許可リストを明示していない構成を洗い出し、許可 URL を設定してください。
- **⚠ 破壊的変更** [#9722](https://github.com/microsoft/agent-framework/pull/9722) — .NET: [BREAKING] fix: scope workflow MCP clients to invocations （PR / merged / baywet）
  宣言型 .NET Workflow から MCP を呼び出す利用者は、MCP クライアントが invocation 単位で管理されるため、接続のライフサイクルや共有状態を確認してください。
- **⚠ 破壊的変更** [#9322](https://github.com/microsoft/agent-framework/pull/9322) — Python: [BREAKING] Migrate Foundry Local integration to SDK 2.3.1 （PR / merged / bmehta001）
  Foundry Local Python 統合の利用者は SDK 更新に伴う依存関係・ランタイム要件とクライアント初期化の変更を確認し、必要な環境更新を行ってください。
- **⚠ 破壊的変更** [#9160](https://github.com/microsoft/agent-framework/issues/9160) — Python: [Bug]: evaluate_agent() omits ContextProvider/SkillsProvider tools from tool_definitions, breaking tool_selection/tool_input_accuracy （Issue / closed / cristofima）
  `evaluate_agent()` を使う Python の評価担当者は、修正済み Issue の変更を含む版で ContextProvider / SkillsProvider のツール定義と評価結果を確認してください。
- **⚠ 破壊的変更** [#8662](https://github.com/microsoft/agent-framework/pull/8662) — [BREAKING] Python: fix: isolate declarative MCP sessions by workflow （PR / open / baywet）
  Python の宣言型 Workflow で MCP セッションを共有している利用者は、分離案がセッション状態に与える影響を確認してください（PR はオープン中）。
- **⚠ セキュリティ** [#9889](https://github.com/microsoft/agent-framework/issues/9889) — .NET: [Feature]: Port the FIDES security model and enforcement （Issue / open / eavanvalkenburg）
  FIDES を使う .NET 利用者は、セキュリティモデルの移植状況を追跡し、提供前の機能を前提にせず既存のポリシー適用を継続してください。
- **⚠ セキュリティ** [#9652](https://github.com/microsoft/agent-framework/pull/9652) — Python: Harden FIDES security state and policy enforcement （PR / closed / eavanvalkenburg）
  FIDES を利用する Python 開発者は、クローズ済み PR の取り込み先・後続実装を確認し、実際に利用している版の状態・ポリシー強制を検証してください。
- **⚠ セキュリティ** [#9251](https://github.com/microsoft/agent-framework/issues/9251) — Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools （Issue / closed / suhasagg）
  FIDES で保護された Python CodeAct ホストツールを運用する担当者は、クローズ済み Issue の実装状況を確認し、失敗時に許可へ倒れない動作を検証してください。
- **⚠ セキュリティ** [#9118](https://github.com/microsoft/agent-framework/pull/9118) — Python: redact DevUI auth tokens from Azure deployment diagnostics （PR / merged / HeZ2z）
  Azure に DevUI をデプロイする Python 利用者は、認証トークンを診断情報から秘匿する修正を含む版へ更新し、ログに秘密情報が残らないことを確認してください。
- **非推奨/廃止** [#10018](https://github.com/microsoft/agent-framework/issues/10018) — Python: [Team][Action] Remove deprecated hosting constructor store alias （Issue / open / eavanvalkenburg）
  Python Hosting の非推奨 `store` コンストラクター alias を使う利用者は、廃止作業の進展を追い、推奨される引数名へ移行してください。
- **GA 昇格** [#10030](https://github.com/microsoft/agent-framework/issues/10030) — Python: [Team][Investigation] Verify AgentServer GA compatibility and steering fix （Issue / open / eavanvalkenburg）
  AgentServer の採用を検討する Python チームは、GA 互換性と steering 修正の調査完了を確認してから本番利用の判断を行ってください。
- **GA 昇格** [#8756](https://github.com/microsoft/agent-framework/pull/8756) — .NET: Add GA computer tool support to Foundry and Foundry hosting （PR / merged / rogerbarreto）
  Foundry / Foundry hosting で computer tool を使う .NET 開発者は、GA 対応の factory とサンプルを確認し、必要に応じてプレビュー実装から更新してください。

## このリポジトリの要点

この期間は MCP カタログ探索・Workflow 内 MCP クライアントのスコープ、AG-UI の認可境界、宣言型 HTTP の許可ホストなど、セキュリティとリソース境界の強化が目立ちました。
Python 3.10 サポート終了、CodeAct 診断の既定秘匿化、Workflow の OpenTelemetry span 命名変更など互換性に関わる更新も複数マージされています。
Foundry Local SDK 更新と Foundry computer tool の GA 対応も含まれます。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#10042](https://github.com/microsoft/agent-framework/pull/10042) — Python: [BREAKING] Harden MCP catalog discovery behavior

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +841 / -166
- マージ日時 (UTC): `2026-11-04 14:32:02`

**変更概要**

MCP カタログ探索の安全性と堅牢性を高める変更です。Python MCP クライアントのページ取得を共通化し、取得上限と既定タイムアウトを設け、ページ取得失敗時の処理を整理しています。
関連するセキュリティ処理、宣言型 Workflow の MCP handler、回帰テストと設計記録も更新されました。変更量が大きく、MCP 探索・prompt 取得の利用経路が対象です。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0045-python-mcp-v2-client-lifecycle.md` | 11 | 2 |
| `python/packages/core/AGENTS.md` | 19 | 1 |
| `python/packages/core/agent_framework/_mcp.py` | 224 | 111 |
| `python/packages/core/agent_framework/security.py` | 20 | 17 |
| `python/packages/core/tests/core/test_mcp.py` | 500 | 8 |
| `python/packages/core/tests/test_security.py` | 36 | 27 |
| `python/packages/declarative/AGENTS.md` | 2 | 0 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_mcp_handler.py` | 14 | 0 |
| `python/packages/declarative/tests/test_default_mcp_tool_handler.py` | 15 | 0 |

</details>

<details><summary>コミット (19 件)</summary>

- `5d32c1b` Added helper for page fetch and better method isolation. using tenaci…
- `37bd443` inbetween page fetch failure test and double connection failure test
- `4b344e1` Added page limit check to prevent unbounded fetch
- `9edeb70` refactored tool page drain and tests
- `455f290` refactored prompt page list drain
- `bd4e9f2` Added tests for prompt load pagination
- `41eb445` unified page fetch logic into single generic method
- `4efc332` Added default timeout if undefined
- _... 他 11 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** MCP カタログ探索の挙動を強化し、ページ取得に上限・既定タイムアウトを導入しています。詳細な公開シグネチャ変更は一覧からは特定できませんが、従来の無制限取得や無期限待機に依存する処理は挙動が変わり得ます。

**既存利用者への影響**

既定タイムアウトやページ上限の範囲内で動作するか、MCP サーバーの応答遅延・項目数が多い環境で確認してください。独自の探索処理があれば、新しい制約との互換性をテストしてください。

### [#10037](https://github.com/microsoft/agent-framework/pull/10037) — .NET: [BREAKING] Postpone task support in A2A hosting

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +189 / -43
- マージ日時 (UTC): `2026-11-03 16:26:48`

**変更概要**

この PR は .NET A2A hosting の message mode で task 操作を受け付けないようにし、操作時に固定の応答を返す変更です。
task 操作の誤解を避けるため、handler と server registration options を調整し、拒否動作を含む単体テストを追加しています。A2A hosting の message / task モード境界に影響します。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AAgentHandler.cs` | 12 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AServerRegistrationOptions.cs` | 0 | 8 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AServerServiceCollectionExtensions.cs` | 1 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AAgentHandlerTests.cs` | 65 | 11 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AEndpointRouteBuilderExtensionsTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AServerServiceCollectionExtensionsTests.cs` | 110 | 15 |

</details>

<details><summary>コミット (2 件)</summary>

- `481223a` Hardcode message responses for A2A hosting
- `98a0f33` Reject task operations in A2A message mode

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `A2AServerRegistrationOptions` の既存オプションが削除され、message mode の task 操作は拒否されます。コミットも task 操作拒否と固定応答を明示しており、従来の task 対応挙動を前提とした統合には影響します。

**既存利用者への影響**

A2A message mode 経由で task 操作を行っている利用者は、その呼び出しを除去するか別の対応経路へ切り替えてください。削除された登録オプションを指定している場合は構成コードも更新が必要です。

### [#10035](https://github.com/microsoft/agent-framework/pull/10035) — Python: [BREAKING] Bind AG-UI workflow agent executors to one authorization scope

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1692 / -32
- マージ日時 (UTC): `2026-11-04 16:17:21`

**変更概要**

AG-UI の Workflow agent executor / session を単一の認可スコープに束縛し、リクエストをまたいだ状態の混用を防ぐ変更です。
リクエスト単位で executor を作る方針を文書化し、セッション所有権を追跡する仕組みと、複数スコープ・WorkflowAgent tool の拒否を検証するテストを追加しました。Python AG-UI hosting と session 管理が対象です。

<details><summary>変更ファイル (25 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 41 | 0 |
| `python/packages/ag-ui/README.md` | 42 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 23 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_endpoint.py` | 30 | 4 |
| `python/packages/ag-ui/agent_framework_ag_ui/_session_ownership.py` | 232 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow.py` | 32 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_identity_owners.py` | 94 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_agent_tool_detection.py` | 65 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_agent_tool_rejection.py` | 103 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_scope_ownership.py` | 484 | 0 |
| `python/packages/ag-ui/tests/ag_ui/workflow_scope_helpers.py` | 315 | 0 |
| `python/packages/core/agent_framework/_agents.py` | 5 | 0 |
| `python/packages/core/agent_framework/_harness/_tool_approval.py` | 5 | 0 |
| `python/packages/core/agent_framework/_tools.py` | 2 | 0 |
| `python/packages/core/agent_framework/_workflows/_agent.py` | 10 | 1 |
| _... 他 10 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `0a4f457` Python: Bind AG-UI workflow agent executors to one authorization scope
- `f51585d` Python: Create executors per request in the hosting workflow guidance
- `2ebcbd2` Python: Document that AgentExecutor and WorkflowAgent own one session
- `e253d29` Python: Bind agent sessions and unscoped runs to one AG-UI owner
- `fe6f14b` Python: Key AG-UI session ownership by object identity
- `8b4e1dd` Python: Reject WorkflowAgent tools in AG-UI
- `68b7ad4` Python: Document that WorkflowAgent tools are unsupported in any form

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 新たな session ownership 管理を導入し、`AgentExecutor` / `WorkflowAgent` を一つの session に結び付けます。AG-UI で WorkflowAgent tools を利用する構成もサポート対象外として拒否されるため、従来の共有・併用パターンは変更が必要です。

**既存利用者への影響**

AG-UI の hosting では executor をリクエストごとに生成し、インスタンスや session を認可スコープ間で再利用しないでください。WorkflowAgent tools に依存する場合は別の実装方法へ移行してください。

### [#9973](https://github.com/microsoft/agent-framework/pull/9973) — .NET: [BREAKING] CodeAct: redact host-tool diagnostics by default

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +450 / -45
- マージ日時 (UTC): `2026-11-03 17:04:14`

**変更概要**

CodeAct がホストツールの例外・診断情報を既定で秘匿し、実行時エラーを通じた機密情報の露出を抑える変更です。
Hyperlight と LocalCodeAct の executor / bridge を更新し、信頼できる環境で詳細な例外情報を明示的に有効化できる選択肢も追加しました。関連する設定、エンドツーエンドテスト、ドキュメントが対象です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/HyperlightCodeActProviderOptions.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/Internal/SandboxExecutor.cs` | 46 | 18 |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/Internal/ToolBridge.cs` | 19 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Hyperlight/README.md` | 19 | 0 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/Internal/CodeExecutor.cs` | 6 | 2 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/Internal/ProcessBridge.cs` | 7 | 2 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/LocalCodeActProvider.cs` | 4 | 1 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/LocalCodeActProviderOptions.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/LocalExecuteCodeFunction.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/README.md` | 14 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hyperlight.IntegrationTests/CodeActEndToEndTests.cs` | 78 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hyperlight.UnitTests/SandboxExecutorTests.cs` | 60 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hyperlight.UnitTests/ToolBridgeTests.cs` | 49 | 10 |
| `dotnet/tests/Microsoft.Agents.AI.LocalCodeAct.UnitTests/LocalExecuteCodeFunctionIntegrationTests.cs` | 119 | 4 |
| `skills/agent-framework-builder-dotnet/references/integrations.md` | 6 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `2cc8597` Redact .NET CodeAct host-tool diagnostics by default
- `63ac4ee` Apply .NET Hyperlight error policy to full lifecycle
- `ae96c2a` Include full CodeAct exception details for trusted opt-in

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Hyperlight / LocalCodeAct の options に診断情報の扱いを制御する設定が追加され、ホストツール診断の既定動作が秘匿化に変わりました。コミットでは信頼された環境向け opt-in が導入されています。

**既存利用者への影響**

詳細な例外をログに出してデバッグしている利用者は、既定で情報が伏せられる点を踏まえて診断手順を更新してください。詳細出力を有効化する場合は、ログや応答に秘密情報が含まれない運用境界を確認してください。

### [#9971](https://github.com/microsoft/agent-framework/pull/9971) — Python: [BREAKING] CodeAct: redact host-tool diagnostics by default

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +495 / -44
- マージ日時 (UTC): `2026-11-02 15:03:36`

**変更概要**

Python CodeAct のホストツール診断を既定で秘匿し、例外内容が利用者向けの出力やログに漏れるリスクを低減します。
Hyperlight / Monty のコード実行ツールと bridge を変更し、ライフサイクル上の失敗を含めて診断情報を扱うようにしました。README、provider、テストも更新されています。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hyperlight/README.md` | 19 | 0 |
| `python/packages/hyperlight/agent_framework_hyperlight/_execute_code_tool.py` | 53 | 16 |
| `python/packages/hyperlight/agent_framework_hyperlight/_provider.py` | 4 | 0 |
| `python/packages/hyperlight/tests/hyperlight/conftest.py` | 84 | 0 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 154 | 15 |
| `python/packages/monty/AGENTS.md` | 4 | 0 |
| `python/packages/monty/README.md` | 18 | 0 |
| `python/packages/monty/agent_framework_monty/_execute_code_tool.py` | 14 | 1 |
| `python/packages/monty/agent_framework_monty/_monty_bridge.py` | 8 | 4 |
| `python/packages/monty/agent_framework_monty/_provider.py` | 6 | 0 |
| `python/packages/monty/tests/monty/conftest.py` | 37 | 0 |
| `python/packages/monty/tests/monty/test_monty_codeact.py` | 32 | 7 |
| `python/packages/monty/tests/monty/test_monty_codeact_integration.py` | 57 | 1 |
| `skills/agent-framework-builder-python/references/integrations.md` | 5 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `37e9617` Redact CodeAct host-tool diagnostics by default
- `65b733a` Separate .NET CodeAct changes from Python PR
- `f18141a` Redact Python Hyperlight lifecycle failures

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** CodeAct のホストツール診断が既定で秘匿されるようになり、従来の例外詳細を前提とした観測・デバッグ方法は変わります。変更ファイルでは Hyperlight / Monty の実行経路と provider 設定が対象です。

**既存利用者への影響**

Python CodeAct の利用者は更新後の例外メッセージとログを確認し、診断情報の秘匿化に合わせて運用手順を調整してください。詳細例外を取り扱う際は情報漏えいのリスクを評価してください。

### [#9948](https://github.com/microsoft/agent-framework/pull/9948) — Python: [BREAKING] Remove Python 3.10 support

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change` `lab`
- 変更行数: +494 / -2432
- マージ日時 (UTC): `2026-11-02 16:36:50`

**変更概要**

Agent Framework Python パッケージ群から Python 3.10 のサポートを削除し、Python 3.11 向けの構文・ツールチェーンへ移行する変更です。
多数のパッケージ、サンプル、開発環境設定、CI / 開発ドキュメントが更新され、Python 3.10 を前提にした環境ではインストール・開発が継続できなくなります。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `TRANSPARENCY_FAQ.md` | 1 | 1 |
| `python/.github/skills/python-code-quality/SKILL.md` | 2 | 2 |
| `python/.pre-commit-config.yaml` | 1 | 1 |
| `python/.vscode/tasks.json` | 0 | 1 |
| `python/CODING_STANDARD.md` | 1 | 1 |
| `python/DEV_SETUP.md` | 3 | 8 |
| `python/README.md` | 2 | 5 |
| `python/agent_framework_meta/__init__.py` | 4 | 6 |
| `python/devsetup.sh` | 2 | 2 |
| `python/packages/a2a/agent_framework_a2a/_agent.py` | 1 | 7 |
| `python/packages/a2a/pyproject.toml` | 2 | 2 |
| `python/packages/ag-ui/README.md` | 0 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_client.py` | 1 | 5 |
| `python/packages/ag-ui/agent_framework_ag_ui/_endpoint.py` | 2 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_types.py` | 1 | 6 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `19de052` Python: remove Python 3.10 support
- `48d8dd9` Python: apply Python 3.11 pyupgrade rewrites

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Python の最小サポートバージョンが 3.10 から引き上げられ、3.10 対応コードと環境設定が削除されています。Python 3.11 の構文変換も含まれます。

**既存利用者への影響**

Python 3.10 を使うアプリケーション、CI、開発環境は Python 3.11 以降へ更新してからこの変更を含む版へ移行してください。各環境の依存関係とテストを先に確認してください。

### [#9900](https://github.com/microsoft/agent-framework/pull/9900) — Python: [BREAKING] align workflow span name with OpenTelemetry conventions

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +166 / -32
- マージ日時 (UTC): `2026-11-03 10:12:32`

**変更概要**

Python Workflow の OpenTelemetry span 名と属性を規約に合わせ、Workflow 実行をより一貫した形で観測できるようにする変更です。
Workflow invocation 名や operation 属性を span に反映し、生成名の扱いも調整しています。テレメトリ実装、回帰テスト、観測性ガイドが更新されました。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 12 | 4 |
| `python/packages/core/agent_framework/_workflows/_workflow.py` | 2 | 1 |
| `python/packages/core/agent_framework/_workflows/_workflow_builder.py` | 6 | 1 |
| `python/packages/core/agent_framework/observability.py` | 15 | 9 |
| `python/packages/core/tests/core/test_observability.py` | 24 | 8 |
| `python/packages/core/tests/workflow/test_functional_workflow.py` | 2 | 2 |
| `python/packages/core/tests/workflow/test_workflow.py` | 1 | 1 |
| `python/packages/core/tests/workflow/test_workflow_observability.py` | 98 | 6 |
| `skills/agent-framework-builder-python/references/observability.md` | 6 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `db7ed22` Python: align workflow span name with OpenTelemetry conventions
- `c4c2dd5` Python: type graph and functional workflow regression test explicitly
- `3b311d2` Python: align workflow name telemetry attribute with OpenTelemetry
- `2376062` Python: record workflow invocation operation attribute
- `4fae498` Python: include workflow names in invocation spans
- `38792a7` Python: omit generated workflow names from invocation telemetry

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Workflow span 名および関連テレメトリ属性の命名が OpenTelemetry conventions に合わせて変更されます。公開 API のシグネチャ変更は変更一覧から確認できませんが、既存の span 名を参照する consumer には互換性影響があります。

**既存利用者への影響**

span 名や workflow telemetry 属性でフィルターするダッシュボード、アラート、トレース分析クエリを使用している場合は、更新後の名称に合わせて修正してください。

### [#9899](https://github.com/microsoft/agent-framework/pull/9899) — .NET: [BREAKING] align workflow span name with OpenTelemetry conventions

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +355 / -31
- マージ日時 (UTC): `2026-11-02 18:42:35`

**変更概要**

 .NET Workflow の span 名やテレメトリ属性を OpenTelemetry conventions にそろえ、実行・invocation のトレース情報を一貫させる変更です。
WorkflowTelemetryContext、ActivityNames、Tags などを更新し、Workflow 名や invocation 情報を記録するほか、activity の実行・破棄処理も整理しています。単体テストと観測性ドキュメントが追加・更新されました。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Execution/ISuperStepRunner.cs` | 2 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Execution/LockstepRunEventStream.cs` | 2 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Execution/StreamingRunEventStream.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/InProc/InProcessRunner.cs` | 3 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/ActivityNames.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/Tags.cs` | 3 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/WorkflowTelemetryContext.cs` | 22 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/Observability/WorkflowTelemetryOptions.cs` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows/WorkflowBuilder.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/DeclarativeWorkflowOptionsTest.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.UnitTests/ObservabilityTests.cs` | 195 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.UnitTests/WorkflowRunActivityStopTests.cs` | 113 | 15 |
| `skills/agent-framework-builder-dotnet/references/observability.md` | 9 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `c0fa63f` .NET: align workflow span name with OpenTelemetry conventions
- `dca4f13` .NET: align workflow name telemetry attribute with OpenTelemetry
- `fef9675` .NET: record workflow invocation operation attribute
- `9b13967` .NET: include workflow names in invocation spans
- `2952799` .NET: propagate supplied workflow conversation context
- `845ce61` .NET: use compiler-managed workflow activity disposal
- `95d38a6` chore: Update Activity.Current assignment for run activity

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Workflow span 名・属性名の規約準拠に伴い、既存の独自名称が変更されます。Workflow telemetry options に関係する記録内容も更新されるため、旧名称を直接参照する外部 consumer には影響します。

**既存利用者への影響**

OpenTelemetry の span 名や属性名を使う監視クエリ、ダッシュボード、アラートを新しい命名へ更新してください。テレメトリを直接利用していない場合、コード移行は通常不要です。

### [#9841](https://github.com/microsoft/agent-framework/pull/9841) — .NET: [BREAKING] fix(dotnet): require allowed HTTP hosts

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +1081 / -440
- マージ日時 (UTC): `2026-11-04 17:41:07`

**変更概要**

宣言型 .NET Workflow の既定 HTTP request handler に接続先ホストの明示的な許可を要求し、任意の宛先への要求を制限する変更です。
許可 URL の検証と HTTP 接続の扱いを再設計し、既定の宛先検証や接続所有権を含むテストを拡充しました。公開 API とサンプルも許可ホスト構成に合わせて更新されています。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0049-dotnet-declarative-http-allowed-hosts.md` | 73 | 0 |
| `dotnet/samples/03-workflows/Declarative/InvokeHttpRequest/Program.cs` | 14 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/CompatibilitySuppressions.xml` | 179 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/DefaultHttpRequestHandler.cs` | 138 | 105 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Microsoft.Agents.AI.Workflows.Declarative.csproj` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 6 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/PublicAPI/net472/PublicAPI.Unshipped.txt` | 6 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 6 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 6 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/PublicAPI/netstandard2.0/PublicAPI.Unshipped.txt` | 6 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.UnitTests/AgentHostingServiceCollectionExtensionsTests.cs` | 4 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.IntegrationTests/InvokeToolWorkflowTest.cs` | 36 | 36 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/DefaultHttpRequestHandlerTests.cs` | 573 | 286 |
| `skills/agent-framework-builder-dotnet/references/declarative.md` | 33 | 2 |

</details>

<details><summary>コミット (18 件)</summary>

- `8bf3e78` fix(dotnet): validate default HTTP destinations
- `139ffef` fix(dotnet): verify owned HTTP connection handling
- `149fe69` fix(dotnet): clarify HTTP test response ownership
- `37ee7c4` fix(dotnet): require allowed HTTP hosts
- `fb97866` fix(dotnet): require explicit hosts in HTTP handler constructors
- `b1df6df` fix(dotnet): keep HTTP authority derived from allowed URLs
- `d9ff0f3` chore: Potential fix for pull request finding 'Missing Dispose call o…
- `090c01a` fix(dotnet): avoid unused response allocation in HTTP test
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** HTTP handler の constructor で許可対象ホストの明示が必要になり、許可された URL から HTTP authority を決定するよう変更されます。許可リストなしの既存構成や旧 constructor の呼び出しは更新が必要です。

**既存利用者への影響**

宣言型 Workflow の HTTP 要求で接続先ホストを明示し、許可リストを構成してください。カスタム handler / constructor を実装している場合は新しい引数と検証条件へ合わせて更新してください。

### [#9722](https://github.com/microsoft/agent-framework/pull/9722) — .NET: [BREAKING] fix: scope workflow MCP clients to invocations

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +1494 / -1290
- マージ日時 (UTC): `2026-11-04 16:26:36`

**変更概要**

宣言型 .NET Workflow で MCP クライアントとセッションを invocation 単位で管理し、実行間の状態共有やリソース所有権の曖昧さを防ぐ変更です。
MCP handler を stateless 化し、factory 管理の HTTP client を利用するほか、transport options を検証してから接続を取得します。関連する設計記録、サンプル、API 公開情報、テストも更新されています。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0047-dotnet-workflow-owned-mcp-sessions.md` | 497 | 0 |
| `dotnet/Directory.Packages.props` | 1 | 0 |
| `dotnet/samples/03-workflows/Declarative/InvokeFoundryToolboxMcp/Program.cs` | 35 | 45 |
| `dotnet/samples/03-workflows/Declarative/InvokeMcpTool/Program.cs` | 46 | 53 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/CompatibilitySuppressions.xml` | 109 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/DefaultMcpToolHandler.cs` | 66 | 309 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/Microsoft.Agents.AI.Workflows.Declarative.Mcp.csproj` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 5 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net472/PublicAPI.Unshipped.txt` | 5 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 5 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 5 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/netstandard2.0/PublicAPI.Unshipped.txt` | 5 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/README.md` | 80 | 18 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/Shared/OriginPinningHandlerTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.IntegrationTests/InvokeToolWorkflowTest.cs` | 11 | 4 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `bc8520d` docs: revise workflow MCP connection lifetime ADR
- `964ac70` fix(mcp): scope workflow clients to individual invocations
- `9cb20a4` fix(mcp): use factory-managed HTTP clients
- `bfeec8f` fix(mcp): validate transport options before client acquisition
- `9a273cb` fix(mcp): reconcile ownership documentation with main
- `51d7639` fix(samples): use factory-managed MCP HTTP clients
- `7cfbada` refactor: make declarative MCP handler stateless
- `fc0979e` perf: disable standalone MCP streams for workflow tool calls
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** MCP クライアントの生存期間が Workflow 全体の共有から invocation 単位へ変更され、handler は stateless になります。HTTP client は factory 管理となり、従来の接続共有・破棄前提を利用する構成は互換性を確認してください。

**既存利用者への影響**

Workflow ごとに MCP 接続やセッションを共有していた利用者は、実行ごとのライフサイクルへ合わせて構成を見直してください。サンプルや独自 handler を参照している場合は新しい factory / ownership 方針へ更新してください。

### [#9322](https://github.com/microsoft/agent-framework/pull/9322) — Python: [BREAKING] Migrate Foundry Local integration to SDK 2.3.1

- 作者: bmehta001 / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +2183 / -308
- マージ日時 (UTC): `2026-11-04 08:57:37`

**変更概要**

Foundry Local の Python 統合を新しい SDK 系列へ移行し、クライアント実装、依存関係、テスト、サンプルを更新する変更です。
新しい SDK runtime の Python 対応範囲を反映し、HTTP transport 選択、並行するクライアント初期化、ネイティブ chat controls の検証も扱っています。Foundry Local package を利用する Python アプリケーションが対象です。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-tests.yml` | 2 | 2 |
| `python/packages/core/pyproject.toml` | 1 | 1 |
| `python/packages/foundry_local/AGENTS.md` | 32 | 2 |
| `python/packages/foundry_local/README.md` | 175 | 1 |
| `python/packages/foundry_local/agent_framework_foundry_local/_foundry_local_client.py` | 279 | 77 |
| `python/packages/foundry_local/pyproject.toml` | 2 | 3 |
| `python/packages/foundry_local/tests/conftest.py` | 42 | 10 |
| `python/packages/foundry_local/tests/test_foundry_local_client.py` | 1476 | 144 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 35 | 33 |
| `python/samples/02-agents/providers/foundry/foundry_local_agent.py` | 19 | 15 |
| `python/scripts/dependencies/tests/test_dependency_bounds_release.py` | 46 | 0 |
| `python/uv.lock` | 74 | 20 |

</details>

<details><summary>コミット (29 件)</summary>

- `b442f9f` Python: migrate Foundry Local integration to SDK 2.1
- `5a7afff` Python: lock current Foundry Local SDK runtime dependencies
- `1bc5bbf` Python: use the OpenAI-selected HTTP transport in regression tests
- `7b9e804` Python: reflect the SDK native runtime Python support bounds
- `d7e232e` Serialize Foundry Local client setup and fix test typing
- `74bc673` Type the concurrent Foundry Local test factory explicitly
- `4d07661` Expose and validate Foundry Local native chat controls
- `ac5362b` Retry CI after unrelated Windows approval checkpoint failure
- _... 他 21 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Foundry Local SDK と runtime 依存関係が更新され、Python 対応範囲およびクライアント初期化・native chat controls の扱いが変わります。詳細な公開シグネチャ差分はコミット一覧だけでは特定できないため、移行時は更新後の package API と依存制約を確認してください。

**既存利用者への影響**

Foundry Local Python 統合を利用する場合は SDK の新しい runtime 要件を満たし、ロックファイルを更新してください。クライアント生成や制御オプションをカスタマイズしているアプリは回帰テストが必要です。

### [#9735](https://github.com/microsoft/agent-framework/pull/9735) — Python: Correct multimodal sample setup variables

- 作者: BlueRaddish / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +3 / -8
- マージ日時 (UTC): `2026-11-04 14:30:25`

**変更概要**

Python multimodal input サンプルの README にある環境変数名を修正し、サンプルのセットアップ手順を実際の構成に合わせる変更です。
変更はドキュメント1ファイルに限られ、ライブラリ API や実行時の挙動は変更しません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/02-agents/multimodal_input/README.md` | 3 | 8 |

</details>

<details><summary>コミット (1 件)</summary>

- `37971e9` Python: Correct multimodal sample setup variables

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャやランタイム挙動に変更はありません。サンプル README の環境変数記載のみ修正されています。

**既存利用者への影響**

移行作業は不要です。該当サンプルを利用する場合は修正後の README を参照してください。

### [#8756](https://github.com/microsoft/agent-framework/pull/8756) — .NET: Add GA computer tool support to Foundry and Foundry hosting

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +1454 / -19
- マージ日時 (UTC): `2026-10-30 19:19:24`

**変更概要**

Foundry および Foundry hosting で GA の computer tool を利用する .NET 向け factory と対応付けを追加しました。
Azure OpenAI Responses computer use と Foundry computer tool のサンプルを整備し、既存プレビューサンプルを整理しています。computer tool を使う .NET 開発者が対象です。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-dotnet.slnx` | 2 | 1 |
| `dotnet/eng/verify-samples/AgentsSamples.cs` | 15 | 2 |
| `dotnet/samples/02-agents/AgentProviders/README.md` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/Agent_With_AzureOpenAIResponses_ComputerUse.csproj` | 25 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/Assets/cua_browser_search.jpg` | 0 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/Assets/cua_search_results.jpg` | 0 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/Assets/cua_search_typed.jpg` | 0 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/ComputerUseUtil.cs` | 136 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/Program.cs` | 117 | 0 |
| `dotnet/samples/02-agents/AgentProviders/azure/Agent_With_AzureOpenAIResponses_ComputerUse/README.md` | 55 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step15_ComputerUsePreview/Agent_Step15_ComputerUsePreview.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step15_ComputerUsePreview/Assets/cua_browser_search.jpg` | 0 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step15_ComputerUsePreview/Assets/cua_search_results.jpg` | 0 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step15_ComputerUsePreview/Assets/cua_search_typed.jpg` | 0 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step15_ComputerUsePreview/ComputerUseUtil.cs` | 2 | 2 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `018ad37` feat(dotnet): add GA computer tool factory
- `e4a76fc` feat(dotnet): map computer items in Foundry hosting
- `70afa93` docs(dotnet): add GA computer use sample
- `77f6aad` chore(dotnet): drop stale OPENAICUA001 pragmas
- `4cc7560` refactor(dotnet): gate computer tool factories with OPENAI001
- `de8740b` docs(dotnet): rename computer use samples
- `b237061` docs(dotnet): renumber GA computer use sample to Step15.2
- `adec663` docs(dotnet): narrow computer call replay caveat to action
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

GA computer tool を構築する新しい .NET factory と Foundry hosting 側の tool item mapping が追加されています。変更一覧から既存 API の削除は確認されず、主に新機能・サンプルの追加です。

**既存利用者への影響**

既存利用者に必須の移行はありません。computer tool を導入する場合は GA 対応 factory と更新された Foundry hosting サンプルを参照してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9996 | Python: Prefer injected Cosmos vector store clients over connection settings | sumedh-aerram | <https://github.com/microsoft/agent-framework/pull/9996> |
| #10101 | .NET: Verify complete MCP skill frontmatter | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10101> |
| #10065 | .NET: Preserve non-ASCII text in hosting tool payloads | westey-m | <https://github.com/microsoft/agent-framework/pull/10065> |
| #10096 | Python: chore(deps): consolidate open Dependabot updates | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10096> |
| #10103 | Python: Clarify binary content purview classification | westey-m | <https://github.com/microsoft/agent-framework/pull/10103> |
| #10038 | Python: strengthen API design and PR review guidance | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10038> |
| #10098 | .NET: fix: azure agent renamed to foundry agent | baywet | <https://github.com/microsoft/agent-framework/pull/10098> |
| #10099 | .NET: Fix per message user mapping in purview | westey-m | <https://github.com/microsoft/agent-framework/pull/10099> |
| #10100 | .NET: Allow configuring Foundry toolbox token scope | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10100> |
| #9875 | Python: Harden FIDES core policy foundation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9875> |
| #10095 | .NET: Add a do-not-retry reason when samples reject tool approvals | westey-m | <https://github.com/microsoft/agent-framework/pull/10095> |
| #9991 | Python: Honor injected Foundry embedding clients without endpoint settings | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9991> |
| #10086 | Python: Add Donkey Development Kit to the Python community projects | tommasobolis | <https://github.com/microsoft/agent-framework/pull/10086> |
| #9972 | Python: serialize Anthropic MCP tool result content on replay | uragoodman | <https://github.com/microsoft/agent-framework/pull/9972> |
| #10070 | docs: fix spelling typos in decision records | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/10070> |
| #9483 | Python: Kill the shell process group on stateless shell timeout | digit50 | <https://github.com/microsoft/agent-framework/pull/9483> |
| #9294 | Python: Keep sessions pending when a consolidation pass did not cover them | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9294> |
| #10005 | Python: Pass extra declarative model options through as regular options | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10005> |
| #9998 | Python: Fix request-info deserialization for NoneType | Giraffe0129 | <https://github.com/microsoft/agent-framework/pull/9998> |
| #9985 | Python: Prefer injected Oracle clients over connection settings | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9985> |
| #9984 | Python: Skip Claude client settings when a client is injected | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9984> |
| #9983 | Python: Prefer injected Postgres clients over connection settings | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9983> |
| #9982 | Python: Prefer injected MongoDB clients over connection settings | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9982> |
| #9981 | Python: Respect FOUNDRY_MODEL in FoundryEvals | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9981> |
| #9969 | Python: Skip Gemini connection settings when a genai.Client is injected | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/pull/9969> |
| #9967 | Python: Prefer boto3 session and injected client region over BEDROCK_REGION | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/pull/9967> |
| #9943 | Python: Respect exclude and exclude_none in BaseChatClient.to_dict for additional_properties | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9943> |
| #9942 | Python: Return empty list from Executor output_types when discovery is deferred | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9942> |
| #9712 | Python: fix(devui): accept the IPv6 loopback Host header on a loopback bind | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9712> |
| #10036 | Python: Validate agent MCP tool arguments | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10036> |
| #10032 | Python: Add Bhived to the Python community projects | yossufyahya2000 | <https://github.com/microsoft/agent-framework/pull/10032> |
| #10062 | chore(deps): bump danielpalme/ReportGenerator-GitHub-Action in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10062> |
| #10064 | chore(deps): bump j178/prek-action in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10064> |
| #10063 | chore(deps): bump actions/create-github-app-token in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10063> |
| #9987 | Python: Prefer an injected Azure OpenAI deployment over environment model aliases | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9987> |
| #10048 | Fix Issue Planning workflow by recompiling with gh-aw v1.0.1 | westey-m | <https://github.com/microsoft/agent-framework/pull/10048> |
| #10046 | .NET: chore: promote shipped .NET APIs for main | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/10046> |
| #9813 | .NET: Preserve citations in OpenAI Responses hosting | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9813> |
| #9883 | Stale PR closure workflow/script | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9883> |
| #9986 | .NET: Support MCP skills cacheScope with per-key cache partitions | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9986> |
| #9993 | Python: Prefer injected Qdrant clients over connection settings | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9993> |
| #9745 | Python: Preserve request metadata in hosted responses | its-amann | <https://github.com/microsoft/agent-framework/pull/9745> |
| #9977 | Python: fix(redis): prefer an injected history client over connection settings | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9977> |
| #9897 | .NET: Python: Avoid duplicate log export when root logger already has an OTel handler | droideronline | <https://github.com/microsoft/agent-framework/pull/9897> |
| #9852 | Python: fix(core): accept whole-number floats for JSON Schema integer type | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9852> |
| #9789 | Python: Convert nested SDK models in hosted tool sanitization | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9789> |
| #8960 | Python: sort MCP inputSchema properties deterministically for prompt caching | Prognosticate-X | <https://github.com/microsoft/agent-framework/pull/8960> |
| #9738 | .NET: Preserve conversation continuity after OAuth consent | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9738> |
| #9995 | .NET: Update A2A SDK to 1.0.0-preview4 | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9995> |
| #9901 | ci: adds a skill for the release notes | baywet | <https://github.com/microsoft/agent-framework/pull/9901> |
| #9773 | .NET: Preserve GitHub Copilot reasoning token usage | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9773> |
| #9873 | .NET: fall back when a restored agent mode is no longer configured | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9873> |
| #9947 | Python: Fix native Windows changed-package routing | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9947> |
| #9906 | Python: docs: fix dead Learn link to the Rubric evaluators guide | kun654 | <https://github.com/microsoft/agent-framework/pull/9906> |
| #9781 | Python: use FOUNDRY_* settings in the red teaming sample README | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9781> |
| #9758 | Python: use FOUNDRY_* settings in the ChatKit integration sample README | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9758> |
| #9740 | Python: use FOUNDRY_MODEL in the Content Understanding DevUI sample READMEs | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9740> |
| #9681 | Python: Preserve termination results in Agent and Chat middleware | ssccinng | <https://github.com/microsoft/agent-framework/pull/9681> |
| #9937 | Python: Expand optional MCP tool regression coverage | ssccinng | <https://github.com/microsoft/agent-framework/pull/9937> |
| #9931 | Python: Attach Foundry reasoning replay data to the message that owns it | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/9931> |
| #9898 | Python: Surface Anthropic citations_delta annotations when streaming and read document_title for char_location | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/9898> |
| #9859 | Python: include Anthropic cache tokens in input_token_count | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9859> |
| #9796 | Python: Fix Bedrock parallel tool result handling. | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/9796> |
| #9763 | Python: Fix Ollama streaming finish reason for tool calls | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9763> |
| #9679 | Python: Handle tuples in function tool results | ssccinng | <https://github.com/microsoft/agent-framework/pull/9679> |
| #9932 | chore(deps): bump actions/setup-python in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9932> |
| #9933 | chore(deps): bump astral-sh/setup-uv in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9933> |
| #9936 | chore(deps): bump github/codeql-action/analyze in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9936> |
| #9934 | chore(deps): bump github/codeql-action/init in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9934> |
| #9935 | chore(deps): bump github/codeql-action/autobuild in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9935> |
| #9893 | .NET: chore: bumps release version for dotnet | baywet | <https://github.com/microsoft/agent-framework/pull/9893> |
| #9894 | .NET: ci: adds a script to bump the release version | baywet | <https://github.com/microsoft/agent-framework/pull/9894> |
| #9845 | .NET: fix(dotnet): handle parse-value conversion failures consistently | baywet | <https://github.com/microsoft/agent-framework/pull/9845> |
| #9403 | Python: fix tools from context providers | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/9403> |
| #9881 | .NET: Refactor MCP skills discovery into a catalog | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9881> |
| #9783 | Python: [Python] Clarify optional usage counter handling | ktz03 | <https://github.com/microsoft/agent-framework/pull/9783> |
| #9788 | Python: fix(python): deduplicate CodeAct FIDES compatibility warnings | suhasagg | <https://github.com/microsoft/agent-framework/pull/9788> |
| #9800 | .NET: Add configurable MCP skills TTL resolver | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9800> |
| #9648 | .NET: Pin the documentation pages of the RAG Step02 sample to a commit | Laurianti | <https://github.com/microsoft/agent-framework/pull/9648> |
| #9847 | Python: prepare 1.24.0 release for October 30 | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9847> |
| #9574 | Python: fix(vectors): compare in-memory filters in the field's own type | Madin-H23 | <https://github.com/microsoft/agent-framework/pull/9574> |
| #9825 | Python: reject metaclasses when restoring checkpoint data | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9825> |
| #9828 | Python: Add a default approval mode to MCP approval policies | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9828> |
| #9589 | Python: Add shared Foundry resource attribute to telemetry | luigiw | <https://github.com/microsoft/agent-framework/pull/9589> |
| #9812 | .NET: Correct Foundry citation offsets across completed text parts | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9812> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9924 | Python: Add timeout parameter to OpenAI client classes | open | IshamMohamed | <https://github.com/microsoft/agent-framework/pull/9924> |
| PR | #10106 | Python: Replay Anthropic redacted_thinking blocks in tool loops | open | atty57 | <https://github.com/microsoft/agent-framework/pull/10106> |
| PR | #9994 | .NET: [BREAKING] Remove nonstandard workflow payload telemetry | open | baywet | <https://github.com/microsoft/agent-framework/pull/9994> |
| PR | #10007 | .NET: Preserve MCP execution contracts in Foundry hosting | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10007> |
| PR | #10102 | .NET: chore: promote shipped .NET APIs for main | open | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/10102> |
| PR | #10090 | Python: reject unsupported Copilot provider function middleware | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10090> |
| PR | #9876 | Python: Harden FIDES replay and approval authority | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9876> |
| PR | #10105 | Python: chore(core): remove unused URI_PATTERN and correct add_chain cycle docstring | open | PratikDhanave | <https://github.com/microsoft/agent-framework/pull/10105> |
| PR | #9890 | Python: fix(redis): keep core message groups atomic when trimming history | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9890> |
| PR | #9877 | Python: Harden FIDES service history continuation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9877> |
| PR | #10045 | Add manual agentic issue triage workflow | open | westey-m | <https://github.com/microsoft/agent-framework/pull/10045> |
| PR | #10069 | .NET: fix(dotnet): parse declarative workflow formulas and values with InvariantCulture | open | Prognosticate-X | <https://github.com/microsoft/agent-framework/pull/10069> |
| PR | #10093 | Python: Separate message texts with a newline in AgentResponse.text | open | Revinand | <https://github.com/microsoft/agent-framework/pull/10093> |
| PR | #10001 | [BREAKING] Python: Honor injected Azure AI Search clients over settings | open | FOWEPJF255 | <https://github.com/microsoft/agent-framework/pull/10001> |
| PR | #10047 | Python: expose provider call IDs on FunctionInvocationContext | open | danielquintas8 | <https://github.com/microsoft/agent-framework/pull/10047> |
| PR | #9968 | Python: Report the injected Mistral SDK client's endpoint in service_url | open | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/pull/9968> |
| PR | #9944 | Python: Normalize naive timestamps to UTC in checkpoint selection | open | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9944> |
| PR | #9919 | Python: fix file memory description sidecar collisions | open | Lushiyao5 | <https://github.com/microsoft/agent-framework/pull/9919> |
| PR | #10088 | Python: Sum streamed GitHubCopilotAgent usage across model calls | open | droideronline | <https://github.com/microsoft/agent-framework/pull/10088> |
| PR | #9909 | Python: fix(redis): skip malformed history entries instead of raising on read | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9909> |
| PR | #10084 | Python: Read orchestration outputs as agent responses in tool approval samples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10084> |
| PR | #10085 | Python: Select all other participants in the group chat debate sample | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10085> |
| PR | #10076 | Python: Register declarative workflow types for checkpoint restore | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10076> |
| PR | #10083 | .NET: Fix sample READMEs that don't match the DevUI and SessionFilesClient code | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10083> |
| PR | #10082 | Python: Point multimodal and declarative MCP samples at FOUNDRY_* settings | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10082> |
| PR | #10081 | Python: Fix custom client, fan-in, and executor docstring examples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10081> |
| PR | #10078 | Python: Fix serialization docstring examples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10078> |
| PR | #10080 | Python: Show mcp 2.x Server handler registration in the hosting-mcp README | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10080> |
| PR | #10079 | Python: Use a real chat client in Purview chat middleware examples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10079> |
| PR | #10066 | [BREAKING] .NET: fix(hyperlight): propagate cancellation and limit execution | open | baywet | <https://github.com/microsoft/agent-framework/pull/10066> |
| PR | #9856 | Python: fix typos and missing space in sample prompt | open | JennyMa11 | <https://github.com/microsoft/agent-framework/pull/9856> |
| PR | #10068 | Python: Fix the auto_retry sample so it retries 429 errors | open | sohom-cs | <https://github.com/microsoft/agent-framework/pull/10068> |
| PR | #9989 | Python: fix(gemini): include thinking and tool-use prompt tokens in usage totals | open | lalith0407 | <https://github.com/microsoft/agent-framework/pull/9989> |
| PR | #10034 | .NET: Strip RawRepresentation from content forwarded between agents | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/10034> |
| PR | #10041 | Python: fix(redis): let an injected redis_client take precedence in RedisHistoryProvider | open | wxhking | <https://github.com/microsoft/agent-framework/pull/10041> |
| PR | #10039 | Python: fix(redis): escape RediSearch query syntax in memory search text | open | wxhking | <https://github.com/microsoft/agent-framework/pull/10039> |
| PR | #9999 | Python: Prefer injected DocumentDB clients over connection settings | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9999> |
| PR | #9874 | .NET: fix(dotnet): avoid duplicate chat history with background respo… | open | feiyun0112 | <https://github.com/microsoft/agent-framework/pull/9874> |
| PR | #9979 | Python: fix(duckdb): prefer injected connections over settings | open | Narendra02053 | <https://github.com/microsoft/agent-framework/pull/9979> |
| PR | #10000 | Python: keep Foundry injected clients caller-owned on cleanup | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/10000> |
| PR | #9902 | Python: fix get_latest silently returning a stale checkpoint on decode failure | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/9902> |
| PR | #10006 | Python: Fix Hyperlight imports in Python samples | open | Momo-Not-Emo | <https://github.com/microsoft/agent-framework/pull/10006> |
| PR | #10003 | Python: fix(python): include cache tokens in input_token_count for Bedrock and Claude | open | 123XieC | <https://github.com/microsoft/agent-framework/pull/10003> |
| PR | #9990 | Python: Preserve injected Cosmos memory client configuration ownership | open | LionStone-1 | <https://github.com/microsoft/agent-framework/pull/9990> |
| PR | #9929 | Python: Reject candidate_count>1 in the Gemini chat client instead of silently dropping candidates | open | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/9929> |
| PR | #9911 | Python: fix(mem0): do not forward unset user_id/agent_id as None to OSS client | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9911> |
| PR | #9908 | Python: fix(azure-cosmos): reject empty session_id instead of generating an orphan GUID | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9908> |
| PR | #9858 | Python: keep Windows backslashes in LocalShellTool shell paths | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9858> |
| PR | #9882 | Python: Add MCP server identity to tool execution spans | open | kshitijchawla | <https://github.com/microsoft/agent-framework/pull/9882> |
| PR | #9926 | .NET: Discard pending workflow state after failed supersteps | open | sumedh-aerram | <https://github.com/microsoft/agent-framework/pull/9926> |
| PR | #9925 | Python: Surface failed OpenAI Responses as client exceptions | open | sumedh-aerram | <https://github.com/microsoft/agent-framework/pull/9925> |
| PR | #9920 | Python: serialize todo mutations across providers sharing a store | open | Lushiyao5 | <https://github.com/microsoft/agent-framework/pull/9920> |
| PR | #9907 | Python: fix(memory): return no results for a non-positive transcript search limit | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9907> |
| PR | #9878 | Python: Preserve FIDES AG-UI replay provenance | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9878> |
| PR | #9879 | Python: Enforce FIDES MCP IFC labels | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9879> |
| PR | #9857 | .NET: [BREAKING] Suppress duplicate workflow payload telemetry for hosted agents | open | tokaplan | <https://github.com/microsoft/agent-framework/pull/9857> |
| PR | #9545 | .NET: fix: mcp workflow isolation | closed | baywet | <https://github.com/microsoft/agent-framework/pull/9545> |
| PR | #9678 | .NET: fix: avoid final rejection wording for unanswered approvals | closed | ssccinng | <https://github.com/microsoft/agent-framework/pull/9678> |
| PR | #10077 | Python: Run the local CI MCP server on mcp 2.x | closed | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/10077> |
| PR | #10061 | Python: chore(deps): bump ruff from 0.17.1 to 0.17.3 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10061> |
| PR | #10059 | Python: chore(deps): bump pydantic-monty from 0.0.23 to 1.4.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10059> |
| PR | #10057 | Python: chore(deps-dev): bump pytest-asyncio from 1.4.0 to 1.4.1 in /python in the pytest group | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10057> |
| PR | #10060 | Python: chore(deps): bump azure-ai-projects from 2.7.0 to 2.9.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10060> |
| PR | #10056 | Python: chore(deps): bump litellm from 1.106.2 to 1.106.4 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10056> |
| PR | #10055 | Python: chore(deps): bump huggingface-hub from 1.33.0 to 2.3.0 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10055> |
| PR | #10054 | Python: chore(deps): bump the python-type-checkers group across 2 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10054> |
| PR | #10058 | Python: chore(deps-dev): bump fastapi from 0.141.1 to 0.162.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10058> |
| PR | #10053 | Python: chore(deps-dev): bump pytest-asyncio from 1.4.0 to 1.4.1 in /python/packages/lab in the pytest group | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10053> |
| PR | #10052 | Python: chore(deps-dev): bump the pytest group across 2 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10052> |
| PR | #10051 | Python: chore(deps-dev): bump the basics group in /python/packages/lab with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10051> |
| PR | #10050 | Python: chore(deps): bump the basics group across 3 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10050> |
| PR | #10049 | Python: chore(deps): bump agent-framework-core from 1.22.0 to 1.23.0 in /python/packages/lab in the agent-framework group | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10049> |
| PR | #10044 | Python: fix(mistral): report an injected SDK client's own endpoint | closed | wxhking | <https://github.com/microsoft/agent-framework/pull/10044> |
| PR | #8479 | .NET: chore: promote shipped .NET APIs for main | closed | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/8479> |
| PR | #9765 | Python: docs(changelog): replace links to deleted PRs with permalinks to their commits | closed | leom1919 | <https://github.com/microsoft/agent-framework/pull/9765> |
| PR | #9652 | Python: Harden FIDES security state and policy enforcement | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9652> |
| PR | #9887 | Python: preserve hosted tool results in ToolResultCompactionStrategy | closed | uragoodman | <https://github.com/microsoft/agent-framework/pull/9887> |
| PR | #9780 | Python: Preserve per-choice message boundaries when streaming chat completions (n>1) | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/9780> |
| PR | #9775 | Python: Preserve native changed-package path semantics | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/9775> |
| PR | #9905 | Python: fix(scripts): support native Windows paths in get_changed_packages | closed | chengwudi1 | <https://github.com/microsoft/agent-framework/pull/9905> |
| PR | #9895 | Python: feat(python): add close() and async context manager to embedding clients | closed | Lushiyao5 | <https://github.com/microsoft/agent-framework/pull/9895> |
| PR | #9872 | Python: give each file memory its own description sidecar | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9872> |
| PR | #9870 | Python: scope the todo mutation lock to the store and session | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9870> |
| PR | #9867 | Python: dispatch the model kind by shape in the declarative schema | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9867> |
| PR | #9865 | Python: dispatch MCP approval modes by kind in the declarative tool | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9865> |
| PR | #9863 | Python: let the DevUI item endpoint resolve list item ids | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9863> |
| PR | #9861 | Python: validate conversation metadata at the DevUI routes | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9861> |
| PR | #9777 | Python: accept equals syntax for workspace checker selection | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/9777> |
| PR | #9728 | Python: make the memory markdown escape invertible for backslash runs | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9728> |
| PR | #9769 | Python: Normalize Windows path separators in changed-package routing | closed | leilei3167 | <https://github.com/microsoft/agent-framework/pull/9769> |
| PR | #9726 | Python: drop the memory placeholder only when it is the sole entry | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9726> |
| PR | #8978 | Python: Surface Anthropic citations_delta annotations when streaming | closed | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8978> |
| PR | #9838 | Python: Build(deps): bump the python-type-checkers group across 2 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9838> |
| PR | #9839 | Python: Build(deps-dev): update flit-core requirement from <4.0,>=3.11 to >=3.11,<5.0 in /python in the flit group | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9839> |
| PR | #9836 | Python: Build(deps-dev): bump typescript in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9836> |
| PR | #9835 | Python: Build(deps-dev): bump eslint in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9835> |
| PR | #9837 | Python: Build(deps): bump litellm from 1.103.7 to 1.106.2 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9837> |
| PR | #9834 | Build(deps): bump griffe from 2.4.0 to 2.4.1 in /python/tooling in the basics group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9834> |
| PR | #9833 | Python: Build(deps): bump zustand in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9833> |
| PR | #9680 | Python: Keep optional MCP tools available | closed | ssccinng | <https://github.com/microsoft/agent-framework/pull/9680> |
| PR | #9153 | Python: preserve custom memory topic slugs on reload | closed | Kunyanli230 | <https://github.com/microsoft/agent-framework/pull/9153> |
| PR | #9485 | Python: fix get_latest silently returning a stale checkpoint on decode failure | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/9485> |
| PR | #9840 | Build(deps): bump pyrefly from 1.3.2 to 1.4.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9840> |
| PR | #9842 | Python: Build(deps): bump pyrefly from 1.3.2 to 1.4.0 in /python in the python-type-checkers group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9842> |
| PR | #9869 | Python: share todo mutation locks across providers on one store | closed | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9869> |
| Issue | #10107 | .NET: [Bug]: UseOpenTelemetry on an agent double-counts gen_ai.client.token.usage | open | jguizarj | <https://github.com/microsoft/agent-framework/issues/10107> |
| Issue | #10097 | .NET: [Bug]: Foundry Toolbox granular require_approval object is treated as unsupported, so every tool requires approval | open | cristofima | <https://github.com/microsoft/agent-framework/issues/10097> |
| Issue | #10031 | .NET: [Bug]: OpenAI Responses hosting escapes non-ASCII characters in function call arguments as \uXXXX | closed | I-SER-I | <https://github.com/microsoft/agent-framework/issues/10031> |
| Issue | #9992 | .NET: Align HTTP client infrastructure and developer experience | closed | baywet | <https://github.com/microsoft/agent-framework/issues/9992> |
| Issue | #10104 | Python: [Bug]: Anthropic `redacted_thinking` blocks are dropped and never replayed in tool loops | open | DatabaseDylan | <https://github.com/microsoft/agent-framework/issues/10104> |
| Issue | #10094 | Python: [Bug]: Declarative If with empty then has no true-branch continuation edge | open | uragoodman | <https://github.com/microsoft/agent-framework/issues/10094> |
| Issue | #9953 | Python: [Bug]: DuckDB vector stores reject settings instead of preferring an injected connection | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9953> |
| Issue | #9964 | Python: [Bug]: Foundry embedding and memory integrations close caller-owned clients | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9964> |
| Issue | #9965 | Python: [Bug]: Mistral environment endpoint overrides injected-client service metadata | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9965> |
| Issue | #10033 | .NET: [Bug]: Declarative workflows fail or give wrong values on de-DE and fr-FR hosts | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/issues/10033> |
| Issue | #9955 | Python: [Bug]: Azure Cosmos vector stores reject settings instead of preferring injected clients | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9955> |
| Issue | #9950 | Python: [Bug]: Foundry embedding clients require endpoint settings even when SDK clients are injected | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9950> |
| Issue | #9970 | Python: [Bug]: Anthropic MCP tool result replay sends Content objects instead of text blocks | closed | uragoodman | <https://github.com/microsoft/agent-framework/issues/9970> |
| Issue | #10092 | Python: [Issue]: Clarification on ExperimentalWarning when using WorkflowFactory from agent-framework-declarative | open | TharunkumarReddy5b7 | <https://github.com/microsoft/agent-framework/issues/10092> |
| Issue | #10091 | Python: [Bug]: Local tool checks ignore the conversation split, so a tool call from an earlier turn passes later turns | open | 14H034160212 | <https://github.com/microsoft/agent-framework/issues/10091> |
| Issue | #10089 | .NET: [Bug]: GitHubCopilotAgent cannot resume a session with GitHub.Copilot.SDK >= 1.0.26 (MissingMethodException: SessionConfigBase.RemoteSession) | open | pasayazici | <https://github.com/microsoft/agent-framework/issues/10089> |
| Issue | #10004 | Python: [Bug]: Extra provider options in declarative model.options break agent.run() with OpenAI clients | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10004> |
| Issue | #9938 | Python: [Bug]: `WorkflowEvent.from_dict` fails for a `request_info` event with `None` data or a `NoneType` response | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9938> |
| Issue | #9961 | Python: [Bug]: Oracle vector stores reject settings instead of preferring an injected client | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9961> |
| Issue | #9960 | Python: [Bug]: Claude Agent reads environment configuration before using an injected client | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9960> |
| Issue | #9958 | Python: [Bug]: Postgres vector stores reject settings instead of preferring an injected client | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9958> |
| Issue | #9952 | Python: [Bug]: MongoDB vector stores reject settings instead of preferring an injected client | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9952> |
| Issue | #9951 | Python: [Bug]: FoundryEvals default model overrides FOUNDRY_MODEL | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9951> |
| Issue | #9959 | Python: [Bug]: Gemini reads auth environment settings before using an injected client | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9959> |
| Issue | #9962 | Python: [Bug]: Bedrock environment region overrides a provided boto3 session | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9962> |
| Issue | #9940 | Python: [Bug]: `BaseChatClient.to_dict` ignores `exclude` and `exclude_none` for `additional_properties` | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9940> |
| Issue | #9939 | Python: [Bug]: `Executor.output_types` raises `AttributeError` when handler discovery is deferred | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9939> |
| Issue | #10087 | Python: [Bug]: GitHubCopilotAgent streaming undercounts usage across multiple model calls | open | droideronline | <https://github.com/microsoft/agent-framework/issues/10087> |
| Issue | #10074 | Python: [Bug]: Declarative workflows cannot save or resume checkpoints with FileCheckpointStorage | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/10074> |
| Issue | #10075 | Python: [Bug]: Local CI MCP server fails to start on mcp 2.x, so MCP integration tests fall back to the external URL | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/10075> |
| Issue | #10073 | .NET: Python: [Bug]: LocalEvaluator drops numeric evaluator scores, so assert_score_at_least() passes below-threshold (and NaN) scores | open | 14H034160212 | <https://github.com/microsoft/agent-framework/issues/10073> |
| Issue | #10072 | Python: .NET: [Bug]: Magentic jumps to the final answer when the progress ledger names an unknown participant | open | compilandoideas | <https://github.com/microsoft/agent-framework/issues/10072> |
| Issue | #10071 | .NET: [Bug]: Magentic reports hitting MaxRoundCount/MaxResetCount as a normal workflow output | open | compilandoideas | <https://github.com/microsoft/agent-framework/issues/10071> |
| Issue | #10067 | .NET: Python: [Bug]: AgentResponse.text joins message texts without a separator | open | Revinand | <https://github.com/microsoft/agent-framework/issues/10067> |
| Issue | #10008 | .NET: [Bug]: .NET Responses adapter: HTTP200 in-band  rate_limit_exceeded  is exposed as  ErrorContent  rather than an exception | closed | kumarisarita5 | <https://github.com/microsoft/agent-framework/issues/10008> |
| Issue | #9914 | .NET: [Bug]: Shell="cmd" echoes commands containing quotes instead of executing them and reports exit 0 | open | ypyl | <https://github.com/microsoft/agent-framework/issues/9914> |
| Issue | #10040 | [aw] Detection Runs | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/10040> |
| Issue | #10009 | Python: [Team] Python Foundry Hosting API review follow-ups | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10009> |
| Issue | #9954 | Python: [Bug]: Azure DocumentDB injected clients do not take precedence over connection settings | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9954> |
| Issue | #9956 | Python: [Bug]: Azure AI Search injected clients do not take precedence over connection settings | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9956> |
| Issue | #9963 | Python: [Bug]: Cosmos memory provider does not preserve injected-client configuration ownership | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9963> |
| Issue | #9957 | Python: [Bug]: Qdrant injected clients do not take precedence over settings and lifecycle | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9957> |
| Issue | #9949 | Python: [Bug]: Azure OpenAI environment model overrides an injected client's deployment | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9949> |
| Issue | #10002 | Python: [Bug]: RedisContextProvider fails the whole agent run when a message contains `?`, `\|` or a backtick | open | LUCKYREDDY31 | <https://github.com/microsoft/agent-framework/issues/10002> |
| Issue | #9966 | Python: [Bug]: RedisHistoryProvider rejects connection settings instead of preferring an injected client | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9966> |
| Issue | #9896 | Python: [Bug]: configure_otel_providers duplicates log export when the app has a root OTel LoggingHandler | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/9896> |
| Issue | #10010 | Python: [Team][Decision] Separate agent and workflow hosts | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10010> |
| Issue | #10030 | Python: [Team][Investigation] Verify AgentServer GA compatibility and steering fix | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10030> |
| Issue | #10029 | Python: [Team][Investigation] Explore native workflow contracts for Invocations | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10029> |
| Issue | #10025 | Python: [Team][Investigation] Check Invocations adoption and customer scenarios | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10025> |
| Issue | #10024 | Python: [Team][Investigation] Confirm multi-agent hosting expectations with Foundry | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10024> |
| Issue | #10023 | Python: [Team][Investigation] Review prepare_options and align options work | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10023> |
| Issue | #10020 | Python: [Team][Investigation] Compare OAuth consent function-call behavior with .NET | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10020> |
| Issue | #10017 | Python: [Team][Investigation] Trace hosting and provider background execution | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10017> |
| Issue | #10019 | Python: [Team][Investigation] Evaluate storing function approvals in AgentSession | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10019> |
| Issue | #10012 | Python: [Team][Investigation] Explain ResponsesServerOptions and default_model | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10012> |
| Issue | #10026 | Python: [Team][Decision] Set the support status of Invocations hosting | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10026> |
| Issue | #10028 | Python: [Team][Decision] Define support boundary for Telegram and channel integrations | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10028> |
| Issue | #10027 | Python: [Team][vNext Action] Turn MCPTool into a context provider with skills loading | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10027> |
| Issue | #10022 | Python: [Team][Decision] Retain restrict or remove provider background support | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10022> |
| Issue | #10021 | Python: [Team][Action] Improve prepare_options documentation and examples | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10021> |
| Issue | #10015 | Python: [Team][Decision] Align history and background source terminology | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10015> |
| Issue | #10016 | Python: [Team][Action] Circulate cross-host naming and type candidates | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10016> |
| Issue | #10018 | Python: [Team][Action] Remove deprecated hosting constructor store alias | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10018> |
| Issue | #10014 | Python: [Team][Decision] Rename parse_response and align parser terminology | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10014> |
| Issue | #10011 | Python: [Team][Action] Document Responses route prefix and AgentServer references | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10011> |
| Issue | #10013 | Python: [Team][Action] Clarify workflow-factory documentation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10013> |
| Issue | #9980 | Python: [Bug]: ResponsesHostServer duplicates function-call arguments by appending replacement updates | open | cecheta | <https://github.com/microsoft/agent-framework/issues/9980> |
| Issue | #9997 | Python: [Bug]: An unreadable memory state file fails every later turn | open | he-yufeng | <https://github.com/microsoft/agent-framework/issues/9997> |
| Issue | #9923 | Python: [Feature]:  Make timeout configurable on framework OpenAI clients (chat, chat completion, embedding) | open | IshamMohamed | <https://github.com/microsoft/agent-framework/issues/9923> |
| Issue | #9946 | Dependency validation failed: redis (agent-framework-redis) | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/9946> |
| Issue | #9921 | Python: [Bug]: Failed OpenAI Responses return empty success instead of surfacing provider errors | open | sumedh-aerram | <https://github.com/microsoft/agent-framework/issues/9921> |
| Issue | #9988 | Python: [Bug]: BedrockChatClient and ClaudeAgent report input_token_count without cached prompt tokens | open | lalith0407 | <https://github.com/microsoft/agent-framework/issues/9988> |
| Issue | #9978 | [Issue]: Cannot authenticate with AnthropicFoundryClient and ApiKey | open | ddobric | <https://github.com/microsoft/agent-framework/issues/9978> |
| Issue | #9868 | Python: [Bug]: todo mutations race when two providers share one todo store | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9868> |
| Issue | #9885 | Python: [Bug]: FileSessionStore cannot quarantine corrupt snapshots near Windows MAX_PATH | open | Aaravkhanal | <https://github.com/microsoft/agent-framework/issues/9885> |
| Issue | #9886 | Python: [Bug]: ToolResultCompactionStrategy drops hosted tool results during compaction | open | uragoodman | <https://github.com/microsoft/agent-framework/issues/9886> |
| Issue | #9903 | Python: [Bug]: FoundryToolbox invocation-time OAuth consent is returned as a generic function error | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/9903> |
| Issue | #9904 | Python: [Bug]: auto_retry.py sample never retries a 429: the client raises ChatClientException, not RateLimitError | open | sohom-cs | <https://github.com/microsoft/agent-framework/issues/9904> |
| Issue | #9912 | Python: [Bug]: GeminiChatClient leaves thinking tokens out of output_token_count (and tool-use prompt tokens out of input_token_count) | open | lalith0407 | <https://github.com/microsoft/agent-framework/issues/9912> |
| Issue | #9928 | Python: Gemini chat client silently drops all but the first candidate when candidate_count > 1 | open | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/9928> |
| Issue | #9974 | Python: [Bug]: RedisHistoryProvider.get_messages aborts on a single malformed entry | open | lisry-1 | <https://github.com/microsoft/agent-framework/issues/9974> |
| Issue | #9976 | Python: [Bug]: Mem0ContextProvider forwards unset user_id/agent_id as None to OSS client | open | lisry-1 | <https://github.com/microsoft/agent-framework/issues/9976> |
| Issue | #9975 | Python: [Bug]: CosmosHistoryProvider generates an orphan GUID for empty session_id | open | lisry-1 | <https://github.com/microsoft/agent-framework/issues/9975> |
| Issue | #9941 | Python: [Bug]: `get_latest` raises `TypeError` when a storage holds naive and timezone-aware checkpoint timestamps | open | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9941> |
| Issue | #9910 | .NET: [Bug]: Declarative checkpoint export drops single-column table names and row wrappers | open | crloz | <https://github.com/microsoft/agent-framework/issues/9910> |
| Issue | #9917 | .NET: [Bug]: Non-UTF-8 file content is decoded with U+FFFD and written back, so an unrelated edit destroys the original bytes | open | ypyl | <https://github.com/microsoft/agent-framework/issues/9917> |
| Issue | #9930 | Python: Foundry reasoning replay data attaches to the wrong message for multi-message responses | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/9930> |
| Issue | #9927 | .NET: Python: [Bug]: WorkflowViz.to_mermaid() output fails to parse when an executor ID is a Mermaid keyword such as "end" | open | hyeonsang010716 | <https://github.com/microsoft/agent-framework/issues/9927> |
| Issue | #9945 | Dependency validation failed: mistralai (agent-framework-mistral) | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/9945> |
| Issue | #9918 | .NET: [Issue]: Function invocation middleware receives tool results as JsonElement, which the docs do not mention | open | ypyl | <https://github.com/microsoft/agent-framework/issues/9918> |
| Issue | #9916 | .NET: [Feature]: Bound file tool output (MaxBytes/MaxLines) so hosts do not truncate tool results themselves | open | ypyl | <https://github.com/microsoft/agent-framework/issues/9916> |
| Issue | #9922 | Python: .NET: [Bug]: Failed supersteps leak pending state and prevent checkpoint restore | open | sumedh-aerram | <https://github.com/microsoft/agent-framework/issues/9922> |
| Issue | #9915 | .NET: [Bug]: ShellArgv cannot launch a custom shell: the caller's prefix is prepended before the generated command flag | open | ypyl | <https://github.com/microsoft/agent-framework/issues/9915> |
| Issue | #9913 | Python: .NET: [Bug]: Shell="cmd" echoes commands containing quotes instead of executing them and reports exit 0 | closed | ypyl | <https://github.com/microsoft/agent-framework/issues/9913> |
| Issue | #9884 | .NET: [Issue]:MCP content + structuredContent duplicate model input without a selection policy | open | Code-by-AB | <https://github.com/microsoft/agent-framework/issues/9884> |
| Issue | #9871 | Python: [Bug]: file memory description sidecars collide for names differing by extension | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9871> |
| Issue | #9866 | Python: [Bug]: a declarative Model component cannot be loaded through agent_schema_dispatch | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9866> |
| Issue | #9864 | Python: [Bug]: declarative MCP approvalMode in specify mode fails to load | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9864> |
| Issue | #9862 | Python: [Bug]: DevUI item ids returned by the items list cannot be fetched by id | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9862> |
| Issue | #9860 | Python: [Bug]: DevUI conversation metadata accepts non-map values and then the conversation list fails | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9860> |
| Issue | #9891 | .NET: [Bug]: AdditionalProperties set in a DelegatingAIAgent are not propagated to the client through AG-UI | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/9891> |
| Issue | #9889 | .NET: [Feature]: Port the FIDES security model and enforcement | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9889> |
| Issue | #9888 | Python: [Feature]: Define the FIDES stable API and promotion criteria | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9888> |
| Issue | #9855 | .NET: [Bug]: AsAIAgent workflows duplicate sensitive content in generic telemetry tags | open | tokaplan | <https://github.com/microsoft/agent-framework/issues/9855> |
| Issue | #9656 | .NET: automatic rejection of unanswered approvals tells the model the call "must not be retried" | closed | tdoman | <https://github.com/microsoft/agent-framework/issues/9656> |
| Issue | #8503 | .NET: [Bug]: Rejected tool approvals are re-requested unless CreateResponse(false, reason) provides a reason (using GPT-5.6-Terra) | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/8503> |
| Issue | #9482 | Python: [Bug]: Stateless LocalShellTool timeout hangs on background jobs | closed | digit50 | <https://github.com/microsoft/agent-framework/issues/9482> |
| Issue | #9218 | Python: [Bug]: Automatic memory consolidation clears sessions still extracting memories | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9218> |
| Issue | #9709 | Python: [Bug]: DevUI rejects every request addressed to the IPv6 loopback ([::1] Host header) | closed | alphasafal | <https://github.com/microsoft/agent-framework/issues/9709> |
| Issue | #9321 | Python: [Bug]: Foundry Local integration is incompatible with current SDK versions | closed | bmehta001 | <https://github.com/microsoft/agent-framework/issues/9321> |
| Issue | #3785 | Python: Support recursive checkpointing for nested sub-workflows | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/3785> |
| Issue | #4203 | Precision Decisioning & Agentic Trust: Cryptographic proof of authorization for agent workflows | closed | jmcgraw434 | <https://github.com/microsoft/agent-framework/issues/4203> |
| Issue | #7303 | Python: Remove execution context support in sub workflow checkpoints | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7303> |
| Issue | #9529 | Python: foundry-hosting drops request `metadata` from the stored response — `_create_response_event_stream` never passes `request` to `ResponseEventStream` | closed | TaherehFarrokhiWTW | <https://github.com/microsoft/agent-framework/issues/9529> |
| Issue | #9843 | Python: [Bug]: Schema-supplied FunctionTool rejects a whole-number float for an "integer" parameter | closed | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/9843> |
| Issue | #9784 | Python: [Bug]: FoundryChatClient: hosted tools from get_bing_custom_search_tool() fail JSON serialization (nested SDK models not converted) | closed | Ava-Cheng | <https://github.com/microsoft/agent-framework/issues/9784> |
| Issue | #8961 | Python: [Feature]: Python: Sample: a hard dollar budget for one workflow run with concurrent agents | closed | domondi1 | <https://github.com/microsoft/agent-framework/issues/8961> |
| Issue | #9373 | Python: Drop Python 3.10 support by October 31, 2026 | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9373> |
| Issue | #9816 | Python: [Feature]: Python: document Future AGI in the observability backend examples | closed | nik13 | <https://github.com/microsoft/agent-framework/issues/9816> |
| Issue | #9829 | .NET: AgentModeProvider keeps a restored mode that is no longer configured | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/issues/9829> |
| Issue | #9742 | Python: [Bug]: native Windows --files paths skip changed-package tasks | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9742> |
| Issue | #9471 | Python: [Bug]: MiddlewareTermination(result=...) is dropped by agent and chat middleware; Agent.run crashes for chat middleware | closed | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9471> |
| Issue | #8977 | Python: [Bug]: AnthropicClient drops citations in streaming mode (`citations_delta` ignored) | closed | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8977> |
| Issue | #9808 | Python: [Bug]: AnthropicClient reports input_token_count (and gen_ai.usage.input_tokens) without cached prompt tokens | closed | lalith0407 | <https://github.com/microsoft/agent-framework/issues/9808> |
| Issue | #9794 | Python: [Bug]: BedrockChatClient silently drops parallel tool results when results arrive as separate tool messages | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/9794> |
| Issue | #9676 | Python: [Bug]: Ollama streaming reports finish_reason "stop" when the turn is a tool call | closed | r14dd | <https://github.com/microsoft/agent-framework/issues/9676> |
| Issue | #9488 | Python: [Bug]: FunctionTool.parse_result and _make_dumpable do not handle tuples (corrupts rich Content and Pydantic models) | closed | Kaap10 | <https://github.com/microsoft/agent-framework/issues/9488> |
| Issue | #9160 | Python: [Bug]: evaluate_agent() omits ContextProvider/SkillsProvider tools from tool_definitions, breaking tool_selection/tool_input_accuracy | closed | cristofima | <https://github.com/microsoft/agent-framework/issues/9160> |
| Issue | #9653 | Python: Percent-encoded base64 data URIs fail media type detection | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9653> |
| Issue | #9562 | Python: [Bug]: Function call arguments that are not a JSON object reach the tool as {"raw": ...} instead of failing validation | closed | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/9562> |
| Issue | #6626 | Improve native GenAI semantic convention coverage | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6626> |
| Issue | #9251 | Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools | closed | suhasagg | <https://github.com/microsoft/agent-framework/issues/9251> |
| Issue | #9647 | .NET: [Bug]: RAG Step02 sample fails with 404 on the documentation pages | closed | Laurianti | <https://github.com/microsoft/agent-framework/issues/9647> |
| Issue | #9438 | Python: [Bug]: InMemoryCollection silently misses native scalar filters after record serialization | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9438> |
