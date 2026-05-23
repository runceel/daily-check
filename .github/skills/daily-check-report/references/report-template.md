<!--
============================================================
レポート本文テンプレート (report-template.md)
============================================================

本ファイルは `daily-check-report` Skill が読み込み専用で参照する書式テンプレートです。
レポートの「書式」(見出し階層・表のスキーマ) はこのファイルが正本、
「いつ・どうやって作るか」は ../SKILL.md が正本です。

使い方:
  - 本ファイルの構造に従い、リポジトリルートに
    `report-yyyy-MM-dd-HH-mm-ss.md` を新規作成してください。
    (本ファイル自体は移動・改変しないでください。)
  - `{{...}}` のプレースホルダおよび本文中の「HINT」コメント
    (HTML コメント形式) の指示に従って各セクションを埋めてください。
  - 実行手順・データ収集方法・timestamp.md の更新手順については
    `../SKILL.md` を参照してください。
  - すべて日本語で記述します。

レポートの並び順は以下の通り固定です:
  1. ヘッダ
  2. エグゼクティブサマリー
  3. Azure 更新                      ← レポートの先頭グループ
  4. GitHub リポジトリ別 差分
     4.1 microsoft/agent-framework  ← 詳細モード (コミット単位まで踏み込む)
     4.2 dotnet/aspnetcore          ← サマリーモード
     4.3 Azure/azure-functions-dotnet-worker
     4.4 dotnet/extensions
     4.5 runceel/ReactiveProperty
     4.6 dotnet/aspire
  5. 次回チェックに向けたメモ / ウォッチ対象
============================================================
-->

# 差分レポート — {{REPORT_DATE_JST}} 版

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `{{REPORT_GENERATED_AT_UTC}}` |
| レポート生成日時 (JST) | `{{REPORT_GENERATED_AT_JST}}` |
| 前回チェック時刻 (UTC) | `{{PREVIOUS_CHECK_AT_UTC}}` |
| 対象期間 (UTC)         | `{{PREVIOUS_CHECK_AT_UTC}} 〜 {{REPORT_GENERATED_AT_UTC}}` |
| 対象リポジトリ          | microsoft/agent-framework, dotnet/aspnetcore, Azure/azure-functions-dotnet-worker, dotnet/extensions, runceel/ReactiveProperty, dotnet/aspire |
| Azure 更新ソース        | <https://www.microsoft.com/releasecommunications/api/v2/azure/rss> |

---

## 1. エグゼクティブサマリー

<!--
HINT:
- Azure 更新と GitHub 横断で「特に注目すべきトピック」を 3〜5 件、
  箇条書きで簡潔にまとめます。
- 各項目は 1〜2 行。リンクを 1 本入れ、なぜ重要かが分かるようにします。
- 破壊的変更・セキュリティ修正・GA 昇格・大型機能追加を優先します。
-->

- **{{HIGHLIGHT_TITLE_1}}** — {{HIGHLIGHT_SUMMARY_1}} ([詳細]({{HIGHLIGHT_LINK_1}}))
- **{{HIGHLIGHT_TITLE_2}}** — {{HIGHLIGHT_SUMMARY_2}} ([詳細]({{HIGHLIGHT_LINK_2}}))
- **{{HIGHLIGHT_TITLE_3}}** — {{HIGHLIGHT_SUMMARY_3}} ([詳細]({{HIGHLIGHT_LINK_3}}))

### 今回の差分の主要トレンド

<!--
HINT:
- 今回の差分から見えてくる横断的なテーマ（例: 「Aspire と Azure の統合が
  進展」「.NET の AOT サポート拡張」など）を 2〜4 行でまとめます。
- 個別の PR/Issue ではなく俯瞰的な流れを書きます。
-->

{{TRENDS_NARRATIVE}}

---

## 2. Azure 更新

<!--
HINT:
- ソース: https://www.microsoft.com/releasecommunications/api/v2/azure/rss
- フィルタ: RSS の `pubDate` が「前回チェック時刻 (UTC)」より新しい項目のみ。
- グループ化: カテゴリ別に小見出しを立てます。Microsoft 公式のステージ表記に揃えます。
    * In development
    * Public Preview
    * Generally Available
    * Launched
    * Retirement
    * その他 (Feature update など)
