# dotnet/aspnetcore

対象期間: 2026-08-11 23:30:11 〜 2026-08-13 00:02:03 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 17 |
| クローズ (未マージ) PR     | 3 |
| 新規 PR (オープン中)       | 10 |
| 新規 Issue                 | 83 |
| クローズ Issue             | 10 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#68427](https://github.com/dotnet/aspnetcore/issues/68427) — Components.AI: Define link and HTML safety for model-generated rich content （Issue / open / javiercn）
  Components.AI でモデル生成 HTML を表示する利用者は、リンクや HTML のサニタイズ方針が固まるまで出力を信頼せず、アプリ側の安全対策を確認してください。
- **非推奨/廃止** [#57853](https://github.com/dotnet/aspnetcore/issues/57853) — OpenApi ApiVersionAttribute.Deprecated not reflected in schema （Issue / closed / JTeeuwissen）
  OpenAPI の非推奨メタデータを生成結果に反映したい利用者は、修正状況と対象 SDK バージョンを確認し、現行では必要に応じてスキーマを補正してください。
- **非推奨/廃止** [#43493](https://github.com/dotnet/aspnetcore/issues/43493) — Support Deprecation Metadata in the API Explorer （Issue / open / commonsensesoftware）
  API Explorer から非推奨情報を公開する利用者は、対応が未完了のため生成ツール側での扱いを確認し、必要なら独自メタデータ付与を検討してください。

## 主要な変更点

- Components.AI でストリーミング チャットが追加され、モデル生成リッチコンテンツのリンク／HTML 安全性に関する課題も継続しています。
- HybridCache を Redis 接続時に解決しないようにする修正が入り、接続初期化時の依存関係を軽量化しています。
- Blazor WebAssembly の公開アセット圧縮で重複を避ける修正が入り、発行成果物の無駄な重複を抑えます。
- OpenAPI の nullability や API バージョン非推奨メタデータに関する改善・課題が引き続き確認されています。
- 依存関係更新と .NET 10 リリースブランチのソース同期が行われました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #68368 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68368> |
| PR | #68463 | Avoid duplicate WebAssembly publish asset compression | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68463> |
| PR | #68461 | Revert "Use 1es ubuntu for Linux x64 job" | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/68461> |
| PR | #68359 | Bump dotnet-serve from 1.10.93 to 1.10.194 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68359> |
| PR | #68356 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 3d135325fdadd83e619a5744d58ab546917f4220 to 6ba2d0cd3df5ddecdd660a41eba00587835eb099 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68356> |
| PR | #68357 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 3d135325fdadd83e619a5744d58ab546917f4220 to 6ba2d0cd3df5ddecdd660a41eba00587835eb099 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68357> |
| PR | #68353 | [main] (deps): Bump src/submodules/googletest from `3940de9` to `d89aac5` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68353> |
| PR | #68127 | Avoid resolving HybridCache during Redis connection | merged | svick | <https://github.com/dotnet/aspnetcore/pull/68127> |
| PR | #68454 | Fix OpenAPI nullability for ignored setters | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68454> |
| PR | #68358 | Bump dotnet-dump from 6.0.322601 to 6.0.408101 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/68358> |
| PR | #68323 | [Blazor] Add Components.AI streaming chat | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/68323> |
| PR | #68347 | Cache display names per UI culture | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68347> |
| PR | #67993 | Add MEV analyzers | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67993> |
| PR | #68202 | Message key conventions for validation localization | merged | oroztocil | <https://github.com/dotnet/aspnetcore/pull/68202> |
| PR | #68321 | Validate QPack static table index in QPackDecoder | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/68321> |
| PR | #68221 | [Blazor] Propagate SignalR authentication refresh to server circuits | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/68221> |
| PR | #65483 | Simplify and unify TempData and SupplyParameterFromSession serialization | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/65483> |
| PR | #68452 | Fix BL0013 highlighting unrelated locations in Razor files | closed | vendasankarsf3945 | <https://github.com/dotnet/aspnetcore/pull/68452> |
| PR | #68450 | Fix BL0013 diagnostic location for GetAuthenticationStateAsync | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/68450> |
| PR | #67673 | [Blazor] Components.AI - full library (supersedes #66181-#66187) | closed | javiercn | <https://github.com/dotnet/aspnetcore/pull/67673> |
| PR | #68466 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/68466> |
| PR | #68453 | Call TransformOutbound for optional route parameters | open | GOVINSAGA | <https://github.com/dotnet/aspnetcore/pull/68453> |
| PR | #68462 | Update Microsoft.OpenApi to 3.10 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68462> |
| PR | #68465 | Harden chunked encoding parsing | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/68465> |
| PR | #68457 | Require red/green proof before claiming a bug fix is verified | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68457> |
| PR | #68464 | Add eng/common Copilot review instructions | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/68464> |
| PR | #68460 | Fix nullref in Identity on netfx/netstandard | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68460> |
| PR | #68459 | Harden SignalR authentication refresh | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/68459> |
| PR | #68451 | Fix BL0013 diagnostic location for GetAuthenticationStateAsync | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/68451> |
| PR | #68370 | [WIP] Consider using Microsoft.CodeAnalysis 4.x or later | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/68370> |
| Issue | #68458 | Components.AI: Parse streamed text incrementally | open | kotlarmilos | <https://github.com/dotnet/aspnetcore/issues/68458> |
| Issue | #68456 | Upgrading from 10.0.0.10 to 10.0.0.11 Broken href='~/...' on <link> | open | richardcox13 | <https://github.com/dotnet/aspnetcore/issues/68456> |
| Issue | #68455 | allow CacheView cache expiry | open | ghorner2 | <https://github.com/dotnet/aspnetcore/issues/68455> |
| Issue | #68407 | Components.AI: Define follow-up queue ownership and attachment semantics | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68407> |
| Issue | #68432 | Components.AI: Add built-in copy, retry, and edit-and-resubmit actions | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68432> |
| Issue | #68417 | Components.AI: Add a minimal capability-scoped JS interop module | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68417> |
| Issue | #68429 | Components.AI: Implement a reusable microphone composer part | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68429> |
| Issue | #68445 | Components.AI: Correct shell semantics, dismissal, and focus behavior | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68445> |
| Issue | #68441 | Components.AI: Support mid-conversation and agent-provided suggestions | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68441> |
| Issue | #68440 | Components.AI: Support reduced motion, forced colors, dark mode, and visible focus | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68440> |
| Issue | #68428 | Components.AI: Add extensible code-block rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68428> |
| Issue | #68424 | Components.AI: Design rich-node renderer extensibility | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68424> |
| Issue | #68416 | Components.AI: Implement explicit per-call tool display modes | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68416> |
| Issue | #68393 | Components.AI: Restore conversations to the last meaningful reading position | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68393> |
| Issue | #68394 | Components.AI: Virtualize the conversation message list | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68394> |
| Issue | #68375 | Components.AI attachments, media, and voice | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68375> |
| Issue | #68376 | Components.AI decorators and conversation actions | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68376> |
| Issue | #68446 | Components.AI: Complete coordinated public API review for built-in UI | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68446> |
| Issue | #68449 | Components.AI: Document built-in UI extensibility and theming | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68449> |
| Issue | #68448 | Components.AI: Add end-to-end coverage for the interaction matrix | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68448> |
| Issue | #68447 | Components.AI: Build a full built-in UI sample | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68447> |
| Issue | #68437 | Components.AI: Localize built-in UI and replace ad hoc icons | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68437> |
| Issue | #68435 | Components.AI: Make approvals and reasoning disclosures accessible | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68435> |
| Issue | #68443 | Components.AI: Add automated accessibility coverage | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68443> |
| Issue | #68433 | Components.AI: Announce streaming responses without per-token screen-reader spam | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68433> |
| Issue | #68430 | Components.AI: Add RTL and logical-layout support | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68430> |
| Issue | #68381 | Components.AI accessibility and adaptive presentation | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68381> |
| Issue | #68444 | Components.AI: Add responsive page, drawer, bubble, and composer layouts | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68444> |
| Issue | #68434 | Components.AI: Implement conversation switching | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68434> |
| Issue | #68439 | Components.AI: Define conversation switching semantics | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68439> |
| Issue | #68438 | Components.AI: Align shell slots and document theming and attribution hooks | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68438> |
| Issue | #68436 | Components.AI: Make suggestions fill the composer without submitting | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68436> |
| Issue | #68422 | Components.AI: Design message and turn decorator APIs | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68422> |
| Issue | #68431 | Components.AI: Add built-in message and turn action menus | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68431> |
| Issue | #68442 | Components.AI: Add timestamp and feedback decorators | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68442> |
| Issue | #68426 | Components.AI: Implement per-message and per-turn decorator slots | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68426> |
| Issue | #68425 | Components.AI: Make decorator actions accessible on hover, tap, focus, and keyboard | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68425> |
| Issue | #68420 | Components.AI: Document and sample markdown-to-rich-node integration | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68420> |
| Issue | #68427 | Components.AI: Define link and HTML safety for model-generated rich content | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68427> |
| Issue | #68418 | Components.AI: Implement the extensible rich-node renderer | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68418> |
| Issue | #68423 | Components.AI: Add a citation and source rendering pattern | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68423> |
| Issue | #68415 | Components.AI: Correct default plain-text rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68415> |
| Issue | #68421 | Components.AI: Support media nodes inside rich content | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68421> |
| Issue | #68414 | Components.AI: Add accessible media loading, failure, and image affordances | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68414> |
| Issue | #68419 | Components.AI: Render standalone media through Components.Media | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68419> |
| Issue | #68379 | Components.AI content rendering and tool-call presentation | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68379> |
| Issue | #68411 | Components.AI: Validate attachments and expose configurable limits | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68411> |
| Issue | #68413 | Components.AI: Add accessible stateful attachment chips | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68413> |
| Issue | #68400 | Components.AI: Add drag-and-drop attachment acquisition | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68400> |
| Issue | #68412 | Components.AI: Support scalable attachment transfer, progress, and cancellation | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68412> |
| Issue | #68410 | Components.AI: Decide and implement clipboard-image attachment paste | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68410> |
| Issue | #68401 | Components.AI attachment pipeline | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68401> |
| Issue | #68399 | Components.AI media rendering | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68399> |
| Issue | #68409 | Components.AI voice input | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68409> |
| Issue | #68402 | Components.AI: Render and manage pending follow-up messages | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68402> |
| Issue | #68406 | Components.AI: Implement atomic follow-up queue state and dispatch | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68406> |
| Issue | #68403 | Components.AI: Integrate attachment lifetime with queued follow-ups | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68403> |
| Issue | #68395 | Components.AI: Implement reusable send and stop composer controls | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68395> |
| Issue | #68388 | Components.AI: Implement composer sections and cascading context | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68388> |
| Issue | #68408 | Components.AI: Add composer overflow and responsive input-part layout | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68408> |
| Issue | #68405 | Components.AI: Add composer character and token limits | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68405> |
| Issue | #68404 | Components.AI: Preserve composer drafts across transitions and conversation switches | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68404> |
| Issue | #68392 | Components.AI: Design the composable composer API | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68392> |
| Issue | #68386 | Components.AI: Implement composer keyboard, IME, and autogrow behavior | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68386> |
| Issue | #68391 | Components.AI: Validate long-conversation scenarios against Virtualize | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68391> |
| Issue | #68396 | Components.AI: Implement configurable conversation follow behavior | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68396> |
| Issue | #68390 | Components.AI: Add jump-to-latest and unread indication | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68390> |
| Issue | #68398 | Components.AI: Add per-message identity chrome and conversation semantics | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68398> |
| Issue | #68389 | Components.AI: Scope streaming renders to the changing message | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68389> |
| Issue | #68383 | Components.AI: Correct turn/message semantics and assign stable identities | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68383> |
| Issue | #68384 | Components.AI: Represent stopped and incomplete answers explicitly | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68384> |
| Issue | #68387 | Components.AI: Define and enforce the conversation interaction-state matrix | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68387> |
| Issue | #68385 | Components.AI: Add AgentContext lifecycle and mutation APIs | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68385> |
| Issue | #68397 | Components.AI: Unify safe status and error presentation | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68397> |
| Issue | #68377 | Components.AI shells, conversation switching, and responsive layout | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68377> |
| Issue | #68372 | Components.AI suggestions experience | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68372> |
| Issue | #68374 | Components.AI long-conversation support | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68374> |
| Issue | #68378 | Components.AI conversation model and rendering foundations | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68378> |
| Issue | #68380 | Components.AI composable composer | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68380> |
| Issue | #68373 | Components.AI product integration and quality gates | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68373> |
| Issue | #68382 | Components.AI follow-up queue | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/68382> |
| Issue | #68371 | Harden HTTP/2 CR/LF in trailer header values | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/68371> |
| Issue | #68369 | Backport OpenAPI fix for array types to .NET 10 | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/68369> |
| Issue | #64105 | Debian package description is too long | closed | perlun | <https://github.com/dotnet/aspnetcore/issues/64105> |
| Issue | #66076 | Don't use 1ES Ubuntu for Linux-x64 job, once Azure CLI is available on Ubunutu 22.04 | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/66076> |
| Issue | #68348 | DisplayName and Label cache localized display names without culture | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/68348> |
| Issue | #66392 | [API Proposal] Localization support for Microsoft.Extensions.Validation | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/66392> |
| Issue | #67981 | HTTP/3: QPackDecoder can throw IndexOutOfRangeException / HPackDecodingException that ProcessHeadersFrameAsync doesn't catch | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/67981> |
| Issue | #68229 | Add compile-time asset-path expansion to Razor components | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68229> |
| Issue | #68170 | [Blazor] Consume SignalR authentication refresh in Blazor Server circuits | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/68170> |
| Issue | #57853 | OpenApi ApiVersionAttribute.Deprecated not reflected in schema | closed | JTeeuwissen | <https://github.com/dotnet/aspnetcore/issues/57853> |
| Issue | #65231 | [Blazor] Reconsider temp data serialization strategy. | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/65231> |
| Issue | #68106 | ApiExplorer loses top-level BinderModelName when expanding complex query parameters | closed | lorenzrox | <https://github.com/dotnet/aspnetcore/issues/68106> |
