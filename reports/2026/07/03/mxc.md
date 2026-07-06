# microsoft/mxc

対象期間: 2026-07-02 00:49:01 〜 2026-07-03 04:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 3 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 1 |
| 新規 Issue                 | 1 |
| クローズ Issue             | 0 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- sandbox の filesystem-policy バリデーションを object-based で再設計し、最も厳格なルールが優先されるように改善されています。
- `deniedPaths` を `BaseContainer` の `fs_deny` に接続する変更により、許可・拒否の制御が sandbox 起動経路により明確に反映される形です。
- CI 側では macOS pool image の更新と public cargo feed の解決経路整理が進み、依存関係管理の再現性が高まっています。
- 既存の sandbox 機能に影響するため、deny/allow パスや起動フローのテストを引き続き確認する価値があります。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #605 | ci: bump Lint macOS pool image to macOS-15-arm64 | merged | richiemsft | <https://github.com/microsoft/mxc/pull/605> |
| PR | #594 | CI: resolve crate dependencies through the public MxcDependencies feed | merged | bbonaby | <https://github.com/microsoft/mxc/pull/594> |
| PR | #593 | [Bubblewrap/LXC/WSLC] Add object-based filesystem-policy validation, most restrictive wins | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/593> |
| PR | #557 | ci: seed public cargo feed from Cargo.lock on lockfile changes | closed | MGudgin | <https://github.com/microsoft/mxc/pull/557> |
| PR | #603 | Plumb deniedPaths to BaseContainer fs_deny, gated on SANDBOX_CAP_FS_DENY | open | MGudgin | <https://github.com/microsoft/mxc/pull/603> |
| Issue | #604 | [Bubblewrap/LXC/WSLC] Bound the synchronous filesystem I/O on the sandbox launch path (timeout / cancellation) | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/604> |
