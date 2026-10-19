# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-16 01:16:31 〜 2026-10-19 00:32:32 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 0 |
| クローズ (未マージ) PR  | 1 |
| 新規 Issue              | 2 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

対象期間中にマージ済み PR はなく、Rust SDK の trusted-answer callback correlation 提案 #2847 はクローズされました。
未解決の要望は、permission 承認後の handler / skill context 復旧 (#2852) と hook input からの active chat model 取得 (#2851) です。利用者は今後の対応状況を確認してください。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2847 | Add trusted-answer callback correlation to Rust SDK | closed | szabta89 | <https://github.com/github/copilot-sdk/pull/2847> |
| Issue | #2852 | Pending permission recovery: handler not re-invoked and skill context missing after approval | open | mingtwan | <https://github.com/github/copilot-sdk/issues/2852> |
| Issue | #2851 | Hook inputs: expose the active chat model | open | mastery-sanket-nagare | <https://github.com/github/copilot-sdk/issues/2851> |
| Issue | #2813 | Plan path validation changes when the session working directory differs from initialCwd | closed | nicolasdossantos | <https://github.com/github/copilot-sdk/issues/2813> |
| Issue | #2761 | Expose a way to subscribe to detached shell output | closed | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2761> |
