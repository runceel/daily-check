# github/copilot-sdk *(詳細モード)*

対象期間: 2026-09-25 00:10:50 〜 2026-09-28 01:19:34 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 5 |
| クローズ (未マージ) PR  | 2 |
| 新規 Issue              | 5 |
| クローズ Issue          | 2 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#2527](https://github.com/github/copilot-sdk/issues/2527) — [v2] Publish the breaking-change inventory and migration guide （Issue / open / SteveSandersonMS）
Copilot SDK v2 への移行予定者は、言語別の削除・改名 API、実行時挙動、CLI / runtime 要件をまとめたガイドの公開と各 SDK オーナーによる確認を待ってから更新判断してください。

## このリポジトリの要点

対象期間にマージ済み PR はありません。v2 の破壊的変更一覧と移行ガイド（#2527）は他の v2 設計・実装の確定待ちで、SDK 利用者は言語別 API 差分と runtime / CLI 互換要件の案内を引き続き確認する必要があります。
オープン PR は Rust subagent lifecycle hooks、worker causality diagnostics、CLI snapshot 取り込み、初回 session event latency、replay proxy の画像容量修正に集中しています。これらはレビュー中で、現時点ではリリース済みの変更ではありません。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2783 | fix(rust): accept subagent lifecycle hooks | open | hackberry-lab | <https://github.com/github/copilot-sdk/pull/2783> |
| PR | #2776 | SDK: Expose sealed worker causality diagnostics | open | mkdinh | <https://github.com/github/copilot-sdk/pull/2776> |
| PR | #2775 | Intake SDK snapshot for Copilot CLI 1.0.89-4 | open | aurokin | <https://github.com/github/copilot-sdk/pull/2775> |
| PR | #2778 | Reduce first session event latency | open | davkean | <https://github.com/github/copilot-sdk/pull/2778> |
| PR | #2780 | Fix replay proxy vision image capacity | open | itscloud0 | <https://github.com/github/copilot-sdk/pull/2780> |
| PR | #2742 | [DO NOT MERGE] Illustrative: native search credential callback | closed | miketsprague | <https://github.com/github/copilot-sdk/pull/2742> |
| PR | #2747 | fix(rust): serve session requests sent during session.create | closed | costajohnt | <https://github.com/github/copilot-sdk/pull/2747> |
| Issue | #2782 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2782> |
| Issue | #2781 | Rust: subagent lifecycle hooks are logged as unknown | open | hackberry-lab | <https://github.com/github/copilot-sdk/issues/2781> |
| Issue | #2779 | [aw] Issue Classification Agent timed out | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2779> |
| Issue | #2777 | Avoid initializing every session event type on first deserialization | open | davkean | <https://github.com/github/copilot-sdk/issues/2777> |
| Issue | #2774 | Bug: OpenTelemetry export duplicates token usage and captured messages for one inference | open | RealAnna | <https://github.com/github/copilot-sdk/issues/2774> |
| Issue | #2563 | Expose optional message source provenance across SDK languages | closed | aurokin | <https://github.com/github/copilot-sdk/issues/2563> |
| Issue | #2541 | [Task] Send copilot-sdk by default from SDK requests | closed | gfarb | <https://github.com/github/copilot-sdk/issues/2541> |
