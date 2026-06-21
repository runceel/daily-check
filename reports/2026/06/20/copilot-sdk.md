# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 10:51:22 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 8 |
| クローズ Issue          | 17 |
| 主要コントリビューター  | edburns, stephentoub, github-actions[bot] |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

<!-- TODO: このリポジトリ全体の要点を 2〜4 行で日本語要約。注目すべき PR/Issue に言及し、index 統合の素材にする。特筆すべき動きが無ければ「特筆なし」と明記。この行ごと置換すること -->

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1738](https://github.com/github/copilot-sdk/pull/1738) — Fix codegen schema resolution for new @github/copilot package layout

- 作者: stephentoub / 状態: MERGED
- ラベル: —
- 変更行数: +94 / -33
- マージ日時 (UTC): `2026-06-20 02:35:51`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `java/scripts/codegen/java.ts` | 46 | 21 |
| `scripts/codegen/utils.ts` | 48 | 12 |

</details>

<details><summary>コミット (2 件)</summary>

- `3722cdf` Fix codegen schema resolution for new @github/copilot package layout
- `a52fa6c` Surface real readdir errors and fix schema-not-found guidance in code…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1728](https://github.com/github/copilot-sdk/pull/1728) — Add .NET low-level tool-definition E2E test [6/6]

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +53 / -0
- マージ日時 (UTC): `2026-06-18 20:39:36`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/ToolsE2ETests.cs` | 53 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `fed8ab8` Add .NET low-level tool-definition E2E test
- `7100ffc` Fix .NET session lifecycle replay mismatch in PR 1728

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1727](https://github.com/github/copilot-sdk/pull/1727) — Add Rust low-level tool-definition E2E test [5/6]

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +114 / -2
- マージ日時 (UTC): `2026-06-18 20:52:01`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `rust/tests/e2e/tools.rs` | 114 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `aebe7c2` Add Rust low-level tool-definition E2E test
- `955e290` fix: revert session_lifecycle.rs Say hi -> Say world to match snapshot

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1726](https://github.com/github/copilot-sdk/pull/1726) — Add Python low-level tool-definition E2E test [4/6]

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +44 / -1
- マージ日時 (UTC): `2026-06-18 20:38:37`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/e2e/test_tools_e2e.py` | 44 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `2a4ea7f` Add Python low-level tool-definition E2E test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1725](https://github.com/github/copilot-sdk/pull/1725) — Add Node.js low-level tool-definition E2E test [3/6]

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +49 / -1
- マージ日時 (UTC): `2026-06-18 20:23:55`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `nodejs/test/e2e/tools.e2e.test.ts` | 49 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `a1651fd` Add Node.js low-level tool-definition E2E test
- `a6a403d` Fix Node.js PR formatting and scope

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

### [#1724](https://github.com/github/copilot-sdk/pull/1724) — Add Go low-level tool-definition E2E test [2/6]

- 作者: edburns / 状態: MERGED
- ラベル: —
- 変更行数: +85 / -0
- マージ日時 (UTC): `2026-06-18 20:37:53`

**変更概要**

<!-- TODO: 変更内容を 3〜6 行で日本語要約。何を解決する PR か / 主要な変更点 / 影響範囲 -->

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `go/internal/e2e/tools_e2e_test.go` | 85 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `8687e16` Add Go low-level tool-definition E2E test
- `aebc8ac` Address Go PR review suggestions for low-level tool test

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

<!-- TODO: 上の変更ファイル / コミットから、API シグネチャ変更・破壊的変更・新規抽象などを抽出して日本語で説明。⚠ 破壊的変更があれば明示 -->

**既存利用者への影響**

<!-- TODO: マイグレーション要否を日本語で 1〜3 行 -->

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #1723 | edburns/java-add-spotless-to-java-coding-skill | edburns | <https://github.com/github/copilot-sdk/pull/1723> |
| #1721 | Add Java low-level tool definition E2E test and skill [1/6] | edburns | <https://github.com/github/copilot-sdk/pull/1721> |
| #1718 | Add experimental multi-provider BYOK registry config across all six SDKs | stephentoub | <https://github.com/github/copilot-sdk/pull/1718> |
| #1714 | [changelog] Add changelog for v1.0.2 | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1714> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1739 | Update @github/copilot to 1.0.64-1 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/1739> |
| PR | #1733 | [BLOCKED] Use Copilot org billing for the repo's internal agentic workflows instead of a PAT | open | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/1733> |
| PR | #1729 | normalize-sharing-prompts-during-iteration | open | edburns | <https://github.com/github/copilot-sdk/pull/1729> |
| PR | #1722 | Recover JSON-RPC messages with malformed unicode escapes | open | ellismg | <https://github.com/github/copilot-sdk/pull/1722> |
| PR | #1720 | Add usage and billing metrics docs page | open | andyfeller | <https://github.com/github/copilot-sdk/pull/1720> |
| PR | #1719 | Add experimental-API enforcement tooling for TS, Python, Go, and Rust | open | stephentoub | <https://github.com/github/copilot-sdk/pull/1719> |
| PR | #1715 | Refs/heads/dependabot/maven/java/java maven deps 93d6c7fca3 | open | Huynhthuongg | <https://github.com/github/copilot-sdk/pull/1715> |
| PR | #1734 | TEST: verify org-billing auth for consistency reviewer (do not merge) | closed | MRayermannMSFT | <https://github.com/github/copilot-sdk/pull/1734> |
| PR | #1692 | Start iterating on #1682 On branch edburns/1682-java-tool-ergonomics | closed | edburns | <https://github.com/github/copilot-sdk/pull/1692> |
| Issue | #1740 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1740> |
| Issue | #1737 | $LadyAnne79 | closed | LadyAnne79 | <https://github.com/github/copilot-sdk/issues/1737> |
| Issue | #1736 | @ramoneees You're welcome, be sure to use the current branch `develop`, since the last release we added native tool-calls to the llm-providers, so the interface changed in comparison to `main` | closed | fzamel3333-ai | <https://github.com/github/copilot-sdk/issues/1736> |
| Issue | #1735 | Cwd always gets set even when WorkingDirectory is null | open | IeuanWalker | <https://github.com/github/copilot-sdk/issues/1735> |
| Issue | #1732 | Feature request: canvas/extension hook to augment built-in issue viewer with sub-issues | open | rianfowler | <https://github.com/github/copilot-sdk/issues/1732> |
| Issue | #1731 | Add optional `parentAgentId` to the session-event envelope for nested sub-agents | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1731> |
| Issue | #1730 | Surface session working directory / context on `SessionMetadata` so persisted sessions can be resumed by id | open | colbylwilliams | <https://github.com/github/copilot-sdk/issues/1730> |
| Issue | #1716 | Khắc phục sự cố . Và sữa lỗi | closed | Huynhthuongg | <https://github.com/github/copilot-sdk/issues/1716> |
| Issue | #1708 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1708> |
| Issue | #1699 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1699> |
| Issue | #1688 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1688> |
| Issue | #1682 | Java: Ergonomics: Defining tools | closed | edburns | <https://github.com/github/copilot-sdk/issues/1682> |
| Issue | #1671 | [aw] Java Codegen Agentic Fix failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1671> |
| Issue | #1670 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1670> |
| Issue | #1638 | [aw] Bug Handler failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1638> |
| Issue | #1589 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1589> |
| Issue | #1553 | [aw] Release Changelog Generator failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1553> |
| Issue | #1464 | [aw] Issue Classification Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1464> |
| Issue | #1459 | [aw] Detection Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1459> |
| Issue | #1458 | [aw] No-Op Runs | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1458> |
| Issue | #1440 | Rust external session + MCP tools fail with 'Unhandled permission result kind: [object Object]' | closed | cay7man | <https://github.com/github/copilot-sdk/issues/1440> |
| Issue | #1430 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1430> |
