# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-10-30 00:23:04 〜 2026-11-05 00:03:42 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 6 |
| オープン中の新規 PR     | 4 |
| クローズ (未マージ) PR  | 17 |
| 新規 Issue              | 2 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | dependabot[bot], tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#72](https://github.com/microsoft/agent-framework-durable-extension/pull/72) — Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x （PR / closed / ahmedmuhsin）
  Azure Functions host を使う Python 利用者は Durable 2.x 移行案がクローズ済みであることを踏まえ、採用済みの host / package バージョンとサポート状況を確認してください。

## このリポジトリの要点

この期間は Python パッケージ群の依存更新（oauthlib、PyJWT、MCP、certifi）と、リリースビルド時の型エラー修正がマージされました。
Azure Functions host の Durable 2.x 移行案（#72）はクローズ済みで、現行の採用バージョンを確認する際の注意点です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#173](https://github.com/microsoft/agent-framework-durable-extension/pull/173) — Bump oauthlib from 3.3.1 to 4.0.0 in /python

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `python:uv`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-11-02 17:17:12`

**変更概要**

Python の `oauthlib` を 3.3.1 から 4.0.0 に更新し、依存関係ロックファイルを同期する Dependabot PR です。
変更は `python/uv.lock` に限られ、durable extension の Python パッケージ群が対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/uv.lock` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `1af7b24` Bump oauthlib from 3.3.1 to 4.0.0 in /python

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API やソースコードの変更はありません。依存関係が `oauthlib` 4.0.0 に更新されています。

**既存利用者への影響**

通常はロックファイルの更新で足ります。`oauthlib` の挙動に依存する独自コードがある場合は、更新後の認証処理を確認してください。

### [#170](https://github.com/microsoft/agent-framework-durable-extension/pull/170) — Fix genuine Python release-build type errors

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +31 / -25
- マージ日時 (UTC): `2026-11-02 17:15:21`

**変更概要**

Python リリースビルドで検出された実際の型エラーを修正し、リリース工程の成功性を回復する変更です。
history provider、response utilities、retention / shared state、Workflow orchestrator の型と処理を整え、Python パッケージのリリース手順・変更履歴も更新しています。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/README.md` | 4 | 0 |
| `python/CHANGELOG.md` | 2 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_history_provider.py` | 1 | 0 |
| `python/packages/durabletask/agent_framework_durabletask/_response_utils.py` | 2 | 4 |
| `python/packages/durabletask/agent_framework_durabletask/_retention.py` | 1 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_shared_agent_state.py` | 1 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_shared_state_validation.py` | 2 | 1 |
| `python/packages/durabletask/agent_framework_durabletask/_workflows/orchestrator.py` | 18 | 18 |

</details>

<details><summary>コミット (2 件)</summary>

- `e085381` Fix release signing runtime and genuine Python type errors
- `2d59409` Reuse upstream ESRP v6 signing templates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更ファイルには型エラーの修正と response / orchestrator 処理の整合が含まれますが、公開 API のシグネチャ変更や破壊的変更は一覧から確認できません。リリース署名テンプレートの更新も含みます。

**既存利用者への影響**

通常の利用者に移行作業は不要です。Python パッケージのビルド・リリースを行う保守担当者は、修正後の型検査と署名済み配布物の生成を確認してください。

### [#91](https://github.com/microsoft/agent-framework-durable-extension/pull/91) — Bump the github-actions group across 1 directory with 6 updates

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `github_actions`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-11-01 09:30:31`

**変更概要**

リポジトリ内の6つの GitHub Actions を更新する Dependabot PR です。
release、.NET build / format / integration tests、Python integration / merge tests の各 workflow ファイルが対象で、CI / リリース自動化の依存を更新します。

<details><summary>変更ファイル (7 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/create-release.yml` | 2 | 2 |
| `.github/workflows/dotnet-build-and-test.yml` | 4 | 4 |
| `.github/workflows/dotnet-format.yml` | 1 | 1 |
| `.github/workflows/dotnet-integration-tests.yml` | 4 | 4 |
| `.github/workflows/prepare-release.yml` | 2 | 2 |
| `.github/workflows/python-integration-tests.yml` | 4 | 4 |
| `.github/workflows/python-merge-tests.yml` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `f44209f` Bump the github-actions group across 1 directory with 6 updates

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ライブラリ API の変更はありません。複数 workflow 内の GitHub Actions バージョンがまとめて更新されています。

**既存利用者への影響**

利用者側での移行は不要です。リポジトリ保守担当者は、更新後の workflow が CI とリリース環境で正常に動作することを確認してください。

### [#159](https://github.com/microsoft/agent-framework-durable-extension/pull/159) — Bump pyjwt from 2.13.0 to 2.15.0 in /python/packages/azurefunctions

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `python:uv`
- 変更行数: +10 / -10
- マージ日時 (UTC): `2026-11-01 09:29:27`

**変更概要**

