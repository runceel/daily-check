# microsoft/aspire *(サマリーモード)*

対象期間: 2026-06-03 01:51:01 〜 2026-06-04 02:26:50 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 14   |
| オープン中の新規 PR     | 33   |
| クローズ (未マージ) PR  | 3    |
| 新規 Issue              | 30   |
| クローズ Issue          | —    |

## 主要な変更点

- **Foundry Local を 1.1.0 にアップグレード** (#17889 merged): AI Foundry Local の統合が最新バージョンに更新。Foundry Local を使う Aspire アプリは参照バージョンを確認。
- **パッチリリース 13.4.2** (#17876 merged): マイナーバグフィックス。本番で Aspire 13.4.x を使用しているプロジェクトは更新を推奨。
- **プロキシレス On-demand エンドポイント割り当て** (#17851, #17859 merged): AppHost でのエンドポイント動的割り当ての改善。`--isolated` フラグ使用時のポート競合問題 (#17872) も Issue として追跡中。
- **永続コンテナのテストカバレッジ追加** (#17871 merged): `PersistentContainer` の統合テストが追加され品質が向上。
- **VS Code 拡張で AppHost 検出が無限の ripgrep プロセスを起動する問題** (#17896 新規 Issue): ネストした git worktree 環境で AppHost 検出の ripgrep が終了せず CPU が飽和する深刻なバグ。VS Code + Aspire 拡張を使う開発者に影響。
- **DevUI アグリゲーターがワークフロートポロジーを表示しない** (#17891 新規 Issue): `Aspire.Hosting.AgentFramework.DevUI` を使っているとバックエンドのワークフロートポロジーが Dashboard に表示されない。agent-framework との統合に影響。

## 変化のあった PR / Issue

| 種別  | 番号  | タイトル                                                              | 状態   | 1 行説明                                     | リンク |
| ----- | ----- | --------------------------------------------------------------------- | ------ | -------------------------------------------- | ------ |
| PR    | #17889 | Upgrade Foundry Local to 1.1.0                                       | MERGED | AI Foundry Local 統合を最新版に更新           | <https://github.com/microsoft/aspire/pull/17889> |
| PR    | #17879 | Refine dynamic endpoint allocation                                    | MERGED | エンドポイント動的割り当ての調整              | <https://github.com/microsoft/aspire/pull/17879> |
| PR    | #17876 | Bump release patch version to 13.4.2                                 | MERGED | パッチバージョン 13.4.2 へのバンプ            | <https://github.com/microsoft/aspire/pull/17876> |
| PR    | #17871 | Add persistent container test coverage                                | MERGED | 永続コンテナのテスト追加                     | <https://github.com/microsoft/aspire/pull/17871> |
| PR    | #17868 | Bump undici to 7.27.0 for Dependabot alerts                          | MERGED | undici の脆弱性対応アップデート               | <https://github.com/microsoft/aspire/pull/17868> |
| PR    | #17862 | Use session working directory in loc-breakdown canvas                 | MERGED | ローカリゼーション分析 canvas の改善          | <https://github.com/microsoft/aspire/pull/17862> |
| PR    | #17859 | [release/13.4] Add proxyless endpoint on-demand allocation            | MERGED | 13.4 ブランチへのバックポート                 | <https://github.com/microsoft/aspire/pull/17859> |
| PR    | #17851 | Add proxyless endpoint on-demand allocation                           | MERGED | プロキシレスエンドポイント割り当ての追加      | <https://github.com/microsoft/aspire/pull/17851> |
| Issue | #17896 | VS Code extension: unbounded ripgrep process spawn (CPU saturation)  | OPEN   | AppHost 検出で ripgrep が終了しない深刻なバグ | <https://github.com/microsoft/aspire/issues/17896> |
| Issue | #17895 | WithTerminal: per-replica terminal hosts all group under single parent | OPEN  | Terminal グループ表示の問題                   | <https://github.com/microsoft/aspire/issues/17895> |
| Issue | #17891 | DevUI aggregator does not surface workflow topology                   | OPEN   | agent-framework 統合での Dashboard 表示不具合 | <https://github.com/microsoft/aspire/issues/17891> |
| Issue | #17888 | AppHost crashes when browser file picker opens with launchBrowser     | OPEN   | Visual Studio でのブラウザファイルピッカー問題 | <https://github.com/microsoft/aspire/issues/17888> |
| Issue | #17880 | Explore shipping Aspire CLI as homebrew-core formula                 | OPEN   | Aspire CLI の Homebrew 配布検討               | <https://github.com/microsoft/aspire/issues/17880> |
| Issue | #17872 | --isolated does not randomize ports, concurrent runs collide          | OPEN   | isolated 実行時のポート競合問題              | <https://github.com/microsoft/aspire/issues/17872> |
| Issue | #17865 | Support for WSLC                                                      | OPEN   | Windows Subsystem for Linux Connect サポート  | <https://github.com/microsoft/aspire/issues/17865> |
| Issue | #17847 | Postgres with PublishAsMigrationBundle fails to publish              | OPEN   | マイグレーションバンドル付き Postgres の発行失敗 | <https://github.com/microsoft/aspire/issues/17847> |