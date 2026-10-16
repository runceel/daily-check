# dotnet/aspnetcore

対象期間: 2026-09-28 01:19:34 〜 2026-10-06 01:28:52 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 58 |
| クローズ (未マージ) PR     | 7 |
| 新規 PR (オープン中)       | 31 |
| 新規 Issue                 | 48 |
| クローズ Issue             | 40 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#69605](https://github.com/dotnet/aspnetcore/issues/69605) — Cookie name matching is case-insensitive, diverging from RFC 6265's case-sensitive semantics （Issue / open / DeagleGross）
  未解決の挙動報告であり変更済みではありません。大文字小文字の異なる cookie 名を使うアプリは名前の衝突と今後の比較仕様を確認してください。
- **⚠ 破壊的変更** [#69277](https://github.com/dotnet/aspnetcore/pull/69277) — [Identity] Use ordinal equality for external login keys （PR / open / javiercn）
  未マージです。Identity 利用者は DB collation だけで一致していた provider/key の大文字小文字・末尾空白を点検し、ordinal 不一致の拒否に備えてください。
- **⚠ セキュリティ** [#69575](https://github.com/dotnet/aspnetcore/issues/69575) — [Backport request][security] PR #65765 (HTTP/2 trailer CL-mismatch → connection-level GOAWAY) is not in any supported release — verified live on 8.0.31, 9.0.20, 10.0.12 （Issue / open / beatzbyb0x-create）
  HTTP/2 trailer の Content-Length 不一致処理に関する backport 要求です。報告者の版別検証と公式 servicing 決定を区別し、Kestrel 利用者は公開修正版を追跡してください。
- **⚠ セキュリティ** [#69394](https://github.com/dotnet/aspnetcore/pull/69394) — Rotate security stamp on passkey removal （PR / open / Copilot）
  未マージです。passkey 削除で security stamp を更新する提案を追跡し、資格情報削除後の既存セッションの失効を確認してください。
- **⚠ セキュリティ** [#69312](https://github.com/dotnet/aspnetcore/pull/69312) — Unify claims principal cache identity （PR / open / javiercn）
  未マージです。VaryByUser 利用者は claims による利用者分離と cache key の更新による miss を確認してください。既存 Antiforgery token は互換維持を意図しています。
- **⚠ セキュリティ** [#68738](https://github.com/dotnet/aspnetcore/pull/68738) — Add AntiforgeryOptions.AllowBackForwardCache （PR / open / astralmaster）
  未マージの opt-in 提案です。有効化する場合は `no-store` を外すブラウザー履歴 cache と token の扱いを評価してください。既定 false は維持します。
- **⚠ セキュリティ** [#65369](https://github.com/dotnet/aspnetcore/pull/65369) — feat(hosting): add url.query redaction for telemetry sensitive parameter （PR / closed / claudiogodoy99）
  未マージでクローズされており、この提案による秘匿化は導入されていません。telemetry に機密 query を載せるアプリは現行の redaction 設定を確認してください。
- **⚠ セキュリティ** [dotnet/aspnetcore#68834](https://github.com/dotnet/aspnetcore/pull/68834) — passkey 公開鍵の COSE alg／crv 組合せ検証（マージ済み、手動補足）
  passkey 利用者は ES256/P-256、ES384/P-384、ES512/P-521 の正しい組合せを使用し、不正鍵の `PasskeyException` を処理してください。

分類の補正: CPM 整備、authorization metrics の boxing 削減、WsFederation の Properties 不具合、CSP の検証 Issue、FailFast 報告は、タイトル・文脈だけで脆弱性修正と扱えないため重要分類から除外しました。クローズ状態だけで修正版公開とは判断しません。

## 主要な変更点

- マージ済み58件では [passkey の COSE 組合せ検証](https://github.com/dotnet/aspnetcore/pull/68834)を手動で重要変更に追加しました。公開リリースへの収録は別途確認が必要です。
- Identity の ordinal 外部 login 照合、passkey 削除時の stamp 更新、claims-based cache identity は未マージ。cookie 名比較の Issue と併せて認証・利用者分離を継続監視します。
- HTTP/2 trailer の backport 要求は未解決、query redaction 提案は未マージで終了、Antiforgery の back/forward cache は opt-in 提案です。修正済みとは扱いません。
- [SignalR hot path と benchmark](https://github.com/dotnet/aspnetcore/pull/69189)、[Virtualize の保留中スクロール修正](https://github.com/dotnet/aspnetcore/pull/69288)がマージされました。
- caching は [absent／empty key の区別](https://github.com/dotnet/aspnetcore/pull/69233)、[response cache key のサイズ計数](https://github.com/dotnet/aspnetcore/pull/69231)、[CacheTagHelper vary-by key のサイズ計数](https://github.com/dotnet/aspnetcore/pull/69232)を改善しました。
- .NET 11 の release automation／policy、Native AOT dev-certs 診断、CI・レビュー運用整備が進みました。新規 Issue の報告と実装済み変更を区別して確認してください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #69677 | Prevent false test-quarantine network failures | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69677> |
| PR | #69633 | Support scoped attributes in test quarantine workflow | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69633> |
| PR | #69661 | [release/11.0] Update dependencies from dnceng/internal/dotnet-optimization | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69661> |
| PR | #69670 | Label evidence-backed regressions during issue triage | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69670> |
| PR | #69641 | CI step for running workflow tests | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69641> |
| PR | #69668 | Improve docs workflow context and author attribution | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69668> |
| PR | #69200 | Add SignalR architecture overview | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69200> |
| PR | #69645 | [main] (deps): Bump src/submodules/googletest from `4267679` to `bc548fd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69645> |
| PR | #69594 | Document build validation and CI investigation workflows | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69594> |
| PR | #69646 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 2e48b7dec08004636dc4dd0c58ca40711d5d5834 to 7042280515eb35cea60b5ba5026825e4674746d9 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69646> |
| PR | #69647 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 2e48b7dec08004636dc4dd0c58ca40711d5d5834 to 7042280515eb35cea60b5ba5026825e4674746d9 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69647> |
| PR | #69634 | Route PR review guides from a table and harden review preparation and publishing | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69634> |
| PR | #69653 | PR attention queue: treat pending-ci-rerun as a merge gate and dotnet-policy-service as a bot | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69653> |
| PR | #69506 | Update comments in `/refresh` implementation | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/69506> |
| PR | #69665 | Fix pr-docs-check workflow: Scope PR token to upstream and automation fork | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69665> |
| PR | #69502 | Replace PR reviewer orchestration with a frozen review bundle | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69502> |
| PR | #69609 | Unquarantine Linux Kestrel QUIC TLS tests | merged | BrennanConroy | <https://github.com/dotnet/aspnetcore/pull/69609> |
| PR | #69629 | Restore external threat detection with gh-aw v0.89.21 | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69629> |
| PR | #69492 | Fix discussion gates in PR attention queue | merged | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69492> |
| PR | #69521 | Embed sanitized Pulse JSON snapshot directly in the PR Attention Pulse issue body | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69521> |
| PR | #69566 | [main] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69566> |
| PR | #69535 | [main] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69535> |
| PR | #69608 | Use ubuntu-latest for test quarantine helper jobs | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69608> |
| PR | #69511 | [main] (deps): Bump src/submodules/googletest from `8eff9e3` to `4267679` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69511> |
| PR | #69607 | Fix comments in `CacheView` | merged | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69607> |
| PR | #69288 | Fix Virtualize user scroll during pending `ScrollToItemAsync` | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69288> |
| PR | #69553 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69553> |
| PR | #69648 | [release/10.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69648> |
| PR | #69613 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69613> |
| PR | #69627 | [release/11.0] (deps): Bump src/submodules/googletest from `4267679` to `bc548fd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69627> |
| PR | #69642 | [ci] Use CoreCLR for WebAssembly trimming checks | merged | kotlarmilos | <https://github.com/dotnet/aspnetcore/pull/69642> |
| PR | #68834 | Validate COSE ALG+CRV combination when decoding passkey CredentialPublicKey | merged | GrantTotinov | <https://github.com/dotnet/aspnetcore/pull/68834> |
| PR | #69601 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 8a2bbe8b54b10a56085b806952f9863efc1fa452 to 2e48b7dec08004636dc4dd0c58ca40711d5d5834 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69601> |
| PR | #69600 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 8a2bbe8b54b10a56085b806952f9863efc1fa452 to 2e48b7dec08004636dc4dd0c58ca40711d5d5834 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69600> |
| PR | #69550 | Add release/11.0 automation and stop merge flows | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69550> |
| PR | #69552 | Add release/11.0 policies and November servicing milestones | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69552> |
| PR | #69189 | Improve SignalR hot paths and add regression benchmarks | merged | davidfowl | <https://github.com/dotnet/aspnetcore/pull/69189> |
| PR | #69584 | Quarantine Linux Kestrel QUIC TLS failures | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69584> |
| PR | #69548 | Fix dev-certs OpenSSL trust guidance message formatting | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/69548> |
| PR | #69534 | Restore dev-certs diagnostics in Native AOT tools | merged | akoeplinger | <https://github.com/dotnet/aspnetcore/pull/69534> |
| PR | #69233 | [Caching] Distinguish absent and empty cache key values | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69233> |
| PR | #69231 | [Caching] Include response cache keys in size accounting | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69231> |
| PR | #69232 | [MVC] Account for CacheTagHelper vary-by key size | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69232> |
| PR | #69237 | [gRPC] Use typed API to read certificate DNS names | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69237> |
| PR | #69515 | Add minimal-diff and Native AOT agent guidance | merged | javiercn | <https://github.com/dotnet/aspnetcore/pull/69515> |
| PR | #69149 | Limit Markdown-only CI exclusions to root files | merged | Copilot | <https://github.com/dotnet/aspnetcore/pull/69149> |
| PR | #69568 | Upgrade agentic workflows to gh-aw v0.89.21 | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69568> |
| PR | #69520 | Unquarantine `NavigationLock` overlapping `PushState` test | merged | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/69520> |
| PR | #69572 | [release/11.0] Restore dev-certs diagnostics in Native AOT tools | merged | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69572> |
| PR | #69617 | [release/11.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69617> |
| PR | #69615 | [release/10.0] Update npm dependencies | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69615> |
| PR | #69540 | [release/10.0] (deps): Bump src/submodules/googletest from `8eff9e3` to `4267679` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69540> |
| PR | #69541 | [release/10.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69541> |
| PR | #69599 | [release/11.0] (deps): Bump src/submodules/MessagePack-CSharp from `365965f` to `be938cd` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69599> |
| PR | #69598 | [release/11.0] (deps): Bump src/submodules/googletest from `d89aac5` to `4267679` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69598> |
| PR | #69602 | [release/11.0] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69602> |
| PR | #69551 | [release/11.0] Add release/11.0 automation | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69551> |
| PR | #69567 | [release/11.0] Update dependencies from dotnet/extensions | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69567> |
| PR | #69537 | [release/9.0] (deps): Bump src/submodules/googletest from `36ba75f` to `4267679` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69537> |
| PR | #69539 | [release/8.0] (deps): Bump src/submodules/googletest from `36ba75f` to `4267679` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69539> |
| PR | #69603 | Bump Microsoft.WixToolset.Sdk from 6.0.3-dotnet.6 to 6.0.3-dotnet.14 | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69603> |
| PR | #65629 | Fix InputText binding with Shadow DOM elements | closed | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/65629> |
| PR | #65369 | feat(hosting): add url.query redaction for telemetry sensitive parameter | closed | claudiogodoy99 | <https://github.com/dotnet/aspnetcore/pull/65369> |
| PR | #69059 | Fix rendering of messages after tool call | closed | dariatiurina | <https://github.com/dotnet/aspnetcore/pull/69059> |
| PR | #69544 | Bump the verify group with 1 update | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69544> |
| PR | #69679 | [release/10.0] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69679> |
| PR | #69678 | Prevent malformed Blazor WebAssembly packages | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69678> |
| PR | #69674 | Handle documentation draft reruns explicitly | open | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/69674> |
| PR | #69636 | [release/11.0] Stabilize Virtualize mid-list scroll setup | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/69636> |
| PR | #69669 | Add SignalR guidance to the PR reviewer | open | PureWeen | <https://github.com/dotnet/aspnetcore/pull/69669> |
| PR | #69667 | Fix OpenAPI floating-point union schema in .NET 10 | open | shantanu2002git | <https://github.com/dotnet/aspnetcore/pull/69667> |
| PR | #69660 | Fix WebSocket accept context state leaking between connections | open | utsavjain2809 | <https://github.com/dotnet/aspnetcore/pull/69660> |
| PR | #69569 | [Blazor] Isolate Razor component HTTP method metadata per endpoint | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69569> |
| PR | #69662 | [main] Update dependencies from dnceng/internal/dotnet-optimization | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69662> |
| PR | #69622 | [main] Source code updates from dotnet/dotnet | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69622> |
| PR | #69659 | Fix misleading error for synchronous async JS interop calls | open | shantanu2002git | <https://github.com/dotnet/aspnetcore/pull/69659> |
| PR | #69658 | [Blazor] Make DefaultComponentPropertyActivator composable | open | HenKun | <https://github.com/dotnet/aspnetcore/pull/69658> |
| PR | #69610 | [Identity] Persist Aaguid in EF Core CreateUserPasskey | open | MuhammadBilal64 | <https://github.com/dotnet/aspnetcore/pull/69610> |
| PR | #69637 | Recreate missing temp directory | open | VAllens | <https://github.com/dotnet/aspnetcore/pull/69637> |
| PR | #69656 | [OpenApi] Don't pass ignored property metadata to schema transformers for polymorphic discriminator nodes | open | MuhammadBilal64 | <https://github.com/dotnet/aspnetcore/pull/69656> |
| PR | #69621 | Fix inconsistent line endings and BOMs in project templates | open | volantine | <https://github.com/dotnet/aspnetcore/pull/69621> |
| PR | #69565 | avoid SslStream when TlsSession is available.  | open | wfurt | <https://github.com/dotnet/aspnetcore/pull/69565> |
| PR | #69631 | Replace custom reference resolution with explicit references and CPM | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69631> |
| PR | #69570 | [MVC] Fix Cache Tag Helper key collisions for multi-value query values | open | MuhammadBilal64 | <https://github.com/dotnet/aspnetcore/pull/69570> |
| PR | #69639 | [release/8.0] Update dependencies from dotnet/source-build-assets | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69639> |
| PR | #69638 | [release/9.0] Update dependencies from dotnet/source-build-assets | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69638> |
| PR | #69632 | [OpenApi] Apply XML doc comments to nullable struct schemas | open | MuhammadBilal64 | <https://github.com/dotnet/aspnetcore/pull/69632> |
| PR | #69585 | Fix BindNever for record primary constructor parameters | open | MuhammadBilal64 | <https://github.com/dotnet/aspnetcore/pull/69585> |
| PR | #69628 | [release/8.0] Update dependencies from dotnet/source-build-externals | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69628> |
| PR | #69626 | [release/9.0] (deps): Bump src/submodules/googletest from `36ba75f` to `bc548fd` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69626> |
| PR | #69625 | [release/8.0] (deps): Bump src/submodules/googletest from `36ba75f` to `bc548fd` | open | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/69625> |
| PR | #69623 | [release/8.0] Update dependencies from dotnet/arcade | open | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/69623> |
| PR | #69616 | [release/9.0] Update npm dependencies | open | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/69616> |
| PR | #69587 | Clarify Copilot guidance for framework-only assertions | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/69587> |
| PR | #69579 | Include endpoint display name in parameter binding error messages | open | marcominerva | <https://github.com/dotnet/aspnetcore/pull/69579> |
| PR | #69580 | Honor custom policies allowing output caching for authenticated users | open | marcominerva | <https://github.com/dotnet/aspnetcore/pull/69580> |
| Issue | #69676 | Backport #67591 to .NET 10: RDG binds a [FromHeader] parameter from the query string when another endpoint has a parameter of the same name and type | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69676> |
| Issue | #69675 | Request Delegate Generator: handlers that differ only by a parameter's default value share one interceptor, InvalidCastException at startup | open | AdCodicem | <https://github.com/dotnet/aspnetcore/issues/69675> |
| Issue | #69673 | Default Blazor Web App emits SectionRenderModeMismatch warning for Counter PageTitle | open | danroth27 | <https://github.com/dotnet/aspnetcore/issues/69673> |
| Issue | #69672 | [aw] Failed jobs: PR Documentation Check | open | aspnetcore-docs-bot[bot] | <https://github.com/dotnet/aspnetcore/issues/69672> |
| Issue | #69671 | Align HttpSys caching with ResponseCaching checks | open | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/69671> |
| Issue | #69666 | Simplify DI-backed rotating server certificate selection in Kestrel | open | rosebyte | <https://github.com/dotnet/aspnetcore/issues/69666> |
| Issue | #69604 | .NET 10 OpenAPI emits an object constraint for floating-point values | open | alexaka1 | <https://github.com/dotnet/aspnetcore/issues/69604> |
| Issue | #69657 | [Blazor] Make DefaultComponentPropertyActivator composable | open | HenKun | <https://github.com/dotnet/aspnetcore/issues/69657> |
| Issue | #69664 | MVC1001 analyzer should consider interfaces, not only concrete known attributes | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/69664> |
| Issue | #69663 | Expose request timeout timing information through HttpContext.Features | open | rosebyte | <https://github.com/dotnet/aspnetcore/issues/69663> |
| Issue | #69652 | `DefaultWebSocketManager` reuses mutable accept context across WebSocket connections | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69652> |
| Issue | #69651 | `MultipartReader.HeadersLengthLimit` is enforced against decoded `string.Length`, not raw UTF-8 byte count | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69651> |
| Issue | #69650 | URL Rewrite identity rules re-decode `Request.Path` | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69650> |
| Issue | #69655 | WebApplicationFactory.WithWebHostBuilder loses parent Kestrel configuration and CreateClient throws | open | thomhurst | <https://github.com/dotnet/aspnetcore/issues/69655> |
| Issue | #69654 | PR reviewer (/review): follow-ups from real runs | open | PureWeen | <https://github.com/dotnet/aspnetcore/issues/69654> |
| Issue | #69593 | Add agent guidance for AzDO and Helix CI investigation | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69593> |
| Issue | #69592 | Improve repository agent guidance for recurring workflow failures | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69592> |
| Issue | #69591 | Improve Copilot guidance for validation, PR feedback, and CI triage | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69591> |
| Issue | #69590 | Clarify Windows build commands, SourceLink fallback, and PR branch preflight for Copilot | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69590> |
| Issue | #69589 | Improve Copilot guidance for compatibility and validation | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69589> |
| Issue | #69588 | Improve Copilot validation guidance for multi-target and shared-artifact builds | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69588> |
| Issue | #69649 | Certificate forwarding replaces ITlsConnectionFeature without preserving TLS channel binding | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69649> |
| Issue | #69643 | [Static assets] Missing mapped assets can return an empty 200 response from the Blazor development server | open | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69643> |
| Issue | #69635 | Document that WS-Federation remote sign-out (wsignoutcleanup1.0) is unauthenticated and how to restrict or disable it | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69635> |
| Issue | #69606 | [IIS] [.NET9.0] Application Stopped is fired after Application Started after a pool recycling | open | julienGrd | <https://github.com/dotnet/aspnetcore/issues/69606> |
| Issue | #69582 | Quarantine Linux Kestrel HTTP/3 and QUIC TLS failures | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69582> |
| Issue | #69630 | OIDC remote sign-out signs out even when SignOutScheme authenticates no session, bypassing sid/iss binding | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69630> |
| Issue | #69624 | SignalR hub methods ignore `[AllowAnonymous]` | open | Tragetaschen | <https://github.com/dotnet/aspnetcore/issues/69624> |
| Issue | #69597 | Validation: non-success ValidationResult with null ErrorMessage is silently dropped (fail-open) | open | ViveliDuCh | <https://github.com/dotnet/aspnetcore/issues/69597> |
| Issue | #69620 | DBSC session authentication does not preserve the source scheme's per-request forwarding | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69620> |
| Issue | #69618 | DBSC derived session cookie should preserve source cookie path | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69618> |
| Issue | #69619 | DBSC derived cookie schemes should inherit the source scheme's DataProtectionProvider | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69619> |
| Issue | #69614 | WsFederationHandler discards AuthenticationProperties replaced in OnSecurityTokenReceived | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69614> |
| Issue | #69612 | Response compression: add a minimum response size threshold (MinimumSize) | open | abdelrahman-abusleem | <https://github.com/dotnet/aspnetcore/issues/69612> |
| Issue | #69611 | Negotiate: bound nested-group recursion depth in LdapAdapter.GetNestedGroups | open | rokonec | <https://github.com/dotnet/aspnetcore/issues/69611> |
| Issue | #69605 | Cookie name matching is case-insensitive, diverging from RFC 6265's case-sensitive semantics | open | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69605> |
| Issue | #69596 | [Blazor] Error UI is shown on a transient connection failure during reconnection when skipNegotiation is used, and stays after a successful reconnect | open | vargavik | <https://github.com/dotnet/aspnetcore/issues/69596> |
| Issue | #69595 | Remove .NET 12 bootstrap assembly pin and re-enable framework tests | open | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/69595> |
| Issue | #69586 | Clarify Copilot guidance for framework-only invariants vs user-reachable validation | open | javiercn | <https://github.com/dotnet/aspnetcore/issues/69586> |
| Issue | #69578 | Visual Studio Blazor WASM debug hangs on blank loading screen after first run | open | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/69578> |
| Issue | #69583 | Add E2E coverage for Components.AI | open | dariatiurina | <https://github.com/dotnet/aspnetcore/issues/69583> |
| Issue | #69581 | Bound aggregate in-flight response buffering in Response Caching | open | cincuranet | <https://github.com/dotnet/aspnetcore/issues/69581> |
| Issue | #69576 | Kestrel returns empty page without calling middleware for certain query parameters | closed | nikkilocke | <https://github.com/dotnet/aspnetcore/issues/69576> |
| Issue | #69577 | Kestrel accepts arbitrary/unknown transfer-codings before a final chunked (TE: identity,chunked / anything,chunked) — surfaced to app, keep-alive; nginx/HAProxy reject-close [revisit of #43664 decision] | open | beatzbyb0x-create | <https://github.com/dotnet/aspnetcore/issues/69577> |
| Issue | #69575 | [Backport request][security] PR #65765 (HTTP/2 trailer CL-mismatch → connection-level GOAWAY) is not in any supported release — verified live on 8.0.31, 9.0.20, 10.0.12 | open | beatzbyb0x-create | <https://github.com/dotnet/aspnetcore/issues/69575> |
| Issue | #69574 | [Backport request] Enforce RFC 9113 connection-specific header rejection on .NET 10 LTS — transfer-encoding/keep-alive/proxy-connection/upgrade still accepted in HTTP/2 requests | open | beatzbyb0x-create | <https://github.com/dotnet/aspnetcore/issues/69574> |
| Issue | #69573 | Microsoft.Extensions.Caching.SqlServer.DatabaseOperations Does not Support RetryLogicProvider | open | Coder3333 | <https://github.com/dotnet/aspnetcore/issues/69573> |
| Issue | #69571 | Error On Building Blazor_WASM Project: mnMicrosoft.NET.Sdk.WebAssembly.Browser.targets | open | KatzReveil | <https://github.com/dotnet/aspnetcore/issues/69571> |
| Issue | #69136 | [Validation] Property types for the TempData and session parameter attributes | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69136> |
| Issue | #69135 | [Validation] TempData on a streaming page, and switching to session storage | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69135> |
| Issue | #69130 | [Validation] QuickGrid row clicks | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69130> |
| Issue | #69125 | [Validation] Components that refuse to be cached in CacheView | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69125> |
| Issue | #69124 | [Validation] Forms and interactive components inside a CacheView | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69124> |
| Issue | #69123 | [Validation] Live components inside a CacheView | closed | oroztocil | <https://github.com/dotnet/aspnetcore/issues/69123> |
| Issue | #69420 | Remove inline threat detection workaround after gh-aw update | closed | wtgodbe | <https://github.com/dotnet/aspnetcore/issues/69420> |
| Issue | #68893 | [SignalR Java client]: signalr-messagepack 8.0.24 drops Android 7 support in a patch release | closed | alexeygritsenko | <https://github.com/dotnet/aspnetcore/issues/68893> |
| Issue | #68777 | Quarantine Microsoft.AspNetCore.Components.E2ETest.ServerExecutionTests.ServerVirtualizationTest.ScrollToItem_UserScrollDuringPr
[Content truncated due to length] | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68777> |
| Issue | #68755 | Validate Passkey Algorithm + CRV when decoding CredentialPublicKey | closed | BrennanConroy | <https://github.com/dotnet/aspnetcore/issues/68755> |
| Issue | #68943 | Output and Response Caching treat absent and empty query/header values as the same cache key | closed | cincuranet | <https://github.com/dotnet/aspnetcore/issues/68943> |
| Issue | #69214 | Response Caching: include retained cache-key bytes in MemoryCacheEntryOptions.Size | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/69214> |
| Issue | #66723 | `CacheTagHelper`: `MemoryCacheEntryOptions.Size` omits `vary-by` key memory | closed | rokonec | <https://github.com/dotnet/aspnetcore/issues/66723> |
| Issue | #69546 | Partially deployment for Asp.net Core Blazor Web Apps | closed | acguitar | <https://github.com/dotnet/aspnetcore/issues/69546> |
| Issue | #69169 | gRPC AuthContext: SAN dNSName extraction relies on parsing X509Extension.Format() text instead of typed API | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/69169> |
| Issue | #69508 | Add minimal-diff and Native AOT test guidance for coding agents | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69508> |
| Issue | #69148 | Some CI legs are still running for .md changes | closed | javiercn | <https://github.com/dotnet/aspnetcore/issues/69148> |
| Issue | #67611 | [Hot Reload with dotnet watch] Blazor WASM Standalone hot reload reports changes applied but UI is not updated in .NET 11 Preview 6 | closed | Chakolito | <https://github.com/dotnet/aspnetcore/issues/67611> |
| Issue | #68642 | Quarantine RoutingTest.NavigationLock_OverlappingNavigationsCancelExistingNavigations_PushState | closed | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/68642> |
| Issue | #65892 | Blazor Server: EventCallback on child pagination component does not invoke parent handler in specific page context | closed | FreezaCaipira | <https://github.com/dotnet/aspnetcore/issues/65892> |
| Issue | #66841 | HeadContent is not working when in SSR | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/66841> |
| Issue | #66599 | Error FilterStaticWebAssetEndpoints on build after updating to net10 (CSS?) | closed | rwb196884 | <https://github.com/dotnet/aspnetcore/issues/66599> |
| Issue | #66842 | Blazor with Radzen problem | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/66842> |
| Issue | #67200 | Blazor Server InputFile crashes process (0xffffffff) when debugging with VS 2026 Insiders + SDK 10.0.301 | closed | loria-denzell | <https://github.com/dotnet/aspnetcore/issues/67200> |
| Issue | #66966 | Form validation for Blazor (EditForm) to include validation error message for data annotations and custom validation at the same time | closed | vsfeedback | <https://github.com/dotnet/aspnetcore/issues/66966> |
| Issue | #67270 | aspnet:10.0 - FailFast crash in TypeDescriptor.GetProperties() / ConcurrentDictionary..ctor() after upgrading from 10.0.8 to 10.0.9 | closed | SPichichi | <https://github.com/dotnet/aspnetcore/issues/67270> |
| Issue | #67766 | Blazor WASM with fingerprinting enabled will make blazor.webassembly.{..}.js point to dotnet.js in error | closed | ricardomomm | <https://github.com/dotnet/aspnetcore/issues/67766> |
| Issue | #67884 | Blazor WASM on IIS Express: Unable to correctly rewrite content-encoding of precompressed static file | closed | jonganej | <https://github.com/dotnet/aspnetcore/issues/67884> |
| Issue | #68564 | OpenAPI document generation retains collectible endpoint contract assemblies | closed | sfmskywalker | <https://github.com/dotnet/aspnetcore/issues/68564> |
| Issue | #68674 | [Blazor Hybrid] A single lost render-batch ack permanently corrupts WebViewRenderer's unacknowledged batch queue | closed | alexyakunin | <https://github.com/dotnet/aspnetcore/issues/68674> |
| Issue | #68697 | Blazor WebAssembly runtime intermittently fails to start under concurrent page loads (.NET 10) | closed | Memphizzz | <https://github.com/dotnet/aspnetcore/issues/68697> |
| Issue | #69035 | Static SSR: stack overflow — StaticHtmlRenderer's HTML walk cycles through a disposed SectionOutletContentRenderer when a section registration races the walk | closed | sskieller | <https://github.com/dotnet/aspnetcore/issues/69035> |
