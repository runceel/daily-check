# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-01 00:25:00 〜 2026-07-02 00:49:01 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 13 |
| オープン中の新規 PR     | 8 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 9 |
| クローズ Issue          | 11 |
| 主要コントリビューター  | SergeyMenshykh, giles17, westey-m, VectorPeak, TaoChenOSU, Copilot |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#6859](https://github.com/microsoft/agent-framework/pull/6859) — Python: [BREAKING] FileAccess/FileMemory replace_lines literal replacement with line deletion （PR / merged / westey-m）
  <!-- 影響: Python 版 Harness の FileAccess/FileMemory で `replace_lines` を使って行削除（空文字列での置換）を行っている呼び出し元は、動作が「文字列置換」から「行削除」に変わるため実装者が挙動を再確認する必要がある。 -->
- **⚠ 破壊的変更** [#6855](https://github.com/microsoft/agent-framework/pull/6855) — .NET: [BREAKING] Refactor OpenAI Hosting OptionsMapping to disallow passing options by default （PR / merged / westey-m）
  <!-- 影響: `Microsoft.Agents.AI.Hosting.OpenAI` で Chat Completions/Responses エンドポイントにカスタム options を素通しさせていた実装者は、既定で拒否されるようになるため新しい Options マッピング API への移行対応が必要。 -->
- **⚠ 破壊的変更** [#6849](https://github.com/microsoft/agent-framework/pull/6849) — Python: [BREAKING] Treat nested SKILL.md content as part of the parent skill （PR / merged / giles17）
  <!-- 影響: ネストされた SKILL.md を独立スキルとして利用しているチームは、検出結果が親スキルに統合される仕様変更に伴いスキル一覧・呼び出し名を確認する必要がある。 -->
- **⚠ 破壊的変更** [#6847](https://github.com/microsoft/agent-framework/pull/6847) — Python: [BREAKING] Extract caching from SkillsProvider into a CachingSkillsSource decorator （PR / merged / giles17）
  <!-- 影響: `SkillsProvider` のキャッシュ関連オプションを直接設定しているコードを持つ実装者は、`CachingSkillsSource` デコレーターへの置き換えが必要。 -->
- **⚠ 破壊的変更** [#6807](https://github.com/microsoft/agent-framework/pull/6807) — .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API （PR / merged / westey-m）
  <!-- 影響: .NET 版 FileAccess/FileMemory ストア API（`AgentFileStore` 系クラス）を直接参照している実装者は、リネーム・シグネチャ変更後の新 API に追随する必要がある。 -->
- **⚠ 破壊的変更** [#6798](https://github.com/microsoft/agent-framework/issues/6798) — .NET: [BREAKING] Bump Azure.AI.Projects to 2.1.0-beta.4 （Issue / open / rogerbarreto）
  <!-- 影響: `Azure.AI.Projects` に直接依存している .NET 利用者は、2.1.0-beta.4 へのバンプで想定される破壊的変更をリリースノートで確認しておく（Issue は追跡中でまだ着地していない）。 -->

## このリポジトリの要点

今回の対象期間は Python/.NET 双方の Harness・Skills 周りで破壊的変更を含む PR が集中しました。特に FileAccess/FileMemory のファイル編集機能追加（#6807）と、それに伴う Python 側の `replace_lines` 挙動変更（#6859）は、ファイル操作系ツールを自作している利用者への影響が大きい変更です。加えて Skills API から `[Experimental]` 属性が外れ（#6861）、Skills 機能が正式サポートに近づいたことも注目点です。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#6859](https://github.com/microsoft/agent-framework/pull/6859) — Python: [BREAKING] FileAccess/FileMemory replace_lines literal replacement with line deletion

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +182 / -25
- マージ日時 (UTC): `2026-07-01 15:47:53`

**変更概要**

Python 版 Harness の `FileAccess`/`FileMemory` が提供する `replace_lines` 操作について、行を削除したい場合の挙動を見直す PR です。従来は「対象行を空文字列で置換する」という文字列置換の延長で行削除を表現していましたが、これだと空行が残るなど直感的でない挙動になっていました。本 PR では行の削除を独立した操作として扱い、置換ではなく実際に行自体を取り除くように変更しています。あわせてテストと `AGENTS.md` のドキュメントも更新されています。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_file_access.py` | 40 | 12 |
| `python/packages/core/agent_framework/_harness/_file_memory.py` | 13 | 4 |
| `python/packages/core/tests/core/test_harness_file_access.py` | 93 | 4 |
| `python/packages/core/tests/core/test_harness_file_memory.py` | 35 | 4 |

</details>

<details><summary>コミット (3 件)</summary>

- `5b628f0` FileAccess/FileMemory: Allowing removing lines by using full line rep…
- `a203b0f` Add agents.md changes
- `20a1601` Address PR comments

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_file_access.py` / `_file_memory.py` 内で行削除ロジックが「空文字列での置換」から「行そのものの削除」に置き換えられています。**⚠ 破壊的変更**: `replace_lines` に空の置換内容を渡して行削除を表現していた既存コードは、結果として得られる行番号・行数が変わる可能性があります。

**既存利用者への影響**

`replace_lines` を使って行削除を行っている既存コードがあれば、削除後の行番号がずれる可能性があるため動作確認が必要です。単純な行置換のみに使っている場合は影響ありません。

### [#6855](https://github.com/microsoft/agent-framework/pull/6855) — .NET: [BREAKING] Refactor OpenAI Hosting OptionsMapping to disallow passing options by default

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +976 / -86
- マージ日時 (UTC): `2026-07-01 15:25:10`

**変更概要**

`Microsoft.Agents.AI.Hosting.OpenAI` パッケージで、OpenAI Chat Completions / Responses エンドポイントをホストする際の `OptionsMapping` を大幅にリファクタリングする PR です。新たに `OpenAIChatCompletionRequestInfo` / `OpenAIResponseRequestInfo` と、それぞれに対応する `MapOptions` クラス・`OpenAIResponseRequestInfoBuilder` というビルダーベースの抽象を導入し、リクエスト情報の組み立てを明示的な API に置き換えています。あわせて `AIAgentResponseExecutor` / `HostedAgentResponseExecutor` 側の変換ロジックも整理されました。

<details><summary>変更ファイル (16 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/ChatCompletions/AIAgentChatCompletionsProcessor.cs` | 27 | 5 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/ChatCompletions/Converters/ChatClientAgentRunOptionsConverter.cs` | 17 | 28 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/EndpointRouteBuilderExtensions.ChatCompletions.cs` | 8 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/EndpointRouteBuilderExtensions.Responses.cs` | 7 | 4 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/OpenAIChatCompletionRequestInfo.cs` | 87 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/OpenAIChatCompletionsMapOptions.cs` | 121 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/OpenAIResponseRequestInfo.cs` | 77 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/OpenAIResponsesMapOptions.cs` | 100 | 0 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/AIAgentResponseExecutor.cs` | 27 | 19 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/HostedAgentResponseExecutor.cs` | 23 | 17 |
| `dotnet/src/Microsoft.Agents.AI.Hosting.OpenAI/Responses/OpenAIResponseRequestInfoBuilder.cs` | 62 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.UnitTests/ConformanceTestBase.cs` | 6 | 6 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.UnitTests/OpenAIConversationsConformanceTests.cs` | 3 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.UnitTests/OpenAIMapOptionsTests.cs` | 248 | 0 |
| `dotnet/tests/Microsoft.Agents.AI.Hosting.OpenAI.UnitTests/OpenAIResponseRequestInfoBuilderTests.cs` | 104 | 0 |
| _... 他 1 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `ca4a23d` Refactor OptionsMapping to disallow passing options by default
- `02c5707` Merge branch 'main' into openai-hosting-options-mapping-refactor
- `c66a703` Address PR comments
- `09b9257` Address PR comment

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規に `OpenAIChatCompletionRequestInfo` / `OpenAIChatCompletionsMapOptions` / `OpenAIResponseRequestInfo` / `OpenAIResponsesMapOptions` / `OpenAIResponseRequestInfoBuilder` が追加され、リクエストマッピングをビルダー経由で明示的に行う設計に変わりました。**⚠ 破壊的変更**: `ChatClientAgentRunOptionsConverter` の変換ロジックが変更され、PR タイトルの通り「オプションを既定で素通しさせない」動作になったため、これまで暗黙的に渡していたカスタム options が既定では反映されなくなります。

**既存利用者への影響**

`EndpointRouteBuilderExtensions` 経由で OpenAI 互換エンドポイントをホストし、カスタムオプションをリクエストに反映させたい場合は、新しい `MapOptions` / ビルダー API を使って明示的に設定し直す必要があります。単純にデフォルト設定のままホストしている場合は影響が小さい見込みです。

### [#6849](https://github.com/microsoft/agent-framework/pull/6849) — Python: [BREAKING] Treat nested SKILL.md content as part of the parent skill

- 作者: giles17 / 状態: MERGED
- ラベル: `python` `breaking change`
- 変更行数: +35 / -23
- マージ日時 (UTC): `2026-07-01 16:12:27`

**変更概要**

Python 版 Skills 機能で、SKILL.md が入れ子（ネスト）になっている場合の探索挙動を変更する PR です。従来はネストされた SKILL.md も独立したスキルとして検出される可能性がありましたが、本 PR ではスキルの境界でディレクトリ探索を打ち切り、ネストされた SKILL.md の内容は親スキルの一部として扱われるようにしています。誤って子ディレクトリの SKILL.md が別スキルとして二重登録される問題を防ぐ意図です。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/agent_framework/_skills.py` | 15 | 11 |
| `python/packages/core/tests/core/test_skills.py` | 20 | 12 |

</details>

<details><summary>コミット (2 件)</summary>

- `c8c9153` Python: Stop skill discovery at skill boundaries
- `d49f3c7` Python: Attach nested skill content to the parent skill

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_skills.py` のスキル探索ロジックが変更され、SKILL.md を見つけた時点でそれ以下のディレクトリ探索を打ち切るようになりました。**⚠ 破壊的変更**: これまでネストされた SKILL.md を個別スキルとして利用していた構成では、その子スキルが検出されなくなり、内容は親スキルの一部として統合されます。

**既存利用者への影響**

ディレクトリを入れ子にして複数の SKILL.md を配置しているプロジェクトは、スキル一覧・呼び出し名が変わっていないか確認してください。フラットな 1 階層構成のみを使っている場合は影響ありません。

### [#6847](https://github.com/microsoft/agent-framework/pull/6847) — Python: [BREAKING] Extract caching from SkillsProvider into a CachingSkillsSource decorator

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +223 / -62
- マージ日時 (UTC): `2026-07-01 16:26:04`

**変更概要**

Python 版 `SkillsProvider` からキャッシュ機能を切り離し、独立したデコレータークラス `CachingSkillsSource` として再構成する PR です。これまで `SkillsProvider` 自体が持っていたキャッシュ関連の責務を分離することで、キャッシュあり/なしの構成を組み合わせやすくし、単一責任原則に沿った設計にしています。`agent_framework/__init__.py` の公開シンボルにも変更が加わっています。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 0 |
| `python/packages/core/agent_framework/__init__.py` | 2 | 0 |
| `python/packages/core/agent_framework/_skills.py` | 82 | 37 |
| `python/packages/core/tests/core/test_skills.py` | 138 | 25 |

</details>

<details><summary>コミット (2 件)</summary>

- `309082d` Python: [BREAKING] Extract caching from SkillsProvider into CachingSk…
- `ebce7ac` Add ty ignore for dynamic _test_context attribute in skills test helper

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`_skills.py` から `SkillsProvider` のキャッシュロジックが取り除かれ、新しく `CachingSkillsSource` デコレータークラスとして切り出されました。**⚠ 破壊的変更**: `SkillsProvider` のコンストラクタでキャッシュ関連の引数を直接指定していたコードは、当該引数が無くなるため動作しなくなります。

**既存利用者への影響**

`SkillsProvider` にキャッシュオプションを渡していた場合は、`CachingSkillsSource` でスキルソースをラップする形に書き換える必要があります。キャッシュ機能を使っていなければ影響はありません。

### [#6807](https://github.com/microsoft/agent-framework/pull/6807) — .NET: [BREAKING] Add file editing tools and align FileAccess/FileMemory store API

- 作者: westey-m / 状態: MERGED
- ラベル: `.NET` `breaking change`
- 変更行数: +1870 / -616
- マージ日時 (UTC): `2026-07-01 13:48:42`

**変更概要**

.NET 版 Harness に新たなファイル編集ツールを追加し、あわせて `FileAccess`/`FileMemory` のストア API を整理・統一する大型 PR です（+1870/-616 行）。新規に `FileEditor` / `FileLineEdit` / `FileStoreEntry` クラスを追加し、行単位でのファイル編集をエージェントのツールとして提供できるようになりました。これに伴い `AgentFileStore` / `FileSystemAgentFileStore` / `InMemoryAgentFileStore` などのストア実装がリネーム・API 統一されています。

<details><summary>変更ファイル (19 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Shared_Console/ToolFormatters/FileMemoryToolFormatter.cs` | 54 | 10 |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/Program.cs` | 2 | 2 |
| `dotnet/src/Microsoft.Agents.AI/AgentJsonUtilities.cs` | 4 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProvider.cs` | 204 | 84 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileAccess/FileAccessProviderOptions.cs` | 11 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileListEntry.cs` | 10 | 4 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileMemory/FileMemoryProvider.cs` | 207 | 66 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/AgentFileStore.cs` | 11 | 16 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileEditor.cs` | 141 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileLineEdit.cs` | 31 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileStoreEntry.cs` | 51 | 0 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/FileSystemAgentFileStore.cs` | 39 | 34 |
| `dotnet/src/Microsoft.Agents.AI/Harness/FileStore/InMemoryAgentFileStore.cs` | 25 | 32 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileAccess/FileAccessProviderTests.cs` | 324 | 129 |
| `dotnet/tests/Microsoft.Agents.AI.UnitTests/Harness/FileMemory/FileMemoryProviderTests.cs` | 354 | 63 |
| _... 他 4 件_ | | |

</details>

<details><summary>コミット (5 件)</summary>

- `ce29eff` Add support for editing to file access and memory plus renames
- `3b4c8d6` Address PR comments
- `f888eb1` Merge branch 'main' into csharp-fileaccess-rename-and-edit
- `022c668` Address PR comments
- `0ffc2a4` Merge branch 'main' into csharp-fileaccess-rename-and-edit

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

新規クラス `FileEditor`（ファイル編集のエントリポイント）、`FileLineEdit`（行単位の編集記述）、`FileStoreEntry` が追加されました。**⚠ 破壊的変更**: `AgentFileStore` / `FileSystemAgentFileStore` / `InMemoryAgentFileStore` のメソッドシグネチャがリネーム・整理されており、`FileAccessProvider` / `FileMemoryProvider` からの呼び出し方も変わっています。

**既存利用者への影響**

.NET 版 Harness の `FileAccess`/`FileMemory` ストア API を直接呼び出しているカスタム実装がある場合は、リネームされたメソッド・型に追随する必要があります。標準の `FileAccessProvider`/`FileMemoryProvider` 経由でのみ利用している場合は、ファイル編集ツールが新たに使えるようになる点以外の影響は限定的です。

### [#6861](https://github.com/microsoft/agent-framework/pull/6861) — .NET: Remove Experimental attribute from Skills API in Microsoft.Agents.AI

- 作者: SergeyMenshykh / 状態: MERGED
- ラベル: `.NET`
- 変更行数: +7 / -89
- マージ日時 (UTC): `2026-07-01 17:49:05`

**変更概要**

`Microsoft.Agents.AI` の Skills API（`AgentSkill` / `AgentSkillsProvider` 関連クラス群）から `[Experimental]` 属性を取り除く PR です。これにより Skills API が実験的機能から正式な公開 API へと格上げされ、利用時に `MAAI001` の警告抑制（`#pragma warning disable` や `NoWarn`）が不要になります。サンプルプロジェクト側の抑制設定も、他の実験的機能（`ToolApprovalMode` など）に関する箇所を除いて整理されています。

<details><summary>変更ファイル (35 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step01_FileBasedSkills/Agent_Step01_FileBasedSkills.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step02_CodeDefinedSkills/Agent_Step02_CodeDefinedSkills.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step03_ClassBasedSkills/Agent_Step03_ClassBasedSkills.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step04_MixedSkills/Agent_Step04_MixedSkills.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step05_SkillsWithDI/Agent_Step05_SkillsWithDI.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step06_McpBasedSkills/Agent_Step06_McpBasedSkills.csproj` | 1 | 1 |
| `dotnet/samples/02-agents/AgentSkills/Agent_Step07_SkillsAutoApproval/Agent_Step07_SkillsAutoApproval.csproj` | 1 | 1 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentInMemorySkillsSource.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkill.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillFrontmatter.cs` | 0 | 2 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillResource.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillScript.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProvider.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderBuilder.cs` | 0 | 3 |
| `dotnet/src/Microsoft.Agents.AI/Skills/AgentSkillsProviderOptions.cs` | 0 | 4 |
| _... 他 20 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `9e525dc` .NET: Remove Experimental attribute from Skills API in Microsoft.Agen…
- `bdef791` Restore MAAI001 suppression for Step07 sample (still uses ToolApprova…
- `a1e57a4` Keep bare NoWarn placeholder in Step01 and Step02 samples

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

`AgentSkill` / `AgentSkillFrontmatter` / `AgentSkillResource` / `AgentSkillScript` / `AgentSkillsProvider` / `AgentSkillsProviderBuilder` / `AgentSkillsProviderOptions` などから `[Experimental("MAAI001")]` 属性が削除されました。破壊的変更ではありませんが、Skills API が安定版 API として扱われるようになった点で重要な変更です（Step07 サンプルなど、別の実験的機能 `ToolApprovalMode` を使う箇所の抑制設定は残されています）。

**既存利用者への影響**

Skills API 利用のために `MAAI001` を抑制するコードや `#pragma warning` を書いていた場合、それらを削除して構いません。マイグレーション必須の変更ではなく、コードの整理として任意で対応可能です。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #6853 | .NET: Pin patched OpenAPI dependencies to unblock NU1903 in sample restores | Copilot | <https://github.com/microsoft/agent-framework/pull/6853> |
| #6843 | .NET: Add skill approval options | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6843> |
| #6841 | Python: Update FHA samples after v2 changes | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6841> |
| #6838 | Make skills source classes public with Experimental attribute | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6838> |
| #6827 | .NET: Consolidate skill-source caching and make skill sources disposable | SergeyMenshykh | <https://github.com/microsoft/agent-framework/pull/6827> |
| #6818 | Python: accept A2A data URI media parameters | VectorPeak | <https://github.com/microsoft/agent-framework/pull/6818> |
| #6817 | Python: Allow custom argument parsing for skill scripts | giles17 | <https://github.com/microsoft/agent-framework/pull/6817> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #6871 | .NET: Add defense-in-depth for MCP cross origin request | open | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6871> |
| PR | #6870 | .NET: Foundry Hosting gracefully tolerates lacking user identity when run locally | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/6870> |
| PR | #6869 | .NET: Improving DotNet samples | open | alliscode | <https://github.com/microsoft/agent-framework/pull/6869> |
| PR | #6867 | Python: Allow disabling approval for SkillsProvider tools | open | giles17 | <https://github.com/microsoft/agent-framework/pull/6867> |
| PR | #6862 | Python: Fix Foundry hosted session SDK calls | open | ekkoitac | <https://github.com/microsoft/agent-framework/pull/6862> |
| PR | #6860 | Python: Sample for using WorkIQ MCP server using a gateway for labelling and IFC policy evaluation   | open | shrutitople | <https://github.com/microsoft/agent-framework/pull/6860> |
| PR | #6856 | Python: Fix Hyperlight workspace staging | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6856> |
| PR | #6850 | Python: Add progressive MCP disclosure | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/6850> |
| PR | #6829 | Python: fix(ag-ui): record approval-resolved tool result in MESSAGES_SNAPSHOT | closed | antsok | <https://github.com/microsoft/agent-framework/pull/6829> |
| PR | #6685 | Python: Stop skill discovery below skill boundaries | closed | Lovlace777 | <https://github.com/microsoft/agent-framework/pull/6685> |
| Issue | #6868 | Python: [Bug]: Update opentelemtry-sdk dependency to the latest 1.43.0 | closed | rads-1996 | <https://github.com/microsoft/agent-framework/issues/6868> |
| Issue | #6866 | Python: MAF observability stream wrapper can fail streamed agent execution with ContextVar reset error | open | websterian | <https://github.com/microsoft/agent-framework/issues/6866> |
| Issue | #6865 | [Feature]: Allow switching from provider A to provider B without losing the chat history to the new provider | open | forestmaxime | <https://github.com/microsoft/agent-framework/issues/6865> |
| Issue | #6864 | Python: [Feature]: Pass user identity to the AI Search Provider | open | damienaicheh | <https://github.com/microsoft/agent-framework/issues/6864> |
| Issue | #6863 | [Feature]:  Add Container Apps Dynamic Sessions Sample | open | damienaicheh | <https://github.com/microsoft/agent-framework/issues/6863> |
| Issue | #6857 | Python: [Bug]: FoundryAgent crashes when initializing HostedAgent sessions due to incompatible Azure SDK calls | open | noursf | <https://github.com/microsoft/agent-framework/issues/6857> |
| Issue | #6854 | .NET: Refactor OpenAI Hosting OptionsMapping to disallow passing options by default | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/6854> |
| Issue | #6852 | .NET: dotnet-build blocked by NU1903 advisory on transitive Microsoft.OpenApi 2.0.0 (GHSA-v5pm-xwqc-g5wc) | closed | rogerbarreto | <https://github.com/microsoft/agent-framework/issues/6852> |
| Issue | #6851 | Python: [Bug]: Approval-gated tool (confirm_changes flow) re-executes a second time on a later unrelated turn — duplicate side effect, not just a UI display issue | open | lordlinus | <https://github.com/microsoft/agent-framework/issues/6851> |
| Issue | #6844 | .NET: Allow disabling approval for AgentSkillsProvider tools | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6844> |
| Issue | #6835 | .NET: Remove Experimental attribute from Skills API in Microsoft.Agents.AI | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6835> |
| Issue | #6833 | Make skill source types in Microsoft.Agents.AI public and sealed | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6833> |
| Issue | #6830 | .NET: Consolidate skill-source caching and make skill sources disposable | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6830> |
| Issue | #6820 | Python: Python A2A rejects data URIs with media type parameters | closed | VectorPeak | <https://github.com/microsoft/agent-framework/issues/6820> |
| Issue | #6767 | Python: Extract caching from SkillsProvider into a CachingSkillsSource decorator | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6767> |
| Issue | #6682 | Python: Skill directory search should stop recursing after finding SKILL.md | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6682> |
| Issue | #6543 | Python: Allow custom argument marshaling for skill scripts | closed | SergeyMenshykh | <https://github.com/microsoft/agent-framework/issues/6543> |
