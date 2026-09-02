# microsoft/mxc

対象期間: 2026-08-31 01:17:23 〜 2026-09-02 05:04:01 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 4 |
| クローズ (未マージ) PR     | 4 |
| 新規 PR (オープン中)       | 9 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 4 |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ セキュリティ** [#1076](https://github.com/microsoft/mxc/pull/1076) — Add Process Security Environment ingress contract （PR / open / bbonaby）
  Process Security Environment の ingress 契約を導入する変更で、セキュリティ境界を実装・検証する担当者は仕様と許可経路を確認してください。
- **非推奨/廃止** [#575](https://github.com/microsoft/mxc/pull/575) — [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) （PR / closed / MGudgin）
  Intel macOS 向け SDK パッケージ追加案はクローズ済みのため、darwin-x64 を必要とする利用者は正式な提供状況を確認してください。

## 主要な変更点

- ProcessContainer の ingress と proxy 制御が強化され、ファイアウォール適用時の拒否や IPv6 許可経路の警告が追加されました。
- Hyperlight discovery backend の .NET マッピングと、WHP 非搭載ホストでの `winhvplatform.dll` 遅延ロードが修正されました。
- telemetry consent / policy の基盤が追加され、利用者同意とポリシー管理の準備が進みました。
- Process Security Environment の ingress 契約と native ProcessContainer ingress policy が継続中で、セキュリティ境界の変更を重点確認してください。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #1052 | [Bubblewrap] Reject proxy with firewall enforcement, warn on unreachable IPv6 allows, and assert the v6 ingress chain | merged | SohamDas2021 | <https://github.com/microsoft/mxc/pull/1052> |
| PR | #1072 | fix(dotnet): map Hyperlight discovery backend | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1072> |
| PR | #819 | Add telemetry consent and policy foundation | merged | RamonArjona4 | <https://github.com/microsoft/mxc/pull/819> |
| PR | #1059 | fix: delay-load winhvplatform.dll to prevent loader crash on WHP-less hosts | merged | huzaifa-d | <https://github.com/microsoft/mxc/pull/1059> |
| PR | #971 | chore(deps): bump the github-actions group across 1 directory with 5 updates | closed | dependabot[bot] | <https://github.com/microsoft/mxc/pull/971> |
| PR | #688 | Seatbelt: fall back to policy-allowed cwd to avoid getcwd warnings | closed | richiemsft | <https://github.com/microsoft/mxc/pull/688> |
| PR | #1077 | Clarify ProcessContainer networking documentation | closed | bbonaby | <https://github.com/microsoft/mxc/pull/1077> |
| PR | #575 | [SDK] Add darwin-x64 (Intel macOS) as the sixth per-platform package (#571) | closed | MGudgin | <https://github.com/microsoft/mxc/pull/575> |
| PR | #1081 | Clarify ProcessContainer networking documentation | open | bbonaby | <https://github.com/microsoft/mxc/pull/1081> |
| PR | #1080 | Enforce native ProcessContainer ingress policy | open | bbonaby | <https://github.com/microsoft/mxc/pull/1080> |
| PR | #1083 | Add verbose Learning Mode diagnostics | open | richiemsft | <https://github.com/microsoft/mxc/pull/1083> |
| PR | #1084 | chore(deps): bump the github-actions group across 1 directory with 4 updates | open | dependabot[bot] | <https://github.com/microsoft/mxc/pull/1084> |
| PR | #1079 | fix(seatbelt): Apply the cwd to the spawn_open (in-terminal) launch path. | open | theelliotm | <https://github.com/microsoft/mxc/pull/1079> |
| PR | #1071 | NanVix: Preserve block-default networking with blockedHosts | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1071> |
| PR | #1075 | [SDK] Add Linux and macOS Node SDK coverage for schema 0.8 networking | open | theelliotm | <https://github.com/microsoft/mxc/pull/1075> |
| PR | #1076 | Add Process Security Environment ingress contract | open | bbonaby | <https://github.com/microsoft/mxc/pull/1076> |
| PR | #1070 | Fix captureDenials probe parity | open | huzaifa-d | <https://github.com/microsoft/mxc/pull/1070> |
| Issue | #1073 | wxc-exec --probe fails to launch on Windows Server 2022 instead of reporting unsupported containment | open | shanselman | <https://github.com/microsoft/mxc/issues/1073> |
| Issue | #1074 | [SDK] Node SDK rejects network.proxy on LXC, which the backend has supported since #798 | open | theelliotm | <https://github.com/microsoft/mxc/issues/1074> |
| Issue | #955 | [Bubblewrap] Network policy follow-ups: incomplete parser/validate() pairs, unusable IPv6 rules, and misleading diagnostics | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/955> |
| Issue | #946 | Seatbelt: allowedHosts under defaultPolicy 'block' degrades to allow-all outbound, inverting the requested policy | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/946> |
| Issue | #476 | Windows proxy support: no concurrent proxy support | closed | bbonaby | <https://github.com/microsoft/mxc/issues/476> |
| Issue | #1053 | [Hyperlight] wxc-exec.exe statically imports winhvplatform.dll and fails to load with 0xC0000135 on hosts without WHP | closed | SohamDas2021 | <https://github.com/microsoft/mxc/issues/1053> |
