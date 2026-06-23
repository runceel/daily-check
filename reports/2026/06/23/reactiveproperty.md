# runceel/ReactiveProperty

対象期間: 2026-06-20 10:51:22 〜 2026-06-23 06:00:53 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 12 |
| クローズ (未マージ) PR     | 1 |
| 新規 PR (オープン中)       | 0 |
| 新規 Issue                 | 9 |
| クローズ Issue             | 8 |

## ⚠ 重要な変更（要確認）

自動判定では重要度の高い変更（破壊的変更 / セキュリティ / 非推奨 / GA）は検出されませんでした。下の一覧も念のため確認してください。

## 主要な変更点

- R3 移行支援の bridge 系実装が大きく前進し、WPF 互換ヘルパーや R3 連携 API の追加が続いています。
- ReactiveTimer / Notifier / collection bridge 周辺の修正が入っており、R3 移行時の挙動差分を埋める作業が進んでいます。
- .NET 10 / C# 14 への更新と、関連ドキュメント・ADR の整備が進み、移行ドキュメントの土台が固まっています。
- 期間内の Issue も多く、R3 migration support のユーザー向け文書化・サンプル化が引き続き進められています。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #550 | Add WPF EventToReactive behavior helpers for migration support | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/550> |
| PR | #548 | Add WPF R3 migration sample and finalize R3 migration support | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/548> |
| PR | #547 | Correct R3 migration skill mapping rules against the actual implementation | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/547> |
| PR | #546 | R3 ReactiveTimer/Notifiers: fix IsEnabled parity, deadlock risk, timer leak, and document Interval trade-off | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/546> |
| PR | #545 | Address R3 bridge review findings: validation consistency, async command null-safety, and synchronized property parsing hardening | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/545> |
| PR | #544 | Fix value-type Remove reporting and harden property selector parsing in R3 bridge | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/544> |
| PR | #543 | Add R3 collection bridge APIs | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/543> |
| PR | #542 | Scaffold ReactiveProperty.R3 bridge package | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/542> |
| PR | #541 | Raise central C# language version to 14.0 | merged | Copilot | <https://github.com/runceel/ReactiveProperty/pull/541> |
| PR | #540 | R3 migration: design doc + remove abandoned compat scaffold (checkpoint) | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/540> |
| PR | #531 | Add AGENTS.md, development-workflow skill, and dev-docs/ADR structure | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/531> |
| PR | #530 | Add .NET 10 reference skill and install relevant dotnet/skills into repo | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/530> |
| PR | #532 | Add R3 migration compatibility support | closed | Copilot | <https://github.com/runceel/ReactiveProperty/pull/532> |
| Issue | #551 | Create user-facing documentation for the R3 migration support bridge | open | runceel | <https://github.com/runceel/ReactiveProperty/issues/551> |
| Issue | #549 | [Sub-issue] Implement WPF-compatible Behavior features for R3 migration support | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/549> |
| Issue | #539 | R3 bridge S7 - ADR, acceptance verification and end-to-end migration sample | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/539> |
| Issue | #538 | R3 bridge S6 - Author the migration skill (skills/migrating-reactiveproperty-to-r3) | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/538> |
| Issue | #537 | R3 bridge S5 - Notifiers, ReactiveTimer and MessageBroker | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/537> |
| Issue | #536 | R3 bridge S4 - ReactiveProperty: validation/error streams, async commands and two-way sync | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/536> |
| Issue | #535 | R3 bridge S3 - Collections: INotifyCollectionChanged, element-property and ReadOnlyReactiveCollection | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/535> |
| Issue | #534 | R3 bridge S2 - Scaffold the ReactiveProperty.R3 package and test project | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/534> |
| Issue | #533 | R3 bridge S1 - Modernize the repository to .NET 10 + C# 14 (LangVersion 14.0) | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/533> |