- 各項目には以下のフォーマットで「日本語の概要解説 2〜4 行」を必ず付けます。
  単なる原文の翻訳ではなく、「何が変わるのか」「誰に影響するか」「使い始める方法 / 移行のヒント」が
  伝わるように書きます。
- 該当カテゴリに項目がない場合はそのサブセクションごと削除してください。
-->

### 2.1 In development

#### {{AZURE_INDEV_TITLE_1}}

- 対象サービス: {{AZURE_INDEV_SERVICE_1}}
- 公開日 (UTC): `{{AZURE_INDEV_PUBDATE_1}}`
- リンク: <{{AZURE_INDEV_LINK_1}}>

{{AZURE_INDEV_SUMMARY_1}}

<!-- HINT: 同じフォーマットで項目を追加。なければサブセクションごと削除。 -->

### 2.2 Public Preview

#### {{AZURE_PREVIEW_TITLE_1}}

- 対象サービス: {{AZURE_PREVIEW_SERVICE_1}}
- 公開日 (UTC): `{{AZURE_PREVIEW_PUBDATE_1}}`
- リンク: <{{AZURE_PREVIEW_LINK_1}}>

{{AZURE_PREVIEW_SUMMARY_1}}

### 2.3 Generally Available

#### {{AZURE_GA_TITLE_1}}

- 対象サービス: {{AZURE_GA_SERVICE_1}}
- 公開日 (UTC): `{{AZURE_GA_PUBDATE_1}}`
- リンク: <{{AZURE_GA_LINK_1}}>

{{AZURE_GA_SUMMARY_1}}

### 2.4 Launched

#### {{AZURE_LAUNCHED_TITLE_1}}

- 対象サービス: {{AZURE_LAUNCHED_SERVICE_1}}
- 公開日 (UTC): `{{AZURE_LAUNCHED_PUBDATE_1}}`
- リンク: <{{AZURE_LAUNCHED_LINK_1}}>

{{AZURE_LAUNCHED_SUMMARY_1}}

### 2.5 Retirement

#### {{AZURE_RETIREMENT_TITLE_1}}

- 対象サービス: {{AZURE_RETIREMENT_SERVICE_1}}
- 公開日 (UTC): `{{AZURE_RETIREMENT_PUBDATE_1}}`
- 廃止予定日: `{{AZURE_RETIREMENT_DATE_1}}`
- リンク: <{{AZURE_RETIREMENT_LINK_1}}>

{{AZURE_RETIREMENT_SUMMARY_1}}

<!-- HINT: 移行先サービス・推奨アクション・期日を必ず書きます。 -->

### 2.6 その他

<!--
HINT: 上記カテゴリに該当しないアップデート (Feature update, Service change など)
をここにまとめます。
-->

#### {{AZURE_OTHER_TITLE_1}}

- カテゴリ: {{AZURE_OTHER_CATEGORY_1}}
- 対象サービス: {{AZURE_OTHER_SERVICE_1}}
- 公開日 (UTC): `{{AZURE_OTHER_PUBDATE_1}}`
- リンク: <{{AZURE_OTHER_LINK_1}}>

{{AZURE_OTHER_SUMMARY_1}}

---

## 3. GitHub リポジトリ別 差分

### 3.1 microsoft/agent-framework  *(詳細モード)*

<!--
HINT (詳細モード):
- このリポジトリだけは「コードレベル / コミット単位」まで踏み込んで書きます。
- 統計サマリーの後、注目度の高い PR と Issue を個別に深掘りします。
- 個別 PR セクションには以下を必ず含めます:
    * 変更概要（日本語、3〜6 行）
    * 変更ファイル一覧（重要なものをハイライト）
    * 主要なコミットの差分要約（API シグネチャ変更、破壊的変更、
      新規追加された型・抽象クラス・拡張メソッド、設定キー変更などを中心に）
    * 関連 Issue / Discussion
    * 既存利用者への影響（マイグレーション要否）
- 個別 Issue セクションには以下を含めます:
    * 背景・課題
    * 現在の議論ポイント / メンテナの方針
    * 関連 PR
- 期間内の変更数が多い場合は「上位 N 件 (重要度順)」を本文に書き、
  残りは末尾の「その他の変更」テーブルに 1 行ずつ列挙します。
