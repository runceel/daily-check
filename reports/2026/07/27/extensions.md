# dotnet/extensions

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7652](https://github.com/dotnet/extensions/pull/7652) — Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport （PR / open / dependabot[bot]）
  AI Evaluation の Azure DevOps report task 管理者は、CVE-2026-39244 を修正する `adm-zip` 0.6.0 更新を取り込み、展開パスの挙動変更と Node.js 14 以上の要件を検証してください。
- **⚠ セキュリティ** [#7579](https://github.com/dotnet/extensions/pull/7579) — Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability by replacing SemanticKernel connectors with CommunityToolkit （PR / merged / Copilot）
  旧 AI Chat template から生成したアプリは、GHSA-2m69-gcr7-jv3q を避けるため CommunityToolkit connector と `SQLitePCLRaw.bundle_e_sqlite3` 3.x への更新を確認してください。

## 主要な変更点

- PR #7579 は high severity の SQLitePCLRaw 脆弱性を解消するため、AI Chat template とテストを Semantic Kernel connector から CommunityToolkit.VectorData へ移行しました。
- Azure DevOps の AI Evaluation report task では、`adm-zip` の DoS 脆弱性修正を含む PR #7652 がオープン中で、依存更新と挙動変更の検証待ちです。
- 10.8.2 servicing release の準備と VectorData conformance tests の xUnit 3 移行、CommunityToolkit.VectorData package baseline の 1.0.0 更新がマージされました。
- bracket-pinned な `Grpc.Net.ClientFactory` で version range check が失敗する問題は PR #7566 で修正されました。
- TypeScript の AI Evaluation reporting dependencies では `brace-expansion`、ESLint、tfx-cli も更新され、release process 向け agent playbook の整備が進んでいます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7654 | Prepare 10.8.2 Servicing Release | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7654> |
| PR | #7653 | [release/10.8] Move Microsoft.Extensions.VectorData.ConformanceTests to xUnit 3 | merged | github-actions[bot] | <https://github.com/dotnet/extensions/pull/7653> |
| PR | #7651 | Bump CommunityToolkit.VectorData package baselines to 1.0.0 / 1.0.0-preview | merged | Copilot | <https://github.com/dotnet/extensions/pull/7651> |
| PR | #7643 | Add a release-manager agent for the dotnet/extensions release process | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7643> |
| PR | #7648 | Bump brace-expansion, eslint and tfx-cli in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7648> |
| PR | #7566 | Fix Grpc.Net.ClientFactory version range check - Fixes #7565 | merged | Ghost93 | <https://github.com/dotnet/extensions/pull/7566> |
| PR | #7657 | Add mock AI providers for templates and testing | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7657> |
| PR | #7652 | Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7652> |
| PR | #7656 | Incorporate servicing release experience into release-manager playbooks | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7656> |
| PR | #7650 | Bump PowerShell from 7.6.3 to 7.6.4 | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7650> |
| Issue | #7658 | ToolApprovalRequestContent.RequiresConfirmation causes MEAI001 in consumer AIContent source-generation contexts | open | jeffhandley | <https://github.com/dotnet/extensions/issues/7658> |
| Issue | #7649 | InvalidOperationException while using AddExtendedHttpClientLogging | open | viorelbuligadev | <https://github.com/dotnet/extensions/issues/7649> |
| Issue | #6730 | [API Proposal]: HybridCache - GetByTag | closed | JamesFieldist | <https://github.com/dotnet/extensions/issues/6730> |
| Issue | #6517 | [API Proposal]: Add HybridCache RemoveByTagAsync overload that matches all tags instead of any tag | closed | wazzamatazz | <https://github.com/dotnet/extensions/issues/6517> |
| Issue | #7149 | Microsoft.Extensions.Caching.Hybrid.Tests.UnreliableL2Tests.WriteFailureInvisible(writeBreak: AsynchronousYield, errorIds: [7]) test failed | closed | ericstj | <https://github.com/dotnet/extensions/issues/7149> |
| Issue | #6543 | HybridCache Preserve Activity in Factory Callback | closed | almarcus | <https://github.com/dotnet/extensions/issues/6543> |
| Issue | #5568 | Header Propagation Cannot Be Used in `HybridCache` | closed | chrisoverzero | <https://github.com/dotnet/extensions/issues/5568> |
| Issue | #6897 | [API Proposal]: HybridCache - Allow tags to be set as part of create factory | closed | WhitWaldo | <https://github.com/dotnet/extensions/issues/6897> |
| Issue | #5681 | Microsoft.Extensions.Caching.Hybrid -> 9.0.0-preview.5.24306.11 issue - Expiration and LocalCacheExpiration no longer default options after entityframework upgrade | closed | kfaizullabhoyjjsnack | <https://github.com/dotnet/extensions/issues/5681> |
| Issue | #7565 | [Resilience] _CheckGrpcNetClientFactoryVersion target crashes on bracket-pinned Grpc.Net.ClientFactory | closed | Ghost93 | <https://github.com/dotnet/extensions/issues/7565> |
