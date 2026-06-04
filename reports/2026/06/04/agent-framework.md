# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6    |
| オープン中の新規 PR     | 18   |
| クローズ (未マージ) PR  | 6    |
| 新規 Issue              | 30   |
| クローズ Issue          | —    |
| 主要コントリビューター  | westey-m, peibekwe, giles17, tlecomte, JarreNejatyab, alliscode |

---

## 主要な PR

### [#6316](https://github.com/microsoft/agent-framework/pull/6316) — .NET: Fix Observability/WorkflowAsAnAgent sample

- 作者: peibekwe / 状態: MERGED / マージ日時 (UTC): `2026-06-04 00:10:03`
- ラベル: .NET

**変更概要**

`dotnet/samples/03-workflows/Observability/WorkflowAsAnAgent` サンプルが複数のバグで動作不能だった問題を修正。`WorkflowHelper.cs` を中心に、最初のプロンプトでエージェントに到達できない・2 回目のプロンプトで例外が発生する・出力が空になるという 3 つのバグを修正しながらサンプルのサンプル構造は維持。

**変更ファイル (主要)**

```
dotnet/samples/03-workflows/Observability/WorkflowAsAnAgent/WorkflowHelper.cs
```

**コミットレベルの詳細**

- Fixes #6315 に対応した修正
- エージェントルーティングロジックの初回解決に関するバグを修正
- 2 回目以降のプロンプトで発生していた例外を解消
- 出力が空になる問題を解消（出力フラッシュの欠如が原因）

**関連 Issue / Discussion**

