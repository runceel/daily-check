# dotnet/extensions

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7628](https://github.com/dotnet/extensions/issues/7628) — OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume （Issue / closed / rogerbarreto）
  OpenAI Responses の暗号化 reasoning を `store=false` で再開する利用者は、reasoning item ID の往復処理を含む修正版へ更新してください。
- **⚠ セキュリティ** [#7561](https://github.com/dotnet/extensions/pull/7561) — Fix transitive MessagePack vulnerability in AI template AppHost projects （PR / merged / Copilot）
  AI template の AppHost プロジェクト利用者は、推移依存の MessagePack 脆弱性を修正した依存関係へ更新してください。
- **⚠ セキュリティ** [#7560](https://github.com/dotnet/extensions/pull/7560) — Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template （PR / merged / Copilot）
  AI Chat Web template の利用者は MessagePack を 2.5.301 に固定する修正を取り込み、脆弱性対応済みであることを確認してください。
- **非推奨/廃止** [#7341](https://github.com/dotnet/extensions/issues/7341) — Update evaluator prompts to work with newer models since GPT-4o is slated for retirement. （Issue / open / CHR-LeeOlsen）
  GPT-4o の退役予定に備え、評価プロンプトを新しいモデル向けに更新する必要があるため、評価運用の担当者は移行計画を確認してください。

## 主要な変更点

- ⚠ OpenAI Responses の encrypted reasoning を `store=false` で再開する際の item ID 欠落が修正され、ステートレスな会話継続が改善されました。
- ⚠ AI templates の MessagePack 脆弱性対応として、依存パッケージの更新・固定がマージされています。
- GPT-4o 退役に向け、評価プロンプトを新しいモデルへ対応させる課題が継続しています。
- HTTP リクエスト遅延ログの experimental enricher が追加され、AIFunctionFactory の二重エンコード JSON への耐性も改善されました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7632 | Merge release/10.8 into main | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7632> |
| PR | #7629 | Roundtrip OpenAI Responses reasoning item id for stateless (store=false) encrypted reasoning | merged | rogerbarreto | <https://github.com/dotnet/extensions/pull/7629> |
| PR | #7602 | Add HTTP request latency log enricher (experimental) | merged | EasyL0ver | <https://github.com/dotnet/extensions/pull/7602> |
| PR | #7630 | Tolerate JsonElement string-wrapped (double-encoded) JSON tool-call arguments in AIFunctionFactory | closed | flaviocdc | <https://github.com/dotnet/extensions/pull/7630> |
| PR | #7636 | Move Microsoft.Extensions.VectorData.ConformanceTests to xUnit 3 | open | Copilot | <https://github.com/dotnet/extensions/pull/7636> |
| Issue | #7635 | MEAI: OpenAI - Expose 'cache_write_tokens' | open | rwjdk | <https://github.com/dotnet/extensions/issues/7635> |
| Issue | #7634 | Microsoft.Gen.Logging  does not clear  ThreadLocalState  when  ILogger.Log  throws | open | jboelter | <https://github.com/dotnet/extensions/issues/7634> |
| Issue | #7628 | OpenAI Responses: reasoning item id dropped for encrypted reasoning, breaking (store=false) resume | closed | rogerbarreto | <https://github.com/dotnet/extensions/issues/7628> |
