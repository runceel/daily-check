# dotnet/extensions

対象期間: 2026-06-23 06:00:53 〜 2026-06-25 00:23:12 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除してよいです。 -->
- **⚠ セキュリティ** [#7582](https://github.com/dotnet/extensions/pull/7582) — Backport #7579: Replace SemanticKernel connectors with CommunityToolkit to fix SQLitePCLRaw vulnerability （PR / closed / Copilot）
  既存ブランチや安定版ラインで同じ脆弱性の影響を受ける環境は、バックポート内容を確認して展開計画を立てておくとよいでしょう。
- **⚠ セキュリティ** [#7579](https://github.com/dotnet/extensions/pull/7579) — Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability by replacing SemanticKernel connectors with CommunityToolkit （PR / merged / Copilot）
  Semantic Kernel connector を使っている実装は、依存関係の差し替えによる影響を確認して、必要に応じてパッケージ更新を行ってください。

## 主要な変更点

- 期間内の重点は、SQLitePCLRaw の脆弱性を修正するための依存関係置き換えと、それを安定版へバックポートする作業でした。
- 依存関係の更新として PowerShell 7.6.3 への更新と、TypeScript 側の js-yaml 4.2.0 への更新も含まれており、運用面では小さな保守改善が続いています。
- 変更の中心はセキュリティ修正で、通常の機能追加よりもパッケージ依存関係の見直しとリリース影響の確認が重要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7583 | Merge main into data-ingestion-preview2 | merged | Copilot | <https://github.com/dotnet/extensions/pull/7583> |
| PR | #7579 | Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability by replacing SemanticKernel connectors with CommunityToolkit | merged | Copilot | <https://github.com/dotnet/extensions/pull/7579> |
| PR | #7576 | Bump PowerShell from 7.6.2 to 7.6.3 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7576> |
| PR | #7570 | Bump js-yaml from 4.1.1 to 4.2.0 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7570> |
| PR | #7582 | Backport #7579: Replace SemanticKernel connectors with CommunityToolkit to fix SQLitePCLRaw vulnerability | closed | Copilot | <https://github.com/dotnet/extensions/pull/7582> |
| Issue | #7578 | Microsoft.Extensions.AI.Templates tests are failing  due to SQLitePCLRaw.lib.e_sqlite3 vuln | closed | adamsitnik | <https://github.com/dotnet/extensions/issues/7578> |
