# dotnet/extensions

対象期間: 2026-08-13 00:02:03 〜 2026-08-17 01:55:27 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7628](https://github.com/dotnet/extensions/issues/7628) — OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume （Issue / closed / rogerbarreto）
  OpenAI Responses の暗号化 reasoning を `store=false` で再開する利用者は、欠落する reasoning item ID により継続できないため、修正版の適用状況と再開経路を確認してください。

## 主要な変更点

- OpenAI Responses の暗号化 reasoning 再開で ID が欠落する問題が報告され、`store=false` 利用者は継続処理を確認する必要があります。
- `TfxInstaller` が追加され、公開時に TFX を導入するパッケージング経路が整備されました。
- AI Chat Web テンプレートでは Foundry Local のチャット／埋め込みプロバイダー対応 PR がクローズされました。
- `ChatResponseUpdate.Clone` の `ContinuationToken` 欠落を修正する PR がオープン中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7695 | Add TfxInstaller for publishing | merged | peterwald | <https://github.com/dotnet/extensions/pull/7695> |
| PR | #7586 | Add Foundry Local as a chat and embedding provider in the AI Chat Web template | closed | luisquintanilla | <https://github.com/dotnet/extensions/pull/7586> |
| PR | #7699 | Fix ChatResponseUpdate.Clone dropping ContinuationToken | open | dfedoryshchev | <https://github.com/dotnet/extensions/pull/7699> |
