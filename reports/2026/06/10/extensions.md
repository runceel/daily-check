# dotnet/extensions

対象期間: 2026-06-08 23:38:56 〜 2026-06-09 23:05:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- 期間内は **破壊的変更・セキュリティ重大更新・非推奨/GA 昇格の自動検出はなし**で、比較的安定した更新傾向でした。  
- マージ済みでは release ブランチ統合作業（#7556, #7554）と、`dotnet-coverage` 更新（#7552）が中心です。  
- 機能面では `ToolJson.AdditionalProperties` の sub-schema 受け入れ修正（#7547）が入り、AI ツールスキーマの扱いが改善されています。  
- open には OpenTelemetry 1.15.x への更新で CVE 対応を狙う PR（#7555）があり、セキュリティ維持の観点で次回のマージ有無を確認する価値があります。  
- 併せて HTTP クライアントログ分類の構成バインド不整合（#7553 / #7551）と `ToolApprovalRequestContent.IsInvokerRequested` 追加（#7549 / #7550）が進行中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7556 | Merge release/10.7 into main | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7556> |
| PR | #7554 | Merge published release into release/10.7 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7554> |
| PR | #7552 | Bump dotnet-coverage from 18.7.0 to 18.8.0 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7552> |
| PR | #7547 | [release/10.7] Fix ToolJson.AdditionalProperties to accept sub-schema objects | merged | github-actions[bot] | <https://github.com/dotnet/extensions/pull/7547> |
| PR | #7555 | Bump OpenTelemetry packages to 1.15.x in project templates to fix CVEs | open | Copilot | <https://github.com/dotnet/extensions/pull/7555> |
| PR | #7553 | Fix configuration binding for HTTP client logging data classifications | open | Marcus-Kanon | <https://github.com/dotnet/extensions/pull/7553> |
| PR | #7549 | Add ToolApprovalRequestContent.IsInvokerRequested | open | javiercn | <https://github.com/dotnet/extensions/pull/7549> |
| Issue | #7551 | AddExtendedHttpClientLogging(configurationSection) fails with the documented appsettings.json sample for RequestHeadersDataClasses | open | Marcus-Kanon | <https://github.com/dotnet/extensions/issues/7551> |
| Issue | #7550 | [Microsoft.Extensions.AI] Add ToolApprovalRequestContent.IsInvokerRequested | open | javiercn | <https://github.com/dotnet/extensions/issues/7550> |