Azure Functions 用 Python パッケージの `PyJWT` を 2.13.0 から 2.15.0 に更新し、`uv.lock` を同期する Dependabot PR です。
変更範囲は Azure Functions package のロックファイルに限定されます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/uv.lock` | 10 | 10 |

</details>

<details><summary>コミット (1 件)</summary>

- `c1762ec` Bump pyjwt from 2.13.0 to 2.15.0 in /python/packages/azurefunctions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ソースコードや公開 API の変更はありません。依存する `PyJWT` のバージョンだけが更新されています。

**既存利用者への影響**

ロックファイルの更新以外に移行は不要です。JWT の生成・検証をカスタマイズしている場合は、既存テストで動作を確認してください。

### [#167](https://github.com/microsoft/agent-framework-durable-extension/pull/167) — Bump mcp from 1.28.1 to 1.30.0 in /python/packages/azurefunctions

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `python:uv`
- 変更行数: +10 / -10
- マージ日時 (UTC): `2026-11-01 09:28:28`

**変更概要**

Azure Functions 用 Python package の MCP 依存を 1.28.1 から 1.30.0 に更新し、`uv.lock` を同期する Dependabot PR です。
Functions host 上で MCP を使用する durable extension 利用者に関係します。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/azurefunctions/uv.lock` | 10 | 10 |

</details>

<details><summary>コミット (1 件)</summary>

- `1e76af2` Bump mcp from 1.28.1 to 1.30.0 in /python/packages/azurefunctions

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

リポジトリ内のソースや公開 API の変更はありません。MCP パッケージの依存バージョンのみ更新されています。

**既存利用者への影響**

通常はロックファイル更新で足ります。MCP client / server 連携を利用する場合は、更新後の接続・tool 呼び出しを回帰テストしてください。

### [#168](https://github.com/microsoft/agent-framework-durable-extension/pull/168) — Bump certifi from 2026.6.17 to 2026.10.18 in /python

- 作者: dependabot[bot] / 状態: MERGED
- ラベル: `dependencies` `python:uv`
- 変更行数: +30 / -30
- マージ日時 (UTC): `2026-11-01 09:28:21`

**変更概要**

Python の CA 証明書 bundle を提供する `certifi` を 2026.6.17 から 2026.10.18 に更新し、lockfile を同期する Dependabot PR です。
Python durable extension 全体の TLS 証明書検証に関係する依存更新です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/uv.lock` | 30 | 30 |

</details>

<details><summary>コミット (1 件)</summary>

- `e49531b` Bump certifi from 2026.6.17 to 2026.10.18 in /python

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

アプリケーション API やソースコードは変更されていません。`certifi` の証明書 bundle が更新されています。

**既存利用者への影響**

通常の移行作業は不要です。独自 CA や証明書検証に依存する環境では、更新後に TLS 接続を確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #178 | Reject JSON null external history documents in the custom history sample | open | soufiane77-eng | <https://github.com/microsoft/agent-framework-durable-extension/pull/178> |
| PR | #177 | Bump the github-actions group with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/177> |
| PR | #176 | Bump dotnet-sdk from 10.0.402 to 10.0.403 in /dotnet | open | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/176> |
| PR | #172 | Clarify release package versions and publication provenance | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/172> |
| PR | #58 | Prepare durable extension RC package versions | closed | cgillum | <https://github.com/microsoft/agent-framework-durable-extension/pull/58> |
| PR | #72 | Python: [BREAKING] Migrate the Azure Functions host to azure-functions-durable 2.x | closed | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/72> |
| PR | #145 | Prototype Python compatibility-first schema rollout | closed | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/145> |
| PR | #144 | Document schema-v2 deployment and history retention | closed | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/144> |
| PR | #171 | Fix official release signing on Node20 1ES images | closed | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/171> |
| PR | #139 | Bump multidict from 6.7.1 to 6.9.1 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/139> |
| PR | #146 | Bump mcp from 1.28.1 to 1.30.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/146> |
| PR | #147 | Bump werkzeug from 3.1.8 to 3.1.9 in /python/packages/azurefunctions | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/147> |
| PR | #83 | Bump pip from 26.1.2 to 26.2 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/83> |
| PR | #126 | Bump pyjwt from 2.13.0 to 2.15.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/126> |
| PR | #129 | Bump urllib3 from 2.7.0 to 2.8.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/129> |
| PR | #148 | Bump aiohttp from 3.14.1 to 3.14.4 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/148> |
| PR | #151 | Bump uv from 0.11.28 to 0.13.4 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/151> |
| PR | #152 | Bump uv from 0.11.28 to 0.13.4 in /python/packages/azurefunctions | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/152> |
| PR | #64 | Bump cryptography from 49.0.0 to 50.0.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/64> |
| PR | #127 | Bump oauthlib from 3.3.1 to 4.0.0 in /python | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/127> |
| PR | #154 | Bump aiohttp from 3.14.1 to 3.14.4 in /python/packages/azurefunctions | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework-durable-extension/pull/154> |
| Issue | #175 | .NET: Docs, samples, and tests still describe schema 2 as gated off; the custom ChatHistoryProvider requirements (ProviderKey + non-empty StateKeys) need a migration note | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/175> |
| Issue | #174 | .NET: DurableAIAgent RunAsync polls forever when the agent entity fails before durable state commit (e.g. DurableAgentHistoryBindingMismatchException) | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/174> |
| Issue | #5 | Python: .NET & Python: [Feature]: Externalize Durable Agents conversation storage to customer-owned stores | closed | greenie-msft | <https://github.com/microsoft/agent-framework-durable-extension/issues/5> |
| Issue | #70 | .NET: Published packages are still built from `microsoft/agent-framework`, so fixes merged here don't reach NuGet | closed | mgoelz | <https://github.com/microsoft/agent-framework-durable-extension/issues/70> |
