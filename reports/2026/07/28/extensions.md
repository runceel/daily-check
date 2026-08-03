# dotnet/extensions

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7652](https://github.com/dotnet/extensions/pull/7652) — Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport （PR / open / dependabot[bot]）
  TypeScript の評価レポート公開タスクを利用・運用する担当者は、`adm-zip` と `azure-pipelines-task-lib` の更新内容を確認し、依存関係を更新して脆弱性修正を取り込んでください。

## 主要な変更点

- `Microsoft.Extensions.AI.Evaluation.Reporting` の TypeScript 依存関係で、`adm-zip` と `azure-pipelines-task-lib` のセキュリティ更新が進行中です。
- 10.8.3 servicing release の準備と、リリース運用手順への経験反映が完了しました。
- source-generated AIContent contexts における `RequiresConfirmation` の MEAI001 漏れが修正されました。
- 拡張可能な chat client routing の PR がオープンしており、今後の API 変更候補として継続確認が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7661 | Prepare 10.8.3 Servicing Release | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7661> |
| PR | #7659 | Fix MEAI001 leak from experimental RequiresConfirmation in source-generated AIContent contexts | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7659> |
| PR | #7656 | Incorporate servicing release experience into release-manager playbooks | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7656> |
| PR | #7663 | Add AI-generated content disclosure guidance | closed | PranavSenthilnathan | <https://github.com/dotnet/extensions/pull/7663> |
| PR | #7662 | Add extensible chat client routing | open | joshuajyue | <https://github.com/dotnet/extensions/pull/7662> |
| PR | #7660 | Bump postcss from 8.5.15 to 8.5.23 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7660> |
| Issue | #7658 | ToolApprovalRequestContent.RequiresConfirmation causes MEAI001 in consumer AIContent source-generation contexts | closed | jeffhandley | <https://github.com/dotnet/extensions/issues/7658> |
| Issue | #6026 | [API Proposal]: HybridCache - richer DI configuration | closed | mgravell | <https://github.com/dotnet/extensions/issues/6026> |
| Issue | #6455 | [API Proposal]: Register multiple HybridCache objects | closed | cesarbmx | <https://github.com/dotnet/extensions/issues/6455> |
| Issue | #6202 | HybridCache: Inconsistent behavior of GetOrCreateAsync in concurrent calls with readonly flags set | closed | bezaou | <https://github.com/dotnet/extensions/issues/6202> |
