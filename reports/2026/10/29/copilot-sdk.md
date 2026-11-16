# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 2 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 3 |
| クローズ Issue          | 3 |
| 主要コントリビューター  | patniko |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2469](https://github.com/github/copilot-sdk/issues/2469) — Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers （Issue / closed / briandunnington）
Issue はクローズ済みで、対象期間に対応 PR は確認されませんでした。strict chat-completions provider で resume を利用する場合は、利用中バージョンで修正が反映されているか確認してください。
- **非推奨/廃止** [#1557](https://github.com/github/copilot-sdk/issues/1557) — Anthropic Bedrock request fails because SDK sends deprecated temperature parameter for Opus models （Issue / open / mikhailmokhov）
Anthropic Bedrock Mantle 経由で Opus 4.7 / 4.8 を呼ぶ利用者は、SDK が送る `temperature` をモデル側が拒否して HTTP 400 になる問題が報告されています。該当構成は未解決 Issue を追跡し、修正版の公開を確認してください。

## このリポジトリの要点

README が「Microsoft Copilot SDK」への名称移行と、リポジトリの Microsoft 組織への段階的移管を案内する内容に更新されました（[#2877](https://github.com/github/copilot-sdk/pull/2877)）。既存パッケージ名・namespace は移行中も残る場合があり、現時点で利用者の即時変更は不要とされています。
追加の README 修正ではサポート案内へのリンクも補足されました（[#2879](https://github.com/github/copilot-sdk/pull/2879)）。SDK API や実装の変更はありません。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2879](https://github.com/github/copilot-sdk/pull/2879) — README support

- 作者: patniko / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -0
- マージ日時 (UTC): `2026-10-28 17:51:01`

**変更概要**

リポジトリが Microsoft Copilot SDK へ段階的に移行する案内に、サポート窓口の参照先が不足していました。
README の移行告知に `SUPPORT.md` へのリンクを追記し、SDK サポートに関する情報の所在を示します。
README のみの変更で、既存利用者のパッケージやコードへの影響はありません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 2 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `0d63677` README support

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`README.md` にサポート案内へのリンクを2行追加した文書変更です。API シグネチャ、パッケージ名、namespace の変更は含まれません。

**既存利用者への影響**

移行不要です。サポート情報が必要な場合は README から `SUPPORT.md` を参照してください。

### [#2877](https://github.com/github/copilot-sdk/pull/2877) — Revise README

- 作者: patniko / 状態: MERGED
- ラベル: —
- 変更行数: +5 / -2
- マージ日時 (UTC): `2026-10-28 16:35:45`

**変更概要**

README の見出しを「GitHub Copilot CLI SDKs」から「Microsoft Copilot SDK」に改め、Microsoft Copilot harness のプログラマブルなインターフェイスとして位置付けました。
GitHub Copilot SDK から Microsoft Copilot SDK への段階的な名称・組織移行を告知し、移行中は既存パッケージ名や namespace が残る場合があること、既存利用者に即時対応は不要であることを明記しています。
実装や公開 SDK の動作ではなく、製品名・移行方針の README 更新です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 5 | 2 |

</details>

<details><summary>コミット (2 件)</summary>

- `5644b8d` Revise README
- `671893a` Update README.md

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`README.md` の見出しと移行告知を更新したのみで、コード、API シグネチャ、配布パッケージ名の変更はありません。既存利用者向けに「即時変更不要」と記載されています。

**既存利用者への影響**

現時点でコードやパッケージの移行は不要です。今後の段階的な組織・名称移行については告知先を確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2874 | [Copilot Dreams] Avoid dead-end Java and Rust contributor references | open | Copilot | <https://github.com/github/copilot-sdk/pull/2874> |
| Issue | #2878 | Expose opaque plugin identities and ownership references on discovered contributions | open | aeschli | <https://github.com/github/copilot-sdk/issues/2878> |
| Issue | #2876 | Bump zod version to 4.6.6. | open | njcprice | <https://github.com/github/copilot-sdk/issues/2876> |
| Issue | #2875 | DOTNET SDK: unknown session events | open | JanEggers | <https://github.com/github/copilot-sdk/issues/2875> |
| Issue | #2469 | Resume replays a text-less assistant turn as `content: null` with no `tool_calls`, breaking strict chat-completions providers | closed | briandunnington | <https://github.com/github/copilot-sdk/issues/2469> |
| Issue | #2862 | Linux - Copilot harness pegs CPU during output streaming, text/code output slow | closed | jbrunette | <https://github.com/github/copilot-sdk/issues/2862> |
| Issue | #2872 | External tool calls time out after 1800 seconds, but documentation is unclear on how to configure or disable the timeout | closed | mingtwan | <https://github.com/github/copilot-sdk/issues/2872> |
