# dotnet/extensions

対象期間: 2026-06-12 02:03:55 〜 2026-06-15 00:59:51 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 0 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#7561](https://github.com/dotnet/extensions/pull/7561) — Fix transitive MessagePack vulnerability in AI template AppHost projects （PR / open / Copilot）
  AI template の AppHost project を生成・配布している利用者は、MessagePack の推移的脆弱性が残らないようテンプレート更新を追跡してください。
- **⚠ セキュリティ** [#7560](https://github.com/dotnet/extensions/pull/7560) — Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template （PR / open / Copilot）
  AI Chat Web template から生成したアプリは、GHSA-hv8m-jj95-wg3x 対応として MessagePack 2.5.301 固定が取り込まれるか確認してください。

## 主要な変更点

- AI template 系で MessagePack 脆弱性対応の PR が 2 件オープンしています。[#7561](https://github.com/dotnet/extensions/pull/7561) は AppHost projects の推移的依存、[#7560](https://github.com/dotnet/extensions/pull/7560) は AI Chat Web template の GHSA-hv8m-jj95-wg3x 対応です。
- dependabot による TypeScript toolchain 更新 [#7564](https://github.com/dotnet/extensions/pull/7564) もオープンしており、AI Evaluation Reporting の frontend 依存更新が進んでいます。
- Issue では Resilience の `Grpc.Net.ClientFactory` バージョンチェック、Hybrid Retrieval の sparse embedding 抽象不足、AI template tests failure が新規に上がっています。
- マージ済み PR はなく、現時点ではセキュリティ修正 PR の取り込み待ちが最重要です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #7564 | Bump esbuild, @vitejs/plugin-react and vite in /src/Libraries/Microsoft.Extensions.AI.Evaluation.Reporting/TypeScript | open | dependabot[bot] | <https://github.com/dotnet/extensions/pull/7564> |
| PR | #7561 | Fix transitive MessagePack vulnerability in AI template AppHost projects | open | Copilot | <https://github.com/dotnet/extensions/pull/7561> |
| PR | #7560 | Pin MessagePack to 2.5.301 to fix GHSA-hv8m-jj95-wg3x vulnerability in AI Chat Web template | open | Copilot | <https://github.com/dotnet/extensions/pull/7560> |
| Issue | #7565 | [Resilience] _CheckGrpcNetClientFactoryVersion target crashes on bracket-pinned Grpc.Net.ClientFactory | open | Ghost93 | <https://github.com/dotnet/extensions/issues/7565> |
| Issue | #7563 | Hybrid Retrieval: Missing Sparse Embedding Abstraction in .NET | open | gimmickj | <https://github.com/dotnet/extensions/issues/7563> |
| Issue | #7562 | Microsoft.Extensions.AI.Templates tests are failing | open | adamsitnik | <https://github.com/dotnet/extensions/issues/7562> |
| Issue | #6972 | [MEDI] Allow extending VectorStoreWriter | closed | roji | <https://github.com/dotnet/extensions/issues/6972> |
