# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-09 23:05:02 〜 2026-06-11 00:49:32 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 19 |
| クローズ Issue          | 5 |
| 主要コントリビューター  | DamianEdwards, sebastienros, JamesNK, davidfowl, mitchdenny, javiercn |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#18044](https://github.com/microsoft/aspire/pull/18044) — Obsolete PublishAsConnectionString （PR / merged / davidfowl）
  `PublishAsConnectionString` を使う AppHost/拡張は、obsolete 化に合わせて代替 API への移行計画を立てる必要があります。
- **⚠ 破壊的変更** [#18034](https://github.com/microsoft/aspire/pull/18034) — Obsolete ServiceProvider property, add Services property on context types （PR / merged / JamesNK）
  context type の `ServiceProvider` プロパティ利用箇所は、新しい `Services` プロパティへ置換できるか確認してください。
- **⚠ 破壊的変更** [#17924](https://github.com/microsoft/aspire/pull/17924) — Add proxyless endpoint port allocator （PR / open / danegsta）
  proxyless endpoint を使う/検討する利用者は、ポート割り当ての挙動変更がローカル実行や公開設定に影響しないか追跡してください。
- **⚠ 破壊的変更** [#16913](https://github.com/microsoft/aspire/pull/16913) — Remove aspire exec command （PR / merged / davidfowl）
  `aspire exec` をスクリプトや手順で使っている利用者は、代替コマンド/ワークフローへの置換が必要です。

## このリポジトリの要点

Aspire は CLI/AppHost まわりの改善が多く、DCP request の再接続、TypeScript AppHost 起動高速化、coding agent telemetry 検出、issue triage canvas extension 追加が目立ちます。
一方で `PublishAsConnectionString`、context の `ServiceProvider`、`aspire exec` などの obsolete/removal 系変更が重要項目に挙がっており、既存の AppHost 拡張や自動化スクリプトは移行確認が必要です。
ターミナル機能、VS Code extension、CLI dogfooding、`aspire init --skills` など、開発者体験と自動化を強化する Issue/PR も活発です。

## 主要な PR (詳細)

> **重要度の高い PR（破壊的変更/セキュリティ/非推奨/GA）を優先**しつつ、上位 6 件の **マージ済み PR** について、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18096](https://github.com/microsoft/aspire/pull/18096) — Reconnect if necessary during DCP request execution

- 作者: karolz-ms / 状態: MERGED
- ラベル: —
- 変更行数: +330 / -36
- マージ日時 (UTC): `2026-06-10 23:51:39`

**変更概要**

DCP request 実行中に接続が必要なら再接続するよう、KubernetesService のリトライ/再接続処理を改善した PR です。
一時的な DCP 接続切れでリクエストが失敗するケースを減らし、kubeconfig 読み取りの最適化やパッチバージョン更新も含みます。
テストが大幅に追加されており、DCP/Kubernetes 統合の信頼性改善が主目的です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/Versions.props` | 1 | 1 |
| `src/Aspire.Hosting/Dcp/KubernetesService.cs` | 42 | 35 |
| `tests/Aspire.Hosting.Tests/Dcp/KubernetesServiceTests.cs` | 287 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `3dfc8a7` Re-connecting should be part of DCP request retry
- `12b2461` Simplify implementation
- `0a8191b` Additional test
- `9990989` Update patch version
- `7badee1` Improve comment
- `3699075` Test improvements
- `0b949c2` Optimizing the read for the kubeconfig file

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`KubernetesService` の内部再接続・リトライ処理が中心で、公開 API のシグネチャ変更や破壊的変更は示されていません。
再接続を DCP request retry の一部として扱う実装に変わり、関連する単体テストで期待動作が追加されています。

**既存利用者への影響**

通常の利用者にコード移行は不要です。DCP/Kubernetes 周辺で独自の失敗処理やテストを持つ場合は、再接続後の挙動を確認してください。

### [#18094](https://github.com/microsoft/aspire/pull/18094) — Report copilot-cli specifically & update tests to work in test explorer

- 作者: DamianEdwards / 状態: MERGED
- ラベル: —
- 変更行数: +81 / -73
- マージ日時 (UTC): `2026-06-10 21:26:18`

**変更概要**

Aspire CLI の telemetry で `copilot-cli` をより明示的に識別し、テストが Test Explorer でも動くように調整した PR です。
`CodingAgentDetector` の検出ロジックを更新し、GitHub Copilot CLI と VS Code 系の環境検出を強化しています。
既存の telemetry テストも整理され、ローカル/IDE からのテスト実行体験が改善されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Telemetry/CodingAgentDetector.cs` | 10 | 12 |
| `tests/Aspire.Cli.Tests/Telemetry/AspireCliTelemetryTests.cs` | 71 | 61 |

</details>

<details><summary>コミット (2 件)</summary>

- `facee10` Report copilot-cli specifically & update tests to work in test explorer
- `397e81f` Enhance CodingAgentDetector to support GitHub Copilot CLI and VS Code…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`CodingAgentDetector` の内部検出ロジックとテスト更新が中心で、公開 API の変更や破壊的変更はありません。
telemetry 上の agent 種別識別が細かくなり、`copilot-cli` を個別に報告できるようになります。

**既存利用者への影響**

利用者の移行作業は不要です。telemetry を分析している内部利用者は、coding agent の分類名がより細分化される点を確認してください。

### [#18075](https://github.com/microsoft/aspire/pull/18075) — Improve TypeScript AppHost startup

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +148 / -47
- マージ日時 (UTC): `2026-06-10 07:29:08`

**変更概要**

TypeScript AppHost の起動を改善する PR です。
`AppHostServerSession`、`GuestAppHostProject`、`GuestRuntime` に変更が入り、TypeScript AppHost の起動フローと guest runtime の扱いが整理されています。
Issue #16704 の「TypeScript AppHosts の起動性能最適化」に対応しており、TypeScript ベースの AppHost を使う開発者体験に影響します。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Projects/AppHostServerSession.cs` | 37 | 1 |
| `src/Aspire.Cli/Projects/GuestAppHostProject.cs` | 41 | 36 |
| `src/Aspire.Cli/Projects/GuestRuntime.cs` | 6 | 4 |
| `tests/Aspire.Cli.Tests/Projects/AppHostServerSessionTests.cs` | 22 | 0 |
| `tests/Aspire.Cli.Tests/Projects/GuestRuntimeTests.cs` | 42 | 6 |

</details>

<details><summary>コミット (2 件)</summary>

- `f7b5fb2` Improve TypeScript AppHost startup
- `0b60f49` Address startup PR review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CLI 側の AppHost 起動管理と guest runtime 実行の内部実装変更が中心です。
公開 API の破壊的変更は示されていませんが、TypeScript AppHost の起動順序やセッション管理の挙動は改善されています。

**既存利用者への影響**

通常の TypeScript AppHost 利用者に移行作業は不要です。起動フローに依存する独自ツールやテストを持つ場合は、更新後の起動時間とセッション挙動を確認してください。

### [#18071](https://github.com/microsoft/aspire/pull/18071) — Add issue triage canvas extension

- 作者: davidfowl / 状態: MERGED
- ラベル: —
- 変更行数: +3474 / -0
- マージ日時 (UTC): `2026-06-10 22:31:26`

**変更概要**

リポジトリの Issue triage を支援する canvas extension を追加する大規模な PR です。
`.github/extensions/issue-triage-canvas/extension.mjs` に、Issue の timeline 表示、フィルター変更時の更新、類似 Issue 検索アクション、コンテキスト付きフィルター件数、triage data actions などが追加されています。
開発者が Issue の分類・調査・重複確認を UI 付きで進めるための内部/リポジトリ運用支援機能です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/extensions/issue-triage-canvas/extension.mjs` | 3474 | 0 |

</details>

<details><summary>コミット (7 件)</summary>

- `45f766f` Add issue triage canvas extension
- `7ede94f` Address issue triage canvas review feedback
- `32968a7` Refresh issue timeline when filters change
- `37a1e28` Add prompt-driven similar issue action
- `2cf79f1` Include issue cache paths in similar issue prompt
- `c179e6c` Show contextual filter counts
- `725c415` Expose issue triage data actions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

既存製品 API の変更ではなく、GitHub Copilot canvas extension として新しい triage UI/データアクションを追加しています。
破壊的変更は示されていません。extension 内に prompt-driven similar issue action や cache path を含めたプロンプト構築など、新しい拡張機能がまとまって追加されています。

**既存利用者への影響**

既存 Aspire 利用者の移行は不要です。リポジトリ運用者は、Issue triage でこの canvas extension を使う場合の権限・データ取得範囲を確認してください。

### [#18069](https://github.com/microsoft/aspire/pull/18069) — Fix flaky Qdrant health check test by using HTTP readiness wait strategy

- 作者: JamesNK / 状態: MERGED
- ラベル: —
- 変更行数: +4 / -1
- マージ日時 (UTC): `2026-06-10 00:38:59`

**変更概要**

Qdrant health check の flaky test を修正する PR です。
`QdrantContainerFixture` で HTTP readiness wait strategy を使うようにし、コンテナ起動直後のタイミング依存でテストが失敗する問題を減らします。
Issue #17999 の health check test failure に対応する、テスト安定化の小さな変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `tests/Aspire.Qdrant.Client.Tests/QdrantContainerFixture.cs` | 4 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `8ae19ae` Fix flaky Qdrant health check test by using HTTP readiness wait strategy

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テスト fixture の readiness 待機戦略変更のみで、公開 API やランタイム機能の変更はありません。
破壊的変更は示されていません。

**既存利用者への影響**

利用者側の移行は不要です。Qdrant 関連テストをローカルで再現していた場合は、更新後に flaky が解消するか確認する程度です。

### [#18065](https://github.com/microsoft/aspire/pull/18065) — Add coding agent telemetry detection

- 作者: DamianEdwards / 状態: MERGED
- ラベル: —
- 変更行数: +260 / -8
- マージ日時 (UTC): `2026-06-10 01:21:01`

**変更概要**

Aspire CLI の telemetry に coding agent 検出を追加する PR です。
`CodingAgentDetector` と `ICodingAgentDetector`、telemetry constants、DI 登録、関連テストが追加され、CLI 実行環境が coding agent かどうかを識別できるようになります。
後続の #18094 と合わせて、Copilot CLI など agent 経由の利用状況をより正確に把握する基盤になります。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Cli/Telemetry/AspireCliTelemetry.cs` | 13 | 3 |
| `src/Aspire.Cli/Telemetry/CodingAgentDetector.cs` | 97 | 0 |
| `src/Aspire.Cli/Telemetry/ICodingAgentDetector.cs` | 16 | 0 |
| `src/Aspire.Cli/Telemetry/TelemetryConstants.cs` | 5 | 0 |
| `src/Aspire.Cli/Telemetry/TelemetryServiceCollectionExtensions.cs` | 1 | 0 |
| `tests/Aspire.Cli.Tests/Telemetry/AspireCliTelemetryTests.cs` | 105 | 2 |
| `tests/Aspire.Cli.Tests/Telemetry/TelemetryFixture.cs` | 14 | 1 |
| `tests/Aspire.Cli.Tests/Telemetry/TestTelemetryHelper.cs` | 9 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `1b7a9f7` Add coding agent telemetry detection
- `662675e` Update src/Aspire.Cli/Telemetry/CodingAgentDetector.cs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規の `CodingAgentDetector` / `ICodingAgentDetector` が追加され、telemetry に coding agent 関連の定数と検出結果が組み込まれました。
内部サービス登録とテスト追加が中心で、利用者向け公開 API の破壊的変更はありません。

**既存利用者への影響**

通常の利用者に移行作業は不要です。telemetry の収集・分析側では、新しい coding agent 属性の扱いを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #18059 | Expose IServiceProvider and callback contexts to ATS polyglot hosts | sebastienros | <https://github.com/microsoft/aspire/pull/18059> |
| #18032 | Remove [Experimental] from IInteractionService and related types | JamesNK | <https://github.com/microsoft/aspire/pull/18032> |
| #18029 | [main] Update dependencies from microsoft/dcp | dotnet-maestro[bot] | <https://github.com/microsoft/aspire/pull/18029> |
| #17959 | Expose IInteractionService to polyglot app hosts | sebastienros | <https://github.com/microsoft/aspire/pull/17959> |
| #17935 | Rename RegistrationOrder to SortOrder | Copilot | <https://github.com/microsoft/aspire/pull/17935> |
| #17866 | WithTerminal(): per-replica interactive terminal sessions (Aspire side, draft) | mitchdenny | <https://github.com/microsoft/aspire/pull/17866> |
| #17812 | Download blazor.web.js from NuGet at build time instead of checking in copies | javiercn | <https://github.com/microsoft/aspire/pull/17812> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18101 | Add experimental CLI-managed C# AppHost mode with shared closure cache | open | danegsta | <https://github.com/microsoft/aspire/pull/18101> |
| PR | #18093 | [release/13.4] Improve npm publish validation and CLI package metadata | open | adamint | <https://github.com/microsoft/aspire/pull/18093> |
| PR | #18091 | Increase BrowserLogs CDP command timeout for tracked browser startup | open | maddymontaquila | <https://github.com/microsoft/aspire/pull/18091> |
| PR | #18089 | Redact secret parameter values from environment variables sent over the backchannel | open | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18089> |
| PR | #18087 | CLI identity sidecar + Dogfooder TUI test rig | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18087> |
| PR | #18079 | Fail cleanly when AppHost selection would require a prompt in non-interactive mode | open | shauryalowkeygotaura | <https://github.com/microsoft/aspire/pull/18079> |
| PR | #18078 | Update MongoDB.Driver to version 3.9.0 | open | Falco20019 | <https://github.com/microsoft/aspire/pull/18078> |
| PR | #18077 | Add CLI E2E coverage for WithTerminal attach flow | open | mitchdenny | <https://github.com/microsoft/aspire/pull/18077> |
| PR | #18074 | Improve Aspire docs search relevance | open | davidfowl | <https://github.com/microsoft/aspire/pull/18074> |
| PR | #18070 | Bump the npm_and_yarn group across 2 directories with 1 update | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18070> |
| PR | #18068 | Switch release flow to draft-then-publish for immutable releases | open | joperezr | <https://github.com/microsoft/aspire/pull/18068> |
| PR | #18092 | Upgrade Spectre.Console to 0.56.0 to fix #17307 OSC8 link wrapping bug | closed | maddymontaquila | <https://github.com/microsoft/aspire/pull/18092> |
| PR | #17975 | [release/13.4] Allow either required npm publish owner | closed | adamint | <https://github.com/microsoft/aspire/pull/17975> |
| Issue | #18103 | aspire update warns about stale configured SDK version after updating packages | open | davidfowl | <https://github.com/microsoft/aspire/issues/18103> |
| Issue | #18102 | aspire resource command writes non-JSON preamble to stdout before JSON payload | open | davidfowl | <https://github.com/microsoft/aspire/issues/18102> |
| Issue | #18100 | Hosted agent invocations protocol endpoint generates dashboard command with invalid payload | closed | davidfowl | <https://github.com/microsoft/aspire/issues/18100> |
| Issue | #18099 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18099> |
| Issue | #18098 | Flaky: VS Code extension zero-to-running E2E fails in "after each" teardown (AggregateError) on Windows | open | radical | <https://github.com/microsoft/aspire/issues/18098> |
| Issue | #18097 | Deploy-time provisioning: no compute-agnostic way for values produced by a running resource to flow into dependent resources' configuration | open | sliekens | <https://github.com/microsoft/aspire/issues/18097> |
| Issue | #18095 | Add `--skills` flag to `aspire init` | open | acchiang | <https://github.com/microsoft/aspire/issues/18095> |
| Issue | #18090 | DisplayIncompatibleVersionError should use a borderless table for aligned name/value display | open | JamesNK | <https://github.com/microsoft/aspire/issues/18090> |
| Issue | #18088 | Aspire CLI: add automation-focused `aspire terminal *` commands aligned with Hex1b | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18088> |
| Issue | #18086 | Aspire CLI: allow overriding terminal attach leader key (Ctrl+B) | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18086> |
| Issue | #18085 | Terminal size mismatch between `aspire terminal ps` and dashboard causes cursor/input offset issues | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18085> |
| Issue | #18084 | VS Code extension: add resource context-menu action to attach terminal | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18084> |
| Issue | #18083 | Dashboard terminal recording support with manual controls and extensible recorder API | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18083> |
| Issue | #18082 | Dashboard terminal UX loses early startup failures before PTY attachment | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18082> |
| Issue | #18081 | Add PromptProgressAsync to IInteractionService for long-running operations | open | JamesNK | <https://github.com/microsoft/aspire/issues/18081> |
| Issue | #18080 | Go AppHost: AddManifest is unusable — Configure option panics on publish, and WithField can't express nested/dotted CRD fields | open | slakin | <https://github.com/microsoft/aspire/issues/18080> |
| Issue | #18076 | [Deployment E2E] Nightly test failure - 2026-06-10 | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18076> |
| Issue | #18073 | VS Code extension dogfooding doesn't work with CLI dogfooding | open | mitchdenny | <https://github.com/microsoft/aspire/issues/18073> |
| Issue | #18072 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18072> |
| Issue | #17999 | [Failing test]: Aspire.Qdrant.Client.Tests.ConformanceTests.HealthCheckReportsExpectedStatus\(key: null\) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17999> |
| Issue | #17966 | Persistent container lifetime no longer works with Keycloak container | closed | jvandertil | <https://github.com/microsoft/aspire/issues/17966> |
| Issue | #16704 | Optimize aspire start performance for TypeScript AppHosts | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16704> |
| Issue | #16556 | Aspire plugin for skills and mcps? | closed | maddymontaquila | <https://github.com/microsoft/aspire/issues/16556> |
