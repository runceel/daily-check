# dotnet/aspnetcore

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 17 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 11 |
| 新規 Issue                 | 36 |
| クローズ Issue             | 12 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#67082](https://github.com/dotnet/aspnetcore/pull/67082) — [breaking] Defer antiforgery/CSRF rejection to form consumers via `IAntiforgeryValidationFeature` （PR / merged / DeagleGross）
  antiforgery/CSRF 検証を直接呼び出すアプリは `IAntiforgeryValidationFeature` を使う新しい拒否タイミングに合わせ、フォーム処理とテストを確認してください。
- **非推奨/廃止** [#67862](https://github.com/dotnet/aspnetcore/pull/67862) — Deprecate the Blazor WebAssembly DevServer package （PR / open / Copilot）
  Blazor WebAssembly DevServer パッケージ利用者は非推奨化の進行を確認し、将来の代替手段と移行計画を準備してください。
- **非推奨/廃止** [#67861](https://github.com/dotnet/aspnetcore/pull/67861) — Deprecate UseWebAssemblyDebugging and remove it from Blazor templates （PR / open / Copilot）
  `UseWebAssemblyDebugging` を使うアプリは、テンプレートからの削除と非推奨化を踏まえてデバッグ手順を見直してください。
- **非推奨/廃止** [#67860](https://github.com/dotnet/aspnetcore/pull/67860) — Obsolete UseWebAssemblyDebugging and remove it from Blazor templates （PR / open / lewing）
  Blazor WebAssembly のテンプレートや手動構成で `UseWebAssemblyDebugging` を指定している利用者は代替設定を確認してください。
- **非推奨/廃止** [#67858](https://github.com/dotnet/aspnetcore/issues/67858) — Obsolete UseWebAssemblyDebugging and remove it from Blazor project templates （Issue / open / danroth27）
  Blazor プロジェクトテンプレートの保守担当者は `UseWebAssemblyDebugging` の削除方針と既存テンプレートへの影響を確認してください。
- **非推奨/廃止** [#67857](https://github.com/dotnet/aspnetcore/issues/67857) — Deprecate the Microsoft.AspNetCore.Components.WebAssembly.DevServer package （Issue / open / danroth27）
  DevServer パッケージに依存する Blazor WebAssembly プロジェクトは、非推奨化後の開発サーバー運用を確認してください。

## 主要な変更点

- ⚠ antiforgery/CSRF の拒否タイミングが変更され、`IAntiforgeryValidationFeature` を使うフォーム利用者は互換性確認が必要です。
- Blazor WebAssembly DevServer と `UseWebAssemblyDebugging` の非推奨化・テンプレートからの削除が進んでいます。
- Blazor SSR のクライアント側フォーム検証、QuickGrid、OpenAPI discriminator などの API 改善がマージされました。
- 内部フィード認証が期限切れ PAT からビルド ID に切り替えられ、CI の資格情報運用が改善されています。
- SignalR の 401 時アクセストークン再試行、KnownProxies/KnownNetworks、multipart ヘッダー制限などの修正が進行中です。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67859 | Use System.AccessToken for internal feed auth on release/9.0 | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/67859> |
| PR | #67855 | API review changes for Blazor SSR client-side validation | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67855> |
| PR | #67854 | Use build identity (System.AccessToken) for internal feed creds instead of expired dn-bot-dnceng-artifact-feeds-rw PAT (release/8.0) | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/67854> |
| PR | #67853 | Use build identity for internal feeds instead of expired dn-bot-dnceng-artifact-feeds-rw PAT (release/9.0) | merged | missymessa | <https://github.com/dotnet/aspnetcore/pull/67853> |
| PR | #67839 | Treat QUERY as a safe HTTP method for antiforgery and CSRF protection | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67839> |
| PR | #67836 | Update milestones for August | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67836> |
| PR | #67813 | Remove dead CODEOWNERS rule for non-existent BlazorServerWeb-CSharp template path | merged | kobihikri | <https://github.com/dotnet/aspnetcore/pull/67813> |
| PR | #67811 | [release/10.0] Update Microsoft.Data.SqlClient reference version to 6.1.1 | merged | SparshGarg999 | <https://github.com/dotnet/aspnetcore/pull/67811> |
| PR | #67810 | Add .NET 10.0 support to aggregate site extension | merged | SparshGarg999 | <https://github.com/dotnet/aspnetcore/pull/67810> |
| PR | #67805 | Cherry-pick internal commits (release/9.0) | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67805> |
| PR | #67802 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67802> |
| PR | #67797 | [release/10.0] Move Linux CI jobs off Microsoft-hosted pools (backport #64842, #65867) | merged | mmitche | <https://github.com/dotnet/aspnetcore/pull/67797> |
| PR | #67772 | [release/10.0] Limit Microsoft.OpenApi to disallow next major | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67772> |
| PR | #67733 | Fix API for QuickGrid | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/67733> |
| PR | #67493 | feat: adds support for populating OpenAPI discriminator defaultMapping | merged | baywet | <https://github.com/dotnet/aspnetcore/pull/67493> |
| PR | #67324 | Improve Blazor SSR client-side form validation | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/67324> |
| PR | #66331 | [blazor] E2E test coreCLR WASM | merged | pavelsavara | <https://github.com/dotnet/aspnetcore/pull/66331> |
| PR | #67852 | Set up a one-off publishing pipeline for npm packages using ESRP | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67852> |
| PR | #67820 | Handle passing a Func expression to Map* in ValidationsGenerator and RDG | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67820> |
| PR | #67737 | [release/10.0] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67737> |
| PR | #67697 | Use locally-built Microsoft.OpenApi packages from OpenAPI.NET PR #2933 | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67697> |
| PR | #67862 | Deprecate the Blazor WebAssembly DevServer package | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67862> |
| PR | #67861 | Deprecate UseWebAssemblyDebugging and remove it from Blazor templates | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67861> |
| PR | #67860 | Obsolete UseWebAssemblyDebugging and remove it from Blazor templates | open | lewing | <https://github.com/dotnet/aspnetcore/pull/67860> |
| PR | #67851 | Fix SignalR TS client access token retry when HttpClient throws on 401 | open | Arul1998 | <https://github.com/dotnet/aspnetcore/pull/67851> |
| PR | #67840 | Enforce MultipartHeadersLengthLimit across BufferedReadStream buffers | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/67840> |
| PR | #67828 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67828> |
| PR | #67822 | Use ReadOnlyDictionary/ReadOnlyCollection for ValidateContext.ValidationErrors backing collections | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/67822> |
| PR | #67821 |  Handle passing a Func expression to Map* in ValidationsGenerator and RDG | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67821> |
| PR | #67818 | Support validating dictionary values in Microsoft.Extensions.Validation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67818> |
| PR | #67817 | Harden KnownProxies/KnownNetworks for non-IP transports | open | cincuranet | <https://github.com/dotnet/aspnetcore/pull/67817> |
| PR | #67809 | Fix UNC path support for stdoutLogFile in IIS/ANCM | open | SparshGarg999 | <https://github.com/dotnet/aspnetcore/pull/67809> |
| Issue | #67858 | Obsolete UseWebAssemblyDebugging and remove it from Blazor project templates | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67858> |
| Issue | #67857 | Deprecate the Microsoft.AspNetCore.Components.WebAssembly.DevServer package | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67857> |
| Issue | #67856 | ProducesResponseTypeAttribute<T> / ServiceFilterAttribute<T> / TypeFilterAttribute<T> silently lose AllowMultiple across controller inheritance — they don't redeclare [AttributeUsage] | open | iPilot | <https://github.com/dotnet/aspnetcore/issues/67856> |
| Issue | #67850 | DBSC: separate browser-advertised endpoint URLs from local handler paths | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67850> |
| Issue | #67849 | Kestrel does not validate the query component of HTTP/2/3 :path, allowing raw whitespace/control chars | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67849> |
| Issue | #67848 | Design Proposal: Footer Templates for QuickGrid and Its Columns | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/issues/67848> |
| Issue | #67847 | Design proposal: OIDC token storage option for Blazor WebAssembly | open | karmegams02 | <https://github.com/dotnet/aspnetcore/issues/67847> |
| Issue | #67846 | Design Proposal: Provide a JavaScript Signal for Interactive Rendering | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/issues/67846> |
| Issue | #67845 | Design for Add RoutePrefix Parameter to Blazor Router for Localized URL Support | open | BrundhaVelusamy | <https://github.com/dotnet/aspnetcore/issues/67845> |
| Issue | #67844 | Ensure test coverage and correct behavior for OpenAPI when minimal API parameter is `T?[]` | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67844> |
| Issue | #67843 | Proposal: Synchronize form reset behavior with EditContext and InputBase | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67843> |
| Issue | #67842 | Blazor wasm publish: MSB4018 ApplyCompressionNegotiation | open | BailinZheng | <https://github.com/dotnet/aspnetcore/issues/67842> |
| Issue | #67841 | Design for Enhance nullability support for TValue in EventCallback | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67841> |
| Issue | #67838 | `FormOptions.MultipartHeadersLengthLimit` not enforced when a multipart header line spans multiple `BufferedReadStream` buffers | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67838> |
| Issue | #67837 | Design Proposal: Make ColumnBase.IsSortableByDefault() Public in QuickGrid | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67837> |
| Issue | #67835 | Design for preserve null values for in single select binding | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67835> |
| Issue | #67834 | Design Proposal: Dynamic Columns for QuickGrid | open | karmegams02 | <https://github.com/dotnet/aspnetcore/issues/67834> |
| Issue | #67833 | Design Proposal: Expose QuickGrid Columns to Derived Classes | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67833> |
| Issue | #67832 | Proposal: Add object-level validation APIs to EditContext | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67832> |
| Issue | #67831 | Proposal: Add QuickGrid OnDataLoading and OnDataLoaded Events | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67831> |
| Issue | #67830 | QuickGrid - Add built-in localization for pagination | open | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/issues/67830> |
| Issue | #67829 | Proposal: Custom Comparer Support for QuickGrid In-Memory Sorting | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67829> |
| Issue | #67827 | DBSC: support site scope registration from subdomains | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/67827> |
| Issue | #67826 | Built-in OpenAPI generator emits 3.0-era `format: binary` for binary/file types in 3.1/3.2 documents | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/67826> |
| Issue | #67825 | CsrfProtectionMiddleware introduced in .NET 11 Preview 6 does not considers the QUERY method | closed | pablopioli | <https://github.com/dotnet/aspnetcore/issues/67825> |
| Issue | #67824 | ASPNETCORE SCOPE | closed | jarlungoodoo73 | <https://github.com/dotnet/aspnetcore/issues/67824> |
| Issue | #67823 | template build consensus | closed | jarlungoodoo73 | <https://github.com/dotnet/aspnetcore/issues/67823> |
| Issue | #67819 | JsonPatch: `ParsedPath` drops empty JSON Pointer tokens (RFC 6901) | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67819> |
| Issue | #67816 | Harden KnownProxies/KnownNetworks for non-IP transports | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/67816> |
| Issue | #67815 | Design proposal: Add FieldIdentifier support to EditContext validation notifications | open | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/issues/67815> |
| Issue | #67814 | Blazor Gateway dev-server gaps for runtime/WBT | closed | pavelsavara | <https://github.com/dotnet/aspnetcore/issues/67814> |
| Issue | #67812 | Fix scheme-relative behavior in Rewrite middleware | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67812> |
| Issue | #67808 | Design for SSR Constructor Enhancements | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67808> |
| Issue | #67807 | Design for Virtualize SSR Initial Item Rendering | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/issues/67807> |
| Issue | #67806 | Analyzer: warn when SslCertificateTrust is set without a RemoteCertificateValidationCallback | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67806> |
| Issue | #67804 | Design proposal to support binding data from a GET-based form | closed | irfanajaffer | <https://github.com/dotnet/aspnetcore/issues/67804> |
| Issue | #67803 | new issueTmp | closed | yaasiinmd1 | <https://github.com/dotnet/aspnetcore/issues/67803> |
| Issue | #67800 | [API Proposal] Client-side validation for Blazor static SSR forms | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/67800> |
| Issue | #67779 | Add seekable stream support to InputFile | closed | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/issues/67779> |
| Issue | #67637 | aspnetcoretools.so: use source control version string format. | closed | tmds | <https://github.com/dotnet/aspnetcore/issues/67637> |
| Issue | #67071 | Valid state behavior differs across render modes | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/issues/67071> |
| Issue | #66830 | API Proposal: QuickGrid static SSR support | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/66830> |
| Issue | #66732 | Failed to log in with passkey for Blazor Web Individual app after installing .NET 11.0 preview 5 SDK | closed | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/66732> |
