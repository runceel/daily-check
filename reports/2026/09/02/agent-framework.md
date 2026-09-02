# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 21 |
| オープン中の新規 PR     | 19 |
| クローズ (未マージ) PR  | 6 |
| 新規 Issue              | 17 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | eavanvalkenburg, baywet, TheovanKraay, anneheartrecord, jluocsa, SergeyMenshykh |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7991](https://github.com/microsoft/agent-framework/pull/7991) — .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions （PR / open / rogerbarreto）
  AgentSessionStore を利用・追随する .NET 開発者は、抽象化の移動による参照先変更と API 互換性をレビューしてください。
- **⚠ 破壊的変更** [#7918](https://github.com/microsoft/agent-framework/pull/7918) — Python: [BREAKING] restore agent middleware API contract （PR / merged / eavanvalkenburg）
  Python で middleware を実装している利用者は、新しい契約に合わせて hook のシグネチャと middleware sequence のテストを確認してください。
- **⚠ 破壊的変更** [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  file_access_read_lines を採用する .NET 利用者は、行番号の責務移動に伴う AgentFileStore 側の契約変更を確認してください。
- **⚠ 破壊的変更** [#7669](https://github.com/microsoft/agent-framework/pull/7669) — Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  file_access_read_lines を採用する Python 利用者は、AgentFileStore の行番号処理へ移行する際の互換性を確認してください。
- **⚠ セキュリティ** [#7826](https://github.com/microsoft/agent-framework/pull/7826) — .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 （PR / merged / dependabot[bot]）
  Aspire.Hosting を依存する .NET 利用者は、更新版での既知のセキュリティ修正を取り込み、ロックファイルを再生成してください。
- **非推奨/廃止** [#7983](https://github.com/microsoft/agent-framework/pull/7983) — .NET: Replace deprecated AWSSDK.Extensions.Bedrock.MEAI with AWS.Bedrock.MEAI （PR / merged / BenGearset）
  Bedrock MEAI 連携を使う .NET 利用者は、旧パッケージ参照を新パッケージ名へ更新してください。
- **非推奨/廃止** [#7982](https://github.com/microsoft/agent-framework/issues/7982) — .NET: Replace deprecated AWSSDK.Extensions.Bedrock.MEAI with AWS.Bedrock.MEAI （Issue / closed / BenGearset）
  対応済みの非推奨パッケージ置換を示す Issue であり、利用者は新しい `AWS.Bedrock.MEAI` を採用してください。

## このリポジトリの要点

Python middleware 契約の復元（#7918）と DevUI/AG-UI の応答処理改善が進み、エージェント実行時の互換性とストリーミング品質が強化されました。  
.NET では Bedrock MEAI の非推奨パッケージ置換と Azure.Core 更新が行われ、依存関係の追随が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7918](https://github.com/microsoft/agent-framework/pull/7918) — Python: [BREAKING] restore agent middleware API contract

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +110 / -114
- マージ日時 (UTC): `2026-08-31 06:55:57`

**変更概要**

Python の agent middleware API 契約を、意図した middleware sequence 検証と整合する形へ復元しました。  
agent hooks、agent/middleware 実装、型スタブ、Foundry 連携、テストを横断して呼び出し規約を更新しています。  
middleware を自作する利用者や hook を直接利用するコードが影響範囲です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/PACKAGE_STATUS.md` | 2 | 3 |
| `python/packages/core/agent_framework/_agent_hooks.py` | 3 | 3 |
| `python/packages/core/agent_framework/_agents.py` | 11 | 17 |
| `python/packages/core/agent_framework/_clients.py` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 4 | 6 |
| `python/packages/core/agent_framework/_harness/_agent.pyi` | 1 | 1 |
| `python/packages/core/agent_framework/_middleware.py` | 22 | 13 |
| `python/packages/core/agent_framework/observability.py` | 4 | 4 |
| `python/packages/core/pyproject.toml` | 0 | 5 |
| `python/packages/core/tests/core/test_agent_hooks.py` | 7 | 10 |
| `python/packages/core/tests/core/test_harness_agent.py` | 20 | 1 |
| `python/packages/core/tests/core/test_middleware_with_agent.py` | 30 | 40 |
| `python/packages/foundry/agent_framework_foundry/_agent.py` | 3 | 3 |
| `python/pyproject.toml` | 1 | 2 |
| `python/uv.lock` | 1 | 5 |

</details>

<details><summary>コミット (3 件)</summary>

- `612069f` Python: restore agent middleware API contract
- `d93fe74` Merge remote-tracking branch 'upstream/main' into eavanvalkenburg-und…
- `28c633b` Python: validate middleware sequences consistently

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**。middleware の契約と sequence 検証が復元され、agent hooks や middleware の受け渡し方が従来の期待する API に戻されています。型スタブとテストも同時に更新されているため、実装だけでなく型チェック結果も確認してください。

**既存利用者への影響**

既存 middleware が復元後の契約に準拠していれば追加対応は不要ですが、独自 middleware や hook を実装している場合はシグネチャと sequence のテストを更新してください。

### [#7983](https://github.com/microsoft/agent-framework/pull/7983) — .NET: Replace deprecated AWSSDK.Extensions.Bedrock.MEAI with AWS.Bedrock.MEAI

- 作者: BenGearset / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +4 / -4
- マージ日時 (UTC): `2026-09-01 14:15:54`

**変更概要**

非推奨となった `AWSSDK.Extensions.Bedrock.MEAI` を `AWS.Bedrock.MEAI` へ置き換えました。  
中央のパッケージ管理、Bedrock と Valkey を組み合わせるサンプルのプロジェクト参照、README の記載を同時に更新しています。  
Bedrock サンプルや同じパッケージを参照する .NET 利用者が対象です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |
| `dotnet/samples/02-agents/AgentWithMemory/AgentWithMemory_Step03_MemoryUsingValkey_Bedrock/AgentWithMemory_Step03_MemoryUsingValkey_Bedrock.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentWithMemory/AgentWithMemory_Step03_MemoryUsingValkey_Bedrock/README.md` | 2 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `05de066` `AWSSDK.Extensions.Bedrock.MEAI` -> `AWS.Bedrock.MEAI`
- `446c85a` Update `AgentWithMemory_Step03_MemoryUsingValkey_Bedrock` project

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

コード API のシグネチャ変更ではなく、NuGet パッケージ識別子とドキュメント上の参照先を置き換える変更です。旧パッケージ名は非推奨のため、新しい `AWS.Bedrock.MEAI` へ移行します。

**既存利用者への影響**

旧パッケージを直接参照している利用者は、プロジェクトの PackageReference／中央管理設定を新名へ変更してください。サンプル利用者は最新サンプルを取り込めば対応できます。

### [#7747](https://github.com/microsoft/agent-framework/pull/7747) — Python: fix(python): project the per-call effective tool set on agent-hooks pre_model_call

- 作者: MohammadHaroonAbuomar / 状態: MERGED
- ラベル: `python`
- 変更行数: +700 / -16
- マージ日時 (UTC): `2026-09-02 02:11:24`

**変更概要**

agent hooks の `pre_model_call` に、各呼び出しで実際に有効な tool セットを正しく投影するよう修正しました。  
run 開始時の tool 解決を framework 側へ寄せ、ネストした one-shot コンテナーや options 指定の tool も扱います。  
呼び出しごとに tool を差し替える Python エージェントと middleware が影響を受けます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_agent_hooks.py` | 89 | 13 |
| `python/packages/core/agent_framework/_agents.py` | 8 | 2 |
| `python/packages/core/agent_framework/_middleware.py` | 121 | 1 |
| `python/packages/core/tests/core/test_agent_hooks.py` | 348 | 0 |
| `python/packages/core/tests/core/test_middleware_with_agent.py` | 134 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `bae417d` fix(python): project the per-call effective tool set on agent-hooks p…
- `9af760e` fix(python): harden the agent-hooks tools projections per review
- `a343661` fix(python): include options-dict run tools in the agent-hooks startu…
- `21eff8d` refactor(python): let the framework own the run-start tool resolution
- `adcef51` fix(python): preserve caller tool objects and unify run-level tool pr…
- `92ddee5` fix(python): materialize nested one-shot tool containers, only for th…
- `78089be` fix(python): materialize one-shot .tools collections on wrapper objects

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の名称変更はありません。`pre_model_call` に渡る tool 投影と run-start 解決の内部経路が整理され、caller の tool オブジェクトを保持する挙動が追加されています。

**既存利用者への影響**

通常の利用者は移行不要です。hook で tool 一覧の内容や同一オブジェクト性に依存していた実装は、呼び出し単位の有効 tool が期待どおりになるか再テストしてください。

### [#7980](https://github.com/microsoft/agent-framework/pull/7980) — Python: fix: preserve parallel function_result contents in AG-UI conversion

- 作者: manjunathshiva / 状態: MERGED
- ラベル: `python`
- 変更行数: +100 / -10
- マージ日時 (UTC): `2026-09-01 12:41:12`

**変更概要**

AG-UI 変換時に、並列 tool 呼び出しの `function_result` に含まれる内容が失われる問題を修正しました。  
混在する tool メッセージを分割する際の識別子生成も見直し、結果以外の content を保持します。  
AG-UI で並列関数実行結果やマルチモーダル内容を表示するクライアントが対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_message_adapters.py` | 33 | 10 |
| `python/packages/ag-ui/tests/ag_ui/test_message_adapters.py` | 67 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `3a168cd` Python: fix: preserve parallel function_result contents in AG-UI conv…
- `e60e27d` Python: fix: preserve non-result contents in mixed AG-UI tool messages
- `dd3f093` Python: fix: use independent ids for split AG-UI tool messages
- `508d879` Merge branch 'main' into python-agui-parallel-function-results-7979

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

メッセージアダプターの変換ロジックとテストを更新した修正で、公開 API のシグネチャ変更や破壊的変更は確認できません。並列結果ごとの独立 ID 付与が追加されています。

**既存利用者への影響**

移行作業は不要です。AG-UI のイベント内容を保存・表示する利用者は、修正版で並列結果と混在 content の回帰テストを実行してください。

### [#7954](https://github.com/microsoft/agent-framework/pull/7954) — .NET: Bump Azure.Core from 1.61.0 to 1.62.0

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `.NET` `dependencies`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-08-31 13:47:37`

**変更概要**

依存パッケージ `Azure.Core` を 1.61.0 から 1.62.0 へ更新しました。  
変更は中央パッケージ管理ファイルに限定され、Agent Framework の .NET ビルドで新しい Azure SDK 基盤を利用します。  
Azure.Core の推移に依存する .NET 利用者は互換性を確認してください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `ca7137b` Bump Azure.Core from 1.61.0 to 1.62.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

アプリケーション側の API シグネチャ変更はなく、依存バージョンの更新のみです。Azure.Core の推移的依存関係が変わる可能性があるため、ビルドと主要な Azure 操作を確認してください。

**既存利用者への影響**

通常は移行不要です。Azure.Core の型や依存バージョンを固定しているプロジェクトは、復元結果と互換性テストを確認してください。

### [#7968](https://github.com/microsoft/agent-framework/pull/7968) — Python: Align DevUI Responses parsing

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +886 / -199
- マージ日時 (UTC): `2026-09-01 09:57:25`

**変更概要**

DevUI の Responses 解析を Responses API の形式に合わせ、会話・承認・マルチモーダル処理の整合性を高めました。  
executor、mapper、server、OpenAI chat client と関連テストを大幅に更新し、無効なバッチでも承認情報を保持します。  
DevUI の応答表示や承認フローを利用する Python 開発者が主な対象です。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/devui/agent_framework_devui/_conversations.py` | 158 | 34 |
| `python/packages/devui/agent_framework_devui/_executor.py` | 123 | 65 |
| `python/packages/devui/agent_framework_devui/_mapper.py` | 84 | 58 |
| `python/packages/devui/agent_framework_devui/_server.py` | 3 | 27 |
| `python/packages/devui/agent_framework_devui/_utils.py` | 29 | 0 |
| `python/packages/devui/tests/devui/test_approval_validation.py` | 33 | 10 |
| `python/packages/devui/tests/devui/test_conversations.py` | 125 | 0 |
| `python/packages/devui/tests/devui/test_mapper.py` | 90 | 0 |
| `python/packages/devui/tests/devui/test_multimodal_workflow.py` | 122 | 3 |
| `python/packages/devui/tests/devui/test_server.py` | 48 | 1 |
| `python/packages/openai/agent_framework_openai/_chat_client.py` | 22 | 1 |
| `python/packages/openai/tests/openai/test_openai_chat_client.py` | 49 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `3294e69` Python: align DevUI Responses parsing
- `5dfaef0` Python: address DevUI parsing review feedback
- `a8a8487` Python: preserve approvals on invalid DevUI batches
- `2aa4cdc` Python: address DevUI parser follow-up review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Responses のマッピング・承認検証・会話イベントの変換経路が再整理されました。公開 API 名の変更は明示されていませんが、DevUI の内部イベント形式に依存する拡張は新しい parser の出力を確認してください。

**既存利用者への影響**

標準的な DevUI 利用では移行不要です。独自 mapper や UI 拡張を持つ場合は、Responses の tool／approval／multimodal イベントを再確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7966 | Python: Align Responses hosting parser semantics | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7966> |
| #7967 | Python: allow OpenAI SDK 3.x | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7967> |
| #7964 | Python: Align OpenAI parser conversions | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7964> |
| #7965 | Python: align Foundry hosting response conversion | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7965> |
| #7935 | .NET: add public API analyzers | baywet | <https://github.com/microsoft/agent-framework/pull/7935> |
| #7972 | .NET: Update version for 1.20.0 release | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7972> |
| #7937 | ci: upload coverage reports to github | baywet | <https://github.com/microsoft/agent-framework/pull/7937> |
| #3932 | .NET: Improve Cosmos DB Emulator startup reliability | TheovanKraay | <https://github.com/microsoft/agent-framework/pull/3932> |
| #7960 | Python: migrate Mistral integration to official SDK | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7960> |
| #6046 | .NET: docs(decisions): resolve duplicate ADR sequence numbers (0016, 0021, 0024) | jluocsa | <https://github.com/microsoft/agent-framework/pull/6046> |
| #7906 | Python: preserve Responses replay metadata across AG-UI continuations | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7906> |
| #7912 | Python: Fix compaction persistence, thresholds, and observability | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7912> |
| #7879 | Python: send a Pydantic response_format to Gemini as response_schema | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/7879> |
| #7938 | .NET: tests: removes dependency on fluent assersion because of licensing concerns | baywet | <https://github.com/microsoft/agent-framework/pull/7938> |
| #7604 | Python: fix(redis): type-check the history provider across the supported redis range | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7604> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7996 | Python: fix: bound pending policy approvals | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7996> |
| PR | #8003 | Python: fix: surface AG-UI workflow intermediate events as reasoning | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8003> |
| PR | #7976 | Python: [.NET][Python][Purview] Set inline header for requests made with cold scope cache | open | eoindoherty1 | <https://github.com/microsoft/agent-framework/pull/7976> |
| PR | #7997 | Python: Select Foundry hosting conversation history source | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7997> |
| PR | #7974 | .NET: chore: promote shipped .NET APIs | open | baywet | <https://github.com/microsoft/agent-framework/pull/7974> |
| PR | #7995 | .NET: Update Azure AI Projects to 3.0.0 beta 1 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7995> |
| PR | #7975 | .NET: Forward agent response details in workflows | open | baywet | <https://github.com/microsoft/agent-framework/pull/7975> |
| PR | #8002 | Python: Update GitHub Copilot SDK to 1.0.11 | open | droideronline | <https://github.com/microsoft/agent-framework/pull/8002> |
| PR | #7999 | Python: preserve response update metadata in WorkflowAgent forwarding | open | HeZ2z | <https://github.com/microsoft/agent-framework/pull/7999> |
| PR | #7998 | .NET: Track and update A2A task state | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7998> |
| PR | #7991 | .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7991> |
| PR | #7992 | Python: Preserve refusals as marked text | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7992> |
| PR | #7988 | Python: bind approvals to stable call occurrences (#7383) | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7988> |
| PR | #7986 | .NET: Remove Azure.AI.OpenAI dependency | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7986> |
| PR | #7981 | Python: Show FoundryAgent client spans in Foundry traces | open | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/7981> |
| PR | #7984 | .NET: Preserve streamed annotations in Foundry hosted responses | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7984> |
| PR | #7963 | Python: support mixed workflow invocation kwargs | open | droideronline | <https://github.com/microsoft/agent-framework/pull/7963> |
| PR | #7971 | Python: Preserve MCP Host payloads in AG-UI history | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7971> |
| PR | #7961 | .NET: Fix JsonWireSerializedValue hash code contract | open | normalian | <https://github.com/microsoft/agent-framework/pull/7961> |
| PR | #7957 | Python: Give a hosted Foundry agent a single source of conversation history | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/7957> |
| PR | #7581 | Python: bind tool-approval responses to surfaced approval requests (#7383) | closed | tonydzi | <https://github.com/microsoft/agent-framework/pull/7581> |
| PR | #7656 | Python: fix(python): treat any MCP ping JSON-RPC error as unsupported, not just -32601 | closed | dcasati | <https://github.com/microsoft/agent-framework/pull/7656> |
| PR | #7528 | Python: fix FIDES session isolation and runtime integration gaps | closed | lerelerele | <https://github.com/microsoft/agent-framework/pull/7528> |
| PR | #7600 | Python: Include constructor tools in agent-hooks startup | closed | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7600> |
| PR | #7900 | Python: Add OrcaRouter provider samples | closed | nissrin2020ali-ux | <https://github.com/microsoft/agent-framework/pull/7900> |
| Issue | #7977 | .NET: [Bug]: outdated and not relevant declarative workflow documentation | open | dsslight | <https://github.com/microsoft/agent-framework/issues/7977> |
| Issue | #7978 | .NET: [Bug]: not working declarative workflow InvokeFunctionTool as expected | open | dsslight | <https://github.com/microsoft/agent-framework/issues/7978> |
| Issue | #7989 | .NET: [Bug]: Agent Skill throws "System.InvalidOperationException" | open | s-kip | <https://github.com/microsoft/agent-framework/issues/7989> |
| Issue | #8000 | Python: [Bug]: AG-UI workflow runner ignores "intermediate" events | open | savannahknight | <https://github.com/microsoft/agent-framework/issues/8000> |
| Issue | #8001 | Python: Update GitHub Copilot SDK to support BYOK token providers | open | droideronline | <https://github.com/microsoft/agent-framework/issues/8001> |
| Issue | #7994 | .NET: Update Azure AI Projects to 3.0.0 beta 1 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7994> |
| Issue | #7982 | .NET: Replace deprecated AWSSDK.Extensions.Bedrock.MEAI with AWS.Bedrock.MEAI | closed | BenGearset | <https://github.com/microsoft/agent-framework/issues/7982> |
| Issue | #7993 | .NET: Make anonymous AG-UI session persistence safe in AGUIServer sample | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7993> |
| Issue | #7990 | .NET: [Feature]: Share AgentSessionStore through Abstractions | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7990> |
| Issue | #7979 | Python: [Bug]: agent_framework_messages_to_agui drops parallel function_result contents | closed | likebean | <https://github.com/microsoft/agent-framework/issues/7979> |
| Issue | #7987 | .NET: [Feature]: Support for or guidance on async code in ASP.Net Core hosting | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/7987> |
| Issue | #7985 | .NET: Remove Azure.AI.OpenAI dependency | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7985> |
| Issue | #7969 | .NET: [Feature]: Add first-class Foundry IQ support for .NET | open | therealjohn | <https://github.com/microsoft/agent-framework/issues/7969> |
| Issue | #7962 | Python: Support global and executor-specific workflow invocation kwargs together | open | droideronline | <https://github.com/microsoft/agent-framework/issues/7962> |
| Issue | #7973 | Python: Add A2A metadata hooks for cross-agent runtime context | open | droideronline | <https://github.com/microsoft/agent-framework/issues/7973> |
| Issue | #7959 | Python: [Bug]: MCP structuredContent never reaches AG-UI snapshot/history when it is kept out of the model context | open | likebean | <https://github.com/microsoft/agent-framework/issues/7959> |
| Issue | #7958 | .NET: [Bug]: JsonWireSerializedValue violates the equality and hash code contract | open | normalian | <https://github.com/microsoft/agent-framework/issues/7958> |
| Issue | #7560 | Python: constructor-registered tools missing from agent-hooks agent_startup projection | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7560> |
| Issue | #7933 | .NET: Set up PublicAPI analyzers and shipped API promotion | closed | baywet | <https://github.com/microsoft/agent-framework/issues/7933> |
| Issue | #6444 | Investigate/Add function retry middleware | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6444> |
| Issue | #7905 | Python: Preserve Responses replay metadata across AG-UI continuations | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7905> |
| Issue | #7216 | Python: [Feature]: let TruncationStrategy protect the first user group (not just system groups) | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7216> |
| Issue | #7224 | Python: [Feature]: compaction strategies mutate/delete conversation history with zero observability | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7224> |
| Issue | #7744 | Python: [Bug]: #4991 regresses when any ChatMiddleware is attached — compaction's summary is lost while its exclusion flags persist | closed | jjwong0915 | <https://github.com/microsoft/agent-framework/issues/7744> |
| Issue | #7340 | Dependency validation failed: redis (agent-framework-redis) | closed | github-actions[bot] | <https://github.com/microsoft/agent-framework/issues/7340> |
| Issue | #7917 | Python: restore sequence-only agent middleware API and remove agent-hooks extra | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7917> |
