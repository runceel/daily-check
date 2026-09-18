# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 14 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 3 |
| 新規 Issue              | 13 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | MackinnonBuck, github-actions[bot], roji, edburns, gimenete, dependabot[bot] |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

- `github/copilot-sdk` は今週、ライブラリの実行基盤を軽くしつつ、Java / Rust / CLI の互換性とドキュメント整備を進めていました。
- 特にメモリ削減対応と `darwin-x64` 対応は、SDK 利用者にとって実運用での体験向上に直結する変更です。
- CLI 連携の更新や Azure project URL のドキュメント改善もあり、開発者が認証や runtime を正しく扱う上でのガイドが改善されています。
- 今回の動きは大規模な API 変更よりも、利用体験の安定化と配布範囲拡張が中心でした。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2593](https://github.com/github/copilot-sdk/pull/2593) — docs: clarify Azure project URL support

- 作者: roji / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-09-17 18:58:49`

**変更概要**

- Azure プロジェクト URL の扱いが文書で明確化され、BYOK 認証の前提条件と利用方法が分かりやすくなりました。
- これにより、ドキュメントを読んだ開発者が「どの URL を使えばよいか」を迷わずに済みます。
- 変更自体は docs のみで、実装や runtime には影響がありません。
- ただし、Azure 環境に依存する利用者は、設定例とプロジェクト URL の整合性を再確認しておくと安心です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/auth/byok.md` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `dd4c43f` docs: clarify Azure project URL support

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 変更は `docs/auth/byok.md` の説明追記のみで、公開 API や runtime には影響しません。
- 重要なのは、Azure 環境でのプロジェクト URL の前提と制約が明文化された点です。
- 破壊的変更は見当たりません。

**既存利用者への影響**

- マイグレーションは不要で、設定の説明が改善されたため、利用時に認証例を確認するだけで十分です。

### [#2676](https://github.com/github/copilot-sdk/pull/2676) — fix(rust): cut retained runtime-install memory by ~99%

- 作者: mohamedmansour / 状態: MERGED
- ラベル: —
- 変更行数: +942 / -126
- マージ日時 (UTC): `2026-09-17 16:42:25`

**変更概要**

- Rust SDK の bundled runtime installation が保持していたメモリ使用量を大幅に削減し、インストール時のリソース利用が劇的に軽くなりました。
- `stream` による runtime install と immutable cache の再利用が導入され、メモリと I/O の効率が改善されています。
- これは CLI / runtime の再利用が多い環境で特に価値が大きく、開発者と CI いずれにも有益です。
- 追加で、portable runtime destination の alias を弾く修正で誤設定の回避も行われています。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/src/embeddedcli.rs` | 942 | 126 |

</details>

<details><summary>コミット (23 件)</summary>

- `883edfb` fix(rust): stream bundled runtime installation
- `b148263` test(rust): add reproducible runtime installer memory benchmark
- `54bfc6b` docs(rust): remove checked-in installer benchmarks
- `9a1af09` fix(rust): reject portable runtime destination aliases
- `0d3be10` docs(rust): keep installer PR focused on code and tests
- `27a1be0` Merge branch 'main' into mohamedmansour-sdk-runtime-memory
- `9edfe63` Merge branch 'main' into mohamedmansour-sdk-runtime-memory
- `61cb61c` fix(rust): reuse immutable runtime caches
- _... 他 15 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 実質的な API 変更はなく、処理の削減とキャッシュ再利用を中心に構成されているため、利用者のコード修正は最小限です。
- ただし runtime の配置ルールが厳格化され、portable destination alias を許容しない挙動が追加されました。
- 破壊的変更とは言い切れませんが、特殊な配置パスを使っていた実装は確認が必要です。

**既存利用者への影響**

- マイグレーションは不要ですが、カスタム runtime 配置や alias 利用がある場合は設定の見直しを推奨します。

### [#2701](https://github.com/github/copilot-sdk/pull/2701) — Add support for Java on `darwin-x64`

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +466 / -17
- マージ日時 (UTC): `2026-09-16 23:47:00`

**変更概要**

- Java SDK に `darwin-x64` の native runtime support が追加され、Apple Silicon 以外の macOS 環境でも利用しやすくなりました。
- 配布ワークフローと native artifact の検証スクリプトが整備され、リリース時の品質担保が改善されています。
- これは Java 利用者にとって利用可能な OS 範囲を広げる重要な変更で、互換性拡張として評価できます。
- 既存の API には影響しませんが、`darwin-x64` 向けの公開 artifact を使う環境では本修正が直接効きます。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/java-publish-maven.yml` | 89 | 1 |
| `.github/workflows/java-publish-snapshot.yml` | 97 | 1 |
| `.github/workflows/java-sdk-tests.yml` | 76 | 0 |
| `java/README.md` | 6 | 6 |
| `java/copilot-native/pom.xml` | 118 | 1 |
| `java/copilot-native/scripts/fetch-native.test.mjs` | 1 | 1 |
| `java/copilot-native/scripts/validate-local-publication.mjs` | 8 | 1 |
| `java/copilot-native/scripts/validate-native-artifact.test.mjs` | 28 | 0 |
| `java/copilot-native/scripts/validate-native-host.mjs` | 5 | 3 |
| `java/copilot-native/scripts/validate-native-host.test.mjs` | 23 | 0 |
| `java/docs/adr/adr-007-native-bundling-strategy.md` | 3 | 3 |
| `java/sdk/pom.xml` | 12 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `3ba365b` Initial plan
- `3fb34ab` [Java] Add darwin-x64 native runtime support (#2429)
- `9c59e96` Publish Java darwin-x64 runtime artifacts

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- これは実装コードの新規 native runtime 持ち込みで、API や sdk surface の破壊ではなく環境対応の拡張です。
- 配布メタデータと検証手順が追加されており、Java users が本番利用時に問題なく動くことを意図しています。
- 破壊的変更は見当たりません。

**既存利用者への影響**

- マイグレーションは不要で、既存の Java 環境には影響しません。`darwin-x64` での利用を始める場合は新しいアーティファクトが利用可能なため、依存更新だけで済みます。

### [#2694](https://github.com/github/copilot-sdk/pull/2694) — Update Copilot CLI to 1.0.86-0

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +142 / -30
- マージ日時 (UTC): `2026-09-16 15:57:30`

**変更概要**

- Copilot CLI を 1.0.86-0 に更新し、Go 側の in-process isolation と signal handling の回帰修正を含めていました。
- これにより、子プロセスのライフサイクル管理と SIG 破棄の挙動が改善され、SDK 利用者の実行安定性が向上します。
- Go での e2e 環境や test harness の整備が入っており、特にプロセス分離や cleanup の妥当性が高まっています。
- 依存更新の影響範囲は CLI バージョン更新に留まり、公開 API を破壊するものではないと見られます。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `go/internal/e2e/auto_tier_e2e_test.go` | 9 | 0 |
| `go/internal/e2e/mcp_oauth_e2e_test.go` | 1 | 0 |
| `go/internal/e2e/testharness/inprocess_cleanup_disabled.go` | 3 | 0 |
| `go/internal/e2e/testharness/inprocess_cleanup_enabled.go` | 6 | 0 |
| `go/internal/e2e/testharness/proxy.go` | 2 | 0 |
| `go/internal/ffihost/ffihost.go` | 26 | 12 |
| `go/internal/ffihost/sigonstack_darwin.go` | 6 | 8 |
| `go/internal/ffihost/sigonstack_linux.go` | 6 | 7 |
| `go/internal/ffihost/sigonstack_linux_test.go` | 80 | 0 |
| `go/internal/ffihost/sigonstack_other.go` | 1 | 1 |
| `nodejs/package.json` | 1 | 1 |
| `nodejs/src/cliVersion.ts` | 1 | 1 |

</details>

<details><summary>コミット (6 件)</summary>

- `7fe2639` Update Copilot CLI to 1.0.86-0
- `8e414fb` Merge branch 'main' into update-copilot-1.0.86-0
- `fecf9ab` Merge branch 'main' into update-copilot-1.0.86-0
- `733f6c4` Fix Go in-process isolation regressions
- `9f767b2` Harden Go child process signal handling
- `9b9bd7c` Document Tokio signal handler root cause

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- この変更では Go のプロセス分離とシグナル制御の回帰修正が中心で、公開 API シグネチャには大きな変更は見当たりません。
- 依存の更新や harness 調整が入り、実行環境の堅牢性の改善に寄与しています。破壊的変更は明示されておらず、利用者側の互換性は高いと考えられます。
- 新しい抽象の追加よりも既存動作の安定化が主目的でした。

**既存利用者への影響**

- マイグレーションは不要です。CLI の更新とプロセス制御修正を取り込むだけで、既存 SDK 利用者の安全性が向上します。

### [#2690](https://github.com/github/copilot-sdk/pull/2690) — [changelog] Add changelog for v1.0.14

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: `automation` `changelog`
- 変更行数: +63 / -0
- マージ日時 (UTC): `2026-09-16 14:09:03`

**変更概要**

- v1.0.14 のリリースノートが追加され、今回の変更点を一目で把握できるようになりました。
- 特に runtime / CLI 更新や session lifecycle 整備が集約されており、リリース対象の意図が明確化されています。
- これは SDK 利用者にとって変更の追跡性を高める文書更新であり、運用での判断材料として有効です。
- ただし実装や API 自体の変更ではなく、リリース記録の補完が目的のため、利用者側のコード修正は不要です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `CHANGELOG.md` | 63 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `2a3a17d` Add changelog for v1.0.14

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- 変更は changelog の追加だけで、公開 API や runtime の脆弱性修正そのものはここには含まれていません。
- そのため API シグネチャ変更や破壊的変更の追跡は行わず、リリース要点の整理を目的としていました。
- 破壊的変更はありません。

**既存利用者への影響**

- マイグレーションは不要です。リリース内容を確認しやすくなるだけで、既存の実装には影響しません。

### [#2691](https://github.com/github/copilot-sdk/pull/2691) — build(deps): bump the java-maven-deps group in /java with 2 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `java`
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-09-16 14:09:03`

**変更概要**

- Java の Maven dependency が最新の小さな更新で揃えられ、依存の脆弱性や互換性のリスクが軽減されました。
- これは Java SDK 利用者にとって upgrade の負担が少なく、build 環境の安全性を高めます。
- 変更範囲は非常に小さく、実装ロジックや API の振る舞いを変えるものではありません。
- ただし依存更新を取り込むことで、ビルド結果と lock の差分に注意が必要です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/pom.xml` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `6aabe38` build(deps): bump the java-maven-deps group in /java with 2 updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

- Java Maven dependency の更新は API 変更よりもパッケージバージョンの調整であり、シグネチャ変更や新しい抽象の追加はありません。
- 変更の中心は build トランジティブ依存の整理で、既存利用者が破壊的変更を受ける可能性は低いです。
- 破壊的変更は見当たりません。

**既存利用者への影響**

- マイグレーションは不要です。Java SDK を使っている環境では、依存の更新を取り込むだけで既存のビルドは維持しやすくなります。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #2671 | Fix runtime triage issue payload construction | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2671> |
| #2670 | Preserve image replay compatibility across CLI image limits | stephentoub | <https://github.com/github/copilot-sdk/pull/2670> |
| #2669 | Complete Fast Auto-tier support across SDKs | andyfeller | <https://github.com/github/copilot-sdk/pull/2669> |
| #2689 | Clarify runtime-backed SDK publishing | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2689> |
| #2688 | Update Copilot CLI to 1.0.85 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2688> |
| #2687 | Stabilize session lifecycle E2E tests | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2687> |
| #2663 | Harden Rust CLI download retries | gimenete | <https://github.com/github/copilot-sdk/pull/2663> |
| #2544 | Add runtime-driven canary and unstable SDK publishing | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/2544> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2715 | Add Java linuxmusl-x64 native classifier support | open | Copilot | <https://github.com/github/copilot-sdk/pull/2715> |
| PR | #2712 | Pin GitHub Actions to commit SHAs | open | github-security-bot | <https://github.com/github/copilot-sdk/pull/2712> |
| PR | #2711 | perf(rust): avoid redundant notification payload copies | open | mohamedmansour | <https://github.com/github/copilot-sdk/pull/2711> |
| PR | #2703 | Update Copilot CLI to 1.0.86-2 and fix Rust schema enum collision | open | aurokin | <https://github.com/github/copilot-sdk/pull/2703> |
| PR | #2700 | nodejs: enforce exact npm dependency policy | open | roblourens | <https://github.com/github/copilot-sdk/pull/2700> |
| PR | #2699 | Add optional PNG icons to canvas declarations | open | cschleiden | <https://github.com/github/copilot-sdk/pull/2699> |
| PR | #2702 | Update Copilot CLI to 1.0.86-1 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2702> |
| PR | #2678 | perf(rust): evaluate gzip backend after installer optimization | closed | mohamedmansour | <https://github.com/github/copilot-sdk/pull/2678> |
| PR | #2686 | Update Copilot CLI to 1.0.84-9 | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2686> |
| Issue | #2708 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2708> |
| Issue | #2716 | Weird `/fleet` command inject as though it was user sent | open | DonJayamanne | <https://github.com/github/copilot-sdk/issues/2716> |
| Issue | #2714 | [Java] Add support for `linuxmusl-x64` | open | edburns | <https://github.com/github/copilot-sdk/issues/2714> |
| Issue | #2713 | [FFI] In-process runtime (runtime.node) no longer published to npm as of CLI 1.0.85 — unobtainable for registry-mirrored builds | open | mit2nil | <https://github.com/github/copilot-sdk/issues/2713> |
| Issue | #2710 | Make reqwest and tokio-tungstenite optional so in-process consumers link no TLS | closed | aymanbagabas | <https://github.com/github/copilot-sdk/issues/2710> |
| Issue | #2709 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2709> |
| Issue | #2696 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2696> |
| Issue | #2705 | [Task] Follow-up: support GitHub App U2S credential refresh | closed | gfarb | <https://github.com/github/copilot-sdk/issues/2705> |
| Issue | #2693 | [aw] Issue Classification Agent produced no safe outputs | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2693> |
| Issue | #2704 | co | open | Azayed10 | <https://github.com/github/copilot-sdk/issues/2704> |
| Issue | #2698 | [v2] Ensure default for permission checks is to go through sessionFs | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/issues/2698> |
| Issue | #2695 | BYOK: unrequested 
easoning_effort and snippy params sent to non-reasoning OpenAI deployments (400) | open | Rett-Putnam | <https://github.com/github/copilot-sdk/issues/2695> |
| Issue | #2692 | Bash tool overrides are not honored in the latest Copilot SDK/runtime | open | TYW-0203 | <https://github.com/github/copilot-sdk/issues/2692> |
| Issue | #2365 | Support updating a session's `gitHubToken` without recreating the session | closed | CroffZ | <https://github.com/github/copilot-sdk/issues/2365> |
| Issue | #2675 | Rust bundled runtime installation retains large native-image buffers on cold and warm startup | closed | mohamedmansour | <https://github.com/github/copilot-sdk/issues/2675> |
| Issue | #633 | Support event `session.title_changed` in SDK (not just CLI) | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/633> |
| Issue | #1111 | When skills are loaded they are injected as user.message entry in events.jsonl file | closed | DonJayamanne | <https://github.com/github/copilot-sdk/issues/1111> |
| Issue | #2428 | [Java] Add support for darwin-x64 | closed | edburns | <https://github.com/github/copilot-sdk/issues/2428> |
| Issue | #2666 | [aw] SDK Runtime Triage reported incomplete result | closed | patniko | <https://github.com/github/copilot-sdk/issues/2666> |
