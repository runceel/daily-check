# dotnet/aspnetcore

対象期間: 2026-06-29 01:00:01 〜 2026-06-30 01:54:59 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 5 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 7 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#62552](https://github.com/dotnet/aspnetcore/pull/62552) — Remove all SYSLIB0057 suppressions and replace obsolete X509Certificate2 constructors with X509CertificateLoader （PR / open / Copilot）
  - 影響: aspnetcore 内部コードのクリーンアップ PR（オープン中）。`X509Certificate2` の旧コンストラクタ利用を `X509CertificateLoader` に置換し SYSLIB0057 抑制を撤去するもので、公開 API の破壊的変更ではない。`X509Certificate2(byte[])` 等の旧コンストラクタで証明書をロードしているアプリは、同様に `X509CertificateLoader` への移行を検討するとよい。

## 主要な変更点

- **OpenAPI 3.2.0 対応の拡充**: SSE（Server-Sent Events）を OpenAPI で記述する対応（[#67461](https://github.com/dotnet/aspnetcore/pull/67461)）、タグメタデータの 3.2.0 初期化（[#67457](https://github.com/dotnet/aspnetcore/pull/67457)）など、OpenAPI ドキュメント生成まわりの機能追加が複数オープン。`Microsoft.OpenApi` の 3.7.0 への更新（[#67468](https://github.com/dotnet/aspnetcore/pull/67468)）も進行中。
- **ヘルスチェック API の拡張提案が活発**: `HealthCheckServiceOptions` を構成する `AddHealthChecks` オーバーロード追加の提案・PR（[#67420](https://github.com/dotnet/aspnetcore/pull/67420), [#67238](https://github.com/dotnet/aspnetcore/pull/67238), [#66774](https://github.com/dotnet/aspnetcore/pull/66774)）が複数寄せられた。長年の要望 Issue [#8530](https://github.com/dotnet/aspnetcore/issues/8530) に関連するが、いずれも今期間はクローズ（未マージ）。設計を集約する `IHealthChecksBuilder.ConfigureHealthCheckOptions` 案も出ている。
- **Blazor / Razor アナライザー**: クロージャ内で再利用される for ループ変数を検知する解析器を追加（[#67228](https://github.com/dotnet/aspnetcore/pull/67228) マージ済み、Issue [#65234](https://github.com/dotnet/aspnetcore/issues/65234)）。ラムダ・EventCallback・バインディングでループ変数をキャプチャする典型的なバグを警告できる。
- **データ保護の修正**: `IDataProtector` 解決時に `currentKeyRing` を先読みしてしまう問題の修正（[#67465](https://github.com/dotnet/aspnetcore/pull/67465) オープン）。
- **CSRF ミドルウェアの適用範囲調整**: 既定の CSRF ミドルウェアを `IAntiforgeryMetadata` でオプトインしたエンドポイントに限定する変更（[#67460](https://github.com/dotnet/aspnetcore/pull/67460) オープン）。
- 文化情報の永続化を公開 API にしない修正（[#67367](https://github.com/dotnet/aspnetcore/pull/67367) マージ済み）。そのほかはテスト隔離・依存更新・パフォーマンス回帰報告（bot）が中心。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67467 | Require re-quarantine actions to always get their own dedicated PR | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67467> |
| PR | #67466 | Do not report workflow failures for aspnetcore | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67466> |
| PR | #67459 | [test-quarantine] Quarantine CanDelegateOutOfProcess and re-quarantine RestartAppShouldNotAffectOtherApps | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67459> |
| PR | #67451 | [main] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67451> |
| PR | #67403 | Fix weak reference Kestrel test | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67403> |
| PR | #67367 | Fix culture persistence to not have public API | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67367> |
| PR | #67228 | Add For Loop Analyzer for variables used in closures. | merged | skrustev | <https://github.com/dotnet/aspnetcore/pull/67228> |
| PR | #67442 | Disable concurrent GC on macOS quarantine leg to avoid fork/GC deadlock | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67442> |
| PR | #67420 | Add IHealthChecksBuilder.ConfigureHealthCheckOptions extension | closed | bsallesp | <https://github.com/dotnet/aspnetcore/pull/67420> |
| PR | #67405 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67405> |
| PR | #67238 | Add AddHealthChecks(IServiceCollection, Action<HealthCheckServiceOptions>) overload | closed | SamoanProgrammer | <https://github.com/dotnet/aspnetcore/pull/67238> |
| PR | #66774 | Add AddHealthChecks(Action<HealthCheckServiceOptions>) overload | closed | KitKeen | <https://github.com/dotnet/aspnetcore/pull/66774> |
| PR | #67477 | Add safety comment to Utf8HashLookup | open | GrabYourPitchforks | <https://github.com/dotnet/aspnetcore/pull/67477> |
| PR | #67470 | Try a test run on OSX.27.Arm64 | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67470> |
| PR | #67469 | Avoid recompiling the shared framework when publishing to the layout root | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67469> |
| PR | #67468 | Update Microsoft.OpenApi to 3.7.0 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67468> |
| PR | #67465 | Fix eager load of currentKeyRing on resolving IDataProtector  | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67465> |
| PR | #67464 | [release/10.0] Update OpenApi to 2.7.5 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67464> |
| PR | #67463 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67463> |
| PR | #67461 | feat: adds support for describing SSE in OpenAPI 3.2.0 | open | baywet | <https://github.com/dotnet/aspnetcore/pull/67461> |
| PR | #67460 | Scope default CSRF middleware to endpoints opting in via `IAntiforgeryMetadata` | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67460> |
| PR | #67457 | feat: adds support for initializing the OpenAPI document for tag metadata in 3.2.0 | open | baywet | <https://github.com/dotnet/aspnetcore/pull/67457> |
| PR | #67456 | Add additionalProperties for JsonExtensionData schemas | open | mete0rfish | <https://github.com/dotnet/aspnetcore/pull/67456> |
| PR | #67455 | Fix ambiguous hidden-property lookup in validation | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67455> |
| PR | #67453 | [release/10.0] Backport fix for handling of expired client-persisted circuit state | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67453> |
| PR | #67452 | Fix 67285 parameter view cast message | open | dx3mirror | <https://github.com/dotnet/aspnetcore/pull/67452> |
| Issue | #67476 | [API Proposal] Expose ZstandardDecompressionOptions | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/67476> |
| Issue | #67474 | Perf regression: https, json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67474> |
| Issue | #67475 | Perf regression: json, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67475> |
| Issue | #67473 | Perf regression: json, json, mvc | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67473> |
| Issue | #67472 | Perf regression: fortunes_dapper, fortunes_ef, json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67472> |
| Issue | #67471 | Perf improvement: json | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67471> |
| Issue | #67462 | OpenIdConnectHandler does not validate auth_time against configured MaxAge on the callback | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67462> |
| Issue | #67458 | Quarantine Microsoft.AspNetCore.Server.HttpSys.NonHelixTests.DelegateOutOfProcTests.CanDelegateOutOfProcess | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67458> |
| Issue | #67454 | [API proposal]: `ValidatablePropertyInfo.GetPropertyValue(object containingObject)` | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67454> |
| Issue | #67450 | Perf improvement: updates | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67450> |
| Issue | #67382 | [aw] Daily Test Quarantine Management failed | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67382> |
| Issue | #66829 | API Proposal: CulturePersistance from WebAssembly | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/66829> |
| Issue | #66718 | Improve documentation on role or user change during SignalR connection lifetime | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/66718> |
| Issue | #65490 | OpenAPI 3.2.0 - aspnet11 - default emitted version to 3.2.0 | closed | baywet | <https://github.com/dotnet/aspnetcore/issues/65490> |
| Issue | #65234 | [Blazor] Add Razor analyzer to warn when for-loop iterator variable is captured in lambdas, EventCallbacks, or data binding expressions | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/65234> |
| Issue | #8530 | services.AddHealthChecks missing overload that takes delegate for configuring HealthChecksOptions | closed | DamianEdwards | <https://github.com/dotnet/aspnetcore/issues/8530> |
