# 差分レポート — 2026-11-17 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-11-17 04:59:18` |
| レポート生成日時 (JST) | `2026-11-17 13:59:18` |
| 前回チェック時刻 (UTC) | `2026-11-16 05:01:57` |
| 対象期間 (UTC) | `2026-11-16 05:01:57 〜 2026-11-17 04:59:18` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

> **収集範囲の注意**: Copilot SDK は旧 URL からの転送先で Issue を補完しましたが、PR API が 404 のため PR 統計・コミット差分は未集計です。ほかの対象に 1 日 1,000 件到達の警告はありません。Azure RSS は期間内 0 件、GitHub Changelog は 8 件です。

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
| github/copilot-sdk（転送先 microsoft/copilot-sdk、PR 未集計） | [copilot-sdk.md](./copilot-sdk.md) |
| Azure/azure-functions-agents-runtime | [azure-functions-agents-runtime.md](./azure-functions-agents-runtime.md) |

## ⚠ 全体の重要な変更（要確認）

自動抽出を原文で確認し、誤検出を除外して手動補足しました。open は未マージ／未解決であり、closed も修正出荷を意味しません。期間外マージの継続確認項目は明記しています。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10399](https://github.com/microsoft/agent-framework/pull/10399) | .NET: [BREAKING] Drop net8.0 and net9.0 target frameworks | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10393](https://github.com/microsoft/agent-framework/pull/10393) | .NET: [BREAKING] Batch workflow tool approval responses in request order | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10353](https://github.com/microsoft/agent-framework/pull/10353) | Python: [BREAKING] Unify hosted agent input handling with AgentTurn and extra_fields policy | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10328](https://github.com/microsoft/agent-framework/pull/10328) | .NET: [BREAKING] Serve one agent per Foundry hosting container | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10260](https://github.com/microsoft/agent-framework/pull/10260) | Python: [BREAKING] Prepare Foundry Hosting for RC | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#10243](https://github.com/microsoft/agent-framework/pull/10243) | .NET: [BREAKING] fix(dotnet): revalidate MCP tool approvals | open |
| ⚠ 互換性 | dotnet/aspnetcore | [dotnet/aspnetcore#70578](https://github.com/dotnet/aspnetcore/pull/70578) | Kestrel が要求ターゲット内のリテラル # を拒否 | merged |
| ⚠ 入力検証 | dotnet/aspnetcore | [dotnet/aspnetcore#70631](https://github.com/dotnet/aspnetcore/pull/70631) | HTTP/2 DATA の padding を含むフロー制御計上を修正 | merged |
| ⚠ 破壊的変更 | microsoft/aspire | [PR#22189](https://github.com/microsoft/aspire/pull/22189) | Add canonical .NET CLI tool APIs to Aspire.Hosting.Dotnet | open |
| ⚠ 破壊的変更 | microsoft/aspire | [Issue#21795](https://github.com/microsoft/aspire/issues/21795) | Aspire 17 rejects previously accepted empty parameter values; clarify breaking change and dashboard failure | open |
| ⚠ 破壊的変更・継続確認 | microsoft/aspire | [PR#20919](https://github.com/microsoft/aspire/pull/20919) | 既存 AKS の identity と外部 ACR 権限の移行 | merged（10/16、期間外） |
| API 互換性の確認事項 | microsoft/aspire | [Issue#11760](https://github.com/microsoft/aspire/issues/11760) | ResourceUrlAnnotation.DisplayOrder の field／property 問題 | closed（実装・出荷版未確認） |
| ⚠ セキュリティ | microsoft/aspire | [PR#21455](https://github.com/microsoft/aspire/pull/21455) | Fix Next.js publish fixture security dependencies | open |
| セキュリティ更新案の終了 | microsoft/aspire | [PR#21250](https://github.com/microsoft/aspire/pull/21250) | PKCS 10.0.13 更新案。取り込み済みとは扱わない | closed（未マージ） |
| 非推奨/廃止 | microsoft/aspire | [PR#22340](https://github.com/microsoft/aspire/pull/22340) | [release/17.0] Report obsolete Aspire.AppHost.Sdk in aspire update --migrate | merged |
| 非推奨/廃止 | microsoft/aspire | [Issue#22335](https://github.com/microsoft/aspire/issues/22335) | aspire update --migrate says 'latest recommended conventions' while build emits ASPIRE012 | closed |
| ⚠ セキュリティ | microsoft/mxc | [Issue#1780](https://github.com/microsoft/mxc/issues/1780) | Linux bubblewrap: deniedPaths for a nonexistent path creates a stray directory on the host that persists after exit | open |
| 非推奨/廃止 | GitHub Changelog | [原文](https://github.blog/changelog/2026-11-16-github-copilot-models-deprecated-on-november-16-2026) | GitHub Copilot models deprecated on November 16, 2026 | — |
| 非推奨/廃止 | GitHub Changelog | [告知](https://github.blog/changelog/2026-11-16-vs-code-retires-the-local-harness-in-february-2027) | VS Code Local harness は 2027 年 2 月削除 | 1.146 で非推奨 |
| GA | GitHub Changelog | [週間更新](https://github.blog/changelog/2026-11-16-github-copilot-weekly-releases-november-9) | Copilot アプリの GHES 対応。GHES cloud session は対象外 | GA |
| v2 API の継続確認 | microsoft/copilot-sdk | [microsoft/copilot-sdk#2523](https://github.com/microsoft/copilot-sdk/issues/2523) | process／transport 設定再設計 | closed（PR・出荷版未確認） |

## エグゼクティブサマリー

- **Copilot のモデル／harness 移行**: 11 月 16 日に Opus 4.8／5 と GPT-5.6 Terra が大半の体験で非推奨化され、推奨先は Opus 5.5 と GPT-6.1 Sol／GPT-6 Luna です。契約上の例外と企業ポリシーを確認してください。VS Code Local harness は **2027 年 2 月削除**のため Copilot harness とカスタマイズの互換性を確認します。GHES のアプリ対応は **GA** ですが、GHES cloud session は対象外です（[GitHub Changelog](./github-changelog.md)）。
- **Agent Framework の確定変更と未マージ案を分離**: microsoft/agent-framework#10328 の単一公開エージェント／コンテナー化はマージ済みで、登録 API と配置構成の移行が必要です。.NET 11／MEAI 11 対応と Python の azure.yaml 移行も確定。一方、.NET 8／9 TFM 廃止、承認バッチのチェックポイント非互換、Python AgentTurn 入力契約、RC ホスト分離、MCP 定義再検証は未マージです（[詳細と影響](./agent-framework.md)）。
- **Aspire の移行ガイダンスを改善**: 旧 AppHost SDK の ASPIRE012 案内と静的スキルコピーの同意付き除去を改善しました。空文字パラメーター拒否、CLI tool API 再配置、Next.js テスト fixture の依存修正は未解決／未マージです。PKCS 更新案の未マージ終了と DisplayOrder Issue のクローズは出荷済み修正と扱わず、期間外マージの AKS identity 移行も別途継続確認します（[Aspire](./aspire.md)）。
- **Web／隔離実行の境界動作に注意**: Kestrel はリテラル `#` の拒否と HTTP/2 padding の計上を修正しました（[ASP.NET Core](./aspnetcore.md)）。MXC は `=` のない環境変数項目を無視するよう修正し、cmd.exe の引用符挙動を文書化。一方、Linux bubblewrap で未作成の拒否パスがホスト上にディレクトリを残す報告は未解決です（[MXC](./mxc.md)）。
- **管理統制と収集限界**: Copilot カスタマイズの plugin-only 制御、最大 20 repo の AI Scan 一括開始プレビュー、予算上限 40,000 件が告知されました。Azure RSS は新着なしです。Copilot SDK は転送先で新規 Issue 3 件とクローズ 1 件を補完しましたが、PR は未集計で、v2 設定再設計 Issue の完了も API 出荷の根拠にはできません（[Changelog](./github-changelog.md)、[SDK の補完内容](./copilot-sdk.md)、[Azure](./azure.md)）。

## 主要トレンド

ホスティング登録・入力 options・承認状態など、エージェントの境界と所有権を明示する変更が進んでいます。ただし、確定した単一エージェント化と未マージの契約変更は区別が必要です。
Copilot と Aspire の双方で、カスタマイズを管理された配布元へ集約し、古いローカル設定から移行する導線が強化されています。
ASP.NET Core では性能改善と HTTP 入力の整合性修正が並行し、MXC／SDK の新規報告では隔離・権限伝播・失敗の可視性が継続課題です。Azure の新着がないことからクラウド全般の停止傾向は推論しません。

## 次回チェックに向けたメモ

- **Agent Framework**: 前回の microsoft/agent-framework#10001、microsoft/agent-framework#9857、microsoft/agent-framework#10018、microsoft/agent-framework#10030、FIDES の microsoft/agent-framework#9889・microsoft/agent-framework#9652・microsoft/agent-framework#9251 を継続。マージ済み microsoft/agent-framework#10066／microsoft/agent-framework#9994 は公開版への反映を確認します。microsoft/agent-framework#10260、microsoft/agent-framework#10282、microsoft/agent-framework#10275、microsoft/agent-framework#10243、microsoft/agent-framework#10192、microsoft/agent-framework#10273 と A2A 提案も継続し、今回の microsoft/agent-framework#10399／microsoft/agent-framework#10393／microsoft/agent-framework#10353 の確定契約・移行ガイド、マージ済み microsoft/agent-framework#10328 の実リリースを追跡します。Foundry.Hosting の依存解決報告 microsoft/agent-framework#10398 も確認します。
- **Durable / Agents Runtime**: microsoft/agent-framework-durable-extension#72 の Durable 2.x 案はクローズ済みで採用済みと解釈せず、GA package の実依存を確認します。schema v2、checkpoint authority、Blob offloading、再開互換性、GA 準備、oauthlib 更新を継続。microsoft/agent-framework-durable-extension#186／microsoft/agent-framework-durable-extension#187、Azure/azure-functions-agents-runtime#292／Azure/azure-functions-agents-runtime#293 に加え、aiohttp 更新 microsoft/agent-framework-durable-extension#188／microsoft/agent-framework-durable-extension#189 を追います。今回 Runtime の新規差分がないことは、既存課題の解消を意味しません。
- **Aspire**: 前回の Project V2 microsoft/aspire#21360、Functions 移行 microsoft/aspire#21407、名前付き integration sources、CLI Go exporter、マージ済み microsoft/aspire#21260 の CORS／Entra redirect 生成物を継続確認。Go backport microsoft/aspire#22171、security 関連 microsoft/aspire#22266／microsoft/aspire#22170、API review microsoft/aspire#22217 も継続します。今回は microsoft/aspire#21795 の空文字と optional API 名、microsoft/aspire#22189 の型移行、microsoft/aspire#21455 の fixture 修正、microsoft/aspire#20919 の既存 AKS 移行を重点確認。microsoft/aspire#21250 は未マージ終了であり別の修正経路を確認し、microsoft/aspire#11760 はクローズ理由だけで API 出荷を判断しません。
- **GitHub / Copilot SDK**: 前回の github/copilot-sdk#2896（Entra MCP）、github/copilot-sdk#2888（cloud session）、github/copilot-sdk#2897（Linux／OpenSSL）、github/copilot-sdk#2892（部分回答）、github/copilot-sdk#2527（v2 ガイド）、github/copilot-sdk#2918–github/copilot-sdk#2922 は旧 URL の参照として保持し、取得可能性を確認します。今回の microsoft/copilot-sdk#2923／microsoft/copilot-sdk#2924／microsoft/copilot-sdk#2925、クローズした microsoft/copilot-sdk#2523 の実装 PR と対応版を追跡してください。secret scanning audit event の期限 **2026 年 11 月 12 日**は経過済みで対応状況を確認し、Dependabot 自動停止 **12 月 8 日**、Fable の期限付き ZDR 例外 **年末**、Local harness 削除 **2027 年 2 月**を継続監視します。11 月 16 日のモデル廃止は予告ではなく実施済みとして移行を確認します。package firewall も継続項目です。
- **Azure**: Fluid Relay の **2027 年 2 月 2 日**廃止、Defender for IoT OT security の **2029 年 10 月**廃止への移行案内を継続確認。Firewall IPv6 application rules、Application Gateway for Containers の JWT／MCPRoute／private ingress、SQL PITR immutability preview、WAF rate-limit grouping、AKS DACS、Front Door gRPC、Route Server dual-stack、Arc File Sync 制約、Static Web Apps の .NET 10 移行、Data Share 移行先、Front Door／SQL MI／Monitor の preview・GA 条件も引き継ぎます。今回 RSS 新着なしのため、これらの新たな進展は未確認です。
- **その他**: runceel/ReactiveProperty#569、Extensions の AI tool-call／streaming と Documents／Extraction の preview 契約、HybridCache の対象 TFM を継続確認。MXC の Linux filesystem policy、microsoft/mxc#1630／microsoft/mxc#1670／microsoft/mxc#1665、learning-mode の allow／block、microsoft/mxc#1780／microsoft/mxc#1783 の境界動作も継続します。今回の worker SDK 修正案 Azure/azure-functions-dotnet-worker#3539／Azure/azure-functions-dotnet-worker#3540／Azure/azure-functions-dotnet-worker#3541 と、Kestrel dotnet/aspnetcore#70578／dotnet/aspnetcore#70631 の公開版への反映を確認します。
- **収集品質・次回までの保守**: GitHub 検索の 1 日 1,000 件到達警告はありませんでした。Copilot SDK の転送先と PR API 404 は収集障害として明記し、次回までに監視元の正本・テストへ転送／未取得時の扱いを反映する必要があります。今回手動で補った Kestrel の入力変更、Local harness 廃止、週間告知中の GHES GA と、SecurityStampValidator／認可性能改善／CI アクション更新の過剰検出を分類回帰ケースにしてください。期間外の AKS マージと期間内マージを区別し、DisplayOrder の Issue クローズだけで破壊的変更出荷と判定しないことも確認します。前回必要だった Changelog RSS pagination 補完と Azure 本文の条件確認も、次回の新着数・取得範囲に応じて継続します。

<!-- daily-check-meta: {"generatedAtUtc":"2026-11-17 04:59:18","previousCheckAtUtc":"2026-11-16 05:01:57","schema":1} -->