# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 9 |
| オープン中の新規 PR     | 13 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 9 |
| クローズ Issue          | 9 |
| 主要コントリビューター  | eavanvalkenburg, westey-m, rogerbarreto, SergeyMenshykh, alliscode |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [#6798](https://github.com/microsoft/agent-framework/issues/6798) — .NET: [BREAKING] Bump Azure.AI.Projects to 2.1.0-beta.4 （Issue / closed / rogerbarreto）
  Azure.AI.Projects 2.1.0-beta.4 への依存更新を利用する .NET 実装は、互換性とサンプルの再ビルドを確認しておく必要があります。

## このリポジトリの要点

このリポジトリは、エージェント実行の安全性・可観測性・ローカル開発体験を同時に改善する方向に進んでいます。特に Harness の承認制御の粒度調整、Foundry Hosting のローカル耐性向上、Hyperlight の sandbox パス検証強化が主要なトピックです。今週は、実装面では API の明示化とセキュリティ強化、運用面ではサンプルとドキュメントの整備が進んでいました。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6880](https://github.com/microsoft/agent-framework/pull/6880) — .NET: Make default-approval harness features configurable + customizable shell tool

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +279 / -15
- マージ日時 (UTC): `2026-07-02 15:10:48`

**変更概要**

Harness の既定承認が過剰であったケースを、`FileAccessProvider` とシェルツール単位で微調整できるようにした PR です。読み取り/書き込みの承認を個別に無効化できるほか、Shell tool の名前・説明・承認要否をカスタマイズできます。これにより、信頼できる自動実行や内部ツールの整備に合わせて、承認フローを軽量化しながら安全性を保てます。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 3 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 39 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 27 | 13 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProviderOptions.cs` | 34 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 119 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileAccess/FileAccessProviderTests.cs` | 57 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `0b74478` Dotnet: Allow devs to opt-out of file-access approvals
- `bee03ba` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`.NET` では `FileAccessProviderOptions` に `DisableReadOnlyToolApproval` / `DisableWriteToolApproval` が追加され、`HarnessAgentOptions` には `ShellToolName` / `ShellToolDescription` / `ShellToolRequireApproval` が追加されています。これらは既存の `HarnessAgent` 初期化パスから渡せるため、互換性は保たれています。破壊的変更はありません。

**既存利用者への影響**

既存コードに対する移行は不要です。ただし、承認をオフにしたいワークフローでは、明示的に新オプションを設定する必要があります。

### [#6879](https://github.com/microsoft/agent-framework/pull/6879) — Python: Allow opting out of FileAccessProvider tool approval

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +119 / -16
- マージ日時 (UTC): `2026-07-02 18:39:37`

**変更概要**

Python 版でも同じ承認制御を実装し、`FileAccessProvider` の既定承認要否を明示的に切り替えられるようにしました。`create_harness_agent` からもファイルアクセスの承認設定を扱えるため、Python で構築するエージェントでも自動実行の粒度を合わせやすくなります。特に読み取り専用ツールは承認なし、書き込みツールだけ承認あり、といった構成が自然に書けます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 22 | 1 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 32 | 12 |
| `python/packages/core/tests/core/test_harness_agent.py` | 15 | 0 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 49 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `5c8f9af` Python: Allow devs to opt-out of file-access approvals

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Python 側では `FileAccessProvider` が `disable_readonly_tool_approval` / `disable_write_tool_approval` を受け取り、`create_harness_agent` は対応する `file_access_...` フラグを公開しています。内部で既存の context provider 組み立てフローに接続されるため、公開 API の互換性は維持されています。破壊的変更はありません。

**既存利用者への影響**

移行は不要ですが、承認を無効化したい Python 利用者は新オプションを使って設定する必要があります。

### [#6877](https://github.com/microsoft/agent-framework/pull/6877) — .NET: fix: Require explicit TokenCredential in AddFoundryToolboxes

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +37 / -25
- マージ日時 (UTC): `2026-07-02 15:58:56`

**変更概要**

Foundry toolbox の認証を、暗黙的な DI 解決ではなく明示的な `TokenCredential` 受け渡しに統一する修正です。これにより、Hosted / local を問わず toolbox が使う認証情報の責務が呼び出し側に明確になり、サンプル側の説明もその前提に合わせて整理されています。特に複数の認証パスを持つ環境では、期待する credential を明示的に渡す設計がしやすくなります。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox-AuthPaths/Program.cs` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox-AuthPaths/README.md` | 1 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox/agent.manifest.yaml` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxHealthCheck.cs` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/Microsoft.Agents.AI.Foundry.Hosting.csproj` | 0 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 25 | 13 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests.TestContainer/Program.cs` | 3 | 2 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests/Fixtures/ToolboxOAuthConsentHostedAgentFixture.cs` | 1 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `c9af3b1` fix: require explicit TokenCredential in AddFoundryToolboxes
- `f7ed444` fix: simplify redundant generic type argument (IDE0001)
- `34e3d12` fix: avoid duplicate FoundryToolboxService registration

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更です。`.NET` の `AddFoundryToolboxes` は `TokenCredential` を明示的に受ける形へ変わり、`Azure.Identity` 依存関係も hosting ライブラリから外されています。既存の `IServiceCollection` だけを渡す利用コードは、呼び出し側で `TokenCredential` を用意して渡すように修正が必要です。

**既存利用者への影響**

既存の .NET 実装ではマイグレーションが必要です。特に DI から自動解決した認証情報を前提にしていたコードは、`TokenCredential` を明示する実装に更新してください。

### [#6870](https://github.com/microsoft/agent-framework/pull/6870) — .NET: Foundry Hosting gracefully tolerates lacking user identity when run locally

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +128 / -189
- マージ日時 (UTC): `2026-07-02 09:45:23`

**変更概要**

Foundry Hosting がローカル実行環境ではユーザー ID が欠けてもエラーにせず続行できるようにした改善です。これにより、`docker run` や `dotnet run` でローカルサンプルを試すときの失敗率が下がり、例外的な header なし環境でもサンプルの動作確認がしやすくなります。`x-agent-user-id` を付与すれば、per-user isolation の再現性も維持できます。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0031-hosted-per-user-session-storage-isolation.md` | 17 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/.env.example` | 1 | 4 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/scripts/smoke.ps1` | 3 | 4 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent/Program.cs` | 1 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Files/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-FoundryAgent/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-LocalCodeAct/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-LocalTools/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-McpTools/Program.cs` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/.env.example` | 1 | 4 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/Program.cs` | 8 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/README.md` | 16 | 21 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/scripts/smoke.ps1` | 21 | 22 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `8d313eb` .NET: Make Foundry Hosting resilient to missing user identity in loca…
- `e2c85ca` Address review: correct isolation-guarantee and Memory-sample local docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

実装上は `AgentFrameworkResponseHandler.CreateAsync` が `FoundryEnvironment.IsHosted` に応じて分岐し、ホスト外では `null` user identity を許容するように変更されました。ローカル実行では `HostedSessionContext` を付けずに共有スコープで扱い、ホスト環境では従来の厳格な隔離を維持する形です。破壊的変更はありません。

**既存利用者への影響**

既存利用者には移行不要で、ローカル開発者は追加設定なしで次の挙動を試せます。`x-agent-user-id` を使う場合は、ヘッダーを付けた時の挙動と付けない時の挙動を確認するとよいです。

### [#6869](https://github.com/microsoft/agent-framework/pull/6869) — .NET: Improving DotNet samples

- 作者: alliscode / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +52 / -39
- マージ日時 (UTC): `2026-07-02 15:38:15`

**変更概要**

この PR は .NET のサンプル実行と検証体制を整備するための修正で、Foundry / FileBasedSkills / MCP スキルのサンプルが実際に通る形へ寄せられています。`GitHubCopilotAgent` のロギング実装も整理され、CA1873 に起因するビルド警告の影響を減らしています。サンプル開発者にとっては、ドキュメント・サンプル・ビルドが一貫して確認しやすくなる改善です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/eng/verify-samples/AgentsSamples.cs` | 5 | 5 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step17_OpenAPITools/Program.cs` | 24 | 30 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step17_OpenAPITools/README.md` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step01_FileBasedSkills/Program.cs` | 11 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step06_McpBasedSkills/Program.cs` | 11 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 0 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `78d6a01` fix: resolve CA1873 in GitHubCopilotAgent by using LoggerMessage sour…
- `f5eda2f` Fixing more dotnet samples
- `b98246b` Merge upstream/main into dotnet-sample-fix-v2

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の大きな変更はなく、主にサンプルコードと `GitHubCopilotAgent` の内部ログ実装の調整です。`LoggerMessage` ベースに寄せたことで、既存の呼び出し側に影響を与えずにビルド/実行の安定性が改善されています。

**既存利用者への影響**

通常の利用者にとってはマイグレーション不要です。既存サンプルを動かしている場合は、差分に合わせて実行確認を行っておくとよいです。

### [#6856](https://github.com/microsoft/agent-framework/pull/6856) — Python: Fix Hyperlight workspace staging

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +534 / -189
- マージ日時 (UTC): `2026-07-02 14:06:16`

**変更概要**

Hyperlight の sandbox staging で、シンボリックリンクや junction からワークスペース外に逃げる経路を防ぐセキュリティ修正です。入力ファイルの staging と出力/cleanup でパス妥当性をチェックするようになり、sandbox への外部ファイル混入リスクが低下しています。実行環境の信頼性を上げるための内部改善で、既存 API に新しい契約を追加するものではありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hyperlight/agent_framework_hyperlight/_execute_code_tool.py` | 149 | 54 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 385 | 135 |

</details>

<details><summary>コミット (5 件)</summary>

- `66cde3b` Fix Hyperlight workspace link staging
- `c89cc8b` Address Hyperlight staging review
- `a2a693f` Improve Hyperlight path resolve errors
- `fd710eb` Mark Hyperlight real sandbox tests as integration
- `22e41e5` Clean up Hyperlight integration sandboxes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Python 側では `agent_framework_hyperlight._execute_code_tool` と関連テストが更新され、リンク・junction を検出してパス検証を追加しました。公開 API のシグネチャ変更はなく、挙動の安全性を高める内部変更です。

**既存利用者への影響**

移行不要です。Hyperlight を使う環境では、リンクを含むワークスペースやマウント構成がある場合、従来より厳格に拒否される可能性があるため確認するとよいです。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6795 | .NET: Bump Azure.AI.Projects to 2.1.0-beta.4 | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6795> |
| #6794 | Python: Fix Anthropic messages and function-loop fallback | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6794> |
| #6724 | Python: implement ADR-0029 service_session_id lifecycle mapping | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6724> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6897 | Python: Add FHA declarative workflow sample | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6897> |
| PR | #6896 | .NET: Align WorkflowOutputEvent streaming deserialization with SourceId to ExecutorId rename | open | kshyju | <https://github.com/microsoft/agent-framework/pull/6896> |
| PR | #6895 | Python: Add SkillsSourceContext to SkillsSource.get_skills | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6895> |
| PR | #6892 | .NET: Scope OpenAI Responses conversation access to the owning agent | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6892> |
| PR | #6891 | Python: Add hosting protocol helper surface | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6891> |
| PR | #6890 | .NET: Validate Foundry toolbox name is a single path segment before building the proxy URL | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6890> |
| PR | #6889 | Python: Build(deps): Bump claude-agent-sdk from 0.2.106 to 0.2.110 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6889> |
| PR | #6888 | Python: Build(deps): Bump typing-extensions from 4.15.0 to 4.16.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6888> |
| PR | #6887 | Python: Build(deps): Bump agentlightning from 0.2.2 to 0.3.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6887> |
| PR | #6886 | Python: Build(deps-dev): Bump ruff from 0.15.15 to 0.15.20 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6886> |
| PR | #6885 | Python: Build(deps-dev): Bump mcp[ws] from 1.27.2 to 1.28.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6885> |
| PR | #6884 | Python: Clarify require_confirmation docstring to reflect confirm_changes HITL gating | open | Serjbory | <https://github.com/microsoft/agent-framework/pull/6884> |
| PR | #6882 | .NET: add workflow agent tool call message filtering | open | Oxygen56 | <https://github.com/microsoft/agent-framework/pull/6882> |
| PR | #6793 | .NET: Allow customizing the HarnessAgent shell tool name | closed | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6793> |
| PR | #6758 | Python: add agent-framework-hosting-activity-protocol channel | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6758> |
| PR | #6700 | Python: Add MCP channel for agent-framework-hosting | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6700> |
| PR | #6699 | Python: Add A2A channel for agent-framework-hosting | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6699> |
| Issue | #6894 | Python: [Bug]: AG-UI: tool-approval rejected + `400 No tool output found` due to `thread_id` reassignment across the pause/resume boundary | open | antsok | <https://github.com/microsoft/agent-framework/issues/6894> |
| Issue | #6893 | Promote harness on the MAF Overview docs page | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6893> |
| Issue | #6883 | Python: [Bug]: Orphaned mcp_call items cause HTTP 400 in multi-turn reasoning model flows | open | csajmishra | <https://github.com/microsoft/agent-framework/issues/6883> |
| Issue | #6881 | Python: [Bug]: `AgentFrameworkAgent(require_confirmation=...)` docstring is misleading — it also gates the `confirm_changes` HITL tool-call emission, not just "predictive updates" | open | antsok | <https://github.com/microsoft/agent-framework/issues/6881> |
| Issue | #6878 | .NET: Release notes for .NET v1.12 are missing | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/6878> |
| Issue | #6876 | Python: Allow configuring approval for default approval required features | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6876> |
| Issue | #6875 | .NET: Allow configuring approval for default approval required features | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6875> |
| Issue | #6874 | .NET: [Feature]: A filterToolCallMessages: bool option on AsAIAgent() | open | dcostea | <https://github.com/microsoft/agent-framework/issues/6874> |
| Issue | #6873 | .NET: [Bug]: Microsoft.Agents.AI.OpenAI ver. 1.11.1 broke FileBasedSkills execution | open | eguzchin-isoftwareiq | <https://github.com/microsoft/agent-framework/issues/6873> |
| Issue | #6825 | .NET: [Bug]:  AgentSkillsProvider approval-by-default + ToolApprovalAgent re-invoke causes O(rounds) context-provider overhead and timeouts. | closed | Cobra86 | <https://github.com/microsoft/agent-framework/issues/6825> |
| Issue | #6798 | .NET: [BREAKING] Bump Azure.AI.Projects to 2.1.0-beta.4 | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6798> |
| Issue | #6789 | .NET: [Feature]: HarnessAgent should support custom ShellExecutor.AsAIFunction name | closed | Lightczx | <https://github.com/microsoft/agent-framework/issues/6789> |
| Issue | #6509 | .NET: [Bug]: An internal server error occurred on Microsoft.Agents.AI.Foundry.Hosting `1.10.0-preview.260610.1` | closed | tsubakimoto | <https://github.com/microsoft/agent-framework/issues/6509> |
| Issue | #6450 | Python Anthropic: structured system blocks and assistant-embedded tool results serialize incorrectly | closed | rg-ve | <https://github.com/microsoft/agent-framework/issues/6450> |
| Issue | #5769 | Anthropic function limit fallback can return empty final response | closed | rg-ve | <https://github.com/microsoft/agent-framework/issues/5769> |
| Issue | #4673 | Python: [Bug]: No Native Conversation ID Propagation | closed | sphenry | <https://github.com/microsoft/agent-framework/issues/4673> |
