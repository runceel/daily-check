# dotnet/aspnetcore

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 11 |
| クローズ (未マージ) PR     | 6 |
| 新規 PR (オープン中)       | 33 |
| 新規 Issue                 | 22 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#69312](https://github.com/dotnet/aspnetcore/pull/69312) — Unify claims principal cache identity （PR / open / javiercn）
  Antiforgery と MVC / Components のキャッシュキー統合案は既存 Antiforgery 識別子とのバイト単位互換を意図しています。関連機能を使う利用者は、マージ後もトークンとキャッシュの挙動が維持されることを確認してください。
- **⚠ セキュリティ** [#68738](https://github.com/dotnet/aspnetcore/pull/68738) — Add AntiforgeryOptions.AllowBackForwardCache （PR / open / astralmaster）
  antiforgery token を含む応答で back/forward cache を許可したい開発者は、オプトイン時のキャッシュ・セキュリティ特性を評価してください（既定値は引き続き無効です）。
- **⚠ セキュリティ** [#68232](https://github.com/dotnet/aspnetcore/pull/68232) — [release/10.0] Update vulnerable npm dependencies （PR / merged / wtgodbe）
  ASP.NET Core 10.0 の npm 依存関係で `brace-expansion` を CVE-2026-14257 対応版へ更新済みです。該当ブランチの依存関係を同期してください。別の `keyv` 警告はこの更新では解消されていません。
- **⚠ セキュリティ** [#68231](https://github.com/dotnet/aspnetcore/pull/68231) — [release/9.0] Update RepoTasksSystemSecurityCryptographyXmlVersion to 8.0.4 （PR / merged / wtgodbe）
  ASP.NET Core 9.0 の RepoTasks で検出された依存関係アラートへの更新です。リリースブランチのビルド・保守担当者は更新済みの依存関係を取り込んでください。
- **⚠ セキュリティ** [#67280](https://github.com/dotnet/aspnetcore/pull/67280) — [release/10.0] Add reference to System.Security.Cryptography.Xml in RepoTasks （PR / merged / wtgodbe）
  ASP.NET Core 10.0 の RepoTasks に `System.Security.Cryptography.Xml` への参照を追加し、依存関係アラートに対応しました。リリースブランチのビルドを利用する保守担当者は更新を確認してください。
- **⚠ セキュリティ** [#67270](https://github.com/dotnet/aspnetcore/issues/67270) — aspnet:10.0 - FailFast crash in TypeDescriptor.GetProperties() / ConcurrentDictionary..ctor() after upgrading from 10.0.8 to 10.0.9 （Issue / open / SPichichi）
  ASP.NET 10.0.9 へ更新後に Blazor Server が circuit 初期化時に FailFast するとの報告が未解決です。該当する利用者は issue の回避策・修正状況を確認し、更新判断を慎重に行ってください。
- **⚠ セキュリティ** [#65369](https://github.com/dotnet/aspnetcore/pull/65369) — feat(hosting): add url.query redaction for telemetry sensitive parameter （PR / open / claudiogodoy99）
  OpenTelemetry の `url.query` に機密値が含まれる環境は、提案中のクエリ値レダクション機能のレビュー・提供状況を確認してください（未マージのため、現時点で動作変更はありません）。

## 主要な変更点

- .NET 10.0 の `brace-expansion` を CVE-2026-14257 対応版へ更新し、9.0 / 10.0 の RepoTasks 依存関係アラートも修正しました。10.0 の `keyv` アラートは別途残っています。
- ASP.NET 10.0.9 への更新後に Blazor Server が FailFast するという報告（#67270）が未解決です。該当環境では影響と回避策を追跡してください。
- Antiforgery 応答の back/forward cache をオプトインで許可する案（#68738）と、Antiforgery / MVC / Components で claims principal のキャッシュ識別子を統一する案（#69312）がレビュー中です。
- OpenTelemetry の `url.query` に対する機密値レダクション（#65369）は未マージの提案です。導入済み機能として扱わないでください。
- Blazor では破棄済みコンポーネントへの JS interop 呼び出しを抑止し、Virtualize のアンカー・スクロールテストを安定化しました。
- SignalR / Hosting の telemetry・activity 生成オーバーヘッド削減や、SignalR クライアントのメッセージ本文ログをオプトイン可能にする変更がレビュー中です。
- フォーム検証の改善案と release/11.0 のブランチ・ポリシー整備が並行して進んでいます。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69542 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from f7014ff7ef50b9bdbd7b90314a3b0fa1f989160b to 8a2bbe8b54b10a56085b806952f9863efc1fa452 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69542> |
| PR | #69543 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from f7014ff7ef50b9bdbd7b90314a3b0fa1f989160b to 8a2bbe8b54b10a56085b806952f9863efc1fa452 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69543> |
| PR | #69533 | Disable Dependabot cooldowns for all submodule updates | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69533> |
| PR | #69519 | Improve guidance for project and npm workspace relocations | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69519> |
| PR | #69517 | Avoid sending JSInterop calls when component is disposed | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69517> |
| PR | #69498 | Expose the daily PR Attention Pulse JSON snapshot | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69498> |
| PR | #69507 | Consolidate Components contributor guidance | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69507> |
| PR | #69514 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from e6049f34a4bf0741889f37fc26313cda7b59c46a to f7014ff7ef50b9bdbd7b90314a3b0fa1f989160b | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69514> |
| PR | #69513 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from e6049f34a4bf0741889f37fc26313cda7b59c46a to f7014ff7ef50b9bdbd7b90314a3b0fa1f989160b | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69513> |
| PR | #69441 | Stabilize Virtualize anchor mode test setup | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69441> |
| PR | #69465 | Stabilize Virtualize mid-list scroll setup | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69465> |
| PR | #69334 | [release/9.0] (deps): Bump src/submodules/googletest from `36ba75f` to `8eff9e3` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69334> |
| PR | #69332 | [release/8.0] (deps): Bump src/submodules/googletest from `36ba75f` to `8eff9e3` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69332> |
| PR | #69512 | [main] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `7fd78bb` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69512> |
| PR | #69475 | [main] Source code updates from dotnet/dotnet | closed | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69475> |
| PR | #69011 | Add a read-only expert pull request review skill | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69011> |
| PR | #69467 | Simplify PR review output and reviewer guidance selection | closed | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69467> |
| PR | #69564 | Only handle form POSTs in migrations endpoint | open | adomorn | <https://github.com/dotnet/aspnetcore/pull/69564> |
| PR | #69563 | Fix UseKestrel(port) on derived WebApplicationFactory from WithWebHostBuilder() | open | SkyDevLab | <https://github.com/dotnet/aspnetcore/pull/69563> |
| PR | #69562 | Unify the FormFeature Content-Type exception message and document the form exceptions | open | su-senka | <https://github.com/dotnet/aspnetcore/pull/69562> |
| PR | #69560 | Add opt-in SignalR C# client message content logging | open | ziyiding-ms | <https://github.com/dotnet/aspnetcore/pull/69560> |
| PR | #69558 | [Kestrel/SignalR] Reuse the boxed server.port endpoint tag | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/69558> |
| PR | #69557 | [SignalR] Reduce hub invocation activity overhead | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/69557> |
| PR | #69556 | [Hosting] Reduce request end telemetry overhead | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/69556> |
| PR | #69555 | [Hosting] Reduce activity creation allocations | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/69555> |
| PR | #69559 | [Security] Avoid boxing the authorization metrics tag | open | martincostello | <https://github.com/dotnet/aspnetcore/pull/69559> |
| PR | #69534 | Restore dev-certs diagnostics in Native AOT tools | open | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/69534> |
| PR | #69553 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69553> |
| PR | #69550 | Add release/11.0 automation and stop merge flows | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69550> |
| PR | #69551 | [release/11.0] Add release/11.0 automation | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69551> |
| PR | #69552 | Add release/11.0 policies and November servicing milestones | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69552> |
| PR | #69548 | Fix dev-certs OpenSSL trust guidance message formatting | open | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/69548> |
| PR | #69547 | Document source-generator wiring and build-gate gotchas in agent instruction files | open | rghvgrv | <https://github.com/dotnet/aspnetcore/pull/69547> |
| PR | #69544 | Bump the verify group with 1 update | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69544> |
| PR | #69535 | [main] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69535> |
| PR | #69538 | [release/8.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69538> |
| PR | #69541 | [release/10.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69541> |
| PR | #69539 | [release/8.0] (deps): Bump src/submodules/googletest from `36ba75f` to `4267679` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69539> |
| PR | #69540 | [release/10.0] (deps): Bump src/submodules/googletest from `8eff9e3` to `4267679` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69540> |
| PR | #69537 | [release/9.0] (deps): Bump src/submodules/googletest from `36ba75f` to `4267679` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69537> |
| PR | #69536 | [release/9.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69536> |
| PR | #69520 | Unquarantine `NavigationLock` overlapping `PushState` test | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69520> |
| PR | #69511 | [main] (deps): Bump src/submodules/googletest from `8eff9e3` to `4267679` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69511> |
| PR | #69521 | Embed sanitized Pulse JSON snapshot directly in the PR Attention Pulse issue body | open | Copilot | <https://github.com/dotnet/aspnetcore/pull/69521> |
| PR | #69515 | Add minimal-diff and Native AOT agent guidance | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69515> |
| PR | #69522 | [release/11.0] Avoid sending JSInterop calls when component is disposed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69522> |
| PR | #69506 | Update comments in `/refresh` implementation | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69506> |
| PR | #69505 | Prevent multiple browser file uploads from hanging | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/69505> |
| PR | #69504 | Handle enhanced navigation fetch failures | open | NanthiniMahalingam | <https://github.com/dotnet/aspnetcore/pull/69504> |
| PR | #69502 | Replace PR reviewer orchestration with a frozen review bundle | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69502> |
| Issue | #69561 | [API Proposal] Add HttpConnectionOptions.LogMessageContent for SignalR client diagnostics | open | ziyiding-ms | <https://github.com/dotnet/aspnetcore/issues/69561> |
| Issue | #69545 | ASP.NET Core Folder Publish Option | open | acguitar | <https://github.com/dotnet/aspnetcore/issues/69545> |
| Issue | #69554 | `RateLimitingMiddleware never disposes its PartitionedRateLimiter; the limiter's timer loop keeps the whole host reachable after shutdown` | closed | chris-fixportal | <https://github.com/dotnet/aspnetcore/issues/69554> |
| Issue | #69549 | "Body was inferred but..." dependency injection error message incredibly frustrating to debug | open | reinux | <https://github.com/dotnet/aspnetcore/issues/69549> |
| Issue | #69546 | Partially deployment for Asp.net Core Blazor Web Apps | open | acguitar | <https://github.com/dotnet/aspnetcore/issues/69546> |
| Issue | #69532 | RateLimitingMiddleware never disposes its PartitionedRateLimiter, so its periodic timer keeps every disposed WebApplicationFactory host alive | closed | Floorsource | <https://github.com/dotnet/aspnetcore/issues/69532> |
| Issue | #69527 | [Validation] Async field validation while editing a form | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69527> |
| Issue | #69530 | [Validation] Distinguish async validation failures from invalid values | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69530> |
| Issue | #69526 | [Validation] Custom validation attribute across browser and server | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69526> |
| Issue | #69525 | [Validation] Async whole-form validation on submit | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69525> |
| Issue | #69528 | [Validation] Opt out of static SSR browser validation | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69528> |
| Issue | #69529 | [Validation] Nested-field validation in a static SSR form | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69529> |
| Issue | #69531 | [Validation] Browser feedback and server validation in a static SSR form | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69531> |
| Issue | #69524 | [Validation] Localized form messages in static and interactive Blazor | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69524> |
| Issue | #69523 | Razor component endpoints share one mutable `HttpMethodMetadata`, so `RequireCors` on one app changes every app in the process and can crash matcher construction | open | egilclever | <https://github.com/dotnet/aspnetcore/issues/69523> |
| Issue | #69516 | Improve guidance for project and npm workspace relocations | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69516> |
| Issue | #69501 | Blazor Virtualize can use a disposed DotNetObjectReference during rapid navigation | closed | JamesNK | <https://github.com/dotnet/aspnetcore/issues/69501> |
| Issue | #69518 | Cache Tag Helper key collisions for multi-value query parameters containing commas | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69518> |
| Issue | #69503 | Design Proposal: Automatically adapt the Blazor Web template to the user's color scheme | open | PreethikaSelvam | <https://github.com/dotnet/aspnetcore/issues/69503> |
| Issue | #69510 | Blazor framework static web assets not included when OutputType is Library | closed | mikeKuester | <https://github.com/dotnet/aspnetcore/issues/69510> |
| Issue | #69509 | RateLimitingMiddleware keeps a disposed app alive | open | yasmoradi | <https://github.com/dotnet/aspnetcore/issues/69509> |
| Issue | #69508 | Add minimal-diff and Native AOT test guidance for coding agents | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69508> |
| Issue | #66693 | Quarantine FormWithParentBindingContextTest.DataAnnotationsWorkForForms | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/66693> |
| Issue | #69137 | [Validation] The TempData cookie | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69137> |
| Issue | #69341 | Microsoft.AspNetCore.App.Internal.Assets is only injected when .razor files exist at restore time — the canonical Docker "restore before copying sources" pattern silently publishes a Blazor app without _framework assets (blazor.web.js → 404) | closed | borgez | <https://github.com/dotnet/aspnetcore/issues/69341> |
