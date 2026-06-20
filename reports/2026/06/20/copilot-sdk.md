# github/copilot-sdk *(詳細モード)*

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 08:27:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 10 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 8 |
| クローズ Issue          | 17 |
| 主要コントリビューター  | Copilot, edburns, github-actions[bot], scottaddie |

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [#1738](https://github.com/github/copilot-sdk/pull/1738) — Fix codegen schema resolution for new `@github/copilot` package layout （PR / merged）
  `@github/copilot` 1.0.64-1 の schema 配置変更で codegen が壊れていたため、独自 codegen を回す利用者は新レイアウト前提の追従が必要です。
- **⚠ セキュリティ** [#1733](https://github.com/github/copilot-sdk/pull/1733) — Use Copilot org billing for internal agentic workflows instead of a PAT （PR / open）
  まだ block 中ですが、PAT ベース認証を減らす方向で内部 workflow の認証設計が見直されています。

## このリポジトリの要点

今回の Copilot SDK は、**cross-SDK テスト整備と upstream 追従** が主役です。low-level tool definition E2E テストが Java / Go / Node.js / Python / Rust / .NET の 6 言語で一気に揃い、同時に `@github/copilot` 1.0.64-1 のレイアウト変更で壊れた codegen へ即応しました。
並行して experimental BYOK multi-provider config や experimental API enforcement が進み、実験機能を広げつつ境界を明確化する流れが見えます。

## 主要な PR (詳細)

### [#1738](https://github.com/github/copilot-sdk/pull/1738) — Fix codegen schema resolution for new `@github/copilot` package layout

- 作者: github-actions[bot] 由来の更新を追従 / 状態: MERGED

**変更概要**

`@github/copilot` 1.0.64-1 で schema ファイルの置き場が変わり、SDK の codegen が `ENOENT` で失敗する状態を修正しました。
自動依存更新と codegen pipeline を止めないための即時 hotfix です。

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更そのものは upstream package layout 側にあり、この PR はそれへ追従する修正です。schema 解決パスに依存するツールや派生 codegen は同様の追従が必要です。

**既存利用者への影響**

生成コードを直接再生成する利用者、内部 tooling を持つ利用者は、新しい schema パスで動くかを確認してください。

### [#1718](https://github.com/github/copilot-sdk/pull/1718) — Add experimental multi-provider BYOK registry config across all six SDKs

- 作者: Copilot / 状態: MERGED

**変更概要**

6 言語 SDK 横断で BYOK multi-provider registry config を experimental 機能として追加しました。
単一言語だけでなく cross-SDK で足並みを揃えた experimental capability です。

**コミットレベルの詳細 (API 変化・破壊的変更)**

experimental surface であり、安定 API 扱いではありません。将来の変更可能性を前提に評価すべき機能です。

**既存利用者への影響**

stable API だけを使う利用者に直ちに影響はありませんが、BYOK を試す場合は version pin と release note 追跡が必要です。

### [#1721](https://github.com/github/copilot-sdk/pull/1721) 〜 [#1728](https://github.com/github/copilot-sdk/pull/1728) — low-level tool definition E2E test series

- 作者: edburns / Copilot ほか / 状態: MERGED

**変更概要**

Java、Go、Node.js、Python、Rust、.NET の各 SDK に low-level tool definition E2E テストを追加し、言語間の整合性確認を一気に強化しました。

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API を増やす変更ではありませんが、低レベル tool definition surface の実装差異を検出しやすくする品質改善です。

**既存利用者への影響**

SDK 利用者の移行は不要です。メンテナー側では cross-language 差分の混入を早めに検出しやすくなります。

### [#1733](https://github.com/github/copilot-sdk/pull/1733) — [BLOCKED] Use Copilot org billing for internal agentic workflows instead of a PAT

- 状態: OPEN / BLOCKED

**変更概要**

internal agentic workflow の認証を PAT から org billing ベースへ寄せるインフラ変更です。

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API 変更ではなく、内部 CI / security hygiene の見直しです。

**既存利用者への影響**

外部 SDK 利用者への直接影響はありませんが、メンテナー側の secret / token 運用改善として重要です。

## その他のマージ済み PR

- [#1723](https://github.com/github/copilot-sdk/pull/1723): Java coding skill に Spotless formatter を追加
- [#1714](https://github.com/github/copilot-sdk/pull/1714): v1.0.2 changelog

## その他の変更

- 新規 Issue では [#1730](https://github.com/github/copilot-sdk/issues/1730) の session resumability、[#1731](https://github.com/github/copilot-sdk/issues/1731) の parentAgentId、[#1735](https://github.com/github/copilot-sdk/issues/1735) の `cwd` bug が注目点です。
- 2026-06-20 には旧自動化 failure issue がまとめて close されており、CI / bot 運用整理も進んでいます。
