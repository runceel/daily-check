# 差分レポート — 2026-11-19 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-11-19 01:03:42` |
| レポート生成日時 (JST) | `2026-11-19 10:03:42` |
| 前回チェック時刻 (UTC) | `2026-11-17 04:59:18` |
| 対象期間 (UTC) | `2026-11-17 04:59:18 〜 2026-11-19 01:03:42` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| microsoft/agent-framework-durable-extension | [agent-framework-durable-extension.md](./agent-framework-durable-extension.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |
| microsoft/mxc | [mxc.md](./mxc.md) |
| github/copilot-sdk → microsoft/copilot-sdk（移転先で補完） | [copilot-sdk.md](./copilot-sdk.md) |
| Azure/azure-functions-agents-runtime | [azure-functions-agents-runtime.md](./azure-functions-agents-runtime.md) |

## ⚠ 全体の重要な変更（要確認）

自動抽出を本文・API差分・クローズ理由で確認し、手動で重要変更を補いました。未マージの提案、未解決報告、期間開始前のマージ、製品のGAを区別しています。

**収集上の制約**: microsoft/agent-frameworkは検索不可・REST 404で未集計です。Copilot SDKは移転先のIssue・公式リリースで補完しましたがPR一覧APIは404で、PRの網羅性は未確認です。いずれも「変更なし」とは扱っていません。Azureは165件を確認し、既定20件の枠外のGA告知も補足。ChangelogはRSSページ送りで10件から**19件**へ補完しました。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | Copilot SDK | [v2.0.0](https://github.com/microsoft/copilot-sdk/releases/tag/v2.0.0) / [詳細](./copilot-sdk.md) | Microsoft配下への改称・移転、protocol 4、既定in-process、設定・型再構成。Agent Frameworkの既存.NET/Pythonアダプターはv1維持が必要 | 公開済み |
| 互換性補完 | Copilot SDK | [v2.0.1](https://github.com/microsoft/copilot-sdk/releases/tag/v2.0.1) | 旧Node拡張import・option形式を支援。v1→v2移行全体を不要にするものではない | 公開済み |
| 要確認・副作用 | Copilot SDK | [microsoft/copilot-sdk#2926](https://github.com/microsoft/copilot-sdk/issues/2926) | Pythonの同一tool要求の再配信による非冪等handler再実行報告 | open |
| セキュリティ依存 | Copilot SDK | [microsoft/copilot-sdk#2876](https://github.com/microsoft/copilot-sdk/issues/2876) | v1 Node SDKのZod 4.6.7確認コメント。依存木は利用側でも確認 | closed/COMPLETED |
| ⚠ セキュリティ | dotnet/extensions | [dotnet/extensions#7955](https://github.com/dotnet/extensions/pull/7955) | release/10.11へAppHost 13.6.5・推移的依存の修正をバックポート | merged |
| ⚠ セキュリティ | Aspire | [microsoft/aspire#22367](https://github.com/microsoft/aspire/pull/22367) | 13.6.5の認証・トンネル・SDKビルド隔離修正を17系へ統合。旧案microsoft/aspire#22365は未マージ終了 | merged |
| 機密情報保護 | Aspire | [microsoft/aspire#22208](https://github.com/microsoft/aspire/pull/22208) | 既知NuGetソースの資格情報をrestore出力の保存前にマスク。未知の秘密情報は対象外 | merged |
| ⚠ 互換性 | Aspire | [microsoft/aspire#21795](https://github.com/microsoft/aspire/issues/21795) / [microsoft/aspire#20521](https://github.com/microsoft/aspire/issues/20521) | 空文字パラメーターの必須判定、IInteractionService独自実装へのPromptTerminalAsync追加が影響 | open / closed（互換性回復ではない） |
| ⚠ API互換性 | Aspire | [microsoft/aspire#22185](https://github.com/microsoft/aspire/pull/22185) / [microsoft/aspire#22184](https://github.com/microsoft/aspire/pull/22184) | 17系の公開API・ATS基準更新。AKS recordの引数追加・VMサイズ定数削除に注意 | merged |
| 非推奨SDK移行 | Aspire | [microsoft/aspire#22383](https://github.com/microsoft/aspire/issues/22383) / [microsoft/aspire#22389](https://github.com/microsoft/aspire/issues/22389) | 旧SDKの自動除去はされず、package-based移行でMSBuildプロパティ評価時期が変わる報告 | open |
| 移行案内 | Aspire | [microsoft/aspire#22340](https://github.com/microsoft/aspire/pull/22340) / [microsoft/aspire#22335](https://github.com/microsoft/aspire/issues/22335) | ASPIRE012案内を修正。PRは11/17 00:17 UTCの期間開始前マージで参考掲載 | merged / closed |
| ⚠ 対応TFM変更 | ReactiveProperty | [runceel/ReactiveProperty#573](https://github.com/runceel/ReactiveProperty/pull/573) | .NET 11追加、.NET 8/9専用資産削除。既存netstandard2.0等は該当パッケージで維持 | merged・パッケージ未公開 |
| 統合廃止案 | ReactiveProperty | [runceel/ReactiveProperty#572](https://github.com/runceel/ReactiveProperty/pull/572) | UWP/Xamarin統合・現行文書の除去案。既存NuGetの削除ではない | open |
| 依存互換性の報告 | Functions worker | [Azure/azure-functions-dotnet-worker#3542](https://github.com/Azure/azure-functions-dotnet-worker/issues/3542) | Service Bus拡張のAzure.Identity更新要求。今回workerへ破壊的変更が入った意味ではない | open |
| 入力検証の変更 | ASP.NET Core | [dotnet/aspnetcore#70033](https://github.com/dotnet/aspnetcore/pull/70033) / [dotnet/aspnetcore#70234](https://github.com/dotnet/aspnetcore/pull/70234) | 不正HTTP/1.1行の400拒否、RDGのantiforgery失敗時500→400 | merged |
| 隔離強化 | MXC | [microsoft/mxc#1734](https://github.com/microsoft/mxc/pull/1734) | Bubblewrap capability全削除。UID/GID再マッピングは未完了 | merged |
| 隔離制約の報告 | MXC | [microsoft/mxc#1780](https://github.com/microsoft/mxc/issues/1780) / [詳細](./mxc.md) | 不在deniedPathsのホスト残存、Windowsのリンク・祖先変更によるdeny制約、clipboard・tmpfs制約を確認 | open |
| CI依存・要確認 | Durable拡張 / MXC | [microsoft/agent-framework-durable-extension#183](https://github.com/microsoft/agent-framework-durable-extension/pull/183) / [microsoft/mxc#1726](https://github.com/microsoft/mxc/pull/1726) | Actionsの更新案。製品利用者の脆弱性が修正済みとは扱わない | open |
| GA | Azure | [Durable Task拡張](https://azure.microsoft.com/updates?id=578829) / [Managed Connectors](https://azure.microsoft.com/updates?id=579440) / [詳細](./azure.md) | Agent Framework拡張、Functionsコネクター・Go、DTSのPrivate Endpoint・CMKなど。SKU条件を確認 | 告知済み |
| GA | Azure | [Azure AI Gateway](https://azure.microsoft.com/updates?id=580080) / [HorizonDB](https://azure.microsoft.com/updates?id=579388) / [追加一覧](./azure.md) | AI Gateway・Agent 365連携・Connector Namespace・Unified Model API、HorizonDB・認証・監査・監視など | 告知済み・一部状態表記不一致 |
| GA | Azure | [VMバックアップ](https://azure.microsoft.com/updates?id=581048) / [Cobalt 200](https://azure.microsoft.com/updates?id=581298) / [DB・基盤の一覧](./azure.md) | 別subscriptionバックアップ、PostgreSQL新compute、Cosmosのthroughput buckets・reranker、Azure Linux 4.0など | 告知済み |
| ⚠ 廃止予定 | GitHub Changelog | [MAI-Code-1.1-Flash](https://github.blog/changelog/2026-11-17-upcoming-deprecation-of-mai-code-1-1-flash-in-december) | **2026-12-18**までに最新MAI Code Flashへ移行。モデルポリシーも確認 | 期限あり |
| セキュリティ運用 | GitHub Changelog | [Team自動評価](https://github.blog/changelog/2026-11-18-security-risk-assessments-run-automatically-on-github-team) / [on-demand scan](https://github.blog/changelog/2026-11-17-secret-scanning-on-demand-for-developers-and-agents) | Team組織の無料評価自動化と、別機能のopt-in secret scan。後者はAI credits消費 | 自動実行 / preview |
| GA・モデル | GitHub Changelog | [詳細](./github-changelog.md) | Gemini 4 Neon、GPT-6.2 Astra/Sol、team customizations、GHES対応、Azure Repos code review。プラン・権限・費用条件あり | 項目別にGA/preview |

ASP.NET CoreのSecurityStampValidator・認可メトリックの性能改善は脆弱性修正扱いから除外しました。Go AppHostの4件のGA追跡IssueはNOT_PLANNEDで他Issueへ統合されており、GA完了として数えていません。

## エグゼクティブサマリー

- **Copilot SDK v2は移行設計が必要**: [Microsoft配下への移転とv2詳細](./copilot-sdk.md)を手動補完しました。protocol 4、既定in-process、型・設定再構成は破壊的変更で、既存Agent Frameworkアダプター利用者はv1維持が必要です。v2.0.1の互換性補完、Pythonのツール重複実行報告、Zod依存の解消確認も区別して確認してください。
- **Aspire/.NETの更新はセキュリティと互換性をセットで確認**: [Aspire](./aspire.md)は13.6.5修正の17系取り込み・NuGet診断のマスク、[Extensions](./extensions.md)はAppHost脆弱性修正のバックポートが重要です。空パラメーター、IInteractionService、旧SDK・MSBuild評価時期、AKS API差分に注意。[ReactiveProperty](./reactiveproperty.md)では.NET 11追加と.NET 8/9専用TFM削除がマージされ、UWP/Xamarin除去は未マージです。[worker](./azure-functions-dotnet-worker.md)のAzure.Identity依存報告とZIP deploy修正、[ASP.NET Core](./aspnetcore.md)の不正入力・antiforgery応答変更も対象です。
- **隔離の強化を「全境界が解決」と解釈しない**: [MXC](./mxc.md)のcapability削除はマージ済みですが、deniedPaths、Windowsリンク・祖先変更、clipboard・tmpfsの制約は未解決報告です。WSLC proxyのport mappingはloopback限定。Durable拡張・MXCのActions依存更新はCI向け未マージ案で、本体の修正完了とは分けて扱います。
- **Azureは165件、FunctionsとAI/DB基盤に多数のGA**: [全体解説・枠外GA一覧](./azure.md)にDurable Task拡張、Managed Connectors、Go、DTSのPrivate Endpoint/CMK、AI Gateway・Agent 365・Connector Namespace、HorizonDB、Cobalt 200、PostgreSQL新compute、Cosmos DBの検索・throughput・バックアップ、Azure Linux 4.0などを整理しました。保持日数やPrivate Endpoint等でRSSのpreview/GA表記が食い違う告知は断定せず、SKU・地域も個別確認が必要です。
- **Copilotの新機能と運用期限を確認**: [Changelog全19件](./github-changelog.md)には**MAI-Code-1.1-Flashの12月18日廃止**、Team自動リスク評価、opt-in secret scanのAI credits課金、reviewのAdaptive/公開repo横断参照、Azure Repos review・GHES・team customizationsのGAを記載しました。新モデル、Fusion、8種コネクター、Azure DevOps/browser preview、Entra認証、Agent 365監査、Evals、metrics、ベンチマーク、Event Streamsはいずれも対象プラン・管理者設定・提供段階を確認してください。

## 主要トレンド

Ignite期の告知では、エージェントの実行・接続・監査を製品横断で統合する動きが目立ちます。Functionsの永続実行・コネクター、Azure AI Gateway、Agent 365監査がその例です。
一方、SDK v2のプロセス分離変更、MXCの隔離境界、CLIログの機密情報保護は、利便性向上と同時に実行権限・所有権・ログ管理を再確認する必要性を示しています。
.NET 11とAspire 17への移行では、TFM・API・設定評価・依存ライブラリを別々に確認することが重要です。マージ、配布、Issueのクローズ、GA追跡タスクの統合は同義ではありません。

## 次回チェックに向けたメモ

- **Agent Framework（前回から保留）**: 本体は404で今回の進展未確認です。microsoft/agent-framework#10001、microsoft/agent-framework#9857、microsoft/agent-framework#10018、microsoft/agent-framework#10030、FIDESのmicrosoft/agent-framework#9889・microsoft/agent-framework#9652・microsoft/agent-framework#9251を引き継ぎます。マージ済みと前回記録されたmicrosoft/agent-framework#10066・microsoft/agent-framework#9994・microsoft/agent-framework#10328の公開版反映、microsoft/agent-framework#10260・microsoft/agent-framework#10282・microsoft/agent-framework#10275・microsoft/agent-framework#10243・microsoft/agent-framework#10192・microsoft/agent-framework#10273、A2A提案、microsoft/agent-framework#10399・microsoft/agent-framework#10393・microsoft/agent-framework#10353の契約と移行ガイド、Foundry.Hostingのmicrosoft/agent-framework#10398も、公式ソースの再特定後に追跡します。
- **Durable / Agents Runtime**: C#・Python拡張GAの実パッケージ依存と、SDK v2アダプター非互換を優先確認。microsoft/agent-framework-durable-extension#72は未採用のクローズ案として扱い、schema v2、checkpoint authority、Blob offloading、再開互換性、oauthlib・aiohttp更新を継続します。前回のmicrosoft/agent-framework-durable-extension#186・microsoft/agent-framework-durable-extension#187・microsoft/agent-framework-durable-extension#188・microsoft/agent-framework-durable-extension#189、Azure/azure-functions-agents-runtime#292・Azure/azure-functions-agents-runtime#293に加え、Actionsのmicrosoft/agent-framework-durable-extension#183と.NET 11 SDK案microsoft/agent-framework-durable-extension#190を追跡。Runtimeの今回0件は既存課題の解消ではありません。
- **Aspire**: 今回のmicrosoft/aspire#22367の配布反映、microsoft/aspire#22208のマスク範囲、microsoft/aspire#22346の17系バックポートmicrosoft/aspire#22401、microsoft/aspire#22207のdry-run挙動を確認します。空文字microsoft/aspire#21795、旧SDK移行microsoft/aspire#22383、MSBuild評価microsoft/aspire#22389、IInteractionServiceとAKS API差分も重点です。Go追跡先はmicrosoft/aspire#21112・microsoft/aspire#21110・microsoft/aspire#21108・microsoft/aspire#21106へ統合されており、旧IssueのクローズをGA完了にしません。前回のProject V2 microsoft/aspire#21360、Functions移行microsoft/aspire#21407、integration sources、Go exporter、microsoft/aspire#21260のCORS/Entra生成物、microsoft/aspire#22171・microsoft/aspire#22266・microsoft/aspire#22170・microsoft/aspire#22217・microsoft/aspire#22189・microsoft/aspire#21455・microsoft/aspire#20919も継続。microsoft/aspire#21250は未マージ終了、microsoft/aspire#11760はクローズだけで出荷判断しない前提を維持します。
- **Copilot SDK / GitHub**: v2のprotocol・native資産・mode・設定移行と、v1を必要とするAdapterの対応版を追跡。microsoft/copilot-sdk#2926・microsoft/copilot-sdk#2928、前回のmicrosoft/copilot-sdk#2923・microsoft/copilot-sdk#2924・microsoft/copilot-sdk#2925とmicrosoft/copilot-sdk#2523の対応版を確認します。旧github/copilot-sdk#2896・github/copilot-sdk#2888・github/copilot-sdk#2897・github/copilot-sdk#2892・github/copilot-sdk#2527・github/copilot-sdk#2918・github/copilot-sdk#2919・github/copilot-sdk#2920・github/copilot-sdk#2921・github/copilot-sdk#2922は旧URL参照として保持し、移転先で解決を確認します。**MAI-Code-1.1-Flashの2026-12-18廃止**を追加し、前回のDependabot自動停止12/8、Fableの期限付きZDR例外年末、Local harness削除2027/2、11/12期限のsecret scanning audit eventと11/16モデル廃止の対応確認、package firewallを引き継ぎます。これら旧期限の今回の進展は未確認です。
- **Azure**: FunctionsのHosted Skill/Agent bindings、Task Queues、Flex container依存、Node.js 26/Python 3.15、DTSのDedicated災害復旧を継続。HorizonDBの保持・Private Endpoint・PolicyなどRSS状態不一致、GA機能のSKU/リージョン条件も確認します。前回のFluid Relay **2027-02-02**廃止、Defender for IoT OT security **2029年10月**廃止、Firewall IPv6 application rules、Application Gateway for ContainersのJWT/MCPRoute/private ingress、SQL PITR immutability、WAF rate-limit grouping、AKS DACS、Front Door gRPC、Route Server dual-stack、Arc File Sync、Static Web Appsの.NET 10、Data Share移行先、Front Door/SQL MI/Monitorの条件も保留解除せず引き継ぎます。今日期間の別サービスのGAで既存項目の状態を上書きしません。
- **その他のライブラリ**: runceel/ReactiveProperty#573の公開版とrunceel/ReactiveProperty#572のレビュー、runceel/ReactiveProperty#574・runceel/ReactiveProperty#575の性能・初回コスト・AOT条件、親課題runceel/ReactiveProperty#569を継続。ExtensionsのAI tool-call/streaming、Documents/Extraction preview契約、HybridCache TFM、今回のdotnet/extensions#7955・dotnet/extensions#7948・dotnet/extensions#7936も確認します。workerのAzure/azure-functions-dotnet-worker#3539はマージ済みに更新し、Azure/azure-functions-dotnet-worker#3540・Azure/azure-functions-dotnet-worker#3541・Azure/azure-functions-dotnet-worker#3542と公開SDKを追跡。Kestrelの前回dotnet/aspnetcore#70578・dotnet/aspnetcore#70631、今回のdotnet/aspnetcore#70033・dotnet/aspnetcore#70234・dotnet/aspnetcore#69888の配布反映も確認します。
- **MXC**: Linux filesystem policy、microsoft/mxc#1630・microsoft/mxc#1670・microsoft/mxc#1665、learning-mode allow/block、microsoft/mxc#1780・microsoft/mxc#1783を継続。今回のmicrosoft/mxc#1734と後続ID再マッピングmicrosoft/mxc#1814、microsoft/mxc#1792、Windowsのmicrosoft/mxc#1793・microsoft/mxc#1794・microsoft/mxc#1795、macOS clipboardのmicrosoft/mxc#1797、tmpfsのmicrosoft/mxc#1806を重点確認します。
- **収集品質・次回までの保守**: 検索1日1,000件の打切り警告はありません。Copilot SDKの移転は公式ガイドでも確認済みですがPR APIは引き続き404、本体Agent Frameworkも404です。次回までに監視元の正本・テストへ移転と未取得扱いを反映する必要があります。今回も必要だったChangelogページ送り、Azure20件枠外のGA確認、認証/認可性能改善の誤検出、Go GA追跡Issue統合の誤認、TFM廃止・MXC隔離変更の見落としを回帰ケースにしてください。今回のレポート作成ではスクリプト・分類器を変更していません。

<!-- daily-check-meta: {"schema":1,"generatedAtUtc":"2026-11-19 01:03:42","previousCheckAtUtc":"2026-11-17 04:59:18"} -->