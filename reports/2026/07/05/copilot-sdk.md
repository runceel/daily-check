# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-03 04:00:53 〜 2026-07-05 04:03:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | github-actions[bot] |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

- このリポジトリでは @github/copilot のバージョン更新が中心で、生成コードの更新が大量に入っています。
- 変更範囲は SDK 生成物と各言語バインディングに広がっており、互換性の観点で確認が必要です。
- 今週は SDK の生成パイプラインやハンドシェイク周りの改善 PR も並んでいるため、次回は実装面の影響も見ておくとよいです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#1908](https://github.com/github/copilot-sdk/pull/1908) — Update @github/copilot to 1.0.69-1

- 作者: github-actions[bot] / 状態: MERGED
- ラベル: —
- 変更行数: +8976 / -2843
- マージ日時 (UTC): `2026-07-05 01:53:46`

**変更概要**

この PR は @github/copilot を 1.0.69-1 へ更新し、生成コードと各 SDK の対応を揃えるものです。差分は大規模で、RPC/セッションイベントの生成物更新が中心になっています。実装側では依存関係の更新に加え、SDK の生成結果の再同期が含まれています。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Generated/Rpc.cs` | 1211 | 236 |
| `dotnet/src/Generated/SessionEvents.cs` | 332 | 85 |
| `go/rpc/zrpc.go` | 930 | 245 |
| `go/rpc/zrpc_encoding.go` | 87 | 0 |
| `go/rpc/zsession_events.go` | 302 | 218 |
| `go/zsession_events.go` | 10 | 0 |
| `java/pom.xml` | 1 | 1 |
| `java/scripts/codegen/package-lock.json` | 36 | 36 |
| `java/scripts/codegen/package.json` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantTurnEndEvent.java` | 3 | 1 |
| `java/src/generated/java/com/github/copilot/generated/AssistantTurnStartEvent.java` | 2 | 0 |
| `java/src/generated/java/com/github/copilot/generated/AssistantUsageQuotaSnapshot.java` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/CanvasRegistryChangedCanvas.java` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/CanvasRegistryChangedCanvasAction.java` | 1 | 1 |
| `java/src/generated/java/com/github/copilot/generated/CommandsChangedCommand.java` | 1 | 1 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (1 件)</summary>

- `93cb0af` Update @github/copilot to 1.0.69-1

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

生成コードの更新により、RPC や SessionEvents の型定義が再生成されており、各言語 SDK の API 表現に差分が出る可能性があります。大きなシグネチャ変更は見えませんが、生成物の更新による型一覧の変化には注意が必要です。

**既存利用者への影響**

既存の SDK 利用コードに対しては大きな変更がなくても、生成済み型やイベント仕様の差分を確認しておくとよいです。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1909 | Fix telemetry forwarding handshake CI failures | open | stephentoub | <https://github.com/github/copilot-sdk/pull/1909> |
| PR | #1906 | Improve E2E coverage across SDKs | open | stephentoub | <https://github.com/github/copilot-sdk/pull/1906> |
| PR | #1901 | dotnet: in-process FFI runtime hosting (InProcess transport) | open | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/1901> |
| PR | #1900 | fix(python): preserve original JSON keys in Data shim round-trips | open | syf2211 | <https://github.com/github/copilot-sdk/pull/1900> |
| PR | #1899 | fix(dotnet): forward CustomAgentsLocalOnly in session.create and session.resume | open | syf2211 | <https://github.com/github/copilot-sdk/pull/1899> |
| PR | #1902 | Send GitHub telemetry forwarding opt-in on the connect handshake | closed | stephentoub | <https://github.com/github/copilot-sdk/pull/1902> |
| Issue | #1907 | [aw] SDK Consistency Review Agent failed | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/1907> |
| Issue | #1903 | bank 512 0239 | open | satoshi0239 | <https://github.com/github/copilot-sdk/issues/1903> |
