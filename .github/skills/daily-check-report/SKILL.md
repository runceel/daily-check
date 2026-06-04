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

成功時に必ず以下 3 つを実施する:

1. `reports/{yyyy}/{MM}/{dd}/` 配下に日別インデックスと分割ユニット (`index.md`, `azure.md`, `github-changelog.md`, `agent-framework.md`, `aspnetcore.md`, `azure-functions-dotnet-worker.md`, `extensions.md`, `reactiveproperty.md`, `aspire.md`) を生成する。
2. リポジトリルートの `timestamp.md` を今回の実行時刻 (UTC, `yyyy-MM-dd HH:mm:ss`) で上書きする。
3. 必要に応じてレポートと `timestamp.md` を commit & push する。

## 実行手順

1. **スクリプトを起動して骨組みを生成する**:

   ```pwsh
   pwsh ./.github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1 -SkipCommit -SkipPush
   ```

   これにより以下がすべて自動で行われる:
   - `reports/{yyyy}/{MM}/{dd}/` 配下の 9 ファイルが作成される
   - Azure / GitHub Changelog の RSS が取得され、各項目が **`<!-- TODO: ... -->` マーカー付き** で書き込まれる
   - 各リポジトリの **統計表と PR/Issue 一覧表が `gh` CLI 経由で取得・事前充填** される
   - `microsoft/agent-framework` の主要 PR は **変更ファイル一覧 / 追加削除行数 / コミット一覧が `<details>` ブロックに事前展開** される
   - 出力ファイルの先頭行・エンコーディングが自動検証される

2. **直近レポート末尾の継続ウォッチを参照する**: `reports/{yyyy}/{MM}/{dd}/` の最新ディレクトリで `index.md` の末尾、または直近の `report-*.md` の `## 4. 次回チェック…` 以降だけを読む（本文全体は読まない）。継続中の PR / Issue や Azure の次の段階待ちアイテムを今回のレポートにも取り込む。

3. **各ユニットファイルの `<!-- TODO: ... -->` マーカーを日本語解説で埋める**: 書式は [`./references/report-template.md`](./references/report-template.md)、スタイル / 品質ルール / 完了チェックリストは [`./references/quality-rules.md`](./references/quality-rules.md) を参照。エグゼクティブサマリー / 主要トレンドは `index.md` に追記する。

4. **完了チェックを実施して commit / push する**:

   ```pwsh
   pwsh ./.github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1
   ```

   再実行すると差分のあるファイルだけ更新され、`timestamp.md` 更新と commit / push が実行される。手動で commit する場合は `-SkipCommit -SkipPush` を維持したまま `git` を直接叩く。

## 収集モード（参考）

| owner/repo | モード | テンプレート |
| --- | --- | --- |
| `microsoft/agent-framework` | **詳細**（API 変化・破壊的変更・コミット単位の差分まで） | template の 5.1 |
| `dotnet/aspnetcore` | サマリー | 5.2 |
| `Azure/azure-functions-dotnet-worker` | サマリー | 5.3 |
| `dotnet/extensions` | サマリー | 5.4 |
| `runceel/ReactiveProperty` | サマリー | 5.5 |
| `microsoft/aspire` | サマリー | 5.6 |

## スクリプトオプション

- `-DryRun` — 実ファイル更新や commit / push を行わない（標準出力に概要のみ表示）。
- `-SkipCommit` — レポート生成後の commit をスキップ。
- `-SkipPush` — commit 後の push をスキップ。
- `-SkipGitHub` — `gh` CLI 呼び出しを行わず、PR/Issue 表は TODO マーカーのみで埋める（オフライン / レート制限回避用）。
- `-GeneratedAtUtc "yyyy-MM-dd HH:mm:ss"` — 実行時刻を固定する。

## 関連ファイル

- [`./references/report-template.md`](./references/report-template.md) — レポート本文の書式（正本）
- [`./references/quality-rules.md`](./references/quality-rules.md) — 役割分担 / 文章スタイル / 完了チェックリスト
- リポジトリルートの `timestamp.md` — 前回チェック時刻の保存先
- リポジトリルートの `.tmp/` — RSS XML / `gh` の JSON ダンプ等の一時ファイル（`.gitignore` で除外済み）
