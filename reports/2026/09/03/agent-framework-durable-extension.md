# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-02 05:04:01 〜 2026-09-03 03:25:40 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 1 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

[PR #86](https://github.com/microsoft/agent-framework-durable-extension/pull/86) により、.NET Azure Functions の全 13 サンプルへ安全な `local.settings.json.template` が追加されました。ローカル実行の初期設定が明確になり、秘密を含む実ファイルを publish しない共通 MSBuild 設定と回帰検証も整備されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#86](https://github.com/microsoft/agent-framework-durable-extension/pull/86) — .NET: Add local settings templates to Azure Functions samples

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +282 / -7
- マージ日時 (UTC): `2026-09-02 12:43:57`

**変更概要**

.NET Azure Functions サンプルが `local.settings.json` を前提としながら、コピー元となるテンプレートを提供していなかった問題を解消します。  
Durable Agents／Durable Workflows の全 13 サンプルへ、各サンプルに必要なキーだけを含む `local.settings.json.template` を追加しました。  
共通の ignore と MSBuild metadata により、ローカル設定は build 出力へコピーされる一方、publish 出力からは除外されます。README と欠落ファイルへの古い project reference も修正されています。

<details><summary>変更ファイル (20 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/.gitignore` | 2 | 0 |
| `dotnet/samples/Directory.Build.props` | 7 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/01_SingleAgent/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/02_AgentOrchestration_Chaining/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/03_AgentOrchestration_Concurrency/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/04_AgentOrchestration_Conditionals/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/05_AgentOrchestration_HITL/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/06_LongRunningTools/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/07_AgentAsMcpTool/README.md` | 1 | 1 |
| `dotnet/samples/DurableAgents/AzureFunctions/07_AgentAsMcpTool/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/08_ReliableStreaming/local.settings.json.template` | 12 | 0 |
| `dotnet/samples/DurableAgents/AzureFunctions/README.md` | 5 | 1 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/01_SequentialWorkflow/local.settings.json.template` | 8 | 0 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/02_ConcurrentWorkflow/local.settings.json.template` | 10 | 0 |
| `dotnet/samples/DurableWorkflows/AzureFunctions/03_WorkflowHITL/03_WorkflowHITL.csproj` | 0 | 4 |
| _... 他 5 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `5066cbe` Add .NET Azure Functions settings templates (#85)
- `9b8fc77` Potential fix for pull request finding

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。`dotnet/samples/Directory.Build.props` にテンプレートとローカル設定の出力・公開規則を集約し、13 個の JSON テンプレートと、それらのキー・placeholder・MSBuild metadata を検査する `SampleSettingsTemplateValidation` を追加しています。欠落した設定ファイルを参照していた Workflow HITL の project 設定は削除されました。

**既存利用者への影響**

既存利用者の移行は不要です。サンプルを新規実行する場合は、対応するテンプレートを `local.settings.json` へコピーし、placeholder を実際の値に置き換えてください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #85 | .NET: Azure Functions samples reference `local.settings.json` but don't ship a template like Python does | closed | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/85> |
