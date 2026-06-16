# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-12 02:03:55 〜 2026-06-15 00:59:51 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 10 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 19 |
| クローズ Issue          | 8 |
| 主要コントリビューター  | Copilot, stephentoub, qmuntal, dependabot[bot], almaleksia |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

Copilot SDK は API docs 整備、Go JSON-RPC の context 対応、tool definition の `defer` parameter 追加が主な動きです。
特に [#1632](https://github.com/github/copilot-sdk/pull/1632) は .NET / Go / Java / Node.js / Python など複数 SDK にまたがる公開モデル拡張で、各言語 SDK の tool 定義 API に影響します。
オープン PR では MCP OAuth host token handlers、graceful runtime shutdown、OTLP telemetry options、Python docs 整備が続いており、SDK 間の機能整合が次回も焦点です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1662](https://github.com/github/copilot-sdk/pull/1662) — Add API docs column to Available SDKs table in README

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +8 / -8
- マージ日時 (UTC): `2026-06-13 14:55:10`

**変更概要**

README の Available SDKs table に API docs column を追加するドキュメント改善です。
Go と Rust の API docs link も修正され、各言語 SDK の利用者が公式 API ドキュメントへ直接辿れるようになっています。
変更は README の表に限定され、SDK 実装や生成コードには影響しません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 8 | 8 |

</details>

<details><summary>コミット (4 件)</summary>

- `4900e62` Initial plan
- `ad70528` Add API docs column to Available SDKs table in README
- `49a69fb` Fix Go and Rust API docs links in README table
- `a5b4f59` Merge branch 'main' into copilot/update-readme-table-api-docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API シグネチャ変更や破壊的変更はありません。
README のリンクと表構造を更新するドキュメント差分で、Go / Rust の API docs URL の正確性が改善されています。

**既存利用者への影響**

移行作業は不要です。
利用者は README から各 SDK の API docs を参照しやすくなります。

### [#1647](https://github.com/github/copilot-sdk/pull/1647) — Bump esbuild from 0.27.3 to 0.28.1 in /scripts/codegen in the npm_and_yarn group across 1 directory

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `javascript`
- 変更行数: +113 / -135
- マージ日時 (UTC): `2026-06-13 14:40:40`

**変更概要**

codegen scripts 配下の esbuild を 0.27.3 から 0.28.1 へ更新する dependabot PR です。
`scripts/codegen/package.json` と lockfile が更新され、SDK 生成に使う JavaScript toolchain の依存を新しくしています。
製品 SDK のランタイム API ではなく、コード生成・ビルド周辺のメンテナンス更新です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `scripts/codegen/package-lock.json` | 112 | 134 |
| `scripts/codegen/package.json` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `3d4e89e` Bump esbuild

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API の変更はありません。
`scripts/codegen` の npm package metadata と lockfile の esbuild バージョン更新のみで、生成物の差分はこの PR には含まれていません。

**既存利用者への影響**

SDK 利用者に移行作業は不要です。
リポジトリ開発者は codegen 実行時の esbuild 0.28.1 互換性だけ確認すれば十分です。

### [#1643](https://github.com/github/copilot-sdk/pull/1643) — Make Go JSON-RPC requests context-aware

- 作者: qmuntal / 状態: MERGED
- ラベル: —
- 変更行数: +397 / -260
- マージ日時 (UTC): `2026-06-13 02:15:22`

**変更概要**

Go SDK の JSON-RPC request を context-aware にする実装変更です。
`go/client.go`、`go/session.go`、内部 `jsonrpc2`、生成 RPC wrapper が更新され、呼び出しキャンセルや timeout を context 経由で扱えるようになります。
pending request の race を防ぐテストも追加され、長時間呼び出しやキャンセル時の堅牢性が改善されます。
影響範囲は Go SDK の RPC 呼び出し経路です。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `go/canvas_test.go` | 2 | 2 |
| `go/client.go` | 12 | 12 |
| `go/internal/jsonrpc2/jsonrpc2.go` | 45 | 14 |
| `go/internal/jsonrpc2/jsonrpc2_test.go` | 107 | 1 |
| `go/rpc/zrpc.go` | 224 | 224 |
| `go/session.go` | 5 | 5 |
| `scripts/codegen/go.ts` | 2 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `222654e` Make Go JSON-RPC requests context-aware
- `7cefcb5` Fix JSON-RPC pending request test race

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Go の RPC wrapper と client/session の呼び出しが `context.Context` を受け取る形に揃えられています。
内部 `jsonrpc2` にも context 連携が入り、pending request test race の修正でキャンセル・完了管理の期待値が明確化されました。
破壊的変更として明示されてはいませんが、Go SDK の呼び出し側で context 引数が必要になる箇所は確認対象です。

**既存利用者への影響**

Go SDK 利用者は、更新後の generated RPC client / session API が context 引数を要求するか確認してください。
既存コードで `context.Background()` や request-scoped context を渡す形へ調整が必要になる可能性があります。

### [#1639](https://github.com/github/copilot-sdk/pull/1639) — Make exit_plan_mode E2E snapshot tolerant of reworded CLI tool result

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +30 / -0
- マージ日時 (UTC): `2026-06-12 02:54:35`

**変更概要**

`exit_plan_mode` E2E snapshot を、CLI tool result の文言変更に耐えるように更新するテスト改善です。
snapshot file が追加され、モデルが `exit_plan_mode` handler を呼ぶケースで出力文言が少し変わってもテスト意図を保てるようにしています。
製品 API や SDK 動作ではなく、E2E テストの保守性を高める変更です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `test/snapshots/mode_handlers/should_invoke_exit_plan_mode_handler_when_model_uses_tool.yaml` | 30 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `1ca18d4` Make exit_plan_mode E2E snapshot tolerant of reworded CLI tool result

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

API 変更はありません。
snapshot の期待値追加のみで、`exit_plan_mode` handler 呼び出し検証を表現の揺れに強くするテストデータ更新です。

**既存利用者への影響**

SDK 利用者に移行作業は不要です。
テスト基盤の変更のため、外部利用者への直接影響はありません。

### [#1632](https://github.com/github/copilot-sdk/pull/1632) — Add `defer` parameter to tool definition

- 作者: almaleksia / 状態: MERGED
- ラベル: —
- 変更行数: +509 / -10
- マージ日時 (UTC): `2026-06-12 13:34:35`

**変更概要**

tool definition に `defer` parameter を追加する、複数言語 SDK 横断の機能拡張です。
.NET、Go、Java、Node.js、Python などの tool definition 型・README・テストが更新され、ツール実行を遅延・保留するための metadata を表現できるようになります。
Java では `ToolDefer` 型が追加され、各 SDK の型定義とクライアントテストにも `defer` の取り扱いが入っています。
tool 呼び出し制御や UI / runtime 側の実行判断に関係する公開モデル追加です。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/README.md` | 20 | 0 |
| `dotnet/src/Client.cs` | 6 | 2 |
| `dotnet/src/CopilotTool.cs` | 35 | 3 |
| `dotnet/test/Unit/CopilotToolTests.cs` | 5 | 1 |
| `go/README.md` | 12 | 0 |
| `go/client_test.go` | 41 | 0 |
| `go/types.go` | 15 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ToolDefer.java` | 69 | 0 |
| `java/src/main/java/com/github/copilot/rpc/ToolDefinition.java` | 34 | 4 |
| `java/src/test/java/com/github/copilot/ToolDefinitionTest.java` | 62 | 0 |
| `nodejs/README.md` | 15 | 0 |
| `nodejs/src/client.ts` | 2 | 0 |
| `nodejs/src/types.ts` | 8 | 0 |
| `nodejs/test/client.test.ts` | 57 | 0 |
| `python/README.md` | 10 | 0 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (2 件)</summary>

- `365b573` Add defer parameter to tool definition
- `0c7d661` Fix defer parameter comments and docs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

破壊的変更は示されていませんが、各言語の `ToolDefinition` / `CopilotTool` 相当へ `defer` field / parameter が追加されています。
Java では `ToolDefer` という新しい型が導入され、Node.js / Go / Python / .NET でも型定義と README のサンプルが拡張されています。
既存 tool 定義に必須項目を追加する変更ではなく、任意の実行制御 metadata を増やす追加型の扱いです。

**既存利用者への影響**

既存 tool 定義はそのまま動く想定ですが、各 SDK の型生成や strict schema を固定している利用者は `defer` field を許容できるか確認してください。
遅延実行を使いたいツールは、各言語 SDK の新しい `defer` 設定を明示的に追加できます。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1669 | Add SDK MCP OAuth host token handlers | open | roji | <https://github.com/github/copilot-sdk/pull/1669> |
| PR | #1668 | fix(python): round sub-millisecond durations in to_timedelta_int | open | idryzhov | <https://github.com/github/copilot-sdk/pull/1668> |
| PR | #1667 | Add graceful runtime shutdown to SDK clients | open | stephentoub | <https://github.com/github/copilot-sdk/pull/1667> |
| PR | #1665 | Dependabot/npm and yarn/java/scripts/codegen/esbuild 0.28.1 | open | andriusasukys-source | <https://github.com/github/copilot-sdk/pull/1665> |
| PR | #1664 | Bump esbuild from 0.27.2 to 0.28.1 in /scripts/docs-validation in the npm_and_yarn group across 1 directory | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1664> |
| PR | #1663 | Add Read the Docs configuration and Sphinx setup for Python SDK | open | Copilot | <https://github.com/github/copilot-sdk/pull/1663> |
| PR | #1660 | fix: skip CLI download in build.rs when DOCS_RS env var is set | open | Copilot | <https://github.com/github/copilot-sdk/pull/1660> |
| PR | #1652 | Fix Python codegen synthetic permission approval names | open | abhinavgautam01 | <https://github.com/github/copilot-sdk/pull/1652> |
| PR | #1649 | Bump esbuild from 0.28.0 to 0.28.1 in /java/scripts/codegen | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/1649> |
| PR | #1648 | Add OTLP protocol telemetry options | open | loganrosen | <https://github.com/github/copilot-sdk/pull/1648> |
| Issue | #1671 | [aw] Java Codegen Agentic Fix failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1671> |
| Issue | #1670 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1670> |
| Issue | #1666 | Tak | open | andriusasukys-source | <https://github.com/github/copilot-sdk/issues/1666> |
| Issue | #1661 | Mitigation actions available today: Update the top level README table with an API docs column | closed | edburns | <https://github.com/github/copilot-sdk/issues/1661> |
| Issue | #1659 | Fix error in docs.rs: `docs.rs failed to build github-copilot-sdk-1.0.1` | open | edburns | <https://github.com/github/copilot-sdk/issues/1659> |
| Issue | #1658 | API docs parity: Rust | open | edburns | <https://github.com/github/copilot-sdk/issues/1658> |
| Issue | #1657 | API docs parity: .NET | open | edburns | <https://github.com/github/copilot-sdk/issues/1657> |
| Issue | #1656 | API docs parity: Go | closed | edburns | <https://github.com/github/copilot-sdk/issues/1656> |
| Issue | #1655 | API docs parity: Python | open | edburns | <https://github.com/github/copilot-sdk/issues/1655> |
| Issue | #1654 | API docs parity: Node.js / TypeScript | open | edburns | <https://github.com/github/copilot-sdk/issues/1654> |
| Issue | #1653 | Adapt language ecosystem native API docs practices wherever possible | open | edburns | <https://github.com/github/copilot-sdk/issues/1653> |
| Issue | #1651 | `0.1.x dist is unimportable under native Node ESM — extensionless `vscode-jsonrpc/node` specifier | closed | ddevilz | <https://github.com/github/copilot-sdk/issues/1651> |
| Issue | #1650 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1650> |
| Issue | #1646 | Withdrawn | closed | pmella | <https://github.com/github/copilot-sdk/issues/1646> |
| Issue | #1645 | Expose verbosity as a first-class session/request config field (no SDK field today) | open | robsteen | <https://github.com/github/copilot-sdk/issues/1645> |
| Issue | #1644 | Binary tool results not passed to ExternalToolTextResultForLlm | open | sophiehenning | <https://github.com/github/copilot-sdk/issues/1644> |
| Issue | #1642 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1642> |
| Issue | #1641 | SDK built-in tool set differs from the Copilot CLI — `todo` (and others) missing in `.NET` SDK sessions | open | NiceAsiv | <https://github.com/github/copilot-sdk/issues/1641> |
| Issue | #1640 | Sub agent not follow the model setting | open | zeerd | <https://github.com/github/copilot-sdk/issues/1640> |
| Issue | #1580 | Java: Convert E2E tests to use the local test/harness and test/snapshots instead of cloning | closed | edburns | <https://github.com/github/copilot-sdk/issues/1580> |
| Issue | #1423 | Bring Java into parity for `scenario-builds.yml` | closed | edburns | <https://github.com/github/copilot-sdk/issues/1423> |