- [#6315](https://github.com/microsoft/agent-framework/issues/6315) .NET: [Bug]: Observability/WorkflowAsAnAgent sample is broken

**既存利用者への影響**

サンプルコードのバグ修正のため、本番コードへの影響なし。サンプルを参照して自分のワークフローを構築していた場合は `WorkflowHelper.cs` の変更を確認することを推奨。

---

### [#6314](https://github.com/microsoft/agent-framework/pull/6314) — .NET: Updating dotnet package versions for 1.9 release

- 作者: alliscode / 状態: MERGED / マージ日時 (UTC): `2026-06-03 20:18:54`
- ラベル: .NET

**変更概要**

v1.9 リリースに向けた .NET パッケージバージョンの更新。依存パッケージのバージョンを最新に揃えるルーティンアップデート。

**変更ファイル (主要)**

```
dotnet/**/*.csproj (各プロジェクトファイルのパッケージバージョン)
```

**コミットレベルの詳細**

- 1.9 リリース向けの依存パッケージバージョン一括更新
- 破壊的変更はなし

**既存利用者への影響**

NuGet パッケージを利用している場合は v1.9 リリース後に `dotnet restore` を実行して依存関係を更新する。

---

### [#6311](https://github.com/microsoft/agent-framework/pull/6311) — .NET: Bug fixes for AGUI hosting and workflows

- 作者: westey-m / 状態: MERGED / マージ日時 (UTC): `2026-06-03 18:01:39`
- ラベル: .NET, workflows

**変更概要**

AGUI（Agent Graphical UI）ホスティングおよびワークフローに関する複数のバグ修正。18 ファイルに 472 行の追加・9 行の削除という規模のある修正。ワークフロー動作の安定性に直接影響するパッチ。

**変更ファイル (主要)**

```
dotnet/src/hosting/agui/ (複数ファイル)
dotnet/src/workflows/ (複数ファイル)
```

**コミットレベルの詳細**

- AGUI ホスティング層のバグ（詳細未公開）を修正
- ワークフローエンジンの不整合を修正
- 破壊的変更の有無: なし（PR タイトルに [BREAKING] なし）

**既存利用者への影響**

AGUI ホスティングやワークフロー機能を使っているアプリで不安定な挙動が見られた場合、このパッチで解決する可能性がある。アップデートを推奨。

---

## オープン中の注目 PR

### [#6292](https://github.com/microsoft/agent-framework/pull/6292) — Python: [BREAKING] Upgrade github-copilot-sdk to v1.0.0 (stable)

- 作者: giles17 / 状態: OPEN
- ラベル: python, documentation

**変更概要**

`agent-framework-github-copilot` チャネルが `github-copilot-sdk` を v1.0.0b2 から **GA 版 v1.0.0** にアップグレードする PR。GitHub Copilot SDK の GA と連動した重要な変更。

**コミットレベルの詳細**

- ⚠ **破壊的変更**: `SubprocessConfig` が削除され、`RuntimeConnection.for_stdio(path=...)` + `CopilotClient` kwargs に移行
- ⚠ **破壊的変更**: Import パスが `copilot.generated.session_events` → `copilot.session_events` に変更
- ⚠ **破壊的変更**: 設定キー `copilot_home` → `base_directory`（環境変数 `GITHUB_COPILOT_COPILOT_HOME` → `GITHUB_COPILOT_BASE_DIRECTORY`）
- デフォルト拒否ハンドラーが `PermissionDecisionUserNotAvailable()` を返すよう変更
- サンプル: パーミッションハンドラーが `asyncio.to_thread` による非同期対話プロンプトに変更

```python
# Before (v1.0.0b2)
config = SubprocessConfig(path=...)
client = CopilotClient(config)

# After (v1.0.0 GA)
conn = RuntimeConnection.for_stdio(path=...)
client = CopilotClient(connection=conn, log_level=..., base_directory=...)
```

**既存利用者への影響**

Python で `agent-framework-github-copilot` チャネルを使っている場合、**マイグレーション必須**。環境変数の名前変更に注意。

---

### [#6319](https://github.com/microsoft/agent-framework/pull/6319) — Python: MCP long-running task support in Python

- 作者: peibekwe / 状態: OPEN
- ラベル: python, documentation

**変更概要**

.NET 側で先行実装された MCP 長時間実行タスク（SEP-2663 / #5994）の Python 移植。MCP サーバーが `execution.taskSupport == "required"` のツールをアドバタイズする場合、`MCPTool` が `tools/call` → `tasks/get`（ポーリング）→ `tasks/result` のライフサイクルを透過的に処理する。

**コミットレベルの詳細**

- 7 ファイルの変更（1255 追加 / 36 削除）
- 純粋な追加的変更。以前は `tools/call` で完了できなかったツールが動作するようになる
- Fixes [#6258](https://github.com/microsoft/agent-framework/issues/6258)

**既存利用者への影響**

既存の動作に変更なし。MCP サーバーを利用するアプリで長時間実行ツールが突然動作するようになる場合は、このタスクサポート機能が自動的に有効化された結果。

---

### [#6309](https://github.com/microsoft/agent-framework/pull/6309) — .NET: feat(Agent Skill Scripts): bubble up error details

- 作者: tlecomte / 状態: OPEN

**変更概要**

`AgentSkillsProvider` の `run_skill_script` ツールが例外を飲み込んでいた問題を修正。`FunctionInvokingChatClient.IncludeDetailedErrors = true` を設定すればエラー詳細が LLM に返り、エージェントの自己修正が可能になる。

**コミットレベルの詳細**

- `IncludeDetailedErrors` のデフォルトは `false` なので、既存の動作に変更なし
- Fixes [#6304](https://github.com/microsoft/agent-framework/issues/6304)
- 破壊的変更なし

**既存利用者への影響**

スキルスクリプト実行時のデバッグが格段に改善する。`FunctionInvokingChatClient.IncludeDetailedErrors = true` を opt-in することでエラー詳細をエージェントに渡せるようになる。

---

### [#6303](https://github.com/microsoft/agent-framework/pull/6303) — .NET: feat: add context provider message merge hook

- 作者: JarreNejatyab / 状態: OPEN

**変更概要**

`AIContextProvider` に protected virtual `MergeMessages(...)` フックを追加。コンテキストプロバイダーの実装者がメッセージのマージ位置をカスタマイズできるようになる（デフォルトは既存の末尾追加動作を維持）。

**コミットレベルの詳細**

```csharp
// 新規追加: AIContextProvider.MergeMessages()
protected virtual IEnumerable<ChatMessage> MergeMessages(
    IEnumerable<ChatMessage> providedMessages,
    IEnumerable<ChatMessage> inputMessages)
{
    // デフォルト: inputMessages の後ろに providedMessages を追加
}
```

- `MessageAIContextProvider` がフックを使用するよう更新
- ソース帰属の後にマージフックを呼び出す
- 破壊的変更なし（virtual メソッドの追加のみ）

**既存利用者への影響**

カスタムコンテキストプロバイダー実装者は `MergeMessages` をオーバーライドしてコンテキストメッセージの挿入位置を制御できるようになる。

---

## 主要な Issue

### [#6301](https://github.com/microsoft/agent-framework/issues/6301) — Agent Skills Release

- 起票者: (メンテナ) / 状態: OPEN / 更新日時: 最近
- ラベル: なし

**背景・課題**

Agent Skills のリリーストラッキング Issue。MCP スキルの各タイプ対応（`skill-md` / `archive` / `mcp-resource-template`）や非同期オンデマンドスキルコンテンツ等の機能が並行して開発中。

**議論のポイント / メンテナの方針**

- #6077 (.NET archive サポート)、#6076 (.NET skill-md)、#6117 (.NET mcp-resource-template)、#6087 (Python skill-md)、#6118 (Python mcp-resource-template)、#6090 (Python async on-demand) が追跡対象
- 段階的にマージされており次のマイルストーンに向けて進行中

---

### [#6300](https://github.com/microsoft/agent-framework/issues/6300) — Python: gen_ai.tool.definitions emitted as single JSON blob, breaks Aspire Tools view

- 起票者: (コミュニティ) / 状態: OPEN

**背景・課題**

Python で `gen_ai.tool.definitions` テレメトリが複数の個別スパン属性ではなく単一の JSON blob として出力されるため、Aspire の Tools ビューで表示が壊れる。PR [#6302](https://github.com/microsoft/agent-framework/pull/6302)（emit tool definitions individually）で修正が進行中。

---

## その他の変更

| 種別  | 番号   | タイトル                                                    | 状態   | リンク |
| ----- | ------ | ----------------------------------------------------------- | ------ | ------ |
| PR    | #6318  | Python: build(deps): bump aiohttp from 3.13.4 to 3.14.0    | OPEN   | <https://github.com/microsoft/agent-framework/pull/6318> |
| PR    | #6317  | Exclude dependabot prs as part of the limit                 | OPEN   | <https://github.com/microsoft/agent-framework/pull/6317> |
| PR    | #6312  | Python: Harness console for python                          | OPEN   | <https://github.com/microsoft/agent-framework/pull/6312> |
| PR    | #6310  | Python: Fix per-service-call history persistence            | OPEN   | <https://github.com/microsoft/agent-framework/pull/6310> |
| PR    | #6307  | Python: cross-channel hosting improvements                  | OPEN   | <https://github.com/microsoft/agent-framework/pull/6307> |
| PR    | #6306  | Python: add agent-framework-hosting-a2a channel             | OPEN   | <https://github.com/microsoft/agent-framework/pull/6306> |
| PR    | #6305  | Python: add agent-framework-hosting-mcp channel             | OPEN   | <https://github.com/microsoft/agent-framework/pull/6305> |
| PR    | #6302  | Python: emit tool definitions individually for telemetry    | OPEN   | <https://github.com/microsoft/agent-framework/pull/6302> |
| PR    | #6299  | Python: Fix compaction message-id collisions                | OPEN   | <https://github.com/microsoft/agent-framework/pull/6299> |
| PR    | #6297  | Python: Fix Magentic manager duplicating conversation history | OPEN | <https://github.com/microsoft/agent-framework/pull/6297> |
| PR    | #6296  | Python: Fix MCP allowed_tools empty list handling           | OPEN   | <https://github.com/microsoft/agent-framework/pull/6296> |
| PR    | #6295  | Python: docs: clarify checkpoint storage security model     | OPEN   | <https://github.com/microsoft/agent-framework/pull/6295> |
| PR    | #6294  | Python: fix invalid options kwarg in workflow sample        | OPEN   | <https://github.com/microsoft/agent-framework/pull/6294> |
| Issue | #6315  | .NET: [Bug]: Observability/WorkflowAsAnAgent sample broken  | OPEN   | <https://github.com/microsoft/agent-framework/issues/6315> |
| Issue | #6313  | Python: [Bug]: function_invocation_configuration broken     | OPEN   | <https://github.com/microsoft/agent-framework/issues/6313> |
| Issue | #6308  | .NET: How to deploy dotnet Hosted agents to Foundry         | OPEN   | <https://github.com/microsoft/agent-framework/issues/6308> |
| Issue | #6264  | .NET: [Bug]: Approval middleware surfaces non-approval functions | OPEN | <https://github.com/microsoft/agent-framework/issues/6264> |
| Issue | #6240  | Python: Autonomous handoff re-invokes orchestrations        | OPEN   | <https://github.com/microsoft/agent-framework/issues/6240> |