---
name: daily-check-report
description: "Generate a daily/periodic diff report for a fixed set of GitHub repositories (microsoft/agent-framework, dotnet/aspnetcore, Azure/azure-functions-dotnet-worker, dotnet/extensions, runceel/ReactiveProperty, microsoft/aspire), GitHub Changelog RSS, and Azure release announcements RSS, comparing against the previous run recorded in timestamp.md. Use this when the user asks for a daily check, daily-check report, 差分レポート, 前回からの差分, デイリーチェック, or otherwise requests an update summary across these repos and Azure updates. The skill delegates the workflow to .github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1, writes split day-folder reports under reports/{yyyy}/{MM}/{dd}/, and updates timestamp.md on success while optionally committing and pushing the result."
---

# Daily Check レポート生成 Skill

このリポジトリ (`runceel/daily-check`) の主目的である「指定 GitHub リポジトリ群 + Azure 更新の前回チェックからの差分レポートを生成する」ワークフローを自動化する Skill です。

## いつ使うか (When to use)

ユーザーが次のような依頼をしたとき、本 Skill を起動してください:

- 「差分レポートを作って」「daily check のレポートをお願い」「デイリーチェック実行して」
- 「前回からの GitHub の変化と Azure の更新まとめて」
- 「daily-check report を生成して」
- リポジトリ内で `report-yyyy-MM-dd-HH-mm-ss.md` を作るような明確な意図がある場合

## 出力物 (Deliverables)

成功時に必ず以下 3 つを実施する:

1. `reports/{yyyy}/{MM}/{dd}/` 配下に日別インデックスと分割ユニット (`index.md`, `azure.md`, `github-changelog.md`, `agent-framework.md`, `aspnetcore.md`, `azure-functions-dotnet-worker.md`, `extensions.md`, `reactiveproperty.md`, `aspire.md`) を生成する。
2. リポジトリルートの `timestamp.md` を今回の実行時刻 (UTC, `yyyy-MM-dd HH:mm:ss`) で上書き (状態ファイルなのでルートに置く)。
3. 必要に応じて上記のレポートと `timestamp.md` を commit し、現在のブランチに push する (詳細は 5.2 節)。

**レポート本文の書式 (見出し階層・表のスキーマ・各リポジトリの書き方)** は本 Skill にバンドルされた
[`references/report-template.md`](./references/report-template.md) を正本とする。本ファイルは「いつ・どうやって作るか」のみを定義する。

## 全体フロー

実行フローは次の 4 段階に集約する: スクリプト起動 → `timestamp.md` を参照 → RSS を取得して日別分割レポートを出力 → 必要なら commit / push。

- すべての時刻は **UTC** で扱う (表示用に JST を併記する場合のみ変換)。
- レポート本文・要約はすべて **日本語** で記述する。

---

## 0. 役割分担（スクリプト = 収集・骨組み / Skill = 解説執筆）

レポートの品質は **Skill 側で書く日本語の解説文章** で担保する。スクリプトはあくまで補助で、最終的なレポートは必ずエージェントが内容を埋めてから commit する。

- スクリプト (`scripts/Invoke-DailyCheckReport.ps1`) の責務:
  - `timestamp.md` の読込と新しい時刻の書き戻し
  - Azure RSS / GitHub Changelog RSS の取得 (`.tmp/` にキャッシュ)
  - `reports/{yyyy}/{MM}/{dd}/` のディレクトリ作成と分割ユニットファイルの **骨組み** 生成
  - commit / push の補助
- Skill (エージェント) の責務:
  - スクリプトが生成した骨組みの上に、`references/report-template.md` の構造と HINT に従って **日本語の解説本文** を書く
  - GitHub の PR / Issue は `gh` CLI で実データを取得し、サマリー / 詳細を執筆する (リポジトリ別の収集モードは 2 節)
  - Azure 更新は各 RSS 項目に **2〜4 行の日本語概要** を付ける（原文の直訳ではなく「何が変わるか」「誰に影響するか」「どう移行するか」が分かるように）
  - `microsoft/agent-framework` は **詳細モード** で、API 変化・破壊的変更・コミットレベルの差分まで書く
  - エグゼクティブサマリー / 主要トレンド / 次回チェックメモを必ず埋める

> ⚠ **品質ルール**: スクリプトが出力した骨組み (RSS タイトル + 1 行説明だけのもの) をそのまま commit してはならない。テンプレートに沿って解説本文を入れた状態を「完成」とする。

---

## 1. 実行手順

1. 起動: `pwsh ./.github/skills/daily-check-report/scripts/Invoke-DailyCheckReport.ps1 -SkipCommit -SkipPush`
   - これにより `reports/{yyyy}/{MM}/{dd}/` 配下に骨組みが生成され、`.tmp/azure-rss.xml` などのデータが揃う。
   - **commit / push は最後にまとめて行うため、まず `-SkipCommit -SkipPush` で骨組みだけ作るのを推奨する**。
