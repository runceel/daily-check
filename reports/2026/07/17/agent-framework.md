# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 12 |
| オープン中の新規 PR     | 19 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 12 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | westey-m, rogerbarreto, moonbox3, eavanvalkenburg, TaoChenOSU, joslat |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7158](https://github.com/microsoft/agent-framework/pull/7158) — [BREAKING] Python: Ensure session isolation for FHA invocation impl （PR / open / TaoChenOSU）
  Python で FHA invocation を利用する開発者は、セッション分離の変更が既存の共有状態や再利用前提に与える影響を確認してください。
- **⚠ 破壊的変更** [#7156](https://github.com/microsoft/agent-framework/issues/7156) — .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used （Issue / open / VaclavK）
  .NET 利用者は 1.13 の skills 利用時にセッション更新が行われない問題の影響を確認し、該当する場合は修正版への更新を検討してください。
- **⚠ 破壊的変更** [#7120](https://github.com/microsoft/agent-framework/pull/7120) — Python: [BREAKING] Graduate create_harness_agent out of experimental （PR / open / westey-m）
  Python で実験版の create_harness_agent を使う利用者は、正式 API のシグネチャとインポート先を確認して移行してください。
- **⚠ 破壊的変更** [#7114](https://github.com/microsoft/agent-framework/pull/7114) — .NET: [BREAKING] Graduate FileMemoryProvider （PR / merged / westey-m）
  .NET で FileMemoryProvider を利用している場合は、実験版から正式版への API 変更を確認し、既存コードを更新してください。
- **⚠ 破壊的変更** [#7113](https://github.com/microsoft/agent-framework/pull/7113) — Python: [BREAKING] Graduate file memory provider out of experimental （PR / merged / westey-m）
  Python の file memory provider 利用者は、実験版解除に伴う公開 API とインポート先の変更を確認してください。
- **⚠ 破壊的変更** [#7111](https://github.com/microsoft/agent-framework/pull/7111) — .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests （PR / open / rogerbarreto）
  .NET のツール承認フロー利用者は、承認要求と応答の紐付け変更が既存の HITL 実装に与える影響を確認してください。
- **⚠ 破壊的変更** [#7107](https://github.com/microsoft/agent-framework/pull/7107) — .NET: [BREAKING] Graduate ToolApprovalAgent and add ToolAutoApprovalRuleContext （PR / merged / westey-m）
  .NET で ToolApprovalAgent を使う利用者は、正式化された API と自動承認ルールの導入に合わせてコードを確認してください。

## このリポジトリの要点

Agent Framework では、FileMemoryProvider と ToolApprovalAgent の .NET/Python API 正式化が進み、既存利用者に破壊的変更の確認が必要です。  
ChatClientAgentSession のコンストラクター改善や LocalCodeAct の検証強化など、実装の安定性を高める変更もマージされました。  
今期は特にメモリ、承認、セッション分離の API 境界を確認することが重要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7114](https://github.com/microsoft/agent-framework/pull/7114) — .NET: [BREAKING] Graduate FileMemoryProvider

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +0 / -13
- マージ日時 (UTC): `2026-07-16 09:54:45`

**変更概要**

FileMemoryProvider を実験段階から正式な .NET API として扱うため、公開型に残っていた実験用の注記や不要な定義を整理しました。  
FileListEntry、FileMemoryProvider、Options、State の各ファイルから計 13 行が削除されています。  
ファイルベースのメモリ機能を利用する .NET アプリケーションが影響範囲です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileListEntry.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryProvider.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryProviderOptions.cs` | 0 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryState.cs` | 0 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `b067e94` Graduate FileMemoryProvider

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: FileMemoryProvider 関連の公開型から実験版を示す定義・注記が削除され、正式 API としての扱いに変わりました。利用中の型名やオプションの差分をリリース後の API 仕様と照合してください。

**既存利用者への影響**

既存の基本利用は継続できる可能性がありますが、実験版の型やオプションに依存しているコードは正式 API へ更新が必要です。パッケージ更新前にコンパイルとメモリ永続化の回帰テストを実施してください。

### [#7113](https://github.com/microsoft/agent-framework/pull/7113) — Python: [BREAKING] Graduate file memory provider out of experimental

- 作者: westey-m / 状態: MERGED
- ラベル: `python` `breaking change`
- 変更行数: +4 / -5
- マージ日時 (UTC): `2026-07-15 23:00:49`

**変更概要**

Python の file memory provider を実験版の扱いから正式な API へ昇格しました。  
実装から実験段階に関する 2 行を整理し、対応するテストの期待値を更新しています。  
このプロバイダーを使う Python エージェントは、昇格後の公開名と import パスを確認してください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_harness/_file_memory.py` | 0 | 2 |
| `python/packages/core/tests/core/test_harness_file_memory.py` | 4 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `c6fe46b` Gradudate FileMemoryProvider

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: file memory provider の実験版扱いを解除するため、内部の公開境界とテスト期待値が変更されています。実験版の import や未安定な名前に依存する利用者は正式な import パスへ切り替えてください。

**既存利用者への影響**

実験版の import 名・設定名を直接参照している場合は移行が必要です。パッケージ更新後に import とファイルメモリの読み書きを確認してください。

### [#7107](https://github.com/microsoft/agent-framework/pull/7107) — .NET: [BREAKING] Graduate ToolApprovalAgent and add ToolAutoApprovalRuleContext

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +163 / -70
- マージ日時 (UTC): `2026-07-15 09:35:29`

**変更概要**

ToolApprovalAgent を実験段階から正式化し、ツールの自動承認判定に使う ToolAutoApprovalRuleContext を追加しました。  
承認要求、承認応答、エージェント設定、サンプルとテストを一貫した正式 API に更新しています。  
手動承認や自動承認を組み込む .NET 利用者が主な影響対象です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Step05_Loop/Program.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 4 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/AlwaysApproveToolApprovalResponseContent.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalAgent.cs` | 30 | 17 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalAgentBuilderExtensions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalAgentOptions.cs` | 4 | 7 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalRequestContentExtensions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalRule.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalState.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolAutoApprovalRuleContext.cs` | 54 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProvider.cs` | 4 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentSkillsProviderTests.cs` | 11 | 8 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileAccess/FileAccessProviderTests.cs` | 5 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/ToolApproval/ToolApprovalAgentTests.cs` | 48 | 10 |

</details>

<details><summary>コミット (2 件)</summary>

- `bbdd551` Graduate ToolApprovalAgent and introduce tool auto approval context
- `984dc36` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: ToolApprovalAgent と関連 builder/options、request/response 拡張の実験版要素が整理され、新しい ToolAutoApprovalRuleContext が追加されました。自動承認ルールはこのコンテキストを受け取る形へ更新してください。

**既存利用者への影響**

ToolApprovalAgent の実験版 API や旧承認応答型を利用しているコードは移行が必要です。承認要求と応答の対応、手動承認の回帰テストを行ってからパッケージを更新してください。

### [#7142](https://github.com/microsoft/agent-framework/pull/7142) — .NET: [Feature]: .NET Improve ChatClientAgentSession constructor

- 作者: feiyun0112 / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +28 / -1
- マージ日時 (UTC): `2026-07-16 15:21:51`

**変更概要**

ChatClientAgentSession のコンストラクターを改善し、セッション生成時の設定を扱いやすくしました。  
実装に加えてデシリアライズ時の不具合を再現するテストを追加し、初期化経路を検証しています。  
このセッション型を直接生成する .NET 利用者の利用性と互換性に関わる変更です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgentSession.cs` | 6 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ChatClientAgentSessionTests.cs` | 22 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `355a260` .NET: [Feature]: .NET Improve ChatClientAgentSession constructor
- `1fc69c3` Potential fix for pull request finding
- `add95b9` test: make deserialize test actually reproduce issue #7109

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

コンストラクターの初期化処理とテストが拡張され、デシリアライズ経路の再現テストが追加されました。タイトル上は破壊的変更ではなく、既存の生成コードは通常そのまま利用できます。

**既存利用者への影響**

通常は移行不要です。カスタムのセッション生成やシリアライズを実装している場合は、更新後にセッション初期化と復元を確認してください。

### [#7138](https://github.com/microsoft/agent-framework/pull/7138) — .NET: Fix LocalCodeAct validation and package checks

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +78 / -1
- マージ日時 (UTC): `2026-07-16 15:31:55`

**変更概要**

LocalCodeAct のバリデーションとパッケージ検査を修正し、エイリアスを含むコード実行構成の検証を強化しました。  
CI ワークフロー、Python バリデーター、.NET 統合テストを更新しています。  
LocalCodeAct を利用する開発者は、依存パッケージの検査結果と失敗時のエラー内容を確認しやすくなります。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-build-and-test.yml` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.LocalCodeAct/Resources/validator.py` | 33 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.LocalCodeAct.UnitTests/LocalExecuteCodeFunctionIntegrationTests.cs` | 44 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `b28e2a2` Fix LocalCodeAct validation and package checks
- `83c5114` Address LocalCodeAct alias review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

バリデーターの検査ロジックと統合テストが変更されましたが、公開 API のシグネチャ変更は記載されていません。依存パッケージの許可・検証条件が厳密になった点に注意してください。

**既存利用者への影響**

公開 API の移行は通常不要です。LocalCodeAct の独自パッケージ構成やエイリアスを使う場合は、更新後に検証を通過することを確認してください。

### [#7129](https://github.com/microsoft/agent-framework/pull/7129) — CI: resolve PR author in community team check

- 作者: rogerbarreto / 状態: MERGED
- ラベル: —
- 変更行数: +73 / -11
- マージ日時 (UTC): `2026-07-15 18:15:39`

**変更概要**

コミュニティチーム所属確認の CI が、PR 番号から投稿者を正しく解決できるように修正されました。  
チェック用スクリプトの判定処理を更新し、PR 番号を受け付けることを明確化するドキュメントとテストを追加しています。  
リポジトリのコントリビューター検証に関わる CI のみが影響対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/scripts/check_team_membership.js` | 22 | 9 |
| `.github/tests/test_check_team_membership.js` | 51 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `8fd16b7` CI: resolve PR author in community team check
- `a63468d` Docs: clarify issueNumber accepts PR numbers

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`.github/scripts/check_team_membership.js` の投稿者解決ロジックとテストが変更されました。アプリケーションの公開 API やランタイム API の変更はなく、CI 内部の挙動改善です。

**既存利用者への影響**

利用者側の移行は不要です。CI を自前に複製している場合のみ、PR 番号から投稿者を解決する処理の差分を取り込んでください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7128 | .NET: Preserve UTF-8 order in HeadTailBuffer | jstar0 | <https://github.com/microsoft/agent-framework/pull/7128> |
| #7123 | Fix message ordering in workflow-hosted agents | peibekwe | <https://github.com/microsoft/agent-framework/pull/7123> |
| #7096 | samples: add AgentMemory (Neo4j-agent memory reimplemented in NET ) shopping assistant sample | joslat | <https://github.com/microsoft/agent-framework/pull/7096> |
| #7081 | Harden manual integration test trust boundary | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7081> |
| #7029 | Python: Best effort to serialize tool def to Json for observability | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7029> |
| #7001 | Python: HITL respond-URL addressing from inside workflows | ahmedmuhsin | <https://github.com/microsoft/agent-framework/pull/7001> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7158 | [BREAKING] Python: Ensure session isolation for FHA invocation impl | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7158> |
| PR | #7155 | Python: forward GitHubCopilotOptions verbatim to create_session | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7155> |
| PR | #7153 | Python: Bump botocore from 1.43.45 to 1.43.49 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7153> |
| PR | #7152 | Python: Bump mypy from 2.2.0 to 2.3.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7152> |
| PR | #7151 | Python: Bump types-python-dateutil from 2.9.0.20260518 to 2.9.0.20260716 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7151> |
| PR | #7150 | Python: Bump azure-ai-projects from 2.2.0 to 2.3.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7150> |
| PR | #7149 | Python: Bump prek from 0.4.8 to 0.4.10 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7149> |
| PR | #7148 | Python: Bump mypy from 2.2.0 to 2.3.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7148> |
| PR | #7147 | Python: Bump ruff from 0.15.20 to 0.15.21 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7147> |
| PR | #7146 | Python: Bump ty from 0.0.55 to 0.0.60 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7146> |
| PR | #7145 | Python: Bump zuban from 0.8.2 to 0.9.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7145> |
| PR | #7144 | Python: Bump uv from 0.11.28 to 0.11.29 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7144> |
| PR | #7141 | Python: isolate hosted session snapshots | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7141> |
| PR | #7139 | .NET: Bump AGUI.Abstractions from 0.0.3 to 0.0.4 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7139> |
| PR | #7135 | Python: make FoundryToolbox.as_skills_provider() disable_caching effective | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7135> |
| PR | #7134 | Python: Add durable Foundry-hosted workflow recovery | open | alliscode | <https://github.com/microsoft/agent-framework/pull/7134> |
| PR | #7133 | Python: keep the approval response under service-side storage so a paused run resumes | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7133> |
| PR | #7130 | Python: extract keywords from non-English text for topic selection | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7130> |
| PR | #7127 | Python: Sanitize author_name for the Chat Completions message name field | open | itjuba | <https://github.com/microsoft/agent-framework/pull/7127> |
| PR | #7071 | .NET: Fix _CodeValidator os.* allow-list bypass for aliased imports (#7068) | closed | eajajhossain | <https://github.com/microsoft/agent-framework/pull/7071> |
| PR | #6896 | .NET: Align WorkflowOutputEvent streaming deserialization with SourceId to ExecutorId rename | closed | kshyju | <https://github.com/microsoft/agent-framework/pull/6896> |
| PR | #6775 | .NET: Fix DurableTask CustomStatus 16 KB overflow on multi-executor workflows | closed | kshyju | <https://github.com/microsoft/agent-framework/pull/6775> |
| PR | #6749 | .NET: Add support for `AddSwitch` in the durable workflow runner | closed | kshyju | <https://github.com/microsoft/agent-framework/pull/6749> |
| Issue | #7160 | Python: [Bug]: MCP sampling callback cannot return structured tool-use responses | open | SensorLock | <https://github.com/microsoft/agent-framework/issues/7160> |
| Issue | #7157 | Python: [Feature]: Support prompt cache breakpoints for GPT 5.6 models | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7157> |
| Issue | #7156 | .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used | open | VaclavK | <https://github.com/microsoft/agent-framework/issues/7156> |
| Issue | #7154 | Investigate extending GHCP Options | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7154> |
| Issue | #7143 | Python: [Bug]: Anthropic streaming double-counts token usage (message_start usage is summed with the cumulative message_delta usage) | open | ebarkhordar | <https://github.com/microsoft/agent-framework/issues/7143> |
| Issue | #7140 | Python: isolate hosted session snapshots for concurrent continuations | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7140> |
| Issue | #7137 | Python: [Bug]:  Hosted WorkflowAgent checkpoint is not restored after session compute recreation | open | statefb | <https://github.com/microsoft/agent-framework/issues/7137> |
| Issue | #7136 | .NET: Python: Support durable Foundry-hosted workflows | open | alliscode | <https://github.com/microsoft/agent-framework/issues/7136> |
| Issue | #7132 | [Feature]: Add a maf-skills repo so coding harness can use it to develop agents agains MAF. | open | saxenanurag | <https://github.com/microsoft/agent-framework/issues/7132> |
| Issue | #7131 | .NET: [Feature]: Leverage OpenAI WebSockets for Tool Calls | open | rwjdk | <https://github.com/microsoft/agent-framework/issues/7131> |
| Issue | #7126 | Python: [Bug]: agent display name is forwarded unsanitized as the Chat Completions message 'name' — any name with a space 400s every request | open | itjuba | <https://github.com/microsoft/agent-framework/issues/7126> |
| Issue | #7125 | Python: [Bug]: function_approval_response is dropped from the request under service-side storage, so an approval-paused run never resumes | open | itjuba | <https://github.com/microsoft/agent-framework/issues/7125> |
| Issue | #7112 | .NET: [Bug]: Microsoft.Agents.AI.Tools.Shell.HeadTailBuffer can reorder and silently drop UTF-8 runes at the head/tail boundary | closed | Lightczx | <https://github.com/microsoft/agent-framework/issues/7112> |
| Issue | #7109 | .NET: [Feature]: .NET Improve ChatClientAgentSession constructor | closed | Kumima | <https://github.com/microsoft/agent-framework/issues/7109> |
| Issue | #7088 | Add Auto-approval name collision warnings | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7088> |
| Issue | #7068 | Python: .NET: [Bug]: `_CodeValidator` does not enforce the documented `os.environ`/`os.path`-only policy for aliased imports | closed | AAtomical | <https://github.com/microsoft/agent-framework/issues/7068> |
| Issue | #6964 | Graduate/Release harness dependencies | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6964> |
| Issue | #6344 | .NET: [Bug]: AIContextProvider messages are automatically removed when using a Workflow-as-Agent | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/6344> |
| Issue | #5830 | .NET: [Question] [dotnet][workflows] [MessageHandler] partial Executor requires manual ConfigureProtocol (CS0534) | closed | toledo85 | <https://github.com/microsoft/agent-framework/issues/5830> |
| Issue | #5720 | .NET: Workflow Host-as-Agent can improperly reorder messages in history and when running non-streaming | closed | lokitoth | <https://github.com/microsoft/agent-framework/issues/5720> |
