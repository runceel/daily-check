---
name: daily-check-report
description: "Generate a daily/periodic diff report for a fixed set of GitHub repositories (microsoft/agent-framework, dotnet/aspnetcore, Azure/azure-functions-dotnet-worker, dotnet/extensions, runceel/ReactiveProperty, microsoft/aspire), GitHub Changelog RSS, and Azure release announcements RSS, comparing against the previous run recorded in timestamp.md. Use this when the user asks for a daily check, daily-check report, 差分レポート, 前回からの差分, デイリーチェック, or otherwise requests an update summary across these repos and Azure updates. The skill delegates the workflow to .github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1, writes split day-folder reports under reports/{yyyy}/{MM}/{dd}/, and updates timestamp.md on success while optionally committing and pushing the result."
---

# Daily Check レポート生成 Skill

このリポジトリ (`runceel/daily-check`) の主目的である「指定 GitHub リポジトリ群 + Azure 更新の前回チェックからの差分レポートを生成する」ワークフローを自動化する Skill です。

## いつ使うか

ユーザーが次のような依頼をしたとき、本 Skill を起動してください:

- 「差分レポートを作って」「daily check のレポートをお願い」「デイリーチェック実行して」
- 「前回からの GitHub の変化と Azure の更新まとめて」
- 「daily-check report を生成して」

## 出力物

最終的に以下を成果物とする:

1. `reports/{yyyy}/{MM}/{dd}/` 配下に日別インデックスと分割ユニット (`index.md`, `azure.md`, `github-changelog.md`, `agent-framework.md`, `aspnetcore.md`, `azure-functions-dotnet-worker.md`, `extensions.md`, `reactiveproperty.md`, `aspire.md`) を生成し、各 `<!-- TODO -->` を日本語解説で埋める。
2. リポジトリルートの `timestamp.md` を今回の生成時刻 (UTC, `yyyy-MM-dd HH:mm:ss`) で上書きする（**`-Finalize` 実行時のみ**）。
3. レポートと `timestamp.md` を commit & push する（`-Finalize` 実行時。手動で行う場合は `-SkipCommit` / `-SkipPush`）。

> ワークフローは **2 フェーズ**（① 骨組み生成 → ② 記入 → ③ 確定 `-Finalize`）。
> 既定の骨組み生成は **非破壊** で、`timestamp.md` 更新も commit もしない。記入済みファイルは再生成から自動保護される。

## 実行手順

1. **スクリプトを起動して骨組みを生成する**（既定＝非破壊。`timestamp.md` 更新も commit もしない）:

   ```pwsh
   pwsh ./.github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1
   ```

   これにより以下がすべて自動で行われる:
   - `reports/{yyyy}/{MM}/{dd}/` 配下の 9 ファイルが作成される
   - Azure / GitHub Changelog の RSS が **対象期間内（前回チェック < pubDate ≦ 生成時刻）に絞って** 取得され、各項目が **`<!-- TODO: ... 原文: {要約} -->` マーカー付き** で書き込まれる
   - 各リポジトリの **統計表と PR/Issue 一覧表が `gh` CLI 経由で取得・事前充填** される
   - PR/Issue のタイトル・ラベルから **重要度（破壊的変更 / セキュリティ / 非推奨 / GA）を自動判定** し、各ファイル冒頭と `index.md` に「⚠ 重要な変更」セクションが起こされる
   - `microsoft/agent-framework` と `microsoft/aspire`（詳細モード）の主要 PR は **変更ファイル一覧 / 追加削除行数 / コミット一覧が `<details>` ブロックに事前展開** される
   - 出力ファイルの先頭行・エンコーディングが自動検証される
   - 既存の **記入済みファイルは保護** され上書きされない（強制再生成は `-Force`）

2. **直近レポートの継続ウォッチを参照する**: 最新の `reports/{yyyy}/{MM}/{dd}/index.md` の「次回チェックに向けたメモ」だけを読み、継続中の PR / Issue や Azure の次段階待ちを今回にも取り込む（本文全体は読まない）。

3. **各ユニットファイルの `<!-- TODO: ... -->` マーカーを日本語解説で埋める**: まず各ファイルの **「⚠ 重要な変更」** と `index.md` の **「⚠ 全体の重要な変更」** を最優先で埋める。書式は [`./references/report-template.md`](./references/report-template.md)、スタイル / 品質ルール / 完了チェックリストは [`./references/quality-rules.md`](./references/quality-rules.md) を参照。エグゼクティブサマリー / 主要トレンドは `index.md` に追記する。`index.md` 末尾の `<!-- daily-check-meta: ... -->` は削除しない。

4. **記入状況を検証する**（任意だが推奨。未記入マーカーがあれば失敗する）:

   ```pwsh
   pwsh ./.github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1 -ValidateOnly
   ```

5. **確定する（`timestamp.md` 更新 + commit / push）**:

   ```pwsh
   pwsh ./.github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1 -Finalize
   ```

   `-Finalize` は生成を行わず、(1) 残存マーカー（`<!-- TODO` / `{{` / `原文:`）が無いか検証し、(2) `index.md` の `daily-check-meta` を基準に `timestamp.md` を進め、(3) commit / push する。マーカーが残っていれば中止して該当箇所を表示する。手動 commit したい場合は `-Finalize -SkipCommit -SkipPush` で `timestamp.md` 更新のみ行い、あとは `git` を直接叩く。

## 収集モード（参考）

| owner/repo | モード | 出力ファイル |
| --- | --- | --- |
| `microsoft/agent-framework` | **詳細**（API 変化・破壊的変更・コミット単位の差分まで） | `agent-framework.md` |
| `microsoft/aspire` | **詳細**（同上） | `aspire.md` |
| `dotnet/aspnetcore` | サマリー | `aspnetcore.md` |
| `Azure/azure-functions-dotnet-worker` | サマリー | `azure-functions-dotnet-worker.md` |
| `dotnet/extensions` | サマリー | `extensions.md` |
| `runceel/ReactiveProperty` | サマリー | `reactiveproperty.md` |

## スクリプトオプション

- （オプション無し）— 骨組みを生成。**非破壊**（`timestamp.md` 更新・commit はしない、記入済みファイルは保護）。
- `-Finalize` — 生成は行わず、未記入マーカーを検証して `timestamp.md` 更新 + commit / push を実行。
- `-ValidateOnly` — 未記入マーカーの検査のみ（ファイル書き込みなし）。残っていれば失敗。
- `-Force` — 骨組み生成時、記入済みファイルの保護を無視して強制再生成。
- `-DryRun` — 実ファイル更新や commit / push を行わない（概要のみ表示）。
- `-SkipCommit` — `-Finalize` 時の commit をスキップ。
- `-SkipPush` — `-Finalize` 時の push をスキップ。
- `-SkipGitHub` — `gh` CLI 呼び出しを行わず、PR/Issue 表は警告のみで埋める（オフライン / レート制限回避用）。
- `-GeneratedAtUtc "yyyy-MM-dd HH:mm:ss"` — 生成時刻（および対象日フォルダ）を固定する。

## 関連ファイル

- [`./references/report-template.md`](./references/report-template.md) — レポート本文の書式（正本）
- [`./references/quality-rules.md`](./references/quality-rules.md) — 役割分担 / 文章スタイル / 完了チェックリスト
- リポジトリルートの `timestamp.md` — 前回チェック時刻の保存先
- リポジトリルートの `.tmp/` — RSS XML / `gh` の JSON ダンプ等の一時ファイル（`.gitignore` で除外済み）
