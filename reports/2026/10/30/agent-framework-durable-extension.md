# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher, ahmedmuhsin |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

今回の更新では、.NET と Python の Durable Agent 向けにスキーマ v2 への二段階移行を整備し、旧エンティティを段階的に同じアドレス上で更新できるようになりました（[#155](https://github.com/microsoft/agent-framework-durable-extension/pull/155)、[#165](https://github.com/microsoft/agent-framework-durable-extension/pull/165)）。
新規セッションの既定エンティティ名・保存形式が変わり、旧 worker 停止後の切替や Functions の work-item filtering 設定が重要です。#169 はこの変更を含む .NET preview / Python beta のリリース準備です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#169](https://github.com/microsoft/agent-framework-durable-extension/pull/169) — chore: prepare release (261029)

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +4363 / -4356
- マージ日時 (UTC): `2026-10-29 15:55:07`

**変更概要**

リリース候補として .NET `1.16.0-preview.261029.1` と Python `1.0.0b261029` の各パッケージ版、依存ロックファイル、CHANGELOG を更新しました。
リリースノートには、永続エンティティのスキーマ v2 化と旧 v1 状態の二段階移行、保持期間設定の公開が含まれます。
Azure Functions 側では HTTP 応答の `status` を数値から文字列状態へ変更し、数値コードを `status_code` に分離するなど、クライアント互換性に関わる更新も告知されています。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget/nuget-package.props` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 2 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 2 | 0 |
| `python/CHANGELOG.md` | 3 | 0 |
| `python/packages/azurefunctions/pyproject.toml` | 3 | 3 |
| `python/packages/azurefunctions/uv.lock` | 1680 | 1680 |
| `python/packages/durabletask/pyproject.toml` | 1 | 1 |
| `python/pyproject.toml` | 1 | 1 |
| `python/uv.lock` | 2669 | 2669 |

</details>

<details><summary>コミット (1 件)</summary>

- `3dfc60d` chore: prepare release (261029)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** 新規セッションは `dafx-v2-{agent}` 名と schema 2.0.0 を使い、旧 `dafx-{agent}` の処理は `ProcessLegacyEntities`（`DURABLE_AGENTS_PROCESS_LEGACY_ENTITIES`）による第2段階の登録に移ります。`DurableAgentsOptions` には `HistoryRetentionMode`、状態サイズ上限、high/low watermark、結果保持期間が加わりました。
Azure Functions の HTTP JSON では `status` が文字列状態になり、数値 HTTP コードは `status_code` に移ります。既存の `status == 200/202` 判定は更新が必要です。

**既存利用者への影響**

利用者は新しい NuGet / PyPI preview を適用する前に、永続状態と HTTP 応答を読むクライアントを確認してください。旧 entity の移行は旧 worker を停止した後に第2段階を有効化して進める必要があり、段階的更新手順をリリースノートで確認してください。

### [#165](https://github.com/microsoft/agent-framework-durable-extension/pull/165) — Python: add two-phase in-place entity schema migration

- 作者: ahmedmuhsin / 状態: MERGED
- ラベル: —
- 変更行数: +2338 / -160
- マージ日時 (UTC): `2026-10-29 04:54:40`

**変更概要**

Python Azure Functions と Durable Task の Entity 状態を、旧 worker と新 worker の段階的な入れ替え中にも安全に schema v2 へ移行する仕組みを追加しました。
第1段階では `dafx-v2-` 名の新規 entity を worker filtering で分離し、旧 worker を停止した後、第2段階で `process_legacy_entities` を有効にして従来名の entity を同じアドレス上で移行します。
状態スキーマ・移行証拠を厳密に検証し、不明な形式や不正な証拠では元データを保持したまま拒否します。ワークフロー ID と replay 互換の dispatch は維持されます。

<details><summary>変更ファイル (33 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-merge-tests.yml` | 59 | 0 |
| `python/packages/azurefunctions/README.md` | 11 | 3 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_app.py` | 87 | 54 |
| `python/packages/azurefunctions/agent_framework_azurefunctions/_workflow.py` | 4 | 1 |
| `python/packages/azurefunctions/tests/test_entity_operation_privacy_af.py` | 5 | 2 |
| `python/packages/azurefunctions/tests/test_entity_schema_upgrade_af.py` | 443 | 0 |
| `python/packages/azurefunctions/tests/test_runtime_host_boundaries_af.py` | 6 | 4 |
| `python/packages/durabletask/ENTITY_MIGRATION.md` | 166 | 0 |
| `python/packages/durabletask/README.md` | 10 | 3 |
| `python/packages/durabletask/agent_framework_durabletask/__init__.py` | 12 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_client.py` | 7 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_configuration.py` | 8 | 6 |
| `python/packages/durabletask/agent_framework_durabletask/_durable_agent_state.py` | 2 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_durable_names.py` | 29 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_entities.py` | 74 | 8 |
| _... 他 18 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `b4f2ab1` Add Python two-phase in-place entity schema migration
- `fe4fc49` Use minimum-supported scheduler worker test construction
- `6c1b455` Fix migration capacity and address compatibility review findings
- `677847d` Preserve empty migration destinations with validated schema metadata
- `71f5c0f` Harden migration evidence admission and preserve historical naming

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DurableAgentSession` とクライアントに `entity_version` を追加し、既定の v1 と明示的な v2 アドレスを区別します。Hosting には `deployment_mode`、`process_legacy_entities`、世代別登録・ルーティングが導入されました。
**⚠ 破壊的変更:** 新規 entity の命名と schema が v2 に変わります。歴史的状態の移行は旧 worker をすべて停止してから行い、Functions host / provider 側の filtering も別途設定・確認する必要があります。

**既存利用者への影響**

Python の Durable Agent / Azure Functions 利用者は、既存運用のまま即時に旧 entity 登録を有効化せず、ガイドに沿って新旧 worker の段階展開を行ってください。
不正状態は自動変換されず拒否されるため、対象スキーマと移行証拠を事前確認してください。

### [#155](https://github.com/microsoft/agent-framework-durable-extension/pull/155) — .NET: Add two-phase entity version-filter migration for schema v2

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +4096 / -425
- マージ日時 (UTC): `2026-10-29 04:26:40`

**変更概要**

Durable Task .NET の entity schema v2 導入に合わせ、version 付き entity 名と Durable Task Scheduler の work-item filtering を利用した二段階のローリング更新・状態移行を実装しました。
新規セッションは v2 entity を使用し、既存 v1 entity は `ProcessLegacyEntities` を有効にした第2段階で同じ entity 名・key のまま移行します。
また、履歴保持を `KeepAll` / `Auto` から選べる公開設定と状態サイズ・保持 watermark・結果保持期間を追加し、サンプルも更新しています。

<details><summary>変更ファイル (68 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 8 | 8 |
| `dotnet/eng/verify-samples/DurableAgentSamples.cs` | 1 | 3 |
| `dotnet/samples/DurableAgents/AzureFunctions/01_SingleAgent/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/02_AgentOrchestration_Chaining/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/03_AgentOrchestration_Concurrency/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/04_AgentOrchestration_Conditionals/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/05_AgentOrchestration_HITL/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/06_LongRunningTools/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/07_AgentAsMcpTool/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/08_ReliableStreaming/host.json` | 2 | 1 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/10_AutoHistoryRetention.csproj` | 6 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/HistoryRetentionDemo.cs` | 10 | 1 |
| `dotnet/samples/DurableAgents/ConsoleApps/10_AutoHistoryRetention/Program.cs` | 76 | 5 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/01_SequentialWorkflow/host.json` | 2 | 1 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/02_ConcurrentWorkflow/host.json` | 2 | 1 |
| _... 他 53 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `6b1e2fc` Add 2-phase Durable Agent schema-v2 migration and public automatic re…
- `0617116` Fix Azure Functions worker compatibility by restoring durable extensions
- `4dbe18c` Address review feedback on Functions host filtering, pending entity c…
- `abf00f7` Resolve entity version from AgentResponse.AgentId when durable envelo…
- `e2fd440` Address review feedback on @-prefixed session keys, mixed local/remot…
- `09ed855` Exclude routing-only bindings from ExecutorRegistry and update CHANGE…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentSessionId` が `dafx-v{N}-{agent}` と旧 `dafx-{agent}` を解析し、`DurableAgentsOptions.ProcessLegacyEntities` が旧世代を登録する切替点となります。`DurableAgentHistoryRetentionMode` と関連する容量・watermark・TTL 設定を公開しました。
**⚠ 破壊的変更:** 新規セッションの entity 名と保存 schema の既定値が v2 に変わり、`v{digits}-` で始まる agent 名は予約されます。Azure Functions の段階的更新では対応バージョンの worker extensions と `host.json` の `"workItemFilteringEnabled": true` が必要です。

**既存利用者への影響**

既存利用者はデプロイ前に scheduler / Functions host の filtering 対応バージョンと構成を確認し、旧 worker 停止後に `ProcessLegacyEntities` を有効にしてください。
自動履歴保持は `Auto` の明示的な選択で有効になります。既定の `KeepAll` は維持されます。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #171 | Fix official release signing on Node20 1ES images | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/171> |
| PR | #170 | Fix release signing runtime and Python type checks | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/170> |
| PR | #168 | Bump certifi from 2026.6.17 to 2026.10.18 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/168> |
| PR | #167 | Bump mcp from 1.28.1 to 1.30.0 in /python/packages/azurefunctions | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/167> |
| PR | #153 | Bump certifi from 2026.6.17 to 2026.10.19 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/153> |
