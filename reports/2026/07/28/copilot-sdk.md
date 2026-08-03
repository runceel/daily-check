# github/copilot-sdk *(詳細モード)*

対象期間: 2026-07-27 00:50:43 〜 2026-07-28 07:44:08 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 5 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 7 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | examon, SteveSandersonMS |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#2095](https://github.com/github/copilot-sdk/pull/2095) — Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs （PR / open / dependabot[bot]）
  Node.js SDK 利用者は、`brace-expansion` の更新を取り込み、依存関係スキャンとパッケージの回帰テストで脆弱性修正の影響を確認してください。

## このリポジトリの要点

今週の変更は .NET / Python の CI 安定化と、Go・Node.js・Rust のドキュメント例の修正が中心です。  
typed search/plan/apply API の公開要望や MCP tool filter の正規化が継続中で、Node.js 依存関係のセキュリティ更新も確認対象です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#2093](https://github.com/github/copilot-sdk/pull/2093) — Fix active .NET and Python CI failures

- 作者: SteveSandersonMS / 状態: MERGED
- ラベル: —
- 変更行数: +92 / -36
- マージ日時 (UTC): `2026-07-27 17:47:41`

**変更概要**

失敗していた .NET と Python の CI を修正し、abort 復旧 E2E テストの不安定さを抑えました。  
Python README と依存設定を更新し、.NET の E2E ハーネスでは文言に依存しない検証へ変更しています。  
SDK 本体の公開 API ではなく、CI・テスト・利用例の安定化が主な対象です。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/test/E2E/SessionE2ETests.cs` | 4 | 4 |
| `dotnet/test/Harness/E2ETestContext.cs` | 32 | 11 |
| `python/README.md` | 55 | 20 |
| `python/pyproject.toml` | 1 | 1 |

</details>

<details><summary>コミット (4 件)</summary>

- `bd922b8` Fix active .NET and Python CI failures
- `53799ec` Stabilize abort recovery E2E test
- `634365a` Avoid phrasing-dependent abort assertion
- `db69e02` Address CI fix review feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

E2E コンテキストの復旧判定と Python のサンプル依存バージョンを更新しましたが、SDK 公開 API のシグネチャ変更はありません。abort 判定をレスポンス文言から切り離す内部テスト改善です。

**既存利用者への影響**

既存利用者の移行は不要です。自前の E2E テストや Python サンプルを参照している場合は、更新後の復旧判定と依存バージョンを確認してください。

### [#2086](https://github.com/github/copilot-sdk/pull/2086) — Fix Go telemetry examples: NewClient takes *ClientOptions and returns one value

- 作者: examon / 状態: MERGED
- ラベル: —
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-07-27 14:48:44`

**変更概要**

Go の telemetry ドキュメント例で、`NewClient` の実際の呼び出し規約に合わせて引数と戻り値の扱いを修正しました。  
getting-started、OpenTelemetry、Go README の 3 箇所を同期しています。  
Go 利用者が例をそのままコンパイルできるようにするドキュメント修正です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/getting-started.md` | 1 | 1 |
| `docs/observability/opentelemetry.md` | 1 | 1 |
| `go/README.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `42fd904` Fix Go telemetry examples: NewClient takes *ClientOptions and returns…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`NewClient(*ClientOptions)` が単一の値を返す既存 API に、ドキュメント例を合わせただけです。API 自体の変更や破壊的変更はありません。

**既存利用者への影響**

移行は不要です。Go の例を利用している場合は、`NewClient` の戻り値を単一値として扱う実装を確認してください。

### [#2088](https://github.com/github/copilot-sdk/pull/2088) — Fix the Node.js tool-definition example in the Microsoft Agent Framework guide

- 作者: examon / 状態: MERGED
- ラベル: —
- 変更行数: +11 / -5
- マージ日時 (UTC): `2026-07-27 14:48:40`

**変更概要**

Microsoft Agent Framework guide の Node.js tool-definition 例が存在しない `DefineTool` export を参照していた問題を修正しました。  
正しい tool 定義方法と import をドキュメントに反映し、MAF 統合の利用例を実装と一致させています。  
Node.js でガイドを試す利用者が対象です。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/integrations/microsoft-agent-framework.md` | 11 | 5 |

</details>

<details><summary>コミット (1 件)</summary>

- `e17e81a` docs: fix the Node.js tool-definition example in the MAF integration …

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は `microsoft-agent-framework.md` のコード例だけで、SDK の API シグネチャや新規抽象は追加されていません。

**既存利用者への影響**

移行は不要です。ガイドからコードをコピーした場合は、更新された tool 定義と import を取り込んでください。

### [#2090](https://github.com/github/copilot-sdk/pull/2090) — Fix the plan-mode exit action type name in the fleet mode guide

- 作者: examon / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-07-27 14:48:36`

**変更概要**

