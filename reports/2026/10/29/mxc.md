# microsoft/mxc

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 6 |
| 新規 Issue                 | 8 |
| クローズ Issue             | 3 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- [#1482](https://github.com/microsoft/mxc/pull/1482) で script の error / warning を構造化 `ScriptResponse` JSON として返すようにしました。
- [#1412](https://github.com/microsoft/mxc/pull/1412) は V1.Dev の exact-JSON SDK API を拡充し、JSON 入出力を扱う SDK 面を整えています。
- Bubblewrap backend では spawn 用スレッドをプロセス寿命に合わせて保持する修正（[#1526](https://github.com/microsoft/mxc/pull/1526)）がマージされ、関連するスレッド終了時の sandbox 停止 Issue（[#1525](https://github.com/microsoft/mxc/issues/1525)）はクローズされました。
- [#1601](https://github.com/microsoft/mxc/pull/1601) で 1ES Pipeline Templates による baseline が自動生成されるようになりました。
- オープン提案には sandbox 起動時の filesystem policy probe 上限（[#1604](https://github.com/microsoft/mxc/pull/1604)）、.NET captured execution timeout 後の cleanup（[#1613](https://github.com/microsoft/mxc/pull/1613)）、拒否された directory mask の read-only 化（[#1602](https://github.com/microsoft/mxc/pull/1602)）があり、いずれも未マージです。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1482 | Emit errors and warnings as structured ScriptResponse JSON | merged | theelliotm | <https://github.com/microsoft/mxc/pull/1482> |
| PR | #1601 | Auto-generated baselines by 1ES Pipeline Templates | merged | microsoft-github-policy-service[bot] | <https://github.com/microsoft/mxc/pull/1601> |
| PR | #1412 | Complete V1.Dev exact-JSON SDK APIs | merged | MGudgin | <https://github.com/microsoft/mxc/pull/1412> |
| PR | #1526 | [Bubblewrap] Fork bwrap from a process-lifetime thread | merged | keithmattix | <https://github.com/microsoft/mxc/pull/1526> |
| PR | #1608 | docs: propose W365A integration plan | closed | tbyfield | <https://github.com/microsoft/mxc/pull/1608> |
| PR | #1614 | docs: propose W365A integration plan | open | tbyfield | <https://github.com/microsoft/mxc/pull/1614> |
| PR | #1613 | Fix .NET captured execution timeout cleanup | open | MGudgin | <https://github.com/microsoft/mxc/pull/1613> |
| PR | #1612 | chore(deps): bump zip from 2.4.2 to 9.0.5 in /src | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1612> |
| PR | #1609 | Feature Proposal: Seatbelt Learning Mode | open | theelliotm | <https://github.com/microsoft/mxc/pull/1609> |
| PR | #1604 | Bound filesystem policy probes during sandbox startup | open | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1604> |
| PR | #1602 | fix(bubblewrap): make denied directory masks read-only | open | caarlos0 | <https://github.com/microsoft/mxc/pull/1602> |
| Issue | #1615 | Add new experimental backend for Windows 365 | open | tbyfield | <https://github.com/microsoft/mxc/issues/1615> |
| Issue | #1611 | Run a container image or root filesystem as an MXC workload (Linux, Windows, macOS) | open | keithmattix | <https://github.com/microsoft/mxc/issues/1611> |
| Issue | #1610 | Experimental Kata Containers backend on Linux | open | ericcurtin | <https://github.com/microsoft/mxc/issues/1610> |
| Issue | #1607 | BaseContainer blocks PowerShell’s execution-policy registry read | open | iceweasel-oai | <https://github.com/microsoft/mxc/issues/1607> |
| Issue | #1606 | [CI] Validation VMs don't have built-in CPU profile for MicroVM | open | theelliotm | <https://github.com/microsoft/mxc/issues/1606> |
| Issue | #1605 | [WSLC] "Stdin Flood" Test Failing During Validation | open | theelliotm | <https://github.com/microsoft/mxc/issues/1605> |
| Issue | #1603 | BaseContainer: establishing a new SMB session fails with access denied | open | iceweasel-oai | <https://github.com/microsoft/mxc/issues/1603> |
| Issue | #1600 | Checking my survey's description of MXC: policy in WSL containers and agent identity in agent protocols | open | jwade83 | <https://github.com/microsoft/mxc/issues/1600> |
| Issue | #612 | Emit wxc executor errors and warnings as structured ScriptResponse JSON  | closed | MGudgin | <https://github.com/microsoft/mxc/issues/612> |
| Issue | #1587 | Add Dev APIs for experimental SDK functionality | closed | bbonaby | <https://github.com/microsoft/mxc/issues/1587> |
| Issue | #1525 | Bubblewrap sandbox can die when its spawning thread exits | closed | keithmattix | <https://github.com/microsoft/mxc/issues/1525> |
