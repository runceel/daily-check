# dotnet/extensions

対象期間: 2026-06-20 10:51:22 〜 2026-06-23 06:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7579](https://github.com/dotnet/extensions/pull/7579) — Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability in AI templates （PR / open / Copilot）
  AI テンプレートを使う環境では、依存ライブラリの脆弱性対応が反映されているかを確認し、テンプレートの再生成や依存更新を見直してください。

## 主要な変更点

- SQLitePCLRaw の脆弱性修正が最も重要で、AI テンプレートの依存関係を使う開発者は再ビルドや再生成の確認が必要です。
- ドキュメントと評価系の改善要求がいくつかあり、MEAI.Evaluation.Quality の判断モデル互換性やエラー報告の扱いが課題として挙がっています。
- 期間内の PR / Issue は新規オープンが中心で、実装面の大きな追加は確認されませんでした。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7579 | Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability in AI templates | open | Copilot | <https://github.com/dotnet/extensions/pull/7579> |
| Issue | #7581 | Docs: MEAI.Evaluation.Quality should specify supported judge model families (reasoning models are silently incompatible) | open | leslierichardson95 | <https://github.com/dotnet/extensions/issues/7581> |
| Issue | #7580 | MEAI.Evaluation.Quality: judge HTTP errors recorded as silent per-metric error rows; tests exit 0 with operationally-useless report | open | leslierichardson95 | <https://github.com/dotnet/extensions/issues/7580> |
| Issue | #7578 | Microsoft.Extensions.AI.Templates tests are failing  due to SQLitePCLRaw.lib.e_sqlite3 vuln | open | adamsitnik | <https://github.com/dotnet/extensions/issues/7578> |
| Issue | #6755 | [MEAI/MEVD] How can I get the number of dimensions for given VectorStore? | closed | adamsitnik | <https://github.com/dotnet/extensions/issues/6755> |
