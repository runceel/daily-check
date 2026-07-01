# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-30 01:54:59 〜 2026-07-01 00:25:00 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 14 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 14 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | giles17, alliscode, SergeyMenshykh, TaoChenOSU, rogerbarreto, westey-m |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6847](https://github.com/microsoft/agent-framework/pull/6847) — Python: [BREAKING] Extract caching from SkillsProvider into a CachingSkillsSource decorator （PR / open / giles17）
  SkillsProvider のキャッシュ実装を独自に呼び出しているコードは、マージ後に CachingSkillsSource デコレーターへの置き換えが必要になるため、Python 版 SkillsProvider 利用者はマージ状況を確認すること。
- **⚠ 破壊的変更** [#6811](https://github.com/microsoft/agent-framework/pull/6811) — [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade （PR / merged / TaoChenOSU）
  Foundry Hosted Agent（Responses）を利用しているチームは、V2 プロトコルへの追従とツールボックス連携の再確認が必要。詳細は下記「主要な PR」参照。
- **⚠ 破壊的変更** [#6807](https://github.com/microsoft/agent-framework/pull/6807) — .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API （PR / open / westey-m）
  .NET 版 FileAccess/FileMemory ストア API を利用しているコードは、#6801 の Python 側変更と同様の API 整合が入る見込みのため、マージ後に破壊的変更の内容を確認すること。
- **⚠ 破壊的変更** [#6801](https://github.com/microsoft/agent-framework/pull/6801) — Python: [BREAKING] Improve FileAccess/FileMemory harness providers (surgical edits, read-only tier, consistent naming) （PR / merged / westey-m）
  Python 版 FileAccess/FileMemory harness provider を直接利用しているコードは、命名変更・read-only tier 追加に伴う API 更新が必要。詳細は下記「主要な PR」参照。
- **⚠ 破壊的変更** [#6798](https://github.com/microsoft/agent-framework/issues/6798) — .NET: [BREAKING] Bump Azure.AI.Projects to the next beta （Issue / open / rogerbarreto）
  .NET で `Azure.AI.Projects` を直接参照しているプロジェクトは、次のベータへの追従時に依存パッケージのバージョン固定・API 差分を事前確認しておくこと。
- **⚠ 破壊的変更** [#6492](https://github.com/microsoft/agent-framework/pull/6492) — Python: [BREAKING] Simplify Python hosting core （PR / merged / eavanvalkenburg）
  Python hosting コアの内部 API を直接利用している拡張パッケージ作者は、簡素化に伴うシグネチャ変更の有無を確認すること。
- **⚠ 破壊的変更** [#6413](https://github.com/microsoft/agent-framework/pull/6413) — Python: [BREAKING] Add sampling guardrails to MCP tools （PR / merged / eavanvalkenburg）
  MCP ツール経由でサンプリングを行っている実装は、新しいガードレールによりリクエストが拒否されるケースが増える可能性があるため、MCP 連携部分の動作確認を推奨。

## このリポジトリの要点

Python 側では 1.10.0 リリースに向けたバージョン更新（#6840, #6846）と、Foundry Hosted Agent の V2 プロトコル移行（#6811）・FileAccess/FileMemory harness provider の API 整理（#6801）という 2 件の破壊的変更が中心でした。.NET 側では Foundry Hosting のユーザーごとのセッション分離と Responses v2 プロトコルの fast-fail 対応（#6832）が入っています。破壊的変更ラベル付きの PR/Issue が多く、Foundry Hosting・FileAccess 系 API を利用しているチームは重点的な確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6811](https://github.com/microsoft/agent-framework/pull/6811) — [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade

- 作者: TaoChenOSU / 状態: MERGED
- ラベル: `python` `breaking change` `foundry` `hosting`
- 変更行数: +5311 / -4716
- マージ日時 (UTC): `2026-06-30 17:16:13`

**変更概要**

**変更概要**

Foundry Hosted Agent（Responses ホスティング）のプロトコルを V2 にアップグレードする PR です。レスポンスハンドリング（`_responses.py`）を刷新し、新たにツールボックス連携用のモジュール `_toolbox.py` を追加、チェックポイントと承認情報の保存をユーザー ID 単位でスコープするよう変更しています。サンプルの `foundry-hosted-agents` 系も新プロトコルに合わせて更新されました。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/__init__.py` | 0 | 1 |
| `python/packages/core/agent_framework/security.py` | 10 | 6 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/__init__.py` | 2 | 1 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_responses.py` | 144 | 42 |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_toolbox.py` | 257 | 0 |
| `python/packages/foundry_hosting/pyproject.toml` | 5 | 4 |
| `python/packages/foundry_hosting/tests/test_responses.py` | 109 | 3 |
| `python/packages/foundry_hosting/tests/test_toolbox.py` | 190 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/01_basic/agent.manifest.yaml` | 2 | 2 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/01_basic/agent.yaml` | 4 | 4 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/04_foundry_toolbox/.azdignore` | 6 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/04_foundry_toolbox/main.py` | 29 | 96 |
| `python/uv.lock` | 4553 | 4557 |

</details>

<details><summary>コミット (10 件)</summary>

- `85a2adf` Upgrade to FHA protocol v2 + toolbox integration
- `e5f0e87` Scope checkpoints and approval storage by user id
- `3276929` Add toolbox skills integration
- `4beb541` Fix formatting
- `7c1057e` Add httpx lower and upper bound
- `099a03f` Update foundry-hosting package version
- `60f1d5a` Remove custom http client
- `64efaa6` Revert "Remove custom http client"
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_responses.py` の Responses ハンドリングロジックが FHA プロトコル v2 に対応するよう書き換えられ、新規に `_toolbox.py`（ツールボックススキル統合）が追加されています。チェックポイント/承認情報のストレージがユーザー ID ごとにスコープされるようになり、内部データ構造・保存キーのフォーマットが変わっています。**⚠ 破壊的変更**: 旧 FHA プロトコル（v1）向けに実装されたクライアント／永続化ロジックはそのままでは動作しません。

**既存利用者への影響**

Foundry Hosted Agent（Responses）を利用しているユーザーは、SDK / サンプルを最新版に更新し、v2 プロトコルへの移行が必要です。チェックポイント・承認データをユーザー ID 単位で再スコープするため、保存済みデータの互換性も確認してください。

### [#6801](https://github.com/microsoft/agent-framework/pull/6801) — Python: [BREAKING] Improve FileAccess/FileMemory harness providers (surgical edits, read-only tier, consistent naming)

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1064 / -600
- マージ日時 (UTC): `2026-06-30 07:51:43`

**変更概要**

**変更概要**

Python 版 FileAccess/FileMemory の harness provider を改善する PR です。「surgical edits（局所的な差分編集）」機能、read-only tier（読み取り専用階層）の追加、命名の一貫性向上を目的としています。`_file_access.py` / `_file_memory.py` を中心に大規模な書き換えが入り、テストも大幅に更新されています。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 6 | 5 |
| `python/packages/core/agent_framework/__init__.py` | 2 | 1 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 8 | 1 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 404 | 244 |
| `python/packages/core/agent_framework/_harness/_file_memory.py` | 191 | 71 |
| `python/packages/core/agent_framework/security.py` | 10 | 6 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 302 | 187 |
| `python/packages/core/tests/core/test_harness_file_memory.py` | 121 | 65 |
| `python/samples/02-agents/context_providers/file_access_data_processing/README.md` | 4 | 4 |
| `python/samples/02-agents/context_providers/file_access_data_processing/data_processing.py` | 3 | 3 |
| `python/samples/02-agents/harness/console/formatters.py` | 11 | 11 |
| `python/samples/02-agents/harness/harness_data_processing.py` | 2 | 2 |

</details>

<details><summary>コミット (5 件)</summary>

- `4b21404` Python: Add additional file access and memory provider functionality …
- `7f87f04` Merge branch 'main' into python-file-access-improvements
- `6daabf3` Address PR comments and build failures.
- `3377281` Address PR comments
- `f6b6087` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_file_access.py` / `_file_memory.py` の provider API が命名の一貫性を目的に整理され、局所的な差分編集（surgical edits）と read-only tier という新しい抽象が追加されています。**⚠ 破壊的変更**: 既存のメソッド名・引数の一部が変更されているため、直接これらの provider を呼び出しているコードは修正が必要です。

**既存利用者への影響**

FileAccess/FileMemory harness provider を直接利用しているコードは、新しい命名規則・read-only tier への対応が必要です。ドキュメント（`AGENTS.md`）とサンプルも合わせて更新されているため、移行時に参照してください。 — Python: remove hosting package entries from 1.10.0 CHANGELOG

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +0 / -4
- マージ日時 (UTC): `2026-06-30 20:48:47`

**変更概要**

**変更概要**

1.10.0 の CHANGELOG から、hosting パッケージに関する記載を削除する軽微なドキュメント修正 PR です。リリースノートの整合性を保つための変更で、機能的な変更はありません。

</details>

<details><summary>コミット (1 件)</summary>

- `2174608` Python: remove hosting package entries from 1.10.0 CHANGELOG

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

CHANGELOG.md からの記述削除のみで、API シグネチャの変更はありません。

**既存利用者への影響**

ドキュメントのみの変更のため、マイグレーション対応は不要です。

### [#6840](https://github.com/microsoft/agent-framework/pull/6840) — Python: selective version bump for 1.10.0 release

- 作者: giles17 / 状態: MERGED
- ラベル: —
- 変更行数: +4598 / -4584
- マージ日時 (UTC): `2026-06-30 20:17:39`

**変更概要**

**変更概要**

1.10.0 リリースに向け、各サブパッケージ（ag-ui, anthropic, azure-ai-search, azurefunctions, bedrock, devui, durabletask, gemini, github_copilot, hyperlight, ollama, purview, tools 等）の `pyproject.toml` バージョンを選択的に更新するリリース作業用 PR です。`uv.lock` も合わせて再生成されています。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/CHANGELOG.md` | 13 | 5 |
| `python/packages/ag-ui/pyproject.toml` | 1 | 1 |
| `python/packages/anthropic/pyproject.toml` | 1 | 1 |
| `python/packages/azure-ai-search/pyproject.toml` | 2 | 2 |
| `python/packages/azurefunctions/pyproject.toml` | 2 | 2 |
| `python/packages/bedrock/pyproject.toml` | 1 | 1 |
| `python/packages/devui/pyproject.toml` | 2 | 2 |
| `python/packages/durabletask/pyproject.toml` | 1 | 1 |
| `python/packages/gemini/pyproject.toml` | 1 | 1 |
| `python/packages/github_copilot/pyproject.toml` | 2 | 2 |
| `python/packages/hyperlight/pyproject.toml` | 1 | 1 |
| `python/packages/ollama/pyproject.toml` | 2 | 2 |
| `python/packages/purview/pyproject.toml` | 1 | 1 |
| `python/packages/tools/pyproject.toml` | 1 | 1 |
| `python/uv.lock` | 4567 | 4561 |

</details>

<details><summary>コミット (1 件)</summary>

- `23884e7` Python: selective version bump for 1.10.0 release (date 260630)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

各サブパッケージのバージョン番号更新と依存ロックファイルの再生成のみで、API シグネチャの変更はありません。

**既存利用者への影響**

バージョンアップのみのため、pip / uv でパッケージを更新すれば通常通り利用できます。個別の移行作業は不要です。 — .NET: Foundry Hosting per-user session isolation and Responses v2 protocol fast-fail

- 作者: rogerbarreto / 状態: MERGED
- ラベル: —
- 変更行数: +861 / -91
- マージ日時 (UTC): `2026-06-30 19:43:46`

**変更概要**

**変更概要**

.NET 版 Foundry Hosting において、ユーザーごとのセッションストレージ分離を追加し、Responses v2 プロトコルに未対応のホスト環境では明確な 501 エラーで fast-fail するようにした PR です。新たに `AgentSessionStore` / `FileSystemAgentSessionStore` / `InMemoryAgentSessionStore` を導入し、セッション・ツール承認情報をユーザー ID 単位で分離管理します。

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0031-hosted-per-user-session-storage-isolation.md` | 102 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/.env.example` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/scripts/smoke.ps1` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/.env.example` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/README.md` | 7 | 7 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-MemoryAgent/scripts/smoke.ps1` | 2 | 2 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted_Shared_Contributor_Setup/DevTemporaryLocalUserIdProvider.cs` | 11 | 11 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted_Shared_Contributor_Setup/HostedContributorSetupExtensions.cs` | 5 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 38 | 18 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentSessionStore.cs` | 17 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FileSystemAgentSessionStore.cs` | 76 | 14 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedProtocolCompatibility.cs` | 75 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/InMemoryAgentSessionStore.cs` | 25 | 5 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ToolApprovalIdMap.cs` | 7 | 0 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests.TestContainer/Program.cs` | 1 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `a565db2` Add per-agent and per-user session storage isolation for Foundry Hosting
- `168822f` Fail fast with a clear 501 when hosted container is served responses …
- `994d213` Address PR review: whitespace protocol gate and InMemory store agent …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規に `AgentSessionStore` / `FileSystemAgentSessionStore` / `InMemoryAgentSessionStore` / `HostedProtocolCompatibility` / `ToolApprovalIdMap` といったクラスが追加され、セッション・ツール承認データをユーザー ID でスコープする設計に変わっています。Responses v2 未対応環境では 501 を明示的に返すようになりました。破壊的変更ラベルは付いていませんが、共有ストレージを前提にしていた既存の Foundry Hosting 実装には挙動変化があります。

**既存利用者への影響**

.NET で Foundry Hosting を利用しているチームは、セッション・承認データの保存先がユーザー単位に分離される点を確認し、複数ユーザー間でストレージを共有する実装をしていた場合は移行が必要です。

### [#6816](https://github.com/microsoft/agent-framework/pull/6816) — .NET: Bumping version for dotnet release.

- 作者: alliscode / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-06-30 02:13:31`

**変更概要**

**変更概要**

dotnet 側パッケージのリリース用バージョン番号を更新するだけの機械的な PR です。機能的な変更はありません。

</details>

<details><summary>コミット (1 件)</summary>

- `6d73ecc` Bumping version for dotnet release.

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**コミットレベルの詳細 (API 変化・破壊的変更)**

`nuget-package.props` のバージョン番号更新のみで、API シグネチャの変更はありません。

**既存利用者への影響**

NuGet パッケージを最新版に更新するだけで反映され、追加のマイグレーション作業は不要です。

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6815 | .NET: fix: resolve CA1873 in GitHubCopilotAgent by using LoggerMessage sour… | alliscode | <https://github.com/microsoft/agent-framework/pull/6815> |
| #6812 | Update NuGet package icon to new Microsoft Agent Framework logo | chetantoshniwal | <https://github.com/microsoft/agent-framework/pull/6812> |
| #6810 | Python: Auto-inject local history when non-history context providers are present | giles17 | <https://github.com/microsoft/agent-framework/pull/6810> |
| #6797 | .NET: Add AgentSkillsSourceContext to AgentSkillsSource.GetSkillsAsync | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6797> |
| #6796 | .NET: Harden dotnet-format workflow shell handling | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6796> |
| #6751 | Python: Fix GeminiChatClient dropping image/file content | giles17 | <https://github.com/microsoft/agent-framework/pull/6751> |
| #6750 | Python: Align GitHub Copilot provider function approval to use SDK on_pre_tool_use hook | giles17 | <https://github.com/microsoft/agent-framework/pull/6750> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6847 | Python: [BREAKING] Extract caching from SkillsProvider into a CachingSkillsSource decorator | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6847> |
| PR | #6843 | .NET: Add skill approval options | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6843> |
| PR | #6841 | Python: Update FHA samples after v2 changes | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6841> |
| PR | #6839 | Python: Re-enable Azure OpenAI integration tests | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6839> |
| PR | #6838 | Make skills source classes public with Experimental attribute | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6838> |
| PR | #6837 | Python: Refocus hosting channels ADR on protocol helpers | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6837> |
| PR | #6831 | Python: Add realtime agent ADR | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6831> |
| PR | #6829 | Python: fix(ag-ui): record approval-resolved tool result in MESSAGES_SNAPSHOT | open | antsok | <https://github.com/microsoft/agent-framework/pull/6829> |
| PR | #6827 | .NET: Consolidate skill-source caching and make skill sources disposable | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6827> |
| PR | #6826 | .NET: Refactor Workflows MessageMerger to preserve message order and structure | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/6826> |
| PR | #6822 | Python: Fix: Ollama parallel tool calls collide on same call_id | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/6822> |
| PR | #6819 | Python: serialize durabletask options response format | open | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6819> |
| PR | #6818 | Python: accept A2A data URI media parameters | open | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6818> |
| PR | #6817 | Python: Allow custom argument parsing for skill scripts | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6817> |
| PR | #6806 | Python: selective version bump for 1.10.0 release (re-date to 260629) | closed | giles17 | <https://github.com/microsoft/agent-framework/pull/6806> |
| PR | #6766 | .NET: Add AgentSkillsSourceContext to AgentSkillsSource.GetSkillsAsync | closed | feiyun0112 | <https://github.com/microsoft/agent-framework/pull/6766> |
| Issue | #6845 | Python: Allow disabling approval for AgentSkillsProvider tools | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6845> |
| Issue | #6844 | .NET: Allow disabling approval for AgentSkillsProvider tools | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6844> |
| Issue | #6842 | Python: [Bug]: usage_details not available in ContextProvider / HistoryProvider | open | auroranockert | <https://github.com/microsoft/agent-framework/issues/6842> |
| Issue | #6836 | Python: Remove experimental marker from Skills API | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6836> |
| Issue | #6835 | .NET: Remove Experimental attribute from Skills API in Microsoft.Agents.AI | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6835> |
| Issue | #6834 | Make skill source types in Python SDK public | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6834> |
| Issue | #6833 | Make skill source types in Microsoft.Agents.AI public and sealed | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6833> |
| Issue | #6830 | .NET: Consolidate skill-source caching and make skill sources disposable | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6830> |
| Issue | #6828 | Python: [Bug]: AG-UI confirm_changes approval-gated tool reverts to "in progress" after completing | open | antsok | <https://github.com/microsoft/agent-framework/issues/6828> |
| Issue | #6825 | .NET: [Bug]:  AgentSkillsProvider approval-by-default + ToolApprovalAgent re-invoke causes O(rounds) context-provider overhead and timeouts. | open | Cobra86 | <https://github.com/microsoft/agent-framework/issues/6825> |
| Issue | #6824 | .NET: [Bug]: Microsoft.Agents.AI.LocalCodeAct is missing a NuGet package | open | naruto1227 | <https://github.com/microsoft/agent-framework/issues/6824> |
| Issue | #6823 | .NET: [.NET] Foundry Hosting: /responses usage always reports cached_tokens (and reasoning_tokens) = 0 — ConvertUsage reads the wrong UsageDetails source | open | ar-or | <https://github.com/microsoft/agent-framework/issues/6823> |
| Issue | #6821 | Python: Python durabletask RunRequest options response_format is not JSON serializable | open | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6821> |
| Issue | #6820 | Python: Python A2A rejects data URIs with media type parameters | open | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6820> |
| Issue | #6746 | Python: Align GitHub Copilot provider function approval to use SDK on_pre_tool_use hook | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6746> |
| Issue | #6710 | .NET: Add AgentSkillsSourceContext to AgentSkillsSource.GetSkillsAsync | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6710> |
| Issue | #6688 | Python: [Bug]: GeminiChatClient silently drops image/file (data/uri) content — multimodal input never reaches the model | closed | andreupav | <https://github.com/microsoft/agent-framework/issues/6688> |
| Issue | #5672 | Python: [Bug]:  require_script_approval=True fails with 400 "Expected toolResult blocks" for        code-defined (@script) skills | closed | zhouyibing | <https://github.com/microsoft/agent-framework/issues/5672> |
