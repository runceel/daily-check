# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#183](https://github.com/microsoft/agent-framework-durable-extension/pull/183) — Bump the github-actions group across 1 directory with 4 updates （PR / open / dependabot[bot]）
  未マージ。CI 管理者は setup-dotnet のセキュリティ修正を含む Actions 更新と、新しい実行環境の互換性を確認してください。
- **⚠ セキュリティ** [#180](https://github.com/microsoft/agent-framework-durable-extension/pull/180) — Bump oauthlib from 4.0.0 to 4.0.1 in /python （PR / open / dependabot[bot]）
  未マージ。Python 依存管理者は oauthlib の device-code 検証修正（CVE-2026-49272）と lockfile の適用状況を確認してください。
- **⚠ セキュリティ** [#179](https://github.com/microsoft/agent-framework-durable-extension/pull/179) — Bump oauthlib from 3.3.1 to 4.0.1 in /python/packages/azurefunctions （PR / open / dependabot[bot]）
  未マージ。Azure Functions 向け Python 環境も oauthlib 4.0.1 への更新候補で、3系からの更新互換性を確認してください。
- **GA 昇格** [#181](https://github.com/microsoft/agent-framework-durable-extension/pull/181) — chore: prepare GA release (1.16.0 / 1.0.0) （PR / merged / tamirdresher）
  .NET 1.16.0 / Python 1.0.0 の GA リリース準備がマージ済み。採用時は各レジストリで公開版と依存条件を確認してください。

## このリポジトリの要点

- microsoft/agent-framework-durable-extension#181 が .NET 1.16.0 / Python 1.0.0 の **GA リリース準備**を実施し、インストール例から preview 指定を除去しました。
- Copilot session を worker 停止後に復元する HITL console サンプルと決定的テストが追加され、承認待機を durable に扱う構成を参照できます。
- PyPI 配布 CI を Node 20 対応タスクへ更新。oauthlib のセキュリティ更新と GitHub Actions 更新は未マージで継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#181](https://github.com/microsoft/agent-framework-durable-extension/pull/181) — chore: prepare GA release (1.16.0 / 1.0.0)

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +34 / -22
- マージ日時 (UTC): `2026-11-08 04:25:18`

**変更概要**

Durable Extension の .NET 1.16.0 / Python 1.0.0 を GA として出すための版番号・配布設定を整備しました。
.NET の release flag と tag、Python の Production/Stable classifier、changelog を更新しています。
README のインストール例から `--prerelease` / `--pre` を除去し、安定版を使う導線へ変更しました。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 4 | 4 |
| `dotnet/Directory.Build.props` | 1 | 1 |
| `dotnet/nuget/nuget-package.props` | 4 | 4 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 4 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 4 | 0 |
| `python/CHANGELOG.md` | 5 | 1 |
| `python/packages/azurefunctions/pyproject.toml` | 4 | 4 |
| `python/packages/azurefunctions/uv.lock` | 2 | 2 |
| `python/packages/durabletask/pyproject.toml` | 2 | 2 |
| `python/pyproject.toml` | 2 | 2 |
| `python/uv.lock` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `bc16eac` chore: prepare GA release (1.16.0 / 1.0.0)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`bc16eac` は release metadata と lockfile の変更です。Python Azure Functions 側の durabletask 依存は `>=1.0.0,<2` に更新します。
.NET は初回 non-preview baseline がないため package validation を無効にしています。新しい公開 API のシグネチャ変更ではなく、既存修正を安定版として整理する PR です。

**既存利用者への影響**

安定版へ依存を固定し、実際の NuGet / PyPI 公開状況を確認してください。PR マージだけからパッケージ配布完了までは断定しません。

### [#182](https://github.com/microsoft/agent-framework-durable-extension/pull/182) — ci: upgrade EsrpRelease@9 to EsrpRelease@14 (Node 20) for PyPI release

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-11-09 17:02:16`

**変更概要**

PyPI リリースの ESRP タスクを更新しました。
1ES Windows 2022 イメージから削除された EOL Node 16 への依存をなくし、Node 20 対応へ移行します。
配布パイプラインの修正で、利用者の agent 実行コードには変更しません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/templates/official/jobs/publish-packages.yml` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `a786ee9` ci: upgrade EsrpRelease@9 to EsrpRelease@14 (Node 20) for PyPI release

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`a786ee9` で `publish-packages.yml` の `EsrpRelease@9` を `EsrpRelease@14` に置換。公開 API・パッケージ実行時契約の変更はありません。

**既存利用者への影響**

アプリの移行は不要です。配布 CI を流用するメンテナーは対応タスク版を確認してください。

### [#160](https://github.com/microsoft/agent-framework-durable-extension/pull/160) — Add 11_GitHubCopilotAgent durable console sample and tests

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +1758 / -1
- マージ日時 (UTC): `2026-11-06 20:10:35`

**変更概要**

GitHubCopilotAgent と Durable Task Scheduler を組み合わせる console サンプルを追加しました。
最初の worker が対応計画を提示して承認待ちになり、完全停止した後、別 worker が承認イベントで再開します。
初回 Copilot 呼び出しを replay せず、永続化した Copilot session ID を使って次ターンへ継続する手順を示します。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 2 | 1 |
| `dotnet/agent-framework-durable-extension.slnx` | 2 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/11_GitHubCopilotAgent/11_GitHubCopilotAgent.csproj` | 40 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/11_GitHubCopilotAgent/GitHubCopilotDurableDemo.cs` | 315 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/11_GitHubCopilotAgent/Program.cs` | 193 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/11_GitHubCopilotAgent/README.md` | 108 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/11_GitHubCopilotAgent/tests/11_GitHubCopilotAgent.Tests.csproj` | 30 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/11_GitHubCopilotAgent/tests/GitHubCopilotDurableAgentTests.cs` | 1067 | 0 |
| `dotnet/samples/DurableAgents/ConsoleApps/README.md` | 1 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `27429a9` Add 11_GitHubCopilotAgent durable console sample and tests
- `d3f7758` Address Copilot review feedback on 11_GitHubCopilotAgent sample
- `68d585f` Address follow-up review comments on 11_GitHubCopilotAgent sample

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`27429a9` とレビュー修正で `11_GitHubCopilotAgent` を追加。`DurableAgentHistoryReplayMode.CurrentRequestOnly` と明示的 `DurableAgentHistoryProviderKey` を使用します。
`WaitForExternalEvent<bool>("Approval")` と SLA timer を競合させ、再開時は `ResumeSessionAsync(sessionId)` を使用。loopback JSON-RPC server による4つの xUnit テストで session 継続・同一 session の直列化・HITL・workflow を確認します。
複数 worker は runtime URL または共有 base directory の構成が必要で、公開 API の削除はありません。

**既存利用者への影響**

既存アプリの移行は不要です。サンプル導入時は session の共有先と agent 名の制約を合わせ、履歴の二重 replay を避けてください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #183 | Bump the github-actions group across 1 directory with 4 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/183> |
| PR | #180 | Bump oauthlib from 4.0.0 to 4.0.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/180> |
| PR | #179 | Bump oauthlib from 3.3.1 to 4.0.1 in /python/packages/azurefunctions | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/179> |
| PR | #177 | Bump the github-actions group with 3 updates | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/177> |
