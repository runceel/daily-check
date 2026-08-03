# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-21 00:15:24 〜 2026-07-27 00:50:43 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 17 |
| オープン中の新規 PR     | 14 |
| クローズ (未マージ) PR  | 4 |
| 新規 Issue              | 30 |
| クローズ Issue          | 18 |
| 主要コントリビューター  | JamesNK, danegsta, davidfowl, DamianEdwards, IEvangelist, karolz-ms |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18858](https://github.com/microsoft/aspire/pull/18858) — [auto-sec] Consolidate Aspire JavaScript template dependency security remediations （PR / open / IEvangelist）
  JavaScript starter / playground 利用者は `brace-expansion`、`postcss`、`js-yaml`、`next`、`tar` などの更新を含む canonical PR の CI 完了を待ち、既存プロジェクト側の npm 依存も個別に更新してください。

## このリポジトリの要点

- Native AOT dashboard で resource console logs と埋め込み React frontend が利用可能になり、Team App も PR card から test / review / conflict 解消へ直接進める操作を追加しました。
- CLI は Windows bundle 更新時の一時ロックを retry し、Linux では system certificate roots を保持しながら development certificate の診断・修復手順を強化しました。
- JavaScript template の複数 security advisory をまとめて解消する PR #18858 はまだ CI blocked のため、次回も merge 状態を確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18846](https://github.com/microsoft/aspire/pull/18846) — Aspire Team App: card actions, per-repo skill routing, streaming UX

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +3828 / -226
- マージ日時 (UTC): `2026-07-27 00:02:26`

**変更概要**

- cross-repo PR review queue の card に、signal と lane に応じた Test、Review、Resolve conflicts、Address feedback、Evaluate CI failures などの action を追加しました。
- action は対象 PR の repository にある skill へ self-route し、skill がなければ PR context を含む明示的な fallback prompt を使います。
- stale-while-revalidate cache、SSE incremental streaming、進捗表示、review-debt queue、split-button menu と shutdown 処理も改善し、EMU account には first-party repo の既定値を適用します。

<details><summary>変更ファイル (21 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/extensions/aspire-team-app/README.md` | 45 | 1 |
| `.github/extensions/aspire-team-app/accounts.mjs` | 49 | 0 |
| `.github/extensions/aspire-team-app/accounts.test.mjs` | 22 | 1 |
| `.github/extensions/aspire-team-app/agent.mjs` | 440 | 0 |
| `.github/extensions/aspire-team-app/agent.test.mjs` | 266 | 0 |
| `.github/extensions/aspire-team-app/constants.mjs` | 7 | 0 |
| `.github/extensions/aspire-team-app/extension.mjs` | 49 | 1 |
| `.github/extensions/aspire-team-app/github.mjs` | 179 | 95 |
| `.github/extensions/aspire-team-app/github.test.mjs` | 92 | 1 |
| `.github/extensions/aspire-team-app/media/card-actions-dark.png` | 0 | 0 |
| `.github/extensions/aspire-team-app/media/card-actions.png` | 0 | 0 |
| `.github/extensions/aspire-team-app/media/review-queue-dark.png` | 0 | 0 |
| `.github/extensions/aspire-team-app/media/review-queue.png` | 0 | 0 |
| `.github/extensions/aspire-team-app/model.mjs` | 53 | 7 |
| `.github/extensions/aspire-team-app/model.test.mjs` | 102 | 1 |
| _... 他 6 件_ | | |

</details>

<details><summary>コミット (45 件)</summary>

- `da2b1a3` Aspire Team App: EMU repo defaults, card action buttons, honest agent…
- `ab76ff0` Self-route Test/Review card buttons to per-repo skills
- `a7b9587` Aspire Team App: streaming load, deterministic progress, aligned menus
- `436ced5` Aspire Team App: harden card actions from PR review feedback
- `01165bf` Aspire Team App: always complete the refresh progress bar
- `fb0395d` Aspire Team App: order snapshots by seq and dedupe queued sends
- `fb5372e` Aspire Team App: disambiguate cached PR lookup by host
- `10e6a45` Aspire Team App: keep review-debt PRs in the focused queue
- _... 他 37 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Aspire library の公開 API 変更はありません。canvas extension 内に account / agent routing module、server-side cache で検証された action descriptor、SSE の順序付け・重複排除を追加した非破壊的な機能拡張です。action は session の GitHub 権限で書き込みを開始できるため、loopback の Host / Origin 検証と server-side の canonical PR URL を trust boundary としています。

**既存利用者への影響**

extension 更新以外の移行は不要です。card action は repository への書き込みや review thread の解決を開始し得るため、実行前に対象 PR と session 権限を確認してください。

### [#18889](https://github.com/microsoft/aspire/pull/18889) — Fix disabled argument validation for interactive resource commands

- 作者: JamesNK / 状態: MERGED
- ラベル: `area-app-model`
- 変更行数: +78 / -6
- マージ日時 (UTC): `2026-07-26 23:55:08`

**変更概要**

- interactive resource command で、toggle により disabled になった dependent input が無害な default 値を保持していると誤って `Argument is disabled.` になる回帰を修正します。
- interactive prompt では dynamic callback の実行済み集合が意図的に `null` であるため、その場合に non-interactive 用の追加 check を適用しないようにしました。
- non-interactive request では、依存不足で callback が実行できなかった disabled input の値を従来どおり拒否します。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/ResourceCommandService.cs` | 6 | 6 |
| `tests/Aspire.Hosting.Tests/ResourceCommandServiceTests.cs` | 72 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `61e6fa5` Fix validation of interactive command arguments
- `d322a2a` Fix interactive command argument validation
- `e2f4579` Clarify interactive command argument validation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`ResourceCommandService` 内部の validation 分岐と regression tests の変更のみで、公開 API や command schema の変更はありません。`loadedArguments is null` を interactive path として扱い、通常の argument validation pipeline に委ねます。

**既存利用者への影響**

移行は不要です。disabled な dynamic argument を含む interactive command が正しく実行できるようになるため、該当 command は更新後に再試行できます。

### [#18839](https://github.com/microsoft/aspire/pull/18839) — Retry transient Windows bundle directory moves

- 作者: danegsta / 状態: MERGED
- ラベル: `needs-area-label`
- 変更行数: +118 / -1
- マージ日時 (UTC): `2026-07-26 23:41:25`

**変更概要**

- Windows で展開直後の bundle file を antivirus や indexer が一時的に開き、temporary directory から active version directory への atomic move が失敗する問題を修正します。
- bundle promotion の move だけに bounded exponential backoff を追加し、access denied、sharing violation、lock violation の一時エラーだけを retry します。
- disk full や既存 destination などの決定的な失敗は即時に返し、cancel された promotion の cleanup も追加しました。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Bundles/BundleService.cs` | 61 | 1 |
| `tests/Aspire.Cli.Tests/BundleServiceIntegrationTests.cs` | 29 | 0 |
| `tests/Aspire.Cli.Tests/BundleServiceTests.cs` | 28 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `a03480c` Retry transient bundle directory moves
- `1b83899` Clean up canceled bundle promotion

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`BundleService` の内部 file move policy と tests の変更で、公開 CLI command や library API に破壊的変更はありません。retry 対象は特定の Win32 HRESULT に限定され、Windows 以外の挙動は維持されます。

**既存利用者への影響**

移行は不要です。Windows で bundle layout の更新が一時ロックにより失敗していた利用者は、新しい CLI で同じ操作を再実行できます。

### [#18881](https://github.com/microsoft/aspire/pull/18881) — Stream resource console logs through Native AOT dashboard

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +1079 / -55
- マージ日時 (UTC): `2026-07-24 11:52:33`

**変更概要**

- Native AOT dashboard が React frontend を executable に埋め込み、Tauri host なしの single-file deployment として resource-scoped console logs を配信できるようになりました。
- backlog から live output への順序、stdout / stderr 識別、resource 切り替え、pause / resume、follow-tail、bounded buffering、reconnect を実装します。
- versioned capability negotiation により未移行機能は既存 dashboard へ fallback し、routes と connection status は切断中も安定して表示されます。

<details><summary>変更ファイル (27 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Dashboard.Backend/Aspire.Dashboard.Backend.csproj` | 18 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardApiContract.cs` | 12 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardBackendApplication.cs` | 31 | 2 |
| `src/Aspire.Dashboard.Backend/DashboardBackendJsonSerializerContext.cs` | 1 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardConsoleLogProxy.cs` | 84 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardConsoleLogsHub.cs` | 31 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardFrontendAssets.cs` | 126 | 0 |
| `src/Aspire.Dashboard.Backend/DashboardLegacyApiProxy.cs` | 81 | 0 |
| `src/Aspire.Dashboard.Backend/README.md` | 21 | 3 |
| `src/Aspire.Deck/CONTRACT.md` | 17 | 3 |
| `src/Aspire.Deck/ui/README.md` | 9 | 3 |
| `src/Aspire.Deck/ui/e2e/http-backend-features.ts` | 1 | 1 |
| `src/Aspire.Deck/ui/e2e/http-backend.spec.ts` | 86 | 0 |
| `src/Aspire.Deck/ui/e2e/live/stress.spec.ts` | 23 | 2 |
| `src/Aspire.Deck/ui/e2e/parity/dashboard-parity-features.ts` | 4 | 4 |
| _... 他 12 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `acae11d` Add versioned console log streaming backend
- `6b0cfce` Stream console logs through Native AOT adapter
- `0f2c1eb` Bundle React frontend in Native AOT dashboard
- `ca20542` Document bundled dashboard hosting
- `3092fa6` Keep disconnected dashboard stable while retrying
- `0cf505a` Keep failed AOT connection status stable
- `5a4ed6a` Keep dashboard routes available while disconnected
- `7520963` Improve structured logs responsive layout
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 Aspire API の変更はありません。backend に versioned console-log contract、SignalR hub / proxy、embedded frontend asset hosting を追加し、legacy fallback の authorization / cookie 転送先を redirect 無効の loopback URL に限定しています。traces、metrics、terminal、structured-log clear は従来 backend のままです。

**既存利用者への影響**

設定移行は不要です。`Aspire.Dashboard.Backend` の publish artifact に frontend が含まれるようになり、対応 capability がない環境では自動的に既存 dashboard へ fallback します。

### [#18879](https://github.com/microsoft/aspire/pull/18879) — [main] Update dependencies from microsoft/dcp

- 作者: dotnet-maestro[bot] / 状態: MERGED
- ラベル: `area-codeflow`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-24 00:03:30`

**変更概要**

- Developer Control Plane (DCP) dependency を build 0.25.8 から 0.25.9 へ更新しました。
- macOS、Linux、musl Linux、Windows の amd64 / arm64 向け DCP package を同一 build にそろえています。
- Aspire 側の source code や public API は変更せず、version metadata のみを更新する codeflow PR です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Version.Details.xml` | 14 | 14 |
| `eng/Versions.props` | 7 | 7 |

</details>

<details><summary>コミット (1 件)</summary>

- `c407865` Update dependencies from https://github.com/microsoft/dcp build 0.25.9

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`eng/Version.Details.xml` と `eng/Versions.props` の DCP package version 更新のみで、Aspire の公開 API 追加・削除や migration contract の変更はありません。

**既存利用者への影響**

利用者側のコード変更は不要で、次の Aspire build / release を通じて DCP 0.25.9 が取り込まれます。

### [#18851](https://github.com/microsoft/aspire/pull/18851) — Improve Linux dev certificate trust handling

- 作者: danegsta / 状態: MERGED
- ラベル: `area-cli`
- 変更行数: +1849 / -32
- マージ日時 (UTC): `2026-07-24 00:05:36`

**変更概要**

- Linux で AppHost を `dotnet run` や IDE から起動した際、Aspire が `SSL_CERT_DIR` を生成済み certificate directory だけに置き換え、system roots を失って outbound HTTPS が失敗する問題を修正します。
- append scope の local executable resource では既存 `SSL_CERT_DIR` を保持し、未設定なら実在する well-known system certificate directories を追加します。
- `aspire doctor` は stale / missing / corrupt な OpenSSL development certificate cache を検出し、clean と trust の修復手順を案内するようになりました。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Certificates/CertificateGeneration/UnixCertificateManager.cs` | 21 | 10 |
| `src/Aspire.Cli/Resources/DoctorCommandStrings.Designer.cs` | 63 | 0 |
| `src/Aspire.Cli/Resources/DoctorCommandStrings.resx` | 25 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.cs.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.de.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.es.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.fr.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.it.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.ja.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.ko.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.pl.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.pt-BR.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.ru.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.tr.xlf` | 35 | 0 |
| `src/Aspire.Cli/Resources/xlf/DoctorCommandStrings.zh-Hans.xlf` | 35 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `36610f9` Improve Linux dev certificate trust handling
- `f3aaba2` Narrow Linux dev cert cache diagnostics
- `37f6e03` Address Linux dev cert diagnostic review feedback
- `fe5dac6` Allow dev cert cleanup without openssl
- `626d3ef` Defer OpenSSL trust warning until lookup completes
- `af7ec59` Validate OpenSSL dev cert hash links
- `9da6e01` Drain OpenSSL diagnostic output
- `5f12c5a` Bound OpenSSL hash probe duration
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はなく、Unix certificate manager、Hosting の environment 構成、Doctor command の診断と localization を更新しています。明示された `SSL_CERT_DIR` は空文字を含めて利用者設定として保存され、override scope の挙動も変わりません。

**既存利用者への影響**

通常は更新のみで修正されます。Linux の dev certificate cache が壊れている場合は `aspire doctor` の案内に従い、`aspire certs clean`、`aspire certs trust` を順に実行してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18849 | Add .NET 11 support to project templates | DamianEdwards | <https://github.com/microsoft/aspire/pull/18849> |
| #18856 | Fix flaky AppHost launcher cancellation test | JamesNK | <https://github.com/microsoft/aspire/pull/18856> |
| #18827 | Fix duplicate dashboard stopping message | JamesNK | <https://github.com/microsoft/aspire/pull/18827> |
| #18853 | Prevent disposed dashboard menus from leaking | JamesNK | <https://github.com/microsoft/aspire/pull/18853> |
| #18742 | Fix cross-scope ACR pull identities | davidfowl | <https://github.com/microsoft/aspire/pull/18742> |
| #18718 | Add stop --force persistent resource cleanup | danegsta | <https://github.com/microsoft/aspire/pull/18718> |
| #18816 | Add accessible name to Markdown copy button | adamint | <https://github.com/microsoft/aspire/pull/18816> |
| #18829 | Fix removing resources without telemetry | JamesNK | <https://github.com/microsoft/aspire/pull/18829> |
| #18843 | Fix trace details grid scrolling | JamesNK | <https://github.com/microsoft/aspire/pull/18843> |
| #18841 | Show telemetry pause warning immediately | JamesNK | <https://github.com/microsoft/aspire/pull/18841> |
| #18729 | Enable basic debugging scenarios with the new DotnetProjectResource | karolz-ms | <https://github.com/microsoft/aspire/pull/18729> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18867 | Default to Terminal view for live terminal resources in dashboard console logs | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18867> |
| PR | #18862 | Restore focus after selecting dashboard menu items | open | adamint | <https://github.com/microsoft/aspire/pull/18862> |
| PR | #18868 | Improve AI agent observability text | open | JamesNK | <https://github.com/microsoft/aspire/pull/18868> |
| PR | #18895 | Fix Azure SQL managed-identity provisioning script on az14.0 deployment image | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18895> |
| PR | #18863 | Add "watch" sub-mode for execution context | open | karolz-ms | <https://github.com/microsoft/aspire/pull/18863> |
| PR | #18854 | Validate reconfigured deployment E2E tests (whitespace) | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18854> |
| PR | #18858 | [auto-sec] Consolidate Aspire JavaScript template dependency security remediations | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18858> |
| PR | #18870 | [Automated] Update Microsoft Foundry Models | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18870> |
| PR | #18876 | Add publish output verification | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18876> |
| PR | #18875 | Add publisher output path contract | open | IEvangelist | <https://github.com/microsoft/aspire/pull/18875> |
| PR | #18884 | Only inject Blazor gateway SPA fallback when manifest lacks one | open | javiercn | <https://github.com/microsoft/aspire/pull/18884> |
| PR | #18865 | Reject histogram bucket count length changes | open | JamesNK | <https://github.com/microsoft/aspire/pull/18865> |
| PR | #18866 | Fix HTML injection in code block titles | open | JamesNK | <https://github.com/microsoft/aspire/pull/18866> |
| PR | #18850 | Adjust required CLI behavior for C# AppHosts | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/18850> |
| PR | #18890 | Fix disabled dynamic argument validation bypass in LoadDynamicCommandArgumentsAsync | closed | Copilot | <https://github.com/microsoft/aspire/pull/18890> |
| PR | #18861 | docs: fix 1 broken link(s) via archive.org | closed | mirkosalvato1-ctrl | <https://github.com/microsoft/aspire/pull/18861> |
| PR | #18503 | Fix popup tab focus navigation | closed | adamint | <https://github.com/microsoft/aspire/pull/18503> |
| PR | #18559 | Bind aspire-managed.exe NuGet helpers to CLI kill-on-close job (#18490) | closed | adamint | <https://github.com/microsoft/aspire/pull/18559> |
| Issue | #18894 | Follow the XDG base directory specification | open | PaddiM8 | <https://github.com/microsoft/aspire/issues/18894> |
| Issue | #18891 | list ressources via cli | closed | ilan-schemoul | <https://github.com/microsoft/aspire/issues/18891> |
| Issue | #18893 | Azure SQL managed-identity provisioning script fails with MissingMethodException (MemoryCache) on az14.0 deployment-script image | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18893> |
| Issue | #18892 | Azure SQL managed-identity provisioning script fails with MissingMethodException (MemoryCache) on az14.0 deployment-script image | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18892> |
| Issue | #18869 | DCP continuously emits modified notifications for containers that aren't running | open | JamesNK | <https://github.com/microsoft/aspire/issues/18869> |
| Issue | #18877 | > > > ```` | closed | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/18877> |
| Issue | #18886 | [AspireE2E][Add Filter] Parameter dropdown displays a blank entry ("-") that cannot be selected on Aspire dashboard | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18886> |
| Issue | #18885 | [AspireE2E] Localized: Console Logs Filter tooltip is not localized in non-English UI | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18885> |
| Issue | #18887 | [AspireE2E][Timestamp] Hour value in DateTime picker is shifted upward and overlaps with adjacent elements on Aspire dashboard | open | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18887> |
| Issue | #18888 | ProjectResource.BuildProjectImage does not respect ContainerBuildOptionsCallbackContext.LocalImageName | open | Lexy2 | <https://github.com/microsoft/aspire/issues/18888> |
| Issue | #18882 | [Feature]: Support configuring maintenance windows for Azure resources | open | MovingToWeb | <https://github.com/microsoft/aspire/issues/18882> |
| Issue | #18883 | [Feature]: Add Azure Traffic Manager hosting integration | open | MovingToWeb | <https://github.com/microsoft/aspire/issues/18883> |
| Issue | #18880 | [CI Failure] Flaky: ProcessGuestLauncherTests.LaunchAsync_WithGracefulServices_BlockingSignalerDoesNotConsumeGracefulBudget times out intermittently on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18880> |
| Issue | #18859 | Aspire hangs at "Starting dashboard" when DCP state was created by a newer version | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18859> |
| Issue | #18878 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18878> |
| Issue | #18872 | VS Code does not start Azure Functions with HTTPS | open | Bru456 | <https://github.com/microsoft/aspire/issues/18872> |
| Issue | #18873 | Define a public contract for publisher output path | open | MattKotsenas | <https://github.com/microsoft/aspire/issues/18873> |
| Issue | #18874 | [aw] Repo Pulse — Daily Report produced no safe outputs | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18874> |
| Issue | #18871 | Add 'AddCosmosDbContextFactory' to CosmosDb EF integration | open | mip1983 | <https://github.com/microsoft/aspire/issues/18871> |
| Issue | #18845 | `aspire deploy` Azure SQL role provisioning fails in Azure PowerShell 14 with MemoryCache MissingMethodException | open | Juulsn | <https://github.com/microsoft/aspire/issues/18845> |
| Issue | #18844 | [AspireE2E] aspire run hangs at "Starting dashboard" with AppHost SDK 13.4.x after running aspire CLI 13.5. | open | Chakolito | <https://github.com/microsoft/aspire/issues/18844> |
| Issue | #18855 | [CI Failure] Flaky: AppHostLauncherTests.LaunchDetachedAsync_ReportsForkProcessExitCodeWhenChildExitsBeforeMonitorAndStartTimeIsUnavailable fails with collection count mismatch on macOS | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18855> |
| Issue | #18864 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18864> |
| Issue | #18860 | AddEFMigrations's WaitForCompletion resource causes a sibling project's WithReference-derived environment variables (e.g. from an Orleans service) to go missing | open | michaelmcneilnet | <https://github.com/microsoft/aspire/issues/18860> |
| Issue | #18857 | DistributedApplicationBuilder.Build leaves partial host service provider undisposed after host resolution failure | open | akrock | <https://github.com/microsoft/aspire/issues/18857> |
| Issue | #18852 | Remove FluentMenu unregister workaround after upstream fix ships | open | JamesNK | <https://github.com/microsoft/aspire/issues/18852> |
| Issue | #18848 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18848> |
| Issue | #18847 | Support Kestrel endpoint configuration for Aspire-defined endpoints | open | egorov-denis | <https://github.com/microsoft/aspire/issues/18847> |
| Issue | #18842 | Support per-resource OTLP authentication tokens | open | JamesNK | <https://github.com/microsoft/aspire/issues/18842> |
| Issue | #18840 | [CI Failure] Flaky: JsonRpcAuthenticationTests.FailedAuthentication_ClosesConnection_AndPreventsFurtherCalls times out connecting to named pipe RPC server | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18840> |
| Issue | #18275 | BundleService: MoveDirectory fails with "Access denied" when migrating from legacy layout to versioned layout on Windows | closed | damianog | <https://github.com/microsoft/aspire/issues/18275> |
| Issue | #18066 | Outbound HTTPS requests fail on Linux because Aspire replaces SSL_CERT_DIR with temporary certificate directory | closed | axies20 | <https://github.com/microsoft/aspire/issues/18066> |
| Issue | #13957 | [WebToolsE2E][Aspire] Cannot use command '-f' to create an aspire project with target net11.0 | closed | Susie-1989 | <https://github.com/microsoft/aspire/issues/13957> |
| Issue | #18838 | [CI Failure] Flaky: AppHostLauncherTests.LaunchDetachedAsync_CleansUpChildProcessWhenCancelledAfterStart fails intermittently on macOS | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18838> |
| Issue | #17467 | Accessible name is missing for “Console logs” checkbox:A11y_Aspire Dashboard_Settting_Manage logs_Devtools | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17467> |
| Issue | #18788 | Scheduled workflow failing: Update Azure VM Sizes | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18788> |
| Issue | #18777 | Scheduled workflow failing: Deployment Cleanup | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18777> |
| Issue | #18782 | [aw] PR Documentation Check failed | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18782> |
| Issue | #11256 | Role Assignment for Existing Azure Container Registry Fails Due to Bicep Scope Limitation | closed | davidfowl | <https://github.com/microsoft/aspire/issues/11256> |
| Issue | #17324 | `aspire stop --force` to stop persistent containers (& executables) | closed | afscrome | <https://github.com/microsoft/aspire/issues/17324> |
| Issue | #9363 | Provide a way to stop all Persistent Containers | closed | afscrome | <https://github.com/microsoft/aspire/issues/9363> |
| Issue | #18758 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18758> |
