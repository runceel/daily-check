# github/copilot-sdk *(詳細モード)*

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

> **収集上の制約**: 設定上の `github/copilot-sdk` は REST API で `microsoft/copilot-sdk` へ転送されました。転送先で Issue 検索・一覧を取得して補完しています。一方、PR 一覧 REST API は HTTP 404、転送先の PR 検索は空配列でした。PR が存在しないと確定できないため、PR 統計・詳細は収集失敗のため未集計。手動確認が必要です。

## 統計サマリー

| 区分 | 件数 |
| ---- | ---- |
| マージ済み PR | 未集計（PR API 404） |
| オープン中の新規 PR | 未集計（PR API 404） |
| クローズ（未マージ）PR | 未集計（PR API 404） |
| 新規 Issue | 3 |
| クローズ Issue | 1 |

Issue は日付単位の更新検索で 88 件を取得し、作成／クローズ日時を上記の厳密な対象期間で絞り込みました。検索上限には達していません。

## ⚠ 重要な変更（要確認）

- **互換性の継続確認** [microsoft/copilot-sdk#2523](https://github.com/microsoft/copilot-sdk/issues/2523) は v2 の process／transport 設定 API 再設計を扱い、期間内に completed でクローズされています。ただし PR と出荷版を確認できていないため、破壊的変更が利用版へ反映済みとは断定できません。
- [microsoft/copilot-sdk#2924](https://github.com/microsoft/copilot-sdk/issues/2924) は RAI ポリシー拒否の再試行と元のエラーコード欠落を報告しています。利用者はエラーを一般障害と混同しない表示・運用を検討し、上流修正を追跡してください。ポリシー制御を回避する提案ではありません。

## このリポジトリの要点

- 新規 Issue は、サブエージェントへのツール伝播、RAI 拒否の再試行／エラー情報欠落、VS Code のバックグラウンド出力可視性の 3 件です。いずれも未解決の報告です。
- v2 の process／transport 設定再設計 Issue がクローズされましたが、API シグネチャや移行対象版は PR 未取得のため確認できません。
- 取得先の転送と PR アクセス不整合があり、今回の Issue 補完だけで SDK 全体の差分を網羅したとは扱いません。

## 主要な PR (詳細)

PR の変更ファイル・コミット・API シグネチャを取得できていないため、詳細は未集計です。公開 API の追加・削除や移行手順を推測で補っていません。

## 変化のあった Issue

| 種別 | 番号 | タイトル | 状態 | リンク |
| ---- | ---- | -------- | ---- | ------ |
| 新規 | microsoft/copilot-sdk#2925 | 親モデル・ツールフィルター・defaultAgent 除外がカスタムサブエージェントへ伝播 | open | <https://github.com/microsoft/copilot-sdk/issues/2925> |
| 新規 | microsoft/copilot-sdk#2924 | RAI ポリシーエラーを再試行し、session.error で元コードが欠落 | open | <https://github.com/microsoft/copilot-sdk/issues/2924> |
| 新規 | microsoft/copilot-sdk#2923 | VS Code 統合でバックグラウンドコマンド出力をライブ表示できない | open | <https://github.com/microsoft/copilot-sdk/issues/2923> |
| クローズ | microsoft/copilot-sdk#2523 | v2 process／transport 設定 API 再設計 | closed（completed） | <https://github.com/microsoft/copilot-sdk/issues/2523> |

### サブエージェントへのツール伝播

microsoft/copilot-sdk#2925 は SDK 1.0.30-preview.0／runtime 1.0.108-0 のローカル再現で、同じ worker 設定でも親モデルや親のフィルターにより編集・実行ツールが変わると報告しています。
`defaultAgent.excludedTools` が custom worker にも影響し、文書化された振る舞いと異なるという報告です。全モデル・全バージョン共通の確定仕様とは扱いません。

### エラー情報と実行の可視性

microsoft/copilot-sdk#2924 は SSE 内の `bio_policy`／`cyber_policy` を一時障害として 5 回再試行し、最終的な `session.error` から元の type／code／message が失われるとしています。
microsoft/copilot-sdk#2923 は VS Code／agent-host の非同期コマンド出力表示を扱い、SDK・ホスト実装・UI のどこが原因かは未確定です。

### v2 API の追跡

microsoft/copilot-sdk#2523 の要求範囲には、client-wide な環境／作業ディレクトリ設定の transport への移動、Rust の環境変数設定の意味統一、in-process のクライアント単位設定、適用不能オプションの明示的な拒否が含まれます。
Issue の完了状態だけでは全 SDK への実装完了を検証できません。該当 PR・リリースノート・移行ガイドを確認してから更新判断が必要です。