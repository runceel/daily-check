# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 33 |
| オープン中の新規 PR     | 34 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 21 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | dependabot[bot], moonbox3, eavanvalkenburg, rogerbarreto, westey-m, alliscode |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6631](https://github.com/microsoft/agent-framework/pull/6631) — .NET: [BREAKING] Support archive-type skills in AgentMcpSkillsSource （PR / open / SergeyMenshykh）
  `AgentMcpSkillsSource` でアーカイブ型スキルを扱う .NET 利用者は、スキル検出結果と既存 MCP 連携の互換性を先行検証してください。
- **⚠ 破壊的変更** [#6607](https://github.com/microsoft/agent-framework/pull/6607) — Python: [BREAKING] Integrate looping into HarnessAgent （PR / open / westey-m）
  HarnessAgent のループ制御に依存する Python 実装は、停止条件・反復回数・既存プロンプト設計が変わらないか回帰確認が必要です。
- **⚠ 破壊的変更** [#6599](https://github.com/microsoft/agent-framework/pull/6599) — Python: [BREAKING] Require approval for file-access tools with read-only auto-approval （PR / open / westey-m）
  FileAccess ツールを自動実行している Python 利用者は、承認ポリシー（read-only 自動承認含む）を明示設定しないと実行フローが変わる可能性があります。
- **⚠ 破壊的変更** [#6547](https://github.com/microsoft/agent-framework/pull/6547) — Python: [BREAKING] Port FileMemoryProvider and integrate FileMemoryProvider & FileAccess into the harness agent （PR / merged / westey-m）
  ⚠ 破壊的変更として FileMemoryProvider / FileAccess の統合挙動が変わるため、Harness ベース実装はプロバイダー設定とテストの更新が必要です。
- **⚠ 破壊的変更** [#6521](https://github.com/microsoft/agent-framework/pull/6521) — .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules （PR / merged / westey-m）
  ⚠ 破壊的変更として .NET の FileAccessProvider 呼び出しが承認前提になるため、既存エージェントは auto-approval ルール定義を必須で見直してください。
- **⚠ 破壊的変更** [#6488](https://github.com/microsoft/agent-framework/pull/6488) — Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters （PR / open / giles17）
  FileSkillsSource の探索深度・predicate 条件に依存する Python 利用者は、スキル発見件数と除外条件が変わらないか検証が必要です。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `reset` to workflow （PR / open / TaoChenOSU）
  workflow `reset` 追加に伴い状態遷移が変わる可能性があるため、既存オーケストレーションの再実行・復旧手順を確認してください。
- **⚠ セキュリティ** [#6564](https://github.com/microsoft/agent-framework/issues/6564) — .NET: Harden archive extraction guard so the path-containment check is statically recognized （Issue / closed / rogerbarreto）
  アーカイブ展開を扱う .NET 利用者は、同等のパス包含チェックを自実装側にも適用し、Zip Slip 系の混入を防ぐ対応を確認してください。
- **⚠ セキュリティ** [#6510](https://github.com/microsoft/agent-framework/pull/6510) — Python: Clarify identifier security guidance （PR / open / chetantoshniwal）
  識別子を外部入力から受ける実装では、ガイダンスに沿った検証・正規化が不足していないかセキュリティ観点で点検が必要です。

## このリポジトリの要点

この期間は Python/.NET 両面で Harness の安全性・承認フローに関する変更が集中し、**破壊的変更**を含む PR が継続しています。  
特に #6547 と #6521 で FileAccess 系の実行前提が変わり、開発環境だけでなく運用時ポリシー設計への影響が大きいです。  
加えて Hyperlight 出力処理のシンボリックリンク対策（#6601）など防御面の強化が進んでいます。  
未マージの breaking PR も多いため、次回チェックでも追跡優先度は高いです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6547](https://github.com/microsoft/agent-framework/pull/6547) — Python: [BREAKING] Port FileMemoryProvider and integrate FileMemoryProvider & FileAccess into the harness agent

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1236 / -106
- マージ日時 (UTC): `2026-06-18 20:21:00`

**変更概要**

Python 側 Harness に FileMemoryProvider を移植し、FileAccess と一体で扱える構成へ整理した PR です。  
`_file_memory.py` の新規追加と Harness 本体の接続変更により、ファイル読み書き・保存まわりの実装が大きく再編されています。  
サンプル（data processing）とテスト群も広範囲に更新され、期待動作の基準が新構成へ移行しました。  
**破壊的変更**として既存の FileMemory/FileAccess 連携コードに影響するため、呼び出し前提の見直しが必要です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 8 | 0 |
| `python/packages/core/agent_framework/__init__.py` | 8 | 0 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 38 | 13 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 82 | 12 |
| `python/packages/core/agent_framework/_harness/_file_memory.py` | 404 | 0 |
| `python/packages/core/tests/core/test_harness_agent.py` | 68 | 47 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 27 | 0 |
| `python/packages/core/tests/core/test_harness_file_memory.py` | 392 | 0 |
| `python/samples/02-agents/harness/console/formatters.py` | 34 | 34 |
| `python/samples/02-agents/harness/harness_data_processing.py` | 125 | 0 |
| `python/samples/02-agents/harness/working/sales.csv` | 50 | 0 |

</details>

<details><summary>コミット (11 件)</summary>

- `54de30a` Port FileMemoryProvider to python and integrate it and FileAccessProv…
- `3ff9e49` Merge branch 'main' into python-filememory-add-fileaccess-integrate
- `bbd14bf` Merge branch 'main' into python-filememory-add-fileaccess-integrate
- `292c0a1` Address PR comments
- `1ecd6b8` Merge branch 'main' into python-filememory-add-fileaccess-integrate
- `111f865` Address PR comments
- `f6e4365` Create FileSystemAgentFileStore root lazily on first write
- `2327ac4` Merge branch 'main' into python-filememory-add-fileaccess-integrate
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`agent_framework.__init__` と Harness 関連モジュールに FileMemoryProvider 統合が入り、内部抽象として `_file_memory.py` が新設されています。  
`_agent.py` / `_file_access.py` の変更から、ツール実行時のファイルストア連携とアクセス制御の経路が従来と異なる実装に置換されたことが読み取れます。  
⚠ **破壊的変更**: 旧来のプロバイダー前提（初期化順序・保存先作成タイミング・API 呼び出し期待）に依存したコードはそのままでは互換にならない可能性があります。

**既存利用者への影響**

既存の Harness 利用者は FileMemoryProvider の導入/設定コードと FileAccess 併用時の承認・保存挙動を再検証してください。  
関連テスト（`test_harness_file_memory.py` など）を取り込み、ローカル実データで回帰確認することを推奨します。

### [#6521](https://github.com/microsoft/agent-framework/pull/6521) — .NET: [BREAKING] Require approval for FileAccessProvider tools with auto-approval rules

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +291 / -30
- マージ日時 (UTC): `2026-06-18 19:38:37`

**変更概要**

.NET 側で FileAccessProvider ツール実行に承認を必須化し、auto-approval ルールで制御できるようにした PR です。  
`FileAccessProvider.cs` と `ToolApprovalAgent.cs` の変更により、無条件実行から「承認フロー経由」へ実行モデルが明確化されました。  
Harness サンプルとユニットテストも更新され、オプション名や既定挙動が新ルールに合わせて整理されています。  
**破壊的変更**として、従来の設定のままでは期待通りにツールが実行されないケースがあります。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Step02_Research_WithBackgroundAgents/Program.cs` | 6 | 6 |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/Program.cs` | 7 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 7 | 5 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 110 | 7 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalAgent.cs` | 22 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 3 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 7 | 7 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileAccess/FileAccessProviderTests.cs` | 59 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/ToolApproval/ToolApprovalAgentTests.cs` | 68 | 0 |

</details>

<details><summary>コミット (9 件)</summary>

- `c3ed7d0` Require approval for file-access
- `899f430` Potential fix for pull request finding
- `499d9d4` Merge branch 'main' into file-access-approval
- `7c2583c` Rename DisableToolApproval to DisableToolAutoApproval for clarity
- `41ccd82` Fix broken suggestion.
- `3c22d62` Merge branch 'main' into file-access-approval
- `7c8f841` Merge branch 'main' into file-access-approval
- `163efc0` Address PR comments and fix build issue.
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`HarnessAgentOptions` のオプション命名/意味（DisableToolAutoApproval など）と、FileAccess 呼び出し時の承認判定パスが更新されています。  
`FileAccessProvider.cs` の差分と approval テスト追加から、引数ベースの自動承認ルールと明示承認の切り替えロジックが強化されたことが分かります。  
⚠ **破壊的変更**: 承認なしで FileAccess ツールが動く前提の既存コードは互換性がなく、設定変更または運用変更が必要です。

**既存利用者への影響**

.NET Harness 利用者は、FileAccess ツールに対する auto-approval ルールを明示設定し、CI/本番での停止箇所を確認してください。  
承認 UI/ポリシーを持たない環境では、移行前に実行フローの再設計が必要です。

### [#6633](https://github.com/microsoft/agent-framework/pull/6633) — .NET: Bring Hosted-Toolbox sample to parity with sibling hosting samples

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +372 / -59
- マージ日時 (UTC): `2026-06-20 09:43:47`

**変更概要**

Hosted-Toolbox サンプルを他の hosting サンプルと同等構成にそろえるための整備 PR です。  
複数 README とサンプル設定（`.env.example`、Program など）が更新され、手順・変数名・説明の一貫性が向上しています。  
実装そのものよりもサンプル体験とドキュメント整合性の改善が主眼で、導入時の迷いを減らす内容です。

<details><summary>変更ファイル (30 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AzureSearchRag/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent/README.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Files/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Files/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-FoundryAgent/README.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-LocalCodeAct/README.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-LocalTools/README.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-McpTools/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Observability/README.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-TextRag/README.md` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox-AuthPaths/.env.example` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox-AuthPaths/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox/.env.example` | 16 | 0 |
| _... 他 15 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `b2741ff` Bring Hosted-Toolbox sample to parity with sibling hosting samples
- `947cd41` Address PR review: accurate docs and TOOLBOX_NAME in ToolboxMcpSkills

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更対象はサンプル配下と README が中心で、公開 API シグネチャの追加・削除は確認できません。  
`Hosted-Toolbox` 系の環境変数テンプレート拡充により、設定面の抽象（Toolbox 名称や認証パス）が明確化されています。  
破壊的 API 変更はなく、ドキュメント主導の運用改善とみなせます。

**既存利用者への影響**

既存利用者のマイグレーションは基本不要ですが、サンプルを参照している場合は最新 README と `.env.example` に合わせて設定値名を見直すと安全です。

### [#6608](https://github.com/microsoft/agent-framework/pull/6608) — .NET: (Durable): Scope workflow status/respond endpoints to route workflow name

- 作者: kshyju / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +92 / -4
- マージ日時 (UTC): `2026-06-19 00:40:50`

**変更概要**

Durable ワークフローの status/respond エンドポイントを、ルート上の workflow 名でスコープする変更です。  
`BuiltInFunctions.cs` と metadata transformer の更新により、複数ワークフロー共存時のルーティング曖昧性を減らしています。  
新規テスト追加でルーティング仕様が固定化され、Azure Functions hosting での誤配送リスク低減が狙いです。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/BuiltInFunctions.cs` | 37 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/Workflows/DurableWorkflowsFunctionMetadataTransformer.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.UnitTests/BuiltInFunctionsWorkflowRoutingTests.cs` | 52 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `ce5f6d5` Scope workflow status/respond endpoints to route workflow.
- `738c4c8` Add changelog.
- `c9498cb` Address Copilot review feedback: fix duplicate XML doc, make IsOrches…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

組み込み関数のエンドポイント生成ロジックが workflow 名を含む形に整理され、メタデータ変換も同仕様に追従しています。  
テスト `BuiltInFunctionsWorkflowRoutingTests` 追加から、ルート契約が実質的な API 契約として明文化された状態です。  
明示的な破壊的変更宣言はありませんが、エンドポイントパス前提のクライアントには影響し得ます。

**既存利用者への影響**

カスタムクライアントやプロキシで旧パスを固定している場合は、workflow 名を含む新ルートに合わせて更新が必要です。  
Functions の公開 URL と監視ルールも併せて点検してください。

### [#6601](https://github.com/microsoft/agent-framework/pull/6601) — Python: harden Hyperlight output capture against symlinks

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +220 / -4
- マージ日時 (UTC): `2026-06-19 22:46:26`

**変更概要**

Hyperlight の出力キャプチャ処理でシンボリックリンク経由の不正参照を防ぐための防御強化 PR です。  
`_execute_code_tool.py` でパストラバーサル/リンク解決の検証が強化され、読み取り対象の安全境界が厳格化されました。  
セキュリティ回帰を防ぐため、対応するテストも大幅に追加されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hyperlight/agent_framework_hyperlight/_execute_code_tool.py` | 85 | 4 |
| `python/packages/hyperlight/tests/hyperlight/test_hyperlight_codeact.py` | 135 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `5ff7211` Python: harden Hyperlight output capture against symlinks
- `2a20577` Address review: reject traversal, fix listing test, harden read

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

実行結果ファイルの列挙・読み出し時に、シンボリックリンクや境界外パスを拒否するチェックが組み込まれています。  
公開 API シグネチャの変更よりも、内部 I/O ガード条件の厳格化が主変更です。  
⚠ セキュリティ強化により、以前は読めていた境界外/リンク先ファイルが新たに拒否される可能性があります。

**既存利用者への影響**

通常利用のマイグレーションは不要ですが、シンボリックリンクに依存した出力取り込みをしていた環境は動作が変わるため修正が必要です。  
ジョブ実行ディレクトリ設計を安全境界内にそろえてください。

### [#6595](https://github.com/microsoft/agent-framework/pull/6595) — Migrate to using issue type bug instead of label bug.

- 作者: moonbox3 / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -5
- マージ日時 (UTC): `2026-06-18 15:57:25`

**変更概要**

Issue 管理をラベル `bug` 依存から Issue Type ベースへ移行する運用変更 PR です。  
Issue テンプレート 2 種と `label-issues` ワークフローが更新され、分類ロジックの基盤が新仕様に切り替わります。  
コード実装より GitHub 運用フローの整合性改善が主目的です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/ISSUE_TEMPLATE/dotnet-issue.yml` | 1 | 1 |
| `.github/ISSUE_TEMPLATE/python-issue.yml` | 1 | 1 |
| `.github/workflows/label-issues.yml` | 1 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `8b400b7` Migrate to using issue type bug instead of label bug.

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `.github/ISSUE_TEMPLATE/*` と `label-issues.yml` のみで、ライブラリ API や SDK シグネチャへの影響はありません。  
自動ラベル付与ロジックを縮小し、Issue Type を前提にしたトリアージへ寄せる設計変更です。  
破壊的 API 変更はありません。

**既存利用者への影響**

コード利用者のマイグレーションは不要です。  
一方で運用担当は、Issue 作成手順・ダッシュボード・検索クエリを Issue Type ベースへ更新してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6583 | Python: Bump Python package versions for 1.9.0 release | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6583> |
| #6581 | Python: Fix AG-UI tool history replay sanitization  | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6581> |
| #6578 | Python: Add hosting channel ADRs and spec | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6578> |
| #6577 | Use issue type for triage workflow | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6577> |
| #6576 | Python: adjust coverage report handoff | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6576> |
| #6574 | .NET: Harden fan-in barrier checkpoint state and extend resume coverage | peibekwe | <https://github.com/microsoft/agent-framework/pull/6574> |
| #6572 | Python: Add WebSearchDisplayObserver to harness console | westey-m | <https://github.com/microsoft/agent-framework/pull/6572> |
| #6570 | Python: consolidate dependency maintenance workflow | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6570> |
| #6567 | Python: Fix Foundry aiohttp dependency | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6567> |
| #6565 | .NET: Harden archive extraction guard so path containment is statically recognized | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6565> |
| #6555 | .NET: Migrate 01-get-started samples to Foundry as canonical default | alliscode | <https://github.com/microsoft/agent-framework/pull/6555> |
| #6554 | .NET: Enabling sequential orchestration to pass entire conversation or only previous output. | alliscode | <https://github.com/microsoft/agent-framework/pull/6554> |
| #6551 | .NET: InProcessRunnerContext bugfix for workflows | peibekwe | <https://github.com/microsoft/agent-framework/pull/6551> |
| #6542 | .NET: Bump Azure.AI.Projects to 2.1.0-beta.3 | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6542> |
| #6527 | Python: Bump prek from 0.4.3 to 0.4.5 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6527> |
| #6524 | Python: Bump pytest from 9.0.3 to 9.1.0 across /python workspace | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6524> |
| #6503 | Python: Build(deps): Bump esbuild, @tailwindcss/vite, @vitejs/plugin-react and vite in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6503> |
| #6501 | Python: Build(deps): Bump esbuild, @vitejs/plugin-react and vite in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6501> |
| #6487 | .NET: Scope argument-based standing approvals correctly in ToolApprovalAgent | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6487> |
| #6443 | Python: Split type checkers by target (pyright source, 5 checkers on tests/samples) | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6443> |
| #6418 | Python: host MAF workflows on a standalone Durable Task worker | ahmedmuhsin | <https://github.com/microsoft/agent-framework/pull/6418> |
| #6406 | Build(deps): Bump python-multipart from 0.0.26 to 0.0.32 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6406> |
| #6396 | Build(deps): Bump anthropic from 0.80.0 to 0.107.1 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6396> |
| #6395 | Bump aiohttp from 3.13.4 to 3.14.1 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6395> |
| #6394 | Bump openai from 2.24.0 to 2.43.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6394> |
| #6393 | Python: Build(deps): Bump mistralai from 2.4.2 to 2.4.9 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6393> |
| #6392 | Python: Build(deps): Bump pydantic-monty from 0.0.17 to 0.0.18 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6392> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6643 | .NET: ADR for unified dynamic agent resolution across AG-UI, Responses, and A2A | open | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6643> |
| PR | #6642 | Python: Fix ResponsesChannel session continuity and harden _result_to_text for workflows | open | Ashutosh0x | <https://github.com/microsoft/agent-framework/pull/6642> |
| PR | #6640 | Python: surface Bedrock cache token counts in usage details | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6640> |
| PR | #6638 | Python: surface Gemini cached and thinking token counts in usage details | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6638> |
| PR | #6636 | .NET: Fix issue with resuming checkpoint after package version upgrade | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/6636> |
| PR | #6635 | .NET: Change A2A default session store to NoopAgentSessionStore | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6635> |
| PR | #6634 | Python: Add MCP as a hard dep in Foundry Hosting | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6634> |
| PR | #6631 | .NET: [BREAKING] Support archive-type skills in AgentMcpSkillsSource | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6631> |
| PR | #6630 | docs: Add Python session identity ADR | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6630> |
| PR | #6629 | Python: reject non-base64 data URIs in detect_media_type_from_base64 | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6629> |
| PR | #6628 | Python: Fix Bedrock non-ASCII escaping in JSON content blocks | open | kimnamu | <https://github.com/microsoft/agent-framework/pull/6628> |
| PR | #6624 | .NET: Add sample for per-run refreshable MCP authentication headers | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6624> |
| PR | #6623 | Python: Add FoundryAgent conversation session helper | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6623> |
| PR | #6621 | Bump Anthropic from 12.20.0 to 12.29.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6621> |
| PR | #6620 | Python: Build(deps): Bump ag-ui-protocol from 0.1.18 to 0.1.19 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6620> |
| PR | #6619 | Python: Build(deps): Bump fastapi from 0.124.4 to 0.137.2 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6619> |
| PR | #6618 | Python: Build(deps): Bump durabletask from 1.4.0 to 1.6.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6618> |
| PR | #6617 | Python: Build(deps): Bump pyarrow from 23.0.1 to 24.0.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6617> |
| PR | #6616 | Python: Build(deps-dev): Bump pyrefly from 1.0.0 to 1.1.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6616> |
| PR | #6615 | Python: Build(deps-dev): Bump mcp from 1.27.2 to 1.28.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6615> |
| PR | #6614 | Python: Build(deps-dev): Bump ty from 0.0.46 to 0.0.51 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6614> |
| PR | #6613 | Python: Bump vite and @vitejs/plugin-react-swc in /python/samples/05-end-to-end/chatkit-integration/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6613> |
| PR | #6612 | Python: support knowledge_source_params in AzureAISearchContextProvider | open | Athosone | <https://github.com/microsoft/agent-framework/pull/6612> |
| PR | #6610 | Python: [wip]: Prototype foundry hosting workflow adapter | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6610> |
| PR | #6609 | Python: Build(deps): Bump granian from 2.5.7 to 2.7.4 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6609> |
| PR | #6607 | Python: [BREAKING] Integrate looping into HarnessAgent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6607> |
| PR | #6606 | Python: use writable runtime directory for Foundry Skills sample | open | malsabbagh05 | <https://github.com/microsoft/agent-framework/pull/6606> |
| PR | #6605 | Python: Agent Harness blog post accompanying samples part 1 | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6605> |
| PR | #6603 | Python: Support stable + preview Azure AI Search (Foundry IQ) API versions | open | farzad528 | <https://github.com/microsoft/agent-framework/pull/6603> |
| PR | #6599 | Python: [BREAKING] Require approval for file-access tools with read-only auto-approval | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6599> |
| PR | #6594 | Python: Extend hosted session scoping to approval handling | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6594> |
| PR | #6593 | Python: Add Foundry Hosted Agent history provider | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6593> |
| PR | #6580 | Python: Add hosting core and Responses channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6580> |
| PR | #6579 | Python: adjust checkpoint encoding handling | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6579> |
| PR | #6602 | Python: Support stable + preview Azure AI Search (Foundry IQ) API versions | closed | farzad528 | <https://github.com/microsoft/agent-framework/pull/6602> |
| Issue | #6641 | .NET: AgentFrameworkResponseHandler drops AI Search annotations (url_citation) from streamed responses | open | graemefoster | <https://github.com/microsoft/agent-framework/issues/6641> |
| Issue | #6639 | Python: Bedrock connector drops cache token counts from usage details | open | he-yufeng | <https://github.com/microsoft/agent-framework/issues/6639> |
| Issue | #6637 | Python: Gemini connector drops cached-content and thinking token counts from usage details | open | he-yufeng | <https://github.com/microsoft/agent-framework/issues/6637> |
| Issue | #6632 | Python: [Feature]: Add Checkpointing Support to AgentFrameworkWorkflow.run() in agent-framework-ag-ui | open | mjod | <https://github.com/microsoft/agent-framework/issues/6632> |
| Issue | #6627 | Python: Bedrock JSON content blocks escape non-ASCII characters to \uXXXX | open | kimnamu | <https://github.com/microsoft/agent-framework/issues/6627> |
| Issue | #6626 | Improve native GenAI semantic convention coverage | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6626> |
| Issue | #6625 | .NET: [Bug]: Checkpoint's EdgeStateData cannot reflect real state | open | jiangjinnan | <https://github.com/microsoft/agent-framework/issues/6625> |
| Issue | #6622 | .NET: Discuss provider-agnostic conversation creation API | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6622> |
| Issue | #6611 | Python: [Feature]: AG-UI FastAPI endpoint should support an SSE keepalive/ping interval (StreamingResponse has no heartbeat) | open | lordlinus | <https://github.com/microsoft/agent-framework/issues/6611> |
| Issue | #6604 | Python: [Feature]: Support stable + preview Azure AI Search (Foundry IQ) API versions in agent-framework-azure-ai-search | open | farzad528 | <https://github.com/microsoft/agent-framework/issues/6604> |
| Issue | #6600 | .NET: [Bug]: AGUIChatClient doesnt forward/populate AdditionalProperties | open | MD-V | <https://github.com/microsoft/agent-framework/issues/6600> |
| Issue | #6592 | Hosting: MCP channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6592> |
| Issue | #6591 | Hosting: A2A channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6591> |
| Issue | #6590 | Hosting: Discord channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6590> |
| Issue | #6589 | Hosting: Activity Protocol channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6589> |
| Issue | #6588 | Hosting: Telegram channel and Telegram samples | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6588> |
| Issue | #6587 | Hosting: Invocations channel and Foundry hosted agent sample | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6587> |
| Issue | #6586 | Hosting: Foundry Hosted Agent History Provider | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6586> |
| Issue | #6585 | Hosting: core host and Responses channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6585> |
| Issue | #6584 | Hosting: ADRs and implementation spec | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6584> |
| Issue | #6582 | Python: dependency-bounds validator is not enforced in CI | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6582> |
| Issue | #6573 | .NET: [Bug]: Fan-in barrier checkpoint state is corrupted by the resuming run when using in-memory CheckpointManager | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/6573> |
| Issue | #6569 | Python: consolidate dependency maintenance automation | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6569> |
| Issue | #6568 | .NET: [Bug]: unable properly reuse workflow which inludes Groupchat as an executor | closed | dsslight | <https://github.com/microsoft/agent-framework/issues/6568> |
| Issue | #6566 | Python: agent-framework-foundry misses aiohttp dependency | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6566> |
| Issue | #6564 | .NET: Harden archive extraction guard so the path-containment check is statically recognized | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6564> |
| Issue | #6546 | Python: Integrate FileAccess into HarnessAgent | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6546> |
| Issue | #6545 | .NET: Bump Azure.AI.Projects to 2.1.0-beta.3 | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6545> |
| Issue | #6513 | Python: [Bug]: HITL approval (approval_mode="always_require") result not persisted into AG-UI snapshot → provider 400 ("tool_call_ids did not have response messages") on next run | closed | lordlinus | <https://github.com/microsoft/agent-framework/issues/6513> |
| Issue | #6486 | Python: .NET: Harden argument scoping for standing approval rules in ToolApprovalAgent | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6486> |
| Issue | #6415 | .NET: Consolidate Memory implementations between Python and C# | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6415> |
| Issue | #6331 | Allow configuring function approvals for harness features | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6331> |
| Issue | #5855 | Python: [Bug]: AG-UI history replay can send invalid assistant/tool sequence to OpenAI (tool_calls without matching tool messages) | closed | adityanile | <https://github.com/microsoft/agent-framework/issues/5855> |
