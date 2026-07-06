# dotnet/aspnetcore

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 11 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#66822](https://github.com/dotnet/aspnetcore/issues/66822) — *Breaking change* ASP.NET Core Components telemetry requires `System.Diagnostics.Metrics.Meter.IsSupported` in .NET 11 preview （Issue / closed / Kielek）
  Blazor/Components を使う実装では、.NET 11 preview でのメトリクス要件変更に合わせて実装・テストを確認する必要があります。
- **⚠ セキュリティ** [#67559](https://github.com/dotnet/aspnetcore/issues/67559) — Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData （Issue / open / rokonec）
  認可ポリシーや要件データの扱いに関わるセキュリティガードの抜け漏れがあるため、認可周りのテストと運用確認を進めるとよいです。
- **⚠ セキュリティ** [#67543](https://github.com/dotnet/aspnetcore/issues/67543) — [NETSDKE2E][ARM64 Only] NET10.0.301 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project （Issue / closed / v-huiwong）
  依存関係の脆弱性警告に関する既知事象で、NuGet パッケージ更新前に影響範囲を確認しておくと安心です。

## 主要な変更点

- Blazor WebAssembly のスタンドアロン HTTPS 失敗を修正する PR が複数マージされ、ゲートウェイ経由の開発・検証環境での接続信頼性が改善されています。
- `MapFallback` と request delegate generator の扱いを直す修正により、フォールバックルーティングや生成コード経由のルート解決での挙動が安定化しています。
- Data Protection の鍵解決の遅延読み込みや性能改善により、初回のプロテクター解決でのオーバーヘッドを抑えられる見込みです。
- セキュリティメタデータの未処理ケースに関する課題は残っており、認可ポリシーや要求データの扱いを確認する運用が必要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67565 | [release/11.0-preview6] Fix Blazor WASM Standalone HTTPS failure with Gateway | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67565> |
| PR | #67562 | Fix MapFallback handling in RDG | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67562> |
| PR | #67547 | Fix Blazor WASM Standalone HTTPS failure with Gateway | merged | lewing | <https://github.com/dotnet/aspnetcore/pull/67547> |
| PR | #67488 | Fix CsrfProtectionMiddleware perf degradations | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67488> |
| PR | #67465 | Fix eager load of currentKeyRing on resolving IDataProtector  | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67465> |
| PR | #67428 | Fix typos in code | merged | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67428> |
| PR | #64617 | Reduce unsafe usage in AdaptiveCapacityDictionary | merged | GrabYourPitchforks | <https://github.com/dotnet/aspnetcore/pull/64617> |
| PR | #67561 | aspnetcore-setup | closed | voltap9090 | <https://github.com/dotnet/aspnetcore/pull/67561> |
| PR | #67385 | Fix preview 5 regression for OpenApi nullable enums | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67385> |
| PR | #67555 | Fix Virtualize AnchorMode=End re-engaging bottom after user scrolls up. | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67555> |
| PR | #67553 | Skip registering event handlers when delegate is null | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67553> |
| Issue | #67566 | Perf improvement: kestrel-encoded-url | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/67566> |
| Issue | #67563 | tablo | closed | xrdyusuf21-web | <https://github.com/dotnet/aspnetcore/issues/67563> |
| Issue | #67560 | package Microsoft.AspNetCore.Mvc.Core 2.3.11 does not contain Extensions dictionary in ProblemDetails | closed | janseris | <https://github.com/dotnet/aspnetcore/issues/67560> |
| Issue | #67559 | Unhandled-security-metadata guard misses AuthorizationPolicy and IAuthorizationRequirementData | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67559> |
| Issue | #67557 | OpenApi: OAS 3.1 enum component schema changes depending on nullable/non-nullable references | closed | Grynet | <https://github.com/dotnet/aspnetcore/issues/67557> |
| Issue | #67556 | [FromQuery] Model binding property is filled with a random value when query doesn't contain the property | open | zwcloud | <https://github.com/dotnet/aspnetcore/issues/67556> |
| Issue | #67554 | Thanks for your PR, @socialsigninsupporthub. Someone from the team will get assigned to your PR shortly and we'll get it reviewed. | closed | socialsigninsupporthub | <https://github.com/dotnet/aspnetcore/issues/67554> |
| Issue | #67543 | [NETSDKE2E][ARM64 Only] NET10.0.301 throw "warning NU1903: Package 'Microsoft.OpenApi' 2.0.0 has a known high severity vulnerability" in C# Web API project | closed | v-huiwong | <https://github.com/dotnet/aspnetcore/issues/67543> |
| Issue | #67484 | [area-blazor]'Unable to connect to 'https'' when running Blazor WebAssembly Standalone project with https | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/67484> |
| Issue | #67447 | Data Protection: CreateProtector reads the key store eagerly on .NET 11 (was lazy until first Protect/Unprotect on .NET 10) | closed | KennethHoff | <https://github.com/dotnet/aspnetcore/issues/67447> |
| Issue | #67370 | Microsoft.AspNetCore.Http 2.3.x packages don't clearly indicate they are only intended for ASP.NET Core on .NET Framework | closed | Frulfump | <https://github.com/dotnet/aspnetcore/issues/67370> |
| Issue | #67204 | Documentation lack of clarity regarding KestrelServerLimits.MaxRequestLineSize in HTTP/2 | closed | Bot-GJ16 | <https://github.com/dotnet/aspnetcore/issues/67204> |
| Issue | #65992 | The "pattern" paramter of Microsoft.AspNetCore.Builder.EndpointRouteBuilderExtensions.MapFallback is ignored when EnableRequestDelegateGenerator is true | closed | johanpolson | <https://github.com/dotnet/aspnetcore/issues/65992> |
| Issue | #28669 | Encoder abstraction for SignalR.StackExchangeRedis pub/sub messages | closed | tylerohlsen | <https://github.com/dotnet/aspnetcore/issues/28669> |
