# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 22 |
| クローズ (未マージ) PR  | 7 |
| 新規 Issue              | 13 |
| クローズ Issue          | 19 |
| 主要コントリビューター  | eavanvalkenburg, 1aifanatic, SergeyMenshykh, westey-m, ManoharPaturi, baywet |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#9722](https://github.com/microsoft/agent-framework/pull/9722) — .NET: [BREAKING] fix: scope workflow MCP clients to invocations （PR / open / baywet）
  未マージの提案です。ワークフローMCPクライアントのセッション保持に依存する .NET 利用者は、呼び出し単位の所有・破棄への変更と移行要否をマージ前に確認してください。
- **⚠ 破壊的変更** [#9611](https://github.com/microsoft/agent-framework/pull/9611) — Python: [BREAKING] Guard Copilot runtime connections （PR / closed / rogerbarreto）
  この PR はクローズされ未マージのため、ここで説明された接続オプション制限や移行案は現行リリースには適用されません。Copilot runtime 接続を実行時に上書きする利用者は、今後の代替実装の有無を確認してください。
- **⚠ 破壊的変更** [#9461](https://github.com/microsoft/agent-framework/pull/9461) — [BREAKING] Python: Preserve Redis context scope identity （PR / merged / jpalvarezl）
  Redis context provider 利用者は、既存の非互換スキーマの index と context hash を削除して再作成し、データを再投入する必要があります（単なる上書きでは移行されません）。
- **⚠ 破壊的変更** [#8840](https://github.com/microsoft/agent-framework/pull/8840) — .NET: [BREAKING] Allow a custom ChatHistoryProvider for workflows hosted as agents （PR / open / marcominerva）
  未マージの提案です。`AsAIAgent` の既存オーバーロードを使う .NET 利用者は、採用時に再コンパイルが必要となり、引数なしの `null` は `AsAIAgent()` または名前付き引数へ直す必要があります。
- **⚠ セキュリティ** [#9652](https://github.com/microsoft/agent-framework/pull/9652) — Python: Harden FIDES security state and policy enforcement （PR / open / eavanvalkenburg）
  未マージのセキュリティ強化案です。FIDES を使う Python 利用者は、状態復元・MCP メタデータ・隠し引数のポリシー適用が変更される可能性を確認し、マージ後に回帰テストしてください。
- **⚠ セキュリティ** [#9251](https://github.com/microsoft/agent-framework/issues/9251) — Python: [Feature]: Python CodeAct fail-closed security coverage for FIDES-protected host tools （Issue / open / suhasagg）
  Monty / Hyperlight の CodeAct 経由のネストしたホストツール呼び出しは現状 FIDES の個別ポリシーを適用しないと報告されています。必須の fail-closed 保護が必要な利用者は、対応が実装されるまでこの実行経路で保護を前提にしないでください。
- **非推奨/廃止** [#9402](https://github.com/microsoft/agent-framework/pull/9402) — Python: Update Python Foundry hosted agent samples to use new "-t" (template) deployment instead of deprecated -m （PR / open / dargilco）
  未マージのサンプル更新案です。Foundry hosted agent の Python サンプルを参照する利用者は、非推奨の `-m` ではなくテンプレート指定の `-t` を使う手順への更新を確認してください。

## このリポジトリの要点

Python では Redis context のスコープ識別を厳密化する破壊的なスキーマ変更がマージされ、既存データの再作成・再投入が必要です（[#9461](https://github.com/microsoft/agent-framework/pull/9461)）。
Monty のファイル添付捕捉を上限付きにする変更、shell の stderr 制限、MCP skill 再読込抑制など、リソース境界と実行時の堅牢性も改善されました。FIDES 強化と .NET workflow MCP の寿命変更は未マージ提案として継続確認が必要です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#9461](https://github.com/microsoft/agent-framework/pull/9461) — [BREAKING] Python: Preserve Redis context scope identity

- 作者: jpalvarezl / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +504 / -87
- マージ日時 (UTC): `2026-10-28 13:50:39`

**変更概要**

Redis の TAG 検索では既定の文字列処理により、アプリ・agent・user・session の識別子が正確に区別されない可能性がありました。
この変更は識別子からドメイン分離された決定的トークンを作って大文字小文字を区別して照合し、元の値は非索引メタデータとして保持します。
provider 設定を文書内のスコープ値より優先し、`search_all()` にも一貫したスコープを適用します。対象は Python Redis context provider 利用者です。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-integration-tests.yml` | 4 | 2 |
| `.github/workflows/python-merge-tests.yml` | 4 | 2 |
| `python/packages/redis/README.md` | 5 | 0 |
| `python/packages/redis/agent_framework_redis/_context_provider.py` | 104 | 59 |
| `python/packages/redis/tests/test_context_provider_edges.py` | 123 | 14 |
| `python/packages/redis/tests/test_context_provider_integration.py` | 241 | 0 |
| `python/packages/redis/tests/test_context_provider_sdk.py` | 14 | 7 |
| `python/packages/redis/tests/test_providers.py` | 9 | 3 |

</details>

<details><summary>コミット (12 件)</summary>

- `e57af6c` Python: preserve Redis context scope identity
- `a6fcf08` Python: make Redis scope migration resumable
- `010aaa2` Python: trim Redis migration documentation
- `a211770` Python: harden Redis scope migration control
- `a1f9151` Python: clarify Redis migration task cleanup
- `6d6b768` Python: align Redis context lifecycle tests
- `9090746` Merge main into fix-redis-context-scope-isolation
- `30ffc84` Python: simplify Redis scope schema upgrade
- _... 他 4 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ 破壊的変更: Redis index のスキーマが raw scope 値の索引から case-sensitive な token フィールドへ変わりました。従来スキーマの index は拒否され、`overwrite_index=True` でも自動移行しません。
API の主眼は scope の検索・保存仕様の変更です。互換性検査と再作成・再投入の手順が追加されています。

**既存利用者への影響**

既存 index と context hash を削除し、新しい provider に index を作らせた後、context データを再投入してください。既存データの自動移行や `overwrite_index=True` による回避はできません。

### [#9802](https://github.com/microsoft/agent-framework/pull/9802) — Python: bound Monty file capture

- 作者: eavanvalkenburg / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +346 / -26
- マージ日時 (UTC): `2026-10-28 19:46:29`

**変更概要**

Monty 実行時に read-write mount から返す添付ファイルを、読み取り・エンコード前に件数と総バイト数で制限します。
実行全体で最大20ファイル・20 MiB、ファイルごとに5 MiBの上限を設け、ファイル増大時の再確認と読み取りバイト数の実測も行います。
上限を超えた添付は省略要約で通知され、既存のパス検証や範囲内ファイルの捕捉は維持されます。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/monty/README.md` | 11 | 1 |
| `python/packages/monty/agent_framework_monty/_execute_code_tool.py` | 53 | 22 |
| `python/packages/monty/agent_framework_monty/_instructions.py` | 2 | 1 |
| `python/packages/monty/tests/monty/test_monty_codeact.py` | 273 | 2 |
| `skills/agent-framework-builder-python/references/integrations.md` | 7 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `381c3f4` Python: bound Monty file capture
- `04b2490` Python: simplify capture test generator annotation

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新しい捕捉上限（実行あたり20ファイル・20 MiB、各ファイル5 MiB）が導入されます。添付ファイル返却の動作制約であり、公開 API シグネチャの変更は示されていません。
上限超過時は添付内容を省略して通知しますが、ファイルシステムへの書き込みやディスク使用量を制限するものではありません。

**既存利用者への影響**

マイグレーションは不要です。多数・大容量のファイルを返すコード実行では、上限内に収まるよう出力ファイルを整理し、省略通知を処理してください。

### [#9795](https://github.com/microsoft/agent-framework/pull/9795) — Python: Extend max output limit to stderr

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +963 / -273
- マージ日時 (UTC): `2026-10-28 19:40:08`

**変更概要**

shell tool は標準出力（stdout）を制限する一方、標準エラー（stderr）の出力が制限されていませんでした。
この変更でローカルおよび Docker shell の捕捉処理に stderr の上限を追加し、切り詰め処理やセッション出力も合わせて更新しています。
大量のエラー出力による応答肥大化を抑える変更で、Python shell tool 利用者に影響します。

<details><summary>変更ファイル (13 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/tools/README.md` | 26 | 1 |
| `python/packages/tools/agent_framework_tools/shell/_capture.py` | 72 | 0 |
| `python/packages/tools/agent_framework_tools/shell/_docker.py` | 82 | 67 |
| `python/packages/tools/agent_framework_tools/shell/_executor.py` | 21 | 13 |
| `python/packages/tools/agent_framework_tools/shell/_session.py` | 139 | 138 |
| `python/packages/tools/agent_framework_tools/shell/_tool.py` | 17 | 6 |
| `python/packages/tools/agent_framework_tools/shell/_truncate.py` | 72 | 10 |
| `python/packages/tools/agent_framework_tools/shell/_types.py` | 2 | 2 |
| `python/packages/tools/tests/test_docker_shell_tool.py` | 138 | 6 |
| `python/packages/tools/tests/test_local_shell_tool.py` | 309 | 27 |
| `python/packages/tools/tests/test_shell_parse_rc.py` | 51 | 1 |
| `python/packages/tools/tests/test_shell_truncate_and_quote.py` | 30 | 1 |
| `skills/agent-framework-builder-python/references/harness-agent-builder.md` | 4 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `95d20a6` Extend max output limit to stderr
- `f5cef56` Address PR comments
- `6448b7f` Fix build error

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

stderr にも stdout と同種の最大出力サイズ制限が適用されます。捕捉・切り詰めロジックの内部変更で、公開 API シグネチャ変更や破壊的変更は示されていません。

**既存利用者への影響**

通常は移行不要です。stderr を無制限に読み取れることに依存した利用者は、出力が上限で切り詰められる場合を考慮してください。

### [#9806](https://github.com/microsoft/agent-framework/pull/9806) — .NET: Avoid repeated MCP resource reads after integrity mismatches

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +186 / -35
- マージ日時 (UTC): `2026-10-28 18:56:08`

**変更概要**

MCP skill のリソース内容がサイズまたは digest の不一致となった後、skill 更新が要求されても、同じ skill object が変更リソースを繰り返し取得していました。
更新要求後はその skill object 内で既に検証済みの内容をキャッシュし、不要な再取得を避けます。
.NET の MCP skill キャッシュ利用者向けの効率改善で、関連するユニットテストも追加されました。

<details><summary>変更ファイル (8 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkill.cs` | 9 | 6 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/AgentMcpSkillsSource.cs` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Mcp/Skills/McpCache.cs` | 10 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillTests.Caching.cs` | 90 | 17 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillTests.ResourceTtl.cs` | 8 | 7 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillTests.cs` | 9 | 2 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/AgentMcpSkillsTests.Refresh.cs` | 7 | 1 |
| `dotnet/tests/Microsoft.Agents.AI.Mcp.UnitTests/Skills/McpCacheTests.cs` | 52 | 0 |

</details>

<details><summary>コミット (2 件)</summary>

- `3e51855` .NET: Avoid repeated MCP resource reads after integrity mismatches
- `3893138` .NET: Simplify infinite MCP cache lifetime detection

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

skill object の寿命中、整合性不一致後に検証済み内容を保持するキャッシュ動作が変更されます。公開 API シグネチャの変更や破壊的変更は示されていません。

**既存利用者への影響**

移行は不要です。リソース更新後に新しい内容を取得させる場合は、skill の更新・再生成のライフサイクルに従ってください。

### [#9792](https://github.com/microsoft/agent-framework/pull/9792) — Python: Improve file display in devui

- 作者: westey-m / 状態: MERGED
- ラベル: `python`
- 変更行数: +535 / -61
- マージ日時 (UTC): `2026-10-28 18:43:05`

**変更概要**

DevUI のメッセージ表示で未対応のファイル形式を扱う際の UX を改善します。
PDF 表示に関する変更と、ファイル URL の処理・表示を検証するテストが追加され、対応外形式での利用者向け表示が整えられました。
DevUI フロントエンドの表示改善で、Agent Framework の実行 API 変更はありません。

<details><summary>変更ファイル (9 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/python-tests.yml` | 45 | 0 |
| `python/packages/devui/agent_framework_devui/ui/assets/index.css` | 1 | 1 |
| `python/packages/devui/agent_framework_devui/ui/assets/index.js` | 11 | 11 |
| `python/packages/devui/frontend/package-lock.json` | 111 | 0 |
| `python/packages/devui/frontend/package.json` | 2 | 0 |
| `python/packages/devui/frontend/src/components/features/agent/message-renderers/OpenAIContentRenderer.tsx` | 44 | 48 |
| `python/packages/devui/frontend/src/lib/file-urls.ts` | 29 | 0 |
| `python/packages/devui/frontend/test/file-urls.test.mjs` | 244 | 0 |
| `python/packages/devui/frontend/yarn.lock` | 48 | 1 |

</details>

<details><summary>コミット (3 件)</summary>

- `61f6b34` Improve pdf display in devui
- `3d5e473` Address PR comments
- `cf9b15d` Add devui tests to pr build

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

フロントエンドの file URL 解決とコンテンツ表示の変更で、公開 SDK/API シグネチャの変更はありません。PR 説明では未対応ファイル形式の扱いと PDF 表示の改善が示されています。

**既存利用者への影響**

移行は不要です。DevUI 利用者は更新後に対象ファイル形式の表示を確認してください。

### [#9599](https://github.com/microsoft/agent-framework/pull/9599) — Python: Restore Semantic Kernel model arguments in Magentic migration sample

- 作者: 1aifanatic / 状態: MERGED
- ラベル: `python`
- 変更行数: +2 / -2
- マージ日時 (UTC): `2026-10-28 18:21:49`

**変更概要**

Semantic Kernel 移行サンプルの Magentic orchestration が、Semantic Kernel の実際の引数名と合わず実行前に `TypeError` となる問題を修正します。
サンプル内の `ai_model` を `ai_model_id` に、`chat_model` を `chat_model_id` に戻し、利用者設定のチャットモデルを正しく参照します。
サンプルコードだけの修正で、Agent Framework 本体の挙動は変わりません。

<details><summary>変更ファイル (1 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/samples/semantic-kernel-migration/orchestrations/magentic.py` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `f3f5c37` Python: Restore Semantic Kernel model arguments in Magentic migration…

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

Semantic Kernel 側の既存 API 引数名に合わせたサンプル修正です。Agent Framework API の変更や新しい抽象の導入はありません。

**既存利用者への影響**

利用者側の移行は不要です。該当サンプルを独自に複製している場合は、Semantic Kernel の引数名を `ai_model_id` / `chat_model_id` に合わせてください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #9797 | .NET: fix(dotnet): preserve pending Magentic plan review | baywet | <https://github.com/microsoft/agent-framework/pull/9797> |
| #9384 | Python: Add agent-triggered in-run compaction | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9384> |
| #9499 | Python: merge both approval lists in the OpenAI and Foundry MCP tool helpers | ManoharPaturi | <https://github.com/microsoft/agent-framework/pull/9499> |
| #9113 | Python: Enable tool search in the Foundry Toolbox sample | 1aifanatic | <https://github.com/microsoft/agent-framework/pull/9113> |
| #9764 | .NET: Unify MCP skills and resource caching | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9764> |
| #9718 | Python: Fix Anthropic server-tool continuation and replay | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9718> |
| #9748 | Python: Add async context managers to chat clients | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9748> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #9818 | Python: fire loop turn-scoped after_run only on clean streaming exit | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/pull/9818> |
| PR | #9815 | Python: Add async context managers and ownership close to embedding clients | open | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/9815> |
| PR | #9813 | .NET: Preserve citations in OpenAI Responses hosting | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9813> |
| PR | #9812 | .NET: Correct Foundry citation offsets across completed text parts | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9812> |
| PR | #9810 | Python: Support response_format in GitHubCopilotAgent | open | droideronline | <https://github.com/microsoft/agent-framework/pull/9810> |
| PR | #9803 | Python: fix empty local shell calls leaving orphaned history | open | M-Hietala | <https://github.com/microsoft/agent-framework/pull/9803> |
| PR | #9790 | .NET: Allow persisting partial interaction when streaming is cancelled | open | marcominerva | <https://github.com/microsoft/agent-framework/pull/9790> |
| PR | #9804 | .NET: Harden LocalCodeAct provenance and process capability checks | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9804> |
| PR | #9801 | Python: validate dependency bounds on version bumps and new packages | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/9801> |
| PR | #9798 | Python: preserve AG-UI input on failed runs and prevent duplicate snapshot messages | open | ranst91 | <https://github.com/microsoft/agent-framework/pull/9798> |
| PR | #9800 | .NET: Add configurable MCP skills TTL resolver | open | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/9800> |
| PR | #9796 | Python: Fix Bedrock parallel tool result handling. | open | Namraa310806 | <https://github.com/microsoft/agent-framework/pull/9796> |
| PR | #9791 | .NET: collect partial native approval decisions durably behind an opt-in | open | ranst91 | <https://github.com/microsoft/agent-framework/pull/9791> |
| PR | #9788 | Python: fix(python): deduplicate CodeAct FIDES compatibility warnings | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9788> |
| PR | #9787 | Python: docs(python): demonstrate per-tool execution deadlines | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9787> |
| PR | #9785 | Python: docs(python): add concurrency-safe per-tool rate limiting middleware sample | open | suhasagg | <https://github.com/microsoft/agent-framework/pull/9785> |
| PR | #9789 | Python: Convert nested SDK models in hosted tool sanitization | open | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9789> |
| PR | #9782 | Python: add Amazon Bedrock Knowledge Base context provider | open | PVidyadhar | <https://github.com/microsoft/agent-framework/pull/9782> |
| PR | #9783 | Python: [Python] Clarify optional usage counter handling | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9783> |
| PR | #9781 | Python: use FOUNDRY_* settings in the red teaming sample README | open | ninglinLiu | <https://github.com/microsoft/agent-framework/pull/9781> |
| PR | #9780 | Python: Preserve per-choice message boundaries when streaming chat completions (n>1) | open | Wilson0511 | <https://github.com/microsoft/agent-framework/pull/9780> |
| PR | #9777 | Python: accept equals syntax for workspace checker selection | open | ktz03 | <https://github.com/microsoft/agent-framework/pull/9777> |
| PR | #9665 | Python: Preserve provider error responses in hosting | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9665> |
| PR | #9664 | Python: Decode percent-encoded base64 data URI payloads | closed | MuonChaser | <https://github.com/microsoft/agent-framework/pull/9664> |
| PR | #9611 | Python: [BREAKING] Guard Copilot runtime connections | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/9611> |
| PR | #9805 | Python: fix: streamed chat completions with n>1 produce separate messages (Fixes #9779) | closed | Dhruv-Sh-git | <https://github.com/microsoft/agent-framework/pull/9805> |
| PR | #9799 | .NET: Add sessionId overloads to AgentSessionStore | closed | marcominerva | <https://github.com/microsoft/agent-framework/pull/9799> |
| PR | #9520 | Python: Correct Azure AI Search sample setup instructions | closed | ktz03 | <https://github.com/microsoft/agent-framework/pull/9520> |
| PR | #9378 | Python: Support ag-ui-protocol 1.0 in agent-framework-ag-ui | closed | mme | <https://github.com/microsoft/agent-framework/pull/9378> |
| Issue | #9817 | Python: [Bug]: AgentLoopMiddleware fires turn-scoped after_run on a failed/early-closed streaming iteration using a stale prior response | open | CorgiBoyG | <https://github.com/microsoft/agent-framework/issues/9817> |
| Issue | #9816 | Python: [Feature]: Python: document Future AGI in the observability backend examples | open | nik13 | <https://github.com/microsoft/agent-framework/issues/9816> |
| Issue | #9814 | Python: Embedding clients have no close()/context manager and leak their internally created SDK clients | open | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/9814> |
| Issue | #9811 | Python: [Bug]: AG-UI shares one AgentSession across authorization scopes when a bare Workflow is passed to add_agent_framework_fastapi_endpoint | open | diegoDrp-Dev | <https://github.com/microsoft/agent-framework/issues/9811> |
| Issue | #9794 | Python: [Bug]: BedrockChatClient silently drops parallel tool results when results arrive as separate tool messages | open | Namraa310806 | <https://github.com/microsoft/agent-framework/issues/9794> |
| Issue | #9809 | Python: [Feature]: Support response_format (structured output) in GitHubCopilotAgent | open | droideronline | <https://github.com/microsoft/agent-framework/issues/9809> |
| Issue | #9808 | Python: [Bug]: AnthropicClient reports input_token_count (and gen_ai.usage.input_tokens) without cached prompt tokens | open | lalith0407 | <https://github.com/microsoft/agent-framework/issues/9808> |
| Issue | #9807 | .NET: AG-UI: AsAGUIEventStreamAsync attaches the full update as rawEvent to every tool-call event, so a round of N calls streams O(N²) bytes | open | basilevancooten | <https://github.com/microsoft/agent-framework/issues/9807> |
| Issue | #9779 | Python: Streamed chat completions with n>1 merge all choices' texts into one message | closed | Wilson0511 | <https://github.com/microsoft/agent-framework/issues/9779> |
| Issue | #9793 | .NET: [Bug]: RequirePerServiceCallChatHistoryPersistence duplicates chat history with background responses and continuation tokens | open | marcominerva | <https://github.com/microsoft/agent-framework/issues/9793> |
| Issue | #9786 | .NET: Python: [Feature]: Amazon Bedrock managed Knowledge Base retrieval for agents | open | PVidyadhar | <https://github.com/microsoft/agent-framework/issues/9786> |
| Issue | #9784 | Python: [Bug]: FoundryChatClient: hosted tools from get_bing_custom_search_tool() fail JSON serialization (nested SDK models not converted) | open | Ava-Cheng | <https://github.com/microsoft/agent-framework/issues/9784> |
| Issue | #9778 | .NET: [Bug]: Magentic broadcast replays Responses output_text as input via RawRepresentation | open | saisrivathsa | <https://github.com/microsoft/agent-framework/issues/9778> |
| Issue | #9596 | Python: [Bug]: Semantic Kernel Magentic migration sample raises TypeError for ai_model | closed | 1aifanatic | <https://github.com/microsoft/agent-framework/issues/9596> |
| Issue | #1441 | Add Support for Long-Running Executors and Workflows | closed | alliscode | <https://github.com/microsoft/agent-framework/issues/1441> |
| Issue | #1350 | Package contribution guidelines | closed | markwallace-microsoft | <https://github.com/microsoft/agent-framework/issues/1350> |
| Issue | #260 | Access threads used by each agent in a multi-agent orchestration | closed | markwallace-microsoft | <https://github.com/microsoft/agent-framework/issues/260> |
| Issue | #8571 | .NET: [Feature]: Add sessionId convenience overloads to AgentSessionStore | closed | marcominerva | <https://github.com/microsoft/agent-framework/issues/8571> |
| Issue | #194 | Create Chat Client which used LiteLLM | closed | markwallace-microsoft | <https://github.com/microsoft/agent-framework/issues/194> |
| Issue | #9381 | Python: Add agent-triggered in-run compaction | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/9381> |
| Issue | #2592 | Python: can we configure memory in declarative agent yaml | closed | amit12cool | <https://github.com/microsoft/agent-framework/issues/2592> |
| Issue | #2961 | DevUI Interface Breaks with Azure AI Agents | closed | dragospadurariu | <https://github.com/microsoft/agent-framework/issues/2961> |
| Issue | #9498 | Python: get_mcp_tool silently drops the always approval list when both approval lists are supplied | closed | ManoharPaturi | <https://github.com/microsoft/agent-framework/issues/9498> |
| Issue | #5373 | Python: [Bug]: Inconsistent folder naming in Python samples (hyphens vs underscores) | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/5373> |
| Issue | #5553 | Python: flaky integration tests blocking merge queue (Foundry Hosting + Foundry embeddings) | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/5553> |
| Issue | #6541 | Python: Integration: cowork-to-code-bridge for local Claude Code execution in agents | closed | abhinaykrupa | <https://github.com/microsoft/agent-framework/issues/6541> |
| Issue | #8913 | Python: [Feature]: Single shared data-URI parser and media-type sniffer used by all packages | closed | CloneOfAlex | <https://github.com/microsoft/agent-framework/issues/8913> |
| Issue | #6988 | [Feature]: Using an Agent as a Function Tool (sub-agent)，the execution process of the sub-agent  can also generate process events | closed | changyao-han | <https://github.com/microsoft/agent-framework/issues/6988> |
| Issue | #7349 | Python: Reenable auto sample validation on a boader set of samples | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/issues/7349> |
| Issue | #9479 | Python: [Bug]: Anthropic pause_turn is mapped to stop and ends hosted-search work prematurely | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/9479> |
| Issue | #9478 | Python: [Bug]: Anthropic parallel hosted web search and local tool calls lose server_tool_use identity | closed | coding-totoro | <https://github.com/microsoft/agent-framework/issues/9478> |