- 各 PR/Issue の参照は `[#NNNN](https://github.com/microsoft/agent-framework/...)`
  形式のリンクを必ず付けます。
-->

#### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | {{AF_PR_MERGED}} |
| オープン中の新規 PR | {{AF_PR_OPENED}} |
| クローズ (未マージ) PR | {{AF_PR_CLOSED_UNMERGED}} |
| 新規 Issue          | {{AF_ISSUE_OPENED}} |
| クローズ Issue      | {{AF_ISSUE_CLOSED}} |
| 主要コントリビューター | {{AF_TOP_CONTRIBUTORS}} |

#### 主要な PR

##### [#{{AF_PR_NUMBER_1}}]({{AF_PR_LINK_1}}) — {{AF_PR_TITLE_1}}

- 作者: {{AF_PR_AUTHOR_1}} / 状態: {{AF_PR_STATE_1}} / マージ日時 (UTC): `{{AF_PR_MERGED_AT_1}}`
- ラベル: {{AF_PR_LABELS_1}}

**変更概要**

{{AF_PR_SUMMARY_1}}

**変更ファイル (主要)**

```
{{AF_PR_FILES_1}}
```

**コミットレベルの詳細**

<!--
HINT:
- 公開 API の変化を中心に解説します（追加された型・メソッド、シグネチャ変更、
  既定値変更、削除 API、リネーム）。
- 破壊的変更がある場合は「⚠ 破壊的変更」と明示します。
- 必要であればコードブロックでビフォー/アフターを示します。
-->

- {{AF_PR_DETAIL_BULLET_1_1}}
- {{AF_PR_DETAIL_BULLET_1_2}}
- {{AF_PR_DETAIL_BULLET_1_3}}

```csharp
// 例: API シグネチャの変化、追加された拡張メソッドなど
{{AF_PR_CODE_EXAMPLE_1}}
```

**関連 Issue / Discussion**

- {{AF_PR_RELATED_1}}

**既存利用者への影響**

{{AF_PR_IMPACT_1}}

<!-- HINT: 同じテンプレを #{{AF_PR_NUMBER_2}}, #{{AF_PR_NUMBER_3}} ... と続けます。
     重要度が低いものは「その他の PR」のテーブルにまとめます。 -->

#### 主要な Issue

##### [#{{AF_ISSUE_NUMBER_1}}]({{AF_ISSUE_LINK_1}}) — {{AF_ISSUE_TITLE_1}}

- 起票者: {{AF_ISSUE_AUTHOR_1}} / 状態: {{AF_ISSUE_STATE_1}} / 更新日時 (UTC): `{{AF_ISSUE_UPDATED_AT_1}}`
- ラベル: {{AF_ISSUE_LABELS_1}}

**背景・課題**

{{AF_ISSUE_BACKGROUND_1}}

**議論のポイント / メンテナの方針**

{{AF_ISSUE_DISCUSSION_1}}

**関連 PR**

- {{AF_ISSUE_RELATED_PRS_1}}

<!-- HINT: 同様に #{{AF_ISSUE_NUMBER_2}}, ... を続けます。 -->

#### その他の変更

<!-- HINT: 詳細解説しない PR/Issue を機械的に列挙。1 行 1 件。 -->

| 種別 | 番号 | タイトル | 状態 | リンク |
| ---- | ---- | -------- | ---- | ------ |
| PR    | #{{AF_OTHER_NUM_1}} | {{AF_OTHER_TITLE_1}} | {{AF_OTHER_STATE_1}} | <{{AF_OTHER_LINK_1}}> |
| Issue | #{{AF_OTHER_NUM_2}} | {{AF_OTHER_TITLE_2}} | {{AF_OTHER_STATE_2}} | <{{AF_OTHER_LINK_2}}> |

---

### 3.2 dotnet/aspnetcore  *(サマリーモード)*

<!--
HINT (サマリーモード共通):
- 統計サマリー表の後、「主要な変更点」を 3〜8 行の箇条書きで日本語要約します。
- 個別の Issue/PR は「変化のあった項目一覧」テーブルに、タイトル＋リンク＋
  1 行の説明 を機械的に並べます。
- コードレベルの詳細解説は不要 (agent-framework のみ詳細を書く)。
-->

#### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | {{ASPNETCORE_PR_MERGED}} |
| オープン中の新規 PR | {{ASPNETCORE_PR_OPENED}} |
| クローズ (未マージ) PR | {{ASPNETCORE_PR_CLOSED_UNMERGED}} |
| 新規 Issue          | {{ASPNETCORE_ISSUE_OPENED}} |
| クローズ Issue      | {{ASPNETCORE_ISSUE_CLOSED}} |

#### 主要な変更点

- {{ASPNETCORE_HIGHLIGHT_1}}
- {{ASPNETCORE_HIGHLIGHT_2}}
- {{ASPNETCORE_HIGHLIGHT_3}}

#### 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 1 行説明 | リンク |
| ---- | ---- | -------- | ---- | -------- | ------ |
| PR    | #{{ASPNETCORE_ROW_NUM_1}} | {{ASPNETCORE_ROW_TITLE_1}} | {{ASPNETCORE_ROW_STATE_1}} | {{ASPNETCORE_ROW_DESC_1}} | <{{ASPNETCORE_ROW_LINK_1}}> |
| Issue | #{{ASPNETCORE_ROW_NUM_2}} | {{ASPNETCORE_ROW_TITLE_2}} | {{ASPNETCORE_ROW_STATE_2}} | {{ASPNETCORE_ROW_DESC_2}} | <{{ASPNETCORE_ROW_LINK_2}}> |

---

### 3.3 Azure/azure-functions-dotnet-worker  *(サマリーモード)*

#### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | {{FUNCWORKER_PR_MERGED}} |
| オープン中の新規 PR | {{FUNCWORKER_PR_OPENED}} |
| クローズ (未マージ) PR | {{FUNCWORKER_PR_CLOSED_UNMERGED}} |
| 新規 Issue          | {{FUNCWORKER_ISSUE_OPENED}} |
| クローズ Issue      | {{FUNCWORKER_ISSUE_CLOSED}} |

#### 主要な変更点

- {{FUNCWORKER_HIGHLIGHT_1}}
- {{FUNCWORKER_HIGHLIGHT_2}}
- {{FUNCWORKER_HIGHLIGHT_3}}

#### 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 1 行説明 | リンク |
| ---- | ---- | -------- | ---- | -------- | ------ |
| PR    | #{{FUNCWORKER_ROW_NUM_1}} | {{FUNCWORKER_ROW_TITLE_1}} | {{FUNCWORKER_ROW_STATE_1}} | {{FUNCWORKER_ROW_DESC_1}} | <{{FUNCWORKER_ROW_LINK_1}}> |
| Issue | #{{FUNCWORKER_ROW_NUM_2}} | {{FUNCWORKER_ROW_TITLE_2}} | {{FUNCWORKER_ROW_STATE_2}} | {{FUNCWORKER_ROW_DESC_2}} | <{{FUNCWORKER_ROW_LINK_2}}> |

---

### 3.4 dotnet/extensions  *(サマリーモード)*

#### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | {{EXT_PR_MERGED}} |
| オープン中の新規 PR | {{EXT_PR_OPENED}} |
| クローズ (未マージ) PR | {{EXT_PR_CLOSED_UNMERGED}} |
| 新規 Issue          | {{EXT_ISSUE_OPENED}} |
| クローズ Issue      | {{EXT_ISSUE_CLOSED}} |

#### 主要な変更点

- {{EXT_HIGHLIGHT_1}}
- {{EXT_HIGHLIGHT_2}}
- {{EXT_HIGHLIGHT_3}}

#### 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 1 行説明 | リンク |
| ---- | ---- | -------- | ---- | -------- | ------ |
| PR    | #{{EXT_ROW_NUM_1}} | {{EXT_ROW_TITLE_1}} | {{EXT_ROW_STATE_1}} | {{EXT_ROW_DESC_1}} | <{{EXT_ROW_LINK_1}}> |
| Issue | #{{EXT_ROW_NUM_2}} | {{EXT_ROW_TITLE_2}} | {{EXT_ROW_STATE_2}} | {{EXT_ROW_DESC_2}} | <{{EXT_ROW_LINK_2}}> |

---

### 3.5 runceel/ReactiveProperty  *(サマリーモード)*

#### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | {{RP_PR_MERGED}} |
| オープン中の新規 PR | {{RP_PR_OPENED}} |
| クローズ (未マージ) PR | {{RP_PR_CLOSED_UNMERGED}} |
| 新規 Issue          | {{RP_ISSUE_OPENED}} |
| クローズ Issue      | {{RP_ISSUE_CLOSED}} |

