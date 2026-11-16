# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 15 |
| オープン中の新規 PR     | 18 |
| クローズ (未マージ) PR  | 5 |
| 新規 Issue              | 9 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | eavanvalkenburg, baywet, rogerbarreto, hardikkaurani, kartikmadan11, SergeyMenshykh |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9841](https://github.com/microsoft/agent-framework/pull/9841) — .NET: [BREAKING] fix(dotnet): require allowed HTTP hosts （PR / open / baywet）
  宣言型 HTTP ツールの利用者は、必須となる許可ホスト設定と削除予定のコンストラクターを確認し、呼び出し側を更新してください（PR はオープン中）。
- **⚠ 破壊的変更** [#9721](https://github.com/microsoft/agent-framework/pull/9721) — [BREAKING] .NET: Update AgentServer dependencies （PR / merged / rogerbarreto）
  .NET の Foundry Hosted 利用者は、新しい登録方法と依存パッケージの API 変更を確認し、Responses のローカル永続状態が旧形式から引き継がれない点を踏まえて更新してください。
- **⚠ 破壊的変更** [#9452](https://github.com/microsoft/agent-framework/issues/9452) — Python: [BREAKING] Remove deprecated MCP compatibility surfaces in vNext （Issue / open / jpalvarezl）
  Python の MCP 利用者は、次のメジャー版で低レベル `ClientSession` の受け渡し口などが削除される計画を確認し、現在の高レベル `Client` 接続へ移行できるか棚卸ししてください。
- **⚠ セキュリティ** [#9652](https://github.com/microsoft/agent-framework/pull/9652) — Python: Harden FIDES security state and policy enforcement （PR / open / eavanvalkenburg）
  Python で FIDES を使う開発者は、再生履歴のラベル復元と不正メタデータの fail-closed 化を確認し、認可前に隠し引数が検証器へ渡らないことを検証してください（PR はオープン中）。

## このリポジトリの要点

.NET では Foundry AgentServer の依存更新に伴い、登録 API と Responses のローカル永続形式に互換性上の変更が入りました（[#9721](https://github.com/microsoft/agent-framework/pull/9721)）。
Hosted Harness が既定の `store=false` のままローカル会話履歴を扱えるようになり、MCP skill の TTL 尊重や宣言型ワークフローの入力検証も改善されています。
Python では FIDES のセキュリティ強化（[#9652](https://github.com/microsoft/agent-framework/pull/9652)）と、次期メジャー版での MCP 互換 API 削除計画（[#9452](https://github.com/microsoft/agent-framework/issues/9452)）が確認事項です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#9721](https://github.com/microsoft/agent-framework/pull/9721) — [BREAKING] .NET: Update AgentServer dependencies

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +407 / -85
- マージ日時 (UTC): `2026-10-29 17:54:53`

**変更概要**

Foundry Hosted 向け AgentServer / Projects のプレビュー依存を更新し、関連する Azure.Core などの依存バージョンを整合させました。
依存先の型・API 変更に合わせて ETag、永続メタデータ、チェックポイント生成、セッションファイル書き込みの呼び出しを移行しています。
Foundry Responses のホスト登録オーバーロードを追加し、steering のみを使う構成でも resilient tasks を有効化します。
この更新にはローカル Responses の永続状態保存先変更も含まれ、Foundry Hosted アプリと保存済みデータの利用者が影響を受けます。

<details><summary>変更ファイル (30 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0035-foundry-hosting-resilient-long-running-agents.md` | 1 | 1 |
| `dotnet/Directory.Packages.props` | 9 | 9 |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step04_ProductionReady/ClawAgent.Hosted/Program.cs` | 1 | 1 |
| `dotnet/samples/02-agents/Harness/BuildYourOwnClaw/Claw_Step04_ProductionReady/ClawAgent.Hosted/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Steering/README.md` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient-Long-Running/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient/Program.cs` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Resilient/README.md` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 6 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FileSystemAgentSessionStore.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryJsonCheckpointStore.cs` | 3 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 151 | 9 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/AIProjectClientExtensions.cs` | 7 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Foundry/ChatClientAgentFoundryExtensions.cs` | 2 | 2 |
| _... 他 15 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `42ade51` build(dotnet): update AgentServer packages
- `678be78` fix(dotnet): adapt latest Azure AI previews
- `7e84c83` fix(dotnet): restore Foundry hosting startup

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更:** Azure AI Projects / AgentServer のプレビュー依存を更新し、`AgentReference` の名前衝突を解消するため OpenAI 側の型を明示しました。`AddFoundryResponses` のホストビルダー登録口が追加され、`Azure.ETag`、`PersistedMetadata`、`CreateCheckpointEvent()`、`SessionFileWriteResult` の変更に合わせて呼び出し側も更新されています。
Responses beta.9 ではローカル永続データの保存先が `responses/partitions-v1` に変わり、旧形式のローカルファイルは読み込まれません。

**既存利用者への影響**

Foundry Hosted を使うアプリは `builder.AddFoundryResponses(...)` を使う登録方法と、更新された Azure AI 型/API を確認してください。
Responses の旧ローカル状態を保持している場合、アップグレード後は自動移行されないため、必要なデータの移行・再作成を事前に計画してください。

### [#8708](https://github.com/microsoft/agent-framework/pull/8708) — .NET: Allow Harness local chat history marker when stored output is disabled

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +1029 / -39
- マージ日時 (UTC): `2026-10-29 19:34:36`

**変更概要**

Harness の会話履歴を Agent Framework 側にローカル保存する場合、ホストが内部の履歴マーカーをサービス保存用 ID と誤認し、既定の `AllowStoredOutputEnabled=false` で失敗する問題を修正しました。
正確な内部 sentinel だけを例外扱いし、それ以外の会話 ID は従来どおり拒否して、`store=false` の保証を維持します。
セキュアな既定設定のまま動作する Hosted Harness サンプルと回帰テストを追加し、Foundry の Web Search 結果を再送する際のフィルターも導入しました。

<details><summary>変更ファイル (29 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-dotnet.slnx` | 3 | 0 |
| `dotnet/samples/02-agents/Harness/Harness_Step01_Research/WebBrowsingTool.cs` | 176 | 31 |
| `dotnet/samples/02-agents/Harness/README.md` | 8 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/.agentignore` | 20 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/.env.example` | 4 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/.gitignore` | 4 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/HostedHarnessResearch.csproj` | 49 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/Program.cs` | 75 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/README.md` | 80 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/StatelessWebSearchChatClient.cs` | 48 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Harness-Research/azure.yaml` | 30 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/scripts/Add-LocalFrameworkFeed.ps1` | 1 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/scripts/SourceDeployment.targets` | 27 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/scripts/add-local-framework-feed.sh` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 8 | 4 |
| _... 他 14 件_ | | |

</details>

<details><summary>コミット (6 件)</summary>

- `2476fa6` .NET: Allow Harness local chat history marker when stored output is d…
- `384138a` .NET: Revalidate browsing redirects and document hosted file isolation
- `3013c84` fix(hosting): use ZIP deployment for Harness samples
- `0d3f9e4` fix(samples): keep only hosted Harness Research
- `c05ef27` fix(dotnet): expose local history marker without IVT
- `39a89c0` Merge branch 'main' into harness-local-history-hosting

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。内部では `LocalHistoryConversationId` を比較してローカル履歴マーカーと実際のサービス会話 ID を区別し、共有定数参照のため Hosting への `InternalsVisibleTo` を追加しています。
保存出力の無効化設定は維持され、該当マーカー以外の `ConversationId` は引き続き拒否されます。

**既存利用者への影響**

ローカル履歴を使う Hosted Harness は既定の安全な設定で動作し、アプリ側の API 移行は不要です。
パッケージ公開後は、従来 `AllowStoredOutputEnabled=true` を一時設定していたサンプルを再検証して解除できます。

### [#9844](https://github.com/microsoft/agent-framework/pull/9844) — .NET: Honor `skills/get` TTL

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +509 / -55
- マージ日時 (UTC): `2026-10-29 19:28:55`

**変更概要**

MCP の `skills/get` が返す `ttlMs` を無視していたため期限切れ後も古い skill メタデータが残る問題を修正しました。
skill ごとに有効期限を保持し、期限切れ時はカタログ全体ではなく該当 skill のみを更新します。
カタログ情報とリソース本文のキャッシュ期間を独立させ、期限と再取得動作のテストを追加しました。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkill.cs` | 12 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 18 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/McpSkillsGetResult.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/McpSkillsLoader.cs` | 27 | 14 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillTests.cs` | 21 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsSerializationTests.cs` | 91 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsTests.Refresh.cs` | 273 | 18 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsTests.Ttl.cs` | 20 | 13 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/McpSkillsLoaderTests.cs` | 36 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `996c779` Honor skills/get TTL with per-skill refreshes

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentMcpSkill` にメタデータの TTL を保持し、`McpSkillsGetResult` からローダーへ期限情報を伝える処理を追加しています。期限切れの判定と更新が skill 単位になりました。
破壊的変更を示す情報はなく、MCP Skills の期限付きメタデータの取り扱いが変わります。

**既存利用者への影響**

通常は移行不要です。skill メタデータをキャッシュして利用するアプリは、有効期限後に個別再取得される挙動を確認してください。

### [#9830](https://github.com/microsoft/agent-framework/pull/9830) — .NET: fix(dotnet): validate question skip inputs consistently

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +57 / -3
- マージ日時 (UTC): `2026-10-29 18:40:22`

**変更概要**

Declarative ワークフローの Question における skip 判定で、値のラベル情報を保持し、値依存の判定にも既存の control-value 検証を適用しました。
これにより、skip 判定に使う値の検証が他のラベル付き値の扱いと一貫します。
回帰テストと利用者向けドキュメントを更新し、無条件プロンプトの既存動作は維持します。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/QuestionExecutor.cs` | 5 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/QuestionExecutorTest.cs` | 49 | 0 |
| `skills/agent-framework-builder-dotnet/references/declarative.md` | 3 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `98e6105` fix(dotnet): validate question skip inputs consistently

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`QuestionExecutor` で空値判定にラベルを付随させ、値に依存する skip 分岐で既存の control-value 検証を呼び出します。公開シグネチャの変更はありません。
ラベルのない値、`alwaysPrompt: true`、`AlwaysAsk` の動作は維持されます。

**既存利用者への影響**

既存ワークフローの移行は不要です。値依存 skip を使う場合、ラベル付き入力の無効値が一貫して検証されることを確認してください。

### [#9826](https://github.com/microsoft/agent-framework/pull/9826) — .NET: fix(dotnet): handle workflow value conversion errors consistently

- 作者: baywet / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +144 / -5
- マージ日時 (UTC): `2026-10-29 18:36:24`

**変更概要**

Declarative の `ParseValue` で、機密ラベル付き入力の変換失敗時に式評価と同様のエラー処理ができるようにしました。
対象の変換失敗では元のラベルを保持した空値を設定し、値を含めない警告を出してワークフローを継続します。
通常の無効入力、キャンセル、予期しない実行時エラーは従来どおり失敗し、回帰テストと利用者向け説明を追加しました。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/ObjectModel/ParseValueExecutor.cs` | 19 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Workflows.Declarative.UnitTests/ObjectModel/ParseValueExecutorTest.cs` | 121 | 3 |
| `skills/agent-framework-builder-dotnet/references/declarative.md` | 4 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `36d36d3` fix(dotnet): handle workflow value conversion errors consistently
- `34453d9` fix(dotnet): handle nested value conversion consistently

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変換エラーの扱いを追加し、機密ラベルを維持した空結果を後続のワークフローへ渡します。例外の対象を限定し、秘密値自体はログに出しません。
公開 API の変更は示されておらず、ラベルなしの変換失敗やキャンセルなどは抑止されません。

**既存利用者への影響**

通常は移行不要です。機密ラベル付き値の変換失敗時に、値を漏らさずワークフローが継続する新しい挙動を確認してください。

### [#9821](https://github.com/microsoft/agent-framework/pull/9821) — Python: coordinate release batches with Azure DevOps

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1028 / -134
- マージ日時 (UTC): `2026-10-29 17:58:31`

**変更概要**

Python のリリース準備で選定した配布物のバッチを、公開後に GitHub Actions から Azure DevOps の発行パイプラインへ引き渡す方式に変更しました。
バージョン更新 PR ごとのマニフェストを生成・検証し、選択された配布物と公開 import smoke test の整合性を確認します。
Azure DevOps の発行権限を GitHub 側へ持たせず、保護されたパイプラインでリリース作業を調整するリポジトリ運用の変更です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-release.yml` | 44 | 115 |
| `python/.github/skills/agent-framework-py-release/SKILL.md` | 160 | 3 |
| `python/DEV_SETUP.md` | 0 | 8 |
| `python/pyproject.toml` | 8 | 4 |
| `python/scripts/prepare_release.py` | 295 | 0 |
| `python/scripts/tests/test_prepare_release.py` | 521 | 0 |
| `python/shared_tasks.toml` | 0 | 4 |

</details>

<details><summary>コミット (9 件)</summary>

- `a1773d4` Python: prepare coordinated release batches for Azure DevOps
- `2b1a1ef` Python: keep release procedures in the release skill
- `3ce39b0` Python: keep release request manifest under .github
- `b5a5412` Python: retain release requests in per-tag manifests
- `208bcb0` Python: document reuse of existing GitHub service connection
- `c72f86c` Remove coordinated Python release ADR
- `5f4df18` docs: use retained ADO runs for Python release coordination
- `ce3a7bb` fix: harden Python release selection and event refs
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`prepare_release.py` とテストを追加し、タグ単位の `release-<fulltag>.json` マニフェストを使うリリース要求・検証フローを導入しています。実行時の Python 公開 API 変更ではなく、CI / リリース工程の変更です。
既存タグのマニフェストは保持し、変更を許すのは新規バッチのみです。選定対象やパッケージ名、バージョン、マニフェストのタグ整合性を検証します。

**既存利用者への影響**

Python の利用者に API 移行はありません。リリース担当者は新しいマニフェスト生成・レビュー手順と Azure DevOps 発行フローを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9824 | Python: stop advertising Python 3.10 support without blocking installation | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9824> |
| #9801 | Python: validate dependency bounds on version bumps and new packages | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9801> |
| #9827 | .NET: Validate Mem0 scopes on restored session state | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/9827> |
| #9823 | docs: fix dead ADK MCP tools source link after docs restructure | leom1919 | <https://github.com/microsoft/agent-framework/pull/9823> |
| #9749 | .NET: fix(dotnet): persist workflow scope aliases consistently | baywet | <https://github.com/microsoft/agent-framework/pull/9749> |
| #9804 | .NET: Harden LocalCodeAct provenance and process capability checks | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9804> |
| #9705 | Python: fix(embeddings): wrap undecodable base64 payloads in a framework error | lisry-1 | <https://github.com/microsoft/agent-framework/pull/9705> |
| #9822 | .NET: Bump the aspire group with 1 update | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9822> |
| #9669 | Python: Support async conditions in switch-case edge groups | hardikkaurani | <https://github.com/microsoft/agent-framework/pull/9669> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9853 | Python: Apply caller-supplied run kwargs over checkpoint kwargs on restore | open | Fire162 | <https://github.com/microsoft/agent-framework/pull/9853> |
| PR | #9852 | Python: fix(core): accept whole-number floats for JSON Schema integer type | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/9852> |
| PR | #9841 | .NET: [BREAKING] fix(dotnet): require allowed HTTP hosts | open | baywet | <https://github.com/microsoft/agent-framework/pull/9841> |
| PR | #9845 | .NET: fix(dotnet): handle parse-value conversion failures consistently | open | baywet | <https://github.com/microsoft/agent-framework/pull/9845> |
| PR | #9846 | .NET: Fix typos in XML doc comments and comments | open | sarankumar1325 | <https://github.com/microsoft/agent-framework/pull/9846> |
| PR | #9840 | Build(deps): bump pyrefly from 1.3.2 to 1.4.0 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9840> |
| PR | #9831 | .NET: Preserve A2A isolation key for runs that outlive the request | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/9831> |
| PR | #9832 | .NET: Stream reasoning into one output item in Foundry Hosting | open | shashaa35 | <https://github.com/microsoft/agent-framework/pull/9832> |
| PR | #9828 | Python: Add a default approval mode to MCP approval policies | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9828> |
| PR | #9842 | Python: Build(deps): bump pyrefly from 1.3.2 to 1.4.0 in /python in the python-type-checkers group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9842> |
| PR | #9834 | Build(deps): bump griffe from 2.4.0 to 2.4.1 in /python/tooling in the basics group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9834> |
| PR | #9839 | Python: Build(deps-dev): update flit-core requirement from <4.0,>=3.11 to >=3.11,<5.0 in /python in the flit group | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9839> |
| PR | #9836 | Python: Build(deps-dev): bump typescript in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9836> |
| PR | #9838 | Python: Build(deps): bump the python-type-checkers group across 2 directories with 1 update | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9838> |
| PR | #9835 | Python: Build(deps-dev): bump eslint in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9835> |
| PR | #9833 | Python: Build(deps): bump zustand in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9833> |
| PR | #9837 | Python: Build(deps): bump litellm from 1.103.7 to 1.106.2 in /python/packages/lab | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/9837> |
| PR | #9825 | Python: reject metaclasses when restoring checkpoint data | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9825> |
| PR | #9847 | Python: prepare 1.24.0 release for October 30 | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9847> |
| PR | #9791 | .NET: collect partial native approval decisions durably behind an opt-in | closed | ranst91 | <https://github.com/microsoft/agent-framework/pull/9791> |
| PR | #9757 | Python: list FOUNDRY_* settings in the multimodal input sample README | closed | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9757> |
| PR | #9747 | Python: fix(core): return MiddlewareTermination(result=...) from agent and chat middleware | closed | Somay-kousis | <https://github.com/microsoft/agent-framework/pull/9747> |
| PR | #9040 | Python: fix(core): Distributed agent orchestration with pluggable BackgroundTaskRuntimeStore | closed | karthik-0306 | <https://github.com/microsoft/agent-framework/pull/9040> |
| Issue | #9854 | Python: .NET: [Bug]: Type-generated structured-output schema can contain nested $ref rejected by OpenAI Responses | open | saisrivathsa | <https://github.com/microsoft/agent-framework/issues/9854> |
| Issue | #9843 | Python: [Bug]: Schema-supplied FunctionTool rejects a whole-number float for an "integer" parameter | open | danielquintas8 | <https://github.com/microsoft/agent-framework/issues/9843> |
| Issue | #9851 | Python: [Bug]: RedisHistoryProvider max_messages trimming can orphan a tool result, causing every subsequent turn to fail | open | LUCKYREDDY31 | <https://github.com/microsoft/agent-framework/issues/9851> |
| Issue | #9849 | Python: [Bug]: A fresh run() on a reused workflow instance can complete a fan-in with stale messages from the previous run | open | BlueX888 | <https://github.com/microsoft/agent-framework/issues/9849> |
| Issue | #9850 | Python: [Bug]: Resuming from a checkpoint discards caller-supplied run kwargs, contrary to the documented contract | open | BlueX888 | <https://github.com/microsoft/agent-framework/issues/9850> |
| Issue | #9848 | Python: [Bug]: ChatResponse.to_updates() is not the inverse of from_updates() for consecutive same-role messages without message_id | open | BlueX888 | <https://github.com/microsoft/agent-framework/issues/9848> |
| Issue | #9820 | .NET: [Bug]: Foundry Hosting emits a separate reasoning item for every streamed TextReasoningContent update | open | shashaa35 | <https://github.com/microsoft/agent-framework/issues/9820> |
| Issue | #9829 | .NET: AgentModeProvider keeps a restored mode that is no longer configured | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/issues/9829> |
| Issue | #9819 | Python: [Bug]: LocalShellTool shell= / AGENT_FRAMEWORK_SHELL strips backslashes from Windows paths | open | jaeminbird | <https://github.com/microsoft/agent-framework/issues/9819> |
| Issue | #8707 | .NET: Foundry hosting rejects Harness local chat history marker when AllowStoredOutputEnabled is false | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/8707> |
| Issue | #9092 | .NET: Proposal: add an llms.txt | closed | BrethofAI | <https://github.com/microsoft/agent-framework/issues/9092> |
| Issue | #7769 | Python: Add MLFlow as a monitoring backend option in our docs | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7769> |
| Issue | #7132 | [Feature]: Add a maf-skills repo so coding harness can use it to develop agents agains MAF. | closed | saxenanurag | <https://github.com/microsoft/agent-framework/issues/7132> |
| Issue | #6582 | Python: dependency-bounds validator is not enforced in CI | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6582> |
| Issue | #9642 | Python: [Feature]: Support async conditions in switch-case edge groups | closed | Shivam-a0621 | <https://github.com/microsoft/agent-framework/issues/9642> |
