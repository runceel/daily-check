# 差分レポート — 2026-06-23 版 (インデックス)

| 項目 | 値 |
| --- | --- |
| レポート生成日時 (UTC) | `2026-06-23 06:00:53` |
| レポート生成日時 (JST) | `2026-06-23 15:00:53` |
| 前回チェック時刻 (UTC) | `2026-06-20 10:51:22` |
| 対象期間 (UTC) | `2026-06-20 10:51:22 〜 2026-06-23 06:00:53` |

このディレクトリは日別の分割レポートを格納します。以下の単位ファイルを順に参照してください。

| 単位 | ファイル |
| --- | --- |
| Azure 更新 | [azure.md](./azure.md) |
| GitHub Changelog | [github-changelog.md](./github-changelog.md) |
| microsoft/agent-framework | [agent-framework.md](./agent-framework.md) |
| dotnet/aspnetcore | [aspnetcore.md](./aspnetcore.md) |
| Azure/azure-functions-dotnet-worker | [azure-functions-dotnet-worker.md](./azure-functions-dotnet-worker.md) |
| dotnet/extensions | [extensions.md](./extensions.md) |
| runceel/ReactiveProperty | [reactiveproperty.md](./reactiveproperty.md) |
| microsoft/aspire | [aspire.md](./aspire.md) |

## ⚠ 全体の重要な変更（要確認）

GitHub リポジトリ群と Azure / GitHub Changelog のタイトル・ラベルから自動判定した重要変更です。各ファイルで詳細と影響を必ず記述してください（自動判定のため過剰検出あり。無関係な行は削除可）。

| 種別 | ソース | 参照 | タイトル | 状態 |
| ---- | ------ | ---- | -------- | ---- |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6607](https://github.com/microsoft/agent-framework/pull/6607) | Python: [BREAKING] Integrate looping into HarnessAgent | merged |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6599](https://github.com/microsoft/agent-framework/pull/6599) | Python: [BREAKING] Require approval for file-access tools with read-only auto-approval | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6488](https://github.com/microsoft/agent-framework/pull/6488) | Python: [BREAKING] Refactor FileSkillsSource for depth-based discovery and predicate filters | open |
| ⚠ 破壊的変更 | microsoft/agent-framework | [PR#6407](https://github.com/microsoft/agent-framework/pull/6407) | [BREAKING] Python: Add `reset` to workflow | open |
| ⚠ セキュリティ | dotnet/extensions | [PR#7579](https://github.com/dotnet/extensions/pull/7579) | Fix SQLitePCLRaw.lib.e_sqlite3 vulnerability in AI templates | open |
| 非推奨/廃止 | microsoft/aspire | [PR#18404](https://github.com/microsoft/aspire/pull/18404) | Remove obsolete model entries from preview Aspire.Hosting.Foundry package | merged |

## エグゼクティブサマリー

- **Agent Framework の承認・ループ制御変更が継続**: [#6607](https://github.com/microsoft/agent-framework/pull/6607)、[#6599](https://github.com/microsoft/agent-framework/pull/6599)、[#6488](https://github.com/microsoft/agent-framework/pull/6488)、[#6407](https://github.com/microsoft/agent-framework/pull/6407) が相次ぎ、Python Harness の実行契約と承認フローが大きく変わっています。既存のサンプルやツール実装は、停止条件・承認ポリシー・スキル探索の影響を確認する必要があります。
- **dotnet/extensions のセキュリティ対応が最優先**: [#7579](https://github.com/dotnet/extensions/pull/7579) で SQLitePCLRaw の脆弱性対応が入っており、AI テンプレートを使う環境では再生成・再ビルド・依存更新の確認が必要です。
- **Aspire は CLI / CI / deprecation の整理が中心**: [#18404](https://github.com/microsoft/aspire/pull/18404) により Foundry preview パッケージの obsolete 表記が整理され、GitHub Models integration の廃止も進んでいます。CLI の stable channel 挙動や CI 安定化改善も並行して進んでいます。
- **GitHub Changelog では JetBrains IDE 向け agent 機能が注目**: [GitHub Changelog の新着](https://github.blog/changelog/2026-06-22-new-features-and-claude-as-agent-provider-preview-in-jetbrains-ides) では、organization / enterprise agent の利用拡張と Copilot CLI セッションの操作性向上が見えます。IDE 連携を重視する組織では、導入可否と運用ルールの確認が必要です。

## 主要トレンド

今回の差分は、エージェント実行基盤の「実行契約をより厳密化する流れ」が横断テーマでした。Aspire では CLI/CI/テンプレートの整備、Agent Framework では承認・ループ・スキル探索の変更が進み、dotnet/extensions では依存ライブラリのセキュリティ修正が特に重要でした。Azure RSS の新着はなく、今回は GitHub 側の開発基盤更新が主でした。

## 次回チェックに向けたメモ

- **microsoft/agent-framework**: breaking 系 PR の状態遷移を継続追跡し、[#6607](https://github.com/microsoft/agent-framework/pull/6607)、[#6599](https://github.com/microsoft/agent-framework/pull/6599)、[#6488](https://github.com/microsoft/agent-framework/pull/6488)、[#6407](https://github.com/microsoft/agent-framework/pull/6407) の影響範囲を確認する。
- **dotnet/extensions**: [#7579](https://github.com/dotnet/extensions/pull/7579) の脆弱性対応が反映されたか、AI テンプレートの再生成・再ビルド手順を確認する。
- **microsoft/aspire**: GitHub Models 統合廃止後の代替パス、CLI stable channel の `nuget.config` 生成差分、CI テスト安定化の継続状況を確認する。
- **GitHub Changelog**: JetBrains IDE での agent provider preview を使う場合の可用性・権限・運用ルールを次回に向けて棚卸しする。
- **Azure**: 今回は新着 0 件のため、次回まで Azure のリリース発表があるかを引き続き監視する。

<!-- daily-check-meta: {"generatedAtUtc":"2026-06-23 06:00:53","schema":1,"previousCheckAtUtc":"2026-06-20 10:51:22"} -->