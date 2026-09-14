# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-03 03:25:40 〜 2026-09-08 00:54:17 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 66 |
| オープン中の新規 PR     | 22 |
| クローズ (未マージ) PR  | 18 |
| 新規 Issue              | 34 |
| クローズ Issue          | 40 |
| 主要コントリビューター  | dependabot[bot], baywet, eavanvalkenburg, SergeyMenshykh, rogerbarreto, UniversePeak |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#8127](https://github.com/microsoft/agent-framework/pull/8127) — [BREAKING] Python: Refine SecretString handling （PR / open / eavanvalkenburg）
  SecretString を利用する Python 実装者は、値の公開・比較・シリアライズ挙動の変更内容を確認し、既存のシークレット取り扱いコードを更新してください。
- **⚠ 破壊的変更** [#8123](https://github.com/microsoft/agent-framework/pull/8123) — [BREAKING] Python: Move path normalization to common shared code （PR / open / westey-m）
  パス正規化に依存する Python 利用者は共通実装への移動で相対パスや境界条件が変わらないか確認し、必要ならテストを追加してください。
- **⚠ 破壊的変更** [#8120](https://github.com/microsoft/agent-framework/pull/8120) — [BREAKING] .NET: Fix strict skill script argument schemas （PR / open / manjunathshiva）
  .NET で skill script を呼び出す利用者は、厳格化された引数スキーマに合わせてスキーマ定義と呼び出し側の引数を修正してください。
- **⚠ 破壊的変更** [#8045](https://github.com/microsoft/agent-framework/pull/8045) — [BREAKING] Python: restrict checkpoint deserialization in FoundryCheckpointStore （PR / open / sricursion）
  FoundryCheckpointStore を使う利用者は、安全なチェックポイント復元制限の変更を確認し、信頼できないデータを復元しない運用へ移行してください。
- **⚠ 破壊的変更** [#8032](https://github.com/microsoft/agent-framework/pull/8032) — .NET: [BREAKING] Clarify A2A agent run modes （PR / merged / SergeyMenshykh）
  .NET の A2A 統合利用者は新しい run mode の適用範囲を確認し、サーバー登録と実行オプションの設定を更新してください。
- **⚠ 破壊的変更** [#8030](https://github.com/microsoft/agent-framework/pull/8030) — [BREAKING] Python: Bump package versions for 1.17.0 release （PR / merged / moonbox3）
  Python パッケージ利用者は 1.17.0 の各パッケージのバージョンと依存関係を確認し、固定バージョンや互換性テストを更新してください。
- **⚠ 破壊的変更** [#7991](https://github.com/microsoft/agent-framework/pull/7991) — .NET: [PREVIEW BREAKING] Promote `AgentSessionStore` into Agents.AI.Abstractions （PR / open / rogerbarreto）
  AgentSessionStore を参照している .NET 利用者は、Agents.AI.Abstractions への移動方針を確認し、プレビュー API の参照先を切り替えてください。
- **⚠ 破壊的変更** [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / merged / antsok）
  .NET のファイルアクセスツール利用者は新しい行番号契約と `file_access_read_lines` に合わせて AgentFileStore 実装・テストを更新してください。
- **⚠ 破壊的変更** [#7669](https://github.com/microsoft/agent-framework/pull/7669) — Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  Python のファイルアクセスツール利用者は .NET 側と同じ行番号契約への変更内容を確認し、既存のツール呼び出しと期待値を見直してください。
- **⚠ 破壊的変更** [#7517](https://github.com/microsoft/agent-framework/pull/7517) — Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent （PR / open / giles17）
  GitHubCopilotAgent で workspace file hooks を使う利用者は、既定値が opt-in に変わる前提で必要なフックを明示的に有効化してください。

## このリポジトリの要点

今週は A2A の run mode、ファイルアクセスの行番号契約、Python 1.17.0 のリリース準備など、複数の **破壊的変更** が進みました。  
Python では Claude の会話ロール保持と機能ワークフローのストリーム後処理が改善され、AG-UI/MCP の履歴互換性も継続して強化されています。  
未マージの破壊的変更（SecretString、checkpoint 復元、skill script スキーマ）は、採用前に API 差分と移行手順を確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8032](https://github.com/microsoft/agent-framework/pull/8032) — .NET: [BREAKING] Clarify A2A agent run modes

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +150 / -155
- マージ日時 (UTC): `2026-09-04 13:56:58`

**変更概要**

 A2A の run mode とエージェント実行オプションの関係を整理し、動的な実行モードの適用範囲を明確化しました。  
 常に A2A の実行オプションを生成する構成へ変更し、ハンドラー・登録オプション・`AgentRunMode` の整合性を更新しています。  
 A2A サーバーをホストする .NET アプリケーションでは、既存の run mode 設定とテストを新しい契約に合わせる必要があります。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AAgentHandler.cs` | 30 | 38 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AServerRegistrationOptions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AServerServiceCollectionExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/AgentRunMode.cs` | 26 | 27 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AAgentHandlerTests.cs` | 58 | 53 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AEndpointRouteBuilderExtensionsTests.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/A2AServerServiceCollectionExtensionsTests.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.A2A.UnitTests/AgentRunModeTests.cs` | 31 | 32 |

</details>

<details><summary>コミット (5 件)</summary>

- `c9c3c0c` backup
- `31d517a` .NET: Always create A2A agent run options
- `f2c69a3` .NET: Decouple A2A run mode from agent options
- `2021189` .NET: Clarify dynamic A2A run mode scope
- `09a340a` .NET: Remove redundant run mode assertion

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: `AgentRunMode` と A2A の実行オプション生成・適用範囲が整理され、従来のモード判定や設定値の前提が変わりました。A2A ハンドラーは動的モードのスコープを明示して実行する構成です。

**既存利用者への影響**

既存の A2A 統合は、利用している run mode とサーバー登録オプションを確認し、不要になった判定や古い設定を更新してください。単純なクライアント利用だけなら影響は限定的です。

### [#8030](https://github.com/microsoft/agent-framework/pull/8030) — [BREAKING] Python: Bump package versions for 1.17.0 release

- 作者: moonbox3 / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +64 / -30
- マージ日時 (UTC): `2026-09-03 09:19:11`

**変更概要**

Python パッケージ群を 1.17.0 として公開するため、各 `pyproject.toml`、CHANGELOG、依存ロックを更新しました。  
Foundry パッケージでは破壊的変更を反映するため、マイナーバージョンを使う方針も記録されています。  
Python の複数パッケージを固定利用する利用者は、個別パッケージの更新順序と互換性を確認してください。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 32 | 1 |
| `python/packages/ag-ui/pyproject.toml` | 1 | 1 |
| `python/packages/core/pyproject.toml` | 1 | 1 |
| `python/packages/devui/pyproject.toml` | 1 | 1 |
| `python/packages/foundry/pyproject.toml` | 3 | 2 |
| `python/packages/foundry_hosting/pyproject.toml` | 2 | 2 |
| `python/packages/gemini/pyproject.toml` | 2 | 2 |
| `python/packages/hosting-responses/pyproject.toml` | 2 | 2 |
| `python/packages/mistral/pyproject.toml` | 2 | 2 |
| `python/packages/openai/pyproject.toml` | 1 | 1 |
| `python/packages/redis/pyproject.toml` | 2 | 2 |
| `python/pyproject.toml` | 2 | 2 |
| `python/uv.lock` | 13 | 11 |

</details>

<details><summary>コミット (2 件)</summary>

- `790ab85` Prepare Python release 1.17.0
- `85bd5f8` Use minor version for Foundry breaking change

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: リリース番号を 1.17.0 にそろえ、Foundry パッケージの変更をマイナーバージョンとして扱いました。新しいバージョンへの更新は、利用中の API と依存制約を確認してから行ってください。

**既存利用者への影響**

固定バージョンを使うアプリケーションは依存関係を 1.17.0 に更新し、Foundry 統合の回帰テストを実行してください。段階的に更新する場合はパッケージ間のバージョン整合性を保つ必要があります。

### [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore

- 作者: antsok / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +1206 / -95
- マージ日時 (UTC): `2026-09-04 10:58:02`

**変更概要**

ファイルアクセスツールに `file_access_read_lines` を追加し、行番号を `AgentFileStore` 側の契約として統一しました。  
ファイル検索・編集・インメモリ/ファイルシステム実装と公開 API、サンプル、テストを一括して更新しています。  
行番号を前提にツール結果を解釈する .NET 利用者は、検索結果と編集操作の境界条件を再確認してください。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step02_WorkingWithData/README.md` | 2 | 1 |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/README.md` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 63 | 7 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProviderOptions.cs` | 4 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryProvider.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/AgentFileStore.cs` | 206 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileEditor.cs` | 92 | 2 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileLineEdit.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileSearchMatch.cs` | 7 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileSystemAgentFileStore.cs` | 5 | 34 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/InMemoryAgentFileStore.cs` | 5 | 35 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 8 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net472/PublicAPI.Unshipped.txt` | 8 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 8 | 0 |
| `dotnet/src/Microsoft.Agents.AI/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 8 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (24 件)</summary>

- `4a3b4bc` .NET: [BREAKING] Add file_access_read_lines and align grep with the l…
- `71f287a` .NET: Strip the whole line terminator before matching, and name args …
- `9670f4e` .NET: Cover the file-system store's search loop and scope the line-nu…
- `9350917` .NET: Drop the parity promise from the read_lines description and sto…
- `ba7e4d5` .NET: [BREAKING] Move the line-numbering contract onto AgentFileStore
- `30115b0` Potential fix for pull request finding
- `5f93585` .NET: Fix two holes in the search alignment check and four stale cont…
- `17345dd` .NET: State the line-counting rule in the tools and give memory its o…
- _... 他 16 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: 行番号の責務を各ファイルアクセス実装から `AgentFileStore` に移し、`file_access_read_lines` と検索・編集の行番号契約を追加しました。公開 API と `PublicAPI.Unshipped.txt` が更新されています。

**既存利用者への影響**

独自の `AgentFileStore` 実装やファイルアクセスツールを使う場合は、行番号の起点・終端処理と新しいメソッド契約に合わせて実装とテストを更新してください。

### [#8122](https://github.com/microsoft/agent-framework/pull/8122) — Python: preserve roles in Claude prompt history

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +156 / -14
- マージ日時 (UTC): `2026-09-08 00:21:36`

**変更概要**

Claude 向けの Python エージェントが会話履歴の各メッセージロールを保持したままプロンプトを構築するように修正しました。  
従来の履歴フラット化による user turn への集約を避け、前置きプロンプトや複数エージェント会話の扱いも整理しています。  
Anthropic/Claude を使う利用者は、履歴を含む会話のモデル応答とトークン使用量を再確認してください。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/claude/agent_framework_claude/_agent.py` | 17 | 7 |
| `python/packages/claude/tests/test_claude_agent.py` | 91 | 7 |
| `python/samples/02-agents/providers/anthropic/README.md` | 1 | 0 |
| `python/samples/02-agents/providers/anthropic/anthropic_claude_sequential_agents.py` | 47 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `ea6f08b` Python: preserve authors in Claude prompts
- `ef5fc03` Added preamble prompt, made ClaudeAgent SupportsAgentRun compliant, s…
- `345c5eb` Reverted settings.json file changes
- `1f980d7` Strutured conversation history + better prompt for convo history hand…
- `229f41d` Merge branch 'main' into jpalvarezl/fix/7894_claude_flatten_turn

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ClaudeAgent` のプロンプト整形処理が、履歴をロール付きメッセージ列として扱う実装に変わりました。公開シグネチャの大幅な変更ではありませんが、プロンプトの入力構造とモデルへの伝達内容が変化します。

**既存利用者への影響**

通常の `ClaudeAgent` 利用ではコード変更は不要ですが、生成プロンプトをスナップショット比較している場合は期待値を更新してください。

### [#7798](https://github.com/microsoft/agent-framework/pull/7798) — Python: Finalize abandoned functional workflow streams without ContextVar leaks

- 作者: Shivani767 / 状態: MERGED
- ラベル: `python`
- 変更行数: +272 / -98
- マージ日時 (UTC): `2026-09-07 22:40:43`

**変更概要**

機能ワークフローの反復を途中で中断した場合でも、ストリームを確実に終了処理し、`ContextVar` のトークンをリークさせないようにしました。  
放棄されたストリームの再開・解放と OpenTelemetry の親子関係をテストで補強しています。  
長時間実行やキャンセルを伴う Python ワークフローの安定性と観測性が改善されます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_workflows/_events.py` | 28 | 5 |
| `python/packages/core/agent_framework/_workflows/_functional.py` | 97 | 86 |
| `python/packages/core/agent_framework/observability.py` | 37 | 6 |
| `python/packages/core/tests/core/test_observability.py` | 19 | 1 |
| `python/packages/core/tests/workflow/test_functional_workflow.py` | 91 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `1504c65` Python: Finalize abandoned functional workflow streams without Contex…
- `10bd0d9` Python: Unlock abandoned functional streams and cover OTel parenting
- `20e4ad6` Python: Fix typing checks for abandoned-stream PR follow-ups

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ワークフローイベントと functional stream の終了処理に、放棄されたストリームを解放する経路を追加しました。API の利用形態を変える変更ではなく、内部のコンテキスト解放と OTel parenting の修正が中心です。

**既存利用者への影響**

通常のワークフロー利用者は移行不要です。途中キャンセルを多用するアプリケーションでは、更新後にストリーム終了とトレースのクローズを確認してください。

### [#8110](https://github.com/microsoft/agent-framework/pull/8110) — Python: Build(deps-dev): Bump the basics group in /python with 3 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `lab` `dependencies`
- 変更行数: +957 / -957
- マージ日時 (UTC): `2026-09-07 22:32:42`

**変更概要**

Python の開発用依存関係を 3 件更新し、`pyproject.toml` と `uv.lock` のピンを同期しました。  
アプリケーション API の変更ではなく、テスト・開発環境の再現性とツール互換性を維持するための更新です。  
CI やローカル開発で lockfile を利用する場合は、再同期後のテスト結果を確認してください。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/lab/pyproject.toml` | 3 | 3 |
| `python/pyproject.toml` | 3 | 3 |
| `python/uv.lock` | 951 | 951 |

</details>

<details><summary>コミット (3 件)</summary>

- `901bb37` Build(deps-dev): Bump the basics group in /python with 3 updates
- `bf36fd7` Fix lab dependency pins and lockfile
- `02c0f03` Merge branch 'main' into dependabot/pip/python/basics-8a009ef7ea

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や実行時の抽象は変更されていません。変更点は Python lab パッケージの開発依存関係と lockfile の更新です。

**既存利用者への影響**

利用者側の移行は不要です。開発環境で依存関係を再インストールし、CI の lint・テストが通ることを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8118 | .NET: Improve inline skill argument error guidance | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8118> |
| #8020 | .NET: Include workflow outputs in hosted agent responses | UniversePeak | <https://github.com/microsoft/agent-framework/pull/8020> |
| #8082 | .NET: Improve Hosted Agent LRA Resilient Recovery Sample | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8082> |
| #8111 | Build(deps): Bump azure/login from 2.3.0 to 3.0.2 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8111> |
| #8113 | Build(deps): Bump azure/login from 2.3.0 to 3.0.2 in /.github/actions/sample-validation-setup | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8113> |
| #8112 | Build(deps): Bump azure/login from 2.3.0 to 3.0.2 in /.github/actions/github-app-token | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8112> |
| #8100 | Chore(deps): Bump softprops/action-gh-release from 3.0.2 to 3.0.3 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8100> |
| #8039 | Python: Scope MCP headers to transport requests | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8039> |
| #7835 | Python: Reject MCP servers passed as tools to Claude and Copilot agents | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7835> |
| #8085 | Python: add MLflow to the observability backend examples | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/8085> |
| #8065 | ci: adds python dependabot groups | baywet | <https://github.com/microsoft/agent-framework/pull/8065> |
| #8062 | Python: Chore(deps-dev): Bump ty from 0.0.72 to 0.0.75 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8062> |
| #8097 | Python: preserve ChatKit input tags in user messages | VedanthB | <https://github.com/microsoft/agent-framework/pull/8097> |
| #8071 | Python: make optional Lightning observability test skip nested import errors | UniversePeak | <https://github.com/microsoft/agent-framework/pull/8071> |
| #8090 | Python: Docs: Fix broken external links in Python samples and docs | Shxiao101 | <https://github.com/microsoft/agent-framework/pull/8090> |
| #8084 | Python: Document anonymous Parallel Search MCP usage | georgeatparallel | <https://github.com/microsoft/agent-framework/pull/8084> |
| #8095 | Python: fix(a2a): initialize _close_http_client on the user-supplied-client path | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8095> |
| #8101 | Chore(deps): Bump actions/setup-node from 4.4.0 to 7.0.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8101> |
| #8102 | Chore(deps): Bump actions/setup-node from 6.4.0 to 7.0.0 in /.github/actions/sample-validation-setup | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8102> |
| #7984 | .NET: Preserve streamed annotations in Foundry hosted responses | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7984> |
| #8046 | .NET: Clarify declarative workflow input serialization | UniversePeak | <https://github.com/microsoft/agent-framework/pull/8046> |
| #8076 | Chore(deps): Bump github/codeql-action/autobuild from 4.37.0 to 4.37.9 in the codeql-actions group across 1 directory | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8076> |
| #8077 | Chore(deps): Bump actions/setup-python from 5.6.0 to 7.0.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8077> |
| #8074 |  ci: adds a codeql actions group to the dependabot configuration | baywet | <https://github.com/microsoft/agent-framework/pull/8074> |
| #8043 | ci: switches to dedicated identity for promotion PRs | baywet | <https://github.com/microsoft/agent-framework/pull/8043> |
| #8072 | Chore(deps): Bump dorny/paths-filter from 4.0.2 to 4.0.3 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8072> |
| #8073 | Chore(deps): Bump softprops/action-gh-release from 3.0.1 to 3.0.2 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8073> |
| #8070 | ci: adds a codeql actions group to the dependabot configuration | baywet | <https://github.com/microsoft/agent-framework/pull/8070> |
| #8059 | ci: adds additional dependabot groups in dotnet to reduce noise | baywet | <https://github.com/microsoft/agent-framework/pull/8059> |
| #8066 | Chore(deps): Bump github/codeql-action/init from 4.37.3 to 4.37.9 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8066> |
| #8067 | Chore(deps): Bump github/codeql-action/analyze from 4.37.3 to 4.37.9 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8067> |
| #8060 | Chore(deps): Bump actions/labeler from 6.1.0 to 7.0.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8060> |
| #8027 | .NET: Bump AgentMemory.AgentFramework from 1.4.1 to 1.5.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8027> |
| #8028 | Bump Anthropic from 12.42.0 to 12.43.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8028> |
| #7790 | Python: recursively serialize nested container values | CoffeeDrivenCoder | <https://github.com/microsoft/agent-framework/pull/7790> |
| #7582 | Chore(deps): Bump actions/github-script from 8.0.0 to 9.0.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7582> |
| #8003 | Python: fix: surface AG-UI workflow intermediate events as reasoning | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8003> |
| #8037 | Python: Chore(deps-dev): Bump zuban from 0.9.1 to 0.9.2 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8037> |
| #8014 | Python: Add core vector store abstractions | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8014> |
| #8038 | Python: Chore(deps-dev): Bump uv from 0.12.5 to 0.12.6 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8038> |
| #8052 | Python: support current FastAPI releases | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8052> |
| #8011 | Python: Stamp AG-UI checkpoint owner on every save | Choppaaahh | <https://github.com/microsoft/agent-framework/pull/8011> |
| #8002 | Python: Update GitHub Copilot SDK to 1.0.11 | droideronline | <https://github.com/microsoft/agent-framework/pull/8002> |
| #8031 | Python: move Foundry eval serialization out of core | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8031> |
| #7876 | Python: add Magentic custom manager prompts sample | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7876> |
| #8036 | Python: Chore(deps-dev): Bump ruff from 0.16.3 to 0.16.4 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8036> |
| #8047 | Enable feature issue ownership triage | moonbox3 | <https://github.com/microsoft/agent-framework/pull/8047> |
| #8023 | Python: Fix checkpoint pickling of runtime raw representations | droideronline | <https://github.com/microsoft/agent-framework/pull/8023> |
| #7855 | Python: wrap Anthropic and Gemini SDK exceptions in ChatClientException | karthikchundi-commits | <https://github.com/microsoft/agent-framework/pull/7855> |
| #7777 | Python: docs: replace the stale learn-docs placeholder with the live links | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7777> |
| #8009 | Python: Chore(deps): Bump browserslist from 4.25.3 to 4.28.8 in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8009> |
| #8019 | Python: Chore(deps-dev): Bump @humanfs/node from 0.16.6 to 0.16.8 in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8019> |
| #7976 | Python: [.NET][Python][Purview] Set inline header for requests made with cold scope cache | eoindoherty1 | <https://github.com/microsoft/agent-framework/pull/7976> |
| #8033 | CODEOWNERS Update | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8033> |
| #8035 | docs: adds missing guidance for public api analyzers updates | baywet | <https://github.com/microsoft/agent-framework/pull/8035> |
| #8029 | .NET: Bump Aspire.Hosting from 13.5.2 to 13.5.3 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8029> |
| #7997 | Python: Select Foundry hosting conversation history source | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7997> |
| #7704 | Python: fix(mcp): name the real error when a cancel scope masks MCP init failures | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7704> |
| #7680 | Python: Document shared chat client concurrency | Ricky-7-Yan | <https://github.com/microsoft/agent-framework/pull/7680> |
| #7883 | Python: Add Foundry-hosted Telegram sample | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7883> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8064 | Python: Chore(deps-dev): Bump ruff from 0.16.4 to 0.16.5 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8064> |
| PR | #8129 | Python: Preserve MCP Host payloads in AG-UI snapshots | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8129> |
| PR | #8058 | Python: fix: keep AG-UI workflow reasoning in thread snapshots | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8058> |
| PR | #8061 | Python: Chore(deps-dev): Bump uv from 0.12.6 to 0.12.7 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8061> |
| PR | #8128 | Python: Preserve bounded MCP Host payload metadata | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8128> |
| PR | #8126 | Python: Clean up MCP HTTP resources after failed connections | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8126> |
| PR | #8117 | Python: fix(python): return call-level compaction summaries in agent responses | open | vedantsonkar | <https://github.com/microsoft/agent-framework/pull/8117> |
| PR | #8130 | Python: Add MCP Host history conversion for AG-UI | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8130> |
| PR | #8127 | [BREAKING] Python: Refine SecretString handling | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8127> |
| PR | #8123 | [BREAKING] Python: Move path normalization to common shared code | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8123> |
| PR | #8087 | Python: fix(core): include tool trajectory details in summarizer input | open | JHf0912 | <https://github.com/microsoft/agent-framework/pull/8087> |
| PR | #8083 | Python: fix(orchestrations): preserve multimodal content during agent handoff | open | manideep-malyala | <https://github.com/microsoft/agent-framework/pull/8083> |
| PR | #8115 | Python: Add portable vector filters and in-memory store | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8115> |
| PR | #8119 | .NET: Validate declarative message properties and improve action errors | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8119> |
| PR | #8120 | [BREAKING] .NET: Fix strict skill script argument schemas | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8120> |
| PR | #8116 | Python: preserve multimodal messages in AG-UI chat client requests | open | CoralGarden52 | <https://github.com/microsoft/agent-framework/pull/8116> |
| PR | #8078 | Python: fix: parse Responses `function_call_output` so hosted tool results reach transports | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8078> |
| PR | #8088 | Python: fix(python): prevent local tool approvals from serializing as MCP responses | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8088> |
| PR | #8080 | Python: fix order-dependent tool-approval bypass in mixed batches | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/8080> |
| PR | #8056 | .NET: Log a warning when an unsupported declarative action is skipped | open | tirdesh | <https://github.com/microsoft/agent-framework/pull/8056> |
| PR | #8045 | [BREAKING] Python: restrict checkpoint deserialization in FoundryCheckpointStore | open | sricursion | <https://github.com/microsoft/agent-framework/pull/8045> |
| PR | #8069 | Chore(deps): Bump astral-sh/setup-uv from 9.0.0 to 10.0.1 in /.github/actions/python-setup | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8069> |
| PR | #7819 | Python: record gen_ai.client.operation.duration for failed chat and embedding calls | closed | venkat-uk | <https://github.com/microsoft/agent-framework/pull/7819> |
| PR | #7881 | Python: feat(core): add tool concurrency groups and sequential execution order | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7881> |
| PR | #7971 | Python: Preserve MCP Host payloads in AG-UI history | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7971> |
| PR | #7895 | Python: preserve message roles in ClaudeAgent._format_prompt | closed | mittalpk | <https://github.com/microsoft/agent-framework/pull/7895> |
| PR | #7682 | Python: clear service_session_id on full-history replay | closed | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7682> |
| PR | #8063 | Python: Chore(deps-dev): Bump prek from 0.4.11 to 0.5.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8063> |
| PR | #7823 | Python: fix(orchestrations): preserve multimodal content during agent handoff | closed | manideep-malyala | <https://github.com/microsoft/agent-framework/pull/7823> |
| PR | #8041 | Python: fix(openai): make function result call_id optional and omit when absent | closed | JHf0912 | <https://github.com/microsoft/agent-framework/pull/8041> |
| PR | #7785 | Bump github/codeql-action/analyze from 4.37.3 to 4.37.7 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7785> |
| PR | #7786 | Bump github/codeql-action/init from 4.37.3 to 4.37.7 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7786> |
| PR | #8026 | .NET: Bump AgentMemory from 1.4.1 to 1.5.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8026> |
| PR | #7928 | Python: Allow OpenAI function results without call IDs | closed | mikemikimike | <https://github.com/microsoft/agent-framework/pull/7928> |
| PR | #8051 | Python: give the Anthropic and OpenAI packages their own dependency-probe Pyright configs | closed | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8051> |
| PR | #7791 | Python: Register built-in orchestration types for checkpoint restore | closed | atty57 | <https://github.com/microsoft/agent-framework/pull/7791> |
| PR | #7885 | Chore(deps-dev): bump prek from 0.4.11 to 0.4.14 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7885> |
| PR | #7884 | Chore(deps-dev): bump ty from 0.0.72 to 0.0.73 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7884> |
| PR | #7696 | Python: Add Foundry-Features header to toolbox requests | closed | Oxygen56 | <https://github.com/microsoft/agent-framework/pull/7696> |
| PR | #7840 | Python: Add HOL Guard middleware sample | closed | deathsamsul | <https://github.com/microsoft/agent-framework/pull/7840> |
| Issue | #8075 | Python: Python / AG-UI: Is stacking Thread Snapshot history with per-agent HistoryProvider intended? | open | likebean | <https://github.com/microsoft/agent-framework/issues/8075> |
| Issue | #8121 | .NET: Missing guidance on A2A client --> A2A host --> tool authentication | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8121> |
| Issue | #8125 | .NET: [Bug]: CodeAct/Hyperlight: host tool parameter names/schema are never surfaced to the model, calling contract must be hand-written into the tool [Description] | open | epcm18 | <https://github.com/microsoft/agent-framework/issues/8125> |
| Issue | #8124 | Python: [Question]: agent-framework-openai imports private openai internals (_legacy_response, lib._parsing._completions) — stability post-v3/HTTPX2? | closed | doruit | <https://github.com/microsoft/agent-framework/issues/8124> |
| Issue | #8103 | Python: Clarify Foundry 1.12 Projects <2.4 bound and supported Projects 2.6 upgrade path | open | arush-saxena | <https://github.com/microsoft/agent-framework/issues/8103> |
| Issue | #8114 | Python: AG-UI chat client drops multimodal message content | open | CoralGarden52 | <https://github.com/microsoft/agent-framework/issues/8114> |
| Issue | #8093 | Python: unknown-call termination leaves service-managed conversations unresolved | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8093> |
| Issue | #8099 | Python: [Bug]: Call-level compaction summary dropped from AgentResponse (only exclusion flags persist) | open | sdkn104 | <https://github.com/microsoft/agent-framework/issues/8099> |
| Issue | #8086 | Python: [Bug]: Summarizer input drops tool call parameters and results | open | JHf0912 | <https://github.com/microsoft/agent-framework/issues/8086> |
| Issue | #8092 | .NET: [Bug]: Workflow handler cancellation is reported as executor failure | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8092> |
| Issue | #8094 | .NET: run_skill_script generates invalid schema for arguments | open | riteshksriv | <https://github.com/microsoft/agent-framework/issues/8094> |
| Issue | #8079 | Python: always_require tool approval silently bypassed when preceded by a declaration-only or unknown call in the same batch | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8079> |
| Issue | #8057 | Python: [Bug]: lab lightning tests hard-fail on fastapi 0.141 (litellm proxy imports removed get_flat_dependant) | closed | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8057> |
| Issue | #8096 | Python: [Bug] ChatKit input tags are dropped from user messages | closed | VedanthB | <https://github.com/microsoft/agent-framework/issues/8096> |
| Issue | #8109 | Withdrawn duplicate report | closed | 2peopledesu | <https://github.com/microsoft/agent-framework/issues/8109> |
| Issue | #8108 | Withdrawn duplicate report | closed | 2peopledesu | <https://github.com/microsoft/agent-framework/issues/8108> |
| Issue | #8105 | Withdrawn duplicate report | closed | 2peopledesu | <https://github.com/microsoft/agent-framework/issues/8105> |
| Issue | #8107 | Withdrawn duplicate report | closed | 2peopledesu | <https://github.com/microsoft/agent-framework/issues/8107> |
| Issue | #8106 | Withdrawn duplicate report | closed | 2peopledesu | <https://github.com/microsoft/agent-framework/issues/8106> |
| Issue | #8104 | Withdrawn duplicate report | closed | 2peopledesu | <https://github.com/microsoft/agent-framework/issues/8104> |
| Issue | #8089 | Python: Docs: Broken external links in Python samples and docs (11 dead URLs) | closed | Shxiao101 | <https://github.com/microsoft/agent-framework/issues/8089> |
| Issue | #8055 | Investigate ways to handle large content items | open | westey-m | <https://github.com/microsoft/agent-framework/issues/8055> |
| Issue | #8053 | Python: AG-UI: checkpoint ownership not validated on clean-checkpoint resume (fixed by #8011) | closed | Choppaaahh | <https://github.com/microsoft/agent-framework/issues/8053> |
| Issue | #8068 | Python: [Bug]: Responses stream parser silently drops unhandled platform/hosted tool call and result item types, causing AG-UI tool calls to go missing or show "tool calls missing results" | open | djw-bsn | <https://github.com/microsoft/agent-framework/issues/8068> |
| Issue | #8054 | Python: [Bug]: AG-UI workflow reasoning is dropped from thread snapshots, so intermediate output vanishes on hydration | open | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8054> |
| Issue | #8050 | Python: [Feature]: no signal when an `as_tool()` child agent has no agent-hooks bundle | open | repowazdogz-droid | <https://github.com/microsoft/agent-framework/issues/8050> |
| Issue | #8042 | Python: [Bug]: agent-framework-ag-ui caps fastapi<0.140.0, which excludes every current release | closed | BenTaylorDev | <https://github.com/microsoft/agent-framework/issues/8042> |
| Issue | #8024 | Python: AG-UI + Workflow: when to use AgentFrameworkWorkflow vs workflow.as_agent()? | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8024> |
| Issue | #8048 | Python: [Feature]: Compatibility with Connected Namespace | closed | damienaicheh | <https://github.com/microsoft/agent-framework/issues/8048> |
| Issue | #8040 | .NET: [Bug]: Declarative workflows silently skip unsupported actions | open | tirdesh | <https://github.com/microsoft/agent-framework/issues/8040> |
| Issue | #8044 | Python: FoundryCheckpointStore does not restrict checkpoint deserialization like the other checkpoint stores | open | sricursion | <https://github.com/microsoft/agent-framework/issues/8044> |
| Issue | #8049 | Python: [Bug]: dependency-maintenance upper-bound step has been skipped since Aug 3, freezing every package's dependency bounds | open | manjunathshiva | <https://github.com/microsoft/agent-framework/issues/8049> |
| Issue | #8022 | Python: [Bug]: Workflow checkpointing fails on A2A protobuf raw representations | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/8022> |
| Issue | #8034 | Python: [Bug]: Token Count Discrepancy between Microsoft Foundry and Agent Framework - Potential Billing Issue | open | vg-utilitas | <https://github.com/microsoft/agent-framework/issues/8034> |
| Issue | #7894 | Python: [Bug]: ClaudeAgent flattens multi-agent conversation history into one undifferentiated user turn | closed | mittalpk | <https://github.com/microsoft/agent-framework/issues/7894> |
| Issue | #7787 | Python: [Bug]: Functional workflow ResponseStream leaks ContextVar tokens across tasks when abandoned mid-iteration (break before exhaustion) | closed | snovik75 | <https://github.com/microsoft/agent-framework/issues/7787> |
| Issue | #7989 | .NET: [Bug]: Agent Skill throws "System.InvalidOperationException" | closed | s-kip | <https://github.com/microsoft/agent-framework/issues/7989> |
| Issue | #8013 | .NET: [.NET] Unclear how to return Workflow Output as Agent Response | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8013> |
| Issue | #2231 | .NET: execute_tool double escapes gen_ai.tool.call.result | closed | zakimaksyutov | <https://github.com/microsoft/agent-framework/issues/2231> |
| Issue | #7824 | .NET: [Feature]: Support MCP 2026-07-28 specification (including Tasks Extension) in Agent Framework .NET MCP Connector | closed | Pratik-Shah | <https://github.com/microsoft/agent-framework/issues/7824> |
| Issue | #3651 | Python: [Feature]: Add Support for Converting Agent Framework MCPTools to GitHub Copilot SDK / Claude SDK | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/3651> |
| Issue | #7950 | Python: [Bug]: A2AAgent.__aexit__ raises AttributeError when a custom http_client is passed without client= | closed | markproy | <https://github.com/microsoft/agent-framework/issues/7950> |
| Issue | #6926 | .NET: Hosted agent streaming drops url_citation annotations (no response.output_text.annotation.added SSE emitted) | closed | graemefoster | <https://github.com/microsoft/agent-framework/issues/6926> |
| Issue | #8016 | .NET: [Bug]: serialization related bugs/inconsistency in implementation or documentation | closed | dsslight | <https://github.com/microsoft/agent-framework/issues/8016> |
| Issue | #7955 | Python: [Bug]: Foundry hosting feeds the model duplicated conversation history when a working session store is combined with service-side conversation storage | closed | sachinkahawala | <https://github.com/microsoft/agent-framework/issues/7955> |
| Issue | #5168 | Add vector store docs for AF | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/5168> |
| Issue | #7788 | Python: [Bug]: SerializationMixin does not recursively serialize nested containers | closed | CoffeeDrivenCoder | <https://github.com/microsoft/agent-framework/issues/7788> |
| Issue | #8000 | Python: [Bug]: AG-UI workflow runner ignores "intermediate" events | closed | savannahknight | <https://github.com/microsoft/agent-framework/issues/8000> |
| Issue | #4172 | Python: Phase 10: TextSearch Abstractions & Implementations | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4172> |
| Issue | #4165 | Python: Phase 3: Core Vector Store Abstractions | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4165> |
| Issue | #8001 | Python: Update GitHub Copilot SDK to support BYOK token providers | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/8001> |
| Issue | #7298 | Python: Add sample to show magentic prompt overwrite | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7298> |
| Issue | #7771 | Python: [Bug]: python/README.md still says "Learn docs are coming soon" | closed | atty57 | <https://github.com/microsoft/agent-framework/issues/7771> |
| Issue | #5618 | .NET: [Bug]: HostedImageGenerationTool throws NullReferenceException | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/5618> |
| Issue | #7367 | .NET: Replace AgentRunMode with SendMessageConfiguration.return_immediately | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/7367> |
| Issue | #7699 | Python: [Bug]: MCP HTTP auth failures (401) surface as "Cancelled via cancel scope ..." instead of the actual error | closed | Katilho | <https://github.com/microsoft/agent-framework/issues/7699> |
| Issue | #7654 | Python: [Feature]: Document and test Python ChatClient concurrent-use contract | closed | TsuyoshiUshio | <https://github.com/microsoft/agent-framework/issues/7654> |
| Issue | #6587 | Hosting: Invocations channel and Foundry hosted agent sample | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6587> |
| Issue | #7833 | Python: Proposal: official HOL Guard FunctionMiddleware example for protected tool calls | closed | kantorcodes | <https://github.com/microsoft/agent-framework/issues/7833> |
