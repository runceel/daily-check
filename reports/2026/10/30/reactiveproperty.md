# runceel/ReactiveProperty

対象期間: 2026-10-29 03:43:14 〜 2026-10-30 00:23:04 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#568](https://github.com/runceel/ReactiveProperty/pull/568) — Fix vulnerable build and test dependencies （PR / merged / runceel）
開発者は依存関係を更新して既知の脆弱性を解消してください。影響対象はビルド・テスト依存で、UWP プロジェクトは環境依存により脆弱性スキャン未実施です。

## 主要な変更点

- **セキュリティ修正:** Microsoft.SourceLink.GitHub を 10.0.403 に更新して GHSA-23fw-v26w-5fgq 対象の Microsoft.Build.Tasks.Git を修正し、Blazor test project では AngleSharp 1.5.0 を固定して GHSA-pgww-w46g-26qg を解消しました（[#568](https://github.com/runceel/ReactiveProperty/pull/568)）。
- PR の検証では solution の restore、Release build、テストが成功し、スキャン対象プロジェクトに脆弱なパッケージは残っていません。
- UWP project は MSBuild.Sdk.Extras が環境になくスキャンできていないため、同プロジェクトの依存状態は別途確認が必要です。
- ほかに対象期間内の PR / Issue の変化はありませんでした。

## 変化のあった PR / Issue

期間内に変化はありませんでした。