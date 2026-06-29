# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-06-25 00:23:12 〜 2026-06-29 01:00:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 28 |
| オープン中の新規 PR     | 23 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 23 |
| クローズ Issue          | 19 |
| 主要コントリビューター  | SergeyMenshykh, dependabot[bot], eavanvalkenburg, peibekwe, rogerbarreto, TaoChenOSU |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6768](https://github.com/microsoft/agent-framework/pull/6768) — .NET: [BREAKING] Extract caching from AgentSkillsProvider into CachingAgentSkillsSource （PR / merged / SergeyMenshykh）
  キャッシュ依存の実装を持つ利用者は、`AgentSkillsProvider` から `CachingAgentSkillsSource` への移行を確認する必要があります。
- **⚠ 破壊的変更** [#6754](https://github.com/microsoft/agent-framework/pull/6754) — Python: [BREAKING] Make all SkillsProvider tools require approval by default （PR / open / giles17）
  Python 側のスキル利用者は、既定で承認が必要になるためツール承認ルールを見直す必要があります。
- **⚠ 破壊的変更** [#6743](https://github.com/microsoft/agent-framework/pull/6743) — .NET: [BREAKING] Align Foundry.Hosting experimental flags to MAAI001 for MAF-specific APIs （PR / merged / rogerbarreto）
  Foundry.Hosting を使う構成では、実験的フラグ名が変わったため設定値の更新を確認する必要があります。
- **⚠ 破壊的変更** [#6735](https://github.com/microsoft/agent-framework/pull/6735) — [BREAKING] Python: Change background-agent loop helper to resolve the provider from the agent （PR / open / westey-m）
  Background agent を利用する Python 実装では、プロバイダー解決の仕組み変更に合わせて呼び出し側を確認する必要があります。
- **⚠ 破壊的変更** [#6729](https://github.com/microsoft/agent-framework/pull/6729) — .NET: [BREAKING] Make all AgentSkillsProvider tools require approval by default （PR / merged / SergeyMenshykh）
  .NET 側でも承認が既定化されたため、既存の自動承認設定やツール利用ポリシーを見直す必要があります。
- **⚠ 破壊的変更** [#6696](https://github.com/microsoft/agent-framework/pull/6696) — Python: [BREAKING] Durable Task multi-workflow hosting and sub-workflows （PR / open / ahmedmuhsin）
  Durable Task のホスティング構成を使っている場合は、サブワークフロー周りの変更を確認する必要があります。

## このリポジトリの要点

agent-framework は、承認フローのデフォルト変更やキャッシュ抽象化といった破壊的変更が続いており、既存実装の更新が必要な状態です。特に .NET / Python の skill provider 周辺は、利用ポリシーやホスティング構成を見直す価値が高いです。Durable Task や Foundry Hosting のサンプル・テストも活発に更新されており、次のリリースでは互換性確認を優先するとよいでしょう。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6768](https://github.com/microsoft/agent-framework/pull/6768) — .NET: [BREAKING] Extract caching from AgentSkillsProvider into CachingAgentSkillsSource

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET` `breaking change` `skills`
- 変更行数: +314 / -116
- マージ日時 (UTC): `2026-06-26 22:42:26`

**変更概要**

`AgentSkillsProvider` 内のキャッシュ責務が `CachingAgentSkillsSource` に分離され、スキルソースの構成とキャッシュ戦略を別々に扱えるようになりました。これにより、キャッシュの有効化や無効化を個別に制御しやすくなり、スキルソースの再利用性が高まります。今回の変更は主に .NET 実装の内部構造整理で、既存のサンプルやテストも更新されています。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI/CompatibilitySuppressions.xml` | 70 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProvider.cs` | 4 | 36 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderBuilder.cs` | 17 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderOptions.cs` | 0 | 8 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Decorators/CachingAgentSkillsSource.cs` | 61 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Decorators/DeduplicatingAgentSkillsSource.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Decorators/DelegatingAgentSkillsSource.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/Decorators/FilteringAgentSkillsSource.cs` | 0 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentSkillsProviderBuilderTests.cs` | 8 | 7 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentSkillsProviderTests.cs` | 11 | 56 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/CachingAgentSkillsSourceTests.cs` | 143 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `0777771` .NET: Extract caching from AgentSkillsProvider into CachingAgentSkill…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentSkillsProvider` のキャッシュ実装が削除され、`CachingAgentSkillsSource` という新しいデコレーターに移されています。`AgentSkillsProviderBuilder` もキャッシュ構成に合わせて整理されており、互換性抑制ファイルが追加されています。⚠ 破壊的変更として、既存のキャッシュ依存実装は新しい抽象に合わせて書き換える必要があります。

**既存利用者への影響**

キャッシュが組み込まれた挙動に依存していた実装は、`CachingAgentSkillsSource` を明示的に組み込む形へ切り替える必要があります。既存コードの再利用がある場合は、ビルダー構成や skill source の依存関係を再確認するとよいでしょう。

### [#6743](https://github.com/microsoft/agent-framework/pull/6743) — .NET: [BREAKING] Align Foundry.Hosting experimental flags to MAAI001 for MAF-specific APIs

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +16 / -16
- マージ日時 (UTC): `2026-06-26 14:51:30`

**変更概要**

Foundry.Hosting の実験的フラグ名が MAF 固有 API 用の `MAAI001` 系に統一され、設定の読み方が明確になりました。これにより、.NET 側のホスティング設定と Foundry 関連機能の対応関係が分かりやすくなります。既存の実装では設定名の見直しが必要です。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentFrameworkResponseHandler.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/AgentSessionStore.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FileSystemAgentSessionStore.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryAIToolExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxOptions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxService.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedFoundryMemoryProviderScopes.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedFoundryMemoryProviderServiceCollectionExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedSessionContext.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedSessionContextExtensions.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedSessionIsolationKeyProvider.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/HostedSessionJsonUtilities.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/InMemoryAgentSessionStore.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/PlatformHostedSessionIsolationKeyProvider.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/ServiceCollectionExtensions.cs` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `95b2009` .NET: Align Foundry.Hosting experimental flags to MAAI001 for MAF-spe…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

実験的フラグの名称が標準化され、Foundry.Hosting 側の設定キーも MAF 固有の命名規則に合わせて揃えられています。⚠ 破壊的変更として、以前のフラグ名に依存していた構成は更新が必要です。

**既存利用者への影響**

Foundry.Hosting の設定を持つ環境では、古いフラグ名を使っている場合に設定値の見直しが必要になります。既存構成をそのまま維持したい場合は、対応表を確認してから再デプロイするとよいでしょう。

### [#6729](https://github.com/microsoft/agent-framework/pull/6729) — .NET: [BREAKING] Make all AgentSkillsProvider tools require approval by default

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +512 / -70
- マージ日時 (UTC): `2026-06-25 21:06:21`

**変更概要**

`AgentSkillsProvider` のツール実行に対して、承認が必要な既定動作が導入されました。これにより、スキル利用時の安全性が高まる一方で、既存の自動承認やサンプル実装は見直しが必要です。サンプルとドキュメントも更新され、承認フローの使い方が明確になっています。

<details><summary>変更ファイル (15 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/agent-framework-dotnet.slnx` | 1 | 0 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/Agent_Step07_SkillsAutoApproval.csproj` | 32 | 0 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/Program.cs` | 90 | 0 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/README.md` | 102 | 0 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/skills/unit-converter/SKILL.md` | 11 | 0 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/skills/unit-converter/references/conversion-table.md` | 10 | 0 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/skills/unit-converter/scripts/convert.py` | 29 | 0 |
| `dotnet/samples/04-hosting/FoundryHostedAgents/responses/Hosted-AgentSkills/Program.cs` | 8 | 2 |
| `dotnet/src/Microsoft.Agents.AI/CompatibilitySuppressions.xml` | 105 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProvider.cs` | 73 | 20 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderBuilder.cs` | 0 | 11 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderOptions.cs` | 0 | 7 |
| `dotnet/tests/Foundry.Hosting.IntegrationTests.TestContainer/Program.cs` | 7 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentSkillsProviderBuilderTests.cs` | 1 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/AgentSkills/AgentSkillsProviderTests.cs` | 43 | 27 |

</details>

<details><summary>コミット (5 件)</summary>

- `1ee1622` Make all AgentSkillsProvider tools require approval by default
- `5a950d2` Add UseToolApproval to hosted AgentSkills scenarios
- `3da7837` Add API compatibility suppressions for removed ScriptApproval members
- `e579e74` Merge branch 'main' into sergeymenshykh-skills-approval-config
- `80894aa` Merge branch 'main' into sergeymenshykh-skills-approval-config

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentSkillsProvider` 側で承認が必須になるように振る舞いが変わり、`UseToolApproval` を通じてホスト側での明示設定も増えています。⚠ 破壊的変更として、従来の自動承認に依存していた実装は明示的な設定が必要です。

**既存利用者への影響**

既存のツール利用ルールに自動承認が含まれている場合は、明示的な承認設定またはホスト側の許可設定に切り替える必要があります。サンプル実装からも承認フローの考慮が増えているため、既存のユーザー体験を確認しておくとよいでしょう。

### [#6774](https://github.com/microsoft/agent-framework/pull/6774) — .NET: Disable failing DurableTask and AzureFunctions integration tests

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +25 / -19
- マージ日時 (UTC): `2026-06-26 21:45:22`

**変更概要**

DurableTask / Azure Functions 系の統合テストで、安定性に影響していた失敗ケースを一時的に無効化してCIの安定性を高めています。これは機能の削除ではなく、テスト基盤の信頼性向上を狙った調整です。開発者としては、今後再有効化の条件を追う必要があります。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/AgentEntityTests.cs` | 5 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/ConsoleAppSamplesValidation.cs` | 4 | 4 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/ExternalClientTests.cs` | 5 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.IntegrationTests/WorkflowConsoleAppSamplesValidation.cs` | 2 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/SamplesValidation.cs` | 7 | 5 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.AzureFunctions.IntegrationTests/WorkflowSamplesValidation.cs` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `6c6b6c2` Disable failing DurableTask and AzureFunctions integration tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更はテストケースの無効化に集中しており、公開 API や実装のシグネチャ変更はありません。CI での再現性向上を優先した修正で、実行環境依存の不安定要素が低減されます。

**既存利用者への影響**

利用者側での移行作業は不要ですが、統合テストの再有効化や再現条件の確認は今後の保守で重要です。特に Durable Task / Azure Functions で構成している環境では、テストの挙動を追うとよいでしょう。

### [#6773](https://github.com/microsoft/agent-framework/pull/6773) — .NET: Sample fix

- 作者: alliscode / 状態: MERGED
- ラベル: `.NET` `workflows`
- 変更行数: +99 / -25
- マージ日時 (UTC): `2026-06-26 22:31:52`

**変更概要**

サンプルコードとサンプル検証の挙動が改善され、サンプル実行の信頼性が上がっています。メモリサンプルやワークフロー系サンプルの挙動が整理され、実装例をそのまま試す際の迷いが減りました。主に開発者体験向上の変更で、既存 API の利用方法に大きな変化はありません。

<details><summary>変更ファイル (11 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/eng/verify-samples/AgentsSamples.cs` | 2 | 2 |
| `dotnet/eng/verify-samples/WorkflowSamples.cs` | 3 | 3 |
| `dotnet/samples/01-get-started/04_memory/Program.cs` | 30 | 12 |
| `dotnet/samples/02-agents/AgentProviders/foundry/Agent_Step17_OpenAPITools/Program.cs` | 10 | 1 |
| `dotnet/samples/02-agents/Agents/Agent_Step10_BackgroundResponsesWithToolsAndPersistence/Program.cs` | 1 | 1 |
| `dotnet/samples/02-agents/Agents/Agent_Step14_BackgroundResponses/Program.cs` | 7 | 2 |
| `dotnet/samples/02-agents/Agents/Agent_Step18_CompactionPipeline/Program.cs` | 1 | 0 |
| `dotnet/samples/03-workflows/Agents/GroupChatToolApproval/Program.cs` | 2 | 2 |
| `dotnet/samples/03-workflows/ConditionalEdges/03_MultiSelection/Program.cs` | 15 | 0 |
| `dotnet/src/Shared/Workflows/Execution/WorkflowRunner.cs` | 22 | 2 |
| `dotnet/src/Shared/Workflows/Settings/Application.cs` | 6 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `f202516` Fixing some samples and sample verification.
- `ea712f1` Workaround for continuation token moved to sample.
- `7dabffb` Address PR review comments: reset _stdinEof on reuse, null-guard mode…
- `0a6f0a0` Improving memory sample by not creating an agent just to get a chat c…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この PR では、ワークフロー実行やサンプルの設定に関する細かな修正が入っており、公開 API のシグネチャ変更はありません。`WorkflowRunner` やアプリケーション設定の調整によって、コンテキスト継続やサンプル実行の挙動が安定しています。

**既存利用者への影響**

利用者側の移行作業は基本的に不要ですが、サンプルやワークフロー設定を直接カスタマイズしている場合は、更新前後の挙動差分を確認するとよいでしょう。

### [#6772](https://github.com/microsoft/agent-framework/pull/6772) — .NET: Prefer HTTPS Aspire DevUI backends

- 作者: tommasodotNET / 状態: MERGED
- ラベル: `documentation` `.NET`
- 変更行数: +136 / -8
- マージ日時 (UTC): `2026-06-26 19:15:56`

**変更概要**

Aspire DevUI のサンプルと内部サービスが HTTPS を優先する構成へ更新され、開発時の接続先がより安全な設定になりました。ローカル開発で `https` を前提とする環境において、接続やトラフィックの扱いが改善されます。これは主に開発体験の向上に寄与する変更です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/05-end-to-end/DevUIAspireIntegration/DevUIIntegration.AppHost/Program.cs` | 2 | 2 |
| `dotnet/samples/05-end-to-end/DevUIAspireIntegration/README.md` | 2 | 0 |
| `dotnet/samples/05-end-to-end/DevUIAspireIntegration/WriterAgent/Program.cs` | 2 | 0 |
| `dotnet/samples/05-end-to-end/DevUIAspireIntegration/WriterAgent/Properties/launchSettings.json` | 9 | 0 |
| `dotnet/src/Aspire.Hosting.AgentFramework.DevUI/DevUIAggregatorHostedService.cs` | 25 | 6 |
| `dotnet/tests/Aspire.Hosting.AgentFramework.DevUI.UnitTests/DevUIAggregatorHostedServiceTests.cs` | 96 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `905b1ca` .NET: Prefer HTTPS backends in Aspire DevUI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

この変更では、DevUI の接続先を HTTPS に寄せるためのサービス実装とサンプル設定が更新されており、公開 API のシグネチャ変更はありません。HTTPS 前提の構成にしている環境では、接続先の見直しが必要になることがあります。

**既存利用者への影響**

ローカル開発環境で HTTP ベースの接続を前提にしていた場合は、証明書や URL の扱いを確認しておくとよいでしょう。大きな移行作業は不要ですが、HTTPS を使う構成へ自然に切り替えられるようにしておくと安心です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6771 | .NET: Improve proxy target validation in DevUI aggregator | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6771> |
| #6759 | .NET: Add description attribute to resource and script elements in skill body | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6759> |
| #6753 | Python: bump package versions for 1.10.0 release | giles17 | <https://github.com/microsoft/agent-framework/pull/6753> |
| #6752 | .NET: Updating version for dotnet release 1.11.1 | peibekwe | <https://github.com/microsoft/agent-framework/pull/6752> |
| #6745 | .NET: Add DeclarativeWorkflowJsonOptions for AOT-safe declarative workflow checkpointing | peibekwe | <https://github.com/microsoft/agent-framework/pull/6745> |
| #6740 | Python: Build(deps): Bump fastapi from 0.124.4 to 0.138.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6740> |
| #6739 | Python: Build(deps): Bump google-genai from 1.75.0 to 2.10.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6739> |
| #6738 | Python: Build(deps): Bump huggingface-hub from 1.20.1 to 1.21.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6738> |
| #6737 | Python: Build(deps): Bump hyperlight-sandbox-python-guest from 0.4.0 to 0.5.0 in /python | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6737> |
| #6736 | .NET: Add BackgroundTaskCompletionLoopEvaluator for harness background agents | westey-m | <https://github.com/microsoft/agent-framework/pull/6736> |
| #6731 | .NET: Disable failing durable function integration tests | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6731> |
| #6730 | .NET: Update .NET SDK to 10.0.301 | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6730> |
| #6718 | .NET: Foundry hosted-agent toolbox OAuth consent support | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6718> |
| #6713 | Python: Update FHA with toolbox sample with more auth methods | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6713> |
| #6712 | Python: Fix Hyperlight CodeAct span parenting | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6712> |
| #6709 | Python: Preserve OTel parent context for deferred streams | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6709> |
| #6706 | .NET: Remove resource/script placeholder requirement from custom skill templates | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6706> |
| #6698 | Python: Add Telegram channel for agent-framework-hosting | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6698> |
| #6695 | Python: Refactor runner/workflow responsibilities and fix checkpoint ancestry bug | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6695> |
| #6674 | .NET: Enforce ApprovalRequiredAIFunction in GitHub Copilot provider via OnPreToolUse hook | giles17 | <https://github.com/microsoft/agent-framework/pull/6674> |
| #6670 | .NET: Fix issue with resuming checkpoint after package version upgrade | peibekwe | <https://github.com/microsoft/agent-framework/pull/6670> |
| #6326 | .NET: Fix typo in XML doc comment for workflow outputs param | marcominerva | <https://github.com/microsoft/agent-framework/pull/6326> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6785 | Fix malformed frontmatter in agent skills ADR | open | fallintoplace | <https://github.com/microsoft/agent-framework/pull/6785> |
| PR | #6784 | .NET: Fix UTF-8 byte truncation in ProcessBridge | open | fallintoplace | <https://github.com/microsoft/agent-framework/pull/6784> |
| PR | #6783 | .NET: Fix invalid EditTable workflow YAML fixtures | open | fallintoplace | <https://github.com/microsoft/agent-framework/pull/6783> |
| PR | #6782 | Python: convert Pydantic model class `response_format` to JSON schema in OllamaChatClient | open | anneheartrecord | <https://github.com/microsoft/agent-framework/pull/6782> |
| PR | #6780 | .NET: fix: Ensure DeclarativeActionCompletedEvent is raised for every action | open | PratikWayase | <https://github.com/microsoft/agent-framework/pull/6780> |
| PR | #6778 | .NET: Enable function approval response content DevUI Extension | open | Kumima | <https://github.com/microsoft/agent-framework/pull/6778> |
| PR | #6776 | Python: Process messages to an executor serially within a superstep | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6776> |
| PR | #6775 | .NET: Fix DurableTask CustomStatus 16 KB overflow on multi-executor workflows | open | kshyju | <https://github.com/microsoft/agent-framework/pull/6775> |
| PR | #6766 | .NET: Add AgentSkillsSourceContext to AgentSkillsSource.GetSkillsAsync | open | feiyun0112 | <https://github.com/microsoft/agent-framework/pull/6766> |
| PR | #6764 | Python: Fix background agent telemetry context error | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6764> |
| PR | #6763 | Python: Fix FunctionShellTool throw and empty streaming shell command | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6763> |
| PR | #6758 | Python: add agent-framework-hosting-activity-protocol channel | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6758> |
| PR | #6755 | Python: Stop swallowing skill script and resource errors so the model can self-correct | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6755> |
| PR | #6754 | Python: [BREAKING] Make all SkillsProvider tools require approval by default | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6754> |
| PR | #6751 | Python: Fix GeminiChatClient dropping image/file content | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6751> |
| PR | #6750 | Python: Align GitHub Copilot provider function approval to use SDK on_pre_tool_use hook | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6750> |
| PR | #6749 | .NET: Add support for `AddSwitch` in the durable workflow runner | open | kshyju | <https://github.com/microsoft/agent-framework/pull/6749> |
| PR | #6748 | Python: Build(deps-dev): Bump js-yaml from 4.1.1 to 4.2.0 in /python/packages/devui/frontend | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6748> |
| PR | #6747 | Python: Improve the Python sample validation workflow to increase pass rate | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6747> |
| PR | #6741 | .NET: Python/.Net: Agent Harness blog post accompanying samples part 3 | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6741> |
| PR | #6735 | [BREAKING] Python: Change background-agent loop helper to resolve the provider from the agent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/6735> |
| PR | #6726 | .NET: Bump Anthropic from 12.20.0 to 12.31.0 | open | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6726> |
| PR | #6724 | Python: implement ADR-0029 service_session_id lifecycle mapping | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6724> |
| PR | #6779 | Python: Add local echo agent getting started sample | closed | TuTN6 | <https://github.com/microsoft/agent-framework/pull/6779> |
| PR | #6757 | Python: Add agent-framework-hosting-activity-protocol channel | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6757> |
| PR | #6701 | .NET: Fix stop sequence array serialization | closed | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6701> |
| PR | #6619 | Build(deps): Bump fastapi from 0.124.4 to 0.138.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6619> |
| PR | #6609 | Build(deps): Bump granian from 2.5.7 to 2.7.4 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/6609> |
| PR | #5971 | .NET: [.Net][ADR] OTel BCL-native emission for ChatClientAgent (ADR 0027) + implementation | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/5971> |
| PR | #4837 | docs: add gitcgr code graph badge | closed | vitali87 | <https://github.com/microsoft/agent-framework/pull/4837> |
| Issue | #6788 | Python: [Bug]: OllamaChatClient: tool calls reuse the function name as `call_id`, so repeated calls in one turn collide | open | antsok | <https://github.com/microsoft/agent-framework/issues/6788> |
| Issue | #6787 | Python: [Bug]: AG-UI: streamed reasoning fragments into one block per delta when the provider sends no per-chunk id | open | antsok | <https://github.com/microsoft/agent-framework/issues/6787> |
| Issue | #6786 | .NET: [Bug]: HITL in Durable workflows the Executor TInput state is lost after approval is granted. | open | Sachin-Nand | <https://github.com/microsoft/agent-framework/issues/6786> |
| Issue | #6781 | Python: [Bug]: OllamaChatClient: `response_format` as a Pydantic model class isn't converted to a JSON schema (structured output fails; breaks harness plan mode) | open | antsok | <https://github.com/microsoft/agent-framework/issues/6781> |
| Issue | #6777 | Python: Re-enable temporarily skipped Python integration tests (merge-queue xdist runner crash) | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6777> |
| Issue | #6770 | Python: [Feature]: Better FileAccessProvider for python harness | open | jhare96 | <https://github.com/microsoft/agent-framework/issues/6770> |
| Issue | #6769 | .NET: [Bug]: Aspire DevUI does not work for the agent server with HttpsRedirection | closed | Kumima | <https://github.com/microsoft/agent-framework/issues/6769> |
| Issue | #6767 | .NET: Python: Extract caching from SkillsProvider into a CachingSkillsSource decorator | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6767> |
| Issue | #6765 | .NET: Extract caching from AgentSkillsProvider into a CachingAgentSkillsSource decorator | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6765> |
| Issue | #6762 | Python: Fix background agent telemetry context issue | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6762> |
| Issue | #6761 | Python: Fix FunctionShellTool throw | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6761> |
| Issue | #6760 | .NET: Skill resource/script descriptions not rendered in available_resources and available_scripts blocks | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6760> |
| Issue | #6756 | Python: .NET: AGUI Interrupts support | open | sheng-jie | <https://github.com/microsoft/agent-framework/issues/6756> |
| Issue | #6746 | Python: Align GitHub Copilot provider function approval to use SDK on_pre_tool_use hook | open | giles17 | <https://github.com/microsoft/agent-framework/issues/6746> |
| Issue | #6744 | .NET: [Bug]: Declarative workflow JSON checkpointing fails under AOT/reflection-disabled System.Text.Json | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/6744> |
| Issue | #6742 | .NET: Align Microsoft.Agents.AI.Foundry.Hosting experimental flags to MAAI001 for MAF-specific APIs | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6742> |
| Issue | #6734 | Python: Harness: Change loop evaluator that loops until all background agents are complete to resolve provider from agent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/6734> |
| Issue | #6733 | .NET: Harness: Add a LoopCompletionEvaluator for background agents | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6733> |
| Issue | #6732 | .NET: Investigate and fix persistent durable function integration test failures | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6732> |
| Issue | #6728 | Python: Make all AgentSkillsProvider tools require approval by default and add auto-approval rules | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6728> |
| Issue | #6727 | .NET: Make all AgentSkillsProvider tools require approval by default and add auto-approval rules | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6727> |
| Issue | #6725 | .NET: Microsoft.Agents.AI.Hosting package still in preview | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/6725> |
| Issue | #6723 | Tool calls frequently throw this error. The target tool actually exists, but the system reports that MCP cannot be found. What could be the cause? | open | zhuxf135 | <https://github.com/microsoft/agent-framework/issues/6723> |
| Issue | #6708 | Python: Python hosting: preserve OTel parent span for deferred streaming | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6708> |
| Issue | #6707 | .NET: Remove resource/script placeholder requirement from custom skill templates | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6707> |
| Issue | #6704 | CodeAct host tool spans should be parented under execute_code | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6704> |
| Issue | #6678 | .NET: [Bug]: AG-UI AGUIChatClient.AsAIAgent skipping the original Agent Author name and ID | closed | Mohanr1122 | <https://github.com/microsoft/agent-framework/issues/6678> |
| Issue | #6671 | .NET: GitHub Copilot provider doesn't enforce `ApprovalRequiredAIFunction` for custom function tools | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6671> |
| Issue | #6669 | .NET: [Bug]: DurableTask Workflow checkpoints are not restorable across SDK upgrades | closed | peibekwe | <https://github.com/microsoft/agent-framework/issues/6669> |
| Issue | #6588 | Hosting: Telegram channel and Telegram samples | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6588> |
| Issue | #6562 | .NET: [Bug]: OAuth MCP Tool Consent Required Flow not supported by toolbox for Hosted Agents | closed | bilal-fj | <https://github.com/microsoft/agent-framework/issues/6562> |
| Issue | #6514 | Python: .NET: [Bug] : arguments null  to  Error message is: 'NoneType' object has no attribute items | closed | junkai-li | <https://github.com/microsoft/agent-framework/issues/6514> |
| Issue | #6404 | .NET: [CI] DurableTask WorkflowConsoleAppSamplesValidation tests fail — KeyNotFoundException in workflow execution | closed | giles17 | <https://github.com/microsoft/agent-framework/issues/6404> |
| Issue | #6325 | .NET: [Bug]: XML documentation typo in WorkflowHostingExtensions.cs | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/6325> |
| Issue | #4588 | Python: Preserve checkpoint ancestry when workflows resume from storage | closed | davidahmann | <https://github.com/microsoft/agent-framework/issues/4588> |
