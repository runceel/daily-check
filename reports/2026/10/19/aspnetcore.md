# dotnet/aspnetcore

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 16 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 14 |
| 新規 Issue                 | 23 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#69867](https://github.com/dotnet/aspnetcore/issues/69867) — Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. （Issue / open / jinzhao1127）
ASP.NET Core 10 の SQL Server プロジェクトテンプレート利用者は、生成プロジェクトの依存解決結果を確認し、該当する場合は脆弱性修正版への更新状況を追跡してください（報告は調査中）。
- **非推奨/廃止** [#69861](https://github.com/dotnet/aspnetcore/pull/69861) — Don't leak property-level [Obsolete] into shared OpenAPI component schemas （PR / open / sander1095）
OpenAPI ドキュメント利用者は、未マージの修正がプロパティ単位の `[Obsolete]` を共有 schema 全体に誤反映しないことを確認し、関連 Issue #69729 の進捗を追ってください。
- **非推奨/廃止** [#69729](https://github.com/dotnet/aspnetcore/issues/69729) — OpenAPI: [Obsolete] on a property leaks `deprecated: true` into the shared component schema （Issue / open / sander1095）
OpenAPI schema を生成するチームは、property の非推奨属性が共有 component を誤って deprecated 扱いにしていないか確認してください。

## 主要な変更点

- **セキュリティ要確認**: SQL Server テンプレートが参照する `System.Security.Cryptography.Pkcs` 9.0.11 の脆弱性報告 #69867 がオープン中です。影響する生成物と修正版の有無を確認してください。
- OpenAPI で property-level `[Obsolete]` が共有 component schema に漏れる問題 #69729 と、その修正案 #69861 が議論されています。
- CI ではテストの shard 化・独立して再試行できる stage 分割 (#69897–#69899) がマージされ、テスト実行の並列化と失敗時の再試行性を改善しました。
- テスト用アプリの動的ポート利用 (#69908) や `dotnet-ef` の package 内容からの tool path 解決 (#69905) など、テスト・開発環境の信頼性改善が入りました。
- Data Protection の `ManagedAuthenticatedEncryptor` が keyed HMAC constructor を使う変更 (#69859) がマージされました。
- Blazor / JavaScript interop、SignalR、JsonPatch に関する新規 Issue や修正提案が複数あり、今後の対応状況を確認する必要があります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69908 | Use dynamic ports in delayed test apps | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69908> |
| PR | #69906 | Restrict MCP template tests to the current RID | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69906> |
| PR | #69905 | Resolve dotnet-ef tool path from package contents | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69905> |
| PR | #69899 | Shard Mono Components E2E tests | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69899> |
| PR | #69907 | Build shipping assemblies before delayed trimming projects | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69907> |
| PR | #69898 | Shard MVC template tests on Helix | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69898> |
| PR | #69897 | Split CI into independently retryable stages | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69897> |
| PR | #69726 | Fix MSAL initialization | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69726> |
| PR | #69889 | Update http-cache-semantics to 4.3.0 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69889> |
| PR | #69896 | Upgrade agentic workflows to gh-aw v0.92.0 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69896> |
| PR | #69892 | [release/2.3] Update NuGet dependency versions | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69892> |
| PR | #69894 | Add package.json and package-lock.json to CODEOWNERS | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69894> |
| PR | #69878 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 0af57167b5822a1500b314b9ef31029137e20208 to 1c4a1644edd3811541f70371cd9494058ba29235 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69878> |
| PR | #69879 | [main] (deps): Bump actions/create-github-app-token from 3.2.0 to 3.3.0 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69879> |
| PR | #69877 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 0af57167b5822a1500b314b9ef31029137e20208 to 1c4a1644edd3811541f70371cd9494058ba29235 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69877> |
| PR | #69859 | Use keyed HMAC constructors in ManagedAuthenticatedEncryptor | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69859> |
| PR | #69916 | Clear redirected SignalR access tokens before restarting negotiation | closed | fredrikbernholm | <https://github.com/dotnet/aspnetcore/pull/69916> |
| PR | #66834 | Avoid JSRuntime cancellation race with EndInvokeJS | closed | alirezafzali | <https://github.com/dotnet/aspnetcore/pull/66834> |
| PR | #69914 | Dispose endpoint rate limiter on application shutdown | open | SENESO | <https://github.com/dotnet/aspnetcore/pull/69914> |
| PR | #69918 | Fix InvalidCastException for nullable enum parameter default values i… | open | AnsElgyarDev | <https://github.com/dotnet/aspnetcore/pull/69918> |
| PR | #69915 | Clarify PR Attention Pulse publication and omission counts | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69915> |
| PR | #69911 | Remove unreachable certificate null check in Kestrel HTTPS middleware | open | JohnyKid123 | <https://github.com/dotnet/aspnetcore/pull/69911> |
| PR | #69910 | Give NavigationException a message that includes the target URI | open | Yusuf-Hussien | <https://github.com/dotnet/aspnetcore/pull/69910> |
| PR | #69909 | Set record constructor mapping flag after publishing the mappings | open | campersau | <https://github.com/dotnet/aspnetcore/pull/69909> |
| PR | #69893 | [release/9.0] Update RepoTasks cryptography dependency | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69893> |
| PR | #69890 | [release/9.0] Update http-cache-semantics to 4.3.0 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69890> |
| PR | #69891 | [release/8.0] Update http-cache-semantics to 4.3.0 | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69891> |
| PR | #69888 | Fix race in ModelMetadata.GetHashCode | open | gearsetdave | <https://github.com/dotnet/aspnetcore/pull/69888> |
| PR | #69871 | Fix orphaned RemoteJSDataStream when sendJSDataStream initiation throws | open | irfanajaffer | <https://github.com/dotnet/aspnetcore/pull/69871> |
| PR | #69886 | Fix validation errors being dropped when the message is empty | open | Yusuf-Hussien | <https://github.com/dotnet/aspnetcore/pull/69886> |
| PR | #69870 | Fix skipped and collection union cases in Minimal API validation | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69870> |
| PR | #69868 | Fix Blazor Server InputFile failures caused by oversized file metadata | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/69868> |
| Issue | #69913 | Blazor ErrorBoundary clears ErrorContent after Recover when throwing component is nested | open | jimSampica | <https://github.com/dotnet/aspnetcore/issues/69913> |
| Issue | #69917 | SignalR JS reuses Azure redirect token at application negotiate endpoint after reconnect | open | fredrikbernholm | <https://github.com/dotnet/aspnetcore/issues/69917> |
| Issue | #69912 | AutoPause JS initializer has no fingerprinted endpoint, so it is revalidated on every page load | open | cardasac | <https://github.com/dotnet/aspnetcore/issues/69912> |
| Issue | #69901 | Blazor static form mapping: an empty field cannot bind `null` to a nullable custom `IParsable<T>` struct | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69901> |
| Issue | #69902 | JsonPatch (Newtonsoft.Json): `copy`, `test` and dictionary keys ignore the document's `ContractResolver` | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69902> |
| Issue | #69904 | JsonPatch: `move` still adds the value at `path` when removing it from `from` failed | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69904> |
| Issue | #69903 | JsonPatch (Newtonsoft.Json): values are converted under the `ContractResolver` alone, and the converter's error is swallowed | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69903> |
| Issue | #69900 | RouteView keeps a stale Body when a page that was a layout becomes the routed page, rendering it twice | open | 30yowizard | <https://github.com/dotnet/aspnetcore/issues/69900> |
| Issue | #69895 | Harden JWT-formatted OpenID Connect UserInfo responses | open | dlingam-msft | <https://github.com/dotnet/aspnetcore/issues/69895> |
| Issue | #69869 | Blazor auto-pause fails after navigating to static SSR | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/69869> |
| Issue | #69887 | Allow overriding SupportedCultures when so desired | open | gliljas | <https://github.com/dotnet/aspnetcore/issues/69887> |
| Issue | #69883 | Add AbortController and AbortSignal support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69883> |
| Issue | #69882 | Add Fetch, Headers, Request, and Response APIs | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69882> |
| Issue | #69881 | Add URL and URLSearchParams support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69881> |
| Issue | #69880 | Add Credentials and WebAuthn support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69880> |
| Issue | #69876 | Add Web Locks support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69876> |
| Issue | #69875 | Add storage management APIs | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69875> |
| Issue | #69874 | Add Cache Storage support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69874> |
| Issue | #69873 | Add IndexedDB support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69873> |
| Issue | #69872 | Add browser context and capability APIs | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69872> |
| Issue | #69885 | Add WebSocket, EventSource, and sendBeacon APIs | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69885> |
| Issue | #69884 | Add MessageChannel and BroadcastChannel support | open | MayaKirova | <https://github.com/dotnet/aspnetcore/issues/69884> |
| Issue | #69867 | Package 'System.Security.Cryptography.Pkcs' 9.0.11 has a known moderate severity vulnerability when creating 10.0 SqlServer project. | open | jinzhao1127 | <https://github.com/dotnet/aspnetcore/issues/69867> |
| Issue | #68204 | Perf improvement: fortunes, json_middleware, updates | closed | pr-benchmarks[bot] | <https://github.com/dotnet/aspnetcore/issues/68204> |
