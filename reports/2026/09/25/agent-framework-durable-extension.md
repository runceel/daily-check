# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-24 03:39:59 〜 2026-09-25 00:10:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 1 |
| オープン中の新規 PR     | 1 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 0 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) — [BREAKING] Python: Activate isolated v2 runtime and workflow protocol （PR / open / ahmedmuhsin）
Python v2 runtime / workflow protocol の利用者は、未マージの提案段階であることを踏まえ、採用時に実行環境とプロトコルの移行要件を確認してください。
- **⚠ 破壊的変更** [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) — [BREAKING] Python: Add read-only shared agent state consumers （PR / open / ahmedmuhsin）
共有 agent state を利用する開発者は、未マージ PR の読み取り専用 consumer API と状態アクセス方式の変更内容を確認してください。

## このリポジトリの要点

マージ済みの主な変更は、リリース時に .NET assembly と NuGet package を ESRP で署名する CI 強化です。
Python の v2 runtime / workflow protocol と共有状態 consumer に関する破壊的変更提案 (#112、#108) はいずれもオープンで、採用前の互換性確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#119](https://github.com/microsoft/agent-framework-durable-extension/pull/119) — Sign .NET assemblies and packages with ESRP before publishing

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +135 / -0
- マージ日時 (UTC): `2026-09-24 19:41:54`

**変更概要**

公開前のリリースパイプラインで .NET assembly と package に ESRP 署名を付与するようにします。
公式 build template を更新し、公開時のみ署名を実行するほか、署名後の package 内 assembly の署名を検証します。
変更範囲は CI / package release の設定で、利用者向け API には及びません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/ci/package-release.yml` | 12 | 0 |
| `eng/templates/official/jobs/build-packages.yml` | 123 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `c55286e` Sign .NET assemblies and packages with ESRP before publishing
- `38339e4` Install the .NET 6 SDK for ESRP signing
- `b6345fc` Only sign .NET packages when publishing them
- `f2c73dc` Allow ESRP storage endpoints through Network Isolation
- `b6fae6b` Verify signatures on the assemblies inside each package, drop ESRP su…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

CI の公式 build template と release workflow の変更のみで、API シグネチャや runtime 動作の変更はありません。公開 package の署名と検証を追加します。

**既存利用者への影響**

利用者コードの移行は不要です。署名済み package の検証を行う downstream pipeline がある場合は、署名付き成果物を受け入れられることを確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #120 | Python: Isolate entity-backed session snapshots | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/120> |
| PR | #59 | [Python] Durable thread compaction and history providers (ADR 0032) | closed | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/59> |
