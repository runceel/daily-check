# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-03 04:00:53 〜 2026-07-05 04:03:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 4 |
| オープン中の新規 PR     | 7 |
| クローズ (未マージ) PR  | 0 |
| 新規 Issue              | 8 |
| クローズ Issue          | 1 |
| 主要コントリビューター  | rogerbarreto, westey-m, SergeyMenshykh |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6906](https://github.com/microsoft/agent-framework/pull/6906) — .NET: [BREAKING] Align ShellPolicy allow/deny semantics with Python （PR / merged / westey-m）
  ShellPolicy の allow/deny 解釈が変わるため、既存のポリシー定義やテストを持つ利用者は挙動差分を確認してください。

## このリポジトリの要点

- 破壊的変更を含む ShellPolicy の変更が最も重要で、既存の allow/deny 設定を持つ実装では確認が必要です。
- .NET のバージョン更新と会話レスポンスの 404 化、Foundry toolbox 名の検証強化が入っており、API 利用側の挙動変化を追う価値があります。
- 期間内の Issue では AG-UI や Python 側の入力処理に関する修正要求が出ており、今後の安定化トピックとして注視したいです。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6906](https://github.com/microsoft/agent-framework/pull/6906) — .NET: [BREAKING] Align ShellPolicy allow/deny semantics with Python

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +153 / -44
- マージ日時 (UTC): `2026-07-03 18:21:48`

**変更概要**

この PR は ShellPolicy の allow/deny 判定を Python 実装へ合わせ、既存のルール解釈を揃えるための変更です。実装は .NET 側の ShellPolicy とテストを更新しており、既存の挙動差分を吸収する形になっています。利用者側では allow/deny の優先順位や既存ポリシーの適用結果を再確認するとよいです。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Tools.Shell/ShellPolicy.cs` | 61 | 42 |
| `dotnet/tests/Microsoft.Agents.AI.Tools.Shell.UnitTests/LocalShellExecutorTests.cs` | 92 | 2 |

</details>

<details><summary>コミット (3 件)</summary>

- `4c5c052` Align dotnet shell policy with python implementation to support deny …
- `1640119` Address PR comments.
- `6804a0c` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: ShellPolicy の allow/deny semantics が Python 実装と同じ解釈になるように変更され、同じルールでも許可/拒否の結果が変わる可能性があります。ボディや設定オブジェクトの意味が変わるわけではないものの、ポリシー判定の実装差分は直に見える状態です。

**既存利用者への影響**

既に allow/deny リストやカスタム ShellPolicy を使っている実装では、テストケースと運用ルールを見直しておくと安全です。

### [#6900](https://github.com/microsoft/agent-framework/pull/6900) — .NET: Update .NET version to 1.13.0

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +3 / -3
- マージ日時 (UTC): `2026-07-03 16:43:00`

**変更概要**

この PR は .NET パッケージのバージョン番号を 1.13.0 へ更新して、依存関係のメタデータを揃えるものです。実装差分は非常に小さく、コードロジックの追加はありません。パッケージの参照先切り替えが発生するため、ビルド環境での解決結果を確認しておくとよいです。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/nuget/nuget-package.props` | 3 | 3 |

</details>

<details><summary>コミット (1 件)</summary>

- `c65ff3b` Update .NET version to 1.13.0

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API シグネチャや実行時振る舞いの変更は見当たらず、パッケージ依存関係のメタデータ更新に留まります。

**既存利用者への影響**

既存コードに手を入れなくても動作するケースが多いですが、CI やローカル環境での NuGet 解決結果を一度確認しておくと安心です。

### [#6892](https://github.com/microsoft/agent-framework/pull/6892) — .NET: Return 404 for a response created against a nonexistent conversation

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +214 / -4
- マージ日時 (UTC): `2026-07-03 17:13:03`

**変更概要**

この PR は、存在しない会話に対して生成されたレスポンスを参照した際に、成功ではなく 404 を返すように挙動を変更します。OpenAI Responses 系のサービスでのエラーハンドリングが明確になり、クライアント側のエラー処理の妥当性が上がります。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/InMemoryResponsesService.cs` | 18 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/ResponseErrorCodes.cs` | 38 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/ResponsesHttpHandler.cs` | 9 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.UnitTests/InMemoryResponsesServiceTests.cs` | 102 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.UnitTests/OpenAIResponsesIntegrationTests.cs` | 47 | 0 |

</details>

<details><summary>コミット (1 件)</summary>

- `9aab5a4` Return 404 for a response created against a nonexistent conversation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

レスポンスサービス側のエラーコードとハンドリングが拡張され、無効な会話 ID を扱う場合に 404 系の応答が返るようになります。公開メソッドのシグネチャ自体は変わらず、挙動の明確化が中心です。

**既存利用者への影響**

既存クライアントが「成功を前提」にしていたエラー処理を持つ場合は、404 を受けたときの再試行・ユーザー通知ロジックを見直すとよいです。

### [#6890](https://github.com/microsoft/agent-framework/pull/6890) — .NET: Validate Foundry toolbox name is a single path segment before building the proxy URL

- 作者: rogerbarreto / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +156 / -0
- マージ日時 (UTC): `2026-07-03 17:13:19`

**変更概要**

この PR は Foundry toolbox 名が単一パスセグメントでない場合に、プロキシ URL 構築前に弾くようにバリデーションを追加します。URL 生成の前段で入力を制限するため、無効な名前を送るクライアントは再試行が必要になります。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Foundry.Hosting/FoundryToolboxService.cs` | 68 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Foundry.Hosting.UnitTests/FoundryToolboxServiceTests.cs` | 88 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `97b9f48` Validate Foundry toolbox name is a single path segment before buildin…
- `099db3a` Reject residual percent-encoding in toolbox name validation
- `1cbae81` Validate toolbox name by request-target effect instead of a character…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

HTTP リクエストの検証がサービス層で追加され、toolbox 名の妥当性チェックが厳密化されています。公開 API の型は変わらず、入力値の受け入れルールが変わる点がポイントです。

**既存利用者への影響**

toolbox 名にエンコード済み文字列や複数セグメントを含める実装は、単一セグメントの有効値へ統一する必要があります。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6916 | Python: raise ValueError for malformed data URIs | open | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6916> |
| PR | #6915 | Python: forward Azure AI Search query-source identity | open | kmishra1204 | <https://github.com/microsoft/agent-framework/pull/6915> |
| PR | #6912 | .NET: Add 'advertise' frontmatter option to control automatic skill advertisement | open | ron-clover | <https://github.com/microsoft/agent-framework/pull/6912> |
| PR | #6908 | Python: Fix AG-UI approval thread aliases | open | godququ5-code | <https://github.com/microsoft/agent-framework/pull/6908> |
| PR | #6907 | Python: Fix Foundry reasoning MCP compaction | open | godququ5-code | <https://github.com/microsoft/agent-framework/pull/6907> |
| PR | #6905 | Python: accept AG-UI state data URI parameters | open | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6905> |
| PR | #6903 | Python: normalize single Anthropic tools | open | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6903> |
| Issue | #6917 | Python: malformed data_uri should not leak IndexError | open | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6917> |
| Issue | #6913 | Python: [Feature]: .NET: Add 'advertise' frontmatter option to control automatic skill advertisement | open | ron-clover | <https://github.com/microsoft/agent-framework/issues/6913> |
| Issue | #6911 | .NET: [Bug]: invalid_payload after the AI responeded with reasoning role. | open | karljucutan | <https://github.com/microsoft/agent-framework/issues/6911> |
| Issue | #6910 | .NET: Python: [Bug]: AG-UI host loses tool calls when parallel calls require approval | open | antsok | <https://github.com/microsoft/agent-framework/issues/6910> |
| Issue | #6909 | .NET: Python: [Bug]: AG-UI appends approval-resolved tool results out of order — invalid history for strict chat providers | open | antsok | <https://github.com/microsoft/agent-framework/issues/6909> |
| Issue | #6902 | Python: AG-UI state extraction ignores parameterized JSON data URIs | open | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6902> |
| Issue | #6901 | Python: Anthropic provider does not normalize single tools | open | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6901> |
| Issue | #6899 | ShellTool: Add deny all by default option | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6899> |
