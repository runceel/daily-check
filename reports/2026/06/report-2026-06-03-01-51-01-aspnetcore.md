# 差分レポート — 2026-06-03 版 / dotnet/aspnetcore

> 親レポート: [report-2026-06-03-01-51-01.md](./report-2026-06-03-01-51-01.md)
> 対象期間 (UTC): `2026-06-02 03:40:22 〜 2026-06-03 01:51:01`

## 3.2 dotnet/aspnetcore  *(サマリーモード)*

### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | 18 |
| オープン中の新規 PR | 多数 (大半は infra / dependency バンプの 1ES / arcade / Maestro 系自動 PR、本表では非掲載) |
| クローズ (未マージ) PR | 多数 (同上、infra クリーンアップ・Dependabot 自動) |
| 新規 Issue          | 8 (うち 2 件は dnceng-bot による mirror failure、2 件は flaky test 自動 quarantine) |
| クローズ Issue      | 2 |

> 注: aspnetcore は infra / branding bump / Dependabot / Maestro による自動 PR/Issue が大量に流れるため、本サマリーでは「人間が起票したもの」「複数バージョン横断で意味のある変更」「現役機能に影響するバグ報告」を中心に抽出しています。

### 主要な変更点

- **テスト・CI 基盤の連続強化**: [#66873](https://github.com/dotnet/aspnetcore/pull/66873) で issue triage agent を orchestrator + reviewer の 2 段構成に分割、[#66986](https://github.com/dotnet/aspnetcore/pull/66986) で test-quarantine prompt を「誤った Issue リンクに耐性を持たせる」よう強化、[#66935](https://github.com/dotnet/aspnetcore/pull/66935) で HELIX のハングダンプを `HELIX_WORKITEM_UPLOAD_ROOT` に出力するよう変更。連続して品質ゲートのハードニングが進行中
- **本物のバグ修正は [#66727](https://github.com/dotnet/aspnetcore/pull/66727)**: `UnixCertificateManager` と `MacOSCertificateManager` の潜在デッドロック修正 (Youssef1313)。Kestrel HTTPS / dev-cert 周りで影響が出る可能性があり、リリースブランチへの backport を要監視
- **1ES Components E2E パイプライン整備**: [#66856](https://github.com/dotnet/aspnetcore/pull/66856) で release/10.0 に 1ES Unofficial pipeline を追加、[#66985](https://github.com/dotnet/aspnetcore/pull/66985) で `components-e2e-internal` の PR トリガを追加。Blazor Server Components の E2E を 10.0 release 前に整備しきる方向
- **Branding bump**: [#66982](https://github.com/dotnet/aspnetcore/pull/66982) (8.0.29) / [#66983](https://github.com/dotnet/aspnetcore/pull/66983) (9.0.18) で次回 servicing リリース番号を確定
- **新規重要 Issue 3 件**: [#66980](https://github.com/dotnet/aspnetcore/issues/66980) は `Microsoft.Extensions.Validation` の API 仕上げ — 10.0 GA に向けた最終 API レビューに直結、[#66978](https://github.com/dotnet/aspnetcore/issues/66978) は 10.0.8 アップグレード後の **Blazor WebAssembly MSAL 認証リグレッション** (顧客報告)、[#66976](https://github.com/dotnet/aspnetcore/issues/66976) は SDK バンドルツール (`dotnet-watch` 等) を「aggregate executable shim」アーキテクチャに移行するという DamianEdwards 起票の構造的提案
- **Maestro / arcade / dependabot による自動依存更新**: [#66664](https://github.com/dotnet/aspnetcore/pull/66664) / [#66640](https://github.com/dotnet/aspnetcore/pull/66640) / [#66699](https://github.com/dotnet/aspnetcore/pull/66699) / [#66717](https://github.com/dotnet/aspnetcore/pull/66717) / [#66963](https://github.com/dotnet/aspnetcore/pull/66963) など release/8.0 / 9.0 / 10.0 への横断的な dep update が同日中に揃って通った

### 変化のあった PR / Issue (主要のみ)

| 種別 | 番号 | タイトル | 状態 | 1 行説明 | リンク |
| ---- | ---- | -------- | ---- | -------- | ------ |
| PR | #66727 | Fix possible deadlock in UnixCertificateManager and MacOSCertificateManager | merged | dev-cert / HTTPS 周りのデッドロック修正 | <https://github.com/dotnet/aspnetcore/pull/66727> |
| PR | #66873 | Split issue triage agent into orchestrator + reviewer | merged | issue triage AI agent を 2 段構成に再編 | <https://github.com/dotnet/aspnetcore/pull/66873> |
| PR | #66935 | Produce hang dumps in HELIX_WORKITEM_UPLOAD_ROOT | merged | flaky テストのハング解析改善 | <https://github.com/dotnet/aspnetcore/pull/66935> |
| PR | #66856 | [release/10.0] Add 1ES Unofficial pipeline for Components E2E tests | merged | Blazor Components E2E 用 1ES パイプライン追加 | <https://github.com/dotnet/aspnetcore/pull/66856> |
| PR | #66985 | Add PR triggers for components-e2e-internal | merged | E2E パイプラインの PR トリガ追加 | <https://github.com/dotnet/aspnetcore/pull/66985> |
| PR | #66986 | Harden test-quarantine prompt against wrong issue links | merged | quarantine 自動化プロンプトのリンク耐性強化 | <https://github.com/dotnet/aspnetcore/pull/66986> |
| PR | #66987 | Update Milestones for July | merged | July のマイルストーン整理 | <https://github.com/dotnet/aspnetcore/pull/66987> |
| PR | #66982 | Update branding to 8.0.29 | merged | 8.0.29 への branding bump | <https://github.com/dotnet/aspnetcore/pull/66982> |
| PR | #66983 | Update branding to 9.0.18 | merged | 9.0.18 への branding bump | <https://github.com/dotnet/aspnetcore/pull/66983> |
| PR | #66766 | [release/8.0] Update System.Security.Cryptography.Xml in RepoTasks | merged | 8.0 サービシングの暗号系依存更新 | <https://github.com/dotnet/aspnetcore/pull/66766> |
| PR | #66640 | [release/9.0] Update dependencies from dotnet/extensions | merged | 9.0 への M.E. 依存更新 | <https://github.com/dotnet/aspnetcore/pull/66640> |
| PR | #66664 | [release/8.0] Update dependencies from dotnet/source-build-assets | merged | 8.0 source-build 同期 | <https://github.com/dotnet/aspnetcore/pull/66664> |
| PR | #66699 | [release/8.0] Update dependencies from dotnet/source-build-externals | merged | 同上 (externals) | <https://github.com/dotnet/aspnetcore/pull/66699> |
| PR | #66717 | [release/9.0] Update dependencies from dotnet/arcade | merged | 9.0 arcade 同期 | <https://github.com/dotnet/aspnetcore/pull/66717> |
| PR | #66963 | [release/10.0] Source code updates from dotnet/dotnet | merged | 10.0 main → release/10.0 へのコード同期 | <https://github.com/dotnet/aspnetcore/pull/66963> |
| PR | #66973 / #66974 / #66975 | [release/8.0/9.0/10.0] Bump src/submodules/googletest | merged | 3 ブランチ揃って googletest を更新 | <https://github.com/dotnet/aspnetcore/pull/66975> |
| Issue | #66980 | Microsoft.Extensions.Validation API updates | open | 10.0 GA 向けの Validation API 仕上げ | <https://github.com/dotnet/aspnetcore/issues/66980> |
| Issue | #66978 | MSAL Authentication Issue After Upgrading to 10.0.8 (Blazor WebAssembly) | open | 顧客報告の認証リグレッション | <https://github.com/dotnet/aspnetcore/issues/66978> |
| Issue | #66976 | Update SDK-bundled tools to use aggregate executable shims | open | dotnet-watch 等のシム構造再設計提案 | <https://github.com/dotnet/aspnetcore/issues/66976> |
| Issue | #66972 | [Infrastructure]: Build incrementality issues | closed (再 open 要監視) | ビルド incrementality 問題、一度クローズ | <https://github.com/dotnet/aspnetcore/issues/66972> |
| Issue | #65518 | ASP.NET fails to start on Linux | closed | 古い起票のクローズ整理 | <https://github.com/dotnet/aspnetcore/issues/65518> |
| Issue | #66969 / #66970 | Quarantine flaky test (RedirectStreaming* / ServerVirtualizationTest) | open | bot 自動 quarantine | <https://github.com/dotnet/aspnetcore/issues/66970> |
