---
name: daily-check-report2
description: "Iterative-loop variant of the daily diff report generator for a fixed set of GitHub repositories (microsoft/agent-framework, dotnet/aspnetcore, Azure/azure-functions-dotnet-worker, dotnet/extensions, runceel/ReactiveProperty, microsoft/aspire), GitHub Changelog RSS, and Azure release announcements RSS, comparing against the previous run recorded in timestamp.md. This variant adds a mechanical, file-by-file work loop (`-Next`) so the report can be filled in small, well-defined steps without dropping quality — useful when driving the workflow with a less capable model. Use this when the user asks for the loop/反復版 of the daily check, デイリーチェック（ループ版）, or daily-check-report2 by name. The skill delegates to .github/skills/daily-check-report2/scripts/Invoke-DailyCheckReport.ps1, writes split day-folder reports under reports/{yyyy}/{MM}/{dd}/, and updates timestamp.md on success while optionally committing and pushing the result. (The non-loop original is `daily-check-report`; both write to the same reports/ + timestamp.md.)"
---

# Daily Check レポート生成 Skill（反復ループ版 / daily-check-report2）

このリポジトリ (`runceel/daily-check`) の主目的である「指定 GitHub リポジトリ群 + Azure 更新の前回チェックからの差分レポートを生成する」ワークフローを、**機械的なファイル単位の反復ループ**で進められるようにした版です。情報収集はスクリプトが決定的に行い、エージェント（人間・各種モデル）は `-Next` が提示する **1 ファイル分の作業** を受け入れ基準に従って埋めるだけで、品質を落とさずレポートを完成できます。

> 非ループ版は `daily-check-report`。出力先（`reports/` と `timestamp.md`）は共通です。本スキルは「ループで回したい / 安価なモデルで回したい」ときに使ってください。

## いつ使うか

- 「daily-check report をループ版で」「反復版でデイリーチェック」「daily-check-report2 で」
- 「差分レポートを 1 ファイルずつ埋めていきたい」「機械的に回したい」

（単発・一括で作りたいだけなら `daily-check-report` でも構いません。）

## 出力物

最終的に以下を成果物とする:

1. `reports/{yyyy}/{MM}/{dd}/` 配下に日別インデックスと分割ユニット (`index.md`, `azure.md`, `github-changelog.md`, `agent-framework.md`, `aspnetcore.md`, `azure-functions-dotnet-worker.md`, `extensions.md`, `reactiveproperty.md`, `aspire.md`) を生成し、各 `<!-- TODO -->` を日本語解説で埋める。
2. リポジトリルートの `timestamp.md` を今回の生成時刻 (UTC, `yyyy-MM-dd HH:mm:ss`) で上書きする（**`-Finalize` 実行時のみ**）。
3. レポートと `timestamp.md` を commit & push する（`-Finalize` 実行時。手動で行う場合は `-SkipCommit` / `-SkipPush`）。

> ワークフローは **3 フェーズ**（① 骨組み生成 → ② `-Next` ループで記入 → ③ 確定 `-Finalize`）。
> 既定の骨組み生成は **非破壊** で、`timestamp.md` 更新も commit もしない。記入済みファイルは再生成から自動保護される。

## 実行手順

### 1. 骨組みを生成する（既定＝非破壊）

```pwsh
pwsh ./.github/skills/daily-check-report2/scripts/Invoke-DailyCheckReport.ps1
```

これにより以下がすべて自動で行われる:

- `reports/{yyyy}/{MM}/{dd}/` 配下の 9 ファイルが作成される
- Azure / GitHub Changelog の RSS が **対象期間内（前回チェック < pubDate ≦ 生成時刻）に絞って** 取得され、各項目が **`<!-- TODO: ... 原文: {要約} -->` マーカー付き** で書き込まれる
- 各リポジトリの **統計表と PR/Issue 一覧表が `gh` CLI 経由で取得・事前充填** される
- PR/Issue のタイトル・ラベルから **重要度（破壊的変更 / セキュリティ / 非推奨 / GA）を自動判定** し、各ファイル冒頭と `index.md` に「⚠ 重要な変更」セクションが起こされる
- 詳細モード（`microsoft/agent-framework` / `microsoft/aspire`）には **リポジトリ単位の「## このリポジトリの要点」** と、主要 PR の **変更ファイル / コミットの `<details>` 事前展開** が入る
- 既存の **記入済みファイルは保護** され上書きされない（強制再生成は `-Force`）

