# 差分レポート — 2026-10-06 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-10-06 01:28:52` |
| レポート生成日時 (JST) | `2026-10-06 10:28:52` |
| 前回チェック時刻 (UTC) | `2026-09-28 01:19:34` |
| 対象期間 (UTC) | `2026-09-28 01:19:34 〜 2026-10-06 01:28:52` |

10リポジトリと Azure 44件・GitHub Changelog 10件の差分です。マージ済みは公開パッケージへの収録を保証せず、未マージ提案・未確認報告と区別しています。

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
| github/copilot-sdk | [copilot-sdk.md](./copilot-sdk.md) |
| Azure/azure-functions-agents-runtime | [azure-functions-agents-runtime.md](./azure-functions-agents-runtime.md) |

## ⚠ 全体の重要な変更（要確認）

自動分類を本文・実際の diff と照合して補正しました。関連変更はグループ化し、影響と状態を以下にまとめます。個別根拠・コミット・移行手順はリンク先の事実ファイルを参照してください。

| 種別 | ソース・参照 | 影響・対応 | 状態 |
| --- | --- | --- | --- |
| **破壊的変更** | [Agent Framework](./agent-framework.md): microsoft/agent-framework#8593／microsoft/agent-framework#8741／microsoft/agent-framework#8794／microsoft/agent-framework#8894 | Foundry 状態の永続化・sandbox 分離・Responses 履歴所有元と JSON/SSE wire を一体で移行。旧非スコープ状態は自動移行されない。 | マージ済み |
| **破壊的変更** | [Agent Framework](./agent-framework.md): microsoft/agent-framework#8893／microsoft/agent-framework#8798 | workflow 属性名の厳格化、Gemini の GOOGLE_* 環境変数と削除された GeminiSettings に追従。 | マージ済み |
| **破壊的変更** | [Agent Framework](./agent-framework.md): microsoft/agent-framework#8769／microsoft/agent-framework#8754／microsoft/agent-framework#8730 | AG-UI 1.0 の型・payload、実行間 tool 構成と承認、Foundry/OpenAI/MEAI の整合版を確認。 | マージ済み |
| **セキュリティ** | [Agent Framework](./agent-framework.md): microsoft/agent-framework#8972／microsoft/agent-framework#8946／microsoft/agent-framework#8846／microsoft/agent-framework#8942 | 動的 MCP policy、LocalCodeAct の反射制限、添付ファイル隔離、uv の Windows wheel path traversal 対策を反映。 | マージ済み |
| **変更候補** | [Agent Framework](./agent-framework.md): microsoft/agent-framework#9004／microsoft/agent-framework#8840／microsoft/agent-framework#8818／microsoft/agent-framework#8756 | Harness 進捗・履歴 provider・旧 MCP 削除・GA computer tool 対応は確定 API と公開版を追跡。 | 未マージ／提案 |
| **破壊的変更** | [Durable Extension](./agent-framework-durable-extension.md): microsoft/agent-framework-durable-extension#123（#108／#112／#114 を統合）／microsoft/agent-framework-durable-extension#124／microsoft/agent-framework-durable-extension#125 | isolated_v2 は新 deployment／instance が必要。shared counter は非負 Int64、standalone DTS の保持は既定1 MiB・85%/70% watermark。Functions の既定と混同しない。 | マージ済み、GA 未確定 |
| **変更候補・GA 待ち** | [Durable Extension](./agent-framework-durable-extension.md): microsoft/agent-framework-durable-extension#72／microsoft/agent-framework-durable-extension#116／microsoft/agent-framework-durable-extension#80 | Functions durable 2.x と GA 依存・package 公開は未完了。長期会話の無制限保持を保証しない。 | オープン |
| **セキュリティ** | [ASP.NET Core](./aspnetcore.md): dotnet/aspnetcore#68834 | passkey COSE の alg／crv 組合せを検証。不正鍵例外と公開版収録を確認。 | マージ済み |
| **認証・互換性候補** | [ASP.NET Core](./aspnetcore.md): dotnet/aspnetcore#69605／dotnet/aspnetcore#69277／dotnet/aspnetcore#69394／dotnet/aspnetcore#69312／dotnet/aspnetcore#68738 | cookie 名・external login ordinal 照合・passkey 削除後失効・claims cache・履歴 cache の変更を追跡。 | 未解決／未マージ |
| **servicing 要確認** | [ASP.NET Core](./aspnetcore.md): dotnet/aspnetcore#69575／dotnet/aspnetcore#65369 | HTTP/2 trailer backport は報告・要求段階。query redaction 提案は未マージで終了し、秘匿化導入済みではない。 | 未解決／クローズ |
| **破壊的変更（実験 API）** | [Extensions](./extensions.md): dotnet/extensions#7730 | AddHttpLatencyTelemetry → AddHttpServerLatencyTelemetry。実際の API は Experimental のままで GA ではない。 | マージ済み |
| **破壊的変更** | [Aspire](./aspire.md): microsoft/aspire#20704／microsoft/aspire#20637／microsoft/aspire#20608／microsoft/aspire#20481 | 旧 SQL image の tools17 指定、DisplayOrder 再ビルド、旧 RabbitMQ/MongoDB 統合置換、polyglot key 改名。 | マージ済み |
| **セキュリティ** | [Aspire](./aspire.md): microsoft/aspire#20703／microsoft/aspire#20586／microsoft/aspire#20603 | template/playground/extension の Critical・High 依存、PyJWT/oauthlib、テスト SSH.NET を更新。生成済みアプリは別途更新。 | マージ済み |
| **セキュリティ・検出** | [Aspire](./aspire.md): microsoft/aspire#20627／microsoft/aspire#20659／microsoft/aspire#20661／microsoft/aspire#15987 | privileged CI の shell injection と token 権限を修正。Zizmor は report-only、全 findings の修正完了ではない。 | マージ済み |
| **変更・非推奨候補** | [Aspire](./aspire.md): microsoft/aspire#20614／microsoft/aspire#20594／microsoft/aspire#10638 他 | 最低 .NET 10・AppHost SDK 非推奨等は提案。telemetry/plugins/secrets/Kafka・外部 IInteractionService 実装も確定 diff を追跡。Homebrew の非推奨警告は別途対応。 | 未マージ／未解決 |
| **期間外マージ** | [Aspire](./aspire.md): microsoft/aspire#19810／microsoft/aspire#19846 | Sandbox defaults と旧 NuGet command 削除は9月5日／1日マージ。期間中の更新を新規マージと数えない。 | 期間中に更新 |
| **破壊的変更** | [MXC](./mxc.md): microsoft/mxc#1382／microsoft/mxc#1355／microsoft/mxc#1385／microsoft/mxc#1398 | 最低 raw-config 0.9.0-alpha、V1 namespace、exact JSON FFI、Node Promise API と wait 名へ移行。 | マージ済み |
| **policy・セキュリティ** | [MXC](./mxc.md): microsoft/mxc#1339／microsoft/mxc#1312／microsoft/mxc#1364／microsoft/mxc#1124 | env 継承の明示、Hyperlight path overlap、policy_validation/exit 1、anyhow advisory を反映。WSLc portMappings parity は未解決。 | 修正マージ済み／parity 待ち |
| **仕様公開** | [MXC](./mxc.md): microsoft/mxc#1270 | exact 1.0.0 契約の公開と全製品・SDK の GA は別。 | 契約公開 |
| **preview 互換性・認証** | [Functions agents runtime](./azure-functions-agents-runtime.md): Azure/azure-functions-agents-runtime#242／Azure/azure-functions-agents-runtime#243／Azure/azure-functions-agents-runtime#249／Azure/azure-functions-agents-runtime#252 | 既定オフの Copilot は local-only/single-worker。custom ClientManager 拒否、host tool 対応範囲を確認。MCP turn refresh/skills は FRD の未実装判断、env placeholder fail-closed は未マージ。 | 実装と提案が混在 |
| **未確認報告** | [Copilot SDK](./copilot-sdk.md): github/copilot-sdk#2793／github/copilot-sdk#2807 | Rust use-after-free は未確認・未解決、Go ProtocolLogger は opt-in 提案。期間内マージは0件、修正済みと扱わない。 | オープン |
| **廃止済み・直近期限** | [Azure](./azure.md): NVv3／NVv4、DCsv3／DCdsv3 | NV は9月30日廃止・割り当て解除。NVadsA10_v5／NVads_V710_v5 等へ移行。DC は10月31日予約終了・11月1日容量制限、2029年10月31日廃止。 | 公式告知 |
| **廃止・サポート終了** | [Azure](./azure.md): Dv3/Dsv3/Ev3/Esv3、Functions on ACA V1、Arc-enabled SCVMM、HPC Pack、IoT Central | 期限は順に2029年11月15日、2027年9月29日、2029年9月30日、2027年8月27日、2029年9月20日。新 VM/ACA V2/Arc Servers/Batch/IoT Hub 等を評価。 | 公式告知 |
| **GA** | [Azure](./azure.md): SQL Server Azure Bleu、Lasv5/Laosv5、Arc SQL の2リージョン、Azure SQL vector search 他 | 提供範囲・性能・要件を評価。20件の自動展開上限外も補足表に収録、一律移行義務はない。 | GA 告知 |
| **認証・CI 挙動変更** | [GitHub Changelog](./github-changelog.md): installation token／npm trusted publishing | 約520文字の ghs_APPID_JWT に対応、11月30日までに暫定 header を除去。npm 未検証設定は48時間で失効、issue_comment 発行 token は不可。 | 公式告知 |
| **モデル廃止・セキュリティ運用** | [GitHub Changelog](./github-changelog.md) | Gemini 3.5/3.6 Flash・Kimi K2.7 Code・Opus 4.7 を後継へ。advisory API/機密コメント/報告 rate limit は運用機能追加で、脆弱性修正ではない。 | 10月2日廃止／機能告知 |

