# microsoft/aspire

対象期間: 2026-06-04 02:26:50 〜 2026-06-05 04:03:36 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 8 |
| クローズ (未マージ) PR     | 8 |
| 新規 PR (オープン中)       | 16 |
| 新規 Issue                 | 19 |
| クローズ Issue             | 5 |

## 主要な変更点

- Bun アプリのデバッグ対応を AppHost に追加 (#17848, ellahathaway)。関連 Issue #17585 をクローズ。
- ATS (Aspire) のコンテナファイルエクスポートを追加 (#17877, sebastienros)、Foundry モデル生成を堅牢化 (#17886)。
- VS Code 拡張のパラメーター表示を改善 (#17881)。関連 Issue #17193 をクローズ。Keycloak の永続ライフタイムのテストカバレッジも追加 (#17914)。
- アクセシビリティ改善の大きな波: ダッシュボードのキーボード操作・リフロー・ダイアログ・モバイルナビ・Manage Data 選択セマンティクスなど、adamint による多数のオープン PR (#17926, #17929, #17927, #17928 ほか)。
- セキュリティ系: VS Code ターミナルコマンドのシェルインジェクション対策 (#17930)、aiohttp を 3.14.0 へ更新 (#17902)。
- 注目 Issue: 13.4 へのアップグレード後に PostgreSQL 実行が失敗 (#17907)、マルチターゲット AppHost のビルド失敗 MSB4036 (#17912)、winget インストールが誤ディレクトリへ自己展開 (#17909) など、13.4 まわりの不具合報告が目立つ。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #17925 | Show extension compatibility error for empty running AppHost describe | merged | adamint | <https://github.com/microsoft/aspire/pull/17925> |
| PR | #17914 | Add Keycloak persistent lifetime coverage | merged | danegsta | <https://github.com/microsoft/aspire/pull/17914> |
| PR | #17913 | Unblock WinGet Manifest job on locked-down 1ES agents; update manifest tags | merged | radical | <https://github.com/microsoft/aspire/pull/17913> |
| PR | #17886 | Harden Foundry model generation | merged | sebastienros | <https://github.com/microsoft/aspire/pull/17886> |
| PR | #17884 | [release/13.4] Add persistent container test coverage | merged | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/17884> |
| PR | #17881 | Improve parameter display in VS Code extension | merged | ellahathaway | <https://github.com/microsoft/aspire/pull/17881> |
| PR | #17877 | Add ATS container file export | merged | sebastienros | <https://github.com/microsoft/aspire/pull/17877> |
| PR | #17848 | Add Bun debugging support | merged | ellahathaway | <https://github.com/microsoft/aspire/pull/17848> |
| PR | #17908 | Fix release npm validation artifact downloads | closed | adamint | <https://github.com/microsoft/aspire/pull/17908> |
| PR | #17863 | [release/13.4] Update WinGet manifest tags | closed | radical | <https://github.com/microsoft/aspire/pull/17863> |
| PR | #17860 | [release/13.4] Unblock WinGet Manifest job on locked-down 1ES agents | closed | radical | <https://github.com/microsoft/aspire/pull/17860> |
| PR | #17856 | Document null connection string guard for PublishAsMigrationBundle with Azure Postgres | closed | Copilot | <https://github.com/microsoft/aspire/pull/17856> |
| PR | #17854 | Bump the npm_and_yarn group across 2 directories with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/17854> |
| PR | #17793 | [do not review] Fix popup tab focus navigation | closed | adamint | <https://github.com/microsoft/aspire/pull/17793> |
| PR | #17792 | [do not review] Restore focus after dashboard dialogs close | closed | adamint | <https://github.com/microsoft/aspire/pull/17792> |
| PR | #17791 | [do not review] Fix Resources tabs reflow | closed | adamint | <https://github.com/microsoft/aspire/pull/17791> |
| PR | #17935 | Rename RegistrationOrder to SortOrder and remove redundant OrderBy | open | Copilot | <https://github.com/microsoft/aspire/pull/17935> |
| PR | #17934 | Add aspire doctor hint when legacy .aspire/settings.json is detected | open | ellahathaway | <https://github.com/microsoft/aspire/pull/17934> |
| PR | #17930 | Harden VS Code terminal commands against shell injection | open | adamint | <https://github.com/microsoft/aspire/pull/17930> |
| PR | #17926 | Fix Resources accessibility keyboard and reflow paths | open | adamint | <https://github.com/microsoft/aspire/pull/17926> |
| PR | #17929 | Improve dashboard dialog and control accessibility states | open | adamint | <https://github.com/microsoft/aspire/pull/17929> |
| PR | #17927 | Improve mobile navigation and Help dialog accessibility | open | adamint | <https://github.com/microsoft/aspire/pull/17927> |
| PR | #17928 | Fix Manage Data selection accessibility semantics | open | adamint | <https://github.com/microsoft/aspire/pull/17928> |
| PR | #17924 | Add proxyless endpoint port allocator | open | danegsta | <https://github.com/microsoft/aspire/pull/17924> |
| PR | #17920 | ci: file GitHub issue when internal AzDO build breaks on main/release | open | radical | <https://github.com/microsoft/aspire/pull/17920> |
| PR | #17919 | fix(cli): detect winget install of aspire.exe so bundle stays in the winget package dir | open | radical | <https://github.com/microsoft/aspire/pull/17919> |
| PR | #17915 | Bump the npm_and_yarn group across 3 directories with 6 updates | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/17915> |
| PR | #17905 | Omit connection string placeholders when running EF tool during publish | open | Copilot | <https://github.com/microsoft/aspire/pull/17905> |
| PR | #17903 | Ignore hosted agent target port during deployment | open | tommasodotNET | <https://github.com/microsoft/aspire/pull/17903> |
| PR | #17902 | [security] Bump aiohttp to 3.14.0 in FoundryAgentBasic playground | open | IEvangelist | <https://github.com/microsoft/aspire/pull/17902> |
| PR | #17898 | Improve the Aspire VS Code extension funnel | open | adamint | <https://github.com/microsoft/aspire/pull/17898> |
| PR | #17897 | Fix VS Code AppHost discovery floods | open | adamint | <https://github.com/microsoft/aspire/pull/17897> |
| Issue | #17933 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17933> |
| Issue | #17932 | Internal build broken on release/aspire-internal-notify-validation | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/17932> |
| Issue | #17931 | ATS DTOs improvement ideas | open | sebastienros | <https://github.com/microsoft/aspire/issues/17931> |
| Issue | #17923 | Make VS Code dashboard launch behavior less obtrusive by default | open | adamint | <https://github.com/microsoft/aspire/issues/17923> |
| Issue | #17922 | Change dashboard to send telemetry directly rather than via the IDE protocol server | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/17922> |
| Issue | #17921 | aspire extension telemetry should include the Aspire version being targeted by the AppHost | open | adamint | <https://github.com/microsoft/aspire/issues/17921> |
| Issue | #17918 | aspire CLI telemetry should include the Aspire version being targeted by the AppHost | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/17918> |
| Issue | #17917 | Consider changing ergonomics for CLI accepting input values | open | timheuer | <https://github.com/microsoft/aspire/issues/17917> |
| Issue | #17916 | test: real CLI install scenarios — cross-route mixing, side-by-side, self-update | open | radical | <https://github.com/microsoft/aspire/issues/17916> |
| Issue | #17912 | Multi-targeted AppHost fails to build: error MSB4036: The "Microsoft.NET.Build.Tasks.PickBestRid" task was not found | open | bording | <https://github.com/microsoft/aspire/issues/17912> |
| Issue | #17911 | VS Code extension should execute resource commands without opening the terminal | open | adamint | <https://github.com/microsoft/aspire/issues/17911> |
| Issue | #17910 | aspire restore crashes with raw stack trace when CLI is older than project's configured SDK (TypeScript apphost) | open | radical | <https://github.com/microsoft/aspire/issues/17910> |
| Issue | #17909 | Winget based install self-extracts to the wrong directory | open | radical | <https://github.com/microsoft/aspire/issues/17909> |
| Issue | #17907 | PostgreSQL run fails after upgrading to 13.4 | open | Waleed-KH | <https://github.com/microsoft/aspire/issues/17907> |
| Issue | #17906 | VSC extension giving me weird errors | closed | timheuer | <https://github.com/microsoft/aspire/issues/17906> |
| Issue | #17904 | Foundry hosted agent references don't inject service env vars on publish | open | tommasodotNET | <https://github.com/microsoft/aspire/issues/17904> |
| Issue | #17901 | Allow the ACA environment's volume storage account to be customer-supplied | open | rsmithsa | <https://github.com/microsoft/aspire/issues/17901> |
| Issue | #17900 | Role-aware Azure resource deployment and governance in AppHost | closed | tommasodotNET | <https://github.com/microsoft/aspire/issues/17900> |
| Issue | #17899 | `aspire update` on stable branch is trying to modify `Nuget.config` | open | Atulin | <https://github.com/microsoft/aspire/issues/17899> |
| Issue | #17585 | Support debugging Bun apps from AppHost | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17585> |
| Issue | #17193 | Improve parameter display in VS Code extension | closed | JamesNK | <https://github.com/microsoft/aspire/issues/17193> |
