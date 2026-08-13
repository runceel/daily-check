# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 48 |
| オープン中の新規 PR     | 43 |
| クローズ (未マージ) PR  | 26 |
| 新規 Issue              | 55 |
| クローズ Issue          | 49 |
| 主要コントリビューター  | moonbox3, peibekwe, dependabot[bot], giles17, SergeyMenshykh, westey-m |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7567](https://github.com/microsoft/agent-framework/pull/7567) — .NET: [BREAKING] Rename to AgentIsolationKeyProvider （PR / merged / SergeyMenshykh）
  .NET 利用者は `AgentIsolationKeyProvider` への参照変更が必要か確認し、旧名を使うコードとサンプルを更新してください。
- **⚠ 破壊的変更** [#7534](https://github.com/microsoft/agent-framework/issues/7534) — Python: [Bug]: Breaking for non-reasoning Foundry model deployment (gpt 4.1).`FoundryChatClient` unconditionally requests `reasoning.encrypted_content` （Issue / closed / Kalyan-AI-Hub）
  Foundry の非 reasoning モデル利用者は `FoundryChatClient` が不要な暗号化 reasoning コンテンツを要求しないか、依存バージョンと設定を確認してください。
- **⚠ 破壊的変更** [#7533](https://github.com/microsoft/agent-framework/pull/7533) — [BREAKING] Python: Migrate FHA to responses==2.0.0b1 and add Foundry state store （PR / merged / TaoChenOSU）
  Python FHA 利用者は `responses` 2.0.0b1 互換性と新しい Foundry state store の移行手順を確認してください。
- **⚠ 破壊的変更** [#7521](https://github.com/microsoft/agent-framework/pull/7521) — Python: [BREAKING] Update functional workflow continuation handling （PR / open / moonbox3）
  functional workflow の継続処理を利用する開発者は、オープン PR の仕様変更内容と既存の continuation 実装への影響を確認してください。
- **⚠ 破壊的変更** [#7517](https://github.com/microsoft/agent-framework/pull/7517) — Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent （PR / open / giles17）
  GitHubCopilotAgent で workspace file hooks を使う利用者は、オプトイン化後の設定追加が必要か確認してください。
- **⚠ 破壊的変更** [#7384](https://github.com/microsoft/agent-framework/issues/7384) — .NET: [Bug]: HarnessAgent forces persisted ChatHistoryProvider state, breaking AgentWorkflowBuilder Handoff orchestration （Issue / open / MirkoMattioliSacmi）
  .NET の Handoff orchestration 利用者は、HarnessAgent が状態を強制保存することでワークフローが変わらないか回帰確認してください。
- **⚠ 破壊的変更** [#7156](https://github.com/microsoft/agent-framework/issues/7156) — .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used （Issue / closed / VaclavK）
  skills 利用時にセッションが更新されない問題を追跡する利用者は、1.13 以降の変更分類と修正版の適用状況を確認してください。
- **⚠ セキュリティ** [#7466](https://github.com/microsoft/agent-framework/issues/7466) — Python: Security: 64 official samples ingest untrusted content without SecureAgentConfig (of 357 that omit it entirely) （Issue / open / lerelerele）
  サンプルを利用・公開する開発者は、信頼できない入力を扱う 64 サンプルに `SecureAgentConfig` を追加し、プロンプトインジェクション対策を確認してください。
- **⚠ セキュリティ** [#7463](https://github.com/microsoft/agent-framework/issues/7463) — [Feature]: Support security copilot （Issue / closed / fedsp）
  Security Copilot 連携を検討する担当者は、クローズ済み提案の実装状況と利用可能な統合方式を確認してください。
- **⚠ セキュリティ** [#7383](https://github.com/microsoft/agent-framework/issues/7383) — Python: Bind tool-approval responses to surfaced approval requests （Issue / open / eavanvalkenburg）
  tool approval を実装する開発者は、承認応答が表示された承認要求に正しく紐付くことを確認してください。
- **GA 昇格** [#4254](https://github.com/microsoft/agent-framework/issues/4254) — .NET: A2A Hosting GA （Issue / open / markwallace-microsoft）
  A2A Hosting を本番採用する利用者は、GA 前の API・サポート範囲とリリース予定を継続確認してください。

## このリポジトリの要点

今週は .NET の `AgentIsolationKeyProvider` 改名と、Python FHA の Responses API / state store 移行という **破壊的変更** が中心でした。  
Python 側では Gemini の承認リプレイ、Claude セッション分離、FHA の session ID 翻訳も修正され、マルチセッションの信頼性が改善されています。  
一方、サンプルの `SecureAgentConfig` 不足や A2A Hosting GA など、セキュリティと安定版化に関する確認事項が残っています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7567](https://github.com/microsoft/agent-framework/pull/7567) — .NET: [BREAKING] Rename to AgentIsolationKeyProvider

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +202 / -200
- マージ日時 (UTC): `2026-08-07 15:19:15`

**変更概要**

ストレージ分離キーのプロバイダー名を、実際の責務を表す `AgentIsolationKeyProvider` に統一しました。  
仕様書、A2A/AG-UI のホスティング実装、各サンプルとドキュメントの参照を一括更新しています。  
名前解決に依存する .NET アプリケーションとサンプルが影響範囲です。

<details><summary>変更ファイル (29 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/003-dotnet-hosting-protocol-helpers.md` | 1 | 1 |
| `dotnet/samples/02-agents/AGUI/README.md` | 1 | 1 |
| `dotnet/samples/02-agents/AGUI/Step01_GettingStarted/Server/Program.cs` | 2 | 2 |
| `dotnet/samples/02-agents/AGUI/Step02_BackendTools/Server/Program.cs` | 2 | 2 |
| `dotnet/samples/02-agents/AGUI/Step03_FrontendTools/Server/Program.cs` | 2 | 2 |
| `dotnet/samples/02-agents/AGUI/Step04_HumanInLoop/Server/Program.cs` | 2 | 2 |
| `dotnet/samples/02-agents/AGUI/Step05_StateManagement/Server/Program.cs` | 2 | 2 |
| `dotnet/samples/05-end-to-end/A2AClientServer/A2AServer/Program.cs` | 2 | 2 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIDojoServer/Program.cs` | 2 | 2 |
| `dotnet/samples/05-end-to-end/AGUIClientServer/AGUIServer/Program.cs` | 2 | 2 |
| `dotnet/samples/05-end-to-end/AGUIWebChat/Server/Program.cs` | 2 | 2 |
| `dotnet/samples/05-end-to-end/AgentWebChat/AgentWebChat.AgentHost/Program.cs` | 4 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/A2AServerServiceCollectionExtensions.cs` | 11 | 11 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.A2A/IsolationKeyScopedTaskStore.cs` | 6 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AGUI.AspNetCore/AGUIEndpointRouteBuilderExtensions.cs` | 3 | 3 |
| _... 他 14 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `c0ff8a6` Update store isolation documentation
- `86f9f8d` Rename store isolation key provider
- `c3339b6` Rename to AgentIsolationKeyProvider per review feedback
- `55585ba` Update hosting spec for AgentIsolationKeyProvider rename

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: .NET のストレージ分離プロバイダー型・参照名が旧名称から `AgentIsolationKeyProvider` に変更されました。A2A/AG-UI の登録コード、仕様書、サンプルの呼び出しが同じ名前へ更新されています。

**既存利用者への影響**

旧プロバイダー名を直接参照している利用者は、新しい型名へ置換して再ビルドしてください。動作モデル自体は継承されるため、名前以外の移行は不要です。

### [#7533](https://github.com/microsoft/agent-framework/pull/7533) — [BREAKING] Python: Migrate FHA to responses==2.0.0b1 and add Foundry state store

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `documentation` `python` `breaking change` `foundry` `hosting`
- 変更行数: +2942 / -3233
- マージ日時 (UTC): `2026-08-10 05:55:32`

**変更概要**

Python Foundry Hosted Agents（FHA）を Responses API 2.0.0b1 に移行し、Foundry の永続 state store を追加しました。  
従来の session store 処理を整理し、レスポンス変換・テスト・サンプルを新しい状態管理モデルに合わせています。  
FHA と `foundry_hosting` パッケージを利用する Python アプリケーションが影響を受けます。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/PACKAGE_STATUS.md` | 2 | 2 |
| `python/packages/core/AGENTS.md` | 2 | 2 |
| `python/packages/core/agent_framework/foundry/__init__.py` | 9 | 1 |
| `python/packages/core/agent_framework/foundry/__init__.pyi` | 18 | 2 |
| `python/packages/core/tests/core/test_foundry_namespace.py` | 3 | 3 |
| `python/packages/foundry_hosting/README.md` | 14 | 58 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 20 | 2 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 403 | 828 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_session_store.py` | 0 | 61 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_state_store.py` | 338 | 0 |
| `python/packages/foundry_hosting/pyproject.toml` | 3 | 3 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 511 | 1237 |
| `python/packages/foundry_hosting/tests/test_responses_int.py` | 47 | 30 |
| `python/packages/foundry_hosting/tests/test_state_store.py` | 384 | 0 |
| `python/pyproject.toml` | 1 | 1 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (13 件)</summary>

- `ff8450b` Migrate FHA to responses==2.0.0b1 and add Foundry state store
- `4cf73d5` Fix session id error
- `14cf002` Fix tests
- `3df40fd` Improve tests
- `10ab3c3` Fix copilot comments
- `8838c1e` Address comments
- `649443c` Revert sample changes
- `19303b7` Merge branch 'main' into local-branch-python-fha-state-store
- _... 他 5 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: `foundry_hosting` の Responses API 依存が `responses==2.0.0b1` 系へ変わり、session store を廃止して `_state_store.py` の state store 抽象を導入しました。FHA のレスポンス処理と公開名前空間、テスト API も新モデルに合わせて変更されています。

**既存利用者への影響**

既存の FHA 利用者は依存バージョン、session/state store の設定、レスポンス処理を移行ガイドとサンプルに合わせて更新してください。単純なパッケージ更新では互換性を保証できません。

### [#7509](https://github.com/microsoft/agent-framework/pull/7509) — Python: Ignore non-project workspace glob matches

- 作者: luisangelrod / 状態: MERGED
- ラベル: `python`
- 変更行数: +3 / -1
- マージ日時 (UTC): `2026-08-11 19:17:56`

**変更概要**

workspace の glob がプロジェクト外のパスまで拾う問題を修正し、非プロジェクトの一致を無視するようにしました。  
`task_runner.py` の判定を変更し、関連テストの収集方法も整理しています。  
ワークスペース自動検出を使う Python 開発者は、不要な対象が実行されなくなる点を確認してください。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/scripts/task_runner.py` | 3 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `750d74e` Python: Ignore non-project workspace glob matches
- `9b3ae38` test: collect workspace script tests
- `8ac7569` test: remove standalone script test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はなく、`task_runner.py` の workspace glob 絞り込み条件とテスト構成を変更しました。プロジェクト外の一致を実行対象から除外する挙動修正です。

**既存利用者への影響**

通常のプロジェクト利用者に移行作業はありません。プロジェクト外のスクリプトを意図的に拾っていた場合のみ、対象を明示的に登録してください。

### [#7546](https://github.com/microsoft/agent-framework/pull/7546) — Python: Restore Gemini thought_signature on approval replays

- 作者: giles17 / 状態: MERGED
- ラベル: `python`
- 変更行数: +187 / -5
- マージ日時 (UTC): `2026-08-11 19:07:13`

**変更概要**

Gemini の承認リプレイ時に `thought_signature` を復元し、モデルが要求する推論コンテキストを失わないようにしました。  
チャットクライアントの処理とテストを拡張し、承認後の再送シナリオを検証しています。  
Gemini の tool approval / human-in-the-loop を利用する Python アプリケーションが対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/gemini/agent_framework_gemini/_chat_client.py` | 70 | 4 |
| `python/packages/gemini/tests/test_gemini_client.py` | 117 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `8ade61b` Python: Restore Gemini thought_signature on approval replays

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Gemini クライアント内部で承認要求と `thought_signature` を保持・再付与する処理を追加しました。公開 API の意図したシグネチャ変更や破壊的変更はなく、プロバイダー内部のリプレイ処理が改善されています。

**既存利用者への影響**

通常は更新のみで移行不要です。承認リプレイを独自実装している場合は、署名を失わずに再送できることを回帰テストしてください。

### [#7404](https://github.com/microsoft/agent-framework/pull/7404) — Python: Fix ClaudeAgent reusing one SDK client across distinct fresh sessions

- 作者: giles17 / 状態: MERGED
- ラベル: `python`
- 変更行数: +306 / -104
- マージ日時 (UTC): `2026-08-11 19:07:13`

**変更概要**

ClaudeAgent が異なる新規セッション間で同じ SDK クライアントを再利用する問題を修正しました。  
実行単位・プロバイダー会話 ID にクライアント所有権を結び付け、セッション終了時の分離とクリーンアップを整理しています。  
複数セッションを並行実行する Claude 利用者の状態混在や認証・会話履歴の漏れを防ぎます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/claude/agent_framework_claude/_agent.py` | 172 | 54 |
| `python/packages/claude/tests/test_claude_agent.py` | 134 | 50 |

</details>

<details><summary>コミット (7 件)</summary>

- `84451e4` Python: Fix ClaudeAgent reusing one SDK client across distinct fresh …
- `3be125e` Python: Bind Claude SDK client ownership to each run
- `fd36bb1` Merge branch 'main' into fix-claude-session-isolation
- `02d0f2c` Python: Close remaining Claude session-isolation gaps
- `3895259` Merge branch 'main' into fix-claude-session-isolation
- `c0fa306` Merge branch 'main' into fix-claude-session-isolation
- `6cc4bd1` Python: Bind injected Claude client on provider conversation identity

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ClaudeAgent 内部に run 単位の SDK クライアント所有権と、注入クライアントを会話 identity に束縛する分岐を追加しました。公開 API の利用方法を変える変更ではなく、セッション分離と破棄処理の実装を改めています。

**既存利用者への影響**

通常の利用者に移行は不要です。SDK クライアントを外部から注入して複数セッションで共有している場合は、セッションごとのライフサイクルを確認してください。

### [#7608](https://github.com/microsoft/agent-framework/pull/7608) — Python: Fix FHA session ID translation

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `documentation` `python` `foundry` `hosting`
- 変更行数: +397 / -279
- マージ日時 (UTC): `2026-08-11 17:34:25`

**変更概要**

FHA でユーザー指定の session ID と内部のセッション表現が正しく翻訳されない問題を修正しました。  
エージェント、ツール、Foundry state store、サンプルを更新し、作成済みセッションの再利用例を追加しています。  
既存セッションへ接続する Foundry Hosted Agents 利用者の会話継続性と型安全性が改善されます。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/specs/004-python-function-calling-loop.md` | 4 | 0 |
| `python/packages/core/agent_framework/_agents.py` | 34 | 19 |
| `python/packages/core/agent_framework/_tools.py` | 25 | 25 |
| `python/packages/core/agent_framework/foundry/__init__.py` | 1 | 0 |
| `python/packages/core/agent_framework/foundry/__init__.pyi` | 2 | 0 |
| `python/packages/core/tests/core/test_foundry_namespace.py` | 3 | 0 |
| `python/packages/foundry/README.md` | 6 | 4 |
| `python/packages/foundry/agent_framework_foundry/__init__.py` | 8 | 1 |
| `python/packages/foundry/agent_framework_foundry/_agent.py` | 94 | 107 |
| `python/packages/foundry/tests/foundry/test_foundry_agent.py` | 117 | 70 |
| `python/samples/04-hosting/foundry-hosted-agents/README.md` | 27 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/using_deployed_agent.py` | 76 | 52 |

</details>

<details><summary>コミット (6 件)</summary>

- `bbe15c5` Fix FHA session ID traslation
- `aa6afd0` Fix tests
- `b817149` Address comments and fix tests
- `fbff748` Fix typing
- `10f44ce` Show how to use user created sessions
- `4fb5cec` Update README

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

エージェントの session ID 変換、ツール呼び出し時のセッション引き渡し、Foundry の公開型スタブと state store 連携を整合させました。公開サンプルにはユーザー作成セッションを渡す経路が追加されていますが、意図した破壊的変更はありません。

**既存利用者への影響**

既存の FHA 利用者は通常更新のみで移行不要ですが、独自に session ID を変換している場合は新しいサンプルに合わせて重複変換を取り除いてください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7572 | .NET: Add Options for Hosted Agent to Allow Backend Storage | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7572> |
| #7612 | .NET: Prevent telemetry serialization failures from failing workflows | peibekwe | <https://github.com/microsoft/agent-framework/pull/7612> |
| #7609 | .NET: Fix misleading workflow protocol attribute diagnostics | peibekwe | <https://github.com/microsoft/agent-framework/pull/7609> |
| #7552 | .NET: Add Cosmos NoSQL vector memory sample | nos-redacted | <https://github.com/microsoft/agent-framework/pull/7552> |
| #7550 | Python: Improve Json parsing for declarative workflow | peibekwe | <https://github.com/microsoft/agent-framework/pull/7550> |
| #7535 | .NET: Improve string parsing in declarative workflows | peibekwe | <https://github.com/microsoft/agent-framework/pull/7535> |
| #7529 | Python: Bump postcss from 8.5.22 to 8.5.25 in /python/samples/05-end-to-end/ag_ui_single_agent/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7529> |
| #7493 | Python: Bump postcss from 8.5.15 to 8.5.25 in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7493> |
| #7541 | Python: Bump pyrefly from 1.1.1 to 1.2.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7541> |
| #7554 | Python: Bump js-yaml from 4.3.0 to 4.3.1 in /python/packages/devui/frontend | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7554> |
| #7545 | Python: Bump zuban from 0.9.0 to 0.9.1 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7545> |
| #7536 | Python: Make encrypted reasoning opt-in for Foundry chat | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7536> |
| #7430 | Python: Fix AG-UI conversation correlation across runs | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7430> |
| #7388 | .NET: Store executable function calls bypassed by declaration-only tool calls | westey-m | <https://github.com/microsoft/agent-framework/pull/7388> |
| #7525 | .NET: Give a hosted agent a single source of conversation history | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7525> |
| #7539 | .NET: Aggregate usage across looping agents and chat clients | westey-m | <https://github.com/microsoft/agent-framework/pull/7539> |
| #7540 | .NET: Harden file skill discovery | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7540> |
| #7488 | Python: surface Gemini thought summaries as reasoning content | giles17 | <https://github.com/microsoft/agent-framework/pull/7488> |
| #7417 | Python: fix CopilotStudioAgent LineTooLong on large activities | giles17 | <https://github.com/microsoft/agent-framework/pull/7417> |
| #7028 | Python: Add response/request customization hooks to OpenAIChatCompletionClient | giles17 | <https://github.com/microsoft/agent-framework/pull/7028> |
| #7515 | Python: agent-hooks interception contract as a first-class experimental core feature | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7515> |
| #7507 | Python: Add windows junction detection for skills | westey-m | <https://github.com/microsoft/agent-framework/pull/7507> |
| #7531 | Python: Separate mem0 storage and search scopes | westey-m | <https://github.com/microsoft/agent-framework/pull/7531> |
| #7474 | .NET: Bound the tool-approval auto-approval loop (#7472) | atty57 | <https://github.com/microsoft/agent-framework/pull/7474> |
| #7497 | .NET: Fail declarative workflows when an agent returns an error | peibekwe | <https://github.com/microsoft/agent-framework/pull/7497> |
| #7442 | .NET: Fix Handoff orchestration sample not responding to user input | peibekwe | <https://github.com/microsoft/agent-framework/pull/7442> |
| #7514 | .NET: Updating version for dotnet release 1.17.0 | peibekwe | <https://github.com/microsoft/agent-framework/pull/7514> |
| #7505 | .NET: Add CodeQL suppression for DevUI proxy validation | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7505> |
| #7504 | .NET: [Experimental] Extend A2A task store with isolation key scoping | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7504> |
| #7396 | Python: Bound tool result compaction summaries | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7396> |
| #7480 | Python: Fix AG-UI approval resume at the protocol boundary | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7480> |
| #7462 | Python: Prevent orphaned local approval responses | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7462> |
| #7392 | Python: Add Mistral chat client | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7392> |
| #7399 | Python: fix LocalEvaluator reporting zero-check items as passed | CTWalk | <https://github.com/microsoft/agent-framework/pull/7399> |
| #7445 | Consolidate Dependabot dependency updates | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7445> |
| #7350 | Python: Improve python sample validation workflow | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7350> |
| #7479 | Python: Give the AG-UI Thread Snapshot lifecycle a single owner module | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7479> |
| #7010 | Python: Add hosted agent sample for the agent harness | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/7010> |
| #7426 | Python: Remove unused AG-UI orchestration helpers and flatten subpackage | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7426> |
| #7278 | Python: forward Azure AI Search query-source identity | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7278> |
| #7380 | Python: Preserve falsey EditTableV2 items | hsusul | <https://github.com/microsoft/agent-framework/pull/7380> |
| #7465 | .NET and Python: Extract Durable Task and Azure Functions integrations | cgillum | <https://github.com/microsoft/agent-framework/pull/7465> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7622 | Python: Warn when advertised MCP archives are rejected | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7622> |
| PR | #7597 | Python: Preserve Mistral prompt-cache usage details | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7597> |
| PR | #7621 | Python: Update agentserver to 2.1.0 | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7621> |
| PR | #7600 | Python: Include constructor tools in agent-hooks startup | open | uuzzrm | <https://github.com/microsoft/agent-framework/pull/7600> |
| PR | #7549 | Python: Fix group chat invoking a re-selected participant with no messages | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7549> |
| PR | #7564 | .NET: agent-hooks interception contract as a first-class experimental feature | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7564> |
| PR | #7528 | Python: fix FIDES session isolation and runtime integration gaps | open | lerelerele | <https://github.com/microsoft/agent-framework/pull/7528> |
| PR | #7602 | .NET: Add BackgroundAgentsProvider.ReleaseSessionAsync to cancel and release per-session background tasks | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7602> |
| PR | #7603 | Python: fix(openai): report the background cause when a tool result is rejected | open | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7603> |
| PR | #7616 | Python: Add a read-only TaskMarket delegation sample | open | dacode-dev | <https://github.com/microsoft/agent-framework/pull/7616> |
| PR | #7576 | Python: Fix handoff target invoked with no messages when response has no text | open | cr-sbarbouche | <https://github.com/microsoft/agent-framework/pull/7576> |
| PR | #7605 | Python: fix streaming transcript duplication with message injection and per-service-call persistence | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7605> |
| PR | #7594 | Python: Harden AG-UI approval lifecycle and resume semantics | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7594> |
| PR | #7611 | .NET: [Bug]: Request processing fails when web search is enabled beca… | open | feiyun0112 | <https://github.com/microsoft/agent-framework/pull/7611> |
| PR | #7607 | Python: scope under-specified approve-for-session permission decisions | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7607> |
| PR | #7606 | Python: Surface A2A preview consent URLs | open | LobsterQBA | <https://github.com/microsoft/agent-framework/pull/7606> |
| PR | #7604 | Python: fix(redis): type-check the history provider across the supported redis range | open | chinmayv095 | <https://github.com/microsoft/agent-framework/pull/7604> |
| PR | #7557 | Python: fix(workflows): preserve all trace contexts in FanInEdgeRunner aggregation | open | weed33834 | <https://github.com/microsoft/agent-framework/pull/7557> |
| PR | #7526 | Python: Allow branching from hosted Foundry conversations | open | cecheta | <https://github.com/microsoft/agent-framework/pull/7526> |
| PR | #7486 | Python: Enhance _OutputItemTracker to prevent duplicate function call streaming | open | cecheta | <https://github.com/microsoft/agent-framework/pull/7486> |
| PR | #7543 | Bump prek from 0.4.11 to 0.4.12 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7543> |
| PR | #7542 | Bump uv from 0.11.32 to 0.12.2 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7542> |
| PR | #7544 | Bump ruff from 0.16.0 to 0.16.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7544> |
| PR | #7558 | Python: track agent-hooks feature usage | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7558> |
| PR | #7581 | Python: bind tool-approval responses to surfaced approval requests (#7383) | open | tonydzi | <https://github.com/microsoft/agent-framework/pull/7581> |
| PR | #7586 | Bump github/codeql-action/init from 4.37.3 to 4.37.6 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7586> |
| PR | #7585 | Bump github/codeql-action/analyze from 4.37.3 to 4.37.6 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7585> |
| PR | #7583 | Bump pmeier/pytest-results-action from 0.7.2 to 0.9.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7583> |
| PR | #7584 | Bump actions/setup-dotnet from 5.2.0 to 6.0.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7584> |
| PR | #7582 | Bump actions/github-script from 8.0.0 to 9.0.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7582> |
| PR | #7510 | Python: Preserve AG-UI tool message IDs across snapshots | open | jstar0 | <https://github.com/microsoft/agent-framework/pull/7510> |
| PR | #7579 | .NET: Bump AGUI.Abstractions from 0.0.3 to 0.0.5 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7579> |
| PR | #7523 | Python: Add tool concurrency groups and sequential execution order for same-message calls | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7523> |
| PR | #7566 | Python: Normalize SDK role enums to str when creating Messages | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7566> |
| PR | #7565 | Python: Capture workflow telemetry input and output | open | slcnx | <https://github.com/microsoft/agent-framework/pull/7565> |
| PR | #7562 | Python: add MiddlewareFailure, a first-class fatal signal for function middleware | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7562> |
| PR | #7556 | Python: Fix OpenTelemetry logging handler registration on root logger | open | Caoxuyang | <https://github.com/microsoft/agent-framework/pull/7556> |
| PR | #7517 | Python: [BREAKING] Make workspace file hooks opt-in for GitHubCopilotAgent | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7517> |
| PR | #7494 | Python: fix(redis): scope RedisHistoryProvider keys by source_id | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7494> |
| PR | #7500 | Python: Resolve workflow request info from pending state | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7500> |
| PR | #7521 | Python: [BREAKING] Update functional workflow continuation handling | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7521> |
| PR | #7530 | .NET: Fix documented default for ChatHistoryMemoryProviderOptions.FunctionToolDescription | open | dfedoryshchev | <https://github.com/microsoft/agent-framework/pull/7530> |
| PR | #7498 | Pin GitHub Actions to full-length commit SHAs | open | OssSecurityBot | <https://github.com/microsoft/agent-framework/pull/7498> |
| PR | #7601 | Python: Fix FHA session ID traslation | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7601> |
| PR | #7481 | Add optimize-windows.ps1 Windows optimization script | closed | HASSanHASSgit | <https://github.com/microsoft/agent-framework/pull/7481> |
| PR | #7593 | Python: Bump nanoid from 3.3.12 to 3.3.18 in /python/packages/devui/frontend | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7593> |
| PR | #7327 | Bump github/codeql-action/init from 4.37.3 to 4.37.4 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7327> |
| PR | #7329 | Bump github/codeql-action/analyze from 4.37.3 to 4.37.4 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7329> |
| PR | #7520 | .NET: keep compaction active for local-history sentinel | closed | LewisCrabtree | <https://github.com/microsoft/agent-framework/pull/7520> |
| PR | #7431 | Python: fix(foundry-hosting): root file-based approval storage under durable home directory | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7431> |
| PR | #7512 | Python: Persist Foundry hosted agent session IDs | closed | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7512> |
| PR | #7519 | Python: pin enable_file_hooks off by default in Copilot sessions | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7519> |
| PR | #7444 | Python: agent-framework-agent-hooks — middleware adapter for the AGENT-HOOKS-0.1 control contract | closed | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/pull/7444> |
| PR | #7495 | Python: Move approval storage to platform supplied durable dir | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7495> |
| PR | #7506 | Python: feat(ollama): Add retry logic for transient errors in OllamaChatClient | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7506> |
| PR | #6494 | .NET: A2UI (Agent-to-UI) toolkit, adapter, and AG-UI streaming | closed | ranst91 | <https://github.com/microsoft/agent-framework/pull/6494> |
| PR | #7499 | Stage4 observability | closed | 000604mai | <https://github.com/microsoft/agent-framework/pull/7499> |
| PR | #7279 | .NET: Bump AgentMemory from 1.2.0 to 1.3.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7279> |
| PR | #7328 | Bump astral-sh/setup-uv from 8.3.2 to 9.0.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7328> |
| PR | #7330 | Bump actions/cache from 5.0.5 to 6.1.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7330> |
| PR | #7332 | Bump astral-sh/setup-uv from 8.3.2 to 9.0.0 in /.github/actions/python-setup | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7332> |
| PR | #7331 | Bump actions/checkout from 6.0.2 to 7.0.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7331> |
| PR | #6839 | Python: Re-enable Azure OpenAI integration tests | closed | giles17 | <https://github.com/microsoft/agent-framework/pull/6839> |
| PR | #7457 | Python: Add core session tests and Windows emulator repair script | closed | HASSanHASSgit | <https://github.com/microsoft/agent-framework/pull/7457> |
| PR | #7440 | Python: update uv-build requirement from <0.12.0,>=0.8.2 to >=0.8.2,<0.13.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7440> |
| PR | #7436 | Bump ty from 0.0.60 to 0.0.64 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7436> |
| PR | #7437 | Bump prek from 0.4.10 to 0.4.11 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7437> |
| PR | #7438 | Bump uv from 0.11.29 to 0.11.32 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7438> |
| PR | #7439 | Bump ruff from 0.15.22 to 0.16.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7439> |
| Issue | #7619 | .NET: Python: [Bug]: `MCPSkillsSource` drops archive skills the index advertised, and every refusal is DEBUG-only | open | antsok | <https://github.com/microsoft/agent-framework/issues/7619> |
| Issue | #7613 | .NET: [Bug]: code definition skills,agent returning an empty response | open | dalangtk | <https://github.com/microsoft/agent-framework/issues/7613> |
| Issue | #7508 | Python: [Bug]: poe syntax fails with FileNotFoundError for azurefunctions/pyproject.toml | closed | PratikWayase | <https://github.com/microsoft/agent-framework/issues/7508> |
| Issue | #7620 | Python: [Bug]: A2A INPUT_REQUIRED tasks are auto-answered instead of pausing for the caller | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7620> |
| Issue | #7503 | Python: [Bug]: Hosted agents: Agent Framework does not persist and reuse hosted agent_session_id across turns (conversation_id differs per request) | closed | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7503> |
| Issue | #7618 | Python: Python :  checkpoint restore +pending request deserialization failure when hosting workflow as agent with ResponsesHostserver in foundry | open | dgsear | <https://github.com/microsoft/agent-framework/issues/7618> |
| Issue | #7617 | .NET: [Bug]: Microsoft.Agents.AI.Foundry.Hosting 1.17.0-preview.260804.1: container fails to start, "address already in use" on port 8088 | open | aherbert-shine | <https://github.com/microsoft/agent-framework/issues/7617> |
| Issue | #7615 | Python: Add a read-only TaskMarket delegation sample | open | dacode-dev | <https://github.com/microsoft/agent-framework/issues/7615> |
| Issue | #7559 | .NET: [Feature]: Add first-class async conversation runtime for SendMessage, streaming, queueing, and interruption | open | soul-soft | <https://github.com/microsoft/agent-framework/issues/7559> |
| Issue | #7551 | .NET: [Sample Request] Add Cosmos NoSQL vector memory sample | closed | nos-redacted | <https://github.com/microsoft/agent-framework/issues/7551> |
| Issue | #7610 | [Feature]: Rust version of MAF? | open | AaronSaikovski | <https://github.com/microsoft/agent-framework/issues/7610> |
| Issue | #7518 | .NET: [Bug]: CompactionProvider skips in-loop compaction when local-history sentinel is set | closed | LewisCrabtree | <https://github.com/microsoft/agent-framework/issues/7518> |
| Issue | #7598 | Python: [Bug]: Cannot download code-interpreter-generated files (`cfile_` ids) — `containers/{container_id}/files/{file_id}/content` returns persistent 500 via Foundry project endpoint | closed | CristinaStn | <https://github.com/microsoft/agent-framework/issues/7598> |
| Issue | #7596 | .NET: BackgroundAgentsProvider should provide a way to clear per-session runtime tasks | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7596> |
| Issue | #7571 | Python: [Feature]: line-range reads in the harness file tools (`file_access_read_lines` or `offset`/`limit` on `file_access_read`) | open | antsok | <https://github.com/microsoft/agent-framework/issues/7571> |
| Issue | #7595 | .NET: [Bug]: Terminal Condition is not working in Magentic Orchestration | open | assing | <https://github.com/microsoft/agent-framework/issues/7595> |
| Issue | #7587 | Python: [Feature]: Bound an agent run by duration (and by spend), not only by iteration and call count | open | antsok | <https://github.com/microsoft/agent-framework/issues/7587> |
| Issue | #7538 | Python: [Bug]: Background Responses tool loop fails when chaining tool output to a completed background response | open | Laende | <https://github.com/microsoft/agent-framework/issues/7538> |
| Issue | #7560 | Python: constructor-registered tools missing from agent-hooks agent_startup projection | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7560> |
| Issue | #7575 | Python: [Feature]: Documentation/ergonomics report. `FunctionInvocationContext.result` is documented as the function's result but observes as `list[Content]`, and the attribute's read and write contracts differ | open | antsok | <https://github.com/microsoft/agent-framework/issues/7575> |
| Issue | #7589 | Python: [Bug]: the Mistral chat client drops `prompt_tokens_details.cached_tokens`, so prompt-cache hits are invisible in `UsageDetails` | open | antsok | <https://github.com/microsoft/agent-framework/issues/7589> |
| Issue | #7588 | Python: [Bug]: function-call arguments are validated before any middleware runs, so a model that deviates from the declared argument schema cannot be repaired at a supported seam | open | antsok | <https://github.com/microsoft/agent-framework/issues/7588> |
| Issue | #7561 | Python: agent-hooks tool-seam halt keys on the host_error: prefix, catching composition-produced denies | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7561> |
| Issue | #7578 | .NET: [Bug]: Request processing fails when web search is enabled because of an unsupported web_search_options parameter | open | meisterfranz | <https://github.com/microsoft/agent-framework/issues/7578> |
| Issue | #7568 | Python: .NET: [Feature]: Backend-neutral sandbox protocol for agent code execution, with a first-party Azure Container Apps Sandboxes backend | open | antsok | <https://github.com/microsoft/agent-framework/issues/7568> |
| Issue | #7563 | Python: .NET: agent-hooks first-class integration (Python parity) | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7563> |
| Issue | #7532 | Python: Replace FHA file-based storage to new storage API | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7532> |
| Issue | #7590 | Python: [Feature]: EvalPort import/export support (to_openeval() / from_openeval()) | open | adhabnr-ux | <https://github.com/microsoft/agent-framework/issues/7590> |
| Issue | #7591 | .NET: Python: [Bug]: Streaming create_harness_agent runs duplicate the transcript after tool calls — 400 "insufficient tool messages following tool_calls" | open | naeyn | <https://github.com/microsoft/agent-framework/issues/7591> |
| Issue | #7569 | Python: [Bug]: AG-UI approval resume executes only the first of several approved calls in one batch — the rest are silently dropped | open | antsok | <https://github.com/microsoft/agent-framework/issues/7569> |
| Issue | #7483 | Python: [Bug]: Encrypted content is not supported with this model for GPT-4.1 model | closed | Subash-Selvan | <https://github.com/microsoft/agent-framework/issues/7483> |
| Issue | #7570 | Python: [Bug]: APPROVAL_RESUME_NOT_FOUND leaves the interrupt in the thread snapshot, so the unanswerable approval card is re-offered on every connect | open | antsok | <https://github.com/microsoft/agent-framework/issues/7570> |
| Issue | #7577 | Python: FoundryChatClient sends unsupported reasoning.encrypted_content include for non-reasoning models under stateless (store=False) requests | closed | jiks-hue | <https://github.com/microsoft/agent-framework/issues/7577> |
| Issue | #7555 | .NET: [Feature] Opt-in asynchronous (dataflow) execution mode — per-edge firing without the superstep barrier | open | Snailya | <https://github.com/microsoft/agent-framework/issues/7555> |
| Issue | #7580 | .NET: [Bug]: FileMemoryProvider memory-index message is accumulated when a Magentic participant is invoked repeatedly | closed | KudasovDN | <https://github.com/microsoft/agent-framework/issues/7580> |
| Issue | #7573 | Python: [Bug]: Handoff target can be invoked with no messages when the response cleans to empty | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7573> |
| Issue | #7574 | Python: [Feature]:  Allow a global registry of checkpoint allow types | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7574> |
| Issue | #7522 | Python: a first-class fatal signal for function middleware (fail-closed escape from the auto-invoke loop) | open | MohammadHaroonAbuomar | <https://github.com/microsoft/agent-framework/issues/7522> |
| Issue | #7537 | .NET: Verify usage tracking in all looping features | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7537> |
| Issue | #7553 | Python: [Bug]: TypeError: Cannot read properties of undefined (reading 'commandIdentifiers') | open | wonderyl | <https://github.com/microsoft/agent-framework/issues/7553> |
| Issue | #7547 | ADO Release Pipeline | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7547> |
| Issue | #7511 | Foundry hosting: WorkflowAgent path drops cancellation_signal | open | scott-lever | <https://github.com/microsoft/agent-framework/issues/7511> |
| Issue | #7516 | Python: GitHubCopilotAgent session behavior varies with the working directory | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7516> |
| Issue | #7524 | Python: [Feature]: Foundry Hosting - Support conversation branching | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7524> |
| Issue | #7527 | Python: Python : AG-UI  workflow.as_agent()  wrapped with AgentFrameworkAgent() wrapper does not put requestinfo (HandoffAgentUserRequest) into RUN_FINISHED interrupts | open | dgsear | <https://github.com/microsoft/agent-framework/issues/7527> |
| Issue | #7534 | Python: [Bug]: Breaking for non-reasoning Foundry model deployment (gpt 4.1).`FoundryChatClient` unconditionally requests `reasoning.encrypted_content` | closed | Kalyan-AI-Hub | <https://github.com/microsoft/agent-framework/issues/7534> |
| Issue | #7487 | Python: [Bug]: Foundry Hosted agent - delay before final response when streaming | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7487> |
| Issue | #7485 | Python: [Bug]: Duplicate function call in Foundry Hosted agent when streaming | open | cecheta | <https://github.com/microsoft/agent-framework/issues/7485> |
| Issue | #7490 | Python: [Bug]: with `predict_state_config` set, EVERY tool result emits a full `StateSnapshotEvent` — including for tools the config never names | open | antsok | <https://github.com/microsoft/agent-framework/issues/7490> |
| Issue | #7491 | Python: [Bug]: AG-UI `MESSAGES_SNAPSHOT` re-factors streamed messages under fresh ids — the reference `@ag-ui/client` merge then renders every mid-run tool call after the final text | open | antsok | <https://github.com/microsoft/agent-framework/issues/7491> |
| Issue | #7513 | Python: Python : AG-UI Magentic plan-review resume rejects JSON review payload(expects typed MagenticplanReviewResponse) | open | dgsear | <https://github.com/microsoft/agent-framework/issues/7513> |
| Issue | #7496 | .NET: [Bug]: Inner agent failure does not fail workflow in declarative workflow | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/7496> |
| Issue | #7492 | Python: [Bug]:  Foundry Agent client spans are not showing up in Foundry tracing UI | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7492> |
| Issue | #7489 | .NET: [Feature]:  Add tool search capability and sample | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7489> |
| Issue | #7484 | .NET: [Bug]: Method Not found error GetResponsesClient in Azure.AI.OpenAI and Azure.AI.Projects | closed | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/7484> |
| Issue | #7453 | Python: [Bug]: Gemini: `thought_signature` is lost when a tool approval is answered — PR #7095's adjacency mechanism does not cover the approval path (#6963 regression) | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7453> |
| Issue | #7403 | Python: ClaudeAgent reuses one SDK client across distinct fresh sessions, leaking conversation state | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7403> |
| Issue | #6347 | Python: Add sample for mcp skills for hosted agents | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6347> |
| Issue | #5066 | .NET: [Bug]: Workflow telemetry crashes on CodeInterpreterToolCallContent when Workflow EnableSensitiveData = true | closed | brandonh-msft | <https://github.com/microsoft/agent-framework/issues/5066> |
| Issue | #5163 | .NET: [Bug]: Applying [SendsMessage] or [YieldsOutput] to Executor<TInput> requires derived executors to be marked partial when Microsoft.Agents.AI.Workflows.Generators is referenced | closed | helloxubo | <https://github.com/microsoft/agent-framework/issues/5163> |
| Issue | #4793 | .NET: [Bug]: InvalidDataException when resuming from Checkpoint with new AIAgent.Id values | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/4793> |
| Issue | #6922 | .NET: [Bug]: FunctionInvokingChatClient drops sibling backend tool calls when a frontend (declaration-only) tool call appears in the same iteration | closed | pjmagee | <https://github.com/microsoft/agent-framework/issues/6922> |
| Issue | #6448 | Python/.net: Add additional harness samples to showcase code execution, shell, etc. | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6448> |
| Issue | #6978 | Python: [Bug]: OpenAI Chat Completions client crashes on (and drops) Mistral reasoning content chunks | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6978> |
| Issue | #6979 | Python: [Bug]: OpenAI Chat Completions client buries plaintext `reasoning_details` as encrypted data | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6979> |
| Issue | #7394 | .NET: [Bug]: Skills don't work in .NET API Hosting | closed | hintdesk | <https://github.com/microsoft/agent-framework/issues/7394> |
| Issue | #7156 | .NET: [Bug]: I see 1.13 release breaking change which was not classified as such, session not being updated when skills used | closed | VaclavK | <https://github.com/microsoft/agent-framework/issues/7156> |
| Issue | #7225 | Python: [Feature]: Gemini thought summaries are dropped — surface them as reasoning content | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7225> |
| Issue | #7257 | Python: [Bug]: aiohttp.http_exceptions.LineTooLong: 400, message:   Got more than 524288 bytes when reading: b'data: | closed | lakshaydulani | <https://github.com/microsoft/agent-framework/issues/7257> |
| Issue | #7414 | Python: [Bug]:  Move FHA file-based approval storage to under $HOME | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7414> |
| Issue | #7264 | Python: [Bug]: Hosted Agent, Human In the loop not displayed correctly on Foundry Playground | closed | damienaicheh | <https://github.com/microsoft/agent-framework/issues/7264> |
| Issue | #6484 | Python: Bump anthropic SDK version constraint in agent-framework-anthropic | closed | pamelafox | <https://github.com/microsoft/agent-framework/issues/6484> |
| Issue | #7463 | [Feature]: Support security copilot | closed | fedsp | <https://github.com/microsoft/agent-framework/issues/7463> |
| Issue | #7318 | .NET: Harness HostedWebSearchTool is declared but not interceptable — align with FileAccess/FileMemory, or expose a request-authorize + result-inspection hook | closed | joslat | <https://github.com/microsoft/agent-framework/issues/7318> |
| Issue | #7472 | .NET: [Bug]: Sample can make endless "loop" resulting in Millions on tokens spent if you do not terminate process yourself :-( | closed | rwjdk | <https://github.com/microsoft/agent-framework/issues/7472> |
| Issue | #7429 | Python: [Bug]: AG-UI provider IDs replace request thread and run IDs | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7429> |
| Issue | #7301 | GitHub Copilot Stable Release | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7301> |
| Issue | #5122 | Integration: Third-party governance layer support (asqav) | closed | jagmarques | <https://github.com/microsoft/agent-framework/issues/5122> |
| Issue | #5124 | CI-level governance checks for multi-agent workflows | closed | jagmarques | <https://github.com/microsoft/agent-framework/issues/5124> |
| Issue | #6942 | Python: [Feature]: Retry transient errors in the Ollama chat provider | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6942> |
| Issue | #7451 | Python: [Bug]: Ollama connector rejects the approval-resume message AG-UI synthesizes | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7451> |
| Issue | #7393 | Python: [Bug]: `ToolResultCompactionStrategy` inserts the full, untruncated tool-result text it just excluded | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7393> |
| Issue | #7397 | Python: [Bug]: `LocalEvaluator` with zero checks reports items as passed | closed | CTWalk | <https://github.com/microsoft/agent-framework/issues/7397> |
| Issue | #7348 | Enable Automated Sample Validation and file issues on failure for P0 samples including FHA & Toolbox | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7348> |
| Issue | #6477 | Python: Add hosted agent sample for agent harness | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6477> |
| Issue | #6864 | Python: [Feature]: Pass user identity to the AI Search Provider | closed | damienaicheh | <https://github.com/microsoft/agent-framework/issues/6864> |
| Issue | #7379 | .NET: Python: [Bug]: EditTableV2 replaces falsey item values with None | closed | hsusul | <https://github.com/microsoft/agent-framework/issues/7379> |
| Issue | #6260 | .NET: [Bug]: Order inversion in FunctionCallMiddleware due to ChatClientFactory interaction | closed | helloxubo | <https://github.com/microsoft/agent-framework/issues/6260> |
| Issue | #6271 | Python: [Bug]: Update hosted-agent samples to depend on agent-framework-foundry package | closed | alliscode | <https://github.com/microsoft/agent-framework/issues/6271> |
| Issue | #6340 | Switch from AzureOpenAI to AIProjectClient for AF samples | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6340> |
| Issue | #7366 | [Feature]: Mistral Chat Client implementation | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7366> |
