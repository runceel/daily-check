# dotnet/extensions

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 15 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 5 |
| 新規 Issue                 | 4 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **非推奨/廃止** [#6594](https://github.com/dotnet/extensions/issues/6594) — [API Proposal]: Obsolete HybridCache compression options （Issue / open / slang25）
  HybridCache の圧縮オプションを利用する開発者は、非推奨化の対象 API と代替設定の方針を確認してください。

## 主要な変更点

- HybridCache の圧縮オプションに非推奨化提案があり、利用者は API の今後の扱いを確認する必要があります。
- DNS SRV プロバイダーの query suffix 無視、HTTP client ロギング設定のバインド不具合が修正されました。
- 未知のルートに対する送信パスの秘匿、デバッガー下のレスポンス本文ログ、生成ログの状態管理が改善されています。
- MCP サーバープロジェクトテンプレートの削除や、拡張可能な chat client routing の追加など、開発基盤の整理が進みました。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7692 | Optionally allow official builds to publish VSIX extension. | merged | peterwald | <https://github.com/dotnet/extensions/pull/7692> |
| PR | #7690 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7690> |
| PR | #7688 | Fix DNS SRV provider ignoring query suffix | merged | Rimobul | <https://github.com/dotnet/extensions/pull/7688> |
| PR | #7691 |  Fix HTTP client logging config binding  | merged | Rimobul | <https://github.com/dotnet/extensions/pull/7691> |
| PR | #7693 | [release-manager] Require package dependency closure for releases | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7693> |
| PR | #7687 | Redact outgoing path when route is unknown | merged | Rimobul | <https://github.com/dotnet/extensions/pull/7687> |
| PR | #7689 | [Microsoft.Gen.Logging] Fully qualify classification types | merged | Rimobul | <https://github.com/dotnet/extensions/pull/7689> |
| PR | #7685 | Pass the request's options to the selected client | merged | joshuajyue | <https://github.com/dotnet/extensions/pull/7685> |
| PR | #7682 | [Microsoft.Gen.Logging] Clear thread-local state when logging throws | merged | Rimobul | <https://github.com/dotnet/extensions/pull/7682> |
| PR | #7644 | [main] Update dependencies from dotnet/arcade | merged | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7644> |
| PR | #7680 | Remove MCP server project template | merged | jeffhandley | <https://github.com/dotnet/extensions/pull/7680> |
| PR | #7662 | Add extensible chat client routing | merged | joshuajyue | <https://github.com/dotnet/extensions/pull/7662> |
| PR | #7678 | Fix response body logging under debugger | merged | Rimobul | <https://github.com/dotnet/extensions/pull/7678> |
| PR | #7677 | AI.Abstractions: fix ExcludeFromSchema dropped under concurrent AIFunction creation | merged | jozkee | <https://github.com/dotnet/extensions/pull/7677> |
| PR | #7650 | Bump PowerShell from 7.6.3 to 7.6.4 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7650> |
| PR | #7684 | Add a routing context factory for request-scoped policy state | closed | joshuajyue | <https://github.com/dotnet/extensions/pull/7684> |
| PR | #7696 | Update version to 10.10.0 | open | jeffhandley | <https://github.com/dotnet/extensions/pull/7696> |
| PR | #7695 | Add TfxInstaller for publishing | open | peterwald | <https://github.com/dotnet/extensions/pull/7695> |
| PR | #7694 | Fix source indexer stage | open | jjonescz | <https://github.com/dotnet/extensions/pull/7694> |
| PR | #7681 | Allow strong-typed metrics with 30+ tags | open | adhikareeprayush | <https://github.com/dotnet/extensions/pull/7681> |
| PR | #7676 | Add CCKR adaptive log reservoir sampler to Microsoft.Extensions.Telem… | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7676> |
| Issue | #7686 | [API Proposal]: Sliding-window retry budget and selectable defaults for the standard HTTP resilience handler | open | Alejon | <https://github.com/dotnet/extensions/issues/7686> |
| Issue | #7683 | [API Proposal]: Allow `HybridCache.SetAsync` to propagate L2 write failures | open | samyonr | <https://github.com/dotnet/extensions/issues/7683> |
| Issue | #7679 | OpenAIResponsesChatClient drops content-level RawRepresentation for System and Developer messages | open | TheGrayFrost | <https://github.com/dotnet/extensions/issues/7679> |
| Issue | #7675 | AIFunctionFactory: ExcludeFromSchema is dropped under concurrent first-time creation (ParameterInfo reference-keyed cache race) | closed | jredgard | <https://github.com/dotnet/extensions/issues/7675> |
| Issue | #7175 | Microsoft.Extensions.ServiceDiscovery.Dns doesn't respect QuerySuffix generated from k8s namespace | closed | vermilion | <https://github.com/dotnet/extensions/issues/7175> |
| Issue | #7551 | AddExtendedHttpClientLogging(configurationSection) fails with the documented appsettings.json sample for RequestHeadersDataClasses | closed | Marcus-Kanon | <https://github.com/dotnet/extensions/issues/7551> |
| Issue | #7536 | HttpClient outgoing logging: default-filled RequestMetadata yields path="unknown" instead of "REDACTED" | closed | ssmelov | <https://github.com/dotnet/extensions/issues/7536> |
| Issue | #7157 | Redaction LoggerMessage generator fails when classification namespace requires global:: | closed | dmeeze | <https://github.com/dotnet/extensions/issues/7157> |
| Issue | #7634 | Microsoft.Gen.Logging  does not clear  ThreadLocalState  when  ILogger.Log  throws | closed | jboelter | <https://github.com/dotnet/extensions/issues/7634> |
| Issue | #7647 | [API Proposal]: Add extensible request routing for IChatClient | closed | joshuajyue | <https://github.com/dotnet/extensions/issues/7647> |
| Issue | #7649 | InvalidOperationException while using AddExtendedHttpClientLogging | closed | viorelbuligadev | <https://github.com/dotnet/extensions/issues/7649> |
