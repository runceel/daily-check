# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-12 02:03:55 〜 2026-06-15 00:59:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 4 |
| クローズ Issue          | 5 |
| 主要コントリビューター  | eavanvalkenburg, westey-m, peibekwe, moonbox3, TheovanKraay |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6492](https://github.com/microsoft/agent-framework/pull/6492) — Python: [BREAKING] Simplify Python hosting core （PR / merged / eavanvalkenburg）
  Python hosting core を利用する実装は、削除された Entra hosting や channel API の整理に合わせて依存関係と初期化コードを見直す必要があります。
- **⚠ 破壊的変更** [#6489](https://github.com/microsoft/agent-framework/pull/6489) — Python: [Breaking] Additional bug fix for declarative workflows （PR / merged / peibekwe）
  declarative workflow の tool / MCP executor を使う Python ユーザーは、承認バインディングと object parsing の挙動差を回帰確認してください。
- **⚠ 破壊的変更** [#6488](https://github.com/microsoft/agent-framework/pull/6488) — Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters （PR / open / giles17）
  FileSkillsSource でファイル探索をカスタマイズしている Python 実装は、深さ指定と predicate filter への置き換えを準備する必要があります。
- **⚠ 破壊的変更** [#6476](https://github.com/microsoft/agent-framework/pull/6476) — Python: [BREAKING] Align FileAccess tools with .NET — directory discovery and recursive search （PR / open / westey-m）
  Python の FileAccess tools 利用者は、.NET と揃う directory discovery / recursive search の入力・戻り値変更に備えてツール呼び出しを確認してください。
- **⚠ 破壊的変更** [#6474](https://github.com/microsoft/agent-framework/pull/6474) — .NET: [BREAKING] Align FileAccess tools with Python; add directory discovery and recursive search （PR / merged / westey-m）
  .NET の FileAccess / FileStore を使う harness 実装は、新しいディレクトリ探索・再帰検索 API と既存のファイル列挙挙動の差分を確認してください。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `create_checkpoint` to workflow （PR / open / TaoChenOSU）
  Python workflow の checkpoint を直接扱う利用者は、`create_checkpoint` 追加に伴う workflow インターフェイス変更を追跡してください。
- **⚠ セキュリティ** [#6510](https://github.com/microsoft/agent-framework/pull/6510) — Python: Clarify identifier security guidance （PR / open / chetantoshniwal）
  Python SDK の identifier を外部入力から組み立てる実装は、更新されるセキュリティガイダンスに沿って検証・正規化方針を確認してください。

## このリポジトリの要点

Python hosting core の大幅整理と declarative workflow の修正、.NET FileAccess / FileStore の機能拡張が中心です。
特に [#6492](https://github.com/microsoft/agent-framework/pull/6492) と [#6474](https://github.com/microsoft/agent-framework/pull/6474) は **破壊的変更** として、hosting channel や FileAccess tools を組み込んでいる利用者の移行確認が必要です。
オープン PR では Python 側の FileAccess 整合、checkpoint API、identifier security guidance が続いており、次回も API 境界とセキュリティ指針の変化を重点的に見る必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6492](https://github.com/microsoft/agent-framework/pull/6492) — Python: [BREAKING] Simplify Python hosting core

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1224 / -11585
- マージ日時 (UTC): `2026-06-12 06:34:08`

**変更概要**

Python hosting core の channel 周辺を大幅に単純化する **破壊的変更** です。
hosting-activity-protocol / hosting-discord / hosting-invocations など複数 channel 実装とテストを整理し、仕様文書も ADR / specs として大きく更新されています。
`hosting-entra` パッケージは README、実装、テスト、pyproject まで削除されており、Entra hosting を直接利用していた構成への影響が大きい変更です。
目的は hosting core の責務を絞り、linking / multicast enhancements など新しい設計に寄せることにあります。

<details><summary>変更ファイル (50 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0027-hosting-channels.md` | 94 | 427 |
| `docs/decisions/0028-hosting-linking-multicast-enhancements.md` | 132 | 0 |
| `docs/specs/002-python-hosting-channels.md` | 180 | 2136 |
| `python/packages/hosting-activity-protocol/agent_framework_hosting_activity_protocol/_channel.py` | 41 | 163 |
| `python/packages/hosting-activity-protocol/tests/test_channel.py` | 32 | 139 |
| `python/packages/hosting-discord/agent_framework_hosting_discord/_channel.py` | 29 | 76 |
| `python/packages/hosting-discord/tests/discord/test_channel.py` | 84 | 121 |
| `python/packages/hosting-entra/LICENSE` | 0 | 21 |
| `python/packages/hosting-entra/README.md` | 0 | 39 |
| `python/packages/hosting-entra/agent_framework_hosting_entra/__init__.py` | 0 | 15 |
| `python/packages/hosting-entra/agent_framework_hosting_entra/_channel.py` | 0 | 505 |
| `python/packages/hosting-entra/pyproject.toml` | 0 | 108 |
| `python/packages/hosting-entra/tests/__init__.py` | 0 | 0 |
| `python/packages/hosting-entra/tests/test_channel.py` | 0 | 464 |
| `python/packages/hosting-invocations/agent_framework_hosting_invocations/_channel.py` | 19 | 45 |
| _... 他 35 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `5910411` Simplify Python hosting core

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: channel 実装の内部 API と仕様が整理され、`hosting-entra` はパッケージ単位で削除されています。
`_channel.py` と関連テストの大規模削除・置換から、既存の channel 初期化、linking、activity protocol 連携は旧 API 前提では動かない可能性があります。
ADR 0028 が追加され、今後の hosting は linking / multicast enhancements を前提にした構成へ寄せられます。

**既存利用者への影響**

Python hosting channel を拡張・直接利用している場合は移行が必要です。
特に Entra hosting 依存、旧 channel API、activity protocol のカスタム連携を持つコードは、削除されたパッケージと新仕様に合わせて置き換えてください。

### [#6489](https://github.com/microsoft/agent-framework/pull/6489) — Python: [Breaking] Additional bug fix for declarative workflows

- 作者: peibekwe / 状態: MERGED
- ラベル: `python`
- 変更行数: +601 / -303
- マージ日時 (UTC): `2026-06-12 17:02:08`

**変更概要**

Python declarative workflows の追加バグ修正で、declarative object parsing と tool / MCP executor 周辺の挙動を修正しています。
`_executors_mcp.py` と `_executors_tools.py` の実装が削られ、承認バインディング用のテストが大幅に追加されました。
Function tool executor と MCP tool executor の既存テストも更新されており、declarative workflow で tool approval や MCP 呼び出しを使うケースが主な影響範囲です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/declarative/agent_framework_declarative/_workflows/__init__.py` | 0 | 4 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_executors_mcp.py` | 51 | 116 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_executors_tools.py` | 12 | 65 |
| `python/packages/declarative/tests/test_declarative_approval_binding.py` | 528 | 0 |
| `python/packages/declarative/tests/test_function_tool_executor.py` | 2 | 79 |
| `python/packages/declarative/tests/test_invoke_mcp_tool_executor.py` | 6 | 39 |
| `python/samples/03-workflows/declarative/invoke_mcp_tool/main.py` | 2 | 0 |

</details>

<details><summary>コミット (10 件)</summary>

- `564259a` Fix declarative object parsing bug
- `3498f9d` Remove unnecessary comment
- `c0ea099` Address PR comments
- `4b0aeb7` Address PR comments.
- `d83bc07` Fix CI failures.
- `db2c576` Merge branch 'main' into peibekwe/declarative-bugfix-python-new
- `0ade298` declarative action approval bugfix
- `dd98053` Merge branch 'main' into peibekwe/declarative-bugfix-python-new
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: declarative workflow の executor 実装と公開初期化 (`_workflows/__init__.py`) が整理され、object parsing と approval binding の期待値が変わっています。
新規抽象の追加というより、既存 executor の責務削減とテストでの振る舞い固定が中心です。
MCP tool invocation sample も更新されているため、サンプル通りの宣言形式を使う構成では動作確認が必要です。

**既存利用者への影響**

declarative workflows で approval binding、function tool executor、MCP tool executor を使う Python 利用者は回帰テストが必要です。
旧挙動に依存した object parsing や承認処理がある場合は、更新後のテスト期待値に合わせて調整してください。

### [#6474](https://github.com/microsoft/agent-framework/pull/6474) — .NET: [BREAKING] Align FileAccess tools with Python; add directory discovery and recursive search

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +685 / -72
- マージ日時 (UTC): `2026-06-12 14:56:04`

**変更概要**

.NET の FileAccess tools を Python 側の機能に揃え、ディレクトリ探索と再帰検索を追加する **破壊的変更** です。
`FileAccessProvider`、`AgentFileStore`、`FileSystemAgentFileStore`、`InMemoryAgentFileStore` が更新され、ファイルだけでなくディレクトリを扱う探索機能が強化されています。
関連する harness sample と FileStore / FileAccess の単体テストも広く更新され、ツールから見えるファイルシステム操作の範囲が変わります。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/Observers/PlanningResponse.cs` | 8 | 1 |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/Program.cs` | 3 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 50 | 20 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryProvider.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/AgentFileStore.cs` | 20 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileSystemAgentFileStore.cs` | 77 | 15 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/InMemoryAgentFileStore.cs` | 43 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileAccess/FileAccessProviderTests.cs` | 194 | 24 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileStore/FileSystemAgentFileStoreTests.cs` | 175 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileStore/InMemoryAgentFileStoreTests.cs` | 114 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `e0b510d` Align FileAccess with python and improve functionality
- `3c33a79` Addressing PR comments
- `d4900f8` Merge branch 'main' into net-file-access-align

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: FileAccess / FileStore の API と戻り値が、ディレクトリ discovery と recursive search を扱える形に拡張されています。
`FileSystemAgentFileStore` と `InMemoryAgentFileStore` にディレクトリ探索を支える実装・テストが追加され、既存のファイル列挙前提の呼び出しは結果セットやエラー条件が変わる可能性があります。
Python と .NET の FileAccess tools の整合を取る変更であり、クロス SDK の挙動差は減る一方、旧 .NET 専用挙動への依存は見直し対象です。

**既存利用者への影響**

.NET harness で FileAccess / FileStore を直接呼ぶ実装は、ディレクトリを含む結果や再帰検索オプションを考慮したテスト更新が必要です。
カスタム FileStore 実装がある場合は、新しい探索機能に対応しているか確認してください。

### [#6499](https://github.com/microsoft/agent-framework/pull/6499) — .NET: Only use the output from the last message for structured output

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +30 / -7
- マージ日時 (UTC): `2026-06-12 16:00:55`

**変更概要**

.NET harness console の structured output で、最後のメッセージだけを出力源として扱うように修正しています。
対象は `PlanningOutputObserver.cs` のみで、複数メッセージがあるときに過去メッセージの内容が structured output に混ざる問題を抑える変更です。
サンプル / harness の観測ロジックに閉じた修正で、コア API 全体への影響は限定的です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/Observers/PlanningOutputObserver.cs` | 30 | 7 |

</details>

<details><summary>コミット (6 件)</summary>

- `a10ee5a` Only use the output from the last message for structured output
- `801a8e2` Address PR comments
- `c51fc24` Address PR comment
- `dc91298` Merge branch 'main' into harness-console-structuredoutput-fix
- `70409fa` Address PR comments
- `be0c7f2` Merge branch 'harness-console-structuredoutput-fix' of https://github…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更や新規抽象は確認できません。
`PlanningOutputObserver` の出力選択ロジックを変更し、structured output 生成時に最新メッセージの内容だけを見るようにした挙動修正です。

**既存利用者への影響**

通常の SDK 利用者に移行作業は不要です。
harness console の structured output をテストで固定している場合は、期待値が最後のメッセージ基準に変わる点だけ確認してください。

### [#6497](https://github.com/microsoft/agent-framework/pull/6497) — .NET: Updating MessagePack to latest version

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +1 / -0
- マージ日時 (UTC): `2026-06-12 14:09:12`

**変更概要**

.NET 側の MessagePack 依存を最新バージョンへ更新するメンテナンス PR です。
変更は `Directory.Packages.props` の Central Package Management 設定に限定され、直接参照ではなく推移的な管理に寄せる調整も含まれています。
機能追加ではありませんが、シリアライズ関連の依存更新としてビルド・互換性確認の対象になります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `6c3a477` Updating MessagePack to latest version
- `90999c1` Remove MessagePack from package directly, since CentralPackageTransit…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。
Central Package Management 上の MessagePack バージョン更新が主で、コミットではパッケージを個別参照から外し、推移的な管理に合わせる整理が行われています。

**既存利用者への影響**

通常の利用コードに移行作業は不要です。
MessagePack のバージョン差に敏感なカスタムシリアライズやロックファイルを持つ環境では、復元結果と互換性テストを確認してください。

### [#6481](https://github.com/microsoft/agent-framework/pull/6481) — .NET: Set ApplicationName on CosmosClientOptions for UserAgent telemetry

- 作者: TheovanKraay / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +165 / -8
- マージ日時 (UTC): `2026-06-12 16:47:16`

**変更概要**

.NET の Cosmos NoSQL provider で、`CosmosClientOptions.ApplicationName` に agent framework 側のアプリケーション名を設定する変更です。
`CosmosChatHistoryProvider` と `CosmosCheckpointStore` のオプション生成が整理され、共通 helper と単体テストが追加されました。
目的は User-Agent telemetry に利用元情報を載せ、Cosmos DB 側での診断・利用状況把握をしやすくすることです。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.CosmosNoSql/CosmosChatHistoryProvider.cs` | 4 | 2 |
| `dotnet/src/Microsoft.Agents.AI.CosmosNoSql/CosmosCheckpointStore.cs` | 6 | 6 |
| `dotnet/src/Microsoft.Agents.AI.CosmosNoSql/CosmosOptionsHelper.cs` | 80 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.CosmosNoSql.UnitTests/CosmosOptionsHelperTests.cs` | 75 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `70e978e` Set ApplicationName on CosmosClientOptions for UserAgent telemetry
- `ff4e032` Set ApplicationName on CosmosClientOptions for UserAgent telemetry

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の破壊的変更はありません。
`CosmosOptionsHelper` が新設され、ChatHistory と CheckpointStore の Cosmos client options 生成時に `ApplicationName` を一貫して設定する内部抽象が追加されています。

**既存利用者への影響**

通常の利用者に移行作業は不要です。
Cosmos DB の User-Agent や telemetry を監視している環境では、ApplicationName 付きの識別子が記録されるようになる点を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6471 | Python: Add opt-in AG-UI thread snapshot persistence and hydration | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6471> |
| #6306 | Python: add agent-framework-hosting-a2a channel | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6306> |
| #6305 | Python: add agent-framework-hosting-mcp channel | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6305> |
| #6174 | Python: Add AgentLoopMiddleware for re-running agents in a loop | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6174> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6512 | Python: preserve tool span context for parallel calls | open | 2830500285 | <https://github.com/microsoft/agent-framework/pull/6512> |
| PR | #6510 | Python: Clarify identifier security guidance | open | chetantoshniwal | <https://github.com/microsoft/agent-framework/pull/6510> |
| PR | #6507 | Python: Defensively strip pickle markers on internal deserialize paths | open | BiswajeetRay7 | <https://github.com/microsoft/agent-framework/pull/6507> |
| PR | #6506 | docs: fix typo in agent run response decision | open | meichuanyi | <https://github.com/microsoft/agent-framework/pull/6506> |
| PR | #6505 | .NET: Add AIContextProvider message event and fix internal agent issue | open | XiongHaoTrigger | <https://github.com/microsoft/agent-framework/pull/6505> |
| PR | #6504 | Python: pass Ollama sample tools through options | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6504> |
| PR | #6503 | Python: Build(deps): Bump esbuild, @tailwindcss/vite, @vitejs/plugin-react and vite in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6503> |
| PR | #6502 | Python: Foundry hosted agent responses emit failed events | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6502> |
| PR | #6501 | Python: Build(deps): Bump esbuild, @vitejs/plugin-react and vite in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6501> |
| PR | #6500 | docs: ADR-0027 feature-usage bitmask in the User-Agent | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6500> |
| PR | #6498 | .NET: Allow custom argument marshaling for skill scripts | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6498> |
| PR | #6496 | .NET: docs: clarify chat client pipeline order as outer to inner | open | iangithub | <https://github.com/microsoft/agent-framework/pull/6496> |
| PR | #6494 | .NET: A2UI (Agent-to-UI) toolkit, adapter, and AG-UI streaming | open | ranst91 | <https://github.com/microsoft/agent-framework/pull/6494> |
| PR | #6493 | Python: Fix Python OTel usage detail attributes | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6493> |
| PR | #6491 | .NET: fix fan-in barrier checkpoint state | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6491> |
| PR | #6194 | Python: include all usage detail fields in OTEL span attributes (fixes #5511) | closed | hanhan761 | <https://github.com/microsoft/agent-framework/pull/6194> |
| PR | #6059 | .NET: fix: keep injected messages in function loop history | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6059> |
| Issue | #6511 | .NET: [Bug]: Tool Call Error in AGUI Mapping (WorkflowAsAgent with Session) 📌 Description | open | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/6511> |
| Issue | #6509 | .NET: [Bug]: An internal server error occurred on Microsoft.Agents.AI.Foundry.Hosting `1.10.0-preview.260610.1` | open | tsubakimoto | <https://github.com/microsoft/agent-framework/issues/6509> |
| Issue | #6508 | Python: [Bug]: Missing workflows content and example code for Python documentation | open | wigging | <https://github.com/microsoft/agent-framework/issues/6508> |
| Issue | #6495 | Python: [Bug]: ChatMessage NOT available in agent_framework v1.8.1 | closed | nishantguvvada | <https://github.com/microsoft/agent-framework/issues/6495> |
| Issue | #5512 | Python: [Bug]: MCP tool spans mis-parented | closed | juliays | <https://github.com/microsoft/agent-framework/issues/5512> |
| Issue | #4945 | .NET: [Bug]: Unable to get Session chat history in work flow agent | closed | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/4945> |
| Issue | #4431 | .NET: [Bug]: FileAgentSkillLoader.ExtractResourcePaths expect a rigid syntax as follows [text](path) | closed | rdiazconcha | <https://github.com/microsoft/agent-framework/issues/4431> |
| Issue | #2458 | Python: sync AG-UI conversation history from backend | closed | BnnaFish | <https://github.com/microsoft/agent-framework/issues/2458> |
