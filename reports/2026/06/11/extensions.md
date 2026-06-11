# dotnet/extensions

対象期間: 2026-06-09 23:05:02 〜 2026-06-11 00:49:32 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- マージ済み PR #7555 では、プロジェクトテンプレート内の CVE 対応として OpenTelemetry と Agents.AI パッケージのバージョン更新がバックポートされています。
- 自動判定では重要項目なしですが、#7555 は CVE 修正に関係するため、テンプレートから生成するプロジェクトやバックポート対象ブランチでは取り込み状況を確認する価値があります。
- オープン PR #7557 では `Embedding` プロパティの型を `string` から `AIContent` に変更する提案が出ており、API 形状に影響する可能性があります。
- Issue #7527 と #7502 はクローズされ、カスタム middleware からの `DelegatingAIFunction.InnerFunction` アクセスや Dynamic Approval Required Capabilities の議論は一区切りです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7555 | Backport OpenTelemetry and Agents.AI package version bumps to fix CVEs in project templates | merged | Copilot | <https://github.com/dotnet/extensions/pull/7555> |
| PR | #7557 | Change Embedding property type from string to AIContent | open | Copilot | <https://github.com/dotnet/extensions/pull/7557> |
| Issue | #7527 | [Feature Request]: Expose DelegatingAIFunction.InnerFunction as Public for Custom Middleware Access | closed | Jimex | <https://github.com/dotnet/extensions/issues/7527> |
| Issue | #7502 | [API Proposal]: Dynamic Approval Required Capabilities | closed | gjz22 | <https://github.com/dotnet/extensions/issues/7502> |