Fleet mode guide で、plan-mode の終了アクションに SDK が実際に公開している型名を使うよう修正しました。  
ドキュメント上の union 型名を 1 箇所更新したもので、実装コードは変更していません。  
Fleet mode の例を参照する利用者がコンパイル可能な型名を得られます。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/fleet-mode.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `f9c873f` Fix the plan-mode exit action type name in the fleet mode guide

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開済みの終了アクション型にドキュメントを合わせた修正で、API の追加・変更や破壊的変更はありません。

**既存利用者への影響**

移行は不要です。Fleet mode のサンプルを利用する場合は、更新された型名を使用してください。

### [#2082](https://github.com/github/copilot-sdk/pull/2082) — docs: fix non-compiling Rust session-limits example

- 作者: examon / 状態: MERGED
- ラベル: —
- 変更行数: +1 / -1
- マージ日時 (UTC): `2026-07-27 09:16:19`

**変更概要**

Rust の session-limits ドキュメント例が存在しない `SessionConfig::new` を呼び出していたため、コンパイル可能な構築方法へ修正しました。  
変更は `docs/features/session-limits.md` の 1 行で、Rust SDK の実装自体は変更していません。  
Rust 利用者が制限設定の例をそのまま試せるようになります。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `docs/features/session-limits.md` | 1 | 1 |

</details>

<details><summary>コミット (1 件)</summary>

- `45c2394` docs: fix non-compiling Rust session-limits example

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

ドキュメント例を既存の Rust API に合わせた修正で、API シグネチャ変更、破壊的変更、新規抽象はありません。

**既存利用者への影響**

移行は不要です。session limits の例を使っている場合は、更新後の設定初期化コードを参照してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2105 | docs: correct the delta field the MAF streaming example reads | open | examon | <https://github.com/github/copilot-sdk/pull/2105> |
| PR | #2102 | Support raw view output in replay fixtures | open | erik-krogh | <https://github.com/github/copilot-sdk/pull/2102> |
| PR | #2100 | Update @github/copilot to 1.0.76-0 | open | github-actions[bot] | <https://github.com/github/copilot-sdk/pull/2100> |
| PR | #2101 | Document and normalize MCP tool filter names | open | syedkazmi14 | <https://github.com/github/copilot-sdk/pull/2101> |
| PR | #2099 | Fix the Python list_sessions docstring example to use session_id | open | examon | <https://github.com/github/copilot-sdk/pull/2099> |
| PR | #2097 | docs: rename Azure AI Foundry to Microsoft Foundry in BYOK guide | open | scottaddie | <https://github.com/github/copilot-sdk/pull/2097> |
| PR | #2095 | Bump brace-expansion from 1.1.14 to 1.1.16 in /nodejs | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2095> |
| PR | #2096 | Bump hono from 4.12.23 to 4.12.32 in /test/harness | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2096> |
| PR | #2094 | Bump fast-uri from 3.1.2 to 3.1.4 in /test/harness | open | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2094> |
| Issue | #2106 | Expose typed search, plan, and apply APIs in the Copilot SDK | open | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2106> |
| Issue | #2104 | Microsoft Agent Framework guide: the Node.js streaming example reads a nonexistent `delta` field | open | examon | <https://github.com/github/copilot-sdk/issues/2104> |
| Issue | #2103 | [Python][tests] E2E harness picks the first @github/copilot-* package instead of the current platform package | open | syedkazmi14 | <https://github.com/github/copilot-sdk/issues/2103> |
| Issue | #2098 | Python `list_sessions` docstring example uses a nonexistent `sessionId` attribute | open | examon | <https://github.com/github/copilot-sdk/issues/2098> |
| Issue | #2089 | Docs: fleet mode guide labels the plan-mode exit action union with a name the SDK does not export | closed | examon | <https://github.com/github/copilot-sdk/issues/2089> |
| Issue | #2092 | [aw] Bug Handler is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2092> |
| Issue | #2091 | The JSON value could not be converted to System.DateTimeOffset | open | generalloki | <https://github.com/github/copilot-sdk/issues/2091> |
| Issue | #2041 | Expose typed Agent Finder search, plan, and apply APIs in Copilot SDK | closed | gokhanarkan | <https://github.com/github/copilot-sdk/issues/2041> |
| Issue | #2037 | [aw] SDK Consistency Review Agent failed | closed | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2037> |
| Issue | #2085 | Go telemetry examples do not compile: NewClient takes *ClientOptions and returns a single value | closed | examon | <https://github.com/github/copilot-sdk/issues/2085> |
| Issue | #2087 | Docs: Node.js tool example in the Microsoft Agent Framework guide imports a DefineTool export that does not exist | closed | examon | <https://github.com/github/copilot-sdk/issues/2087> |
| Issue | #2081 | docs: Rust session-limits example does not compile (SessionConfig::new does not exist) | closed | examon | <https://github.com/github/copilot-sdk/issues/2081> |
