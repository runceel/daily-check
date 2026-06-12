# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-11 00:49:32 〜 2026-06-12 02:03:55 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 7 |
| クローズ Issue          | 9 |
| 主要コントリビューター  | westey-m, giles17, he-yufeng, alliscode, peibekwe, MatthiasHowellYopp |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6488](https://github.com/microsoft/agent-framework/pull/6488) — Python: [Breaking] Refactor FileSkillsSource for depth-based discovery and predicate filters （PR / open / giles17）
  ファイルスキルソースを使用している Python アプリケーションは、深度ベースの発見とフィルタメソッドのシグネチャ変更を確認し、コード更新が必要です。
- **⚠ 破壊的変更** [#6476](https://github.com/microsoft/agent-framework/pull/6476) — Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search （PR / open / westey-m）
  Python の FileAccess ツール API が .NET と統一されるため、ディレクトリ発見と再帰検索パラメータを確認し、対応コードの更新が必要です。
- **⚠ 破壊的変更** [#6474](https://github.com/microsoft/agent-framework/pull/6474) — .NET: [BREAKING] Align FileAccess tools with Python; add directory discovery and recursive search （PR / open / westey-m）
  .NET の FileAccess ツール API も Python に合わせて更新されます。ディレクトリ発見・再帰検索パラメータのシグネチャ変更を確認してコード対応してください。
- **⚠ 破壊的変更** [#6473](https://github.com/microsoft/agent-framework/pull/6473) — Python: Improve PR template and breaking-change label automation （PR / open / eavanvalkenburg）
  PR テンプレートと破壊的変更ラベル自動化の改善です。今後の PR では新フォーマットに従う必要があります。
- **⚠ 破壊的変更** [#5735](https://github.com/microsoft/agent-framework/pull/5735) — .NET: [BREAKING] .NET: Bump GitHub.Copilot.SDK to 1.0.0-beta.3 and forward session config properties (incl. per-session GitHubToken) （PR / open / saikir1994）
  .NET が GitHub.Copilot.SDK を 1.0.0-beta.3 に更新し、セッション設定プロパティが拡張されます。既存の初期化コードでこれら新プロパティへの対応確認が必要です。

## このリポジトリの要点

Python と .NET の API 統一が進み、FileAccess ツール、FileSkillsSource、GitHub.Copilot.SDK の更新に伴う **複数の破壊的変更（5 件）** が待機中です。同時に、Python 側での Tool Approval ミドルウェア追加（#6414）、shell ツール統合（#6451）、Foundry サンプルの刷新（#6422）など、新機能や改善が活発に進行しています。フレームワークユーザーは待機中の破壊的変更 PR の詳細をレビューし、アップグレード計画を立てることが重要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6468](https://github.com/microsoft/agent-framework/pull/6468) — Python: Bug fix for declarative workflows

- 作者: peibekwe / 状態: MERGED
- ラベル: `python`
- 変更行数: +490 / -65
- マージ日時 (UTC): `2026-06-11 22:38:41`

**変更概要**

Declarative Workflow システムのオブジェクト解析バグを修正しました。テスト拡充により状態パス安全性チェックを追加し、CI 失敗を解決しています。Python の Declarative パッケージを使用するワークフロー実装の信頼性が向上します。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/declarative/agent_framework_declarative/_workflows/_declarative_base.py` | 122 | 61 |
| `python/packages/declarative/tests/test_declarative_state_path_safety.py` | 364 | 0 |
| `python/packages/declarative/tests/test_graph_coverage.py` | 4 | 4 |

</details>

<details><summary>コミット (5 件)</summary>

- `564259a` Fix declarative object parsing bug
- `3498f9d` Remove unnecessary comment
- `c0ea099` Address PR comments
- `4b0aeb7` Address PR comments.
- `d83bc07` Fix CI failures.

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

オブジェクト解析ロジックのバグ修正が中心で、API シグネチャ変更なし。Declarative ワークフロー定義の解析時に発生していた不具合を排除しました。

**既存利用者への影響**

バグ修正のみのため、既存コードの変更不要です。Declarative Workflow 定義があれば、このバージョン以降のエラーが減少します。

### [#6463](https://github.com/microsoft/agent-framework/pull/6463) — .NET: Fix CopySessionConfig() and CopyResumeSessionConfig() to preserve SessionConfig.Streaming value

- 作者: giles17 / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +164 / -16
- マージ日時 (UTC): `2026-06-11 18:39:09`

**変更概要**

GitHubCopilotAgent の SessionConfig コピーメソッドが Streaming フラグを保持しない不具合を修正しました。セッション再開時に ストリーミング設定が失われ、応答方式が変わる問題を解決します。テストケースを大幅拡充し、このバグの再発防止を強化しています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.GitHub.Copilot/GitHubCopilotAgent.cs` | 20 | 12 |
| `dotnet/tests/Microsoft.Agents.AI.GitHub.Copilot.UnitTests/GitHubCopilotAgentTests.cs` | 144 | 4 |

</details>

<details><summary>コミット (3 件)</summary>

- `6435671` Fix CopySessionConfig and CopyResumeSessionConfig ignoring Streaming …
- `79b662a` Fix non-streaming response path for SessionConfig.Streaming=false (#4…
- `99b1679` Add test for null Data path in ConvertToAgentResponseUpdate (#4732)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存のメソッドシグネチャには変更なく、内部ロジック修正です。Streaming フラグのコピー漏れを修正し、非ストリーミング応答パスの処理を改善しました。

**既存利用者への影響**

バグ修正のため、既存コードの変更不要です。SessionConfig.Streaming が正常に保持されるようになり、セッション再開時の挙動がより一貫性を持つようになります。

### [#6451](https://github.com/microsoft/agent-framework/pull/6451) — Python: Integrate shell tool into harness agent

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +335 / -122
- マージ日時 (UTC): `2026-06-11 20:59:52`

**変更概要**

Python Agent Harness に shell ツール統合を追加しました。`shell_executor` を関数として公開し、エージェントが OS コマンド実行能力を備えます。テスト拡充とドキュメント更新により、shell ツール利用パターンが確立されています。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/__init__.py` | 2 | 0 |
| `python/packages/core/agent_framework/_clients.py` | 30 | 0 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 73 | 1 |
| `python/packages/core/agent_framework/_skills.py` | 2 | 8 |
| `python/packages/core/tests/core/test_harness_agent.py` | 124 | 0 |
| `python/packages/core/tests/core/test_mcp_observability.py` | 1 | 3 |
| `python/packages/core/tests/core/test_mcp_skills.py` | 80 | 110 |
| `python/samples/02-agents/harness/README.md` | 23 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `931d451` Integrate shell tool into AgentHarness
- `851b32f` Validate shell_executor exposes as_function() with a clear TypeError
- `b12823b` Type shell harness params via TYPE_CHECKING import

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Agent Harness に新しい shell_executor クライアント追加。既存スキル構造に統一し、タイプチェック強化でエラーハンドリングを改善しました。

**既存利用者への影響**

新機能追加のため既存コード変更不要です。Agent Harness を使用するアプリケーションは、shell コマンド実行が新たな選択肢として利用可能になります。

### [#6425](https://github.com/microsoft/agent-framework/pull/6425) — .NET: Fix AzureFunctions integration tests - set FUNCTIONS_WORKER_RUNTIME

- 作者: giles17 / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +15 / -13
- マージ日時 (UTC): `2026-06-11 15:44:42`

**変更概要**

Azure Functions の統合テストで `FUNCTIONS_WORKER_RUNTIME` 環境変数が未設定のため失敗していた問題を修正しました。Sample 検証用テスト両方で環境変数を適切に設定し、テスト安定性を向上させています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/SamplesValidation.cs` | 9 | 8 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/WorkflowSamplesValidation.cs` | 6 | 5 |

</details>

<details><summary>コミット (1 件)</summary>

- `193697e` Fix AzureFunctions integration tests — set FUNCTIONS_WORKER_RUNTIME

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テスト設定の修正のみで、API 変更なし。Azure Functions ランタイム環境変数の設定により、テスト実行時の依存関係を明確化しました。

**既存利用者への影響**

ユーザーコード変更不要です。Azure Functions 統合を使用している場合、テスト実行環境で `FUNCTIONS_WORKER_RUNTIME` を適切に設定することで、信頼性の高いテスト実行が可能になります。

### [#6422](https://github.com/microsoft/agent-framework/pull/6422) — .NET: Align Foundry sample environment variables and credentials.

- 作者: alliscode / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +525 / -517
- マージ日時 (UTC): `2026-06-11 17:55:33`

**変更概要**

.NET サンプル集全体（100 ファイル以上）の環境変数と認証情報を Azure Foundry 向けに刷新しました。旧 AzureAIAgentsPersistent サンプルを削除し、統一された認証パターンと DefaultAzureCredential ガイダンスを実装。サンプルの実行性と保守性が大幅に向上しています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-dotnet.slnx` | 0 | 1 |
| `dotnet/eng/verify-samples/AgentsSamples.cs` | 0 | 13 |
| _... 他 98 件_ | | |

</details>

<details><summary>コミット (7 件)</summary>

- `3212b23` dotnet: refresh Foundry sample guidance
- `3d0bdc6` dotnet: rename Foundry sample env vars
- `803ff78` dotnet: remove persistent provider sample
- `2ae36fa` dotnet: drop SAMPLE_GUIDELINES.md from this PR
- `b2811ef` dotnet: add DefaultAzureCredential warning to remaining samples
- `6a8415a` dotnet: address PR review feedback
- `f5de670` Merge main into revive/foundry-sample-docs - resolve Hosted-Toolbox P…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

サンプルコードのリファクタリングで、API 変更なし。環境変数命名規則統一と認証方式の標準化により、サンプルの可読性と保守性を向上させました。

**既存利用者への影響**

既存コード変更不要です。.NET Foundry サンプルを参照する場合、新しい環境変数命名規則と DefaultAzureCredential パターンに従うことで、セキュアで保守性の高い実装が可能になります。

### [#6414](https://github.com/microsoft/agent-framework/pull/6414) — Python: Add tool approval middleware

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1868 / -15
- マージ日時 (UTC): `2026-06-11 17:55:33`

**変更概要**

Python に Tool Approval ミドルウェアを新規追加しました。エージェントが実行するツール呼び出しを承認フローで制御でき、危険な操作の事前確認が可能です。承認ルール、状態管理、予算制御など複数の運用パターンに対応した包括的な実装で、Agent Harness やスタンドアロン環境で利用可能です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 17 | 0 |
| `python/packages/core/agent_framework/__init__.py` | 16 | 0 |
| `python/packages/core/agent_framework/_harness/_tool_approval.py` | 632 | 0 |
| `python/packages/core/agent_framework/_tools.py` | 190 | 15 |
| `python/packages/core/tests/core/test_harness_tool_approval.py` | 817 | 0 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 4 | 0 |
| `python/samples/02-agents/tools/README.md` | 1 | 0 |
| `python/samples/02-agents/tools/tool_approval_middleware.py` | 191 | 0 |

</details>

<details><summary>コミット (8 件)</summary>

- `5728014` Add Python tool approval middleware
- `ef26934` Fix tool approval restored state handling
- `b842ac3` Gate hidden approvals on explicit approval responses
- `892fd83` Handle string inputs in approval replay scan
- `8eff921` Cover argument-scoped approval rules
- `61e72e7` Refine tool approval state and budgets
- `0c94695` Fix tool approval PR CI failures
- `fa17528` Revert DevUI Aspire README link change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい Tool Approval API `_tool_approval.py` と関連モデルを追加。既存の `_tools.py` に承認制御ロジックを統合し、Tool インタフェースを拡張しました。完全な下位互換性を保持。

**既存利用者への影響**

既存コード変更不要です。Tool Approval ミドルウェアはオプト機能で、必要に応じて Agent Harness または スタンドアロンで組み込み可能です。ツール実行の検証が必要な運用環境では新機能の導入で安全性が大幅に向上します。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6384 | .NET: Add LoopAgent capability for Harnesses | westey-m | <https://github.com/microsoft/agent-framework/pull/6384> |
| #6296 | Python: [Generated by SRE Agent] Fix MCP allowed_tools empty list handling | chetantoshniwal | <https://github.com/microsoft/agent-framework/pull/6296> |
| #6132 | .NET: fix: filter filesystem checkpoint index by session | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6132> |
| #5542 | .NET: Adds Valkey to chat message history - issue 5445 | MatthiasHowellYopp | <https://github.com/microsoft/agent-framework/pull/5542> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6489 | Python: Additional bug fix for declarative workflows | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6489> |
| PR | #6488 | Python: [Breaking] Refactor FileSkillsSource for depth-based discovery and predicate filters | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6488> |
| PR | #6487 | .NET: Scope argument-based standing approvals correctly in ToolApprovalAgent | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6487> |
| PR | #6485 | .NET samples: revive structural alignment changes | open | alliscode | <https://github.com/microsoft/agent-framework/pull/6485> |
| PR | #6481 | .NET: Set ApplicationName on CosmosClientOptions for UserAgent telemetry | open | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/6481> |
| PR | #6480 | Python: Fix ollama_chat_client.py sample: pass tools via options dict | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6480> |
| PR | #6476 | Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6476> |
| PR | #6474 | .NET: [BREAKING] Align FileAccess tools with Python; add directory discovery and recursive search | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6474> |
| PR | #6473 | Python: Improve PR template and breaking-change label automation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6473> |
| PR | #6471 | Python: Add opt-in AG-UI thread snapshot persistence and hydration | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6471> |
| PR | #6469 | Fix #6466: make workflow checkpoint TypeId version-insensitive | open | saikir1994 | <https://github.com/microsoft/agent-framework/pull/6469> |
| PR | #6483 | .NET: Migrate 01-get-started samples to Foundry as canonical default | closed | alliscode | <https://github.com/microsoft/agent-framework/pull/6483> |
| PR | #6482 | .NET: Add SAMPLE_GUIDELINES.md for .NET samples | closed | alliscode | <https://github.com/microsoft/agent-framework/pull/6482> |
| PR | #6472 | CI: Ignore all dotnet.microsoft.com links in markdown link check | closed | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6472> |
| Issue | #6486 | Python: .NET: Harden argument scoping for standing approval rules in ToolApprovalAgent | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6486> |
| Issue | #6484 | Python: Bump anthropic SDK version constraint in agent-framework-anthropic | open | pamelafox | <https://github.com/microsoft/agent-framework/issues/6484> |
| Issue | #6479 | .NET: [Bug]: Frontend tools break persisted chat history | open | kpobb1989 | <https://github.com/microsoft/agent-framework/issues/6479> |
| Issue | #6478 | Integrate Looping into HarnessAgent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6478> |
| Issue | #6477 | Python: Add hosted agent sample for agent harness | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6477> |
| Issue | #6475 | [Feature]: leverage sandboxes for skill resource execution | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6475> |
| Issue | #6470 | Python: document progressive tool exposure and tool-ordering enforcement | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6470> |
| Issue | #6447 | Python: Add Shell feature to harness agent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6447> |
| Issue | #6428 | [Feature]: Net: How to disable thinking when using the deepseek model? | closed | williamlzw | <https://github.com/microsoft/agent-framework/issues/6428> |
| Issue | #6402 | .NET: [CI] AzureFunctions SamplesValidation tests fail — func tools cannot detect worker runtime | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6402> |
| Issue | #6401 | .NET: [Bug]: missing method GetResponseClient | closed | massnonn | <https://github.com/microsoft/agent-framework/issues/6401> |
| Issue | #6385 | Python: [Bug]: Mixed Tool Batch Applies Approval Wrapper To All Tool Calls | closed | tschokokuki | <https://github.com/microsoft/agent-framework/issues/6385> |
| Issue | #6035 | HarnessAgent Loop until completion enforcement | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6035> |
| Issue | #5942 | .NET: [Bug]: FileSystemJsonCheckPointStore for Agent Workflow , RetrieveIndexAsync(SessionId) returns all checkpoint entries instead of filtering by SessionId | closed | Sachin-Nand | <https://github.com/microsoft/agent-framework/issues/5942> |
| Issue | #4732 | .NET: [Bug]: CopySessionConfig() hardcodes Streaming = true, ignoring SessionConfig.Streaming value | closed | greenie-msft | <https://github.com/microsoft/agent-framework/issues/4732> |
