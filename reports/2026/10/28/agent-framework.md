# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 98 |
| オープン中の新規 PR     | 67 |
| クローズ (未マージ) PR  | 35 |
| 新規 Issue              | 62 |
| クローズ Issue          | 59 |
| 主要コントリビューター  | ktz03, eavanvalkenburg, ManoharPaturi, dependabot[bot], jpalvarezl, 1aifanatic |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9722](https://github.com/microsoft/agent-framework/pull/9722) — .NET: [BREAKING] fix: scope workflow MCP clients to invocations （PR / open / baywet）
  Workflow 内で MCP client を共有する .NET 利用者は、呼び出し単位のスコープ変更案とクライアントの生成・破棄タイミングを確認してください（未マージ）。
- **⚠ 破壊的変更** [#9721](https://github.com/microsoft/agent-framework/pull/9721) — [BREAKING] .NET: Update AgentServer dependencies （PR / open / rogerbarreto）
  AgentServer を利用する .NET 開発者は、依存関係更新後の互換性と必要なバージョン変更を確認してください（未マージ）。
- **⚠ 破壊的変更** [#9711](https://github.com/microsoft/agent-framework/pull/9711) — .NET: fix(dotnet): [BREAKING] reject redirect client changes （PR / merged / baywet）
  宣言型ワークフローで HTTP リダイレクトを利用する .NET 利用者は、リダイレクト応答が拒否される新しい挙動を確認し、接続先を直接指定するなどの見直しが必要です。
- **⚠ 破壊的変更** [#9661](https://github.com/microsoft/agent-framework/pull/9661) — Python: [BREAKING] Reject caller-supplied tool execution context in Responses requests （PR / open / dargilco）
  Responses API を呼び出す Python 利用者は、呼び出し側から渡す tool execution context が受け付けられなくなる案を確認し、コンテキストの受け渡し方法を見直してください（未マージ）。
- **⚠ 破壊的変更** [#9655](https://github.com/microsoft/agent-framework/pull/9655) — .NET [Breaking]: Remove old MCP skill functionality （PR / merged / SergeyMenshykh）
  旧 MCP skill 機能に依存する .NET アプリは削除・再編された実装との互換性を確認し、新しい MCP skill の構成方法へ更新してください。
- **⚠ 破壊的変更** [#9634](https://github.com/microsoft/agent-framework/issues/9634) — Python: [BREAKING] Simplify ShellEnvironmentProvider configuration （Issue / open / eavanvalkenburg）
  ShellEnvironmentProvider の設定を使う Python 利用者は、提案中の設定簡素化により変更が必要となる項目を確認してください（Issue で検討中）。
- **⚠ 破壊的変更** [#9628](https://github.com/microsoft/agent-framework/issues/9628) — Python: [BREAKING] Standardize preview connector exception and ownership contracts （Issue / open / eavanvalkenburg）
  Preview connector を利用する Python 開発者は、例外型とリソース所有権の契約が統一される提案を追跡し、例外処理や dispose 責任への影響を確認してください。
- **⚠ 破壊的変更** [#9626](https://github.com/microsoft/agent-framework/issues/9626) — Python: [BREAKING] Review preview behavioral ABCs for Protocol-compatible contracts （Issue / open / eavanvalkenburg）
  Preview の抽象基底クラスを継承する Python 拡張を保守する場合は、Protocol 互換の契約への変更案が独自実装に及ぼす影響を確認してください。
- **⚠ 破壊的変更** [#9624](https://github.com/microsoft/agent-framework/issues/9624) — Python: [BREAKING] Replace generic kwargs in preview public APIs （Issue / open / eavanvalkenburg）
  Preview 公開 API に汎用 kwargs を渡している Python 利用者は、引数が明示化される提案に備え、呼び出し箇所を棚卸ししてください。
- **⚠ 破壊的変更** [#9611](https://github.com/microsoft/agent-framework/pull/9611) — Python: [BREAKING] Guard Copilot runtime connections （PR / open / rogerbarreto）
  Copilot runtime への接続を構成する Python 利用者は、接続保護の導入案が認証・接続設定に与える影響を確認してください（未マージ）。
- **⚠ 破壊的変更** [#9461](https://github.com/microsoft/agent-framework/pull/9461) — [BREAKING] Python: Preserve Redis context scope identity （PR / open / jpalvarezl）
  Redis に会話コンテキストを保存する Python 利用者は、スコープ識別子の保持方法変更案により既存データやキーの互換性が影響を受けないか確認してください（未マージ）。
- **⚠ 破壊的変更** [#9452](https://github.com/microsoft/agent-framework/issues/9452) — Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext （Issue / open / jpalvarezl）
  vNext で廃止予定の MCP 互換 API を使う Python 利用者は、対象 API と移行先が確定した段階で更新計画を立ててください（Issue で検討中）。
- **⚠ 破壊的変更** [#9322](https://github.com/microsoft/agent-framework/pull/9322) — Python: [BREAKING] Migrate Foundry Local integration to SDK 2.2.1 （PR / open / bmehta001）
  Foundry Local 統合を使う Python 利用者は、SDK 2.2.1 への移行に伴う API・依存関係の変更を確認してください（未マージ）。
- **⚠ セキュリティ** [#9652](https://github.com/microsoft/agent-framework/pull/9652) — Python: Harden FIDES security state and policy enforcement （PR / open / eavanvalkenburg）
  FIDES を利用する Python 開発者は、セキュリティ状態とポリシー適用の強化案を確認し、マージ後に保護動作の回帰テストを行ってください（未マージ）。
- **⚠ セキュリティ** [#9492](https://github.com/microsoft/agent-framework/issues/9492) — Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines （Issue / open / YashvantHange）
  FIDES の tool 判定に依存する利用者は、ツール名ではなく識別マーカーに基づく判定への修正状況を追跡し、名前の偽装・衝突がないか確認してください。
- **⚠ セキュリティ** [#9251](https://github.com/microsoft/agent-framework/issues/9251) — Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools （Issue / open / suhasagg）
  FIDES で保護された host tool を CodeAct から実行する Python 利用者は、失敗時に許可へ倒れない fail-closed 対応の進捗を確認してください（Issue で提案中）。

## このリポジトリの要点

.NET では PR #9655 が旧 MCP skill 機能を大幅に整理し、PR #9711 は宣言型ワークフローの HTTP リダイレクトを拒否する挙動変更を含みます。Python では Responses のストリーミングでメッセージ識別子を保持する修正と、引用処理の改善がマージされました。未マージの breaking/security 提案も複数あるため、採用前に該当 API の互換性を確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#9711](https://github.com/microsoft/agent-framework/pull/9711) — .NET: fix(dotnet): [BREAKING] reject redirect client changes

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +54 / -0
- マージ日時 (UTC): `2026-10-26 16:07:19`

**変更概要**

宣言型ワークフローの既定 HTTP request handler で、リダイレクトにより接続先が変わる要求を拒否する修正です。実装と単体テストを追加し、宣言型ワークフローのドキュメントにも挙動を反映しています。意図しない転送先への接続を防ぐ一方、リダイレクトに依存する呼び出しは影響を受けます。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/DefaultHttpRequestHandler.cs` | 12 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/DefaultHttpRequestHandlerTests.cs` | 40 | 0 |
| `skills/agent-framework-builder-dotnet/references/declarative.md` | 2 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `0b27897` fix(dotnet): reject redirect client changes
- `37b0251` chore: fix for pull request finding 'Missing Dispose call on local ID…
- `81d034f` fix(dotnet): align callback lifetime diagnostics

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: `DefaultHttpRequestHandler` の既定動作がリダイレクトを許可しない形に変わります。公開 API のシグネチャ変更は示されておらず、変更の中心は HTTP 要求時のセキュリティ動作とそのテストです。

**既存利用者への影響**

API の移行は不要ですが、宣言型ワークフローの接続先が HTTP リダイレクトを返す構成では、最終 URL を直接指定するなどの変更が必要です。

### [#9655](https://github.com/microsoft/agent-framework/pull/9655) — .NET [Breaking]: Remove old MCP skill functionality

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +778 / -4233
- マージ日時 (UTC): `2026-10-23 18:32:12`

**変更概要**

旧来の MCP skill 登録・一覧取得・アーカイブ読込経路を整理し、MCP skill の発見と読み込みを新しい構成へ集約する変更です。関連する型やローダー、キャッシュ処理を再編し、サンプルとテストも更新しています。変更量が大きく、従来の MCP skill API を利用するアプリは互換性確認が必要です。

<details><summary>変更ファイル (30 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step26_FoundryToolboxMcpSkills/README.md` | 2 | 2 |
| `dotnet/samples/02-agents/AgentProviders/foundry/README.md` | 1 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkill.cs` | 245 | 93 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillResource.cs` | 14 | 27 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 223 | 133 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSourceOptions.cs` | 0 | 79 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentSkillsProviderBuilderMcpExtensions.cs` | 4 | 8 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/AgentMcpListedSkill.cs` | 0 | 347 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/AgentMcpListedSkillResource.cs` | 0 | 46 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsLoader.cs` | 0 | 297 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/AgentMcpSkillArchiveExtractor.cs` | 0 | 215 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/ArchiveEntryLoader.cs` | 0 | 462 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/ArchiveFormat.cs` | 0 | 15 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/IMcpSkillEntryLoader.cs` | 0 | 36 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/SkillMdEntryLoader.cs` | 0 | 80 |
| _... 他 15 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `dc7c919` Remove legacy MCP skill index loading
- `e7340a8` Simplify MCP skill type names and folder structure
- `83c1749` Merge MCP skill discovery into AgentMcpSkillsSource
- `2eb91b8` Move MCP skill caching into McpSkillsLoader
- `f4cd0be` Remove unused MCP client import from skills tests
- `b5642d5` Update Foundry MCP skills sample documentation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: コミットでは旧 MCP skill index loading の削除、型名・フォルダー構成の簡素化、発見処理の `AgentMcpSkillsSource` への統合、キャッシュの `McpSkillsLoader` への移動が行われています。旧 API や `AgentMcpSkillsSourceOptions`、Listed skill / archive loader 群に依存するコードは、置き換え後の API に合わせた修正が必要です。

**既存利用者への影響**

旧 MCP skill 機能を直接使う場合はマイグレーションが必要です。既存コードの参照型とサンプルを確認し、新しい MCP skill discovery/source の利用方法へ移行してください。

### [#9768](https://github.com/microsoft/agent-framework/pull/9768) — Python: Preserve Responses message identity in streaming

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +301 / -20
- マージ日時 (UTC): `2026-10-27 21:09:53`

**変更概要**

OpenAI Responses のストリーミング処理で、メッセージの identity が途中のイベント処理で失われないよう修正しています。最終化処理も調整し、Foundry hosting と OpenAI chat client のテストを追加・更新しました。ストリーミング応答のメッセージ対応付けを行う Python 利用者に関係します。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/tests/test_responses.py` | 33 | 2 |
| `python/packages/openai/agent_framework_openai/_chat_client.py` | 52 | 12 |
| `python/packages/openai/tests/openai/test_openai_chat_client.py` | 216 | 6 |

</details>

<details><summary>コミット (2 件)</summary>

- `b5bdffa` Python: Preserve Responses message identities
- `26366eb` Python: Align Responses message finalization

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

コミットは Responses message identity の保持と最終化処理の調整で、公開 API のシグネチャ変更は示されていません。ストリーミングイベントから組み立てるメッセージの識別情報を維持する内部動作の修正です。

**既存利用者への影響**

通常は移行不要です。ストリーミング結果の identity を独自に補完している利用者は、更新後にイベントと最終メッセージの対応が期待どおりか確認してください。

### [#9436](https://github.com/microsoft/agent-framework/pull/9436) — Python: fix citation issue

- 作者: sophia-ramsey / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +785 / -14
- マージ日時 (UTC): `2026-10-27 15:11:39`

**変更概要**

複数の Python プロバイダーで、Responses API の引用情報が欠落・誤分類される問題を修正しています。引用・source location の判定を整理し、完了済み応答の citation を保持する処理と関連テストを追加しました。Foundry hosting、Anthropic、AG-UI などで引用付き応答を扱う利用者に関係します。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 3 | 1 |
| `python/packages/ag-ui/agent_framework_ag_ui/_run_common.py` | 2 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_run.py` | 17 | 0 |
| `python/packages/anthropic/agent_framework_anthropic/_chat_client.py` | 9 | 0 |
| `python/packages/anthropic/tests/test_anthropic_client.py` | 44 | 0 |
| `python/packages/core/AGENTS.md` | 3 | 0 |
| `python/packages/core/agent_framework/_types.py` | 46 | 0 |
| `python/packages/core/tests/core/test_types.py` | 33 | 1 |
| `python/packages/foundry_hosting/README.md` | 12 | 0 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 118 | 8 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_workflow_responses.py` | 12 | 1 |
| `python/packages/foundry_hosting/tests/foundry_hosting/test_native_responses.py` | 81 | 0 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 376 | 0 |
| `python/packages/openai/AGENTS.md` | 3 | 1 |
| `python/packages/openai/agent_framework_openai/_chat_client.py` | 4 | 2 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `c963e24` python: fix citation issue
- `5099273` update tests and citations for anthropic
- `4872eac` add Sequence check
- `5814a9e` filter for source citations and preserve completed response citations
- `ddd49dd` complete message handling
- `7a65f36` add content and source context for citations
- `01261ad` guard against source location citations and split citations

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

コミットでは引用の sequence 判定、source citation のフィルター、完了応答の引用保持、source location citation の処理が追加されています。確認できる範囲では公開 API のシグネチャ変更や破壊的変更ではなく、Responses の引用データ処理の修正です。

**既存利用者への影響**

移行は不要です。引用付き Responses を利用する場合は更新後に引用元と source location が適切に返ることを確認してください。

### [#9734](https://github.com/microsoft/agent-framework/pull/9734) — Update CODEOWNERS maintainer assignments

- 作者: dargilco / 状態: MERGED
- ラベル: —
- 変更行数: +4 / -4
- マージ日時 (UTC): `2026-10-27 18:46:26`

**変更概要**

`.github/CODEOWNERS` の maintainer 割り当てを 4 行変更し、コード領域ごとのレビュー担当を更新しています。アプリケーション API や実行時の動作は変更しません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/CODEOWNERS` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `226b03c` Update CODEOWNERS maintainer assignments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は CODEOWNERS の担当者指定のみで、公開 API、依存関係、実行時動作への変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。今後の変更では新しい CODEOWNERS に基づいてレビュー担当が割り当てられます。

### [#9766](https://github.com/microsoft/agent-framework/pull/9766) — docs: fix dead Learn link in ADR-0002 Agent Tools

- 作者: leom1919 / 状態: MERGED
- ラベル: `documentation`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-10-27 15:48:08`

**変更概要**

ADR-0002「Agent Tools」に記載された Microsoft Learn へのリンク切れを修正しています。設計判断の説明先を正しい URL に更新するドキュメントのみの変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0002-agent-tools.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `f2cc461` docs: fix dead Learn link in ADR-0002 Agent Tools

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ドキュメント内のリンク差し替えのみで、API シグネチャやランタイム動作の変更はありません。

**既存利用者への影響**

移行は不要です。ADR の参照リンクが修正されます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9700 | Python: Correct skills sample setup environment variables | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9700> |
| #9733 | Python: Minor update to Python dev setup page, to mention Codespaces | dargilco | <https://github.com/microsoft/agent-framework/pull/9733> |
| #9744 | Python: Capture code interpreter outputs on output_item.done | cr-sbarbouche | <https://github.com/microsoft/agent-framework/pull/9744> |
| #9644 | Python: fix(workflow): finish in-flight checkpoint saves when a sibling step fails | hehe764 | <https://github.com/microsoft/agent-framework/pull/9644> |
| #9608 | Python: fix(core): prevent path collisions between files and directories in InMemoryAgentFileStore | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9608> |
| #9512 | Python: reject misaligned base64 embedding payloads with a descriptive error | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9512> |
| #9507 | Python: answer unsupported DevUI conversation items with a client error | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9507> |
| #9502 | Python: coerce Magentic max round count below one up to one | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9502> |
| #9741 | Python: use AZURE_OPENAI_EMBEDDING_MODEL in the Foundry memory sample README | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9741> |
| #9720 | Python: fix(core): keep AgentResponse usage when streaming a workflow agent | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9720> |
| #9736 | Python: Honor the requested model in non-streamed Gemini responses | Ayoubhm07 | <https://github.com/microsoft/agent-framework/pull/9736> |
| #9717 | Python: Correct HandoffBuilder output selection documentation | ktz03 | <https://github.com/microsoft/agent-framework/pull/9717> |
| #9580 | Python: Fix sample README run commands that reference missing files | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9580> |
| #9579 | Python: Fix ChatKit integration sample startup and weather widgets | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9579> |
| #8875 | Python: Refuse to save Cosmos DB checkpoints that cannot be restored | nniiovoo | <https://github.com/microsoft/agent-framework/pull/8875> |
| #9746 | Python: Allow optional MCP task tools through plain calls | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9746> |
| #9641 | Python: Add OpenViking to the community catalog | ZaynJarvis | <https://github.com/microsoft/agent-framework/pull/9641> |
| #8920 | Python: Add NVIDIA NIM embedding client package | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8920> |
| #9405 | Python: feat(core): load the agent-hooks middleware from a host declaration | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/9405> |
| #9701 | Python: Unquote percent-encoded local Agent Skill links | leilei3167 | <https://github.com/microsoft/agent-framework/pull/9701> |
| #9446 | Python: Align Redis context sample guide with current APIs | ktz03 | <https://github.com/microsoft/agent-framework/pull/9446> |
| #9437 | Python: Make response-to-updates examples self-contained | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9437> |
| #9699 | Python: Add timeout parameter to FoundryChatClient | droideronline | <https://github.com/microsoft/agent-framework/pull/9699> |
| #9445 | Python: scope FIDES quarantine clients to their owning config | mhatipog | <https://github.com/microsoft/agent-framework/pull/9445> |
| #9351 | Python: fix(foundry_hosting): send the base64 image as the image_generation_call result | shanto462 | <https://github.com/microsoft/agent-framework/pull/9351> |
| #9302 | Python: fix(claude): send the declared JSON schema of tools to Claude | shanto462 | <https://github.com/microsoft/agent-framework/pull/9302> |
| #9706 | Python: Consolidate tooling helper fixes | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9706> |
| #9261 | Python: Resolve checkpoint get_latest timestamp ties through lineage | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9261> |
| #9260 | Python: Reject oversized MessagePack history records before writing | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9260> |
| #9654 | Python: Add tool name prefixes to FileAccessProvider | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9654> |
| #8729 | Python: filter non-assistant messages from workflow agent responses | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8729> |
| #9695 | Python: raise Content Understanding dependency floor to 1.2.0b3 | sunny-kavixo | <https://github.com/microsoft/agent-framework/pull/9695> |
| #9673 | Python: correct built-in chat-client selectors in sample guide | ktz03 | <https://github.com/microsoft/agent-framework/pull/9673> |
| #9672 | Python: correct Ollama embedding truncate default documentation | ktz03 | <https://github.com/microsoft/agent-framework/pull/9672> |
| #9616 | Python: Preserve OpenAI Responses SSE error metadata | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9616> |
| #9670 | Python: correct harness file-memory configuration guidance | ktz03 | <https://github.com/microsoft/agent-framework/pull/9670> |
| #9606 | Python: fix(declarative): honor registered function approval requirements | ghox789 | <https://github.com/microsoft/agent-framework/pull/9606> |
| #9314 | Python: Reject a non-positive MCP request timeout instead of disabling it | Lesereingrape | <https://github.com/microsoft/agent-framework/pull/9314> |
| #9600 | .NET: Point Foundry-migrated sample READMEs at FOUNDRY_* settings | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9600> |
| #9585 | .NET: Release the workflow when a run ends after an executor fails to initialize | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/9585> |
| #9662 | .NET: Apply toolbox tool approval configuration | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9662> |
| #9683 | Python: Add Membase to the Python community projects | ibitnoah | <https://github.com/microsoft/agent-framework/pull/9683> |
| #9685 | chore(deps): bump github/codeql-action/init in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9685> |
| #9686 | chore(deps): bump github/codeql-action/autobuild in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9686> |
| #9689 | chore(deps): bump github/gh-aw-actions/setup in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9689> |
| #9687 | chore(deps): bump github/codeql-action/analyze in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9687> |
| #9668 | Python: clarify getting-started environment setup | ktz03 | <https://github.com/microsoft/agent-framework/pull/9668> |
| #9688 | chore(deps): bump actions/setup-node in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9688> |
| #9660 | Python: Add BotsRated to the Python community projects | amcc8q | <https://github.com/microsoft/agent-framework/pull/9660> |
| #9651 | Add .NET consumer skill for building with Agent Framework | westey-m | <https://github.com/microsoft/agent-framework/pull/9651> |
| #9619 | Python: Fix A2A dependency bounds test environment | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9619> |
| #9650 | .NET: Update package versions for release | westey-m | <https://github.com/microsoft/agent-framework/pull/9650> |
| #9618 | Python: Add ACGS to the Python community projects | dislovelhl | <https://github.com/microsoft/agent-framework/pull/9618> |
| #8980 | Python: Honor allow_multiple_tool_calls in AnthropicClient when tool_choice is unset | Zakariakhchiche | <https://github.com/microsoft/agent-framework/pull/8980> |
| #9649 | Python: compose GitHub Copilot session hooks correctly | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9649> |
| #9620 | .NET: Fix AG-UI sample prerequisites and troubleshooting paths | ktz03 | <https://github.com/microsoft/agent-framework/pull/9620> |
| #8056 | .NET: Log a warning when an unsupported declarative action is skipped | tirdesh | <https://github.com/microsoft/agent-framework/pull/8056> |
| #9639 | .NET: Correct endpoint override instructions in Responses samples | ktz03 | <https://github.com/microsoft/agent-framework/pull/9639> |
| #9637 | Python: Refresh coding standards and Copilot review guidance | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9637> |
| #9614 | Python: fix(core): move EdgeGroup's builtins.type alias to module scope (fixes Public API Compatibility) | Nanduu24 | <https://github.com/microsoft/agent-framework/pull/9614> |
| #9610 | Python: Add #9472 to 1.23.0 changelog | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9610> |
| #9602 | Python: Bump package versions for 1.23.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9602> |
| #9472 | Python: Recommend include_detailed_errors in the tool-failure warning only when it is disabled | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9472> |
| #9565 | .NET: Preserve toolbox OAuth consent context | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9565> |
| #9491 | Python: Set the assistant role on streamed Gemini updates | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9491> |
| #9497 | Python: Add Tracekit to the Python community projects | LoopGlitch26 | <https://github.com/microsoft/agent-framework/pull/9497> |
| #9476 | Python: Pass stream errors to nested streams when closing them | digit50 | <https://github.com/microsoft/agent-framework/pull/9476> |
| #9588 | .NET: Remove legacy Azure Persistent integration tests | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9588> |
| #9374 | Python: Add installable Agent Framework builder skill | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9374> |
| #9460 | Python: Sanitize unexpected streaming response failures | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9460> |
| #9532 | Python: Clarify MCP client ownership and add workflow sample | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9532> |
| #9510 | Python: close the RedisContextProvider index connection when the provider owns it | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9510> |
| #9467 | Python: Make Content base64 documentation examples runnable | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9467> |
| #9518 | Python: Fix the async ChatResponse aggregation example | ktz03 | <https://github.com/microsoft/agent-framework/pull/9518> |
| #9592 | Python: Remove span-only tool attributes from invocation metrics | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9592> |
| #9521 | Python: Align A2A hosting README with SDK v1 | ktz03 | <https://github.com/microsoft/agent-framework/pull/9521> |
| #9399 | Python: fix(bedrock): report the requested model on non-streaming responses | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9399> |
| #9523 | Python: Correct ChatKit guide streaming arguments | ktz03 | <https://github.com/microsoft/agent-framework/pull/9523> |
| #9397 | Python: fix(workflows): support keyword-only RunContext in functional workflows | nithin42 | <https://github.com/microsoft/agent-framework/pull/9397> |
| #9469 | Python: Fix stateless shell tools inheriting host stdin | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/9469> |
| #9543 | Python: Handle missing reasoning text in DevUI | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9543> |
| #9551 | Python: Fix Copilot Studio constructor in package guide | ktz03 | <https://github.com/microsoft/agent-framework/pull/9551> |
| #9553 | Python: Fix Purview guide credential setup | ktz03 | <https://github.com/microsoft/agent-framework/pull/9553> |
| #9442 | Python: preserve background execution identity across completion waits | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/9442> |
| #8801 | .NET: Add AgentSessionStore.DeleteSessionAsync to the Abstraction | marcominerva | <https://github.com/microsoft/agent-framework/pull/8801> |
| #9577 | Python: Fix TypeError in Copilot Studio SK migration samples | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9577> |
| #9576 | Python: Pass judge model in evaluate_traces sample | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9576> |
| #9590 | Python: Refresh dependencies and block compromised releases | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9590> |
| #9575 | Dotnet: DevUI improve local request checks | westey-m | <https://github.com/microsoft/agent-framework/pull/9575> |
| #9550 | Python: fix Foundry Toolbox quickstart commands and setup steps | huimiu | <https://github.com/microsoft/agent-framework/pull/9550> |
| #9546 | Python: fix(devui): fallback to empty string when reasoning chunk has no text | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9546> |
| #9583 | Python: Make MCP connection-loss recovery ownership-aware | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9583> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9749 | .NET: fix(dotnet): persist workflow scope aliases consistently | open | baywet | <https://github.com/microsoft/agent-framework/pull/9749> |
| PR | #9776 | Python: decode percent-encoded data URI payloads at consumption boundaries | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9776> |
| PR | #9775 | Python: Preserve native changed-package path semantics | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9775> |
| PR | #9774 | .NET: Bound workflow session checkpoint growth across turns | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/9774> |
| PR | #9769 | Python: Normalize Windows path separators in changed-package routing | open | leilei3167 | <https://github.com/microsoft/agent-framework/pull/9769> |
| PR | #9611 | Python: [BREAKING] Guard Copilot runtime connections | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9611> |
| PR | #9658 | Python: Report repeated native exit codes in persistent PowerShell sessions | open | Aditya-XR | <https://github.com/microsoft/agent-framework/pull/9658> |
| PR | #9773 | .NET: Preserve GitHub Copilot reasoning token usage | open | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9773> |
| PR | #9772 | Python: preserve server RUN_ERROR code in AG-UI event conversion | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9772> |
| PR | #9770 | Python: fix(ag-ui): start each replayed declaration-only tool call once | open | eatmoreduck | <https://github.com/microsoft/agent-framework/pull/9770> |
| PR | #9748 | Python: Add async context managers to chat clients | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9748> |
| PR | #9771 | Python: fix(core): accept parameterized collection interfaces in work… | open | M-Hietala | <https://github.com/microsoft/agent-framework/pull/9771> |
| PR | #9722 | .NET: [BREAKING] fix: scope workflow MCP clients to invocations | open | baywet | <https://github.com/microsoft/agent-framework/pull/9722> |
| PR | #9764 | .NET: Unify MCP skills and resource caching | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9764> |
| PR | #9599 | Python: Restore Semantic Kernel model arguments in Magentic migration sample | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9599> |
| PR | #9750 | Python: Declare every lazy namespace export in its type stub | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9750> |
| PR | #9754 | Python: Replace references to removed ChatAgent and Responses client classes | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9754> |
| PR | #9752 | Python: Fix group chat docstring examples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9752> |
| PR | #9751 | Python: Fix core docstring examples that use missing APIs | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9751> |
| PR | #9765 | Python: docs(changelog): replace links to deleted PRs with permalinks to their commits | open | leom1919 | <https://github.com/microsoft/agent-framework/pull/9765> |
| PR | #9718 | Python: Fix Anthropic server-tool continuation and replay | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9718> |
| PR | #9763 | Python: Fix Ollama streaming finish reason for tool calls | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9763> |
| PR | #9758 | Python: use FOUNDRY_* settings in the ChatKit integration sample README | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9758> |
| PR | #9762 | Python: Remove the stale hosted toolbox endpoint sample test | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9762> |
| PR | #9760 | .NET: Point remaining Foundry-migrated sample READMEs at FOUNDRY_* settings | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9760> |
| PR | #9759 | Python: Point Foundry-migrated sample READMEs at the settings the code reads | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9759> |
| PR | #9661 | Python: [BREAKING] Reject caller-supplied tool execution context in Responses requests | open | dargilco | <https://github.com/microsoft/agent-framework/pull/9661> |
| PR | #9756 | Python: Move the TypeSafe MCP sample to mcp 2.x | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9756> |
| PR | #9757 | Python: list FOUNDRY_* settings in the multimodal input sample README | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9757> |
| PR | #9726 | Python: drop the memory placeholder only when it is the sole entry | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9726> |
| PR | #9724 | Python: give memory topic files an injective filename stem | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9724> |
| PR | #9728 | Python: make the memory markdown escape invertible for backslash runs | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9728> |
| PR | #9755 | Python: Fix AG-UI examples server import and getting-started client calls | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9755> |
| PR | #9753 | Python: Fix declarative external-input docstring examples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9753> |
| PR | #9738 | .NET: Preserve conversation continuity after OAuth consent | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9738> |
| PR | #9730 | Python: fix(declarative): treat omitted workflow inputs as blank in PowerFx | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9730> |
| PR | #9598 | Python: Fix M365 agent sample startup and anonymous mode | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9598> |
| PR | #9721 | [BREAKING] .NET: Update AgentServer dependencies | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9721> |
| PR | #9745 | Python: Preserve request metadata in hosted responses | open | its-amann | <https://github.com/microsoft/agent-framework/pull/9745> |
| PR | #9737 | Python: Fence agent_server-history conversation turns with a pre-dispatch claim | open | dargilco | <https://github.com/microsoft/agent-framework/pull/9737> |
| PR | #9747 | Python: fix(core): return MiddlewareTermination(result=...) from agent and chat middleware | open | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9747> |
| PR | #9665 | Python: Preserve provider error responses in hosting | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9665> |
| PR | #9735 | Python: Correct multimodal sample setup variables | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9735> |
| PR | #9740 | Python: use FOUNDRY_MODEL in the Content Understanding DevUI sample READMEs | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9740> |
| PR | #9739 | Python: fix(core): shorten FileSessionStore atomic temp file path on Windows | open | chengwudi1 | <https://github.com/microsoft/agent-framework/pull/9739> |
| PR | #9669 | Python: Support async conditions in switch-case edge groups | open | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9669> |
| PR | #9732 | .NET: Correct sample READMEs about missing environment variables | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9732> |
| PR | #9731 | Python: Fix Copilot Studio explicit-settings sample dependency | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9731> |
| PR | #9652 | Python: Harden FIDES security state and policy enforcement | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9652> |
| PR | #9714 | Python: fix(devui): compare bearer tokens as bytes so non-ASCII input cannot raise | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9714> |
| PR | #9715 | Python: fix(tools): persist parsed shell results | open | dannyward630 | <https://github.com/microsoft/agent-framework/pull/9715> |
| PR | #9712 | Python: fix(devui): accept the IPv6 loopback Host header on a loopback bind | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9712> |
| PR | #9705 | Python: fix(embeddings): report malformed base64 payloads instead of raising struct.error | open | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9705> |
| PR | #9664 | Python: Decode percent-encoded base64 data URI payloads | open | MuonChaser | <https://github.com/microsoft/agent-framework/pull/9664> |
| PR | #9617 | Python: Make response overview examples runnable | open | BlueRaddish | <https://github.com/microsoft/agent-framework/pull/9617> |
| PR | #9702 | .NET: Correct misleading comments in FileMemoryProvider and AgentHooksFunctionMiddleware | open | hgmauri | <https://github.com/microsoft/agent-framework/pull/9702> |
| PR | #9678 | .NET: fix: avoid final rejection wording for unanswered approvals | open | ssccinng | <https://github.com/microsoft/agent-framework/pull/9678> |
| PR | #9681 | Python: Preserve termination results in Agent and Chat middleware | open | ssccinng | <https://github.com/microsoft/agent-framework/pull/9681> |
| PR | #9680 | Python: Keep optional MCP tools available | open | ssccinng | <https://github.com/microsoft/agent-framework/pull/9680> |
| PR | #9679 | Python: Handle tuples in function tool results | open | ssccinng | <https://github.com/microsoft/agent-framework/pull/9679> |
| PR | #9607 | Python: Enforce the Purview cache capacity for oversized values | open | emme1t | <https://github.com/microsoft/agent-framework/pull/9607> |
| PR | #9648 | .NET: Pin the documentation pages of the RAG Step02 sample to a commit | open | Laurianti | <https://github.com/microsoft/agent-framework/pull/9648> |
| PR | #9643 | Python: configure startup environment for foundry hosted samples | open | Shivakishore14 | <https://github.com/microsoft/agent-framework/pull/9643> |
| PR | #9609 | Python: fix(lab-gaia): accept local parquet data in _ensure_data | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9609> |
| PR | #9597 | Python: Fix claw step 3 Foundry Toolbox connection for mcp 2.x | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9597> |
| PR | #9601 | Python: Fix stale run commands in sample headers | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9601> |
| PR | #9589 | Python: Add shared Foundry resource attribute to telemetry | open | luigiw | <https://github.com/microsoft/agent-framework/pull/9589> |
| PR | #9513 | Python: Keep pending Anthropic server tool calls as server_tool_use | closed | ShivamSharma43 | <https://github.com/microsoft/agent-framework/pull/9513> |
| PR | #9690 | Python: Call MCP tools with optional taskSupport through plain tools/call | closed | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9690> |
| PR | #8957 | Python: Fix code interpreter deltas dropped on prefix collision | closed | cr-sbarbouche | <https://github.com/microsoft/agent-framework/pull/8957> |
| PR | #8891 | Python: Support Responses API server-side compaction with store=false | closed | droideronline | <https://github.com/microsoft/agent-framework/pull/8891> |
| PR | #9703 | Python: fix(foundry-local): migrate to the Foundry Local SDK 2.x API | closed | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9703> |
| PR | #8830 | Python: Preserve the AG-UI RUN_ERROR code in AGUIChatClient | closed | gabe-santana | <https://github.com/microsoft/agent-framework/pull/8830> |
| PR | #9692 | Python: Escape test-name pipes in integration trend reports | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/9692> |
| PR | #9691 | Python: Honor literal Markdown paths in --no-glob mode | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/9691> |
| PR | #9674 | Python: Honor the legacy dependency --project selector | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/9674> |
| PR | #8788 | Revise Transparency FAQ with new content and updates | closed | macosx-fromsource | <https://github.com/microsoft/agent-framework/pull/8788> |
| PR | #9477 | Python: fix(core): keep a dropped run's late finalizer from discarding the next run's state writes | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9477> |
| PR | #5569 | .NET: Fix StateDeltaEvent deserialization in BaseEventJsonConverter.Read (Fixes #5567) | closed | largeprob | <https://github.com/microsoft/agent-framework/pull/5569> |
| PR | #8687 | Python: fix(core): prevent path collisions between files and directories in InMemoryAgentFileStore | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8687> |
| PR | #9340 | Python: fix(lab-gaia): accept local parquet data in _ensure_data | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9340> |
| PR | #9604 | Python: chore(deps-dev): bump typescript in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9604> |
| PR | #9605 | Python: chore(deps): bump huggingface-hub from 1.33.0 to 2.2.0 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9605> |
| PR | #9527 | Python: fix(orchestrations): coerce Magentic max_round_count below 1 up to 1 | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9527> |
| PR | #9528 | Python: fix(redis): close an owned RedisContextProvider index on exit | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9528> |
| PR | #8631 | Python: accept nullable auto-generated keys in vector upsert tools | closed | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8631> |
| PR | #9101 | Python: fix(declarative): read every message shape in MessageText | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9101> |
| PR | #9227 | Python: fix(core): keep distinct non-ASCII memory topics in separate files | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9227> |
| PR | #9334 | Python: Fix: surface error_code for Anthropic text-editor tool errors (empty message) | closed | PratikDhanave | <https://github.com/microsoft/agent-framework/pull/9334> |
| PR | #9515 | Python: fix(core): refuse SecretString at checkpoint encode with a precise error | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9515> |
| PR | #5465 | .NET: Send A2A session task id as message taskId | closed | karimbaidar | <https://github.com/microsoft/agent-framework/pull/5465> |
| PR | #9591 | Python: chore(deps-dev): bump vite from 8.3.2 to 8.3.5 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9591> |
| PR | #9567 | Python: Keep span-only tool metadata off invocation metrics | closed | tokaplan | <https://github.com/microsoft/agent-framework/pull/9567> |
| PR | #9571 | Python: fix(workflow): keep a sibling pause when a nested step failure was handled | closed | Madin-H23 | <https://github.com/microsoft/agent-framework/pull/9571> |
| PR | #9555 | Python: chore(deps): bump aiohttp from 3.14.3 to 3.14.4 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9555> |
| PR | #9448 | Python: Bump mcp from 1.29.1 to 1.30.0 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9448> |
| PR | #9556 | Python: chore(deps): bump aiohttp from 3.14.3 to 3.14.4 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9556> |
| PR | #9568 | Python: chore(deps-dev): bump uv from 0.13.1 to 0.13.4 in /python/packages/lab | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9568> |
| PR | #9418 | Bump @radix-ui/react-label in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9418> |
| PR | #9419 | Bump @radix-ui/react-scroll-area in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9419> |
| PR | #9417 | Bump @radix-ui/react-dropdown-menu in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9417> |
| PR | #9569 | Python: chore(deps-dev): bump vite from 8.3.2 to 8.3.4 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9569> |
| Issue | #9653 | Python: Percent-encoded base64 data URIs fail media type detection | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9653> |
| Issue | #9742 | Python: [Bug]: native Windows --files paths skip changed-package tasks | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/9742> |
| Issue | #9767 | Python: [Bug]: Responses streaming loses output message identity before hosted tool approval | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9767> |
| Issue | #9656 | .NET: automatic rejection of unanswered approvals tells the model the call "must not be retried" | open | tdoman | <https://github.com/microsoft/agent-framework/issues/9656> |
| Issue | #9612 | Python: [Bug]: Functional workflow raises a failure that `asyncio.gather` discarded when the workflow catches the gather's failure and then pauses for `request_info` | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9612> |
| Issue | #9594 | Python: [Bug]: Claw step 3 sample fails to connect to Foundry Toolbox with mcp 2.x | closed | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9594> |
| Issue | #9743 | Python: [Bug]: Streamed code interpreter outputs (logs/images) are always empty | closed | cr-sbarbouche | <https://github.com/microsoft/agent-framework/issues/9743> |
| Issue | #9642 | Python: [Feature]: Support async conditions in switch-case edge groups | open | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/9642> |
| Issue | #9615 | Python: [Bug]: Functional workflow drops a finished `@step`'s checkpoint when a sibling step fails during the save, so resuming runs the step again | closed | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9615> |
| Issue | #9761 | Python: tests/samples fails to collect because four test modules import samples that no longer exist | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9761> |
| Issue | #9675 | Python: MCP tools with execution.taskSupport "optional" are skipped, although they can be called without Tasks | closed | gluc | <https://github.com/microsoft/agent-framework/issues/9675> |
| Issue | #9710 | Python: [Bug]: DevUI can't load an agent whose folder name matches a stdlib module (email, json, calendar) | open | alphasafal | <https://github.com/microsoft/agent-framework/issues/9710> |
| Issue | #9709 | Python: [Bug]: DevUI rejects every request addressed to the IPv6 loopback ([::1] Host header) | open | alphasafal | <https://github.com/microsoft/agent-framework/issues/9709> |
| Issue | #9729 | .NET: Python: [Bug]: Declarative workflow IsBlank defaults ignore inputs the caller omitted | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9729> |
| Issue | #9727 | Python: memory lines starting with backslash hash gain a backslash on every round trip | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9727> |
| Issue | #9725 | Python: a memory whose text equals the none yet placeholder is silently dropped on read | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9725> |
| Issue | #9723 | .NET: Python: MemoryFileStore topic slug collisions silently overwrite another topic's memories | open | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9723> |
| Issue | #9694 | Python: [Issue]: Percent-encoded local skill resource links are reported missing | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9694> |
| Issue | #9719 | Python: [Feature]: Add max_retries (or OpenAI client kwargs) to FoundryChatClient | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/9719> |
| Issue | #9666 | Python: [Feature]: AgentFileStore.delete_directory for releasing empty explicit directories | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9666> |
| Issue | #9645 | Python: [Feature]: Define FIDES labeling for context-provider messages | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9645> |
| Issue | #9659 | Python: Hosted Agents: Clarification on code execution, artifact retrieval, persistence, and platform responsibility boundaries | open | ShivamGoyal03 | <https://github.com/microsoft/agent-framework/issues/9659> |
| Issue | #9595 | Python: [Bug]: M365 agent sample fails at startup and in anonymous mode | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9595> |
| Issue | #9596 | Python: [Bug]: Semantic Kernel Magentic migration sample raises TypeError for ai_model | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9596> |
| Issue | #9716 | Python: [Feature]: Python: nace.ai Drex decision models: document TypeSafeChatClient(base_url=) or add an agent-framework-nace connector with image input | open | saruar-dev | <https://github.com/microsoft/agent-framework/issues/9716> |
| Issue | #9603 | Python: [Feature]: Expose get_last_checkpoint_id() and resolve_pause_checkpoint_id() on FunctionalWorkflow | open | nithin42 | <https://github.com/microsoft/agent-framework/issues/9603> |
| Issue | #9638 | Python: [Bug]: AG-UI starts each tool call twice when an agent calls two declaration-only tools in one response | open | gian-alloy | <https://github.com/microsoft/agent-framework/issues/9638> |
| Issue | #9704 | .NET: Workflow.AsAIAgent drops a terminal executor's ChatMessage output unless includeWorkflowOutputsInResponse is set | open | tzdevelopteam | <https://github.com/microsoft/agent-framework/issues/9704> |
| Issue | #9657 | Python: [Bug]: Persistent PowerShell LocalShellTool reports exit_code 0 when a native command fails with the same code twice | open | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9657> |
| Issue | #9696 | Python: [Bug]: LocalShellTool result text cannot be persisted by FileSessionStore | open | ravisingh15 | <https://github.com/microsoft/agent-framework/issues/9696> |
| Issue | #9676 | Python: [Bug]: Ollama streaming reports finish_reason "stop" when the turn is a tool call | open | r14dd | <https://github.com/microsoft/agent-framework/issues/9676> |
| Issue | #9677 | Python: [Bug]: A failed run with ToolApprovalMiddleware leaves the tool-loop budget in the session, and the retry gets fewer or no tool calls | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9677> |
| Issue | #9682 | Python: FileSessionStore.set fails on Windows for long session IDs because its temp file name is 38 characters longer than the snapshot | open | Sonica-B | <https://github.com/microsoft/agent-framework/issues/9682> |
| Issue | #9698 | Python: [Feature]: Add timeout parameter to FoundryChatClient | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/9698> |
| Issue | #9697 | Python: [Bug]: Empty local shell commands produce an orphan shell call on replay | open | ravisingh15 | <https://github.com/microsoft/agent-framework/issues/9697> |
| Issue | #9640 | Python: [Feature]: Support async conditions in switch-case edge groups | closed | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/9640> |
| Issue | #9713 | Python: [Bug]: DevUI bearer-token authentication returns 500 for non-ASCII tokens | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/9713> |
| Issue | #9646 | Python: [Bug]: Multiple FileAccessProvider context providers fail with duplicate tool names | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9646> |
| Issue | #9708 | .NET: Python: [Bug]: Workflow checkpoints turn non-string dict keys into strings on resume (FileCheckpointStorage) | open | alphasafal | <https://github.com/microsoft/agent-framework/issues/9708> |
| Issue | #9707 | Python: [Bug]: Concurrent AgentMCPTool calls on one session silently drop a conversation turn | open | alphasafal | <https://github.com/microsoft/agent-framework/issues/9707> |
| Issue | #9693 | Dependency bounds test failed | closed | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/9693> |
| Issue | #9593 | Python: [Bug]: OpenAI Responses SSE error codes are lost when wrapped in `ChatClientException` | closed | demoray | <https://github.com/microsoft/agent-framework/issues/9593> |
| Issue | #9684 | .NET: [Bug]: GitHubCopilotAgent leaves finish reason, model and reasoning tokens unset and emits empty AIContent parts in OpenTelemetry output | open | shashaa35 | <https://github.com/microsoft/agent-framework/issues/9684> |
| Issue | #9663 | Python: [Bug]: Streaming run of ChatAgent intermittently returns empty final message text (Python) | closed | idleicefire | <https://github.com/microsoft/agent-framework/issues/9663> |
| Issue | #9671 | Python: [Bug]: AzureOpenAIChatClient resolves an inconsistent deployment depending on the launching process environment (Python) | closed | idleicefire | <https://github.com/microsoft/agent-framework/issues/9671> |
| Issue | #9647 | .NET: [Bug]: RAG Step02 sample fails with 404 on the documentation pages | open | Laurianti | <https://github.com/microsoft/agent-framework/issues/9647> |
| Issue | #9636 | Python: Establish canonical coding standards and Copilot review guidance | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9636> |
| Issue | #9630 | Python: Normalize sample structure and public imports | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9630> |
| Issue | #9634 | Python: [BREAKING] Simplify ShellEnvironmentProvider configuration | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9634> |
| Issue | #9632 | Python: Audit integration-test markers and behavior-focused coverage | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9632> |
| Issue | #9631 | Python: Modernize pytest fixtures and test package layout | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9631> |
| Issue | #9627 | Python: [vNext] Standardize exception, cancellation, and resource ownership contracts | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9627> |
| Issue | #9623 | Python: [vNext] Replace generic kwargs in released public APIs | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9623> |
| Issue | #9621 | Python: [Feature]: Add import-light factories for code-defined skills | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9621> |
| Issue | #9635 | Python: Add string alternatives at stable enum input boundaries | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9635> |
| Issue | #9633 | Python: Add concise public namespace docstrings and clarify exports | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9633> |
| Issue | #9629 | Python: Add reasons to runtime typing suppressions | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9629> |
| Issue | #9626 | Python: [BREAKING] Review preview behavioral ABCs for Protocol-compatible contracts | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9626> |
| Issue | #9625 | Python: [vNext] Review stable behavioral ABCs for Protocol-compatible contracts | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9625> |
| Issue | #9628 | Python: [BREAKING] Standardize preview connector exception and ownership contracts | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9628> |
| Issue | #9624 | Python: [BREAKING] Replace generic kwargs in preview public APIs | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9624> |
| Issue | #9622 | Python: [vNext] Review middleware inheritance and extension contracts | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9622> |
| Issue | #8881 | Python: [Feature]: Crypto Payroll Agent — end-to-end sample with on-chain batch payments | closed | plagtech | <https://github.com/microsoft/agent-framework/issues/8881> |
| Issue | #9434 | Python: [Bug]: Annotations not propagated correctly | closed | sophia-ramsey | <https://github.com/microsoft/agent-framework/issues/9434> |
| Issue | #9514 | Python: [Bug]: SecretString cannot be pickled, so credential-bearing workflow checkpoints cannot be saved or restored | closed | Rishidar-lab | <https://github.com/microsoft/agent-framework/issues/9514> |
| Issue | #9480 | Python: [Bug]: Anthropic response stream is not closed on early tool-call validation failure | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/9480> |
| Issue | #9449 | Python: [Bug]: Workflow build rejects a list[T] output sent to a Sequence[T] handler | closed | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9449> |
| Issue | #9187 | Python: [Bug]: Media type detection documentation examples contain invalid base64 | closed | BlueRaddish | <https://github.com/microsoft/agent-framework/issues/9187> |
| Issue | #9041 | Python: [Bug]: UserMessage/AgentMessage return different shapes from WorkflowState and DeclarativeWorkflowState | closed | he-yufeng | <https://github.com/microsoft/agent-framework/issues/9041> |
| Issue | #9023 | Python: [Bug]: Inferred nested tool arguments lose their native types before invocation | closed | quifox | <https://github.com/microsoft/agent-framework/issues/9023> |
| Issue | #8161 | Python: Review and standardize agent and workflow identity semantics | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/8161> |
| Issue | #9548 | Python: [Bug]: Gemini non-streaming responses report the client default model instead of the requested one | closed | Ayoubhm07 | <https://github.com/microsoft/agent-framework/issues/9548> |
| Issue | #9564 | Python: [Bug]: WorkflowAgent drops usage_details of an AgentResponse output when run with stream=True | closed | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9564> |
| Issue | #9578 | Python: [Bug]: ChatKit integration sample fails at startup and never renders weather widgets | closed | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9578> |
| Issue | #8956 | Python: [Bug]: Streamed code interpreter deltas get silently dropped when one chunk's text happens to start with another's | closed | cr-sbarbouche | <https://github.com/microsoft/agent-framework/issues/8956> |
| Issue | #4171 | Python: Phase 9: Additional Embedding Implementations (HuggingFace, Mistral, Google, Nvidia) | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4171> |
| Issue | #9329 | Python: build the Agent Hooks middleware from a host declaration document | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/9329> |
| Issue | #9506 | Python: DevUI returns 404 for unsupported conversation item content on an existing conversation | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9506> |
| Issue | #9500 | Python: Magentic max_round_count below 1 terminates the workflow before any round instead of being coerced to 1 | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9500> |
| Issue | #9350 | Python: [Bug]: foundry_hosting returns "Content(type=data)" instead of the generated image in image_generation_call.result | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9350> |
| Issue | #9301 | Python: [Bug]: ClaudeAgent sends tools declared with a JSON schema to Claude without their parameters | closed | shanto462 | <https://github.com/microsoft/agent-framework/issues/9301> |
| Issue | #8513 | Python: get_latest timestamp ties return a checkpoint chosen by save order, can restore stale state | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/8513> |
| Issue | #8633 | Python: [Bug]: Oversized MessagePack history records make sessions unreadable | closed | Yufei-Z | <https://github.com/microsoft/agent-framework/issues/8633> |
| Issue | #4261 | Python: [Bug]: _convert_workflow_event_to_agent_response_updates emits user input again | closed | leelakarthik | <https://github.com/microsoft/agent-framework/issues/4261> |
| Issue | #9511 | Python: malformed base64 embedding payload raises a bare struct error with no context | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9511> |
| Issue | #9313 | Python: [Bug]: A non-positive MCP request timeout silently disables the timeout | closed | Lesereingrape | <https://github.com/microsoft/agent-framework/issues/9313> |
| Issue | #8991 | Python: Would you link an external OpenViking ContextProvider from the docs? | closed | ZaynJarvis | <https://github.com/microsoft/agent-framework/issues/8991> |
| Issue | #9584 | .NET: [Bug]: A Workflow stays owned after an executor fails to initialize, so every later run fails | closed | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/9584> |
| Issue | #9519 | Dependency bounds test failed | closed | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/9519> |
| Issue | #8979 | Python: [Bug]: AnthropicClient ignores `allow_multiple_tool_calls=False` when `tool_choice` is unset (incl. every loop iteration after `tool_choice="required"`) | closed | Zakariakhchiche | <https://github.com/microsoft/agent-framework/issues/8979> |
| Issue | #8040 | .NET: [Bug]: Declarative workflows silently skip unsupported actions | closed | tirdesh | <https://github.com/microsoft/agent-framework/issues/8040> |
| Issue | #9439 | Python: [Bug]: Tool-failure warning recommends  include_detailed_errors=True  even when already enabled | closed | demoray | <https://github.com/microsoft/agent-framework/issues/9439> |
| Issue | #8379 | .NET: [Bug]: Hosted agent toolbox consent link is bound to the container's managed identity, so sign-in fails with "Code <id> not found" | closed | edumuellerFSL | <https://github.com/microsoft/agent-framework/issues/8379> |
| Issue | #9490 | Python: [Bug]: Gemini streaming loses the final answer after a tool call | closed | Aditya-XR | <https://github.com/microsoft/agent-framework/issues/9490> |
| Issue | #9474 | Python: Failed or cancelled streaming run with agent middleware still calls after_run | closed | digit50 | <https://github.com/microsoft/agent-framework/issues/9474> |
| Issue | #9369 | Python: [Feature]: Python: Define lifecycle ownership for agents with MCP tools inside workflows and orchestrations | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/9369> |
| Issue | #9509 | Python: RedisContextProvider never closes the index connection it creates | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9509> |
| Issue | #9398 | Python: [Bug]: BedrockChatClient reports the client's default model on non-streaming responses, not the model it sent the request to | closed | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9398> |
| Issue | #9324 | Python: [Bug]: Functional workflow injects a keyword-only RunContext positionally | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9324> |
| Issue | #9468 | Python: [Bug]: Stateless shell tools inherit the host process's stdin | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/9468> |
| Issue | #9441 | Python: Background completion waiter can finalize a newer continuation under the same task ID | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/9441> |
| Issue | #8586 | .NET: Why has DeleteSessionAsync been removed from AgentSessionStore? | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/8586> |
| Issue | #9570 | .NET: [Bug]: DevUI_Step01_BasicUsage sample never calls `AddDevUI()`, so `app.MapDevUI()` throws on startup | closed | kevintsengtw | <https://github.com/microsoft/agent-framework/issues/9570> |
| Issue | #9533 | Python: [Bug]: DevUI ResponseReasoningTextDeltaEvent fails when Gemini reasoning chunk has no text | closed | Shaahmir | <https://github.com/microsoft/agent-framework/issues/9533> |
| Issue | #9426 | Python: Make MCP connection-loss recovery ownership-aware | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9426> |
