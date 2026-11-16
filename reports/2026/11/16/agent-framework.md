# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 32 |
| オープン中の新規 PR     | 48 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 28 |
| クローズ Issue          | 14 |
| 主要コントリビューター  | eavanvalkenburg, rogerbarreto, SergeyMenshykh, westey-m, dependabot[bot], Dhruv-Sh-git |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#10362](https://github.com/microsoft/agent-framework/pull/10362) — Python: [BREAKING] Honor MIME text modes in hosting-a2a （PR / open / atty57）
  A2A hosting の MIME text mode に依存する Python 利用者は、未マージの変更内容と入力形式への影響を確認してください。
- **⚠ 破壊的変更** [#10357](https://github.com/microsoft/agent-framework/pull/10357) — .NET: [WIP ] Update Azure.AI.Projects 3.0.0, OpenAI 2.15.0, AgentServer 1.0.0 and stabilize Foundry packages （PR / open / rogerbarreto）
  Azure.AI.Projects / OpenAI / AgentServer の更新と Foundry パッケージ安定化は未マージのため、これらの .NET 依存関係を使う利用者は API・互換性を追跡してください。
- **⚠ 破壊的変更** [#10353](https://github.com/microsoft/agent-framework/pull/10353) — Python: [BREAKING] Unify hosted agent input handling with AgentTurn and extra_fields policy （PR / open / dargilco）
  Hosted Agent の入力処理が AgentTurn と extra_fields policy に統一される提案です。既存の入力ペイロードを渡す Python 利用者は、追加フィールドの扱いを確認してください。
- **⚠ 破壊的変更** [#10348](https://github.com/microsoft/agent-framework/pull/10348) — Python: [BREAKING] Allowlist caller fields in Foundry Responses hosting （PR / open / dargilco）
  Foundry Responses hosting に渡す呼び出し元フィールドが許可リスト化される提案です。独自フィールドを渡している利用者は、許可対象と変更後の挙動を確認してください。
- **⚠ 破壊的変更** [#10343](https://github.com/microsoft/agent-framework/pull/10343) — .NET: [BREAKING] Add A2A agent card URL validation and consistent assistant role for remote replies （PR / open / westey-m）
  A2A agent card URL の検証とリモート応答の assistant role 統一が提案されています。URL 構成や role 判定に依存する .NET クライアントは、マージ後の互換性を確認してください。
- **⚠ 破壊的変更** [#10328](https://github.com/microsoft/agent-framework/pull/10328) — .NET: [BREAKING] Serve one agent per Foundry hosting container （PR / open / rogerbarreto）
  Foundry hosting container あたり 1 agent に制限する提案です。複数 agent を同一コンテナーで提供する .NET 構成は、分離・配置方法を確認してください。
- **⚠ 破壊的変更** [#10318](https://github.com/microsoft/agent-framework/pull/10318) — Python: [BREAKING] Improve shell path validation （PR / merged / westey-m）
  Python shell tool のパス検証変更により従来許可された指定が拒否される可能性があるため、shell 利用者は実行パスを再確認してください。
- **⚠ 破壊的変更** [#10310](https://github.com/microsoft/agent-framework/pull/10310) — .NET: [BREAKING] Improve LocalShellExecutor shell path validation （PR / merged / westey-m）
  .NET LocalShellExecutor のパス検証が変更されたため、既存の実行ディレクトリ指定が新しい検証を通るか確認してください。
- **⚠ 破壊的変更** [#10291](https://github.com/microsoft/agent-framework/pull/10291) — Python: [BREAKING] Keep Foundry approval state native （PR / merged / eavanvalkenburg）
  Foundry の承認状態をネイティブな状態として扱う変更です。Python Foundry hosting の承認・継続処理をカスタマイズしている利用者は移行影響を確認してください。
- **⚠ 破壊的変更** [#10282](https://github.com/microsoft/agent-framework/pull/10282) — .NET: [BREAKING] Bind Foundry toolboxes to each response （PR / merged / rogerbarreto）
  Foundry toolbox の MCP 接続が応答単位に結び付くため、.NET hosting の接続管理や toolbox lifecycle に依存する実装を確認してください。
- **⚠ 破壊的変更** [#10275](https://github.com/microsoft/agent-framework/pull/10275) — .NET: [BREAKING] Adopt the MCP skills extension （PR / merged / SergeyMenshykh）
  .NET の MCP skills 実装が extension ベースに移行しました。MCP から Agent Skills を取得する既存利用者は新しい型・設定への移行を確認してください。
- **⚠ 破壊的変更** [#10260](https://github.com/microsoft/agent-framework/pull/10260) — Python: [BREAKING] Prepare Foundry Hosting for RC （PR / open / eavanvalkenburg）
  Foundry Hosting の RC 準備に伴う未マージの破壊的変更です。Python hosting を採用予定の利用者は、リリース前に API 契約の変更点を確認してください。
- **⚠ 破壊的変更** [#10243](https://github.com/microsoft/agent-framework/pull/10243) — .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals （PR / open / baywet）
  MCP tool の承認を再検証する提案です。承認を通じて tool 実行を制御する .NET 利用者は、承認状態が無効化・変更された場合の動作を確認してください。
- **⚠ 破壊的変更** [#10238](https://github.com/microsoft/agent-framework/pull/10238) — .NET: [BREAKING] Support scoped and transient agent lifetimes in Foundry Hosting （PR / merged / rogerbarreto）
  Foundry Hosting で scoped / transient の agent lifetime が扱えるようになりました。既存の DI 登録や session store の lifetime を明示的に設定している .NET アプリは、新しい登録契約を確認してください。
- **⚠ 破壊的変更** [#10192](https://github.com/microsoft/agent-framework/pull/10192) — .NET: [BREAKING] fix(dotnet): validate declarative MCP destinations （PR / merged / baywet）
  Declarative MCP の接続先検証が追加されたため、既存の宛先が許可ホストの条件を満たすか確認し、必要なら許可設定を更新してください。
- **⚠ 破壊的変更** [#10001](https://github.com/microsoft/agent-framework/pull/10001) — [BREAKING] Python: Honor injected Azure AI Search clients over settings （PR / open / FOWEPJF255）
  注入済み Azure AI Search client を設定値より優先する未マージの提案です。両方を指定する Python 利用者は、採用時の client 選択動作を確認してください。
- **⚠ 破壊的変更** [#9243](https://github.com/microsoft/agent-framework/pull/9243) — Python: [BREAKING] Do not replay an MCP tools/call whose response was lost （PR / open / he-yufeng）
  MCP tools/call の応答を失った場合に再送しない提案です。再実行による副作用を前提にした Python クライアントは、応答喪失時の再試行方針を確認してください。
- **非推奨/廃止** [#10273](https://github.com/microsoft/agent-framework/pull/10273) — Python: Deprecate the legacy memory APIs （PR / merged / westey-m）
  旧 memory API の利用者は非推奨メッセージと移行先を確認し、FileMemoryProvider など現在の memory 機構への切り替えを計画してください。

## このリポジトリの要点

Python / .NET の Foundry hosting では、承認状態、toolbox の応答単位接続、agent lifetime など実行契約の変更が複数マージされました。
Shell 実行と Declarative MCP のパス・接続先検証も強化され、MCP skills extension の採用と Python 旧 memory API の非推奨化が進んでいます。
未マージの破壊的変更も複数あるため、Foundry hosting と MCP / A2A 利用者は今後の API 更新を継続確認してください。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#10318](https://github.com/microsoft/agent-framework/pull/10318) — Python: [BREAKING] Improve shell path validation

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +510 / -318
- マージ日時 (UTC): `2026-11-13 09:54:36`

**変更概要**

Python shell tool のパス検証を改善し、解決処理と Docker / local shell 実行の双方を見直しました。
`_resolve.py` に検証処理を追加し、shell tool と関連テストを更新しています。
目的は shell 実行前のパスの扱いを一貫させることで、Python shell tool 利用者の指定パスに影響します。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/tools/README.md` | 33 | 10 |
| `python/packages/tools/agent_framework_tools/shell/_docker.py` | 25 | 34 |
| `python/packages/tools/agent_framework_tools/shell/_resolve.py` | 111 | 51 |
| `python/packages/tools/agent_framework_tools/shell/_tool.py` | 24 | 11 |
| `python/packages/tools/tests/test_docker_shell_tool.py` | 94 | 153 |
| `python/packages/tools/tests/test_local_shell_tool.py` | 63 | 7 |
| `python/packages/tools/tests/test_shell_resolve.py` | 160 | 52 |

</details>

<details><summary>コミット (4 件)</summary>

- `574c89c` Improve docker shell path validation
- `19c39d9` Address PR comments
- `7b8605f` Fix build errors
- `9a64a25` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**としてパス検証の挙動が変わります。変更ファイルから公開 API シグネチャの追加・変更は確認できませんが、従来受け入れられた shell path が拒否されないかテストしてください。

**既存利用者への影響**

API 移行が必要とは示されていませんが、既存の Python shell tool 利用者は実行パスの指定と Docker / local の両環境を再検証してください。

### [#10310](https://github.com/microsoft/agent-framework/pull/10310) — .NET: [BREAKING] Improve LocalShellExecutor shell path validation

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +550 / -128
- マージ日時 (UTC): `2026-11-12 19:50:08`

**変更概要**

`.NET` の LocalShellExecutor における shell 実行パス検証を改善しました。
共通の `PathValidation` と `EnvironmentSanitizer` を導入し、ShellResolver、ShellSession、LocalShellExecutor の処理およびテストを更新しています。
既存の実行ディレクトリやセッションを利用する .NET アプリが主な影響対象です。

<details><summary>変更ファイル (14 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AgentSkills/SubprocessScriptRunner.cs` | 36 | 1 |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step03_ScalingCapabilities/SubprocessScriptRunner.cs` | 37 | 1 |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step04_ProductionReady/ClawAgent/SubprocessScriptRunner.cs` | 37 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/EnvironmentSanitizer.cs` | 67 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/LocalShellExecutor.cs` | 12 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/LocalShellExecutorOptions.cs` | 20 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/ShellResolver.cs` | 43 | 45 |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/ShellSession.cs` | 5 | 28 |
| `dotnet/src/Shared/PathValidation/PathValidation.cs` | 58 | 0 |
| `dotnet/src/Shared/PathValidation/README.md` | 2 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Abstractions.UnitTests/PathValidationTests.cs` | 75 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Tools.Shell.UnitTests/LocalShellExecutorTests.cs` | 86 | 15 |
| `dotnet/tests/Microsoft.Agents.AI.Tools.Shell.UnitTests/ShellResolverTests.cs` | 72 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Tools.Shell.UnitTests/ShellSessionTests.cs` | 0 | 33 |

</details>

<details><summary>コミット (4 件)</summary>

- `d9ddb31` Improve shell executor directory validation
- `17454ca` Address PR comments
- `02bbc4e` Merge branch 'main' into dotnet-shell-dir-checks
- `3c9c50f` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

共通の `PathValidation` 抽象と LocalShellExecutor の options が追加されています。**⚠ 破壊的変更**として受け入れる path の検証条件が変わるため、従来動作していたパス指定も回帰確認が必要です。

**既存利用者への影響**

明示的な API 移行手順は示されていません。LocalShellExecutor を使うアプリは実行ディレクトリの指定とセッション継続動作をテストしてください。

### [#10291](https://github.com/microsoft/agent-framework/pull/10291) — Python: [BREAKING] Keep Foundry approval state native

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +2714 / -1875
- マージ日時 (UTC): `2026-11-12 12:50:47`

**変更概要**

Python Foundry hosting の承認状態を Foundry のネイティブな状態として保持する変更です。
承認・継続処理の実装を整理し、共有状態の管理を `_shared.py` 側へ集約するとともに旧 `_state_store.py` を削除しました。
Hosted agent の approval continuation や workflow state を利用する Python アプリが影響対象です。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0055-python-foundry-hosting-contracts.md` | 23 | 7 |
| `docs/specs/004-python-function-calling-loop.md` | 6 | 0 |
| `python/PACKAGE_STATUS.md` | 1 | 1 |
| `python/packages/core/agent_framework/foundry/__init__.py` | 0 | 3 |
| `python/packages/core/agent_framework/foundry/__init__.pyi` | 0 | 6 |
| `python/packages/foundry_hosting/README.md` | 45 | 8 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 12 | 17 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_agent.py` | 2 | 1 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_shared.py` | 1 | 1 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_invocations_workflow.py` | 13 | 3 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_agent.py` | 99 | 37 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_shared.py` | 153 | 73 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses_workflow.py` | 43 | 35 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_shared.py` | 1336 | 4 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_state_store.py` | 0 | 514 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `2a17c40` Python: [BREAKING] Keep Foundry approval state native
- `b927442` Python: Fix native approval replay and publication
- `6d2ad0d` Python: Harden Foundry approval continuations
- `5a0d4c9` Python: Consolidate Foundry workflow state in shared

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Foundry hosting の approval state 管理と関連公開 export が変更されています。**⚠ 破壊的変更**として旧 state store 前提の拡張や承認 replay の実装は新しい native approval / continuation 契約に合わせる必要があります。

**既存利用者への影響**

`_state_store.py` を直接利用するコードや独自 approval continuation があれば更新してください。一般利用者は承認付き Foundry agent の継続処理を回帰テストしてください。

### [#10282](https://github.com/microsoft/agent-framework/pull/10282) — .NET: [BREAKING] Bind Foundry toolboxes to each response

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +1967 / -1625
- マージ日時 (UTC): `2026-11-12 18:37:29`

**変更概要**

Foundry Responses hosting の toolbox 接続を各 response に結び付けるよう変更しました。
各 response の platform call ID に応じて MCP 接続を開き、HTTP handler は共有しつつ response ごとの接続を管理します。
従来の常駐接続や独立した toolbox health-check に依存する .NET hosting 構成が影響対象です。

<details><summary>変更ファイル (25 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0034-hosted-platform-context-agentserver-2.0.md` | 7 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox-AuthPaths/Program.cs` | 3 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Toolbox/Program.cs` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 42 | 72 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxBearerTokenHandler.cs` | 35 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxHealthCheck.cs` | 0 | 80 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxService.cs` | 312 | 557 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxStartupStatus.cs` | 0 | 68 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedCallContext.cs` | 0 | 38 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedProtocolCompatibility.cs` | 5 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedProtocolCompatibilityFilter.cs` | 1 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 14 | 36 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ToolboxConsentParser.cs` | 149 | 45 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/AgentFrameworkResponseHandlerTests.cs` | 0 | 80 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/FoundryToolboxApprovalTests.cs` | 28 | 44 |
| _... 他 10 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `9edec3e` .NET: Add failing tests for per-response Foundry toolbox connections
- `911fd9f` .NET: Remove the unreachable Unhealthy Foundry toolbox status
- `17f5436` .NET: Open Foundry toolbox MCP connections per response
- `e464972` .NET: Share one HTTP handler across per-response toolbox connections
- `4914c3b` .NET: Bind the platform call id to each Foundry toolbox connection
- `0f940c5` .NET: Skip the standalone MCP stream for per-response toolbox sessions
- `64ce130` .NET: Describe per-response toolbox connections in hosted toolbox sam…
- `6e28cfd` refactor(foundry): remove toolbox health check
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

toolbox service / startup status / health-check の構成が変更され、response 単位の接続管理が導入されています。**⚠ 破壊的変更**として従来の接続共有・health-check 状態に依存する利用者は新しい lifecycle と設定面を確認してください。

**既存利用者への影響**

toolbox を利用するアプリは response 単位の接続確立と承認フローを検証してください。旧 health-check を直接参照する場合は代替手段が必要です。

### [#10275](https://github.com/microsoft/agent-framework/pull/10275) — .NET: [BREAKING] Adopt the MCP skills extension

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +15726 / -4713
- マージ日時 (UTC): `2026-11-12 17:35:42`

**変更概要**

`.NET` の MCP skills を MCP extension として扱い、Agent Skills の discovery / resource 取得を追加しました。
新しい `AgentMcpSkill`、source / options、provider builder 拡張に加え、frontmatter 検証、digest / size 検証、pagination、TTL cache を実装しています。
MCP server から skills を取得する agent と既存の MCP skills integration が影響します。

<details><summary>変更ファイル (58 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 0 |
| `dotnet/eng/MSBuild/Shared.props` | 3 | 0 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step26_FoundryToolboxMcpSkills/Program.cs` | 12 | 1 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step26_FoundryToolboxMcpSkills/README.md` | 7 | 3 |
| `dotnet/samples/02-agents/AgentProviders/foundry/README.md` | 1 | 2 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step06_McpBasedSkills/Program.cs` | 108 | 29 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step06_McpBasedSkills/README.md` | 133 | 7 |
| `dotnet/samples/02-agents/AgentSkills/README.md` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Microsoft.Agents.AI.Mcp.csproj` | 3 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkill.cs` | 464 | 86 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillResource.cs` | 14 | 27 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 156 | 152 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSourceOptions.cs` | 123 | 46 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentSkillsProviderBuilderMcpExtensions.cs` | 50 | 11 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/JsonElementComparer.cs` | 112 | 0 |
| _... 他 43 件_ | | |

</details>

<details><summary>コミット (22 件)</summary>

- `773f4bf` .NET: Add runtime support for MCP-listed skills (#9198)
- `5ecf50c` .NET: Integrate MCP-listed skill discovery (#9217)
- `77d7e94` .NET: Verify MCP-listed skill frontmatter with a shared parser (#9319)
- `61ae97d` .NET: Verify MCP-listed skill resource digests and sizes (#9372)
- `ec04171` .NET: Bound MCP-listed skill resource sizes (#9425)
- `49e6b46` .NET: Add pagination to MCP-listed skill discovery (#9464)
- `597101b` .NET: Add TTL caching for MCP-listed skills (#9558)
- `64c8df6` .NET: Rename and restructure MCP skills cache (#9586)
- _... 他 14 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentMcpSkill` / `AgentMcpSkillsSource` / `AgentMcpSkillsSourceOptions` と builder extension が新しい公開抽象として追加・再編されています。**⚠ 破壊的変更**として従来の MCP skills 型・設定を利用するコードは新 extension の API と取得条件へ移行してください。

**既存利用者への影響**

既存の MCP skill source 設定や依存パッケージを使うアプリは新しい extension の登録方法に更新し、resource 制限・pagination・cache の挙動を確認してください。

### [#10238](https://github.com/microsoft/agent-framework/pull/10238) — .NET: [BREAKING] Support scoped and transient agent lifetimes in Foundry Hosting

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +1873 / -90
- マージ日時 (UTC): `2026-11-12 18:29:25`

**変更概要**

Foundry Hosting の agent 登録で scoped / transient lifetime をサポートしました。
agent と session store の登録を分離し、既定 agent の選択や session store の扱いを整理しています。
ASP.NET Core DI で Foundry hosted agent を登録する .NET アプリが対象です。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent/README.md` | 32 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 71 | 28 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryDefaultAgentName.cs` | 34 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostApplicationBuilderExtensions.cs` | 155 | 11 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedStoredOutputHealthCheck.cs` | 18 | 16 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedWorkflowCheckpointingHealthCheck.cs` | 24 | 18 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 337 | 8 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/FoundryAgentLifetimeTests.cs` | 1118 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/HostedStoredOutputHealthCheckTests.cs` | 27 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/HostedWorkflowCheckpointingHealthCheckTests.cs` | 21 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/ResilientTwoLifetimeIntegrationTests.cs` | 36 | 9 |

</details>

<details><summary>コミット (6 件)</summary>

- `3f6d66d` .NET: Support scoped and transient agent lifetimes in Foundry Hosting
- `2587519` Address review feedback on Foundry agent lifetimes
- `94f66ee` .NET: Register Foundry session stores separately from agents
- `8e316de` Document how Foundry agents choose their session store
- `98c7c32` Resolve the requested Foundry agent before the default agent
- `de59989` Merge branch 'main' into foundry-agent-di-lifetimes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ServiceCollectionExtensions` と `HostApplicationBuilderExtensions` の登録動作が拡張され、agent lifetime と session store の選択が明確化されました。**⚠ 破壊的変更**のため既存の singleton 前提や agent / store の DI 登録が新しい lifetime と整合するか確認してください。

**既存利用者への影響**

既定構成からの移行は一律には必要ありませんが、独自の DI 登録を行うアプリは lifetime と session store の分離を確認し、複数 lifetime の agent を含めてテストしてください。

### [#10192](https://github.com/microsoft/agent-framework/pull/10192) — .NET: [BREAKING] fix(dotnet): validate declarative MCP destinations

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows` `breaking change`
- 変更行数: +672 / -217
- マージ日時 (UTC): `2026-11-12 15:56:33`

**変更概要**

Declarative workflow から呼び出す MCP tool の宛先と HTTP handler pipeline を検証します。
共通の `AllowedHttpHosts` / `HttpTransportValidation` を追加し、MCP tool handler で不許可宛先や循環 handler pipeline を拒否するようにしました。
Declarative MCP を利用する workflow が影響対象です。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0055-dotnet-declarative-mcp-allowed-hosts.md` | 54 | 0 |
| `dotnet/samples/03-workflows/Declarative/InvokeFoundryToolboxMcp/Program.cs` | 2 | 1 |
| `dotnet/samples/03-workflows/Declarative/InvokeMcpTool/Program.cs` | 2 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/DefaultMcpToolHandler.cs` | 39 | 18 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net10.0/PublicAPI.Unshipped.txt` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net472/PublicAPI.Unshipped.txt` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net8.0/PublicAPI.Unshipped.txt` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/net9.0/PublicAPI.Unshipped.txt` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/PublicAPI/netstandard2.0/PublicAPI.Unshipped.txt` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/DefaultHttpRequestHandler.cs` | 4 | 66 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/README.md` | 30 | 11 |
| `dotnet/src/Shared/Http/AllowedHttpHosts.cs` | 52 | 0 |
| `dotnet/src/Shared/Http/HttpTransportValidation.cs` | 65 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.IntegrationTests/InvokeToolWorkflowTest.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.Mcp.UnitTests/DefaultMcpToolHandlerLifetimeTests.cs` | 263 | 93 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `71fde34` fix(dotnet): validate declarative MCP destinations
- `5e6ed6e` fix(dotnet): validate declarative MCP handler pipelines
- `381b58e` fix(dotnet): reject cyclic HTTP handler pipelines
- `66993a1` fix(dotnet): remove unused MCP client factory constructor
- `6a98501` fix(dotnet): clarify MCP destination and transport guidance

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

許可ホストと transport を検証する新しい抽象が追加され、未使用の MCP client factory constructor が削除されています。**⚠ 破壊的変更**として有効な宛先が許可条件から外れる場合や、削除された constructor を呼ぶコードは更新が必要です。

**既存利用者への影響**

Declarative MCP を使うアプリは接続先を確認し、必要な host 許可設定を追加してください。削除された constructor を直接使う場合は新しい登録経路へ移行してください。

### [#10273](https://github.com/microsoft/agent-framework/pull/10273) — Python: Deprecate the legacy memory APIs

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +308 / -162
- マージ日時 (UTC): `2026-11-12 12:55:56`

**変更概要**

Python の旧 memory API を非推奨化し、非 FileMemoryProvider の memory feature を obsolete として扱う変更です。
非推奨メッセージに移行期限を示す情報を加え、関連する harness / FileMemory のテストと export を更新しています。
旧 memory API を利用する Python harness 利用者が対象です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 4 | 4 |
| `python/packages/core/agent_framework/_harness/_memory.py` | 104 | 41 |
| `python/packages/core/tests/core/test_feature_stage.py` | 10 | 1 |
| `python/packages/core/tests/core/test_harness_file_memory.py` | 9 | 0 |
| `python/packages/core/tests/core/test_harness_memory.py` | 169 | 115 |
| `python/packages/core/tests/core/test_root_exports.py` | 11 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `3049099` Obsolete non FileMemoryProvider memory feature
- `8833226` Add target date to deprecation message

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

旧 memory feature に非推奨警告と期限情報が追加され、FileMemoryProvider を中心とした現行実装との境界が明確化されています。新しい API 署名の変更というより、既存 API の非推奨化が主な互換性上の変更です。

**既存利用者への影響**

旧 memory API の利用者は警告に記載された期限を確認し、FileMemoryProvider など現行の memory 機構へ段階的に移行してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #10378 | chore(deps): bump github/codeql-action/autobuild in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10378> |
| #10377 | chore(deps): bump github/codeql-action/init in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10377> |
| #10379 | chore(deps): bump github/codeql-action/analyze in / | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10379> |
| #10240 | .NET: Prepare for .NET 11 TFM support  | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10240> |
| #10345 | .NET: fix(dotnet): bound MCP response reads | baywet | <https://github.com/microsoft/agent-framework/pull/10345> |
| #10339 | Python: Handle invocation-time Foundry Toolbox OAuth consent | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10339> |
| #9879 | Python: Enforce FIDES MCP IFC labels | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9879> |
| #10312 | Python: Monty: run guest code off the event loop and add a default execution limit | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10312> |
| #10342 | .NET: Promote A2A agent to release candidate | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10342> |
| #10341 | .NET: Update SDK to 10.0.404 | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10341> |
| #10340 | .NET: Add A2A agent basic usage sample | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/10340> |
| #10270 | Python: Add Supermemory to the community projects catalog | ishaanxgupta | <https://github.com/microsoft/agent-framework/pull/10270> |
| #10326 | .NET: Skip flaky background workflow test | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10326> |
| #9874 | .NET: fix(dotnet): avoid duplicate chat history with background respo… | feiyun0112 | <https://github.com/microsoft/agent-framework/pull/9874> |
| #10316 | .NET: Fix CA1860 build break from the .NET 11 SDK on new runner images | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10316> |
| #10313 | Python: Lower Hyperlight dependency floors for 1.26 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10313> |
| #10311 | Python: Match release titles to tag names | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10311> |
| #10298 | Python: Prepare 1.26.0 release | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10298> |
| #9878 | Python: Preserve FIDES AG-UI replay provenance | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9878> |
| #9877 | Python: Harden FIDES service history continuation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9877> |
| #10284 | Python: Accept input_file file_data in the Responses hosting parser | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10284> |
| #10295 | Python: Preserve registered tool policy in declarative agents | jpalvarezl | <https://github.com/microsoft/agent-framework/pull/10295> |
| #10258 | Python: Prevent keyword argument collision when model is passed in client_kwargs | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10258> |
| #10257 | Python: Fix Purview cache size accounting when replacing entries | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10257> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #10383 | Python: Preserve numeric evaluator scores in LocalEvaluator | open | 14H034160212 | <https://github.com/microsoft/agent-framework/pull/10383> |
| PR | #10358 | docs: fix ordered list numbering in docs/FAQS.md | open | TINGyu123644 | <https://github.com/microsoft/agent-framework/pull/10358> |
| PR | #10382 | Python: fix(compaction): ignore MCP host payload in token estimates | open | LuYuan-Zjyy | <https://github.com/microsoft/agent-framework/pull/10382> |
| PR | #10361 | Python: fix(devui): validate conversation metadata at the route boundary | open | tang-ontheway | <https://github.com/microsoft/agent-framework/pull/10361> |
| PR | #10380 | chore(deps): bump actions/setup-dotnet in / | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10380> |
| PR | #10374 | Python: fix(serialization): serialize tuple values to JSON-compatible lists in _serialize_value | open | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/10374> |
| PR | #10368 | Python: Add Agent Commerce Gateway to the Python community projects | open | SergeevDmitry | <https://github.com/microsoft/agent-framework/pull/10368> |
| PR | #10359 | Python: fix(core): persist compaction annotations in file-backed history | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/10359> |
| PR | #10362 | Python: [BREAKING] Honor MIME text modes in hosting-a2a | open | atty57 | <https://github.com/microsoft/agent-framework/pull/10362> |
| PR | #10372 | Python: fix(sessions): quarantine corrupt snapshots under a bounded file name | open | simin-yuan | <https://github.com/microsoft/agent-framework/pull/10372> |
| PR | #10375 | Python: fix(serialization): include slot-backed instance fields in SerializationMixin.to_dict | open | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/10375> |
| PR | #10364 | Python: Add FailoverChatClient for per-model-call failover across chat clients | open | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/10364> |
| PR | #10367 | Python: Keep $defs at the root of wrapped MCP workflow tool schemas | open | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10367> |
| PR | #10371 | .NET: Bump the agent-memory group with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10371> |
| PR | #10329 | Python: fix(python): fix operator precedence and associativity in WorkflowState fallback evaluator | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/10329> |
| PR | #10369 | Python: resolve checkpoint timestamp ties in the approval resume test | open | DZH166 | <https://github.com/microsoft/agent-framework/pull/10369> |
| PR | #10370 | Python: fix(harness): stop AgentLoopMiddleware surfacing replayed input in loop results | open | DZH166 | <https://github.com/microsoft/agent-framework/pull/10370> |
| PR | #10331 | Python: Preserve merge mode in WorkflowAgent streaming | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/10331> |
| PR | #10337 | Python: Normalize Foundry checkpoint timestamps for comparison | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/10337> |
| PR | #10357 | .NET: [WIP ] Update Azure.AI.Projects 3.0.0, OpenAI 2.15.0, AgentServer 1.0.0 and stabilize Foundry packages | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10357> |
| PR | #10355 | Python: chore(deps): bump opentelemetry-api from 1.45.1 to 1.45.2 in /python/samples/04-hosting/foundry-hosted-agents/invocations/telegram | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10355> |
| PR | #10354 | Python: Fix DevUI authentication for non-ASCII bearer tokens | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/10354> |
| PR | #10353 | Python: [BREAKING] Unify hosted agent input handling with AgentTurn and extra_fields policy | open | dargilco | <https://github.com/microsoft/agent-framework/pull/10353> |
| PR | #10327 | Python: preserve sources for toolbox citations | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/10327> |
| PR | #10352 | .NET: docs: remove duplicated words in comments | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/10352> |
| PR | #10349 | .NET: Update Microsoft.Extensions.AI to 11.0.0 | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10349> |
| PR | #10348 | Python: [BREAKING] Allowlist caller fields in Foundry Responses hosting | open | dargilco | <https://github.com/microsoft/agent-framework/pull/10348> |
| PR | #10328 | .NET: [BREAKING] Serve one agent per Foundry hosting container | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10328> |
| PR | #10344 | .NET: fix(dotnet): bound declarative HTTP response reads | open | baywet | <https://github.com/microsoft/agent-framework/pull/10344> |
| PR | #10343 | .NET: [BREAKING] Add A2A agent card URL validation and consistent assistant role for remote replies | open | westey-m | <https://github.com/microsoft/agent-framework/pull/10343> |
| PR | #10338 | Python: Update the Supermemory community catalog entry | open | ishaanxgupta | <https://github.com/microsoft/agent-framework/pull/10338> |
| PR | #10317 | Python: Complete 1.26.0 release notes | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/10317> |
| PR | #10333 | .NET: chore: promote shipped .NET APIs for main | open | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/10333> |
| PR | #10299 | Python: isolate file memory description sidecars per file | open | AAliKKhan | <https://github.com/microsoft/agent-framework/pull/10299> |
| PR | #10324 | .NET: Preserve queued background responses before execution | open | atty57 | <https://github.com/microsoft/agent-framework/pull/10324> |
| PR | #10322 | Python: Return plain ints for bson Int64 values from Azure DocumentDB | open | nniiovoo | <https://github.com/microsoft/agent-framework/pull/10322> |
| PR | #10309 | Python: Allow injected Azure Search clients alongside connection arguments | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10309> |
| PR | #10308 | chore(deps): bump ag-ui-protocol from 0.1.22 to 1.0.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10308> |
| PR | #10305 | chore(deps): bump redis from 7.2.0 to 8.1.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10305> |
| PR | #10315 | Python: Fix redundant type cast in Agent._handle_tool_calls | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/10315> |
| PR | #10314 | Clarify Azure credential troubleshooting guidance | open | dhruvatr | <https://github.com/microsoft/agent-framework/pull/10314> |
| PR | #10307 | Python: chore(deps): bump ty from 0.0.95 to 0.0.97 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10307> |
| PR | #10306 | Python: chore(deps-dev): bump azure-ai-agentserver-core from 2.3.0 to 2.3.1b1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10306> |
| PR | #10302 | Python: chore(deps): bump tailwindcss in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10302> |
| PR | #10303 | Python: chore(deps): bump the python-type-checkers group across 2 directories with 1 update | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10303> |
| PR | #10300 | Python: chore(deps): bump @tailwindcss/vite in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10300> |
| PR | #10301 | Python: chore(deps): bump @xyflow/react in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10301> |
| PR | #10304 | Python: chore(deps): bump huggingface-hub from 1.33.0 to 2.4.0 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10304> |
| PR | #9661 | Python: [BREAKING] Allowlist caller fields in Foundry Responses hosting | closed | dargilco | <https://github.com/microsoft/agent-framework/pull/9661> |
| PR | #10102 | .NET: chore: promote shipped .NET APIs for main | closed | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/10102> |
| PR | #10006 | Python: Fix Hyperlight imports in Python samples | closed | Momo-Not-Emo | <https://github.com/microsoft/agent-framework/pull/10006> |
| PR | #9240 | Python: fix(core): stop losing multiline consolidated memories on reload | closed | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9240> |
| PR | #9908 | Python: fix(azure-cosmos): reject empty session_id instead of generating an orphan GUID | closed | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9908> |
| PR | #9919 | Python: fix file memory description sidecar collisions | closed | Lushiyao5 | <https://github.com/microsoft/agent-framework/pull/9919> |
| PR | #10245 | Python: Scope local tool checks to the response side of the conversation split | closed | 14H034160212 | <https://github.com/microsoft/agent-framework/pull/10245> |
| Issue | #10365 | Python: [Bug]: Is it intended that the Chat Completions client sends one multimodal user message as several messages? | open | sohailshk | <https://github.com/microsoft/agent-framework/issues/10365> |
| Issue | #10376 | Python: [Bug]: DevUI shows raw asterisks for bold or italic text that comes before a link or bold on the same line | open | burrows99 | <https://github.com/microsoft/agent-framework/issues/10376> |
| Issue | #10373 | Python: [Bug]: a reconstructed empty local_shell_call is lost across message serialization, so stateless replay fails | open | DZH166 | <https://github.com/microsoft/agent-framework/issues/10373> |
| Issue | #10293 | Python: [Issue]: MCP workflow resume test failed in Python 3.12 Windows CI | open | shx815 | <https://github.com/microsoft/agent-framework/issues/10293> |
| Issue | #10366 | Python: [Bug]: WorkflowMCPTool input schema has $ref pointers that don't resolve for wrapped inputs like list[Model] | open | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10366> |
| Issue | #10363 | Python: [Feature]: Explicit concrete text output modes in hosting-a2a | open | atty57 | <https://github.com/microsoft/agent-framework/issues/10363> |
| Issue | #10360 | Python: [Feature]: Python: Add a Voyage AI embedding client package | open | fzowl | <https://github.com/microsoft/agent-framework/issues/10360> |
| Issue | #10351 | Python: [Bug]: hosting-a2a rejects plain text when the advertised modes use MIME types such as text/plain or text/* | open | miinimal | <https://github.com/microsoft/agent-framework/issues/10351> |
| Issue | #10350 | Python: [Bug]: hosting-telegram merges all topics of a chat into one session and cannot reply inside a topic | open | miinimal | <https://github.com/microsoft/agent-framework/issues/10350> |
| Issue | #10346 | Python: [Feature]: Unify Python hosted agent and workflow input handling | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10346> |
| Issue | #10336 | Python: [Bug]: Foundry checkpoint selection fails on mixed naive and aware timestamps | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/10336> |
| Issue | #10335 | Python: [Issue]: Check Python dependency availability through the release pipeline package proxy | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10335> |
| Issue | #10334 | Python: [Team][Investigation] Explore eager execution of allowed calls before approval pauses | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/10334> |
| Issue | #10332 | Python: [Feature]: Model failover across chat clients that never re-runs tools (parity with .NET FailoverChatClient) | open | karthik-0306 | <https://github.com/microsoft/agent-framework/issues/10332> |
| Issue | #10330 | Python: [Bug]: WorkflowAgent drops merge_mode from streamed updates | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/10330> |
| Issue | #10325 | Python: [Bug]: Foundry Toolbox web search citations are missing from hosted agent responses | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/issues/10325> |
| Issue | #10296 | .NET: [Feature]: Update Microsoft.Extensions.AI and Microsoft.Extensions.AI.OpenAI to 11.0.0 to inherit upstream fixes | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/10296> |
| Issue | #10323 | .NET: [Bug]: Background workflow failure can return HTTP 500 before response is created | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/10323> |
| Issue | #10321 | Python: [Bug]: Azure DocumentDB: get() fails for int keys outside the 32-bit range (PyMongo returns them as Int64) | open | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10321> |
| Issue | #10320 | Python: [Bug]: WorkflowViz.to_digraph() merges nested sub-workflows that share an inner executor id | open | 1AbdullahButt | <https://github.com/microsoft/agent-framework/issues/10320> |
| Issue | #10319 | Python: [Bug]: OpenAIChatClient drops the error from a failed hosted mcp_call (no result in non-streaming, empty result in streaming) | open | 1AbdullahButt | <https://github.com/microsoft/agent-framework/issues/10319> |
| Issue | #10297 | Python: [Feature]: Identify the MCP server on execute_tool spans | open | kshitijchawla | <https://github.com/microsoft/agent-framework/issues/10297> |
| Issue | #10287 | Python: [Bug]: A registered Pydantic state type with a validation alias cannot be restored from a session snapshot | open | DZH166 | <https://github.com/microsoft/agent-framework/issues/10287> |
| Issue | #10292 | Python: [Bug]: SerializationMixin drops slot-backed fields in dict/JSON round trips | open | ktz03 | <https://github.com/microsoft/agent-framework/issues/10292> |
| Issue | #10288 | Python: [Bug]: AgentExecutor `full_conversation` drops the user turn and the approval-request turn after a tool-approval resume | open | AkshayShah03 | <https://github.com/microsoft/agent-framework/issues/10288> |
| Issue | #10290 | Python: [Bug]: MCP sampling sends data URIs where MCP requires base64, and crashes on spec-compliant blob resources | open | AkshayShah03 | <https://github.com/microsoft/agent-framework/issues/10290> |
| Issue | #10289 | Python: [Bug]: OpenAIChatCompletionClient raises JSONDecodeError on reasoning content produced by OpenAIChatClient (Responses) or AnthropicClient | open | AkshayShah03 | <https://github.com/microsoft/agent-framework/issues/10289> |
| Issue | #10286 | Python: [Bug]: Agent answers using stale history despite fresh_context=True with FileHistoryProvider | open | master1018 | <https://github.com/microsoft/agent-framework/issues/10286> |
| Issue | #9645 | Python: [Feature]: Define FIDES labeling for context-provider messages | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9645> |
| Issue | #9793 | .NET: [Bug]: RequirePerServiceCallChatHistoryPersistence duplicates chat history with background responses and continuation tokens | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/9793> |
| Issue | #9974 | Python: [Bug]: RedisHistoryProvider.get_messages aborts on a single malformed entry | closed | lisry-1 | <https://github.com/microsoft/agent-framework/issues/9974> |
| Issue | #10171 | .NET: [Feature]: Add a DebateBuilder orchestration pattern (debate → vote → adjudicate) | closed | lss680455-create | <https://github.com/microsoft/agent-framework/issues/10171> |
| Issue | #10172 | .NET: Python: [Bug]: A failed model call right after a tool runs leaves the session unusable ("No tool output found for function call") | closed | mcekikj | <https://github.com/microsoft/agent-framework/issues/10172> |
| Issue | #10274 | Python: [Bug]: dataclass, Enum and set tool results are sent to the model as Python repr | closed | astroknot-sheep | <https://github.com/microsoft/agent-framework/issues/10274> |
| Issue | #10195 | Python: [Bug]: MCP tool reload keeps the old description and input schema | closed | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/issues/10195> |
| Issue | #9997 | Python: [Bug]: An unreadable memory state file fails every later turn | closed | he-yufeng | <https://github.com/microsoft/agent-framework/issues/9997> |
| Issue | #9205 | Python: [Bug]: Distinct non-English memory topics silently share a file | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9205> |
| Issue | #9197 | Python: [Bug]: Memory topic contributor session IDs change on reload | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9197> |
| Issue | #9228 | Python: [Bug]: Consolidated memory continuation lines disappear on reload | closed | ktz03 | <https://github.com/microsoft/agent-framework/issues/9228> |
| Issue | #10283 | Python: [Bug]: Responses hosting rejects input_file with file_data, which OpenAIChatClient sends for local files | closed | nniiovoo | <https://github.com/microsoft/agent-framework/issues/10283> |
| Issue | #10194 | Python: [Bug]: Passing model in client_kwargs raises TypeError when instrumentation is on | closed | Mahdi-Hasan | <https://github.com/microsoft/agent-framework/issues/10194> |
| Issue | #8988 | Python: [Bug]: Purview cache undercounts bytes when growing an entry at capacity | closed | dhairyajangir | <https://github.com/microsoft/agent-framework/issues/8988> |
