# dotnet/extensions

対象期間: 2026-08-27 01:07:02 〜 2026-08-31 01:17:23 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#7667](https://github.com/dotnet/extensions/pull/7667) — Remove GitHub models provider from project templates （PR / merged / jeffhandley）
 GitHub models provider を前提にプロジェクトテンプレートを生成していた利用者は、テンプレートから該当設定がなくなるため、モデル接続を明示的に構成してください。
- **⚠ セキュリティ** [#7652](https://github.com/dotnet/extensions/pull/7652) — Bump adm-zip and azure-pipelines-task-lib in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript/azure-devops-report/tasks/PublishAIEvaluationReport （PR / merged / dependabot[bot]）
 AI 評価レポートの Azure DevOps タスク利用者は、更新された `adm-zip` と `azure-pipelines-task-lib` を含む成果物へ更新し、依存脆弱性の再スキャンを行ってください。

## 主要な変更点

- プロジェクトテンプレートから GitHub models provider が削除され、生成後のモデル接続設定を利用者側で用意する必要があります。
- Azure DevOps の AI 評価レポートタスクで `adm-zip` と `azure-pipelines-task-lib` が更新されました。
- `OpenAIResponsesChatClient` の画像生成ツールにおける未指定メディア型の例外が継続確認事項です。
- ストリーミングと ExtendedHttpClientLogging の既知問題は Issue がクローズされました。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| Issue | #7721 | OpenAIResponsesChatClient throws ArgumentNullException when HostedImageGenerationTool.MediaType is unspecified | open | SergeyMenshykh | <https://github.com/dotnet/extensions/issues/7721> |
| Issue | #7720 | [MEAI]: NullReferenceException in OpenAIResponsesChatClient streaming when store=false + tool calling | closed | fu2nyy-cloud | <https://github.com/dotnet/extensions/issues/7720> |
| Issue | #6010 | ExtendedHttpClientLogging LogBody cannot read again when using GetAsync and debugger attached | closed | universorum | <https://github.com/dotnet/extensions/issues/6010> |
