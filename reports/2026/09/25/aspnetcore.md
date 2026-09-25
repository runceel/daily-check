# dotnet/aspnetcore

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 5 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 9 |
| 新規 Issue                 | 10 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
セキュリティ問題ではなく、10.0.8 から 10.0.9 への更新後に報告された FailFast クラッシュの調査 Issue です。該当バージョンの利用者は回避策・修正状況を追跡してください。

## 主要な変更点

- .NET 11 main / RC2 のソース更新とブランチ同期が複数マージされ、リリースブランチの統合作業が進みました。
- DeviceBoundSessions の実装削除が release/11.0-rc2 に反映されています。利用予定の機能・移行状況は関連リリースノートで確認してください。
- .NET 10.0.9 更新後に発生した `TypeDescriptor.GetProperties()` / `ConcurrentDictionary` 経由の FailFast クラッシュが報告されており、該当環境は修正状況の確認が必要です。
- オープン PR では `[AsParameters]` のプロパティドキュメント解決、Blazor の root component 操作順序、QuickGrid footer template などが提案されています。
- Issue では `MapStaticAssets` の cache header、record に対する `BindNeverAttribute`、passkey 作成時の AAGUID 欠落などの不具合が報告されています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69491 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69491> |
| PR | #69476 | [automated] Merge branch 'release/11.0' => 'main' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69476> |
| PR | #69474 | [release/11.0-rc2] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69474> |
| PR | #69493 | [automated] Merge branch 'release/11.0-rc2' => 'release/11.0' | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69493> |
| PR | #69479 | [release/11.0-rc2] Delete implementation of DeviceBoundSessions | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69479> |
| PR | #69028 | Add issue investigation skill | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69028> |
| PR | #67148 | Adds footer templates for the QuickGrid and its columns  | closed | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67148> |
| PR | #69500 | Add focused read-only issue investigation skill | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69500> |
| PR | #69477 | Resolve [AsParameters] property documentation by binder name | open | rghvgrv | <https://github.com/dotnet/aspnetcore/pull/69477> |
| PR | #69498 | Expose the daily PR Attention Pulse JSON snapshot | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69498> |
| PR | #69484 | Order root component operations without serializing circuit batches | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69484> |
| PR | #69492 | Fix discussion gates in PR attention queue | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69492> |
| PR | #69490 | Unquarantined InitialIndex_PendingGrowth_TallItemsBeforeTarget_KeepsTargetAligned | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/69490> |
| PR | #69487 | [Design exploration — do not merge] Prototype proof-based OpenAPI schema inference | open | mwadams | <https://github.com/dotnet/aspnetcore/pull/69487> |
| PR | #69482 | Fix AG-UI Dojo sample to use ChatOptions.Tools instead of UIActionBlock | open | Sadik00789 | <https://github.com/dotnet/aspnetcore/pull/69482> |
| PR | #69478 | Adds footer templates for the QuickGrid and its columns | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/69478> |
| Issue | #69486 | Serializer-faithful, proof-based OpenAPI schema inference | open | mwadams | <https://github.com/dotnet/aspnetcore/issues/69486> |
| Issue | #69497 | Improve contributor guidance for fresh worktrees and fatal test-host failures | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69497> |
| Issue | #69496 | Document source-generator wiring and build-gate gotchas in agent instruction files | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69496> |
| Issue | #69495 | `EF Core UserStore.CreateUserPasskey` does not set `Aaguid`, so it's lost on passkey creation | open | tegrit-joe-trupiano | <https://github.com/dotnet/aspnetcore/issues/69495> |
| Issue | #69494 | BlazorWebTemplate_ConditionalPasskeyRegistration reads response body after navigation | open | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/69494> |
| Issue | #69489 | Razor Pages syntax highlighting frequently breaks in Visual Studio 2026 | closed | mathdx1111 | <https://github.com/dotnet/aspnetcore/issues/69489> |
| Issue | #69485 | MapStaticAssets produces wrong cache headers (e.g. for Vue UI) | open | motz-art | <https://github.com/dotnet/aspnetcore/issues/69485> |
| Issue | #69483 | Inconsistent line endings and encodings in dotnet new templates (CRLF/LF, UTF-8/BOM mix) | open | hgaoping | <https://github.com/dotnet/aspnetcore/issues/69483> |
| Issue | #69481 | MVC: BindNeverAttribute doesn't work for records | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69481> |
| Issue | #69480 | Perf regression: antiforgery-generation | open | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/69480> |
| Issue | #68067 | Testcase failure with "Invalid IL code" error | closed | ashutoshjadhav9 | <https://github.com/dotnet/aspnetcore/issues/68067> |
