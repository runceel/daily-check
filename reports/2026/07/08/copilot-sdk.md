# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 11 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 13 |
| クローズ Issue          | 7 |
| 主要コントリビューター  | SteveSandersonMS, edburns, github-actions[bot], syf2211 |

## ⚠ 重要な変更（要確認）

> ⚠ 取得件数が上限に達しました。重要項目が一覧から漏れている可能性があるため、手動確認を推奨します。

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

この期間は `@github/copilot` 1.0.69 系への追随（#1940/#1914/#1941）と、.NET の in-process FFI transport 安定化（#1920/#1929/#1930/#1932）が中心でした。
Java では Rust runtime 同梱方針を ADR-007（#1923）として文書化し、関連 Issue #1917/#1924/#1937 で配布・リリース運用の整理が続いています。
未マージでは tool search 設定（#1933）、`commands.list` API（#1927/#1926）、決定的シリアライズ（#1931）など SDK API 面の拡張も並行しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1940](https://github.com/github/copilot-sdk/pull/1940) — Update @github/copilot to 1.0.69-3

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +971 / -243
- マージ日時 (UTC): `2026-07-07 23:20:20`

**変更概要**

`@github/copilot` を 1.0.69-3 に更新し、各言語 SDK の生成コードを再生成した自動更新 PR です。
.NET / Go / Java / Node.js / Python / Rust の RPC 型・session event 型にまたがる広い更新で、Java の codegen 依存関係と POM プロパティも更新されています。
新しい `AssistantToolCallDeltaEvent` や `Verbosity` 関連型が追加され、verbosity schema 変更後に SDK がコンパイルできるよう手書き側も最小限調整されています。
影響範囲は主に generated API と、それを直接扱うテスト・ラッパーコードです。

