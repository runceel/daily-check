# runceel/ReactiveProperty

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 0 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#568](https://github.com/runceel/ReactiveProperty/pull/568) — Fix vulnerable build and test dependencies （PR / merged / runceel）
開発・テスト依存関係に関する修正です。該当ブランチ利用者は SourceLink と Blazor テスト依存の更新を取り込み、サポート対象プロジェクトの依存スキャンを再確認してください（UWP は今回スキャン対象外）。

## 主要な変更点

- [#568](https://github.com/runceel/ReactiveProperty/pull/568) で **ビルド・テスト依存の脆弱性を修正**しました。`Microsoft.SourceLink.GitHub` を 10.0.403 に更新し、`AngleSharp` 1.5.0 を Blazor テストプロジェクトに明示指定しています。
- 対応するアドバイザリは `GHSA-23fw-v26w-5fgq`（Microsoft.Build.Tasks.Git）と `GHSA-pgww-w46g-26qg`（bunit 経由の AngleSharp）です。
- 依存スキャンで、確認したサポート対象プロジェクトに該当パッケージが残らないことが報告されています。UWP プロジェクトは環境依存によりスキャン未実施です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #568 | Fix vulnerable build and test dependencies | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/568> |
