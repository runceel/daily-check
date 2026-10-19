# dotnet/extensions

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- Microsoft.Extensions.Compliance.Redaction に `netstandard2.0` target を追加し、対象 framework を広げました (#7851)。
- AI template の AppHost が脆弱性警告で restore に失敗する問題に対し、MessagePack 2.5.307 を固定しました (#7853)。
- metric attributes に説明を追加し、全 instruments の説明を整備しました (#7837)。
- 生成ログの data classification 属性が無視され、機密値が平文出力される可能性や、継承プロパティの循環による compiler stack overflow など、Microsoft.Gen.Logging の問題が複数報告されています (#7855–#7858)。該当する生成ログ利用者は修正状況を確認してください。
- `Http.Diagnostics` extension methods の DI 前提サービスを登録する PR #7854 はオープン中です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7851 | Add netstandard2.0 target to Microsoft.Extensions.Compliance.Redaction | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7851> |
| PR | #7853 | Pin MessagePack 2.5.307 in AI template AppHost project | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7853> |
| PR | #7845 | Bump PowerShell from 7.6.6 to 7.6.7 | merged | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7845> |
| PR | #7837 | Add Description to metric attributes and describe all instruments | merged | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7837> |
| PR | #7791 | [main] Update dependencies from dotnet/arcade | closed | dotnet-maestro[bot] | <https://github.com/dotnet/extensions/pull/7791> |
| PR | #7854 | Register DI prerequisites in Http.Diagnostics extension methods | open | evgenyfedorov2 | <https://github.com/dotnet/extensions/pull/7854> |
| Issue | #7858 | [Microsoft.Gen.Logging] [LogProperties(Transitive = true)] crashes the compiler with a stack overflow on a cycle through an inherited property (e.g. a System.Type property) | open | AdCodicem | <https://github.com/dotnet/extensions/issues/7858> |
| Issue | #7857 | [Microsoft.Gen.Logging] A data classification attribute's constructor arguments are dropped: CS7036 in generated code, or the wrong classification | open | AdCodicem | <https://github.com/dotnet/extensions/issues/7857> |
| Issue | #7856 | [Microsoft.Gen.Logging] Expanding a classified property drops its data classification, and Transitive logs [LogPropertyIgnore] properties | open | AdCodicem | <https://github.com/dotnet/extensions/issues/7856> |
| Issue | #7855 | [Microsoft.Gen.Logging] A data classification on a class or struct is ignored when a value of that type is logged, so it is written in clear | open | AdCodicem | <https://github.com/dotnet/extensions/issues/7855> |
| Issue | #7850 | Microsoft.Extensions.Compliance.Redaction doesn't support netstandard2.0 | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/issues/7850> |
| Issue | #7852 | AI template AppHost restore fails with NU1902 for MessagePack 2.5.302 | closed | evgenyfedorov2 | <https://github.com/dotnet/extensions/issues/7852> |
| Issue | #4523 | Specify description for all instruments | closed | xakep139 | <https://github.com/dotnet/extensions/issues/4523> |
