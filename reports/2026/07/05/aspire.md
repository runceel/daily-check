# microsoft/aspire *(詳細モード)*

対象期間: 2026-07-03 04:00:53 〜 2026-07-05 04:03:53 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 9 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 5 |
| クローズ Issue          | 4 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#18533](https://github.com/microsoft/aspire/pull/18533) — Resolve open JS and TS security alerts （PR / open / IEvangelist）
  依存関係の脆弱性対応に関わるため、更新後のパッケージ解決とテスト実行を確認してください。
- **⚠ セキュリティ** [#18518](https://github.com/microsoft/aspire/pull/18518) — Bump npm dependencies for security alerts （PR / open / IEvangelist）
  npm 側の依存関係更新が入るため、ローカル開発環境や CI での再現性確認が必要です。
- **⚠ セキュリティ** [#17902](https://github.com/microsoft/aspire/pull/17902) — [security] Bump aiohttp and starlette in FoundryAgentBasic playground （PR / open / IEvangelist）
  Playground の依存関係更新に伴い、サンプル実行時の互換性を見ておくとよいです。

## このリポジトリの要点

- セキュリティ関連の依存関係更新が複数あり、Aspire のサンプルや開発体験に影響しないかを確認する価値があります。
- Deno 対応やリソース状態の修正、ログの CSV エクスポート追加など、開発者体験を改善する PR が並んでいます。
- 期間内の差分は比較的活発で、次回はセキュリティ更新と機能改善の両面を追うとよいです。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #18644 | Fix: stop click propagation on UrlsColumnDisplay to prevent details popup | open | eso-cyber | <https://github.com/microsoft/aspire/pull/18644> |
| PR | #18643 | Fix structured logs resource filter after reconnect | open | adamint | <https://github.com/microsoft/aspire/pull/18643> |
| PR | #18642 | Update parent resource state from replicas | open | adamint | <https://github.com/microsoft/aspire/pull/18642> |
| PR | #18641 | Fix replica parent resource state | open | adamint | <https://github.com/microsoft/aspire/pull/18641> |
| PR | #18639 | feat: added CSV export option to console logs download menu | open | IsxImattI | <https://github.com/microsoft/aspire/pull/18639> |
| PR | #18631 | Fix false-positive node/npm required-command banners for Bun JS apps | open | davidfowl | <https://github.com/microsoft/aspire/pull/18631> |
| PR | #18630 | Fix Kubernetes GetEndpoint resolving to targetPort instead of service port | open | davidfowl | <https://github.com/microsoft/aspire/pull/18630> |
| PR | #18628 | Add Deno hosting: AddDenoApp / DenoAppResource in Aspire.Hosting.JavaScript | open | rickylabs | <https://github.com/microsoft/aspire/pull/18628> |
| PR | #18627 | Add Deno support to the TypeScript AppHost toolchain resolver | open | rickylabs | <https://github.com/microsoft/aspire/pull/18627> |
| PR | #18638 | Fix DotNetSdkInstaller to use runtime selector's dotnet executable | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18638> |
| PR | #18632 | Fix DotNetSdkInstaller.CheckAsync using wrong dotnet executable after private SDK install | closed | CloudColonel | <https://github.com/microsoft/aspire/pull/18632> |
| Issue | #18637 | Add Docker Compose shm_size support to Aspire.Hosting.Docker | open | rantri | <https://github.com/microsoft/aspire/issues/18637> |
| Issue | #18636 | gitupdate | open | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/18636> |
| Issue | #18635 | [cli] commands to read and write deployment state | closed | sliekens | <https://github.com/microsoft/aspire/issues/18635> |
| Issue | #18633 | [aw] Repo Pulse — Daily Report failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18633> |
| Issue | #18629 | Nightly run failing: Deployment E2E Tests | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18629> |
| Issue | #18618 | Scheduled workflow failing: Generate ATS Diffs | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18618> |
| Issue | #18534 | [aw] Repo Pulse — Daily Report failed | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18534> |
| Issue | #18509 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18509> |
