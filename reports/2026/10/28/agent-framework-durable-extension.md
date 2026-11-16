# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-10-22 00:21:02 〜 2026-10-28 00:23:35 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 2 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

この期間は PR #157 で GitHub release と各パッケージの CHANGELOG 更新を自動化し、リリース運用を整備しました。PR #164 はパッケージ一覧・インストール方法を README に追加し、PR #156 は開発 SDK を .NET 10.0.402 に更新しています。Entity schema／checkpoint migration の基盤追加（PR #165、#163）は引き続きレビュー待ちです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#164](https://github.com/microsoft/agent-framework-durable-extension/pull/164) — docs: add packages and installation table to root README

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +29 / -0
- マージ日時 (UTC): `2026-10-27 15:39:12`

**変更概要**

ルート README に提供パッケージとインストール方法の表を追加し、利用者が必要な拡張機能を選びやすくしています。変更はドキュメントに限定され、ライブラリ実装は変更していません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `README.md` | 29 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `ff5bdc1` docs: add packages and installation table to root README

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

README の説明とインストール一覧の追加のみで、API シグネチャ、依存関係、実行時動作への変更はありません。

**既存利用者への影響**

移行は不要です。新規利用者は README のパッケージ表を使って必要な依存関係を選べます。

### [#157](https://github.com/microsoft/agent-framework-durable-extension/pull/157) — ci: automate GitHub releases and CHANGELOG.md stamping

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +718 / -1
- マージ日時 (UTC): `2026-10-22 14:14:28`

**変更概要**

GitHub Actions の release 準備・作成 workflow とリリースノート生成スクリプトを追加し、リリース作業を自動化しています。リリース時に .NET／Python パッケージの CHANGELOG を更新し、準備処理で PR 作成に失敗した場合のフォールバックも用意しました。主な影響範囲はリポジトリの保守・リリース担当者です。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/create-release.yml` | 118 | 0 |
| `.github/workflows/prepare-release.yml` | 153 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 3 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.AzureFunctions/CHANGELOG.md` | 3 | 0 |
| `eng/README.md` | 3 | 1 |
| `eng/scripts/generate-release-notes.py` | 233 | 0 |
| `eng/scripts/prepare-release.py` | 179 | 0 |
| `eng/templates/official/jobs/build-packages.yml` | 7 | 0 |
| `python/CHANGELOG.md` | 19 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `c91bbd1` ci: automate GitHub releases and CHANGELOG.md stamping
- `e253fc7` ci: consolidate Python changelog and add PR creation fallback in prep…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`.github/workflows/create-release.yml`／`prepare-release.yml` と `eng/scripts/generate-release-notes.py`／`prepare-release.py` にリリース自動化を追加し、各パッケージの CHANGELOG を更新する仕組みです。ライブラリの公開 API やランタイム動作は変更していません。

**既存利用者への影響**

利用アプリの移行は不要です。リポジトリの保守者は新しいリリース workflow に合わせてリリース手順を確認してください。

### [#156](https://github.com/microsoft/agent-framework-durable-extension/pull/156) — chore: bump .NET SDK to 10.0.402 and track dotnet-sdk in Dependabot

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +13 / -1
- マージ日時 (UTC): `2026-10-22 14:13:38`

**変更概要**

.NET SDK を 10.0.402 に更新し、Dependabot が `dotnet-sdk` の更新を追跡する設定を追加しています。CI 用設定も SDK 更新に合わせて調整しており、影響範囲は主に開発環境とビルドです。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/dependabot.yml` | 10 | 0 |
| `dotnet/global.json` | 1 | 1 |
| `eng/ci/code-mirror.yml` | 2 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `1d90de0` chore: bump .NET SDK to 10.0.402, add dotnet-sdk dependabot, and disa…
- `ed848c2` chore: align dotnet-sdk dependabot cooldown and label order with MAF

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`dotnet/global.json` の SDK バージョンを 10.0.402 に変更し、`.github/dependabot.yml` に SDK 更新の監視を追加しています。ライブラリ API の変更はありません。

**既存利用者への影響**

アプリの実行時移行は不要ですが、ソースからビルドする開発者・CI は .NET SDK 10.0.402 を利用できることを確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #165 | Python: add two-phase in-place entity schema migration | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/165> |
| PR | #163 | WIP: Add versioned checkpoint migration foundation | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/163> |
| PR | #160 | Add 11_GitHubCopilotAgent durable console sample and tests | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/160> |
| PR | #159 | Bump pyjwt from 2.13.0 to 2.15.0 in /python/packages/azurefunctions | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/159> |
| PR | #158 | Bump opentelemetry-api from 1.43.0 to 1.45.1 in /python | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/158> |
| Issue | #162 | Expose durable activities as native agent tools | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/162> |
| Issue | #161 | Expose durable orchestrations as native agent tools with durable result continuation | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/161> |
