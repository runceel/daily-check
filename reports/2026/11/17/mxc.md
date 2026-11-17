# microsoft/mxc

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 2 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 2 |
| 新規 Issue                 | 3 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1780](https://github.com/microsoft/mxc/issues/1780) — Linux bubblewrap: deniedPaths for a nonexistent path creates a stray directory on the host that persists after exit （Issue / open / benjaminfrombe）
  未解決の報告です。Linux bubblewrap で未作成パスを `deniedPaths` に指定する利用者は、ホスト側に空ディレクトリが残り設定ファイル作成を妨げる可能性を確認してください。修正済み／サンドボックス脱出と断定しません。

microsoft/mxc#1726 は CodeQL 等を含む CI アクション群の更新案であり、製品の脆弱性修正という自動分類からは除外しました。

## 主要な変更点

- microsoft/mxc#1770 が IsolationSession の `process.env` で `=` を含まない項目を無視するよう修正しました。空文字の変数を設定したい場合は `FOO=` のように明示してください。
- microsoft/mxc#1773 は `commandLine` が `cmd.exe /c` 経由で実行され、先頭の引用符が除去される場合があることを文書化しました。実行コードの修正ではなく、既存の引用符回避策を不要にするものではありません。
- Linux bubblewrap の未作成 `deniedPaths` がホスト上にディレクトリを残す microsoft/mxc#1780 は未解決で、構成ファイルを保護する用途では影響確認が必要です。
- bundle 互換性検証と終了後の診断の修正案は未マージです。teardown 失敗の CLI 通知やタイムアウト後もセッションが残るテストの新規 Issue も、解決済みと混同せず追跡します。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1770 | [IsoSession] Environment vars in config without an equals sign ignored | merged | daamenik | <https://github.com/microsoft/mxc/pull/1770> |
| PR | #1773 | [IsoSession] Document real commandLine execution behavior  | merged | daamenik | <https://github.com/microsoft/mxc/pull/1773> |
| PR | #1786 | Fix isolation-session bundle compatibility validation | open | danlegg | <https://github.com/microsoft/mxc/pull/1786> |
| PR | #1785 | Fix ProcessContainer packaged-app diagnostics after process exit | open | mapleluvr | <https://github.com/microsoft/mxc/pull/1785> |
| Issue | #1789 | [IsolationSession] `wxc-exec` does not report a failed teardown that the SDKs report | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1789> |
| Issue | #1788 | [IsolationSession] `Run-IsolationSessionTest` searches for an agent-name line that is no longer printed | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1788> |
| Issue | #1787 | [IsolationSession] The concurrent one-shot test moves on while a timed-out session is still running | open | adpa-ms | <https://github.com/microsoft/mxc/issues/1787> |
| Issue | #1649 | [IsolationSession] A `process.env` entry without `=` is set as an empty variable | closed | adpa-ms | <https://github.com/microsoft/mxc/issues/1649> |