## エグゼクティブサマリー

- **直近の期限を優先:** [Azure](./azure.md) の NVv3/NVv4 は廃止済み、DCsv3/DCdsv3 は今月末から予約・容量制約が始まります。ACA V1、旧汎用 VM、SCVMM、HPC Pack、IoT Central も棚卸しと移行先評価を開始してください。Azure SQL vector search 等の GA は任意採用で、廃止対応と分けます。
- **認証・自動化を更新:** [GitHub Changelog](./github-changelog.md) の長い installation token、npm の48時間制約と許可 event、11月30日の暫定 header 除去を確認。Copilot の廃止モデルを後継へ切り替え、advisory API と機密コメントの権限・rate limit を点検します。
- **Agent の状態・wire・保持に移行が必要:** [Agent Framework](./agent-framework.md) の Foundry hosting、Gemini、AG-UI、依存整合・tool 承認と、[Durable Extension](./agent-framework-durable-extension.md) の isolated_v2・Int64・保持制限はまとめて回帰確認します。GA 追跡は未完了。[Functions runtime](./azure-functions-agents-runtime.md) の provider/host tools は狭い preview で、MCP/skills FRD や未マージ機能は実装済みではありません。
- **境界防御と依存修正を反映:** Agent Framework の MCP policy・LocalCodeAct・添付隔離・uv、[ASP.NET Core](./aspnetcore.md) の passkey 検証、[Aspire](./aspire.md) の依存・CI injection・最小権限、[MXC](./mxc.md) の path/policy/anyhow を確認。生成済みアプリ・複製 workflow は自動更新されません。ASP.NET backport と [Copilot SDK](./copilot-sdk.md) の Rust 報告は未解決で、検出基盤や終了した提案を修正公開と解釈しません。
- **API 互換性を個別に点検:** Aspire の旧統合削除・DisplayOrder・SQL REPL・polyglot、MXC の schema/V1/Promise/env/FFI、[Extensions](./extensions.md) の実験 telemetry API 改名が移行対象。.NET 10 最低版・AppHost SDK 非推奨、認証/cache/Antiforgery 等は提案段階です。[ReactiveProperty](./reactiveproperty.md) は対象期間の変更なし。

