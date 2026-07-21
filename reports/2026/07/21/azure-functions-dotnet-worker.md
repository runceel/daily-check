# Azure/azure-functions-dotnet-worker

対象期間: 2026-07-17 00:36:43 〜 2026-07-21 00:15:24 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 9 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 5 |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [#3457](https://github.com/Azure/azure-functions-dotnet-worker/pull/3457) — preview の `Azure.Functions.Sdk` から暗黙の Worker package 参照が削除されたため、アプリは `Microsoft.Azure.Functions.Worker` を直接または推移的に参照する必要があります。参照が無い場合は新しい `AZFW0111` 警告が発生します。
- **⚠ セキュリティ** [#3448](https://github.com/Azure/azure-functions-dotnet-worker/pull/3448) — ZipDeploy のログから URL の user info、query、fragment を除去し、資格情報や SAS token が CI ログへ露出する経路を閉じました。

## 主要な変更点

- [#3457](https://github.com/Azure/azure-functions-dotnet-worker/pull/3457) は `Azure.Functions.Sdk` の暗黙 Worker 参照による NuGet downgrade と実行時 `MissingMethodException` を解消しますが、利用側で Worker package の明示的な参照が必要になる**破壊的変更**です。
- [#3459](https://github.com/Azure/azure-functions-dotnet-worker/pull/3459) により、`net11.0` を従来の Worker SDK でビルドすると、.NET 11 対応の `Azure.Functions.Sdk` へ移行するよう明示的な警告が表示されます。
- [#3448](https://github.com/Azure/azure-functions-dotnet-worker/pull/3448) は ZipDeploy URL の資格情報・query・fragment をログから除去し、CI/CD ログでの secret 漏えいを防止します。
- extension restore source の解決安定化 [#3452](https://github.com/Azure/azure-functions-dotnet-worker/pull/3452)、生成 extension project の設定整理 [#3456](https://github.com/Azure/azure-functions-dotnet-worker/pull/3456)、FunctionsNetHost 1.0.15 更新 [#3461](https://github.com/Azure/azure-functions-dotnet-worker/pull/3461) もマージされています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #3464 | ci: use ubuntu 22.04 image | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3464> |
| PR | #3463 | Switch CI core tools install to Azure Functions CDN | merged | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3463> |
| PR | #3462 | Release Prep for ASP.NET HTTP Extension | merged | satvu | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3462> |
| PR | #3461 | chore(host): bump FunctionsNetHost to 1.0.15 | merged | Copilot | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3461> |
| PR | #3459 | feat(sdk): warn to migrate to Azure.Functions.Sdk when targeting net11.0 | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3459> |
| PR | #3457 | fix(sdk): remove implicit Worker package reference | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3457> |
| PR | #3456 | refactor(sdk): expand removed props and pin release config for generated extension project | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3456> |
| PR | #3452 | fix(sdk): reliably resolve extension restore sources | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3452> |
| PR | #3448 | fix(sdk): redact sensitive info from ZipDeploy logs | merged | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3448> |
| PR | #3468 | refactor(sdk): replace Mono.Cecil with System.Reflection.MetadataLoadContext | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3468> |
| PR | #3467 | chore: prep for SDK releases | open | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3467> |
| PR | #3466 | Add configurable MaxTelemetryBufferDelay option for Application Insights | open | RohitRanjanMS | <https://github.com/Azure/azure-functions-dotnet-worker/pull/3466> |
| Issue | #3465 | Make Application Insights ServerTelemetryChannel flush interval (MaxTelemetryBufferDelay) configurable in the worker | open | RohitRanjanMS | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3465> |
| Issue | #3460 | Request for Guidance on publishing azure functions in cd/ci pipeline (yml) | open | HenrikGustafsson | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3460> |
| Issue | #3450 | OpenTelemetry breaks new Azure MSBuild SDK 0.4.0 based project (System.MissingMethodException) | closed | sherman89 | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3450> |
| Issue | #3435 | .NET 11 Worker Sdk updates | closed | kshyju | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3435> |
| Issue | #3399 | [SDK] Evaluate & expand list of removed props for `azure_functions.g.csproj` | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3399> |
| Issue | #3398 | [SDK] Evaluate ZipDeploy logs | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3398> |
| Issue | #3393 | [SDK] Evaluate reliability of using `$(_OutputSources)` directly. | closed | jviau | <https://github.com/Azure/azure-functions-dotnet-worker/issues/3393> |
