# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 11 |
| 新規 Issue              | 24 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | stephentoub, mohamedmansour, ellismg, github-security-bot, SteveSandersonMS, roblourens |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2527](https://github.com/github/copilot-sdk/issues/2527) — [v2] Publish the breaking-change inventory and migration guide （Issue / open / SteveSandersonMS）
SDK v2 向けの破壊的変更一覧と移行ガイドを求めるオープン issue です。v2 移行を計画する利用者は、確定した一覧・ガイドが公開されるまで変更内容を継続確認してください。

## このリポジトリの要点

複数 SDK に共通する HTTP response forwarding と JSON-RPC／session イベント処理の信頼性・性能改善が中心です（#2734、#2733、#2737）。  
Rust では JSON payload の再構築・複製を抑制し、クロス SDK の scenario／RPC E2E coverage が拡充されました（#2711、#2724）。  
SDK v2 の breaking-change inventory／migration guide は提案段階で、移行手順はまだ確定していません（#2527）。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2737](https://github.com/github/copilot-sdk/pull/2737) — Fix session start subscription ordering tests

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +29 / -26
- マージ日時 (UTC): `2026-09-21 01:49:12`

**変更概要**

session 開始時の event subscription と session 作成の順序に依存する E2E test の不安定さを修正します。  
.NET と Python の session setup／cloud scenario tests を更新し、イベント購読の競合を避けるようにしました。  
SDK の公開 API や runtime 動作ではなく、複数 SDK の統合テストが対象です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/ScenarioTestingSessionSetupE2ETests.cs` | 8 | 5 |
| `python/e2e/test_scenario_cloud_e2e.py` | 11 | 11 |
| `python/e2e/test_scenario_session_setup_e2e.py` | 10 | 10 |

</details>

<details><summary>コミット (1 件)</summary>

- `51552fa` Fix session start subscription tests

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は .NET／Python の E2E tests に限られ、SDK の API シグネチャや JSON-RPC contract の変更はありません。  
session 開始直後の subscription 順序をテストで正しく扱う修正です。

**既存利用者への影響**

利用者向けの移行は不要です。独自 E2E tests で session 開始と event subscription を並行実行する場合は、同じ順序競合がないか確認してください。

### [#2734](https://github.com/github/copilot-sdk/pull/2734) — Coalesce intercepted HTTP response chunks

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +3657 / -108
- マージ日時 (UTC): `2026-09-20 21:27:51`

**変更概要**

SDK が intercept した HTTP response を複数 chunk から正しく読み取り、統合して転送する処理を追加します。  
.NET／Go／Java を含む複数 SDK の request handler と response reader を更新し、分割配信・lifecycle edge case のテストを拡充しています。  
大きな／streaming response を扱う SDK transport の信頼性とデータ転送に影響します。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 11 | 4 |
| `dotnet/src/CopilotRequestHandler.cs` | 229 | 9 |
| `dotnet/test/E2E/ScenarioTestingEventSubscriptionsE2ETests.cs` | 11 | 2 |
| `dotnet/test/Unit/CopilotRequestHandlerProtocolTests.cs` | 651 | 0 |
| `dotnet/test/Unit/JsonRpcTests.cs` | 0 | 2 |
| `go/client.go` | 23 | 1 |
| `go/copilot_request_handler.go` | 95 | 28 |
| `go/http_response_forwarding_test.go` | 643 | 0 |
| `go/http_response_reader.go` | 147 | 0 |
| `java/sdk/src/main/java/com/github/copilot/CopilotClient.java` | 10 | 3 |
| `java/sdk/src/main/java/com/github/copilot/CopilotRequestHandler.java` | 47 | 11 |
| `java/sdk/src/main/java/com/github/copilot/HttpResponseReader.java` | 156 | 0 |
| `java/sdk/src/main/java/com/github/copilot/JsonRpcClient.java` | 16 | 10 |
| `java/sdk/src/main/java/com/github/copilot/LlmInferenceAdapter.java` | 5 | 0 |
| `java/sdk/src/main/java/com/github/copilot/LlmInferenceExchange.java` | 15 | 2 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `3aa5805` Coalesce intercepted HTTP response chunks
- `68e94f7` Fix scenario event test concurrency
- `e24765f` Fix response forwarding lifecycle edge cases
- `8d72a64` Explain expected response reader exceptions
- `8748b6e` Resolve .NET merge-build duplication

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

SDK 内部に HTTP response reader／forwarding 処理を追加し、chunk 境界を跨いで本文を読み取るようにします。  
公開 request API のシグネチャ変更は一覧から確認できません。response の転送・例外・完了処理の内部動作を修正しています。

**既存利用者への影響**

通常は SDK の利用コード変更は不要です。独自 transport や intercepted response をラップする実装は、chunked response と転送完了の挙動を確認してください。

### [#2735](https://github.com/github/copilot-sdk/pull/2735) — Fix duplicate C# JSON-RPC completion helper

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +0 / -2
- マージ日時 (UTC): `2026-09-20 20:32:19`

**変更概要**

重複していた C# JSON-RPC completion helper の呼び出しをテストから除去します。  
変更は `JsonRpcTests.cs` の 2 行削除のみで、実装コードや SDK runtime は変更していません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/Unit/JsonRpcTests.cs` | 0 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `9acbb5a` fix(dotnet): remove duplicate JSON-RPC completion helper

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テストコードのみの整理であり、公開 API・JSON-RPC protocol の変更はありません。

**既存利用者への影響**

利用者側の移行は不要です。

### [#2733](https://github.com/github/copilot-sdk/pull/2733) — perf(dotnet): avoid redundant JSON event materialization

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +269 / -32
- マージ日時 (UTC): `2026-09-20 14:56:15`

**変更概要**

JSON-RPC event の不要な JSON materialization を避け、.NET SDK の処理コストを下げます。  
event／response の変換と JSON element の所有期間を見直し、client session lifetime と unsupported response ID のテストを追加しています。  
主に大量 event や長時間 session を扱う .NET client の性能・メモリ挙動が対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 3 | 9 |
| `dotnet/src/JsonRpc.cs` | 31 | 23 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 68 | 0 |
| `dotnet/test/Unit/JsonRpcTests.cs` | 167 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `53b8920` perf(dotnet): avoid redundant JSON event materialization
- `ba6ee17` test(dotnet): verify JSON element ownership after disposal
- `8537f8e` fix(dotnet): ignore unsupported JSON-RPC response ids

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

内部 JSON-RPC event 処理で余分な JSON object の生成・コピーを抑制し、未対応 response ID を無視する処理を追加します。  
公開 API シグネチャ変更は一覧から確認できず、最適化と内部的な protocol robustness の改善です。

**既存利用者への影響**

利用者向けの移行は不要です。SDK event の JSON element を保持して使う拡張は、client/session の破棄後も値の寿命が保たれることを確認してください。

### [#2724](https://github.com/github/copilot-sdk/pull/2724) — Expand cross-SDK scenario and RPC E2E coverage

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +19895 / -447
- マージ日時 (UTC): `2026-09-20 12:02:04`

**変更概要**

6 SDK を跨ぐ scenario tests と RPC surface E2E coverage を大幅に拡張します。  
共通 scenario、callback／canvas／cloud／composition、event subscription などのテストを追加し、旧テスト構成の一部を統合しています。  
SDK 間で同じ protocol と動作を維持できているかを検証するテスト基盤の変更です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 40 | 2 |
| `dotnet/src/JsonRpc.cs` | 36 | 23 |
| `dotnet/src/Types.cs` | 9 | 0 |
| `dotnet/test/E2E/ExternalToolCancellationE2ETests.cs` | 0 | 62 |
| `dotnet/test/E2E/ModeHandlersE2ETests.cs` | 0 | 197 |
| `dotnet/test/E2E/RpcSurfaceCoverageE2ETests.cs` | 698 | 0 |
| `dotnet/test/E2E/RpcSurfaceTestCli.cs` | 402 | 0 |
| `dotnet/test/E2E/ScenarioTestingCallbacksE2ETests.cs` | 456 | 0 |
| `dotnet/test/E2E/ScenarioTestingCanvasE2ETests.cs` | 393 | 0 |
| `dotnet/test/E2E/ScenarioTestingCloudE2ETests.cs` | 310 | 0 |
| `dotnet/test/E2E/ScenarioTestingCompositionE2ETests.cs` | 648 | 0 |
| `dotnet/test/E2E/ScenarioTestingControlStateE2ETests.cs` | 104 | 0 |
| `dotnet/test/E2E/ScenarioTestingE2ETestBase.cs` | 14 | 0 |
| `dotnet/test/E2E/ScenarioTestingEmptyRuntimeE2ETests.cs` | 40 | 0 |
| `dotnet/test/E2E/ScenarioTestingEventSubscriptionsE2ETests.cs` | 170 | 0 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `c2c4644` Expand cross-SDK scenario and RPC E2E coverage

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

RPC surface を網羅するテスト CLI と共通 E2E scenario harness が追加されています。  
`Client.cs`／`JsonRpc.cs`／`Types.cs` に小規模な更新がありますが、提示情報から破壊的な公開 API 変更は確認できません。

**既存利用者への影響**

SDK 利用者に移行は不要です。SDK を独自に拡張する開発者は新しい cross-SDK E2E harness を使って protocol 差分を検証できます。

### [#2711](https://github.com/github/copilot-sdk/pull/2711) — perf(rust): avoid rebuilding and copying JSON payloads

- 作者: mohamedmansour / 状態: MERGED
- ラベル: —
- 変更行数: +150 / -23
- マージ日時 (UTC): `2026-09-20 11:43:22`

**変更概要**

Rust SDK の JSON-RPC notification／session 処理で、JSON payload の再構築と不要な clone を減らします。  
router と session の decode 経路を調整し、malformed notification 後の routing を含むテストを追加しています。  
Rust client の大きな payload におけるメモリ割当と処理効率が改善対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/src/jsonrpc.rs` | 81 | 7 |
| `rust/src/router.rs` | 19 | 9 |
| `rust/src/session.rs` | 2 | 2 |
| `rust/tests/session_test.rs` | 48 | 5 |

</details>

<details><summary>コミット (5 件)</summary>

- `a445aad` perf(rust): reduce notification payload cloning
- `25e6fe3` Remove benchmark dependency and simplify notification coverage
- `a3b61f8` test(rust): cover routing after malformed notifications
- `98e4c4f` perf(rust): preserve owned JSON payload containers during decoding
- `ae31532` Merge branch 'main' into mohamedmansour-rust-memory-optimization

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

内部 JSON-RPC decoding で owned JSON payload container を保持し、notification payload の clone を抑える実装変更です。  
公開 Rust API のシグネチャ変更は一覧から確認できず、破壊的変更は示されていません。

**既存利用者への影響**

通常は利用者側の移行不要です。独自 JSON-RPC router／notification handler を実装する場合は、malformed notification 後の routing が維持されることを確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2717 | perf(rust): coalesce intercepted HTTP response chunks | mohamedmansour | <https://github.com/github/copilot-sdk/pull/2717> |
| #2664 | Preserve structured JSON-RPC error data | ellismg | <https://github.com/github/copilot-sdk/pull/2664> |
| #2712 | Pin GitHub Actions to commit SHAs | github-security-bot | <https://github.com/github/copilot-sdk/pull/2712> |
| #2731 | Update Copilot CLI to 1.0.87-0 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2731> |
| #2715 | Add Java linuxmusl-x64 native classifier support | Copilot | <https://github.com/github/copilot-sdk/pull/2715> |
| #2590 | feat: Add typed structured outputs for all six SDKs | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2590> |
| #2700 | nodejs: enforce exact npm dependency policy | roblourens | <https://github.com/github/copilot-sdk/pull/2700> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2762 | Preserve cancellation in global SDK callbacks | open | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2762> |
| PR | #2755 | fix(rust): only root-agent events complete send_and_wait | open | Lukaze | <https://github.com/github/copilot-sdk/pull/2755> |
| PR | #2754 | fix(rust): start the session event loop before the session.create RPC | open | Lukaze | <https://github.com/github/copilot-sdk/pull/2754> |
| PR | #2747 | fix(rust): serve session requests sent during session.create | open | costajohnt | <https://github.com/github/copilot-sdk/pull/2747> |
| PR | #2746 | dotnet: Deflake warm pending-tool cleanup | open | devm33 | <https://github.com/github/copilot-sdk/pull/2746> |
| PR | #2745 | dotnet: Deflake session event capture | open | devm33 | <https://github.com/github/copilot-sdk/pull/2745> |
| PR | #2744 | Add optional response contract to Rust SDK messages | open | ellismg | <https://github.com/github/copilot-sdk/pull/2744> |
| PR | #2728 | Add Java linuxmusl-arm64 native runtime support | open | Copilot | <https://github.com/github/copilot-sdk/pull/2728> |
| PR | #2742 | [DO NOT MERGE] Illustrative: native search credential callback | open | miketsprague | <https://github.com/github/copilot-sdk/pull/2742> |
| PR | #2730 | Bump the "all" group with 7 updates across multiple ecosystems | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2730> |
| PR | #2721 | Node and Rust SDK transport for native AHP endpoints | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2721> |
| PR | #2617 | Rust: preserve resume bootstrap events until subscription handoff | closed | aurokin | <https://github.com/github/copilot-sdk/pull/2617> |
| PR | #2732 | Expose structured JSON-RPC error data in Go, .NET, and Java | closed | aurokin | <https://github.com/github/copilot-sdk/pull/2732> |
| PR | #2436 | Expose Copilot Connector session support | closed | mattdholloway | <https://github.com/github/copilot-sdk/pull/2436> |
| PR | #2636 | Fix appended system-message test event subscription race | closed | devm33 | <https://github.com/github/copilot-sdk/pull/2636> |
| PR | #2629 | Fix replay model image capacity | closed | devm33 | <https://github.com/github/copilot-sdk/pull/2629> |
| PR | #2638 | Fix system-message response test subscription races | closed | devm33 | <https://github.com/github/copilot-sdk/pull/2638> |
| PR | #2738 | Expose runtime-supervised AHP hosts through the Node SDK | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2738> |
| PR | #2741 | Expose host-user hook opt-in across all six SDKs | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2741> |
| PR | #2736 | Modernize dependencies across SDKs | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/2736> |
| PR | #2703 | Update Copilot CLI to 1.0.86-2 and fix Rust schema enum collision | closed | aurokin | <https://github.com/github/copilot-sdk/pull/2703> |
| PR | #2615 | Bump the "all" group with 7 updates across multiple ecosystems | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2615> |
| Issue | #2760 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2760> |
| Issue | #2761 | Expose a way to subscribe to detached shell output | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2761> |
| Issue | #2759 | Python: shutdown notification rejects 'destroy' with SDK 1.0.14 / runtime 1.0.85 | open | adrian-gavrila | <https://github.com/github/copilot-sdk/issues/2759> |
| Issue | #2757 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2757> |
| Issue | #2758 | docs/AGENTS.md is repo authoring guidance, but everything in docs/ gets published | open | sunbrye | <https://github.com/github/copilot-sdk/issues/2758> |
| Issue | #2756 | `modelCapabilities.limits.maxContextWindowTokens` is ignored by the runtime; only the undocumented `provider.maxContextWindowTokens` works | open | njdldkl666699 | <https://github.com/github/copilot-sdk/issues/2756> |
| Issue | #2751 | `SessionFsStatResult` has no epoch-millisecond timestamps | closed | Lukaze | <https://github.com/github/copilot-sdk/issues/2751> |
| Issue | #2752 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2752> |
| Issue | #2750 | `send_and_wait` resolves on a sub-agent's `session.idle` / `session.error` | open | Lukaze | <https://github.com/github/copilot-sdk/issues/2750> |
| Issue | #2753 | view tool call always fails with "Error:Path does not exist" when CreateSessionFsProvider is set in the session config | open | OliverWingY | <https://github.com/github/copilot-sdk/issues/2753> |
| Issue | #2749 | `session.create` deadlocks when a `SessionFsProvider` is bound | open | Lukaze | <https://github.com/github/copilot-sdk/issues/2749> |
| Issue | #2743 | mifare | open | waskahativan2-wq | <https://github.com/github/copilot-sdk/issues/2743> |
| Issue | #2740 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2740> |
| Issue | #2748 | BYOK `provider.maxOutputTokens` never reaches the upstream request body (chat completions & responses) | open | njdldkl666699 | <https://github.com/github/copilot-sdk/issues/2748> |
| Issue | #2739 | Python SDK: login fails silently - similar to issue #2738 where bot should confirm fix applies | closed | hasskooelhadi | <https://github.com/github/copilot-sdk/issues/2739> |
| Issue | #2726 | Rust: preserve structured JSON-RPC error data | closed | aurokin | <https://github.com/github/copilot-sdk/issues/2726> |
| Issue | #2729 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2729> |
| Issue | #2727 | [Java] Add support for `linuxmusl-arm64` | open | edburns | <https://github.com/github/copilot-sdk/issues/2727> |
| Issue | #2723 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2723> |
| Issue | #2725 | [aw] SDK Consistency Review Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2725> |
| Issue | #2722 | Feature request: inspect and safely prune SDK-managed CLI caches | open | idanshimon | <https://github.com/github/copilot-sdk/issues/2722> |
| Issue | #2719 | SDK: Release selection, pagination and Plugin catalogue bindings | closed | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2719> |
| Issue | #2720 | SDK: Publish confirmed MCP and Skill installation lifecycle bindings | closed | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2720> |
| Issue | #2718 | feat: Allow organizations to restrict reasoning effort levels | open | johanc-rtl | <https://github.com/github/copilot-sdk/issues/2718> |
| Issue | #1077 | SDK Prompting for permissions to read an output file created by CLI for large outputs | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/1077> |
| Issue | #2714 | [Java] Add support for `linuxmusl-x64` | closed | edburns | <https://github.com/github/copilot-sdk/issues/2714> |
| Issue | #2389 | SDK: Promote catalogue search and planning APIs to stable | closed | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2389> |
