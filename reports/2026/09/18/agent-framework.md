# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 53 |
| オープン中の新規 PR     | 27 |
| クローズ (未マージ) PR  | 10 |
| 新規 Issue              | 18 |
| クローズ Issue          | 27 |
| 主要コントリビューター  | eavanvalkenburg, dependabot[bot], baywet, westey-m, ryo-whaletech, manjunathshiva |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#8434](https://github.com/microsoft/agent-framework/pull/8434) — .NET: [BREAKING] Make Foundry delegated user identity sticky on AgentSession （PR / merged / rogerbarreto）
  Foundry の user identity をセッション単位で固定する変更なので、認証境界を前提にしたマルチユーザー実装は確認と検証が必要です。
- **⚠ 破壊的変更** [#8425](https://github.com/microsoft/agent-framework/pull/8425) — .NET: [BREAKING] Scope provider-backed MCP sessions per invocation （PR / merged / jpalvarezl）
  MCP セッションが呼び出しごとに分離されるため、共有 provider 前提の実装やクリーンアップ処理はライフサイクルを再確認する必要があります。
- **⚠ 破壊的変更** [#8423](https://github.com/microsoft/agent-framework/pull/8423) — .NET: [BREAKING] Fix DevUI approval continuation （PR / open / rogerbarreto）
  DevUI の approval 継続フローが変更されるため、承認待ちの UI 実装と再開ロジックをテストして不整合がないか確認してください。
- **⚠ 破壊的変更** [#8417](https://github.com/microsoft/agent-framework/pull/8417) — .NET: [BREAKING] Consolidate in-memory agent session storage （PR / open / manjunathshiva）
  セッション保存戦略が整理されるため、独自の in-memory 管理をしている実装は保存先と寿命を見直す必要があります。
- **⚠ 破壊的変更** [#8375](https://github.com/microsoft/agent-framework/pull/8375) — .NET: [BREAKING] Improve replay support with Approval Binding （PR / merged / westey-m）
  Replay と approval 応答の結びつきが明示化されるので、再開時の承認バインドや履歴整合を検証する必要があります。
- **⚠ 破壊的変更** [#8372](https://github.com/microsoft/agent-framework/pull/8372) — [BREAKING] Python: Add request-scoped Foundry agent factories （PR / open / rogerbarreto）
  リクエスト単位で factory のスコープを絞る変更なので、グローバルに保持していた AgentFactory を利用している実装は見直しが必要です。
- **⚠ 破壊的変更** [#8305](https://github.com/microsoft/agent-framework/pull/8305) — Python: [BREAKING] Require committed finish reason for tool calls （PR / closed / eavanvalkenburg）
  Tool call の finish reason 要件が厳格化されたため、独自クライアントやハンドラーの状態管理がずれていないか確認してください。
- **⚠ 破壊的変更** [#8200](https://github.com/microsoft/agent-framework/pull/8200) — .NET: [BREAKING] fix: use allow list for configuration keys （PR / open / baywet）
  設定キーの利用制限が強化されるので、許可されていないキー名を使うカスタム構成は移行が必要です。
- **⚠ 破壊的変更** [#7673](https://github.com/microsoft/agent-framework/pull/7673) — [BREAKING] Python: Consolidate OTel GenAI Semantic Conventions versions （PR / merged / TaoChenOSU）
  計測メタデータの semantic convention が統一されるため、既存の OTel 期待値やカスタムダッシュボードの整合性を確認してください。
- **⚠ 破壊的変更** [#7533](https://github.com/microsoft/agent-framework/pull/7533) — [BREAKING] Python: Migrate FHA to responses==2.0.0b1 and add Foundry state store （PR / merged / TaoChenOSU）
  Foundry Hosted Agent の protocol / state store が変わるため、既存の hosting 実装では互換性検証が必要です。
- **⚠ 破壊的変更** [#7374](https://github.com/microsoft/agent-framework/pull/7374) — [BREAKING] Python: Allow workflow checkpoint full replayability （PR / merged / TaoChenOSU）
  ワークフロー再生時の checkpoint 振る舞いが変わるので、再開や巻き戻しを前提にした実装は挙動を確認してください。
- **⚠ 破壊的変更** [#7347](https://github.com/microsoft/agent-framework/pull/7347) — [BREAKING] Python: Allow workflow checkpoint full replayability （PR / closed / TaoChenOSU）
  以前の replay 制約と異なる挙動になるため、checkpoint 構成の再利用実装を見直す必要があります。
- **⚠ 破壊的変更** [#7158](https://github.com/microsoft/agent-framework/pull/7158) — [BREAKING] Python: Ensure session isolation for FHA invocation impl （PR / merged / TaoChenOSU）
  セッション隔離が厳格化されるため、複数セッションを共有していた呼び出しロジックは分離前提に直す必要があります。
- **⚠ 破壊的変更** [#6811](https://github.com/microsoft/agent-framework/pull/6811) — [BREAKING] Python: Foundry Hosted Agent V2 protocol upgrade （PR / merged / TaoChenOSU）
  Hosted Agent の protocol が更新されるため、互換レイヤーを持つ利用者はプロトコル更新とテストが必要です。
- **⚠ 破壊的変更** [#6489](https://github.com/microsoft/agent-framework/pull/6489) — Python: [Breaking] Additional bug fix for declarative workflows （PR / merged / peibekwe）
  Declarative workflow の挙動が変わるため、条件分岐やルーティングをカスタムしている実装は再検証が必要です。
- **⚠ 破壊的変更** [#6407](https://github.com/microsoft/agent-framework/pull/6407) — [BREAKING] Python: Add `reset` to workflow （PR / closed / TaoChenOSU）
  Workflow のリセット動作が追加されるため、既存の状態遷移ロジックと衝突しないか確認してください。
- **⚠ 破壊的変更** [#5865](https://github.com/microsoft/agent-framework/pull/5865) — [BREAKING] Python: Enable instrumentation by default （PR / merged / TaoChenOSU）
  監視設定がデフォルト有効化されるため、観測とログの粒度変更に合わせた運用確認が必要です。
- **⚠ 破壊的変更** [#5750](https://github.com/microsoft/agent-framework/pull/5750) — .NET: [Breaking Change] Auto-wire ChatClient with OpenTelemetryChatClient in OpenTelemetryAgent （PR / merged / Copilot）
  テレメトリの自動接続が変わるため、既存の OpenTelemetry 構成とカスタムチャットクライアントの結合方法を見直してください。
- **⚠ 破壊的変更** [#5423](https://github.com/microsoft/agent-framework/pull/5423) — .NET: [Breaking] Migrate A2A agent and hosting to A2A SDK v1 （PR / merged / SergeyMenshykh）
  A2A SDK v1 への移行で互換性が変わるため、A2A 連携アプリは依存・設定・シーケンスを確認する必要があります。
- **⚠ 破壊的変更** [#4903](https://github.com/microsoft/agent-framework/pull/4903) — .NET: [BREAKING] Update type names and source generator to reduce conflicts （PR / merged / lokitoth）
  型名や source generator の競合対策が入るため、カスタム型や生成コード依存の実装は名称衝突を確認してください。
- **⚠ 破壊的変更** [#4730](https://github.com/microsoft/agent-framework/pull/4730) — .NET: [BREAKING] Fix FileSystemJsonCheckpointStore support for sessionIds with path-forbidden or special characters （PR / merged / lokitoth）
  sessionId の文字種制約が強化されるため、特殊文字を含む既存の checkpoint 管理を使っている環境ではデータ移行を検討してください。
- **⚠ セキュリティ** [#8179](https://github.com/microsoft/agent-framework/pull/8179) — .NET: chore: updates source link dependency due to transitive vulnerability （PR / merged / baywet）
  依存ライブラリの脆弱性修正なので、.NET 利用者は更新済みパッケージの取り込みとリスク確認を進めてください。
- **⚠ セキュリティ** [#8141](https://github.com/microsoft/agent-framework/pull/8141) — Python: preserve confidentiality through FIDES security tools （PR / merged / eavanvalkenburg）
  機密情報の保護が強化されたため、FIDES を使う導入ではデータ処理フローと制限範囲を確認してください。
- **⚠ セキュリティ** [#8138](https://github.com/microsoft/agent-framework/pull/8138) — Python: isolate FIDES security state per session （PR / merged / eavanvalkenburg）
  セッションごとの差分隔離が行われるため、セキュリティ状態を共有していた実装は分離方針を見直してください。
- **⚠ セキュリティ** [#7245](https://github.com/microsoft/agent-framework/pull/7245) — Python: Add MCPStreamableHTTPTool security guidance for custom http client （PR / merged / TaoChenOSU）
  カスタム HTTP client の安全性ガイドが改善されたため、MCP 接続を自前実装している開発者は設計レビューを実施してください。
- **⚠ セキュリティ** [#6983](https://github.com/microsoft/agent-framework/pull/6983) — Python: Add multi-tenant hosting hosting security consideration to a2a sample （PR / merged / TaoChenOSU）
  マルチテナント実装時のセキュリティ観点が明確化されたので、サンプルをベースにした本番実装では境界設計を再確認してください。
- **⚠ セキュリティ** [#6510](https://github.com/microsoft/agent-framework/pull/6510) — Python: Clarify identifier security guidance （PR / merged / chetantoshniwal）
  ID 管理の指針が更新されたため、識別子の保存や連携ロジックに課題がないか確認してください。
- **⚠ セキュリティ** [#6295](https://github.com/microsoft/agent-framework/pull/6295) — Python: [Generated by SRE Agent] docs: clarify checkpoint storage security model and deserialization trust boundaries （PR / merged / chetantoshniwal）
  checkpoint の保存と信頼境界の説明が強化されたので、独自の state persistence を使う実装者は安全性レビューが必要です。
- **非推奨/廃止** [#8401](https://github.com/microsoft/agent-framework/pull/8401) — Python: Deprecate MCP sampling callback （PR / merged / eavanvalkenburg）
  MCP sampling callback が非推奨化されるため、既存の callback 実装を使っている利用者は代替設計に移行する計画を立ててください。
- **非推奨/廃止** [#8400](https://github.com/microsoft/agent-framework/issues/8400) — Python: Deprecate MCP sampling in line with the 2026-07-28 specification （Issue / closed / eavanvalkenburg）
  仕様準拠に向けた非推奨化であり、今後の互換性を見据えて callback の置き換え方針を確定させる必要があります。

## このリポジトリの要点

Agent Framework はこの期間、MCP のライフサイクル整理、Foundry user identity / session boundary の厳格化、approval replay の制御強化が中心でした。特に .NET の [#8434](https://github.com/microsoft/agent-framework/pull/8434) と [#8425](https://github.com/microsoft/agent-framework/pull/8425) は破壊的変更が大きく、既存のセッション共有や approval フローを使っている実装は互換性確認が必要です。セキュリティと観測性の改善も進み、トレーサビリティや検査対象の境界整理が強化されています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#8434](https://github.com/microsoft/agent-framework/pull/8434) — .NET: [BREAKING] Make Foundry delegated user identity sticky on AgentSession

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +164 / -148
- マージ日時 (UTC): `2026-09-17 17:07:57`

**変更概要**

この PR は Foundry hosted agent のユーザー識別がセッション中に固定されるようにし、異なる利用者が同じ AgentSession を共有したときに identity が混ざる問題を避けます。関連する .NET 実装と integration tests を更新し、ユーザー分離ポリシーがセッション継続でも維持されることを確認しています。主な対象は Foundry hosted request と user identity policy / scope の境界付けで、既存のマルチユーザー セッション利用者にとって安全性が高まります。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Using-Samples/UserIsolationAgent/Program.cs` | 3 | 7 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Using-Samples/UserIsolationAgent/README.md` | 7 | 3 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/FoundryAgent.cs` | 17 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/FoundryAgentSessionExtensions.cs` | 39 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/FoundryChatOptionsExtensions.cs` | 4 | 67 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/FoundryHostedRequestAgent.cs` | 6 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/UserIdentityPolicy.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/UserIdentityScope.cs` | 2 | 2 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests/HostedSessionAndUserIdentityTests.cs` | 29 | 20 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests/README.md` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.UnitTests/FoundryHostedRequestTests.cs` | 53 | 34 |

</details>

<details><summary>コミット (1 件)</summary>

- `824ab8e` .NET: Make Foundry user identity session sticky

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更では `FoundryAgentSessionExtensions` と `FoundryChatOptionsExtensions` の identity handling が整理され、`UserIdentityPolicy` / `UserIdentityScope` を使ってセッション長の境界を固定しています。新しい public API は大きくなく、むしろ `AgentSession` 上でユーザー識別のセマンティクスを固定するのが主な変化です。⚠ 破壊的変更: 同一セッションを複数ユーザーで共有していた実装では、認証境界が固定されるため意図しない identity 共有がなくなります。

**既存利用者への影響**

通常の 1 ユーザー 1 セッション運用では移行は不要ですが、同じセッションを複数ユーザーで再利用していた実装は、セッションの分離方針を見直してテストを追加するのが安全です。

### [#8425](https://github.com/microsoft/agent-framework/pull/8425) — .NET: [BREAKING] Scope provider-backed MCP sessions per invocation

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `.NET` `workflows` `breaking change`
- 変更行数: +1772 / -161
- マージ日時 (UTC): `2026-09-17 12:00:29`

**変更概要**

この PR は provider-backed MCP session を呼び出しごとにスコープ化し、共有されたセッションやクリーンアップ失敗が再利用時に混ざる問題を避けます。MCP ツールハンドラと declarative workflow のライフサイクルが整理され、再入れ子やシャットダウン時の状態不整合が減る見込みです。大きくは実行トレースと cleanup の保証が強化されており、MCP を長く再利用していた実装にとっては重要な変更です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative.Mcp/DefaultMcpToolHandler.cs` | 207 | 30 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/README.md` | 25 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.Mcp.UnitTests/DefaultMcpToolHandlerLifetimeTests.cs` | 694 | 0 |
| `python/packages/declarative/AGENTS.md` | 15 | 0 |
| `python/packages/declarative/README.md` | 22 | 0 |
| `python/packages/declarative/agent_framework_declarative/_workflows/_mcp_handler.py` | 142 | 51 |
| `python/packages/declarative/tests/test_default_mcp_tool_handler.py` | 667 | 78 |

</details>

<details><summary>コミット (3 件)</summary>

- `a8f0aca` Scope provider-backed MCP sessions to each invocation
- `4369452` Make cleanup cancellation test compatible with Python 3.10
- `24b1029` Handle reentrant MCP shutdown and cleanup failures

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`DefaultMcpToolHandler` と Python 側の `_mcp_handler.py` により、provider-backed MCP セッションが invocation 単位で生成・破棄されるように整理されています。公開 API のシグネチャ自体は大きく変わっていませんが、session lifecycle と cleanup のタイミングが変わるため挙動としては破壊的です。⚠ 破壊的変更: 以前のように長く再利用していた provider instance / session を前提にした実装では、呼び出しごとの分離が働くようになり、共有状態の意図が崩れる場合があります。

**既存利用者への影響**

MCP を長時間保持して再利用していた実装は、呼び出しごとの session スコープに合わせて lifetime 管理を見直す必要があります。単純に作成した provider を再利用しているケースは、設定ごとに clean-up までテストしておくと安全です。

### [#8375](https://github.com/microsoft/agent-framework/pull/8375) — .NET: [BREAKING] Improve replay support with Approval Binding

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +635 / -84
- マージ日時 (UTC): `2026-09-16 10:49:14`

**変更概要**

この PR は human-in-the-loop の approval binding を再生・再実行時に安定させ、同じ会話の replay がいつも同じ承認条件と応答で再現できるようにしています。`ApprovalRequirement` と `ApprovalResponseBindingChatClient` が新たに導入され、approval context を一貫して保持する設計へ整理されています。再生性が重要な AGUI / session replay 利用者にとっては、挿入された approval 状態が正しく復元される改善です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AGUI/README.md` | 1 | 0 |
| `dotnet/samples/02-agents/AGUI/Step04_HumanInLoop/Server/Program.cs` | 14 | 3 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalNotRequiredFunctionBypassingChatClient.cs` | 4 | 46 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalRequirement.cs` | 61 | 0 |
| `dotnet/src/Microsoft.Agents.AI/ChatClient/ApprovalResponseBindingChatClient.cs` | 112 | 27 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 172 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/ChatClient/ApprovalResponseBindingChatClientTests.cs` | 271 | 8 |

</details>

<details><summary>コミット (4 件)</summary>

- `6d3c625` Improve replay support with Approval Binding
- `4b6a176` Address PR comments
- `67cd164` Merge branch 'main' into dotnet-approvalbinding-replays
- `c170db5` Fix failing integration test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ApprovalRequirement` の新規追加と `ApprovalResponseBindingChatClient` の再設計により、approval の許可条件と response binding が明示化されました。`ApprovalNotRequiredFunctionBypassingChatClient` も一部整理されており、approval 判定が chat client の責務として明確です。⚠ 破壊的変更: approval context をバインドしない従来の replay 実装では、再生時に承認が落ちる可能性があるため、approval-dependent workflow の挿入順序を再確認する必要があります。

**既存利用者への影響**

approval を使う user flow では replay / resume のテストを追加し、承認状態が session 情報と一致しているかを確認するのが安全です。既存の approval-free フローは大きく変わらず、そのまま利用可能ですが、再現性を重視する場合は binding 設計に合わせて実装を更新するとよいです。

### [#8401](https://github.com/microsoft/agent-framework/pull/8401) — Python: Deprecate MCP sampling callback

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `python`
- 変更行数: +138 / -28
- マージ日時 (UTC): `2026-09-16 02:53:06`

**変更概要**

この PR は Python の MCP sampling callback を非推奨扱いにし、今後の API 変更に備えて利用率の低い設定を段階的に廃止します。`_mcp.py` と tests が更新され、設定時に warning を出したうえで互換性を維持しています。実装上は「使っている人には明示的に知らせる」ことが中心で、急な breakage ではなく移行期間が確保されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_mcp.py` | 37 | 4 |
| `python/packages/core/tests/core/test_mcp.py` | 101 | 24 |

</details>

<details><summary>コミット (3 件)</summary>

- `76f6dc2` Python: Deprecate MCP sampling callback
- `cf51d41` Python: Warn when configuring MCP sampling
- `5e6e467` Python: Keep sampling tests type-safe

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

MCP の sampling callback 設定が deprecation warning を発するように変わり、使い方そのものの明示が強くなりました。公開 API は残っているため immediate break ではありませんが、将来の削除対象として扱われる点が重要です。⚠ 破壊的変更: まだ callback を使っている実装は、今後のバージョンで削除される前に代替実装へ切り替える必要があります。

**既存利用者への影響**

今すぐコードを変更しなくても動作は維持されますが、warn が出るようになったため利用箇所を棚卸しして代替実装を検討してください。長期的には callback を使わない構成へ移行するのが推奨です。

### [#8460](https://github.com/microsoft/agent-framework/pull/8460) — Python: Fix Cosmos memory retrieval with Toolkit 0.3

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +249 / -30
- マージ日時 (UTC): `2026-09-18 02:54:16`

**変更概要**

この PR は Toolkit 0.3 との互換性が崩れていた Azure Cosmos memory retrieval を修正し、記憶の検索結果が正しく返るようにしたものです。`_context_provider.py` と tests が更新され、依存バージョンやエミュレータ動作も合わせて確認されています。特に Cosmos ベースの長期メモリを使う実装では、検索失敗が運用上の重大事故につながるため影響が大きい修正です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azure-cosmos-memory/README.md` | 6 | 3 |
| `python/packages/azure-cosmos-memory/agent_framework_azure_cosmos_memory/_context_provider.py` | 54 | 20 |
| `python/packages/azure-cosmos-memory/pyproject.toml` | 1 | 1 |
| `python/packages/azure-cosmos-memory/tests/test_context_provider.py` | 181 | 1 |
| `python/packages/azure-cosmos-memory/tests/test_emulator.py` | 3 | 1 |
| `python/uv.lock` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `70c06d6` Python: fix Cosmos memory retrieval compatibility

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_context_provider.py` の retrieval 路径が Toolkit 0.3 と互換する形に修正されており、記憶の取得ロジックが安定化しました。公開 API の改名やシグネチャ変更は見受けられず、むしろ依存先との互換性修正が中心です。⚠ 破壊的変更: 互換性が崩れていた環境では retrieval の挙動が変わるため、既存の query や index 設定を確認して再検証するとよいです。

**既存利用者への影響**

Cosmos memory を利用している場合は、Toolkit 0.3 で問題が起きていた経路が修正されたため、依存ライブラリと一緒に環境を更新して再テストしてください。API 変更はないので既存コードの修正は最小限で済みます。

### [#8471](https://github.com/microsoft/agent-framework/pull/8471) — Python: Build(deps): Bump agent-framework-core from 1.17.0 to 1.18.0 in /python/packages/lab

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `python` `lab` `dependencies`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-09-17 22:37:11`

**変更概要**

この PR は `python/packages/lab` 側の `agent-framework-core` 依存を 1.17.0 から 1.18.0 に更新し、lab サンプルが最新の core API と互換する状態にしています。変更量自体はロックファイルの更新だけですが、関連するで変化を取り込みつつ依存関係を揃えています。サンプルや実験用プロジェクトの回帰防止としては小さくても重要な更新です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/lab/uv.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `1b468f2` Build(deps): Bump agent-framework-core in /python/packages/lab

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この更新は lockfile のみで、公開 API の変更や破壊的変更の直接要因ではありません。ただし `agent-framework-core` の 1.18.0 へ追従することで、lab 配下のサンプルや依存解決が最新 API に合わせて変わる可能性があります。⚠ 破壊的変更: 直接的にはなしですが、依存アップデートの影響で lab での挙動差異が出る場合があります。

**既存利用者への影響**

lab / 実験コードを使っている利用者は、依存更新を取り込んで `uv sync` や検証を再度実行するのが安全です。API 変更自体は小さく、通常は互換性を保ったまま取り入れられます。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #8470 | Build(deps-dev): Bump pyright from 1.1.411 to 1.1.414 in /python/packages/lab in the python-type-checkers group across 1 directory | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8470> |
| #8469 | Build(deps-dev): Bump uv from 0.12.9 to 0.12.12 in /python/packages/lab in the basics group across 1 directory | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8469> |
| #8472 | Python: Build(deps): Bump huggingface-hub from 1.30.0 to 1.31.0 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8472> |
| #8473 | Python: Build(deps-dev): Bump agent-framework-openai from 1.14.2 to 1.14.3 in /python/packages/lab | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8473> |
| #8480 | Build(deps): Bump the codeql-actions group across 1 directory with 3 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8480> |
| #8481 | Build(deps): Bump azure/login from 3.0.2 to 3.1.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8481> |
| #8482 | Build(deps): Bump astral-sh/setup-uv from 10.0.1 to 10.1.0 | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8482> |
| #8484 | Build(deps): Bump astral-sh/setup-uv from 10.0.1 to 10.1.0 in /.github/actions/python-setup | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8484> |
| #8485 | Build(deps): Bump azure/login from 3.0.2 to 3.1.0 in /.github/actions/sample-validation-setup | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8485> |
| #8483 | Build(deps): Bump azure/login from 3.0.2 to 3.1.0 in /.github/actions/github-app-token | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8483> |
| #8476 | ci: excludes samples from dotnet dependabot because they are causing a timeout | baywet | <https://github.com/microsoft/agent-framework/pull/8476> |
| #8474 | .NET: Clarify Agent Skills caching behavior | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8474> |
| #8477 | docs: clarifies the additional languages policy | baywet | <https://github.com/microsoft/agent-framework/pull/8477> |
| #8396 | Python: Handle provider-invalidated responses | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8396> |
| #8406 | .NET: fix: uri canonization in workflow http handler | baywet | <https://github.com/microsoft/agent-framework/pull/8406> |
| #8427 | .NET: tests(workflows): adds a regression test for cookie jar handling in redirection | baywet | <https://github.com/microsoft/agent-framework/pull/8427> |
| #8458 | .NET: Add per-tool AgentModeProvider controls | westey-m | <https://github.com/microsoft/agent-framework/pull/8458> |
| #8451 | Python: expose message event control through enable_instrumentation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8451> |
| #8450 | Python: Add per-tool AgentModeProvider exposure controls | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8450> |
| #8370 | .NET/Python: Add more content types to purview handling | westey-m | <https://github.com/microsoft/agent-framework/pull/8370> |
| #8430 | .NET/Python: Refine skill frontmatter parsing | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/8430> |
| #8163 | Python: include checkpoint_id on AG-UI interrupt metadata (#8150) | FOWEPJF255 | <https://github.com/microsoft/agent-framework/pull/8163> |
| #8433 | Python: preserve approval context across resume paths | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8433> |
| #8354 | Python: exclude encrypted reasoning payloads from compaction token counts | Lubaoshuai | <https://github.com/microsoft/agent-framework/pull/8354> |
| #7687 | .NET: Add AsIChatClient extension to expose an AIAgent as an IChatClient | tomas-rampas | <https://github.com/microsoft/agent-framework/pull/7687> |
| #8421 | Python: Add generic vector store providers | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8421> |
| #8439 | Python: skip API check when merge ref is unavailable | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8439> |
| #8435 | Python: fix(declarative): keep internal workflow-routing kwargs out of the Agent.run splat | he-yufeng | <https://github.com/microsoft/agent-framework/pull/8435> |
| #8329 | Python: keep agent compaction configuration when HandoffBuilder clones participants | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8329> |
| #8231 | Python: wake workflow streaming on iteration completion | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8231> |
| #8424 | Python: fix(openai): emit image_generation_call result from streaming output_item.done | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8424> |
| #8117 | Python: fix(python): return call-level compaction summaries in agent responses | vedantsonkar | <https://github.com/microsoft/agent-framework/pull/8117> |
| #8393 | Python: handle Azure content-filter inner codes | Shy7777 | <https://github.com/microsoft/agent-framework/pull/8393> |
| #8428 | Python: fix mixed function-call batch classification | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8428> |
| #8078 | Python: fix: parse Responses `function_call_output` so hosted tool results reach transports | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8078> |
| #8420 | Python: Propagate custom result parser failures | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8420> |
| #8398 | Python: Finalize abandoned graph workflow streams without OTel context leaks | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8398> |
| #8405 | Python: fix(openai): preserve reasoning_content on tool-call follow-up messages | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8405> |
| #8419 | Python: fix API compatibility checks for fork PRs | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8419> |
| #8249 | Python: Build(deps-dev): bump ty from 0.0.77 to 0.0.78 in /python in the python-type-checkers group | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8249> |
| #8389 | Python: Populate WorkflowAgent response for empty streams | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8389> |
| #8409 | Python: Isolate Foundry Hosting local test state | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8409> |
| #7757 | Python: fix: make concurrent FileCheckpointStorage saves not race on a shared temp path | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/7757> |
| #8384 | Python: Add stable names to orchestration workflows | droideronline | <https://github.com/microsoft/agent-framework/pull/8384> |
| #8271 | Python: add public API compatibility checks | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8271> |
| #8394 | Python: Restrict argument labels against owned input integrity | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8394> |
| #8386 | Python: Fix ambiguous MCP configuration name matching | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8386> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #8454 | Python: Support Foundry project embeddings | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8454> |
| PR | #8453 | Python: Add sequential function invocation option | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8453> |
| PR | #8459 | Python: expose CodeAct tool parameter schemas | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8459> |
| PR | #8438 | .NET: show cumulative Harness console session tokens | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8438> |
| PR | #8467 | Build(deps-dev): Bump the python-type-checkers group across 1 directory with 2 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8467> |
| PR | #8466 | Build(deps-dev): Bump uv from 0.12.9 to 0.12.12 in /python in the basics group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8466> |
| PR | #8468 | Python: Build(deps-dev): Bump griffe from 2.2.0 to 2.3.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/8468> |
| PR | #8494 | .NET: preserve cooperative workflow handler cancellation | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8494> |
| PR | #8493 | .NET: add SQLite conversation persistence API sample | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8493> |
| PR | #8491 | .NET: document A2A authentication and tool authorization | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8491> |
| PR | #8492 | .NET: document host-owned telemetry and message content controls | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8492> |
| PR | #8442 | Python: fix(core): resume nested agent-as-tool approval instead of silently no-oping | open | Sehastrajit-S | <https://github.com/microsoft/agent-framework/pull/8442> |
| PR | #8490 | Python: Surface switch-case condition errors instead of routing to the default branch | open | RachelWanggg | <https://github.com/microsoft/agent-framework/pull/8490> |
| PR | #8464 | Python: preserve AgentResponse metadata in WorkflowAgent streaming | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8464> |
| PR | #8488 | Python: fix(python): preserve CostControl budget failures in hosted Responses | open | banibrata-de | <https://github.com/microsoft/agent-framework/pull/8488> |
| PR | #8486 | .NET: ci: switches to a dedicated solution for dependabot | open | baywet | <https://github.com/microsoft/agent-framework/pull/8486> |
| PR | #8423 | .NET: [BREAKING] Fix DevUI approval continuation | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/8423> |
| PR | #8457 | Python: handle concurrent FileSystemAgentFileStore deletion | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/pull/8457> |
| PR | #8478 | Python: mark hosted /responses incomplete on content_filter and length finish reasons | open | anishmehta24 | <https://github.com/microsoft/agent-framework/pull/8478> |
| PR | #8479 | .NET: chore: promote shipped .NET APIs for main | open | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/8479> |
| PR | #8437 | .NET: clarify Harness client API selection | open | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/8437> |
| PR | #8465 | .NET: Fix AG-UI "Unknown chat role: reasoning" on follow-up turns | open | atty57 | <https://github.com/microsoft/agent-framework/pull/8465> |
| PR | #8461 | .NET: Preserve opening user message in history during compaction tool-call loops | open | banned2054 | <https://github.com/microsoft/agent-framework/pull/8461> |
| PR | #8449 | Python: bound stateless pause batches to user turns | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/8449> |
| PR | #8440 | Python: add opt-in deferred session persistence to foundry_hosting | open | harsheet-shah | <https://github.com/microsoft/agent-framework/pull/8440> |
| PR | #8432 | .NET: Bind always approval responses to surfaced requests | open | westey-m | <https://github.com/microsoft/agent-framework/pull/8432> |
| PR | #8417 | .NET: [BREAKING] Consolidate in-memory agent session storage | open | manjunathshiva | <https://github.com/microsoft/agent-framework/pull/8417> |
| PR | #8414 | TypeScript: add initial SDK functionality | closed | ctava-msft | <https://github.com/microsoft/agent-framework/pull/8414> |
| PR | #8264 | .NET: chore: promote shipped .NET APIs for main | closed | maf-ci-automations[bot] | <https://github.com/microsoft/agent-framework/pull/8264> |
| PR | #8452 | Python: support enable_message_events parameter in enable_instrumentation (#8412) | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/8452> |
| PR | #8204 | Python: feat(core): add tool concurrency groups and sequential execution order | closed | PratikWayase | <https://github.com/microsoft/agent-framework/pull/8204> |
| PR | #7953 | Python: make tool argument-validation errors self-correcting for the model | closed | YashvantHange | <https://github.com/microsoft/agent-framework/pull/7953> |
| PR | #8431 | .NET: tests(workflows): adds additional tests for metadata uri access | closed | baywet | <https://github.com/microsoft/agent-framework/pull/8431> |
| PR | #8080 | Python: fix order-dependent tool-approval bypass in mixed batches | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/8080> |
| PR | #6203 | .NET: add FunctionApprovalResponseItemParam to fix unrecognized type discriminator (fixes #6006) | closed | hanhan761 | <https://github.com/microsoft/agent-framework/pull/6203> |
| PR | #6198 | .NET: [fix] add missing function_approval_response ItemContent type for DevUI approval | closed | hanhan761 | <https://github.com/microsoft/agent-framework/pull/6198> |
| PR | #8416 | .NET: Fix #5779: Aspire DevUI returns 404 when frontend dependency is missing | closed | ritish404 | <https://github.com/microsoft/agent-framework/pull/8416> |
| Issue | #8444 | .NET: track programmatic message-event configuration for OTel Distro | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8444> |
| Issue | #8489 | .NET: Python: [Bug]: SwitchCaseEdgeGroup swallows case-condition errors and silently routes the message to the default branch | open | RachelWanggg | <https://github.com/microsoft/agent-framework/issues/8489> |
| Issue | #8487 | Hosted Responses lose CostControl budget failure metadata | open | banibrata-de | <https://github.com/microsoft/agent-framework/issues/8487> |
| Issue | #8418 | Python: Foundry Hosting: preserve standard MCP approval identity across continuation | open | Jiahui-Gu | <https://github.com/microsoft/agent-framework/issues/8418> |
| Issue | #8475 | Python: [Bug]: Hosted /responses drops finish_reason="content_filter" — filtered turns are indistinguishable from successful ones | open | jiks-hue | <https://github.com/microsoft/agent-framework/issues/8475> |
| Issue | #8463 | Python: [Bug]: WorkflowAgent drops response metadata when streaming an AgentResponse output | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8463> |
| Issue | #8462 | .NET: [Bug]: Replying in a CopilotKit webchat with reasoning results in "System.InvalidOperationException: Unknown chat role: reasoning" | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8462> |
| Issue | #8448 | Python: [Bug]: Stateless mixed-pause discovery merges requests across user turns | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8448> |
| Issue | #8443 | Python: expose enable_message_events through enable_instrumentation | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8443> |
| Issue | #8456 | Python: [Bug]: FileSystemAgentFileStore.delete can violate its result contract during concurrent deletion | open | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8456> |
| Issue | #8455 | Python: [Bug]: once-per-run history drops earlier tool-loop turns when function middleware terminates | open | rflechtner | <https://github.com/microsoft/agent-framework/issues/8455> |
| Issue | #8445 | Python: Hyperlight and Monty host-tool schema rendering with format selection | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8445> |
| Issue | #8441 | .NET: [Bug]: Opening user message is dropped from InMemoryChatHistoryProvider when compaction is enabled and the first agent action is a tool call | open | mamort | <https://github.com/microsoft/agent-framework/issues/8441> |
| Issue | #8426 | .NET: [Docmentation]: Unclear how to show reasoning in AG-UI | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8426> |
| Issue | #8446 | .NET: Hyperlight host-tool parameter schemas missing from execute_code descriptions | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8446> |
| Issue | #8436 | Mixed pause recovery can lose provider outbox state and mis-correlate Host results | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8436> |
| Issue | #8429 | .NET: [Bug]: Cannot set ReasoningEffort on gpt-5.6-luna | open | hansmbakker | <https://github.com/microsoft/agent-framework/issues/8429> |
| Issue | #8422 | Python: streaming Responses parser drops the final image of `image_generation_call` | closed | CristinaStn | <https://github.com/microsoft/agent-framework/issues/8422> |
| Issue | #7923 | Python: Cosmos memory provider misses Toolkit 0.3 episodic and procedural retrieval APIs | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/7923> |
| Issue | #8291 | .NET: Make Foundry delegated user identity sticky on AgentSession | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8291> |
| Issue | #7221 | Python: [Feature]: allow suppressing/replacing individual AgentModeProvider tools | closed | antsok | <https://github.com/microsoft/agent-framework/issues/7221> |
| Issue | #8150 | Python: AG-UI: include checkpoint_id on RUN_FINISHED interrupts for multi-worker resume | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8150> |
| Issue | #8132 | Python: [Bug]: AG-UI local approval execution does not receive function_invocation_kwargs / tool runtime context | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8132> |
| Issue | #8410 | Python: [Bug]: tool approval resume silently fails when the agent has a context provider | closed | jjwong0915 | <https://github.com/microsoft/agent-framework/issues/8410> |
| Issue | #8348 | Python: [Bug]: Compaction token counter charges encrypted reasoning payloads (`protected_data`) as prompt text | closed | antsok | <https://github.com/microsoft/agent-framework/issues/8348> |
| Issue | #4170 | Python: Phase 8: Vector Store CRUD Tools and Context Provider | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/4170> |
| Issue | #8413 | Python: [Bug]: Declarative InvokeAzureAgent splatters _raw_function_invocation_kwargs into Agent.run() | closed | likebean | <https://github.com/microsoft/agent-framework/issues/8413> |
| Issue | #8320 | Python: [Bug]: HandoffBuilder drops agent-level   compaction_strategy when cloning participants | closed | melzeta | <https://github.com/microsoft/agent-framework/issues/8320> |
| Issue | #8099 | Python: [Bug]: Call-level compaction summary dropped from AgentResponse (only exclusion flags persist) | closed | sdkn104 | <https://github.com/microsoft/agent-framework/issues/8099> |
| Issue | #8385 | Python: [Bug]: OpenAIContentFilterException fails to parse Azure Responses API inner code "ContentFiltered" | closed | arnabbiswas1 | <https://github.com/microsoft/agent-framework/issues/8385> |
| Issue | #8079 | Python: always_require tool approval silently bypassed when preceded by a declaration-only or unknown call in the same batch | closed | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/8079> |
| Issue | #3496 | .NET: [Feature]: AIAgent.AsIChatClient | closed | stephentoub | <https://github.com/microsoft/agent-framework/issues/3496> |
| Issue | #3603 | Python: observability: Define strategy for OTel versioning and attribute changes | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/3603> |
| Issue | #8256 | Python: [Bug]: Checkpoint encoding silently loses values when dictionary keys collide after string conversion | closed | fzfzzfzzzfzzzz | <https://github.com/microsoft/agent-framework/issues/8256> |
| Issue | #7471 | Python: RedisHistoryProvider ignores source_id in its key, so two providers on one session share and overwrite each other's history | closed | chinmayv095 | <https://github.com/microsoft/agent-framework/issues/7471> |
| Issue | #8068 | Python: [Bug]: Responses stream parser silently drops unhandled platform/hosted tool call and result item types, causing AG-UI tool calls to go missing or show "tool calls missing results" | closed | djw-bsn | <https://github.com/microsoft/agent-framework/issues/8068> |
| Issue | #8397 | Python: [Bug]: Graph workflow stream abandonment logs an OpenTelemetry context detach error | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8397> |
| Issue | #8382 | Python: [Bug]: Preserve reasoning_content when invoking tools with OpenAI-compatible Chat Completions providers | closed | peter-chenqing | <https://github.com/microsoft/agent-framework/issues/8382> |
| Issue | #8388 | Python: [Bug]: WorkflowAgent leaves SessionContext.response unset for zero-output streams | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8388> |
| Issue | #8408 | Python: [Bug]: Foundry Hosting tests share local AgentServer state | closed | ryo-whaletech | <https://github.com/microsoft/agent-framework/issues/8408> |
| Issue | #7748 | Python: [Bug]: Concurrent FileCheckpointStorage saves fail due to shared temporary path | closed | ermattson | <https://github.com/microsoft/agent-framework/issues/7748> |
| Issue | #8383 | Python: [Feature]: Use stable default workflow names for Python orchestration builders | closed | droideronline | <https://github.com/microsoft/agent-framework/issues/8383> |
| Issue | #8400 | Python: Deprecate MCP sampling in line with the 2026-07-28 specification | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/8400> |
