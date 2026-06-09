# dotnet/aspnetcore

対象期間: 2026-06-08 23:38:56 〜 2026-06-09 23:05:02 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 7 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 5 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Razor Components: defer to upstream antiforgery / CSRF middleware （PR / open / DeagleGross）
  Razor Components 利用チームは、独自の CSRF 対策や既存アンチフォージェリ前提が upstream ミドルウェア委譲後も成立するかを事前検証する必要があります。
- **非推奨/廃止** [#67077](https://github.com/dotnet/aspnetcore/pull/67077) — Remove long-obsolete MVC APIs targeted for removal （PR / open / Copilot）
  MVC の古い API を使っている保守コードは、削除候補 API の棚卸しと置き換え計画を今のうちに進めないと .NET 11 でビルド破断の可能性があります。
- **非推奨/廃止** [#66551](https://github.com/dotnet/aspnetcore/issues/66551) — Revise obsolete APIs intended to be removed, and consider removing in .NET 11 （Issue / open / Youssef1313）
  プラットフォーム更新担当は .NET 11 移行前に obsolete API 警告を解消し、対象 API の除去方針確定を継続ウォッチする必要があります。

## 主要な変更点

- **破壊的変更候補**として、Razor Components のアンチフォージェリ/CSRF 処理を upstream ミドルウェアへ委譲する提案（#67082）が open で進行中です。  
- MVC の長期 obsolete API 削除（#67077）と .NET 11 での削除検討 Issue（#66551）が並行しており、既存 API 依存コードの整理が必要なフェーズに入っています。  
- マージ済みでは、ASP.NET Core への fuzzing 基盤導入（#67022）や OpenAPI 生成の説明属性対応改善（#67051 / #65245）があり、品質と生成精度が強化されています。  
- 直近の open PR/Issue は Blazor Gateway 配布形態、OpenAPI 3.2 既定化、バインディング/PathString 挙動修正など、.NET 10〜11 移行を見据えた基盤整備が中心です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67058 | [release/10.0] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67058> |
| PR | #67051 | [release/10.0] Handle `DescriptionAttribute` for nullable value types in OpenAPI generation | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67051> |
| PR | #67022 | Add fuzzing infrastructure for ASP.NET Core | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/67022> |
| PR | #67009 | Capture gradle stderr and stacktrace in SignalR Java client builds | merged | lewing | <https://github.com/dotnet/aspnetcore/pull/67009> |
| PR | #66996 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/66996> |
| PR | #66675 | Fix ValidationsGenerator CS8785 when AddValidation is called from multiple sites | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/66675> |
| PR | #65245 | Handle `DescriptionAttribute` for nullable value types in OpenAPI generation | merged | rdeveen | <https://github.com/dotnet/aspnetcore/pull/65245> |
| PR | #67056 | [main] Update dependencies from dotnet/extensions | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67056> |
| PR | #67105 | Merging internal commits for release/8.0 | open | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/67105> |
| PR | #67104 | Merging internal commits for release/9.0 | open | vseanreesermsft | <https://github.com/dotnet/aspnetcore/pull/67104> |
| PR | #67098 | Circuit can be paused by Blazor when inactivity is detected | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67098> |
| PR | #67097 | Update default OpenApi version to 3.2 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67097> |
| PR | #67093 | Make PathString.StartsWithSegments treat backslash also as a boundary | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67093> |
| PR | #67091 | Fix exception on parse failure for unsigned types in BindConverter | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/67091> |
| PR | #67088 | Fix Blazor TextArea Not Updating | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/67088> |
| Issue | #67103 | A HeaderCollection Feature for pseudo headers | open | ladeak | <https://github.com/dotnet/aspnetcore/issues/67103> |
| Issue | #67096 | Documentation on unions support in aspnetcore | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67096> |
| Issue | #67095 | Coordinate with Aspire to consume the Blazor Gateway as a bundled binary (replace Gateway.cs.in) | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67095> |
| Issue | #67094 | Publish official container image for Microsoft.AspNetCore.Components.Gateway (Blazor Gateway) | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/67094> |
| Issue | #67092 | Repackage Microsoft.AspNetCore.Components.Gateway as a dotnet tool | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/67092> |
| Issue | #67090 | Create workflow to keep SharpFuzz updated | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67090> |
| Issue | #67089 | Route handler returns 200 but the response body is empty | open | ndc | <https://github.com/dotnet/aspnetcore/issues/67089> |
| Issue | #66955 | [API Proposal] Per-property lookup on `ValidationOptions` for Microsoft.Extensions.Validation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/66955> |
| Issue | #66890 | Inconsistent OpenAPI responses with TypedResults / minimal API | closed | CaringDev | <https://github.com/dotnet/aspnetcore/issues/66890> |
| Issue | #66650 | ValidationsGenerator CS8785 when AddValidation is called from multiple sites in one project | closed | BrendanRidenour | <https://github.com/dotnet/aspnetcore/issues/66650> |
| Issue | #65067 | Microsoft.AspNetCore.OpenApi 10.0.2: Missing description on nullable enum | closed | rdeveen | <https://github.com/dotnet/aspnetcore/issues/65067> |
