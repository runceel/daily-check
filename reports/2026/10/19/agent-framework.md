# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 26 |
| オープン中の新規 PR     | 34 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 37 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | dependabot[bot], baywet, BlueRaddish, ManoharPaturi, jpalvarezl, eavanvalkenburg |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9461](https://github.com/microsoft/agent-framework/pull/9461) — [BREAKING] Python: Preserve Redis context scope identity （PR / open / jpalvarezl）
  Redis のコンテキストプロバイダー利用者は、変更提案がマージされた際にスコープ識別子の扱いと既存データとの互換性を確認してください。
- **⚠ 破壊的変更** [#9453](https://github.com/microsoft/agent-framework/pull/9453) — .NET/Python: [BREAKING] Clarify docker params usage and rename param （PR / merged / westey-m）
  Docker shell executor の利用者は、パラメーター名の変更に合わせて .NET/Python の呼び出しコードと設定を更新してください。
- **⚠ 破壊的変更** [#9452](https://github.com/microsoft/agent-framework/issues/9452) — Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext （Issue / open / jpalvarezl）
  Python で旧 MCP 互換 API を使う利用者は、vNext での削除に備えて現在の MCP client/API への移行計画を確認してください。
- **⚠ 破壊的変更** [#9413](https://github.com/microsoft/agent-framework/pull/9413) — [BREAKING] Python: Require explicit AG-UI authorization scope （PR / merged / eavanvalkenburg）
  Python AG-UI endpoint の利用者は、登録時に authorization scope を明示し、認証設定とテストを更新してください。
- **⚠ 破壊的変更** [#9322](https://github.com/microsoft/agent-framework/pull/9322) — Python: [BREAKING] Migrate Foundry Local integration to SDK 2.1 （PR / open / bmehta001）
  Foundry Local 連携利用者は未マージの提案である点に留意し、マージ時に SDK 2.1 への依存・API 変更を確認してください。
- **⚠ セキュリティ** [#9492](https://github.com/microsoft/agent-framework/issues/9492) — Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines （Issue / open / YashvantHange）
  FIDES を利用する開発者は、報告された識別子の不整合を確認し、ツール認可・隔離判断が意図した identity marker に基づくかレビューしてください（Issue は調査中）。

## このリポジトリの要点

.NET / Python 両方で Docker shell executor のパラメーター整理が入り、Python AG-UI では認可 scope の明示が必須になる破壊的変更がマージされました。
A2A のメッセージ検証・サーバー能力、宣言型 workflow の式メタデータ保持、AG-UI SSE の JSON 出力も修正され、統合・ストリーミングの信頼性を改善しています。
一方、Redis scope identity の変更や MCP 互換 API の削除案、FIDES のセキュリティ懸念は未解決のため、利用者は進捗と互換性を継続確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#9453](https://github.com/microsoft/agent-framework/pull/9453) — .NET/Python: [BREAKING] Clarify docker params usage and rename param

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `.NET`
- 変更行数: +196 / -400
- マージ日時 (UTC): `2026-10-16 14:02:05`

**変更概要**

Docker shell executor のパラメーターの意味を明確化し、紛らわしいパラメーター名を整理する変更です。
.NET 側の `DockerShellExecutor` / options と Python の `_docker.py`、テスト、README を更新し、Docker shell の利用設定を両言語で揃えています。
対象 API を利用するアプリケーションとサンプルは呼び出しコードの見直しが必要です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/DockerShellExecutor.cs` | 33 | 13 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/DockerShellExecutorOptions.cs` | 10 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/ShellExecutor.cs` | 4 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Tools.Shell.UnitTests/DockerShellExecutorTests.cs` | 59 | 0 |
| `python/packages/tools/README.md` | 13 | 0 |
| `python/packages/tools/agent_framework_tools/shell/_docker.py` | 19 | 169 |
| `python/packages/tools/tests/test_docker_shell_tool.py` | 58 | 214 |

</details>

<details><summary>コミット (3 件)</summary>

- `fdc245c` Clarify docker params usage
- `318cfc3` Fix build errors
- `7e667fc` Merge branch 'main' into docker-switch-to-unsafe-param

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: Docker shell のパラメーター名が変更され、Python 実装では旧引数の扱いも整理されています。変更ファイルには `DockerShellExecutorOptions` と Python `_docker.py` が含まれますが、追加の新規抽象は確認できません。

**既存利用者への影響**

Docker shell executor を呼び出す .NET / Python 利用者は、新しいパラメーター名に合わせてコードと設定を更新してください。README とテストを参照し、旧名を使う呼び出しが残っていないか確認が必要です。

### [#9413](https://github.com/microsoft/agent-framework/pull/9413) — [BREAKING] Python: Require explicit AG-UI authorization scope

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +542 / -133
- マージ日時 (UTC): `2026-10-16 03:32:36`

**変更概要**

AG-UI endpoint の認可設定で scope が暗黙に決まることで生じる曖昧さをなくし、利用者に明示指定を求めます。
Python の endpoint 登録・scope 解決処理と README、サンプル、テストを更新し、単一ユーザー向けの安定した scope も説明しています。
AG-UI を組み込む Python サーバーと認証構成に影響します。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 4 | 0 |
| `python/packages/ag-ui/AGENTS.md` | 9 | 3 |
| `python/packages/ag-ui/README.md` | 66 | 30 |
| `python/packages/ag-ui/agent_framework_ag_ui/__init__.py` | 2 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_endpoint.py` | 95 | 24 |
| `python/packages/ag-ui/agent_framework_ag_ui_examples/README.md` | 39 | 12 |
| `python/packages/ag-ui/agent_framework_ag_ui_examples/server/api/backend_tool_rendering.py` | 3 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui_examples/server/main.py` | 12 | 1 |
| `python/packages/ag-ui/getting_started/README.md` | 4 | 2 |
| `python/packages/ag-ui/getting_started/server.py` | 10 | 7 |
| `python/packages/ag-ui/tests/ag_ui/conftest.py` | 1 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_endpoint.py` | 279 | 49 |
| `python/packages/ag-ui/tests/ag_ui/test_handoff_replay.py` | 7 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_http_round_trip.py` | 2 | 2 |
| `python/packages/ag-ui/tests/ag_ui/test_multi_turn.py` | 1 | 1 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `0594b26` [BREAKING] Python: Require explicit AG-UI authorization scope
- `633cdfc` Python: Complete AG-UI authorization scope migration
- `9b7e6f1` Python: Harden AG-UI registration scope resolution
- `286a28e` Python: Document stable single-user AG-UI scopes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: AG-UI endpoint 登録で authorization scope の明示指定を要求し、scope 解決を強化しています。`_endpoint.py` の登録処理と公開 export が変更され、固定の単一ユーザー scope に関するガイダンスも追加されています。

**既存利用者への影響**

既存の Python AG-UI endpoint 登録で scope を省略している場合は、適切な authorization scope を渡すようコードを変更してください。認証・ユーザー分離のテストも更新が必要です。

### [#9496](https://github.com/microsoft/agent-framework/pull/9496) — .NET: Bump the aspire group with 1 update

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `.NET` `dependencies`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-10-18 11:29:27`

**変更概要**

Dependabot による .NET の Aspire 依存グループ更新です。
変更は `dotnet/Directory.Packages.props` の 1 行に限られ、コミットにも個別の更新内容は示されていません。
Agent Framework の .NET 利用者は依存解決と CI の結果を確認できますが、機能変更を示すものではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `a3e72ed` Bump the aspire group with 1 update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルは Aspire の依存バージョン定義のみです。公開 API シグネチャや新規抽象の変更は確認できず、依存更新に伴う変更です。

**既存利用者への影響**

通常はアプリケーションコードの移行は不要です。依存関係の復元後にビルドとテストを実行し、バージョン更新による影響がないことを確認してください。

### [#9465](https://github.com/microsoft/agent-framework/pull/9465) — .NET: Fix A2A message validation and sample server capabilities

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +372 / -2
- マージ日時 (UTC): `2026-10-16 19:43:03`

**変更概要**

A2A サーバーから送るメッセージの検証と、サンプルサーバーが公開する capabilities の不整合を修正します。
`A2AAgent` と server registration options を更新し、A2A agent / endpoint のテストを追加して境界条件を確認しています。
A2A hosting を利用する .NET アプリとサンプルに関係する修正です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/05-end-to-end/A2AClientServer/A2AServer/Program.cs` | 12 | 2 |
| `dotnet/samples/05-end-to-end/A2AClientServer/A2AServer/README.md` | 30 | 0 |
| `dotnet/src/Microsoft.Agents.AI.A2A/A2AAgent.cs` | 7 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AServerRegistrationOptions.cs` | 3 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.A2A.UnitTests/A2AAgentTests.cs` | 96 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AEndpointRouteBuilderExtensionsTests.cs` | 142 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AServerServiceCollectionExtensionsTests.cs` | 82 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `fb4b9a0` fix(a2a): validate outgoing messages and align server capabilities
- `b971ac7` fix(a2a): use local function in server options test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`A2AAgent` の送信メッセージ検証と `A2AServerRegistrationOptions` のサーバー capability 設定が変更されています。公開 API の削除や破壊的変更を示す情報はなく、主眼は検証・設定動作の修正です。

**既存利用者への影響**

通常の移行は不要です。A2A を使う .NET 利用者は、送信メッセージが検証条件を満たすことと、登録 options で公開する capabilities が期待どおりであることを確認してください。

### [#9457](https://github.com/microsoft/agent-framework/pull/9457) — .NET: fix(workflows): preserve expression result metadata

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +214 / -17
- マージ日時 (UTC): `2026-10-16 18:49:32`

**変更概要**

宣言型 workflow の式評価で、評価結果に付随するメタデータが後続処理で失われる問題を修正します。
式エンジンの結果処理と README を更新し、条件分岐・変数設定を含むテストで結果の一貫性を確認しています。
Power Fx 式を使う .NET declarative workflow に影響します。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/PowerFx/WorkflowExpressionEngine.cs` | 36 | 12 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/README.md` | 8 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/ConditionGroupExecutorTest.cs` | 23 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/SetVariableExecutorTest.cs` | 34 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/PowerFx/WorkflowExpressionEngineTests.cs` | 113 | 5 |

</details>

<details><summary>コミット (3 件)</summary>

- `63a762f` fix(workflows): preserve expression result metadata
- `8abecb8` Merge branch 'main' into fix/expression-result-consistency
- `4aab3e8` fix(workflows): reconcile expression error handling after merge

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`WorkflowExpressionEngine` 内で式結果・エラー処理を調整しています。変更ファイルから公開 API シグネチャ変更や新規抽象は確認できず、式結果メタデータの内部処理を保つ修正です。

**既存利用者への影響**

API 移行は不要です。式の結果メタデータを前提とする workflow 利用者は、更新後に条件・変数設定の評価結果を確認してください。

### [#7920](https://github.com/microsoft/agent-framework/pull/7920) — .NET: Fix AG-UI SSE events written with explicit nulls

- 作者: atty57 / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +26 / -6
- マージ日時 (UTC): `2026-10-16 16:13:12`

**変更概要**

AG-UI の Server-Sent Events を JSON 化する際、明示的な `null` 値が欠落または異なる形で出力される問題を修正します。
ASP.NET Core の AG-UI JSON options の設定順序を調整し、null を含む出力をテストで検証しています。
AG-UI SSE を利用する .NET クライアントとのイベント相互運用性に関わります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore/ConfigureAGUIJsonOptions.cs` | 13 | 6 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.UnitTests/ConfigureAGUIJsonOptionsTests.cs` | 13 | 0 |

</details>

<details><summary>コミット (13 件)</summary>

- `8f8eb94` .NET: Fix AG-UI SSE events written with explicit nulls (#7919)
- `a98775d` Merge branch 'main' into fix/7919-agui-json-resolver-order
- `f3ab225` Merge branch 'main' into fix/7919-agui-json-resolver-order
- `bbc7abd` Merge branch 'main' into fix/7919-agui-json-resolver-order
- `a52938b` Merge branch 'main' into fix/7919-agui-json-resolver-order
- `0682708` Merge branch 'main' into fix/7919-agui-json-resolver-order
- `b37b0b3` Merge branch 'main' into fix/7919-agui-json-resolver-order
- `e259ee5` Merge branch 'main' into fix/7919-agui-json-resolver-order
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ConfigureAGUIJsonOptions` の JSON serializer 設定を変更し、明示的な null を保持するシリアライズ挙動を修正しています。公開 API の変更は確認できません。

**既存利用者への影響**

通常の移行は不要です。イベント payload の `null` の有無に依存する利用者は、アップグレード後に SSE の JSON payload が期待する形式であることを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9456 | .NET: fix(dotnet): align expression failure diagnostics | baywet | <https://github.com/microsoft/agent-framework/pull/9456> |
| #9237 | Python: Document MCP v2 client lifecycle and update samples | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9237> |
| #9432 | .NET: Deduplicate fan-out targets so each target runs once | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/9432> |
| #9455 | .NET: chore: upgrades messagepack to a safe version to unblock CI | baywet | <https://github.com/microsoft/agent-framework/pull/9455> |
| #9451 | Python: Isolate MCP lifecycle task context | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9451> |
| #9447 | Python: docs: exclude standard MCP servers from community catalog | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9447> |
| #9443 | Python: Correct Cosmos memory guide state scoping | ktz03 | <https://github.com/microsoft/agent-framework/pull/9443> |
| #9433 | Python: Samples: terminate only on high/critical matches in ATR validation middleware | eeee2345 | <https://github.com/microsoft/agent-framework/pull/9433> |
| #9349 | Python: fix(bedrock): resolve the BedrockEmbeddingClient region like the chat client | shanto462 | <https://github.com/microsoft/agent-framework/pull/9349> |
| #9333 | Python: Make tool-normalization documentation examples self-contained | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9333> |
| #9332 | Python: Use the public URI constructor in the Message example | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9332> |
| #9428 | Python: fix(declarative): honor the variable field in SetValue | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9428> |
| #9424 | Python: Bump opentelemetry-api from 1.45.0 to 1.45.1 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9424> |
| #9423 | Python: Bump orjson from 3.12.0 to 3.13.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9423> |
| #9422 | Python: Bump opentelemetry-sdk from 1.45.0 to 1.45.1 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9422> |
| #9421 | Python: Bump pydantic from 2.13.5 to 2.14.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9421> |
| #9420 | Python: Bump the agent-framework group in /python/packages/lab with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9420> |
| #9416 | Python: Bump @radix-ui/react-checkbox in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9416> |
| #9341 | Python: fix(lab-tau2): check the over-max warning before the half-of-max warning | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9341> |
| #9339 | Python: fix(ag-ui): keep repeated single-chunk text deltas | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9339> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9515 | Python: fix(core): refuse SecretString at checkpoint encode with a precise error | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9515> |
| PR | #9513 | Python: Keep pending Anthropic server tool calls as server_tool_use | open | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9513> |
| PR | #9512 | Python: reject misaligned base64 embedding payloads with a descriptive error | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9512> |
| PR | #9510 | Python: close the RedisContextProvider index connection when the provider owns it | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9510> |
| PR | #9507 | Python: answer unsupported DevUI conversation items with a client error | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9507> |
| PR | #9502 | Python: coerce Magentic max round count below one up to one | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9502> |
| PR | #9499 | Python: merge both approval lists in get_mcp_tool | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9499> |
| PR | #9508 | chore(deps): bump astral-sh/setup-uv in / | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9508> |
| PR | #9505 | chore(deps): bump github/codeql-action/analyze in / | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9505> |
| PR | #9504 | chore(deps): bump github/codeql-action/autobuild in / | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9504> |
| PR | #9503 | chore(deps): bump github/codeql-action/init in / | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9503> |
| PR | #9501 | chore(deps): bump the artifact-actions group across 1 directory with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9501> |
| PR | #9497 | Python: Add Tracekit to the Python community projects | open | LoopGlitch26 | <https://github.com/microsoft/agent-framework/pull/9497> |
| PR | #9467 | Python: Make Content base64 documentation examples runnable | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9467> |
| PR | #9475 | Python: Keep a dropped run's finalizer from discarding state writes | open | digit50 | <https://github.com/microsoft/agent-framework/pull/9475> |
| PR | #9477 | Python: fix(core): keep a dropped run's late finalizer from discarding the next run's state writes | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9477> |
| PR | #9476 | Python: Pass stream errors to nested streams when closing them | open | digit50 | <https://github.com/microsoft/agent-framework/pull/9476> |
| PR | #9491 | Python: Set the assistant role on streamed Gemini updates | open | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9491> |
| PR | #9485 | Python: fix get_latest silently returning a stale checkpoint on decode failure | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/9485> |
| PR | #9486 | docs: fix stale experimental-ext-skills links in ADR 0029 | open | kun654 | <https://github.com/microsoft/agent-framework/pull/9486> |
| PR | #9483 | Python: Kill the shell process group on stateless shell timeout | open | digit50 | <https://github.com/microsoft/agent-framework/pull/9483> |
| PR | #9466 | Python: fix(core): reject checkpoint IDs that collide by letter case on save | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9466> |
| PR | #9469 | Python: Fix stateless shell tools inheriting host stdin | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/9469> |
| PR | #9472 | Python: Recommend include_detailed_errors in the tool-failure warning only when it is disabled | open | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9472> |
| PR | #9462 | Python: DevUI audio input and response playback | open | fedeoliv | <https://github.com/microsoft/agent-framework/pull/9462> |
| PR | #9464 | .NET: Add pagination to MCP-listed skill discovery | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9464> |
| PR | #9461 | [BREAKING] Python: Preserve Redis context scope identity | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9461> |
| PR | #9460 | Python: Sanitize unexpected streaming response failures | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9460> |
| PR | #9459 | Python: Decode Ollama inline image data before serialization | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9459> |
| PR | #9446 | Python: Align Redis context sample guide with current APIs | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9446> |
| PR | #9448 | Python: Bump mcp from 1.29.1 to 1.30.0 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9448> |
| PR | #9437 | Python: Make response-to-updates examples self-contained | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9437> |
| PR | #9445 | Python: scope FIDES quarantine clients to their owning config | open | mhatipog | <https://github.com/microsoft/agent-framework/pull/9445> |
| PR | #9442 | Python: preserve background execution identity across completion waits | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/9442> |
| PR | #9408 | Python: .NET/Python: Add Cohesivity to the community projects | closed | shouryamaanjain | <https://github.com/microsoft/agent-framework/pull/9408> |
| Issue | #9517 | Python: [Bug]: An answered `request_info` is asked again under a new `auto::` id when a sibling `@step` was running while it paused | open | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9517> |
| Issue | #9516 | Python: [Bug]: Functional workflow raises a bare `CancelledError` when a step in a nested `asyncio.gather` starts after a sibling branch pauses for `request_info` | open | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9516> |
| Issue | #9514 | Python: [Bug]: SecretString cannot be pickled, so credential-bearing workflow checkpoints cannot be saved or restored | open | Rishidar-lab | <https://github.com/microsoft/agent-framework/issues/9514> |
| Issue | #9511 | Python: malformed base64 embedding payload raises a bare struct error with no context | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9511> |
| Issue | #9509 | Python: RedisContextProvider never closes the index connection it creates | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9509> |
| Issue | #9506 | Python: DevUI returns 404 for unsupported conversation item content on an existing conversation | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9506> |
| Issue | #9500 | Python: Magentic max_round_count below 1 terminates the workflow before any round instead of being coerced to 1 | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9500> |
| Issue | #9498 | Python: get_mcp_tool silently drops the always approval list when both approval lists are supplied | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9498> |
| Issue | #9480 | Python: [Bug]: Anthropic response stream is not closed on early tool-call validation failure | open | coding-totoro | <https://github.com/microsoft/agent-framework/issues/9480> |
| Issue | #9494 | .NET: A2A: detached runs break when claims-based agent isolation is enabled; the in-tree fix is never called | open | YashvantHange | <https://github.com/microsoft/agent-framework/issues/9494> |
| Issue | #9493 | .NET: Mem0: `ClearMemoryAsync` has no scope guard, and the scope validator never sees restored state | open | YashvantHange | <https://github.com/microsoft/agent-framework/issues/9493> |
| Issue | #9495 | .NET: Three source comments that are wrong, plus the dead code one of them guards | open | YashvantHange | <https://github.com/microsoft/agent-framework/issues/9495> |
| Issue | #9492 | Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines | open | YashvantHange | <https://github.com/microsoft/agent-framework/issues/9492> |
| Issue | #9490 | Python: [Bug]: Gemini streaming loses the final answer after a tool call | open | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9490> |
| Issue | #9489 | Python: [Feature]: Support Microsoft-Decision-1 (Microsoft Foundry) through the TypeSafe connector | open | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/9489> |
| Issue | #9488 | Python: [Bug]: FunctionTool.parse_result and _make_dumpable do not handle tuples (corrupts rich Content and Pydantic models) | open | Kaap10 | <https://github.com/microsoft/agent-framework/issues/9488> |
| Issue | #9470 | Python: Python sample: give a delegated sub-agent only the authority its task needs (FunctionMiddleware) | open | d8joseph | <https://github.com/microsoft/agent-framework/issues/9470> |
| Issue | #9487 | .NET: Python: [Bug]: Declarative SetTextVariable ignores `value` and does not fill `{Local.x}` templates | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9487> |
| Issue | #9481 | .NET: Python: [Bug]: A2AExecutor forgets earlier turns of the same context_id | open | digit50 | <https://github.com/microsoft/agent-framework/issues/9481> |
| Issue | #9482 | Python: [Bug]: Stateless LocalShellTool timeout hangs on background jobs | open | digit50 | <https://github.com/microsoft/agent-framework/issues/9482> |
| Issue | #9479 | Python: [Bug]: Anthropic pause_turn is mapped to stop and ends hosted-search work prematurely | open | coding-totoro | <https://github.com/microsoft/agent-framework/issues/9479> |
| Issue | #9478 | Python: [Bug]: Anthropic parallel hosted web search and local tool calls lose server_tool_use identity | open | coding-totoro | <https://github.com/microsoft/agent-framework/issues/9478> |
| Issue | #9474 | Python: Failed or cancelled streaming run with agent middleware still calls after_run | open | digit50 | <https://github.com/microsoft/agent-framework/issues/9474> |
| Issue | #9473 | Python: Next workflow run loses its state writes when a dropped run is finalized late | open | digit50 | <https://github.com/microsoft/agent-framework/issues/9473> |
| Issue | #9471 | Python: [Bug]: MiddlewareTermination(result=...) is dropped by agent and chat middleware; Agent.run crashes for chat middleware | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9471> |
| Issue | #9440 | Python: [Bug]: Explicitly allowed ZoneInfo dates cannot be saved in file checkpoints | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9440> |
| Issue | #9468 | Python: [Bug]: Stateless shell tools inherit the host process's stdin | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/9468> |
| Issue | #9463 | Python: [Feature]: Allow FoundryEvals/evaluate_agent() to submit a run under an existing evaluation ID | open | cristofima | <https://github.com/microsoft/agent-framework/issues/9463> |
| Issue | #9458 | [Issue]: Keep MAF samples on https://github.com/microsoft-foundry/foundry-samples in sync with samples in this repo | open | dargilco | <https://github.com/microsoft/agent-framework/issues/9458> |
| Issue | #9452 | Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext | open | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9452> |
| Issue | #9454 | Python: [Feature]: Expose the tool call's id on FunctionInvocationContext on every execution path | open | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/9454> |
| Issue | #9450 | [Feature]: Let edge conditions read workflow state set by earlier executors | open | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/9450> |
| Issue | #9449 | Python: [Bug]: Workflow build rejects a list[T] output sent to a Sequence[T] handler | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9449> |
| Issue | #9444 | Python: [Bug]: File checkpoints overwrite case-distinct explicit IDs on Windows | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9444> |
| Issue | #9441 | Python: Background completion waiter can finalize a newer continuation under the same task ID | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/9441> |
| Issue | #9439 | Python: [Bug]: Tool-failure warning recommends  include_detailed_errors=True  even when already enabled | open | demoray | <https://github.com/microsoft/agent-framework/issues/9439> |
| Issue | #9438 | Python: [Bug]: InMemoryCollection silently misses native scalar filters after record serialization | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9438> |
| Issue | #8962 | .NET: [Bug]: AddAGUIServer's JSON setup writes null optional fields (rejected by @ag-ui/client) and cannot serialize interrupts | closed | petarnenov | <https://github.com/microsoft/agent-framework/issues/8962> |
| Issue | #7919 | .NET: [Bug]: AddAGUIServer writes explicit nulls on the AG-UI wire with AGUI 0.0.6 (rejected by @ag-ui/client) | closed | LoicDagnas | <https://github.com/microsoft/agent-framework/issues/7919> |
| Issue | #9431 | .NET: [Bug]: Fan-out edge runs a target twice when the target selector returns its index twice | closed | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/9431> |
| Issue | #9348 | Python: [Bug]: BedrockEmbeddingClient ignores an explicit region when a boto3_session is passed, and reports the wrong region | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9348> |
| Issue | #9427 | .NET: Python: [Bug]: Declarative SetValue with `variable:` builds fine but never writes the value | closed | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9427> |
| Issue | #9338 | Python: [Bug]: tau2 sliding window never logs the over max tokens warning | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9338> |
| Issue | #9336 | Python: [Bug]: ag-ui endpoint drops a text delta that equals the whole text streamed so far | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9336> |
