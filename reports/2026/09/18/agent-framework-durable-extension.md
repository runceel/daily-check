# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-16 01:35:40 〜 2026-09-18 03:05:52 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 3 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) — [BREAKING] Python: Add read-only shared agent state consumers （PR / open / ahmedmuhsin）
  Python の共有状態アクセスモデルが変わるため、Durable Functions を利用するアプリは read-only / mutable な状態の境界を再設計して検証する必要があります。

## このリポジトリの要点

- いまの `agent-framework-durable-extension` は、Durable Functions ベースの共有状態管理を厳密化する方向に進んでおり、Python 側の read-only consumer 追加が主要な破壊的変更です。
- これにより、複数エージェントや子ワークフロー間でどこまで state を共有できるかがより明確になり、意図しない書き換えの抑止に役立ちます。
- ただし、既存の実装は state の所有権やライフサイクル設計を見直す必要があり、.NET 側の履歴遷移や null 外部履歴の扱いにも注目が集まっています。
- 依然として preview / open フェーズなので、今のうちに契約の境界を固めておくことが重要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #109 | Python: Stage immutable shared delivery lifecycle | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/109> |
| PR | #108 | [BREAKING] Python: Add read-only shared agent state consumers | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/108> |
| Issue | #106 | .NET: Define supported durable history ownership transitions | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/106> |
| Issue | #107 | .NET: Strictly reject ambiguous child workflow result controls | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/107> |
| Issue | #105 | .NET sample: Reject JSON null external history documents | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/105> |