<details><summary>変更ファイル (40 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 25 | 6 |
| `dotnet/src/Generated/SessionEvents.cs` | 198 | 46 |
| `dotnet/src/Session.cs` | 1 | 0 |
| `go/rpc/zrpc.go` | 52 | 12 |
| `go/rpc/zrpc_encoding.go` | 4 | 2 |
| `go/rpc/zsession_encoding.go` | 6 | 0 |
| `go/rpc/zsession_events.go` | 38 | 0 |
| `go/zsession_events.go` | 6 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantToolCallDeltaEvent.java` | 47 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionModelChangeEvent.java` | 4 | 0 |
| `java/src/generated/java/com/github/copilot/generated/SessionResumeEvent.java` | 2 | 0 |
| _... 他 25 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `700d278` Update @github/copilot to 1.0.69-3
- `f4e432f` Fix SDK compile after verbosity schema update

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

RPC/session event の generated 型が更新され、Java では `AssistantToolCallDeltaEvent` と `Verbosity`、`SessionModelSwitchToParams` / `SessionOptionsUpdateParams` の追加フィールドが見えています。
Node.js / Python / Rust / Go / .NET でも同じ schema 差分が反映され、session event union やエンコード処理が増えています。
⚠ **破壊的変更**の可能性: generated record/union を直接生成コンストラクタや網羅 switch で扱う利用者は、新フィールド・新イベント・enum 追加への追随が必要です。

**既存利用者への影響**

高レベル API だけを使う利用者の移行は限定的です。
generated 型を直接参照する Java などの利用者は、再生成後のコンストラクタ引数と新しい event/enum ケースを確認してください。

### [#1932](https://github.com/github/copilot-sdk/pull/1932) — Make .NET CopilotClient.DisposeAsync graceful

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +18 / -2
- マージ日時 (UTC): `2026-07-07 14:04:14`

**変更概要**

.NET の `CopilotClient.DisposeAsync` を、強制終了ではなく graceful shutdown に変更する PR です。
`await using` / `DisposeAsync` が `StopAsync` 経由で runtime を正常停止し、他 SDK の「通常の dispose は graceful」という挙動と揃いました。
従来の hard kill 用途には `ForceStopAsync` が引き続き残され、Unit test でセッション寿命の期待値も追加されています。
影響範囲は .NET クライアントの終了時動作です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 4 | 2 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 14 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `f863cf5` Make .NET CopilotClient.DisposeAsync graceful
- `b81d1a9` ci: retrigger

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開メソッドのシグネチャ追加・削除はなく、`DisposeAsync` の内部実装が `ForceStopAsync` 相当から `StopAsync` 相当に変わりました。
`ForceStopAsync` は opt-in の強制停止 API として残るため、必要な場合は明示的に呼び分けられます。
**破壊的変更**ではありませんが、dispose 完了までの待ち方や shutdown hook の実行タイミングは変わります。

**既存利用者への影響**

通常利用では移行不要です。
`DisposeAsync` が即時 kill する前提で後処理していた .NET 利用者は、必要に応じて `ForceStopAsync` へ切り替えてください。

### [#1930](https://github.com/github/copilot-sdk/pull/1930) — C#: make per-client Environment coherent per transport

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +163 / -66
- マージ日時 (UTC): `2026-07-07 13:46:09`

**変更概要**

`.NET` の `CopilotClientOptions.Environment` を、transport ごとに一貫した意味になるよう整理する PR です。
子プロセス transport では per-client environment が成立するため、`ChildProcessRuntimeConnection` 側に `Environment` を追加しています。
一方、in-process FFI transport はホストプロセス環境を共有するため、per-client `Environment` や per-client telemetry を指定した場合は黙殺せず例外にします。
E2E harness も新しい配置に合わせて更新され、net472 build 向けの互換修正も含まれます。

<details><summary>変更ファイル (18 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Client.cs` | 58 | 5 |
| `dotnet/src/Types.cs` | 19 | 1 |
| `dotnet/test/ConnectionTokenTests.cs` | 1 | 1 |
| `dotnet/test/E2E/ClientOptionsE2ETests.cs` | 1 | 2 |
| `dotnet/test/E2E/CopilotRequestWebSocketE2ETests.cs` | 1 | 2 |
| `dotnet/test/E2E/ModeHandlersE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/PerSessionAuthE2ETests.cs` | 2 | 3 |
| `dotnet/test/E2E/ProviderEndpointE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RpcExtensionsLoadedE2ETests.cs` | 1 | 2 |
| `dotnet/test/E2E/RpcMcpAndSkillsE2ETests.cs` | 1 | 4 |
| `dotnet/test/E2E/RpcServerE2ETests.cs` | 3 | 7 |
| `dotnet/test/E2E/RpcServerMiscE2ETests.cs` | 3 | 2 |
| `dotnet/test/E2E/RpcServerPluginsE2ETests.cs` | 1 | 1 |
| `dotnet/test/E2E/RpcSessionStateExtrasE2ETests.cs` | 1 | 2 |
| `dotnet/test/E2E/SessionFsSqliteE2ETests.cs` | 1 | 1 |
| _... 他 3 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `d5fa36b` C#: make per-client Environment coherent per transport
- `3892b28` Fix net472 build: use ToDictionary instead of Dictionary(IEnumerable)…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`dotnet/src/Types.cs` に `ChildProcessRuntimeConnection.Environment` が追加され、stdio/TCP など子プロセス系接続で環境変数を接続設定側へ寄せられるようになりました。
`CopilotClient` は `options.Environment` と connection 側 `Environment` の二重指定、または in-process での `Environment` / `Telemetry` 指定を検出して失敗させます。
⚠ **破壊的変更**: 以前は in-process で黙って効かなかった per-client environment/telemetry 指定が、明示的な例外に変わります。

**既存利用者への影響**

子プロセス transport の利用者は、per-client 環境変数を `ChildProcessRuntimeConnection.Environment` へ移すのが推奨です。
in-process 利用者は per-client 環境変数ではなく、プロセス全体の環境設定または別 transport への切り替えを検討してください。

### [#1929](https://github.com/github/copilot-sdk/pull/1929) — Simplify in-process env isolation to snapshot/restore

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +74 / -184
- マージ日時 (UTC): `2026-07-07 09:45:26`

**変更概要**

.NET E2E の in-process 環境変数 isolation を、個別追跡から load-time snapshot / restore 方式へ単純化したテスト基盤 PR です。
assembly load 時点の環境を保存し、各テスト後に全体を復元することで、共有プロセスで動く FFI transport の副作用を抑えます。
credential suppression も「空文字」ではなく unset として扱うよう整理され、復元処理は属性側に集約されました。
影響範囲は `dotnet/test/Harness` とテスト用の assembly 初期化コードです。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/AssemblyInfo.cs` | 0 | 5 |
| `dotnet/test/Harness/E2ETestContext.cs` | 16 | 31 |
| `dotnet/test/Harness/InProcessEnvIsolation.cs` | 45 | 148 |
| `dotnet/test/Harness/ModuleInitializerAttribute.cs` | 13 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `8d191fd` Simplify in-process env isolation to snapshot/restore

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 SDK API の変更はありません。
`InProcessEnvIsolation` は `Mirror`/`Restore` 型の個別管理を削り、module initializer で取得した `string?` snapshot を使う構成へ移行しました。
テスト harness 内の復元責務が中央集約され、`E2ETestContext` 側の後始末コードは簡素化されています。

**既存利用者への影響**

既存利用者への移行は不要です。
リポジトリ内で .NET E2E harness を拡張する場合だけ、手動の環境復元に頼らず新しい snapshot / restore 前提で実装してください。

### [#1923](https://github.com/github/copilot-sdk/pull/1923) — docs(java): add ADR-007 native runtime bundling strategy

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +199 / -0
- マージ日時 (UTC): `2026-07-06 19:07:11`

**変更概要**

Java SDK で Rust Copilot runtime をどう同梱・配布するかを決める ADR-007 を追加したドキュメント PR です。
方針は DJL 風の per-platform classifier JAR 配布で、全 platform 入り JAR や download-on-demand 方式との比較が整理されています。
対象 platform、`os.name` / `os.arch` / ELF `PT_INTERP` による決定的な platform 判定、実測バイナリサイズ、ONNX Runtime / SQLite JDBC などの先行例も記載されています。
関連する Java runtime 同梱検討（#1917）に対する意思決定資料です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/docs/adr/adr-007-native-bundling-strategy.md` | 199 | 0 |

</details>

<details><summary>コミット (6 件)</summary>

- `c26cd7b` docs(java): add ADR-007 native runtime bundling strategy
- `c5c224f` Potential fix for pull request finding
- `f9a1514` Potential fix for pull request finding
- `bfbd3c8` Potential fix for pull request finding
- `4bda9e1` Potential fix for pull request finding
- `23af103` Add links to prior art PRs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

追加ファイルは `java/docs/adr/adr-007-native-bundling-strategy.md` のみで、SDK の公開 API や生成コードは変更されていません。
API シグネチャ変更・新規 runtime 抽象の実装はまだなく、今回の成果は配布戦略の設計文書化です。
**破壊的変更**はありません。

**既存利用者への影響**

現時点で利用者の移行は不要です。
Java のパッケージング・リリース担当者は、今後の native classifier JAR 実装や Node.js 依存解消の基準としてこの ADR を確認してください。

### [#1920](https://github.com/github/copilot-sdk/pull/1920) — Honor inprocess transport in C# E2E harness and fix in-process auth

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +316 / -25
- マージ日時 (UTC): `2026-07-07 08:14:30`

**変更概要**

C# E2E harness が `COPILOT_SDK_DEFAULT_CONNECTION=inprocess` を本当に尊重するようにし、in-process FFI transport の認証失敗を修正する PR です。
従来は default ケースで明示的に stdio 接続を入れていたため、環境変数で in-process を選んでも多くのテストが実際には stdio で動いていました。
ホスト側で参照される auth / telemetry 環境変数を in-process 実行時にミラーし、テスト後に復元する仕組みを追加しています。
CI には in-process 検証の扱いも追加され、`ForInProcess` は experimental として明示されています。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/dotnet-sdk-tests.yml` | 4 | 0 |
| `dotnet/src/Client.cs` | 28 | 11 |
| `dotnet/src/Types.cs` | 2 | 0 |
| `dotnet/test/AssemblyInfo.cs` | 8 | 0 |
| `dotnet/test/Harness/E2ETestContext.cs` | 78 | 14 |
| `dotnet/test/Harness/InProcessEnvIsolation.cs` | 196 | 0 |

</details>

<details><summary>コミット (14 件)</summary>

- `9eb46ce` Honor COPILOT_SDK_DEFAULT_CONNECTION in C# E2E harness
- `edc0ab1` Fix C# in-process E2E auth by mirroring host-side auth env vars
- `38535a8` Apply telemetry env vars on the in-process FFI transport
- `6eeb046` Disable HMAC auth in in-process E2E so OAuth path is exercised
- `070bbe6` Restore mirrored process env after each in-process E2E test
- `9d867c0` Mirror the whole test env host-side in-process instead of an allowlist
- `8187c54` Make in-process env restore cascade-proof and unconditional
- `fe98e57` test: use in-process connection for ClientE2ETests transport cases in…
- _... 他 6 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`E2ETestContext.CreateClient` は default connection で `Connection` を固定せず、`CopilotClient` の default connection 解決に委ねるようになりました。
`Client.cs` / `Types.cs` では in-process FFI の環境構築と experimental 表示が調整され、auth token・`COPILOT_HOME`・keytar・telemetry など host-side env を扱うテスト補助が追加されています。
公開 API の大きな削除はありませんが、`RuntimeConnection.ForInProcess` 系は experimental な transport として扱うべきことが明確になりました。

**既存利用者への影響**

C# SDK の通常利用者に直接の移行はほぼありません。
in-process transport や E2E harness を使う contributor は、環境変数が実際に FFI transport へ効く前提になったため、認証・telemetry 設定とテスト isolation を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1916 | Remove P2 installation, use simple retry instead | edburns | <https://github.com/github/copilot-sdk/pull/1916> |
| #1914 | Update @github/copilot to 1.0.69-2 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1914> |
| #1901 | dotnet: in-process FFI runtime hosting (InProcess transport) | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1901> |
| #1900 | fix(python): preserve original JSON keys in Data shim round-trips | syf2211 | <https://github.com/github/copilot-sdk/pull/1900> |
| #1898 | Restrict block-remove-before-merge check to PRs targeting main | edburns | <https://github.com/github/copilot-sdk/pull/1898> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1941 | Update @github/copilot to 1.0.69 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1941> |
| PR | #1938 | Unify publish.yml to include Java via workflow_call | open | Copilot | <https://github.com/github/copilot-sdk/pull/1938> |
| PR | #1933 | Tool search configuration support | open | almaleksia | <https://github.com/github/copilot-sdk/pull/1933> |
| PR | #1931 | Make tool schema & mcp_servers serialization deterministic (HashMap -> IndexMap) | open | stephentoub | <https://github.com/github/copilot-sdk/pull/1931> |
| PR | #1928 | Draft: use-after-free guards | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1928> |
| PR | #1927 | SDK: add sessionless commands.list API to retrieve built-in slash commands | open | DonJayamanne | <https://github.com/github/copilot-sdk/pull/1927> |
| PR | #1925 | Forward enableManagedSettings in session.create (all SDKs) | open | devm33 | <https://github.com/github/copilot-sdk/pull/1925> |
| PR | #1915 | Add in-process FFI transport for Rust and TypeScript SDKs | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1915> |
| PR | #1913 | Update @github/copilot to 1.0.69-2 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1913> |
| PR | #1820 | Forward internalCorrelationIds through session create/resume | closed | belaltaher8 | <https://github.com/github/copilot-sdk/pull/1820> |
| Issue | #1942 | Rust: ergonomic SamplingHandler + typed MCP sampling request on sampling.requested | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1942> |
| Issue | #1939 | Request help in internal slack: Solve the problem where the Copilot cloud agent does not reliably select the specified topic branch as the base for its work when it starts working. | open | edburns | <https://github.com/github/copilot-sdk/issues/1939> |
| Issue | #1937 | Get to resolution and document with ADR regarding "java release mutates main" | open | edburns | <https://github.com/github/copilot-sdk/issues/1937> |
| Issue | #1936 | Request Bruno to defend the "java release mutates main" thing | closed | edburns | <https://github.com/github/copilot-sdk/issues/1936> |
| Issue | #1935 | Expose a child-process configuration hook on `ClientOptions` so embedders can isolate and reap the agent's process tree | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1935> |
| Issue | #1934 | In-process (FFI) transport: options lowered to env vars (auth token, COPILOT_HOME, keytar, telemetry) are not honored in-process | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/1934> |
| Issue | #1926 | Expose commands.list on server layer, as opposed to session | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/1926> |
| Issue | #1924 | [Java] Collect feedback on adr-007 Java embeds Copilot CLI Rust runtime | open | edburns | <https://github.com/github/copilot-sdk/issues/1924> |
| Issue | #1922 | Chat Completions: image tool-result user messages interleaved between tool responses → 400 invalid_request_error (messages.[N].role) | open | kevnwang | <https://github.com/github/copilot-sdk/issues/1922> |
| Issue | #1921 | Create ADR for discussion of which runtime binary bundling strategy to select | closed | edburns | <https://github.com/github/copilot-sdk/issues/1921> |
| Issue | #1919 | [Java] Rust runtime ignorance reduction: understand factors of decision | closed | edburns | <https://github.com/github/copilot-sdk/issues/1919> |
| Issue | #1918 | Make it so `block-remove-before-merge` workflow only acts when merging to `main` | closed | edburns | <https://github.com/github/copilot-sdk/issues/1918> |
| Issue | #1917 | [Java] Embed Rust-based Copilot CLI Runtime and cease requiring Node.js | open | edburns | <https://github.com/github/copilot-sdk/issues/1917> |
| Issue | #1873 | Request review of planned action | closed | edburns | <https://github.com/github/copilot-sdk/issues/1873> |
| Issue | #1872 | Ignorance reduction: Evaluate current state of affairs | closed | edburns | <https://github.com/github/copilot-sdk/issues/1872> |
| Issue | #1138 | Python codegen: _compat_to_python_key / _compat_to_json_key are not inverses for keys with common abbreviations (URL, ID, IP, XML, OAuth) | closed | 007bsd | <https://github.com/github/copilot-sdk/issues/1138> |
