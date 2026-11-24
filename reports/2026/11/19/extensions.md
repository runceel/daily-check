# dotnet/extensions

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 6 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7955](https://github.com/dotnet/extensions/pull/7955) — [release/10.11] Backport Aspire AppHost vulnerability fix （PR / merged / jeffhandley）
  release/10.11のテンプレートを利用・保守する担当者は、Aspire.Hosting.AppHostが13.4.6→13.6.5となり、推移的なHosting・Dashboard・MessagePackの脆弱な依存も更新される点を確認してください。アプリ側への自動適用や配布済みとは断定できません。

## 主要な変更点

- **セキュリティ**: dotnet/extensions#7955はAppHost依存更新をrelease/10.11へバックポートし、既存テンプレートの脆弱性アドバイザリーによるCI失敗にも対応します。
- dotnet/extensions#7936はGenAIテレメトリーでPDFやテキストなど非メディアの`modality`欠落を修正。MIME上位種別の小文字を使い、MIME不明は独自値`unknown`とし、元のデータ・MIME情報は維持します。公開API変更はありません。
- dotnet/extensions#7948はOpenAI SDKを2.14.0→2.15.0へ更新し、Responses・音声認識・音声生成ストリーミングをtaskベースの結果へ適応。アダプター利用者はSDK整合性を確認してください。
- dotnet/extensions#7950は非対応TFMの生成ビルド警告を削除してREADMEのサポート案内へ置き換えます。既存TFMは維持され、.NET Frameworkの公式サポート拡大ではありません。
- dotnet/extensions#7953は評価レポートで古い実行のtranscriptが意図的に保持されていないことを明示。保持数を増やす機能ではありません。
- 新しいdecision clientアダプター案dotnet/extensions#7957、chunkerのOverlapTokens対応dotnet/extensions#7952は未マージで、今後の確認対象です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7951 | Bump microsoft.visualstudio.slngen.tool from 12.0.58 to 13.0.3 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7951> |
| PR | #7936 | Fix missing GenAI modality for non-media content parts | merged | ganga1980 | <https://github.com/dotnet/extensions/pull/7936> |
| PR | #7950 | [release/10.11] Remove unsupported-TFM package warnings | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7950> |
| PR | #7955 | [release/10.11] Backport Aspire AppHost vulnerability fix | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7955> |
| PR | #7948 | [MEAI] Update OpenAI SDK to 2.15 | merged | rogerbarreto | <https://github.com/dotnet/extensions/pull/7948> |
| PR | #7953 | Explain missing transcripts for older executions in the AI evaluation report | merged | ShmueLior | <https://github.com/dotnet/extensions/pull/7953> |
| PR | #7957 | Add OpenAI decision client adapter | open | luisquintanilla | <https://github.com/dotnet/extensions/pull/7957> |
| PR | #7958 | Bump dotnet-reportgenerator-globaltool from 5.5.12 to 5.6.0 | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7958> |
| PR | #7952 | Honor OverlapTokens in HeaderChunker and SectionChunker | open | ShmueLior | <https://github.com/dotnet/extensions/pull/7952> |
| Issue | #7960 | DataContent rejects RFC 2397 data URIs that give only a charset (data:;charset=utf-8,...) | open | dfedoryshchev | <https://github.com/dotnet/extensions/issues/7960> |
| Issue | #7959 | [API Proposal]: Add ResilienceHandlerContext.EnableReloadsWithMonitor | open | denisbredikhin | <https://github.com/dotnet/extensions/issues/7959> |
| Issue | #7956 | MarkdownReader throws ArgumentNullException on a table with an empty cell | open | duguankui | <https://github.com/dotnet/extensions/issues/7956> |
| Issue | #7954 | [MEAI.OpenAI] OpenAIResponsesChatClient streams reasoning and non-message items with Role=null, merging them into preceding Tool messages ``` | open | seangayler-msft | <https://github.com/dotnet/extensions/issues/7954> |
| Issue | #7759 | dotnet aieval report Cases tab: "No transcript for this case" gives no indication the transcript was intentionally stripped for non-latest executions | closed | jzuras | <https://github.com/dotnet/extensions/issues/7759> |
