# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-23 06:00:53 〜 2026-06-25 00:23:12 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 25 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 11 |
| 新規 Issue              | 18 |
| クローズ Issue          | 22 |
| 主要コントリビューター  | SergeyMenshykh, eavanvalkenburg, rogerbarreto, alliscode, peibekwe, TaoChenOSU |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除してよいです。 -->
- **⚠ 破壊的変更** [#6696](https://github.com/microsoft/agent-framework/pull/6696) — Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows （PR / open / ahmedmuhsin）
  Python のワークフロー実装者とホスティング統合側は、マルチワークフロー構成とサブワークフローの挙動を確認しておく必要があります。
- **⚠ 破壊的変更** [#6631](https://github.com/microsoft/agent-framework/pull/6631) — .NET: [BREAKING] Support archive-type skills in AgentMcpSkillsSource （PR / merged / SergeyMenshykh）
  .NET で archive 形式の skill を使う実装は、既存の skill ローダーやカスタム読み込みロジックを確認してください。
- **⚠ 破壊的変更** [#6599](https://github.com/microsoft/agent-framework/pull/6599) — Python: [BREAKING] Require approval for file-access tools with read-only auto-approval （PR / merged / westey-m）
  Python harness を使う環境では、読み取り専用でもファイルアクセスに承認フローが入るため、既存の自動承認設定を見直す必要があります。
- **⚠ 破壊的変更** [#6488](https://github.com/microsoft/agent-framework/pull/6488) — Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters （PR / merged / giles17）
  `FileSkillsSource` を利用する Python 実装は、深さベースの探索とフィルター条件の挙動が変わるため、期待する skill 検出結果を再確認してください。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `reset` to workflow （PR / closed / TaoChenOSU）
  Python のワークフロー実装に `reset` を組み込んでいる場合は、ライフサイクルの差分を確認して互換性を見直すとよいでしょう。

## このリポジトリの要点

この期間の agent-framework では、.NET / Python の両方で skill 検出とツール権限の扱いが大きく変わっています。特に archive ベースの skill 読み込み、ファイルアクセス承認、`FileSkillsSource` の探索ルール変更が注目点です。これらは既存実装の互換性に影響しやすいため、index では「破壊的変更を伴う実装変更が進んでいる」点を強調するとよいでしょう。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6631](https://github.com/microsoft/agent-framework/pull/6631) — .NET: [BREAKING] Support archive-type skills in AgentMcpSkillsSource

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET` `breaking change` `skills`
- 変更行数: +1924 / -79
- マージ日時 (UTC): `2026-06-24 12:12:09`

**変更概要**

この PR は、.NET 側の MCP skill ソースに archive 形式の skill を読み込める経路を追加し、既存のファイルベースの skill 読み込みと併用できるようにします。新しいローダーと archive 抽出機構を導入することで、skill をディレクトリ単位ではなく圧縮アーカイブとして配布しやすくなります。変更の中心は skill 読み込みパイプラインの拡張で、既存の file-based ルートに依存している実装は動作確認が必要です。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 128 | 58 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSourceOptions.cs` | 95 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentSkillsProviderBuilderMcpExtensions.cs` | 3 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/AgentMcpSkillArchiveExtractor.cs` | 286 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/ArchiveEntryLoader.cs` | 403 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/ArchiveFormat.cs` | 21 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/IMcpSkillEntryLoader.cs` | 35 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/Loaders/SkillMdEntryLoader.cs` | 80 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderBuilder.cs` | 14 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/File/AgentFileSkillsSource.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsSourceArchiveTests.cs` | 839 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsSourceTests.cs` | 18 | 17 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentSkillsProviderBuilderTests.cs` | 1 | 1 |

</details>

<details><summary>コミット (8 件)</summary>

- `ba32a88` NET: Support archive-type skills in AgentMcpSkillsSource
- `ee8ea35` Fix CS0121 ambiguity in UseSource null test
- `60d33d1` Address PR review: fix misleading comment and catch UnauthorizedAcces…
- `163fedb` Decouple shared refresh from per-caller cancellation
- `45deb9c` Fix file encoding: add UTF-8 BOM to archive tests
- `0a8cdef` Fix file encoding: add UTF-8 BOM to ArchiveFormat.cs
- `943527b` Clarify pruning doc: covers non-actionable entries too
- `bf1605c` Add branch-coverage tests and drop [Experimental] attribute

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR では、skill の読み込み処理が archive を扱うための新しい抽象層に置き換わっており、`AgentMcpSkillsSource` からの読み込み経路がより明示的になっています。見た目上は builder 側の API 変更ではなく、内部ローダー構成の拡張ですが、旧来のファイルベース前提に依存したカスタム実装は挙動差分を確認する必要があります。⚠ 破壊的変更としては、archive 形式を前提にした読み込みが増えたことで、従来のディレクトリベース想定に依存する実装が見落とされる可能性があります。

**既存利用者への影響**

単純なファイルベースの skill 利用者であれば移行はほぼ不要ですが、カスタムの skill ローダーや検索ロジックを持つ場合は、archive からの読み込みでも期待どおり動くか確認してください。

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +271 / -66
- マージ日時 (UTC): `2026-06-23 10:31:22`

**変更概要**

この PR は、Python の harness でファイルアクセスツールに承認フローを必須化し、読み取り専用の auto-approval でも安全側に寄せる変更です。これにより、ファイル入出力を伴うツール実行が意図せず広く許可されることを防ぎ、セキュリティ運用を明示しやすくなります。サンプルやドキュメントも更新されており、導入後は承認ポリシーの見直しが必要です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 138 | 17 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 64 | 28 |
| `python/samples/02-agents/context_providers/file_access_data_processing/data_processing.py` | 14 | 2 |
| `python/samples/02-agents/harness/README.md` | 23 | 2 |
| `python/samples/02-agents/harness/harness_data_processing.py` | 31 | 16 |

</details>

<details><summary>コミット (9 件)</summary>

- `be9c340` Require approvals for file-access and expose auto approval funcs for it
- `daf3277` Scope file-access auto-approval rules to local tools; fix base-Agent …
- `e79ac38` Clean up comments
- `c34aba1` Merge branch 'main' into python-harness-file-access-approval
- `07b3a0c` Merge branch 'main' into python-harness-file-access-approval
- `437fff7` Update sample after merge
- `3f926a3` Merge branch 'main' into python-harness-file-access-approval
- `5a343ce` Merge branch 'main' into python-harness-file-access-approval
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更は、ファイルアクセスツールの承認判定を harness 層に閉じ込める形で導入されており、従来の auto-approval ルールをより厳格に再定義しています。公開 API のシグネチャ変更というより、実行時の挙動が変わる点が主な変更であり、既存のスクリプトやサンプルは承認フローとの整合性を再確認する必要があります。⚠ 破壊的変更としては、読み取り専用でも承認なしで通っていた前提が通らなくなる点です。

**既存利用者への影響**

Python harness を使っていた環境では、ファイルアクセス操作に対する承認方針を明示的に設定し直す必要があります。自動承認に依存していたワークフローは、ユーザー承認または別のポリシー設定に切り替える必要があるでしょう。

- 作者: giles17 / 状態: MERGED
- ラベル: `python` `breaking change`
- 変更行数: +570 / -457
- マージ日時 (UTC): `2026-06-24 21:55:41`

**変更概要**

この PR は、Python の `FileSkillsSource` を深さベースの探索と述語フィルターに合わせて再構成し、skill 検出のルールをより明示的にしました。ディレクトリの再帰深さやフィルター条件を制御しやすくすることで、巨大な skill ツリーでも必要な skill だけを取り出しやすくなります。既存の探索ロジックに依存していた実装は、検索結果が変わる可能性があります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_skills.py` | 294 | 258 |
| `python/packages/core/tests/core/test_skills.py` | 276 | 199 |

</details>

<details><summary>コミット (7 件)</summary>

- `ac5de85` Python: [Breaking] Refactor FileSkillsSource for depth-based discover…
- `641c8fd` Address PR feedback: clarify depth constants and skip nested skill di…
- `9532465` Merge branch 'main' into giles17/refactor-file-skills-depth-based-dis…
- `433c4f2` Merge branch 'main' into giles17/refactor-file-skills-depth-based-dis…
- `6c311f0` Remove __slots__ from FileSkillFilterContext and add type-ignore comm…
- `bb46ef0` Simplify filter predicates: remove FileSkillFilterContext, use Callab…
- `07a7938` Use DEFAULT_SEARCH_DEPTH as default argument directly

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR では、`FileSkillsSource` の探索方法を深さと述語に基づく形へと整理し、旧来のフィルター文脈を廃してシンプルな条件式へ寄せています。公開クラス名は維持されていますが、探索戦略そのものが変わるため、カスタム filter や深い階層構造に依存する実装は再確認が必要です。⚠ 破壊的変更として、既存の検索結果が変わる可能性があります。

**既存利用者への影響**

`FileSkillsSource` を使っていて、カスタムフィルターやネストした skill ディレクトリに依存している場合は、期待する skill が見つかるかをテストしておくとよいでしょう。移行作業自体は大きくないものの、探索ルールの変更は影響が出やすいです。

- 作者: alliscode / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -0
- マージ日時 (UTC): `2026-06-24 22:18:59`

**変更概要**

この PR は、Foundry のサンプル検証ワークフローに必要な環境変数を追加して、サンプル実行時に必要な接続情報を確実に渡せるようにします。変更内容は CI / サンプル検証の設定寄りで、ランタイム API そのものには手を入れていません。Foundry ベースのサンプルを検証する CI 環境での運用性が上がる内容です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-verify-samples.yml` | 3 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `aa8d57e` Add Foundry project environment variables

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR は、ランタイム API そのものではなく、Foundry サンプル検証の実行環境に関する設定追加です。追加された環境変数は、ワークフローの中でサンプル実行に必要な接続情報を取り出しやすくするためのもので、既存の API 体系には新たな抽象を導入していません。

**既存利用者への影響**

通常の利用者にとっては移行作業は不要で、CI やサンプル検証の運用を改善するための変更です。Foundry サンプルを自前のワークフローで回している場合は、必要に応じて環境変数の扱いを確認するとよいでしょう。

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +209 / -26
- マージ日時 (UTC): `2026-06-24 19:07:41`

**変更概要**

この PR は、ホステッドエージェントのセッション保存先を `$HOME` 配下に固定することで、ファイルシステムのルート権限や配置差異によるクラッシュを防ぎます。セッションストアの初期化処理を堅牢化し、ホスティング環境での再現性を高める修正です。既存の API 影響はなく、安定性向上が主な狙いです。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FileSystemAgentSessionStore.cs` | 106 | 22 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests/ToolCallingHostedAgentTests.cs` | 4 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/FileSystemAgentSessionStoreTests.cs` | 99 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `638dc59` .NET: Fix hosted agent crash after tool call by rooting session store…
- `f1c8cab` .NET: Harden hosted session store against a filesystem-root HOME

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR では、ホステッドエージェント用のセッションストア実装が `$HOME` を起点に解決されるように修正され、ファイルシステムのルート差異に起因する不安定性が抑えられています。公開 API はそのまま維持されており、内部の状態保存ロジックが改善されている点が本質です。⚠ 破壊的変更は見当たらず、運用上の安定性向上が中心です。

**既存利用者への影響**

ホステッドエージェントでセッション保存に問題が出ていた環境では、今回の修正で改善する見込みです。特別な移行作業は不要で、既存コードのまま恩恵を受けられます。

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `mcp` `foundry`
- 変更行数: +142 / -2
- マージ日時 (UTC): `2026-06-24 12:55:58`

**変更概要**

この PR は、.NET Foundry 側の `CreateMcpTool` API に `projectConnectionId` を受け取るオーバーロードを追加し、特定のプロジェクト接続先へツールを紐づけやすくします。Foundry 上で複数接続先を扱う実装では、より明示的な構成が可能になります。既存の呼び出し方は維持されるため、移行は任意です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/ModelContextProtocol/FoundryAgent_Hosted_MCP/Program.cs` | 10 | 0 |
| `dotnet/samples/02-agents/ModelContextProtocol/FoundryAgent_Hosted_MCP/README.md` | 21 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/FoundryAITool.cs` | 18 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.UnitTests/FoundryAIToolTests.cs` | 93 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `337de33` .NET Foundry: add CreateMcpTool projectConnectionId overload
- `c478e68` Fold projectConnectionId into existing CreateMcpTool overload

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR では、既存の `CreateMcpTool` ルートに `projectConnectionId` を受け取る追加オーバーロードが導入され、Foundry での接続先指定がより明示的になりました。既存の API との互換性は保たれており、追加の抽象はなくても利用できます。⚠ 破壊的変更はなく、既存実装への影響は限定的です。

**既存利用者への影響**

既存コードはそのまま動作し、必要に応じて新しいオーバーロードを選んで利用できます。Foundry の複数接続先を使い分ける実装では、この追加により設定がしやすくなります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6694 | Python: Explicitly emit available_resources and available_scripts in skill content | giles17 | <https://github.com/microsoft/agent-framework/pull/6694> |
| #6693 | .NET/Python: Purview: prefer token principal for user identity | taisirhassan | <https://github.com/microsoft/agent-framework/pull/6693> |
| #6691 | Python: Add load_dotenv to get-started samples and fix chat_response_… | amit12cool | <https://github.com/microsoft/agent-framework/pull/6691> |
| #6690 | .NET: Get date suffix up to date with release date for dotnet release 1.11.0 | peibekwe | <https://github.com/microsoft/agent-framework/pull/6690> |
| #6687 | .NET: Replace the symlink index entries  with regular file entries | peibekwe | <https://github.com/microsoft/agent-framework/pull/6687> |
| #6686 | .NET: Fix SearchDirectoriesForSkills to stop recursing after finding SKILL.md | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6686> |
| #6680 | .NET: Add IncludeDetailedErrors option for skill script execution | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6680> |
| #6679 | Add ADR 0029: Skills over MCP implementation design options | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6679> |
| #6672 | .NET: Explicitly emit available_resources and available_scripts in skill content | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6672> |
| #6665 | Python: track dependency maintenance PR creation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6665> |
| #6656 | Python: Fix MCP metadata and tool name handling | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6656> |
| #6640 | Python: surface cache and reasoning token counts for the Bedrock and Gemini connectors | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6640> |
| #6635 | .NET: Change A2A default session store to NoopAgentSessionStore | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6635> |
| #6634 | Python: Add MCP as a hard dep in Foundry Hosting | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6634> |
| #6630 | docs: Add Python session identity ADR | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6630> |
| #6624 | .NET: Add sample for per-run refreshable MCP authentication headers | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6624> |
| #6580 | Python: Add hosting core and Responses channel | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6580> |
| #6557 | .NET: .NET samples: migrate coding samples to Foundry-first AIProjectClient | alliscode | <https://github.com/microsoft/agent-framework/pull/6557> |
| #6556 | Python: Align serialized tool format to OTel GenAI tool def format | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6556> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6719 | Python: Add agent-framework-azure-cosmos-memory context provider | open | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/6719> |
| PR | #6718 | .NET: Foundry hosted-agent toolbox OAuth consent support | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6718> |
| PR | #6717 | Python: create_harness_agent skills_paths accepts str \| Path \| Sequence[str \| Path] \| None | open | Copilot | <https://github.com/microsoft/agent-framework/pull/6717> |
| PR | #6713 | Python: Update FHA with toolbox sample with more auth methods | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6713> |
| PR | #6712 | Python: Fix Hyperlight CodeAct span parenting | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6712> |
| PR | #6709 | Python: Preserve OTel parent context for deferred streams | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6709> |
| PR | #6706 | .NET: Remove resource/script placeholder requirement from custom skill templates | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6706> |
| PR | #6701 | .NET: Fix stop sequence array serialization | open | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6701> |
| PR | #6700 | Python: Add MCP channel for agent-framework-hosting | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6700> |
| PR | #6699 | Python: Add A2A channel for agent-framework-hosting | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6699> |
| PR | #6698 | Python: Add Telegram channel for agent-framework-hosting | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6698> |
| PR | #6696 | Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework/pull/6696> |
| PR | #6695 | Python: Refactor runner/workflow responsibilities and fix checkpoint ancestry bug | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6695> |
| PR | #6692 | Python/.Net: Agent Harness blog post accompanying samples part 2 | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6692> |
| PR | #6685 | Python: Stop skill discovery below skill boundaries | open | Lovlace777 | <https://github.com/microsoft/agent-framework/pull/6685> |
| PR | #6720 | .NET: WorkflowRunner clean up. | closed | alliscode | <https://github.com/microsoft/agent-framework/pull/6720> |
| PR | #6664 | Python: chore: update dependencies | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6664> |
| PR | #6650 | Build(deps): Bump pydantic-settings from 2.14.1 to 2.14.2 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6650> |
| PR | #6648 | Python: support MCP skills of mcp-resource-template type | closed | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6648> |
| PR | #6620 | Python: Build(deps): Bump ag-ui-protocol from 0.1.18 to 0.1.19 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6620> |
| PR | #6618 | Build(deps): Bump durabletask from 1.4.0 to 1.6.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6618> |
| PR | #6617 | Python: Build(deps): Bump pyarrow from 23.0.1 to 24.0.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6617> |
| PR | #6407 | [BREAKING] Python: Add `reset` to workflow | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6407> |
| PR | #6309 | .NET: feat(Agent Skill Scripts): bubble up error details | closed | tlecomte | <https://github.com/microsoft/agent-framework/pull/6309> |
| PR | #6031 | Python: Hosting packages and designs | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6031> |
| PR | #5848 | .NET: Foundry.Hosting IT: quarantine flaky SessionFiles upload test (#5847) | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/5848> |
| Issue | #6722 | .NET: [Bug]: Workflow switches and conditions does not work as expected when used as Durable workflows | open | Sachin-Nand | <https://github.com/microsoft/agent-framework/issues/6722> |
| Issue | #6716 | .NET: Realtime Agent ADR Proposal | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6716> |
| Issue | #6715 | .NET: Realtime Agent Abstractions | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6715> |
| Issue | #6711 | Python: Add AgentSkillsSourceContext to AgentSkillsSource.get_skills | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6711> |
| Issue | #6710 | .NET: Add AgentSkillsSourceContext to AgentSkillsSource.GetSkillsAsync | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6710> |
| Issue | #6708 | Python: Python hosting: preserve OTel parent span for deferred streaming | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6708> |
| Issue | #6707 | .NET: Remove resource/script placeholder requirement from custom skill templates | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6707> |
| Issue | #6705 | Python: create_harness_agent skills_paths should accept str and Path | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6705> |
| Issue | #6704 | CodeAct host tool spans should be parented under execute_code | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6704> |
| Issue | #6702 | .NET: expose project_connection_id on hosted MCP tools (parity with Python get_mcp_tool) | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6702> |
| Issue | #6697 | Python: [Bug]: Callable class middleware raises `AttributeError` instead of `MiddlewareException` when `__call__` has fewer than 2 parameters | open | PreethamNoelP | <https://github.com/microsoft/agent-framework/issues/6697> |
| Issue | #6689 | Python: Missing load_dotenv in sample 05; incorrect env var docs in chat_response_cancellation | closed | amit12cool | <https://github.com/microsoft/agent-framework/issues/6689> |
| Issue | #6688 | Python: [Bug]: GeminiChatClient silently drops image/file (data/uri) content — multimodal input never reaches the model | open | andreupav | <https://github.com/microsoft/agent-framework/issues/6688> |
| Issue | #6684 | [Feature]:  Run Evals for Harness agent | open | alliscode | <https://github.com/microsoft/agent-framework/issues/6684> |
| Issue | #6682 | Python: Skill directory search should stop recursing after finding SKILL.md | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6682> |
| Issue | #6683 | .NET: AgentFileSkillsSource.SearchDirectoriesForSkills should stop recursing after finding SKILL.md | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6683> |
| Issue | #6681 | Python: Add include_detailed_errors option for skill script execution | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6681> |
| Issue | #6678 | .NET: [Bug]: AG-UI AGUIChatClient.AsAIAgent skipping the original Agent Author name and ID | open | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/6678> |
| Issue | #6639 | Python: Bedrock connector drops cache token counts from usage details | closed | he-yufeng | <https://github.com/microsoft/agent-framework/issues/6639> |
| Issue | #6637 | Python: Gemini connector drops cached-content and thinking token counts from usage details | closed | he-yufeng | <https://github.com/microsoft/agent-framework/issues/6637> |
| Issue | #6586 | Hosting: Foundry Hosted Agent History Provider | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6586> |
| Issue | #6585 | Hosting: core host and Responses channel | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6585> |
| Issue | #6535 | .NET: [Feature]: AgentFileStore should support list directory and search sub directory | closed | Lightczx | <https://github.com/microsoft/agent-framework/issues/6535> |
| Issue | #6371 | .NET: [Bug]: AgentInlineSkillContentBuilder.Build should explicitly indicate when a skill has no resources or scripts | closed | helloxubo | <https://github.com/microsoft/agent-framework/issues/6371> |
| Issue | #6358 | POC: MCP resource-template skills + direct skill references | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6358> |
| Issue | #6348 | Python: Explicitly emit available_resources and available_scripts in skill content | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6348> |
| Issue | #6331 | Python: Allow configuring function approvals for harness features | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6331> |
| Issue | #6304 | .NET: [Feature]: Agent Skill Script error details are not bubbled up to the agent | closed | tlecomte | <https://github.com/microsoft/agent-framework/issues/6304> |
| Issue | #6300 | Python: gen_ai.tool.definitions emitted as single JSON blob, breaks Aspire Tools view | closed | aeimer | <https://github.com/microsoft/agent-framework/issues/6300> |
| Issue | #6231 | .NET: Hosted .NET agent fails with "mount: /app: mount failed: No such file or directory." after the tool call when using Microsoft.Agents.AI.Foundry.Hosting 1.8.0-preview.260528.1 | closed | randomkms | <https://github.com/microsoft/agent-framework/issues/6231> |
| Issue | #6118 | Python: Support MCP skills of mcp-resource-template type | closed | semenshi | <https://github.com/microsoft/agent-framework/issues/6118> |
| Issue | #6117 | .NET: Support MCP skills of mcp-resource-template type | closed | semenshi | <https://github.com/microsoft/agent-framework/issues/6117> |
| Issue | #6089 | Python: Enhance skill resource and script discovery | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6089> |
| Issue | #6077 | .NET: Support MCP skills of archive type | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6077> |
| Issue | #5528 | Python: Streaming path: Chat span is sibling of invoke_agent span instead of child (broken trace context propagation) | closed | singankit | <https://github.com/microsoft/agent-framework/issues/5528> |
| Issue | #4877 | Python: [Feature]: Durable Task Scheduler Support in Agent Framework Workflows | closed | bkasa51-tech | <https://github.com/microsoft/agent-framework/issues/4877> |
| Issue | #1631 | .NET: Feature Request: Support for Per-Run MCP Authentication Headers | closed | jianxu-alleypin | <https://github.com/microsoft/agent-framework/issues/1631> |
