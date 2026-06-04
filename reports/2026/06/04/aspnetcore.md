# dotnet/aspnetcore *(サマリーモード)*

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 14   |
| オープン中の新規 PR     | 32   |
| クローズ (未マージ) PR  | 4    |
| 新規 Issue              | 30   |
| クローズ Issue          | —    |

## 主要な変更点

- **dotnet-user-jwts に `--file` オプション追加** (#66919 merged): ファイルベースのアプリ向けに JWT の発行ができるよう `dotnet-user-jwts` ツールを拡張。Minimal API ベースのファイルアプリを使う開発者が対象。
- **Microsoft.OpenApi を 3.6.0 に更新** (#66998 merged): OpenAPI スキーマ生成の最新ライブラリバージョンを取り込み。OpenAPI ドキュメントを生成するアプリへの影響を確認推奨。
- **Server Virtualization テストの安定化** (#66893 merged): `AnchorMode` 関連のフレーキーな E2E テストを安定化。CI の信頼性が向上。
- **ValidationContext.ObjectInstance の回帰バグ報告** (#67004 新規 Issue): .NET 10 で検証属性に渡される `ValidationContext` が常にルート型を `ObjectInstance` として持つ問題。Blazor および Minimal API に影響する可能性がある。
- **OpenAPI 関連の Issue が引き続き活発**: anyOf スキーマ生成 (#66544)・TypedResults との不整合 (#66890)・Enum description の欠落 (#65067) など多数の Issue が継続中。

## 変化のあった PR / Issue

| 種別  | 番号  | タイトル                                                         | 状態   | 1 行説明 | リンク |
| ----- | ----- | ---------------------------------------------------------------- | ------ | -------- | ------ |
| PR    | #66998 | Update Microsoft.OpenApi to 3.6.0                               | MERGED | OpenAPI ライブラリの最新版を取り込み | <https://github.com/dotnet/aspnetcore/pull/66998> |
| PR    | #66971 | [test-quarantine] Quarantine flaky E2E tests                    | MERGED | 不安定な E2E テストを Quarantine に移動 | <https://github.com/dotnet/aspnetcore/pull/66971> |
| PR    | #66963 | [release/10.0] Source code updates from dotnet/dotnet           | MERGED | dotnet/dotnet からのソース同期 | <https://github.com/dotnet/aspnetcore/pull/66963> |
| PR    | #66962 | Localized file check-in by OneLocBuild                          | MERGED | ローカライズファイルの自動更新 | <https://github.com/dotnet/aspnetcore/pull/66962> |
| PR    | #66948 | [main] Update dependencies from dnceng/internal/dotnet-optimization | MERGED | 最適化依存関係の更新 | <https://github.com/dotnet/aspnetcore/pull/66948> |
| PR    | #66919 | Add dotnet-user-jwts --file support                             | MERGED | ファイルベースアプリ向け JWT ツール対応 | <https://github.com/dotnet/aspnetcore/pull/66919> |
| PR    | #66893 | Stabilize flaky VirtualizationTest AnchorMode tests             | MERGED | Server Virtualization テストの安定化 | <https://github.com/dotnet/aspnetcore/pull/66893> |
| Issue | #67004 | ValidationContext ObjectInstance regression                     | OPEN   | .NET 10 での ValidationContext 回帰バグ | <https://github.com/dotnet/aspnetcore/issues/67004> |
| Issue | #67003 | .NET 10 regression in publishing extra files                    | OPEN   | 追加ファイルのパブリッシュ回帰 | <https://github.com/dotnet/aspnetcore/issues/67003> |
| Issue | #66995 | Let calling code populate ValidationContext.Items               | OPEN   | Blazor/Minimal API での ValidationContext.Items 制御 | <https://github.com/dotnet/aspnetcore/issues/66995> |
| Issue | #66978 | MSAL Authentication Issue in Blazor WebAssembly 10.0.8         | OPEN   | 10.0.8 アップグレード後の MSAL 認証問題 | <https://github.com/dotnet/aspnetcore/issues/66978> |
| Issue | #66920 | Add support to dotnet-user-jwts for file-based apps             | OPEN   | #66919 の追跡 Issue | <https://github.com/dotnet/aspnetcore/issues/66920> |
| Issue | #66890 | Inconsistent OpenAPI responses with TypedResults                | OPEN   | TypedResults/Minimal API での OpenAPI 応答の不整合 | <https://github.com/dotnet/aspnetcore/issues/66890> |