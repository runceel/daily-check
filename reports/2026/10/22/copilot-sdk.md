# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-19 00:32:32 〜 2026-10-22 00:21:02 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 2 |
| クローズ (未マージ) PR  | 45 |
| 新規 Issue              | 4 |
| クローズ Issue          | 0 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

対象期間のマージ済み変更はありません。新規オープン PR #2858 は provider model の supported reasoning efforts を公開し、#2855 は assisted approval SDK bindings を暫定スナップショットとして追加しています。
モデル ID フォールバック、send-and-wait ハング、detached shell の tasks.list など複数のオープン Issue があり、SDK API と実行時挙動の回帰確認が継続しています。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2858 | Add supported reasoning efforts to provider models | open | burkeholland | <https://github.com/github/copilot-sdk/pull/2858> |
| PR | #2855 | [Temporary] Snapshot assisted approval SDK bindings | open | szabta89 | <https://github.com/github/copilot-sdk/pull/2855> |
| PR | #2746 | dotnet: Deflake warm pending-tool cleanup | closed | devm33 | <https://github.com/github/copilot-sdk/pull/2746> |
| PR | #2745 | dotnet: Deflake session event capture | closed | devm33 | <https://github.com/github/copilot-sdk/pull/2745> |
| PR | #1851 | rust: default to rustls TLS backend, add native-tls opt-in | closed | colbylwilliams | <https://github.com/github/copilot-sdk/pull/1851> |
| PR | #1973 | rust: forward intercepted HTTP via hyper+native-tls to drop ring | closed | Shivam60 | <https://github.com/github/copilot-sdk/pull/1973> |
| PR | #1967 | Add opt-in public npm publish target to SDK canary pipeline | closed | MackinnonBuck | <https://github.com/github/copilot-sdk/pull/1967> |
| PR | #2257 | Add shared Windows.UI.Shell.Tasks integration to SDK crate | closed | DevGhub007 | <https://github.com/github/copilot-sdk/pull/2257> |
| PR | #2127 | sdk: Surface verbose MCP diagnostics (mcp.diagnostic) | closed | connor4312 | <https://github.com/github/copilot-sdk/pull/2127> |
| PR | #2290 | Rust: add race-safe canvas availability waiter | closed | ellismg | <https://github.com/github/copilot-sdk/pull/2290> |
| PR | #2297 | Add repository CWD to Rust model listing | closed | eljog | <https://github.com/github/copilot-sdk/pull/2297> |
| PR | #2336 | fix(node): reject sendAndWait on session shutdown | closed | connor4312 | <https://github.com/github/copilot-sdk/pull/2336> |
| PR | #2362 | Add customAgentDirectories session config option | closed | timrogers | <https://github.com/github/copilot-sdk/pull/2362> |
| PR | #2394 | Support experimental model picker categories | closed | andysalerno | <https://github.com/github/copilot-sdk/pull/2394> |
| PR | #2404 | Node: Guard synthetic model list compatibility | closed | andysalerno | <https://github.com/github/copilot-sdk/pull/2404> |
| PR | #2398 | Expose contextual model discovery in Node.js and Rust | closed | andysalerno | <https://github.com/github/copilot-sdk/pull/2398> |
| PR | #2415 | Add shared session watch APIs | closed | toliaqat | <https://github.com/github/copilot-sdk/pull/2415> |
| PR | #2506 | Add Autopilot objective state RPC across all SDKs | closed | aymenfurter | <https://github.com/github/copilot-sdk/pull/2506> |
| PR | #2447 | Add presentation-neutral HydraFusion progress reducer | closed | carlosscastro | <https://github.com/github/copilot-sdk/pull/2447> |
| PR | #2528 | python: remove implicit PATH fallback for CLI executable resolution | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2528> |
| PR | #2530 | python: make generated protocol package private, curate copilot.rpc export surface | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2530> |
| PR | #2531 | [v2] Bound in-process FFI host_shutdown and fix .NET lifecycle race across all SDKs | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2531> |
| PR | #2536 | Redesign process transport options for v2 | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2536> |
| PR | #2547 | Add Rust session store identity support | closed | gimenete | <https://github.com/github/copilot-sdk/pull/2547> |
| PR | #2574 | Add private app extension APIs | closed | merlynomsft | <https://github.com/github/copilot-sdk/pull/2574> |
| PR | #2600 | Expose versioned session activity in the Rust SDK | closed | ellismg | <https://github.com/github/copilot-sdk/pull/2600> |
| PR | #2585 | sdk: make client startup single-flight | closed | DonJayamanne | <https://github.com/github/copilot-sdk/pull/2585> |
| PR | #2621 | Add experimental AHP endpoints with SDK-owned transports for Node and .NET | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2621> |
| PR | #2618 | [Early POC] Expose the extension launch provider in the Node SDK | closed | jruales | <https://github.com/github/copilot-sdk/pull/2618> |
| PR | #2625 | Rust: expose prompt-event observer configuration | closed | examon | <https://github.com/github/copilot-sdk/pull/2625> |
| PR | #2657 | Add Python 3.15 support | closed | brettcannon | <https://github.com/github/copilot-sdk/pull/2657> |
| PR | #2699 | Add optional PNG icons to canvas declarations | closed | cschleiden | <https://github.com/github/copilot-sdk/pull/2699> |
| PR | #2660 | rust: forward cached models during session creation | closed | Chuxel | <https://github.com/github/copilot-sdk/pull/2660> |
| PR | #2721 | Node and Rust SDK transport for native AHP endpoints | closed | SteveSandersonMS | <https://github.com/github/copilot-sdk/pull/2721> |
| PR | #2744 | Add optional response contract to Rust SDK messages | closed | ellismg | <https://github.com/github/copilot-sdk/pull/2744> |
| PR | #2773 | [CI signal only, do not merge] Canonical runtime src/sdk at 8575ea4f | closed | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2773> |
| PR | #2763 | Add typed installation confirmation callbacks | closed | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2763> |
| PR | #2762 | Preserve cancellation in global SDK callbacks | closed | gokhanarkan | <https://github.com/github/copilot-sdk/pull/2762> |
| PR | #2776 | SDK: Expose sealed worker causality diagnostics | closed | mkdinh | <https://github.com/github/copilot-sdk/pull/2776> |
| PR | #2807 | fix(go): make JSON-RPC diagnostics opt-in | closed | timreimherr | <https://github.com/github/copilot-sdk/pull/2807> |
| PR | #2828 | feat(rust): add resume skill reload opt-out | closed | Chuxel | <https://github.com/github/copilot-sdk/pull/2828> |
| PR | #2797 | Add generated Rust account.getManagedSettings API | closed | ellismg | <https://github.com/github/copilot-sdk/pull/2797> |
| PR | #2849 | SDK: Surface structured Policy Helper failures | closed | carlorivera | <https://github.com/github/copilot-sdk/pull/2849> |
| PR | #2839 | SDK: Add managed hosting credentials and remote workspace callbacks | closed | C0deKing | <https://github.com/github/copilot-sdk/pull/2839> |
| PR | #2848 | fix(rust): allow explicit Windows job breakaway | closed | dibarbet | <https://github.com/github/copilot-sdk/pull/2848> |
| PR | #2835 | Add typed catalog recommendation RPC APIs | closed | dandriscoll | <https://github.com/github/copilot-sdk/pull/2835> |
| PR | #2058 | Enable BYOK coverage for .NET E2E tests | closed | roji | <https://github.com/github/copilot-sdk/pull/2058> |
| Issue | #2857 | Clarify inherited hook lifecycle ordering before empty-mode post-create plugin reset | open | Flitschi7 | <https://github.com/github/copilot-sdk/issues/2857> |
| Issue | #2856 | Unknown model ID silently falls back to another model without an error or model-change event | open | AndriySvyryd | <https://github.com/github/copilot-sdk/issues/2856> |
| Issue | #2854 | `tasks.list` returns a restored detached shell with an empty `description` and `command` | open | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2854> |
| Issue | #2853 | [PythonSDK] The send_and_wait function hangs and fails to return | open | zeerd | <https://github.com/github/copilot-sdk/issues/2853> |
