# microsoft/mxc

対象期間: 2026-08-11 23:30:11 〜 2026-08-13 00:02:03 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 7 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 10 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 2 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#732](https://github.com/microsoft/mxc/pull/732) — Block breaking changes to the dev schema at pull-request time （PR / closed / MGudgin）
  開発スキーマを更新するコントリビューターは、PR 時の破壊的変更検査と既存利用者への互換性を確認してください。
- **⚠ セキュリティ** [#803](https://github.com/microsoft/mxc/pull/803) — fix(logger): deliver security warnings explicitly instead of writing to stderr （PR / open / caarlos0）
  セキュリティ警告を収集する利用者は、stderr ではなく明示的な警告経路へ変わる提案を確認し、監視・自動化の取り込み先を更新してください。
- **非推奨/廃止** [#575](https://github.com/microsoft/mxc/pull/575) — [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) （PR / open / MGudgin）
  macOS Intel 向け SDK 配布を利用する利用者は、追加パッケージの扱いと既存プラットフォーム判定を確認してください。

## 主要な変更点

- mxc 0.6 の設定契約を厳密化し、バージョン別の設定解析用 crate と adapter が追加されました。
- PLM の Learning Mode analyzer 利用、WSLC sandbox ライフサイクル、PSEC 優先利用が進みました。
- テレメトリを安定版として公開するため、Rust C ABI、Node.js、.NET SDK と同意・プライバシー契約の整備が進行中です。
- 開発スキーマの破壊的変更を PR 時に検査する取り組みと、セキュリティ警告の明示的な配信が重要事項です。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #816 | Add exact 0.6 configuration contract | merged | MGudgin | <https://github.com/microsoft/mxc/pull/816> |
| PR | #807 | Add mxc_config_contract crate for version-specific config parsing | merged | MGudgin | <https://github.com/microsoft/mxc/pull/807> |
| PR | #760 | Refactor PLM to use the canonical Learning Mode analyzer | merged | richiemsft | <https://github.com/microsoft/mxc/pull/760> |
| PR | #801 | [WSLC] State-aware sandbox lifecycle over the experimental.wslc surface (PR 2b/3) | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/801> |
| PR | #763 | Add Copilot-Instructions label policy rule | merged | denelon | <https://github.com/microsoft/mxc/pull/763> |
| PR | #812 | Prefer PSEC when available | merged | jsidewhite | <https://github.com/microsoft/mxc/pull/812> |
| PR | #823 | chore(deps): bump github/gh-aw-actions/setup from 0.85.0 to 0.85.1 in the github-actions group | merged | dependabot[bot] | <https://github.com/microsoft/mxc/pull/823> |
| PR | #706 | Stabilize telemetry consent and promote telemetry to production | closed | RamonArjona4 | <https://github.com/microsoft/mxc/pull/706> |
| PR | #814 | Document process containers proxy packaging and deployment for developers | open | bbonaby | <https://github.com/microsoft/mxc/pull/814> |
| PR | #835 | Add 0.6 configuration contract adapter | open | MGudgin | <https://github.com/microsoft/mxc/pull/835> |
| PR | #834 | Package and sign PLM with Windows binaries | open | richiemsft | <https://github.com/microsoft/mxc/pull/834> |
| PR | #818 | Document stable telemetry privacy contract | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/818> |
| PR | #822 | Add Node.js and .NET telemetry SDKs | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/822> |
| PR | #821 | Expose telemetry through Rust SDK and C ABI | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/821> |
| PR | #813 | Add guarded WPR captureDenials fallback | open | richiemsft | <https://github.com/microsoft/mxc/pull/813> |
| PR | #820 | Integrate stable telemetry into MXC runtime | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/820> |
| PR | #819 | Add telemetry consent and policy foundation | open | RamonArjona4 | <https://github.com/microsoft/mxc/pull/819> |
| PR | #829 | Relay live exec pipes to executor stdio | open | adpa-ms | <https://github.com/microsoft/mxc/pull/829> |
| Issue | #832 | note: something the bot found which I thought I would at least bring up for your next PR. A stale marker makes later audit starts fail closed, but this error provides neither its path nor a safe recovery procedure, so auditing can remain unavailable indefinitely. | open | richiemsft | <https://github.com/microsoft/mxc/issues/832> |
| Issue | #833 | [aw] Detection Runs | open | github-actions[bot] | <https://github.com/microsoft/mxc/issues/833> |
| Issue | #831 | note: something to update in the future PRs: We can technically pass in `--audit --dry-run` and we'd start the elevated host-wide WPR session before the runner reaches its dry-run short-circuit. In this case if someone passes in --dry-run we probably don't want to startup a wpr session. | open | richiemsft | <https://github.com/microsoft/mxc/issues/831> |
| Issue | #830 | Narrow ProcessContainer private-network capability with directional WFP enforcement | closed | bbonaby | <https://github.com/microsoft/mxc/issues/830> |
| Issue | #828 | Add a new captureDenial_verbose file | open | richiemsft | <https://github.com/microsoft/mxc/issues/828> |
| Issue | #827 | Keep captureDenials json file name static | open | richiemsft | <https://github.com/microsoft/mxc/issues/827> |
| Issue | #826 | Remove ETL files from captureDenials | open | richiemsft | <https://github.com/microsoft/mxc/issues/826> |
| Issue | #825 | PowerShell provider location differs from the process working directory in an MXC sandbox | open | torumakabe | <https://github.com/microsoft/mxc/issues/825> |
| Issue | #824 | [WSLC] One-shot vs state-aware network-policy parity: fail-open redundant host lists and dropped portMappings | open | SohamDas2021 | <https://github.com/microsoft/mxc/issues/824> |
| Issue | #762 | Add Copilot-Instructions label policy rule for PR visibility | closed | denelon | <https://github.com/microsoft/mxc/issues/762> |
