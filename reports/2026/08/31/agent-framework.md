# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 15 |
| オープン中の新規 PR     | 25 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 23 |
| クローズ Issue          | 14 |
| 主要コントリビューター  | rogerbarreto, TaoChenOSU, westey-m, shoemoney, dependabot[bot], eavanvalkenburg |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7918](https://github.com/microsoft/agent-framework/pull/7918) — Python: [BREAKING] restore agent middleware API contract （PR / open / eavanvalkenburg）
  Python で middleware を実装・利用している開発者は、復元される API 契約と呼び出し順を確認し、マージ後にアダプターや型注釈の更新が必要か判断してください。
- **⚠ 破壊的変更** [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  .NET で AgentFileStore の行番号契約やファイル読み取りフックを利用する実装は、新しい `file_access_read_lines` と契約移動の影響を確認し、必要なら実装を更新してください。
- **⚠ 破壊的変更** [#7517](https://github.com/microsoft/agent-framework/pull/7517) — Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent （PR / open / giles17）
  GitHubCopilotAgent で workspace file hooks を前提にしている Python 利用者は、明示的な有効化が必要になるため、設定と権限境界を確認してください。

## このリポジトリの要点

今週は .NET の Foundry AgentHost ポート重複修正と、Python 1.16.0 のパッケージ更新がマージされました。  
Python の agentserver 依存関係更新、Azure AI Search の source kind 保持、.NET の待機タイムアウト追加も進み、ホスティングと実行安定性が改善されています。  
一方、middleware 契約や workspace file hooks の **破壊的変更** PR がオープン中のため、採用予定者は継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7932](https://github.com/microsoft/agent-framework/pull/7932) — .NET: Fix duplicate Foundry AgentHost port binding

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +134 / -47
- マージ日時 (UTC): `2026-08-28 15:09:23`

**変更概要**

Foundry AgentHost のポートが重複してバインドされる問題を修正しました。  
ホスト URL を使ったポート設定に整理し、ServiceCollection 拡張と統合テスト／単体テストを更新しています。  
Foundry のホステッドエージェントをローカルまたはコンテナーで起動する .NET 利用者の起動安定性に影響します。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 27 | 24 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests.TestContainer/Program.cs` | 11 | 0 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests/HappyPathHostedAgentTests.cs` | 5 | 3 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests/README.md` | 5 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/FoundryListenPortTests.cs` | 86 | 20 |

</details>

<details><summary>コミット (2 件)</summary>

- `4e1df00` Fix duplicate Foundry AgentHost port binding
- `b7c85fa` Use host URLs for Foundry port configuration

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ServiceCollectionExtensions` の Foundry ポート構成をホスト URL ベースに変更し、重複登録を避ける実装と検証を追加しました。公開 API の破壊的変更は見当たらず、主な変更はホスティング内部とテストです。

**既存利用者への影響**

通常の利用者に移行作業は不要です。独自に AgentHost の URL／ポートを上書きしている場合のみ、起動設定と新しいテスト例を確認してください。

### [#7924](https://github.com/microsoft/agent-framework/pull/7924) — Python: Bump package versions for 1.16.0 release

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +42 / -20
- マージ日時 (UTC): `2026-08-28 00:41:25`

**変更概要**

Python パッケージ群のバージョンを 1.16.0 リリースに合わせて更新しました。  
各パッケージの `pyproject.toml`、ルート設定、`uv.lock`、CHANGELOG を同期しています。  
Python パッケージ利用者は、1.16.0 を採用するか、依存関係の固定値を確認してください。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 23 | 1 |
| `python/packages/ag-ui/pyproject.toml` | 1 | 1 |
| `python/packages/anthropic/pyproject.toml` | 1 | 1 |
| `python/packages/azure-ai-search/pyproject.toml` | 1 | 1 |
| `python/packages/core/pyproject.toml` | 1 | 1 |
| `python/packages/foundry_hosting/pyproject.toml` | 1 | 1 |
| `python/packages/gemini/pyproject.toml` | 1 | 1 |
| `python/packages/mistral/pyproject.toml` | 1 | 1 |
| `python/packages/openai/pyproject.toml` | 1 | 1 |
| `python/pyproject.toml` | 2 | 2 |
| `python/uv.lock` | 9 | 9 |

</details>

<details><summary>コミット (1 件)</summary>

- `c111622` Python: bump package versions for 1.16.0 release

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更はリリース番号とロックファイル、CHANGELOG の更新が中心で、新しい API シグネチャや破壊的変更はこの PR では導入されていません。

**既存利用者への影響**

1.16.0 に更新する利用者は通常の依存関係更新として適用できます。バージョン固定を行っている場合は、必要なパッケージだけを段階的に更新してください。

### [#7921](https://github.com/microsoft/agent-framework/pull/7921) — Python: Upgrade agentserver dependencies to latest

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `python` `foundry` `hosting`
- 変更行数: +4356 / -4310
- マージ日時 (UTC): `2026-08-27 21:32:18`

**変更概要**

agentserver の依存関係を最新化し、Foundry hosting パッケージの応答処理とツールボックスを調整しました。  
依存関係ロックを大きく更新し、レスポンス／ツールボックスのテストも追加・修正しています。  
agentserver や Foundry hosting を利用する Python アプリでは、依存更新による挙動差を確認してください。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 10 | 3 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_toolbox.py` | 9 | 0 |
| `python/packages/foundry_hosting/pyproject.toml` | 3 | 3 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 18 | 2 |
| `python/packages/foundry_hosting/tests/test_toolbox.py` | 13 | 0 |
| `python/uv.lock` | 4303 | 4302 |

</details>

<details><summary>コミット (2 件)</summary>

- `dc799ef` Upgrade agentserver dependencies to latest
- `97abce0` Address comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_responses.py` と `_toolbox.py` の内部処理および依存バージョンが変わっています。公開 API の明示的な破壊的変更は一覧からは確認できませんが、agentserver の依存更新に伴う互換性をテストで確認しています。

**既存利用者への影響**

ロックファイルを利用する場合は依存関係を再同期してください。agentserver の型やレスポンスを直接参照する利用者は、既存の統合テストを再実行することを推奨します。

### [#7875](https://github.com/microsoft/agent-framework/pull/7875) — Python: Preserve Azure AI Search source kinds

- 作者: orangeCatDeveloper / 状態: MERGED
- ラベル: `python`
- 変更行数: +119 / -20
- マージ日時 (UTC): `2026-08-27 14:28:51`

**変更概要**

Azure AI Search の検索結果で knowledge source の種類（source kind）が後続処理で失われる問題を修正しました。  
コンテキストプロバイダーの変換処理を変更し、複数の source kind を保持するテストを追加しています。  
Azure AI Search をエージェントのコンテキスト取得に使う Python 利用者の引用・結果分類が安定します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azure-ai-search/agent_framework_azure_ai_search/_context_provider.py` | 26 | 17 |
| `python/packages/azure-ai-search/tests/test_aisearch_context_provider.py` | 93 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `23dbe75` fix(search): preserve knowledge source kinds

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_context_provider.py` の結果変換で source kind を保持するよう変更しました。既存の公開メソッドのシグネチャ変更や破壊的変更はなく、テストで knowledge source の種類を検証しています。

**既存利用者への影響**

通常の利用者に移行作業は不要です。検索結果の source kind を独自に判定している場合は、更新後も期待する種類が保持されることを確認してください。

### [#7911](https://github.com/microsoft/agent-framework/pull/7911) — .NET: Add timeout for wait-for-first-completion

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +193 / -4
- マージ日時 (UTC): `2026-08-27 15:16:32`

**変更概要**

`wait-for-first-completion` の待機処理にタイムアウトを追加し、最初の完了イベントが来ない場合に無期限に待ち続けないようにしました。  
`BackgroundAgentsProviderOptions` に設定を追加し、プロバイダー本体と単体テストを更新しています。  
バックグラウンドエージェントを利用する .NET アプリでは、タイムアウト値と失敗時の扱いを確認してください。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/Harness/BackgroundAgents/BackgroundAgentsProvider.cs` | 36 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Harness/BackgroundAgents/BackgroundAgentsProviderOptions.cs` | 13 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/BackgroundAgents/BackgroundAgentsProviderTests.cs` | 144 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `7f414ce` Add timeout for wait-for-first-completion
- `6981693` Merge branch 'main' into dotnet-wait-for-first-completion-timeout
- `daca679` Address PR comments
- `27422b6` Merge branch 'main' into dotnet-wait-for-first-completion-timeout

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`BackgroundAgentsProviderOptions` に待機タイムアウトの設定項目が追加され、プロバイダーが期限超過を処理するようになりました。既存設定には既定値が適用されるため、明示的な破壊的変更はありません。

**既存利用者への影響**

通常は移行不要です。長時間実行を許容していた利用者は新しいタイムアウト設定を確認し、必要なら値を調整してタイムアウト発生時の再試行やエラー処理を追加してください。

### [#7913](https://github.com/microsoft/agent-framework/pull/7913) — .NET: docs/workflow fileinput sample dotnet

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +255 / -0
- マージ日時 (UTC): `2026-08-27 14:55:59`

**変更概要**

Declarative workflow でファイル入力を扱う .NET の実例を追加しました。  
YAML、C#、プロジェクト、固定入力ファイル、README を含むサンプル一式と、ワークフロー実行時のファイル保持処理を整備しています。  
ファイル入力を使うワークフローの導入検討者が、実行から後片付けまでの構成を確認できます。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-dotnet.slnx` | 1 | 0 |
| `dotnet/samples/03-workflows/Declarative/FileInput/FileInput.csproj` | 43 | 0 |
| `dotnet/samples/03-workflows/Declarative/FileInput/FileInput.yaml` | 30 | 0 |
| `dotnet/samples/03-workflows/Declarative/FileInput/ProductBrief.txt` | 16 | 0 |
| `dotnet/samples/03-workflows/Declarative/FileInput/Program.cs` | 127 | 0 |
| `dotnet/samples/03-workflows/Declarative/FileInput/README.md` | 15 | 0 |
| `dotnet/samples/03-workflows/Declarative/README.md` | 12 | 0 |
| `dotnet/src/Shared/Workflows/Execution/WorkflowRunner.cs` | 11 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `c4d0259` docs: adds a workflow file input example in dotnet
- `bc0eb76` fix: switches to a hosted file since model doesn't support the data c…
- `860c36d` fix: simplify declarative file input sample
- `b83d2f2` fix: upload fixed file input fixture
- `9a20b30` fix: preserve workflow result on cleanup failure
- `b4decdc` refactor: clarify uploaded file naming
- `1a86390` docs: removes outdated command

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

主な変更は新規サンプルとドキュメントで、`WorkflowRunner` にはファイル入力結果を保持するための内部処理が追加されています。既存 API の破壊的変更は確認できません。

**既存利用者への影響**

既存アプリの移行は不要です。Declarative workflow にファイル入力を追加する場合は、同梱 README と YAML／C# の構成をベースに導入してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7837 | Python: fix Gemini finish reason fallback and usage-attach cascade | shoemoney | <https://github.com/microsoft/agent-framework/pull/7837> |
| #7847 | Python: Prevent workflow checkpoints from being mutated outside of storage implementations | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7847> |
| #7908 | Python: Add timeout for wait-for-first-completion | westey-m | <https://github.com/microsoft/agent-framework/pull/7908> |
| #7915 | Add Python-wide code ownership | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7915> |
| #7903 | Python: Discard unsafe Content fields during deepcopy | Sweetteabittersugar | <https://github.com/microsoft/agent-framework/pull/7903> |
| #7901 | Python: Fix input mutation in SerializationMixin.from_dict | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7901> |
| #7889 | Bump Dapr.AI.Microsoft.Extensions from 1.18.4 to 1.18.5 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7889> |
| #7891 | .NET: Simplify A2A client-server sample | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7891> |
| #7896 | .NET: Remove retired OpenAI Assistants integration tests | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7896> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7951 | Python: Fix A2AAgent AttributeError on exit with a caller-supplied http_client | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7951> |
| PR | #7907 | Python: Include InvokeAzureAgent input.arguments in agent text | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7907> |
| PR | #7918 | Python: [BREAKING] restore agent middleware API contract | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7918> |
| PR | #7953 | Python: make tool argument-validation errors self-correcting for the model | open | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7953> |
| PR | #7948 | Python: carry fan-in edge buffers through checkpoint restore | open | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7948> |
| PR | #7912 | Python: Fix compaction persistence, thresholds, and observability | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7912> |
| PR | #7906 | Python: preserve Responses replay metadata across AG-UI continuations | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7906> |
| PR | #7944 | Python: fix: preserve synthetic compaction summaries | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7944> |
| PR | #7954 | .NET: Bump Azure.Core from 1.61.0 to 1.62.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7954> |
| PR | #7947 | .NET: keep the first request seen for a repeated request ID | open | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7947> |
| PR | #7928 | Python: Allow OpenAI function results without call IDs | open | mikemikimike | <https://github.com/microsoft/agent-framework/pull/7928> |
| PR | #7909 | .NET: Add pending tool approval closure semantics (#7872) | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7909> |
| PR | #7945 | .NET: surface a workflow tool approval request once | open | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7945> |
| PR | #7939 | .NET: defer checkpoint cleanup until workflow restoration succeeds | open | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7939> |
| PR | #7942 | Python: fix typos in docs and handoff docstring | open | feizhuzheng | <https://github.com/microsoft/agent-framework/pull/7942> |
| PR | #7937 | ci: upload coverage reports to github | open | baywet | <https://github.com/microsoft/agent-framework/pull/7937> |
| PR | #7938 | .NET: tests: removes dependency on fluent assersion because of licensing concerns | open | baywet | <https://github.com/microsoft/agent-framework/pull/7938> |
| PR | #7936 | .NET: Avoid duplicate AG-UI conversation history | open | javiercn | <https://github.com/microsoft/agent-framework/pull/7936> |
| PR | #7935 | .NET: add public API analyzers | open | baywet | <https://github.com/microsoft/agent-framework/pull/7935> |
| PR | #7934 | .NET: feat: adds the executorId as an additional property when running the workflow as agent in dotnet | open | baywet | <https://github.com/microsoft/agent-framework/pull/7934> |
| PR | #7925 | .NET: Propagate AgentRunOptions to underlying workflow agents | open | Saibernard | <https://github.com/microsoft/agent-framework/pull/7925> |
| PR | #7927 | Python: make transitive pre-release bounds explicit in release dependency probes | open | Copilot | <https://github.com/microsoft/agent-framework/pull/7927> |
| PR | #7920 | .NET: Fix AG-UI SSE events written with explicit nulls | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7920> |
| PR | #7900 | Python: Add OrcaRouter provider samples | open | nissrin2020ali-ux | <https://github.com/microsoft/agent-framework/pull/7900> |
| PR | #7897 | Python: Prefer MCP structuredContent over duplicate content | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7897> |
| PR | #7910 | Python: Support checkpoint hydration and new input in a single workflow run (#7863) | closed | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7910> |
| PR | #7898 | Python: Discard non-copyable fields on Content deepcopy | closed | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7898> |
| PR | #7904 | Python: bound background_agents_wait_for_first_completion with a timeout | closed | manojmeruva | <https://github.com/microsoft/agent-framework/pull/7904> |
| Issue | #7905 | Python: Preserve Responses replay metadata across AG-UI continuations | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7905> |
| Issue | #7956 | .NET: [Feature]: .NET: Add per-RequestPort response composition mode | open | hikaru-212 | <https://github.com/microsoft/agent-framework/issues/7956> |
| Issue | #7955 | Python: [Bug]: Foundry hosting feeds the model duplicated conversation history when a working session store is combined with service-side conversation storage | open | sachinkahawala | <https://github.com/microsoft/agent-framework/issues/7955> |
| Issue | #7952 | Python: [Bug]: WorkflowAgent drops response metadata when forwarding AgentResponseUpdate | open | junnhwan | <https://github.com/microsoft/agent-framework/issues/7952> |
| Issue | #7923 | Python: Cosmos memory provider misses Toolkit 0.3 episodic and procedural retrieval APIs | open | coding-totoro | <https://github.com/microsoft/agent-framework/issues/7923> |
| Issue | #7949 | Python: [Bug]: OpenAIChatClient ignores OPENAI_BASE_URL when AZURE_OPENAI_ENDPOINT is also present in the environment | closed | darkzOGx | <https://github.com/microsoft/agent-framework/issues/7949> |
| Issue | #7950 | Python: [Bug]: A2AAgent.__aexit__ raises AttributeError when a custom http_client is passed without client= | open | markproy | <https://github.com/microsoft/agent-framework/issues/7950> |
| Issue | #7946 | .NET: [Bug]: a repeated CallId or RequestId in an agent stream fails the whole workflow run | open | YashvantHange | <https://github.com/microsoft/agent-framework/issues/7946> |
| Issue | #7941 | Python: [Bug]: OpenAIChatClient does not honor OPENAI_BASE_URL environment variable | closed | darkzOGx | <https://github.com/microsoft/agent-framework/issues/7941> |
| Issue | #7943 | Python: [Bug]: CompactionProvider.before_run drops synthetic summary messages created by compaction strategies | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7943> |
| Issue | #7940 | Python: [Bug]: OpenAIChatClient does not honor OPENAI_BASE_URL environment variable | closed | darkzOGx | <https://github.com/microsoft/agent-framework/issues/7940> |
| Issue | #7933 | .NET: Set up PublicAPI analyzers and shipped API promotion | open | baywet | <https://github.com/microsoft/agent-framework/issues/7933> |
| Issue | #7916 | Python: [Bug]: Code Interpreter file citations are lost through FoundryToolbox hosting | open | eamonoreilly | <https://github.com/microsoft/agent-framework/issues/7916> |
| Issue | #7931 | .NET: Add Conformance Test Library for Agent Framework | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7931> |
| Issue | #7930 | .NET: [Bug]: AG-UI endpoint sends duplicate conversation messages to providers | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/7930> |
| Issue | #7929 | .NET: [Feature]: docs example for PZERO OpenAI-compatible endpoint | open | cursor[bot] | <https://github.com/microsoft/agent-framework/issues/7929> |
| Issue | #7922 | Python: [Bug]: OpenAI RAPI no longer requires the call id on a function call result | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7922> |
| Issue | #7926 | Python: [Bug]: Release validator failed to validate packages | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7926> |
| Issue | #7919 | .NET: [Bug]: AddAGUIServer writes explicit nulls on the AG-UI wire with AGUI 0.0.6 (rejected by @ag-ui/client) | open | LoicDagnas | <https://github.com/microsoft/agent-framework/issues/7919> |
| Issue | #7917 | Python: restore sequence-only agent middleware API and remove agent-hooks extra | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7917> |
| Issue | #7914 | .NET: .NET/Python: design per-tool concurrency controls | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7914> |
| Issue | #7899 | Python: [Bug]: `SerializationMixin.from_dict()` mutates caller input when merging dictionary dependencies | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7899> |
| Issue | #7902 | .NET: Python: [Bug]: InvokeAzureAgent silently drops `input.arguments`, never sends them to the agent | open | AnaNeri | <https://github.com/microsoft/agent-framework/issues/7902> |
| Issue | #6361 | Write Harness Blog post and samples | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6361> |
| Issue | #7617 | .NET: [Bug]: Microsoft.Agents.AI.Foundry.Hosting 1.17.0-preview.260804.1: container fails to start, "address already in use" on port 8088 | closed | aherbert-shine | <https://github.com/microsoft/agent-framework/issues/7617> |
| Issue | #4752 | .NET: [Bug]: Foundry-backed Agent sessions surface `resp_*` history IDs instead of Foundry `conv_*` conversation IDs | closed | brandonh-msft | <https://github.com/microsoft/agent-framework/issues/4752> |
| Issue | #2772 | .NET Workflows - Provide sample that demonstrate providing file based input to workflow | closed | crickman | <https://github.com/microsoft/agent-framework/issues/2772> |
| Issue | #7836 | Python: [Bug]: Gemini chat client drops unmapped finish reasons and their usage/token accounting | closed | shoemoney | <https://github.com/microsoft/agent-framework/issues/7836> |
| Issue | #7683 | Python: [Bug]: Checkpoint state is not isolated from live workflow state across restoration and storage boundaries | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7683> |
| Issue | #7454 | Python: [Bug]: `background_agents_wait_for_first_completion` waits with no bound — a child that never completes suspends the calling agent's run indefinitely | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7454> |
| Issue | #7856 | Python: [Bug]: AzureAISearchContextProvider sends SearchIndexKnowledgeSourceParams for web sources in mixed knowledge bases | closed | damienaicheh | <https://github.com/microsoft/agent-framework/issues/7856> |
| Issue | #7851 | Python: [Bug]:  Should `Content.__deepcopy__` preserve unsafe fields | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7851> |
| Issue | #7825 | .NET: [Bug]: Hosted MCP calls remain sequential despite parallel_tool_calls=true | closed | riteshksriv | <https://github.com/microsoft/agent-framework/issues/7825> |
