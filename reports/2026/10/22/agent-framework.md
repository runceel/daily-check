# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 21 |
| オープン中の新規 PR     | 35 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 21 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | SergeyMenshykh, dependabot[bot], westey-m, baywet, jpalvarezl, marcominerva |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9461](https://github.com/microsoft/agent-framework/pull/9461) — [BREAKING] Python: Preserve Redis context scope identity （PR / open / jpalvarezl）
  Redis コンテキストを共有する Python 利用者は、スコープ識別情報とセッション分離の互換性を確認してください。
- **⚠ 破壊的変更** [#9452](https://github.com/microsoft/agent-framework/issues/9452) — Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext （Issue / open / jpalvarezl）
  廃止済み MCP 互換 API を使う Python ユーザーは、vNext 移行時の置換先を確認してください。
- **⚠ 破壊的変更** [#9322](https://github.com/microsoft/agent-framework/pull/9322) — Python: [BREAKING] Migrate Foundry Local integration to SDK 2.2.1 （PR / open / bmehta001）
  Foundry Local を利用する Python アプリは SDK 2.2.1 への互換性と構成変更を確認してください。
- **⚠ セキュリティ** [#9492](https://github.com/microsoft/agent-framework/issues/9492) — Python: FIDES keys five security decisions on a tool-name string instead of the identity marker it already defines （Issue / open / YashvantHange）
  Tool approval をカスタマイズする利用者は、FIDES の承認判定経路とツール名依存の影響を確認してください。
- **GA 昇格** [#8756](https://github.com/microsoft/agent-framework/pull/8756) — .NET: Add GA computer tool support to Foundry and Foundry hosting （PR / open / rogerbarreto）
  Foundry Computer Tool を利用する .NET ホストは GA 対応範囲とサンプル変更を確認してください。

## このリポジトリの要点

対象期間では MCP Skills のキャッシュ構造変更と TTL キャッシュ追加、Python の承認照合修正、AG-UI ホスティングのライフタイム／エージェント選択改善が中心です。
Redis コンテキスト保持や Foundry Local SDK 移行など、互換性に関わる変更も PR / Issue として継続中です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#9586](https://github.com/microsoft/agent-framework/pull/9586) — .NET: Rename and restructure MCP skills cache

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +113 / -97
- マージ日時 (UTC): `2026-10-21 19:47:59`

**変更概要**

MCP Skills のキャッシュ実装を、旧 DiscoveryResult を基準にした構造から Snapshot／Cache／Loader の責務分離へ再編しています。
キャッシュ状態と読み込み処理を明確に分けることで、一覧取得の構造を整理し、テストと後続の TTL キャッシュ追加をしやすくしています。
主な影響は .NET の MCP Skills 内部実装です。公開利用者向けの大規模な移行ではなく、内部型を参照する派生実装がある場合は型名を確認する必要があります。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsCache.cs` | 21 | 19 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsDiscoveryResult.cs` | 0 | 32 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsLoader.cs` | 4 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsSnapshot.cs` | 32 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/Listed/McpListedSkillsCacheTests.cs` | 56 | 42 |

</details>

<details><summary>コミット (1 件)</summary>

- `c557f78` .NET: Rename and restructure MCP skills cache

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`McpListedSkillsDiscoveryResult` を廃止し、新規 `McpListedSkillsSnapshot` を導入しています。既存のキャッシュ／ローダー関連内部 API は型名と責務が変わるため、派生利用がある場合のみ影響します。

**既存利用者への影響**

通常利用者への破壊的変更はありません。独自実装が削除された内部型へ直接依存している場合のみ、新しい Snapshot／Cache 型へ移行してください。

### [#9535](https://github.com/microsoft/agent-framework/pull/9535) — Python: Improve settled approval matching

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +137 / -10
- マージ日時 (UTC): `2026-10-21 11:35:13`

**変更概要**

承認済みツール呼び出しの照合処理を改善し、settled approval と新しいツール呼び出しを誤って混同しにくくしています。
ドキュメントと実行テストも更新され、承認 ID の再利用や state 変化時の判定を検証できる構成になっています。影響範囲は Python の Function Calling 実行ループと承認処理です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 1 | 1 |
| `python/packages/core/agent_framework/_tools.py` | 35 | 9 |
| `python/packages/core/tests/core/test_function_invocation_logic.py` | 101 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `1f55d3e` Improve settled approval matching
- `f4336c0` Address PR comments
- `3ee7a1f` Adddress PR comment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はありません。内部の承認照合ロジックと仕様ドキュメントの整合を改善する変更です。

**既存利用者への影響**

既存利用者の移行作業は不要です。承認フローを独自実装している場合は、承認済み結果の照合がより厳密になることを回帰テストで確認してください。

### [#9558](https://github.com/microsoft/agent-framework/pull/9558) — .NET: Add TTL caching for MCP-listed skills

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +1328 / -17
- マージ日時 (UTC): `2026-10-21 11:02:39`

**変更概要**

MCP が一覧表示する Skills に TTL ベースのキャッシュを追加し、各ソースごとにキャッシュライフタイムを管理できるようにしています。
ページライフタイム、読み込み結果、シリアライズ、TTL の動作を大量のテストで検証しており、繰り返し取得時の負荷と無効化を改善します。主な影響は .NET の MCP Skills プロバイダーです。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 10 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentSkillsProviderBuilderMcpExtensions.cs` | 29 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsCache.cs` | 119 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsDiscoveryResult.cs` | 32 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsLoader.cs` | 35 | 10 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpListedSkillsPageLifetime.cs` | 32 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Listed/McpSkillsListResult.cs` | 9 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/Listed/AgentMcpListedSkillsSerializationTests.cs` | 57 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/Listed/AgentMcpListedSkillsTests.Ttl.cs` | 764 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/Listed/AgentMcpListedSkillsTests.cs` | 6 | 6 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/Listed/McpListedSkillsCacheTests.cs` | 235 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `c29de4e` .NET: Add TTL caching for MCP-listed skills
- `32284df` .NET: Expose MCP skills source for per-source caching
- `834cc51` .NET: Extract MCP-listed skills TTL cache

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい `McpListedSkillsCache`、`McpListedSkillsPageLifetime`、`McpListedSkillsSnapshot` 等を追加し、Builder 拡張からソース単位のキャッシュを構成できます。公開 API の破壊的変更は見られません。

**既存利用者への影響**

既存利用者は現状維持で利用できます。TTL を明示的に制御したい場合のみ、新しい Builder／キャッシュ構成を採用してください。

### [#9557](https://github.com/microsoft/agent-framework/pull/9557) — Python: Tool name whitespace bugfix

- 作者: westey-m / 状態: MERGED
- ラベル: `python`
- 変更行数: +11 / -3
- マージ日時 (UTC): `2026-10-21 10:06:08`

**変更概要**

Tool approval 処理でツール名の先頭・末尾にある空白を正規化し、空白の差だけで承認照合が失敗する問題を修正しています。
Python Tool approval のテストを追加しており、ツール名を正規化したままでも承認 ID を正しく照合できます。影響範囲は Python Harness と Tool approval API の利用部分です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_harness/_tool_approval.py` | 2 | 3 |
| `python/packages/core/tests/core/test_harness_tool_approval.py` | 9 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `4aa6c14` Tool name whitespace bugfix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開シグネチャは変更ありません。Tool approval 時の内部文字列照合に空白正規化を追加する小規模修正です。

**既存利用者への影響**

既存利用者の移行作義は不要です。ツール名を空白を含む文字列で照合していた独自コードがあれば、同等の正規化動作をテストしてください。

### [#9563](https://github.com/microsoft/agent-framework/pull/9563) — .NET: Add gRPC protocol selection to the A2A sample

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +114 / -17
- マージ日時 (UTC): `2026-10-20 18:28:55`

**変更概要**

A2A サンプルに HTTP／gRPC プロトコル選択を追加し、利用者がサンプル実行時に利用プロトコルを切り替えられるようにしています。
README、サンプル設定、A2A Agent／カード解決処理を更新し、Protocol Selection サンプルを示す構成になっています。既存ライブラリ利用者よりサンプル利用者への影響が中心です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 0 |
| `dotnet/samples/02-agents/A2A/A2AAgent_ProtocolSelection/A2AAgent_ProtocolSelection.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/A2A/A2AAgent_ProtocolSelection/Program.cs` | 20 | 10 |
| `dotnet/samples/02-agents/A2A/A2AAgent_ProtocolSelection/README.md` | 67 | 3 |
| `dotnet/samples/02-agents/A2A/README.md` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.A2A/A2AAgent.cs` | 6 | 3 |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/A2AAgentCardExtensions.cs` | 12 | 0 |
| `dotnet/src/Microsoft.Agents.AI.A2A/Extensions/A2ACardResolverExtensions.cs` | 6 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `b43d253` .NET: Add gRPC protocol selection to the A2A sample

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

A2A Card Resolver と Agent Card Extensions に小規模な拡張を加えています。公開 API 名の削除や型変更はなく、破壊的変更ではありません。

**既存利用者への影響**

既存の A2A サンプル利用者は移行不要です。gRPC を試す場合のみ、新しい Protocol Selection サンプルと依存パッケージ設定を参照してください。

### [#9382](https://github.com/microsoft/agent-framework/pull/9382) — .NET: Honor hosted agent lifetimes and add request-time agent selection for AG-UI hosting

- 作者: marcominerva / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +686 / -33
- マージ日時 (UTC): `2026-10-20 16:37:01`

**変更概要**

AG-UI ホスティングで Hosted Agent のライフタイムを適切に管理し、リクエストごとに Agent を選択できるようにしています。
OpenAI、A2A、AG-UI のホスティング経路でインスタンス生成と応答終了時の解放を検証し、選択結果をセッション名で識別します。影響範囲は .NET の Hosted Agent／AG-UI ASP.NET Core ホスティングです。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/eng/MSBuild/Shared.props` | 3 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore/AGUIEndpointRouteBuilderExtensions.cs` | 129 | 14 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.csproj` | 1 | 0 |
| `dotnet/src/Shared/HostedAgents/HostedAgentResolution.cs` | 52 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.UnitTests/AGUIEndpointRouteBuilderExtensionsTests.cs` | 72 | 19 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.UnitTests/AGUIRequestScopedAgentTests.cs` | 428 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.UnitTests/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore.UnitTests.csproj` | 1 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `c3b697d` .NET: Honor hosted agent lifetimes and add request-time agent selection
- `02d0146` Merge remote-tracking branch 'origin/main' into dotnet-hosting-reques…
- `4f07bcc` .NET: Reject ReturnImmediately task runs on A2A agent selector endpoints
- `9f02a06` .NET: Apply OpenAI Responses agent selection to every operation
- `a3c1ee0` .NET: Release the response executor after OpenAI Responses execution
- `3ac9814` Merge remote-tracking branch 'origin/main' into dotnet-hosting-reques…
- `2c66b60` .NET: Scope request-time agent selection PR to AG-UI hosting
- `fb90fb6` .NET: Identify AG-UI agent instance sessions by agent name

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

エンドポイントルートと `HostedAgentResolution` を拡張し、リクエスト時の Agent 選択とライフタイム解放を実装しています。既存公開シグネチャの削除はなく、破壊的変更はありません。

**既存利用者への影響**

通常の Hosted Agent 利用者は移行不要です。独自に Agent インスタンスの寿命やセッション識別を管理している場合は、新しい解決経路との重複を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9536 | .NET: Add file search timeout | westey-m | <https://github.com/microsoft/agent-framework/pull/9536> |
| #9534 | .NET: Preserve A2A task status messages in agent responses | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9534> |
| #9542 | .NET: Reject duplicate tool approval request IDs | westey-m | <https://github.com/microsoft/agent-framework/pull/9542> |
| #9540 | .NET: fix(dotnet): reset compiled workflow state between runs | baywet | <https://github.com/microsoft/agent-framework/pull/9540> |
| #9538 | ci: replaces unmaintained task for format diff | baywet | <https://github.com/microsoft/agent-framework/pull/9538> |
| #9539 | .NET: fix(dotnet): validate MCP invocation headers | baywet | <https://github.com/microsoft/agent-framework/pull/9539> |
| #9459 | Python: Decode Ollama inline image data before serialization | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9459> |
| #9464 | .NET: Add pagination to MCP-listed skill discovery | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9464> |
| #9269 | .NET: Preserve caller cancellation in memory providers | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9269> |
| #9501 | chore(deps): bump the artifact-actions group across 1 directory with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9501> |
| #9508 | chore(deps): bump astral-sh/setup-uv in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9508> |
| #9486 | docs: fix stale experimental-ext-skills links in ADR 0029 | kun654 | <https://github.com/microsoft/agent-framework/pull/9486> |
| #9505 | chore(deps): bump github/codeql-action/analyze in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9505> |
| #9504 | chore(deps): bump github/codeql-action/autobuild in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9504> |
| #9503 | chore(deps): bump github/codeql-action/init in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9503> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9588 | .NET: Remove legacy Azure Persistent integration tests | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9588> |
| PR | #9575 | Dotnet: DevUI improve local request checks | open | westey-m | <https://github.com/microsoft/agent-framework/pull/9575> |
| PR | #9565 | .NET: Preserve toolbox OAuth consent context | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9565> |
| PR | #9585 | .NET: Release the workflow when a run ends after an executor fails to initialize | open | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/9585> |
| PR | #9583 | Python: Make MCP connection-loss recovery ownership-aware | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9583> |
| PR | #9581 | .NET: Fix sample README paths that point to missing directories | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9581> |
| PR | #9580 | Python: Fix sample README run commands that reference missing files | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9580> |
| PR | #9576 | Python: Pass judge model in evaluate_traces sample | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9576> |
| PR | #9579 | Python: Fix ChatKit integration sample startup and weather widgets | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9579> |
| PR | #9577 | Python: Fix TypeError in Copilot Studio SK migration samples | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9577> |
| PR | #9546 | Python: fix(devui): fallback to empty string when reasoning chunk has no text | open | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9546> |
| PR | #9574 | Python: fix(vectors): compare in-memory filter operands in the stored representation | open | Madin-H23 | <https://github.com/microsoft/agent-framework/pull/9574> |
| PR | #9573 | Python: fix(tools): answer a function call whose arguments are not a JSON object | open | Madin-H23 | <https://github.com/microsoft/agent-framework/pull/9573> |
| PR | #9571 | Python: fix(workflow): keep a sibling pause when a nested step failure was handled | open | Madin-H23 | <https://github.com/microsoft/agent-framework/pull/9571> |
| PR | #9567 | Python: Keep span-only tool metadata off invocation metrics | open | tokaplan | <https://github.com/microsoft/agent-framework/pull/9567> |
| PR | #9527 | Python: fix(orchestrations): coerce Magentic max_round_count below 1 up to 1 | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9527> |
| PR | #9528 | Python: fix(redis): close an owned RedisContextProvider index on exit | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9528> |
| PR | #9547 | Python: fix(core): quarantine an unreadable memory state file instead of failing every turn | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9547> |
| PR | #9569 | Python: chore(deps-dev): bump vite from 8.3.2 to 8.3.4 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9569> |
| PR | #9568 | Python: chore(deps-dev): bump uv from 0.13.1 to 0.13.4 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9568> |
| PR | #9550 | Python: fix Foundry Toolbox quickstart commands and setup steps | open | huimiu | <https://github.com/microsoft/agent-framework/pull/9550> |
| PR | #9545 | .NET: fix: mcp workflow isolation | open | baywet | <https://github.com/microsoft/agent-framework/pull/9545> |
| PR | #9556 | Python: chore(deps): bump aiohttp from 3.14.3 to 3.14.4 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9556> |
| PR | #9555 | Python: chore(deps): bump aiohttp from 3.14.3 to 3.14.4 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9555> |
| PR | #9553 | Python: Fix Purview guide credential setup | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9553> |
| PR | #9551 | Python: Fix Copilot Studio constructor in package guide | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9551> |
| PR | #9543 | Python: Handle missing reasoning text in DevUI | open | ZedingZhang | <https://github.com/microsoft/agent-framework/pull/9543> |
| PR | #9526 | .NET: Add request-time agent selection for OpenAI Responses hosting | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/9526> |
| PR | #9525 | .NET: Honor hosted agent lifetimes and add request-time agent selection for OpenAI Chat Completions hosting | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/9525> |
| PR | #9532 | Python: Clarify MCP client ownership and add workflow sample | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/9532> |
| PR | #9524 | .NET: Honor hosted agent lifetimes and add request-time agent selection for A2A hosting | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/9524> |
| PR | #9523 | Python: Correct ChatKit guide streaming arguments | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9523> |
| PR | #9521 | Python: Align A2A hosting README with SDK v1 | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9521> |
| PR | #9520 | Python: Correct Azure AI Search sample setup instructions | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9520> |
| PR | #9518 | Python: Fix the async ChatResponse aggregation example | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9518> |
| PR | #9560 | Python: Migrate Foundry Toolbox sample to unified azure.yaml | closed | therealjohn | <https://github.com/microsoft/agent-framework/pull/9560> |
| Issue | #9587 | .NET: Remove deprecated Azure Persistent v1 integration tests | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/9587> |
| Issue | #9584 | .NET: [Bug]: A Workflow stays owned after an executor fails to initialize, so every later run fails | open | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/9584> |
| Issue | #9548 | Python: [Bug]: Gemini non-streaming responses report the client default model instead of the requested one | open | Ayoubhm07 | <https://github.com/microsoft/agent-framework/issues/9548> |
| Issue | #9582 | Python: [Feature]: Support the released MCP Skills extension in MCPSkillsSource | open | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9582> |
| Issue | #9578 | Python: [Bug]: ChatKit integration sample fails at startup and never renders weather widgets | open | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9578> |
| Issue | #9562 | Python: [Bug]: Function call arguments that are not a JSON object reach the tool as {"raw": ...} instead of failing validation | open | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/9562> |
| Issue | #9549 | Python: [Bug]: Functional workflow re-raises a step failure that the workflow already handled, when a sibling branch pauses for `request_info` | open | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9549> |
| Issue | #9570 | .NET: [Bug]: DevUI_Step01_BasicUsage sample never calls `AddDevUI()`, so `app.MapDevUI()` throws on startup | open | kevintsengtw | <https://github.com/microsoft/agent-framework/issues/9570> |
| Issue | #9566 | Python: [Bug]: A2AExecutor drops image, file and data parts of incoming A2A messages | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9566> |
| Issue | #9564 | Python: [Bug]: WorkflowAgent drops usage_details of an AgentResponse output when run with stream=True | open | Somay-kousis | <https://github.com/microsoft/agent-framework/issues/9564> |
| Issue | #9561 | Python: [Bug]: A2A AgentCard `skills` are never consumed | open | savannahknight | <https://github.com/microsoft/agent-framework/issues/9561> |
| Issue | #9530 | Foundry hosting: clarify partial replies for native workflows vs workflow agents | open | herohua | <https://github.com/microsoft/agent-framework/issues/9530> |
| Issue | #9554 | Python: [Feature]: Support Agent Plugins 1.0.0 for portable skills and MCP packages | open | wn0x00 | <https://github.com/microsoft/agent-framework/issues/9554> |
| Issue | #9552 | Python: [Python][AG-UI] Rejecting one approval in a parallel approval batch leaves the run stuck: approved calls never execute and the rejected request is re-issued | open | Ryusei-0407 | <https://github.com/microsoft/agent-framework/issues/9552> |
| Issue | #9544 | Python: [Bug]: Functional workflow delivers an answer to the wrong `request_info` when automatic request ids are used with `FileCheckpointStorage` | open | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9544> |
| Issue | #9519 | Dependency bounds test failed | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/9519> |
| Issue | #9541 | Python: [Bug]: Functional workflow drops the response to a `request_info` and asks it again when a sibling branch pauses first | open | yifanxiong272 | <https://github.com/microsoft/agent-framework/issues/9541> |
| Issue | #9531 | .NET: MessageInjectingChatClient - support multi-instance hosts (pluggable message source, surface injected messages) | open | JeffinSiby | <https://github.com/microsoft/agent-framework/issues/9531> |
| Issue | #9537 | Python: [Bug]: Inconsistent partial MCP approval handling in ResponsesHostServer | open | Wixee | <https://github.com/microsoft/agent-framework/issues/9537> |
| Issue | #9533 | Python: [Bug]: DevUI ResponseReasoningTextDeltaEvent fails when Gemini reasoning chunk has no text | open | Shaahmir | <https://github.com/microsoft/agent-framework/issues/9533> |
| Issue | #9529 | Python: foundry-hosting drops request `metadata` from the stored response — `_create_response_event_stream` never passes `request` to `ResponseEventStream` | open | TaherehFarrokhiWTW | <https://github.com/microsoft/agent-framework/issues/9529> |
| Issue | #9109 | Python: Decide recovery policy for ended MCP subscription streams | closed | jpalvarezl | <https://github.com/microsoft/agent-framework/issues/9109> |
| Issue | #6529 | .NET: Feature request: Mimir memory connector (local-first, encrypted, 23 MCP tools) | closed | tcconnally | <https://github.com/microsoft/agent-framework/issues/6529> |
| Issue | #9262 | .NET: [Bug]: Mem0Provider and FoundryMemoryProvider swallow caller cancellation | closed | selvasmallive | <https://github.com/microsoft/agent-framework/issues/9262> |