### 2. `-Next` で 1 ファイルずつ埋める（ループの中核）

```pwsh
pwsh ./.github/skills/daily-check-report2/scripts/Invoke-DailyCheckReport.ps1 -Next
```

`-Next` は **読み取り専用** で、次に埋めるべき **1 ファイル分の残作業** を提示する:

- **フェーズ順**: まず事実ファイル（azure / github-changelog / 各リポジトリ）を順に提示し、**それらがすべて埋まってから最後に `index.md`（統合）** を提示する。事実が空のまま統合を書くと品質が崩れるため、この順序は固定。
- 各残作業について **行番号 / 見出し / 種別 / 受け入れ基準** を表示する。`index.md` のときは追加で **前回（確定済み）レポートの「次回チェックメモ」**、**⚠ 重要項目の一覧**、**読むべき範囲（`<details>` は読まない）**、**静かな日の指針** を提示する。
- 提示されたファイルの `<!-- TODO ... -->` と空箇条書きを、**受け入れ基準を満たすように** 日本語で埋める。書式は [`./references/report-template.md`](./references/report-template.md)、品質ルールは [`./references/quality-rules.md`](./references/quality-rules.md)。
- 編集したら **再度 `-Next`**。これを「残作業はありません」（終了コード 0）になるまで繰り返す。
- `-Next -Json` で機械可読な JSON を得られる（`status` / `phase` / `file` / `markers[]` / `fingerprint` / `context`）。自動化・ツール連携時はこちらを使う。

> **読む量を抑える**: `index.md` 統合では各ファイルの「主要な変更点 / 要点 / ⚠ 重要な変更 / feed 要約」だけを読む。`<details>` ブロック（変更ファイル一覧・コミット）は読まない。

### 3. 検証する（任意）

```pwsh
pwsh ./.github/skills/daily-check-report2/scripts/Invoke-DailyCheckReport.ps1 -Status        # 進捗一覧（読み取り専用）
pwsh ./.github/skills/daily-check-report2/scripts/Invoke-DailyCheckReport.ps1 -ValidateOnly   # gate（残マーカー/内容問題があれば失敗）
```

`-Status` は各単位ファイルを `[記入済] / [要編集] / [欠落]` で一覧する（終了コード `0`=確定可 / `1`=要編集 / `2`=未生成）。`-ValidateOnly` は残マーカーに加え **空箇条書き・プレースホルダ語の内容チェック** も行い、問題があれば失敗扱いで停止する。

### 4. 確定する（`timestamp.md` 更新 + commit / push）

```pwsh
pwsh ./.github/skills/daily-check-report2/scripts/Invoke-DailyCheckReport.ps1 -Finalize
```

`-Finalize` は生成を行わず、(1) 残マーカー（`<!-- TODO` / `{{` / `原文:`）と内容チェック問題が無いか検証し、(2) `index.md` の `daily-check-meta` を基準に `timestamp.md` を進め、(3) commit / push する。問題が残っていれば中止して該当箇所を表示する。手動 commit したい場合は `-Finalize -SkipCommit -SkipPush`。

## ループ安全（無進捗・上限）

`-Next` は状態を持たない（実行ごとに独立）ため、ループの制御はエージェント側で行う:

