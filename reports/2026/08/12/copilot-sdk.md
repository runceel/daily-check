# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 46 |
| オープン中の新規 PR     | 16 |
| クローズ (未マージ) PR  | 25 |
| 新規 Issue              | 26 |
| クローズ Issue          | 28 |
| 主要コントリビューター  | Copilot, dependabot[bot], github-actions[bot], examon, SteveSandersonMS, rinceyuan |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#2129](https://github.com/github/copilot-sdk/pull/2129) — Add `history.clearContext` and `Tool.isTerminal` across all SDKs （PR / merged / examon）
  SDK 利用者は `history.clearContext` と `Tool.isTerminal` の対応状況を各言語で確認し、ランタイム更新と合わせて導入してください。
- **非推奨/廃止** [#1557](https://github.com/github/copilot-sdk/issues/1557) — Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models （Issue / open / mikhailmokhov）
  Anthropic Bedrock の Opus モデル利用者は、非推奨 `temperature` パラメーターを送らない SDK 版へ更新できるか確認してください。

## このリポジトリの要点

各 SDK に履歴コンテキスト消去と terminal tool の表現が追加され、ランタイム契約に合わせた多言語 API の整合が進みました。  
リリース手順を統合し、Node/Java/.NET/Go の生成コードとテストも更新されています。  
Bedrock の非推奨パラメーター送信問題は継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2129](https://github.com/github/copilot-sdk/pull/2129) — Add `history.clearContext` and `Tool.isTerminal` across all SDKs

- 作者: examon / 状態: MERGED
- ラベル: `dependencies` `waiting-for-runtime-update`
- 変更行数: +592 / -20
- マージ日時 (UTC): `2026-08-06 14:09:56`

**変更概要**

全 SDK に会話履歴を明示的に消去する `history.clearContext` と、ツールがターミナル用途かを示す `Tool.isTerminal` を追加しました。  
Java、.NET、Go、Node.js などの型・RPC バインディング、ドキュメント、E2E テストを同時に更新しています。  
ツール実行の継続性とコンテキスト管理を SDK 間で統一する変更です。

<details><summary>変更ファイル (24 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/README.md` | 1 | 0 |
| `docs/features/context-management.md` | 57 | 0 |
| `docs/troubleshooting/compatibility.md` | 1 | 0 |
| `dotnet/src/Client.cs` | 5 | 2 |
| `dotnet/src/CopilotTool.cs` | 19 | 1 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 33 | 0 |
| `dotnet/test/Unit/CopilotToolTests.cs` | 22 | 0 |
| `go/client_test.go` | 37 | 0 |
| `go/types.go` | 5 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ToolDefinition.java` | 60 | 8 |
| `java/src/main/java/com/github/copilot/tool/CopilotTool.java` | 3 | 0 |
| `java/src/main/java/com/github/copilot/tool/CopilotToolProcessor.java` | 4 | 1 |
| `java/src/test/java/com/github/copilot/rpc/ToolDefinitionIsTerminalTest.java` | 51 | 0 |
| `java/src/test/java/com/github/copilot/tool/CopilotToolProcessorTest.java` | 29 | 7 |
| `nodejs/src/client.ts` | 2 | 0 |
| _... 他 9 件_ | | |

</details>

<details><summary>コミット (10 件)</summary>

- `756630b` Add history.clearContext and Tool.isTerminal across all SDKs
- `1ca9787` Preserve isTerminal in Java fluent copies, add Node isTerminal wire t…
- `012f981` Regenerate clearContext bindings for the tightened runtime contract
- `5000d02` Close the two remaining reviewer findings on isTerminal
- `3ba3ff2` Fix @since on the new Java isTerminal setter
- `dd52cc3` Expose isTerminal through Java tool annotations
- `c19fdd8` Test .NET terminal tools on session requests
- `2df3d72` Cover terminal tool runtime behavior end to end
- _... 他 2 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

各言語の `ToolDefinition` / `CopilotTool` に `isTerminal` を追加し、セッション履歴 API に `clearContext` を追加しました。ランタイムの wire contract に依存するため、対応前の CLI では機能が利用できない場合があります。

**既存利用者への影響**

既存 API は基本的に互換ですが、新しいプロパティを使う場合は対応ランタイムへ更新してください。履歴を消去する処理は意図したタイミングでのみ呼び出してください。

### [#2309](https://github.com/github/copilot-sdk/pull/2309) — [SDK/Factories] Make The Agent Factories Surface Match The Wire Contract

- 作者: MRayermannMSFT / 状態: MERGED
- ラベル: —

**変更概要**

SDK の agent factory 公開面を wire contract と一致させ、各言語の生成 API と実際の RPC 形式の差異を解消しました。  
ランタイムから返る factory オプションを SDK の型・ファクトリで一貫して扱えるようにしています。  
agent factory を直接利用するアプリケーションとコード生成結果が影響範囲です。

**コミットレベルの詳細 (API 変化・破壊的変更)**

agent factory の公開フィールドと wire contract の名前・型を整合させる API 面の変更です。個別の生成コードを固定利用している場合は、更新後の型定義との差分を確認してください。

**既存利用者への影響**

factory オプションを参照する利用者は新しい SDK 生成物に合わせて参照名を更新してください。通常のセッション作成だけなら追加移行は不要です。

### [#2305](https://github.com/github/copilot-sdk/pull/2305) — Consolidate SDK GitHub releases

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +44 / -189
- マージ日時 (UTC): `2026-08-11 14:31:20`

**変更概要**

Java、Node.js、Rust の個別リリース処理を整理し、GitHub Releases を SDK 全体で統合して扱うようにしました。  
Maven 公開をリリースのゲートにし、リリースノートと開発者向け手順を共通化しています。  
SDK の利用 API ではなく、保守・公開ワークフローが主な影響範囲です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 7 | 93 |
| `.github/workflows/java.notes.template` | 0 | 29 |
| `.github/workflows/publish.yml` | 5 | 27 |
| `.github/workflows/release-changelog.lock.yml` | 2 | 2 |
| `.github/workflows/release-changelog.md` | 12 | 17 |
| `docs/developer-docs/secrets.md` | 1 | 1 |
| `rust/README.md` | 1 | 1 |
| `rust/RELEASING.md` | 16 | 19 |

</details>

<details><summary>コミット (3 件)</summary>

- `9f5374f` Consolidate SDK GitHub releases
- `3694546` Gate releases on Maven publication
- `df5e632` Clarify unified release guidance

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API のシグネチャ変更はなく、GitHub Actions、Maven 公開条件、Rust のリリース手順とドキュメントを変更しました。

**既存利用者への影響**

SDK 利用者の移行は不要です。独自にリリースを運用するコントリビューターは統合された手順と Maven 公開ゲートを確認してください。

### [#2306](https://github.com/github/copilot-sdk/pull/2306) — Update @github/copilot to 1.0.79

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +120 / -115
- マージ日時 (UTC): `2026-08-10 20:32:18`

**変更概要**

依存する `@github/copilot` を 1.0.79 に更新し、Java/Node.js の生成・テスト用 lockfile を同期しました。  
Node の E2E cleanup に関する flaky test も修正しています。  
SDK を npm または codegen 経由で利用する開発者は更新後のランタイム互換性を確認してください。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `nodejs/package-lock.json` | 36 | 36 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/samples/package-lock.json` | 1 | 1 |
| `nodejs/test/e2e/client.e2e.test.ts` | 7 | 2 |
| `test/harness/package-lock.json` | 36 | 36 |
| `test/harness/package.json` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `07b2bd3` Update @github/copilot to 1.0.79
- `9948de9` Fix flaky Node cleanup test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

依存バージョンと lockfile の更新が中心で、SDK の意図した公開 API 変更はありません。E2E テストの終了処理を安定化しました。

**既存利用者への影響**

通常は依存更新のみで移行不要です。固定バージョンを管理している場合は `@github/copilot` 1.0.79 を段階的に検証してください。

### [#2299](https://github.com/github/copilot-sdk/pull/2299) — Update @github/copilot to 1.0.79-9

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +712 / -303
- マージ日時 (UTC): `2026-08-09 14:44:57`

**変更概要**

`@github/copilot` を 1.0.79-9 へ更新し、RPC の生成コードを各 SDK に反映しました。  
Factory 実行一覧、.NET CLI 起動エラー、テスト cleanup の安定性も改善しています。  
wire contract に追随する .NET、Go、Java、TypeScript 利用者は生成 API の差分を確認してください。

<details><summary>変更ファイル (31 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 97 | 104 |
| `dotnet/src/Generated/SessionEvents.cs` | 5 | 0 |
| `dotnet/test/E2E/ClientE2ETests.cs` | 8 | 2 |
| `dotnet/test/Harness/E2ETestContext.cs` | 16 | 2 |
| `dotnet/test/Unit/ClientSessionLifetimeTests.cs` | 21 | 0 |
| `go/rpc/zrpc.go` | 72 | 15 |
| `go/rpc/zrpc_encoding.go` | 17 | 0 |
| `go/rpc/zsession_events.go` | 2 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/SubagentCompletedEvent.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/FactoryAgentOptions.java` | 7 | 1 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SandboxConfig.java` | 2 | 4 |
| `java/src/generated/java/com/github/copilot/generated/rpc/SandboxConfigAuth.java` | 29 | 0 |
| _... 他 16 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `08fdb86` Update @github/copilot to 1.0.79-9
- `8e91b11` Fix factory run listing after CLI update
- `d126e9c` Bound in-process .NET test cleanup
- `79c3e5a` Stabilize .NET CLI startup error test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成された `FactoryAgentOptions`、`SandboxConfig`、session event、RPC エンコード型などが更新されました。wire contract の変更に伴う型差分があるため、生成コードを手書きで上書きしている利用者は再生成してください。

**既存利用者への影響**

SDK を通常の公開 API 経由で使う場合は依存更新で対応できます。RPC 型を直接参照する場合はコンパイルエラーとイベント処理を確認してください。

### [#2298](https://github.com/github/copilot-sdk/pull/2298) — Skip untyped internal properties in C# codegen

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +37 / -0
- マージ日時 (UTC): `2026-08-09 12:11:56`

**変更概要**

C# codegen が型なしの内部 RPC プロパティを公開型として生成しないようにしました。  
生成スクリプトに除外条件を追加し、型安全でない内部フィールドが C# SDK の表面に漏れることを防いでいます。  
C# の自動生成コードと、それを参照するビルドが影響範囲です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `scripts/codegen/csharp.ts` | 37 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `6b3df12` Skip untyped internal C# RPC properties

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`csharp.ts` のコード生成条件を変更し、型情報のない内部プロパティをスキップします。公開 wire contract の有型プロパティには影響しませんが、生成される内部メンバー数が減る可能性があります。

**既存利用者への影響**

手書きの生成物を参照していなければ移行不要です。生成コードの内部プロパティに依存している場合は、再生成後のコンパイル結果を確認してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2272 | [WIP] Achieve 100% InProcess and out-of-process test parity | Copilot | <https://github.com/github/copilot-sdk/pull/2272> |
| #2139 | Add managed permission settings to session startup | joshspicer | <https://github.com/github/copilot-sdk/pull/2139> |
| #2283 | SDK, Runtime: Recover JSON-RPC frames containing unpaired UTF-16 surrogates | Chuxel | <https://github.com/github/copilot-sdk/pull/2283> |
| #2287 | Update @github/copilot to 1.0.79-6 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2287> |
| #2276 | fix(java): preserve MCP permission extension data | rinceyuan | <https://github.com/github/copilot-sdk/pull/2276> |
| #2226 | fix: Java README version stuck at 1.0.5-01; release sed regex can't match numeric qualifiers | rinceyuan | <https://github.com/github/copilot-sdk/pull/2226> |
| #2282 | Update @github/copilot to 1.0.79-5 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2282> |
| #2264 | docs: correct the Python Customize Mode section IDs and action list | examon | <https://github.com/github/copilot-sdk/pull/2264> |
| #2260 | sdk: Expose disabled MCP servers across languages | connor4312 | <https://github.com/github/copilot-sdk/pull/2260> |
| #2267 | docs: add citations guide | patniko | <https://github.com/github/copilot-sdk/pull/2267> |
| #2266 | docs: update Go and Rust API reference links | scottaddie | <https://github.com/github/copilot-sdk/pull/2266> |
| #2254 | Add userPromptTransformed hook to all SDKs | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2254> |
| #2186 | Fix active Node and Rust replay E2E flakes | roji | <https://github.com/github/copilot-sdk/pull/2186> |
| #2251 | Parallelize Python and Windows .NET CI tests | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2251> |
| #2232 | docs: replace removed `session.idle.backgroundTasks` field with the current `aborted` field | examon | <https://github.com/github/copilot-sdk/pull/2232> |
| #2253 | docs: move SDK development guidance to local READMEs | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2253> |
| #2252 | build(deps-dev): bump postcss from 8.5.15 to 8.5.25 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2252> |
| #2242 | build(deps-dev): bump fast-uri from 3.1.4 to 3.1.5 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2242> |
| #2243 | build(deps-dev): bump postcss from 8.5.15 to 8.5.25 in /nodejs | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2243> |
| #2244 | build(deps-dev): bump the npm_and_yarn group across 1 directory with 2 updates | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2244> |
| #2245 | build(deps-dev): bump ip-address from 10.2.0 to 10.4.0 in /test/harness | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2245> |
| #2250 | Speed up Rust E2E tests with shared clients | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2250> |
| #2201 | docs: clarify working directory defaults across SDKs | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2201> |
| #2206 | Stop sendAndWait from emitting an unhandled rejection | thejesh23 | <https://github.com/github/copilot-sdk/pull/2206> |
| #2228 | Support reasoningEffort: max | Dharshika-11 | <https://github.com/github/copilot-sdk/pull/2228> |
| #2241 | [Java] Add linux-x64 in-process CI job to Java SDK workflow | Copilot | <https://github.com/github/copilot-sdk/pull/2241> |
| #2208 | dotnet: update README attachment examples to current API (fixes #2196) | HindzStark | <https://github.com/github/copilot-sdk/pull/2208> |
| #2239 | Update @github/copilot to 1.0.78 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2239> |
| #2238 | Java: Add InProcess FFI transport E2E test (task 4.8) | Copilot | <https://github.com/github/copilot-sdk/pull/2238> |
| #2236 | [Java] Add copilot-native module producing linux-x64 classifier JAR for runtime.node | Copilot | <https://github.com/github/copilot-sdk/pull/2236> |
| #2234 | [Java] Add RuntimeConnection hierarchy and in-process transport dispatch | Copilot | <https://github.com/github/copilot-sdk/pull/2234> |
| #2233 | [Java] Add in-process FFI runtime host lifecycle and stream transport primitives | Copilot | <https://github.com/github/copilot-sdk/pull/2233> |
| #2223 | docs: fix the Node.js inbound trace-context example to use a real tool-registration API | examon | <https://github.com/github/copilot-sdk/pull/2223> |
| #2180 | feat: add support for additional directories in session configuration | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2180> |
| #2230 | [Java] Embed Rust CLI runtime 4.4: JNA binding interface and implementation | Copilot | <https://github.com/github/copilot-sdk/pull/2230> |
| #2212 | docs: remove the nonexistent toolName field from tool.execution_complete | examon | <https://github.com/github/copilot-sdk/pull/2212> |
| #2191 | build(deps): bump brace-expansion from 5.0.6 to 5.0.9 in /scripts/docs-validation in the npm_and_yarn group across 1 directory | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2191> |
| #2175 | [Java] Embed Rust CLI runtime 4.3: NativeRuntimeLoader — native binary extraction and caching | Copilot | <https://github.com/github/copilot-sdk/pull/2175> |
| #1600 | all SDKs: add EnableExperimentalMode to session create/resume wire with mode-aware defaults | jmoseley | <https://github.com/github/copilot-sdk/pull/1600> |
| #2225 | fix(python): serialize Pydantic models with mode='json' in tool results | rinceyuan | <https://github.com/github/copilot-sdk/pull/2225> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2301 | [java] Add linux-x64 implementation of in process Copilot CLI | open | edburns | <https://github.com/github/copilot-sdk/pull/2301> |
| PR | #2300 | build(deps-dev): bump hono from 4.12.32 to 4.13.1 in /test/harness | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2300> |
| PR | #2312 | docs: note the minimum language runtimes in the bundled CLI quick start | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2312> |
| PR | #2313 | Circleci project setup | open | dariandawnblixtleo-hue | <https://github.com/github/copilot-sdk/pull/2313> |
| PR | #2294 | sdk: Forward decisionContext on permission replies across languages | open | aymenfurter | <https://github.com/github/copilot-sdk/pull/2294> |
| PR | #2311 | fix(rust): answer the request id when a handler panics | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2311> |
| PR | #2310 | fix(java): stop logging the legacy 'connect' probe failure as a warning | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2310> |
| PR | #2307 | Use session.detach for SDK session cleanup | open | jmoseley | <https://github.com/github/copilot-sdk/pull/2307> |
| PR | #2297 | Add repository CWD to Rust model listing | open | eljog | <https://github.com/github/copilot-sdk/pull/2297> |
| PR | #2292 | fix(rust): reap spawned process trees | open | lukehoban | <https://github.com/github/copilot-sdk/pull/2292> |
| PR | #2290 | Rust: add race-safe canvas availability waiter | open | ellismg | <https://github.com/github/copilot-sdk/pull/2290> |
| PR | #2286 | build(deps): bump js-yaml from 4.2.0 to 4.3.1 in /scripts/codegen in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2286> |
| PR | #2285 | build(deps-dev): bump js-yaml from 4.2.0 to 4.3.1 in /nodejs | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2285> |
| PR | #2265 | Bump the "all" group with 7 updates across multiple ecosystems | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2265> |
| PR | #2257 | Add shared Windows.UI.Shell.Tasks integration to SDK crate | open | DevGhub007 | <https://github.com/github/copilot-sdk/pull/2257> |
| PR | #2258 | Forward OAuth client metadata URL in Rust sessions | open | SamMorrowDrums | <https://github.com/github/copilot-sdk/pull/2258> |
| PR | #2295 | [java] Add linux-x64 implementation of in process Copilot CLI | closed | edburns | <https://github.com/github/copilot-sdk/pull/2295> |
| PR | #2259 | [java] Add `linux-x64` implementation of in process Copilot CLI | closed | edburns | <https://github.com/github/copilot-sdk/pull/2259> |
| PR | #1461 | Add workflow to trigger docs-internal SDK sync on docs changes | closed | sunbrye | <https://github.com/github/copilot-sdk/pull/1461> |
| PR | #1710 | ci(rust): add docs.rs simulation step to prevent publish regressions | closed | Copilot | <https://github.com/github/copilot-sdk/pull/1710> |
| PR | #1722 | Recover JSON-RPC messages with malformed unicode escapes | closed | ellismg | <https://github.com/github/copilot-sdk/pull/1722> |
| PR | #1733 | [BLOCKED] Use Copilot org billing for the repo's internal agentic workflows instead of a PAT | closed | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/1733> |
| PR | #1774 | Node: Add post user prompt hook | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1774> |
| PR | #2255 | Tolerate unnumbered view results in replay captures | closed | erik-krogh | <https://github.com/github/copilot-sdk/pull/2255> |
| PR | #2235 | feat: add handling for additional directories in session permissions | closed | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2235> |
| PR | #2197 | docs: fix non-compiling attachment examples in the .NET README | closed | examon | <https://github.com/github/copilot-sdk/pull/2197> |
| PR | #2246 | fix(python): serialize datetime/UUID/Decimal/Enum/set/dataclass in plain-dict tool results | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2246> |
| PR | #2247 | docs: fix stale version requirements and add Rust/Java sections to CONTRIBUTING.md | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2247> |
| PR | #2248 | chore(ci): bump Go 1.22 to 1.24 in codegen-check and update-copilot-dependency workflows | closed | rinceyuan | <https://github.com/github/copilot-sdk/pull/2248> |
| PR | #2262 | Update multiple dependencies including flatted, lodash, and rollup | closed | iAlien369-design | <https://github.com/github/copilot-sdk/pull/2262> |
| PR | #2049 | WIP: Base branch for epic 1917-java-embed-rust | closed | edburns | <https://github.com/github/copilot-sdk/pull/2049> |
| PR | #2256 | Test: Normalize legacy view replay output | closed | erik-krogh | <https://github.com/github/copilot-sdk/pull/2256> |
| PR | #2015 | Rust: Add Scoped Main-Turn Interruption | closed | SlowGreek | <https://github.com/github/copilot-sdk/pull/2015> |
| PR | #1628 | test(e2e): fix flaky model switchto test race condition | closed | Morabbin | <https://github.com/github/copilot-sdk/pull/1628> |
| PR | #2016 | fix(dotnet): recover from dropped session idle events | closed | hydraxman | <https://github.com/github/copilot-sdk/pull/2016> |
| PR | #2198 | fix(go): tolerate numeric ping timestamps | closed | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2198> |
| PR | #2199 | fix(dotnet): tolerate numeric ping timestamps | closed | xianjianlf2 | <https://github.com/github/copilot-sdk/pull/2199> |
| PR | #2195 | docs: add Chinese translation (README.zh-CN.md) | closed | sunz93926-debug | <https://github.com/github/copilot-sdk/pull/2195> |
| PR | #2204 | Serialize tool results with Pydantic's JSON mode | closed | thejesh23 | <https://github.com/github/copilot-sdk/pull/2204> |
| PR | #2202 | python: make generated package private | closed | omidsaffari | <https://github.com/github/copilot-sdk/pull/2202> |
| PR | #2229 | Test CI behavior | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2229> |
| Issue | #2293 | Python SDK example code failed with  'Callable' has no attribute 'approve_all' | open | shangerxin | <https://github.com/github/copilot-sdk/issues/2293> |
| Issue | #2308 | [Java]: Refactor test for better use of matrix | open | edburns | <https://github.com/github/copilot-sdk/issues/2308> |
| Issue | #2296 | [Java] Post-agentic 02: review attempt | closed | edburns | <https://github.com/github/copilot-sdk/issues/2296> |
| Issue | #2303 | Bug: SDK crashes when using special characters in prompt | open | Devdeep781 | <https://github.com/github/copilot-sdk/issues/2303> |
| Issue | #2304 | No "Copilot Requests" permission in GitHub Apps despite the Copilot SDK documentation saying otherwise | open | mokshadharma | <https://github.com/github/copilot-sdk/issues/2304> |
| Issue | #2268 | [Java] Post-agentic 01: Get PR into mergable shape: post-agentic-01-inprocess-out-of-process-test-parity | closed | edburns | <https://github.com/github/copilot-sdk/issues/2268> |
| Issue | #2271 | [Java] Post-agentic 01: Achieve 100% InProcess / out-of-process test parity | closed | edburns | <https://github.com/github/copilot-sdk/issues/2271> |
| Issue | #2291 | [java] Warning logged "Unhandled method connect" during the execution of the tutorial | open | laeubi | <https://github.com/github/copilot-sdk/issues/2291> |
| Issue | #2289 | [java] Using the SDK seems to reset the folder trust | open | laeubi | <https://github.com/github/copilot-sdk/issues/2289> |
| Issue | #2284 | new issue | open | yaasiinmd1 | <https://github.com/github/copilot-sdk/issues/2284> |
| Issue | #2280 | Support hooks, skills, agents, instructions/rules from additional directories | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2280> |
| Issue | #2281 | 8 Best AI Training Jobs – Get Paid to Train AI from Home! (Results Not G... | open | kaawmnain24-netizen | <https://github.com/github/copilot-sdk/issues/2281> |
| Issue | #2273 | Java: preserve MCP fields in PermissionRequest extensionData | closed | jamesmontemagno | <https://github.com/github/copilot-sdk/issues/2273> |
| Issue | #2279 | [aw] SDK Consistency Review Agent hit AI credits rate limit | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2279> |
| Issue | #2277 | [aw] Detection Runs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2277> |
| Issue | #2278 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2278> |
| Issue | #2263 | Python README Customize Mode omits the `preamble` and `runtime_instructions` sections and the `preserve` action | closed | examon | <https://github.com/github/copilot-sdk/issues/2263> |
| Issue | #2275 | [changelog] Add changelog for v1.0.9 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2275> |
| Issue | #2274 | [changelog] Add changelog for java/v1.0.9 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2274> |
| Issue | #2270 | Support for A2A communication with Foundry Agents | open | jgbradley1 | <https://github.com/github/copilot-sdk/issues/2270> |
| Issue | #2261 | Ensure `events.jsonl` honors inherited file-size limits | open | ajjosh-msft2 | <https://github.com/github/copilot-sdk/issues/2261> |
| Issue | #2231 | docs: `session.idle` documents a removed `backgroundTasks` field instead of the current `aborted` field | closed | examon | <https://github.com/github/copilot-sdk/issues/2231> |
| Issue | #2249 | Fine-grained PAT authenticates on Windows but not Debian Linux | closed | rsocko | <https://github.com/github/copilot-sdk/issues/2249> |
| Issue | #2240 | test issue | closed | mcoppolino | <https://github.com/github/copilot-sdk/issues/2240> |
| Issue | #2237 | SDK model listing | open | salamichobani | <https://github.com/github/copilot-sdk/issues/2237> |
| Issue | #2227 | GitHub Copilot doesn't remove previous skill | open | assing | <https://github.com/github/copilot-sdk/issues/2227> |
| Issue | #2188 | [aw] Java Handwritten Code Adaptation After CLI Upgrade failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2188> |
| Issue | #2166 | [Java] Embed rust: Agentic run 02 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2166> |
| Issue | #2189 | <img src="https://octodex.github.com/images/supportcat.png" align="right" height="100px" /> | closed | mohamadhosenzademohamad-oss | <https://github.com/github/copilot-sdk/issues/2189> |
| Issue | #2209 | Java README Maven install snippet is stuck at 1.0.5-01; release sed regex can't match numeric qualifiers | closed | HoneyTyagii | <https://github.com/github/copilot-sdk/issues/2209> |
| Issue | #2091 | The JSON value could not be converted to System.DateTimeOffset | closed | generalloki | <https://github.com/github/copilot-sdk/issues/2091> |
| Issue | #1735 | Cwd always gets set even when WorkingDirectory is null | closed | IeuanWalker | <https://github.com/github/copilot-sdk/issues/1735> |
| Issue | #2205 | Node: sendAndWait can emit an unhandled rejection and terminate the host process when session.error arrives mid-send | closed | thejesh23 | <https://github.com/github/copilot-sdk/issues/2205> |
| Issue | #1356 | Client.Start fails when CLI returns ping `timestamp` as a JSON string (PingResponse.Timestamp int64) | closed | lonegunmanb | <https://github.com/github/copilot-sdk/issues/1356> |
| Issue | #2207 | Support reasoningEffort: max | closed | Stono | <https://github.com/github/copilot-sdk/issues/2207> |
| Issue | #2151 | [Java] Embed Rust CLI runtime 4.9: CI workflow updates | closed | edburns | <https://github.com/github/copilot-sdk/issues/2151> |
| Issue | #2196 | .NET README attachment examples reference types that no longer exist | closed | examon | <https://github.com/github/copilot-sdk/issues/2196> |
| Issue | #2150 | [Java] Embed Rust CLI runtime 4.8: E2E integration test | closed | edburns | <https://github.com/github/copilot-sdk/issues/2150> |
| Issue | #2092 | [aw] Bug Handler is missing required data | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2092> |
| Issue | #2149 | [Java] Embed Rust CLI runtime 4.7: Native binary download and classifier JAR module | closed | edburns | <https://github.com/github/copilot-sdk/issues/2149> |
| Issue | #2148 | [Java] Embed Rust CLI runtime 4.6: Transport integration with CopilotClient | closed | edburns | <https://github.com/github/copilot-sdk/issues/2148> |
| Issue | #2147 | [Java] Embed Rust CLI runtime 4.5: FFI runtime host and transport streams | closed | edburns | <https://github.com/github/copilot-sdk/issues/2147> |
| Issue | #2222 | docs: Node.js inbound trace-context example calls session.registerTool(), which is not a public API | closed | examon | <https://github.com/github/copilot-sdk/issues/2222> |
| Issue | #2146 | [Java] Embed Rust CLI runtime 4.4: JNA binding interface and implementation | closed | edburns | <https://github.com/github/copilot-sdk/issues/2146> |
| Issue | #2211 | Node.js docs: `tool.execution_complete` is documented with a `toolName` field it does not have | closed | examon | <https://github.com/github/copilot-sdk/issues/2211> |
| Issue | #2169 | [Java] Embed Rust CLI runtime 4.3: Native binary extraction and caching | closed | edburns | <https://github.com/github/copilot-sdk/issues/2169> |