2. 直近レポート末尾の継続ウォッチ参照（3 節）。
3. GitHub データ収集（4 節）と Azure 更新の解説（5 節）を、`references/report-template.md` の構造に沿って各ユニットファイルへ書き込む。
4. すべての解説と表が埋まったことを確認後、`timestamp.md` を更新して commit / push する（または `-SkipCommit/-SkipPush` を外して再実行する代わりに、手動で commit する）。

主なオプション:

- `-DryRun` — 実ファイル更新や commit / push を行わず、生成内容を確認する。
- `-SkipCommit` — レポート生成後の commit をスキップする。
- `-SkipPush` — commit 後の push をスキップする。
- `-GeneratedAtUtc "2026-06-04 00:00:00"` — 実行時刻を固定したい場合に使う。

出力先は `reports/{yyyy}/{MM}/{dd}/`、状態ファイルはリポジトリルートの `timestamp.md` であることを維持する。

---

## 2. GitHub リポジトリ別の収集モード

| owner/repo | モード | テンプレート |
| --- | --- | --- |
| `microsoft/agent-framework` | **詳細**（API 変化・破壊的変更・コミット単位の差分まで） | template の 5.1 |
| `dotnet/aspnetcore` | サマリー（統計 + 主要変更点 + テーブル） | 5.2 |
| `Azure/azure-functions-dotnet-worker` | サマリー | 5.3 |
| `dotnet/extensions` | サマリー | 5.4 |
| `runceel/ReactiveProperty` | サマリー | 5.5 |
| `microsoft/aspire` | サマリー | 5.6 |

期間内に `updated` / `merged` / `closed` / `created` のいずれかが発生した PR / Issue を対象とする。`gh search prs` / `gh search issues` の出力は `.tmp/` 配下に保存する。詳細モードでは追加で `gh pr view --json files,additions,deletions,commits` と `gh api repos/.../pulls/{NUM}/files` を取得し、API シグネチャ変更や破壊的変更を本文で明示する。

---

## 3. 直近レポート末尾の継続ウォッチ参照

- `reports/{yyyy}/{MM}/{dd}/` の最新ディレクトリで `index.md` の末尾、または直近の `report-*.md` の `## 4. 次回チェック…` 以降だけを読む（本文全体は読まない）。
- 「継続ウォッチ中の PR / Issue」「Azure で次の段階を待っているアイテム」を今回の対象期間で再評価し、進展があれば本文に取り込む。進展が無くても継続するものは今回のレポート末尾にも再掲する。

---

## 4. Azure 更新の書き方

各 `<item>` には必ず **日本語の概要 2〜4 行** を付ける:

1. 何が変わるのか（機能・スコープ・対象リージョン）
2. 誰に影響するか（典型的な利用シナリオ）
3. どう使い始める / 移行するか（Preview の有効化、Retirement の移行先と期限）

カテゴリ別（In development / Public Preview / Generally Available / Launched / Retirement / その他）に振り分け、該当が無いカテゴリはサブセクションごと削除する。

---

## 5. 文章スタイル

- すべて日本語。固有名詞（API 名・製品名・リポジトリ名）は原語のまま。
- 箇条書きと表を活用し、長い段落は避ける。
- 「破壊的変更」「セキュリティ修正」「GA 昇格」など重要キーワードは太字で強調する。
- スクリプトが出力した RSS の生 description だけで完結させない。必ず人間向けの解説を加える。

---

## 6. 完了前チェックリスト

- [ ] `references/report-template.md` の構造に沿って各ユニットファイルを埋めた
- [ ] Azure の各項目に 2〜4 行の日本語解説が付いている
- [ ] `microsoft/agent-framework` に API 変化 / 破壊的変更 / コミットレベル差分が書かれている
- [ ] エグゼクティブサマリー（3〜5 件）と主要トレンドが埋まっている
- [ ] 「次回チェックに向けたメモ」が埋まっている
- [ ] `{{...}}` プレースホルダが残っていない
- [ ] `timestamp.md` を更新した
- [ ] レポートと `timestamp.md` を commit & push した

---

## 関連ファイル

- `./references/report-template.md` — レポート本文の書式テンプレート (正本)。Skill 実行時に **読み込み専用** で参照する。
- リポジトリルートの `timestamp.md` — 前回チェック時刻の保存先 (実行時に作成・更新、ルートのまま移動しない)
- `reports/{yyyy}/{MM}/report-yyyy-MM-dd-HH-mm-ss.md` — Skill 実行の出力物 (年月フォルダは必要に応じて自動作成)。**直近 1 件は次回実行時に末尾セクションのみ読み込み参照する** (1.5 節)。
- リポジトリルートの `.tmp/` — Skill 実行時の一時ファイル置き場 (RSS XML / `gh` の JSON ダンプ等)。`.gitignore` で除外済みでコミット対象外。詳細は 0 節を参照。
- リポジトリルートの `.gitignore` — 最低でも `.tmp/` を除外していること。Skill 実行前にこの行が無ければ追加する。
