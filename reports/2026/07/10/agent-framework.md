# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-08 06:31:54 〜 2026-07-10 00:28:22 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 27 |
| オープン中の新規 PR     | 21 |
| クローズ (未マージ) PR  | 12 |
| 新規 Issue              | 18 |
| クローズ Issue          | 41 |
| 主要コントリビューター  | eavanvalkenburg, moonbox3, giles17, westey-m, cecheta, VectorPeak |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6970](https://github.com/microsoft/agent-framework/pull/6970) — .NET: [BREAKING] Graduate per-service-call persistence and approval-not-required function bypassing （PR / merged / westey-m）
  .NET で per-service-call の永続化と承認不要ツール呼び出しを利用する開発者は、正式化されたオプション名と既定動作を確認し、既存の experimental 設定を更新してください。
- **⚠ セキュリティ** [#6983](https://github.com/microsoft/agent-framework/pull/6983) — Python: Add multi-tenant hosting hosting security consideration to a2a sample （PR / merged / TaoChenOSU）
  マルチテナント構成で A2A サンプルを利用する開発者は、テナント境界と認証・認可を自環境でも明示的に設定し、サンプルをそのまま本番公開しないでください。

## このリポジトリの要点

Python 側では OpenAI の required tool choice、mem0ai 2.x、Skill リソース解決の修正が進み、.NET 側では Harness 機能の正式化と宣言型 Azure Agent の JSON 処理が改善されました。特に #6970 は既存設定に影響する破壊的変更、#6983 はマルチテナントの安全なサンプル運用に関わるため、利用者は優先確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6970](https://github.com/microsoft/agent-framework/pull/6970) — .NET: [BREAKING] Graduate per-service-call persistence and approval-not-required function bypassing

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +266 / -142
- マージ日時 (UTC): `2026-07-08 09:47:02`

**変更概要**

Harness の per-service-call 永続化と承認不要関数バイパスを experimental 扱いから正式な機能へ移行し、関連する Agent/ChatClient オプションとファイルアクセス・Skill 設定を整理しました。テストも新しい設定名と挙動に合わせて更新されています。
従来の実験フラグに依存していた .NET Harness / ChatClient 利用者が主な影響対象です。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalNotRequiredFunctionBypassingChatClient.cs` | 65 | 29 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgentOptions.cs` | 13 | 11 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientBuilderExtensions.cs` | 17 | 11 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientExtensions.cs` | 6 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProviderOptions.cs` | 2 | 8 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderOptions.cs` | 3 | 12 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 3 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 5 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ApprovalNotRequiredFunctionBypassingChatClientTests.cs` | 142 | 50 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ChatClientAgentOptionsTests.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ChatClientAgentTests.cs` | 4 | 3 |

</details>

<details><summary>コミット (4 件)</summary>

- `cbd8ce7` Remove experimental flags for RequirePerServiceCallChatHistoryPersist…
- `93c68e4` Address PR comments
- `8d904a1` Fix failing test
- `c88d224` Merge branch 'main' into dotnet-gradudate-perservicecallstorage-appro…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: `RequirePerServiceCallChatHistoryPersistence` などの実験フラグが正式化され、`ApprovalNotRequiredFunctionBypassingChatClient` と関連オプションの構成・名称が変更されています。`HarnessAgentOptions`、`ChatClientAgentOptions`、Builder 拡張の呼び出し元を確認してください。

**既存利用者への影響**

既存の experimental フラグや旧オプション名を直接指定している利用者は、正式 API への置き換えが必要です。暗黙の既定値に依存している場合も、テストで永続化・承認動作を再確認してください。

### [#7031](https://github.com/microsoft/agent-framework/pull/7031) — Python: Fix read_skill_resource instruction dropping .md extension

- 作者: giles17 / 状態: MERGED
- ラベル: `python`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-07-10 00:12:15`

**変更概要**

`read_skill_resource` が Skill ファイル名の `.md` 拡張子を instruction から落としていた問題を修正しました。Python の Skill 読み込み時に、参照先リソース名が実ファイル名と一致するようになります。
Skill の Markdown リソースを利用するエージェントが影響対象ですが、通常は依存更新だけで反映できます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_skills.py` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `fda243c` Python: Fix read_skill_resource instruction dropping .md extension

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はなく、`_skills.py` の instruction 生成時に `.md` 拡張子を保持する 1 行の修正です。

**既存利用者への影響**

マイグレーションは不要です。Skill リソースが見つからなかった利用者は更新後に再実行して解決を確認してください。

### [#7024](https://github.com/microsoft/agent-framework/pull/7024) — Python: Allow `tool_choice: required` in OpenAI Clients when using `allowed_tools`

- 作者: cecheta / 状態: MERGED
- ラベル: `python`
- 変更行数: +86 / -2
- マージ日時 (UTC): `2026-07-09 23:00:43`

**変更概要**

OpenAI Client で `allowed_tools` を指定した場合でも、`tool_choice: required` を受け付けるようにしました。許可ツールの集合を維持しながら、モデルにツール呼び出しを必須化できるため、厳密なツール実行フローを構成できます。
対象は Python OpenAI Client の tool choice 設定を利用するアプリケーションです。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/openai/agent_framework_openai/_chat_client.py` | 2 | 2 |
| `python/packages/openai/tests/openai/test_openai_chat_client.py` | 84 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `f0e95aa` feat: enhance tool choice handling for required mode in _prepare_options

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_prepare_options` の検証・変換ロジックが `required` と `allowed_tools` の組み合わせを許可するようになり、テストケースが追加されました。既存 API の引数形は維持されています。

**既存利用者への影響**

マイグレーションは不要です。これまで組み合わせを拒否されていた設定は、更新後に意図した tool choice が反映されることを確認してください。

### [#7007](https://github.com/microsoft/agent-framework/pull/7007) — .NET: Bump AGUI.Abstractions from 0.0.1 to 0.0.3

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `.NET` `dependencies`
- 変更行数: +5 / -5
- マージ日時 (UTC): `2026-07-09 13:59:27`

**変更概要**

AG-UI 関連の .NET パッケージを `AGUI.Abstractions` 0.0.1 から 0.0.3 へ更新し、関連する AGUI パッケージも整合するバージョンへ揃えました。依存関係の更新のみで、実装コードの変更はありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 5 | 5 |

</details>

<details><summary>コミット (3 件)</summary>

- `740756f` Bump AGUI.Abstractions from 0.0.1 to 0.0.3
- `e35aa6b` Bump AGUI.Formatting, AGUI.Protobuf, AGUI.Client, AGUI.Server from 0.…
- `2f47fa5` Merge branch 'main' into dependabot/nuget/dotnet/AGUI.Abstractions-0.0.3

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `Directory.Packages.props` のパッケージバージョン更新に限定されます。依存先で API 差分が発生する可能性はあるため、AG-UI を直接利用する場合はコンパイル結果を確認してください。

**既存利用者への影響**

通常の利用者に追加移行はありません。AG-UI の型やシリアライズ形式に依存する利用者は、更新後の互換性をテストしてください。

### [#7004](https://github.com/microsoft/agent-framework/pull/7004) — Python: support mem0ai 2.x

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +174 / -54
- マージ日時 (UTC): `2026-07-09 16:58:55`

**変更概要**

mem0 の Python 統合を mem0ai 2.x に対応させ、コンテキストプロバイダーの追加・検索処理と依存ロックを更新しました。mem0 のプラットフォーム API に合わせてフィルターとアプリケーションスコープも調整されています。
mem0 統合を使う利用者が主な対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/mem0/agent_framework_mem0/_context_provider.py` | 35 | 25 |
| `python/packages/mem0/pyproject.toml` | 1 | 1 |
| `python/packages/mem0/tests/test_mem0_context_provider.py` | 134 | 24 |
| `python/uv.lock` | 4 | 4 |

</details>

<details><summary>コミット (4 件)</summary>

- `987f2b5` Python: support mem0ai 2.x
- `8a11044` updated lock
- `2faa2fc` Address mem0 OSS application scope
- `5018e46` Use filters for mem0 platform add

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`agent_framework_mem0` のコンテキストプロバイダーが mem0ai 2.x の API とスコープ指定に合わせて変更され、依存バージョンも更新されました。PR の変更範囲では明示的な Agent Framework の公開 API 変更はありません。

**既存利用者への影響**

mem0ai 1.x を固定している環境では依存更新と設定の確認が必要です。既存の mem0 統合はテスト用データで保存・検索結果を再確認してください。

### [#7002](https://github.com/microsoft/agent-framework/pull/7002) — .NET: Fix declarative InvokeAzureAgent failing on non-object JSON agent output

- 作者: peibekwe / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +497 / -40
- マージ日時 (UTC): `2026-07-09 17:23:19`

**変更概要**

宣言型 `InvokeAzureAgent` が、エージェント出力の JSON がオブジェクト以外（配列やスカラーなど）の場合に失敗する問題を修正しました。JSON 文書の汎用変換ヘルパーを追加し、Azure Agent・Function Tool・MCP Tool の実行結果処理を整理しています。
宣言型ワークフローで非オブジェクト JSON を返すエージェントを利用するアプリケーションが対象です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Extensions/JsonDocumentExtensions.cs` | 22 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/HttpRequestExecutor.cs` | 1 | 14 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/InvokeAzureAgentExecutor.cs` | 16 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/InvokeFunctionToolExecutor.cs` | 1 | 11 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/InvokeMcpToolExecutor.cs` | 1 | 11 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/Extensions/JsonDocumentExtensionsTests.cs` | 98 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/InvokeAzureAgentExecutorTest.cs` | 358 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `e87e424` Fix declarative InvokeAzureAgent failing on non-object JSON agent output
- `22f2d29` Fix PR comments.

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`JsonDocumentExtensions` に JSON 値を安全に扱う変換処理を追加し、各 executor の直接的なオブジェクト前提を取り除きました。既存の公開シグネチャを変える変更ではなく、非オブジェクト結果の処理範囲を広げる修正です。

**既存利用者への影響**

マイグレーションは不要です。宣言型ワークフロー利用者は更新後、文字列・配列・数値などの実際のエージェント出力が期待どおり次段へ渡ることを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6998 | Python: Add message injection middleware | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6998> |
| #6997 | Python: Mark hosted tool calls informational-only | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6997> |
| #6993 | Python: Clarify service session ID scoping | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6993> |
| #6984 | Build(deps): consolidate Dependabot dependency updates | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6984> |
| #6980 | Python: Add AG-UI FastAPI SSE keepalive support | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6980> |
| #6977 | Python: Add refresh_interval (TTL) to CachingSkillsSource | giles17 | <https://github.com/microsoft/agent-framework/pull/6977> |
| #6974 | Python: Remove experimental marker from Skills API | giles17 | <https://github.com/microsoft/agent-framework/pull/6974> |
| #6969 | Python: fix mypy with NumPy 2.5 stubs | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6969> |
| #6966 | Python: bind policy-enforcement approvals to a single tool invocation | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6966> |
| #6962 | Python: Lazy load root agent_framework exports | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6962> |
| #6955 | Python: Fix response metadata construction | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6955> |
| #6947 | Python: Clear AG-UI queued approvals on cancel | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6947> |
| #6924 | Python: docs: fix removed ChatAgent references in _clients.py docstrings | sumesh-ramasamy | <https://github.com/microsoft/agent-framework/pull/6924> |
| #6907 | Python: Fix Foundry reasoning MCP compaction | godququ5-code | <https://github.com/microsoft/agent-framework/pull/6907> |
| #6903 | Python: normalize single Anthropic tools | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6903> |
| #6891 | Python: Add hosting protocol helper surface | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6891> |
| #6850 | Python: Add progressive MCP disclosure | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6850> |
| #6837 | Python: Refocus hosting channels ADR on protocol helpers | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6837> |
| #6741 | .NET: Python/.Net: Agent Harness blog post accompanying samples part 3 | westey-m | <https://github.com/microsoft/agent-framework/pull/6741> |
| #6644 | Python: Strip tools from Foundry agent request on the preview path (allow_preview=True) | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6644> |
| #6628 | Python: Fix Bedrock non-ASCII escaping in JSON content blocks | kimnamu | <https://github.com/microsoft/agent-framework/pull/6628> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7034 | Python: quiet A2AExecutor logging for unmapped content types | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7034> |
| PR | #7033 | Python: Consolidate Dependabot dependency updates | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7033> |
| PR | #7032 | .NET: Fix workflow session bug | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/7032> |
| PR | #7030 | .NET: Fix CosmosChatHistoryProvider: omit ttl when MessageTtlSeconds is nul… | open | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/7030> |
| PR | #7029 | Python: Best effort to serialize tool def to Json for observability | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7029> |
| PR | #7028 | Python: Fix reasoning content parsing in OpenAIChatCompletionClient | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7028> |
| PR | #7027 | Python: Integrate message injection into harness agent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7027> |
| PR | #7021 | Python: Update uv-build requirement from <0.9.0,>=0.8.2 to >=0.8.2,<0.12.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7021> |
| PR | #7019 | Python: Bump pytest from 9.1.0 to 9.1.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7019> |
| PR | #7018 | Bump uv from 0.11.17 to 0.11.28 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7018> |
| PR | #7017 | Python: Bump tqdm from 4.68.3 to 4.68.4 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7017> |
| PR | #7016 | Python: Bump uv from 0.11.17 to 0.11.28 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7016> |
| PR | #7015 | Python: Bump azure-monitor-opentelemetry from 1.8.8 to 1.8.9 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7015> |
| PR | #7014 | Python: Bump poethepoet from 0.46.0 to 0.48.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7014> |
| PR | #7013 | Python: Bump pyright from 1.1.410 to 1.1.411 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7013> |
| PR | #7012 | Python: Bump mypy from 1.20.0 to 2.2.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7012> |
| PR | #7010 | Python: Add hosted agent sample for the agent harness | open | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/7010> |
| PR | #7001 | Python: HITL respond-URL addressing from inside workflows | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework/pull/7001> |
| PR | #7000 | .NET: Hosting OpenAI Responses protocol helpers and optional execution state | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7000> |
| PR | #6999 | .NET: Update Microsoft Foundry branding | open | nicholasdbrady | <https://github.com/microsoft/agent-framework/pull/6999> |
| PR | #6990 | Python: Fix structured value parsing for split text chunks | open | t-anjan | <https://github.com/microsoft/agent-framework/pull/6990> |
| PR | #7020 | Python: Bump mem0ai from 1.0.11 to 2.0.11 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7020> |
| PR | #6928 | Python: fix(copilot): propagate usage details, finish_reason, and model from SDK events | closed | droideronline | <https://github.com/microsoft/agent-framework/pull/6928> |
| PR | #6927 | Python: fix(claude): propagate usage details and finish_reason from ResultMessage | closed | droideronline | <https://github.com/microsoft/agent-framework/pull/6927> |
| PR | #6889 | Python: Build(deps): Bump claude-agent-sdk from 0.2.106 to 0.2.110 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6889> |
| PR | #6888 | Python: Build(deps): Bump typing-extensions from 4.15.0 to 4.16.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6888> |
| PR | #6887 | Python: Build(deps): Bump agentlightning from 0.2.2 to 0.3.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6887> |
| PR | #6886 | Python: Build(deps-dev): Bump ruff from 0.15.15 to 0.15.20 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6886> |
| PR | #6885 | Python: Build(deps-dev): Bump mcp[ws] from 1.27.2 to 1.28.1 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6885> |
| PR | #6726 | .NET: Bump Anthropic from 12.20.0 to 12.31.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6726> |
| PR | #6647 | Python: Add SSE keepalive interval to AG-UI FastAPI endpoint | closed | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6647> |
| PR | #6616 | Build(deps-dev): Bump pyrefly from 1.0.0 to 1.1.1 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6616> |
| PR | #6615 | Build(deps-dev): Bump mcp from 1.27.2 to 1.28.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6615> |
| Issue | #7026 | Python: Integrate message injection into harness agent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7026> |
| Issue | #7025 | Python: [Bug]: Responses-based clients (OpenAI, Azure OpenAI, Foundry) never populate `finish_reason` — follow-up to #6955 | open | pashakamal080 | <https://github.com/microsoft/agent-framework/issues/7025> |
| Issue | #7023 | Python: [Bug]: Function calling `allowed_tools` does not work with `mode: required` for OpenAI clients | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7023> |
| Issue | #7022 | Python: [Bug]: Token count used in Compaction much differ from usage from LLM | open | sdkn104 | <https://github.com/microsoft/agent-framework/issues/7022> |
| Issue | #7011 | Python: [Feature]: Add `before_strategy` compaction support in `create_harness_agent` | open | antsok | <https://github.com/microsoft/agent-framework/issues/7011> |
| Issue | #7008 | Python: [Bug]: read_skill_resource removes `.md` extension from resource name, causing resource loading failure | closed | xiaopangzhou052-sketch | <https://github.com/microsoft/agent-framework/issues/7008> |
| Issue | #7006 | .NET: [Bug]: ChatHistoryProvider stores unfiltered tool calls causing HTTP 400 on next turn | closed | hyr0ky | <https://github.com/microsoft/agent-framework/issues/7006> |
| Issue | #7005 | .NET: [Bug]: test | closed | hyr0ky | <https://github.com/microsoft/agent-framework/issues/7005> |
| Issue | #7003 | .NET: [Bug]: CompactionMessageIndex.IsSummaryMessage always returns false because TryGetValue returns value as JsonElement | open | zengyun261 | <https://github.com/microsoft/agent-framework/issues/7003> |
| Issue | #6996 | Python: Support message injection for chat flows | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6996> |
| Issue | #6995 | Python: Support informational-only hosted tool calls | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6995> |
| Issue | #6994 | Python: [Bug]: Workflow participant tool calls emit as CustomEvent, not TOOL_CALL_START/ARGS, despite documented behavior | open | greghorne20 | <https://github.com/microsoft/agent-framework/issues/6994> |
| Issue | #6992 | .NET: [Bug]: CosmosChatHistoryProvider.MessageTtlSeconds = null | open | eguzchin-isoftwareiq | <https://github.com/microsoft/agent-framework/issues/6992> |
| Issue | #6991 | .NET: Bug: FoundryEvals sends `azure_ai_evaluator` testing-criteria type — HTTP 400 from current Foundry endpoints | open | joslat | <https://github.com/microsoft/agent-framework/issues/6991> |
| Issue | #6989 | Python: [Bug]: non-English users (input messages) will never automatically load topic files. | open | changyao-han | <https://github.com/microsoft/agent-framework/issues/6989> |
| Issue | #6988 | [Feature]: Using an Agent as a Function Tool (sub-agent)，the execution process of the sub-agent  can also generate process events | open | changyao-han | <https://github.com/microsoft/agent-framework/issues/6988> |
| Issue | #6987 | Python: .NET: [Bug]: Magentic Orchestration internal messages ignore non-English instructions | open | bingbing-gui | <https://github.com/microsoft/agent-framework/issues/6987> |
| Issue | #6986 | Python: upgrade or widen Anthropic SDK dependency | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6986> |
| Issue | #6968 | Python: Python dependency maintenance fails when mypy parses NumPy 2.5 stubs | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6968> |
| Issue | #6959 | Python: Python hosting: feature request — first-class proactive/outbound delivery with session integration | closed | mikezupper | <https://github.com/microsoft/agent-framework/issues/6959> |
| Issue | #6957 | Python: Python hosting-telegram: typing indicator expires (~5s) during non-streaming runs — long runs look dead | closed | mikezupper | <https://github.com/microsoft/agent-framework/issues/6957> |
| Issue | #6958 | Python: Python hosting-telegram: failed stream with no accumulated text leaves the placeholder ellipsis forever | closed | mikezupper | <https://github.com/microsoft/agent-framework/issues/6958> |
| Issue | #6956 | Python: Python hosting-telegram: sendMessage failures are silent — Markdown rejections drop completed replies | closed | mikezupper | <https://github.com/microsoft/agent-framework/issues/6956> |
| Issue | #6953 | .NET: [Bug]: TodoProvider injects a synthetic user message between assistant tool_calls and tool results, causing OpenAI 400 invalid_request_error | closed | soul-soft | <https://github.com/microsoft/agent-framework/issues/6953> |
| Issue | #6943 | Python: the Ollama chat provider drops `finish_reason` (and streaming token usage), so GenAI telemetry can't tell `stop` from `length` | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6943> |
| Issue | #6941 | Python: [Bug]: Python: the AG-UI FastAPI host has no SSE keepalive, so long output-silent runs are killed by the client's idle timeout | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6941> |
| Issue | #6930 | Python: bug(copilot): AgentResponse.usage_details and finish_reason always None when using GitHubCopilotAgent | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/6930> |
| Issue | #6929 | Python: bug(claude): AgentResponse.usage_details and finish_reason always None when using ClaudeAgent | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/6929> |
| Issue | #6910 | .NET: Python: [Bug]: AG-UI host loses tool calls when parallel calls require approval | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6910> |
| Issue | #6901 | Python: Anthropic provider does not normalize single tools | closed | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6901> |
| Issue | #6883 | Python: [Bug]: Orphaned mcp_call items cause HTTP 400 in multi-turn reasoning model flows | closed | csajmishra | <https://github.com/microsoft/agent-framework/issues/6883> |
| Issue | #6842 | Python: [Bug]: usage_details not available in ContextProvider / HistoryProvider | closed | auroranockert | <https://github.com/microsoft/agent-framework/issues/6842> |
| Issue | #6836 | Python: Remove experimental marker from Skills API | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6836> |
| Issue | #6805 | .NET: [Bug]: Declarative workflow — InvokeAzureAgent rejects multiple named arguments / inline-record input (ParseRecord → IDictionary) | closed | Grafaag | <https://github.com/microsoft/agent-framework/issues/6805> |
| Issue | #6657 | Python: [Bug]: Foundry agent rejects tools with HTTP 400 on the preview path (allow_preview=True) | closed | vaibhav-patel | <https://github.com/microsoft/agent-framework/issues/6657> |
| Issue | #6627 | Python: Bedrock JSON content blocks escape non-ASCII characters to \uXXXX | closed | kimnamu | <https://github.com/microsoft/agent-framework/issues/6627> |
| Issue | #6625 | .NET: [Bug]: Checkpoint's EdgeStateData cannot reflect real state | closed | jiangjinnan | <https://github.com/microsoft/agent-framework/issues/6625> |
| Issue | #6611 | Python: [Feature]: AG-UI FastAPI endpoint should support an SSE keepalive/ping interval (StreamingResponse has no heartbeat) | closed | lordlinus | <https://github.com/microsoft/agent-framework/issues/6611> |
| Issue | #6585 | Hosting: core host and Responses channel | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6585> |
| Issue | #6571 | Python: [Bug]: Foundry Hosted Agent Samples - /app is read only in Hosted Foundry Agent Service | closed | georgeollis | <https://github.com/microsoft/agent-framework/issues/6571> |
| Issue | #6533 | Python: [Bug]: DevUI sends a single Message to declarative workflow start executor that only accepts list[Message] -> "JoinExecutor cannot handle message of type Message" | closed | SuperMarimoBros | <https://github.com/microsoft/agent-framework/issues/6533> |
| Issue | #6366 | Python: [Bug]: AgentResponse.value throws pydantic ValidationError parse errors in multi-message scenarios when using with_request_info() | closed | Josh-Weston | <https://github.com/microsoft/agent-framework/issues/6366> |
| Issue | #6293 | Python: update workflow shared session sample to use client_kwargs instead of options | closed | benke520 | <https://github.com/microsoft/agent-framework/issues/6293> |
| Issue | #6266 | Python: [Bug]: `MessagesSnapshotEvent` reassigns the streamed text message ID to the tool-call message on mixed turns | closed | tschokokuki | <https://github.com/microsoft/agent-framework/issues/6266> |
| Issue | #6008 | .NET: Investigating Channel Specs for .NET | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6008> |
| Issue | #5821 | Python: add progressive MCP discovery/dispatch mode for large MCP servers | closed | rg-ve | <https://github.com/microsoft/agent-framework/issues/5821> |
| Issue | #5402 | Python: [Samples][Python] azure_functions & durabletask READMEs need quick-install commands for prerequisites | closed | leestott | <https://github.com/microsoft/agent-framework/issues/5402> |
| Issue | #4547 | Python: Improve error message when TypeVar is used in handler registration | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/4547> |
| Issue | #3120 | .NET: [Bug]: Sequential agent Workflow with Hosted Agents Does Not Emit Image Content in AgentRunUpdateEvent | closed | TaherehFarrokhiWTW | <https://github.com/microsoft/agent-framework/issues/3120> |
| Issue | #2619 | .NET & Python: Support THINKING_TEXT_MESSAGE Events in AgentFrameworkEventBridge | closed | hanhsia | <https://github.com/microsoft/agent-framework/issues/2619> |
| Issue | #2555 | Python: Support MCP-UI Protocol | closed | perfectspr | <https://github.com/microsoft/agent-framework/issues/2555> |
| Issue | #1308 | .NET: Workflow builder fails to pass data across edges when the workflow is composed of agents | closed | Ryan-Palmer | <https://github.com/microsoft/agent-framework/issues/1308> |
| Issue | #935 | Python: integration with GraphRAG | closed | ekzhu | <https://github.com/microsoft/agent-framework/issues/935> |
