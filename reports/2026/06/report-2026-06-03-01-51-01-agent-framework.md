# 差分レポート — 2026-06-03 版 / microsoft/agent-framework (詳細モード)

> 親レポート: [report-2026-06-03-01-51-01.md](./report-2026-06-03-01-51-01.md)
> 対象期間 (UTC): `2026-06-02 03:40:22 〜 2026-06-03 01:51:01`

## 3.1 microsoft/agent-framework  *(詳細モード)*

### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | 7 |
| オープン中の新規 PR | 14 (うち 2 件は post-00:09 UTC で SRE が生成: #6295 / #6296) |
| クローズ (未マージ) PR | 18 (Dependabot バッチクローズ + 重複 PR が中心) |
| 新規 Issue          | 9 (うち .NET ChatClientFactory バグクラスタ 3 件: #6260 / #6262 / #6264) |
| クローズ Issue      | 156 (うち約 140 件は維持者による一括 triage クローズ。下記の「Issue triage sweep」節を参照) |
| 主要コントリビューター | peibekwe (declarative パッケージ昇格 2 本)、JamesNK / adamint (片方は aspire 担当だがクロス) は不在、Hameedkunkanoor、droideronline、benke520 |

### 期間内の全体像

今回のサイクル (約 22 時間) はマージ件数自体は **7 本と通常並み** ですが、内容は **Declarative Workflows パッケージ群の正式昇格** (.NET stable / Python RC) という大型リリースイベントを跨いでおり、`agent-framework-declarative` を中心に「実験的扱い」から「本番採用可」の段階へ昇格しました。一方で .NET 側の `ChatClientFactory` を経由する **per-request middleware 順序のリグレッション** が同一報告者から 3 件連続起票されており、次回サイクルでの修正動向が要監視です。

### 主要な PR

#### [#6256](https://github.com/microsoft/agent-framework/pull/6256) — Python: Promote agent-framework-declarative package to RC

- 作者: peibekwe / 状態: merged / マージ日時 (UTC): `2026-06-02 19:38:03`
- ラベル: `area: python`, `release`

**変更概要**

`agent-framework-declarative` (Python) のパッケージステータスを RC (Release Candidate) に昇格します。YAML/JSON で記述したワークフローを `WorkflowBuilder.from_dict()` / `from_yaml()` などで読み込み、宣言的に組み立てるための公式パッケージです。今回の昇格により Pre-Release から離れ、SemVer 互換の RC 系列に乗ります。

**変更ファイル (主要)**

```
python/packages/agent-framework-declarative/pyproject.toml     (バージョン文字列を 1.0.0rc1 系へ更新)
python/packages/agent-framework-declarative/CHANGELOG.md       (RC 昇格エントリ追記)
```

**コミットレベルの詳細**

- `pyproject.toml` の `version` を Pre-Release 範囲から RC へ更新。`python-publish.yml` ワークフローが当該タグで PyPI に RC を発行する流れ
- `agent-framework-declarative` は内部で `agent-framework-core` の `WorkflowBuilder` を呼ぶ層 — 公開シンボル自体はこの PR では追加・削除されない (純粋にパッケージ昇格)
- ⚠ 破壊的変更: なし (RC 昇格のみ)。ただし RC に乗ったことで「APIの破壊的変更は次のメジャー RC まで原則行わない」運用規約に切り替わる点が利用者にとっての実質変化

**関連 Issue / Discussion**

- [#6254](https://github.com/microsoft/agent-framework/pull/6254) — .NET 側の同等パッケージを stable に昇格 (本 PR と対)

**既存利用者への影響**

`agent-framework-declarative` を Pre-Release 指定でインストールしていた利用者は、`pip install agent-framework-declarative --pre` を `--pre` 抜きで再評価できるタイミングになります。ロックファイルを使う環境では `1.0.0rcN` 系列に追従する設定 (`pip-tools`/`uv lock`) を更新してください。

---

#### [#6254](https://github.com/microsoft/agent-framework/pull/6254) — .NET: Promote Workflows.Declarative packages to stable versions

- 作者: peibekwe / 状態: merged / マージ日時 (UTC): `2026-06-02 15:26:38`
- ラベル: `area: .NET`, `release`

**変更概要**

`Microsoft.Agents.AI.Workflows.Declarative` および関連パッケージ群を **stable バージョン** に昇格。これにより YAML/JSON で記述したワークフローを `WorkflowBuilder` 経由で .NET アプリに取り込む構成が「Preview を外れて本番採用可」のステータスに到達しました。

**変更ファイル (主要)**

```
eng/Versions.props                                         (Workflows.Declarative 系の Suffix を空文字へ)
dotnet/src/Workflows/Workflows.Declarative/*.csproj         (PackageValidationBaselineVersion 更新)
dotnet/src/Workflows/Workflows.Declarative.YAML/*.csproj
```

**コミットレベルの詳細**

- `Workflows.Declarative` / `Workflows.Declarative.YAML` / 関連 abstraction の VersionSuffix を空 (=stable) に
- `PackageValidationBaselineVersion` を直近の preview に揃えて、後方互換性の自動検証が CI で走る状態を維持
- ⚠ 破壊的変更: なし。stable 化に伴う API 削除なし

**関連 Issue / Discussion**

- 内部ロードマップ: Foundry Hosted Agents Public Preview ([Build 2026 Azure 更新参照](./report-2026-06-03-01-51-01-azure.md)) との対応関係。Hosted Agents 上で YAML declarative workflow を持ち込むシナリオが正式サポート対象に
- [#6256](https://github.com/microsoft/agent-framework/pull/6256) — Python 側 RC 昇格 (対)

**既存利用者への影響**

NuGet で `Microsoft.Agents.AI.Workflows.Declarative` を `*-preview*` で参照していた利用者は、stable バージョンへの参照更新が可能です。AOT / trimming プロファイルは preview と同じ。

---

#### [#5526](https://github.com/microsoft/agent-framework/pull/5526) — Python: Fix FoundryAgent stripping model from PromptAgent requests

- 作者: benke520 / 状態: merged / マージ日時 (UTC): `2026-06-02 18:35:45`
- ラベル: `area: python`, `bug`, `foundry`

**変更概要**

`FoundryAgent` 経由で `PromptAgent` を呼び出すと、リクエストペイロードから `model` フィールドが除去されてしまい、Foundry 側で「default model」フォールバックが発生していた問題を修正。前回までウォッチ対象だった [#5525](https://github.com/microsoft/agent-framework/issues/5525) を解決します。

**変更ファイル (主要)**

```
python/packages/agent-framework/_foundry/_foundry_agent.py
python/tests/.../test_foundry_agent_prompt.py
```

**コミットレベルの詳細**

- 修正の核心は、`FoundryAgent._build_request()` 内で `PromptAgent` 固有のメタデータを strip するブロックの **適用順序を後方に移動** したこと。これにより `model` フィールドが先に確定し、後段の strip 処理で誤って除去されなくなる
- ⚠ 破壊的変更: なし。動作上のリグレッション修正のみ

```python
# Before (stripping happened before model was assigned, so model got lost)
payload = {**request_dict}
payload = _strip_prompt_agent_only_fields(payload)
payload["model"] = self._resolve_model(...)
# After
payload = {**request_dict}
payload["model"] = self._resolve_model(...)
payload = _strip_prompt_agent_only_fields(payload)
```

**関連 Issue / Discussion**

- [#5525](https://github.com/microsoft/agent-framework/issues/5525) — 本 PR でクローズ

**既存利用者への影響**

`FoundryAgent` + `PromptAgent` の組合せで明示的にモデルを指定していたコードは、本修正後は **指定通りのモデル** が使用されます (それまでは Foundry のデフォルトモデルにフォールバックしていた可能性)。本番運用中の課金プロファイルに影響しうるため、デプロイ後はモデル使用量メトリクスを確認することを推奨します。

---

#### [#5913](https://github.com/microsoft/agent-framework/pull/5913) — Python: Fix OTLP HTTP base-endpoint losing /v1/{signal} auto-append

- 作者: droideronline / 状態: merged / マージ日時 (UTC): `2026-06-02 10:08:21`
- ラベル: `area: python`, `bug`, `observability`

**変更概要**

OpenTelemetry の OTLP HTTP exporter で `OTEL_EXPORTER_OTLP_ENDPOINT` (signal 非指定の base endpoint) を設定したとき、本来 OTLP 仕様で必須の `/v1/traces` / `/v1/metrics` / `/v1/logs` のパス自動付与が抜けていた問題を修正。

**変更ファイル (主要)**

```
python/packages/agent-framework/observability/_otlp_http.py
python/tests/.../test_otlp_http_endpoint.py
```

**コミットレベルの詳細**

- `_resolve_signal_endpoint(endpoint, signal)` 内で「signal 固有の env var (`OTEL_EXPORTER_OTLP_TRACES_ENDPOINT` 等) は無加工」「base env var の場合は `/v1/{signal}` を付与」というロジックを修正
- テストケースで 3 signal × (base / signal-specific / 末尾スラッシュ有無) の組合せを網羅

```python
# Before — base endpoint passed as-is, ended up posting to /collect (signal lost)
return endpoint
# After — base endpoint gets canonical /v1/{signal} suffix
if base_endpoint_used:
    return f"{endpoint.rstrip('/')}/v1/{signal}"
return endpoint
```

**関連 Issue / Discussion**

- (内部 issue。前回 Foundry Trace Replay と関連 — Azure 側で対応する [Public Preview: Trace Replay and trace visualizations for Foundry agents](./report-2026-06-03-01-51-01-azure.md))

**既存利用者への影響**

`OTEL_EXPORTER_OTLP_ENDPOINT=https://otlp.example.com` のように base のみ指定していた利用者は、修正後に **`/v1/traces` 等のサブパスが自動付与** され始めます。手元の OTLP コレクタを `/` 直下で受けていた場合は受け先のルーティング設定の見直しが必要。

---

#### [#6070](https://github.com/microsoft/agent-framework/pull/6070) — Python: Persist hosted MCP call/results as canonical mcp_call output

- 作者: Hameedkunkanoor / 状態: merged / マージ日時 (UTC): `2026-06-02 07:35:47`
- ラベル: `area: python`, `mcp`, `hosted-agents`

**変更概要**

Foundry Hosted Agent 上で動かす MCP (Model Context Protocol) クライアントが、ツール呼び出しの履歴を従来の自由形式ではなく **`mcp_call` という標準化されたアウトプット種別** で永続化するように変更。AF 上の MCP 利用者は履歴に対するスキーマが安定します。

**変更ファイル (主要)**

```
python/packages/agent-framework/_responses/_outputs.py    (mcp_call output 種別の正式化)
python/packages/agent-framework-foundry/_hosted_mcp.py    (永続化ロジック)
python/packages/agent-framework-foundry/pyproject.toml    (azure-ai-agentserver-responses 依存を 1.0.0b7,<2 に固定)
python/tests/.../test_hosted_mcp_outputs.py
```

**コミットレベルの詳細**

- 新規シンボル: `McpCallOutput` 型 (responses output として永続化される dataclass)
- ⚠ **依存パッケージのバージョン上限**: `azure-ai-agentserver-responses>=1.0.0b7,<2`。これより古い `1.0.0b6` 以下を要求していた環境では `pip install` 段階で衝突する可能性あり
- 既存の自由形式 `tool_call`/`tool_result` 出力との互換: 過去のセッション履歴は読み取り側で fallback デコードされる (後方互換あり)

**関連 Issue / Discussion**

- (内部のシナリオ統一タスク)
- Build 2026 で発表された [Generally Available: MCP Toolkit for Azure Cosmos DB](./report-2026-06-03-01-51-01-azure.md) や [Generally Available: Azure Functions now supports hosting MCP Apps](./report-2026-06-03-01-51-01-azure.md) とエコシステム的に揃う

**既存利用者への影響**

Hosted MCP の履歴を直接読んでいる外部コード (eval パイプライン等) は、出力種別が `mcp_call` に統一されることを前提に switch-case を追加してください。Azure Foundry 依存を持つ環境はバージョン制約 `<2` に注意。

---

#### [#6175](https://github.com/microsoft/agent-framework/pull/6175) — .NET: Add Hosted-ToolboxMcpSkills sample

- 作者: semenshi / 状態: merged / マージ日時 (UTC): `2026-06-02 08:56:09`
- ラベル: `area: .NET`, `samples`, `mcp`

**変更概要**

Foundry Hosted Agents + Toolbox + MCP スキル群を組み合わせる .NET 公式サンプルを追加。これまで個別ドキュメントに散らばっていた `Microsoft.Agents.AI.Hosted` + `ToolboxOptions` + MCP サーバ接続のセットアップが、1 つの runnable サンプルとして整理されました。

**変更ファイル (主要)**

```
dotnet/samples/Hosted/Hosted-ToolboxMcpSkills/Program.cs
dotnet/samples/Hosted/Hosted-ToolboxMcpSkills/Hosted-ToolboxMcpSkills.csproj
dotnet/samples/Hosted/Hosted-ToolboxMcpSkills/README.md
```

**コミットレベルの詳細**

- `Program.cs` は `HostedAgentBuilder` に対し `WithToolbox(...)` → `AddMcpSkill(serverUri)` の流れを示す DSL 形式
- README に「Foundry プロジェクト作成 → toolbox 配備 → MCP サーバ URI 登録」までの手順
- ⚠ 破壊的変更: なし (純粋なサンプル追加)

**関連 Issue / Discussion**

- 別 PR [#6169](https://github.com/microsoft/agent-framework/pull/6169) (`McpSkillsSource` library 提案、まだ open) — 本サンプルは現状の API でも組めることを示すための先行サンプル

**既存利用者への影響**

利用者影響なし (新規サンプル)。Foundry Hosted Agents の MCP 連携を検討中の .NET ユーザは、本サンプルが最短経路ガイドになります。

---

### その他の PR

| 種別 | 番号 | タイトル | 状態 | リンク |
| ---- | ---- | -------- | ---- | ------ |
| PR | #5982 | ci: harden Python test coverage workflow | merged | <https://github.com/microsoft/agent-framework/pull/5982> |
| PR | #6257 | Python: fix: handle string response in `_get_metadata_from_chat_response` (#6234) | open | <https://github.com/microsoft/agent-framework/pull/6257> |
| PR | #6251 | .NET: Add `MapAGUI` overload that resolves the agent per request via a factory | open | <https://github.com/microsoft/agent-framework/pull/6251> |
| PR | #6249 | Python: Fix toolbox consent flow in hosted agent | open | <https://github.com/microsoft/agent-framework/pull/6249> |
| PR | #6248 | Python: feat(claude): bump claude-agent-sdk to 0.2.87 | open | <https://github.com/microsoft/agent-framework/pull/6248> |
| PR | #6247 | .NET: Fix `OutputConverter.FunctionResultContent` creates `OutputItemFunction…` duplicates | open | <https://github.com/microsoft/agent-framework/pull/6247> |
| PR | #6242 | Python: fix(mem0): isolate entity retrieval and correct app_id payload | open | <https://github.com/microsoft/agent-framework/pull/6242> |
| PR | #6239 | .NET: Bump ModelContextProtocol from 1.1.0 to 1.2.0 (#3956) | open | <https://github.com/microsoft/agent-framework/pull/6239> |
| PR | #6233 | Python: progressive tool exposure via `FunctionInvocationContext` | open | <https://github.com/microsoft/agent-framework/pull/6233> |
| PR | #6232 | .NET: test: add `AgentResponse` coverage for protected ctor / `[JsonIgnore]` fields | open | <https://github.com/microsoft/agent-framework/pull/6232> |
| PR | #6230 | .NET: fix Magentic participant message routing | open | <https://github.com/microsoft/agent-framework/pull/6230> |
| PR | #6295 | docs: checkpoint security model (SRE 生成) | open | <https://github.com/microsoft/agent-framework/pull/6295> |
| PR | #6296 | MCP: allowed_tools empty list handling (SRE 生成) | open | <https://github.com/microsoft/agent-framework/pull/6296> |
| PR | Dependabot バッチ (#6275 / #6278 / #6279 / #6280 ほか) | npm / Python deps update | open | (合計 14 件、本表では集約) |
| PR | Dependabot バッチ (#6274 〜 #6287 一部) | Stale 化により maintainer がクローズ | closed | (合計 18 件、本表では集約) |

### 主要な Issue

#### [#6260](https://github.com/microsoft/agent-framework/issues/6260) — .NET: [Bug]: Order inversion in FunctionCallMiddleware due to ChatClientFactory interaction

- 起票者: helloxubo / 状態: open / 更新日時 (UTC): `2026-06-02 (期間内)`
- ラベル: `area: .NET`, `bug`, `middleware`

**背景・課題**

`ChatClientFactory` を経由してリクエストごとに `ChatClient` を再構築するとき、`FunctionCallMiddleware` の登録順序が **逆順に評価される** 現象が報告されています。これにより、上位の middleware が先に動く想定で書かれたフィルタリング/監査ロジックが意図通りに走らなくなります。

**議論のポイント / メンテナの方針**

報告者 (helloxubo) は同時刻に #6262 / #6264 を立ており、メンテナは「3 件とも `ChatClientFactory` がリクエストごとに middleware パイプラインを **新規構築する** ときの順序保持に共通の根本原因がある」と見立て、まとめて修正候補を検討中。

**関連 PR**

- まだなし (修正 PR 提案待ち)

---

#### [#6262](https://github.com/microsoft/agent-framework/issues/6262) — .NET: [Bug]: Per-request ChatClient middleware in ChatClientFactory only logs once per run despite multiple LLM exchanges

- 起票者: helloxubo / 状態: open / 更新日時 (UTC): `2026-06-02 (期間内)`

**背景・課題**

`ChatClientFactory` 経由で per-request に登録した ChatClient middleware (例: ロギング) が、複数 LLM 往復のあるエージェント実行において **初回 1 回しか呼ばれない**。本来は LLM 呼び出しのたびに走る前提だが、内部で middleware パイプラインがキャッシュ・再利用されている疑い。

**議論のポイント / メンテナの方針**

#6260 と同じく `ChatClientFactory` の per-request 構築フローの問題と見られる。

---

#### [#6264](https://github.com/microsoft/agent-framework/issues/6264) — .NET: [Bug]: Approval middleware surfaces non-approval functions (GetDateTime) as approval requests

- 起票者: helloxubo / 状態: open / 更新日時 (UTC): `2026-06-02 (期間内)`

**背景・課題**

Approval middleware が、本来「approval が必要な関数」だけをラップする想定だが、無関係の `GetDateTime` のような関数まで承認要求 (`ToolApprovalRequestsContent`) として返してくる。UX として「ユーザに意味のない承認ダイアログ」が出てしまう。

**議論のポイント / メンテナの方針**

これも `ChatClientFactory` 経由でセットアップしたシナリオで起きており、メンテナは 3 件 (#6260 / #6262 / #6264) を **同一の根本原因クラスタ** として扱う方針。

---

#### [#6266](https://github.com/microsoft/agent-framework/issues/6266) — Python: [Bug]: `MessagesSnapshotEvent` reassigns the streamed text message ID to the tool-call message on mixed turns

- 起票者: tschokokuki / 状態: open

**背景・課題**

ストリーミングの混在ターン (assistant text + tool_call) で `MessagesSnapshotEvent` が発火するとき、テキスト側のメッセージ ID が tool-call 側メッセージに再割当てされ、UI 側で「同じ ID のメッセージが 2 種類存在する」状態になる。

**関連 PR**

- まだなし

---

#### [#6268](https://github.com/microsoft/agent-framework/issues/6268) — .NET: [Bug]: ChatClientAgent.RunStreamingAsync ends with no assistant text on multi-tool turns

- 起票者: Cobra86 / 状態: open

**背景・課題**

`reasoning model` + stateless Responses API の組合せで、`RunStreamingAsync` を使うと **最後の assistant テキスト** がストリームに出ないまま終端 (terminate) してしまう。マルチツール呼び出しを含むターンで再現。

---

#### [#6293](https://github.com/microsoft/agent-framework/issues/6293) — Python: update workflow shared session sample to use client_kwargs instead of options

- 起票者: benke520 / 状態: open
- 既存サンプルの API 引数を最新の `client_kwargs` パターンに揃える小規模追従タスク。

#### [#6291](https://github.com/microsoft/agent-framework/issues/6291) — Include model name in response header in inference span

- 起票者: TaoChenOSU / 状態: open
- 観測性 (OpenTelemetry inference span) に **モデル名ヘッダ**を入れて、Foundry / Azure 側のテレメトリ可視化と接続性を上げる提案。

#### [#6271](https://github.com/microsoft/agent-framework/issues/6271) — Python: [Bug]: Update hosted-agent samples to depend on agent-framework-foundry package

- 起票者: alliscode / 状態: open
- 旧サンプルが `agent-framework-foundry` ではなく親パッケージ依存だった件の整理。

#### [#6265](https://github.com/microsoft/agent-framework/issues/6265) — Python: Channels

- 起票者: eavanvalkenburg / 状態: open
- RFC 段階。今後の Python 側マルチエージェント通信プリミティブとして「Channels」抽象を検討。

### Issue triage sweep

本期間のクローズ Issue 数 (約 156 件) は通常の数倍に膨らんでいますが、これは 6/2 のメンテナ triage sweep によるもので、技術的な「修正完了」を意味する個別のクローズではなく、**ステータス整理目的の一括クローズ** がほとんどです。代表的な高価値クローズ:

- [#5921](https://github.com/microsoft/agent-framework/issues/5921) — .NET AdditionalProperties on Sonnet 4.7
- [#5089](https://github.com/microsoft/agent-framework/issues/5089) — Python streaming span parenting
- [#5525](https://github.com/microsoft/agent-framework/issues/5525) — FoundryAgent PromptAgent regression (本期間の PR [#5526](https://github.com/microsoft/agent-framework/pull/5526) で実質クローズ)
