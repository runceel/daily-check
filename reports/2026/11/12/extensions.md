# dotnet/extensions

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 10 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 8 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更（preview API）** [dotnet/extensions#7588](https://github.com/dotnet/extensions/pull/7588)：本文で旧 interface から抽象 `DocumentExtractionClient` への置換を明記しています。独自 provider と consumer は一緒に移行・再ビルドしてください。自動分類では検出されなかった重要点です。

## 主要な変更点

- dotnet/extensions#7835 は共有の実験的 Documents モデルを追加。section・text・image・table と位置情報を、provider や ingestion から独立して扱います。
- dotnet/extensions#7588 はその `ExtractionDocument` を返す抽象 `DocumentExtractionClient`、middleware builder、DI 登録を追加。preview interface の置換に伴う **ソース／バイナリ互換性の変更**に注意してください。
- dotnet/extensions#7568 は factory が生成値に応じて cache options を調整する `HybridCacheEntryContext` 対応と `LocalSize` を実装。.NET 8 / 9 向けには新 API を含めないため、ターゲット別に確認が必要です。
- dotnet/extensions#7814 は古いキャンセル済み処理が新しい stampede state を削除する競合を修正し、同じ key の重複 factory 実行を抑えます。
- dotnet/extensions#7923 は unsupported-TFM 警告を削除しますが、.NET Framework の公式サポートを拡大しません。dotnet/extensions#7925 の opt-in legacy 依存帯変更も、TFM の保持と分けて確認してください。
- 承認済み function call の message 保持、route parameter redaction、GenAI modality 修正は未マージであり、現行の解決済み動作として扱いません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7935 | Merge published release into release/11.0 | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7935> |
| PR | #7923 | Remove unsupported-TFM package warnings | merged | Copilot | <https://github.com/dotnet/extensions/pull/7923> |
| PR | #7930 | Fix PAT pool validation | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7930> |
| PR | #7568 | Add HybridCache.GetOrCreateAsync overloads for dynamic setting of options | merged | svick | <https://github.com/dotnet/extensions/pull/7568> |
| PR | #7920 | Add VectorData DI conformance tests for embedding generator per scope | merged | Empiree | <https://github.com/dotnet/extensions/pull/7920> |
| PR | #7925 | Use latest dependency band for opted-in legacy targets | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7925> |
| PR | #7922 | Update docs for API review and experimental API expectations | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7922> |
| PR | #7814 | Fix HybridCache stampede state removal race | merged | svick | <https://github.com/dotnet/extensions/pull/7814> |
| PR | #7588 | Add experimental document extraction over shared Documents abstractions | merged | luisquintanilla | <https://github.com/dotnet/extensions/pull/7588> |
| PR | #7835 | Add experimental shared Documents abstractions | merged | luisquintanilla | <https://github.com/dotnet/extensions/pull/7835> |
| PR | #7862 | Update SDK and dotnet version to 10.0.402 | closed | wtgodbe | <https://github.com/dotnet/extensions/pull/7862> |
| PR | #7933 | Fix route parameter redaction for actions sharing a route template | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7933> |
| PR | #7938 | Send compact JSON in chat tool payloads | open | valkiara | <https://github.com/dotnet/extensions/pull/7938> |
| PR | #7939 | Bump PowerShell from 7.6.9 to 7.7.0 | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7939> |
| PR | #7937 | Merge release/11.0 into main | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7937> |
| PR | #7936 | Fix missing GenAI modality for non-media content parts | open | ganga1980 | <https://github.com/dotnet/extensions/pull/7936> |
| PR | #7932 | Filter PR coverage comments to relevant projects | open | svick | <https://github.com/dotnet/extensions/pull/7932> |
| PR | #7931 | Forward IsExternalInit from the .NET builds of Microsoft.Extensions.VectorData.Abstractions | open | Laurianti | <https://github.com/dotnet/extensions/pull/7931> |
| PR | #7926 | Keep approved function calls in the message they were returned in | open | EnesKartal | <https://github.com/dotnet/extensions/pull/7926> |
| Issue | #7940 | ServiceEndpointWatcher logs normal cancellation as an error | open | SonicGD | <https://github.com/dotnet/extensions/issues/7940> |
| Issue | #7934 | `VectorStoreVectorAttribute.Dimensions` should be passed to `EmbeddingGenerationOptions.Dimensions` | open | RamType0 | <https://github.com/dotnet/extensions/issues/7934> |
| Issue | #7929 | [AI Evaluation] First-class repetitions: run a scenario N times and judge it on the share of repetitions that passed | open | Krzysztof318 | <https://github.com/dotnet/extensions/issues/7929> |
| Issue | #7928 | [AI Evaluation] Report Cases tab: group cases by scenario (and optionally by a tag prefix) instead of one flat row per iteration | open | Krzysztof318 | <https://github.com/dotnet/extensions/issues/7928> |
| Issue | #7927 | [MEDI] Community sample: a video reader for Microsoft.Extensions.DataIngestion | open | bisforboman | <https://github.com/dotnet/extensions/issues/7927> |
| Issue | #7924 | CI failure: NullReferenceException in HttpRequestLatencyListenerTest.HttpRequestLatencyListener_OnEventSourceCreated_NonHttpSources | open | svick | <https://github.com/dotnet/extensions/issues/7924> |
| Issue | #5162 | Confusing warning when Extensions are used with .NET Framework TFM | closed | xakep139 | <https://github.com/dotnet/extensions/issues/5162> |
| Issue | #7669 | HybridCache: Add HybridCache.GetOrCreateAsync overloads for dynamic setting of options | closed | svick | <https://github.com/dotnet/extensions/issues/7669> |
