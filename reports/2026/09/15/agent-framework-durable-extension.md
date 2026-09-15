# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-14 03:34:25 〜 2026-09-15 00:08:57 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#98](https://github.com/microsoft/agent-framework-durable-extension/pull/98) — Fix SourceLink advisory and pin patched .NET SDK （PR / merged / tamirdresher）
  該当するリリースまたは開発運用では、変更後の記法・依存関係・設定を確認してください。

## このリポジトリの要点

SourceLink のセキュリティ勧告に対応し、修正済み .NET SDK を固定しました。Durable 拡張の .NET 応答エンベロープと Python ワークフロー検証は引き続き変更候補として監視します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#98](https://github.com/microsoft/agent-framework-durable-extension/pull/98) — Fix SourceLink advisory and pin patched .NET SDK

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-09-14 14:54:26`

**変更概要**

「Fix SourceLink advisory and pin patched .NET SDK」を目的とした変更です。関連する実装とテストを更新し、対象機能の挙動または開発運用を安定化しています。公開 API や利用者設定への影響は、変更ファイルとコミット内容を確認したうえで段階的に取り込んでください。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/Directory.Packages.props` | 1 | 1 |
| `dotnet/global.json` | 1 | 1 |

</details>

<details><summary>コミット (2 件)</summary>

- `7b50734` Fix SourceLink advisory and pin patched .NET SDK
- `8b74c4d` Update .NET SDK to 10.0.401 per review

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

「Fix SourceLink advisory and pin patched .NET SDK」は主に実装、生成物、テストまたは依存関係の更新で、明示的な公開 API シグネチャ変更は確認できません。詳細な互換性は対象 SDK/パッケージの差分で確認してください。

**既存利用者への影響**

通常は追加の移行作業は不要ですが、依存関係を更新したうえで対象機能の回帰テストを実施してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #101 | .NET: Wrap durable agent executor responses in the result-only output envelope | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/101> |
| PR | #102 | Python: Align workflow selector validation with core | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/102> |
| PR | #100 | Add automatic durable history retention sample | closed | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/100> |
