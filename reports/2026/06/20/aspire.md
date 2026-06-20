# microsoft/aspire *(詳細モード)*

対象期間: 2026-06-18 00:25:41 〜 2026-06-20 08:27:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 約24 |
| オープン中の新規 PR     | 要手動確認 |
| クローズ (未マージ) PR  | 要手動確認 |
| 新規 Issue              | 要手動確認 |
| クローズ Issue          | 要手動確認 |
| 主要コントリビューター  | DamianEdwards, sebastienros, JamesNK, radical ほか |

> 注: `microsoft` org の SAML 制約で Search API は使えず、公開 Atom feed / releases 情報から復元した近似値です。

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle （PR / merged）
  AppHost の既定起動経路が CLI bundle に寄るため、ローカル SDK / PATH / IDE 実行に依存した開発環境は互換性確認が必要です。
- **⚠ 破壊的変更** [#18160](https://github.com/microsoft/aspire/pull/18160) — polyglot code generation silently broken when CLI/SDK versions diverged （PR / merged, v13.4.6）
  CLI と AppHost SDK のビルド差分で code generator が見つからなくなる回帰が修正されており、polyglot 利用者は 13.4.6 以降への更新価値が高いです。
- **⚠ セキュリティ** [v13.4.5](https://github.com/microsoft/aspire/releases/tag/v13.4.5) — StreamJsonRpc / MessagePack advisory cleanup （release）
  期間直前の 13.4.5 で `CVE-2026-48109` 対応が入っているため、13.4 系利用者は 13.4.6 と合わせて更新状況を確認すべきです。

## このリポジトリの要点

この期間の Aspire は、**VS Code extension と polyglot AppHost の安定化** が主題でした。CLI bundle 既定化、TLS コンテキストの PEM 追加、polyglot codegen 回帰修正、MAUI iOS simulator 起動修正など、IDE / cross-language 開発体験に直結する変更がまとまっています。
並行して CI では selective test 実行や quarantine job の改善が進み、内部ビルド時間短縮や workflow の堅牢化も目立ちました。

## 主要な PR (詳細)

### [#18188](https://github.com/microsoft/aspire/pull/18188) — Default AppHosts to use the CLI bundle

- 作者: DamianEdwards / 状態: MERGED

**変更概要**

AppHost が既定で CLI bundle を使うようになり、`.csproj` 前提ではない実行パスが標準化されます。
`ASPIRE_HOME` ベースのインストールや IDE 横断の実行整合性を取りやすくする変更です。

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更候補です。起動時に解決される CLI / bundle の優先順位が変わるため、ローカル SDK を直接使う前提の挙動差分が出る可能性があります。

**既存利用者への影響**

開発環境、CI、社内テンプレートで AppHost の起動元を明示している場合は、bundle 解決順とキャッシュ戦略を再確認してください。

### [#18127](https://github.com/microsoft/aspire/pull/18127) — feat(ci): select only affected tests and jobs per PR (audit mode)

- 作者: sebastienros / 状態: MERGED

**変更概要**

MSBuild `ProjectGraph` と curated map を使って、PR ごとに必要なテスト / job だけを選ぶ selective CI が入りました。
現時点では audit mode での導入ですが、CI 時間とコストに大きく効く変更です。

**コミットレベルの詳細 (API 変化・破壊的変更)**

製品 API の変更ではなく CI 基盤の刷新です。`eng/github-ci/` とテスト選択ロジックが主な差分です。

**既存利用者への影響**

外部利用者の移行は不要ですが、リポジトリ運用側は job 選択漏れがないかを次回も監視する必要があります。

### [#18216](https://github.com/microsoft/aspire/pull/18216) — Include concatenated certificate+key PEM file in TLS contexts

- 作者: JamesNK / 状態: MERGED

**変更概要**

TLS context で certificate と key を連結した PEM ファイルを生成できるようになり、単一 PEM 前提の polyglot runtime に渡しやすくなりました。

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 surface の大きな破壊的変更ではありませんが、codegen snapshot を含む polyglot 生成物が更新されます。

**既存利用者への影響**

複数言語ランタイムやコンテナに TLS 情報を渡している利用者は、新しい `CertificateWithKeyPath` の活用余地があります。

### [#17705](https://github.com/microsoft/aspire/pull/17705) — Expose apphost query API and aspire resource management API from aspire extension

- 作者: mitchdenny ほか / 状態: MERGED

**変更概要**

VS Code extension API v2 として、AppHost query / resource management API を外部から扱えるようにしました。
C# DevKit v2 と連携するための土台で、DCP lease と resource command 実行を含みます。

**コミットレベルの詳細 (API 変化・破壊的変更)**

extension API のバージョン境界が増えるため、周辺ツールや拡張は `v2` 対応の確認が必要です。

**既存利用者への影響**

VS Code extension API を直接使う側だけが主対象で、通常の AppHost 利用者には即時移行は不要です。

### [#18358](https://github.com/microsoft/aspire/pull/18358) — Stop false Aspire CLI upgrade warning in VS Code Extension

- 作者: JamesNK / 状態: MERGED

**変更概要**

VS Code extension が CLI 互換性以外の失敗でも upgrade warning を出していた誤検出を修正しました。

**コミットレベルの詳細 (API 変化・破壊的変更)**

UX 修正であり、公開 API や runtime の意味論変更はありません。

**既存利用者への影響**

VS Code 利用者は不要な upgrade 誘導が減るだけで、移行作業はありません。

### [v13.4.6](https://github.com/microsoft/aspire/releases/tag/v13.4.6) — 13.4 系パッチリリース

**変更概要**

polyglot codegen 回帰修正、`--isolated` でのポート衝突修正、MongoDB.Driver 3.9.0 への更新がまとまった安定化リリースです。

**コミットレベルの詳細 (API 変化・破壊的変更)**

特に `AssemblyVersion` 固定化による polyglot codegen 回帰修正は、CLI / SDK の版ずれで silently fail していた利用者に重要です。

**既存利用者への影響**

13.4 系を使っている場合は、polyglot AppHost や `--isolated` を利用する環境から優先的に更新を検討すべきです。

## その他のマージ済み PR

- [#18308](https://github.com/microsoft/aspire/pull/18308): terminal-attached resource では debugger/IDE execution を抑止
- [#17965](https://github.com/microsoft/aspire/pull/17965): debug 終了後の stale AppHost running state 修正
- [#14768](https://github.com/microsoft/aspire/pull/14768): MAUI test coverage を CI に追加
- [#18325](https://github.com/microsoft/aspire/pull/18325): quarantine job の flaky/infrastructure 区別を改善

## その他の変更

Search API が使えないため open / closed Issue の全件列挙はできていませんが、少なくともこの期間は VS Code extension、polyglot、CI 周辺の変更密度が高い状態でした。
