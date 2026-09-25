# microsoft/agent-framework-durable-extension *(詳細モード)*

対象期間: 2026-09-18 03:05:52 〜 2026-09-24 03:39:59 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 3 |
| オープン中の新規 PR     | 6 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 1 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | tamirdresher |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#112](https://github.com/microsoft/agent-framework-durable-extension/pull/112) — [BREAKING] Python: Activate isolated v2 runtime and workflow protocol （PR / open / ahmedmuhsin）
Durable extension の Python v2 runtime／workflow protocol を変更するオープン PR です。現行プロトコルとの互換性を確認し、マージ前提の移行は避けてください。
- **⚠ 破壊的変更** [#108](https://github.com/microsoft/agent-framework-durable-extension/pull/108) — [BREAKING] Python: Add read-only shared agent state consumers （PR / open / ahmedmuhsin）
共有 agent state を読み取り専用で消費する新しい動作を提案するオープン PR です。共有 state の利用者は、変更が確定するまで既存の書き込み・読み込み契約を維持してください。
- **GA 昇格** [#116](https://github.com/microsoft/agent-framework-durable-extension/pull/116) — [GA] Update Agent Framework dependencies （PR / open / tamirdresher）
Agent Framework 依存更新を GA 準備として提案するオープン PR です。拡張機能の利用者は、依存バージョンと互換性が確定したリリースを確認してください。
- **GA 昇格** [#115](https://github.com/microsoft/agent-framework-durable-extension/issues/115) — [GA] Align extension with latest Agent Framework dependencies （Issue / open / tamirdresher）
最新 Agent Framework 依存への整合と GA を追跡するオープン issue です。利用者は対応リリースと GA 条件の告知を継続確認してください。

## このリポジトリの要点

初回リリースに向けたパッケージ／公開パイプラインの整備が進み、#118 でバージョンと Python package gate、#117 で NuGet 公開処理を更新しました。  
.NET durable executor の結果境界も #101 で明確化されています。Python v2 runtime と Agent Framework 依存の GA 化はまだオープン提案（#112、#116、#115）であり、互換性確定を待つ段階です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#118](https://github.com/microsoft/agent-framework-durable-extension/pull/118) — Bump package versions ahead of the first release from this repo

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +28 / -13
- マージ日時 (UTC): `2026-09-22 19:11:32`

**変更概要**

リポジトリ初回リリースに備え、.NET／Python パッケージのバージョンを更新し、リリース時の検証範囲を整えます。  
ビルド定義では Azure Functions Python package の build／validation gate を追加しています。  
公開前のリリース工程とパッケージメタデータに関する変更で、機能 API の追加は一覧から確認できません。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget/nuget-package.props` | 3 | 3 |
| `eng/templates/official/jobs/build-packages.yml` | 18 | 3 |
| `python/packages/azurefunctions/pyproject.toml` | 2 | 2 |
| `python/packages/durabletask/pyproject.toml` | 1 | 1 |
| `python/pyproject.toml` | 1 | 1 |
| `python/uv.lock` | 3 | 3 |

</details>

<details><summary>コミット (3 件)</summary>

- `296e6e1` Bump package versions ahead of the first release from this repo
- `70c9408` Build and validate the Azure Functions Python package in the release …
- `fa64eed` Extend release Python gate to cover the azurefunctions package

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は NuGet/Python パッケージのバージョン、リリース pipeline と lockfile に限定されています。  
公開 API シグネチャの変更や破壊的変更は、変更ファイル・コミット一覧からは確認できません。

**既存利用者への影響**

通常は利用側のコード移行は不要です。初回リリースのバージョン番号や取得先を固定している利用者は、公開後の package version と feed を確認してください。

### [#117](https://github.com/microsoft/agent-framework-durable-extension/pull/117) — Release pipeline: fix NuGet publishing to nuget.org

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +17 / -11
- マージ日時 (UTC): `2026-09-22 17:40:49`

**変更概要**

NuGet.org へのパッケージ公開で発生するリリース pipeline の問題を修正します。  
CI の package release と publish job の設定を更新し、nuget.org への公開手順を整えています。  
利用 API ではなく、リポジトリのリリース担当者・自動公開工程が対象です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `eng/ci/package-release.yml` | 1 | 1 |
| `eng/templates/official/jobs/publish-packages.yml` | 16 | 10 |

</details>

<details><summary>コミット (1 件)</summary>

- `b37b653` Release pipeline: fix NuGet publishing to nuget.org

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `package-release.yml` と `publish-packages.yml` の公開設定に限定され、ライブラリ API の変更はありません。  
NuGet.org への公開経路を修正する CI／運用変更です。

**既存利用者への影響**

利用者側のコード変更は不要です。公開担当者は次回リリースで NuGet.org への公開完了を確認してください。

### [#101](https://github.com/microsoft/agent-framework-durable-extension/pull/101) — .NET: Wrap durable agent executor responses in the result-only output envelope

- 作者: tamirdresher / 状態: MERGED
- ラベル: —
- 変更行数: +93 / -1
- マージ日時 (UTC): `2026-09-18 18:06:36`

**変更概要**

Durable agent executor が応答を result-only output envelope で返すようにし、出力境界を明確化します。  
dispatcher の応答処理を更新し、状態／関数結果コンテンツの単体テストを追加しています。  
.NET DurableTask を使う workflow と、その結果を読み取る側の期待形式に影響します。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/CHANGELOG.md` | 1 | 0 |
| `dotnet/src/Microsoft.Agents.AI.DurableTask/Workflows/DurableExecutorDispatcher.cs` | 1 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/State/DurableAgentStateFunctionResultContentTests.cs` | 29 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.DurableTask.UnitTests/Workflows/DurableExecutorDispatcherTests.cs` | 62 | 0 |

</details>

<details><summary>コミット (4 件)</summary>

- `0ad62f5` Harden agent executor output handling
- `162e678` Test durable agent output boundary
- `0cdb5bc` Merge main into minimal-output-boundary-hardening-pr
- `d8b3016` fix: satisfy dotnet-format IDE1006/IDE0005 in DurableExecutorDispatch…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

executor の出力を result-only envelope として扱う境界が変更され、回帰テストが追加されています。  
公開 API シグネチャ変更は一覧から確認できませんが、内部応答形式の変更が結果の解釈に影響します。

**既存利用者への影響**

executor の出力を直接解釈するカスタム連携は、結果 envelope の形式と state 関数結果の扱いを確認してください。標準 API 利用では追加移行は示されていません。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #114 | Python: Add retention budgets, telemetry and capability samples | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/114> |
| PR | #111 | Python: Stage canonical history and Core provider bridge | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/111> |
| PR | #112 | [BREAKING] Python: Activate isolated v2 runtime and workflow protocol | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/112> |
| PR | #113 | Python: Add evidence-backed migration into isolated v2 entities | open | ahmedmuhsin | <https://github.com/microsoft/agent-framework-durable-extension/pull/113> |
| PR | #119 | Sign .NET assemblies and packages with ESRP before publishing | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/119> |
| PR | #116 | [GA] Update Agent Framework dependencies | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/pull/116> |
| Issue | #115 | [GA] Align extension with latest Agent Framework dependencies | open | tamirdresher | <https://github.com/microsoft/agent-framework-durable-extension/issues/115> |
