# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-08 00:54:17 〜 2026-09-14 03:34:25 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | LE0-Lin, tamirdresher, danfiedler-msft |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#98](https://github.com/microsoft/agent-framework-durable-extension/pull/98) — Fix SourceLink advisory and pin patched .NET SDK （PR / open / tamirdresher）
  既存利用者は該当機能の設定・入力形式・依存バージョンを確認し、必要に応じて移行手順と回帰テストを準備してください。

## このリポジトリの要点

対象期間は agent-framework-durable-extension の主要変更を確認し、API・依存関係・テスト基盤の更新を整理しました。
重要度付きの PR / Issue については、既存利用者が確認すべき互換性・移行ポイントを優先して記載しています。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#92](https://github.com/microsoft/agent-framework-durable-extension/pull/92) — Propose durable agent state schema 2.0 contract

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +1620 / -14
- マージ日時 (UTC): `2026-09-12 12:17:30`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `schemas/README.md` | 277 | 0 |
| `schemas/durable-agent-entity-state.json` | 334 | 14 |
| `schemas/fixtures/README.md` | 69 | 0 |
| `schemas/fixtures/shared-durable-agent-state-1.2-python-shape.json` | 168 | 0 |
| `schemas/fixtures/shared-durable-agent-state-2.0-lossless.json` | 77 | 0 |
| `schemas/fixtures/shared-durable-agent-state-2.0-pruned.json` | 59 | 0 |
| `schemas/fixtures/shared-durable-agent-state-2.0.json` | 100 | 0 |
| `schemas/tests/README.md` | 58 | 0 |
| `schemas/tests/validation-cases.json` | 226 | 0 |
| `schemas/tests/versioned-envelope-cases.json` | 252 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `ed0b1c7` Propose durable agent state schema 2.0 contract
- `efed11f` Record schema contract review approval
- `664db2d` Address cross-runtime schema contract review feedback
- `eff12f4` Keep lossless message expansion scoped to schema v2

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#89](https://github.com/microsoft/agent-framework-durable-extension/pull/89) — Pin GitHub Actions to full-length commit SHAs

- 作者: danfiedler-msft / 状態: MERGED
- ラベル: —
- 変更行数: +28 / -17
- マージ日時 (UTC): `2026-09-10 00:30:53`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/dependabot.yml` | 11 | 0 |
| `.github/workflows/dotnet-build-and-test.yml` | 4 | 4 |
| `.github/workflows/dotnet-format.yml` | 1 | 1 |
| `.github/workflows/dotnet-integration-tests.yml` | 4 | 4 |
| `.github/workflows/python-integration-tests.yml` | 4 | 4 |
| `.github/workflows/python-merge-tests.yml` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `633534e` Pin GitHub Actions to full-length commit SHAs

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

### [#84](https://github.com/microsoft/agent-framework-durable-extension/pull/84) — .NET: Fail workflows when max supersteps is exceeded

- 作者: LE0-Lin / 状態: MERGED
- ラベル: —
- 変更行数: +323 / -6
- マージ日時 (UTC): `2026-09-10 00:28:57`

**変更概要**

この PR は関連実装・テスト・ドキュメントを更新し、対象機能の挙動改善または保守性向上を行うものです。利用者は変更範囲とリリースノートを確認してください。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/MaxSuperstepsExceededException.cs` | 86 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/Workflows/DurableWorkflowOptions.cs` | 14 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/Workflows/DurableWorkflowRunner.cs` | 13 | 6 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/MaxSuperstepsExceededExceptionTests.cs` | 32 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/Workflows/DurableWorkflowOptionsTests.cs` | 29 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/Workflows/DurableWorkflowRunnerTests.cs` | 148 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `3705c52` Fail workflows when max supersteps is exceeded
- `414ecb1` .NET: Add changelog entry for max supersteps fix
- `31ffeaa` .NET: Improve max supersteps exception diagnostics
- `44e9824` .NET: Make max superstep exception details nullable

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルとコミットから、対象機能の実装・テスト・ドキュメントが同時に更新されています。明示された破壊的変更がある場合は、既存設定や API 契約を先に確認してください。

**既存利用者への影響**

通常は既存コードの変更は不要ですが、対象 API・設定・依存バージョンを利用している場合はリリースノートに沿って更新し、回帰テストを実施してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #100 | Add automatic durable history retention sample | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/100> |
| PR | #99 | Add Foundry and custom durable history samples | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/99> |
| PR | #97 | Add pressure-based durable history retention and metrics | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/97> |
| PR | #95 | Add durable chat history ownership and session persistence | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/95> |
| PR | #94 | .NET: Harden durable mailbox delivery and workflow output provenance | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/94> |
| PR | #93 | Add .NET support for durable agent state schema 2.0 | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/93> |
| PR | #98 | Fix SourceLink advisory and pin patched .NET SDK | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/98> |
| PR | #91 | Bump the github-actions group with 6 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/91> |
| PR | #90 | Preserve durable agent state schema 1.2 compatibility | closed | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/90> |
| Issue | #71 | .NET: Hitting MaxSupersteps silently truncates the workflow and reports success | closed | mgoelz | <https://github.com/microsoft/agent-framework-durable-extension/issues/71> |

