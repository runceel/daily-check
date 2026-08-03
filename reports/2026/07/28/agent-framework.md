# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 7 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 10 |
| 新規 Issue              | 7 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | westey-m, PratikWayase, KXHXK, Copilot, hsusul, sricursion |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7347](https://github.com/microsoft/agent-framework/pull/7347) — [BREAKING] Python: Allow workflow checkpoint full replayability （PR / open / TaoChenOSU）
  チェックポイントを保存・復元する Python 利用者は、完全リプレイ可能化に伴う状態形式や再実行結果の互換性を確認し、マージ前に既存スナップショットで検証してください。

## このリポジトリの要点

Python ではチェックポイントの完全リプレイ、承認処理、関数呼び出しのストリーミングなど、実行状態の再現性と堅牢性を高める変更が続いています。  
.NET では declarative EditTable の状態保持と tool approval のセッション生成が改善され、ワークフロー実行の安定性が向上しました。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7309](https://github.com/microsoft/agent-framework/pull/7309) — Python: Add TodoProvider and AgentModeProvider samples

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +321 / -0
- マージ日時 (UTC): `2026-07-27 20:32:46`

**変更概要**

Python サンプルに、コンテキストプロバイダーを使った Todo 管理とエージェントモード切り替えの実装例を追加しました。  
README と 2 つのサンプルで、実行時にコンテキストを注入する構成を示しています。  
新規 API の導入ではなく学習用資料の拡充であり、サンプル利用者への影響が中心です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/02-agents/context_providers/README.md` | 14 | 0 |
| `python/samples/02-agents/context_providers/agent_mode_provider.py` | 180 | 0 |
| `python/samples/02-agents/context_providers/todo_provider.py` | 127 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `1c97069` Python: Add TodoProvider and AgentModeProvider context provider samples
- `27ad2d2` Python: Address review comments on AgentModeProvider sample

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開パッケージの API シグネチャ変更はありません。`TodoProvider` と `AgentModeProvider` はサンプル内のコンテキストプロバイダー実装として追加され、利用方法とレビュー対応が README に反映されています。

**既存利用者への影響**

既存アプリの移行は不要です。コンテキストプロバイダーの使い方を確認したい場合のみ、追加されたサンプルを参照してください。

### [#7333](https://github.com/microsoft/agent-framework/pull/7333) — Python: fix(python): handle callable class middleware safely in _determine_middleware_type (#6697)

- 作者: hsusul / 状態: MERGED
- ラベル: `python`
- 変更行数: +57 / -4
- マージ日時 (UTC): `2026-07-27 20:00:29`

**変更概要**

callable なクラスを middleware として渡した場合に、ミドルウェア種別の判定を安全に行えるよう修正しました。  
判定ロジックと型注釈付きテストを追加し、通常の関数・クラスインスタンス双方の扱いを検証しています。  
Python の middleware 構成を使うアプリで、起動時の誤判定や実行時エラーが減ります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_middleware.py` | 6 | 4 |
| `python/packages/core/tests/core/test_middleware_with_agent.py` | 51 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `1bee606` fix(python): handle callable class middleware safely in _determine_mi…
- `2d716dc` test(python): type-annotate test middleware lists to pass test-typing…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存の middleware 判定ヘルパーの内部処理を修正したもので、公開 API のシグネチャ変更や新しい抽象の追加はありません。テストでは middleware リストの型注釈も明確化されています。

**既存利用者への影響**

通常の middleware 利用者に移行作業は不要です。callable クラスを利用していたケースでは、更新後に型チェックと middleware の実行確認を推奨します。

### [#7324](https://github.com/microsoft/agent-framework/pull/7324) — .NET: Preserve table state after declarative EditTable Add

- 作者: KXHXK / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +85 / -18
- マージ日時 (UTC): `2026-07-27 18:45:40`

**変更概要**

Declarative EditTable の Add 操作後にテーブル状態が失われ、後続の編集が正しく適用されない問題を修正しました。  
通常版と V2 の executor を更新し、状態保持を確認する単体テストを追加しています。  
.NET の declarative workflow で複数回のテーブル編集を行う利用者が対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/EditTableExecutor.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/EditTableV2Executor.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/EditTableExecutorTest.cs` | 45 | 10 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/EditTableV2ExecutorTest.cs` | 38 | 6 |

</details>

<details><summary>コミット (1 件)</summary>

- `40aa32c` fix(dotnet): preserve table after EditTable add

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

executor の内部状態更新を修正し、公開 API のシグネチャ変更や新規抽象はありません。通常版・V2 の双方で Add 後のテーブル状態を検証するテストが追加されています。

**既存利用者への影響**

移行は不要です。Declarative EditTable を利用している場合は、更新後に Add に続く編集操作の結果を確認してください。

### [#7343](https://github.com/microsoft/agent-framework/pull/7343) — .NET: Add Microsoft.Agents.AI.LocalCodeAct to release solution filter

- 作者: Copilot / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +1 / -0
- マージ日時 (UTC): `2026-07-27 14:36:50`

**変更概要**

`Microsoft.Agents.AI.LocalCodeAct` をリリース対象ソリューションフィルターに追加しました。  
変更は release solution filter の 1 行だけで、パッケージ実装や実行時動作は変更していません。  
今後のリリース成果物に LocalCodeAct を含めるためのビルド構成更新です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-release.slnf` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `c188fc0` Initial plan
- `88c368d` Add Microsoft.Agents.AI.LocalCodeAct to release solution filter

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャや実装コードの変更はなく、リリース用 `.slnf` の包含対象だけが変わりました。破壊的変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。リリース成果物を検証する場合は、LocalCodeAct パッケージが含まれることだけ確認してください。

### [#7310](https://github.com/microsoft/agent-framework/pull/7310) — .NET: Create session for tool approval agent when none provided

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +170 / -1
- マージ日時 (UTC): `2026-07-27 11:20:32`

**変更概要**

tool approval agent にセッションが渡されていない場合、自動的にセッションを生成するよう .NET 実装を変更しました。  
新しいテストで、セッション未指定時の生成と既存セッション指定時の維持を検証しています。  
承認待ちツールを使うアプリの再開フローが、呼び出し側の事前準備に依存しにくくなります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalAgent.cs` | 12 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/ToolApproval/ToolApprovalAgentTests.cs` | 158 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `3ca93a4` Create session for tool approval agent when non-present

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存の tool approval agent の動作に、未指定時のセッション生成という既定処理を追加しました。公開シグネチャの変更や破壊的変更はなく、既存セッションは引き続き利用されます。

**既存利用者への影響**

移行は不要です。セッションを明示的に渡していない利用者は更新後に承認・再開フローを確認し、独自セッション管理がある場合は重複生成がないことを確認してください。

### [#7291](https://github.com/microsoft/agent-framework/pull/7291) — Python: Reject Windows junctions in FileSystemAgentFileStore

- 作者: sricursion / 状態: MERGED
- ラベル: `python`
- 変更行数: +103 / -20
- マージ日時 (UTC): `2026-07-27 10:50:56`

**変更概要**

`FileSystemAgentFileStore` のファイル列挙で Windows junction を受け入れないようにし、意図しないリンク経由のアクセスを防ぎます。  
ファイルアクセス判定と診断メッセージを整理し、junction を含むケースのテストを追加しました。  
Windows 上でファイルストアを利用するエージェントが対象で、通常のディレクトリ利用には影響しません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 39 | 13 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 64 | 7 |

</details>

<details><summary>コミット (3 件)</summary>

- `b064a5e` Python: reject file-store junctions during enumeration
- `1fc079f` Python: clarify file-store probe diagnostics
- `74706db` Merge branch 'main' into codex/fix-python-file-store-junctions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ファイルアクセスの内部検査とエラー診断を変更したもので、公開 API のシグネチャ変更はありません。junction は明示的に拒否されるため、リンク経由のファイルストア利用には実質的な動作変更があります。

**既存利用者への影響**

通常のファイルストア利用者に移行は不要です。Windows junction をルート配下に置いている場合は、実ディレクトリまたはサポートされるリンク構成へ変更してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7292 | Python: [Feature]: Support OpenAI instructions in Responses API | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7292> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7350 | Python: Improve python sample validation workflow | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7350> |
| PR | #7355 | Python: Forward function invocation kwargs through DevUI | open | hsusul | <https://github.com/microsoft/agent-framework/pull/7355> |
| PR | #7354 | Python: Clear stale service session on full-history replay | open | hsusul | <https://github.com/microsoft/agent-framework/pull/7354> |
| PR | #7353 | .NET:  Preserve table state across declarative EditTable operations  | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/7353> |
| PR | #7347 | [BREAKING] Python: Allow workflow checkpoint full replayability | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7347> |
| PR | #7352 | Python: Forward function_invocation_kwargs through DevUI to agent.run… | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7352> |
| PR | #7342 | Python: isolate dependency-bound validation | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7342> |
| PR | #7345 | Python: Harden function calling loop and approval replay | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7345> |
| PR | #7346 | Python: Add function_loop_max_iterations to create_harness_agent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7346> |
| PR | #7110 | Python: Fix duplicate arguments in declaration-only tool streaming | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/7110> |
| PR | #7334 | Python: Drop post-limit streamed function calls | closed | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7334> |
| PR | #7244 | Python: Preserve non-adjacent function call/result pairs during compaction | closed | jstar0 | <https://github.com/microsoft/agent-framework/pull/7244> |
| PR | #7316 | Python: fix(ag-ui): clean confirm_changes approval payloads in snapshot | closed | hsusul | <https://github.com/microsoft/agent-framework/pull/7316> |
| PR | #7091 | Python: Defer provider-injected tool approvals to harness in-run execution | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/7091> |
| PR | #7326 | Python: fix(python): preserve replayed approval calls | closed | HUAN2022A | <https://github.com/microsoft/agent-framework/pull/7326> |
| PR | #7133 | .NET: Python: keep the approval response under service-side storage so a paused run resumes | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7133> |
| PR | #7243 | Python: stream tool results for approval-resolution execution | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7243> |
| PR | #7317 | Python: fix(python): exclude unsupported ChatOptions in Ollama chat client (#7054) | closed | hsusul | <https://github.com/microsoft/agent-framework/pull/7317> |
| PR | #7341 | Python: isolate dependency upper-bound validation | closed | Oxygen56 | <https://github.com/microsoft/agent-framework/pull/7341> |
| Issue | #7351 | .NET: [Bug]:  Declarative EditTable operations replace itemsVariable with non-table values, preventing subsequent edits | open | peibekwe | <https://github.com/microsoft/agent-framework/issues/7351> |
| Issue | #7349 | Python: Reenable auto sample validation on a boader set of samples | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7349> |
| Issue | #7348 | Enable Automated Sample Validation and file issues on failure for P0 samples including FHA & Toolbox | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7348> |
| Issue | #7339 | Dependency validation failed: fastapi (agent-framework-ag-ui) | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/7339> |
| Issue | #7344 | Python: [Bug]: DevUI doesn't accept function_invocation_kwargs | open | arnabbiswas1 | <https://github.com/microsoft/agent-framework/issues/7344> |
| Issue | #7340 | Dependency validation failed: redis (agent-framework-redis) | open | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/7340> |
| Issue | #7338 | Python: [AGUI] BaseMessage message_id uniqueness semantics - per-thread or globally unique or something else? | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7338> |
| Issue | #5319 | Python: [Bug]: Trace include kwargs which may have sensitive data | closed | ashishmundra4001 | <https://github.com/microsoft/agent-framework/issues/5319> |
| Issue | #6971 | Python: [Bug]: Error when internal MAF observability packages serialize the OOTB Code Interpreter Tool | closed | ignawacc | <https://github.com/microsoft/agent-framework/issues/6971> |
| Issue | #6553 | Python: [Bug]: Foundry hosting emits oauth consent payload shape that does not trigger consent popup | closed | bcage29 | <https://github.com/microsoft/agent-framework/issues/6553> |
| Issue | #4811 | .NET: Failed to chat on Agent Playground for agent `AgentWithHostedMCP` — ErrorHTTP 400 (invalid_request_error: Unknown parameter: 'conversation') | closed | Menghua1 | <https://github.com/microsoft/agent-framework/issues/4811> |
| Issue | #5594 | Python: [Bug]: ResponsesHostServer has no turn suspension/resumption, so user must re-send message after OAuth consent | closed | cristofima | <https://github.com/microsoft/agent-framework/issues/5594> |
| Issue | #6697 | Python: [Bug]: Callable class middleware raises `AttributeError` instead of `MiddlewareException` when `__call__` has fewer than 2 parameters | closed | PreethamNoelP | <https://github.com/microsoft/agent-framework/issues/6697> |
| Issue | #7323 | .NET: [Bug]: Declarative EditTable/EditTableV2 Add replaces the items variable with the added record, so a second Add always fails | closed | crloz | <https://github.com/microsoft/agent-framework/issues/7323> |
| Issue | #6824 | .NET: [Bug]: Microsoft.Agents.AI.LocalCodeAct is missing a NuGet package | closed | naruto1227 | <https://github.com/microsoft/agent-framework/issues/6824> |
| Issue | #6301 | Agent Skills Release | closed | semenshi | <https://github.com/microsoft/agent-framework/issues/6301> |
| Issue | #7290 | Python: [Bug]: FileSystemAgentFileStore recursive search follows Windows junctions outside its configured root | closed | sricursion | <https://github.com/microsoft/agent-framework/issues/7290> |
| Issue | #7056 | Python: [Feature]: Support OpenAI `instructions` in Responses API | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7056> |
| Issue | #7115 | .NET: Fix FICC Toolcall adjacency bug | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7115> |
| Issue | #7325 | Python: [Bug]: agent-framework==1.9.0 cannot be installed due to dependency conflict with agent-framework-ag-ui | closed | Jomar77 | <https://github.com/microsoft/agent-framework/issues/7325> |
