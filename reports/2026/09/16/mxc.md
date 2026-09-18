# microsoft/mxc

対象期間: 2026-09-15 00:08:57 〜 2026-09-16 01:35:40 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 10 |
| クローズ (未マージ) PR     | 2 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 6 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1171](https://github.com/microsoft/mxc/pull/1171) — Address npm package vulnerabilities （PR / open / MGudgin）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。
- **⚠ セキュリティ** [#840](https://github.com/microsoft/mxc/pull/840) — [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability （PR / closed / Copilot）
関係する利用者・管理者は、該当機能を利用しているか確認し、必要に応じて設定・実装・依存関係を更新してください。

## 主要な変更点

- 重要変更として検出された PR / Issue は、互換性・セキュリティ・廃止予定の観点で確認が必要です.
- その他は依存関係更新、不具合修正、テスト安定化などの保守的な変更が中心です.
- 対象機能を利用していない場合、追加対応は原則不要です.

- 特筆すべき追加変更はありません。


## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1175 | Load the native runtime in the Node SDK | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1175> |
| PR | #1173 | [Seatbelt] Tests now can use binaries output from build-mac.sh | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1173> |
| PR | #1164 | [CI] Run BaseContainer validation tests on the 25H2 and 24H2 images | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1164> |
| PR | #1170 | Stage Node native runtime foundation | merged | bbonaby | <https://github.com/microsoft/mxc/pull/1170> |
| PR | #1143 | Rename backends/appcontainer -> backends/process_container | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1143> |
| PR | #1136 | [Seatbelt] Remove launchMethod from the 0.9 schema | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1136> |
| PR | #1134 | User/dalegg/package sdk integration tests in vpack | merged | danlegg | <https://github.com/microsoft/mxc/pull/1134> |
| PR | #1126 | Add version flags to wxc-exec | merged | wellorbetter | <https://github.com/microsoft/mxc/pull/1126> |
| PR | #1145 | Complete the v0.9 directional networking cutover | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1145> |
| PR | #1161 | Regression tests [process containment]: Issue 785 - Probe 'SUCCESS' but Run 'FAIL' (captureDenials) | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/1161> |
| PR | #840 | [WIP] Fix extract-zip unvalidated symlink path traversal vulnerability | closed | Copilot | <https://github.com/microsoft/mxc/pull/840> |
| PR | #876 | BaseContainer: PowerShell cannot use the granted working directory | closed | caarlos0 | <https://github.com/microsoft/mxc/pull/876> |
| PR | #1176 | chore(deps): bump the github-actions group with 3 updates | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1176> |
| PR | #1166 | fix(seatbelt): let a sandbox listen without surrendering proxy confinement | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1166> |
| PR | #1171 | Address npm package vulnerabilities | open | MGudgin | <https://github.com/microsoft/mxc/pull/1171> |
| Issue | #1174 | Load the native runtime in the Node SDK | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1174> |
| Issue | #1172 | Integration surface for checkpoint/resume across hosts | open | juliushill42 | <https://github.com/microsoft/mxc/issues/1172> |
| Issue | #1169 | Stage the native runtime for the Node SDK | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1169> |
| Issue | #1168 | Move the Node SDK to in-process execution | open | bbonaby | <https://github.com/microsoft/mxc/issues/1168> |
| Issue | #1167 | [WSLC] State-aware daemon protocol flattens every backend failure to `backend_error`, discarding its typed classification | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1167> |
| Issue | #1165 | inheritDefaultEnv is not honored on IsolationSession or WSLc | open | theelliotm | <https://github.com/microsoft/mxc/issues/1165> |
| Issue | #1118 | Add --version flag to wxc-exe | closed | jeffmaury | <https://github.com/microsoft/mxc/issues/1118> |



