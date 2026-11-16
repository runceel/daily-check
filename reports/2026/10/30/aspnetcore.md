# dotnet/aspnetcore

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 15 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 12 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

対象期間に確認できる重要な破壊的変更・セキュリティ修正・廃止予定はありませんでした。

## 主要な変更点

- Kestrel / SignalR では endpoint tag の boxed 値を再利用し、HTTP/2 の window update と最終書き込みが競合した際の stream 停滞を修正しました（[#69558](https://github.com/dotnet/aspnetcore/pull/69558)、[#69690](https://github.com/dotnet/aspnetcore/pull/69690)）。
- QuickGrid の paginator にアクセシブルな名前を付け、RTL レイアウトでのナビゲーション配置も修正しました（[#70002](https://github.com/dotnet/aspnetcore/pull/70002)、[#70049](https://github.com/dotnet/aspnetcore/pull/70049)）。
- MVC form model の OpenAPI required property 出力を扱う PR #69986 は未マージでクローズされました。OpenAPI 共有スキーマの `[Obsolete]` 伝播を抑える PR #69861 はオープン中です。
- Blazor WebAssembly の認証トークン処理、サインイン時の cookie session key ローテーション、再接続後の fatal error banner 解消などがオープン PR で提案されています（#70106、#70105、#70084）。
- その他は Microsoft.Identity.Web の更新、依存関係・テストインフラの保守が中心です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #70103 | [release/11.0] Update Microsoft.Identity.Web to 3.16.0 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70103> |
| PR | #70102 | Update Microsoft.Identity.Web to 3.16.0 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70102> |
| PR | #69558 | [Kestrel/SignalR] Reuse the boxed server.port endpoint tag | merged | martincostello | <https://github.com/dotnet/aspnetcore/pull/69558> |
| PR | #70101 | [Infrastructure] Update npm dependencies to address alerts | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70101> |
| PR | #70098 | Fix quarantine eligibility for conditional shared test sources | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70098> |
| PR | #70097 | [release/11.0] Quarantine unexpected client certificates in IIS HTTPS tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70097> |
| PR | #70069 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70069> |
| PR | #70095 | Quarantine IIS and IIS Express no-client-certificate test failures | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70095> |
| PR | #69690 | Fix HTTP/2 hang on reused streams when a window update races the final write | merged | danield137 | <https://github.com/dotnet/aspnetcore/pull/69690> |
| PR | #70002 | Give QuickGrid paginator navigation an accessible name | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/70002> |
| PR | #70049 | Fix Paginator RTL navigation alignment | merged | snemeckayova | <https://github.com/dotnet/aspnetcore/pull/70049> |
| PR | #70091 | Propagate routed reviewer model settings | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70091> |
| PR | #70082 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70082> |
| PR | #70086 | [test-quarantine] Quarantine flaky TempDataCookieTest.TempDataPersistWithoutAccessing | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70086> |
| PR | #70080 | Update `RequestQueueMode.[CreateOr]Attach` doc with examples of options that don't apply | merged | elinor-fung | <https://github.com/dotnet/aspnetcore/pull/70080> |
| PR | #69986 | Fix [openapi]: Emit required properties for MVC form models | closed | wteja | <https://github.com/dotnet/aspnetcore/pull/69986> |
| PR | #70087 | Add sandboxed managed-test evidence to the PR review workflow | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/70087> |
| PR | #70107 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/70107> |
| PR | #70106 | Fix token handling in Blazor WebAssembly AuthorizationMessageHandler | open | oroztocil | <https://github.com/dotnet/aspnetcore/pull/70106> |
| PR | #70105 | Allow rotating the cookie session key on sign-in | open | earbona23 | <https://github.com/dotnet/aspnetcore/pull/70105> |
| PR | #70104 | [release/10.0] Update Microsoft.Identity.Web to 3.16.0 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/70104> |
| PR | #70100 | [release/10.0] Fix HTTP/2 hang on reused streams when a window update races the final write | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70100> |
| PR | #70099 | [release/11.0] Fix HTTP/2 hang on reused streams when a window update races the final write | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70099> |
| PR | #70093 | [release/11.0] Give QuickGrid paginator navigation an accessible name | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70093> |
| PR | #70092 | [release/11.0] Fix Paginator RTL navigation alignment | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/70092> |
| PR | #70088 | Fix TempData persistence test navigation race | open | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/70088> |
| PR | #70084 | Fix Blazor fatal error banner persisting after successful reconnection | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/pull/70084> |
| PR | #70081 | Fix response writer ordering for Blazor streaming redirects and NotFound | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/70081> |
| Issue | #70089 | Kestrel Sockets transport logs ObjectDisposedException as ConnectionError during graceful connection shutdown | open | kcheusb | <https://github.com/dotnet/aspnetcore/issues/70089> |
| Issue | #70096 | Improve AddApplicationPart use case | open | ryagin | <https://github.com/dotnet/aspnetcore/issues/70096> |
| Issue | #70094 | ClientCertificateTests.HttpsNoClientCert_NoClientCert receives an unexpected client certificate | open | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/70094> |
| Issue | #70090 | Negotiate: handle missing memberOf during built-in LDAP claim resolution | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/70090> |
| Issue | #70083 | [API Proposal] Add CacheStorage and Cache to the typed browser platform APIs for Blazor | open | jsakamotoIGJP | <https://github.com/dotnet/aspnetcore/issues/70083> |
| Issue | #70085 | Quarantine Microsoft.AspNetCore.Components.E2ETest.Tests.TempDataCookieTest.TempDataPersistWithoutAccessing | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/70085> |
| Issue | #53736 | Kestrel occasionally losing zero-size GRPC responses | closed | pjc50 | <https://github.com/dotnet/aspnetcore/issues/53736> |
