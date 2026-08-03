# dotnet/extensions

対象期間: 2026-07-28 07:44:08 〜 2026-08-03 02:16:33 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7667](https://github.com/dotnet/extensions/pull/7667) — Remove GitHub models provider from project templates （PR / merged / jeffhandley）
  GitHub Models provider を含む旧テンプレートからプロジェクトを作る利用者は、生成される設定やモデル接続先を確認し、必要なら手動で代替プロバイダーを追加してください。
- **⚠ セキュリティ** [#7652](https://github.com/dotnet/extensions/pull/7652) — Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport （PR / merged / dependabot[bot]）
  AI 評価レポートの TypeScript タスク利用者は adm-zip と azure-pipelines-task-lib の更新を取り込み、依存脆弱性が解消されたことを確認してください。
- **非推奨/廃止** [#6594](https://github.com/dotnet/extensions/issues/6594) — [API Proposal]: Obsolete HybridCache compression options （Issue / open / slang25）
  HybridCache の圧縮オプションを利用する開発者は、将来の非推奨化案を追跡し、設定 API の移行先を確認してください。

## 主要な変更点

- **破壊的変更**: プロジェクト テンプレートから GitHub Models provider が削除されました。
- **セキュリティ**: AI Evaluation Reporting の TypeScript 依存が更新され、adm-zip などの脆弱性対応が進みました。
- 10.8.4 servicing release の準備と reportgenerator の更新が行われました。
- AI Evaluation Reporting の評価レポート デザインが刷新されました。
- Service Discovery の change-token / resolver リークや HybridCache API に関する Issue が引き続き確認対象です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7668 | Prepare 10.8.4 Servicing Release | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7668> |
| PR | #7667 | Remove GitHub models provider from project templates | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7667> |
| PR | #7660 | Bump postcss from 8.5.15 to 8.5.23 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7660> |
| PR | #7652 | Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7652> |
| PR | #7609 | [Microsoft.Extensions.AI.Evaluation.Reporting] Evaluation report redesign | merged | grafanaKibana | <https://github.com/dotnet/extensions/pull/7609> |
| PR | #7666 | Bump dotnet-reportgenerator-globaltool from 5.5.10 to 5.5.11 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7666> |
| PR | #7612 | Bump uuid and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | closed | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7612> |
| PR | #7674 | Stop leaking change token registrations | open | ismailbennani | <https://github.com/dotnet/extensions/pull/7674> |
| PR | #7671 | Fix HttpServiceEndpointResolver leak: share a single resolver instead of one per HTTP handler | open | epricer-polly | <https://github.com/dotnet/extensions/pull/7671> |
| Issue | #7673 | ServiceDiscovery: each ServiceEndpointWatcher lifecycle permanently leaks a change-token registration on IConfiguration | open | ismailbennani | <https://github.com/dotnet/extensions/issues/7673> |
| Issue | #7672 | MarkItDownReader  raises exception when it encounters AutolinkInLine (in .doc files) - Unsupported. | open | gouderadrian | <https://github.com/dotnet/extensions/issues/7672> |
| Issue | #7669 | HybridCache: Add HybridCache.GetOrCreateAsync overloads for dynamic setting of options | open | svick | <https://github.com/dotnet/extensions/issues/7669> |
| Issue | #7670 | HttpServiceEndpointResolver leaked per HTTP handler build in Microsoft.Extensions.ServiceDiscovery | open | epricer-polly | <https://github.com/dotnet/extensions/issues/7670> |
| Issue | #7665 | [Evaluation.Quality] InterpretScore(NumericMetric) marks unparseable (null) and out-of-range scores as not-failed | open | ANcpLua | <https://github.com/dotnet/extensions/issues/7665> |
| Issue | #7664 | [HybridCache] [Behavior Proposal] Allow Options from GetOrCreateAsync to not set "null" in cache | open | tebeco | <https://github.com/dotnet/extensions/issues/7664> |
| Issue | #7593 | [AI Evaluation] Redesign the generated HTML report | closed | grafanaKibana | <https://github.com/dotnet/extensions/issues/7593> |
