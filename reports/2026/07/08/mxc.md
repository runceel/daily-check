# microsoft/mxc

対象期間: 2026-07-06 01:30:41 〜 2026-07-08 06:31:54 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 14 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 4 |
| 新規 Issue                 | 7 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **GA 昇格** [#616](https://github.com/microsoft/mxc/pull/616) — add process container networking GA spec （PR / open / bbonaby）
  process container のネットワーキングを GA 化するための**仕様書追加 PR（オープン）**。製品としての GA 出荷ではなく仕様策定段階なので、mxc のネットワーク機能を追う開発者は仕様レビューとして確認するとよい。
- **GA 昇格** [#615](https://github.com/microsoft/mxc/pull/615) — Add GA networking spec （PR / open / bbonaby）
  #616 と対になるネットワーキング GA 仕様のドラフト（オープン）。GA に向けたネットワーク挙動の定義であり、実装確定前の仕様確認が対象。

## 主要な変更点

- **ネットワーキング GA 仕様**: process container のネットワーク機能を GA 化するための仕様ドラフトが追加された（#616 / #615, いずれも open）。GA に向けた設計フェーズ。
- **サンドボックスのファイルシステムポリシー強化**: `deniedPaths` を BaseContainer の `fs_deny` に接続（#603、`SANDBOX_CAP_FS_DENY` でゲート）、Bubblewrap/LXC/WSLC にファイルシステムポリシー委譲チェックを追加（#598）、Bubblewrap の policy mount を「最長一致パス優先」で解決する提案（#608, open）。
- **分離セッション基盤**: isolation_session のバックエンドと SDK を **IsolationSession Preview API** へ移行（#592）。
- **CI / トリアージ運用**: gh-aw ベースの issue-triage ワークフロー追加（#602）と認証・ノイズ低減の修正（#617 / #619）、Rust/TypeScript 向け **CodeQL 静的解析ワークフロー**の追加（#621, open）。
- **テレメトリ**: 実験的な **TraceLogging ETW テレメトリ**を追加（#493）。関連して ETW メタデータへのフィールド説明埋め込み要望（#620, open）。
- **ドキュメント整備**: process container の Windows OS バージョン別ポリシーサポート行列を追加（#606）、"base container" を "process container" へ改称する整理（#610, open）。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #619 | Triage: reduce failure-report noise, scope repos, and guard against false missing_data | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/619> |
| PR | #617 | Fix issue-triage auth: use copilot-requests permission instead of PAT | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/617> |
| PR | #614 | .gitignore updates | merged | MGudgin | <https://github.com/microsoft/mxc/pull/614> |
| PR | #609 | CI: add networkisolation featureFlag to onebranch pipeline so it can reachout to ESRP signing  | merged | bbonaby | <https://github.com/microsoft/mxc/pull/609> |
| PR | #606 | docs: add Windows OS-version policy-support matrix for processcontainer | merged | MGudgin | <https://github.com/microsoft/mxc/pull/606> |
| PR | #603 | Plumb deniedPaths to BaseContainer fs_deny, gated on SANDBOX_CAP_FS_DENY | merged | MGudgin | <https://github.com/microsoft/mxc/pull/603> |
| PR | #602 | Add gh-aw issue triage workflow with semantic labeling and owner assignment | merged | Copilot | <https://github.com/microsoft/mxc/pull/602> |
| PR | #598 | [Bubblewrap/LXC/WSLC] Add filesystem-policy delegation check | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/598> |
| PR | #595 | Add state-aware phase field value conformance | merged | MGudgin | <https://github.com/microsoft/mxc/pull/595> |
| PR | #592 | Migrate isolation_session backend + SDK to the IsolationSession Preview API | merged | adpa-ms | <https://github.com/microsoft/mxc/pull/592> |
| PR | #591 | chore: bump hyperlight-unikraft to v0.12.1 (crates.io) | merged | danbugs | <https://github.com/microsoft/mxc/pull/591> |
| PR | #584 | Permissive Learning Mode 1/6 audit skeleton | merged | lilybarkley-msft | <https://github.com/microsoft/mxc/pull/584> |
| PR | #573 | refactor: idiomatic cleanups in wxc_common and the AppContainer/WSLC/LXC backends | merged | MGudgin | <https://github.com/microsoft/mxc/pull/573> |
| PR | #493 | feat: add TraceLogging ETW telemetry (experimental) | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/493> |
| PR | #599 | Add learning-mode broker Windows service and host-prep plumbing | closed | richiemsft | <https://github.com/microsoft/mxc/pull/599> |
| PR | #621 | Add CodeQL static analysis workflow for Rust and TypeScript | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/621> |
| PR | #616 | add process container networking GA spec | open | bbonaby | <https://github.com/microsoft/mxc/pull/616> |
| PR | #615 | Add GA networking spec | open | bbonaby | <https://github.com/microsoft/mxc/pull/615> |
| PR | #608 | [Bubblewrap] Resolve bwrap policy mounts by most-specific-path-wins | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/608> |
| Issue | #620 | telemetry: embed per-field descriptions in ETW metadata (TraceLoggingDescription equivalent) in our tracelogging wrappers | open | RamonArjona4 | <https://github.com/microsoft/mxc/issues/620> |
| Issue | #618 | [aw] Issue Triage is missing required data | closed | github-actions[bot] | <https://github.com/microsoft/mxc/issues/618> |
| Issue | #613 | Evaluate flatc/FlatBuffers-driven codegen vs hand-rolled schema/type conformance oracles | open | MGudgin | <https://github.com/microsoft/mxc/issues/613> |
| Issue | #612 | Emit wxc executor errors and warnings as structured ScriptResponse JSON  | open | MGudgin | <https://github.com/microsoft/mxc/issues/612> |
| Issue | #611 | macOS Seatbelt sandbox prints noisy getcwd warnings when cwd is not included in policy | open | SLdragon | <https://github.com/microsoft/mxc/issues/611> |
| Issue | #610 | Rename base container to process container in docs and code | open | bbonaby | <https://github.com/microsoft/mxc/issues/610> |
| Issue | #607 | Windows Credential Manager support | open | caarlos0 | <https://github.com/microsoft/mxc/issues/607> |
