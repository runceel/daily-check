# github/copilot-sdk *(詳細モード)*

対象期間: 2026-10-06 01:28:52 〜 2026-10-16 01:16:31 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 0 |
| オープン中の新規 PR     | 11 |
| クローズ (未マージ) PR  | 8 |
| 新規 Issue              | 22 |
| クローズ Issue          | 6 |
| 主要コントリビューター  | — |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## このリポジトリの要点

対象期間にマージ済み PR はなく、SDK の Rust／.NET 機能提案や callback／skill reload／catalog RPC の拡張がオープン PR として進行中です。オープン Issue では実行中に添付した source selection がモデルへ届かない問題、画像上限と prompt cache、skills の再読み込み、background agent の停止手段が報告されています。Windows .NET in-process の access violation と MCP resource block の保持も継続確認が必要です。

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #2848 | fix(rust): allow explicit Windows job breakaway | open | dibarbet | <https://github.com/github/copilot-sdk/pull/2848> |
| PR | #2849 | SDK: Surface structured Policy Helper failures | open | carlorivera | <https://github.com/github/copilot-sdk/pull/2849> |
| PR | #2847 | Add trusted-answer callback correlation to Rust SDK | open | szabta89 | <https://github.com/github/copilot-sdk/pull/2847> |
| PR | #2839 | SDK: Add managed hosting credentials and remote workspace callbacks | open | C0deKing | <https://github.com/github/copilot-sdk/pull/2839> |
| PR | #2828 | feat(rust): add resume skill reload opt-out | open | Chuxel | <https://github.com/github/copilot-sdk/pull/2828> |
| PR | #2837 | docs: show prompt cache token usage across SDK examples | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2837> |
| PR | #2836 | fix(rust): decode structured lifecycle hook errors | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2836> |
| PR | #2835 | Add typed catalog recommendation RPC APIs | open | dandriscoll | <https://github.com/github/copilot-sdk/pull/2835> |
| PR | #2820 | fix: harden TypeScript, Go, and C# documentation validation | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2820> |
| PR | #2824 | fix(dotnet): decode structured errors in lifecycle hooks | open | adirh3 | <https://github.com/github/copilot-sdk/pull/2824> |
| PR | #2819 | docs: correct Java bundled runtime setup | open | rinceyuan | <https://github.com/github/copilot-sdk/pull/2819> |
| PR | #2843 | build(deps-dev): bump undici from 6.28.0 to 6.29.0 in /scripts/corrections in the npm_and_yarn group across 1 directory | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2843> |
| PR | #2832 | docs: use organization Copilot Requests permission for server-to-server tokens | closed | gfarb | <https://github.com/github/copilot-sdk/pull/2832> |
| PR | #2784 | build(deps-dev): bump ip-address from 10.4.0 to 10.7.2 in /test/harness in the npm_and_yarn group across 1 directory | closed | dependabot[bot] | <https://github.com/github/copilot-sdk/pull/2784> |
| PR | #2841 | Instrument Rust SDK first-response benchmarks | closed | austincolemicrosoft | <https://github.com/github/copilot-sdk/pull/2841> |
| PR | #2829 | fix(rust): scope Windows CLI thread lookup to the child process | closed | Chuxel | <https://github.com/github/copilot-sdk/pull/2829> |
| PR | #2833 | Add native notification APIs for extension providers and hosts | closed | fletchto99 | <https://github.com/github/copilot-sdk/pull/2833> |
| PR | #2476 | Add custom agent handoff metadata to Rust SDK | closed | pierceboggan | <https://github.com/github/copilot-sdk/pull/2476> |
| PR | #2672 | .NET: add experimental session-scoped skill providers | closed | adirh3 | <https://github.com/github/copilot-sdk/pull/2672> |
| Issue | #2850 | [aw] Release Notes Generator is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2850> |
| Issue | #2842 | Powershell ShellId falls through to "Microsoft.PowerShell", resulting in default profile loading | open | no-identd | <https://github.com/github/copilot-sdk/issues/2842> |
| Issue | #2846 | [aw] Release Notes Generator reported incomplete result | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2846> |
| Issue | #2826 | [1.0.94/v1.0.18]New version python SDK could not work with BYOK | closed | zeerd | <https://github.com/github/copilot-sdk/issues/2826> |
| Issue | #2845 | [aw] Release Notes Generator is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2845> |
| Issue | #2814 | Native Plan edits bypass a custom SessionFs provider | closed | nicolasdossantos | <https://github.com/github/copilot-sdk/issues/2814> |
| Issue | #2844 | 1 | closed | bo55gss | <https://github.com/github/copilot-sdk/issues/2844> |
| Issue | #2840 | Source selections attached while a Copilot SDK agent is running don’t reach the model | open | austincolemicrosoft | <https://github.com/github/copilot-sdk/issues/2840> |
| Issue | #2838 | Source selections attached while a Copilot SDK agent is running don’t reach the model | open | wycats | <https://github.com/github/copilot-sdk/issues/2838> |
| Issue | #2823 | Image request cap ignores modelCapabilities.limits.vision.max_prompt_images, and its newest-first eviction invalidates the prompt cache on every request | open | IslamTayeb | <https://github.com/github/copilot-sdk/issues/2823> |
| Issue | #2834 | Documentation can be updated for assistant.usage events | open | JasonYeMSFT | <https://github.com/github/copilot-sdk/issues/2834> |
| Issue | #2825 | Skill changes are not picked up without VsCode restart | open | mgryzykhin | <https://github.com/github/copilot-sdk/issues/2825> |
| Issue | #2831 | Public session-scoped skill provider API (lazy list/read callbacks) | open | vatsa-msft | <https://github.com/github/copilot-sdk/issues/2831> |
| Issue | #2830 | [aw] Release Notes Generator reported incomplete result | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2830> |
| Issue | #2827 | Allow Rust callers to omit the automatic post-resume skill reload | open | Chuxel | <https://github.com/github/copilot-sdk/issues/2827> |
| Issue | #2822 | No way to cancel/kill a dispatched background agent — a stuck one runs indefinitely and silently burns spend | open | prepatdiscobj | <https://github.com/github/copilot-sdk/issues/2822> |
| Issue | #2821 | In-process (.NET, Windows): access violation in copilot_runtime_connection_write when responding to runtime requests | open | brandonagr | <https://github.com/github/copilot-sdk/issues/2821> |
| Issue | #2818 | [aw] Release Notes Generator is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2818> |
| Issue | #2817 | [aw] Release Notes Generator reported incomplete result | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2817> |
| Issue | #2816 | Preserve MCP embedded text resources and resource_link blocks in tool results | open | psaswata | <https://github.com/github/copilot-sdk/issues/2816> |
| Issue | #2815 | [aw] Release Notes Generator is missing required data | open | github-actions[bot] | <https://github.com/github/copilot-sdk/issues/2815> |
| Issue | #2813 | Plan path validation changes when the session working directory differs from initialCwd | open | nicolasdossantos | <https://github.com/github/copilot-sdk/issues/2813> |
| Issue | #2351 | Expose a way to subscribe to attached background shell output | closed | anthonykim1 | <https://github.com/github/copilot-sdk/issues/2351> |
| Issue | #2781 | Rust: subagent lifecycle hooks are logged as unknown | closed | hackberry-lab | <https://github.com/github/copilot-sdk/issues/2781> |
| Issue | #2794 | rust: `errorOccurred` / `sessionEnd` hook inputs fail to deserialize: the CLI sends `error` as an object, the SDK declares `String` | closed | Lukaze | <https://github.com/github/copilot-sdk/issues/2794> |
