# dotnet/extensions

対象期間: 2026-11-12 00:51:15 〜 2026-11-16 05:01:57 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7832](https://github.com/dotnet/extensions/pull/7832) — Bump source-map-js from 1.2.1 to 1.2.2 in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript （PR / merged / dependabot[bot]）
AI Evaluation Reporting の TypeScript 依存が更新されました。該当レポートを利用する場合は `source-map-js` 1.2.2 を含む更新を確認してください。
- **⚠ セキュリティ** [#7826](https://github.com/dotnet/extensions/issues/7826) — HttpRouteFormatter - Log redaction leaks replayable bearer token （Issue / closed / evgenyfedorov2）
HttpRouteFormatter のログ redaction で再利用可能な bearer token が漏れる報告はクローズされました。該当 formatter のログを扱う利用者は、修正が含まれる版を確認し、ログへの資格情報出力を避けてください。

## 主要な変更点

- AI Evaluation Reporting の `source-map-js` が 1.2.2 に更新され、HttpRouteFormatter の bearer token redaction に関する報告 (#7826) はクローズされました。
- #7933 で同じ route template を共有する action の route parameter redaction が修正され、ログ上の値の扱いが改善されています。
- #7943 では Aspire.Hosting.AppHost を 13.6.5 に更新し、AI template の MessagePack version pin を削除しました。
- オープン PR では histogram 属性への `HistogramBucketBoundaries` 追加、OpenAI SDK 2.15 更新、Embedding の Dimensions 伝搬などが提案されています。
- 新規 Issue #7945 は .NET 10 で Logging.Abstractions 11.0.0 と Telemetry.Abstractions を併用した際の CS0757 を報告しています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7933 | Fix route parameter redaction for actions sharing a route template | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7933> |
| PR | #7943 | Bump Aspire.Hosting.AppHost to 13.6.5 and remove MessagePack pin in AI template | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7943> |
| PR | #7947 | Add HistogramBucketBoundaries to the histogram attributes | open | dhhoang | <https://github.com/dotnet/extensions/pull/7947> |
| PR | #7948 | [MEAI] Update OpenAI SDK to 2.15 | open | rogerbarreto | <https://github.com/dotnet/extensions/pull/7948> |
| PR | #7946 | [release/10.0] Remove unsupported-TFM package warnings | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7946> |
| PR | #7944 | HttpServiceEndpointResolver is never disposed: leaks a timer per handler rotation and keeps disposed service providers alive | open | bbartels | <https://github.com/dotnet/extensions/pull/7944> |
| PR | #7941 | Pass vector property Dimensions to EmbeddingGenerationOptions | open | iamAdarshh | <https://github.com/dotnet/extensions/pull/7941> |
| Issue | #7945 | CS0757 in a net10.0 web project when Microsoft.Extensions.Logging.Abstractions 11.0.0 and Microsoft.Extensions.Telemetry.Abstractions are both referenced | open | JonathanSchmidt | <https://github.com/dotnet/extensions/issues/7945> |
| Issue | #7942 | AI template AppHost restore fails with NU1903 for Aspire.Hosting.AppHost 13.4.6 | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/issues/7942> |
