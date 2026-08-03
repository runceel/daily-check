# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 44 |
| オープン中の新規 PR     | 40 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 34 |
| クローズ Issue          | 22 |
| 主要コントリビューター  | moonbox3, eavanvalkenburg, westey-m, giles17, TaoChenOSU, alliscode |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7234](https://github.com/microsoft/agent-framework/pull/7234) — [BREAKING] Python: add Responses conversation ID helper （PR / merged / eavanvalkenburg）
  Python の Responses hosting 利用者は、`responses_session_id()` のタプル化と converter 引数の `conversation_id` への改名に合わせて呼び出しを更新する必要があります。
- **⚠ 破壊的変更** [#7158](https://github.com/microsoft/agent-framework/pull/7158) — [BREAKING] Python: Ensure session isolation for FHA invocation impl （PR / merged / TaoChenOSU）
  Foundry Hosted Agent 利用者は protocol 2.0.0 への更新と、非ストリーミング応答が JSON オブジェクトから本文テキストへ変わる点を確認してください。
- **⚠ 破壊的変更** [#7119](https://github.com/microsoft/agent-framework/pull/7119) — .NET: [BREAKING] Graduate HarnessAgent （PR / merged / westey-m）
  .NET の Harness 利用者は安定化された API と引き続き experimental のオプションを区別し、削除された組み込み shell 構成への依存を見直す必要があります。
- **⚠ 破壊的変更** [#7111](https://github.com/microsoft/agent-framework/pull/7111) — .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests （PR / merged / rogerbarreto）
  .NET で保留中の tool approval を永続化している利用者は、旧バージョンで保存した承認要求を再発行し、新しい request binding を通す必要があります。
- **⚠ 破壊的変更** [#7000](https://github.com/microsoft/agent-framework/pull/7000) — .NET: [BREAKING] Hosting OpenAI Responses protocol helpers and optional execution state （PR / merged / rogerbarreto）
  独自 `AgentSessionStore` 実装者は新しい抽象 `DeleteSessionAsync` を実装し、名前付き引数の `sessionStoreId` への改名を反映してください。
- **⚠ セキュリティ** [#7270](https://github.com/microsoft/agent-framework/pull/7270) — Reduce workflow credential exposure （PR / merged / moonbox3）
  GitHub Actions 管理者は、認証設定を secret としてマスクし、`copilot-requests: write` を実際に Copilot を呼ぶ job だけへ限定する同様の構成を確認してください。
- **⚠ セキュリティ** [#7269](https://github.com/microsoft/agent-framework/issues/7269) — Reduce workflow credential exposure （Issue / closed / moonbox3）
  この課題は PR #7270 で解消済みであり、リポジトリ利用者側の追加対応はありません。
- **⚠ セキュリティ** [#7245](https://github.com/microsoft/agent-framework/pull/7245) — Python: Add MCPStreamableHTTPTool security guidance for custom http client （PR / merged / TaoChenOSU）
  `MCPStreamableHTTPTool` に独自 HTTP client を渡す利用者は、リダイレクト先へ認証ヘッダーを漏らさないよう origin 単位の付与制御を自前で実装してください。
- **⚠ セキュリティ** [#7232](https://github.com/microsoft/agent-framework/pull/7232) — Python: Bump brace-expansion from 1.1.12 to 1.1.16 in /python/packages/devui/frontend （PR / merged / dependabot[bot]）
  DevUI をソースから構築する利用者は、CVE-2026-13149 などの修正を含む更新済み lockfile を取り込んで再ビルドしてください。

## このリポジトリの要点

- Python / .NET の hosting と Harness を中心に **5 件の破壊的変更**が入り、Responses の会話 ID、FHA のセッション分離、approval binding、session store 契約が更新されました。
- PR #7270 は Actions の認証情報露出と Copilot 権限を縮小し、PR #7245 と #7232 は MCP ヘッダー漏えい防止のガイダンスと DevUI 依存関係の脆弱性修正を取り込みました。
- そのほか .NET / Python の GitHub Copilot agent が stable / 1.0.0 に昇格しており、リリース更新時は上記 migration を先に確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7234](https://github.com/microsoft/agent-framework/pull/7234) — [BREAKING] Python: add Responses conversation ID helper

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +107 / -54
- マージ日時 (UTC): `2026-07-21 15:25:03`

**変更概要**

- アプリ所有の Responses hosting が、リクエスト本文を再解析せず conversation continuation と previous-response continuation を識別できるようにします。
- Responses 形式の ID を生成する公開 `create_conversation_id()` を追加し、`responses_session_id()` は ID と種別フラグのタプルを返すようになりました。
- response converter の引数名とサンプル、README、round-trip / parsing テストも新しい conversation semantics に合わせて更新されています。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/hosting-responses/README.md` | 8 | 5 |
| `python/packages/hosting-responses/agent_framework_hosting_responses/__init__.py` | 2 | 0 |
| `python/packages/hosting-responses/agent_framework_hosting_responses/_parsing.py` | 49 | 27 |
| `python/packages/hosting-responses/tests/hosting_responses/test_http_round_trip.py` | 4 | 4 |
| `python/packages/hosting-responses/tests/hosting_responses/test_parsing.py` | 36 | 9 |
| `python/samples/04-hosting/af-hosting/local_responses/app.py` | 4 | 4 |
| `python/samples/04-hosting/af-hosting/local_responses_workflow/app.py` | 4 | 5 |

</details>

<details><summary>コミット (7 件)</summary>

- `24b8527` Python: add Responses conversation ID helper
- `82f8d97` Python: make Responses session flag optional
- `dc9d939` Python: correlate Responses session return types
- `d53768a` Python: clarify Responses conversation parameter
- `b1aebe1` Python: clarify streaming conversation parameter
- `d612b01` Python: include conversation in created event
- `d3501c6` Python: warn on nonstandard Responses IDs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** `responses_session_id()` の戻り値は単一 ID から `(session_id, is_conversation_id)` へ変わり、フラグは conversation / previous response / ID なしを `True` / `False` / `None` で表します。両 response converter の任意キーワードも `session_id` から `conversation_id` へ改名され、`create_conversation_id()` が公開 API として追加されました。

**既存利用者への影響**

既存呼び出しは戻り値を 2 要素で unpack し、converter へ名前付き引数を渡している場合は `conversation_id=` に変更してください。位置引数のみの利用でも、新しい戻り値 semantics の確認が必要です。

### [#7158](https://github.com/microsoft/agent-framework/pull/7158) — [BREAKING] Python: Ensure session isolation for FHA invocation impl

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `documentation` `python` `breaking change` `foundry` `hosting`
- 変更行数: +598 / -19
- マージ日時 (UTC): `2026-07-21 19:36:40`

**変更概要**

- Foundry Hosting の live `AgentSession` が process-wide 辞書で `session_id` だけをキーにしていたため、ID が重複・露出した場合に別ユーザーのセッションへ干渉できる問題を解消します。
- hosted 環境では platform の `session_id` と `user_id` を合成した partition key を使い、ユーザー間のセッションを分離します。
- Foundry protocol 2.0.0 の request context を必須化し、通常応答の payload と invocation host の受け入れ型も整理しました。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations.py` | 50 | 12 |
| `python/packages/foundry_hosting/tests/test_invocations.py` | 272 | 0 |
| `python/packages/foundry_hosting/tests/test_invocations_int.py` | 242 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/README.md` | 1 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/invocations/01_basic/README.md` | 7 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/invocations/02_break_glass/README.md` | 1 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/invocations/02_break_glass/main.py` | 25 | 4 |

</details>

<details><summary>コミット (3 件)</summary>

- `ed3b2cb` Ensure session isolation for FHA invocation impl
- `3761599` Fix type check errors
- `3c67049` Add user isolation to sample

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** hosted 環境で protocol 1.0.0 や `session_id` / `user_id` が欠けた request は失敗します。また、非ストリーミング `_handle_invoke` の応答は `{"response", "session_id"}` の JSON から agent の本文を直接返す `Response` へ変わりました。コンストラクターは具象 `BaseAgent` ではなく `SupportsAgentRun` protocol を受け付けます。

**既存利用者への影響**

`agent.manifest.yaml` / `agent.yaml` を protocol 2.0.0 に更新し、クライアントが旧 JSON payload を解析していれば本文テキストへ対応してください。更新できない場合は一時的に `agent-framework-foundry-hosting` 1.0.0a260625 以前へ固定する必要があります。

### [#7119](https://github.com/microsoft/agent-framework/pull/7119) — .NET: [BREAKING] Graduate HarnessAgent

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +34 / -371
- マージ日時 (UTC): `2026-07-21 14:38:42`

**変更概要**

- `HarnessAgent`、`HarnessAgentOptions`、`AsHarnessAgent()` を class-level experimental から外し、Harness の中核 API を安定した公開 surface へ昇格します。
- compaction、loop、file access / memory、background agent など、まだ preview の機能を有効にする個別 option には `MAAI001` を残しました。
- preview の shell package への依存を安定 surface から除き、サンプルとテストを新しい構成へ合わせています。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step03_ScalingCapabilities/Program.cs` | 7 | 5 |
| `dotnet/src/Microsoft.Agents.AI.Harness/ChatClientHarnessExtensions.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 0 | 24 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 11 | 75 |
| `dotnet/src/Microsoft.Agents.AI.Harness/Microsoft.Agents.AI.Harness.csproj` | 8 | 5 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 4 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProvider.cs` | 4 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 0 | 19 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 0 | 232 |

</details>

<details><summary>コミット (4 件)</summary>

- `c2427d8` Graduate HarnessAgent
- `3acf53b` Switch harness project to released and remove unreleased shell depend…
- `781d508` Address PR comments.
- `653d03e` Merge branch 'main' into dotnet-gradudate-harnessagent

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Harness の主要型から `[Experimental(MAAI001)]` が外れる一方、preview 機能を選択する option property 単位では警告が継続します。組み込み shell tool と関連 option は安定化対象から外され、Harness project 自身だけが内部構成の `MAAI001` を抑制する形になりました。

**既存利用者への影響**

中核 Harness API の利用に警告抑制は不要になります。shell 構成を使っていた場合は preview shell package または独自 tool として明示的に組み直し、残る experimental option には従来どおり警告対応が必要です。

### [#7111](https://github.com/microsoft/agent-framework/pull/7111) — .NET: [BREAKING] Bind tool-approval responses to surfaced approval requests

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +1244 / -13
- マージ日時 (UTC): `2026-07-21 14:38:42`

**変更概要**

- tool approval 応答が、framework が実際にユーザーへ提示した approval request と一致することを保証し、偽造・再利用・取り違えた承認で tool が実行されるリスクを抑えます。
- 新しい `ApprovalResponseBindingChatClient` が request を session state に記録し、response を一度だけ対応付けて消費します。
- 既定の `ChatClientAgent` pipeline と Harness の `ToolApprovalAgent` の双方へ同じ binding を適用し、履歴内の request との照合も追加しました。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 9 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 13 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalResponseBindingChatClient.cs` | 489 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientAgentOptions.cs` | 29 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientBuilderExtensions.cs` | 39 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ChatClientExtensions.cs` | 15 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalAgent.cs` | 76 | 7 |
| `dotnet/src/Microsoft.Agents.AI/Harness/ToolApproval/ToolApprovalState.cs` | 15 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 85 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ApprovalResponseBindingChatClientTests.cs` | 323 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ChatClientAgentTests.cs` | 3 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/ToolApproval/ToolApprovalAgentTests.cs` | 148 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `30d63f6` .NET: Bind tool-approval responses to surfaced approval requests
- `6755088` .NET: Bind approval responses once per turn and avoid re-enumeration
- `13d5a13` .NET: Snapshot recorded approval requests and consume duplicates in t…
- `392b7a3` .NET: Address review feedback on approval-response binding
- `71e07c4` Merge remote-tracking branch 'origin/main' into rogerbarreto/harden-t…
- `f6cf338` .NET: Compare tool calls by fields instead of serializing
- `c5c64f6` .NET: Bind approval responses against requests present in history

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** surfaced approval request を保持する新しい session state が導入され、旧 build が未処理の承認を保存した session には対応する記録がないため、resume 時の応答は無視されます。カスタム pipeline 向けに `UseApprovalResponseBinding()`、明示的な opt-out として `ChatClientAgentOptions.DisableApprovalResponseBinding` が追加されました。

**既存利用者への影響**

アップグレード時に保留中だった承認は、新 build から request を再発行してください。独自 chat client stack は `UseApprovalResponseBinding()` を組み込み、無効化は既存の安全性を別途保証できる場合に限るべきです。

### [#7000](https://github.com/microsoft/agent-framework/pull/7000) — .NET: [BREAKING] Hosting OpenAI Responses protocol helpers and optional execution state

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +3761 / -54
- マージ日時 (UTC): `2026-07-22 10:53:03`

**変更概要**

- アプリケーションが HTTP route、認証、middleware、storage を所有したまま Agent Framework の OpenAI Responses 変換だけを再利用できるようにします。
- 公開 facade `OpenAIResponses` に request 変換、通常 / SSE response 出力、session ID 取得、response ID 生成を追加しました。
- protocol-neutral な `AgentSessionStore` 削除契約と、checkpoint を resume する `HostedWorkflowState` / `HostedWorkflowRunResult`、ローカル hosting サンプルを追加しています。

<details><summary>変更ファイル (49 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0032-dotnet-hosting-protocol-helpers.md` | 177 | 0 |
| `docs/specs/003-dotnet-hosting-protocol-helpers.md` | 246 | 0 |
| `dotnet/agent-framework-dotnet.slnx` | 16 | 2 |
| `dotnet/samples/04-hosting/af-hosting/README.md` | 53 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Client/Client.csproj` | 19 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Client/Program.cs` | 79 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Client/README.md` | 20 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/README.md` | 57 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Server/Program.cs` | 113 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Server/README.md` | 45 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses/Server/Server.csproj` | 20 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses_workflow/Client/Client.csproj` | 19 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses_workflow/Client/Program.cs` | 69 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses_workflow/Client/README.md` | 20 | 0 |
| `dotnet/samples/04-hosting/af-hosting/local_responses_workflow/README.md` | 64 | 0 |
| _... 他 34 件_ | | |

</details>

<details><summary>コミット (29 件)</summary>

- `8b8c597` .NET: Add OpenAI Responses protocol helpers and optional execution st…
- `deb64e5` Fix netstandard2.0/net472 build; harden helpers and workflow checkpoi…
- `5d92a85` .NET: Migrate hosting Responses samples to Azure.AI.Projects and fix …
- `b9c6717` .NET: Fix HostedWorkflowState resume hang on unserviced external requ…
- `4883b73` .NET: Warn when a HostedWorkflowState resume makes no progress
- `ad91852` .NET: Resume HostedWorkflowState from durable checkpoint on cursor miss
- `3358668` .NET: Serialize HostedWorkflowState turns through a workflow lock
- `2e4dbb4` .NET: Cover non-chat resume and multi-turn checkpoint advance
- _... 他 21 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 公開 abstract type `AgentSessionStore` に `DeleteSessionAsync` が抽象メンバーとして追加され、store ID 引数は `sessionStoreId` に改名されました。`OpenAIResponses` の `ToAgentRunRequest`、`WriteResponse`、`WriteResponseStreamAsync`、`GetSessionId`、`CreateResponseId` は追加 API で、既存 `MapOpenAIResponses` の動作は維持されます。

**既存利用者への影響**

外部 `AgentSessionStore` 派生型は削除を実装するか、自身で `NotSupportedException` を送出する実装を追加してください。改名前を名前付き引数で参照しているコードも更新が必要ですが、`MapOpenAIResponses` のみの利用者には移行不要です。

### [#7270](https://github.com/microsoft/agent-framework/pull/7270) — Reduce workflow credential exposure

- 作者: moonbox3 / 状態: MERGED
- ラベル: —
- 変更行数: +61 / -51
- マージ日時 (UTC): `2026-07-22 23:57:41`

**変更概要**

- 6 つの GitHub Actions workflow で、実行ログに不要な認証設定メタデータが露出し、DevFlow が別管理の Copilot credential に依存していた問題を解消します。
- mode 以外の認証設定を environment secret から読み取ってログ上でマスクします。
- `copilot-requests: write` は Copilot を実行する 2 job のみに付与し、専用 credential を run-scoped GitHub token へ置き換えました。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/devflow-pr-review.yml` | 13 | 8 |
| `.github/workflows/issue-triage.yml` | 13 | 8 |
| `.github/workflows/label-issues.yml` | 7 | 7 |
| `.github/workflows/label-pr.yml` | 7 | 7 |
| `.github/workflows/limit-community-prs.yml` | 14 | 14 |
| `.github/workflows/stale-issue-pr-ping.yml` | 7 | 7 |

</details>

<details><summary>コミット (2 件)</summary>

- `f62faa6` Mask workflow authentication configuration
- `64872c4` Use run-scoped Copilot authentication

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開ライブラリ API の変更はありません。workflow の認証設定入力を secret context に移し、権限宣言と Copilot authentication を job scope に限定する構成変更です。

**既存利用者への影響**

パッケージ利用者の移行は不要です。同リポジトリの workflow 運用では専用 Copilot credential のローテーション依存がなくなり、類似 workflow でも同じ最小権限パターンを適用できます。

### [#7245](https://github.com/microsoft/agent-framework/pull/7245) — Python: Add MCPStreamableHTTPTool security guidance for custom http client

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `python` `mcp` `security`
- 変更行数: +14 / -0
- マージ日時 (UTC): `2026-07-22 05:02:42`

**変更概要**

- `MCPStreamableHTTPTool` に独自 `http_client` を渡した際、cross-origin redirect へ認証 token などの header が漏れる可能性を明示します。
- 組み込み `header_provider` は設定済み origin と一致する request だけに header を付けることを docstring に追記しました。
- 独自 client で header を設定する利用者には、同等の origin-scoped policy を自分で強制する責任があると案内します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_mcp.py` | 14 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `885bc58` Add MCPStreamableHTTPTool security guidance for custom http client

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

コードやシグネチャの変更はなく、`_mcp.py` の `MCPStreamableHTTPTool.__init__` documentation に security warning を追加した非破壊的変更です。

**既存利用者への影響**

組み込み `header_provider` の利用者は対応不要です。独自 HTTP client が認証 header を付ける場合は、redirect を含む送信先 origin を検証し、一致しない request には秘密情報を付与しないよう実装を確認してください。

### [#7232](https://github.com/microsoft/agent-framework/pull/7232) — Python: Bump brace-expansion from 1.1.12 to 1.1.16 in /python/packages/devui/frontend

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `dependencies` `javascript`
- 変更行数: +12 / -12
- マージ日時 (UTC): `2026-07-23 12:00:46`

**変更概要**

- Python DevUI frontend の間接依存 `brace-expansion` を 1.1.12 から 1.1.16 へ更新しました。
- 1.x 系へ backport された CVE-2026-13149 と既知 advisory の修正を取り込み、悪意ある brace pattern によるリスクを低減します。
- npm / Yarn の両 lockfile だけを更新しており、Agent Framework の Python API や UI 機能には変更ありません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/devui/frontend/package-lock.json` | 6 | 6 |
| `python/packages/devui/frontend/yarn.lock` | 6 | 6 |

</details>

<details><summary>コミット (1 件)</summary>

- `e52bb27` Bump brace-expansion in /python/packages/devui/frontend

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`package-lock.json` と `yarn.lock` の解決バージョン更新のみで、公開 API の追加・削除や破壊的変更はありません。

**既存利用者への影響**

ソース変更は不要です。DevUI frontend をリポジトリからビルド・配布する場合は新しい lockfile で依存関係を再取得し、更新済み artifact を使用してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7189 | Python: Return MCP tool-use sampling results | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7189> |
| #7313 | .NET: Graduate GitHub Copilot agent to stable | giles17 | <https://github.com/microsoft/agent-framework/pull/7313> |
| #7097 | Python: Fix sub-workflow checkpoint restore to preserve sub-workflow state | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7097> |
| #7262 | .NET: Add TodoProvider and AgentModeProvider samples | westey-m | <https://github.com/microsoft/agent-framework/pull/7262> |
| #7284 | .NET: fix InMemoryChatHistoryProvider persisting when service stores history | westey-m | <https://github.com/microsoft/agent-framework/pull/7284> |
| #7274 | Python: Improve python package management operations | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7274> |
| #7271 | Python: Fix duplicate function call on approval round-trip (#7267) | atty57 | <https://github.com/microsoft/agent-framework/pull/7271> |
| #7302 | Python: Promote agent-framework-github-copilot to 1.0.0 (released) | giles17 | <https://github.com/microsoft/agent-framework/pull/7302> |
| #7300 | Python: Forward GitHub Copilot input attachments as inline blobs | giles17 | <https://github.com/microsoft/agent-framework/pull/7300> |
| #7263 | .NET: Add language and prompt customization to Magentic orchestration | peibekwe | <https://github.com/microsoft/agent-framework/pull/7263> |
| #7208 | Python: Support async credentials in `FoundryToolbox` | cecheta | <https://github.com/microsoft/agent-framework/pull/7208> |
| #7202 | Python: fix(foundry_hosting): preserve auth credentials across FoundryToolbox reconnections | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7202> |
| #7277 | Python: Align AG-UI workflow cache scoping | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7277> |
| #7281 | Python: Fix stale agent.json reference in A2A sample docstring | amit12cool | <https://github.com/microsoft/agent-framework/pull/7281> |
| #5694 | .NET: Switch to using new community toolkit VectorData packages | westey-m | <https://github.com/microsoft/agent-framework/pull/5694> |
| #7282 | Python: Bump agent-framework-hosting-a2a to 1.0.0a260723 | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7282> |
| #7258 | Python: add progressive A2A hosting adapters | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7258> |
| #7273 | Python: Bump Python package versions for 1.12.1 release | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7273> |
| #7276 | Restore dedicated DevFlow authentication | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7276> |
| #7261 | Python: Enforce package coverage by lifecycle | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7261> |
| #7233 | Python: Fix stateless replay of reasoning-paired tool calls | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7233> |
| #7268 | .NET: Fix expensive logging | alliscode | <https://github.com/microsoft/agent-framework/pull/7268> |
| #7163 | Python: Support prompt cache breakpoints for GPT-5.6 models in OpenAI clients | Mordris | <https://github.com/microsoft/agent-framework/pull/7163> |
| #1615 | .NET: Added GettingStarted example demonstrating Dapr as an agent provider | WhitWaldo | <https://github.com/microsoft/agent-framework/pull/1615> |
| #7265 | .NET: Updating dotnet version for release. | alliscode | <https://github.com/microsoft/agent-framework/pull/7265> |
| #7217 | .NET: Fix declarative autosend output | alliscode | <https://github.com/microsoft/agent-framework/pull/7217> |
| #7095 | Python: preserve Gemini 3 thought_signature across function-call replays | giles17 | <https://github.com/microsoft/agent-framework/pull/7095> |
| #7249 | Harden workflow credential selection | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7249> |
| #7135 | Python: make FoundryToolbox.as_skills_provider() disable_caching effective | giles17 | <https://github.com/microsoft/agent-framework/pull/7135> |
| #7238 | Python: Bump package versions for 1.12.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7238> |
| #7200 | Python: Fix PropertySchema.to_json_schema() not recursing into nested array items / object properties | exp-ouroborous | <https://github.com/microsoft/agent-framework/pull/7200> |
| #7229 | .NET: Cover source-type-agnostic toolbox consent parsing (a2a_preview) | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7229> |
| #7237 | .NET: Version bump for .net release | westey-m | <https://github.com/microsoft/agent-framework/pull/7237> |
| #7209 | Python: Add MCP hosting helpers | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7209> |
| #7218 | Python: Fix header_provider headers not reaching streamable HTTP transport requests | robbiebusinessacc | <https://github.com/microsoft/agent-framework/pull/7218> |
| #7219 | Python: Prevent compaction from emitting empty projections | ronronner02 | <https://github.com/microsoft/agent-framework/pull/7219> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7336 | Python: Add GitHub Copilot BYOK sample | open | droideronline | <https://github.com/microsoft/agent-framework/pull/7336> |
| PR | #7337 | .NET: Add GitHub Copilot BYOK sample | open | droideronline | <https://github.com/microsoft/agent-framework/pull/7337> |
| PR | #7334 | Python: Drop post-limit streamed function calls | open | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7334> |
| PR | #7333 | Python: fix(python): handle callable class middleware safely in _determine_middleware_type (#6697) | open | hsusul | <https://github.com/microsoft/agent-framework/pull/7333> |
| PR | #7332 | Bump astral-sh/setup-uv from 8.3.2 to 9.0.0 in /.github/actions/python-setup | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7332> |
| PR | #7331 | Bump actions/checkout from 6.0.2 to 7.0.1 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7331> |
| PR | #7328 | Bump astral-sh/setup-uv from 8.3.2 to 9.0.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7328> |
| PR | #7329 | Bump github/codeql-action/analyze from 4.37.0 to 4.37.3 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7329> |
| PR | #7330 | Bump actions/cache from 5.0.5 to 6.1.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7330> |
| PR | #7327 | Bump github/codeql-action/init from 4.37.0 to 4.37.3 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7327> |
| PR | #7324 | .NET: Preserve table state after declarative EditTable Add | open | KXHXK | <https://github.com/microsoft/agent-framework/pull/7324> |
| PR | #7326 | Python: fix(python): preserve replayed approval calls | open | HUAN2022A | <https://github.com/microsoft/agent-framework/pull/7326> |
| PR | #7322 | Python: Fix Gemini harness tool declarations | open | scarab-systems | <https://github.com/microsoft/agent-framework/pull/7322> |
| PR | #7295 | .NET: Update AG-UI samples for latest MAF + AG-UI SDK and align with docs | open | danroth27 | <https://github.com/microsoft/agent-framework/pull/7295> |
| PR | #7244 | Python: Preserve non-adjacent function call/result pairs during compaction | open | jstar0 | <https://github.com/microsoft/agent-framework/pull/7244> |
| PR | #7321 | Python: fix LineTooLong error in CopilotStudioAgent | open | Mahajan-Sachin | <https://github.com/microsoft/agent-framework/pull/7321> |
| PR | #7317 | Python: fix(python): exclude unsupported ChatOptions in Ollama chat client (#7054) | open | hsusul | <https://github.com/microsoft/agent-framework/pull/7317> |
| PR | #7316 | Python: fix(ag-ui): clean confirm_changes approval payloads in snapshot | open | hsusul | <https://github.com/microsoft/agent-framework/pull/7316> |
| PR | #7314 | Python: Bump postcss from 8.5.15 to 8.5.23 in /python/samples/05-end-to-end/chatkit-integration/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7314> |
| PR | #7315 | Python: Bump postcss from 8.5.15 to 8.5.23 in /python/samples/05-end-to-end/ag_ui_workflow_handoff/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7315> |
| PR | #7312 | Python: Add agent-framework-tenki (Tenki-backed CodeAct provider) | open | Patricio-Filice-Luxor | <https://github.com/microsoft/agent-framework/pull/7312> |
| PR | #7310 | .NET: Create session for tool approval agent when none provided | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7310> |
| PR | #7292 | Python: [Feature]: Support OpenAI instructions in Responses API | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7292> |
| PR | #7305 | Python: Apply header_provider headers to the MCP initialize handshake and other ambient requests | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7305> |
| PR | #7309 | Python: Add TodoProvider and AgentModeProvider samples | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7309> |
| PR | #7308 | Python: Add Eden AI chat client provider | open | MVS-source | <https://github.com/microsoft/agent-framework/pull/7308> |
| PR | #7280 | .NET: Bump AgentMemory.AgentFramework from 1.2.0 to 1.3.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7280> |
| PR | #7306 | Python: Move SessionStore to core and persist Foundry Responses sessions | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7306> |
| PR | #7242 | Python: fix: prevent superlinear history growth by deduplicating messages in save_messages | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7242> |
| PR | #7283 | Python: Fix FoundryAgent inheriting OPENAI_CHAT_MODEL for agent-reference requests | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/7283> |
| PR | #7293 | Bump uv from 0.11.29 to 0.11.31 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7293> |
| PR | #7294 | Bump ty from 0.0.60 to 0.0.63 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7294> |
| PR | #7289 | Python: defer turn-scoped after_run providers to the agent loop boundary | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7289> |
| PR | #7291 | Python: Reject Windows junctions in FileSystemAgentFileStore | open | sricursion | <https://github.com/microsoft/agent-framework/pull/7291> |
| PR | #7256 | Python: make SerializationMixin.from_dict enforce the documented type check | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7256> |
| PR | #7243 | Python: stream tool results for approval-resolution execution | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7243> |
| PR | #7239 | Python: preserve model emission order in AG-UI MESSAGES_SNAPSHOT | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7239> |
| PR | #7278 | Python: forward Azure AI Search query-source identity | open | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7278> |
| PR | #7279 | .NET: Bump AgentMemory from 1.2.0 to 1.3.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7279> |
| PR | #7247 | docs: ADR-0032 — propose durable/Azure Functions repo extraction | open | cgillum | <https://github.com/microsoft/agent-framework/pull/7247> |
| PR | #6209 | .NET: fix service-stored history provider resolution | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6209> |
| PR | #6645 | Python: enforce dependency-bounds validator in CI | closed | vaibhav-patel | <https://github.com/microsoft/agent-framework/pull/6645> |
| PR | #6915 | Python: forward Azure AI Search query-source identity | closed | kmishra1204 | <https://github.com/microsoft/agent-framework/pull/6915> |
| PR | #6141 | .NET: fix: avoid local history when service returns conversation id | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/6141> |
| PR | #7259 | Python: Stream results for tools executed during approval resolution | closed | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/7259> |
| PR | #1170 | .NET: Real-time audio processing multi-agent example | closed | pakbaz | <https://github.com/microsoft/agent-framework/pull/1170> |
| PR | #7246 | docs: ADR-0032 — propose durable/Azure Functions repo extraction | closed | cgillum | <https://github.com/microsoft/agent-framework/pull/7246> |
| Issue | #7335 | .NET: [Feature]: .NET Microsoft.Agents.AI.Compaction restrictions | open | eguzchin-isoftwareiq | <https://github.com/microsoft/agent-framework/issues/7335> |
| Issue | #7304 | Python: [Bug]: Approval request restores a third `function_call` when a completed call and a replayed approval pair share one call_id | open | atty57 | <https://github.com/microsoft/agent-framework/issues/7304> |
| Issue | #7325 | Python: [Bug]: agent-framework==1.9.0 cannot be installed due to dependency conflict with agent-framework-ag-ui | open | Jomar77 | <https://github.com/microsoft/agent-framework/issues/7325> |
| Issue | #7323 | .NET: [Bug]: Declarative EditTable/EditTableV2 Add replaces the items variable with the added record, so a second Add always fails | open | crloz | <https://github.com/microsoft/agent-framework/issues/7323> |
| Issue | #7257 | Python: [Bug]: aiohttp.http_exceptions.LineTooLong: 400, message:   Got more than 524288 bytes when reading: b'data: | open | lakshaydulani | <https://github.com/microsoft/agent-framework/issues/7257> |
| Issue | #7318 | Harness HostedWebSearchTool is declared but not interceptable — align with FileAccess/FileMemory, or expose a request-authorize + result-inspection hook | open | joslat | <https://github.com/microsoft/agent-framework/issues/7318> |
| Issue | #7311 | Python: [Feature]: Add a CodeAct backend for remote isolated Linux micro-VM sandboxes | open | Patricio-Filice-Luxor | <https://github.com/microsoft/agent-framework/issues/7311> |
| Issue | #7307 | .NET: [Bug]: `ChatOptions.Tools`, `ToolMode`, and `AllowMultipleToolCalls` are intermittently dropped during continuous/infinite tool execution loops | closed | zengyun261 | <https://github.com/microsoft/agent-framework/issues/7307> |
| Issue | #7266 | .NET: Agent Harness: expose FileAccess / WebSearch / FileMemory as interceptable tool calls (for middleware/observability) | closed | joslat | <https://github.com/microsoft/agent-framework/issues/7266> |
| Issue | #7303 | Python: Remove execution context support in sub workflow checkpoints | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7303> |
| Issue | #7267 | Python: [Bug]: run_skill_script approval handshake leaves function call unanswered in local Inspector (Responses API) | closed | robertohj-ventagium | <https://github.com/microsoft/agent-framework/issues/7267> |
| Issue | #7301 | GitHub Copilot Stable Release | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7301> |
| Issue | #7299 | .NET: Fix AGUI hack in ChatClientAgent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7299> |
| Issue | #7298 | Python: Add sample to show magentic prompt overwrite | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7298> |
| Issue | #7285 | .NET: Python: declarative workflow DevUI sample broken — wrong expression namespaces and JoinExecutor single-Message gap | open | amit12cool | <https://github.com/microsoft/agent-framework/issues/7285> |
| Issue | #7286 | Python: A2A sample uses stale /.well-known/agent.json instead of /.well-known/agent-card.json | closed | amit12cool | <https://github.com/microsoft/agent-framework/issues/7286> |
| Issue | #7287 | .NET: [Feature]: Support native AG-UI interrupt/resume events for Human-in-the-Loop | open | bazazer | <https://github.com/microsoft/agent-framework/issues/7287> |
| Issue | #7290 | Python: [Bug]: FileSystemAgentFileStore recursive search follows Windows junctions outside its configured root | open | sricursion | <https://github.com/microsoft/agent-framework/issues/7290> |
| Issue | #7297 | Investigate release best practices for other internal nuget projects | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7297> |
| Issue | #7296 | Remove github nuget publishing from release process | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7296> |
| Issue | #7288 | Only support per-service-call ChatHistoryPersistence | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7288> |
| Issue | #7272 | Python: [Bug]: FoundryAgent inherits unrelated OPENAI_CHAT_MODEL for agent-reference requests | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7272> |
| Issue | #7275 | Restore dedicated DevFlow Copilot authentication | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7275> |
| Issue | #7260 | Python: Enforce Python coverage by package lifecycle | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7260> |
| Issue | #7264 | Python: [Bug]: Hosted Agent, Human In the loop not displayed correctly on Foundry Playground | open | damienaicheh | <https://github.com/microsoft/agent-framework/issues/7264> |
| Issue | #7253 | Python: [Feature]: Explore EverOS as an optional Python long-term memory ContextProvider | open | Yangtze-Seventh | <https://github.com/microsoft/agent-framework/issues/7253> |
| Issue | #7269 | Reduce workflow credential exposure | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7269> |
| Issue | #7255 | Python: SerializationMixin.from_dict silently accepts mismatched type identifiers | open | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7255> |
| Issue | #7248 | Harden workflow credential selection | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/7248> |
| Issue | #7236 | Python: [Bug]: `CompactionProvider.after_run` fires once per `AgentLoopMiddleware` iteration, not once per real user turn - digests same-task tool results mid-task | open | antsok | <https://github.com/microsoft/agent-framework/issues/7236> |
| Issue | #7241 | Python: [Bug]: Tool results from approval-resolution execution are never streamed, so provider-injected approvals emit no TOOL_CALL_RESULT | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/issues/7241> |
| Issue | #7250 | Python:  Move all FHA samples to azure.yaml | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7250> |
| Issue | #7240 | [Feature]:  feature-usage bitmask in both languages | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/7240> |
| Issue | #7235 | Python: [Bug]: CompactionProvider.after_run fires once per AgentLoopMiddleware iteration, not once per real turn | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7235> |
| Issue | #7157 | Python: [Feature]: Support prompt cache breakpoints for GPT 5.6 models | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7157> |
| Issue | #6120 | .NET: [Bug]: InMemoryChatHistoryProvider used even when service stores history (OpenAI Responses) | closed | ArturDorochowicz | <https://github.com/microsoft/agent-framework/issues/6120> |
| Issue | #6987 | Python: .NET: [Bug]: Magentic Orchestration internal messages ignore non-English instructions | closed | bingbing-gui | <https://github.com/microsoft/agent-framework/issues/6987> |
| Issue | #7207 | Python: [Feature]: Support async credentials in `FoundryToolbox` | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7207> |
| Issue | #7166 | Python: [Bug]: `oauth_consent_request` produces error within same session | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7166> |
| Issue | #7160 | Python: [Bug]: MCP sampling callback cannot return structured tool-use responses | closed | SensorLock | <https://github.com/microsoft/agent-framework/issues/7160> |
| Issue | #6963 | Python: [Bug]: Gemini 3 `thought_signature` dropped on replayed function calls | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6963> |
| Issue | #7100 | Python: FoundryToolbox.as_skills_provider() disable_caching is a no-op; toolbox skills re-read every run | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7100> |
| Issue | #7198 | Python: [Bug]: PropertySchema.to_json_schema() doesn't recurse into array items — nested "kind" not renamed to "type", nested empty "enum" kept | closed | exp-ouroborous | <https://github.com/microsoft/agent-framework/issues/7198> |
| Issue | #5064 | .NET: Documentation for Human-in-the-Loop, RequestInfoEvent / RequestPort and their compatibility with AgentWorkflowBuilder orchestrations | closed | hansmbakker | <https://github.com/microsoft/agent-framework/issues/5064> |
| Issue | #6592 | Hosting: MCP channel | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6592> |
| Issue | #7161 | Python: [Bug]: mcp server can not receive self-define header | closed | changyao-han | <https://github.com/microsoft/agent-framework/issues/7161> |
| Issue | #7213 | Python: [Bug]: compaction can exclude EVERY message — the empty projection crashes the provider mid-run | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7213> |
