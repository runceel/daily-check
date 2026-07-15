# microsoft/agent-framework *(詳細モード)*

対象期間: 2026-07-14 01:26:38 〜 2026-07-15 04:59:27 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 22 |
| オープン中の新規 PR     | 15 |
| クローズ (未マージ) PR  | 10 |
| 新規 Issue              | 6 |
| クローズ Issue          | 13 |
| 主要コントリビューター  | moonbox3, westey-m, giles17, t-anjan, ghominejad, eavanvalkenburg |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7120](https://github.com/microsoft/agent-framework/pull/7120) — Python: [BREAKING] Graduate create_harness_agent out of experimental （PR / open / westey-m）
  実験段階を外れる API のため、Python 利用者は署名・既定動作を確認してから追随してください。
- **⚠ 破壊的変更** [#7119](https://github.com/microsoft/agent-framework/pull/7119) — .NET: [BREAKING] Graduate HarnessAgent （PR / open / westey-m）
  .NET 利用者は HarnessAgent の公開 API とオプション変更を確認し、既存コードのコンパイル結果を確認してください。
- **⚠ 破壊的変更** [#7114](https://github.com/microsoft/agent-framework/pull/7114) — .NET: [BREAKING] Graduate FileMemoryProvider （PR / open / westey-m）
  FileMemoryProvider の安定版昇格に伴う契約変更を確認し、利用中の初期化コードを見直してください。
- **⚠ 破壊的変更** [#7113](https://github.com/microsoft/agent-framework/pull/7113) — Python: [BREAKING] Graduate file memory provider out of experimental （PR / open / westey-m）
  Python 利用者は file memory provider の新しい公開 API と既定値を確認してください。
- **⚠ 破壊的変更** [#7107](https://github.com/microsoft/agent-framework/pull/7107) — .NET: [BREAKING] Graduate ToolApprovalAgent and add ToolAutoApprovalRuleContext （PR / open / westey-m）
  ToolApprovalAgent と自動承認コンテキストの公開形を確認し、承認フローのテストを更新してください。
- **⚠ 破壊的変更** [#7106](https://github.com/microsoft/agent-framework/pull/7106) — Python: [BREAKING] Graduate tool approval middleware out of experimental （PR / merged / westey-m）
  マージ済みのため、Python の tool approval middleware 利用者は安定版 API への移行差分を確認してください。
- **⚠ 破壊的変更** [#7094](https://github.com/microsoft/agent-framework/pull/7094) — Python: [BREAKING] Harness: Switch FileAccess to opt-in （PR / merged / westey-m）
  FileAccess が opt-in になったため、ファイル操作を必要とする Harness 利用者は明示的に有効化してください。
- **⚠ 破壊的変更** [#7093](https://github.com/microsoft/agent-framework/pull/7093) — .NET: [BREAKING] Harness: Switch FileAccess to opt-in （PR / merged / westey-m）
  .NET の Harness 利用者も FileAccess の明示的な opt-in が必要です。サンプルと設定を更新してください。

## このリポジトリの要点

Harness、FileMemoryProvider、tool approval middleware の実験段階終了に伴う API 契約変更が集中しています。特に FileAccess の opt-in 化は既存の Harness 利用コードに影響します。AG-UI の handoff replay 修正や Foundry Toolbox サンプルの自己完結化もマージされました。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#7106](https://github.com/microsoft/agent-framework/pull/7106) — Python: [BREAKING] Graduate tool approval middleware out of experimental

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +1 / -5
- マージ日時 (UTC): `2026-07-14 11:20:03`

**変更概要**

tool approval middleware を実験段階から正式 API として扱うため、内部実装とドキュメント上の位置付けを整理しました。変更は Python の Harness 周辺に限定されています。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_tool_approval.py` | 0 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `7d1a189` Gradudate ToolApprovalMiddleware

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

実験 API の昇格に伴い、内部の実験扱いを示す記述が削除されています。⚠ 利用者は正式 API の名称・公開範囲を確認してください。

**既存利用者への影響**

既存の動作を直ちに変更する内容ではありませんが、実験 API に依存している場合は正式 API への参照へ更新してください。

### [#7094](https://github.com/microsoft/agent-framework/pull/7094) — Python: [BREAKING] Harness: Switch FileAccess to opt-in

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `python` `breaking change`
- 変更行数: +36 / -42
- マージ日時 (UTC): `2026-07-14 02:32:08`

**変更概要**

Harness の FileAccessProvider を既定で無効にし、必要な場合だけ明示的に有効化する方式へ変更しました。Python 側の実装・型定義・テストとサンプルが更新されています。意図しないファイルアクセスを防ぐ安全側の変更です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/core/AGENTS.md` | 1 | 1 |
| `python/packages/core/agent_framework/_harness/_agent.py` | 13 | 18 |
| `python/packages/core/agent_framework/_harness/_agent.pyi` | 0 | 1 |
| `python/packages/core/tests/core/test_harness_agent.py` | 20 | 20 |
| `python/samples/02-agents/harness/build_your_own_claw/README.md` | 2 | 2 |

</details>

<details><summary>コミット (1 件)</summary>

- `5e3150a` Switch FileAcessProvider on Harness to opt-in

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

FileAccessProvider の既定値が opt-in に変わり、暗黙にファイルアクセスを許可していた構成は動作しなくなります。⚠ これは既存利用者に影響する破壊的変更です。

**既存利用者への影響**

ファイル操作を使う Harness は FileAccessProvider を明示設定してください。ファイル操作を使わない利用者の移行は不要です。

### [#7093](https://github.com/microsoft/agent-framework/pull/7093) — .NET: [BREAKING] Harness: Switch FileAccess to opt-in

- 作者: westey-m / 状態: MERGED
- ラベル: `documentation` `.NET` `breaking change`
- 変更行数: +72 / -42
- マージ日時 (UTC): `2026-07-14 07:23:18`

**変更概要**

 .NET HarnessAgent でも FileAccessProvider を opt-in に統一しました。オプション、サンプル、単体テストを新しい既定動作に合わせています。安全性を高める一方、暗黙のファイルアクセスには影響します。

<details><summary>変更ファイル (10 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `dotnet/samples/02-agents/Harness/Harness_Step01_Research/Program.cs` | 0 | 1 |
| `dotnet/samples/02-agents/Harness/Harness_Step02_Research_WithBackgroundAgents/Program.cs` | 0 | 2 |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/Program.cs` | 3 | 3 |
| `dotnet/samples/02-agents/Harness/Harness_Step03_DataProcessing/README.md` | 2 | 2 |
| `dotnet/samples/02-agents/Harness/Harness_Step04_CodeExecution/Program.cs` | 5 | 2 |
| `dotnet/samples/02-agents/Harness/Harness_Step05_Loop/Program.cs` | 0 | 1 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgent.cs` | 3 | 7 |
| `dotnet/src/Microsoft.Agents.AI.Harness/HarnessAgentOptions.cs` | 10 | 10 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentOptionsTests.cs` | 4 | 3 |
| `dotnet/tests/Microsoft.Agents.AI.Harness.UnitTests/HarnessAgentTests.cs` | 45 | 11 |

</details>

<details><summary>コミット (4 件)</summary>

- `3813820` Switch FileAcessProvider on Harness to opt-in
- `5f010d5` Address PR comment
- `d095c37` Merge branch 'main' into dotnet-harness-fileprovider-opt-in
- `b79f335` Merge branch 'main' into dotnet-harness-fileprovider-opt-in

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

HarnessAgentOptions の FileAccessProvider 関連設定とサンプル呼び出しが変更されています。⚠ .NET 側でもファイルアクセスの opt-in 化が破壊的変更です。

**既存利用者への影響**

既存の Harness でファイルアクセスを利用する場合は、対応するオプションを明示してください。利用しない場合は変更不要です。

### [#7103](https://github.com/microsoft/agent-framework/pull/7103) — Python: .NET: Consolidate Dependabot dependency updates

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python` `.NET`
- 変更行数: +21 / -21
- マージ日時 (UTC): `2026-07-14 09:32:37`

**変更概要**

Python と .NET の依存関係および CI アクションを更新しました。Anthropic、Foundry、CodeQL などのバージョンを引き上げ、ビルド・テスト基盤を最新化しています。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/actions/python-setup/action.yml` | 1 | 1 |
| `.github/workflows/codeql-analysis.yml` | 3 | 3 |
| `.github/workflows/devflow-pr-review.yml` | 1 | 1 |
| `.github/workflows/dotnet-build-and-test.yml` | 3 | 3 |
| `.github/workflows/issue-triage.yml` | 1 | 1 |
| `.github/workflows/python-docs.yml` | 1 | 1 |
| `.github/workflows/python-integration-tests.yml` | 2 | 2 |
| `.github/workflows/python-lab-tests.yml` | 1 | 1 |
| `.github/workflows/python-merge-tests.yml` | 3 | 3 |
| `.github/workflows/python-release.yml` | 1 | 1 |
| `.github/workflows/python-sample-validation.yml` | 2 | 2 |
| `dotnet/Directory.Packages.props` | 2 | 2 |

</details>

<details><summary>コミット (9 件)</summary>

- `7c2e9f2` Bump Anthropic from 12.31.0 to 12.35.1
- `636e132` #7070 Bump Anthropic.Foundry from 0.6.0 to 0.7.1
- `8ba91c6` Bump astral-sh/setup-uv from 7.6.0 to 8.3.2
- `b65305e` Bump actions/cache/save from 5.0.5 to 6.1.0
- `68cce74` Bump github/codeql-action/analyze from 4.35.5 to 4.37.0
- `2327357` Bump softprops/action-gh-release from 2.6.2 to 3.0.1
- `b074aa6` Bump dorny/paths-filter from 4.0.1 to 4.0.2
- `ac62453` Bump astral-sh/setup-uv in /.github/actions/python-setup
- _... 他 1 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

アプリケーション API の変更ではなく、パッケージと GitHub Actions のバージョン更新です。依存先の変更による互換性だけを CI で確認します。

**既存利用者への影響**

通常の利用者に移行作業はありません。固定バージョンを社内で管理している場合は更新後の依存関係を確認してください。

### [#7102](https://github.com/microsoft/agent-framework/pull/7102) — Python: Fix AG-UI workflow handoff replay results

- 作者: moonbox3 / 状態: MERGED
- ラベル: `python` `ag-ui`
- 変更行数: +367 / -6
- マージ日時 (UTC): `2026-07-14 09:34:02`

**変更概要**

AG-UI の workflow handoff で replay 結果が重複・欠落する問題を修正しました。tool result の確定状態とテキスト出力制御を保持し、回帰テストを追加しています。AG-UI のストリーミング利用が対象です。

<details><summary>変更ファイル (3 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/ag-ui/agent_framework_ag_ui/_workflow_run.py` | 40 | 4 |
| `python/packages/ag-ui/tests/ag_ui/test_handoff_replay.py` | 173 | 0 |
| `python/packages/ag-ui/tests/ag_ui/test_workflow_run.py` | 154 | 2 |

</details>

<details><summary>コミット (4 件)</summary>

- `4cf423c` Fix AG-UI workflow handoff replay results
- `300a793` Prevent duplicate AG-UI workflow tool results
- `d5ca980` Preserve finalized AG-UI tool results
- `25488ba` Use AG-UI text emission controls

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

handoff replay 時の tool result 集約と finalized result の保持ロジックが変更されています。外部 API の新設ではなく、重複結果を抑制する互換性修正です。

**既存利用者への影響**

AG-UI 利用者は更新後に replay とストリーミングの統合テストを実行してください。通常の呼び出し側に移行作業はありません。

### [#7099](https://github.com/microsoft/agent-framework/pull/7099) — Python: Make foundry toolbox MCP skills sample self-contained

- 作者: giles17 / 状態: MERGED
- ラベル: `documentation` `python`
- 変更行数: +299 / -48
- マージ日時 (UTC): `2026-07-14 17:07:39`

**変更概要**

Foundry Toolbox の MCP skills サンプルを単独で実行できる構成に整理しました。環境ファイル、マニフェスト、スキル定義、README とテストを追加・更新しています。サンプル利用者のセットアップ手順が明確になります。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `python/packages/foundry_hosting/agent_framework_foundry_hosting/_toolbox.py` | 21 | 1 |
| `python/packages/foundry_hosting/tests/test_toolbox.py` | 29 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/.azdignore` | 6 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/.dockerignore` | 2 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/.env.example` | 4 | 1 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/README.md` | 110 | 35 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/agent.manifest.yaml` | 8 | 7 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/agent.yaml` | 8 | 2 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/main.py` | 5 | 2 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/skills/escalation-policy/SKILL.md` | 47 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/skills/support-style/SKILL.md` | 25 | 0 |
| `python/samples/04-hosting/foundry-hosted-agents/responses/12_foundry_toolbox_mcp_skills/toolbox.yaml` | 34 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `ef2c51a` Python: Make foundry toolbox MCP skills sample self-contained
- `9006f0a` Merge branch 'main' into toolbox-mcp-skills-selfcontained
- `78f2d92` Python: Address PR review on toolbox MCP skills sample

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

toolbox のスキルプロバイダーとサンプルの manifest/configuration が自己完結するよう変更されています。製品 API の破壊的変更は確認できません。

**既存利用者への影響**

既存アプリの移行は不要です。サンプルを利用する場合は新しい `.env.example` と README の手順に合わせて設定してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #7098 | Update issue triage | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7098> |
| #7090 | Python: Add name collision warnings for auto-approvals | westey-m | <https://github.com/microsoft/agent-framework/pull/7090> |
| #7089 | .NET: Add name collision warnings for auto-approvals | westey-m | <https://github.com/microsoft/agent-framework/pull/7089> |
| #7085 | fix typos in XML doc comments, ADR docs, and test comments | rinceyuan | <https://github.com/microsoft/agent-framework/pull/7085> |
| #7084 | Python: bridge AG-UI request state and session continuity | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7084> |
| #7083 | Python: Refine DevUI request logging | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7083> |
| #7060 | Python: fix per-run additional_beta_flags leaking into Anthropic request kwargs | albatrossflyon-coder | <https://github.com/microsoft/agent-framework/pull/7060> |
| #7047 | Python: Add Telegram hosting helpers and samples | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7047> |
| #7041 | Python: feat: cross-session origin attribution on context messages | moonbox3 | <https://github.com/microsoft/agent-framework/pull/7041> |
| #7034 | Python: quiet A2AExecutor logging for unmapped content types | giles17 | <https://github.com/microsoft/agent-framework/pull/7034> |
| #6999 | .NET: Update Microsoft Foundry branding | nicholasdbrady | <https://github.com/microsoft/agent-framework/pull/6999> |
| #6990 | Python: Fix structured value parsing for split text chunks | t-anjan | <https://github.com/microsoft/agent-framework/pull/6990> |
| #6884 | Python: Clarify require_confirmation docstring to reflect confirm_changes HITL gating | Serjbory | <https://github.com/microsoft/agent-framework/pull/6884> |
| #6809 | Python: fix: preserve function-call name when merging streaming deltas | Osamaali313 | <https://github.com/microsoft/agent-framework/pull/6809> |
| #6579 | Python: adjust checkpoint encoding handling | moonbox3 | <https://github.com/microsoft/agent-framework/pull/6579> |
| #6297 | Python: Fix Magentic manager duplicating conversation history | ghominejad | <https://github.com/microsoft/agent-framework/pull/6297> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7124 | Python: fix compaction token count inflating non-ASCII text | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7124> |
| PR | #7123 | Fix message ordering in workflow-hosted agents | open | peibekwe | <https://github.com/microsoft/agent-framework/pull/7123> |
| PR | #7122 | Python: Hosted LRA draft updates | open | alliscode | <https://github.com/microsoft/agent-framework/pull/7122> |
| PR | #7121 | Python: Support archive-type MCP skills (source, toolbox, sample) | open | giles17 | <https://github.com/microsoft/agent-framework/pull/7121> |
| PR | #7120 | Python: [BREAKING] Graduate create_harness_agent out of experimental | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7120> |
| PR | #7119 | .NET: [BREAKING] Graduate HarnessAgent | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7119> |
| PR | #7116 | Python: Add spend preflight receipt middleware sample | open | jw-ond | <https://github.com/microsoft/agent-framework/pull/7116> |
| PR | #7114 | .NET: [BREAKING] Graduate FileMemoryProvider | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7114> |
| PR | #7113 | Python: [BREAKING] Graduate file memory provider out of experimental | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7113> |
| PR | #7111 | .NET: Bind tool-approval responses to surfaced approval requests | open | rogerbarreto | <https://github.com/microsoft/agent-framework/pull/7111> |
| PR | #7110 | Python: Fix duplicate arguments in declaration-only tool streaming | open | kartikmadan11 | <https://github.com/microsoft/agent-framework/pull/7110> |
| PR | #7108 | Python: preserve explicit null arguments in auto function calling | open | he-yufeng | <https://github.com/microsoft/agent-framework/pull/7108> |
| PR | #7107 | .NET: [BREAKING] Graduate ToolApprovalAgent and add ToolAutoApprovalRuleContext | open | westey-m | <https://github.com/microsoft/agent-framework/pull/7107> |
| PR | #7105 | Python: Normalize chat finish reasons | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7105> |
| PR | #7104 | Python: docs: add self-hosting sample snippets | open | eavanvalkenburg | <https://github.com/microsoft/agent-framework/pull/7104> |
| PR | #7077 | Bump astral-sh/setup-uv from 6.8.0 to 8.3.2 in /.github/actions/python-setup | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7077> |
| PR | #7076 | Bump dorny/paths-filter from 4.0.1 to 4.0.2 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7076> |
| PR | #7075 | Bump softprops/action-gh-release from 2.6.2 to 3.0.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7075> |
| PR | #7074 | Bump github/codeql-action/analyze from 4.35.5 to 4.37.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7074> |
| PR | #7073 | Bump actions/cache/save from 5.0.5 to 6.1.0 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7073> |
| PR | #7072 | Bump astral-sh/setup-uv from 7.6.0 to 8.3.2 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7072> |
| PR | #7070 | Bump Anthropic.Foundry from 0.6.0 to 0.7.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7070> |
| PR | #7069 | Bump Anthropic from 12.31.0 to 12.35.1 | closed | dependabot[bot] | <https://github.com/microsoft/agent-framework/pull/7069> |
| PR | #6860 | Python: Sample for using WorkIQ MCP server using a gateway for labelling and IFC policy evaluation   | closed | shrutitople | <https://github.com/microsoft/agent-framework/pull/6860> |
| PR | #6747 | Python: Improve the Python sample validation workflow to increase pass rate | closed | TaoChenOSU | <https://github.com/microsoft/agent-framework/pull/6747> |
| Issue | #7117 | Graduate/Release harness agent | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7117> |
| Issue | #7115 | .NET: Fix FICC Toolcall adjacency bug | open | westey-m | <https://github.com/microsoft/agent-framework/issues/7115> |
| Issue | #7112 | .NET: [Bug]: Microsoft.Agents.AI.Tools.Shell.HeadTailBuffer can reorder and silently drop UTF-8 runes at the head/tail boundary | open | Lightczx | <https://github.com/microsoft/agent-framework/issues/7112> |
| Issue | #7109 | .NET: [Feature]: .NET Improve ChatClientAgentSession constructor | open | Kumima | <https://github.com/microsoft/agent-framework/issues/7109> |
| Issue | #7101 | Python: .NET: [Bug]: Typo in both python and .Net  versions MagEntic | closed | KyleC69 | <https://github.com/microsoft/agent-framework/issues/7101> |
| Issue | #7100 | Python: FoundryToolbox.as_skills_provider() disable_caching is a no-op; toolbox skills re-read every run | open | giles17 | <https://github.com/microsoft/agent-framework/issues/7100> |
| Issue | #7092 | .NET: Harness: Switch FileAccess to opt-in | closed | westey-m | <https://github.com/microsoft/agent-framework/issues/7092> |
| Issue | #7087 | .NET: [Bug]:.NET: [Bug] Visual Studio shows red squiggles for the AIProjectClient Responses API chain while the project reports no build errors | closed | bingbing-gui | <https://github.com/microsoft/agent-framework/issues/7087> |
| Issue | #7086 | Python: Skill provider is asking the approval always when used in the hosted agents. | closed | mohitpavan | <https://github.com/microsoft/agent-framework/issues/7086> |
| Issue | #6982 | Python: [Python]: A2A server omits function_call and function_result content | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6982> |
| Issue | #6981 | Python: [Python]: AG-UI workflow server fails to respond after initial client message | closed | moonbox3 | <https://github.com/microsoft/agent-framework/issues/6981> |
| Issue | #6920 | .NET: Python: [Bug]: AG-UI host builds a fresh AgentSession per request — session-stateful harness features silently lose their state between runs | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6920> |
| Issue | #6881 | Python: [Bug]: `AgentFrameworkAgent(require_confirmation=...)` docstring is misleading — it also gates the `confirm_changes` HITL tool-call emission, not just "predictive updates" | closed | antsok | <https://github.com/microsoft/agent-framework/issues/6881> |
| Issue | #6588 | Python: Add Telegram hosting helpers and local samples | closed | eavanvalkenburg | <https://github.com/microsoft/agent-framework/issues/6588> |
| Issue | #6298 | Python: [Bug]: Magentic manager duplicates conversation history on every model call | closed | ghominejad | <https://github.com/microsoft/agent-framework/issues/6298> |
| Issue | #5914 | Python: Expose cross-session memory origin for downstream governance (Dai et al., arXiv:2605.06158) | closed | finnoybu | <https://github.com/microsoft/agent-framework/issues/5914> |
| Issue | #5764 | Python Anthropic: per-run additional_beta_flags leaks into request kwargs | closed | rg-ve | <https://github.com/microsoft/agent-framework/issues/5764> |
| Issue | #5197 | Python: [Bug]: The current implementation of AG-UI fails to pass the state to AgentSession. | closed | lixiaoqiang | <https://github.com/microsoft/agent-framework/issues/5197> |
