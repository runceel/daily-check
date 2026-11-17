# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 8 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 6 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | rogerbarreto, ninglinLiu, baywet, dependabot[bot], dargilco |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#10399](https://github.com/microsoft/agent-framework/pull/10399) — .NET: [BREAKING] Drop net8.0 and net9.0 target frameworks （PR / open / rogerbarreto）
  未マージの提案です。.NET 8／9 利用者は .NET 10 以降への移行を検討し、modern-only パッケージで復元できなくなる影響を確認してください。
- **⚠ 破壊的変更** [#10393](https://github.com/microsoft/agent-framework/pull/10393) — .NET: [BREAKING] Batch workflow tool approval responses in request order （PR / open / baywet）
  未マージです。複数ツールの承認が全件揃ってから再開する動作と、旧形式チェックポイントとの非互換を確認してください。
- **⚠ 破壊的変更** [#10353](https://github.com/microsoft/agent-framework/pull/10353) — Python: [BREAKING] Unify hosted agent input handling with AgentTurn and extra_fields policy （PR / open / dargilco）
  未マージです。Python ホストの暗黙の options 転送や `prepare_options` に依存する実装は、`AgentTurn` を返す `parse_input` と `extra_fields` ポリシーへの移行が必要になる提案です。
- **⚠ 破壊的変更** [#10328](https://github.com/microsoft/agent-framework/pull/10328) — .NET: [BREAKING] Serve one agent per Foundry hosting container （PR / merged / rogerbarreto）
  マージ済みです。Foundry ホストは `AddFoundryResponses` へエージェントを明示し、外部公開エージェントごとにコンテナーを分離する必要があります。
- **⚠ 破壊的変更** [#10260](https://github.com/microsoft/agent-framework/pull/10260) — Python: [BREAKING] Prepare Foundry Hosting for RC （PR / open / eavanvalkenburg）
  未マージの RC 統合ドラフトです。Python の agent／workflow ホスト分離、要求ごとの factory、型・引数名の変更を追跡し、GA 済みとは扱わないでください。
- **⚠ 破壊的変更** [#10243](https://github.com/microsoft/agent-framework/pull/10243) — .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals （PR / open / baywet）
  未マージです。MCP 利用者は discovery 同意とツール承認の二段階化、定義変更時の再承認、旧チェックポイントでの同意再取得を確認してください。

## このリポジトリの要点

- microsoft/agent-framework#10328 が Foundry を単一エージェント／コンテナー方式に変更し、登録 API と所有権を明確化しました。複数エージェント公開構成は移行対象です。
- .NET 11 TFM と Microsoft.Extensions.AI 11.0.0 対応がマージ済みです。Python サンプルは `azure.yaml` と `azd ai agent init -t` へ移行しました。
- .NET 8／9 TFM 廃止、承認バッチの保存形式変更、Python 入力契約統一、MCP 再承認は未マージであり、現行の確定仕様と分けて追跡します。
- 宣言型 HTTP 応答読み取りの上限制御もマージ済みです。setup-dotnet 更新のセキュリティ判定は依存更新の本文由来で、製品の脆弱性修正とは扱いません。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#10328](https://github.com/microsoft/agent-framework/pull/10328) — .NET: [BREAKING] Serve one agent per Foundry hosting container

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +2411 / -1823
- マージ日時 (UTC): `2026-11-16 18:00:57`

**変更概要**

Foundry の公開エンドポイントに合わせ、1 コンテナーで外部公開するエージェントを 1 つに固定しました。
要求の name／model／metadata による選択を廃止し、インスタンスまたは factory を起動時に登録します。
factory の有効期間と破棄順序を定義し、応答ごとに生成したテレメトリーラッパーのリソース漏れも修正しました。
既存セッションの旧 keyed identity 読み取りは維持し、ワークフロー内部の specialist handoff は継続できます。

<details><summary>変更ファイル (38 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/decisions/0041-foundry-hosting-resilient-long-running-agents.md` | 3 | 4 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-ChatClientAgent/README.md` | 39 | 17 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/HostedWorkflowHandoff.csproj` | 0 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/Program.cs` | 8 | 84 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/README.md` | 3 | 3 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/azure.yaml` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 102 | 123 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryAgentSessionStore.cs` | 61 | 12 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryDefaultAgentName.cs` | 0 | 34 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryHostedAgentSource.cs` | 280 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryHostingAgent.cs` | 49 | 20 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryResponsesServerOptions.cs` | 28 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostApplicationBuilderExtensions.cs` | 80 | 133 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedStoredOutputHealthCheck.cs` | 24 | 19 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedWorkflowCheckpointingHealthCheck.cs` | 24 | 19 |
| _... 他 23 件_ | | |

</details>

<details><summary>コミット (9 件)</summary>

- `fd2c018` .NET: Read Foundry sessions saved under the legacy keyed identity
- `a53a9b0` .NET: [BREAKING] Serve one agent per Foundry hosting container
- `c21a4d9` .NET: Describe single-agent Foundry hosting in the docs
- `fa72950` .NET: Stop leaking a telemetry wrapper per Foundry hosted response
- `7d7d410` .NET: Document per-response telemetry in the Foundry hosting sample
- `6793892` .NET: Address Foundry hosting review feedback
- `ffb14d0` .NET: Move per-response telemetry ownership into hosting
- `ec69598` .NET: Update handoff sample for single-agent hosting
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

**⚠ 破壊的変更**: エージェント指定のない `AddFoundryResponses` オーバーロードを削除しました。`IServiceCollection`／`IHostApplicationBuilder` で明示的に登録し、factory は Singleton／Scoped／Transient の寿命に従います。
`FoundryResponsesServerOptions.RequireOpenTelemetryAgent` と `WorkflowAgentExtensions.WithFoundryCheckpointing(IServiceProvider)` を追加しました。
`fd2c018` は旧 `key:{name}` 保存への読み取りフォールバック、`ffb14d0` は応答単位テレメトリーの所有権、`ec69598` は handoff サンプルの単一公開エージェント化を担当します。

**既存利用者への影響**

Foundry.Hosting 利用者は登録コードの修正が必要です。複数エージェントを外部公開していた場合はコンテナー分割が必要で、内部 handoff と混同しないでください。
呼び出し側が渡すインスタンスは呼び出し側所有、factory 生成物はホスト所有です。破棄責任と保存セッションの継続を確認してください。

### [#10391](https://github.com/microsoft/agent-framework/pull/10391) — Python: Switch to using new azure.yaml templates for azd deployments

- 作者: dargilco / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +1676 / -995
- マージ日時 (UTC): `2026-11-17 03:32:56`

**変更概要**

Python の Foundry hosted-agent サンプルを現在の azd テンプレート方式に統一しました。
旧 `agent.manifest.yaml`／`agent.yaml` を `azure.yaml` に置き換え、README と検証ガイダンスを更新しています。
Toolbox の ignore 設定や Hyperlight の自己完結した Docker build も調整しました。
サンプルのデプロイ構成の変更であり、認証付きデプロイ成功を保証する変更ではありません。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/.agentignore` | 2 | 2 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/.azdignore` | 12 | 0 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/.gitignore` | 1 | 2 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/README.md` | 7 | 7 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/agent.manifest.yaml` | 0 | 30 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/agent.py` | 1 | 1 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/agent.yaml` | 0 | 18 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/azure.yaml` | 51 | 0 |
| `python/samples/02-agents/harness/build_your_own_claw/claw_step04_production_ready/hosted.py` | 1 | 1 |
| `python/samples/04-hosting/container/hyperlight_codeact/.azdignore` | 12 | 0 |
| `python/samples/04-hosting/container/hyperlight_codeact/.dockerignore` | 8 | 0 |
| `python/samples/04-hosting/container/hyperlight_codeact/Dockerfile` | 4 | 27 |
| `python/samples/04-hosting/container/hyperlight_codeact/README.md` | 22 | 3 |
| `python/samples/04-hosting/container/hyperlight_codeact/agent.manifest.yaml` | 0 | 24 |
| `python/samples/04-hosting/container/hyperlight_codeact/agent.yaml` | 0 | 23 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `f545873` First
- `288f334` Python: Remove hosted sample configuration tests
- `b339819` Add/update *ignore files
- `6bea974` Address Eduard's comment. Thanks Eduard!

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

初期化手順が `azd ai agent init -m` から `azd ai agent init -t` に変わり、サービス・モデル・接続・デプロイ要件を各 `azure.yaml` へ集約します。
`288f334` は旧 hosted sample 設定テストの除去、`b339819` は ignore ファイル更新です。ライブラリの公開 API 変更を主目的とした PR ではありません。

**既存利用者への影響**

サンプルを複製している利用者は新しい `azure.yaml` と初期化コマンドへ追随してください。
接続・モデル設定や秘密情報をイメージへ含めない除外設定を確認し、実デプロイは別途検証が必要です。

### [#10397](https://github.com/microsoft/agent-framework/pull/10397) — .NET: chore: bumps release version for dotnet

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-11-17 00:02:35`

**変更概要**

.NET パッケージの次回リリースに向けたバージョンメタデータ更新です。
中央管理の `VersionPrefix` を 1.28.0 から 1.29.0 へ進めています。
日付サフィックスも 261106 から 261116 に変更しました。実行時ロジックの修正や公開完了の告知ではありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget/nuget-package.props` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `477b6c7` .NET: chore: bumps release version for dotnet

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`477b6c7` が `dotnet/nuget/nuget-package.props` の 2 項目を更新しています。
生成される版は preview／CI では `1.29.0-preview.261116.1`／`1.29.0-ci.261116.1`、RC は `1.29.0-rc1`、安定版は `1.29.0` です。API シグネチャの変更はありません。

**既存利用者への影響**

この PR 単体でアプリコードの移行は不要です。実際にパッケージを更新する際は、同梱される別 PR の破壊的変更と公開状況を確認してください。

### [#10386](https://github.com/microsoft/agent-framework/pull/10386) — .NET: Add SDK 11 TFM Support

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `documentation` `.NET` `workflows`
- 変更行数: +2886 / -91
- マージ日時 (UTC): `2026-11-16 23:32:42`

**変更概要**

.NET 11 SDK と `net11.0` TFM への対応を追加しました。
ビルド・統合テスト・サンプル検証のワークフロー、中央依存関係、SDK 設定を更新しています。
各ライブラリに net11.0 用の公開 API ベースラインを追加し、MCP のベースラインも調整しました。
このマージと、別の未マージ PR にある net8.0／net9.0 廃止提案は区別が必要です。

<details><summary>変更ファイル (68 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-build-and-test.yml` | 10 | 8 |
| `.github/workflows/dotnet-format.yml` | 1 | 1 |
| `.github/workflows/dotnet-integration-tests.yml` | 5 | 4 |
| `.github/workflows/dotnet-verify-samples.yml` | 1 | 0 |
| `dotnet/.github/skills/build-and-test/SKILL.md` | 15 | 15 |
| `dotnet/Directory.Build.props` | 1 | 1 |
| `dotnet/Directory.Packages.props` | 16 | 9 |
| `dotnet/global.json` | 1 | 1 |
| `dotnet/samples/02-agents/AgentProviders/google-gemini/Agent_With_GoogleGemini/Agent_With_GoogleGemini.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentWithMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/HostedWorkflowHandoff.csproj` | 1 | 1 |
| `dotnet/samples/05-end-to-end/AspNetAgentAuthorization/RazorWebClient/Dockerfile` | 1 | 1 |
| `dotnet/samples/05-end-to-end/AspNetAgentAuthorization/Service/Dockerfile` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/net11.0/PublicAPI.Shipped.txt` | 319 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Abstractions/PublicAPI/net11.0/PublicAPI.Unshipped.txt` | 1 | 0 |
| _... 他 53 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `bbfa7e6` .NET: Prepare for .NET 11 TFM support  (#10240)
- `b1b4e10` .NET: Update MEAI dependencies to 11.0.0 (#10349)
- `eee9d31` Merge branch 'main' into feature/dotnet-11-support
- `4a51436` .NET: Fix net11 MCP public API baseline
- `369acbe` .NET: Address net11 review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`bbfa7e6` が .NET 11 対応の準備、`b1b4e10` が MEAI 11.0.0 更新の取り込み、`4a51436` が net11 MCP 公開 API ベースライン修正です。
`PublicAPI/net11.0` の追加と TFM ごとの依存整合が中心で、既存 TFM の廃止をこの PR の効果として扱いません。

**既存利用者への影響**

net11.0 を採用するプロジェクトやソースビルド環境では SDK・CI・依存パッケージを整合させてください。
既存利用者全員に即時の .NET 11 移行を要求するものではありません。

### [#10349](https://github.com/microsoft/agent-framework/pull/10349) — .NET: Update Microsoft.Extensions.AI to 11.0.0

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +83 / -11
- マージ日時 (UTC): `2026-11-16 15:26:47`

**変更概要**

Microsoft.Extensions.AI 関連パッケージを 10.11.0 から 11.0.0 へ更新しました。
`HostedImageGenerationTool` で部分画像ストリーミングを指定しない場合にも、完了した画像結果を受け取れる上流修正を取り込みます。
TFM ごとの依存関係と明示的なパッケージ参照を持つサンプルを調整し、画像結果の回帰テストを追加しました。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 15 | 9 |
| `dotnet/samples/02-agents/AgentWithMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory/AgentWithMemory_Step06_MemoryUsingAgentMemory.csproj` | 1 | 1 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-Workflow-Handoff/HostedWorkflowHandoff.csproj` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.UnitTests/FoundryAIToolTests.cs` | 66 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `bc8f291` .NET: Update MEAI dependencies to 11.0.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`bc8f291` で `Microsoft.Extensions.AI`／`.Abstractions`／`.OpenAI` を 11.0.0 に統一しました。Agent Framework 自体の公開 API 変更はありません。
OpenAI SDK は 2.14.0 に維持しています。MEAI.OpenAI 11.0.0 は OpenAI 2.15.0 の実験的 streaming API 変更と実行時互換性がないためです。

**既存利用者への影響**

通常はアプリコードの移行は不要ですが、依存を直接固定している場合は MEAI 11 と OpenAI 2.14.0 の整合性を確認してください。
画像生成を streaming で使うアプリは完了画像の受信動作を確認する価値があります。

### [#10352](https://github.com/microsoft/agent-framework/pull/10352) — .NET: docs: remove duplicated words in comments

- 作者: ninglinLiu / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-11-16 13:02:59`

**変更概要**

.NET ソースコメントの重複語を取り除くドキュメント修正です。
Foundry 応答ハンドラーと宣言型 workflow の ActionExecutor／DelegateExecutor が対象です。
実行コードや利用者向け API の振る舞いは変更しません。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Kit/ActionExecutor.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Workflows.Declarative/Kit/DelegateExecutor.cs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `ee0fd91` .NET: docs: remove duplicated words in comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ee0fd91` は 3 ファイルのコメントを各 1 行修正しています。新規抽象・API シグネチャ変更・破壊的変更はありません。

**既存利用者への影響**

移行不要です。コメントの可読性改善のみで、アプリの設定や動作に変更はありません。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #10371 | .NET: Bump the agent-memory group with 2 updates | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/10371> |
| #10344 | .NET: fix(dotnet): bound declarative HTTP response reads | baywet | <https://github.com/microsoft/agent-framework/pull/10344> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #10399 | .NET: [BREAKING] Drop net8.0 and net9.0 target frameworks | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10399> |
| PR | #10400 | Python: docs(samples): drop the duplicated "What's Included" heading | open | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10400> |
| PR | #10392 | Python: preserve sources for toolbox citations | open | sophia-ramsey | <https://github.com/microsoft/agent-framework/pull/10392> |
| PR | #10395 | Python: chore: drop four module constants nothing reads | open | lxcxjxhx | <https://github.com/microsoft/agent-framework/pull/10395> |
| PR | #10393 | .NET: [BREAKING] Batch workflow tool approval responses in request order | open | baywet | <https://github.com/microsoft/agent-framework/pull/10393> |
| PR | #10396 | Evaluate Agent Cop quality checks | open | glecaros | <https://github.com/microsoft/agent-framework/pull/10396> |
| PR | #10390 | .NET: Skip flaky merge queue integration tests | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/10390> |
| PR | #10388 | .NET: Add CommunityToolkit.VectorData.Milvus to the .NET community projects | open | Laurianti | <https://github.com/microsoft/agent-framework/pull/10388> |
| PR | #10358 | docs: fix ordered list numbering in docs/FAQS.md | closed | TINGyu123644 | <https://github.com/microsoft/agent-framework/pull/10358> |
| Issue | #10398 | .NET: [Bug]: Microsoft.Agents.AI.Foundry.Hosting resolves broken Microsoft.OpenTelemetry 1.0.0-beta.1 via Azure.AI.AgentServer.Core | open | seangayler-msft | <https://github.com/microsoft/agent-framework/issues/10398> |
| Issue | #10394 | Python: [Issue]: is there python API documentation? | open | hpcpony | <https://github.com/microsoft/agent-framework/issues/10394> |
| Issue | #10389 | .NET: [Bug]: Flaky live integration scenarios block merge queue | open | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/10389> |
| Issue | #10387 | Python: ResponsesHostServer drops native file-search calls and results | open | chaoyu-msft | <https://github.com/microsoft/agent-framework/issues/10387> |
| Issue | #10385 | .NET: A2A support for Hosted Agents | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/10385> |
| Issue | #10384 | Python: [Bug]: Request preparation consumes SessionContext.options before ContextProvider.after_run | closed | master1018 | <https://github.com/microsoft/agent-framework/issues/10384> |
