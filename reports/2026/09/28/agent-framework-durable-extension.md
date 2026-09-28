# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) — [BREAKING] Python: Activate isolated v2 runtime and workflow protocol （PR / open / ahmedmuhsin）
Durable Extension の Python v2 runtime / workflow protocol を利用する予定の開発者は、提案中の互換性変更と移行要件をマージ前に確認してください。
- **⚠ 破壊的変更** [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) — [BREAKING] Python: Add read-only shared agent state consumers （PR / open / ahmedmuhsin）
共有エージェント状態を読む Python 利用者は、read-only consumer 導入による API / 動作変更を確認してください（PR は未マージです）。

## このリポジトリの要点

マージ済み変更は、PyPI パッケージ公開で Durable Task チームの登録済み ESRP publisher を使う CI / リリース設定の更新です。利用者向け API 変更は確認されていません。
Python の v2 runtime / workflow protocol 切り替え（#112）と共有状態の read-only consumer（#108）は破壊的変更を伴う提案としてオープン中のため、採用・移行情報を継続確認します。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#121](https://github.com/microsoft/agent-framework-durable-extension/pull/121) — Use the Durable Task team's registered ESRP main publisher for PyPI

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +10 / -6
- マージ日時 (UTC): `2026-09-25 05:17:08`

**変更概要**

PyPI へのパッケージ公開で、Durable Task チームが登録した ESRP main publisher を使うようパイプライン設定を切り替えました。
変更箇所は CI の package-release / publish-packages テンプレートに限られ、公開の信頼性・発行主体を整えるためのリリース基盤変更です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/ci/package-release.yml` | 2 | 2 |
| `eng/templates/official/jobs/publish-packages.yml` | 8 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `655514f` Use the Durable Task team's registered ESRP main publisher for PyPI

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は ESRP publisher を指定するリリース YAML の更新のみで、Python API・runtime 動作・workflow protocol のシグネチャ変更は含まれません。

**既存利用者への影響**

パッケージ利用者に移行作業はありません。影響するのは PyPI 公開パイプラインの発行設定です。
