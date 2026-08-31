# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-08-24 00:06:51 〜 2026-08-27 01:07:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 22 |
| オープン中の新規 PR     | 24 |
| クローズ (未マージ) PR  | 11 |
| 新規 Issue              | 15 |
| クローズ Issue          | 17 |
| 主要コントリビューター  | dependabot[bot], SergeyMenshykh, baywet, Copilot, adamsitnik, rogerbarreto |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7671](https://github.com/microsoft/agent-framework/pull/7671) — .NET: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  AgentFileStore の行番号契約を利用する .NET 実装者は、公開 API と呼び出し側の扱いを確認し、変更案に追随してください。
- **⚠ 破壊的変更** [#7669](https://github.com/microsoft/agent-framework/pull/7669) — Python: [BREAKING] Add file_access_read_lines and move the line-numbering contract onto AgentFileStore （PR / open / antsok）
  Python の AgentFileStore / ファイル読み取り機能を利用する開発者は、新しい `file_access_read_lines` 契約へ移行できるか確認してください。
- **⚠ セキュリティ** [#7828](https://github.com/microsoft/agent-framework/pull/7828) — Bump Aspire.Microsoft.Azure.Cosmos from 13.1.0 to 13.5.2 （PR / closed / dependabot[bot]）
  Aspire の依存パッケージを利用する .NET 開発者は、更新後の復元・ビルド結果と脆弱性修正の取り込みを確認してください。
- **⚠ セキュリティ** [#7827](https://github.com/microsoft/agent-framework/pull/7827) — Bump Aspire.Hosting.Azure.CognitiveServices from 13.1.0 to 13.5.2 （PR / closed / dependabot[bot]）
  Azure Cognitive Services ホスティングを利用する開発者は、13.5.2 への更新でテストとロックファイルを再確認してください。
- **⚠ セキュリティ** [#7826](https://github.com/microsoft/agent-framework/pull/7826) — .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2 （PR / merged / dependabot[bot]）
  Agent Framework の .NET 利用者は Aspire.Hosting 13.5.2 の復元・実行互換性を確認し、依存更新を取り込んでください。

## このリポジトリの要点

Agent Framework は .NET / Python の依存更新と AG-UI の service-session スナップショット再生修正が中心でした。
Aspire.Hosting 13.5.2 への更新に加え、ファイルアクセス契約の破壊的変更案が継続中です。
AG-UI は入力と UI スナップショットの分離、継続検証、マルチターンテストが強化されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7826](https://github.com/microsoft/agent-framework/pull/7826) — .NET: Bump Aspire.Hosting from 13.1.0 to 13.5.2

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `.NET` `dependencies`
- 変更行数: +30 / -11
- マージ日時 (UTC): `2026-08-25 13:19:02`

**変更概要**

Aspire.Hosting を 13.1.0 から 13.5.2 に更新し、最新 Aspire の修正と機能を取り込みます。
Directory.Packages.props と Directory.Build.props を更新し、AppHost SDK の RID 選択や共通バージョン参照も調整しました。
依存関係を利用する .NET プロジェクトの復元・ビルド経路が影響範囲です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Build.props` | 19 | 0 |
| `dotnet/Directory.Packages.props` | 11 | 11 |

</details>

<details><summary>コミット (4 件)</summary>

- `cdcdb3f` Bump Aspire.Hosting from 13.1.0 to 13.5.2
- `3106e54` Fix Aspire 13.5.2 restore/build regressions
- `af5c086` Use Aspire AppHost SDK 13.5.2 with temporary _AspireUseSdkPickBestRid…
- `c9f60ca` Reuse AspireAppHostSdkVersion for Aspire packages

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更や新規抽象はなく、パッケージと AppHost SDK のバージョン解決設定を更新しています。
一時的な `_AspireUseSdkPickBestRid` 設定と共通バージョン再利用により、13.5.2 の復元・ビルド回帰を吸収しています。

**既存利用者への影響**

通常はソース変更不要ですが、同じ Directory.Packages.props を共有する利用者は復元・ビルドを再実行してください。

### [#7770](https://github.com/microsoft/agent-framework/pull/7770) — Python: fix AG-UI service-session snapshot replay

- 作者: PratikWayase / 状態: MERGED
- ラベル: `documentation` `python` `ag-ui`
- 変更行数: +967 / -29
- マージ日時 (UTC): `2026-08-26 23:53:44`

**変更概要**

AG-UI の service-session で、プロバイダー入力と UI スナップショットが混在して再生される問題を修正しました。
継続トークンの検証、identity ベースのセッション分割、明示的な会話履歴の扱いを整理し、マルチターン・ホスト会話のテストを大幅に追加しています。
AG-UI、Foundry hosting、Responses の継続利用時の状態復元が影響範囲です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/AGENTS.md` | 3 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent.py` | 8 | 0 |
| `python/packages/ag-ui/agent_framework_ag_ui/_agent_run.py` | 90 | 9 |
| `python/packages/ag-ui/agent_framework_ag_ui/_run_common.py` | 68 | 15 |
| `python/packages/ag-ui/agent_framework_ag_ui/_snapshots.py` | 2 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_agent_wrapper_comprehensive.py` | 5 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_multi_turn.py` | 415 | 1 |
| `python/packages/ag-ui/tests/ag_ui/test_run.py` | 31 | 2 |
| `python/packages/foundry/tests/foundry/test_foundry_agent.py` | 93 | 0 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 209 | 0 |
| `python/packages/foundry_hosting/tests/test_responses_int.py` | 43 | 0 |

</details>

<details><summary>コミット (11 件)</summary>

- `3f51b3f` fix(python): separate provider input from UI snapshot in AG-UI servic…
- `d688e85` fix(python): separate provider input from UI snapshot in AG-UI servic…
- `351cec7` fix: use identity matching for service-session split and snapshot rec…
- `5521340` fix(python): validate AG-UI service-session continuations
- `a20d5fe` test(python): cover explicit hosted conversation history
- `866e402` test(python): cover AG-UI service storage boundary
- `9e4f99b` test(python): clarify hosted-agent test wiring
- `08465fe` test(python): cover AF primitive conversation history
- _... 他 3 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

service-session の入力分離と継続検証ロジックを変更していますが、記載された公開 API の破壊的なシグネチャ変更はありません。
スナップショットとプロバイダー入力の境界が明確になり、保存済み会話履歴の検証が強化されています。

**既存利用者への影響**

既存の AG-UI 利用者は通常マイグレーション不要です。継続セッションを独自実装している場合は、入力とスナップショットを混在させないことを確認してください。

### [#7888](https://github.com/microsoft/agent-framework/pull/7888) — Bump CommunityToolkit.VectorData.InMemory from 1.0.0 to 1.0.1

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `.NET` `dependencies`
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-08-26 18:14:08`

**変更概要**

CommunityToolkit.VectorData.InMemory を 1.0.0 から 1.0.1 に更新しました。
依存バージョンの差し替えのみで、Agent Framework 側の実装コードは変更していません。
ベクトルデータのインメモリ実行を使う .NET テスト・サンプルが対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `b7c0513` Bump CommunityToolkit.VectorData.InMemory from 1.0.0 to 1.0.1

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャや抽象の変更はなく、`Directory.Packages.props` の参照バージョンだけを更新しています。

**既存利用者への影響**

ソース移行は不要です。依存関係を固定している利用者は、必要に応じて 1.0.1 の互換性を確認してください。

### [#7870](https://github.com/microsoft/agent-framework/pull/7870) — .NET: chore: upgrades aspnet openapi dependency

- 作者: baywet / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +1 / -2
- マージ日時 (UTC): `2026-08-26 10:20:32`

**変更概要**

ASP.NET OpenAPI 依存関係を更新し、現行の OpenAPI パッケージ修正を取り込みます。
変更は `Directory.Packages.props` のバージョン指定に限定されています。
OpenAPI 生成や関連サンプルをビルドする .NET 開発者が影響を受けます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `92c9eda` chore: upgrades aspnet openapi dependency

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API やシグネチャの変更はなく、パッケージ参照の追加・整理だけです。

**既存利用者への影響**

通常の依存更新として復元・OpenAPI 生成を確認すればよく、コード移行は不要です。

### [#7868](https://github.com/microsoft/agent-framework/pull/7868) — ci: adds dependabot cooldown for python and dotnet

- 作者: baywet / 状態: MERGED
- ラベル: —
- 変更行数: +7 / -0
- マージ日時 (UTC): `2026-08-26 14:18:20`

**変更概要**

Dependabot の Python / .NET 更新 PR にクールダウン期間を設定し、依存更新の集中を抑えます。
`.github/dependabot.yml` に pip を含むエコシステム別の待機設定を追加しました。
アプリの実行時 API には影響せず、依存更新を取り込む CI のタイミングだけが変わります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/dependabot.yml` | 7 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `dc181c4` ci: adds dependabot cooldown for python and dotnet
- `e8144a0` ci: adds cooldown for pip as well

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API やランタイムコードの変更はなく、Dependabot のスケジュール設定のみです。

**既存利用者への影響**

利用者側の移行は不要です。依存更新の反映が遅れるため、緊急修正時は Dependabot 設定を意識してください。

### [#7869](https://github.com/microsoft/agent-framework/pull/7869) — .NET: docs: updates the contributing information for CFS users

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +15 / -2
- マージ日時 (UTC): `2026-08-26 17:25:07`

**変更概要**

Cloud Foundry Services (CFS) 利用者向けに、.NET 開発への貢献手順と前提情報を更新しました。
`CONTRIBUTING.md` と関連 ignore 設定を整理し、CFS 固有の作業環境を案内します。
実行時コードや公開 API は変更されず、貢献者のオンボーディングが対象です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.gitignore` | 3 | 0 |
| `CONTRIBUTING.md` | 12 | 0 |
| `dotnet/.gitignore` | 0 | 2 |

</details>

<details><summary>コミット (3 件)</summary>

- `fd4d356` docs: updates the contributing information for CFS users
- `7815909` chore: typos fix
- `74ece40` chore: typo fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャや新規抽象はなく、ドキュメントと ignore ファイルの変更です。

**既存利用者への影響**

利用者の移行は不要です。CFS 上で開発・貢献する場合のみ更新された手順を参照してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7886 | .NET: Bump Azure.AI.AgentServer.Invocations from 1.0.0-beta.5 to 1.0.0-beta.6 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7886> |
| #7861 | .NET: Simplify A2A function tool samples | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7861> |
| #7878 | .NET: Rename CommunityToolkit.VectorData.CosmosNoSql to AzureCosmosDB | adamsitnik | <https://github.com/microsoft/agent-framework/pull/7878> |
| #7864 | .NET: Annotate DevUI aggregator static-analysis false positives | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7864> |
| #7860 | Python: keep agent loop marker from provider SDKs | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7860> |
| #7792 | .NET: added Mem0Sharp integration for in-memory storage in agent samples. | jihadkhawaja | <https://github.com/microsoft/agent-framework/pull/7792> |
| #7850 | Python: preserve unmapped Anthropic and Mistral finish reasons | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7850> |
| #7858 | .NET: Suppress false positive Zip Slip alert | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7858> |
| #7846 | Python: update ChatKit attachment handling | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7846> |
| #7843 | .NET: Use Responses API for hosted web search in AG-UI | Copilot | <https://github.com/microsoft/agent-framework/pull/7843> |
| #7842 | .NET: Honor cancellation for Foundry-hosted workflow responses | Copilot | <https://github.com/microsoft/agent-framework/pull/7842> |
| #7703 | Python: Allow programmatic OTel service name, resource attributes, and OTLP exporter config | droideronline | <https://github.com/microsoft/agent-framework/pull/7703> |
| #7705 | Python: fix streaming when GenAI tracing replaces the raw response (#7461) | madanmishra1223 | <https://github.com/microsoft/agent-framework/pull/7705> |
| #5860 | .NET: fix: preserve Responses logprobs field | he-yufeng | <https://github.com/microsoft/agent-framework/pull/5860> |
| #7817 | .NET: Stabilize Foundry recovery tests | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7817> |
| #7829 | .NET: Bump AWSSDK.Extensions.Bedrock.MEAI from 4.0.6.10 to 4.0.101.8 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7829> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7874 | Python: .NET: Show Aspire traces in DevUI | open | Saibernard | <https://github.com/microsoft/agent-framework/pull/7874> |
| PR | #7896 | .NET: Remove retired OpenAI Assistants integration tests | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7896> |
| PR | #7895 | Python: preserve message roles in ClaudeAgent._format_prompt | open | mittalpk | <https://github.com/microsoft/agent-framework/pull/7895> |
| PR | #7893 | Python: Bound abandoned PolicyEnforcement pending approvals | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7893> |
| PR | #7892 | Python: Add origin-scoped headers for MCP connect authentication | open | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7892> |
| PR | #7889 | Bump Dapr.AI.Microsoft.Extensions from 1.18.4 to 1.18.5 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7889> |
| PR | #7880 | Python: fix(workflow): discard pending state after failed supersteps | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7880> |
| PR | #7891 | .NET: Simplify A2A client-server sample | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/7891> |
| PR | #7854 | .NET: docs: Improve AsFunctionTool Disclaimers | open | azarboon | <https://github.com/microsoft/agent-framework/pull/7854> |
| PR | #7887 | .NET: Bump Azure.Monitor.OpenTelemetry.Exporter from 1.5.0 to 1.8.3 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7887> |
| PR | #7884 | Python: Chore(deps-dev): bump ty from 0.0.72 to 0.0.73 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7884> |
| PR | #7885 | Python: Chore(deps-dev): bump prek from 0.4.11 to 0.4.14 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7885> |
| PR | #7883 | Python: Add Foundry-hosted Telegram sample | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7883> |
| PR | #7875 | Python: Preserve Azure AI Search source kinds | open | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7875> |
| PR | #7879 | Python: send a Pydantic response_format to Gemini as response_schema | open | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/7879> |
| PR | #7881 | Python: feat(core): add tool concurrency groups and sequential execution order | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/7881> |
| PR | #7855 | Python: wrap Anthropic and Gemini SDK exceptions in ChatClientException | open | karthikchundi-commits | <https://github.com/microsoft/agent-framework/pull/7855> |
| PR | #7847 | Python: Prevent workflow checkpoints from being mutated outside of storage implementations | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/7847> |
| PR | #7876 | Python: add Magentic custom manager prompts sample | open | orangeCatDeveloper | <https://github.com/microsoft/agent-framework/pull/7876> |
| PR | #7867 | .NET: expose pending tool approval requests from a restored AgentSession | open | atty57 | <https://github.com/microsoft/agent-framework/pull/7867> |
| PR | #7837 | Python: fix Gemini finish reason fallback and usage-attach cascade | open | shoemoney | <https://github.com/microsoft/agent-framework/pull/7837> |
| PR | #7840 | Python: Add HOL Guard middleware sample | open | deathsamsul | <https://github.com/microsoft/agent-framework/pull/7840> |
| PR | #7845 | Python: fix(redis): scope RedisHistoryProvider keys by source_id | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7845> |
| PR | #7839 | Python: fix declarative workflow DevUI message input | open | kyletser | <https://github.com/microsoft/agent-framework/pull/7839> |
| PR | #7865 | .NET: Set AgentResponse.CreatedAt from the A2A task status timestamp | closed | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/7865> |
| PR | #7827 | Bump Aspire.Hosting.Azure.CognitiveServices from 13.1.0 to 13.5.2 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7827> |
| PR | #7828 | Bump Aspire.Microsoft.Azure.Cosmos from 13.1.0 to 13.5.2 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7828> |
| PR | #7712 | Python: Return caller-owned checkpoints from InMemoryCheckpointStorage | closed | Shivani767 | <https://github.com/microsoft/agent-framework/pull/7712> |
| PR | #5805 | .NET: Fix function approvals persistance with PerServiceCallChatHistoryPersistingChatClient | closed | scrodde | <https://github.com/microsoft/agent-framework/pull/5805> |
| PR | #7803 | docs: Improve `AsFunctionTool` Disclaimers  | closed | azarboon | <https://github.com/microsoft/agent-framework/pull/7803> |
| PR | #7848 | Python: fix(core): align in-memory checkpoint isolation | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7848> |
| PR | #7830 | Python: Fix checkpoint state isolation | closed | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/7830> |
| PR | #7697 | Python: Isolate checkpoint state from live workflow state across restoration and storage boundaries | closed | karandhaodiyal28-hash | <https://github.com/microsoft/agent-framework/pull/7697> |
| PR | #7724 | Python: Include arguments for zero-argument Foundry eval tool calls | closed | luisangelrod | <https://github.com/microsoft/agent-framework/pull/7724> |
| PR | #7844 | .NET: Forward opted-in Responses API function tools | closed | Copilot | <https://github.com/microsoft/agent-framework/pull/7844> |
| Issue | #7894 | Python: [Bug]: ClaudeAgent flattens multi-agent conversation history into one undifferentiated user turn | open | mittalpk | <https://github.com/microsoft/agent-framework/issues/7894> |
| Issue | #7890 | Python: [Bug]: Unbounded memory growth in PolicyEnforcementFunctionMiddleware pending approvals | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7890> |
| Issue | #7852 | .NET: [Feature]: first-class request/interaction context for dynamic model and tool policy | open | soul-soft | <https://github.com/microsoft/agent-framework/issues/7852> |
| Issue | #7866 | Python: [Bug]: MCP tools return double output if CallToolResult contains both content and structuredContent | open | Pavnat | <https://github.com/microsoft/agent-framework/issues/7866> |
| Issue | #7862 | .NET: [Bug]: MAF approval-required function call is persisted as a dangling FunctionCallContent and pending approval state has no public read API | open | soul-soft | <https://github.com/microsoft/agent-framework/issues/7862> |
| Issue | #7872 | .NET: [Bug]: Add explicit closure semantics for dangling tool call / approval flows | open | soul-soft | <https://github.com/microsoft/agent-framework/issues/7872> |
| Issue | #7849 | Python: [Bug]: Anthropic and Mistral chat clients drop unmapped finish reasons | closed | YashvantHange | <https://github.com/microsoft/agent-framework/issues/7849> |
| Issue | #7859 | Python: [Bug]: Pending State writes from a failed superstep leak into a later successful run | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/7859> |
| Issue | #7863 | Python: Support checkpoint hydration and new input in a single workflow run | open | droideronline | <https://github.com/microsoft/agent-framework/issues/7863> |
| Issue | #7857 | .NET: [Bug]: ToolApprovalRequestContent triggers 2 times in handoff workflow with different Id's | open | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/7857> |
| Issue | #7856 | Python: [Bug]: AzureAISearchContextProvider sends SearchIndexKnowledgeSourceParams for web sources in mixed knowledge bases | open | damienaicheh | <https://github.com/microsoft/agent-framework/issues/7856> |
| Issue | #7853 | .NET: [Feature]: provide an official sandbox abstraction for command/tool execution | open | soul-soft | <https://github.com/microsoft/agent-framework/issues/7853> |
| Issue | #7851 | Python: [Bug]:  Should `Content.__deepcopy__` preserve unsafe fields | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7851> |
| Issue | #7841 | Python: MCPStreamableHTTPTool.connect() never sends a header_provider's headers, so any headers_env/header_provider-authenticated server 401s on connect | open | ReubenHawley | <https://github.com/microsoft/agent-framework/issues/7841> |
| Issue | #7836 | Python: [Bug]: Gemini chat client drops unmapped finish reasons and their usage/token accounting | open | shoemoney | <https://github.com/microsoft/agent-framework/issues/7836> |
| Issue | #7710 | Python: AG-UI snapshot replay with service sessions blocks Foundry Hosted Agents | closed | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7710> |
| Issue | #5490 | .NET: [Bug]: Tool calling is not working properly. | closed | skillmaker-dev | <https://github.com/microsoft/agent-framework/issues/5490> |
| Issue | #2614 | [Durable Agents] Add support for workflows | closed | cgillum | <https://github.com/microsoft/agent-framework/issues/2614> |
| Issue | #6419 | Python: [Bug]: response_id is not chaining properly with new version of microsoft agent framework | closed | bartosic-cl | <https://github.com/microsoft/agent-framework/issues/6419> |
| Issue | #4608 | .NET Compaction - Distinguish compaction from MEAI concepts | closed | crickman | <https://github.com/microsoft/agent-framework/issues/4608> |
| Issue | #7821 | Python: [Bug]: agent-loop marker reaches the provider SDK (core 1.15.0) | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7821> |
| Issue | #7467 | .NET: Suggesting adding mem0sharp samples | closed | jihadkhawaja | <https://github.com/microsoft/agent-framework/issues/7467> |
| Issue | #7547 | ADO Release Pipeline | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/7547> |
| Issue | #7578 | .NET: [Bug]: Request processing fails when web search is enabled because of an unsupported web_search_options parameter | closed | meisterfranz | <https://github.com/microsoft/agent-framework/issues/7578> |
| Issue | #7511 | Foundry hosting: WorkflowAgent path drops cancellation_signal | closed | scott-lever | <https://github.com/microsoft/agent-framework/issues/7511> |
| Issue | #7487 | Python: [Bug]: Foundry Hosted agent - delay before final response when streaming | closed | cecheta | <https://github.com/microsoft/agent-framework/issues/7487> |
| Issue | #6857 | Python: [Bug]: FoundryAgent crashes when initializing HostedAgent sessions due to incompatible Azure SDK calls | closed | noursf | <https://github.com/microsoft/agent-framework/issues/6857> |
| Issue | #7702 | Python: [Bug]: configure_otel_providers() has no way to set service name, resource attributes, or OTLP exporter config programmatically | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/7702> |
| Issue | #7461 | Python: [Bug]: AZURE_EXPERIMENTAL_ENABLE_GENAI_TRACING=true crashes agent-framework-openai streaming | closed | djw-bsn | <https://github.com/microsoft/agent-framework/issues/7461> |
| Issue | #5854 | .NET: [Bug]: Azure.AI.AgentServer.Responses.PayloadValidationException: Required property 'logprobs' is missing | closed | justinyoo | <https://github.com/microsoft/agent-framework/issues/5854> |
| Issue | #7816 | .NET: [Bug]: Stabilize Foundry recovery tests | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/7816> |