- **無進捗の検出**: `-Next` は対象ファイルごとに `fingerprint`（残作業の行番号＋種別から決まる決定的な値）を返す。**同じファイル・同じ fingerprint が編集後にも再提示されたら「無進捗」**。残った `<!-- TODO` / `原文:` / `{{` / 空箇条書きを確認し、解消できなければ **中止してエスカレーション** する（無限ループ防止）。
- **反復上限**: 1 回の生成で提示されるファイルは最大 9 種。**おおむね「ファイル数 + 3」回（≒ 12 回）を超えても完了しないなら異常** とみなして止める。
- **欠落ファイル**: `-Next` が `status=missing-file` を返したら、オプション無しで再実行して骨組みを再生成する（記入済みファイルは保護される）。

## 注意事項（実行者・モデルを問わず共通）

- **判断はコマンドに委ねる**: 「まだ埋めるべきか / 確定してよいか」は推測せず、`-Next`（または `-Status`）の結果に従う。`-Next` が作業を返す限り `-Finalize` には進まない。
- **受け入れ基準を満たす**: マーカーを消すだけでは不十分。`-Next` が各作業に示す **受け入れ基準** を満たす日本語を書く（例: feed は告知か要対応かを区別、PR は目的＋影響、index は ⚠ 重要項目を取りこぼさない）。
- **`index.md` は最後**: 事実ファイルが埋まる前に統合（エグゼクティブサマリー / トレンド / 次回メモ）を書かない。`-Next` のフェーズ順に従えば自動的に守られる。
- **静かな日は捏造しない**: 変化が乏しければトレンドを無理に作らず「目立った変化なし」と明記する。
- **`-Force` を安易に使わない**: 記入済みファイルを上書きする唯一のデータ消失経路。通常の生成・再生成に `-Force` は不要。
- **`index.md` 末尾の `<!-- daily-check-meta: ... -->` を削除・改変しない**: `-Finalize` が `timestamp.md` を進める基準。
- **`-Finalize` がエラーを返したら内容を読んで対処**: 「未記入 / 内容問題が残る」なら該当箇所を直して再実行。エラー回避のために `-Force` を付けるのは誤り。

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
- `-Next` — 読み取り専用。次に埋めるべき 1 ファイル分の残作業（マーカー＋内容問題）を提示。終了コード `0`=残作業なし / `1`=作業あり / `2`=未生成・ファイル欠落。
- `-Json` — `-Next` の出力を JSON にする（`-Next` 専用）。
- `-Status` — 読み取り専用で記入状況を一覧表示。終了コード `0`=確定可 / `1`=要編集 / `2`=未生成。
- `-ValidateOnly` — 残マーカー＋内容チェックの検査のみ（ファイル書き込みなし）。問題があれば失敗。
- `-Finalize` — 生成は行わず、検証して `timestamp.md` 更新 + commit / push を実行。
- `-Force` — 骨組み生成時、記入済みファイルの保護を無視して強制再生成。
- `-DryRun` — 実ファイル更新や commit / push を行わない（概要のみ表示）。
- `-SkipCommit` — `-Finalize` 時の commit をスキップ。
- `-SkipPush` — `-Finalize` 時の push をスキップ。
- `-SkipGitHub` — `gh` CLI 呼び出しを行わず、PR/Issue 表は警告のみで埋める（オフライン / レート制限回避用）。
- `-GeneratedAtUtc "yyyy-MM-dd HH:mm:ss"` — 生成時刻（および対象日フォルダ）を固定する。

> `-Next` / `-Status` / `-ValidateOnly` / `-Finalize` は同時指定できない（いずれか一つ）。`-Next` / `-Status` / `-ValidateOnly` は当日レポートが無ければ最新レポートを対象にフォールバックする（`-Finalize` はしない）。

## 関連ファイル

- [`./references/report-template.md`](./references/report-template.md) — レポート本文の書式（正本）
- [`./references/quality-rules.md`](./references/quality-rules.md) — 役割分担 / 受け入れ基準 / 文章スタイル / 完了チェックリスト
- リポジトリルートの `timestamp.md` — 前回チェック時刻の保存先
- リポジトリルートの `.tmp/` — RSS XML / `gh` の JSON ダンプ等の一時ファイル（`.gitignore` で除外済み）
