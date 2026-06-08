# dotnet/aspnetcore

対象期間: 2026-06-05 04:03:36 〜 2026-06-08 01:26:03 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 10 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 10 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 6 |

## ⚠ 重要な変更（要確認）

- **⚠ セキュリティ** [#66071](https://github.com/dotnet/aspnetcore/issues/66071) — Prototype Pollution Vulnerabilities in @middy/util （Issue / open / dfzysmy2tf-create）
  外部ライブラリ `@middy/util` のプロトタイプ汚染脆弱性で、aspnetcore の Node.js ツールチェーン等で同パッケージを使用している場合は影響を確認してください。

## 主要な変更点

- **Fetch Metadata CSRF アルゴリズムのマージ** ([#66585](https://github.com/dotnet/aspnetcore/pull/66585)): Fetch Metadata リクエストヘッダーを活用した新しい CSRF 保護アルゴリズムが実装・マージされた。セキュリティ強化の重要な変更。
- **Problem Details ケーシング修正のリバート** ([#67011](https://github.com/dotnet/aspnetcore/pull/67011)): 以前マージされた Problem Details のキャメルケース修正（#59396）がリバートされた。この修正に依存していた場合は動作変化に注意が必要。
- **セキュリティ懸念**: Issue#66071 で `@middy/util` のプロトタイプ汚染脆弱性が報告されているが、aspnetcore 本体への直接的な影響は低い。関連ツールチェーンを利用する場合は確認を推奨。
- **CI/CD 依存関係の更新**: `actions/checkout`、`github/gh-aw-actions`、Arcade、googletest 等のインフラ依存ライブラリが Dependabot により一括更新された。
- **Cookie 認証のセッションキークリア** ([#67049](https://github.com/dotnet/aspnetcore/pull/67049)): サインアウト時にキャッシュされたセッションキーをクリアする修正がオープン中。セキュリティ挙動の改善として注目。
- **QuickGrid の機能拡張提案**: `RowDetailsTemplate` サポート（#67044）やカスタム比較器によるソート（#67035）等の PR がオープン中。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #67047 | Cap helix log extraction in test-quarantine workflow | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67047> |
| PR | #67046 | Remove auto-milestoning from policybot | merged | wtgodbe | <https://github.com/dotnet/aspnetcore/pull/67046> |
| PR | #67042 | [main] (deps): Bump dotnet/arcade/.github/workflows/backport-base.yml from 73c171098ac0a21b73f483d3932b7643852d7a6b to afe56bd10aa3b519aeeddf51ab70ccd1c84d4dab | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67042> |
| PR | #67041 | [main] (deps): Bump dotnet/arcade/.github/workflows/inter-branch-merge-base.yml from 73c171098ac0a21b73f483d3932b7643852d7a6b to afe56bd10aa3b519aeeddf51ab70ccd1c84d4dab | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67041> |
| PR | #67040 | [main] (deps): Bump actions/checkout from 6.0.2 to 6.0.3 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67040> |
| PR | #67039 | [main] (deps): Bump github/gh-aw-actions from 0.77.5 to 0.78.1 | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67039> |
| PR | #67038 | [main] (deps): Bump src/submodules/googletest from `add971c` to `7140cd4` | merged | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/67038> |
| PR | #67024 | [main] Source code updates from dotnet/dotnet | merged | dotnet-maestro[bot] | <https://github.com/dotnet/aspnetcore/pull/67024> |
| PR | #67011 | Revert "Fixes Problem Details casing bug (#59396)" | merged | Youssef1313 | <https://github.com/dotnet/aspnetcore/pull/67011> |
| PR | #66585 | Implement Cross-Site Request Forgery Algorithm based on Fetch Metadata headers | merged | DeagleGross | <https://github.com/dotnet/aspnetcore/pull/66585> |
| PR | #67034 | Honor validation attributes for null endpoint parameters | closed | Copilot | <https://github.com/dotnet/aspnetcore/pull/67034> |
| PR | #67014 | test(InputText): Enhance test coverage for Forms.InputText component | closed | MohamedFasulAshab | <https://github.com/dotnet/aspnetcore/pull/67014> |
| PR | #66923 | fix(JSInterop): improve error message for sync invocation of async methods | closed | EduardF1 | <https://github.com/dotnet/aspnetcore/pull/66923> |
| PR | #66907 | [main] (deps): Bump src/submodules/googletest from `add971c` to `8736d2c` | closed | dependabot[bot] | <https://github.com/dotnet/aspnetcore/pull/66907> |
| PR | #67055 | Fix DefaultApiProblemDetailsWriter CanWrite/WriteAsync metadata mismatch (#67053) | open | xavierjohn | <https://github.com/dotnet/aspnetcore/pull/67055> |
| PR | #67051 | [release/10.0] feat(openapi): support Description Attribute on Nullable enums | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/pull/67051> |
| PR | #67049 | Clear cached session key in cookie auth handler sign-out | open | halter73 | <https://github.com/dotnet/aspnetcore/pull/67049> |
| PR | #67048 | Align gateway and templates with Aspire implementation | open | javiercn | <https://github.com/dotnet/aspnetcore/pull/67048> |
| PR | #67045 | Apply API changes for `RequestCircuitPauseAsync` | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67045> |
| PR | #67044 | Provide the RowDetailsTemplate support to QuickGrid component | open | Yuvan111 | <https://github.com/dotnet/aspnetcore/pull/67044> |
| PR | #67037 | Apply API changes for Label and DisplayName | open | ilonatommy | <https://github.com/dotnet/aspnetcore/pull/67037> |
| PR | #67035 | Provide custom comparer support for in-memory QuickGrid sorting | open | VigneshwaranGovindharajan | <https://github.com/dotnet/aspnetcore/pull/67035> |
| PR | #67031 | 1031631: Improved test cases coverage for the InputHidden component in Blazor | open | BhaskarSuresh22 | <https://github.com/dotnet/aspnetcore/pull/67031> |
| PR | #67030 | 1031437: Improved InputFile TestCoverage in Blazor | open | MohamedHasan3644 | <https://github.com/dotnet/aspnetcore/pull/67030> |
| Issue | #67054 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67054> |
| Issue | #67053 | DefaultApiProblemDetailsWriter: CanWrite/WriteAsync metadata mismatch silently drops bodies for controllers without [ApiController] | open | xavierjohn | <https://github.com/dotnet/aspnetcore/issues/67053> |
| Issue | #67052 | Hot reload crash when add new file to wwwroot | open | keatkeat87 | <https://github.com/dotnet/aspnetcore/issues/67052> |
| Issue | #67050 | Does @microsoft/signalr-protocol-msgpack support BigInt type in JavaScript? | open | Broderick890 | <https://github.com/dotnet/aspnetcore/issues/67050> |
| Issue | #67036 | [aw] Daily Test Quarantine Management failed | open | github-actions[bot] | <https://github.com/dotnet/aspnetcore/issues/67036> |
| Issue | #67033 | Validation attributes are ignored for nullable value types when passing a null value | open | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/67033> |
| Issue | #67032 | Blazor WebAssembly app throws CircularDependencyException (ILoggerFactory) when calling AddBlazorClientServiceDefaults() | open | EmilyFeng97 | <https://github.com/dotnet/aspnetcore/issues/67032> |
| Issue | #66991 | [dnceng-bot] Branch `aspnetcore/release/9.0` can't be merged to Azdo internal branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/66991> |
| Issue | #66990 | [dnceng-bot] Branch `aspnetcore/release/8.0` can't be merged to Azdo internal branch | closed | dotnet-maestro-bot | <https://github.com/dotnet/aspnetcore/issues/66990> |
| Issue | #66976 | Update SDK-bundled tools to use aggregate executable shims | closed | DamianEdwards | <https://github.com/dotnet/aspnetcore/issues/66976> |
| Issue | #66603 | Inconsistent handling of traceId serializing when using non camelCase json serialization | closed | Youssef1313 | <https://github.com/dotnet/aspnetcore/issues/66603> |
| Issue | #65543 | IProblemDetailsService does not honor JsonOptions, resulting in mixed naming output | closed | cloudfy | <https://github.com/dotnet/aspnetcore/issues/65543> |
| Issue | #65127 | New Cross-Site Request Forgery Algorithm based on Fetch Metadata headers | closed | DeagleGross | <https://github.com/dotnet/aspnetcore/issues/65127> |
