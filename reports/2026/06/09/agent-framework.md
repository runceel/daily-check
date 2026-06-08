# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-08 01:26:03 〜 2026-06-08 23:38:56 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 17 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 7 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | westey-m, peibekwe, giles17, moonbox3, VedantSonani |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6388](https://github.com/microsoft/agent-framework/pull/6388) — .NET: [BREAKING] Fix hosting bugs （PR / merged / westey-m）
  ホスティング層とセッション分離の実装でホスティング設定が変更となるため、既存の ClaimsIdentitySessionIsolationKeyProvider を使用しているアプリケーションは新しい ServiceCollectionExtensions API への移行が必要です。
- **⚠ 破壊的変更** [#6381](https://github.com/microsoft/agent-framework/pull/6381) — .NET: [BREAKING] Migrate .NET GitHub Copilot SDK to v1.0.0 （PR / merged / giles17）
  GitHub.Copilot.SDK の v1.0.0 安定版への移行により名前空間・API が大幅に変更されるため、使用している全アプリケーション（特に PermissionDecision/SessionConfig の API）の更新が必須です。
- **GA 昇格** [#6403](https://github.com/microsoft/agent-framework/pull/6403) — .NET: Upgrade GitHub.Copilot.SDK to 1.0.0 GA + preserve caller-supplied SessionConfig.SessionId （PR / open / chandramouleswaran）
  v1.0.0 GA のフィーチャー確認とセッション ID の保存ロジックの検証を行い、既存のセッション管理との互換性を確認する必要があります。

## このリポジトリの要点

本期間では GitHub Copilot SDK の v1.0.0 安定版への移行（#6381）とホスティング層のバグ修正（#6388）という 2 つの重要な破壊的変更、および承認フロー・AG-UI メモリ実装の改善が進みました。特に Python の Mem0 統合（#6242）ではエンティティ分離とフィルタリング ロジックの根本的な修正が行われ、既存の空結果バグが解決されました。

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6388](https://github.com/microsoft/agent-framework/pull/6388) — .NET: [BREAKING] Fix hosting bugs

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +219 / -25
- マージ日時 (UTC): `2026-06-08 16:34:56`

**変更概要**

ホスティング層での ClaimsIdentitySessionIsolationKeyProvider とセッション分離スコープの実装にバグがあったため、修正を行いました。特にメモリプロバイダーのスコープ管理とクレーム処理のロジックを改善し、セッション分離の安定性を向上させました。ServiceCollectionExtensions に新しい拡張メソッドを追加して、より簡潔な登録方式を提供します。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedFoundryMemoryProviderScopes.cs` | 19 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AspNetCore/ClaimsIdentitySessionIsolationKeyProvider.cs` | 25 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AspNetCore/ClaimsIdentitySessionIsolationKeyProviderOptions.cs` | 19 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AspNetCore/ServiceCollectionExtensions.cs` | 21 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/HostedFoundryMemoryProviderScopesTests.cs` | 46 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.UnitTests/ClaimsIdentitySessionIsolationKeyProviderTests.cs` | 89 | 6 |

</details>

<details><summary>コミット (3 件)</summary>

- `604f02b` Fix hosting bugs
- `2f29e0e` Address PR comments
- `414b241` Merge branch 'main' into hosting-bugs-2026-06-08

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: `ClaimsIdentitySessionIsolationKeyProviderOptions` の初期化シグネチャが変更されました。HostedFoundryMemoryProviderScopes の内部メソッド呼び出し方が変わり、セッション分離キー生成時の引数の意味が明確化されました。

**既存利用者への影響**

ホスティング設定で ClaimsIdentitySessionIsolationKeyProvider を直接使用しているアプリケーションは、ServiceCollectionExtensions の新しい拡張メソッド経由での登録に変更する必要があります。マージ前にセッション分離機能の動作確認をお願いします。

### [#6381](https://github.com/microsoft/agent-framework/pull/6381) — .NET: [BREAKING] Migrate .NET GitHub Copilot SDK to v1.0.0

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +77 / -93
- マージ日時 (UTC): `2026-06-08 22:51:10`

**変更概要**

GitHub.Copilot.SDK を v1.0.0-beta.2 から v1.0.0 安定版へ移行しました。名前空間が `GitHub.Copilot.SDK` から `GitHub.Copilot`/`GitHub.Copilot.Rpc` へ変更され、`PermissionRequestResult` が `PermissionDecision`、`SessionConfig.ConfigDir` が `SessionConfig.ConfigDirectory` などの API 変更が伴います。タイプ変更（`double?` → `TimeSpan?` など）やイベント購読の `On<T>()` 形式への統一も実施されました。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |
| `dotnet/samples/02-agents/AgentProviders/Agent_With_GitHubCopilot/Agent_With_GitHubCopilot.csproj` | 1 | 0 |
| `dotnet/samples/02-agents/AgentProviders/Agent_With_GitHubCopilot/Program.cs` | 7 | 6 |
| `dotnet/samples/02-agents/AgentProviders/Agent_With_GitHubCopilot/README.md` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/CopilotClientExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 18 | 39 |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/Microsoft.Agents.AI.GitHub.Copilot.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/WorkflowConsoleAppSamplesValidation.cs` | 4 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.IntegrationTests/GitHubCopilotAgentTests.cs` | 4 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.IntegrationTests/Microsoft.Agents.AI.GitHub.Copilot.IntegrationTests.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/CopilotClientExtensionsTests.cs` | 5 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/GitHubCopilotAgentTests.cs` | 20 | 21 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests.csproj` | 1 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/SamplesValidation.cs` | 7 | 7 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/WorkflowSamplesValidation.cs` | 5 | 5 |

</details>

<details><summary>コミット (5 件)</summary>

- `f4553f3` Migrate .NET GitHub Copilot SDK from 1.0.0-beta.2 to 1.0.0
- `95079ee` Fix formatting: remove unused using directive
- `e8258c0` Merge branch 'main' into dotnet-ghcp-v1
- `8ecb4aa` Skip AzureFunctions SamplesValidation tests pending func tools fix
- `a45d06b` Skip additional failing integration tests in CI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: 名前空間が `GitHub.Copilot.SDK` → `GitHub.Copilot` に統一、`PermissionRequestResult` → `PermissionDecision` へ変更、`SessionConfig.ConfigDir` → `ConfigDirectory` へリネーム、`ICollection<AIFunction>` → `ICollection<AIFunctionDeclaration>`、`double?` → `TimeSpan?`、イベント購読が `.On()` → `.On<SessionEvent>()` 形式に変更されました。

**既存利用者への影響**

GitHub Copilot 統合を利用しているアプリケーションは全て名前空間・型・メソッドシグネチャを更新する必要があります。特に Permission ハンドラと Session Config の処理が大きく変わるため、綿密なマイグレーション作業が必要です。

### [#6387](https://github.com/microsoft/agent-framework/pull/6387) — .NET: Add approval bypassing to harness as the default

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +116 / -2
- マージ日時 (UTC): `2026-06-08 18:22:25`

**変更概要**

HarnessAgent に承認バイパス機能を追加しました。MEAI は状態を保持しないため、承認が必要なファンクション呼び出し（FCC）と不要な FCC が混在する場合、全て承認対象として返すという問題を解決します。これまでのホスト側の手動対応を不要にし、デフォルトで承認不要な FCC を自動的にハーネス内に保存する仕組みを導入しました。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 8 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 14 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 3 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 91 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `d408d18` Add approval bypassing to harness as a default
- `430e5d7` Add tests
- `5ac05cb` Address PR comments.
- `e1d0eca` Merge branch 'main' into harness-approval-bypsasing

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`HarnessAgentOptions` に新しい設定プロパティが追加されました。承認バイパス機能はデフォルトで有効になりますが、オプトアウトも可能です。既存の HarnessAgent インスタンスは自動的に新しいデフォルト動作を使用しますが、破壊的な API 変更はありません。

**既存利用者への影響**

ハーネスを使用しているアプリケーションは基本的にマイグレーション不要です。承認バイパス機能が自動的に有効になり、より効率的に FCC を処理できるようになります。必要に応じてオプションで機能を無効化することも可能です。

### [#6376](https://github.com/microsoft/agent-framework/pull/6376) — Python: Match AG-UI approval responses to requested arguments

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python` `ag-ui`
- 変更行数: +252 / -9
- マージ日時 (UTC): `2026-06-08 16:50:58`

**変更概要**

AG-UI （Apple Genie UI）の承認応答マッチング機構を改善しました。AG-UI 承認画面でユーザーが承認した関数呼び出しが、実際に提示された関数名と引数と正確に一致するまで承認を受け付けないようにしました。引数が変わった場合は その承認応答を破棄し、ペンディング中の承認を保持して再試行可能にします。ワークフロー中断・再開時の承認にも同じマッチングロジックを適用しました。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent.py` | 2 | 2 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 47 | 6 |
| `python/packages/ag-ui/agent_framework_ag_ui/_utils.py` | 16 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 37 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_agent_wrapper_comprehensive.py` | 86 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 64 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `e130bc5` Match AG-UI approval responses to requested arguments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

内部の承認マッチング実装が強化されました。`_agent_run.py` と `_workflow_run.py` の承認検証ロジックが改善され、関数名と正規化された引数の完全一致が要件となります。API シグネチャの変更はなく、内部実装の改善のみです。

**既存利用者への影響**

既存の AG-UI 利用アプリケーションにマイグレーション不要です。この変更により、誤操作や引数の不一致による承認エラーが減少し、承認フローがより堅牢になります。

### [#6367](https://github.com/microsoft/agent-framework/pull/6367) — .NET: Fix single-column value unwrap in declarative workflow

- 作者: peibekwe / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +71 / -1
- マージ日時 (UTC): `2026-06-08 11:51:22`

**変更概要**

宣言的ワークフロー（Declarative Workflow）の ForeachExecutor で Power Fx スカラー配列リテラルの処理を改善しました。Power Fx の `=[1, 2, 3]` は `Table({Value: 1}, {Value: 2}, {Value: 3})` にラップされるため、単一列 `{Value: ...}` の形状を検出して自動的にアンラップし、`Local.LoopValue` がユーザーが記述したスカラーとして読み込まれるようにしました。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/ForeachExecutor.cs` | 10 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/ForeachExecutorTest.cs` | 61 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `9a713ff` Fix single-column value unwrap in declarative workflow
- `93ba20d` Added more tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ForeachExecutor` の値アンラップロジック が強化されました。単一列テーブルの検出・アンラップは内部実装の改善で、API シグネチャの変更はありません。既存の `DataValueExtensions.ToObject` 規則と統一されました。

**既存利用者への影響**

宣言的ワークフローを使用するアプリケーションは基本的にマイグレーション不要です。この修正により、ループ内で配列リテラルを使用する場合のスカラー値の読み込みが正確に動作するようになります。

### [#6242](https://github.com/microsoft/agent-framework/pull/6242) — Python: fix(mem0): isolate entity retrieval and correct app_id payload

- 作者: VedantSonani / 状態: MERGED
- ラベル: `python`
- 変更行数: +222 / -82
- マージ日時 (UTC): `2026-06-08 13:54:11`

**変更概要**

Mem0ContextProvider の重大なバグを修正しました。before_run フェーズでメモリ検索が常に空結果を返していた問題の原因は 2 つ: (1) app_id を metadata 内に埋め込んでいたが、検索時に Mem0 の top-level app_id パラメータで探していた不一致、(2) user_id と agent_id を単一フィルタに含めると AND 結合で交差がなくなる問題。並列 asyncio.gather で User と Agent のエンティティパーティションを独立クエリして、結果をマージ・重複排除することで解決しました。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/mem0/agent_framework_mem0/_context_provider.py` | 118 | 41 |
| `python/packages/mem0/tests/test_mem0_context_provider.py` | 104 | 41 |

</details>

<details><summary>コミット (12 件)</summary>

- `2926908` fix(mem0): parallel memory retrieval logic and strict type compliance
- `3d1a5ba` Merge branch 'main' into fix-mem0-retrieval
- `ffae343` fix(mem0): align parallel retrieval types for pyright and mypy
- `e2a0d0b` Merge branch 'main' into fix-mem0-retrieval
- `d54cda6` Merge branch 'main' into fix-mem0-retrieval
- `fdcf93b` Merge branch 'main' into fix-mem0-retrieval
- `2228dca` fix(mem0): handle asyncio.CancelledError in search response and updat…
- `8e05776` Merge branch 'main' into fix-mem0-retrieval
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_context_provider.py` の after_run で app_id を Mem0 の native app_id パラメータに渡すよう変更、before_run で bundled filters を完全削除して asyncio.gather による並列クエリに置き換えました。`build_search_kwargs` ヘルパーで OSS AsyncMemory と Platform AsyncMemoryClient の両パターンに対応しています。破壊的変更はなく内部実装の修正です。

**既存利用者への影響**

Mem0 統合を使用しているアプリケーションは基本的にマイグレーション不要です。この修正により、before_run フェーズでようやくメモリが正常に検索されるようになり、既存の空結果バグが解決されます。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6407 | Python: Add workflow reset | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6407> |
| PR | #6406 | Python: Build(deps): Bump python-multipart from 0.0.26 to 0.0.27 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6406> |
| PR | #6403 | .NET: Upgrade GitHub.Copilot.SDK to 1.0.0 GA + preserve caller-supplied SessionConfig.SessionId | open | chandramouleswaran | <https://github.com/microsoft/agent-framework/pull/6403> |
| PR | #6400 | Python: fix: execute non-approval tools in mixed approval batches | open | jstar0 | <https://github.com/microsoft/agent-framework/pull/6400> |
| PR | #6399 | Python: Filter MCP tool kwargs to declared params via allowlist | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6399> |
| PR | #6396 | Python: Build(deps): Bump anthropic from 0.80.0 to 0.107.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6396> |
| PR | #6395 | Python: Build(deps): Bump aiohttp from 3.13.4 to 3.14.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6395> |
| PR | #6394 | Python: Build(deps): Bump openai from 2.24.0 to 2.41.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6394> |
| PR | #6393 | Python: Build(deps): Bump mistralai from 2.4.2 to 2.4.9 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6393> |
| PR | #6392 | Python: Build(deps): Bump pydantic-monty from 0.0.17 to 0.0.18 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6392> |
| PR | #6391 | Python: Build(deps-dev): Bump ruff from 0.15.15 to 0.15.16 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6391> |
| PR | #6390 | Python: Build(deps-dev): Bump prek from 0.4.3 to 0.4.4 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6390> |
| PR | #6389 | Python: Build(deps-dev): Bump uv from 0.11.17 to 0.11.19 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6389> |
| PR | #6384 | .NET: Add LoopAgent capability for Harnesses | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6384> |
| PR | #6383 | Python: parse structured response value from final message | open | liuzemei | <https://github.com/microsoft/agent-framework/pull/6383> |
| PR | #6380 | New logo in banner | open | sphenry | <https://github.com/microsoft/agent-framework/pull/6380> |
| PR | #6378 | New Microsoft Agent Framework logos | open | sphenry | <https://github.com/microsoft/agent-framework/pull/6378> |
| PR | #6382 | Python: parse final structured response message | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6382> |
| PR | #6379 | Stop failing held issue triage runs | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6379> |
| PR | #6280 | Build(deps): Bump anthropic from 0.80.0 to 0.105.2 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6280> |
| PR | #6279 | Build(deps): Bump openai from 2.24.0 to 2.41.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6279> |
| PR | #4824 | .NET: Implement tool events > function call events for AG-UI support | closed | kzu | <https://github.com/microsoft/agent-framework/pull/4824> |
| PR | #3842 | Python: Add request_handlers parameter for automatic HITL request handling | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/3842> |
| Issue | #6405 | .NET: GitHub Copilot RC Release | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6405> |
| Issue | #6404 | .NET: [CI] DurableTask WorkflowConsoleAppSamplesValidation tests fail — KeyNotFoundException in workflow execution | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6404> |
| Issue | #6402 | .NET: [CI] AzureFunctions SamplesValidation tests fail — func tools cannot detect worker runtime | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6402> |
| Issue | #6401 | Python: .NET: [Bug]: missing method GetResponseClient | open | massnonn | <https://github.com/microsoft/agent-framework/issues/6401> |
| Issue | #6398 | .NET: Align tool names for built in providers between c# and python | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6398> |
| Issue | #6397 | Limit agent execution by tokens consumed | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6397> |
| Issue | #6385 | Python: [Bug]: Mixed Tool Batch Applies Approval Wrapper To All Tool Calls | open | tschokokuki | <https://github.com/microsoft/agent-framework/issues/6385> |
| Issue | #6336 | Update GitHub Copilot Documentation with V1.0 Release | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6336> |
| Issue | #6264 | .NET: [Bug]:  Approval middleware surfaces non-approval functions (GetDateTime) as approval requests | closed | helloxubo | <https://github.com/microsoft/agent-framework/issues/6264> |
| Issue | #6237 | Python: [Bug]: [Bug] Mem0ContextProvider always returns empty results due to broken filter logic and API parameter mismatch | closed | VedantSonani | <https://github.com/microsoft/agent-framework/issues/6237> |
| Issue | #6173 | .NET: [Bug]: Magentic Workflow always seems to run into maximum round count limit. | closed | Abalast8899 | <https://github.com/microsoft/agent-framework/issues/6173> |
| Issue | #5041 | Python: [Bug]: No tool output found for function call | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/5041> |
| Issue | #4909 | .NET: Add approval not-required middleware for cases where we have a mix | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/4909> |