## 主要トレンド

Agent 系は永続化・履歴所有元・保持制限と provider-neutral 接続の整備が進み、セッション境界と replay 互換性の明示が重要になっています。
安全性は tool policy・添付ファイル・生成コード・CI token など境界単位の修正が中心で、runtime 修正と開発／テスト依存を分けて読む必要があります。
Azure は長期廃止計画だけでなく直近の予約・容量制約が混在。GitHub の token/event 変更とともに、期限に基づく構成棚卸しが必要です。
マージ・契約公開・GA・preview 設計は異なる状態であり、採用前に公開版と適用範囲を確認する流れが共通しています。

## 次回チェックに向けたメモ

- **前回から進展:** microsoft/agent-framework#8754／microsoft/agent-framework#8741／microsoft/agent-framework#8730、Durable の microsoft/agent-framework-durable-extension#112／microsoft/agent-framework-durable-extension#108 と統合#123、Aspire の microsoft/aspire#20481 はマージ済み。次回は公開版収録・実移行を確認。microsoft/agent-framework#8750 の承認再開時 AgentSession 要件は周知を継続。
- **未完了を継承:** microsoft/agent-framework#8756 の computer tool、microsoft/agent-framework-durable-extension#116／#80 の GA、Functions 保持既定#122、microsoft/aspire#20047 の Redis 3.2.0、microsoft/aspire#20521 の外部 IInteractionService 実装、microsoft/aspire#20486 の backport を追跡。microsoft/aspire#20474 は未マージ終了のため、依存修正は#20703等の実際の導入版で確認する。
- **SDK/runtime:** github/copilot-sdk#2527 の v2 breaking inventory/migration guide、github/copilot-sdk#2793 の Rust 報告、github/copilot-sdk#2807 の logging を確認。Functions の Azure/azure-functions-agents-runtime#244（native sessions/Blob）、#245（MCP/skills）、#250（execution parity）、#252（env header fail-closed）、本番 host managed identity qualification を追跡する。
- **安全性・互換性:** ASP.NET claims cache/Antiforgery/passkey 削除後失効と dotnet/aspnetcore#69575 servicing を継続。dotnet/aspnetcore#65369 は未マージ終了、dotnet/aspnetcore#67270 FailFast はクローズだけで公開修正を断定しない。MXC microsoft/mxc#1233 の修正リリース、microsoft/mxc#824／microsoft/mxc#1369 の WSLc parity、Aspire Sandbox tier disk・ADC エラー表示も次回へ。Agent Framework isolation/approval/MCP は今回の修正後の回帰と公開版を確認する。
- **Azure の期限:** NV GPU のクォータ・UAE North の NVv3 延長例外（2027年1月31日）と NVv4 resize preview 登録、DC 予約終了を優先。前回の ACS 廃止（2028年9月30日）、Functions PowerShell 7.4/.NET 8・9（2026年11月10日）、Node.js 22（2027年4月30日）の移行を継承。HorizonDB PostgreSQL 18/リージョン拡張、Instant Access GA、Foundry Routines/egress-control preview は提供条件と今後の GA を確認する。
- **GitHub/運用の前回メモ:** Copilot 既定ポリシーの10月22日適用前設定、SSH 適用日、CodeQL bundle、Ubuntu 26 migration、Actions protection rollout を継続確認。Actions 検索結果2,500超、usage metrics pull_request_review_times の非遡及・空配列処理も確認。新たに installation token の長さ／redaction・暫定 header 除去と npm event 制約を点検する。
- **収集・分類の振り返り:** Azure 20件上限外24件に廃止・GA があり手動補完。LocalCodeAct/添付隔離/passkey/telemetry 改名/MXC schema-V1/PyJWT は自動重要分類の漏れ、security 語による文書・性能修正の分類と契約公開の GA 扱いは過剰検出。PR 本文の古い説明は merged diff で補正し、期間中更新と期間内マージを区別した。次回前にこれらを classifier/source-of-truth 回帰テストへ反映すること。今回のコード・テスト変更は行っていない。

<!-- daily-check-meta: {"schema":1,"previousCheckAtUtc":"2026-09-28 01:19:34","generatedAtUtc":"2026-10-06 01:28:52"} -->
