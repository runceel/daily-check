# dotnet/extensions

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 6 |
| 新規 Issue                 | 8 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7705](https://github.com/dotnet/extensions/pull/7705) — [Infrastructure] Update vulnerable npm dependencies （PR / merged / wtgodbe）
評価レポート用 TypeScript tooling の脆弱な npm 依存を更新しました。該当する開発・CI 環境は lockfile とビルド成果物を更新し、残存する脆弱性がないか確認してください。

## 主要な変更点

- 評価レポート用 TypeScript の脆弱な npm 依存を更新し、関連ブラウザマッピング／`adm-zip` 依存も更新しました（[#7705](https://github.com/dotnet/extensions/pull/7705)、[#7733](https://github.com/dotnet/extensions/pull/7733)、[#7763](https://github.com/dotnet/extensions/pull/7763)）。
- Microsoft.Extensions.AI の評価処理では、GLEU を最適一致の reference と比較する変更がマージされました（[#7768](https://github.com/dotnet/extensions/pull/7768)）。
- `SimpleWordTokenizer` が数値トークンへ句読点を誤って付ける問題を修正しました（[#7766](https://github.com/dotnet/extensions/pull/7766)）。
- Azure DevOps plugin の npm 失敗をビルドが見逃して古い依存を package し得る問題が報告されています（[#7777](https://github.com/dotnet/extensions/issues/7777)）。
- HybridCache の tag invalidation 競合に関する issue もオープンで、該当するキャッシュ利用者は解決状況を確認してください（[#7771](https://github.com/dotnet/extensions/issues/7771)）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7733 | Bump browserslist from 4.28.2 to 4.28.8 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7733> |
| PR | #7767 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7767> |
| PR | #7762 | Bump dotnet-coverage from 18.10.0 to 18.11.2 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7762> |
| PR | #7763 | Bump adm-zip from 0.6.0 to 0.6.1 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7763> |
| PR | #7768 | Score GLEU against the best matching reference | merged | tahakocal | <https://github.com/dotnet/extensions/pull/7768> |
| PR | #7766 | Fix tokenizer attaching punctuation to number tokens | merged | tahakocal | <https://github.com/dotnet/extensions/pull/7766> |
| PR | #7755 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7755> |
| PR | #7750 | Bump baseline-browser-mapping from 2.10.37 to 2.11.21 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | closed | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7750> |
| PR | #7747 | Bump dotnet-coverage from 18.10.0 to 18.11.0 | closed | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7747> |
| PR | #7779 | Identify the parameter in AIFunctionFactory argument conversion errors | open | mauri0686 | <https://github.com/dotnet/extensions/pull/7779> |
| PR | #7778 | Fail Azure DevOps plugin builds on npm errors | open | Copilot | <https://github.com/dotnet/extensions/pull/7778> |
| PR | #7761 | Upgrade OpenAI SDK to 2.14.0 | open | zxyao145 | <https://github.com/dotnet/extensions/pull/7761> |
| PR | #7769 | Order iteration results numerically | open | tahakocal | <https://github.com/dotnet/extensions/pull/7769> |
| PR | #7774 | Yield final image when streaming with HostedImageGenerationTool | open | iamAdarshh | <https://github.com/dotnet/extensions/pull/7774> |
| PR | #7773 | Add early log sampling hook | open | amadeuszl | <https://github.com/dotnet/extensions/pull/7773> |
| Issue | #7777 | Azure DevOps plugin build can ignore npm failures and package stale dependencies | open | jozkee | <https://github.com/dotnet/extensions/issues/7777> |
| Issue | #7776 | Make RemoveAllResilienceHandlers no longer experimental | open | Duranom | <https://github.com/dotnet/extensions/issues/7776> |
| Issue | #7775 | Race in ReflectionAIFunctionDescriptor: a DI-bound parameter can leak into the published JSON schema | open | sdruckerfig | <https://github.com/dotnet/extensions/issues/7775> |
| Issue | #7764 | [API Proposal]: Add a provider-neutral abstraction for decision-oriented AI models | open | mo3in | <https://github.com/dotnet/extensions/issues/7764> |
| Issue | #7771 | HybridCache: a tag removal is missed and the invalidated L2 entry served, when the tag's invalidation timestamp is still in flight | open | Aiddy81 | <https://github.com/dotnet/extensions/issues/7771> |
| Issue | #7765 | SimpleWordTokenizer attaches trailing punctuation to number tokens | closed | tahakocal | <https://github.com/dotnet/extensions/issues/7765> |
| Issue | #7770 | [MEVD] Expose an ability to make any VectorStoreDataProperty non-nullable | open | adamsitnik | <https://github.com/dotnet/extensions/issues/7770> |
| Issue | #7760 | Request to upgrade OpenAI library to 2.14.0 to fix bugs in OpenAI 2.13.0 | open | zxyao145 | <https://github.com/dotnet/extensions/issues/7760> |
| Issue | #7740 | Microsoft.Extensions.AI.OpenAI nuget package constrains OpenAI to <2.13.0 | closed | AdmiralSnyder | <https://github.com/dotnet/extensions/issues/7740> |
