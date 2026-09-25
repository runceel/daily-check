# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 15 |
| オープン中の新規 PR     | 24 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 4 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | eavanvalkenburg, SergeyMenshykh, anishmehta24, kimnamu, baywet |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
実装上のセキュリティ変更は確認されませんでした（#8726 はセキュリティ関連ドキュメントへの参照追加を行うオープン PR です）。

## このリポジトリの要点

この期間は、MCP skill リソース検証の改善と、Python の DuckDB vector store connector 追加が主な機能更新です。
.NET では Azure Agent の応答処理を修正し、ホスティングの認証・分離ガイダンスも整理されました。既存 API の破壊的変更は確認されません。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8677](https://github.com/microsoft/agent-framework/pull/8677) — .NET: Clarify hosting authentication, authorization, and isolation guidance

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +536 / -23
- マージ日時 (UTC): `2026-09-24 17:27:56`

**変更概要**

.NET のホスティング利用者向けに、AG-UI やエンドツーエンドのサンプルを含む認証・認可・分離設定の説明を補強します。
claims に基づく分離キー解決やセッションストア設定もサンプルで明確化され、構成ミスを避けやすくなります。
主な変更は README とサンプルで、ライブラリの振る舞いを変える実装変更ではありません。

<details><summary>変更ファイル (36 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/README.md` | 1 | 0 |
| `dotnet/samples/02-agents/AGUI/README.md` | 58 | 2 |
| `dotnet/samples/02-agents/AGUI/Step01_GettingStarted/Server/Program.cs` | 6 | 0 |
| `dotnet/samples/02-agents/AGUI/Step02_BackendTools/Server/Program.cs` | 6 | 0 |
| `dotnet/samples/02-agents/AGUI/Step03_FrontendTools/Server/Program.cs` | 6 | 0 |
| `dotnet/samples/02-agents/AGUI/Step04_HumanInLoop/Server/Program.cs` | 6 | 0 |
| `dotnet/samples/02-agents/AGUI/Step05_StateManagement/Server/Program.cs` | 6 | 0 |
| `dotnet/samples/04-hosting/README.md` | 106 | 0 |
| `dotnet/samples/04-hosting/af-hosting/README.md` | 3 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Server/Program.cs` | 4 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses_workflow/Server/Program.cs` | 5 | 0 |
| `dotnet/samples/05-end-to-end/A2AClientServer/A2AServer/Program.cs` | 5 | 0 |
| `dotnet/samples/05-end-to-end/A2AClientServer/README.md` | 3 | 0 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIDojoServer/Program.cs` | 6 | 0 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIServer/Program.cs` | 10 | 1 |
| _... 他 21 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `2b84499` docs: clarify AG-UI hosting configuration guidance
- `0a08fb0` docs: refine hosting guidance
- `325ad5d` samples: fix AGUIServer local session store configuration
- `1f8183d` samples: fix AgentWebChat local session store configuration
- `a5182c6` docs: clarify OpenAI Responses session store configuration
- `c880292` hosting: refine claims-based isolation key resolution
- `a3582df` Fix formatting

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API シグネチャの変更や新しい抽象の追加はありません。コミットはホスティング設定の説明とサンプルの構成修正が中心です。

**既存利用者への影響**

移行作業は不要です。ホスティング構成を導入・見直す利用者は、更新された認証、セッションストア、claims 分離のガイダンスを確認してください。

### [#8690](https://github.com/microsoft/agent-framework/pull/8690) — .NET/Python: Improve MCP skill resource validation

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `python` `.NET`
- 変更行数: +511 / -18
- マージ日時 (UTC): `2026-09-24 17:27:56`

**変更概要**

.NET と Python の MCP skill 読み込みで、resource 名の検証・正規化とデコード処理を改善します。
URI に使う名前の正規化、resource 名パーツの一度だけのデコード、デコード上限の扱いを整え、不正または過大な入力への耐性を高めます。
両言語の MCP skill source と関連テストが対象です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkill.cs` | 66 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 6 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/SkillMdEntryLoader.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsSourceTests.cs` | 187 | 7 |
| `python/packages/core/agent_framework/_skills.py` | 58 | 3 |
| `python/packages/core/tests/core/test_mcp_skills.py` | 193 | 3 |

</details>

<details><summary>コミット (5 件)</summary>

- `e11dc4a` Refine MCP skill resource handling in .NET and Python
- `d7a64eb` Simplify MCP skill resource name validation
- `e6501df` Use normalized MCP skill resource names in .NET request URIs
- `8e3bad1` Refine MCP skill resource decoding limits
- `bd78e93` Decode MCP skill resource name parts once and cache Python decoding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

内部の resource 名検証と正規化・デコード処理を変更しますが、公開 API シグネチャの変更は示されていません。破壊的変更ではありません。

**既存利用者への影響**

通常の利用では移行不要です。特殊な MCP resource 名を使う場合は、正規化後の名前とデコード制限に沿うことを確認してください。

### [#8605](https://github.com/microsoft/agent-framework/pull/8605) — .NET: Correct InvokeAzureAgent response output

- 作者: baywet / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +223 / -21
- マージ日時 (UTC): `2026-09-24 16:53:11`

**変更概要**

Declarative workflow の `InvokeAzureAgent` が、前回の実行結果を現在の応答として誤って返すケースを修正します。
空の応答や不正な agent response を扱うループ判定を整理し、独立したループ条件が維持されるようにします。
変更は対象 executor と単体テストに限定されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/InvokeAzureAgentExecutor.cs` | 58 | 19 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/InvokeAzureAgentExecutorTest.cs` | 165 | 2 |

</details>

<details><summary>コミット (10 件)</summary>

- `13eca5c` fix(dotnet): clear stale Azure agent response output
- `ac2bbd5` .NET: Skip external loop on invalid agent response
- `3a9458e` .NET: Preserve independent Azure agent loop predicates
- `2d1bbfc` Fix responseObjectWasBlanked assignment logic
- `8bdce26` chore: formatting
- `f934a27` Narrow blank response loop handling
- `1e25a9e` Fix blank response loop evaluation
- `ef0713e` chore: Potential fix for pull request finding 'Constant condition'
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は応答状態のクリアと空応答時のループ評価ロジックに限定され、公開 API シグネチャの変更や新規抽象はありません。

**既存利用者への影響**

移行は不要です。該当 executor のバグ修正であり、既存の呼び出し方法は変わりません。

### [#8719](https://github.com/microsoft/agent-framework/pull/8719) — .NET: Remove redundant NuGet configuration

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +2 / -9
- マージ日時 (UTC): `2026-09-24 14:18:56`

**変更概要**

.NET ソリューションとサンプルの Docker build に重複していた NuGet 設定を削除します。
設定削除後も Docker build が通るよう、関連する Dockerfile を調整しています。
依存関係の取得設定を簡素化するビルド構成の整理です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-dotnet.slnx` | 0 | 1 |
| `dotnet/nuget.config` | 0 | 6 |
| `dotnet/samples/05-end-to-end/AspNetAgentAuthorization/RazorWebClient/Dockerfile` | 1 | 1 |
| `dotnet/samples/05-end-to-end/AspNetAgentAuthorization/Service/Dockerfile` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `06509d4` Remove redundant NuGet configuration
- `114ce1a` Fix Docker builds after removing NuGet configuration

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

NuGet 設定ファイルと Dockerfile のみが変更され、ライブラリの API やパッケージ利用契約に変更はありません。

**既存利用者への影響**

利用者側のコード変更は不要です。独自の Docker build 手順を持つ場合のみ、更新後のサンプル構成を参考にしてください。

### [#8675](https://github.com/microsoft/agent-framework/pull/8675) — Python: Add DuckDB vector store connector

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +2034 / -0
- マージ日時 (UTC): `2026-09-24 10:59:26`

**変更概要**

Python 向けに DuckDB をバックエンドとする新しい vector store connector を追加します。
コレクション操作や設定、サンプルを含む専用パッケージ `agent_framework_duckdb` とテストが追加され、DuckDB 上でベクトル検索を扱えるようになります。
既存 connector の置き換えではなく、選択可能な新規統合です。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-merge-tests.yml` | 28 | 0 |
| `python/PACKAGE_STATUS.md` | 1 | 0 |
| `python/packages/duckdb/LICENSE` | 21 | 0 |
| `python/packages/duckdb/README.md` | 154 | 0 |
| `python/packages/duckdb/agent_framework_duckdb/__init__.py` | 14 | 0 |
| `python/packages/duckdb/agent_framework_duckdb/_vector_store.py` | 788 | 0 |
| `python/packages/duckdb/agent_framework_duckdb/py.typed` | 0 | 0 |
| `python/packages/duckdb/pyproject.toml` | 61 | 0 |
| `python/packages/duckdb/samples/duckdb_vectors.py` | 58 | 0 |
| `python/packages/duckdb/tests/duckdb/conftest.py` | 59 | 0 |
| `python/packages/duckdb/tests/duckdb/test_collection.py` | 576 | 0 |
| `python/packages/duckdb/tests/duckdb/test_settings.py` | 219 | 0 |
| `python/pyproject.toml` | 1 | 0 |
| `python/uv.lock` | 54 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `78893fd` feat(python): add DuckDB vector store connector
- `8422828` fix(python): address DuckDB review blockers
- `fea5580` fix(python): match DuckDB identifier semantics and run tests for core…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `agent_framework_duckdb` パッケージに vector store 実装を追加します。既存の core API のシグネチャ変更や破壊的変更は示されていません。

**既存利用者への影響**

既存利用者の移行は不要です。DuckDB を vector store として使う場合に、新パッケージの導入と README の手順を確認してください。

### [#8683](https://github.com/microsoft/agent-framework/pull/8683) — Python: Send images in user messages to Bedrock Converse instead of dropping them

- 作者: kimnamu / 状態: MERGED
- ラベル: `python`
- 変更行数: +73 / -1
- マージ日時 (UTC): `2026-09-24 10:47:09`

**変更概要**

Bedrock Converse provider で、ユーザーメッセージ内の画像が送信時に欠落する問題を修正します。
Bedrock Converse が受け付ける画像形式を送信し、未対応形式はスキップするようにして、利用者の画像入力が適切に扱われるようにします。
対象は Python の Bedrock chat client とそのテストです。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/bedrock/agent_framework_bedrock/_chat_client.py` | 9 | 1 |
| `python/packages/bedrock/tests/test_bedrock_client.py` | 64 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `5bf850d` Python: Send images in user messages to Bedrock Converse instead of d…
- `621ace9` Python: Skip image formats Bedrock Converse does not accept

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Bedrock への画像データ変換・送信ロジックの修正で、公開 API シグネチャや新しい抽象の追加はありません。

**既存利用者への影響**

移行不要です。Bedrock Converse 利用者は、対応画像形式が送信され、provider 非対応形式は引き続き送信対象外となる点に留意してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8685 | Python: Stream Bedrock responses with ConverseStream instead of returning them in one update | kimnamu | <https://github.com/microsoft/agent-framework/pull/8685> |
| #8686 | Python: Add SQL Server native vector store connector | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8686> |
| #8701 | Python: fix(core): keep annotations and metadata when from_dict builds data content | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8701> |
| #8681 | Python: fix(core): keep booleans distinct from numbers inside sets | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8681> |
| #8671 | Python: Preserve compaction through middleware rewrites | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8671> |
| #8709 | Python: fix(python): validate settings and expose agent lifecycle methods | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8709> |
| #8670 | Python: fix Foundry background local tool replay | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8670> |
| #8640 | Python: settle fatal unknown calls on service conversations | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8640> |
| #8596 | Python: Scope workflow invocation kwargs by executor graph | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8596> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8739 | Python: Deduplicate fan-out selection results so each target runs once | open | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/8739> |
| PR | #8737 | Python: fix(ag-ui): convert input_image parts to image content | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8737> |
| PR | #8736 | Python: fix(providers): send a single stop string as a list in Gemini, Bedrock, Anthropic and Ollama | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8736> |
| PR | #8735 | Python: fix(anthropic): copy the response_format schema instead of modifying it | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8735> |
| PR | #8734 | Python: fix(ag-ui): read tool_call_id on TOOL_CALL_RESULT events | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8734> |
| PR | #8733 | Python: fix(core): leave out description for MCP prompt arguments that have none | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8733> |
| PR | #8732 | Python: fix(core): treat a single mapping tool as one tool in merge_chat_options | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8732> |
| PR | #8731 | Python: fix(core): accept a bare container type as an edge target for a parameterized output | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8731> |
| PR | #8721 | .NET: Add origin pinning to Foundry toolbox MCP client | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8721> |
| PR | #8715 | .NET: Validate Foundry client headers before transport | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8715> |
| PR | #8730 | .NET: Bump Azure.AI.Projects to 3.0.0-beta.3 and OpenAI to 2.14.0 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8730> |
| PR | #8729 | Python: filter non-assistant messages from workflow agent responses | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8729> |
| PR | #8726 | Python: docs: cross-reference security patterns from getting-started and provider samples | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8726> |
| PR | #8716 | build(deps-dev): bump the basics group across 1 directory with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8716> |
| PR | #8725 | Python: add a MongoDB agent RAG sample | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8725> |
| PR | #8727 | Python: build(deps-dev): bump the basics group in /python/packages/lab with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8727> |
| PR | #8728 | Python: build(deps): bump huggingface-hub from 1.31.0 to 1.32.0 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8728> |
| PR | #8713 | .NET: Python: Add optional OAuth consent origin allowlist to Foundry hosting | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8713> |
| PR | #8723 | Python: fix(core): allow checkpoint deserialization for orchestrations | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8723> |
| PR | #8717 | Python: Clear stale Foundry toolbox request context | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8717> |
| PR | #8722 | Python: fix(foundry_hosting): send Foundry-Features header on toolbox requests | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8722> |
| PR | #8720 | Python: fix(openai): route unmarked shell call to registered local executor | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8720> |
| PR | #8710 | Python: return actionable file-access write path errors | open | lakers-abing | <https://github.com/microsoft/agent-framework/pull/8710> |
| PR | #8714 | Python: Protect custom AG-UI approval state namespaces | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8714> |
| PR | #8649 | Python: Build(deps-dev): Bump uv from 0.12.13 to 0.12.15 in /python/packages/lab in the basics group across 1 directory | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8649> |
| PR | #8666 | Python: Add a disposable fix-ci smoke test [do not review] | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8666> |
| Issue | #8738 | Python: [Bug]: Multi-selection edge group runs a target twice when the selection function names it twice | open | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/8738> |
| Issue | #8718 | .NET: [FoundryAgent][gpt-6-luna]: [Bug]: Invalid parameter: 'text.format' of type 'json_schema' is not supported with model version `gpt-6-luna-2026-09-22` | open | lucianteodorescu-milestone | <https://github.com/microsoft/agent-framework/issues/8718> |
| Issue | #8711 | Python: Support workflow entry-state updates and per-AgentExecutor run options | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8711> |
| Issue | #8724 | Python: [Feature]: No sample or documentation for grounding an agent on MongoDB | open | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8724> |
| Issue | #8682 | Python: [Bug]: BedrockChatClient drops images from user messages, so GPT-6 Sol/Luna/Astra answer without seeing them | closed | kimnamu | <https://github.com/microsoft/agent-framework/issues/8682> |
| Issue | #8684 | Python: [Bug]: BedrockChatClient stream=True returns the whole response in one update, so GPT-6 Sol/Luna/Astra first text arrives 3-7x later | closed | kimnamu | <https://github.com/microsoft/agent-framework/issues/8684> |
| Issue | #8679 | Python: [Bug]: filter_values_equal equates booleans with numbers inside sets | closed | anishmehta24 | <https://github.com/microsoft/agent-framework/issues/8679> |
| Issue | #8313 | Python: [Bug]: ChatMiddleware has no supported way to make a durable change to the message list, so compaction silently no-ops behind any middleware that replaces messages | closed | jjwong0915 | <https://github.com/microsoft/agent-framework/issues/8313> |
| Issue | #7538 | Python: [Bug]: Background Responses tool loop fails when chaining tool output to a completed background response | closed | Laende | <https://github.com/microsoft/agent-framework/issues/7538> |
| Issue | #8093 | Python: unknown-call termination leaves service-managed conversations unresolved | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8093> |
