# github/copilot-sdk *(詳細モード)*

対象期間: 2026-08-13 00:02:03 〜 2026-08-14 00:21:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 3 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 3 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | edburns, MRayermannMSFT, stephentoub |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2315](https://github.com/github/copilot-sdk/pull/2315) — [SDK/Factories] Add argsSchema To The Factory Authoring Surface

- 作者: MRayermannMSFT / 状態: MERGED
- ラベル: —
- 変更行数: +161 / -8
- マージ日時 (UTC): `2026-08-13 21:38:03`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/docs/factories.md` | 20 | 3 |
| `nodejs/src/factory.ts` | 8 | 4 |
| `nodejs/src/types.ts` | 25 | 1 |
| `nodejs/test/e2e/fixtures/factory-extension.mjs` | 9 | 0 |
| `nodejs/test/factory.test.ts` | 99 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `b5fe21a` [SDK/Factories] Add argsSchema To The Factory Authoring Surface
- `82cb80c` Scope argsSchema docs to the run_factory path and widen the E2E fixture

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#2331](https://github.com/github/copilot-sdk/pull/2331) — Fix codegen for internal runtime schemas

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +33 / -9
- マージ日時 (UTC): `2026-08-13 21:04:03`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `scripts/codegen/csharp.ts` | 7 | 6 |
| `scripts/codegen/typescript.ts` | 26 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `60ff605` Fix codegen for internal runtime schemas

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#2325](https://github.com/github/copilot-sdk/pull/2325) — test(java): skip linux runtime tests on other platforms

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +31 / -0
- マージ日時 (UTC): `2026-08-13 00:12:24`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/sdk/src/test/java/com/github/copilot/ffi/NativeRuntimeLoaderTest.java` | 31 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `4949583` test(java): skip linux runtime tests on other platforms

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2332 | Update @github/copilot to 1.0.80-0 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2332> |
| PR | #2330 | Add built-in plugin directory support | open | lutzroeder | <https://github.com/github/copilot-sdk/pull/2330> |
| PR | #2328 | Document persistent-file MCP OAuth storage in Rust | open | dy-hu | <https://github.com/github/copilot-sdk/pull/2328> |
| Issue | #2329 | Add ability to add BYOK models to model list | open | andreamah | <https://github.com/github/copilot-sdk/issues/2329> |
| Issue | #2326 | Add SDK support for registering built-in plugin directories | open | lutzroeder | <https://github.com/github/copilot-sdk/issues/2326> |
| Issue | #2327 | Add SDK support for registering built-in plugin directories | open | lutzroeder | <https://github.com/github/copilot-sdk/issues/2327> |