#### 主要な変更点

- {{RP_HIGHLIGHT_1}}
- {{RP_HIGHLIGHT_2}}
- {{RP_HIGHLIGHT_3}}

#### 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 1 行説明 | リンク |
| ---- | ---- | -------- | ---- | -------- | ------ |
| PR    | #{{RP_ROW_NUM_1}} | {{RP_ROW_TITLE_1}} | {{RP_ROW_STATE_1}} | {{RP_ROW_DESC_1}} | <{{RP_ROW_LINK_1}}> |
| Issue | #{{RP_ROW_NUM_2}} | {{RP_ROW_TITLE_2}} | {{RP_ROW_STATE_2}} | {{RP_ROW_DESC_2}} | <{{RP_ROW_LINK_2}}> |

---

### 3.6 dotnet/aspire  *(サマリーモード)*

#### 統計サマリー

| 区分                | 件数 |
| ------------------- | ---- |
| マージ済み PR       | {{ASPIRE_PR_MERGED}} |
| オープン中の新規 PR | {{ASPIRE_PR_OPENED}} |
| クローズ (未マージ) PR | {{ASPIRE_PR_CLOSED_UNMERGED}} |
| 新規 Issue          | {{ASPIRE_ISSUE_OPENED}} |
| クローズ Issue      | {{ASPIRE_ISSUE_CLOSED}} |

#### 主要な変更点

- {{ASPIRE_HIGHLIGHT_1}}
- {{ASPIRE_HIGHLIGHT_2}}
- {{ASPIRE_HIGHLIGHT_3}}

#### 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 1 行説明 | リンク |
| ---- | ---- | -------- | ---- | -------- | ------ |
| PR    | #{{ASPIRE_ROW_NUM_1}} | {{ASPIRE_ROW_TITLE_1}} | {{ASPIRE_ROW_STATE_1}} | {{ASPIRE_ROW_DESC_1}} | <{{ASPIRE_ROW_LINK_1}}> |
| Issue | #{{ASPIRE_ROW_NUM_2}} | {{ASPIRE_ROW_TITLE_2}} | {{ASPIRE_ROW_STATE_2}} | {{ASPIRE_ROW_DESC_2}} | <{{ASPIRE_ROW_LINK_2}}> |

---

## 4. 次回チェックに向けたメモ / ウォッチ対象

<!--
HINT:
- 継続フォローすべき PR (進行中・レビュー中) や、まだクローズしていない
  注目 Issue を箇条書きで列挙します。
- 「次回はここを重点的に見る」という運用メモを残します。
- Azure の In development / Preview で「次の段階 (Preview→GA など) を
  待っている」ものもここに書きます。
-->

### 継続ウォッチ中の PR / Issue

- [{{WATCH_REPO_1}} #{{WATCH_NUM_1}}]({{WATCH_LINK_1}}) — {{WATCH_NOTE_1}}
- [{{WATCH_REPO_2}} #{{WATCH_NUM_2}}]({{WATCH_LINK_2}}) — {{WATCH_NOTE_2}}

### Azure で次の段階を待っているアイテム

- {{AZURE_WATCH_1}}
- {{AZURE_WATCH_2}}

### 次回チェックで重点的に確認したいこと

- {{NEXT_CHECK_NOTE_1}}
- {{NEXT_CHECK_NOTE_2}}

---

<!--
============================================================
レポート末尾の機械可読メタデータ (任意)
============================================================
レポート生成スクリプトが後続処理 (例: timestamp.md の更新) で
参照できるよう、最後に YAML フェンスでメタデータを残しておくと便利です。
============================================================
-->

```yaml
report:
  generated_at_utc: "{{REPORT_GENERATED_AT_UTC}}"
  previous_check_at_utc: "{{PREVIOUS_CHECK_AT_UTC}}"
  repositories:
    - microsoft/agent-framework
    - dotnet/aspnetcore
    - Azure/azure-functions-dotnet-worker
    - dotnet/extensions
    - runceel/ReactiveProperty
    - dotnet/aspire
  azure_rss: "https://www.microsoft.com/releasecommunications/api/v2/azure/rss"
```
